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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
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
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
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
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
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
typedef int pao_T__;
typedef int pao_T_____0;
struct lockdep_map;
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
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct vm_area_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
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
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct notifier_block;
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
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
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
   struct __anonstruct_shared_161 shared ;
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
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
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_171 __annonCompField48 ;
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
union __anonunion____missing_field_name_172 {
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
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
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
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct uts_namespace;
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
struct ftrace_ret_stack;
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
   unsigned int btrace_seq ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct nlattr;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
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
struct device_attribute;
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
struct of_device_id;
struct acpi_device_id;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_217 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_217 __annonCompField58 ;
   unsigned long nr_segs ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct __anonstruct_sync_serial_settings_219 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_219 sync_serial_settings;
struct __anonstruct_te1_settings_220 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_220 te1_settings;
struct __anonstruct_raw_hdlc_proto_221 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_221 raw_hdlc_proto;
struct __anonstruct_fr_proto_222 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_222 fr_proto;
struct __anonstruct_fr_proto_pvc_223 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_223 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_224 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_224 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_225 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_225 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_226 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_226 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_227 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_228 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_227 ifr_ifrn ;
   union __anonunion_ifr_ifru_228 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_233 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_232 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_235 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_234 {
   struct __anonstruct____missing_field_name_235 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_234 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_236 {
   struct hlist_node d_alias ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_236 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_240 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_239 {
   struct __anonstruct____missing_field_name_240 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_239 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_244 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_244 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_245 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_245 __annonCompField66 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_248 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_249 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_250 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_248 __annonCompField67 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_249 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_250 __annonCompField69 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_251 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_251 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_253 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_252 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_253 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_252 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_iflags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
union __anonunion_in6_u_268 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_268 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_273 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_274 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_273 __annonCompField73 ;
   union __anonunion____missing_field_name_274 __annonCompField74 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_277 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_276 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_277 __annonCompField75 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_276 __annonCompField76 ;
};
union __anonunion____missing_field_name_280 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_279 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_280 __annonCompField77 ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField78 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_282 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_281 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_282 __annonCompField80 ;
};
union __anonunion____missing_field_name_283 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_284 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_285 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_278 __annonCompField79 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_281 __annonCompField81 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_283 __annonCompField82 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_284 __annonCompField83 ;
   union __anonunion____missing_field_name_285 __annonCompField84 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char erom_version[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
   struct sock **tcp_sk ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct in_addr {
   __be32 s_addr ;
};
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
   struct idr netns_ids ;
   struct ns_common ns ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_302 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_302 possible_net_t;
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
enum ldv_27744 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27744 phy_interface_t;
enum ldv_27798 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27798 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   struct net_device *of_netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   enum dsa_tag_protocol tag_protocol ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct scm_creds {
   u32 pid ;
   kuid_t uid ;
   kgid_t gid ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_skb_parms {
   struct scm_creds creds ;
   __u32 portid ;
   __u32 dst_group ;
   __u32 flags ;
   struct sock *sk ;
   bool nsid_is_set ;
   int nsid ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct hrtimer timer ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
   unsigned long tx_maxrate ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_item_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_315 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_317 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_315 adj_list ;
   struct __anonstruct_all_adj_list_316 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   struct wpan_dev *ieee802154_ptr ;
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_317 __annonCompField94 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct netdev_notifier_info {
   struct net_device *dev ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
typedef int pao_T_____33;
typedef int pao_T_____34;
typedef int pao_T_____35;
typedef int pao_T_____36;
typedef int pao_T_____37;
typedef int pao_T_____38;
typedef int pao_T_____39;
typedef int pao_T_____40;
union inet_addr {
   __u32 all[4U] ;
   __be32 ip ;
   __be32 ip6[4U] ;
   struct in_addr in ;
   struct in6_addr in6 ;
};
struct netpoll {
   struct net_device *dev ;
   char dev_name[16U] ;
   char const *name ;
   union inet_addr local_ip ;
   union inet_addr remote_ip ;
   bool ipv6 ;
   u16 local_port ;
   u16 remote_port ;
   u8 remote_mac[6U] ;
   struct work_struct cleanup_work ;
};
struct netpoll_info {
   atomic_t refcnt ;
   struct semaphore dev_lock ;
   struct sk_buff_head txq ;
   struct delayed_work tx_work ;
   struct netpoll *netpoll ;
   struct callback_head rcu ;
};
struct tcmsg {
   unsigned char tcm_family ;
   unsigned char tcm__pad1 ;
   unsigned short tcm__pad2 ;
   int tcm_ifindex ;
   __u32 tcm_handle ;
   __u32 tcm_parent ;
   __u32 tcm_info ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct genlmsghdr {
   __u8 cmd ;
   __u8 version ;
   __u16 reserved ;
};
struct genl_multicast_group {
   char name[16U] ;
};
struct genl_ops;
struct genl_info;
struct genl_family {
   unsigned int id ;
   unsigned int hdrsize ;
   char name[16U] ;
   unsigned int version ;
   unsigned int maxattr ;
   bool netnsok ;
   bool parallel_ops ;
   int (*pre_doit)(struct genl_ops const * , struct sk_buff * , struct genl_info * ) ;
   void (*post_doit)(struct genl_ops const * , struct sk_buff * , struct genl_info * ) ;
   int (*mcast_bind)(struct net * , int ) ;
   void (*mcast_unbind)(struct net * , int ) ;
   struct nlattr **attrbuf ;
   struct genl_ops const *ops ;
   struct genl_multicast_group const *mcgrps ;
   unsigned int n_ops ;
   unsigned int n_mcgrps ;
   unsigned int mcgrp_offset ;
   struct list_head family_list ;
   struct module *module ;
};
struct genl_info {
   u32 snd_seq ;
   u32 snd_portid ;
   struct nlmsghdr *nlhdr ;
   struct genlmsghdr *genlhdr ;
   void *userhdr ;
   struct nlattr **attrs ;
   possible_net_t _net ;
   void *user_ptr[2U] ;
   struct sock *dst_sk ;
};
struct genl_ops {
   struct nla_policy const *policy ;
   int (*doit)(struct sk_buff * , struct genl_info * ) ;
   int (*dumpit)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   u8 cmd ;
   u8 internal_flags ;
   u8 flags ;
};
struct tc_stats {
   __u64 bytes ;
   __u32 packets ;
   __u32 drops ;
   __u32 overlimits ;
   __u32 bps ;
   __u32 pps ;
   __u32 qlen ;
   __u32 backlog ;
};
struct tc_sizespec {
   unsigned char cell_log ;
   unsigned char size_log ;
   short cell_align ;
   int overhead ;
   unsigned int linklayer ;
   unsigned int mpu ;
   unsigned int mtu ;
   unsigned int tsize ;
};
struct gnet_stats_basic_packed {
   __u64 bytes ;
   __u32 packets ;
};
struct gnet_stats_rate_est64 {
   __u64 bps ;
   __u64 pps ;
};
struct gnet_stats_queue {
   __u32 qlen ;
   __u32 backlog ;
   __u32 drops ;
   __u32 requeues ;
   __u32 overlimits ;
};
struct gnet_stats_basic_cpu {
   struct gnet_stats_basic_packed bstats ;
   struct u64_stats_sync syncp ;
};
struct gnet_dump {
   spinlock_t *lock ;
   struct sk_buff *skb ;
   struct nlattr *tail ;
   int compat_tc_stats ;
   int compat_xstats ;
   void *xstats ;
   int xstats_len ;
   struct tc_stats tc_stats ;
};
struct Qdisc_ops;
struct qdisc_walker;
struct tcf_walker;
struct qdisc_size_table {
   struct callback_head rcu ;
   struct list_head list ;
   struct tc_sizespec szopts ;
   int refcnt ;
   u16 data[] ;
};
struct Qdisc {
   int (*enqueue)(struct sk_buff * , struct Qdisc * ) ;
   struct sk_buff *(*dequeue)(struct Qdisc * ) ;
   unsigned int flags ;
   u32 limit ;
   struct Qdisc_ops const *ops ;
   struct qdisc_size_table *stab ;
   struct list_head list ;
   u32 handle ;
   u32 parent ;
   int (*reshape_fail)(struct sk_buff * , struct Qdisc * ) ;
   void *u32_node ;
   struct Qdisc *__parent ;
   struct netdev_queue *dev_queue ;
   struct gnet_stats_rate_est64 rate_est ;
   struct gnet_stats_basic_cpu *cpu_bstats ;
   struct gnet_stats_queue *cpu_qstats ;
   struct Qdisc *next_sched ;
   struct sk_buff *gso_skb ;
   unsigned long state ;
   struct sk_buff_head q ;
   struct gnet_stats_basic_packed bstats ;
   unsigned int __state ;
   struct gnet_stats_queue qstats ;
   struct callback_head callback_head ;
   int padded ;
   atomic_t refcnt ;
   spinlock_t busylock ;
};
struct Qdisc_class_ops {
   struct netdev_queue *(*select_queue)(struct Qdisc * , struct tcmsg * ) ;
   int (*graft)(struct Qdisc * , unsigned long , struct Qdisc * , struct Qdisc ** ) ;
   struct Qdisc *(*leaf)(struct Qdisc * , unsigned long ) ;
   void (*qlen_notify)(struct Qdisc * , unsigned long ) ;
   unsigned long (*get)(struct Qdisc * , u32 ) ;
   void (*put)(struct Qdisc * , unsigned long ) ;
   int (*change)(struct Qdisc * , u32 , u32 , struct nlattr ** , unsigned long * ) ;
   int (*delete)(struct Qdisc * , unsigned long ) ;
   void (*walk)(struct Qdisc * , struct qdisc_walker * ) ;
   struct tcf_proto **(*tcf_chain)(struct Qdisc * , unsigned long ) ;
   unsigned long (*bind_tcf)(struct Qdisc * , unsigned long , u32 ) ;
   void (*unbind_tcf)(struct Qdisc * , unsigned long ) ;
   int (*dump)(struct Qdisc * , unsigned long , struct sk_buff * , struct tcmsg * ) ;
   int (*dump_stats)(struct Qdisc * , unsigned long , struct gnet_dump * ) ;
};
struct Qdisc_ops {
   struct Qdisc_ops *next ;
   struct Qdisc_class_ops const *cl_ops ;
   char id[16U] ;
   int priv_size ;
   int (*enqueue)(struct sk_buff * , struct Qdisc * ) ;
   struct sk_buff *(*dequeue)(struct Qdisc * ) ;
   struct sk_buff *(*peek)(struct Qdisc * ) ;
   unsigned int (*drop)(struct Qdisc * ) ;
   int (*init)(struct Qdisc * , struct nlattr * ) ;
   void (*reset)(struct Qdisc * ) ;
   void (*destroy)(struct Qdisc * ) ;
   int (*change)(struct Qdisc * , struct nlattr * ) ;
   void (*attach)(struct Qdisc * ) ;
   int (*dump)(struct Qdisc * , struct sk_buff * ) ;
   int (*dump_stats)(struct Qdisc * , struct gnet_dump * ) ;
   struct module *owner ;
};
struct tcf_result {
   unsigned long class ;
   u32 classid ;
};
struct tcf_proto_ops {
   struct list_head head ;
   char kind[16U] ;
   int (*classify)(struct sk_buff * , struct tcf_proto const * , struct tcf_result * ) ;
   int (*init)(struct tcf_proto * ) ;
   bool (*destroy)(struct tcf_proto * , bool ) ;
   unsigned long (*get)(struct tcf_proto * , u32 ) ;
   int (*change)(struct net * , struct sk_buff * , struct tcf_proto * , unsigned long ,
                 u32 , struct nlattr ** , unsigned long * , bool ) ;
   int (*delete)(struct tcf_proto * , unsigned long ) ;
   void (*walk)(struct tcf_proto * , struct tcf_walker * ) ;
   int (*dump)(struct net * , struct tcf_proto * , unsigned long , struct sk_buff * ,
               struct tcmsg * ) ;
   struct module *owner ;
};
struct tcf_proto {
   struct tcf_proto *next ;
   void *root ;
   int (*classify)(struct sk_buff * , struct tcf_proto const * , struct tcf_result * ) ;
   __be16 protocol ;
   u32 prio ;
   u32 classid ;
   struct Qdisc *q ;
   void *data ;
   struct tcf_proto_ops const *ops ;
   struct callback_head rcu ;
};
struct qdisc_skb_cb {
   unsigned int pkt_len ;
   u16 slave_dev_queue_mapping ;
   u16 _pad ;
   unsigned char data[20U] ;
};
enum switchdev_trans {
    SWITCHDEV_TRANS_NONE = 0,
    SWITCHDEV_TRANS_PREPARE = 1,
    SWITCHDEV_TRANS_ABORT = 2,
    SWITCHDEV_TRANS_COMMIT = 3
} ;
enum switchdev_attr_id {
    SWITCHDEV_ATTR_UNDEFINED = 0,
    SWITCHDEV_ATTR_PORT_PARENT_ID = 1,
    SWITCHDEV_ATTR_PORT_STP_STATE = 2,
    SWITCHDEV_ATTR_PORT_BRIDGE_FLAGS = 3
} ;
union __anonunion_u_341 {
   struct netdev_phys_item_id ppid ;
   u8 stp_state ;
   unsigned long brport_flags ;
};
struct switchdev_attr {
   enum switchdev_attr_id id ;
   enum switchdev_trans trans ;
   u32 flags ;
   union __anonunion_u_341 u ;
};
struct fib_info;
enum switchdev_obj_id {
    SWITCHDEV_OBJ_UNDEFINED = 0,
    SWITCHDEV_OBJ_PORT_VLAN = 1,
    SWITCHDEV_OBJ_IPV4_FIB = 2,
    SWITCHDEV_OBJ_PORT_FDB = 3
} ;
struct switchdev_obj_vlan {
   u16 flags ;
   u16 vid_begin ;
   u16 vid_end ;
};
struct switchdev_obj_ipv4_fib {
   u32 dst ;
   int dst_len ;
   struct fib_info *fi ;
   u8 tos ;
   u8 type ;
   u32 nlflags ;
   u32 tb_id ;
};
struct switchdev_obj_fdb {
   unsigned char const *addr ;
   u16 vid ;
};
union __anonunion_u_342 {
   struct switchdev_obj_vlan vlan ;
   struct switchdev_obj_ipv4_fib ipv4_fib ;
   struct switchdev_obj_fdb fdb ;
};
struct switchdev_obj {
   enum switchdev_obj_id id ;
   enum switchdev_trans trans ;
   int (*cb)(struct net_device * , struct switchdev_obj * ) ;
   union __anonunion_u_342 u ;
};
struct switchdev_ops {
   int (*switchdev_port_attr_get)(struct net_device * , struct switchdev_attr * ) ;
   int (*switchdev_port_attr_set)(struct net_device * , struct switchdev_attr * ) ;
   int (*switchdev_port_obj_add)(struct net_device * , struct switchdev_obj * ) ;
   int (*switchdev_port_obj_del)(struct net_device * , struct switchdev_obj * ) ;
   int (*switchdev_port_obj_dump)(struct net_device * , struct switchdev_obj * ) ;
};
struct team_pcpu_stats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 rx_multicast ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
   u32 rx_dropped ;
   u32 tx_dropped ;
};
struct team;
struct __anonstruct_state_343 {
   bool linkup ;
   u32 speed ;
   u8 duplex ;
};
struct __anonstruct_user_344 {
   bool linkup ;
   bool linkup_enabled ;
};
struct __anonstruct_orig_345 {
   unsigned char dev_addr[32U] ;
   unsigned int mtu ;
};
struct team_port {
   struct net_device *dev ;
   struct hlist_node hlist ;
   struct list_head list ;
   struct team *team ;
   int index ;
   bool linkup ;
   struct __anonstruct_state_343 state ;
   struct __anonstruct_user_344 user ;
   bool changed ;
   bool removed ;
   struct __anonstruct_orig_345 orig ;
   struct netpoll *np ;
   s32 priority ;
   u16 queue_id ;
   struct list_head qom_list ;
   struct callback_head rcu ;
   long mode_priv[0U] ;
};
struct team_mode_ops {
   int (*init)(struct team * ) ;
   void (*exit)(struct team * ) ;
   rx_handler_result_t (*receive)(struct team * , struct team_port * , struct sk_buff * ) ;
   bool (*transmit)(struct team * , struct sk_buff * ) ;
   int (*port_enter)(struct team * , struct team_port * ) ;
   void (*port_leave)(struct team * , struct team_port * ) ;
   void (*port_change_dev_addr)(struct team * , struct team_port * ) ;
   void (*port_enabled)(struct team * , struct team_port * ) ;
   void (*port_disabled)(struct team * , struct team_port * ) ;
};
enum team_option_type {
    TEAM_OPTION_TYPE_U32 = 0,
    TEAM_OPTION_TYPE_STRING = 1,
    TEAM_OPTION_TYPE_BINARY = 2,
    TEAM_OPTION_TYPE_BOOL = 3,
    TEAM_OPTION_TYPE_S32 = 4
} ;
struct team_option_inst_info {
   u32 array_index ;
   struct team_port *port ;
};
struct __anonstruct_bin_val_347 {
   void const *ptr ;
   u32 len ;
};
union __anonunion_data_346 {
   u32 u32_val ;
   char const *str_val ;
   struct __anonstruct_bin_val_347 bin_val ;
   bool bool_val ;
   s32 s32_val ;
};
struct team_gsetter_ctx {
   union __anonunion_data_346 data ;
   struct team_option_inst_info *info ;
};
struct team_option {
   struct list_head list ;
   char const *name ;
   bool per_port ;
   unsigned int array_size ;
   enum team_option_type type ;
   int (*init)(struct team * , struct team_option_inst_info * ) ;
   int (*getter)(struct team * , struct team_gsetter_ctx * ) ;
   int (*setter)(struct team * , struct team_gsetter_ctx * ) ;
};
struct team_mode {
   char const *kind ;
   struct module *owner ;
   size_t priv_size ;
   size_t port_priv_size ;
   struct team_mode_ops const *ops ;
};
struct __anonstruct_notify_peers_348 {
   unsigned int count ;
   unsigned int interval ;
   atomic_t count_pending ;
   struct delayed_work dw ;
};
struct __anonstruct_mcast_rejoin_349 {
   unsigned int count ;
   unsigned int interval ;
   atomic_t count_pending ;
   struct delayed_work dw ;
};
struct team {
   struct net_device *dev ;
   struct team_pcpu_stats *pcpu_stats ;
   struct mutex lock ;
   int en_port_count ;
   struct hlist_head en_port_hlist[16U] ;
   struct list_head port_list ;
   struct list_head option_list ;
   struct list_head option_inst_list ;
   struct team_mode const *mode ;
   struct team_mode_ops ops ;
   bool user_carrier_enabled ;
   bool queue_override_enabled ;
   struct list_head *qom_lists ;
   bool port_mtu_change_allowed ;
   struct __anonstruct_notify_peers_348 notify_peers ;
   struct __anonstruct_mcast_rejoin_349 mcast_rejoin ;
   long mode_priv[4U] ;
};
union __anonunion___u_363 {
   void *__val ;
   char __c[1U] ;
};
struct team_option_inst {
   struct list_head list ;
   struct list_head tmp_list ;
   struct team_option *option ;
   struct team_option_inst_info info ;
   bool changed ;
   bool removed ;
};
struct team_mode_item {
   struct list_head list ;
   struct team_mode const *mode ;
};
typedef u32 pao_T_____41;
typedef u32 pao_T_____42;
typedef u32 pao_T_____43;
typedef u32 pao_T_____44;
union __anonunion___u_365 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_367 {
   struct list_head *__val ;
   char __c[1U] ;
};
typedef u32 pao_T_____45;
typedef u32 pao_T_____46;
typedef u32 pao_T_____47;
typedef u32 pao_T_____48;
union __anonunion___u_371 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_373 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_375 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_377 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_379 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_381 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_383 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_385 {
   struct list_head *__val ;
   char __c[1U] ;
};
typedef int team_nl_send_func_t(struct sk_buff * , struct team * , u32 );
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void __read_once_size(void const volatile *p , void *res , int size )
{
  {
  switch (size) {
  case 1:
  *((__u8 *)res) = *((__u8 volatile *)p);
  goto ldv_880;
  case 2:
  *((__u16 *)res) = *((__u16 volatile *)p);
  goto ldv_880;
  case 4:
  *((__u32 *)res) = *((__u32 volatile *)p);
  goto ldv_880;
  case 8:
  *((__u64 *)res) = *((__u64 volatile *)p);
  goto ldv_880;
  default:
  __asm__ volatile ("": : : "memory");
  memcpy(res, (void const *)p, (unsigned long )size);
  __asm__ volatile ("": : : "memory");
  }
  ldv_880: ;
  return;
}
}
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern void __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * ,
                                 char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern unsigned long this_cpu_off ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_possible_mask ;
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 117);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (831), "i" (12UL));
    ldv_4860: ;
    goto ldv_4860;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (43UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void arch_local_irq_restore(unsigned long f )
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (836), "i" (12UL));
    ldv_4870: ;
    goto ldv_4870;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
}
}
__inline static void arch_local_irq_disable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (841), "i" (12UL));
    ldv_4879: ;
    goto ldv_4879;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long arch_local_irq_save(void)
{
  unsigned long f ;
  {
  f = arch_local_save_flags();
  arch_local_irq_disable();
  return (f);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  switch (4UL) {
  case 1UL:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 2UL:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 4UL:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 8UL:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5679: ;
  return (__ret);
}
}
__inline static int atomic_dec_if_positive(atomic_t *v )
{
  int c ;
  int old ;
  int dec ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5853:
  dec = c + -1;
  tmp = ldv__builtin_expect(dec < 0, 0L);
  if (tmp != 0L) {
    goto ldv_5852;
  } else {
  }
  old = atomic_cmpxchg(v, c, dec);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5852;
  } else {
  }
  c = old;
  goto ldv_5853;
  ldv_5852: ;
  return (dec);
}
}
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6059;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6059;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6059;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6059;
  default:
  __bad_percpu_size();
  }
  ldv_6059: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6071;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6071;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6071;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6071;
  default:
  __bad_percpu_size();
  }
  ldv_6071: ;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
__inline static void __rcu_read_lock(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
extern void synchronize_rcu_bh(void) ;
extern void kfree_call_rcu(struct callback_head * , void (*)(struct callback_head * ) ) ;
extern bool rcu_is_watching(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 0, (struct lockdep_map *)0, 0UL);
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, 0UL);
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
extern int rcu_read_lock_held(void) ;
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock();
  rcu_lock_release(& rcu_lock_map);
  return;
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_12(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_13(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_6(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
__inline static int notifier_to_errno(int ret )
{
  {
  ret = ret & -32769;
  return (ret > 1 ? 1 - ret : 0);
}
}
extern void *__alloc_percpu(size_t , size_t ) ;
extern void free_percpu(void * ) ;
extern int __request_module(bool , char const * , ...) ;
bool ldv_try_module_get_10(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head->prev, head);
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  entry->prev = (struct list_head *)-2401263026316508672L;
  return;
}
}
__inline static void hlist_del_rcu(struct hlist_node *n )
{
  {
  __hlist_del(n);
  n->pprev = (struct hlist_node **)-2401263026316508672L;
  return;
}
}
extern void __compiletime_assert_402(void) ;
__inline static void hlist_add_head_rcu(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
  bool __cond ;
  struct hlist_node *__var ;
  {
  first = h->first;
  n->next = first;
  n->pprev = & h->first;
  __cond = 0;
  if ((int )__cond) {
    __compiletime_assert_402();
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __var = (struct hlist_node *)0;
  *((struct hlist_node * volatile *)(& h->first)) = n;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
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
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct work_struct *ldv_work_struct_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
struct nlattr **team_link_ops_group2 ;
int ldv_work_2_0 ;
struct net_device *team_link_ops_group1 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct work_struct *ldv_work_struct_1_2 ;
struct net_device *team_netdev_ops_group1 ;
struct work_struct *ldv_work_struct_2_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
struct nlattr **team_link_ops_group0 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
struct net_device *team_ethtool_ops_group0 ;
void ldv_net_device_ops_6(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_2(void) ;
void work_init_1(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_initialize_ethtool_ops_5(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void ldv_initialize_rtnl_link_ops_4(void) ;
void invoke_work_2(void) ;
extern unsigned char const _ctype[] ;
extern void get_random_bytes(void * , int ) ;
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  return (tmp);
}
}
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
__inline static int skb_shared(struct sk_buff const *skb )
{
  int tmp ;
  {
  tmp = atomic_read(& skb->users);
  return (tmp != 1);
}
}
__inline static struct sk_buff *skb_share_check(struct sk_buff *skb , gfp_t pri )
{
  struct sk_buff *nskb ;
  struct sk_buff *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((pri & 16U) != 0U) {
    __might_sleep("include/linux/skbuff.h", 1196, 0);
  } else {
  }
  tmp___1 = skb_shared((struct sk_buff const *)skb);
  if (tmp___1 != 0) {
    tmp = skb_clone(skb, pri);
    nskb = tmp;
    tmp___0 = ldv__builtin_expect((unsigned long )nskb != (unsigned long )((struct sk_buff *)0),
                               1L);
    if (tmp___0 != 0L) {
      consume_skb(skb);
    } else {
      kfree_skb(skb);
    }
    skb = nskb;
  } else {
  }
  return (skb);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  tmp = skb_is_nonlinear(skb);
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
__inline static void skb_set_queue_mapping(struct sk_buff *skb , u16 queue_mapping )
{
  {
  skb->queue_mapping = queue_mapping;
  return;
}
}
__inline static u16 skb_get_rx_queue(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((u16 )skb->queue_mapping) + 65535U);
}
}
__inline static bool skb_rx_queue_recorded(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((unsigned short )skb->queue_mapping) != 0U);
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern int __ethtool_get_settings(struct net_device * , struct ethtool_cmd * ) ;
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static void u64_stats_init(struct u64_stats_sync *syncp )
{
  {
  return;
}
}
__inline static unsigned int u64_stats_fetch_begin_irq(struct u64_stats_sync const *syncp )
{
  {
  return (0U);
}
}
__inline static bool u64_stats_fetch_retry_irq(struct u64_stats_sync const *syncp ,
                                               unsigned int start )
{
  {
  return (0);
}
}
__inline static struct net *read_pnet(possible_net_t const *pnet )
{
  {
  return ((struct net *)pnet->net);
}
}
extern int netlink_unicast(struct sock * , struct sk_buff * , __u32 , int ) ;
extern int netlink_broadcast(struct sock * , struct sk_buff * , __u32 , __u32 ,
                             gfp_t ) ;
extern struct nlmsghdr *__nlmsg_put(struct sk_buff * , u32 , u32 , int , int ,
                                    int ) ;
__inline static void netdev_for_each_tx_queue(struct net_device *dev , void (*f)(struct net_device * ,
                                                                                 struct netdev_queue * ,
                                                                                 void * ) ,
                                              void *arg )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_42041;
  ldv_42040:
  (*f)(dev, dev->_tx + (unsigned long )i, arg);
  i = i + 1U;
  ldv_42041: ;
  if (dev->num_tx_queues > i) {
    goto ldv_42040;
  } else {
  }
  return;
}
}
__inline static struct net *dev_net(struct net_device const *dev )
{
  struct net *tmp ;
  {
  tmp = read_pnet(& dev->nd_net);
  return (tmp);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern int register_netdevice_notifier(struct notifier_block * ) ;
extern int unregister_netdevice_notifier(struct notifier_block * ) ;
__inline static struct net_device *netdev_notifier_info_to_dev(struct netdev_notifier_info const *info )
{
  {
  return ((struct net_device *)info->dev);
}
}
extern int call_netdevice_notifiers(unsigned long , struct net_device * ) ;
extern int dev_open(struct net_device * ) ;
extern int dev_close(struct net_device * ) ;
extern void dev_disable_lro(struct net_device * ) ;
extern int dev_queue_xmit_sk(struct sock * , struct sk_buff * ) ;
__inline static int dev_queue_xmit(struct sk_buff *skb )
{
  int tmp ;
  {
  tmp = dev_queue_xmit_sk(skb->sk, skb);
  return (tmp);
}
}
extern int register_netdevice(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
extern struct net_device *dev_get_by_index(struct net * , int ) ;
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern int netdev_rx_handler_register(struct net_device * , rx_handler_func_t * ,
                                      void * ) ;
extern void netdev_rx_handler_unregister(struct net_device * ) ;
extern int dev_set_mtu(struct net_device * , int ) ;
extern int dev_set_mac_address(struct net_device * , struct sockaddr * ) ;
__inline static void dev_put(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL:
  pao_ID__ = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_42763;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42763;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42763;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_42763;
  default:
  __bad_percpu_size();
  }
  ldv_42763: ;
  goto ldv_42768;
  case 2UL:
  pao_ID_____0 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_42774;
  case 2UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42774;
  case 4UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42774;
  case 8UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_42774;
  default:
  __bad_percpu_size();
  }
  ldv_42774: ;
  goto ldv_42768;
  case 4UL:
  pao_ID_____1 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_42784;
  case 2UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42784;
  case 4UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42784;
  case 8UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_42784;
  default:
  __bad_percpu_size();
  }
  ldv_42784: ;
  goto ldv_42768;
  case 8UL:
  pao_ID_____2 = -1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (-1));
  }
  goto ldv_42794;
  case 2UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42794;
  case 4UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (-1));
  }
  goto ldv_42794;
  case 8UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (-1));
  }
  goto ldv_42794;
  default:
  __bad_percpu_size();
  }
  ldv_42794: ;
  goto ldv_42768;
  default:
  __bad_size_call_parameter();
  goto ldv_42768;
  }
  ldv_42768: ;
  return;
}
}
__inline static void dev_hold(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL:
  pao_ID__ = 1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (1));
  }
  goto ldv_42809;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42809;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42809;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (1));
  }
  goto ldv_42809;
  default:
  __bad_percpu_size();
  }
  ldv_42809: ;
  goto ldv_42814;
  case 2UL:
  pao_ID_____0 = 1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (1));
  }
  goto ldv_42820;
  case 2UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42820;
  case 4UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42820;
  case 8UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (1));
  }
  goto ldv_42820;
  default:
  __bad_percpu_size();
  }
  ldv_42820: ;
  goto ldv_42814;
  case 4UL:
  pao_ID_____1 = 1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (1));
  }
  goto ldv_42830;
  case 2UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42830;
  case 4UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42830;
  case 8UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (1));
  }
  goto ldv_42830;
  default:
  __bad_percpu_size();
  }
  ldv_42830: ;
  goto ldv_42814;
  case 8UL:
  pao_ID_____2 = 1;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "qi" (1));
  }
  goto ldv_42840;
  case 2UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42840;
  case 4UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "ri" (1));
  }
  goto ldv_42840;
  case 8UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (*(dev->pcpu_refcnt)): "re" (1));
  }
  goto ldv_42840;
  default:
  __bad_percpu_size();
  }
  ldv_42840: ;
  goto ldv_42814;
  default:
  __bad_size_call_parameter();
  goto ldv_42814;
  }
  ldv_42814: ;
  return;
}
}
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void ether_setup(struct net_device * ) ;
extern int dev_uc_sync_multiple(struct net_device * , struct net_device * ) ;
extern void dev_uc_unsync(struct net_device * , struct net_device * ) ;
extern void dev_uc_flush(struct net_device * ) ;
extern int dev_mc_sync_multiple(struct net_device * , struct net_device * ) ;
extern void dev_mc_unsync(struct net_device * , struct net_device * ) ;
extern void dev_mc_flush(struct net_device * ) ;
extern int dev_set_promiscuity(struct net_device * , int ) ;
extern int dev_set_allmulti(struct net_device * , int ) ;
extern int netdev_master_upper_dev_link(struct net_device * , struct net_device * ) ;
extern void netdev_upper_dev_unlink(struct net_device * , struct net_device * ) ;
extern netdev_features_t netdev_increment_features(netdev_features_t , netdev_features_t ,
                                                   netdev_features_t ) ;
__inline static netdev_features_t netdev_add_tso_features(netdev_features_t features ,
                                                          netdev_features_t mask )
{
  netdev_features_t tmp ;
  {
  tmp = netdev_increment_features(features, 1638400ULL, mask);
  return (tmp);
}
}
extern void netdev_change_features(struct net_device * ) ;
extern netdev_features_t passthru_features_check(struct sk_buff * , struct net_device * ,
                                                 netdev_features_t ) ;
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern int __netpoll_setup(struct netpoll * , struct net_device * ) ;
extern void __netpoll_cleanup(struct netpoll * ) ;
extern void netpoll_send_skb_on_dev(struct netpoll * , struct sk_buff * , struct net_device * ) ;
__inline static void netpoll_send_skb(struct netpoll *np , struct sk_buff *skb )
{
  unsigned long flags ;
  int tmp ;
  {
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  netpoll_send_skb_on_dev(np, skb, np->dev);
  tmp = arch_irqs_disabled_flags(flags);
  if (tmp != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return;
}
}
__inline static bool netpoll_tx_running(struct net_device *dev )
{
  unsigned long _flags ;
  int tmp ;
  {
  _flags = arch_local_save_flags();
  tmp = arch_irqs_disabled_flags(_flags);
  return (tmp != 0);
}
}
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  u32 a ;
  {
  a = *((u32 const *)addr);
  return ((a & 1U) != 0U);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static void eth_random_addr(u8 *addr )
{
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  return;
}
}
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
  return;
}
}
__inline static void eth_hw_addr_inherit(struct net_device *dst , struct net_device *src )
{
  {
  dst->addr_assign_type = src->addr_assign_type;
  ether_addr_copy(dst->dev_addr, (u8 const *)src->dev_addr);
  return;
}
}
extern void rtnl_unlock(void) ;
extern int rtnl_trylock(void) ;
extern int lockdep_rtnl_is_held(void) ;
extern int vlan_vid_add(struct net_device * , __be16 , u16 ) ;
extern void vlan_vid_del(struct net_device * , __be16 , u16 ) ;
extern int vlan_vids_add_by_dev(struct net_device * , struct net_device const * ) ;
extern void vlan_vids_del_by_dev(struct net_device * , struct net_device const * ) ;
extern bool vlan_uses_dev(struct net_device const * ) ;
extern int nla_parse(struct nlattr ** , int , struct nlattr const * , int , struct nla_policy const * ) ;
extern int nla_put(struct sk_buff * , int , int , void const * ) ;
__inline static int nlmsg_msg_size(int payload )
{
  {
  return (payload + 16);
}
}
__inline static int nlmsg_total_size(int payload )
{
  int tmp ;
  {
  tmp = nlmsg_msg_size(payload);
  return ((int )((unsigned int )tmp + 3U) & -4);
}
}
__inline static struct nlmsghdr *nlmsg_put(struct sk_buff *skb , u32 portid , u32 seq ,
                                           int type , int payload , int flags )
{
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct nlmsghdr *tmp___2 ;
  {
  tmp = skb_tailroom((struct sk_buff const *)skb);
  tmp___0 = nlmsg_total_size(payload);
  tmp___1 = ldv__builtin_expect(tmp < tmp___0, 0L);
  if (tmp___1 != 0L) {
    return ((struct nlmsghdr *)0);
  } else {
  }
  tmp___2 = __nlmsg_put(skb, portid, seq, type, payload, flags);
  return (tmp___2);
}
}
__inline static struct sk_buff *nlmsg_new(size_t payload , gfp_t flags )
{
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  tmp = nlmsg_total_size((int )payload);
  tmp___0 = alloc_skb((unsigned int )tmp, flags);
  return (tmp___0);
}
}
__inline static void nlmsg_end(struct sk_buff *skb , struct nlmsghdr *nlh )
{
  unsigned char *tmp ;
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  nlh->nlmsg_len = (__u32 )((long )tmp) - (__u32 )((long )nlh);
  return;
}
}
__inline static void nlmsg_trim(struct sk_buff *skb , void const *mark )
{
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned long )mark != (unsigned long )((void const *)0)) {
    __ret_warn_on = (unsigned long )skb->data > (unsigned long )((unsigned char *)mark);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/netlink.h", 523);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    skb_trim(skb, (unsigned int )((long )mark) - (unsigned int )((long )skb->data));
  } else {
  }
  return;
}
}
__inline static void nlmsg_cancel(struct sk_buff *skb , struct nlmsghdr *nlh )
{
  {
  nlmsg_trim(skb, (void const *)nlh);
  return;
}
}
__inline static void nlmsg_free(struct sk_buff *skb )
{
  {
  kfree_skb(skb);
  return;
}
}
__inline static int nlmsg_multicast(struct sock *sk , struct sk_buff *skb , u32 portid ,
                                    unsigned int group , gfp_t flags )
{
  int err ;
  {
  ((struct netlink_skb_parms *)(& skb->cb))->dst_group = group;
  err = netlink_broadcast(sk, skb, portid, group, flags);
  if (err > 0) {
    err = 0;
  } else {
  }
  return (err);
}
}
__inline static int nlmsg_unicast(struct sock *sk , struct sk_buff *skb , u32 portid )
{
  int err ;
  {
  err = netlink_unicast(sk, skb, portid, 64);
  if (err > 0) {
    err = 0;
  } else {
  }
  return (err);
}
}
__inline static int nla_type(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_type & -49153);
}
}
__inline static void *nla_data(struct nlattr const *nla )
{
  {
  return ((void *)nla + 4U);
}
}
__inline static int nla_len(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_len + -4);
}
}
__inline static int nla_ok(struct nlattr const *nla , int remaining )
{
  {
  return ((remaining > 3 && (unsigned int )((unsigned short )nla->nla_len) > 3U) && (int )nla->nla_len <= remaining);
}
}
__inline static struct nlattr *nla_next(struct nlattr const *nla , int *remaining )
{
  int totlen ;
  {
  totlen = ((int )nla->nla_len + 3) & -4;
  *remaining = *remaining - totlen;
  return ((struct nlattr *)nla + (unsigned long )totlen);
}
}
__inline static int nla_parse_nested(struct nlattr **tb , int maxtype , struct nlattr const *nla ,
                                     struct nla_policy const *policy )
{
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = nla_len(nla);
  tmp___0 = nla_data(nla);
  tmp___1 = nla_parse(tb, maxtype, (struct nlattr const *)tmp___0, tmp, policy);
  return (tmp___1);
}
}
__inline static int nla_put_u8(struct sk_buff *skb , int attrtype , u8 value )
{
  int tmp ;
  {
  tmp = nla_put(skb, attrtype, 1, (void const *)(& value));
  return (tmp);
}
}
__inline static int nla_put_u32(struct sk_buff *skb , int attrtype , u32 value )
{
  int tmp ;
  {
  tmp = nla_put(skb, attrtype, 4, (void const *)(& value));
  return (tmp);
}
}
__inline static int nla_put_s32(struct sk_buff *skb , int attrtype , s32 value )
{
  int tmp ;
  {
  tmp = nla_put(skb, attrtype, 4, (void const *)(& value));
  return (tmp);
}
}
__inline static int nla_put_string(struct sk_buff *skb , int attrtype , char const *str )
{
  size_t tmp ;
  int tmp___0 ;
  {
  tmp = strlen(str);
  tmp___0 = nla_put(skb, attrtype, (int )((unsigned int )tmp + 1U), (void const *)str);
  return (tmp___0);
}
}
__inline static int nla_put_flag(struct sk_buff *skb , int attrtype )
{
  int tmp ;
  {
  tmp = nla_put(skb, attrtype, 0, (void const *)0);
  return (tmp);
}
}
__inline static u32 nla_get_u32(struct nlattr const *nla )
{
  void *tmp ;
  {
  tmp = nla_data(nla);
  return (*((u32 *)tmp));
}
}
__inline static u8 nla_get_u8(struct nlattr const *nla )
{
  void *tmp ;
  {
  tmp = nla_data(nla);
  return (*((u8 *)tmp));
}
}
__inline static s32 nla_get_s32(struct nlattr const *nla )
{
  void *tmp ;
  {
  tmp = nla_data(nla);
  return (*((s32 *)tmp));
}
}
__inline static struct nlattr *nla_nest_start(struct sk_buff *skb , int attrtype )
{
  struct nlattr *start ;
  unsigned char *tmp ;
  int tmp___0 ;
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  start = (struct nlattr *)tmp;
  tmp___0 = nla_put(skb, attrtype, 0, (void const *)0);
  if (tmp___0 < 0) {
    return ((struct nlattr *)0);
  } else {
  }
  return (start);
}
}
__inline static int nla_nest_end(struct sk_buff *skb , struct nlattr *start )
{
  unsigned char *tmp ;
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  start->nla_len = (int )((__u16 )((long )tmp)) - (int )((__u16 )((long )start));
  return ((int )skb->len);
}
}
__inline static void nla_nest_cancel(struct sk_buff *skb , struct nlattr *start )
{
  {
  nlmsg_trim(skb, (void const *)start);
  return;
}
}
extern int rtnl_link_register(struct rtnl_link_ops * ) ;
extern void rtnl_link_unregister(struct rtnl_link_ops * ) ;
__inline static struct net *genl_info_net(struct genl_info *info )
{
  struct net *tmp ;
  {
  tmp = read_pnet((possible_net_t const *)(& info->_net));
  return (tmp);
}
}
extern int __genl_register_family(struct genl_family * ) ;
__inline static int _genl_register_family_with_ops_grps(struct genl_family *family ,
                                                        struct genl_ops const *ops ,
                                                        size_t n_ops , struct genl_multicast_group const *mcgrps ,
                                                        size_t n_mcgrps )
{
  int tmp ;
  {
  family->module = & __this_module;
  family->ops = ops;
  family->n_ops = (unsigned int )n_ops;
  family->mcgrps = mcgrps;
  family->n_mcgrps = (unsigned int )n_mcgrps;
  tmp = __genl_register_family(family);
  return (tmp);
}
}
extern int genl_unregister_family(struct genl_family * ) ;
extern void *genlmsg_put(struct sk_buff * , u32 , u32 , struct genl_family * , int ,
                         u8 ) ;
__inline static void genlmsg_end(struct sk_buff *skb , void *hdr )
{
  {
  nlmsg_end(skb, (struct nlmsghdr *)hdr + 0xffffffffffffffecUL);
  return;
}
}
__inline static void genlmsg_cancel(struct sk_buff *skb , void *hdr )
{
  {
  if ((unsigned long )hdr != (unsigned long )((void *)0)) {
    nlmsg_cancel(skb, (struct nlmsghdr *)hdr + 0xffffffffffffffecUL);
  } else {
  }
  return;
}
}
__inline static int genlmsg_multicast_netns(struct genl_family *family , struct net *net ,
                                            struct sk_buff *skb , u32 portid , unsigned int group ,
                                            gfp_t flags )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  __ret_warn_once = family->n_mcgrps <= group;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/genetlink.h", 297);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  group = family->mcgrp_offset + group;
  tmp___3 = nlmsg_multicast(net->genl_sock, skb, portid, group, flags);
  return (tmp___3);
}
}
__inline static int genlmsg_unicast(struct net *net , struct sk_buff *skb , u32 portid )
{
  int tmp ;
  {
  tmp = nlmsg_unicast(net->genl_sock, skb, portid);
  return (tmp);
}
}
__inline static int genlmsg_msg_size(int payload )
{
  {
  return ((int )((unsigned int )payload + 4U));
}
}
__inline static int genlmsg_total_size(int payload )
{
  int tmp ;
  {
  tmp = genlmsg_msg_size(payload);
  return ((int )((unsigned int )tmp + 3U) & -4);
}
}
__inline static struct sk_buff *genlmsg_new(size_t payload , gfp_t flags )
{
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  tmp = genlmsg_total_size((int )payload);
  tmp___0 = nlmsg_new((size_t )tmp, flags);
  return (tmp___0);
}
}
__inline static struct qdisc_skb_cb *qdisc_skb_cb(struct sk_buff const *skb )
{
  {
  return ((struct qdisc_skb_cb *)(& skb->cb));
}
}
extern int switchdev_port_bridge_getlink(struct sk_buff * , u32 , u32 , struct net_device * ,
                                         u32 , int ) ;
extern int switchdev_port_bridge_setlink(struct net_device * , struct nlmsghdr * ,
                                         u16 ) ;
extern int switchdev_port_bridge_dellink(struct net_device * , struct nlmsghdr * ,
                                         u16 ) ;
extern int switchdev_port_fdb_add(struct ndmsg * , struct nlattr ** , struct net_device * ,
                                  unsigned char const * , u16 , u16 ) ;
extern int switchdev_port_fdb_del(struct ndmsg * , struct nlattr ** , struct net_device * ,
                                  unsigned char const * , u16 ) ;
extern int switchdev_port_fdb_dump(struct sk_buff * , struct netlink_callback * ,
                                   struct net_device * , struct net_device * , int ) ;
__inline static bool team_port_enabled(struct team_port *port )
{
  {
  return (port->index != -1);
}
}
__inline static void team_netpoll_send_skb(struct team_port *port , struct sk_buff *skb )
{
  struct netpoll *np ;
  {
  np = port->np;
  if ((unsigned long )np != (unsigned long )((struct netpoll *)0)) {
    netpoll_send_skb(np, skb);
  } else {
  }
  return;
}
}
int team_modeop_port_enter(struct team *team , struct team_port *port ) ;
void team_modeop_port_change_dev_addr(struct team *team , struct team_port *port ) ;
void team_option_inst_set_change(struct team_option_inst_info *opt_inst_info ) ;
void team_options_change_check(struct team *team ) ;
__inline static int team_dev_queue_xmit(struct team *team , struct team_port *port ,
                                        struct sk_buff *skb )
{
  struct qdisc_skb_cb *tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = qdisc_skb_cb((struct sk_buff const *)skb);
  skb_set_queue_mapping(skb, (int )tmp->slave_dev_queue_mapping);
  skb->dev = port->dev;
  tmp___0 = netpoll_tx_running(team->dev);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    team_netpoll_send_skb(port, skb);
    return (0);
  } else {
  }
  tmp___2 = dev_queue_xmit(skb);
  return (tmp___2);
}
}
__inline static struct hlist_head *team_port_index_hash(struct team *team , int port_index )
{
  {
  return ((struct hlist_head *)(& team->en_port_hlist) + ((unsigned long )port_index & 15UL));
}
}
__inline static struct team_port *team_get_port_by_index(struct team *team , int port_index )
{
  struct team_port *port ;
  struct hlist_head *head ;
  struct hlist_head *tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct team_port *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct team_port *tmp___1 ;
  {
  tmp = team_port_index_hash(team, port_index);
  head = tmp;
  ____ptr = head->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct team_port *)__mptr + 0xfffffffffffffff8UL;
  } else {
    tmp___0 = (struct team_port *)0;
  }
  port = tmp___0;
  goto ldv_47049;
  ldv_47048: ;
  if (port->index == port_index) {
    return (port);
  } else {
  }
  ____ptr___0 = port->hlist.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct team_port *)__mptr___0 + 0xfffffffffffffff8UL;
  } else {
    tmp___1 = (struct team_port *)0;
  }
  port = tmp___1;
  ldv_47049: ;
  if ((unsigned long )port != (unsigned long )((struct team_port *)0)) {
    goto ldv_47048;
  } else {
  }
  return ((struct team_port *)0);
}
}
int team_options_register(struct team *team , struct team_option const *option ,
                          size_t option_count ) ;
void team_options_unregister(struct team *team , struct team_option const *option ,
                             size_t option_count ) ;
int team_mode_register(struct team_mode const *mode ) ;
void team_mode_unregister(struct team_mode const *mode ) ;
static struct team_port *team_port_get_rcu(struct net_device const *dev )
{
  void *________p1 ;
  void *_________p1 ;
  union __anonunion___u_363 __u ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __read_once_size((void const volatile *)(& dev->rx_handler_data), (void *)(& __u.__c),
                   8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_read_lock_held();
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c",
                             46, "suspicious rcu_dereference_check() usage");
    } else {
    }
  } else {
  }
  return ((struct team_port *)________p1);
}
}
static struct team_port *team_port_get_rtnl(struct net_device const *dev )
{
  struct team_port *port ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lockdep_rtnl_is_held();
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c",
                             51, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  port = (struct team_port *)dev->rx_handler_data;
  return (((unsigned int )dev->priv_flags & 262144U) != 0U ? port : (struct team_port *)0);
}
}
static int __set_port_dev_addr(struct net_device *port_dev , unsigned char const *dev_addr )
{
  struct sockaddr addr ;
  int tmp ;
  {
  memcpy((void *)(& addr.sa_data), (void const *)dev_addr, (size_t )port_dev->addr_len);
  addr.sa_family = port_dev->type;
  tmp = dev_set_mac_address(port_dev, & addr);
  return (tmp);
}
}
static int team_port_set_orig_dev_addr(struct team_port *port )
{
  int tmp ;
  {
  tmp = __set_port_dev_addr(port->dev, (unsigned char const *)(& port->orig.dev_addr));
  return (tmp);
}
}
static int team_port_set_team_dev_addr(struct team *team , struct team_port *port )
{
  int tmp ;
  {
  tmp = __set_port_dev_addr(port->dev, (unsigned char const *)(team->dev)->dev_addr);
  return (tmp);
}
}
int team_modeop_port_enter(struct team *team , struct team_port *port )
{
  int tmp ;
  {
  tmp = team_port_set_team_dev_addr(team, port);
  return (tmp);
}
}
static char const __kstrtab_team_modeop_port_enter[23U] =
  { 't', 'e', 'a', 'm',
        '_', 'm', 'o', 'd',
        'e', 'o', 'p', '_',
        'p', 'o', 'r', 't',
        '_', 'e', 'n', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_team_modeop_port_enter ;
struct kernel_symbol const __ksymtab_team_modeop_port_enter = {(unsigned long )(& team_modeop_port_enter), (char const *)(& __kstrtab_team_modeop_port_enter)};
void team_modeop_port_change_dev_addr(struct team *team , struct team_port *port )
{
  {
  team_port_set_team_dev_addr(team, port);
  return;
}
}
static char const __kstrtab_team_modeop_port_change_dev_addr[33U] =
  { 't', 'e', 'a', 'm',
        '_', 'm', 'o', 'd',
        'e', 'o', 'p', '_',
        'p', 'o', 'r', 't',
        '_', 'c', 'h', 'a',
        'n', 'g', 'e', '_',
        'd', 'e', 'v', '_',
        'a', 'd', 'd', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_team_modeop_port_change_dev_addr ;
struct kernel_symbol const __ksymtab_team_modeop_port_change_dev_addr = {(unsigned long )(& team_modeop_port_change_dev_addr), (char const *)(& __kstrtab_team_modeop_port_change_dev_addr)};
static void team_refresh_port_linkup(struct team_port *port )
{
  {
  port->linkup = (int )port->user.linkup_enabled ? (int )port->user.linkup != 0 : (int )port->state.linkup != 0;
  return;
}
}
static struct team_option *__team_find_option(struct team *team , char const *opt_name )
{
  struct team_option *option ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->option_list.next;
  option = (struct team_option *)__mptr;
  goto ldv_47269;
  ldv_47268:
  tmp = strcmp(option->name, opt_name);
  if (tmp == 0) {
    return (option);
  } else {
  }
  __mptr___0 = (struct list_head const *)option->list.next;
  option = (struct team_option *)__mptr___0;
  ldv_47269: ;
  if ((unsigned long )(& option->list) != (unsigned long )(& team->option_list)) {
    goto ldv_47268;
  } else {
  }
  return ((struct team_option *)0);
}
}
static void __team_option_inst_del(struct team_option_inst *opt_inst )
{
  {
  list_del(& opt_inst->list);
  kfree((void const *)opt_inst);
  return;
}
}
static void __team_option_inst_del_option(struct team *team , struct team_option *option )
{
  struct team_option_inst *opt_inst ;
  struct team_option_inst *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  tmp = (struct team_option_inst *)__mptr___0;
  goto ldv_47287;
  ldv_47286: ;
  if ((unsigned long )opt_inst->option == (unsigned long )option) {
    __team_option_inst_del(opt_inst);
  } else {
  }
  opt_inst = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct team_option_inst *)__mptr___1;
  ldv_47287: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_47286;
  } else {
  }
  return;
}
}
static int __team_option_inst_add(struct team *team , struct team_option *option ,
                                  struct team_port *port )
{
  struct team_option_inst *opt_inst ;
  unsigned int array_size ;
  unsigned int i ;
  int err ;
  void *tmp ;
  {
  array_size = option->array_size;
  if (array_size == 0U) {
    array_size = 1U;
  } else {
  }
  i = 0U;
  goto ldv_47299;
  ldv_47298:
  tmp = kmalloc(64UL, 208U);
  opt_inst = (struct team_option_inst *)tmp;
  if ((unsigned long )opt_inst == (unsigned long )((struct team_option_inst *)0)) {
    return (-12);
  } else {
  }
  opt_inst->option = option;
  opt_inst->info.port = port;
  opt_inst->info.array_index = i;
  opt_inst->changed = 1;
  opt_inst->removed = 0;
  list_add_tail(& opt_inst->list, & team->option_inst_list);
  if ((unsigned long )option->init != (unsigned long )((int (*)(struct team * , struct team_option_inst_info * ))0)) {
    err = (*(option->init))(team, & opt_inst->info);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  i = i + 1U;
  ldv_47299: ;
  if (i < array_size) {
    goto ldv_47298;
  } else {
  }
  return (0);
}
}
static int __team_option_inst_add_option(struct team *team , struct team_option *option )
{
  int err ;
  {
  if (! option->per_port) {
    err = __team_option_inst_add(team, option, (struct team_port *)0);
    if (err != 0) {
      goto inst_del_option;
    } else {
    }
  } else {
  }
  return (0);
  inst_del_option:
  __team_option_inst_del_option(team, option);
  return (err);
}
}
static void __team_option_inst_mark_removed_option(struct team *team , struct team_option *option )
{
  struct team_option_inst *opt_inst ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  goto ldv_47317;
  ldv_47316: ;
  if ((unsigned long )opt_inst->option == (unsigned long )option) {
    opt_inst->changed = 1;
    opt_inst->removed = 1;
  } else {
  }
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  opt_inst = (struct team_option_inst *)__mptr___0;
  ldv_47317: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_47316;
  } else {
  }
  return;
}
}
static void __team_option_inst_del_port(struct team *team , struct team_port *port )
{
  struct team_option_inst *opt_inst ;
  struct team_option_inst *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  tmp = (struct team_option_inst *)__mptr___0;
  goto ldv_47332;
  ldv_47331: ;
  if ((int )(opt_inst->option)->per_port && (unsigned long )opt_inst->info.port == (unsigned long )port) {
    __team_option_inst_del(opt_inst);
  } else {
  }
  opt_inst = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct team_option_inst *)__mptr___1;
  ldv_47332: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_47331;
  } else {
  }
  return;
}
}
static int __team_option_inst_add_port(struct team *team , struct team_port *port )
{
  struct team_option *option ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->option_list.next;
  option = (struct team_option *)__mptr;
  goto ldv_47347;
  ldv_47346: ;
  if (! option->per_port) {
    goto ldv_47344;
  } else {
  }
  err = __team_option_inst_add(team, option, port);
  if (err != 0) {
    goto inst_del_port;
  } else {
  }
  ldv_47344:
  __mptr___0 = (struct list_head const *)option->list.next;
  option = (struct team_option *)__mptr___0;
  ldv_47347: ;
  if ((unsigned long )(& option->list) != (unsigned long )(& team->option_list)) {
    goto ldv_47346;
  } else {
  }
  return (0);
  inst_del_port:
  __team_option_inst_del_port(team, port);
  return (err);
}
}
static void __team_option_inst_mark_removed_port(struct team *team , struct team_port *port )
{
  struct team_option_inst *opt_inst ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  goto ldv_47359;
  ldv_47358: ;
  if ((unsigned long )opt_inst->info.port == (unsigned long )port) {
    opt_inst->changed = 1;
    opt_inst->removed = 1;
  } else {
  }
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  opt_inst = (struct team_option_inst *)__mptr___0;
  ldv_47359: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_47358;
  } else {
  }
  return;
}
}
static int __team_options_register(struct team *team , struct team_option const *option ,
                                   size_t option_count )
{
  int i ;
  struct team_option **dst_opts ;
  int err ;
  void *tmp ;
  struct team_option *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = kzalloc(option_count * 8UL, 208U);
  dst_opts = (struct team_option **)tmp;
  if ((unsigned long )dst_opts == (unsigned long )((struct team_option **)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_47371;
  ldv_47370:
  tmp___0 = __team_find_option(team, option->name);
  if ((unsigned long )tmp___0 != (unsigned long )((struct team_option *)0)) {
    err = -17;
    goto alloc_rollback;
  } else {
  }
  tmp___1 = kmemdup((void const *)option, 64UL, 208U);
  *(dst_opts + (unsigned long )i) = (struct team_option *)tmp___1;
  if ((unsigned long )*(dst_opts + (unsigned long )i) == (unsigned long )((struct team_option *)0)) {
    err = -12;
    goto alloc_rollback;
  } else {
  }
  i = i + 1;
  option = option + 1;
  ldv_47371: ;
  if ((size_t )i < option_count) {
    goto ldv_47370;
  } else {
  }
  i = 0;
  goto ldv_47375;
  ldv_47374:
  err = __team_option_inst_add_option(team, *(dst_opts + (unsigned long )i));
  if (err != 0) {
    goto inst_rollback;
  } else {
  }
  list_add_tail(& (*(dst_opts + (unsigned long )i))->list, & team->option_list);
  i = i + 1;
  ldv_47375: ;
  if ((size_t )i < option_count) {
    goto ldv_47374;
  } else {
  }
  kfree((void const *)dst_opts);
  return (0);
  inst_rollback:
  i = i - 1;
  goto ldv_47378;
  ldv_47377:
  __team_option_inst_del_option(team, *(dst_opts + (unsigned long )i));
  i = i - 1;
  ldv_47378: ;
  if (i >= 0) {
    goto ldv_47377;
  } else {
  }
  i = (int )((unsigned int )option_count - 1U);
  alloc_rollback:
  i = i - 1;
  goto ldv_47381;
  ldv_47380:
  kfree((void const *)*(dst_opts + (unsigned long )i));
  i = i - 1;
  ldv_47381: ;
  if (i >= 0) {
    goto ldv_47380;
  } else {
  }
  kfree((void const *)dst_opts);
  return (err);
}
}
static void __team_options_mark_removed(struct team *team , struct team_option const *option ,
                                        size_t option_count )
{
  int i ;
  struct team_option *del_opt ;
  {
  i = 0;
  goto ldv_47391;
  ldv_47390:
  del_opt = __team_find_option(team, option->name);
  if ((unsigned long )del_opt != (unsigned long )((struct team_option *)0)) {
    __team_option_inst_mark_removed_option(team, del_opt);
  } else {
  }
  i = i + 1;
  option = option + 1;
  ldv_47391: ;
  if ((size_t )i < option_count) {
    goto ldv_47390;
  } else {
  }
  return;
}
}
static void __team_options_unregister(struct team *team , struct team_option const *option ,
                                      size_t option_count )
{
  int i ;
  struct team_option *del_opt ;
  {
  i = 0;
  goto ldv_47401;
  ldv_47400:
  del_opt = __team_find_option(team, option->name);
  if ((unsigned long )del_opt != (unsigned long )((struct team_option *)0)) {
    __team_option_inst_del_option(team, del_opt);
    list_del(& del_opt->list);
    kfree((void const *)del_opt);
  } else {
  }
  i = i + 1;
  option = option + 1;
  ldv_47401: ;
  if ((size_t )i < option_count) {
    goto ldv_47400;
  } else {
  }
  return;
}
}
static void __team_options_change_check(struct team *team ) ;
int team_options_register(struct team *team , struct team_option const *option ,
                          size_t option_count )
{
  int err ;
  {
  err = __team_options_register(team, option, option_count);
  if (err != 0) {
    return (err);
  } else {
  }
  __team_options_change_check(team);
  return (0);
}
}
static char const __kstrtab_team_options_register[22U] =
  { 't', 'e', 'a', 'm',
        '_', 'o', 'p', 't',
        'i', 'o', 'n', 's',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_team_options_register ;
struct kernel_symbol const __ksymtab_team_options_register = {(unsigned long )(& team_options_register), (char const *)(& __kstrtab_team_options_register)};
void team_options_unregister(struct team *team , struct team_option const *option ,
                             size_t option_count )
{
  {
  __team_options_mark_removed(team, option, option_count);
  __team_options_change_check(team);
  __team_options_unregister(team, option, option_count);
  return;
}
}
static char const __kstrtab_team_options_unregister[24U] =
  { 't', 'e', 'a', 'm',
        '_', 'o', 'p', 't',
        'i', 'o', 'n', 's',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_team_options_unregister ;
struct kernel_symbol const __ksymtab_team_options_unregister = {(unsigned long )(& team_options_unregister), (char const *)(& __kstrtab_team_options_unregister)};
static int team_option_get(struct team *team , struct team_option_inst *opt_inst ,
                           struct team_gsetter_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )(opt_inst->option)->getter == (unsigned long )((int (*)(struct team * ,
                                                                              struct team_gsetter_ctx * ))0)) {
    return (-95);
  } else {
  }
  tmp = (*((opt_inst->option)->getter))(team, ctx);
  return (tmp);
}
}
static int team_option_set(struct team *team , struct team_option_inst *opt_inst ,
                           struct team_gsetter_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )(opt_inst->option)->setter == (unsigned long )((int (*)(struct team * ,
                                                                              struct team_gsetter_ctx * ))0)) {
    return (-95);
  } else {
  }
  tmp = (*((opt_inst->option)->setter))(team, ctx);
  return (tmp);
}
}
void team_option_inst_set_change(struct team_option_inst_info *opt_inst_info )
{
  struct team_option_inst *opt_inst ;
  struct team_option_inst_info const *__mptr ;
  {
  __mptr = (struct team_option_inst_info const *)opt_inst_info;
  opt_inst = (struct team_option_inst *)__mptr + 0xffffffffffffffd8UL;
  opt_inst->changed = 1;
  return;
}
}
static char const __kstrtab_team_option_inst_set_change[28U] =
  { 't', 'e', 'a', 'm',
        '_', 'o', 'p', 't',
        'i', 'o', 'n', '_',
        'i', 'n', 's', 't',
        '_', 's', 'e', 't',
        '_', 'c', 'h', 'a',
        'n', 'g', 'e', '\000'};
struct kernel_symbol const __ksymtab_team_option_inst_set_change ;
struct kernel_symbol const __ksymtab_team_option_inst_set_change = {(unsigned long )(& team_option_inst_set_change), (char const *)(& __kstrtab_team_option_inst_set_change)};
void team_options_change_check(struct team *team )
{
  {
  __team_options_change_check(team);
  return;
}
}
static char const __kstrtab_team_options_change_check[26U] =
  { 't', 'e', 'a', 'm',
        '_', 'o', 'p', 't',
        'i', 'o', 'n', 's',
        '_', 'c', 'h', 'a',
        'n', 'g', 'e', '_',
        'c', 'h', 'e', 'c',
        'k', '\000'};
struct kernel_symbol const __ksymtab_team_options_change_check ;
struct kernel_symbol const __ksymtab_team_options_change_check = {(unsigned long )(& team_options_change_check), (char const *)(& __kstrtab_team_options_change_check)};
static struct list_head mode_list = {& mode_list, & mode_list};
static spinlock_t mode_list_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mode_list_lock", 0,
                                                    0UL}}}};
static struct team_mode_item *__find_mode(char const *kind )
{
  struct team_mode_item *mitem ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mode_list.next;
  mitem = (struct team_mode_item *)__mptr;
  goto ldv_47482;
  ldv_47481:
  tmp = strcmp((mitem->mode)->kind, kind);
  if (tmp == 0) {
    return (mitem);
  } else {
  }
  __mptr___0 = (struct list_head const *)mitem->list.next;
  mitem = (struct team_mode_item *)__mptr___0;
  ldv_47482: ;
  if ((unsigned long )(& mitem->list) != (unsigned long )(& mode_list)) {
    goto ldv_47481;
  } else {
  }
  return ((struct team_mode_item *)0);
}
}
static bool is_good_mode_name(char const *name )
{
  {
  goto ldv_47488;
  ldv_47487: ;
  if ((((int )_ctype[(int )((unsigned char )*name)] & 3) == 0 && ((int )_ctype[(int )((unsigned char )*name)] & 4) == 0) && (int )((signed char )*name) != 95) {
    return (0);
  } else {
  }
  name = name + 1;
  ldv_47488: ;
  if ((int )((signed char )*name) != 0) {
    goto ldv_47487;
  } else {
  }
  return (1);
}
}
int team_mode_register(struct team_mode const *mode )
{
  int err ;
  struct team_mode_item *mitem ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct team_mode_item *tmp___2 ;
  {
  err = 0;
  tmp = is_good_mode_name(mode->kind);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0 || (unsigned long )mode->priv_size > 32UL) {
    return (-22);
  } else {
  }
  tmp___1 = kmalloc(24UL, 208U);
  mitem = (struct team_mode_item *)tmp___1;
  if ((unsigned long )mitem == (unsigned long )((struct team_mode_item *)0)) {
    return (-12);
  } else {
  }
  spin_lock(& mode_list_lock);
  tmp___2 = __find_mode(mode->kind);
  if ((unsigned long )tmp___2 != (unsigned long )((struct team_mode_item *)0)) {
    err = -17;
    kfree((void const *)mitem);
    goto unlock;
  } else {
  }
  mitem->mode = mode;
  list_add_tail(& mitem->list, & mode_list);
  unlock:
  spin_unlock(& mode_list_lock);
  return (err);
}
}
static char const __kstrtab_team_mode_register[19U] =
  { 't', 'e', 'a', 'm',
        '_', 'm', 'o', 'd',
        'e', '_', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_team_mode_register ;
struct kernel_symbol const __ksymtab_team_mode_register = {(unsigned long )(& team_mode_register), (char const *)(& __kstrtab_team_mode_register)};
void team_mode_unregister(struct team_mode const *mode )
{
  struct team_mode_item *mitem ;
  {
  spin_lock(& mode_list_lock);
  mitem = __find_mode(mode->kind);
  if ((unsigned long )mitem != (unsigned long )((struct team_mode_item *)0)) {
    list_del_init(& mitem->list);
    kfree((void const *)mitem);
  } else {
  }
  spin_unlock(& mode_list_lock);
  return;
}
}
static char const __kstrtab_team_mode_unregister[21U] =
  { 't', 'e', 'a', 'm',
        '_', 'm', 'o', 'd',
        'e', '_', 'u', 'n',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_team_mode_unregister ;
struct kernel_symbol const __ksymtab_team_mode_unregister = {(unsigned long )(& team_mode_unregister), (char const *)(& __kstrtab_team_mode_unregister)};
static struct team_mode const *team_mode_get(char const *kind )
{
  struct team_mode_item *mitem ;
  struct team_mode const *mode ;
  bool tmp ;
  int tmp___0 ;
  {
  mode = (struct team_mode const *)0;
  spin_lock(& mode_list_lock);
  mitem = __find_mode(kind);
  if ((unsigned long )mitem == (unsigned long )((struct team_mode_item *)0)) {
    spin_unlock(& mode_list_lock);
    __request_module(1, "team-mode-%s", kind);
    spin_lock(& mode_list_lock);
    mitem = __find_mode(kind);
  } else {
  }
  if ((unsigned long )mitem != (unsigned long )((struct team_mode_item *)0)) {
    mode = mitem->mode;
    tmp = ldv_try_module_get_10(mode->owner);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      mode = (struct team_mode const *)0;
    } else {
    }
  } else {
  }
  spin_unlock(& mode_list_lock);
  return (mode);
}
}
static void team_mode_put(struct team_mode const *mode )
{
  {
  ldv_module_put_11(mode->owner);
  return;
}
}
static bool team_dummy_transmit(struct team *team , struct sk_buff *skb )
{
  {
  dev_kfree_skb_any(skb);
  return (0);
}
}
static rx_handler_result_t team_dummy_receive(struct team *team , struct team_port *port ,
                                              struct sk_buff *skb )
{
  {
  return (1);
}
}
static struct team_mode const __team_no_mode = {"*NOMODE*", 0, 0UL, 0UL, 0};
static bool team_is_mode_set(struct team *team )
{
  {
  return ((unsigned long )team->mode != (unsigned long )(& __team_no_mode));
}
}
static void team_set_no_mode(struct team *team )
{
  {
  team->user_carrier_enabled = 0;
  team->mode = & __team_no_mode;
  return;
}
}
static void team_adjust_ops(struct team *team )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if (team->en_port_count == 0) {
    team->ops.transmit = & team_dummy_transmit;
  } else {
    tmp = team_is_mode_set(team);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      team->ops.transmit = & team_dummy_transmit;
    } else
    if ((unsigned long )((team->mode)->ops)->transmit == (unsigned long )((bool (* )(struct team * ,
                                                                                                struct sk_buff * ))0)) {
      team->ops.transmit = & team_dummy_transmit;
    } else {
      team->ops.transmit = ((team->mode)->ops)->transmit;
    }
  }
  if (team->en_port_count == 0) {
    team->ops.receive = & team_dummy_receive;
  } else {
    tmp___1 = team_is_mode_set(team);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      team->ops.receive = & team_dummy_receive;
    } else
    if ((unsigned long )((team->mode)->ops)->receive == (unsigned long )((rx_handler_result_t (* )(struct team * ,
                                                                                                              struct team_port * ,
                                                                                                              struct sk_buff * ))0)) {
      team->ops.receive = & team_dummy_receive;
    } else {
      team->ops.receive = ((team->mode)->ops)->receive;
    }
  }
  return;
}
}
static int __team_change_mode(struct team *team , struct team_mode const *new_mode )
{
  void (*exit_op)(struct team * ) ;
  bool tmp ;
  int err ;
  {
  tmp = team_is_mode_set(team);
  if ((int )tmp) {
    exit_op = team->ops.exit;
    memset((void *)(& team->ops), 0, 72UL);
    team_adjust_ops(team);
    if ((unsigned long )exit_op != (unsigned long )((void (*)(struct team * ))0)) {
      (*exit_op)(team);
    } else {
    }
    team_mode_put(team->mode);
    team_set_no_mode(team);
    memset((void *)(& team->mode_priv), 0, 32UL);
  } else {
  }
  if ((unsigned long )new_mode == (unsigned long )((struct team_mode const *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )(new_mode->ops)->init != (unsigned long )((int (* )(struct team * ))0)) {
    err = (*((new_mode->ops)->init))(team);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  team->mode = new_mode;
  memcpy((void *)(& team->ops), (void const *)new_mode->ops, 72UL);
  team_adjust_ops(team);
  return (0);
}
}
static int team_change_mode(struct team *team , char const *kind )
{
  struct team_mode const *new_mode ;
  struct net_device *dev ;
  int err ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  dev = team->dev;
  tmp = list_empty((struct list_head const *)(& team->port_list));
  if (tmp == 0) {
    netdev_err((struct net_device const *)dev, "No ports can be present during mode change\n");
    return (-16);
  } else {
  }
  tmp___0 = team_is_mode_set(team);
  if ((int )tmp___0) {
    tmp___1 = strcmp((team->mode)->kind, kind);
    if (tmp___1 == 0) {
      netdev_err((struct net_device const *)dev, "Unable to change to the same mode the team is in\n");
      return (-22);
    } else {
    }
  } else {
  }
  new_mode = team_mode_get(kind);
  if ((unsigned long )new_mode == (unsigned long )((struct team_mode const *)0)) {
    netdev_err((struct net_device const *)dev, "Mode \"%s\" not found\n", kind);
    return (-22);
  } else {
  }
  err = __team_change_mode(team, new_mode);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Failed to change to mode \"%s\"\n",
               kind);
    team_mode_put(new_mode);
    return (err);
  } else {
  }
  netdev_info((struct net_device const *)dev, "Mode changed to \"%s\"\n", kind);
  return (0);
}
}
static void team_notify_peers_work(struct work_struct *work )
{
  struct team *team ;
  int val ;
  struct work_struct const *__mptr ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  team = (struct team *)__mptr + 0xfffffffffffffe20UL;
  tmp = rtnl_trylock();
  if (tmp == 0) {
    schedule_delayed_work(& team->notify_peers.dw, 0UL);
    return;
  } else {
  }
  val = atomic_dec_if_positive(& team->notify_peers.count_pending);
  if (val < 0) {
    rtnl_unlock();
    return;
  } else {
  }
  call_netdevice_notifiers(19UL, team->dev);
  rtnl_unlock();
  if (val != 0) {
    tmp___0 = msecs_to_jiffies(team->notify_peers.interval);
    schedule_delayed_work(& team->notify_peers.dw, tmp___0);
  } else {
  }
  return;
}
}
static void team_notify_peers(struct team *team )
{
  bool tmp ;
  int tmp___0 ;
  {
  if (team->notify_peers.count == 0U) {
    return;
  } else {
    tmp = netif_running((struct net_device const *)team->dev);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return;
    } else {
    }
  }
  atomic_add((int )team->notify_peers.count, & team->notify_peers.count_pending);
  schedule_delayed_work(& team->notify_peers.dw, 0UL);
  return;
}
}
static void team_notify_peers_init(struct team *team )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  __init_work(& team->notify_peers.dw.work, 0);
  __constr_expr_0.counter = 137438953408L;
  team->notify_peers.dw.work.data = __constr_expr_0;
  lockdep_init_map(& team->notify_peers.dw.work.lockdep_map, "(&(&team->notify_peers.dw)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& team->notify_peers.dw.work.entry);
  team->notify_peers.dw.work.func = & team_notify_peers_work;
  init_timer_key(& team->notify_peers.dw.timer, 2097152U, "(&(&team->notify_peers.dw)->timer)",
                 & __key___0);
  team->notify_peers.dw.timer.function = & delayed_work_timer_fn;
  team->notify_peers.dw.timer.data = (unsigned long )(& team->notify_peers.dw);
  return;
}
}
static void team_notify_peers_fini(struct team *team )
{
  {
  ldv_cancel_delayed_work_sync_12(& team->notify_peers.dw);
  return;
}
}
static void team_mcast_rejoin_work(struct work_struct *work )
{
  struct team *team ;
  int val ;
  struct work_struct const *__mptr ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  team = (struct team *)__mptr + 0xfffffffffffffd30UL;
  tmp = rtnl_trylock();
  if (tmp == 0) {
    schedule_delayed_work(& team->mcast_rejoin.dw, 0UL);
    return;
  } else {
  }
  val = atomic_dec_if_positive(& team->mcast_rejoin.count_pending);
  if (val < 0) {
    rtnl_unlock();
    return;
  } else {
  }
  call_netdevice_notifiers(22UL, team->dev);
  rtnl_unlock();
  if (val != 0) {
    tmp___0 = msecs_to_jiffies(team->mcast_rejoin.interval);
    schedule_delayed_work(& team->mcast_rejoin.dw, tmp___0);
  } else {
  }
  return;
}
}
static void team_mcast_rejoin(struct team *team )
{
  bool tmp ;
  int tmp___0 ;
  {
  if (team->mcast_rejoin.count == 0U) {
    return;
  } else {
    tmp = netif_running((struct net_device const *)team->dev);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return;
    } else {
    }
  }
  atomic_add((int )team->mcast_rejoin.count, & team->mcast_rejoin.count_pending);
  schedule_delayed_work(& team->mcast_rejoin.dw, 0UL);
  return;
}
}
static void team_mcast_rejoin_init(struct team *team )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  __init_work(& team->mcast_rejoin.dw.work, 0);
  __constr_expr_0.counter = 137438953408L;
  team->mcast_rejoin.dw.work.data = __constr_expr_0;
  lockdep_init_map(& team->mcast_rejoin.dw.work.lockdep_map, "(&(&team->mcast_rejoin.dw)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& team->mcast_rejoin.dw.work.entry);
  team->mcast_rejoin.dw.work.func = & team_mcast_rejoin_work;
  init_timer_key(& team->mcast_rejoin.dw.timer, 2097152U, "(&(&team->mcast_rejoin.dw)->timer)",
                 & __key___0);
  team->mcast_rejoin.dw.timer.function = & delayed_work_timer_fn;
  team->mcast_rejoin.dw.timer.data = (unsigned long )(& team->mcast_rejoin.dw);
  return;
}
}
static void team_mcast_rejoin_fini(struct team *team )
{
  {
  ldv_cancel_delayed_work_sync_13(& team->mcast_rejoin.dw);
  return;
}
}
static rx_handler_result_t team_handle_frame(struct sk_buff **pskb )
{
  struct sk_buff *skb ;
  struct team_port *port ;
  struct team *team ;
  rx_handler_result_t res ;
  bool tmp ;
  int tmp___0 ;
  struct team_pcpu_stats *pcpu_stats ;
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify___0 ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  skb = *pskb;
  skb = skb_share_check(skb, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  *pskb = skb;
  port = team_port_get_rcu((struct net_device const *)skb->dev);
  team = port->team;
  tmp = team_port_enabled(port);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    res = 2;
  } else {
    res = (*(team->ops.receive))(team, port, skb);
  }
  if ((unsigned int )res == 1U) {
    __vpp_verify = (void const *)0;
    __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off),
                         "0" (team->pcpu_stats));
    pcpu_stats = (struct team_pcpu_stats *)tcp_ptr__;
    u64_stats_init(& pcpu_stats->syncp);
    pcpu_stats->rx_packets = pcpu_stats->rx_packets + 1ULL;
    pcpu_stats->rx_bytes = pcpu_stats->rx_bytes + (u64 )skb->len;
    if ((unsigned int )*((unsigned char *)skb + 144UL) == 2U) {
      pcpu_stats->rx_multicast = pcpu_stats->rx_multicast + 1ULL;
    } else {
    }
    u64_stats_init(& pcpu_stats->syncp);
    skb->dev = team->dev;
  } else {
    __vpp_verify___0 = (void const *)0;
    switch (4UL) {
    case 1UL:
    pao_ID__ = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "qi" (1U));
    }
    goto ldv_47611;
    case 2UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47611;
    case 4UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47611;
    case 8UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "re" (1U));
    }
    goto ldv_47611;
    default:
    __bad_percpu_size();
    }
    ldv_47611: ;
    goto ldv_47616;
    case 2UL:
    pao_ID_____0 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "qi" (1U));
    }
    goto ldv_47622;
    case 2UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47622;
    case 4UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47622;
    case 8UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "re" (1U));
    }
    goto ldv_47622;
    default:
    __bad_percpu_size();
    }
    ldv_47622: ;
    goto ldv_47616;
    case 4UL:
    pao_ID_____1 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "qi" (1U));
    }
    goto ldv_47632;
    case 2UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47632;
    case 4UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47632;
    case 8UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "re" (1U));
    }
    goto ldv_47632;
    default:
    __bad_percpu_size();
    }
    ldv_47632: ;
    goto ldv_47616;
    case 8UL:
    pao_ID_____2 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "qi" (1U));
    }
    goto ldv_47642;
    case 2UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47642;
    case 4UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "ri" (1U));
    }
    goto ldv_47642;
    case 8UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->rx_dropped): "re" (1U));
    }
    goto ldv_47642;
    default:
    __bad_percpu_size();
    }
    ldv_47642: ;
    goto ldv_47616;
    default:
    __bad_size_call_parameter();
    goto ldv_47616;
    }
    ldv_47616: ;
  }
  return (res);
}
}
static int team_queue_override_init(struct team *team )
{
  struct list_head *listarr ;
  unsigned int queue_cnt ;
  unsigned int i ;
  void *tmp ;
  struct list_head *tmp___0 ;
  {
  queue_cnt = (team->dev)->num_tx_queues - 1U;
  if (queue_cnt == 0U) {
    return (0);
  } else {
  }
  tmp = kmalloc((unsigned long )queue_cnt * 16UL, 208U);
  listarr = (struct list_head *)tmp;
  if ((unsigned long )listarr == (unsigned long )((struct list_head *)0)) {
    return (-12);
  } else {
  }
  team->qom_lists = listarr;
  i = 0U;
  goto ldv_47655;
  ldv_47654:
  tmp___0 = listarr;
  listarr = listarr + 1;
  INIT_LIST_HEAD(tmp___0);
  i = i + 1U;
  ldv_47655: ;
  if (i < queue_cnt) {
    goto ldv_47654;
  } else {
  }
  return (0);
}
}
static void team_queue_override_fini(struct team *team )
{
  {
  kfree((void const *)team->qom_lists);
  return;
}
}
static struct list_head *__team_get_qom_list(struct team *team , u16 queue_id )
{
  {
  return (team->qom_lists + ((unsigned long )queue_id + 0xffffffffffffffffUL));
}
}
static bool team_queue_override_transmit(struct team *team , struct sk_buff *skb )
{
  struct list_head *qom_list ;
  struct team_port *port ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_365 __u ;
  int tmp ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_367 __u___0 ;
  int tmp___1 ;
  {
  if (! team->queue_override_enabled || (unsigned int )skb->queue_mapping == 0U) {
    return (0);
  } else {
  }
  qom_list = __team_get_qom_list(team, (int )skb->queue_mapping);
  __ptr = qom_list->next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  port = (struct team_port *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47699;
  ldv_47698:
  tmp___0 = team_dev_queue_xmit(team, port, skb);
  if (tmp___0 == 0) {
    return (1);
  } else {
  }
  __ptr___0 = port->qom_list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47699: ;
  if ((unsigned long )(& port->qom_list) != (unsigned long )qom_list) {
    goto ldv_47698;
  } else {
  }
  return (0);
}
}
static void __team_queue_override_port_del(struct team *team , struct team_port *port )
{
  {
  if ((unsigned int )port->queue_id == 0U) {
    return;
  } else {
  }
  list_del_rcu(& port->qom_list);
  return;
}
}
static bool team_queue_override_port_has_gt_prio_than(struct team_port *port , struct team_port *cur )
{
  {
  if (port->priority < cur->priority) {
    return (1);
  } else {
  }
  if (port->priority > cur->priority) {
    return (0);
  } else {
  }
  if (port->index < cur->index) {
    return (1);
  } else {
  }
  return (0);
}
}
static void __team_queue_override_port_add(struct team *team , struct team_port *port )
{
  struct team_port *cur ;
  struct list_head *qom_list ;
  struct list_head *node ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned int )port->queue_id == 0U) {
    return;
  } else {
  }
  qom_list = __team_get_qom_list(team, (int )port->queue_id);
  node = qom_list;
  __mptr = (struct list_head const *)qom_list->next;
  cur = (struct team_port *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47722;
  ldv_47721:
  tmp = team_queue_override_port_has_gt_prio_than(port, cur);
  if ((int )tmp) {
    goto ldv_47720;
  } else {
  }
  node = & cur->qom_list;
  __mptr___0 = (struct list_head const *)cur->qom_list.next;
  cur = (struct team_port *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47722: ;
  if ((unsigned long )(& cur->qom_list) != (unsigned long )qom_list) {
    goto ldv_47721;
  } else {
  }
  ldv_47720:
  list_add_tail_rcu(& port->qom_list, node);
  return;
}
}
static void __team_queue_override_enabled_check(struct team *team )
{
  struct team_port *port ;
  bool enabled ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  enabled = 0;
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_47734;
  ldv_47733: ;
  if ((unsigned int )port->queue_id != 0U) {
    enabled = 1;
    goto ldv_47732;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_47734: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_47733;
  } else {
  }
  ldv_47732: ;
  if ((int )team->queue_override_enabled == (int )enabled) {
    return;
  } else {
  }
  descriptor.modname = "team";
  descriptor.function = "__team_queue_override_enabled_check";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c";
  descriptor.format = "%s queue override\n";
  descriptor.lineno = 857U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)team->dev, "%s queue override\n",
                         (int )enabled ? (char *)"Enabling" : (char *)"Disabling");
  } else {
  }
  team->queue_override_enabled = enabled;
  return;
}
}
static void team_queue_override_port_prio_changed(struct team *team , struct team_port *port )
{
  bool tmp ;
  {
  if ((unsigned int )port->queue_id == 0U) {
    return;
  } else {
    tmp = team_port_enabled(port);
    if ((int )tmp) {
      return;
    } else {
    }
  }
  __team_queue_override_port_del(team, port);
  __team_queue_override_port_add(team, port);
  __team_queue_override_enabled_check(team);
  return;
}
}
static void team_queue_override_port_change_queue_id(struct team *team , struct team_port *port ,
                                                     u16 new_queue_id )
{
  bool tmp ;
  {
  tmp = team_port_enabled(port);
  if ((int )tmp) {
    __team_queue_override_port_del(team, port);
    port->queue_id = new_queue_id;
    __team_queue_override_port_add(team, port);
    __team_queue_override_enabled_check(team);
  } else {
    port->queue_id = new_queue_id;
  }
  return;
}
}
static void team_queue_override_port_add(struct team *team , struct team_port *port )
{
  {
  __team_queue_override_port_add(team, port);
  __team_queue_override_enabled_check(team);
  return;
}
}
static void team_queue_override_port_del(struct team *team , struct team_port *port )
{
  {
  __team_queue_override_port_del(team, port);
  __team_queue_override_enabled_check(team);
  return;
}
}
static bool team_port_find(struct team const *team , struct team_port const *port )
{
  struct team_port *cur ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->port_list.next;
  cur = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_47764;
  ldv_47763: ;
  if ((unsigned long )((struct team_port const *)cur) == (unsigned long )port) {
    return (1);
  } else {
  }
  __mptr___0 = (struct list_head const *)cur->list.next;
  cur = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_47764: ;
  if ((unsigned long )((struct list_head const *)(& cur->list)) != (unsigned long )(& team->port_list)) {
    goto ldv_47763;
  } else {
  }
  return (0);
}
}
static void team_port_enable(struct team *team , struct team_port *port )
{
  bool tmp ;
  int tmp___0 ;
  struct hlist_head *tmp___1 ;
  {
  tmp = team_port_enabled(port);
  if ((int )tmp) {
    return;
  } else {
  }
  tmp___0 = team->en_port_count;
  team->en_port_count = team->en_port_count + 1;
  port->index = tmp___0;
  tmp___1 = team_port_index_hash(team, port->index);
  hlist_add_head_rcu(& port->hlist, tmp___1);
  team_adjust_ops(team);
  team_queue_override_port_add(team, port);
  if ((unsigned long )team->ops.port_enabled != (unsigned long )((void (*)(struct team * ,
                                                                           struct team_port * ))0)) {
    (*(team->ops.port_enabled))(team, port);
  } else {
  }
  team_notify_peers(team);
  team_mcast_rejoin(team);
  return;
}
}
static void __reconstruct_port_hlist(struct team *team , int rm_index )
{
  int i ;
  struct team_port *port ;
  struct hlist_head *tmp ;
  {
  i = rm_index + 1;
  goto ldv_47777;
  ldv_47776:
  port = team_get_port_by_index(team, i);
  hlist_del_rcu(& port->hlist);
  port->index = port->index - 1;
  tmp = team_port_index_hash(team, port->index);
  hlist_add_head_rcu(& port->hlist, tmp);
  i = i + 1;
  ldv_47777: ;
  if (team->en_port_count > i) {
    goto ldv_47776;
  } else {
  }
  return;
}
}
static void team_port_disable(struct team *team , struct team_port *port )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = team_port_enabled(port);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  if ((unsigned long )team->ops.port_disabled != (unsigned long )((void (*)(struct team * ,
                                                                            struct team_port * ))0)) {
    (*(team->ops.port_disabled))(team, port);
  } else {
  }
  hlist_del_rcu(& port->hlist);
  __reconstruct_port_hlist(team, port->index);
  port->index = -1;
  team->en_port_count = team->en_port_count - 1;
  team_queue_override_port_del(team, port);
  team_adjust_ops(team);
  team_notify_peers(team);
  team_mcast_rejoin(team);
  return;
}
}
static void __team_compute_features(struct team *team )
{
  struct team_port *port ;
  u32 vlan_features ;
  unsigned short max_hard_header_len ;
  unsigned int dst_release_flag ;
  struct list_head const *__mptr ;
  netdev_features_t tmp ;
  struct list_head const *__mptr___0 ;
  {
  vlan_features = 0U;
  max_hard_header_len = 14U;
  dst_release_flag = 4195328U;
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_47795;
  ldv_47794:
  tmp = netdev_increment_features((netdev_features_t )vlan_features, (port->dev)->vlan_features,
                                  1671291ULL);
  vlan_features = (u32 )tmp;
  dst_release_flag = (port->dev)->priv_flags & dst_release_flag;
  if ((int )(port->dev)->hard_header_len > (int )max_hard_header_len) {
    max_hard_header_len = (port->dev)->hard_header_len;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_47795: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_47794;
  } else {
  }
  (team->dev)->vlan_features = (netdev_features_t )vlan_features;
  (team->dev)->hard_header_len = max_hard_header_len;
  (team->dev)->priv_flags = (team->dev)->priv_flags & 4294966271U;
  if (dst_release_flag == 4195328U) {
    (team->dev)->priv_flags = (team->dev)->priv_flags | 1024U;
  } else {
  }
  netdev_change_features(team->dev);
  return;
}
}
static void team_compute_features(struct team *team )
{
  {
  mutex_lock_nested(& team->lock, 0U);
  __team_compute_features(team);
  mutex_unlock(& team->lock);
  return;
}
}
static int team_port_enter(struct team *team , struct team_port *port )
{
  int err ;
  {
  err = 0;
  dev_hold(team->dev);
  if ((unsigned long )team->ops.port_enter != (unsigned long )((int (*)(struct team * ,
                                                                        struct team_port * ))0)) {
    err = (*(team->ops.port_enter))(team, port);
    if (err != 0) {
      netdev_err((struct net_device const *)team->dev, "Device %s failed to enter team mode\n",
                 (char *)(& (port->dev)->name));
      goto err_port_enter;
    } else {
    }
  } else {
  }
  return (0);
  err_port_enter:
  dev_put(team->dev);
  return (err);
}
}
static void team_port_leave(struct team *team , struct team_port *port )
{
  {
  if ((unsigned long )team->ops.port_leave != (unsigned long )((void (*)(struct team * ,
                                                                         struct team_port * ))0)) {
    (*(team->ops.port_leave))(team, port);
  } else {
  }
  dev_put(team->dev);
  return;
}
}
static int team_port_enable_netpoll(struct team *team , struct team_port *port )
{
  struct netpoll *np ;
  int err ;
  void *tmp ;
  {
  if ((unsigned long )(team->dev)->npinfo == (unsigned long )((struct netpoll_info *)0)) {
    return (0);
  } else {
  }
  tmp = kzalloc(160UL, 208U);
  np = (struct netpoll *)tmp;
  if ((unsigned long )np == (unsigned long )((struct netpoll *)0)) {
    return (-12);
  } else {
  }
  err = __netpoll_setup(np, port->dev);
  if (err != 0) {
    kfree((void const *)np);
    return (err);
  } else {
  }
  port->np = np;
  return (err);
}
}
static void team_port_disable_netpoll(struct team_port *port )
{
  struct netpoll *np ;
  {
  np = port->np;
  if ((unsigned long )np == (unsigned long )((struct netpoll *)0)) {
    return;
  } else {
  }
  port->np = (struct netpoll *)0;
  synchronize_rcu_bh();
  __netpoll_cleanup(np);
  kfree((void const *)np);
  return;
}
}
static int team_upper_dev_link(struct net_device *dev , struct net_device *port_dev )
{
  int err ;
  {
  err = netdev_master_upper_dev_link(port_dev, dev);
  if (err != 0) {
    return (err);
  } else {
  }
  port_dev->priv_flags = port_dev->priv_flags | 262144U;
  return (0);
}
}
static void team_upper_dev_unlink(struct net_device *dev , struct net_device *port_dev )
{
  {
  netdev_upper_dev_unlink(port_dev, dev);
  port_dev->priv_flags = port_dev->priv_flags & 4294705151U;
  return;
}
}
static void __team_port_change_port_added(struct team_port *port , bool linkup ) ;
static int team_dev_type_check_change(struct net_device *dev , struct net_device *port_dev ) ;
static int team_port_add(struct team *team , struct net_device *port_dev )
{
  struct net_device *dev ;
  struct team_port *port ;
  char *portname ;
  int err ;
  bool tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  dev = team->dev;
  portname = (char *)(& port_dev->name);
  if ((port_dev->flags & 8U) != 0U) {
    netdev_err((struct net_device const *)dev, "Device %s is loopback device. Loopback devices can\'t be added as a team port\n",
               portname);
    return (-22);
  } else {
  }
  if ((port_dev->priv_flags & 262144U) != 0U) {
    netdev_err((struct net_device const *)dev, "Device %s is already a port of a team device\n",
               portname);
    return (-16);
  } else {
  }
  if ((port_dev->features & 1024ULL) != 0ULL) {
    tmp = vlan_uses_dev((struct net_device const *)dev);
    if ((int )tmp) {
      netdev_err((struct net_device const *)dev, "Device %s is VLAN challenged and team device has VLAN set up\n",
                 portname);
      return (-1);
    } else {
    }
  } else {
  }
  err = team_dev_type_check_change(dev, port_dev);
  if (err != 0) {
    return (err);
  } else {
  }
  if ((int )port_dev->flags & 1) {
    netdev_err((struct net_device const *)dev, "Device %s is up. Set it down before adding it as a team port\n",
               portname);
    return (-16);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )(team->mode)->port_priv_size + 160UL, 208U);
  port = (struct team_port *)tmp___0;
  if ((unsigned long )port == (unsigned long )((struct team_port *)0)) {
    return (-12);
  } else {
  }
  port->dev = port_dev;
  port->team = team;
  INIT_LIST_HEAD(& port->qom_list);
  port->orig.mtu = port_dev->mtu;
  err = dev_set_mtu(port_dev, (int )dev->mtu);
  if (err != 0) {
    descriptor.modname = "team";
    descriptor.function = "team_port_add";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c";
    descriptor.format = "Error %d calling dev_set_mtu\n";
    descriptor.lineno = 1152U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Error %d calling dev_set_mtu\n",
                           err);
    } else {
    }
    goto err_set_mtu;
  } else {
  }
  memcpy((void *)(& port->orig.dev_addr), (void const *)port_dev->dev_addr, (size_t )port_dev->addr_len);
  err = team_port_enter(team, port);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Device %s failed to enter team mode\n",
               portname);
    goto err_port_enter;
  } else {
  }
  err = dev_open(port_dev);
  if (err != 0) {
    descriptor___0.modname = "team";
    descriptor___0.function = "team_port_add";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c";
    descriptor___0.format = "Device %s opening failed\n";
    descriptor___0.lineno = 1168U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "Device %s opening failed\n",
                           portname);
    } else {
    }
    goto err_dev_open;
  } else {
  }
  err = vlan_vids_add_by_dev(port_dev, (struct net_device const *)dev);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Failed to add vlan ids to device %s\n",
               portname);
    goto err_vids_add;
  } else {
  }
  err = team_port_enable_netpoll(team, port);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Failed to enable netpoll on device %s\n",
               portname);
    goto err_enable_netpoll;
  } else {
  }
  if ((dev->features & 32768ULL) == 0ULL) {
    dev_disable_lro(port_dev);
  } else {
  }
  err = netdev_rx_handler_register(port_dev, & team_handle_frame, (void *)port);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Device %s failed to register rx_handler\n",
               portname);
    goto err_handler_register;
  } else {
  }
  err = team_upper_dev_link(dev, port_dev);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Device %s failed to set upper link\n",
               portname);
    goto err_set_upper_link;
  } else {
  }
  err = __team_option_inst_add_port(team, port);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Device %s failed to add per-port options\n",
               portname);
    goto err_option_port_add;
  } else {
  }
  port->index = -1;
  list_add_tail_rcu(& port->list, & team->port_list);
  team_port_enable(team, port);
  __team_compute_features(team);
  tmp___3 = netif_carrier_ok((struct net_device const *)port_dev);
  __team_port_change_port_added(port, (int )tmp___3);
  __team_options_change_check(team);
  netdev_info((struct net_device const *)dev, "Port device %s added\n", portname);
  return (0);
  err_option_port_add:
  team_upper_dev_unlink(dev, port_dev);
  err_set_upper_link:
  netdev_rx_handler_unregister(port_dev);
  err_handler_register:
  team_port_disable_netpoll(port);
  err_enable_netpoll:
  vlan_vids_del_by_dev(port_dev, (struct net_device const *)dev);
  err_vids_add:
  dev_close(port_dev);
  err_dev_open:
  team_port_leave(team, port);
  team_port_set_orig_dev_addr(port);
  err_port_enter:
  dev_set_mtu(port_dev, (int )port->orig.mtu);
  err_set_mtu:
  kfree((void const *)port);
  return (err);
}
}
static void __team_port_change_port_removed(struct team_port *port ) ;
static int team_port_del(struct team *team , struct net_device *port_dev )
{
  struct net_device *dev ;
  struct team_port *port ;
  char *portname ;
  bool tmp ;
  int tmp___0 ;
  {
  dev = team->dev;
  portname = (char *)(& port_dev->name);
  port = team_port_get_rtnl((struct net_device const *)port_dev);
  if ((unsigned long )port == (unsigned long )((struct team_port *)0)) {
    netdev_err((struct net_device const *)dev, "Device %s does not act as a port of this team\n",
               portname);
    return (-2);
  } else {
    tmp = team_port_find((struct team const *)team, (struct team_port const *)port);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      netdev_err((struct net_device const *)dev, "Device %s does not act as a port of this team\n",
                 portname);
      return (-2);
    } else {
    }
  }
  team_port_disable(team, port);
  list_del_rcu(& port->list);
  team_upper_dev_unlink(dev, port_dev);
  netdev_rx_handler_unregister(port_dev);
  team_port_disable_netpoll(port);
  vlan_vids_del_by_dev(port_dev, (struct net_device const *)dev);
  dev_uc_unsync(port_dev, dev);
  dev_mc_unsync(port_dev, dev);
  dev_close(port_dev);
  team_port_leave(team, port);
  __team_option_inst_mark_removed_port(team, port);
  __team_options_change_check(team);
  __team_option_inst_del_port(team, port);
  __team_port_change_port_removed(port);
  team_port_set_orig_dev_addr(port);
  dev_set_mtu(port_dev, (int )port->orig.mtu);
  kfree_call_rcu(& port->rcu, (void (*)(struct callback_head * ))144);
  netdev_info((struct net_device const *)dev, "Port device %s removed\n", portname);
  __team_compute_features(team);
  return (0);
}
}
static int team_mode_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  ctx->data.str_val = (team->mode)->kind;
  return (0);
}
}
static int team_mode_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  int tmp ;
  {
  tmp = team_change_mode(team, ctx->data.str_val);
  return (tmp);
}
}
static int team_notify_peers_count_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  ctx->data.u32_val = team->notify_peers.count;
  return (0);
}
}
static int team_notify_peers_count_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  team->notify_peers.count = ctx->data.u32_val;
  return (0);
}
}
static int team_notify_peers_interval_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  ctx->data.u32_val = team->notify_peers.interval;
  return (0);
}
}
static int team_notify_peers_interval_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  team->notify_peers.interval = ctx->data.u32_val;
  return (0);
}
}
static int team_mcast_rejoin_count_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  ctx->data.u32_val = team->mcast_rejoin.count;
  return (0);
}
}
static int team_mcast_rejoin_count_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  team->mcast_rejoin.count = ctx->data.u32_val;
  return (0);
}
}
static int team_mcast_rejoin_interval_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  ctx->data.u32_val = team->mcast_rejoin.interval;
  return (0);
}
}
static int team_mcast_rejoin_interval_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  {
  team->mcast_rejoin.interval = ctx->data.u32_val;
  return (0);
}
}
static int team_port_en_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  ctx->data.bool_val = team_port_enabled(port);
  return (0);
}
}
static int team_port_en_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  if ((int )ctx->data.bool_val) {
    team_port_enable(team, port);
  } else {
    team_port_disable(team, port);
  }
  return (0);
}
}
static int team_user_linkup_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  ctx->data.bool_val = port->user.linkup;
  return (0);
}
}
static void __team_carrier_check(struct team *team ) ;
static int team_user_linkup_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  port->user.linkup = ctx->data.bool_val;
  team_refresh_port_linkup(port);
  __team_carrier_check(port->team);
  return (0);
}
}
static int team_user_linkup_en_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  ctx->data.bool_val = port->user.linkup_enabled;
  return (0);
}
}
static int team_user_linkup_en_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  port->user.linkup_enabled = ctx->data.bool_val;
  team_refresh_port_linkup(port);
  __team_carrier_check(port->team);
  return (0);
}
}
static int team_priority_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  ctx->data.s32_val = port->priority;
  return (0);
}
}
static int team_priority_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  s32 priority ;
  {
  port = (ctx->info)->port;
  priority = ctx->data.s32_val;
  if (port->priority == priority) {
    return (0);
  } else {
  }
  port->priority = priority;
  team_queue_override_port_prio_changed(team, port);
  return (0);
}
}
static int team_queue_id_option_get(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  {
  port = (ctx->info)->port;
  ctx->data.u32_val = (u32 )port->queue_id;
  return (0);
}
}
static int team_queue_id_option_set(struct team *team , struct team_gsetter_ctx *ctx )
{
  struct team_port *port ;
  u16 new_queue_id ;
  {
  port = (ctx->info)->port;
  new_queue_id = (u16 )ctx->data.u32_val;
  if ((int )port->queue_id == (int )new_queue_id) {
    return (0);
  } else {
  }
  if ((unsigned int )new_queue_id >= (team->dev)->real_num_tx_queues) {
    return (-22);
  } else {
  }
  team_queue_override_port_change_queue_id(team, port, (int )new_queue_id);
  return (0);
}
}
static struct team_option const team_options[10U] =
  { {{0, 0}, "mode", (_Bool)0, 0U, 1, 0, & team_mode_option_get, & team_mode_option_set},
        {{0,
       0}, "notify_peers_count", (_Bool)0, 0U, 0, 0, & team_notify_peers_count_get,
      & team_notify_peers_count_set},
        {{0, 0}, "notify_peers_interval", (_Bool)0, 0U, 0, 0, & team_notify_peers_interval_get,
      & team_notify_peers_interval_set},
        {{0, 0}, "mcast_rejoin_count", (_Bool)0, 0U, 0, 0, & team_mcast_rejoin_count_get,
      & team_mcast_rejoin_count_set},
        {{0, 0}, "mcast_rejoin_interval", (_Bool)0, 0U, 0, 0, & team_mcast_rejoin_interval_get,
      & team_mcast_rejoin_interval_set},
        {{0, 0}, "enabled", 1, 0U, 3, 0, & team_port_en_option_get, & team_port_en_option_set},
        {{0,
       0}, "user_linkup", 1, 0U, 3, 0, & team_user_linkup_option_get, & team_user_linkup_option_set},
        {{0,
       0}, "user_linkup_enabled", 1, 0U, 3, 0, & team_user_linkup_en_option_get, & team_user_linkup_en_option_set},
        {{0,
       0}, "priority", 1, 0U, 4, 0, & team_priority_option_get, & team_priority_option_set},
        {{0,
       0}, "queue_id", 1, 0U, 0, 0, & team_queue_id_option_get, & team_queue_id_option_set}};
static struct lock_class_key team_netdev_xmit_lock_key ;
static struct lock_class_key team_netdev_addr_lock_key ;
static struct lock_class_key team_tx_busylock_key ;
static void team_set_lockdep_class_one(struct net_device *dev , struct netdev_queue *txq ,
                                       void *unused )
{
  {
  lockdep_init_map(& txq->_xmit_lock.__annonCompField18.__annonCompField17.dep_map,
                   "&team_netdev_xmit_lock_key", & team_netdev_xmit_lock_key, 0);
  return;
}
}
static void team_set_lockdep_class(struct net_device *dev )
{
  {
  lockdep_init_map(& dev->addr_list_lock.__annonCompField18.__annonCompField17.dep_map,
                   "&team_netdev_addr_lock_key", & team_netdev_addr_lock_key, 0);
  netdev_for_each_tx_queue(dev, & team_set_lockdep_class_one, (void *)0);
  dev->qdisc_tx_busylock = & team_tx_busylock_key;
  return;
}
}
static int team_init(struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  int i ;
  int err ;
  struct lock_class_key __key ;
  struct team_pcpu_stats *pcpu_stats ;
  void *tmp___0 ;
  int __cpu ;
  struct team_pcpu_stats *stat ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  unsigned int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  team->dev = dev;
  __mutex_init(& team->lock, "&team->lock", & __key);
  team_set_no_mode(team);
  tmp___0 = __alloc_percpu(48UL, 8UL);
  pcpu_stats = (struct team_pcpu_stats *)tmp___0;
  if ((unsigned long )pcpu_stats != (unsigned long )((struct team_pcpu_stats *)0)) {
    __cpu = -1;
    goto ldv_47985;
    ldv_47984:
    __vpp_verify = (void const *)0;
    __asm__ ("": "=r" (__ptr): "0" (pcpu_stats));
    stat = (struct team_pcpu_stats *)(__per_cpu_offset[__cpu] + __ptr);
    u64_stats_init(& stat->syncp);
    ldv_47985:
    tmp___1 = cpumask_next(__cpu, cpu_possible_mask);
    __cpu = (int )tmp___1;
    if (__cpu < nr_cpu_ids) {
      goto ldv_47984;
    } else {
    }
  } else {
  }
  team->pcpu_stats = pcpu_stats;
  if ((unsigned long )team->pcpu_stats == (unsigned long )((struct team_pcpu_stats *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_47989;
  ldv_47988:
  ((struct hlist_head *)(& team->en_port_hlist) + (unsigned long )i)->first = (struct hlist_node *)0;
  i = i + 1;
  ldv_47989: ;
  if (i <= 15) {
    goto ldv_47988;
  } else {
  }
  INIT_LIST_HEAD(& team->port_list);
  err = team_queue_override_init(team);
  if (err != 0) {
    goto err_team_queue_override_init;
  } else {
  }
  team_adjust_ops(team);
  INIT_LIST_HEAD(& team->option_list);
  INIT_LIST_HEAD(& team->option_inst_list);
  team_notify_peers_init(team);
  team_mcast_rejoin_init(team);
  err = team_options_register(team, (struct team_option const *)(& team_options),
                              10UL);
  if (err != 0) {
    goto err_options_register;
  } else {
  }
  netif_carrier_off(dev);
  team_set_lockdep_class(dev);
  return (0);
  err_options_register:
  team_mcast_rejoin_fini(team);
  team_notify_peers_fini(team);
  team_queue_override_fini(team);
  err_team_queue_override_init:
  free_percpu((void *)team->pcpu_stats);
  return (err);
}
}
static void team_uninit(struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  struct team_port *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  __mptr___0 = (struct list_head const *)port->list.next;
  tmp___0 = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  goto ldv_48008;
  ldv_48007:
  team_port_del(team, port->dev);
  port = tmp___0;
  __mptr___1 = (struct list_head const *)tmp___0->list.next;
  tmp___0 = (struct team_port *)__mptr___1 + 0xffffffffffffffe8UL;
  ldv_48008: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48007;
  } else {
  }
  __team_change_mode(team, (struct team_mode const *)0);
  __team_options_unregister(team, (struct team_option const *)(& team_options),
                            10UL);
  team_mcast_rejoin_fini(team);
  team_notify_peers_fini(team);
  team_queue_override_fini(team);
  mutex_unlock(& team->lock);
  return;
}
}
static void team_destructor(struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  free_percpu((void *)team->pcpu_stats);
  free_netdev(dev);
  return;
}
}
static int team_open(struct net_device *dev )
{
  {
  return (0);
}
}
static int team_close(struct net_device *dev )
{
  {
  return (0);
}
}
static netdev_tx_t team_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  bool tx_success ;
  unsigned int len ;
  struct team_pcpu_stats *pcpu_stats ;
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify___0 ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  len = skb->len;
  tx_success = team_queue_override_transmit(team, skb);
  if (! tx_success) {
    tx_success = (*(team->ops.transmit))(team, skb);
  } else {
  }
  if ((int )tx_success) {
    __vpp_verify = (void const *)0;
    __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off),
                         "0" (team->pcpu_stats));
    pcpu_stats = (struct team_pcpu_stats *)tcp_ptr__;
    u64_stats_init(& pcpu_stats->syncp);
    pcpu_stats->tx_packets = pcpu_stats->tx_packets + 1ULL;
    pcpu_stats->tx_bytes = pcpu_stats->tx_bytes + (u64 )len;
    u64_stats_init(& pcpu_stats->syncp);
  } else {
    __vpp_verify___0 = (void const *)0;
    switch (4UL) {
    case 1UL:
    pao_ID__ = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "qi" (1U));
    }
    goto ldv_48040;
    case 2UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48040;
    case 4UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48040;
    case 8UL: ;
    if (pao_ID__ == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID__ == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "re" (1U));
    }
    goto ldv_48040;
    default:
    __bad_percpu_size();
    }
    ldv_48040: ;
    goto ldv_48045;
    case 2UL:
    pao_ID_____0 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "qi" (1U));
    }
    goto ldv_48051;
    case 2UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48051;
    case 4UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48051;
    case 8UL: ;
    if (pao_ID_____0 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____0 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "re" (1U));
    }
    goto ldv_48051;
    default:
    __bad_percpu_size();
    }
    ldv_48051: ;
    goto ldv_48045;
    case 4UL:
    pao_ID_____1 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "qi" (1U));
    }
    goto ldv_48061;
    case 2UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48061;
    case 4UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48061;
    case 8UL: ;
    if (pao_ID_____1 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____1 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "re" (1U));
    }
    goto ldv_48061;
    default:
    __bad_percpu_size();
    }
    ldv_48061: ;
    goto ldv_48045;
    case 8UL:
    pao_ID_____2 = 1;
    switch (4UL) {
    case 1UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decb %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addb %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "qi" (1U));
    }
    goto ldv_48071;
    case 2UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decw %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addw %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48071;
    case 4UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decl %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addl %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "ri" (1U));
    }
    goto ldv_48071;
    case 8UL: ;
    if (pao_ID_____2 == 1) {
      __asm__ ("incq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else
    if (pao_ID_____2 == -1) {
      __asm__ ("decq %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped));
    } else {
      __asm__ ("addq %1, %%gs:%0": "+m" ((team->pcpu_stats)->tx_dropped): "re" (1U));
    }
    goto ldv_48071;
    default:
    __bad_percpu_size();
    }
    ldv_48071: ;
    goto ldv_48045;
    default:
    __bad_size_call_parameter();
    goto ldv_48045;
    }
    ldv_48045: ;
  }
  return (0);
}
}
static u16 team_select_queue(struct net_device *dev , struct sk_buff *skb , void *accel_priv ,
                             u16 (*fallback)(struct net_device * , struct sk_buff * ) )
{
  u16 txq ;
  u16 tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  struct qdisc_skb_cb *tmp___3 ;
  long tmp___4 ;
  {
  tmp___2 = skb_rx_queue_recorded((struct sk_buff const *)skb);
  if ((int )tmp___2) {
    tmp___0 = skb_get_rx_queue((struct sk_buff const *)skb);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = 0U;
  }
  txq = tmp___1;
  tmp___3 = qdisc_skb_cb((struct sk_buff const *)skb);
  tmp___3->slave_dev_queue_mapping = skb->queue_mapping;
  tmp___4 = ldv__builtin_expect((unsigned int )txq >= dev->real_num_tx_queues, 0L);
  if (tmp___4 != 0L) {
    ldv_48084:
    txq = (int )txq - (int )((u16 )dev->real_num_tx_queues);
    if ((unsigned int )txq >= dev->real_num_tx_queues) {
      goto ldv_48084;
    } else {
    }
  } else {
  }
  return (txq);
}
}
static void team_change_rx_flags(struct net_device *dev , int change )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  int inc ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_371 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_373 __u___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  rcu_read_lock();
  __ptr = team->port_list.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48122;
  ldv_48121: ;
  if ((change & 256) != 0) {
    inc = (dev->flags & 256U) != 0U ? 1 : -1;
    dev_set_promiscuity(port->dev, inc);
  } else {
  }
  if ((change & 512) != 0) {
    inc = (dev->flags & 512U) != 0U ? 1 : -1;
    dev_set_allmulti(port->dev, inc);
  } else {
  }
  __ptr___0 = port->list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48122: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48121;
  } else {
  }
  rcu_read_unlock();
  return;
}
}
static void team_set_rx_mode(struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_375 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_377 __u___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  rcu_read_lock();
  __ptr = team->port_list.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48158;
  ldv_48157:
  dev_uc_sync_multiple(port->dev, dev);
  dev_mc_sync_multiple(port->dev, dev);
  __ptr___0 = port->list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48158: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48157;
  } else {
  }
  rcu_read_unlock();
  return;
}
}
static int team_set_mac_address(struct net_device *dev , void *p )
{
  struct sockaddr *addr ;
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  bool tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  addr = (struct sockaddr *)p;
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  if ((unsigned int )dev->type == 1U) {
    tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (-99);
    } else {
    }
  } else {
  }
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  mutex_lock_nested(& team->lock, 0U);
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48172;
  ldv_48171: ;
  if ((unsigned long )team->ops.port_change_dev_addr != (unsigned long )((void (*)(struct team * ,
                                                                                   struct team_port * ))0)) {
    (*(team->ops.port_change_dev_addr))(team, port);
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48172: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48171;
  } else {
  }
  mutex_unlock(& team->lock);
  return (0);
}
}
static int team_change_mtu(struct net_device *dev , int new_mtu )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  team->port_mtu_change_allowed = 1;
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48187;
  ldv_48186:
  err = dev_set_mtu(port->dev, new_mtu);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Device %s failed to change mtu",
               (char *)(& (port->dev)->name));
    goto unwind;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48187: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48186;
  } else {
  }
  team->port_mtu_change_allowed = 0;
  mutex_unlock(& team->lock);
  dev->mtu = (unsigned int )new_mtu;
  return (0);
  unwind:
  __mptr___1 = (struct list_head const *)port->list.prev;
  port = (struct team_port *)__mptr___1 + 0xffffffffffffffe8UL;
  goto ldv_48194;
  ldv_48193:
  dev_set_mtu(port->dev, (int )dev->mtu);
  __mptr___2 = (struct list_head const *)port->list.prev;
  port = (struct team_port *)__mptr___2 + 0xffffffffffffffe8UL;
  ldv_48194: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48193;
  } else {
  }
  team->port_mtu_change_allowed = 0;
  mutex_unlock(& team->lock);
  return (err);
}
}
static struct rtnl_link_stats64 *team_get_stats64(struct net_device *dev , struct rtnl_link_stats64 *stats )
{
  struct team *team ;
  void *tmp ;
  struct team_pcpu_stats *p ;
  u64 rx_packets ;
  u64 rx_bytes ;
  u64 rx_multicast ;
  u64 tx_packets ;
  u64 tx_bytes ;
  u32 rx_dropped ;
  u32 tx_dropped ;
  unsigned int start ;
  int i ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  rx_dropped = 0U;
  tx_dropped = 0U;
  i = -1;
  goto ldv_48218;
  ldv_48217:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (team->pcpu_stats));
  p = (struct team_pcpu_stats *)(__per_cpu_offset[i] + __ptr);
  ldv_48215:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& p->syncp));
  rx_packets = p->rx_packets;
  rx_bytes = p->rx_bytes;
  rx_multicast = p->rx_multicast;
  tx_packets = p->tx_packets;
  tx_bytes = p->tx_bytes;
  tmp___0 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& p->syncp),
                                      start);
  if ((int )tmp___0) {
    goto ldv_48215;
  } else {
  }
  stats->rx_packets = stats->rx_packets + rx_packets;
  stats->rx_bytes = stats->rx_bytes + rx_bytes;
  stats->multicast = stats->multicast + rx_multicast;
  stats->tx_packets = stats->tx_packets + tx_packets;
  stats->tx_bytes = stats->tx_bytes + tx_bytes;
  rx_dropped = p->rx_dropped + rx_dropped;
  tx_dropped = p->tx_dropped + tx_dropped;
  ldv_48218:
  tmp___1 = cpumask_next(i, cpu_possible_mask);
  i = (int )tmp___1;
  if (i < nr_cpu_ids) {
    goto ldv_48217;
  } else {
  }
  stats->rx_dropped = (__u64 )rx_dropped;
  stats->tx_dropped = (__u64 )tx_dropped;
  return (stats);
}
}
static int team_vlan_rx_add_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48234;
  ldv_48233:
  err = vlan_vid_add(port->dev, (int )proto, (int )vid);
  if (err != 0) {
    goto unwind;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48234: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48233;
  } else {
  }
  mutex_unlock(& team->lock);
  return (0);
  unwind:
  __mptr___1 = (struct list_head const *)port->list.prev;
  port = (struct team_port *)__mptr___1 + 0xffffffffffffffe8UL;
  goto ldv_48241;
  ldv_48240:
  vlan_vid_del(port->dev, (int )proto, (int )vid);
  __mptr___2 = (struct list_head const *)port->list.prev;
  port = (struct team_port *)__mptr___2 + 0xffffffffffffffe8UL;
  ldv_48241: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48240;
  } else {
  }
  mutex_unlock(& team->lock);
  return (err);
}
}
static int team_vlan_rx_kill_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_379 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_381 __u___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  rcu_read_lock();
  __ptr = team->port_list.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48279;
  ldv_48278:
  vlan_vid_del(port->dev, (int )proto, (int )vid);
  __ptr___0 = port->list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48279: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48278;
  } else {
  }
  rcu_read_unlock();
  return (0);
}
}
static void team_poll_controller(struct net_device *dev )
{
  {
  return;
}
}
static void __team_netpoll_cleanup(struct team *team )
{
  struct team_port *port ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48293;
  ldv_48292:
  team_port_disable_netpoll(port);
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48293: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48292;
  } else {
  }
  return;
}
}
static void team_netpoll_cleanup(struct net_device *dev )
{
  struct team *team ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  __team_netpoll_cleanup(team);
  mutex_unlock(& team->lock);
  return;
}
}
static int team_netpoll_setup(struct net_device *dev , struct netpoll_info *npifo )
{
  struct team *team ;
  void *tmp ;
  struct team_port *port ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  err = 0;
  mutex_lock_nested(& team->lock, 0U);
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48312;
  ldv_48311:
  err = team_port_enable_netpoll(team, port);
  if (err != 0) {
    __team_netpoll_cleanup(team);
    goto ldv_48310;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48312: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48311;
  } else {
  }
  ldv_48310:
  mutex_unlock(& team->lock);
  return (err);
}
}
static int team_add_slave(struct net_device *dev , struct net_device *port_dev )
{
  struct team *team ;
  void *tmp ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  err = team_port_add(team, port_dev);
  mutex_unlock(& team->lock);
  return (err);
}
}
static int team_del_slave(struct net_device *dev , struct net_device *port_dev )
{
  struct team *team ;
  void *tmp ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mutex_lock_nested(& team->lock, 0U);
  err = team_port_del(team, port_dev);
  mutex_unlock(& team->lock);
  return (err);
}
}
static netdev_features_t team_fix_features(struct net_device *dev , netdev_features_t features )
{
  struct team_port *port ;
  struct team *team ;
  void *tmp ;
  netdev_features_t mask ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_383 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_385 __u___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  mask = features;
  features = features & 0xffffffffffe0fb9eULL;
  features = features | 34361835520ULL;
  rcu_read_lock();
  __ptr = team->port_list.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48361;
  ldv_48360:
  features = netdev_increment_features(features, (port->dev)->features, mask);
  __ptr___0 = port->list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48361: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48360;
  } else {
  }
  rcu_read_unlock();
  features = netdev_add_tso_features(features, mask);
  return (features);
}
}
static int team_change_carrier(struct net_device *dev , bool new_carrier )
{
  struct team *team ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  team->user_carrier_enabled = 1;
  if ((int )new_carrier) {
    netif_carrier_on(dev);
  } else {
    netif_carrier_off(dev);
  }
  return (0);
}
}
static struct net_device_ops const team_netdev_ops =
     {& team_init, & team_uninit, & team_open, & team_close, & team_xmit, & team_select_queue,
    & team_change_rx_flags, & team_set_rx_mode, & team_set_mac_address, 0, 0, 0, & team_change_mtu,
    0, 0, & team_get_stats64, 0, & team_vlan_rx_add_vid, & team_vlan_rx_kill_vid,
    & team_poll_controller, & team_netpoll_setup, & team_netpoll_cleanup, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & team_add_slave, & team_del_slave,
    & team_fix_features, 0, 0, 0, & switchdev_port_fdb_add, & switchdev_port_fdb_del,
    & switchdev_port_fdb_dump, & switchdev_port_bridge_setlink, & switchdev_port_bridge_getlink,
    & switchdev_port_bridge_dellink, & team_change_carrier, 0, 0, 0, 0, 0, 0, 0, 0,
    & passthru_features_check, 0, 0};
static void team_ethtool_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *drvinfo )
{
  {
  strlcpy((char *)(& drvinfo->driver), "team", 32UL);
  strlcpy((char *)(& drvinfo->version), "4.2.0-rc1", 32UL);
  return;
}
}
static struct ethtool_ops const team_ethtool_ops =
     {0, 0, & team_ethtool_get_drvinfo, 0, 0, 0, 0, 0, 0, 0, & ethtool_op_get_link,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void team_setup_by_port(struct net_device *dev , struct net_device *port_dev )
{
  {
  dev->header_ops = port_dev->header_ops;
  dev->type = port_dev->type;
  dev->hard_header_len = port_dev->hard_header_len;
  dev->addr_len = port_dev->addr_len;
  dev->mtu = port_dev->mtu;
  memmove((void *)(& dev->broadcast), (void const *)(& port_dev->broadcast), (size_t )port_dev->addr_len);
  eth_hw_addr_inherit(dev, port_dev);
  return;
}
}
static int team_dev_type_check_change(struct net_device *dev , struct net_device *port_dev )
{
  struct team *team ;
  void *tmp ;
  char *portname ;
  int err ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp;
  portname = (char *)(& port_dev->name);
  if ((int )dev->type == (int )port_dev->type) {
    return (0);
  } else {
  }
  tmp___0 = list_empty((struct list_head const *)(& team->port_list));
  if (tmp___0 == 0) {
    netdev_err((struct net_device const *)dev, "Device %s is of different type\n",
               portname);
    return (-16);
  } else {
  }
  err = call_netdevice_notifiers(14UL, dev);
  err = notifier_to_errno(err);
  if (err != 0) {
    netdev_err((struct net_device const *)dev, "Refused to change device type\n");
    return (err);
  } else {
  }
  dev_uc_flush(dev);
  dev_mc_flush(dev);
  team_setup_by_port(dev, port_dev);
  call_netdevice_notifiers(15UL, dev);
  return (0);
}
}
static void team_setup(struct net_device *dev )
{
  {
  ether_setup(dev);
  dev->netdev_ops = & team_netdev_ops;
  dev->ethtool_ops = & team_ethtool_ops;
  dev->destructor = & team_destructor;
  dev->tx_queue_len = 0UL;
  dev->flags = dev->flags | 4096U;
  dev->priv_flags = dev->priv_flags & 4294900735U;
  dev->priv_flags = dev->priv_flags | 1179648U;
  dev->features = dev->features | 4096ULL;
  dev->features = dev->features | 16384ULL;
  dev->features = dev->features | 8192ULL;
  dev->hw_features = 1672187ULL;
  dev->hw_features = dev->hw_features & 0xffffffffffffffedULL;
  dev->features = dev->features | dev->hw_features;
  return;
}
}
static int team_newlink(struct net *src_net , struct net_device *dev , struct nlattr **tb ,
                        struct nlattr **data )
{
  int tmp ;
  {
  if ((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr *)0)) {
    eth_hw_addr_random(dev);
  } else {
  }
  tmp = register_netdevice(dev);
  return (tmp);
}
}
static int team_validate(struct nlattr **tb , struct nlattr **data )
{
  int tmp ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )*(tb + 1UL) != (unsigned long )((struct nlattr *)0)) {
    tmp = nla_len((struct nlattr const *)*(tb + 1UL));
    if (tmp != 6) {
      return (-22);
    } else {
    }
    tmp___0 = nla_data((struct nlattr const *)*(tb + 1UL));
    tmp___1 = is_valid_ether_addr((u8 const *)tmp___0);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-99);
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned int team_get_num_tx_queues(void)
{
  {
  return (16U);
}
}
static unsigned int team_get_num_rx_queues(void)
{
  {
  return (16U);
}
}
static struct rtnl_link_ops team_link_ops =
     {{0, 0}, "team", 976UL, & team_setup, 0, 0, & team_validate, & team_newlink, 0,
    0, 0, 0, 0, 0, & team_get_num_tx_queues, & team_get_num_rx_queues, 0, 0, 0, 0,
    0, 0, 0};
static struct genl_family team_nl_family =
     {0U, 0U, {'t', 'e', 'a', 'm', '\000'}, 1U, 3U, 1, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
    0U, 0U, 0U, {0, 0}, 0};
static struct nla_policy const team_nl_policy[4U] = { {0U, (unsigned short)0},
        {3U, (unsigned short)0},
        {8U, (unsigned short)0},
        {8U, (unsigned short)0}};
static struct nla_policy const team_nl_option_policy[8U] = { {0U, (unsigned short)0},
        {5U, 32U},
        {6U, (unsigned short)0},
        {1U, (unsigned short)0},
        {11U, (unsigned short)0}};
static int team_nl_cmd_noop(struct sk_buff *skb , struct genl_info *info )
{
  struct sk_buff *msg ;
  void *hdr ;
  int err ;
  struct net *tmp ;
  int tmp___0 ;
  {
  msg = nlmsg_new(3760UL, 208U);
  if ((unsigned long )msg == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq, & team_nl_family, 0, 0);
  if ((unsigned long )hdr == (unsigned long )((void *)0)) {
    err = -90;
    goto err_msg_put;
  } else {
  }
  genlmsg_end(msg, hdr);
  tmp = genl_info_net(info);
  tmp___0 = genlmsg_unicast(tmp, msg, info->snd_portid);
  return (tmp___0);
  err_msg_put:
  nlmsg_free(msg);
  return (err);
}
}
static struct team *team_nl_team_get(struct genl_info *info )
{
  struct net *net ;
  struct net *tmp ;
  int ifindex ;
  struct net_device *dev ;
  struct team *team ;
  u32 tmp___0 ;
  void *tmp___1 ;
  {
  tmp = genl_info_net(info);
  net = tmp;
  if ((unsigned long )*(info->attrs + 1UL) == (unsigned long )((struct nlattr *)0)) {
    return ((struct team *)0);
  } else {
  }
  tmp___0 = nla_get_u32((struct nlattr const *)*(info->attrs + 1UL));
  ifindex = (int )tmp___0;
  dev = dev_get_by_index(net, ifindex);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0) || (unsigned long )dev->netdev_ops != (unsigned long )(& team_netdev_ops)) {
    if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
      dev_put(dev);
    } else {
    }
    return ((struct team *)0);
  } else {
  }
  tmp___1 = netdev_priv((struct net_device const *)dev);
  team = (struct team *)tmp___1;
  mutex_lock_nested(& team->lock, 0U);
  return (team);
}
}
static void team_nl_team_put(struct team *team )
{
  {
  mutex_unlock(& team->lock);
  dev_put(team->dev);
  return;
}
}
static int team_nl_send_unicast(struct sk_buff *skb , struct team *team , u32 portid )
{
  struct net *tmp ;
  int tmp___0 ;
  {
  tmp = dev_net((struct net_device const *)team->dev);
  tmp___0 = genlmsg_unicast(tmp, skb, portid);
  return (tmp___0);
}
}
static int team_nl_fill_one_option_get(struct sk_buff *skb , struct team *team , struct team_option_inst *opt_inst )
{
  struct nlattr *option_item ;
  struct team_option *option ;
  struct team_option_inst_info *opt_inst_info ;
  struct team_gsetter_ctx ctx ;
  int err ;
  int tmp ;
  int tmp___0 ;
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
  {
  option = opt_inst->option;
  opt_inst_info = & opt_inst->info;
  ctx.info = opt_inst_info;
  err = team_option_get(team, opt_inst, & ctx);
  if (err != 0) {
    return (err);
  } else {
  }
  option_item = nla_nest_start(skb, 1);
  if ((unsigned long )option_item == (unsigned long )((struct nlattr *)0)) {
    return (-90);
  } else {
  }
  tmp = nla_put_string(skb, 1, option->name);
  if (tmp != 0) {
    goto nest_cancel;
  } else {
  }
  if ((unsigned long )opt_inst_info->port != (unsigned long )((struct team_port *)0)) {
    tmp___0 = nla_put_u32(skb, 6, (u32 )((opt_inst_info->port)->dev)->ifindex);
    if (tmp___0 != 0) {
      goto nest_cancel;
    } else {
    }
  } else {
  }
  if ((opt_inst->option)->array_size != 0U) {
    tmp___1 = nla_put_u32(skb, 7, opt_inst_info->array_index);
    if (tmp___1 != 0) {
      goto nest_cancel;
    } else {
    }
  } else {
  }
  switch ((unsigned int )option->type) {
  case 0U:
  tmp___2 = nla_put_u8(skb, 3, 3);
  if (tmp___2 != 0) {
    goto nest_cancel;
  } else {
  }
  tmp___3 = nla_put_u32(skb, 4, ctx.data.u32_val);
  if (tmp___3 != 0) {
    goto nest_cancel;
  } else {
  }
  goto ldv_48447;
  case 1U:
  tmp___4 = nla_put_u8(skb, 3, 5);
  if (tmp___4 != 0) {
    goto nest_cancel;
  } else {
  }
  tmp___5 = nla_put_string(skb, 4, ctx.data.str_val);
  if (tmp___5 != 0) {
    goto nest_cancel;
  } else {
  }
  goto ldv_48447;
  case 2U:
  tmp___6 = nla_put_u8(skb, 3, 11);
  if (tmp___6 != 0) {
    goto nest_cancel;
  } else {
  }
  tmp___7 = nla_put(skb, 4, (int )ctx.data.bin_val.len, ctx.data.bin_val.ptr);
  if (tmp___7 != 0) {
    goto nest_cancel;
  } else {
  }
  goto ldv_48447;
  case 3U:
  tmp___8 = nla_put_u8(skb, 3, 6);
  if (tmp___8 != 0) {
    goto nest_cancel;
  } else {
  }
  if ((int )ctx.data.bool_val) {
    tmp___9 = nla_put_flag(skb, 4);
    if (tmp___9 != 0) {
      goto nest_cancel;
    } else {
    }
  } else {
  }
  goto ldv_48447;
  case 4U:
  tmp___10 = nla_put_u8(skb, 3, 14);
  if (tmp___10 != 0) {
    goto nest_cancel;
  } else {
  }
  tmp___11 = nla_put_s32(skb, 4, ctx.data.s32_val);
  if (tmp___11 != 0) {
    goto nest_cancel;
  } else {
  }
  goto ldv_48447;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c"),
                       "i" (2284), "i" (12UL));
  ldv_48453: ;
  goto ldv_48453;
  }
  ldv_48447: ;
  if ((int )opt_inst->removed) {
    tmp___12 = nla_put_flag(skb, 5);
    if (tmp___12 != 0) {
      goto nest_cancel;
    } else {
    }
  } else {
  }
  if ((int )opt_inst->changed) {
    tmp___13 = nla_put_flag(skb, 2);
    if (tmp___13 != 0) {
      goto nest_cancel;
    } else {
    }
    opt_inst->changed = 0;
  } else {
  }
  nla_nest_end(skb, option_item);
  return (0);
  nest_cancel:
  nla_nest_cancel(skb, option_item);
  return (-90);
}
}
static int __send_and_alloc_skb(struct sk_buff **pskb , struct team *team , u32 portid ,
                                team_nl_send_func_t *send_func )
{
  int err ;
  {
  if ((unsigned long )*pskb != (unsigned long )((struct sk_buff *)0)) {
    err = (*send_func)(*pskb, team, portid);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  *pskb = genlmsg_new(3756UL, 208U);
  if ((unsigned long )*pskb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int team_nl_send_options_get(struct team *team , u32 portid , u32 seq , int flags ,
                                    team_nl_send_func_t *send_func , struct list_head *sel_opt_inst_list )
{
  struct nlattr *option_list ;
  struct nlmsghdr *nlh ;
  void *hdr ;
  struct team_option_inst *opt_inst ;
  int err ;
  struct sk_buff *skb ;
  bool incomplete ;
  int i ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  skb = (struct sk_buff *)0;
  __mptr = (struct list_head const *)sel_opt_inst_list->next;
  opt_inst = (struct team_option_inst *)__mptr + 0xfffffffffffffff0UL;
  start_again:
  err = __send_and_alloc_skb(& skb, team, portid, send_func);
  if (err != 0) {
    return (err);
  } else {
  }
  hdr = genlmsg_put(skb, portid, seq, & team_nl_family, flags | 2, 2);
  if ((unsigned long )hdr == (unsigned long )((void *)0)) {
    return (-90);
  } else {
  }
  tmp = nla_put_u32(skb, 1, (u32 )(team->dev)->ifindex);
  if (tmp != 0) {
    goto nla_put_failure;
  } else {
  }
  option_list = nla_nest_start(skb, 2);
  if ((unsigned long )option_list == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  i = 0;
  incomplete = 0;
  goto ldv_48486;
  ldv_48485:
  err = team_nl_fill_one_option_get(skb, team, opt_inst);
  if (err != 0) {
    if (err == -90) {
      if (i == 0) {
        goto errout;
      } else {
      }
      incomplete = 1;
      goto ldv_48484;
    } else {
    }
    goto errout;
  } else {
  }
  i = i + 1;
  __mptr___0 = (struct list_head const *)opt_inst->tmp_list.next;
  opt_inst = (struct team_option_inst *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_48486: ;
  if ((unsigned long )(& opt_inst->tmp_list) != (unsigned long )sel_opt_inst_list) {
    goto ldv_48485;
  } else {
  }
  ldv_48484:
  nla_nest_end(skb, option_list);
  genlmsg_end(skb, hdr);
  if ((int )incomplete) {
    goto start_again;
  } else {
  }
  send_done:
  nlh = nlmsg_put(skb, portid, seq, 3, 0, flags | 2);
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    err = __send_and_alloc_skb(& skb, team, portid, send_func);
    if (err != 0) {
      goto errout;
    } else {
    }
    goto send_done;
  } else {
  }
  tmp___0 = (*send_func)(skb, team, portid);
  return (tmp___0);
  nla_put_failure:
  err = -90;
  errout:
  genlmsg_cancel(skb, hdr);
  nlmsg_free(skb);
  return (err);
}
}
static int team_nl_cmd_options_get(struct sk_buff *skb , struct genl_info *info )
{
  struct team *team ;
  struct team_option_inst *opt_inst ;
  int err ;
  struct list_head sel_opt_inst_list ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  sel_opt_inst_list.next = & sel_opt_inst_list;
  sel_opt_inst_list.prev = & sel_opt_inst_list;
  team = team_nl_team_get(info);
  if ((unsigned long )team == (unsigned long )((struct team *)0)) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  goto ldv_48501;
  ldv_48500:
  list_add_tail(& opt_inst->tmp_list, & sel_opt_inst_list);
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  opt_inst = (struct team_option_inst *)__mptr___0;
  ldv_48501: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_48500;
  } else {
  }
  err = team_nl_send_options_get(team, info->snd_portid, info->snd_seq, 4, & team_nl_send_unicast,
                                 & sel_opt_inst_list);
  team_nl_team_put(team);
  return (err);
}
}
static int team_nl_send_event_options_get(struct team *team , struct list_head *sel_opt_inst_list ) ;
static int team_nl_cmd_options_set(struct sk_buff *skb , struct genl_info *info )
{
  struct team *team ;
  int err ;
  int i ;
  struct nlattr *nl_option ;
  struct list_head opt_inst_list ;
  void *tmp ;
  struct nlattr *opt_attrs[8U] ;
  struct nlattr *attr ;
  struct nlattr *attr_data ;
  enum team_option_type opt_type ;
  int opt_port_ifindex ;
  u32 opt_array_index ;
  bool opt_is_array ;
  struct team_option_inst *opt_inst ;
  char *opt_name ;
  bool opt_found ;
  int tmp___0 ;
  u8 tmp___1 ;
  void *tmp___2 ;
  u32 tmp___3 ;
  struct list_head const *__mptr ;
  struct team_option *option ;
  struct team_gsetter_ctx ctx ;
  struct team_option_inst_info *opt_inst_info ;
  int tmp_ifindex ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  struct list_head const *__mptr___0 ;
  int tmp___9 ;
  {
  err = 0;
  opt_inst_list.next = & opt_inst_list;
  opt_inst_list.prev = & opt_inst_list;
  team = team_nl_team_get(info);
  if ((unsigned long )team == (unsigned long )((struct team *)0)) {
    return (-22);
  } else {
  }
  err = -22;
  if ((unsigned long )*(info->attrs + 2UL) == (unsigned long )((struct nlattr *)0)) {
    err = -22;
    goto team_put;
  } else {
  }
  tmp = nla_data((struct nlattr const *)*(info->attrs + 2UL));
  nl_option = (struct nlattr *)tmp;
  i = nla_len((struct nlattr const *)*(info->attrs + 2UL));
  goto ldv_48554;
  ldv_48553:
  opt_port_ifindex = 0;
  opt_array_index = 0U;
  opt_is_array = 0;
  opt_found = 0;
  tmp___0 = nla_type((struct nlattr const *)nl_option);
  if (tmp___0 != 1) {
    err = -22;
    goto team_put;
  } else {
  }
  err = nla_parse_nested((struct nlattr **)(& opt_attrs), 7, (struct nlattr const *)nl_option,
                         (struct nla_policy const *)(& team_nl_option_policy));
  if (err != 0) {
    goto team_put;
  } else {
  }
  if ((unsigned long )opt_attrs[1] == (unsigned long )((struct nlattr *)0) || (unsigned long )opt_attrs[3] == (unsigned long )((struct nlattr *)0)) {
    err = -22;
    goto team_put;
  } else {
  }
  tmp___1 = nla_get_u8((struct nlattr const *)opt_attrs[3]);
  switch ((int )tmp___1) {
  case 3:
  opt_type = 0;
  goto ldv_48527;
  case 5:
  opt_type = 1;
  goto ldv_48527;
  case 11:
  opt_type = 2;
  goto ldv_48527;
  case 6:
  opt_type = 3;
  goto ldv_48527;
  case 14:
  opt_type = 4;
  goto ldv_48527;
  default: ;
  goto team_put;
  }
  ldv_48527:
  attr_data = opt_attrs[4];
  if ((unsigned int )opt_type != 3U && (unsigned long )attr_data == (unsigned long )((struct nlattr *)0)) {
    err = -22;
    goto team_put;
  } else {
  }
  tmp___2 = nla_data((struct nlattr const *)opt_attrs[1]);
  opt_name = (char *)tmp___2;
  attr = opt_attrs[6];
  if ((unsigned long )attr != (unsigned long )((struct nlattr *)0)) {
    tmp___3 = nla_get_u32((struct nlattr const *)attr);
    opt_port_ifindex = (int )tmp___3;
  } else {
  }
  attr = opt_attrs[7];
  if ((unsigned long )attr != (unsigned long )((struct nlattr *)0)) {
    opt_is_array = 1;
    opt_array_index = nla_get_u32((struct nlattr const *)attr);
  } else {
  }
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  goto ldv_48551;
  ldv_48550:
  option = opt_inst->option;
  opt_inst_info = & opt_inst->info;
  tmp_ifindex = (unsigned long )opt_inst_info->port != (unsigned long )((struct team_port *)0) ? ((opt_inst_info->port)->dev)->ifindex : 0;
  if ((unsigned int )option->type != (unsigned int )opt_type) {
    goto ldv_48541;
  } else {
    tmp___4 = strcmp(option->name, (char const *)opt_name);
    if (tmp___4 != 0) {
      goto ldv_48541;
    } else
    if (tmp_ifindex != opt_port_ifindex) {
      goto ldv_48541;
    } else
    if (option->array_size != 0U && ! opt_is_array) {
      goto ldv_48541;
    } else
    if (opt_inst_info->array_index != opt_array_index) {
      goto ldv_48541;
    } else {
    }
  }
  opt_found = 1;
  ctx.info = opt_inst_info;
  switch ((unsigned int )opt_type) {
  case 0U:
  ctx.data.u32_val = nla_get_u32((struct nlattr const *)attr_data);
  goto ldv_48543;
  case 1U:
  tmp___5 = nla_len((struct nlattr const *)attr_data);
  if (tmp___5 > 32) {
    err = -22;
    goto team_put;
  } else {
  }
  tmp___6 = nla_data((struct nlattr const *)attr_data);
  ctx.data.str_val = (char const *)tmp___6;
  goto ldv_48543;
  case 2U:
  tmp___7 = nla_len((struct nlattr const *)attr_data);
  ctx.data.bin_val.len = (u32 )tmp___7;
  tmp___8 = nla_data((struct nlattr const *)attr_data);
  ctx.data.bin_val.ptr = (void const *)tmp___8;
  goto ldv_48543;
  case 3U:
  ctx.data.bool_val = (unsigned long )attr_data != (unsigned long )((struct nlattr *)0);
  goto ldv_48543;
  case 4U:
  ctx.data.s32_val = nla_get_s32((struct nlattr const *)attr_data);
  goto ldv_48543;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12720/dscv_tempdir/dscv/ri/08_1a/drivers/net/team/team.c"),
                       "i" (2534), "i" (12UL));
  ldv_48549: ;
  goto ldv_48549;
  }
  ldv_48543:
  err = team_option_set(team, opt_inst, & ctx);
  if (err != 0) {
    goto team_put;
  } else {
  }
  opt_inst->changed = 1;
  list_add(& opt_inst->tmp_list, & opt_inst_list);
  ldv_48541:
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  opt_inst = (struct team_option_inst *)__mptr___0;
  ldv_48551: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_48550;
  } else {
  }
  if (! opt_found) {
    err = -2;
    goto team_put;
  } else {
  }
  nl_option = nla_next((struct nlattr const *)nl_option, & i);
  ldv_48554:
  tmp___9 = nla_ok((struct nlattr const *)nl_option, i);
  if (tmp___9 != 0) {
    goto ldv_48553;
  } else {
  }
  err = team_nl_send_event_options_get(team, & opt_inst_list);
  team_put:
  team_nl_team_put(team);
  return (err);
}
}
static int team_nl_fill_one_port_get(struct sk_buff *skb , struct team_port *port )
{
  struct nlattr *port_item ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  port_item = nla_nest_start(skb, 1);
  if ((unsigned long )port_item == (unsigned long )((struct nlattr *)0)) {
    goto nest_cancel;
  } else {
  }
  tmp = nla_put_u32(skb, 1, (u32 )(port->dev)->ifindex);
  if (tmp != 0) {
    goto nest_cancel;
  } else {
  }
  if ((int )port->changed) {
    tmp___0 = nla_put_flag(skb, 2);
    if (tmp___0 != 0) {
      goto nest_cancel;
    } else {
    }
    port->changed = 0;
  } else {
  }
  if ((int )port->removed) {
    tmp___1 = nla_put_flag(skb, 6);
    if (tmp___1 != 0) {
      goto nest_cancel;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if ((int )port->state.linkup) {
    tmp___2 = nla_put_flag(skb, 3);
    if (tmp___2 != 0) {
      goto nest_cancel;
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___3 = nla_put_u32(skb, 4, port->state.speed);
    if (tmp___3 != 0) {
      goto nest_cancel;
    } else {
      tmp___4 = nla_put_u8(skb, 5, (int )port->state.duplex);
      if (tmp___4 != 0) {
        goto nest_cancel;
      } else {
      }
    }
  }
  nla_nest_end(skb, port_item);
  return (0);
  nest_cancel:
  nla_nest_cancel(skb, port_item);
  return (-90);
}
}
static int team_nl_send_port_list_get(struct team *team , u32 portid , u32 seq , int flags ,
                                      team_nl_send_func_t *send_func , struct team_port *one_port )
{
  struct nlattr *port_list ;
  struct nlmsghdr *nlh ;
  void *hdr ;
  struct team_port *port ;
  int err ;
  struct sk_buff *skb ;
  bool incomplete ;
  int i ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  {
  skb = (struct sk_buff *)0;
  tmp___0 = list_empty((struct list_head const *)(& team->port_list));
  if (tmp___0 == 0) {
    __mptr = (struct list_head const *)team->port_list.next;
    port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  } else {
    port = (struct team_port *)0;
  }
  start_again:
  err = __send_and_alloc_skb(& skb, team, portid, send_func);
  if (err != 0) {
    return (err);
  } else {
  }
  hdr = genlmsg_put(skb, portid, seq, & team_nl_family, flags | 2, 3);
  if ((unsigned long )hdr == (unsigned long )((void *)0)) {
    return (-90);
  } else {
  }
  tmp___1 = nla_put_u32(skb, 1, (u32 )(team->dev)->ifindex);
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  port_list = nla_nest_start(skb, 3);
  if ((unsigned long )port_list == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  i = 0;
  incomplete = 0;
  if ((unsigned long )one_port != (unsigned long )((struct team_port *)0)) {
    err = team_nl_fill_one_port_get(skb, one_port);
    if (err != 0) {
      goto errout;
    } else {
    }
  } else
  if ((unsigned long )port != (unsigned long )((struct team_port *)0)) {
    goto ldv_48587;
    ldv_48586:
    err = team_nl_fill_one_port_get(skb, port);
    if (err != 0) {
      if (err == -90) {
        if (i == 0) {
          goto errout;
        } else {
        }
        incomplete = 1;
        goto ldv_48585;
      } else {
      }
      goto errout;
    } else {
    }
    i = i + 1;
    __mptr___0 = (struct list_head const *)port->list.next;
    port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
    ldv_48587: ;
    if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
      goto ldv_48586;
    } else {
    }
    ldv_48585: ;
  } else {
  }
  nla_nest_end(skb, port_list);
  genlmsg_end(skb, hdr);
  if ((int )incomplete) {
    goto start_again;
  } else {
  }
  send_done:
  nlh = nlmsg_put(skb, portid, seq, 3, 0, flags | 2);
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    err = __send_and_alloc_skb(& skb, team, portid, send_func);
    if (err != 0) {
      goto errout;
    } else {
    }
    goto send_done;
  } else {
  }
  tmp___2 = (*send_func)(skb, team, portid);
  return (tmp___2);
  nla_put_failure:
  err = -90;
  errout:
  genlmsg_cancel(skb, hdr);
  nlmsg_free(skb);
  return (err);
}
}
static int team_nl_cmd_port_list_get(struct sk_buff *skb , struct genl_info *info )
{
  struct team *team ;
  int err ;
  {
  team = team_nl_team_get(info);
  if ((unsigned long )team == (unsigned long )((struct team *)0)) {
    return (-22);
  } else {
  }
  err = team_nl_send_port_list_get(team, info->snd_portid, info->snd_seq, 4, & team_nl_send_unicast,
                                   (struct team_port *)0);
  team_nl_team_put(team);
  return (err);
}
}
static struct genl_ops const team_nl_ops[4U] = { {(struct nla_policy const *)(& team_nl_policy), & team_nl_cmd_noop, 0, 0, 0U,
      (unsigned char)0, (unsigned char)0},
        {(struct nla_policy const *)(& team_nl_policy), & team_nl_cmd_options_set,
      0, 0, 1U, (unsigned char)0, 1U},
        {(struct nla_policy const *)(& team_nl_policy), & team_nl_cmd_options_get,
      0, 0, 2U, (unsigned char)0, 1U},
        {(struct nla_policy const *)(& team_nl_policy), & team_nl_cmd_port_list_get,
      0, 0, 3U, (unsigned char)0, 1U}};
static struct genl_multicast_group const team_nl_mcgrps[1U] = { {{'c', 'h', 'a', 'n', 'g', 'e', '_', 'e', 'v', 'e', 'n', 't', '\000'}}};
static int team_nl_send_multicast(struct sk_buff *skb , struct team *team , u32 portid )
{
  struct net *tmp ;
  int tmp___0 ;
  {
  tmp = dev_net((struct net_device const *)team->dev);
  tmp___0 = genlmsg_multicast_netns(& team_nl_family, tmp, skb, 0U, 0U, 208U);
  return (tmp___0);
}
}
static int team_nl_send_event_options_get(struct team *team , struct list_head *sel_opt_inst_list )
{
  int tmp ;
  {
  tmp = team_nl_send_options_get(team, 0U, 0U, 0, & team_nl_send_multicast, sel_opt_inst_list);
  return (tmp);
}
}
static int team_nl_send_event_port_get(struct team *team , struct team_port *port )
{
  int tmp ;
  {
  tmp = team_nl_send_port_list_get(team, 0U, 0U, 0, & team_nl_send_multicast, port);
  return (tmp);
}
}
static int team_nl_init(void)
{
  int tmp ;
  {
  tmp = _genl_register_family_with_ops_grps(& team_nl_family, (struct genl_ops const *)(& team_nl_ops),
                                            4UL, (struct genl_multicast_group const *)(& team_nl_mcgrps),
                                            1UL);
  return (tmp);
}
}
static void team_nl_fini(void)
{
  {
  genl_unregister_family(& team_nl_family);
  return;
}
}
static void __team_options_change_check(struct team *team )
{
  int err ;
  struct team_option_inst *opt_inst ;
  struct list_head sel_opt_inst_list ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  sel_opt_inst_list.next = & sel_opt_inst_list;
  sel_opt_inst_list.prev = & sel_opt_inst_list;
  __mptr = (struct list_head const *)team->option_inst_list.next;
  opt_inst = (struct team_option_inst *)__mptr;
  goto ldv_48631;
  ldv_48630: ;
  if ((int )opt_inst->changed) {
    list_add_tail(& opt_inst->tmp_list, & sel_opt_inst_list);
  } else {
  }
  __mptr___0 = (struct list_head const *)opt_inst->list.next;
  opt_inst = (struct team_option_inst *)__mptr___0;
  ldv_48631: ;
  if ((unsigned long )(& opt_inst->list) != (unsigned long )(& team->option_inst_list)) {
    goto ldv_48630;
  } else {
  }
  err = team_nl_send_event_options_get(team, & sel_opt_inst_list);
  if (err != 0 && err != -3) {
    netdev_warn((struct net_device const *)team->dev, "Failed to send options change via netlink (err %d)\n",
                err);
  } else {
  }
  return;
}
}
static void __team_port_change_send(struct team_port *port , bool linkup )
{
  int err ;
  struct ethtool_cmd ecmd ;
  {
  port->changed = 1;
  port->state.linkup = linkup;
  team_refresh_port_linkup(port);
  if ((int )linkup) {
    err = __ethtool_get_settings(port->dev, & ecmd);
    if (err == 0) {
      port->state.speed = ethtool_cmd_speed((struct ethtool_cmd const *)(& ecmd));
      port->state.duplex = ecmd.duplex;
      goto send_event;
    } else {
    }
  } else {
  }
  port->state.speed = 0U;
  port->state.duplex = 0U;
  send_event:
  err = team_nl_send_event_port_get(port->team, port);
  if (err != 0 && err != -3) {
    netdev_warn((struct net_device const *)(port->team)->dev, "Failed to send port change of device %s via netlink (err %d)\n",
                (char *)(& (port->dev)->name), err);
  } else {
  }
  return;
}
}
static void __team_carrier_check(struct team *team )
{
  struct team_port *port ;
  bool team_linkup ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((int )team->user_carrier_enabled) {
    return;
  } else {
  }
  team_linkup = 0;
  __mptr = (struct list_head const *)team->port_list.next;
  port = (struct team_port *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_48651;
  ldv_48650: ;
  if ((int )port->linkup) {
    team_linkup = 1;
    goto ldv_48649;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->list.next;
  port = (struct team_port *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_48651: ;
  if ((unsigned long )(& port->list) != (unsigned long )(& team->port_list)) {
    goto ldv_48650;
  } else {
  }
  ldv_48649: ;
  if ((int )team_linkup) {
    netif_carrier_on(team->dev);
  } else {
    netif_carrier_off(team->dev);
  }
  return;
}
}
static void __team_port_change_check(struct team_port *port , bool linkup )
{
  {
  if ((int )port->state.linkup != (int )linkup) {
    __team_port_change_send(port, (int )linkup);
  } else {
  }
  __team_carrier_check(port->team);
  return;
}
}
static void __team_port_change_port_added(struct team_port *port , bool linkup )
{
  {
  __team_port_change_send(port, (int )linkup);
  __team_carrier_check(port->team);
  return;
}
}
static void __team_port_change_port_removed(struct team_port *port )
{
  {
  port->removed = 1;
  __team_port_change_send(port, 0);
  __team_carrier_check(port->team);
  return;
}
}
static void team_port_change_check(struct team_port *port , bool linkup )
{
  struct team *team ;
  {
  team = port->team;
  mutex_lock_nested(& team->lock, 0U);
  __team_port_change_check(port, (int )linkup);
  mutex_unlock(& team->lock);
  return;
}
}
static int team_device_event(struct notifier_block *unused , unsigned long event ,
                             void *ptr )
{
  struct net_device *dev ;
  struct net_device *tmp ;
  struct team_port *port ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_notifier_info_to_dev((struct netdev_notifier_info const *)ptr);
  dev = tmp;
  port = team_port_get_rtnl((struct net_device const *)dev);
  if ((unsigned long )port == (unsigned long )((struct team_port *)0)) {
    return (0);
  } else {
  }
  switch (event) {
  case 1UL:
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  if ((int )tmp___0) {
    team_port_change_check(port, 1);
  } else {
  }
  goto ldv_48676;
  case 2UL:
  team_port_change_check(port, 0);
  goto ldv_48676;
  case 4UL:
  tmp___2 = netif_running((struct net_device const *)port->dev);
  if ((int )tmp___2) {
    tmp___1 = netif_carrier_ok((struct net_device const *)port->dev);
    team_port_change_check(port, (int )tmp___1);
  } else {
  }
  goto ldv_48676;
  case 6UL:
  team_del_slave((port->team)->dev, dev);
  goto ldv_48676;
  case 11UL:
  team_compute_features(port->team);
  goto ldv_48676;
  case 23UL: ;
  if (! (port->team)->port_mtu_change_allowed) {
    return (32770);
  } else {
  }
  goto ldv_48676;
  case 14UL: ;
  return (32770);
  case 22UL:
  call_netdevice_notifiers(event, (port->team)->dev);
  goto ldv_48676;
  }
  ldv_48676: ;
  return (0);
}
}
static struct notifier_block team_notifier_block = {& team_device_event, 0, 0};
static int team_module_init(void)
{
  int err ;
  {
  register_netdevice_notifier(& team_notifier_block);
  err = rtnl_link_register(& team_link_ops);
  if (err != 0) {
    goto err_rtnl_reg;
  } else {
  }
  err = team_nl_init();
  if (err != 0) {
    goto err_nl_init;
  } else {
  }
  return (0);
  err_nl_init:
  rtnl_link_unregister(& team_link_ops);
  err_rtnl_reg:
  unregister_netdevice_notifier(& team_notifier_block);
  return (err);
}
}
static void team_module_exit(void)
{
  {
  team_nl_fini();
  rtnl_link_unregister(& team_link_ops);
  unregister_netdevice_notifier(& team_notifier_block);
  return;
}
}
extern int ldv_release_4(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
extern int ldv_init_4(void) ;
void ldv_net_device_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  team_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    team_notify_peers_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    team_notify_peers_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    team_notify_peers_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    team_notify_peers_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    team_notify_peers_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_48751;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    team_notify_peers_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_48751;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    team_notify_peers_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_48751;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    team_notify_peers_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_48751;
  default:
  ldv_stop();
  }
  ldv_48751: ;
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_ethtool_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  team_ethtool_ops_group0 = (struct net_device *)tmp;
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    team_mcast_rejoin_work(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    team_mcast_rejoin_work(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    team_mcast_rejoin_work(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    team_mcast_rejoin_work(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_rtnl_link_ops_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(3008UL);
  team_link_ops_group1 = (struct net_device *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  team_link_ops_group0 = (struct nlattr **)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  team_link_ops_group2 = (struct nlattr **)tmp___1;
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    team_mcast_rejoin_work(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_48783;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    team_mcast_rejoin_work(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_48783;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    team_mcast_rejoin_work(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_48783;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    team_mcast_rejoin_work(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_48783;
  default:
  ldv_stop();
  }
  ldv_48783: ;
  return;
}
}
int main(void)
{
  netdev_features_t ldvarg18 ;
  struct nlattr **ldvarg11 ;
  void *tmp ;
  u16 ldvarg32 ;
  struct netpoll_info *ldvarg7 ;
  void *tmp___0 ;
  u32 ldvarg23 ;
  u16 ldvarg12 ;
  void *ldvarg1 ;
  void *tmp___1 ;
  u16 ldvarg37 ;
  struct nlmsghdr *ldvarg29 ;
  void *tmp___2 ;
  u32 ldvarg24 ;
  struct ndmsg *ldvarg35 ;
  void *tmp___3 ;
  struct rtnl_link_stats64 *ldvarg0 ;
  void *tmp___4 ;
  void *ldvarg5 ;
  void *tmp___5 ;
  __be16 ldvarg33 ;
  int ldvarg16 ;
  struct sk_buff *ldvarg6 ;
  void *tmp___6 ;
  u16 (*ldvarg4)(struct net_device * , struct sk_buff * ) ;
  struct netlink_callback *ldvarg14 ;
  void *tmp___7 ;
  unsigned char *ldvarg34 ;
  void *tmp___8 ;
  u16 ldvarg28 ;
  bool ldvarg2 ;
  struct sk_buff *ldvarg20 ;
  void *tmp___9 ;
  struct nlmsghdr *ldvarg31 ;
  void *tmp___10 ;
  int ldvarg3 ;
  u16 ldvarg8 ;
  struct sk_buff *ldvarg13 ;
  void *tmp___11 ;
  struct nlattr **ldvarg36 ;
  void *tmp___12 ;
  struct ndmsg *ldvarg10 ;
  void *tmp___13 ;
  unsigned char *ldvarg9 ;
  void *tmp___14 ;
  u16 ldvarg26 ;
  __be16 ldvarg27 ;
  int ldvarg15 ;
  u16 ldvarg30 ;
  int ldvarg21 ;
  struct sk_buff *ldvarg17 ;
  void *tmp___15 ;
  u32 ldvarg25 ;
  struct sk_buff *ldvarg22 ;
  void *tmp___16 ;
  netdev_features_t ldvarg19 ;
  struct net *ldvarg38 ;
  void *tmp___17 ;
  struct notifier_block *ldvarg39 ;
  void *tmp___18 ;
  unsigned long ldvarg41 ;
  void *ldvarg40 ;
  void *tmp___19 ;
  struct ethtool_drvinfo *ldvarg42 ;
  void *tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg11 = (struct nlattr **)tmp;
  tmp___0 = ldv_init_zalloc(448UL);
  ldvarg7 = (struct netpoll_info *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg1 = tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  ldvarg29 = (struct nlmsghdr *)tmp___2;
  tmp___3 = ldv_init_zalloc(12UL);
  ldvarg35 = (struct ndmsg *)tmp___3;
  tmp___4 = ldv_init_zalloc(184UL);
  ldvarg0 = (struct rtnl_link_stats64 *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg5 = tmp___5;
  tmp___6 = ldv_init_zalloc(232UL);
  ldvarg6 = (struct sk_buff *)tmp___6;
  tmp___7 = ldv_init_zalloc(112UL);
  ldvarg14 = (struct netlink_callback *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg34 = (unsigned char *)tmp___8;
  tmp___9 = ldv_init_zalloc(232UL);
  ldvarg20 = (struct sk_buff *)tmp___9;
  tmp___10 = ldv_init_zalloc(16UL);
  ldvarg31 = (struct nlmsghdr *)tmp___10;
  tmp___11 = ldv_init_zalloc(232UL);
  ldvarg13 = (struct sk_buff *)tmp___11;
  tmp___12 = ldv_init_zalloc(8UL);
  ldvarg36 = (struct nlattr **)tmp___12;
  tmp___13 = ldv_init_zalloc(12UL);
  ldvarg10 = (struct ndmsg *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg9 = (unsigned char *)tmp___14;
  tmp___15 = ldv_init_zalloc(232UL);
  ldvarg17 = (struct sk_buff *)tmp___15;
  tmp___16 = ldv_init_zalloc(232UL);
  ldvarg22 = (struct sk_buff *)tmp___16;
  tmp___17 = ldv_init_zalloc(7104UL);
  ldvarg38 = (struct net *)tmp___17;
  tmp___18 = ldv_init_zalloc(24UL);
  ldvarg39 = (struct notifier_block *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg40 = tmp___19;
  tmp___20 = ldv_init_zalloc(196UL);
  ldvarg42 = (struct ethtool_drvinfo *)tmp___20;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  ldv_memset((void *)(& ldvarg32), 0, 2UL);
  ldv_memset((void *)(& ldvarg23), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 2UL);
  ldv_memset((void *)(& ldvarg37), 0, 2UL);
  ldv_memset((void *)(& ldvarg24), 0, 4UL);
  ldv_memset((void *)(& ldvarg33), 0, 2UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 2UL);
  ldv_memset((void *)(& ldvarg2), 0, 1UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 2UL);
  ldv_memset((void *)(& ldvarg26), 0, 2UL);
  ldv_memset((void *)(& ldvarg27), 0, 2UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg30), 0, 2UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  ldv_memset((void *)(& ldvarg41), 0, 8UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_48907:
  tmp___21 = __VERIFIER_nondet_int();
  switch (tmp___21) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_fdb_del(ldvarg35, ldvarg36, team_netdev_ops_group1, (unsigned char const *)ldvarg34,
                             (int )ldvarg37);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_fdb_del(ldvarg35, ldvarg36, team_netdev_ops_group1, (unsigned char const *)ldvarg34,
                             (int )ldvarg37);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_fdb_del(ldvarg35, ldvarg36, team_netdev_ops_group1, (unsigned char const *)ldvarg34,
                             (int )ldvarg37);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      team_add_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_add_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_add_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      team_vlan_rx_kill_vid(team_netdev_ops_group1, (int )ldvarg33, (int )ldvarg32);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_vlan_rx_kill_vid(team_netdev_ops_group1, (int )ldvarg33, (int )ldvarg32);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_vlan_rx_kill_vid(team_netdev_ops_group1, (int )ldvarg33, (int )ldvarg32);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_bridge_setlink(team_netdev_ops_group1, ldvarg31, (int )ldvarg30);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_bridge_setlink(team_netdev_ops_group1, ldvarg31, (int )ldvarg30);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_bridge_setlink(team_netdev_ops_group1, ldvarg31, (int )ldvarg30);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_bridge_dellink(team_netdev_ops_group1, ldvarg29, (int )ldvarg28);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_bridge_dellink(team_netdev_ops_group1, ldvarg29, (int )ldvarg28);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_bridge_dellink(team_netdev_ops_group1, ldvarg29, (int )ldvarg28);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      team_vlan_rx_add_vid(team_netdev_ops_group1, (int )ldvarg27, (int )ldvarg26);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_vlan_rx_add_vid(team_netdev_ops_group1, (int )ldvarg27, (int )ldvarg26);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_vlan_rx_add_vid(team_netdev_ops_group1, (int )ldvarg27, (int )ldvarg26);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 6: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_bridge_getlink(ldvarg22, ldvarg24, ldvarg23, team_netdev_ops_group1,
                                    ldvarg25, ldvarg21);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_bridge_getlink(ldvarg22, ldvarg24, ldvarg23, team_netdev_ops_group1,
                                    ldvarg25, ldvarg21);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_bridge_getlink(ldvarg22, ldvarg24, ldvarg23, team_netdev_ops_group1,
                                    ldvarg25, ldvarg21);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 7: ;
    if (ldv_state_variable_6 == 1) {
      team_del_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_del_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_del_slave(team_netdev_ops_group1, team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 8: ;
    if (ldv_state_variable_6 == 2) {
      ldv_retval_1 = team_open(team_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 3;
      } else {
      }
    } else {
    }
    goto ldv_48850;
    case 9: ;
    if (ldv_state_variable_6 == 3) {
      team_xmit(ldvarg20, team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_48850;
    case 10: ;
    if (ldv_state_variable_6 == 1) {
      team_fix_features(team_netdev_ops_group1, ldvarg19);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_fix_features(team_netdev_ops_group1, ldvarg19);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_fix_features(team_netdev_ops_group1, ldvarg19);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 11: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = team_init(team_netdev_ops_group1);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_48850;
    case 12: ;
    if (ldv_state_variable_6 == 1) {
      team_netpoll_cleanup(team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_netpoll_cleanup(team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_netpoll_cleanup(team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 13: ;
    if (ldv_state_variable_6 == 3) {
      team_close(team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 14: ;
    if (ldv_state_variable_6 == 1) {
      team_set_rx_mode(team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_set_rx_mode(team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_set_rx_mode(team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 15: ;
    if (ldv_state_variable_6 == 1) {
      passthru_features_check(ldvarg17, team_netdev_ops_group1, ldvarg18);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      passthru_features_check(ldvarg17, team_netdev_ops_group1, ldvarg18);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      passthru_features_check(ldvarg17, team_netdev_ops_group1, ldvarg18);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 16: ;
    if (ldv_state_variable_6 == 1) {
      team_change_rx_flags(team_netdev_ops_group1, ldvarg16);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_change_rx_flags(team_netdev_ops_group1, ldvarg16);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_change_rx_flags(team_netdev_ops_group1, ldvarg16);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 17: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_fdb_dump(ldvarg13, ldvarg14, team_netdev_ops_group1, team_netdev_ops_group1,
                              ldvarg15);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_fdb_dump(ldvarg13, ldvarg14, team_netdev_ops_group1, team_netdev_ops_group1,
                              ldvarg15);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_fdb_dump(ldvarg13, ldvarg14, team_netdev_ops_group1, team_netdev_ops_group1,
                              ldvarg15);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 18: ;
    if (ldv_state_variable_6 == 1) {
      team_poll_controller(team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_poll_controller(team_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_poll_controller(team_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 19: ;
    if (ldv_state_variable_6 == 1) {
      switchdev_port_fdb_add(ldvarg10, ldvarg11, team_netdev_ops_group1, (unsigned char const *)ldvarg9,
                             (int )ldvarg12, (int )ldvarg8);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      switchdev_port_fdb_add(ldvarg10, ldvarg11, team_netdev_ops_group1, (unsigned char const *)ldvarg9,
                             (int )ldvarg12, (int )ldvarg8);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      switchdev_port_fdb_add(ldvarg10, ldvarg11, team_netdev_ops_group1, (unsigned char const *)ldvarg9,
                             (int )ldvarg12, (int )ldvarg8);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 20: ;
    if (ldv_state_variable_6 == 1) {
      team_netpoll_setup(team_netdev_ops_group1, ldvarg7);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_netpoll_setup(team_netdev_ops_group1, ldvarg7);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_netpoll_setup(team_netdev_ops_group1, ldvarg7);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 21: ;
    if (ldv_state_variable_6 == 1) {
      team_select_queue(team_netdev_ops_group1, ldvarg6, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_select_queue(team_netdev_ops_group1, ldvarg6, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_select_queue(team_netdev_ops_group1, ldvarg6, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 22: ;
    if (ldv_state_variable_6 == 3) {
      team_change_mtu(team_netdev_ops_group1, ldvarg3);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_change_mtu(team_netdev_ops_group1, ldvarg3);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 23: ;
    if (ldv_state_variable_6 == 2) {
      team_uninit(team_netdev_ops_group1);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_48850;
    case 24: ;
    if (ldv_state_variable_6 == 1) {
      team_change_carrier(team_netdev_ops_group1, (int )ldvarg2);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_change_carrier(team_netdev_ops_group1, (int )ldvarg2);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_change_carrier(team_netdev_ops_group1, (int )ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 25: ;
    if (ldv_state_variable_6 == 1) {
      team_set_mac_address(team_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_set_mac_address(team_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_set_mac_address(team_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    case 26: ;
    if (ldv_state_variable_6 == 1) {
      team_get_stats64(team_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      team_get_stats64(team_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      team_get_stats64(team_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_48850;
    default:
    ldv_stop();
    }
    ldv_48850: ;
  } else {
  }
  goto ldv_48878;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    tmp___23 = __VERIFIER_nondet_int();
    switch (tmp___23) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      team_setup(team_link_ops_group1);
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_48881;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      team_get_num_tx_queues();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      team_get_num_tx_queues();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      team_get_num_tx_queues();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_48881;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      team_validate(team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      team_validate(team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      team_validate(team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_48881;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      team_get_num_rx_queues();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      team_get_num_rx_queues();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      team_get_num_rx_queues();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_48881;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      team_newlink(ldvarg38, team_link_ops_group1, team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      team_newlink(ldvarg38, team_link_ops_group1, team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      team_newlink(ldvarg38, team_link_ops_group1, team_link_ops_group0, team_link_ops_group2);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_48881;
    case 5: ;
    if (ldv_state_variable_4 == 3) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_48881;
    case 6: ;
    if (ldv_state_variable_4 == 2) {
      ldv_init_4();
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_48881;
    default:
    ldv_stop();
    }
    ldv_48881: ;
  } else {
  }
  goto ldv_48878;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_48878;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      team_module_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_48893;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = team_module_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_initialize_ethtool_ops_5();
        ldv_state_variable_3 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_rtnl_link_ops_4();
        ldv_state_variable_6 = 1;
        ldv_net_device_ops_6();
      } else {
      }
    } else {
    }
    goto ldv_48893;
    default:
    ldv_stop();
    }
    ldv_48893: ;
  } else {
  }
  goto ldv_48878;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    tmp___25 = __VERIFIER_nondet_int();
    switch (tmp___25) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      team_device_event(ldvarg39, ldvarg41, ldvarg40);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_48898;
    default:
    ldv_stop();
    }
    ldv_48898: ;
  } else {
  }
  goto ldv_48878;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_48878;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      team_ethtool_get_drvinfo(team_ethtool_ops_group0, ldvarg42);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_48903;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      ethtool_op_get_link(team_ethtool_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_48903;
    default:
    ldv_stop();
    }
    ldv_48903: ;
  } else {
  }
  goto ldv_48878;
  default:
  ldv_stop();
  }
  ldv_48878: ;
  goto ldv_48907;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_try_module_get_10(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_11(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_sync_12(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_13(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
extern void *memset(void * , int , size_t ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
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
int ldv_module_refcounter = 1;
void ldv_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_try_module_get(struct module *module )
{
  int module_get_succeeded ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    module_get_succeeded = ldv_undef_int();
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    if (ldv_module_refcounter <= 1) {
      ldv_error();
    } else {
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {
  }
  return;
}
}
void ldv_module_put_and_exit(void)
{
  {
  ldv_module_put((struct module *)1);
  LDV_STOP: ;
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_module_refcounter + -1));
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_module_refcounter != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void *external_alloc(void);
void *__alloc_percpu(size_t arg0, size_t arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
}
void __compiletime_assert_402() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ethtool_get_settings(struct net_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __genl_register_family(struct genl_family *arg0) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_add_rcu(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __netpoll_cleanup(struct netpoll *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __netpoll_setup(struct netpoll *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct nlmsghdr *__nlmsg_put(struct sk_buff *arg0, u32 arg1, u32 arg2, int arg3, int arg4, int arg5) {
  return (struct nlmsghdr *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int call_netdevice_notifiers(unsigned long arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_close(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_disable_lro(struct net_device *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *dev_get_by_index(struct net *arg0, int arg1) {
  return (struct net_device *)external_alloc();
}
void dev_mc_flush(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_mc_sync_multiple(struct net_device *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
void dev_mc_unsync(struct net_device *arg0, struct net_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_open(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_queue_xmit_sk(struct sock *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_allmulti(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_mac_address(struct net_device *arg0, struct sockaddr *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_promiscuity(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void dev_uc_flush(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_uc_sync_multiple(struct net_device *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
void dev_uc_unsync(struct net_device *arg0, struct net_device *arg1) {
  return;
}
void ether_setup(struct net_device *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void free_percpu(void *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int genl_unregister_family(struct genl_family *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *genlmsg_put(struct sk_buff *arg0, u32 arg1, u32 arg2, struct genl_family *arg3, int arg4, u8 arg5) {
  return (void *)external_alloc();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void kfree_call_rcu(struct callback_head *arg0, void (*arg1)(struct callback_head *)) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void *external_alloc(void);
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_init_4() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int lockdep_rtnl_is_held() {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void netdev_change_features(struct net_device *arg0) {
  return;
}
void netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
netdev_features_t netdev_increment_features(netdev_features_t arg0, netdev_features_t arg1, netdev_features_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_master_upper_dev_link(struct net_device *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_rx_handler_register(struct net_device *arg0, rx_handler_func_t *arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
void netdev_rx_handler_unregister(struct net_device *arg0) {
  return;
}
void netdev_upper_dev_unlink(struct net_device *arg0, struct net_device *arg1) {
  return;
}
void netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netlink_broadcast(struct sock *arg0, struct sk_buff *arg1, __u32 arg2, __u32 arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netlink_unicast(struct sock *arg0, struct sk_buff *arg1, __u32 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void netpoll_send_skb_on_dev(struct netpoll *arg0, struct sk_buff *arg1, struct net_device *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int nla_parse(struct nlattr **arg0, int arg1, const struct nlattr *arg2, int arg3, const struct nla_policy *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_put(struct sk_buff *arg0, int arg1, int arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
netdev_features_t passthru_features_check(struct sk_buff *arg0, struct net_device *arg1, netdev_features_t arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdevice(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rtnl_link_register(struct rtnl_link_ops *arg0) {
  return __VERIFIER_nondet_int();
}
void rtnl_link_unregister(struct rtnl_link_ops *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rtnl_trylock() {
  return __VERIFIER_nondet_int();
}
void rtnl_unlock() {
  return;
}
void *external_alloc(void);
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_bridge_dellink(struct net_device *arg0, struct nlmsghdr *arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_bridge_getlink(struct sk_buff *arg0, u32 arg1, u32 arg2, struct net_device *arg3, u32 arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_bridge_setlink(struct net_device *arg0, struct nlmsghdr *arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_fdb_add(struct ndmsg *arg0, struct nlattr **arg1, struct net_device *arg2, const unsigned char *arg3, u16 arg4, u16 arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_fdb_del(struct ndmsg *arg0, struct nlattr **arg1, struct net_device *arg2, const unsigned char *arg3, u16 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int switchdev_port_fdb_dump(struct sk_buff *arg0, struct netlink_callback *arg1, struct net_device *arg2, struct net_device *arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
void synchronize_rcu_bh() {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool vlan_uses_dev(const struct net_device *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int vlan_vid_add(struct net_device *arg0, __be16 arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
void vlan_vid_del(struct net_device *arg0, __be16 arg1, u16 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int vlan_vids_add_by_dev(struct net_device *arg0, const struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
void vlan_vids_del_by_dev(struct net_device *arg0, const struct net_device *arg1) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
