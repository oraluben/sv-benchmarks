extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int gfp_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct completion;
struct lockdep_map;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
};
struct swregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
};
typedef struct spinlock spinlock_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct vm_area_struct;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wake_irq;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   struct wake_irq *wakeirq ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct user_namespace;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct __anonstruct_shared_159 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
typedef unsigned long cputime_t;
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct kernfs_root;
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   seqlock_t stats_lock ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct compat_robust_list_head;
struct numa_group;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned int kasan_depth ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct device_attribute;
struct i2c_client;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_209 __annonCompField56 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_210 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_210 __annonCompField57 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct latch_tree_node {
   struct rb_node node[2U] ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct mutex param_lock ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   bool async_probe_requested ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct wake_irq *wakeirq ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_driver;
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_READ_REQUESTED = 0,
    I2C_SLAVE_WRITE_REQUESTED = 1,
    I2C_SLAVE_READ_PROCESSED = 2,
    I2C_SLAVE_WRITE_RECEIVED = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_adapter * ) ;
   void (*unprepare_recovery)(struct i2c_adapter * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter_quirks {
   u64 flags ;
   int max_num_msgs ;
   u16 max_write_len ;
   u16 max_read_len ;
   u16 max_comb_1st_msg_len ;
   u16 max_comb_2nd_msg_len ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
   struct i2c_adapter_quirks const *quirks ;
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
enum chips {
    w83781d = 0,
    w83782d = 1,
    w83783s = 2,
    as99127f = 3
} ;
struct w83781d_data {
   struct i2c_client *client ;
   struct device *hwmon_dev ;
   struct mutex lock ;
   enum chips type ;
   char const *name ;
   int isa_addr ;
   struct mutex update_lock ;
   char valid ;
   unsigned long last_updated ;
   struct i2c_client *lm75[2U] ;
   u8 in[9U] ;
   u8 in_max[9U] ;
   u8 in_min[9U] ;
   u8 fan[3U] ;
   u8 fan_min[3U] ;
   s8 temp ;
   s8 temp_max ;
   s8 temp_max_hyst ;
   u16 temp_add[2U] ;
   u16 temp_max_add[2U] ;
   u16 temp_max_hyst_add[2U] ;
   u8 fan_div[3U] ;
   u8 vid ;
   u32 alarms ;
   u32 beep_mask ;
   u8 pwm[4U] ;
   u8 pwm2_enable ;
   u16 sens[3U] ;
   u8 vrm ;
};
enum vendor {
    winbond = 0,
    asus = 1
} ;
typedef int ldv_func_ret_type;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_w83781d_data(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_w83781d_data(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_w83781d_data(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_w83781d_data(struct mutex *lock ) ;
extern unsigned long volatile jiffies ;
struct device_attribute *sensor_dev_attr_in3_min_group0 ;
int ldv_state_variable_47 ;
int ldv_state_variable_20 ;
struct device_attribute *sensor_dev_attr_in7_max_group0 ;
struct device *sensor_dev_attr_in8_min_group1 ;
struct device_attribute *sensor_dev_attr_in2_min_group0 ;
struct device_attribute *sensor_dev_attr_fan3_div_group0 ;
struct device_attribute *sensor_dev_attr_in4_min_group0 ;
struct device_attribute *sensor_dev_attr_in0_min_group0 ;
struct device_attribute *sensor_dev_attr_pwm3_group0 ;
struct device *sensor_dev_attr_fan1_beep_group1 ;
struct device *sensor_dev_attr_temp3_max_hyst_group1 ;
int ldv_state_variable_54 ;
int ldv_state_variable_14 ;
struct device_attribute *sensor_dev_attr_in0_beep_group0 ;
int ldv_state_variable_37 ;
int ldv_state_variable_17 ;
int ldv_state_variable_51 ;
struct device *sensor_dev_attr_in8_max_group1 ;
struct device_attribute *sensor_dev_attr_pwm1_group0 ;
int ldv_state_variable_66 ;
int ldv_state_variable_19 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
struct device *sensor_dev_attr_temp2_max_hyst_group1 ;
struct device_attribute *sensor_dev_attr_fan2_beep_group0 ;
int ldv_state_variable_42 ;
int ldv_state_variable_83 ;
struct device *sensor_dev_attr_in3_max_group1 ;
int ldv_state_variable_7 ;
struct device *dev_attr_beep_mask_group1 ;
struct device *sensor_dev_attr_fan3_min_group1 ;
int ldv_state_variable_55 ;
struct device_attribute *sensor_dev_attr_beep_enable_group0 ;
struct device_attribute *sensor_dev_attr_in1_min_group0 ;
struct device_attribute *sensor_dev_attr_temp1_beep_group0 ;
int ldv_state_variable_80 ;
int ldv_state_variable_64 ;
int ldv_state_variable_26 ;
int ldv_state_variable_28 ;
struct device *sensor_dev_attr_temp2_max_group1 ;
int LDV_IN_INTERRUPT = 1;
struct device_attribute *sensor_dev_attr_in8_beep_group0 ;
int ldv_state_variable_58 ;
struct device *sensor_dev_attr_fan2_beep_group1 ;
struct device_attribute *sensor_dev_attr_fan1_div_group0 ;
struct device *sensor_dev_attr_temp3_beep_group1 ;
int ldv_state_variable_78 ;
int ldv_state_variable_76 ;
int ldv_state_variable_31 ;
struct device *sensor_dev_attr_pwm1_group1 ;
int ldv_state_variable_89 ;
struct device_attribute *sensor_dev_attr_in5_min_group0 ;
int ldv_state_variable_68 ;
struct device *sensor_dev_attr_in5_max_group1 ;
int ldv_state_variable_8 ;
int ldv_state_variable_46 ;
int ldv_state_variable_15 ;
int ldv_state_variable_75 ;
int ldv_state_variable_74 ;
int ldv_state_variable_21 ;
int ldv_state_variable_33 ;
int ldv_state_variable_69 ;
struct device *sensor_dev_attr_in4_min_group1 ;
struct device *sensor_dev_attr_in2_beep_group1 ;
struct device *sensor_dev_attr_in7_beep_group1 ;
int ldv_state_variable_88 ;
int ldv_state_variable_65 ;
struct device_attribute *sensor_dev_attr_in8_max_group0 ;
struct device_attribute *sensor_dev_attr_fan3_min_group0 ;
struct device_attribute *sensor_dev_attr_fan2_min_group0 ;
struct device *sensor_dev_attr_in3_beep_group1 ;
struct device *sensor_dev_attr_temp2_beep_group1 ;
int ldv_state_variable_70 ;
struct device *sensor_dev_attr_in8_beep_group1 ;
struct device_attribute *sensor_dev_attr_temp2_beep_group0 ;
int ldv_state_variable_41 ;
int ldv_state_variable_62 ;
int ldv_state_variable_40 ;
struct device *sensor_dev_attr_pwm3_group1 ;
struct device_attribute *dev_attr_beep_mask_group0 ;
struct device_attribute *sensor_dev_attr_in4_max_group0 ;
int ldv_state_variable_10 ;
struct device *sensor_dev_attr_temp3_type_group1 ;
int ldv_state_variable_63 ;
struct device *sensor_dev_attr_in5_min_group1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_25 ;
struct device *dev_attr_vrm_group1 ;
int ldv_state_variable_11 ;
struct device *sensor_dev_attr_in0_max_group1 ;
int ldv_state_variable_79 ;
int ldv_state_variable_18 ;
struct device *sensor_dev_attr_in4_beep_group1 ;
struct device *sensor_dev_attr_in1_min_group1 ;
struct device *sensor_dev_attr_in3_min_group1 ;
struct device *sensor_dev_attr_fan1_div_group1 ;
int ldv_state_variable_32 ;
struct device_attribute *sensor_dev_attr_temp3_beep_group0 ;
struct device *sensor_dev_attr_fan2_div_group1 ;
struct device *sensor_dev_attr_temp1_beep_group1 ;
struct device *sensor_dev_attr_in7_min_group1 ;
struct device_attribute *sensor_dev_attr_in6_max_group0 ;
struct device *sensor_dev_attr_in5_beep_group1 ;
int ldv_state_variable_30 ;
struct device_attribute *sensor_dev_attr_temp1_max_group0 ;
struct device_attribute *sensor_dev_attr_fan3_beep_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_81 ;
struct device_attribute *sensor_dev_attr_in4_beep_group0 ;
int ldv_state_variable_45 ;
struct device_attribute *sensor_dev_attr_temp1_type_group0 ;
struct device_attribute *dev_attr_vrm_group0 ;
struct device_attribute *sensor_dev_attr_pwm2_group0 ;
int ldv_state_variable_12 ;
int ldv_state_variable_87 ;
int ldv_state_variable_22 ;
struct device *sensor_dev_attr_temp1_max_hyst_group1 ;
struct device_attribute *sensor_dev_attr_in3_max_group0 ;
struct device *sensor_dev_attr_in7_max_group1 ;
int ldv_state_variable_73 ;
struct device_attribute *sensor_dev_attr_in6_beep_group0 ;
struct device *sensor_dev_attr_pwm4_group1 ;
int ldv_state_variable_29 ;
struct device_attribute *dev_attr_pwm2_enable_group0 ;
struct device_attribute *sensor_dev_attr_in3_beep_group0 ;
int ldv_state_variable_61 ;
int ref_cnt ;
struct device *sensor_dev_attr_fan2_min_group1 ;
int ldv_state_variable_23 ;
int ldv_state_variable_72 ;
int ldv_state_variable_59 ;
int ldv_state_variable_6 ;
struct device_attribute *sensor_dev_attr_temp2_max_hyst_group0 ;
int ldv_state_variable_50 ;
struct device *sensor_dev_attr_in6_min_group1 ;
int ldv_state_variable_84 ;
struct device_attribute *sensor_dev_attr_in2_max_group0 ;
struct device *sensor_dev_attr_in4_max_group1 ;
struct device *sensor_dev_attr_in0_min_group1 ;
int ldv_state_variable_86 ;
int ldv_state_variable_44 ;
struct device_attribute *sensor_dev_attr_temp1_max_hyst_group0 ;
int ldv_state_variable_38 ;
struct device_attribute *sensor_dev_attr_in8_min_group0 ;
int ldv_state_variable_39 ;
int ldv_state_variable_56 ;
struct device_attribute *sensor_dev_attr_temp2_max_group0 ;
struct i2c_client *w83781d_driver_group0 ;
int ldv_state_variable_3 ;
struct device_attribute *sensor_dev_attr_in1_beep_group0 ;
struct device *sensor_dev_attr_in2_max_group1 ;
struct device *sensor_dev_attr_in1_max_group1 ;
struct device_attribute *sensor_dev_attr_fan2_div_group0 ;
int ldv_state_variable_52 ;
int ldv_state_variable_4 ;
int ldv_state_variable_60 ;
int ldv_state_variable_36 ;
struct device_attribute *sensor_dev_attr_temp3_max_group0 ;
int ldv_state_variable_48 ;
int ldv_state_variable_5 ;
struct device *dev_attr_pwm2_enable_group1 ;
struct device *sensor_dev_attr_in1_beep_group1 ;
struct device *sensor_dev_attr_fan1_min_group1 ;
int ldv_state_variable_13 ;
struct device *sensor_dev_attr_temp2_type_group1 ;
struct device_attribute *sensor_dev_attr_in0_max_group0 ;
struct device_attribute *sensor_dev_attr_in7_beep_group0 ;
struct device_attribute *sensor_dev_attr_fan1_beep_group0 ;
int ldv_state_variable_82 ;
struct device_attribute *sensor_dev_attr_in5_beep_group0 ;
int ldv_state_variable_49 ;
int ldv_state_variable_24 ;
struct device *sensor_dev_attr_fan3_div_group1 ;
struct device *sensor_dev_attr_fan3_beep_group1 ;
struct device *sensor_dev_attr_in6_beep_group1 ;
struct device_attribute *sensor_dev_attr_in7_min_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_85 ;
struct device *sensor_dev_attr_temp1_max_group1 ;
struct device *sensor_dev_attr_temp1_type_group1 ;
int ldv_state_variable_71 ;
int ldv_state_variable_77 ;
struct device_attribute *sensor_dev_attr_in5_max_group0 ;
struct device *sensor_dev_attr_beep_enable_group1 ;
int ldv_state_variable_16 ;
struct device_attribute *sensor_dev_attr_in6_min_group0 ;
int ldv_state_variable_43 ;
int ldv_state_variable_57 ;
struct device_attribute *sensor_dev_attr_temp2_type_group0 ;
struct device_attribute *sensor_dev_attr_temp3_max_hyst_group0 ;
struct device_attribute *sensor_dev_attr_temp3_type_group0 ;
struct device *sensor_dev_attr_in2_min_group1 ;
struct device_attribute *sensor_dev_attr_fan1_min_group0 ;
int ldv_state_variable_67 ;
int ldv_state_variable_53 ;
int ldv_state_variable_34 ;
struct device_attribute *sensor_dev_attr_pwm4_group0 ;
struct device_attribute *sensor_dev_attr_in1_max_group0 ;
struct device_attribute *sensor_dev_attr_in2_beep_group0 ;
struct device *sensor_dev_attr_in0_beep_group1 ;
struct device *sensor_dev_attr_temp3_max_group1 ;
struct device *sensor_dev_attr_in6_max_group1 ;
int ldv_state_variable_35 ;
struct device *sensor_dev_attr_pwm2_group1 ;
void ldv_initialize_sensor_device_attribute_87(void) ;
void ldv_initialize_sensor_device_attribute_79(void) ;
void ldv_initialize_sensor_device_attribute_48(void) ;
void ldv_initialize_sensor_device_attribute_81(void) ;
void ldv_initialize_sensor_device_attribute_63(void) ;
void ldv_initialize_sensor_device_attribute_18(void) ;
void ldv_initialize_sensor_device_attribute_6(void) ;
void ldv_initialize_sensor_device_attribute_21(void) ;
void ldv_initialize_sensor_device_attribute_52(void) ;
void ldv_initialize_sensor_device_attribute_12(void) ;
void ldv_initialize_sensor_device_attribute_20(void) ;
void ldv_initialize_sensor_device_attribute_9(void) ;
void ldv_initialize_sensor_device_attribute_55(void) ;
void ldv_initialize_i2c_driver_1(void) ;
void ldv_initialize_sensor_device_attribute_49(void) ;
void ldv_initialize_sensor_device_attribute_19(void) ;
void ldv_initialize_sensor_device_attribute_88(void) ;
void ldv_initialize_sensor_device_attribute_82(void) ;
void ldv_initialize_sensor_device_attribute_27(void) ;
void ldv_initialize_sensor_device_attribute_64(void) ;
void ldv_initialize_sensor_device_attribute_24(void) ;
void ldv_initialize_sensor_device_attribute_59(void) ;
void ldv_initialize_sensor_device_attribute_70(void) ;
void ldv_initialize_sensor_device_attribute_28(void) ;
void ldv_initialize_device_attribute_29(void) ;
void ldv_initialize_sensor_device_attribute_10(void) ;
void ldv_initialize_sensor_device_attribute_54(void) ;
void ldv_initialize_sensor_device_attribute_75(void) ;
void ldv_initialize_device_attribute_5(void) ;
void ldv_initialize_sensor_device_attribute_13(void) ;
void ldv_initialize_sensor_device_attribute_78(void) ;
void ldv_initialize_sensor_device_attribute_84(void) ;
void ldv_initialize_sensor_device_attribute_51(void) ;
void ldv_initialize_sensor_device_attribute_73(void) ;
void ldv_initialize_sensor_device_attribute_66(void) ;
void ldv_initialize_sensor_device_attribute_85(void) ;
void ldv_initialize_sensor_device_attribute_25(void) ;
void ldv_initialize_sensor_device_attribute_14(void) ;
void ldv_initialize_sensor_device_attribute_8(void) ;
void ldv_initialize_sensor_device_attribute_23(void) ;
void ldv_initialize_sensor_device_attribute_61(void) ;
void ldv_initialize_sensor_device_attribute_4(void) ;
void ldv_initialize_sensor_device_attribute_57(void) ;
void ldv_initialize_sensor_device_attribute_11(void) ;
void ldv_initialize_sensor_device_attribute_16(void) ;
void ldv_initialize_sensor_device_attribute_3(void) ;
void ldv_initialize_sensor_device_attribute_72(void) ;
void ldv_initialize_sensor_device_attribute_26(void) ;
void ldv_initialize_sensor_device_attribute_67(void) ;
void ldv_initialize_sensor_device_attribute_76(void) ;
void ldv_initialize_sensor_device_attribute_7(void) ;
void ldv_initialize_device_attribute_46(void) ;
void ldv_initialize_sensor_device_attribute_22(void) ;
void ldv_initialize_sensor_device_attribute_2(void) ;
void ldv_initialize_sensor_device_attribute_15(void) ;
void ldv_initialize_sensor_device_attribute_17(void) ;
void ldv_initialize_sensor_device_attribute_69(void) ;
extern int sysfs_chmod_file(struct kobject * , struct attribute const * , umode_t ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_byte_data(struct i2c_client const * , u8 , u8 ) ;
extern s32 i2c_smbus_read_word_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_word_data(struct i2c_client const * , u8 , u16 ) ;
__inline static s32 i2c_smbus_read_word_swapped(struct i2c_client const *client ,
                                                u8 command )
{
  s32 value ;
  s32 tmp ;
  __u16 tmp___0 ;
  s32 tmp___1 ;
  {
  tmp = i2c_smbus_read_word_data(client, (int )command);
  value = tmp;
  if (value >= 0) {
    tmp___0 = __fswab16((int )((__u16 )value));
    tmp___1 = (s32 )tmp___0;
  } else {
    tmp___1 = value;
  }
  return (tmp___1);
}
}
__inline static s32 i2c_smbus_write_word_swapped(struct i2c_client const *client ,
                                                 u8 command , u16 value )
{
  __u16 tmp ;
  s32 tmp___0 ;
  {
  tmp = __fswab16((int )value);
  tmp___0 = i2c_smbus_write_word_data(client, (int )command, (int )tmp);
  return (tmp___0);
}
}
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern struct i2c_client *i2c_new_dummy(struct i2c_adapter * , u16 ) ;
extern void i2c_unregister_device(struct i2c_client * ) ;
extern int i2c_register_driver(struct module * , struct i2c_driver * ) ;
extern void i2c_del_driver(struct i2c_driver * ) ;
__inline static u32 i2c_get_functionality(struct i2c_adapter *adap )
{
  u32 tmp ;
  {
  tmp = (*((adap->algo)->functionality))(adap);
  return (tmp);
}
}
__inline static int i2c_check_functionality(struct i2c_adapter *adap , u32 func )
{
  u32 tmp ;
  {
  tmp = i2c_get_functionality(adap);
  return ((tmp & func) == func);
}
}
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
extern int vid_from_reg(int , u8 ) ;
extern u8 vid_which_vrm(void) ;
__inline static u16 LM75_TEMP_TO_REG(long temp )
{
  int ntemp ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __max1 = temp;
  __max2 = -55000L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 125000L;
  ntemp = (int )(__min1 < __min2 ? __min1 : __min2);
  ntemp = (ntemp < 0 ? -250 : 250) + ntemp;
  return ((u16 )((int )((unsigned short )(ntemp / 500)) << 7U));
}
}
__inline static int LM75_TEMP_FROM_REG(u16 reg )
{
  {
  return (((int )((short )reg) / 128) * 500);
}
}
static unsigned short const normal_i2c[9U] =
  { 40U, 41U, 42U, 43U,
        44U, 45U, 46U, 47U,
        65534U};
static unsigned short force_subclients[4U] ;
static bool reset ;
static bool init = 1;
static u8 const W83781D_REG_PWM[4U] = { 91U, 90U, 94U, 95U};
static u8 const BIT_SCFG1[3U] = { 2U, 4U, 8U};
static u8 const BIT_SCFG2[3U] = { 16U, 32U, 64U};
__inline static u8 FAN_TO_REG(long rpm , int div )
{
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  long __min1___0 ;
  long __max1___0 ;
  long __max2___0 ;
  long __min2___0 ;
  {
  if (rpm == 0L) {
    return (255U);
  } else {
  }
  __max1 = rpm;
  __max2 = 1L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 1000000L;
  rpm = __min1 < __min2 ? __min1 : __min2;
  __max1___0 = (((long )div * rpm) / 2L + 1350000L) / ((long )div * rpm);
  __max2___0 = 1L;
  __min1___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  __min2___0 = 254L;
  return ((u8 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0));
}
}
__inline static long FAN_FROM_REG(u8 val , int div )
{
  {
  if ((unsigned int )val == 0U) {
    return (-1L);
  } else {
  }
  if ((unsigned int )val == 255U) {
    return (0L);
  } else {
  }
  return ((long )(1350000 / ((int )val * div)));
}
}
__inline static u8 DIV_TO_REG(long val , enum chips type )
{
  int i ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __max1 = val;
  __max2 = 1L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = (unsigned int )type == 0U || (unsigned int )type == 3U ? 8L : 128L;
  val = (__min1 < __min2 ? __min1 : __min2) >> 1;
  i = 0;
  goto ldv_22885;
  ldv_22884: ;
  if (val == 0L) {
    goto ldv_22883;
  } else {
  }
  val = val >> 1;
  i = i + 1;
  ldv_22885: ;
  if (i <= 6) {
    goto ldv_22884;
  } else {
  }
  ldv_22883: ;
  return ((u8 )i);
}
}
static struct w83781d_data *w83781d_data_if_isa(void) ;
static int w83781d_alias_detect(struct i2c_client *client , u8 chipid ) ;
static int w83781d_read_value(struct w83781d_data *data , u16 reg ) ;
static int w83781d_write_value(struct w83781d_data *data , u16 reg , u16 value ) ;
static struct w83781d_data *w83781d_update_device(struct device *dev ) ;
static void w83781d_init_device(struct device *dev ) ;
static ssize_t show_in(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%ld\n", (long )((int )data->in[attr->index] * 16));
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_in_min(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%ld\n", (long )((int )data->in_min[attr->index] * 16));
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_in_max(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%ld\n", (long )((int )data->in_max[attr->index] * 16));
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_in_min(struct device *dev , struct device_attribute *da , char const *buf ,
                            size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  int tmp___0 ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  tmp___0 = kstrtoul(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_10(& data->update_lock);
  __max1 = (val + 8UL) / 16UL;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255UL;
  data->in_min[nr] = (u8 )(__min1 < __min2 ? __min1 : __min2);
  w83781d_write_value(data, (int )(nr <= 6 ? (unsigned int )((u16 )(nr + 22)) * 2U : (unsigned int )((u16 )(nr + -7)) * 2U + 1365U),
                      (int )data->in_min[nr]);
  ldv_mutex_unlock_11(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_in_max(struct device *dev , struct device_attribute *da , char const *buf ,
                            size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  int tmp___0 ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  tmp___0 = kstrtoul(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_12(& data->update_lock);
  __max1 = (val + 8UL) / 16UL;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255UL;
  data->in_max[nr] = (u8 )(__min1 < __min2 ? __min1 : __min2);
  w83781d_write_value(data, (int )(nr <= 6 ? (unsigned int )((u16 )nr) * 2U + 43U : (unsigned int )((u16 )(nr + 675)) * 2U),
                      (int )data->in_max[nr]);
  ldv_mutex_unlock_13(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_in0_input = {{{"in0_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0};
static struct sensor_device_attribute sensor_dev_attr_in0_min = {{{"in0_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 0};
static struct sensor_device_attribute sensor_dev_attr_in0_max = {{{"in0_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 0};
static struct sensor_device_attribute sensor_dev_attr_in1_input = {{{"in1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in1_min = {{{"in1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 1};
static struct sensor_device_attribute sensor_dev_attr_in1_max = {{{"in1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 1};
static struct sensor_device_attribute sensor_dev_attr_in2_input = {{{"in2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_in2_min = {{{"in2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 2};
static struct sensor_device_attribute sensor_dev_attr_in2_max = {{{"in2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 2};
static struct sensor_device_attribute sensor_dev_attr_in3_input = {{{"in3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 3};
static struct sensor_device_attribute sensor_dev_attr_in3_min = {{{"in3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 3};
static struct sensor_device_attribute sensor_dev_attr_in3_max = {{{"in3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 3};
static struct sensor_device_attribute sensor_dev_attr_in4_input = {{{"in4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 4};
static struct sensor_device_attribute sensor_dev_attr_in4_min = {{{"in4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 4};
static struct sensor_device_attribute sensor_dev_attr_in4_max = {{{"in4_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 4};
static struct sensor_device_attribute sensor_dev_attr_in5_input = {{{"in5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 5};
static struct sensor_device_attribute sensor_dev_attr_in5_min = {{{"in5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 5};
static struct sensor_device_attribute sensor_dev_attr_in5_max = {{{"in5_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 5};
static struct sensor_device_attribute sensor_dev_attr_in6_input = {{{"in6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 6};
static struct sensor_device_attribute sensor_dev_attr_in6_min = {{{"in6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 6};
static struct sensor_device_attribute sensor_dev_attr_in6_max = {{{"in6_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 6};
static struct sensor_device_attribute sensor_dev_attr_in7_input = {{{"in7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 7};
static struct sensor_device_attribute sensor_dev_attr_in7_min = {{{"in7_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 7};
static struct sensor_device_attribute sensor_dev_attr_in7_max = {{{"in7_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 7};
static struct sensor_device_attribute sensor_dev_attr_in8_input = {{{"in8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 8};
static struct sensor_device_attribute sensor_dev_attr_in8_min = {{{"in8_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_min, & store_in_min}, 8};
static struct sensor_device_attribute sensor_dev_attr_in8_max = {{{"in8_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_max, & store_in_max}, 8};
static ssize_t show_fan(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = FAN_FROM_REG((int )data->fan[attr->index], 1 << (int )data->fan_div[attr->index]);
  tmp___1 = sprintf(buf, "%ld\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t show_fan_min(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = FAN_FROM_REG((int )data->fan_min[attr->index], 1 << (int )data->fan_div[attr->index]);
  tmp___1 = sprintf(buf, "%ld\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_fan_min(struct device *dev , struct device_attribute *da , char const *buf ,
                             size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_14(& data->update_lock);
  data->fan_min[nr] = FAN_TO_REG((long )val, 1 << (int )data->fan_div[nr]);
  w83781d_write_value(data, (int )((unsigned int )((u16 )nr) + 59U), (int )data->fan_min[nr]);
  ldv_mutex_unlock_15(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_fan1_input = {{{"fan1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan1_min = {{{"fan1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_min, & store_fan_min}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan2_input = {{{"fan2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_fan2_min = {{{"fan2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_min, & store_fan_min}, 1};
static struct sensor_device_attribute sensor_dev_attr_fan3_input = {{{"fan3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_fan3_min = {{{"fan3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_min, & store_fan_min}, 2};
static ssize_t show_temp(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  nr = attr->index;
  if (nr > 1) {
    tmp___0 = LM75_TEMP_FROM_REG((int )data->temp_add[nr + -2]);
    tmp___1 = sprintf(buf, "%d\n", tmp___0);
    return ((ssize_t )tmp___1);
  } else {
    tmp___2 = sprintf(buf, "%ld\n", (long )((int )data->temp * 1000));
    return ((ssize_t )tmp___2);
  }
}
}
static ssize_t show_temp_max(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  nr = attr->index;
  if (nr > 1) {
    tmp___0 = LM75_TEMP_FROM_REG((int )data->temp_max_add[nr + -2]);
    tmp___1 = sprintf(buf, "%d\n", tmp___0);
    return ((ssize_t )tmp___1);
  } else {
    tmp___2 = sprintf(buf, "%ld\n", (long )((int )data->temp_max * 1000));
    return ((ssize_t )tmp___2);
  }
}
}
static ssize_t show_temp_max_hyst(struct device *dev , struct device_attribute *da ,
                                  char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  nr = attr->index;
  if (nr > 1) {
    tmp___0 = LM75_TEMP_FROM_REG((int )data->temp_max_hyst_add[nr + -2]);
    tmp___1 = sprintf(buf, "%d\n", tmp___0);
    return ((ssize_t )tmp___1);
  } else {
    tmp___2 = sprintf(buf, "%ld\n", (long )((int )data->temp_max_hyst * 1000));
    return ((ssize_t )tmp___2);
  }
}
}
static ssize_t store_temp_max(struct device *dev , struct device_attribute *da , char const *buf ,
                              size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  long val ;
  int err ;
  int tmp___0 ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  tmp___0 = kstrtol(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_16(& data->update_lock);
  if (nr > 1) {
    data->temp_max_add[nr + -2] = LM75_TEMP_TO_REG(val);
    w83781d_write_value(data, nr != 3 ? (nr == 2 ? 341 : 57) : 597, (int )data->temp_max_add[nr + -2]);
  } else {
    __max1 = val / 1000L;
    __max2 = -127L;
    __min1 = __max1 > __max2 ? __max1 : __max2;
    __min2 = 128L;
    data->temp_max = (s8 )(__min1 < __min2 ? __min1 : __min2);
    w83781d_write_value(data, nr != 3 ? (nr == 2 ? 341 : 57) : 597, (int )((u16 )data->temp_max));
  }
  ldv_mutex_unlock_17(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_temp_max_hyst(struct device *dev , struct device_attribute *da ,
                                   char const *buf , size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  long val ;
  int err ;
  int tmp___0 ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  tmp___0 = kstrtol(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_18(& data->update_lock);
  if (nr > 1) {
    data->temp_max_hyst_add[nr + -2] = LM75_TEMP_TO_REG(val);
    w83781d_write_value(data, nr != 3 ? (nr == 2 ? 339 : 58) : 595, (int )data->temp_max_hyst_add[nr + -2]);
  } else {
    __max1 = val / 1000L;
    __max2 = -127L;
    __min1 = __max1 > __max2 ? __max1 : __max2;
    __min2 = 128L;
    data->temp_max_hyst = (s8 )(__min1 < __min2 ? __min1 : __min2);
    w83781d_write_value(data, nr != 3 ? (nr == 2 ? 339 : 58) : 595, (int )((u16 )data->temp_max_hyst));
  }
  ldv_mutex_unlock_19(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_temp1_input = {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_temp1_max = {{{"temp1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max, & store_temp_max}, 1};
static struct sensor_device_attribute sensor_dev_attr_temp1_max_hyst = {{{"temp1_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max_hyst, & store_temp_max_hyst}, 1};
static struct sensor_device_attribute sensor_dev_attr_temp2_input = {{{"temp2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_temp2_max = {{{"temp2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max, & store_temp_max}, 2};
static struct sensor_device_attribute sensor_dev_attr_temp2_max_hyst = {{{"temp2_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max_hyst, & store_temp_max_hyst}, 2};
static struct sensor_device_attribute sensor_dev_attr_temp3_input = {{{"temp3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 3};
static struct sensor_device_attribute sensor_dev_attr_temp3_max = {{{"temp3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max, & store_temp_max}, 3};
static struct sensor_device_attribute sensor_dev_attr_temp3_max_hyst = {{{"temp3_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_max_hyst, & store_temp_max_hyst}, 3};
static ssize_t show_vid_reg(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = vid_from_reg((int )data->vid, (int )data->vrm);
  tmp___1 = sprintf(buf, "%ld\n", (long )tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_cpu0_vid = {{"cpu0_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_vid_reg, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                 size_t ))0};
static ssize_t show_vrm_reg(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83781d_data *data ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  tmp___0 = sprintf(buf, "%ld\n", (long )data->vrm);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_vrm_reg(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct w83781d_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  __max1 = val;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255UL;
  data->vrm = (u8 )(__min1 < __min2 ? __min1 : __min2);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_vrm = {{"vrm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & show_vrm_reg,
    & store_vrm_reg};
static ssize_t show_alarms_reg(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", data->alarms);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_alarms = {{"alarms", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_alarms_reg,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t show_alarm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int bitnr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp___0 = sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_temp3_alarm(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int bitnr ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  bitnr = (unsigned int )data->type == 0U ? 5 : 13;
  tmp___0 = sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static struct sensor_device_attribute sensor_dev_attr_in0_alarm = {{{"in0_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 0};
static struct sensor_device_attribute sensor_dev_attr_in1_alarm = {{{"in1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in2_alarm = {{{"in2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_in3_alarm = {{{"in3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 3};
static struct sensor_device_attribute sensor_dev_attr_in4_alarm = {{{"in4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 8};
static struct sensor_device_attribute sensor_dev_attr_in5_alarm = {{{"in5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 9};
static struct sensor_device_attribute sensor_dev_attr_in6_alarm = {{{"in6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 10};
static struct sensor_device_attribute sensor_dev_attr_in7_alarm = {{{"in7_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 16};
static struct sensor_device_attribute sensor_dev_attr_in8_alarm = {{{"in8_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 17};
static struct sensor_device_attribute sensor_dev_attr_fan1_alarm = {{{"fan1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 6};
static struct sensor_device_attribute sensor_dev_attr_fan2_alarm = {{{"fan2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 7};
static struct sensor_device_attribute sensor_dev_attr_fan3_alarm = {{{"fan3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 11};
static struct sensor_device_attribute sensor_dev_attr_temp1_alarm = {{{"temp1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 4};
static struct sensor_device_attribute sensor_dev_attr_temp2_alarm = {{{"temp2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 5};
static struct sensor_device_attribute sensor_dev_attr_temp3_alarm = {{{"temp3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp3_alarm, (ssize_t (*)(struct device * , struct device_attribute * ,
                                      char const * , size_t ))0}, 0};
static ssize_t show_beep_mask(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%ld\n", (unsigned int )data->type == 3U ? (long )(~ data->beep_mask) & 32767L : (long )data->beep_mask & 16744447L);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep_mask(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct w83781d_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_20(& data->update_lock);
  data->beep_mask = data->beep_mask & 32768U;
  data->beep_mask = data->beep_mask | ((unsigned int )data->type == 3U ? ~ ((u32 )val) & 32767U : (u32 )val & 16744447U);
  w83781d_write_value(data, 86, (int )((u16 )data->beep_mask) & 255);
  w83781d_write_value(data, 87, (int )((u16 )(data->beep_mask >> 8)) & 255);
  if ((unsigned int )data->type != 0U && (unsigned int )data->type != 3U) {
    w83781d_write_value(data, 1107, (int )((u16 )(data->beep_mask >> 16)) & 255);
  } else {
  }
  ldv_mutex_unlock_21(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_beep_mask = {{"beep_mask", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_beep_mask, & store_beep_mask};
static ssize_t show_beep(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int bitnr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp___0 = sprintf(buf, "%u\n", (data->beep_mask >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{
  struct w83781d_data *data ;
  void *tmp ;
  int bitnr ;
  struct device_attribute const *__mptr ;
  u8 reg ;
  unsigned long bit ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  err = kstrtoul(buf, 10U, & bit);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if ((bit & 0xfffffffffffffffeUL) != 0UL) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_22(& data->update_lock);
  if (bit != 0UL) {
    data->beep_mask = data->beep_mask | (u32 )(1 << bitnr);
  } else {
    data->beep_mask = data->beep_mask & (u32 )(~ (1 << bitnr));
  }
  if (bitnr <= 7) {
    tmp___0 = w83781d_read_value(data, 86);
    reg = (u8 )tmp___0;
    if (bit != 0UL) {
      reg = (u8 )((int )((signed char )(1 << bitnr)) | (int )((signed char )reg));
    } else {
      reg = (u8 )(~ ((int )((signed char )(1 << bitnr))) & (int )((signed char )reg));
    }
    w83781d_write_value(data, 86, (int )reg);
  } else
  if (bitnr <= 15) {
    tmp___1 = w83781d_read_value(data, 87);
    reg = (u8 )tmp___1;
    if (bit != 0UL) {
      reg = (u8 )((int )((signed char )(1 << (bitnr + -8))) | (int )((signed char )reg));
    } else {
      reg = (u8 )(~ ((int )((signed char )(1 << (bitnr + -8)))) & (int )((signed char )reg));
    }
    w83781d_write_value(data, 87, (int )reg);
  } else {
    tmp___2 = w83781d_read_value(data, 1107);
    reg = (u8 )tmp___2;
    if (bit != 0UL) {
      reg = (u8 )((int )((signed char )(1 << (bitnr + -16))) | (int )((signed char )reg));
    } else {
      reg = (u8 )(~ ((int )((signed char )(1 << (bitnr + -16)))) & (int )((signed char )reg));
    }
    w83781d_write_value(data, 1107, (int )reg);
  }
  ldv_mutex_unlock_23(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_temp3_beep(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int bitnr ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  bitnr = (unsigned int )data->type == 0U ? 5 : 13;
  tmp___0 = sprintf(buf, "%u\n", (data->beep_mask >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static struct sensor_device_attribute sensor_dev_attr_in0_beep = {{{"in0_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_in1_beep = {{{"in1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 1};
static struct sensor_device_attribute sensor_dev_attr_in2_beep = {{{"in2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 2};
static struct sensor_device_attribute sensor_dev_attr_in3_beep = {{{"in3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 3};
static struct sensor_device_attribute sensor_dev_attr_in4_beep = {{{"in4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 8};
static struct sensor_device_attribute sensor_dev_attr_in5_beep = {{{"in5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 9};
static struct sensor_device_attribute sensor_dev_attr_in6_beep = {{{"in6_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 10};
static struct sensor_device_attribute sensor_dev_attr_in7_beep = {{{"in7_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 16};
static struct sensor_device_attribute sensor_dev_attr_in8_beep = {{{"in8_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 17};
static struct sensor_device_attribute sensor_dev_attr_fan1_beep = {{{"fan1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 6};
static struct sensor_device_attribute sensor_dev_attr_fan2_beep = {{{"fan2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 7};
static struct sensor_device_attribute sensor_dev_attr_fan3_beep = {{{"fan3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 11};
static struct sensor_device_attribute sensor_dev_attr_temp1_beep = {{{"temp1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 4};
static struct sensor_device_attribute sensor_dev_attr_temp2_beep = {{{"temp2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 5};
static struct sensor_device_attribute sensor_dev_attr_temp3_beep = {{{"temp3_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp3_beep, & store_beep}, 13};
static struct sensor_device_attribute sensor_dev_attr_beep_enable = {{{"beep_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 15};
static ssize_t show_fan_div(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%ld\n", (long )(1 << (int )data->fan_div[attr->index]));
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_fan_div(struct device *dev , struct device_attribute *da , char const *buf ,
                             size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  unsigned long min ;
  int nr ;
  u8 reg ;
  unsigned long val ;
  int err ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_24(& data->update_lock);
  tmp___0 = FAN_FROM_REG((int )data->fan_min[nr], 1 << (int )data->fan_div[nr]);
  min = (unsigned long )tmp___0;
  data->fan_div[nr] = DIV_TO_REG((long )val, data->type);
  tmp___1 = w83781d_read_value(data, nr == 2 ? 75 : 71);
  reg = (u8 )(((int )((signed char )tmp___1) & (nr == 0 ? -49 : 63)) | (int )((signed char )(((int )data->fan_div[nr] & 3) << (nr == 0 ? 4 : 6))));
  w83781d_write_value(data, nr == 2 ? 75 : 71, (int )reg);
  if ((unsigned int )data->type != 0U && (unsigned int )data->type != 3U) {
    tmp___2 = w83781d_read_value(data, 93);
    reg = (u8 )(((int )((signed char )tmp___2) & ~ ((int )((signed char )(1 << (nr + 5))))) | (int )((signed char )(((int )data->fan_div[nr] & 4) << (nr + 3))));
    w83781d_write_value(data, 93, (int )reg);
  } else {
  }
  data->fan_min[nr] = FAN_TO_REG((long )min, 1 << (int )data->fan_div[nr]);
  w83781d_write_value(data, (int )((unsigned int )((u16 )nr) + 59U), (int )data->fan_min[nr]);
  ldv_mutex_unlock_25(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_fan1_div = {{{"fan1_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & store_fan_div}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan2_div = {{{"fan2_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & store_fan_div}, 1};
static struct sensor_device_attribute sensor_dev_attr_fan3_div = {{{"fan3_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & store_fan_div}, 2};
static ssize_t show_pwm(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->pwm[attr->index]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_pwm2_enable(struct device *dev , struct device_attribute *da ,
                                char *buf )
{
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->pwm2_enable);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_pwm(struct device *dev , struct device_attribute *da , char const *buf ,
                         size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_26(& data->update_lock);
  __max1 = val;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255UL;
  data->pwm[nr] = (u8 )(__min1 < __min2 ? __min1 : __min2);
  w83781d_write_value(data, (int )W83781D_REG_PWM[nr], (int )data->pwm[nr]);
  ldv_mutex_unlock_27(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_pwm2_enable(struct device *dev , struct device_attribute *da ,
                                 char const *buf , size_t count )
{
  struct w83781d_data *data ;
  void *tmp ;
  unsigned long val ;
  u32 reg ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_28(& data->update_lock);
  switch (val) {
  case 0UL: ;
  case 1UL:
  tmp___0 = w83781d_read_value(data, 92);
  reg = (u32 )tmp___0;
  w83781d_write_value(data, 92, (int )(((unsigned int )((u16 )reg) & 247U) | (unsigned int )((int )((u16 )val) << 3U)));
  tmp___1 = w83781d_read_value(data, 77);
  reg = (u32 )tmp___1;
  w83781d_write_value(data, 77, (int )(((unsigned int )((u16 )reg) & 239U) | (val == 0UL ? 16U : 0U)));
  data->pwm2_enable = (u8 )val;
  goto ldv_24299;
  default:
  ldv_mutex_unlock_29(& data->update_lock);
  return (-22L);
  }
  ldv_24299:
  ldv_mutex_unlock_30(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_pwm1 = {{{"pwm1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & store_pwm}, 0};
static struct sensor_device_attribute sensor_dev_attr_pwm2 = {{{"pwm2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & store_pwm}, 1};
static struct sensor_device_attribute sensor_dev_attr_pwm3 = {{{"pwm3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & store_pwm}, 2};
static struct sensor_device_attribute sensor_dev_attr_pwm4 = {{{"pwm4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & store_pwm}, 3};
static struct device_attribute dev_attr_pwm2_enable = {{"pwm2_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_pwm2_enable, & store_pwm2_enable};
static ssize_t show_sensor(struct device *dev , struct device_attribute *da , char *buf )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  struct w83781d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83781d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->sens[attr->index]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_sensor(struct device *dev , struct device_attribute *da , char const *buf ,
                            size_t count )
{
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83781d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  u32 tmp___0 ;
  int err ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  __mptr = (struct device_attribute const *)da;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  nr = attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_31(& data->update_lock);
  switch (val) {
  case 1UL:
  tmp___1 = w83781d_read_value(data, 93);
  tmp___0 = (u32 )tmp___1;
  w83781d_write_value(data, 93, (int )((u16 )BIT_SCFG1[nr]) | (int )((u16 )tmp___0));
  tmp___2 = w83781d_read_value(data, 89);
  tmp___0 = (u32 )tmp___2;
  w83781d_write_value(data, 89, (int )((u16 )BIT_SCFG2[nr]) | (int )((u16 )tmp___0));
  data->sens[nr] = (u16 )val;
  goto ldv_24390;
  case 2UL:
  tmp___3 = w83781d_read_value(data, 93);
  tmp___0 = (u32 )tmp___3;
  w83781d_write_value(data, 93, (int )((u16 )BIT_SCFG1[nr]) | (int )((u16 )tmp___0));
  tmp___4 = w83781d_read_value(data, 89);
  tmp___0 = (u32 )tmp___4;
  w83781d_write_value(data, 89, ~ ((int )((u16 )BIT_SCFG2[nr])) & (int )((u16 )tmp___0));
  data->sens[nr] = (u16 )val;
  goto ldv_24390;
  case 3435UL:
  dev_warn((struct device const *)dev, "Sensor type %d is deprecated, please use 4 instead\n",
           3435);
  case 4UL:
  tmp___5 = w83781d_read_value(data, 93);
  tmp___0 = (u32 )tmp___5;
  w83781d_write_value(data, 93, ~ ((int )((u16 )BIT_SCFG1[nr])) & (int )((u16 )tmp___0));
  data->sens[nr] = (u16 )val;
  goto ldv_24390;
  default:
  dev_err((struct device const *)dev, "Invalid sensor type %ld; must be 1, 2, or 4\n",
          (long )val);
  goto ldv_24390;
  }
  ldv_24390:
  ldv_mutex_unlock_32(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_temp1_type = {{{"temp1_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_sensor, & store_sensor}, 0};
static struct sensor_device_attribute sensor_dev_attr_temp2_type = {{{"temp2_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_sensor, & store_sensor}, 1};
static struct sensor_device_attribute sensor_dev_attr_temp3_type = {{{"temp3_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_sensor, & store_sensor}, 2};
static int w83781d_detect_subclients(struct i2c_client *new_client )
{
  int i ;
  int val1 ;
  int id ;
  int err ;
  int address ;
  unsigned short sc_addr[2U] ;
  struct i2c_adapter *adapter ;
  struct w83781d_data *data ;
  void *tmp ;
  enum chips kind ;
  int num_sc ;
  {
  val1 = 0;
  address = (int )new_client->addr;
  adapter = new_client->adapter;
  tmp = i2c_get_clientdata((struct i2c_client const *)new_client);
  data = (struct w83781d_data *)tmp;
  kind = data->type;
  num_sc = 1;
  id = i2c_adapter_id(adapter);
  if ((int )force_subclients[0] == id && (int )force_subclients[1] == address) {
    i = 2;
    goto ldv_24449;
    ldv_24448: ;
    if ((unsigned int )force_subclients[i] <= 71U || (unsigned int )force_subclients[i] > 79U) {
      dev_err((struct device const *)(& new_client->dev), "Invalid subclient address %d; must be 0x48-0x4f\n",
              (int )force_subclients[i]);
      err = -22;
      goto ERROR_SC_1;
    } else {
    }
    i = i + 1;
    ldv_24449: ;
    if (i <= 3) {
      goto ldv_24448;
    } else {
    }
    w83781d_write_value(data, 74, (int )((u16 )(((int )((short )force_subclients[2]) & 7) | (int )((short )(((int )force_subclients[3] & 7) << 4)))));
    sc_addr[0] = force_subclients[2];
  } else {
    val1 = w83781d_read_value(data, 74);
    sc_addr[0] = ((unsigned int )((unsigned short )val1) & 7U) + 72U;
  }
  if ((unsigned int )kind != 2U) {
    num_sc = 2;
    if ((int )force_subclients[0] == id && (int )force_subclients[1] == address) {
      sc_addr[1] = force_subclients[3];
    } else {
      sc_addr[1] = ((unsigned int )((unsigned short )(val1 >> 4)) & 7U) + 72U;
    }
    if ((int )sc_addr[0] == (int )sc_addr[1]) {
      dev_err((struct device const *)(& new_client->dev), "Duplicate addresses 0x%x for subclients.\n",
              (int )sc_addr[0]);
      err = -16;
      goto ERROR_SC_2;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_24454;
  ldv_24453:
  data->lm75[i] = i2c_new_dummy(adapter, (int )sc_addr[i]);
  if ((unsigned long )data->lm75[i] == (unsigned long )((struct i2c_client *)0)) {
    dev_err((struct device const *)(& new_client->dev), "Subclient %d registration at address 0x%x failed.\n",
            i, (int )sc_addr[i]);
    err = -12;
    if (i == 1) {
      goto ERROR_SC_3;
    } else {
    }
    goto ERROR_SC_2;
  } else {
  }
  i = i + 1;
  ldv_24454: ;
  if (i < num_sc) {
    goto ldv_24453;
  } else {
  }
  return (0);
  ERROR_SC_3:
  i2c_unregister_device(data->lm75[0]);
  ERROR_SC_2: ;
  ERROR_SC_1: ;
  return (err);
}
}
static struct attribute *w83781d_attributes[61U] =
  { & sensor_dev_attr_in0_input.dev_attr.attr, & sensor_dev_attr_in0_min.dev_attr.attr, & sensor_dev_attr_in0_max.dev_attr.attr, & sensor_dev_attr_in0_alarm.dev_attr.attr,
        & sensor_dev_attr_in0_beep.dev_attr.attr, & sensor_dev_attr_in2_input.dev_attr.attr, & sensor_dev_attr_in2_min.dev_attr.attr, & sensor_dev_attr_in2_max.dev_attr.attr,
        & sensor_dev_attr_in2_alarm.dev_attr.attr, & sensor_dev_attr_in2_beep.dev_attr.attr, & sensor_dev_attr_in3_input.dev_attr.attr, & sensor_dev_attr_in3_min.dev_attr.attr,
        & sensor_dev_attr_in3_max.dev_attr.attr, & sensor_dev_attr_in3_alarm.dev_attr.attr, & sensor_dev_attr_in3_beep.dev_attr.attr, & sensor_dev_attr_in4_input.dev_attr.attr,
        & sensor_dev_attr_in4_min.dev_attr.attr, & sensor_dev_attr_in4_max.dev_attr.attr, & sensor_dev_attr_in4_alarm.dev_attr.attr, & sensor_dev_attr_in4_beep.dev_attr.attr,
        & sensor_dev_attr_in5_input.dev_attr.attr, & sensor_dev_attr_in5_min.dev_attr.attr, & sensor_dev_attr_in5_max.dev_attr.attr, & sensor_dev_attr_in5_alarm.dev_attr.attr,
        & sensor_dev_attr_in5_beep.dev_attr.attr, & sensor_dev_attr_in6_input.dev_attr.attr, & sensor_dev_attr_in6_min.dev_attr.attr, & sensor_dev_attr_in6_max.dev_attr.attr,
        & sensor_dev_attr_in6_alarm.dev_attr.attr, & sensor_dev_attr_in6_beep.dev_attr.attr, & sensor_dev_attr_fan1_input.dev_attr.attr, & sensor_dev_attr_fan1_min.dev_attr.attr,
        & sensor_dev_attr_fan1_div.dev_attr.attr, & sensor_dev_attr_fan1_alarm.dev_attr.attr, & sensor_dev_attr_fan1_beep.dev_attr.attr, & sensor_dev_attr_fan2_input.dev_attr.attr,
        & sensor_dev_attr_fan2_min.dev_attr.attr, & sensor_dev_attr_fan2_div.dev_attr.attr, & sensor_dev_attr_fan2_alarm.dev_attr.attr, & sensor_dev_attr_fan2_beep.dev_attr.attr,
        & sensor_dev_attr_fan3_input.dev_attr.attr, & sensor_dev_attr_fan3_min.dev_attr.attr, & sensor_dev_attr_fan3_div.dev_attr.attr, & sensor_dev_attr_fan3_alarm.dev_attr.attr,
        & sensor_dev_attr_fan3_beep.dev_attr.attr, & sensor_dev_attr_temp1_input.dev_attr.attr, & sensor_dev_attr_temp1_max.dev_attr.attr, & sensor_dev_attr_temp1_max_hyst.dev_attr.attr,
        & sensor_dev_attr_temp1_alarm.dev_attr.attr, & sensor_dev_attr_temp1_beep.dev_attr.attr, & sensor_dev_attr_temp2_input.dev_attr.attr, & sensor_dev_attr_temp2_max.dev_attr.attr,
        & sensor_dev_attr_temp2_max_hyst.dev_attr.attr, & sensor_dev_attr_temp2_alarm.dev_attr.attr, & sensor_dev_attr_temp2_beep.dev_attr.attr, & dev_attr_cpu0_vid.attr,
        & dev_attr_vrm.attr, & dev_attr_alarms.attr, & dev_attr_beep_mask.attr, & sensor_dev_attr_beep_enable.dev_attr.attr,
        (struct attribute *)0};
static struct attribute_group const w83781d_group = {0, 0, (struct attribute **)(& w83781d_attributes), 0};
static struct attribute *w83781d_attributes_in1[6U] = { & sensor_dev_attr_in1_input.dev_attr.attr, & sensor_dev_attr_in1_min.dev_attr.attr, & sensor_dev_attr_in1_max.dev_attr.attr, & sensor_dev_attr_in1_alarm.dev_attr.attr,
        & sensor_dev_attr_in1_beep.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_in1 = {0, 0, (struct attribute **)(& w83781d_attributes_in1), 0};
static struct attribute *w83781d_attributes_in78[11U] =
  { & sensor_dev_attr_in7_input.dev_attr.attr, & sensor_dev_attr_in7_min.dev_attr.attr, & sensor_dev_attr_in7_max.dev_attr.attr, & sensor_dev_attr_in7_alarm.dev_attr.attr,
        & sensor_dev_attr_in7_beep.dev_attr.attr, & sensor_dev_attr_in8_input.dev_attr.attr, & sensor_dev_attr_in8_min.dev_attr.attr, & sensor_dev_attr_in8_max.dev_attr.attr,
        & sensor_dev_attr_in8_alarm.dev_attr.attr, & sensor_dev_attr_in8_beep.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_in78 = {0, 0, (struct attribute **)(& w83781d_attributes_in78), 0};
static struct attribute *w83781d_attributes_temp3[6U] = { & sensor_dev_attr_temp3_input.dev_attr.attr, & sensor_dev_attr_temp3_max.dev_attr.attr, & sensor_dev_attr_temp3_max_hyst.dev_attr.attr, & sensor_dev_attr_temp3_alarm.dev_attr.attr,
        & sensor_dev_attr_temp3_beep.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_temp3 = {0, 0, (struct attribute **)(& w83781d_attributes_temp3), 0};
static struct attribute *w83781d_attributes_pwm12[4U] = { & sensor_dev_attr_pwm1.dev_attr.attr, & sensor_dev_attr_pwm2.dev_attr.attr, & dev_attr_pwm2_enable.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_pwm12 = {0, 0, (struct attribute **)(& w83781d_attributes_pwm12), 0};
static struct attribute *w83781d_attributes_pwm34[3U] = { & sensor_dev_attr_pwm3.dev_attr.attr, & sensor_dev_attr_pwm4.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_pwm34 = {0, 0, (struct attribute **)(& w83781d_attributes_pwm34), 0};
static struct attribute *w83781d_attributes_other[4U] = { & sensor_dev_attr_temp1_type.dev_attr.attr, & sensor_dev_attr_temp2_type.dev_attr.attr, & sensor_dev_attr_temp3_type.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const w83781d_group_other = {0, 0, (struct attribute **)(& w83781d_attributes_other), 0};
static int w83781d_create_files(struct device *dev , int kind , int is_isa )
{
  int err ;
  {
  err = sysfs_create_group(& dev->kobj, & w83781d_group);
  if (err != 0) {
    return (err);
  } else {
  }
  if (kind != 2) {
    err = sysfs_create_group(& dev->kobj, & w83781d_group_in1);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if ((kind != 3 && kind != 0) && kind != 2) {
    err = sysfs_create_group(& dev->kobj, & w83781d_group_in78);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if (kind != 2) {
    err = sysfs_create_group(& dev->kobj, & w83781d_group_temp3);
    if (err != 0) {
      return (err);
    } else {
    }
    if (kind != 0) {
      err = sysfs_chmod_file(& dev->kobj, (struct attribute const *)(& sensor_dev_attr_temp3_alarm.dev_attr.attr),
                             420);
      if (err != 0) {
        return (err);
      } else {
      }
    } else {
    }
  } else {
  }
  if (kind != 0 && kind != 3) {
    err = sysfs_create_group(& dev->kobj, & w83781d_group_pwm12);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if (kind == 1 && is_isa == 0) {
    err = sysfs_create_group(& dev->kobj, & w83781d_group_pwm34);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if (kind != 3 && kind != 0) {
    err = device_create_file(dev, (struct device_attribute const *)(& sensor_dev_attr_temp1_type.dev_attr));
    if (err != 0) {
      return (err);
    } else {
    }
    err = device_create_file(dev, (struct device_attribute const *)(& sensor_dev_attr_temp2_type.dev_attr));
    if (err != 0) {
      return (err);
    } else {
    }
    if (kind != 2) {
      err = device_create_file(dev, (struct device_attribute const *)(& sensor_dev_attr_temp3_type.dev_attr));
      if (err != 0) {
        return (err);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int w83781d_detect(struct i2c_client *client , struct i2c_board_info *info )
{
  int val1 ;
  int val2 ;
  struct w83781d_data *isa ;
  struct w83781d_data *tmp ;
  struct i2c_adapter *adapter ;
  int address ;
  char const *client_name ;
  enum vendor vendid ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  s32 tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  s32 tmp___5 ;
  s32 tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  int tmp___9 ;
  {
  tmp = w83781d_data_if_isa();
  isa = tmp;
  adapter = client->adapter;
  address = (int )client->addr;
  tmp___0 = i2c_check_functionality(adapter, 1572864U);
  if (tmp___0 == 0) {
    return (-19);
  } else {
  }
  if ((unsigned long )isa != (unsigned long )((struct w83781d_data *)0)) {
    ldv_mutex_lock_33(& isa->update_lock);
  } else {
  }
  tmp___2 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 64);
  if ((tmp___2 & 128) != 0) {
    descriptor.modname = "w83781d";
    descriptor.function = "w83781d_detect";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
    descriptor.format = "Detection of w83781d chip failed at step 3\n";
    descriptor.lineno = 1121U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& adapter->dev), "Detection of w83781d chip failed at step 3\n");
    } else {
    }
    goto err_nodev;
  } else {
  }
  val1 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 78);
  val2 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 79);
  if ((val1 & 7) == 0 && ((((val1 & 128) == 0 && val2 != 163) && val2 != 195) || (((val1 & 128) != 0 && val2 != 92) && val2 != 18))) {
    descriptor___0.modname = "w83781d";
    descriptor___0.function = "w83781d_detect";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
    descriptor___0.format = "Detection of w83781d chip failed at step 4\n";
    descriptor___0.lineno = 1132U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& adapter->dev),
                        "Detection of w83781d chip failed at step 4\n");
    } else {
    }
    goto err_nodev;
  } else {
  }
  if (((val1 & 128) == 0 && val2 == 163) || ((val1 & 128) != 0 && val2 == 92)) {
    tmp___5 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 72);
    if (tmp___5 != address) {
      descriptor___1.modname = "w83781d";
      descriptor___1.function = "w83781d_detect";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
      descriptor___1.format = "Detection of w83781d chip failed at step 5\n";
      descriptor___1.lineno = 1144U;
      descriptor___1.flags = 1U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& adapter->dev),
                          "Detection of w83781d chip failed at step 5\n");
      } else {
      }
      goto err_nodev;
    } else {
    }
  } else {
  }
  tmp___6 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 78);
  i2c_smbus_write_byte_data((struct i2c_client const *)client, 78, (int )((u8 )(((int )((signed char )tmp___6) & 120) | -128)));
  val2 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 79);
  if (val2 == 92) {
    vendid = 0;
  } else
  if (val2 == 18) {
    vendid = 1;
  } else {
    descriptor___2.modname = "w83781d";
    descriptor___2.function = "w83781d_detect";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
    descriptor___2.format = "w83781d chip vendor is neither Winbond nor Asus\n";
    descriptor___2.lineno = 1162U;
    descriptor___2.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& adapter->dev),
                        "w83781d chip vendor is neither Winbond nor Asus\n");
    } else {
    }
    goto err_nodev;
  }
  val1 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 88);
  if ((val1 == 16 || val1 == 17) && (unsigned int )vendid == 0U) {
    client_name = "w83781d";
  } else
  if (val1 == 48 && (unsigned int )vendid == 0U) {
    client_name = "w83782d";
  } else
  if ((val1 == 64 && (unsigned int )vendid == 0U) && address == 45) {
    client_name = "w83783s";
  } else
  if (val1 == 49) {
    client_name = "as99127f";
  } else {
    goto err_nodev;
  }
  if (val1 <= 48) {
    tmp___9 = w83781d_alias_detect(client, (int )((u8 )val1));
    if (tmp___9 != 0) {
      descriptor___3.modname = "w83781d";
      descriptor___3.function = "w83781d_detect";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
      descriptor___3.format = "Device at 0x%02x appears to be the same as ISA device\n";
      descriptor___3.lineno = 1182U;
      descriptor___3.flags = 1U;
      tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& adapter->dev),
                          "Device at 0x%02x appears to be the same as ISA device\n",
                          address);
      } else {
      }
      goto err_nodev;
    } else {
    }
  } else {
  }
  if ((unsigned long )isa != (unsigned long )((struct w83781d_data *)0)) {
    ldv_mutex_unlock_34(& isa->update_lock);
  } else {
  }
  strlcpy((char *)(& info->type), client_name, 20UL);
  return (0);
  err_nodev: ;
  if ((unsigned long )isa != (unsigned long )((struct w83781d_data *)0)) {
    ldv_mutex_unlock_35(& isa->update_lock);
  } else {
  }
  return (-19);
}
}
static void w83781d_remove_files(struct device *dev )
{
  {
  sysfs_remove_group(& dev->kobj, & w83781d_group);
  sysfs_remove_group(& dev->kobj, & w83781d_group_in1);
  sysfs_remove_group(& dev->kobj, & w83781d_group_in78);
  sysfs_remove_group(& dev->kobj, & w83781d_group_temp3);
  sysfs_remove_group(& dev->kobj, & w83781d_group_pwm12);
  sysfs_remove_group(& dev->kobj, & w83781d_group_pwm34);
  sysfs_remove_group(& dev->kobj, & w83781d_group_other);
  return;
}
}
static int w83781d_probe(struct i2c_client *client , struct i2c_device_id const *id )
{
  struct device *dev ;
  struct w83781d_data *data ;
  int err ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  dev = & client->dev;
  tmp = devm_kzalloc(dev, 472UL, 208U);
  data = (struct w83781d_data *)tmp;
  if ((unsigned long )data == (unsigned long )((struct w83781d_data *)0)) {
    return (-12);
  } else {
  }
  i2c_set_clientdata(client, (void *)data);
  __mutex_init(& data->lock, "&data->lock", & __key);
  __mutex_init(& data->update_lock, "&data->update_lock", & __key___0);
  data->type = (enum chips )id->driver_data;
  data->client = client;
  err = w83781d_detect_subclients(client);
  if (err != 0) {
    return (err);
  } else {
  }
  w83781d_init_device(dev);
  err = w83781d_create_files(dev, (int )data->type, 0);
  if (err != 0) {
    goto exit_remove_files;
  } else {
  }
  data->hwmon_dev = hwmon_device_register(dev);
  tmp___1 = IS_ERR((void const *)data->hwmon_dev);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)data->hwmon_dev);
    err = (int )tmp___0;
    goto exit_remove_files;
  } else {
  }
  return (0);
  exit_remove_files:
  w83781d_remove_files(dev);
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  return (err);
}
}
static int w83781d_remove(struct i2c_client *client )
{
  struct w83781d_data *data ;
  void *tmp ;
  struct device *dev ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83781d_data *)tmp;
  dev = & client->dev;
  hwmon_device_unregister(data->hwmon_dev);
  w83781d_remove_files(dev);
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  return (0);
}
}
static int w83781d_read_value_i2c(struct w83781d_data *data , u16 reg )
{
  struct i2c_client *client ;
  int res ;
  int bank ;
  struct i2c_client *cl ;
  {
  client = data->client;
  bank = ((int )reg >> 8) & 15;
  if (bank > 2) {
    i2c_smbus_write_byte_data((struct i2c_client const *)client, 78, (int )((u8 )bank));
  } else {
  }
  if (bank == 0 || bank > 2) {
    res = i2c_smbus_read_byte_data((struct i2c_client const *)client, (int )((u8 )reg));
  } else {
    cl = data->lm75[bank + -1];
    switch ((int )reg & 255) {
    case 80:
    res = i2c_smbus_read_word_swapped((struct i2c_client const *)cl, 0);
    goto ldv_24524;
    case 82:
    res = i2c_smbus_read_byte_data((struct i2c_client const *)cl, 1);
    goto ldv_24524;
    case 83:
    res = i2c_smbus_read_word_swapped((struct i2c_client const *)cl, 2);
    goto ldv_24524;
    case 85: ;
    default:
    res = i2c_smbus_read_word_swapped((struct i2c_client const *)cl, 3);
    goto ldv_24524;
    }
    ldv_24524: ;
  }
  if (bank > 2) {
    i2c_smbus_write_byte_data((struct i2c_client const *)client, 78, 0);
  } else {
  }
  return (res);
}
}
static int w83781d_write_value_i2c(struct w83781d_data *data , u16 reg , u16 value )
{
  struct i2c_client *client ;
  int bank ;
  struct i2c_client *cl ;
  {
  client = data->client;
  bank = ((int )reg >> 8) & 15;
  if (bank > 2) {
    i2c_smbus_write_byte_data((struct i2c_client const *)client, 78, (int )((u8 )bank));
  } else {
  }
  if (bank == 0 || bank > 2) {
    i2c_smbus_write_byte_data((struct i2c_client const *)client, (int )((u8 )reg),
                              (int )((u8 )value));
  } else {
    cl = data->lm75[bank + -1];
    switch ((int )reg & 255) {
    case 82:
    i2c_smbus_write_byte_data((struct i2c_client const *)cl, 1, (int )((u8 )value));
    goto ldv_24538;
    case 83:
    i2c_smbus_write_word_swapped((struct i2c_client const *)cl, 2, (int )value);
    goto ldv_24538;
    case 85:
    i2c_smbus_write_word_swapped((struct i2c_client const *)cl, 3, (int )value);
    goto ldv_24538;
    }
    ldv_24538: ;
  }
  if (bank > 2) {
    i2c_smbus_write_byte_data((struct i2c_client const *)client, 78, 0);
  } else {
  }
  return (0);
}
}
static void w83781d_init_device(struct device *dev )
{
  struct w83781d_data *data ;
  void *tmp ;
  int i ;
  int p ;
  int type ;
  u8 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  struct lock_class_key __key ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  type = (int )data->type;
  if ((int )reset && type != 3) {
    _dev_info((struct device const *)dev, "If reset=1 solved a problem you were having, please report!\n");
    i = w83781d_read_value(data, 77);
    p = w83781d_read_value(data, 92);
    w83781d_write_value(data, 64, 128);
    w83781d_write_value(data, 77, (int )((u16 )((int )((short )i) | 128)));
    w83781d_write_value(data, 92, (int )((u16 )p));
    w83781d_write_value(data, 87, 0);
  } else {
  }
  if (((int )init && ! reset) && type != 3) {
    i = w83781d_read_value(data, 77);
    w83781d_write_value(data, 77, (int )((u16 )((int )((short )i) | 128)));
  } else {
  }
  data->vrm = vid_which_vrm();
  if (type != 0 && type != 3) {
    tmp___1 = w83781d_read_value(data, 93);
    tmp___0 = (u8 )tmp___1;
    i = 1;
    goto ldv_24551;
    ldv_24550: ;
    if ((unsigned int )((int )((unsigned char )BIT_SCFG1[i + -1]) & (int )tmp___0) == 0U) {
      data->sens[i + -1] = 4U;
    } else {
      tmp___2 = w83781d_read_value(data, 89);
      if ((tmp___2 & (int )BIT_SCFG2[i + -1]) != 0) {
        data->sens[i + -1] = 1U;
      } else {
        data->sens[i + -1] = 2U;
      }
    }
    if (type == 2 && i == 2) {
      goto ldv_24549;
    } else {
    }
    i = i + 1;
    ldv_24551: ;
    if (i <= 3) {
      goto ldv_24550;
    } else {
    }
    ldv_24549: ;
  } else {
  }
  if ((int )init && type != 3) {
    tmp___3 = w83781d_read_value(data, 338);
    tmp___0 = (u8 )tmp___3;
    if ((int )tmp___0 & 1) {
      dev_warn((struct device const *)dev, "Enabling temp2, readings might not make sense\n");
      w83781d_write_value(data, 338, (int )tmp___0 & 254);
    } else {
    }
    if (type != 2) {
      tmp___4 = w83781d_read_value(data, 594);
      tmp___0 = (u8 )tmp___4;
      if ((int )tmp___0 & 1) {
        dev_warn((struct device const *)dev, "Enabling temp3, readings might not make sense\n");
        w83781d_write_value(data, 594, (int )tmp___0 & 254);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___5 = w83781d_read_value(data, 64);
  w83781d_write_value(data, 64, (int )((u16 )(((int )((short )tmp___5) & 246) | 1)));
  i = 0;
  goto ldv_24553;
  ldv_24552:
  tmp___6 = w83781d_read_value(data, (int )((unsigned int )((u16 )i) + 59U));
  data->fan_min[i] = (u8 )tmp___6;
  i = i + 1;
  ldv_24553: ;
  if (i <= 2) {
    goto ldv_24552;
  } else {
  }
  __mutex_init(& data->update_lock, "&data->update_lock", & __key);
  return;
}
}
static struct w83781d_data *w83781d_update_device(struct device *dev )
{
  struct w83781d_data *data ;
  void *tmp ;
  struct i2c_client *client ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83781d_data *)tmp;
  client = data->client;
  ldv_mutex_lock_36(& data->update_lock);
  if ((long )((data->last_updated - (unsigned long )jiffies) + 375UL) < 0L || (int )((signed char )data->valid) == 0) {
    descriptor.modname = "w83781d";
    descriptor.function = "w83781d_update_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8245/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83781d.c";
    descriptor.format = "Starting device update\n";
    descriptor.lineno = 1474U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Starting device update\n");
    } else {
    }
    i = 0;
    goto ldv_24573;
    ldv_24572: ;
    if ((unsigned int )data->type == 2U && i == 1) {
      goto ldv_24570;
    } else {
    }
    tmp___1 = w83781d_read_value(data, (int )(i <= 6 ? (unsigned int )((u16 )i) + 32U : (unsigned int )((u16 )i) + 1353U));
    data->in[i] = (u8 )tmp___1;
    tmp___2 = w83781d_read_value(data, (int )(i <= 6 ? (unsigned int )((u16 )(i + 22)) * 2U : (unsigned int )((u16 )(i + -7)) * 2U + 1365U));
    data->in_min[i] = (u8 )tmp___2;
    tmp___3 = w83781d_read_value(data, (int )(i <= 6 ? (unsigned int )((u16 )i) * 2U + 43U : (unsigned int )((u16 )(i + 675)) * 2U));
    data->in_max[i] = (u8 )tmp___3;
    if ((unsigned int )data->type != 1U && i == 6) {
      goto ldv_24571;
    } else {
    }
    ldv_24570:
    i = i + 1;
    ldv_24573: ;
    if (i <= 8) {
      goto ldv_24572;
    } else {
    }
    ldv_24571:
    i = 0;
    goto ldv_24575;
    ldv_24574:
    tmp___4 = w83781d_read_value(data, (int )((unsigned int )((u16 )i) + 40U));
    data->fan[i] = (u8 )tmp___4;
    tmp___5 = w83781d_read_value(data, (int )((unsigned int )((u16 )i) + 59U));
    data->fan_min[i] = (u8 )tmp___5;
    i = i + 1;
    ldv_24575: ;
    if (i <= 2) {
      goto ldv_24574;
    } else {
    }
    if ((unsigned int )data->type != 0U && (unsigned int )data->type != 3U) {
      i = 0;
      goto ldv_24579;
      ldv_24578:
      tmp___6 = w83781d_read_value(data, (int )W83781D_REG_PWM[i]);
      data->pwm[i] = (u8 )tmp___6;
      if (((unsigned int )data->type != 1U || (unsigned long )client == (unsigned long )((struct i2c_client *)0)) && i == 1) {
        goto ldv_24577;
      } else {
      }
      i = i + 1;
      ldv_24579: ;
      if (i <= 3) {
        goto ldv_24578;
      } else {
      }
      ldv_24577:
      tmp___7 = w83781d_read_value(data, 92);
      data->pwm2_enable = (u8 )((tmp___7 & 8) >> 3);
    } else {
    }
    tmp___8 = w83781d_read_value(data, 39);
    data->temp = (s8 )tmp___8;
    tmp___9 = w83781d_read_value(data, 57);
    data->temp_max = (s8 )tmp___9;
    tmp___10 = w83781d_read_value(data, 58);
    data->temp_max_hyst = (s8 )tmp___10;
    tmp___11 = w83781d_read_value(data, 336);
    data->temp_add[0] = (u16 )tmp___11;
    tmp___12 = w83781d_read_value(data, 341);
    data->temp_max_add[0] = (u16 )tmp___12;
    tmp___13 = w83781d_read_value(data, 339);
    data->temp_max_hyst_add[0] = (u16 )tmp___13;
    if ((unsigned int )data->type != 2U) {
      tmp___14 = w83781d_read_value(data, 592);
      data->temp_add[1] = (u16 )tmp___14;
      tmp___15 = w83781d_read_value(data, 597);
      data->temp_max_add[1] = (u16 )tmp___15;
      tmp___16 = w83781d_read_value(data, 595);
      data->temp_max_hyst_add[1] = (u16 )tmp___16;
    } else {
    }
    i = w83781d_read_value(data, 71);
    data->vid = (unsigned int )((u8 )i) & 15U;
    tmp___17 = w83781d_read_value(data, 73);
    data->vid = (u8 )((int )((signed char )data->vid) | (int )((signed char )((tmp___17 & 1) << 4)));
    data->fan_div[0] = (unsigned int )((u8 )(i >> 4)) & 3U;
    data->fan_div[1] = (unsigned int )((u8 )(i >> 6)) & 3U;
    tmp___18 = w83781d_read_value(data, 75);
    data->fan_div[2] = (unsigned int )((u8 )(tmp___18 >> 6)) & 3U;
    if ((unsigned int )data->type != 0U && (unsigned int )data->type != 3U) {
      i = w83781d_read_value(data, 93);
      data->fan_div[0] = (u8 )((int )((signed char )data->fan_div[0]) | ((int )((signed char )(i >> 3)) & 4));
      data->fan_div[1] = (u8 )((int )((signed char )data->fan_div[1]) | ((int )((signed char )(i >> 4)) & 4));
      data->fan_div[2] = (u8 )((int )((signed char )data->fan_div[2]) | ((int )((signed char )(i >> 5)) & 4));
    } else {
    }
    if ((unsigned int )data->type == 1U) {
      tmp___19 = w83781d_read_value(data, 1113);
      tmp___20 = w83781d_read_value(data, 1114);
      tmp___21 = w83781d_read_value(data, 1115);
      data->alarms = (u32 )((tmp___19 | (tmp___20 << 8)) | (tmp___21 << 16));
    } else
    if ((unsigned int )data->type == 2U) {
      tmp___22 = w83781d_read_value(data, 1113);
      tmp___23 = w83781d_read_value(data, 1114);
      data->alarms = (u32 )(tmp___22 | (tmp___23 << 8));
    } else {
      tmp___24 = w83781d_read_value(data, 65);
      tmp___25 = w83781d_read_value(data, 66);
      data->alarms = (u32 )(tmp___24 | (tmp___25 << 8));
    }
    i = w83781d_read_value(data, 87);
    tmp___26 = w83781d_read_value(data, 86);
    data->beep_mask = (u32 )((i << 8) + tmp___26);
    if ((unsigned int )data->type != 0U && (unsigned int )data->type != 3U) {
      tmp___27 = w83781d_read_value(data, 1107);
      data->beep_mask = data->beep_mask | (u32 )(tmp___27 << 16);
    } else {
    }
    data->last_updated = jiffies;
    data->valid = 1;
  } else {
  }
  ldv_mutex_unlock_37(& data->update_lock);
  return (data);
}
}
static struct i2c_device_id const w83781d_ids[5U] = { {{'w', '8', '3', '7', '8', '1', 'd', '\000'}, 0UL},
        {{'w', '8', '3', '7', '8', '2', 'd', '\000'}, 1UL},
        {{'w', '8', '3', '7', '8', '3', 's', '\000'}, 2UL},
        {{'a', 's', '9', '9', '1', '2', '7', 'f', '\000'}, 3UL}};
struct i2c_device_id const __mod_i2c__w83781d_ids_device_table[5U] ;
static struct i2c_driver w83781d_driver =
     {1U, 0, & w83781d_probe, & w83781d_remove, 0, 0, 0, {"w83781d", 0, 0, 0, (_Bool)0,
                                                        0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                        0, 0}, (struct i2c_device_id const *)(& w83781d_ids),
    & w83781d_detect, (unsigned short const *)(& normal_i2c), {0, 0}};
static struct w83781d_data *w83781d_data_if_isa(void)
{
  {
  return ((struct w83781d_data *)0);
}
}
static int w83781d_alias_detect(struct i2c_client *client , u8 chipid )
{
  {
  return (0);
}
}
static int w83781d_read_value(struct w83781d_data *data , u16 reg )
{
  int res ;
  {
  ldv_mutex_lock_38(& data->lock);
  res = w83781d_read_value_i2c(data, (int )reg);
  ldv_mutex_unlock_39(& data->lock);
  return (res);
}
}
static int w83781d_write_value(struct w83781d_data *data , u16 reg , u16 value )
{
  {
  ldv_mutex_lock_40(& data->lock);
  w83781d_write_value_i2c(data, (int )reg, (int )value);
  ldv_mutex_unlock_41(& data->lock);
  return (0);
}
}
static int w83781d_isa_register(void)
{
  {
  return (0);
}
}
static void w83781d_isa_unregister(void)
{
  {
  return;
}
}
static int sensors_w83781d_init(void)
{
  int res ;
  {
  res = w83781d_isa_register();
  if (res != 0) {
    goto exit;
  } else {
  }
  res = i2c_register_driver(& __this_module, & w83781d_driver);
  if (res != 0) {
    goto exit_unreg_isa;
  } else {
  }
  return (0);
  exit_unreg_isa:
  w83781d_isa_unregister();
  exit: ;
  return (res);
}
}
static void sensors_w83781d_exit(void)
{
  {
  w83781d_isa_unregister();
  i2c_del_driver(& w83781d_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void ldv_initialize_sensor_device_attribute_87(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_79(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in3_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in3_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_48(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_max_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_max_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_81(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in2_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in2_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_63(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in8_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in8_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_18(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm4_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm4_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_21(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in7_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in7_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_52(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_20(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in8_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in8_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_55(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_i2c_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1480UL);
  w83781d_driver_group0 = (struct i2c_client *)tmp;
  return;
}
}
void ldv_initialize_sensor_device_attribute_49(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_19(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_88(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_82(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in2_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in2_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_27(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in1_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in1_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_64(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in8_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in8_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_24(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in4_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in4_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_59(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_70(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in6_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in6_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_28(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_29(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_beep_mask_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_beep_mask_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_54(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_max_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_max_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_75(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in4_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in4_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_pwm2_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_pwm2_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_beep_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_beep_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_78(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in3_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in3_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_84(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in1_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in1_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_51(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_max_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_max_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_73(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in5_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in5_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_66(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in7_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in7_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_85(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in1_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in1_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_25(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in3_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in3_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_23(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in5_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in5_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_61(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_57(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_16(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_72(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in5_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in5_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_26(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in2_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in2_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_67(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in7_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in7_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_76(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in4_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in4_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_46(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_vrm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_vrm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_22(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in6_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in6_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_15(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_17(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_69(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in6_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in6_max_group1 = (struct device *)tmp___0;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  char *ldvarg4 ;
  void *tmp___2 ;
  struct device *ldvarg3 ;
  void *tmp___3 ;
  struct device_attribute *ldvarg5 ;
  void *tmp___4 ;
  char *ldvarg8 ;
  void *tmp___5 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___6 ;
  char *ldvarg11 ;
  void *tmp___7 ;
  size_t ldvarg10 ;
  char *ldvarg9 ;
  void *tmp___8 ;
  struct device_attribute *ldvarg14 ;
  void *tmp___9 ;
  char *ldvarg13 ;
  void *tmp___10 ;
  struct device *ldvarg12 ;
  void *tmp___11 ;
  char *ldvarg17 ;
  void *tmp___12 ;
  size_t ldvarg16 ;
  char *ldvarg15 ;
  void *tmp___13 ;
  struct device *ldvarg18 ;
  void *tmp___14 ;
  struct device_attribute *ldvarg20 ;
  void *tmp___15 ;
  char *ldvarg19 ;
  void *tmp___16 ;
  char *ldvarg21 ;
  void *tmp___17 ;
  char *ldvarg23 ;
  void *tmp___18 ;
  size_t ldvarg22 ;
  char *ldvarg24 ;
  void *tmp___19 ;
  char *ldvarg26 ;
  void *tmp___20 ;
  size_t ldvarg25 ;
  char *ldvarg27 ;
  void *tmp___21 ;
  char *ldvarg29 ;
  void *tmp___22 ;
  size_t ldvarg28 ;
  char *ldvarg32 ;
  void *tmp___23 ;
  size_t ldvarg31 ;
  char *ldvarg30 ;
  void *tmp___24 ;
  struct device_attribute *ldvarg35 ;
  void *tmp___25 ;
  char *ldvarg34 ;
  void *tmp___26 ;
  struct device *ldvarg33 ;
  void *tmp___27 ;
  size_t ldvarg37 ;
  char *ldvarg36 ;
  void *tmp___28 ;
  char *ldvarg38 ;
  void *tmp___29 ;
  char *ldvarg39 ;
  void *tmp___30 ;
  char *ldvarg41 ;
  void *tmp___31 ;
  size_t ldvarg40 ;
  char *ldvarg43 ;
  void *tmp___32 ;
  struct device *ldvarg42 ;
  void *tmp___33 ;
  struct device_attribute *ldvarg44 ;
  void *tmp___34 ;
  char *ldvarg45 ;
  void *tmp___35 ;
  char *ldvarg47 ;
  void *tmp___36 ;
  size_t ldvarg46 ;
  char *ldvarg48 ;
  void *tmp___37 ;
  size_t ldvarg49 ;
  char *ldvarg50 ;
  void *tmp___38 ;
  char *ldvarg51 ;
  void *tmp___39 ;
  char *ldvarg53 ;
  void *tmp___40 ;
  size_t ldvarg52 ;
  char *ldvarg54 ;
  void *tmp___41 ;
  size_t ldvarg55 ;
  char *ldvarg56 ;
  void *tmp___42 ;
  struct device *ldvarg57 ;
  void *tmp___43 ;
  char *ldvarg58 ;
  void *tmp___44 ;
  struct device_attribute *ldvarg59 ;
  void *tmp___45 ;
  size_t ldvarg61 ;
  char *ldvarg60 ;
  void *tmp___46 ;
  char *ldvarg62 ;
  void *tmp___47 ;
  struct device_attribute *ldvarg65 ;
  void *tmp___48 ;
  struct device *ldvarg63 ;
  void *tmp___49 ;
  char *ldvarg64 ;
  void *tmp___50 ;
  char *ldvarg67 ;
  void *tmp___51 ;
  struct device *ldvarg66 ;
  void *tmp___52 ;
  struct device_attribute *ldvarg68 ;
  void *tmp___53 ;
  size_t ldvarg70 ;
  char *ldvarg71 ;
  void *tmp___54 ;
  char *ldvarg69 ;
  void *tmp___55 ;
  size_t ldvarg73 ;
  char *ldvarg74 ;
  void *tmp___56 ;
  char *ldvarg72 ;
  void *tmp___57 ;
  char *ldvarg77 ;
  void *tmp___58 ;
  size_t ldvarg76 ;
  char *ldvarg75 ;
  void *tmp___59 ;
  size_t ldvarg79 ;
  char *ldvarg80 ;
  void *tmp___60 ;
  char *ldvarg78 ;
  void *tmp___61 ;
  struct device *ldvarg81 ;
  void *tmp___62 ;
  char *ldvarg82 ;
  void *tmp___63 ;
  struct device_attribute *ldvarg83 ;
  void *tmp___64 ;
  char *ldvarg85 ;
  void *tmp___65 ;
  struct device *ldvarg84 ;
  void *tmp___66 ;
  struct device_attribute *ldvarg86 ;
  void *tmp___67 ;
  size_t ldvarg88 ;
  char *ldvarg89 ;
  void *tmp___68 ;
  char *ldvarg87 ;
  void *tmp___69 ;
  char *ldvarg91 ;
  void *tmp___70 ;
  struct device_attribute *ldvarg92 ;
  void *tmp___71 ;
  struct device *ldvarg90 ;
  void *tmp___72 ;
  struct device *ldvarg93 ;
  void *tmp___73 ;
  struct device_attribute *ldvarg95 ;
  void *tmp___74 ;
  char *ldvarg94 ;
  void *tmp___75 ;
  char *ldvarg98 ;
  void *tmp___76 ;
  size_t ldvarg97 ;
  char *ldvarg96 ;
  void *tmp___77 ;
  struct device_attribute *ldvarg101 ;
  void *tmp___78 ;
  char *ldvarg100 ;
  void *tmp___79 ;
  struct device *ldvarg99 ;
  void *tmp___80 ;
  struct device_attribute *ldvarg104 ;
  void *tmp___81 ;
  struct device *ldvarg102 ;
  void *tmp___82 ;
  char *ldvarg103 ;
  void *tmp___83 ;
  size_t ldvarg106 ;
  char *ldvarg105 ;
  void *tmp___84 ;
  char *ldvarg107 ;
  void *tmp___85 ;
  char *ldvarg110 ;
  void *tmp___86 ;
  char *ldvarg108 ;
  void *tmp___87 ;
  size_t ldvarg109 ;
  char *ldvarg111 ;
  void *tmp___88 ;
  size_t ldvarg112 ;
  char *ldvarg113 ;
  void *tmp___89 ;
  char *ldvarg116 ;
  void *tmp___90 ;
  char *ldvarg114 ;
  void *tmp___91 ;
  size_t ldvarg115 ;
  struct device_attribute *ldvarg119 ;
  void *tmp___92 ;
  struct device *ldvarg117 ;
  void *tmp___93 ;
  char *ldvarg118 ;
  void *tmp___94 ;
  char *ldvarg121 ;
  void *tmp___95 ;
  struct device_attribute *ldvarg122 ;
  void *tmp___96 ;
  struct device *ldvarg120 ;
  void *tmp___97 ;
  char *ldvarg123 ;
  void *tmp___98 ;
  size_t ldvarg124 ;
  char *ldvarg125 ;
  void *tmp___99 ;
  size_t ldvarg127 ;
  char *ldvarg128 ;
  void *tmp___100 ;
  char *ldvarg126 ;
  void *tmp___101 ;
  struct device_attribute *ldvarg131 ;
  void *tmp___102 ;
  struct device *ldvarg129 ;
  void *tmp___103 ;
  char *ldvarg130 ;
  void *tmp___104 ;
  struct device_attribute *ldvarg134 ;
  void *tmp___105 ;
  char *ldvarg133 ;
  void *tmp___106 ;
  struct device *ldvarg132 ;
  void *tmp___107 ;
  size_t ldvarg136 ;
  char *ldvarg137 ;
  void *tmp___108 ;
  char *ldvarg135 ;
  void *tmp___109 ;
  char *ldvarg138 ;
  void *tmp___110 ;
  char *ldvarg140 ;
  void *tmp___111 ;
  size_t ldvarg139 ;
  struct device_attribute *ldvarg143 ;
  void *tmp___112 ;
  char *ldvarg142 ;
  void *tmp___113 ;
  struct device *ldvarg141 ;
  void *tmp___114 ;
  size_t ldvarg145 ;
  char *ldvarg146 ;
  void *tmp___115 ;
  char *ldvarg144 ;
  void *tmp___116 ;
  char *ldvarg147 ;
  void *tmp___117 ;
  char *ldvarg149 ;
  void *tmp___118 ;
  size_t ldvarg148 ;
  char *ldvarg150 ;
  void *tmp___119 ;
  size_t ldvarg151 ;
  char *ldvarg152 ;
  void *tmp___120 ;
  char *ldvarg154 ;
  void *tmp___121 ;
  struct device *ldvarg153 ;
  void *tmp___122 ;
  struct device_attribute *ldvarg155 ;
  void *tmp___123 ;
  char *ldvarg156 ;
  void *tmp___124 ;
  size_t ldvarg157 ;
  char *ldvarg158 ;
  void *tmp___125 ;
  char *ldvarg159 ;
  void *tmp___126 ;
  char *ldvarg161 ;
  void *tmp___127 ;
  size_t ldvarg160 ;
  struct i2c_board_info *ldvarg163 ;
  void *tmp___128 ;
  struct i2c_device_id *ldvarg162 ;
  void *tmp___129 ;
  char *ldvarg164 ;
  void *tmp___130 ;
  size_t ldvarg165 ;
  char *ldvarg166 ;
  void *tmp___131 ;
  struct device *ldvarg167 ;
  void *tmp___132 ;
  char *ldvarg168 ;
  void *tmp___133 ;
  struct device_attribute *ldvarg169 ;
  void *tmp___134 ;
  char *ldvarg170 ;
  void *tmp___135 ;
  size_t ldvarg171 ;
  char *ldvarg172 ;
  void *tmp___136 ;
  char *ldvarg175 ;
  void *tmp___137 ;
  size_t ldvarg174 ;
  char *ldvarg173 ;
  void *tmp___138 ;
  size_t ldvarg177 ;
  char *ldvarg176 ;
  void *tmp___139 ;
  char *ldvarg178 ;
  void *tmp___140 ;
  struct device_attribute *ldvarg181 ;
  void *tmp___141 ;
  char *ldvarg180 ;
  void *tmp___142 ;
  struct device *ldvarg179 ;
  void *tmp___143 ;
  size_t ldvarg183 ;
  char *ldvarg182 ;
  void *tmp___144 ;
  char *ldvarg184 ;
  void *tmp___145 ;
  struct device_attribute *ldvarg187 ;
  void *tmp___146 ;
  struct device *ldvarg185 ;
  void *tmp___147 ;
  char *ldvarg186 ;
  void *tmp___148 ;
  char *ldvarg190 ;
  void *tmp___149 ;
  size_t ldvarg189 ;
  char *ldvarg188 ;
  void *tmp___150 ;
  char *ldvarg191 ;
  void *tmp___151 ;
  char *ldvarg193 ;
  void *tmp___152 ;
  size_t ldvarg192 ;
  size_t ldvarg195 ;
  char *ldvarg196 ;
  void *tmp___153 ;
  char *ldvarg194 ;
  void *tmp___154 ;
  char *ldvarg197 ;
  void *tmp___155 ;
  size_t ldvarg198 ;
  char *ldvarg199 ;
  void *tmp___156 ;
  char *ldvarg200 ;
  void *tmp___157 ;
  size_t ldvarg201 ;
  char *ldvarg202 ;
  void *tmp___158 ;
  char *ldvarg204 ;
  void *tmp___159 ;
  struct device *ldvarg203 ;
  void *tmp___160 ;
  struct device_attribute *ldvarg205 ;
  void *tmp___161 ;
  char *ldvarg208 ;
  void *tmp___162 ;
  size_t ldvarg207 ;
  char *ldvarg206 ;
  void *tmp___163 ;
  char *ldvarg209 ;
  void *tmp___164 ;
  char *ldvarg211 ;
  void *tmp___165 ;
  size_t ldvarg210 ;
  char *ldvarg213 ;
  void *tmp___166 ;
  struct device_attribute *ldvarg214 ;
  void *tmp___167 ;
  struct device *ldvarg212 ;
  void *tmp___168 ;
  char *ldvarg215 ;
  void *tmp___169 ;
  char *ldvarg217 ;
  void *tmp___170 ;
  size_t ldvarg216 ;
  char *ldvarg220 ;
  void *tmp___171 ;
  char *ldvarg218 ;
  void *tmp___172 ;
  size_t ldvarg219 ;
  size_t ldvarg222 ;
  char *ldvarg223 ;
  void *tmp___173 ;
  char *ldvarg221 ;
  void *tmp___174 ;
  size_t ldvarg225 ;
  char *ldvarg224 ;
  void *tmp___175 ;
  char *ldvarg226 ;
  void *tmp___176 ;
  char *ldvarg229 ;
  void *tmp___177 ;
  size_t ldvarg228 ;
  char *ldvarg227 ;
  void *tmp___178 ;
  char *ldvarg230 ;
  void *tmp___179 ;
  size_t ldvarg231 ;
  char *ldvarg232 ;
  void *tmp___180 ;
  char *ldvarg234 ;
  void *tmp___181 ;
  struct device *ldvarg233 ;
  void *tmp___182 ;
  struct device_attribute *ldvarg235 ;
  void *tmp___183 ;
  char *ldvarg238 ;
  void *tmp___184 ;
  size_t ldvarg237 ;
  char *ldvarg236 ;
  void *tmp___185 ;
  size_t ldvarg240 ;
  char *ldvarg241 ;
  void *tmp___186 ;
  char *ldvarg239 ;
  void *tmp___187 ;
  struct device *ldvarg242 ;
  void *tmp___188 ;
  struct device_attribute *ldvarg244 ;
  void *tmp___189 ;
  char *ldvarg243 ;
  void *tmp___190 ;
  size_t ldvarg246 ;
  char *ldvarg247 ;
  void *tmp___191 ;
  char *ldvarg245 ;
  void *tmp___192 ;
  struct device_attribute *ldvarg250 ;
  void *tmp___193 ;
  char *ldvarg249 ;
  void *tmp___194 ;
  struct device *ldvarg248 ;
  void *tmp___195 ;
  size_t ldvarg252 ;
  char *ldvarg253 ;
  void *tmp___196 ;
  char *ldvarg251 ;
  void *tmp___197 ;
  struct device_attribute *ldvarg256 ;
  void *tmp___198 ;
  struct device *ldvarg254 ;
  void *tmp___199 ;
  char *ldvarg255 ;
  void *tmp___200 ;
  struct device_attribute *ldvarg259 ;
  void *tmp___201 ;
  char *ldvarg258 ;
  void *tmp___202 ;
  struct device *ldvarg257 ;
  void *tmp___203 ;
  struct device_attribute *ldvarg262 ;
  void *tmp___204 ;
  char *ldvarg261 ;
  void *tmp___205 ;
  struct device *ldvarg260 ;
  void *tmp___206 ;
  size_t ldvarg264 ;
  char *ldvarg263 ;
  void *tmp___207 ;
  char *ldvarg265 ;
  void *tmp___208 ;
  int tmp___209 ;
  int tmp___210 ;
  int tmp___211 ;
  int tmp___212 ;
  int tmp___213 ;
  int tmp___214 ;
  int tmp___215 ;
  int tmp___216 ;
  int tmp___217 ;
  int tmp___218 ;
  int tmp___219 ;
  int tmp___220 ;
  int tmp___221 ;
  int tmp___222 ;
  int tmp___223 ;
  int tmp___224 ;
  int tmp___225 ;
  int tmp___226 ;
  int tmp___227 ;
  int tmp___228 ;
  int tmp___229 ;
  int tmp___230 ;
  int tmp___231 ;
  int tmp___232 ;
  int tmp___233 ;
  int tmp___234 ;
  int tmp___235 ;
  int tmp___236 ;
  int tmp___237 ;
  int tmp___238 ;
  int tmp___239 ;
  int tmp___240 ;
  int tmp___241 ;
  int tmp___242 ;
  int tmp___243 ;
  int tmp___244 ;
  int tmp___245 ;
  int tmp___246 ;
  int tmp___247 ;
  int tmp___248 ;
  int tmp___249 ;
  int tmp___250 ;
  int tmp___251 ;
  int tmp___252 ;
  int tmp___253 ;
  int tmp___254 ;
  int tmp___255 ;
  int tmp___256 ;
  int tmp___257 ;
  int tmp___258 ;
  int tmp___259 ;
  int tmp___260 ;
  int tmp___261 ;
  int tmp___262 ;
  int tmp___263 ;
  int tmp___264 ;
  int tmp___265 ;
  int tmp___266 ;
  int tmp___267 ;
  int tmp___268 ;
  int tmp___269 ;
  int tmp___270 ;
  int tmp___271 ;
  int tmp___272 ;
  int tmp___273 ;
  int tmp___274 ;
  int tmp___275 ;
  int tmp___276 ;
  int tmp___277 ;
  int tmp___278 ;
  int tmp___279 ;
  int tmp___280 ;
  int tmp___281 ;
  int tmp___282 ;
  int tmp___283 ;
  int tmp___284 ;
  int tmp___285 ;
  int tmp___286 ;
  int tmp___287 ;
  int tmp___288 ;
  int tmp___289 ;
  int tmp___290 ;
  int tmp___291 ;
  int tmp___292 ;
  int tmp___293 ;
  int tmp___294 ;
  int tmp___295 ;
  int tmp___296 ;
  int tmp___297 ;
  int tmp___298 ;
  int tmp___299 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___3;
  tmp___4 = ldv_init_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(48UL);
  ldvarg14 = (struct device_attribute *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___10;
  tmp___11 = ldv_init_zalloc(1416UL);
  ldvarg12 = (struct device *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(1416UL);
  ldvarg18 = (struct device *)tmp___14;
  tmp___15 = ldv_init_zalloc(48UL);
  ldvarg20 = (struct device_attribute *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(48UL);
  ldvarg35 = (struct device_attribute *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1416UL);
  ldvarg33 = (struct device *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg38 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp___32;
  tmp___33 = ldv_init_zalloc(1416UL);
  ldvarg42 = (struct device *)tmp___33;
  tmp___34 = ldv_init_zalloc(48UL);
  ldvarg44 = (struct device_attribute *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg45 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg47 = (char *)tmp___36;
  tmp___37 = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg51 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg54 = (char *)tmp___41;
  tmp___42 = ldv_init_zalloc(1UL);
  ldvarg56 = (char *)tmp___42;
  tmp___43 = ldv_init_zalloc(1416UL);
  ldvarg57 = (struct device *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg58 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(48UL);
  ldvarg59 = (struct device_attribute *)tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg60 = (char *)tmp___46;
  tmp___47 = ldv_init_zalloc(1UL);
  ldvarg62 = (char *)tmp___47;
  tmp___48 = ldv_init_zalloc(48UL);
  ldvarg65 = (struct device_attribute *)tmp___48;
  tmp___49 = ldv_init_zalloc(1416UL);
  ldvarg63 = (struct device *)tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg64 = (char *)tmp___50;
  tmp___51 = ldv_init_zalloc(1UL);
  ldvarg67 = (char *)tmp___51;
  tmp___52 = ldv_init_zalloc(1416UL);
  ldvarg66 = (struct device *)tmp___52;
  tmp___53 = ldv_init_zalloc(48UL);
  ldvarg68 = (struct device_attribute *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg69 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(1UL);
  ldvarg74 = (char *)tmp___56;
  tmp___57 = ldv_init_zalloc(1UL);
  ldvarg72 = (char *)tmp___57;
  tmp___58 = ldv_init_zalloc(1UL);
  ldvarg77 = (char *)tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg75 = (char *)tmp___59;
  tmp___60 = ldv_init_zalloc(1UL);
  ldvarg80 = (char *)tmp___60;
  tmp___61 = ldv_init_zalloc(1UL);
  ldvarg78 = (char *)tmp___61;
  tmp___62 = ldv_init_zalloc(1416UL);
  ldvarg81 = (struct device *)tmp___62;
  tmp___63 = ldv_init_zalloc(1UL);
  ldvarg82 = (char *)tmp___63;
  tmp___64 = ldv_init_zalloc(48UL);
  ldvarg83 = (struct device_attribute *)tmp___64;
  tmp___65 = ldv_init_zalloc(1UL);
  ldvarg85 = (char *)tmp___65;
  tmp___66 = ldv_init_zalloc(1416UL);
  ldvarg84 = (struct device *)tmp___66;
  tmp___67 = ldv_init_zalloc(48UL);
  ldvarg86 = (struct device_attribute *)tmp___67;
  tmp___68 = ldv_init_zalloc(1UL);
  ldvarg89 = (char *)tmp___68;
  tmp___69 = ldv_init_zalloc(1UL);
  ldvarg87 = (char *)tmp___69;
  tmp___70 = ldv_init_zalloc(1UL);
  ldvarg91 = (char *)tmp___70;
  tmp___71 = ldv_init_zalloc(48UL);
  ldvarg92 = (struct device_attribute *)tmp___71;
  tmp___72 = ldv_init_zalloc(1416UL);
  ldvarg90 = (struct device *)tmp___72;
  tmp___73 = ldv_init_zalloc(1416UL);
  ldvarg93 = (struct device *)tmp___73;
  tmp___74 = ldv_init_zalloc(48UL);
  ldvarg95 = (struct device_attribute *)tmp___74;
  tmp___75 = ldv_init_zalloc(1UL);
  ldvarg94 = (char *)tmp___75;
  tmp___76 = ldv_init_zalloc(1UL);
  ldvarg98 = (char *)tmp___76;
  tmp___77 = ldv_init_zalloc(1UL);
  ldvarg96 = (char *)tmp___77;
  tmp___78 = ldv_init_zalloc(48UL);
  ldvarg101 = (struct device_attribute *)tmp___78;
  tmp___79 = ldv_init_zalloc(1UL);
  ldvarg100 = (char *)tmp___79;
  tmp___80 = ldv_init_zalloc(1416UL);
  ldvarg99 = (struct device *)tmp___80;
  tmp___81 = ldv_init_zalloc(48UL);
  ldvarg104 = (struct device_attribute *)tmp___81;
  tmp___82 = ldv_init_zalloc(1416UL);
  ldvarg102 = (struct device *)tmp___82;
  tmp___83 = ldv_init_zalloc(1UL);
  ldvarg103 = (char *)tmp___83;
  tmp___84 = ldv_init_zalloc(1UL);
  ldvarg105 = (char *)tmp___84;
  tmp___85 = ldv_init_zalloc(1UL);
  ldvarg107 = (char *)tmp___85;
  tmp___86 = ldv_init_zalloc(1UL);
  ldvarg110 = (char *)tmp___86;
  tmp___87 = ldv_init_zalloc(1UL);
  ldvarg108 = (char *)tmp___87;
  tmp___88 = ldv_init_zalloc(1UL);
  ldvarg111 = (char *)tmp___88;
  tmp___89 = ldv_init_zalloc(1UL);
  ldvarg113 = (char *)tmp___89;
  tmp___90 = ldv_init_zalloc(1UL);
  ldvarg116 = (char *)tmp___90;
  tmp___91 = ldv_init_zalloc(1UL);
  ldvarg114 = (char *)tmp___91;
  tmp___92 = ldv_init_zalloc(48UL);
  ldvarg119 = (struct device_attribute *)tmp___92;
  tmp___93 = ldv_init_zalloc(1416UL);
  ldvarg117 = (struct device *)tmp___93;
  tmp___94 = ldv_init_zalloc(1UL);
  ldvarg118 = (char *)tmp___94;
  tmp___95 = ldv_init_zalloc(1UL);
  ldvarg121 = (char *)tmp___95;
  tmp___96 = ldv_init_zalloc(48UL);
  ldvarg122 = (struct device_attribute *)tmp___96;
  tmp___97 = ldv_init_zalloc(1416UL);
  ldvarg120 = (struct device *)tmp___97;
  tmp___98 = ldv_init_zalloc(1UL);
  ldvarg123 = (char *)tmp___98;
  tmp___99 = ldv_init_zalloc(1UL);
  ldvarg125 = (char *)tmp___99;
  tmp___100 = ldv_init_zalloc(1UL);
  ldvarg128 = (char *)tmp___100;
  tmp___101 = ldv_init_zalloc(1UL);
  ldvarg126 = (char *)tmp___101;
  tmp___102 = ldv_init_zalloc(48UL);
  ldvarg131 = (struct device_attribute *)tmp___102;
  tmp___103 = ldv_init_zalloc(1416UL);
  ldvarg129 = (struct device *)tmp___103;
  tmp___104 = ldv_init_zalloc(1UL);
  ldvarg130 = (char *)tmp___104;
  tmp___105 = ldv_init_zalloc(48UL);
  ldvarg134 = (struct device_attribute *)tmp___105;
  tmp___106 = ldv_init_zalloc(1UL);
  ldvarg133 = (char *)tmp___106;
  tmp___107 = ldv_init_zalloc(1416UL);
  ldvarg132 = (struct device *)tmp___107;
  tmp___108 = ldv_init_zalloc(1UL);
  ldvarg137 = (char *)tmp___108;
  tmp___109 = ldv_init_zalloc(1UL);
  ldvarg135 = (char *)tmp___109;
  tmp___110 = ldv_init_zalloc(1UL);
  ldvarg138 = (char *)tmp___110;
  tmp___111 = ldv_init_zalloc(1UL);
  ldvarg140 = (char *)tmp___111;
  tmp___112 = ldv_init_zalloc(48UL);
  ldvarg143 = (struct device_attribute *)tmp___112;
  tmp___113 = ldv_init_zalloc(1UL);
  ldvarg142 = (char *)tmp___113;
  tmp___114 = ldv_init_zalloc(1416UL);
  ldvarg141 = (struct device *)tmp___114;
  tmp___115 = ldv_init_zalloc(1UL);
  ldvarg146 = (char *)tmp___115;
  tmp___116 = ldv_init_zalloc(1UL);
  ldvarg144 = (char *)tmp___116;
  tmp___117 = ldv_init_zalloc(1UL);
  ldvarg147 = (char *)tmp___117;
  tmp___118 = ldv_init_zalloc(1UL);
  ldvarg149 = (char *)tmp___118;
  tmp___119 = ldv_init_zalloc(1UL);
  ldvarg150 = (char *)tmp___119;
  tmp___120 = ldv_init_zalloc(1UL);
  ldvarg152 = (char *)tmp___120;
  tmp___121 = ldv_init_zalloc(1UL);
  ldvarg154 = (char *)tmp___121;
  tmp___122 = ldv_init_zalloc(1416UL);
  ldvarg153 = (struct device *)tmp___122;
  tmp___123 = ldv_init_zalloc(48UL);
  ldvarg155 = (struct device_attribute *)tmp___123;
  tmp___124 = ldv_init_zalloc(1UL);
  ldvarg156 = (char *)tmp___124;
  tmp___125 = ldv_init_zalloc(1UL);
  ldvarg158 = (char *)tmp___125;
  tmp___126 = ldv_init_zalloc(1UL);
  ldvarg159 = (char *)tmp___126;
  tmp___127 = ldv_init_zalloc(1UL);
  ldvarg161 = (char *)tmp___127;
  tmp___128 = ldv_init_zalloc(64UL);
  ldvarg163 = (struct i2c_board_info *)tmp___128;
  tmp___129 = ldv_init_zalloc(32UL);
  ldvarg162 = (struct i2c_device_id *)tmp___129;
  tmp___130 = ldv_init_zalloc(1UL);
  ldvarg164 = (char *)tmp___130;
  tmp___131 = ldv_init_zalloc(1UL);
  ldvarg166 = (char *)tmp___131;
  tmp___132 = ldv_init_zalloc(1416UL);
  ldvarg167 = (struct device *)tmp___132;
  tmp___133 = ldv_init_zalloc(1UL);
  ldvarg168 = (char *)tmp___133;
  tmp___134 = ldv_init_zalloc(48UL);
  ldvarg169 = (struct device_attribute *)tmp___134;
  tmp___135 = ldv_init_zalloc(1UL);
  ldvarg170 = (char *)tmp___135;
  tmp___136 = ldv_init_zalloc(1UL);
  ldvarg172 = (char *)tmp___136;
  tmp___137 = ldv_init_zalloc(1UL);
  ldvarg175 = (char *)tmp___137;
  tmp___138 = ldv_init_zalloc(1UL);
  ldvarg173 = (char *)tmp___138;
  tmp___139 = ldv_init_zalloc(1UL);
  ldvarg176 = (char *)tmp___139;
  tmp___140 = ldv_init_zalloc(1UL);
  ldvarg178 = (char *)tmp___140;
  tmp___141 = ldv_init_zalloc(48UL);
  ldvarg181 = (struct device_attribute *)tmp___141;
  tmp___142 = ldv_init_zalloc(1UL);
  ldvarg180 = (char *)tmp___142;
  tmp___143 = ldv_init_zalloc(1416UL);
  ldvarg179 = (struct device *)tmp___143;
  tmp___144 = ldv_init_zalloc(1UL);
  ldvarg182 = (char *)tmp___144;
  tmp___145 = ldv_init_zalloc(1UL);
  ldvarg184 = (char *)tmp___145;
  tmp___146 = ldv_init_zalloc(48UL);
  ldvarg187 = (struct device_attribute *)tmp___146;
  tmp___147 = ldv_init_zalloc(1416UL);
  ldvarg185 = (struct device *)tmp___147;
  tmp___148 = ldv_init_zalloc(1UL);
  ldvarg186 = (char *)tmp___148;
  tmp___149 = ldv_init_zalloc(1UL);
  ldvarg190 = (char *)tmp___149;
  tmp___150 = ldv_init_zalloc(1UL);
  ldvarg188 = (char *)tmp___150;
  tmp___151 = ldv_init_zalloc(1UL);
  ldvarg191 = (char *)tmp___151;
  tmp___152 = ldv_init_zalloc(1UL);
  ldvarg193 = (char *)tmp___152;
  tmp___153 = ldv_init_zalloc(1UL);
  ldvarg196 = (char *)tmp___153;
  tmp___154 = ldv_init_zalloc(1UL);
  ldvarg194 = (char *)tmp___154;
  tmp___155 = ldv_init_zalloc(1UL);
  ldvarg197 = (char *)tmp___155;
  tmp___156 = ldv_init_zalloc(1UL);
  ldvarg199 = (char *)tmp___156;
  tmp___157 = ldv_init_zalloc(1UL);
  ldvarg200 = (char *)tmp___157;
  tmp___158 = ldv_init_zalloc(1UL);
  ldvarg202 = (char *)tmp___158;
  tmp___159 = ldv_init_zalloc(1UL);
  ldvarg204 = (char *)tmp___159;
  tmp___160 = ldv_init_zalloc(1416UL);
  ldvarg203 = (struct device *)tmp___160;
  tmp___161 = ldv_init_zalloc(48UL);
  ldvarg205 = (struct device_attribute *)tmp___161;
  tmp___162 = ldv_init_zalloc(1UL);
  ldvarg208 = (char *)tmp___162;
  tmp___163 = ldv_init_zalloc(1UL);
  ldvarg206 = (char *)tmp___163;
  tmp___164 = ldv_init_zalloc(1UL);
  ldvarg209 = (char *)tmp___164;
  tmp___165 = ldv_init_zalloc(1UL);
  ldvarg211 = (char *)tmp___165;
  tmp___166 = ldv_init_zalloc(1UL);
  ldvarg213 = (char *)tmp___166;
  tmp___167 = ldv_init_zalloc(48UL);
  ldvarg214 = (struct device_attribute *)tmp___167;
  tmp___168 = ldv_init_zalloc(1416UL);
  ldvarg212 = (struct device *)tmp___168;
  tmp___169 = ldv_init_zalloc(1UL);
  ldvarg215 = (char *)tmp___169;
  tmp___170 = ldv_init_zalloc(1UL);
  ldvarg217 = (char *)tmp___170;
  tmp___171 = ldv_init_zalloc(1UL);
  ldvarg220 = (char *)tmp___171;
  tmp___172 = ldv_init_zalloc(1UL);
  ldvarg218 = (char *)tmp___172;
  tmp___173 = ldv_init_zalloc(1UL);
  ldvarg223 = (char *)tmp___173;
  tmp___174 = ldv_init_zalloc(1UL);
  ldvarg221 = (char *)tmp___174;
  tmp___175 = ldv_init_zalloc(1UL);
  ldvarg224 = (char *)tmp___175;
  tmp___176 = ldv_init_zalloc(1UL);
  ldvarg226 = (char *)tmp___176;
  tmp___177 = ldv_init_zalloc(1UL);
  ldvarg229 = (char *)tmp___177;
  tmp___178 = ldv_init_zalloc(1UL);
  ldvarg227 = (char *)tmp___178;
  tmp___179 = ldv_init_zalloc(1UL);
  ldvarg230 = (char *)tmp___179;
  tmp___180 = ldv_init_zalloc(1UL);
  ldvarg232 = (char *)tmp___180;
  tmp___181 = ldv_init_zalloc(1UL);
  ldvarg234 = (char *)tmp___181;
  tmp___182 = ldv_init_zalloc(1416UL);
  ldvarg233 = (struct device *)tmp___182;
  tmp___183 = ldv_init_zalloc(48UL);
  ldvarg235 = (struct device_attribute *)tmp___183;
  tmp___184 = ldv_init_zalloc(1UL);
  ldvarg238 = (char *)tmp___184;
  tmp___185 = ldv_init_zalloc(1UL);
  ldvarg236 = (char *)tmp___185;
  tmp___186 = ldv_init_zalloc(1UL);
  ldvarg241 = (char *)tmp___186;
  tmp___187 = ldv_init_zalloc(1UL);
  ldvarg239 = (char *)tmp___187;
  tmp___188 = ldv_init_zalloc(1416UL);
  ldvarg242 = (struct device *)tmp___188;
  tmp___189 = ldv_init_zalloc(48UL);
  ldvarg244 = (struct device_attribute *)tmp___189;
  tmp___190 = ldv_init_zalloc(1UL);
  ldvarg243 = (char *)tmp___190;
  tmp___191 = ldv_init_zalloc(1UL);
  ldvarg247 = (char *)tmp___191;
  tmp___192 = ldv_init_zalloc(1UL);
  ldvarg245 = (char *)tmp___192;
  tmp___193 = ldv_init_zalloc(48UL);
  ldvarg250 = (struct device_attribute *)tmp___193;
  tmp___194 = ldv_init_zalloc(1UL);
  ldvarg249 = (char *)tmp___194;
  tmp___195 = ldv_init_zalloc(1416UL);
  ldvarg248 = (struct device *)tmp___195;
  tmp___196 = ldv_init_zalloc(1UL);
  ldvarg253 = (char *)tmp___196;
  tmp___197 = ldv_init_zalloc(1UL);
  ldvarg251 = (char *)tmp___197;
  tmp___198 = ldv_init_zalloc(48UL);
  ldvarg256 = (struct device_attribute *)tmp___198;
  tmp___199 = ldv_init_zalloc(1416UL);
  ldvarg254 = (struct device *)tmp___199;
  tmp___200 = ldv_init_zalloc(1UL);
  ldvarg255 = (char *)tmp___200;
  tmp___201 = ldv_init_zalloc(48UL);
  ldvarg259 = (struct device_attribute *)tmp___201;
  tmp___202 = ldv_init_zalloc(1UL);
  ldvarg258 = (char *)tmp___202;
  tmp___203 = ldv_init_zalloc(1416UL);
  ldvarg257 = (struct device *)tmp___203;
  tmp___204 = ldv_init_zalloc(48UL);
  ldvarg262 = (struct device_attribute *)tmp___204;
  tmp___205 = ldv_init_zalloc(1UL);
  ldvarg261 = (char *)tmp___205;
  tmp___206 = ldv_init_zalloc(1416UL);
  ldvarg260 = (struct device *)tmp___206;
  tmp___207 = ldv_init_zalloc(1UL);
  ldvarg263 = (char *)tmp___207;
  tmp___208 = ldv_init_zalloc(1UL);
  ldvarg265 = (char *)tmp___208;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  ldv_memset((void *)(& ldvarg22), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg31), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 8UL);
  ldv_memset((void *)(& ldvarg40), 0, 8UL);
  ldv_memset((void *)(& ldvarg46), 0, 8UL);
  ldv_memset((void *)(& ldvarg49), 0, 8UL);
  ldv_memset((void *)(& ldvarg52), 0, 8UL);
  ldv_memset((void *)(& ldvarg55), 0, 8UL);
  ldv_memset((void *)(& ldvarg61), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  ldv_memset((void *)(& ldvarg73), 0, 8UL);
  ldv_memset((void *)(& ldvarg76), 0, 8UL);
  ldv_memset((void *)(& ldvarg79), 0, 8UL);
  ldv_memset((void *)(& ldvarg88), 0, 8UL);
  ldv_memset((void *)(& ldvarg97), 0, 8UL);
  ldv_memset((void *)(& ldvarg106), 0, 8UL);
  ldv_memset((void *)(& ldvarg109), 0, 8UL);
  ldv_memset((void *)(& ldvarg112), 0, 8UL);
  ldv_memset((void *)(& ldvarg115), 0, 8UL);
  ldv_memset((void *)(& ldvarg124), 0, 8UL);
  ldv_memset((void *)(& ldvarg127), 0, 8UL);
  ldv_memset((void *)(& ldvarg136), 0, 8UL);
  ldv_memset((void *)(& ldvarg139), 0, 8UL);
  ldv_memset((void *)(& ldvarg145), 0, 8UL);
  ldv_memset((void *)(& ldvarg148), 0, 8UL);
  ldv_memset((void *)(& ldvarg151), 0, 8UL);
  ldv_memset((void *)(& ldvarg157), 0, 8UL);
  ldv_memset((void *)(& ldvarg160), 0, 8UL);
  ldv_memset((void *)(& ldvarg165), 0, 8UL);
  ldv_memset((void *)(& ldvarg171), 0, 8UL);
  ldv_memset((void *)(& ldvarg174), 0, 8UL);
  ldv_memset((void *)(& ldvarg177), 0, 8UL);
  ldv_memset((void *)(& ldvarg183), 0, 8UL);
  ldv_memset((void *)(& ldvarg189), 0, 8UL);
  ldv_memset((void *)(& ldvarg192), 0, 8UL);
  ldv_memset((void *)(& ldvarg195), 0, 8UL);
  ldv_memset((void *)(& ldvarg198), 0, 8UL);
  ldv_memset((void *)(& ldvarg201), 0, 8UL);
  ldv_memset((void *)(& ldvarg207), 0, 8UL);
  ldv_memset((void *)(& ldvarg210), 0, 8UL);
  ldv_memset((void *)(& ldvarg216), 0, 8UL);
  ldv_memset((void *)(& ldvarg219), 0, 8UL);
  ldv_memset((void *)(& ldvarg222), 0, 8UL);
  ldv_memset((void *)(& ldvarg225), 0, 8UL);
  ldv_memset((void *)(& ldvarg228), 0, 8UL);
  ldv_memset((void *)(& ldvarg231), 0, 8UL);
  ldv_memset((void *)(& ldvarg237), 0, 8UL);
  ldv_memset((void *)(& ldvarg240), 0, 8UL);
  ldv_memset((void *)(& ldvarg246), 0, 8UL);
  ldv_memset((void *)(& ldvarg252), 0, 8UL);
  ldv_memset((void *)(& ldvarg264), 0, 8UL);
  ldv_state_variable_33 = 0;
  ldv_state_variable_32 = 0;
  ldv_state_variable_63 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_71 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_80 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_18 = 0;
  ldv_state_variable_72 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_44 = 0;
  ldv_state_variable_55 = 0;
  ldv_state_variable_84 = 0;
  ldv_state_variable_74 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_57 = 0;
  ldv_state_variable_61 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_89 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_31 = 0;
  ldv_state_variable_35 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_78 = 0;
  ldv_state_variable_48 = 0;
  ldv_state_variable_87 = 0;
  ldv_state_variable_77 = 0;
  ldv_state_variable_65 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_50 = 0;
  ldv_state_variable_39 = 0;
  ldv_state_variable_64 = 0;
  ldv_state_variable_58 = 0;
  ldv_state_variable_41 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_81 = 0;
  ldv_state_variable_52 = 0;
  ldv_state_variable_60 = 0;
  ldv_state_variable_56 = 0;
  ldv_state_variable_73 = 0;
  ldv_state_variable_66 = 0;
  ldv_state_variable_45 = 0;
  ldv_state_variable_86 = 0;
  ldv_state_variable_76 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_62 = 0;
  ldv_state_variable_54 = 0;
  ldv_state_variable_67 = 0;
  ldv_state_variable_70 = 0;
  ldv_state_variable_68 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_88 = 0;
  ldv_state_variable_30 = 0;
  ldv_state_variable_82 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_83 = 0;
  ldv_state_variable_75 = 0;
  ldv_state_variable_40 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_69 = 0;
  ldv_state_variable_59 = 0;
  ldv_state_variable_49 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_53 = 0;
  ldv_state_variable_79 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_42 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_46 = 0;
  ldv_state_variable_23 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_85 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_36 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_51 = 0;
  ldv_state_variable_47 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_38 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_34 = 0;
  ldv_state_variable_37 = 0;
  ldv_state_variable_43 = 0;
  ldv_state_variable_5 = 0;
  ldv_25678:
  tmp___209 = __VERIFIER_nondet_int();
  switch (tmp___209) {
  case 0: ;
  if (ldv_state_variable_33 != 0) {
    tmp___210 = __VERIFIER_nondet_int();
    switch (tmp___210) {
    case 0: ;
    if (ldv_state_variable_33 == 1) {
      show_alarm(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_25258;
    default:
    ldv_stop();
    }
    ldv_25258: ;
  } else {
  }
  goto ldv_25260;
  case 1: ;
  if (ldv_state_variable_32 != 0) {
    tmp___211 = __VERIFIER_nondet_int();
    switch (tmp___211) {
    case 0: ;
    if (ldv_state_variable_32 == 1) {
      show_alarm(ldvarg3, ldvarg5, ldvarg4);
      ldv_state_variable_32 = 1;
    } else {
    }
    goto ldv_25263;
    default:
    ldv_stop();
    }
    ldv_25263: ;
  } else {
  }
  goto ldv_25260;
  case 2: ;
  if (ldv_state_variable_63 != 0) {
    tmp___212 = __VERIFIER_nondet_int();
    switch (tmp___212) {
    case 0: ;
    if (ldv_state_variable_63 == 1) {
      store_in_max(sensor_dev_attr_in8_max_group1, sensor_dev_attr_in8_max_group0,
                   (char const *)ldvarg8, ldvarg7);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_25267;
    case 1: ;
    if (ldv_state_variable_63 == 1) {
      show_in_max(sensor_dev_attr_in8_max_group1, sensor_dev_attr_in8_max_group0,
                  ldvarg6);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_25267;
    default:
    ldv_stop();
    }
    ldv_25267: ;
  } else {
  }
  goto ldv_25260;
  case 3: ;
  if (ldv_state_variable_21 != 0) {
    tmp___213 = __VERIFIER_nondet_int();
    switch (tmp___213) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      store_beep(sensor_dev_attr_in7_beep_group1, sensor_dev_attr_in7_beep_group0,
                 (char const *)ldvarg11, ldvarg10);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_25272;
    case 1: ;
    if (ldv_state_variable_21 == 1) {
      show_beep(sensor_dev_attr_in7_beep_group1, sensor_dev_attr_in7_beep_group0,
                ldvarg9);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_25272;
    default:
    ldv_stop();
    }
    ldv_25272: ;
  } else {
  }
  goto ldv_25260;
  case 4: ;
  if (ldv_state_variable_71 != 0) {
    tmp___214 = __VERIFIER_nondet_int();
    switch (tmp___214) {
    case 0: ;
    if (ldv_state_variable_71 == 1) {
      show_in(ldvarg12, ldvarg14, ldvarg13);
      ldv_state_variable_71 = 1;
    } else {
    }
    goto ldv_25277;
    default:
    ldv_stop();
    }
    ldv_25277: ;
  } else {
  }
  goto ldv_25260;
  case 5: ;
  if (ldv_state_variable_7 != 0) {
    tmp___215 = __VERIFIER_nondet_int();
    switch (tmp___215) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      store_pwm(sensor_dev_attr_pwm3_group1, sensor_dev_attr_pwm3_group0, (char const *)ldvarg17,
                ldvarg16);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_25281;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      show_pwm(sensor_dev_attr_pwm3_group1, sensor_dev_attr_pwm3_group0, ldvarg15);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_25281;
    default:
    ldv_stop();
    }
    ldv_25281: ;
  } else {
  }
  goto ldv_25260;
  case 6: ;
  if (ldv_state_variable_80 != 0) {
    tmp___216 = __VERIFIER_nondet_int();
    switch (tmp___216) {
    case 0: ;
    if (ldv_state_variable_80 == 1) {
      show_in(ldvarg18, ldvarg20, ldvarg19);
      ldv_state_variable_80 = 1;
    } else {
    }
    goto ldv_25286;
    default:
    ldv_stop();
    }
    ldv_25286: ;
  } else {
  }
  goto ldv_25260;
  case 7: ;
  if (ldv_state_variable_26 != 0) {
    tmp___217 = __VERIFIER_nondet_int();
    switch (tmp___217) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      store_beep(sensor_dev_attr_in2_beep_group1, sensor_dev_attr_in2_beep_group0,
                 (char const *)ldvarg23, ldvarg22);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_25290;
    case 1: ;
    if (ldv_state_variable_26 == 1) {
      show_beep(sensor_dev_attr_in2_beep_group1, sensor_dev_attr_in2_beep_group0,
                ldvarg21);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_25290;
    default:
    ldv_stop();
    }
    ldv_25290: ;
  } else {
  }
  goto ldv_25260;
  case 8: ;
  if (ldv_state_variable_18 != 0) {
    tmp___218 = __VERIFIER_nondet_int();
    switch (tmp___218) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      store_beep(sensor_dev_attr_fan2_beep_group1, sensor_dev_attr_fan2_beep_group0,
                 (char const *)ldvarg26, ldvarg25);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_25295;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      show_beep(sensor_dev_attr_fan2_beep_group1, sensor_dev_attr_fan2_beep_group0,
                ldvarg24);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_25295;
    default:
    ldv_stop();
    }
    ldv_25295: ;
  } else {
  }
  goto ldv_25260;
  case 9: ;
  if (ldv_state_variable_72 != 0) {
    tmp___219 = __VERIFIER_nondet_int();
    switch (tmp___219) {
    case 0: ;
    if (ldv_state_variable_72 == 1) {
      store_in_max(sensor_dev_attr_in5_max_group1, sensor_dev_attr_in5_max_group0,
                   (char const *)ldvarg29, ldvarg28);
      ldv_state_variable_72 = 1;
    } else {
    }
    goto ldv_25300;
    case 1: ;
    if (ldv_state_variable_72 == 1) {
      show_in_max(sensor_dev_attr_in5_max_group1, sensor_dev_attr_in5_max_group0,
                  ldvarg27);
      ldv_state_variable_72 = 1;
    } else {
    }
    goto ldv_25300;
    default:
    ldv_stop();
    }
    ldv_25300: ;
  } else {
  }
  goto ldv_25260;
  case 10: ;
  if (ldv_state_variable_16 != 0) {
    tmp___220 = __VERIFIER_nondet_int();
    switch (tmp___220) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      store_beep(sensor_dev_attr_temp1_beep_group1, sensor_dev_attr_temp1_beep_group0,
                 (char const *)ldvarg32, ldvarg31);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_25305;
    case 1: ;
    if (ldv_state_variable_16 == 1) {
      show_beep(sensor_dev_attr_temp1_beep_group1, sensor_dev_attr_temp1_beep_group0,
                ldvarg30);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_25305;
    default:
    ldv_stop();
    }
    ldv_25305: ;
  } else {
  }
  goto ldv_25260;
  case 11: ;
  if (ldv_state_variable_44 != 0) {
    tmp___221 = __VERIFIER_nondet_int();
    switch (tmp___221) {
    case 0: ;
    if (ldv_state_variable_44 == 1) {
      show_alarm(ldvarg33, ldvarg35, ldvarg34);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_25310;
    default:
    ldv_stop();
    }
    ldv_25310: ;
  } else {
  }
  goto ldv_25260;
  case 12: ;
  if (ldv_state_variable_55 != 0) {
    tmp___222 = __VERIFIER_nondet_int();
    switch (tmp___222) {
    case 0: ;
    if (ldv_state_variable_55 == 1) {
      store_temp_max(sensor_dev_attr_temp1_max_group1, sensor_dev_attr_temp1_max_group0,
                     (char const *)ldvarg38, ldvarg37);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_25314;
    case 1: ;
    if (ldv_state_variable_55 == 1) {
      show_temp_max(sensor_dev_attr_temp1_max_group1, sensor_dev_attr_temp1_max_group0,
                    ldvarg36);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_25314;
    default:
    ldv_stop();
    }
    ldv_25314: ;
  } else {
  }
  goto ldv_25260;
  case 13: ;
  if (ldv_state_variable_84 != 0) {
    tmp___223 = __VERIFIER_nondet_int();
    switch (tmp___223) {
    case 0: ;
    if (ldv_state_variable_84 == 1) {
      store_in_max(sensor_dev_attr_in1_max_group1, sensor_dev_attr_in1_max_group0,
                   (char const *)ldvarg41, ldvarg40);
      ldv_state_variable_84 = 1;
    } else {
    }
    goto ldv_25319;
    case 1: ;
    if (ldv_state_variable_84 == 1) {
      show_in_max(sensor_dev_attr_in1_max_group1, sensor_dev_attr_in1_max_group0,
                  ldvarg39);
      ldv_state_variable_84 = 1;
    } else {
    }
    goto ldv_25319;
    default:
    ldv_stop();
    }
    ldv_25319: ;
  } else {
  }
  goto ldv_25260;
  case 14: ;
  if (ldv_state_variable_74 != 0) {
    tmp___224 = __VERIFIER_nondet_int();
    switch (tmp___224) {
    case 0: ;
    if (ldv_state_variable_74 == 1) {
      show_in(ldvarg42, ldvarg44, ldvarg43);
      ldv_state_variable_74 = 1;
    } else {
    }
    goto ldv_25324;
    default:
    ldv_stop();
    }
    ldv_25324: ;
  } else {
  }
  goto ldv_25260;
  case 15: ;
  if (ldv_state_variable_27 != 0) {
    tmp___225 = __VERIFIER_nondet_int();
    switch (tmp___225) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      store_beep(sensor_dev_attr_in1_beep_group1, sensor_dev_attr_in1_beep_group0,
                 (char const *)ldvarg47, ldvarg46);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_25328;
    case 1: ;
    if (ldv_state_variable_27 == 1) {
      show_beep(sensor_dev_attr_in1_beep_group1, sensor_dev_attr_in1_beep_group0,
                ldvarg45);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_25328;
    default:
    ldv_stop();
    }
    ldv_25328: ;
  } else {
  }
  goto ldv_25260;
  case 16: ;
  if (ldv_state_variable_57 != 0) {
    tmp___226 = __VERIFIER_nondet_int();
    switch (tmp___226) {
    case 0: ;
    if (ldv_state_variable_57 == 1) {
      store_fan_min(sensor_dev_attr_fan3_min_group1, sensor_dev_attr_fan3_min_group0,
                    (char const *)ldvarg50, ldvarg49);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_25333;
    case 1: ;
    if (ldv_state_variable_57 == 1) {
      show_fan_min(sensor_dev_attr_fan3_min_group1, sensor_dev_attr_fan3_min_group0,
                   ldvarg48);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_25333;
    default:
    ldv_stop();
    }
    ldv_25333: ;
  } else {
  }
  goto ldv_25260;
  case 17: ;
  if (ldv_state_variable_61 != 0) {
    tmp___227 = __VERIFIER_nondet_int();
    switch (tmp___227) {
    case 0: ;
    if (ldv_state_variable_61 == 1) {
      store_fan_min(sensor_dev_attr_fan1_min_group1, sensor_dev_attr_fan1_min_group0,
                    (char const *)ldvarg53, ldvarg52);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_25338;
    case 1: ;
    if (ldv_state_variable_61 == 1) {
      show_fan_min(sensor_dev_attr_fan1_min_group1, sensor_dev_attr_fan1_min_group0,
                   ldvarg51);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_25338;
    default:
    ldv_stop();
    }
    ldv_25338: ;
  } else {
  }
  goto ldv_25260;
  case 18: ;
  if (ldv_state_variable_20 != 0) {
    tmp___228 = __VERIFIER_nondet_int();
    switch (tmp___228) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      store_beep(sensor_dev_attr_in8_beep_group1, sensor_dev_attr_in8_beep_group0,
                 (char const *)ldvarg56, ldvarg55);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_25343;
    case 1: ;
    if (ldv_state_variable_20 == 1) {
      show_beep(sensor_dev_attr_in8_beep_group1, sensor_dev_attr_in8_beep_group0,
                ldvarg54);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_25343;
    default:
    ldv_stop();
    }
    ldv_25343: ;
  } else {
  }
  goto ldv_25260;
  case 19: ;
  if (ldv_state_variable_89 != 0) {
    tmp___229 = __VERIFIER_nondet_int();
    switch (tmp___229) {
    case 0: ;
    if (ldv_state_variable_89 == 1) {
      show_in(ldvarg57, ldvarg59, ldvarg58);
      ldv_state_variable_89 = 1;
    } else {
    }
    goto ldv_25348;
    default:
    ldv_stop();
    }
    ldv_25348: ;
  } else {
  }
  goto ldv_25260;
  case 20: ;
  if (ldv_state_variable_10 != 0) {
    tmp___230 = __VERIFIER_nondet_int();
    switch (tmp___230) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      store_fan_div(sensor_dev_attr_fan3_div_group1, sensor_dev_attr_fan3_div_group0,
                    (char const *)ldvarg62, ldvarg61);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_25352;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      show_fan_div(sensor_dev_attr_fan3_div_group1, sensor_dev_attr_fan3_div_group0,
                   ldvarg60);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_25352;
    default:
    ldv_stop();
    }
    ldv_25352: ;
  } else {
  }
  goto ldv_25260;
  case 21: ;
  if (ldv_state_variable_31 != 0) {
    tmp___231 = __VERIFIER_nondet_int();
    switch (tmp___231) {
    case 0: ;
    if (ldv_state_variable_31 == 1) {
      show_alarm(ldvarg63, ldvarg65, ldvarg64);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_25357;
    default:
    ldv_stop();
    }
    ldv_25357: ;
  } else {
  }
  goto ldv_25260;
  case 22: ;
  if (ldv_state_variable_35 != 0) {
    tmp___232 = __VERIFIER_nondet_int();
    switch (tmp___232) {
    case 0: ;
    if (ldv_state_variable_35 == 1) {
      show_alarm(ldvarg66, ldvarg68, ldvarg67);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_25361;
    default:
    ldv_stop();
    }
    ldv_25361: ;
  } else {
  }
  goto ldv_25260;
  case 23: ;
  if (ldv_state_variable_11 != 0) {
    tmp___233 = __VERIFIER_nondet_int();
    switch (tmp___233) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      store_fan_div(sensor_dev_attr_fan2_div_group1, sensor_dev_attr_fan2_div_group0,
                    (char const *)ldvarg71, ldvarg70);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_25365;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      show_fan_div(sensor_dev_attr_fan2_div_group1, sensor_dev_attr_fan2_div_group0,
                   ldvarg69);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_25365;
    default:
    ldv_stop();
    }
    ldv_25365: ;
  } else {
  }
  goto ldv_25260;
  case 24: ;
  if (ldv_state_variable_78 != 0) {
    tmp___234 = __VERIFIER_nondet_int();
    switch (tmp___234) {
    case 0: ;
    if (ldv_state_variable_78 == 1) {
      store_in_max(sensor_dev_attr_in3_max_group1, sensor_dev_attr_in3_max_group0,
                   (char const *)ldvarg74, ldvarg73);
      ldv_state_variable_78 = 1;
    } else {
    }
    goto ldv_25370;
    case 1: ;
    if (ldv_state_variable_78 == 1) {
      show_in_max(sensor_dev_attr_in3_max_group1, sensor_dev_attr_in3_max_group0,
                  ldvarg72);
      ldv_state_variable_78 = 1;
    } else {
    }
    goto ldv_25370;
    default:
    ldv_stop();
    }
    ldv_25370: ;
  } else {
  }
  goto ldv_25260;
  case 25: ;
  if (ldv_state_variable_48 != 0) {
    tmp___235 = __VERIFIER_nondet_int();
    switch (tmp___235) {
    case 0: ;
    if (ldv_state_variable_48 == 1) {
      store_temp_max_hyst(sensor_dev_attr_temp3_max_hyst_group1, sensor_dev_attr_temp3_max_hyst_group0,
                          (char const *)ldvarg77, ldvarg76);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_25375;
    case 1: ;
    if (ldv_state_variable_48 == 1) {
      show_temp_max_hyst(sensor_dev_attr_temp3_max_hyst_group1, sensor_dev_attr_temp3_max_hyst_group0,
                         ldvarg75);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_25375;
    default:
    ldv_stop();
    }
    ldv_25375: ;
  } else {
  }
  goto ldv_25260;
  case 26: ;
  if (ldv_state_variable_87 != 0) {
    tmp___236 = __VERIFIER_nondet_int();
    switch (tmp___236) {
    case 0: ;
    if (ldv_state_variable_87 == 1) {
      store_in_max(sensor_dev_attr_in0_max_group1, sensor_dev_attr_in0_max_group0,
                   (char const *)ldvarg80, ldvarg79);
      ldv_state_variable_87 = 1;
    } else {
    }
    goto ldv_25380;
    case 1: ;
    if (ldv_state_variable_87 == 1) {
      show_in_max(sensor_dev_attr_in0_max_group1, sensor_dev_attr_in0_max_group0,
                  ldvarg78);
      ldv_state_variable_87 = 1;
    } else {
    }
    goto ldv_25380;
    default:
    ldv_stop();
    }
    ldv_25380: ;
  } else {
  }
  goto ldv_25260;
  case 27: ;
  if (ldv_state_variable_77 != 0) {
    tmp___237 = __VERIFIER_nondet_int();
    switch (tmp___237) {
    case 0: ;
    if (ldv_state_variable_77 == 1) {
      show_in(ldvarg81, ldvarg83, ldvarg82);
      ldv_state_variable_77 = 1;
    } else {
    }
    goto ldv_25385;
    default:
    ldv_stop();
    }
    ldv_25385: ;
  } else {
  }
  goto ldv_25260;
  case 28: ;
  if (ldv_state_variable_65 != 0) {
    tmp___238 = __VERIFIER_nondet_int();
    switch (tmp___238) {
    case 0: ;
    if (ldv_state_variable_65 == 1) {
      show_in(ldvarg84, ldvarg86, ldvarg85);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_25389;
    default:
    ldv_stop();
    }
    ldv_25389: ;
  } else {
  }
  goto ldv_25260;
  case 29: ;
  if (ldv_state_variable_29 != 0) {
    tmp___239 = __VERIFIER_nondet_int();
    switch (tmp___239) {
    case 0: ;
    if (ldv_state_variable_29 == 1) {
      store_beep_mask(dev_attr_beep_mask_group1, dev_attr_beep_mask_group0, (char const *)ldvarg89,
                      ldvarg88);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_25393;
    case 1: ;
    if (ldv_state_variable_29 == 1) {
      show_beep_mask(dev_attr_beep_mask_group1, dev_attr_beep_mask_group0, ldvarg87);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_25393;
    default:
    ldv_stop();
    }
    ldv_25393: ;
  } else {
  }
  goto ldv_25260;
  case 30: ;
  if (ldv_state_variable_50 != 0) {
    tmp___240 = __VERIFIER_nondet_int();
    switch (tmp___240) {
    case 0: ;
    if (ldv_state_variable_50 == 1) {
      show_temp(ldvarg90, ldvarg92, ldvarg91);
      ldv_state_variable_50 = 1;
    } else {
    }
    goto ldv_25398;
    default:
    ldv_stop();
    }
    ldv_25398: ;
  } else {
  }
  goto ldv_25260;
  case 31: ;
  if (ldv_state_variable_39 != 0) {
    tmp___241 = __VERIFIER_nondet_int();
    switch (tmp___241) {
    case 0: ;
    if (ldv_state_variable_39 == 1) {
      show_alarm(ldvarg93, ldvarg95, ldvarg94);
      ldv_state_variable_39 = 1;
    } else {
    }
    goto ldv_25402;
    default:
    ldv_stop();
    }
    ldv_25402: ;
  } else {
  }
  goto ldv_25260;
  case 32: ;
  if (ldv_state_variable_64 != 0) {
    tmp___242 = __VERIFIER_nondet_int();
    switch (tmp___242) {
    case 0: ;
    if (ldv_state_variable_64 == 1) {
      store_in_min(sensor_dev_attr_in8_min_group1, sensor_dev_attr_in8_min_group0,
                   (char const *)ldvarg98, ldvarg97);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_25406;
    case 1: ;
    if (ldv_state_variable_64 == 1) {
      show_in_min(sensor_dev_attr_in8_min_group1, sensor_dev_attr_in8_min_group0,
                  ldvarg96);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_25406;
    default:
    ldv_stop();
    }
    ldv_25406: ;
  } else {
  }
  goto ldv_25260;
  case 33: ;
  if (ldv_state_variable_58 != 0) {
    tmp___243 = __VERIFIER_nondet_int();
    switch (tmp___243) {
    case 0: ;
    if (ldv_state_variable_58 == 1) {
      show_fan(ldvarg99, ldvarg101, ldvarg100);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_25411;
    default:
    ldv_stop();
    }
    ldv_25411: ;
  } else {
  }
  goto ldv_25260;
  case 34: ;
  if (ldv_state_variable_41 != 0) {
    tmp___244 = __VERIFIER_nondet_int();
    switch (tmp___244) {
    case 0: ;
    if (ldv_state_variable_41 == 1) {
      show_alarm(ldvarg102, ldvarg104, ldvarg103);
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_25415;
    default:
    ldv_stop();
    }
    ldv_25415: ;
  } else {
  }
  goto ldv_25260;
  case 35: ;
  if (ldv_state_variable_12 != 0) {
    tmp___245 = __VERIFIER_nondet_int();
    switch (tmp___245) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      store_fan_div(sensor_dev_attr_fan1_div_group1, sensor_dev_attr_fan1_div_group0,
                    (char const *)ldvarg107, ldvarg106);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_25419;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      show_fan_div(sensor_dev_attr_fan1_div_group1, sensor_dev_attr_fan1_div_group0,
                   ldvarg105);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_25419;
    default:
    ldv_stop();
    }
    ldv_25419: ;
  } else {
  }
  goto ldv_25260;
  case 36: ;
  if (ldv_state_variable_15 != 0) {
    tmp___246 = __VERIFIER_nondet_int();
    switch (tmp___246) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      store_beep(sensor_dev_attr_temp2_beep_group1, sensor_dev_attr_temp2_beep_group0,
                 (char const *)ldvarg110, ldvarg109);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_25424;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      show_beep(sensor_dev_attr_temp2_beep_group1, sensor_dev_attr_temp2_beep_group0,
                ldvarg108);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_25424;
    default:
    ldv_stop();
    }
    ldv_25424: ;
  } else {
  }
  goto ldv_25260;
  case 37: ;
  if (ldv_state_variable_81 != 0) {
    tmp___247 = __VERIFIER_nondet_int();
    switch (tmp___247) {
    case 0: ;
    if (ldv_state_variable_81 == 1) {
      store_in_max(sensor_dev_attr_in2_max_group1, sensor_dev_attr_in2_max_group0,
                   (char const *)ldvarg113, ldvarg112);
      ldv_state_variable_81 = 1;
    } else {
    }
    goto ldv_25429;
    case 1: ;
    if (ldv_state_variable_81 == 1) {
      show_in_max(sensor_dev_attr_in2_max_group1, sensor_dev_attr_in2_max_group0,
                  ldvarg111);
      ldv_state_variable_81 = 1;
    } else {
    }
    goto ldv_25429;
    default:
    ldv_stop();
    }
    ldv_25429: ;
  } else {
  }
  goto ldv_25260;
  case 38: ;
  if (ldv_state_variable_52 != 0) {
    tmp___248 = __VERIFIER_nondet_int();
    switch (tmp___248) {
    case 0: ;
    if (ldv_state_variable_52 == 1) {
      store_temp_max(sensor_dev_attr_temp2_max_group1, sensor_dev_attr_temp2_max_group0,
                     (char const *)ldvarg116, ldvarg115);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_25434;
    case 1: ;
    if (ldv_state_variable_52 == 1) {
      show_temp_max(sensor_dev_attr_temp2_max_group1, sensor_dev_attr_temp2_max_group0,
                    ldvarg114);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_25434;
    default:
    ldv_stop();
    }
    ldv_25434: ;
  } else {
  }
  goto ldv_25260;
  case 39: ;
  if (ldv_state_variable_60 != 0) {
    tmp___249 = __VERIFIER_nondet_int();
    switch (tmp___249) {
    case 0: ;
    if (ldv_state_variable_60 == 1) {
      show_fan(ldvarg117, ldvarg119, ldvarg118);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_25439;
    default:
    ldv_stop();
    }
    ldv_25439: ;
  } else {
  }
  goto ldv_25260;
  case 40: ;
  if (ldv_state_variable_56 != 0) {
    tmp___250 = __VERIFIER_nondet_int();
    switch (tmp___250) {
    case 0: ;
    if (ldv_state_variable_56 == 1) {
      show_temp(ldvarg120, ldvarg122, ldvarg121);
      ldv_state_variable_56 = 1;
    } else {
    }
    goto ldv_25443;
    default:
    ldv_stop();
    }
    ldv_25443: ;
  } else {
  }
  goto ldv_25260;
  case 41: ;
  if (ldv_state_variable_73 != 0) {
    tmp___251 = __VERIFIER_nondet_int();
    switch (tmp___251) {
    case 0: ;
    if (ldv_state_variable_73 == 1) {
      store_in_min(sensor_dev_attr_in5_min_group1, sensor_dev_attr_in5_min_group0,
                   (char const *)ldvarg125, ldvarg124);
      ldv_state_variable_73 = 1;
    } else {
    }
    goto ldv_25447;
    case 1: ;
    if (ldv_state_variable_73 == 1) {
      show_in_min(sensor_dev_attr_in5_min_group1, sensor_dev_attr_in5_min_group0,
                  ldvarg123);
      ldv_state_variable_73 = 1;
    } else {
    }
    goto ldv_25447;
    default:
    ldv_stop();
    }
    ldv_25447: ;
  } else {
  }
  goto ldv_25260;
  case 42: ;
  if (ldv_state_variable_66 != 0) {
    tmp___252 = __VERIFIER_nondet_int();
    switch (tmp___252) {
    case 0: ;
    if (ldv_state_variable_66 == 1) {
      store_in_max(sensor_dev_attr_in7_max_group1, sensor_dev_attr_in7_max_group0,
                   (char const *)ldvarg128, ldvarg127);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_25452;
    case 1: ;
    if (ldv_state_variable_66 == 1) {
      show_in_max(sensor_dev_attr_in7_max_group1, sensor_dev_attr_in7_max_group0,
                  ldvarg126);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_25452;
    default:
    ldv_stop();
    }
    ldv_25452: ;
  } else {
  }
  goto ldv_25260;
  case 43: ;
  if (ldv_state_variable_45 != 0) {
    tmp___253 = __VERIFIER_nondet_int();
    switch (tmp___253) {
    case 0: ;
    if (ldv_state_variable_45 == 1) {
      show_alarms_reg(ldvarg129, ldvarg131, ldvarg130);
      ldv_state_variable_45 = 1;
    } else {
    }
    goto ldv_25457;
    default:
    ldv_stop();
    }
    ldv_25457: ;
  } else {
  }
  goto ldv_25260;
  case 44: ;
  if (ldv_state_variable_86 != 0) {
    tmp___254 = __VERIFIER_nondet_int();
    switch (tmp___254) {
    case 0: ;
    if (ldv_state_variable_86 == 1) {
      show_in(ldvarg132, ldvarg134, ldvarg133);
      ldv_state_variable_86 = 1;
    } else {
    }
    goto ldv_25461;
    default:
    ldv_stop();
    }
    ldv_25461: ;
  } else {
  }
  goto ldv_25260;
  case 45: ;
  if (ldv_state_variable_76 != 0) {
    tmp___255 = __VERIFIER_nondet_int();
    switch (tmp___255) {
    case 0: ;
    if (ldv_state_variable_76 == 1) {
      store_in_min(sensor_dev_attr_in4_min_group1, sensor_dev_attr_in4_min_group0,
                   (char const *)ldvarg137, ldvarg136);
      ldv_state_variable_76 = 1;
    } else {
    }
    goto ldv_25465;
    case 1: ;
    if (ldv_state_variable_76 == 1) {
      show_in_min(sensor_dev_attr_in4_min_group1, sensor_dev_attr_in4_min_group0,
                  ldvarg135);
      ldv_state_variable_76 = 1;
    } else {
    }
    goto ldv_25465;
    default:
    ldv_stop();
    }
    ldv_25465: ;
  } else {
  }
  goto ldv_25260;
  case 46: ;
  if (ldv_state_variable_19 != 0) {
    tmp___256 = __VERIFIER_nondet_int();
    switch (tmp___256) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      store_beep(sensor_dev_attr_fan1_beep_group1, sensor_dev_attr_fan1_beep_group0,
                 (char const *)ldvarg140, ldvarg139);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_25470;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      show_beep(sensor_dev_attr_fan1_beep_group1, sensor_dev_attr_fan1_beep_group0,
                ldvarg138);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_25470;
    default:
    ldv_stop();
    }
    ldv_25470: ;
  } else {
  }
  goto ldv_25260;
  case 47: ;
  if (ldv_state_variable_62 != 0) {
    tmp___257 = __VERIFIER_nondet_int();
    switch (tmp___257) {
    case 0: ;
    if (ldv_state_variable_62 == 1) {
      show_fan(ldvarg141, ldvarg143, ldvarg142);
      ldv_state_variable_62 = 1;
    } else {
    }
    goto ldv_25475;
    default:
    ldv_stop();
    }
    ldv_25475: ;
  } else {
  }
  goto ldv_25260;
  case 48: ;
  if (ldv_state_variable_54 != 0) {
    tmp___258 = __VERIFIER_nondet_int();
    switch (tmp___258) {
    case 0: ;
    if (ldv_state_variable_54 == 1) {
      store_temp_max_hyst(sensor_dev_attr_temp1_max_hyst_group1, sensor_dev_attr_temp1_max_hyst_group0,
                          (char const *)ldvarg146, ldvarg145);
      ldv_state_variable_54 = 1;
    } else {
    }
    goto ldv_25479;
    case 1: ;
    if (ldv_state_variable_54 == 1) {
      show_temp_max_hyst(sensor_dev_attr_temp1_max_hyst_group1, sensor_dev_attr_temp1_max_hyst_group0,
                         ldvarg144);
      ldv_state_variable_54 = 1;
    } else {
    }
    goto ldv_25479;
    default:
    ldv_stop();
    }
    ldv_25479: ;
  } else {
  }
  goto ldv_25260;
  case 49: ;
  if (ldv_state_variable_67 != 0) {
    tmp___259 = __VERIFIER_nondet_int();
    switch (tmp___259) {
    case 0: ;
    if (ldv_state_variable_67 == 1) {
      store_in_min(sensor_dev_attr_in7_min_group1, sensor_dev_attr_in7_min_group0,
                   (char const *)ldvarg149, ldvarg148);
      ldv_state_variable_67 = 1;
    } else {
    }
    goto ldv_25484;
    case 1: ;
    if (ldv_state_variable_67 == 1) {
      show_in_min(sensor_dev_attr_in7_min_group1, sensor_dev_attr_in7_min_group0,
                  ldvarg147);
      ldv_state_variable_67 = 1;
    } else {
    }
    goto ldv_25484;
    default:
    ldv_stop();
    }
    ldv_25484: ;
  } else {
  }
  goto ldv_25260;
  case 50: ;
  if (ldv_state_variable_70 != 0) {
    tmp___260 = __VERIFIER_nondet_int();
    switch (tmp___260) {
    case 0: ;
    if (ldv_state_variable_70 == 1) {
      store_in_min(sensor_dev_attr_in6_min_group1, sensor_dev_attr_in6_min_group0,
                   (char const *)ldvarg152, ldvarg151);
      ldv_state_variable_70 = 1;
    } else {
    }
    goto ldv_25489;
    case 1: ;
    if (ldv_state_variable_70 == 1) {
      show_in_min(sensor_dev_attr_in6_min_group1, sensor_dev_attr_in6_min_group0,
                  ldvarg150);
      ldv_state_variable_70 = 1;
    } else {
    }
    goto ldv_25489;
    default:
    ldv_stop();
    }
    ldv_25489: ;
  } else {
  }
  goto ldv_25260;
  case 51: ;
  if (ldv_state_variable_68 != 0) {
    tmp___261 = __VERIFIER_nondet_int();
    switch (tmp___261) {
    case 0: ;
    if (ldv_state_variable_68 == 1) {
      show_in(ldvarg153, ldvarg155, ldvarg154);
      ldv_state_variable_68 = 1;
    } else {
    }
    goto ldv_25494;
    default:
    ldv_stop();
    }
    ldv_25494: ;
  } else {
  }
  goto ldv_25260;
  case 52: ;
  if (ldv_state_variable_2 != 0) {
    tmp___262 = __VERIFIER_nondet_int();
    switch (tmp___262) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      store_sensor(sensor_dev_attr_temp3_type_group1, sensor_dev_attr_temp3_type_group0,
                   (char const *)ldvarg158, ldvarg157);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_25498;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      show_sensor(sensor_dev_attr_temp3_type_group1, sensor_dev_attr_temp3_type_group0,
                  ldvarg156);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_25498;
    default:
    ldv_stop();
    }
    ldv_25498: ;
  } else {
  }
  goto ldv_25260;
  case 53: ;
  if (ldv_state_variable_17 != 0) {
    tmp___263 = __VERIFIER_nondet_int();
    switch (tmp___263) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      store_beep(sensor_dev_attr_fan3_beep_group1, sensor_dev_attr_fan3_beep_group0,
                 (char const *)ldvarg161, ldvarg160);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_25503;
    case 1: ;
    if (ldv_state_variable_17 == 1) {
      show_beep(sensor_dev_attr_fan3_beep_group1, sensor_dev_attr_fan3_beep_group0,
                ldvarg159);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_25503;
    default:
    ldv_stop();
    }
    ldv_25503: ;
  } else {
  }
  goto ldv_25260;
  case 54: ;
  if (ldv_state_variable_1 != 0) {
    tmp___264 = __VERIFIER_nondet_int();
    switch (tmp___264) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      w83781d_detect(w83781d_driver_group0, ldvarg163);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      w83781d_detect(w83781d_driver_group0, ldvarg163);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_25508;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = w83781d_probe(w83781d_driver_group0, (struct i2c_device_id const *)ldvarg162);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_25508;
    case 2: ;
    if (ldv_state_variable_1 == 2) {
      w83781d_remove(w83781d_driver_group0);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_25508;
    default:
    ldv_stop();
    }
    ldv_25508: ;
  } else {
  }
  goto ldv_25260;
  case 55: ;
  if (ldv_state_variable_88 != 0) {
    tmp___265 = __VERIFIER_nondet_int();
    switch (tmp___265) {
    case 0: ;
    if (ldv_state_variable_88 == 1) {
      store_in_min(sensor_dev_attr_in0_min_group1, sensor_dev_attr_in0_min_group0,
                   (char const *)ldvarg166, ldvarg165);
      ldv_state_variable_88 = 1;
    } else {
    }
    goto ldv_25514;
    case 1: ;
    if (ldv_state_variable_88 == 1) {
      show_in_min(sensor_dev_attr_in0_min_group1, sensor_dev_attr_in0_min_group0,
                  ldvarg164);
      ldv_state_variable_88 = 1;
    } else {
    }
    goto ldv_25514;
    default:
    ldv_stop();
    }
    ldv_25514: ;
  } else {
  }
  goto ldv_25260;
  case 56: ;
  if (ldv_state_variable_30 != 0) {
    tmp___266 = __VERIFIER_nondet_int();
    switch (tmp___266) {
    case 0: ;
    if (ldv_state_variable_30 == 1) {
      show_temp3_alarm(ldvarg167, ldvarg169, ldvarg168);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_25519;
    default:
    ldv_stop();
    }
    ldv_25519: ;
  } else {
  }
  goto ldv_25260;
  case 57: ;
  if (ldv_state_variable_82 != 0) {
    tmp___267 = __VERIFIER_nondet_int();
    switch (tmp___267) {
    case 0: ;
    if (ldv_state_variable_82 == 1) {
      store_in_min(sensor_dev_attr_in2_min_group1, sensor_dev_attr_in2_min_group0,
                   (char const *)ldvarg172, ldvarg171);
      ldv_state_variable_82 = 1;
    } else {
    }
    goto ldv_25523;
    case 1: ;
    if (ldv_state_variable_82 == 1) {
      show_in_min(sensor_dev_attr_in2_min_group1, sensor_dev_attr_in2_min_group0,
                  ldvarg170);
      ldv_state_variable_82 = 1;
    } else {
    }
    goto ldv_25523;
    default:
    ldv_stop();
    }
    ldv_25523: ;
  } else {
  }
  goto ldv_25260;
  case 58: ;
  if (ldv_state_variable_25 != 0) {
    tmp___268 = __VERIFIER_nondet_int();
    switch (tmp___268) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      store_beep(sensor_dev_attr_in3_beep_group1, sensor_dev_attr_in3_beep_group0,
                 (char const *)ldvarg175, ldvarg174);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_25528;
    case 1: ;
    if (ldv_state_variable_25 == 1) {
      show_beep(sensor_dev_attr_in3_beep_group1, sensor_dev_attr_in3_beep_group0,
                ldvarg173);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_25528;
    default:
    ldv_stop();
    }
    ldv_25528: ;
  } else {
  }
  goto ldv_25260;
  case 59: ;
  if (ldv_state_variable_28 != 0) {
    tmp___269 = __VERIFIER_nondet_int();
    switch (tmp___269) {
    case 0: ;
    if (ldv_state_variable_28 == 1) {
      store_beep(sensor_dev_attr_in0_beep_group1, sensor_dev_attr_in0_beep_group0,
                 (char const *)ldvarg178, ldvarg177);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_25533;
    case 1: ;
    if (ldv_state_variable_28 == 1) {
      show_beep(sensor_dev_attr_in0_beep_group1, sensor_dev_attr_in0_beep_group0,
                ldvarg176);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_25533;
    default:
    ldv_stop();
    }
    ldv_25533: ;
  } else {
  }
  goto ldv_25260;
  case 60: ;
  if (ldv_state_variable_83 != 0) {
    tmp___270 = __VERIFIER_nondet_int();
    switch (tmp___270) {
    case 0: ;
    if (ldv_state_variable_83 == 1) {
      show_in(ldvarg179, ldvarg181, ldvarg180);
      ldv_state_variable_83 = 1;
    } else {
    }
    goto ldv_25538;
    default:
    ldv_stop();
    }
    ldv_25538: ;
  } else {
  }
  goto ldv_25260;
  case 61: ;
  if (ldv_state_variable_75 != 0) {
    tmp___271 = __VERIFIER_nondet_int();
    switch (tmp___271) {
    case 0: ;
    if (ldv_state_variable_75 == 1) {
      store_in_max(sensor_dev_attr_in4_max_group1, sensor_dev_attr_in4_max_group0,
                   (char const *)ldvarg184, ldvarg183);
      ldv_state_variable_75 = 1;
    } else {
    }
    goto ldv_25542;
    case 1: ;
    if (ldv_state_variable_75 == 1) {
      show_in_max(sensor_dev_attr_in4_max_group1, sensor_dev_attr_in4_max_group0,
                  ldvarg182);
      ldv_state_variable_75 = 1;
    } else {
    }
    goto ldv_25542;
    default:
    ldv_stop();
    }
    ldv_25542: ;
  } else {
  }
  goto ldv_25260;
  case 62: ;
  if (ldv_state_variable_40 != 0) {
    tmp___272 = __VERIFIER_nondet_int();
    switch (tmp___272) {
    case 0: ;
    if (ldv_state_variable_40 == 1) {
      show_alarm(ldvarg185, ldvarg187, ldvarg186);
      ldv_state_variable_40 = 1;
    } else {
    }
    goto ldv_25547;
    default:
    ldv_stop();
    }
    ldv_25547: ;
  } else {
  }
  goto ldv_25260;
  case 63: ;
  if (ldv_state_variable_14 != 0) {
    tmp___273 = __VERIFIER_nondet_int();
    switch (tmp___273) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      store_beep(sensor_dev_attr_temp3_beep_group1, sensor_dev_attr_temp3_beep_group0,
                 (char const *)ldvarg190, ldvarg189);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_25551;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      show_temp3_beep(sensor_dev_attr_temp3_beep_group1, sensor_dev_attr_temp3_beep_group0,
                      ldvarg188);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_25551;
    default:
    ldv_stop();
    }
    ldv_25551: ;
  } else {
  }
  goto ldv_25260;
  case 64: ;
  if (ldv_state_variable_69 != 0) {
    tmp___274 = __VERIFIER_nondet_int();
    switch (tmp___274) {
    case 0: ;
    if (ldv_state_variable_69 == 1) {
      store_in_max(sensor_dev_attr_in6_max_group1, sensor_dev_attr_in6_max_group0,
                   (char const *)ldvarg193, ldvarg192);
      ldv_state_variable_69 = 1;
    } else {
    }
    goto ldv_25556;
    case 1: ;
    if (ldv_state_variable_69 == 1) {
      show_in_max(sensor_dev_attr_in6_max_group1, sensor_dev_attr_in6_max_group0,
                  ldvarg191);
      ldv_state_variable_69 = 1;
    } else {
    }
    goto ldv_25556;
    default:
    ldv_stop();
    }
    ldv_25556: ;
  } else {
  }
  goto ldv_25260;
  case 65: ;
  if (ldv_state_variable_59 != 0) {
    tmp___275 = __VERIFIER_nondet_int();
    switch (tmp___275) {
    case 0: ;
    if (ldv_state_variable_59 == 1) {
      store_fan_min(sensor_dev_attr_fan2_min_group1, sensor_dev_attr_fan2_min_group0,
                    (char const *)ldvarg196, ldvarg195);
      ldv_state_variable_59 = 1;
    } else {
    }
    goto ldv_25561;
    case 1: ;
    if (ldv_state_variable_59 == 1) {
      show_fan_min(sensor_dev_attr_fan2_min_group1, sensor_dev_attr_fan2_min_group0,
                   ldvarg194);
      ldv_state_variable_59 = 1;
    } else {
    }
    goto ldv_25561;
    default:
    ldv_stop();
    }
    ldv_25561: ;
  } else {
  }
  goto ldv_25260;
  case 66: ;
  if (ldv_state_variable_49 != 0) {
    tmp___276 = __VERIFIER_nondet_int();
    switch (tmp___276) {
    case 0: ;
    if (ldv_state_variable_49 == 1) {
      store_temp_max(sensor_dev_attr_temp3_max_group1, sensor_dev_attr_temp3_max_group0,
                     (char const *)ldvarg199, ldvarg198);
      ldv_state_variable_49 = 1;
    } else {
    }
    goto ldv_25566;
    case 1: ;
    if (ldv_state_variable_49 == 1) {
      show_temp_max(sensor_dev_attr_temp3_max_group1, sensor_dev_attr_temp3_max_group0,
                    ldvarg197);
      ldv_state_variable_49 = 1;
    } else {
    }
    goto ldv_25566;
    default:
    ldv_stop();
    }
    ldv_25566: ;
  } else {
  }
  goto ldv_25260;
  case 67: ;
  if (ldv_state_variable_24 != 0) {
    tmp___277 = __VERIFIER_nondet_int();
    switch (tmp___277) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      store_beep(sensor_dev_attr_in4_beep_group1, sensor_dev_attr_in4_beep_group0,
                 (char const *)ldvarg202, ldvarg201);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_25571;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      show_beep(sensor_dev_attr_in4_beep_group1, sensor_dev_attr_in4_beep_group0,
                ldvarg200);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_25571;
    default:
    ldv_stop();
    }
    ldv_25571: ;
  } else {
  }
  goto ldv_25260;
  case 68: ;
  if (ldv_state_variable_53 != 0) {
    tmp___278 = __VERIFIER_nondet_int();
    switch (tmp___278) {
    case 0: ;
    if (ldv_state_variable_53 == 1) {
      show_temp(ldvarg203, ldvarg205, ldvarg204);
      ldv_state_variable_53 = 1;
    } else {
    }
    goto ldv_25576;
    default:
    ldv_stop();
    }
    ldv_25576: ;
  } else {
  }
  goto ldv_25260;
  case 69: ;
  if (ldv_state_variable_79 != 0) {
    tmp___279 = __VERIFIER_nondet_int();
    switch (tmp___279) {
    case 0: ;
    if (ldv_state_variable_79 == 1) {
      store_in_min(sensor_dev_attr_in3_min_group1, sensor_dev_attr_in3_min_group0,
                   (char const *)ldvarg208, ldvarg207);
      ldv_state_variable_79 = 1;
    } else {
    }
    goto ldv_25580;
    case 1: ;
    if (ldv_state_variable_79 == 1) {
      show_in_min(sensor_dev_attr_in3_min_group1, sensor_dev_attr_in3_min_group0,
                  ldvarg206);
      ldv_state_variable_79 = 1;
    } else {
    }
    goto ldv_25580;
    default:
    ldv_stop();
    }
    ldv_25580: ;
  } else {
  }
  goto ldv_25260;
  case 70: ;
  if (ldv_state_variable_22 != 0) {
    tmp___280 = __VERIFIER_nondet_int();
    switch (tmp___280) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      store_beep(sensor_dev_attr_in6_beep_group1, sensor_dev_attr_in6_beep_group0,
                 (char const *)ldvarg211, ldvarg210);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_25585;
    case 1: ;
    if (ldv_state_variable_22 == 1) {
      show_beep(sensor_dev_attr_in6_beep_group1, sensor_dev_attr_in6_beep_group0,
                ldvarg209);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_25585;
    default:
    ldv_stop();
    }
    ldv_25585: ;
  } else {
  }
  goto ldv_25260;
  case 71: ;
  if (ldv_state_variable_42 != 0) {
    tmp___281 = __VERIFIER_nondet_int();
    switch (tmp___281) {
    case 0: ;
    if (ldv_state_variable_42 == 1) {
      show_alarm(ldvarg212, ldvarg214, ldvarg213);
      ldv_state_variable_42 = 1;
    } else {
    }
    goto ldv_25590;
    default:
    ldv_stop();
    }
    ldv_25590: ;
  } else {
  }
  goto ldv_25260;
  case 72: ;
  if (ldv_state_variable_0 != 0) {
    tmp___282 = __VERIFIER_nondet_int();
    switch (tmp___282) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      sensors_w83781d_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_25595;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = sensors_w83781d_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_device_attribute_5();
        ldv_state_variable_43 = 1;
        ldv_state_variable_37 = 1;
        ldv_state_variable_34 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_sensor_device_attribute_4();
        ldv_state_variable_38 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_sensor_device_attribute_8();
        ldv_state_variable_47 = 1;
        ldv_state_variable_51 = 1;
        ldv_initialize_sensor_device_attribute_51();
        ldv_state_variable_9 = 1;
        ldv_initialize_sensor_device_attribute_9();
        ldv_state_variable_36 = 1;
        ldv_state_variable_3 = 1;
        ldv_initialize_sensor_device_attribute_3();
        ldv_state_variable_85 = 1;
        ldv_initialize_sensor_device_attribute_85();
        ldv_state_variable_6 = 1;
        ldv_initialize_sensor_device_attribute_6();
        ldv_state_variable_13 = 1;
        ldv_initialize_sensor_device_attribute_13();
        ldv_state_variable_23 = 1;
        ldv_initialize_sensor_device_attribute_23();
        ldv_state_variable_46 = 1;
        ldv_initialize_device_attribute_46();
        ldv_state_variable_42 = 1;
        ldv_state_variable_22 = 1;
        ldv_initialize_sensor_device_attribute_22();
        ldv_state_variable_79 = 1;
        ldv_initialize_sensor_device_attribute_79();
        ldv_state_variable_53 = 1;
        ldv_state_variable_24 = 1;
        ldv_initialize_sensor_device_attribute_24();
        ldv_state_variable_49 = 1;
        ldv_initialize_sensor_device_attribute_49();
        ldv_state_variable_59 = 1;
        ldv_initialize_sensor_device_attribute_59();
        ldv_state_variable_69 = 1;
        ldv_initialize_sensor_device_attribute_69();
        ldv_state_variable_14 = 1;
        ldv_initialize_sensor_device_attribute_14();
        ldv_state_variable_40 = 1;
        ldv_state_variable_75 = 1;
        ldv_initialize_sensor_device_attribute_75();
        ldv_state_variable_83 = 1;
        ldv_state_variable_28 = 1;
        ldv_initialize_sensor_device_attribute_28();
        ldv_state_variable_25 = 1;
        ldv_initialize_sensor_device_attribute_25();
        ldv_state_variable_82 = 1;
        ldv_initialize_sensor_device_attribute_82();
        ldv_state_variable_30 = 1;
        ldv_state_variable_88 = 1;
        ldv_initialize_sensor_device_attribute_88();
        ldv_state_variable_1 = 1;
        ldv_initialize_i2c_driver_1();
        ldv_state_variable_17 = 1;
        ldv_initialize_sensor_device_attribute_17();
        ldv_state_variable_2 = 1;
        ldv_initialize_sensor_device_attribute_2();
        ldv_state_variable_68 = 1;
        ldv_state_variable_70 = 1;
        ldv_initialize_sensor_device_attribute_70();
        ldv_state_variable_67 = 1;
        ldv_initialize_sensor_device_attribute_67();
        ldv_state_variable_54 = 1;
        ldv_initialize_sensor_device_attribute_54();
        ldv_state_variable_62 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_sensor_device_attribute_19();
        ldv_state_variable_76 = 1;
        ldv_initialize_sensor_device_attribute_76();
        ldv_state_variable_86 = 1;
        ldv_state_variable_45 = 1;
        ldv_state_variable_66 = 1;
        ldv_initialize_sensor_device_attribute_66();
        ldv_state_variable_73 = 1;
        ldv_initialize_sensor_device_attribute_73();
        ldv_state_variable_56 = 1;
        ldv_state_variable_60 = 1;
        ldv_state_variable_52 = 1;
        ldv_initialize_sensor_device_attribute_52();
        ldv_state_variable_81 = 1;
        ldv_initialize_sensor_device_attribute_81();
        ldv_state_variable_15 = 1;
        ldv_initialize_sensor_device_attribute_15();
        ldv_state_variable_12 = 1;
        ldv_initialize_sensor_device_attribute_12();
        ldv_state_variable_41 = 1;
        ldv_state_variable_58 = 1;
        ldv_state_variable_64 = 1;
        ldv_initialize_sensor_device_attribute_64();
        ldv_state_variable_39 = 1;
        ldv_state_variable_50 = 1;
        ldv_state_variable_29 = 1;
        ldv_initialize_device_attribute_29();
        ldv_state_variable_65 = 1;
        ldv_state_variable_77 = 1;
        ldv_state_variable_87 = 1;
        ldv_initialize_sensor_device_attribute_87();
        ldv_state_variable_48 = 1;
        ldv_initialize_sensor_device_attribute_48();
        ldv_state_variable_78 = 1;
        ldv_initialize_sensor_device_attribute_78();
        ldv_state_variable_11 = 1;
        ldv_initialize_sensor_device_attribute_11();
        ldv_state_variable_35 = 1;
        ldv_state_variable_31 = 1;
        ldv_state_variable_10 = 1;
        ldv_initialize_sensor_device_attribute_10();
        ldv_state_variable_89 = 1;
        ldv_state_variable_20 = 1;
        ldv_initialize_sensor_device_attribute_20();
        ldv_state_variable_61 = 1;
        ldv_initialize_sensor_device_attribute_61();
        ldv_state_variable_57 = 1;
        ldv_initialize_sensor_device_attribute_57();
        ldv_state_variable_27 = 1;
        ldv_initialize_sensor_device_attribute_27();
        ldv_state_variable_74 = 1;
        ldv_state_variable_84 = 1;
        ldv_initialize_sensor_device_attribute_84();
        ldv_state_variable_55 = 1;
        ldv_initialize_sensor_device_attribute_55();
        ldv_state_variable_44 = 1;
        ldv_state_variable_16 = 1;
        ldv_initialize_sensor_device_attribute_16();
        ldv_state_variable_72 = 1;
        ldv_initialize_sensor_device_attribute_72();
        ldv_state_variable_18 = 1;
        ldv_initialize_sensor_device_attribute_18();
        ldv_state_variable_26 = 1;
        ldv_initialize_sensor_device_attribute_26();
        ldv_state_variable_80 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_sensor_device_attribute_7();
        ldv_state_variable_71 = 1;
        ldv_state_variable_21 = 1;
        ldv_initialize_sensor_device_attribute_21();
        ldv_state_variable_63 = 1;
        ldv_initialize_sensor_device_attribute_63();
        ldv_state_variable_32 = 1;
        ldv_state_variable_33 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_25595;
    default:
    ldv_stop();
    }
    ldv_25595: ;
  } else {
  }
  goto ldv_25260;
  case 73: ;
  if (ldv_state_variable_46 != 0) {
    tmp___283 = __VERIFIER_nondet_int();
    switch (tmp___283) {
    case 0: ;
    if (ldv_state_variable_46 == 1) {
      store_vrm_reg(dev_attr_vrm_group1, dev_attr_vrm_group0, (char const *)ldvarg217,
                    ldvarg216);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_25600;
    case 1: ;
    if (ldv_state_variable_46 == 1) {
      show_vrm_reg(dev_attr_vrm_group1, dev_attr_vrm_group0, ldvarg215);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_25600;
    default:
    ldv_stop();
    }
    ldv_25600: ;
  } else {
  }
  goto ldv_25260;
  case 74: ;
  if (ldv_state_variable_23 != 0) {
    tmp___284 = __VERIFIER_nondet_int();
    switch (tmp___284) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      store_beep(sensor_dev_attr_in5_beep_group1, sensor_dev_attr_in5_beep_group0,
                 (char const *)ldvarg220, ldvarg219);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_25605;
    case 1: ;
    if (ldv_state_variable_23 == 1) {
      show_beep(sensor_dev_attr_in5_beep_group1, sensor_dev_attr_in5_beep_group0,
                ldvarg218);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_25605;
    default:
    ldv_stop();
    }
    ldv_25605: ;
  } else {
  }
  goto ldv_25260;
  case 75: ;
  if (ldv_state_variable_13 != 0) {
    tmp___285 = __VERIFIER_nondet_int();
    switch (tmp___285) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      store_beep(sensor_dev_attr_beep_enable_group1, sensor_dev_attr_beep_enable_group0,
                 (char const *)ldvarg223, ldvarg222);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_25610;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      show_beep(sensor_dev_attr_beep_enable_group1, sensor_dev_attr_beep_enable_group0,
                ldvarg221);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_25610;
    default:
    ldv_stop();
    }
    ldv_25610: ;
  } else {
  }
  goto ldv_25260;
  case 76: ;
  if (ldv_state_variable_6 != 0) {
    tmp___286 = __VERIFIER_nondet_int();
    switch (tmp___286) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      store_pwm(sensor_dev_attr_pwm4_group1, sensor_dev_attr_pwm4_group0, (char const *)ldvarg226,
                ldvarg225);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_25615;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      show_pwm(sensor_dev_attr_pwm4_group1, sensor_dev_attr_pwm4_group0, ldvarg224);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_25615;
    default:
    ldv_stop();
    }
    ldv_25615: ;
  } else {
  }
  goto ldv_25260;
  case 77: ;
  if (ldv_state_variable_85 != 0) {
    tmp___287 = __VERIFIER_nondet_int();
    switch (tmp___287) {
    case 0: ;
    if (ldv_state_variable_85 == 1) {
      store_in_min(sensor_dev_attr_in1_min_group1, sensor_dev_attr_in1_min_group0,
                   (char const *)ldvarg229, ldvarg228);
      ldv_state_variable_85 = 1;
    } else {
    }
    goto ldv_25620;
    case 1: ;
    if (ldv_state_variable_85 == 1) {
      show_in_min(sensor_dev_attr_in1_min_group1, sensor_dev_attr_in1_min_group0,
                  ldvarg227);
      ldv_state_variable_85 = 1;
    } else {
    }
    goto ldv_25620;
    default:
    ldv_stop();
    }
    ldv_25620: ;
  } else {
  }
  goto ldv_25260;
  case 78: ;
  if (ldv_state_variable_3 != 0) {
    tmp___288 = __VERIFIER_nondet_int();
    switch (tmp___288) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      store_sensor(sensor_dev_attr_temp2_type_group1, sensor_dev_attr_temp2_type_group0,
                   (char const *)ldvarg232, ldvarg231);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_25625;
    case 1: ;
    if (ldv_state_variable_3 == 1) {
      show_sensor(sensor_dev_attr_temp2_type_group1, sensor_dev_attr_temp2_type_group0,
                  ldvarg230);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_25625;
    default:
    ldv_stop();
    }
    ldv_25625: ;
  } else {
  }
  goto ldv_25260;
  case 79: ;
  if (ldv_state_variable_36 != 0) {
    tmp___289 = __VERIFIER_nondet_int();
    switch (tmp___289) {
    case 0: ;
    if (ldv_state_variable_36 == 1) {
      show_alarm(ldvarg233, ldvarg235, ldvarg234);
      ldv_state_variable_36 = 1;
    } else {
    }
    goto ldv_25630;
    default:
    ldv_stop();
    }
    ldv_25630: ;
  } else {
  }
  goto ldv_25260;
  case 80: ;
  if (ldv_state_variable_9 != 0) {
    tmp___290 = __VERIFIER_nondet_int();
    switch (tmp___290) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      store_pwm(sensor_dev_attr_pwm1_group1, sensor_dev_attr_pwm1_group0, (char const *)ldvarg238,
                ldvarg237);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_25634;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      show_pwm(sensor_dev_attr_pwm1_group1, sensor_dev_attr_pwm1_group0, ldvarg236);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_25634;
    default:
    ldv_stop();
    }
    ldv_25634: ;
  } else {
  }
  goto ldv_25260;
  case 81: ;
  if (ldv_state_variable_51 != 0) {
    tmp___291 = __VERIFIER_nondet_int();
    switch (tmp___291) {
    case 0: ;
    if (ldv_state_variable_51 == 1) {
      store_temp_max_hyst(sensor_dev_attr_temp2_max_hyst_group1, sensor_dev_attr_temp2_max_hyst_group0,
                          (char const *)ldvarg241, ldvarg240);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_25639;
    case 1: ;
    if (ldv_state_variable_51 == 1) {
      show_temp_max_hyst(sensor_dev_attr_temp2_max_hyst_group1, sensor_dev_attr_temp2_max_hyst_group0,
                         ldvarg239);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_25639;
    default:
    ldv_stop();
    }
    ldv_25639: ;
  } else {
  }
  goto ldv_25260;
  case 82: ;
  if (ldv_state_variable_47 != 0) {
    tmp___292 = __VERIFIER_nondet_int();
    switch (tmp___292) {
    case 0: ;
    if (ldv_state_variable_47 == 1) {
      show_vid_reg(ldvarg242, ldvarg244, ldvarg243);
      ldv_state_variable_47 = 1;
    } else {
    }
    goto ldv_25644;
    default:
    ldv_stop();
    }
    ldv_25644: ;
  } else {
  }
  goto ldv_25260;
  case 83: ;
  if (ldv_state_variable_8 != 0) {
    tmp___293 = __VERIFIER_nondet_int();
    switch (tmp___293) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      store_pwm(sensor_dev_attr_pwm2_group1, sensor_dev_attr_pwm2_group0, (char const *)ldvarg247,
                ldvarg246);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_25648;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      show_pwm(sensor_dev_attr_pwm2_group1, sensor_dev_attr_pwm2_group0, ldvarg245);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_25648;
    default:
    ldv_stop();
    }
    ldv_25648: ;
  } else {
  }
  goto ldv_25260;
  case 84: ;
  if (ldv_state_variable_38 != 0) {
    tmp___294 = __VERIFIER_nondet_int();
    switch (tmp___294) {
    case 0: ;
    if (ldv_state_variable_38 == 1) {
      show_alarm(ldvarg248, ldvarg250, ldvarg249);
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_25653;
    default:
    ldv_stop();
    }
    ldv_25653: ;
  } else {
  }
  goto ldv_25260;
  case 85: ;
  if (ldv_state_variable_4 != 0) {
    tmp___295 = __VERIFIER_nondet_int();
    switch (tmp___295) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      store_sensor(sensor_dev_attr_temp1_type_group1, sensor_dev_attr_temp1_type_group0,
                   (char const *)ldvarg253, ldvarg252);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_25657;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      show_sensor(sensor_dev_attr_temp1_type_group1, sensor_dev_attr_temp1_type_group0,
                  ldvarg251);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_25657;
    default:
    ldv_stop();
    }
    ldv_25657: ;
  } else {
  }
  goto ldv_25260;
  case 86: ;
  if (ldv_state_variable_34 != 0) {
    tmp___296 = __VERIFIER_nondet_int();
    switch (tmp___296) {
    case 0: ;
    if (ldv_state_variable_34 == 1) {
      show_alarm(ldvarg254, ldvarg256, ldvarg255);
      ldv_state_variable_34 = 1;
    } else {
    }
    goto ldv_25662;
    default:
    ldv_stop();
    }
    ldv_25662: ;
  } else {
  }
  goto ldv_25260;
  case 87: ;
  if (ldv_state_variable_37 != 0) {
    tmp___297 = __VERIFIER_nondet_int();
    switch (tmp___297) {
    case 0: ;
    if (ldv_state_variable_37 == 1) {
      show_alarm(ldvarg257, ldvarg259, ldvarg258);
      ldv_state_variable_37 = 1;
    } else {
    }
    goto ldv_25666;
    default:
    ldv_stop();
    }
    ldv_25666: ;
  } else {
  }
  goto ldv_25260;
  case 88: ;
  if (ldv_state_variable_43 != 0) {
    tmp___298 = __VERIFIER_nondet_int();
    switch (tmp___298) {
    case 0: ;
    if (ldv_state_variable_43 == 1) {
      show_alarm(ldvarg260, ldvarg262, ldvarg261);
      ldv_state_variable_43 = 1;
    } else {
    }
    goto ldv_25670;
    default:
    ldv_stop();
    }
    ldv_25670: ;
  } else {
  }
  goto ldv_25260;
  case 89: ;
  if (ldv_state_variable_5 != 0) {
    tmp___299 = __VERIFIER_nondet_int();
    switch (tmp___299) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      store_pwm2_enable(dev_attr_pwm2_enable_group1, dev_attr_pwm2_enable_group0,
                        (char const *)ldvarg265, ldvarg264);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_25674;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      show_pwm2_enable(dev_attr_pwm2_enable_group1, dev_attr_pwm2_enable_group0, ldvarg263);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_25674;
    default:
    ldv_stop();
    }
    ldv_25674: ;
  } else {
  }
  goto ldv_25260;
  default:
  ldv_stop();
  }
  ldv_25260: ;
  goto ldv_25678;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_w83781d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_w83781d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock_of_w83781d_data = 1;
int ldv_mutex_lock_interruptible_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_w83781d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_w83781d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_w83781d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_w83781d_data = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_w83781d_data(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_w83781d_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_w83781d_data(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_w83781d_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_w83781d_data == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_w83781d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_w83781d_data != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_w83781d_data = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_w83781d_data(void)
{
  {
  ldv_mutex_lock_lock_of_w83781d_data((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_w83781d_data(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_w83781d_data((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_w83781d_data(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_w83781d_data((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_w83781d_data(void)
{
  {
  ldv_mutex_unlock_lock_of_w83781d_data((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_update_lock_of_w83781d_data = 1;
int ldv_mutex_lock_interruptible_update_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_w83781d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_w83781d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_w83781d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_w83781d_data = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_w83781d_data(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_w83781d_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_w83781d_data(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_w83781d_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_w83781d_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83781d_data == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_update_lock_of_w83781d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83781d_data != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_w83781d_data = 1;
  return;
}
}
void ldv_usb_lock_device_update_lock_of_w83781d_data(void)
{
  {
  ldv_mutex_lock_update_lock_of_w83781d_data((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_update_lock_of_w83781d_data(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_update_lock_of_w83781d_data((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_update_lock_of_w83781d_data(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_update_lock_of_w83781d_data((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_update_lock_of_w83781d_data(void)
{
  {
  ldv_mutex_unlock_update_lock_of_w83781d_data((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_update_lock_of_w83781d_data != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct device *hwmon_device_register(struct device *arg0) {
  return (struct device *)external_alloc();
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
void i2c_del_driver(struct i2c_driver *arg0) {
  return;
}
void *external_alloc(void);
struct i2c_client *i2c_new_dummy(struct i2c_adapter *arg0, u16 arg1) {
  return (struct i2c_client *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int i2c_register_driver(struct module *arg0, struct i2c_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_word_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_byte_data(const struct i2c_client *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_word_data(const struct i2c_client *arg0, u8 arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
void i2c_unregister_device(struct i2c_client *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int sysfs_chmod_file(struct kobject *arg0, const struct attribute *arg1, umode_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vid_from_reg(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 vid_which_vrm() {
  return __VERIFIER_nondet_uchar();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
