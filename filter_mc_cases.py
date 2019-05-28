"""
Cases need to be hold iff:
1. can be compiled and run
2. contains sv-comp stub (`__VERIFIER_nondet_{int,...}`)
"""
import os
import signal
import subprocess
from argparse import ArgumentParser
from multiprocessing import Pool
from pathlib import Path
from re import search
from sys import stderr
from tempfile import NamedTemporaryFile, mktemp
from time import time


def counter(gen, filt):
    _count = 0
    for i in Pool(6).map_async(filt, gen).get():
        if i:
            _count += 1
    return _count


def timeout_run(*popenargs, timeout, **kwargs) -> subprocess.CompletedProcess:
    """
    fix https://bugs.python.org/issue30154
    """
    with subprocess.Popen(*popenargs, start_new_session=True, **kwargs) as process:
        try:
            pg = os.getpgid(process.pid)
            stdout, stderr = process.communicate(timeout=timeout)
        except subprocess.TimeoutExpired:
            os.killpg(pg, signal.SIGINT)
            stdout, stderr = process.communicate()
            raise subprocess.TimeoutExpired(process.args, timeout, output=stdout, stderr=stderr)
        except:  # Including KeyboardInterrupt, communicate handled that.
            process.kill()
            # We don't call process.wait() as .__exit__ does that for us.
            raise
        retcode = process.poll()

    return subprocess.CompletedProcess(process.args, retcode, stdout, stderr)


if __name__ == '__main__':
    stub = mktemp(prefix='stub', suffix='.c')
    subprocess.run(['cp', 'stub.c', stub])


    def compile_filt(c: Path):
        if search('(?<![a-zA-Z_0-9])kill(?![a-zA-Z_0-9])', c.read_text(errors='ignore')) is not None:
            # print('{},0'.format(c))
            return False
        try:
            if timeout_run(['gcc', 'stub.c', c, '-o', '/dev/null'], stdout=subprocess.DEVNULL,
                           stderr=subprocess.DEVNULL,
                           timeout=10).returncode == 0:
                print(c)
                return True
            else:
                # print('{},1'.format(c))
                return False
        except subprocess.TimeoutExpired:
            # print('{},2'.format(c))
            return False


    ap = ArgumentParser()
    ap.add_argument('checkout-branch')

    counter(Path('.').glob('**/*.c'), compile_filt)
