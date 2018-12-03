extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
struct __anonstruct___kernel_fsid_t_5 {
   int val[2U] ;
};
typedef struct __anonstruct___kernel_fsid_t_5 __kernel_fsid_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct seq_operations;
struct i387_fsave_struct {
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
};
struct i387_soft_struct {
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
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
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
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
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
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct __anonstruct_ldv_13764_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13766_128 {
   struct __anonstruct_ldv_13764_129 ldv_13764 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13766_128 ldv_13766 ;
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
struct __anonstruct_ldv_14010_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14014_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14015_135 {
   struct __anonstruct_ldv_14010_136 ldv_14010 ;
   struct __anonstruct_ldv_14014_137 ldv_14014 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14015_135 ldv_14015 ;
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
union __anonunion_ldv_14124_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14130_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14140_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14142_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14140_144 ldv_14140 ;
   int units ;
};
struct __anonstruct_ldv_14144_142 {
   union __anonunion_ldv_14142_143 ldv_14142 ;
   atomic_t _count ;
};
union __anonunion_ldv_14146_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14144_142 ldv_14144 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14147_139 {
   union __anonunion_ldv_14130_140 ldv_14130 ;
   union __anonunion_ldv_14146_141 ldv_14146 ;
};
struct __anonstruct_ldv_14154_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14159_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14154_146 ldv_14154 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14165_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14124_138 ldv_14124 ;
   struct __anonstruct_ldv_14147_139 ldv_14147 ;
   union __anonunion_ldv_14159_145 ldv_14159 ;
   union __anonunion_ldv_14165_147 ldv_14165 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
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
   union __anonunion_shared_148 shared ;
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
union __anonunion_ldv_14528_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14528_153 ldv_14528 ;
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
};
union __anonunion_ldv_14672_154 {
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
   union __anonunion_ldv_14672_154 ldv_14672 ;
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
union __anonunion_ldv_15347_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15347_155 ldv_15347 ;
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
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
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
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15973_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15979_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15980_156 {
   struct __anonstruct_ldv_15973_157 ldv_15973 ;
   struct __anonstruct_ldv_15979_158 ldv_15979 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15980_156 ldv_15980 ;
};
struct obd_device;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct acpi_dev_node acpi_node ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
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
union __anonunion_ldv_18844_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_18852_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_18865_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_18866_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_18865_174 ldv_18865 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_18881_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_18844_171 ldv_18844 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_18852_172 ldv_18852 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_18866_173 ldv_18866 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_18881_176 ldv_18881 ;
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
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
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
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
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
   struct rw_semaphore group_rwsem ;
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
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
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
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
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
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
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
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct cfs_cpu_partition {
   cpumask_t *cpt_cpumask ;
   nodemask_t *cpt_nodemask ;
   unsigned int cpt_spread_rotor ;
};
struct cfs_cpt_table {
   unsigned int ctb_version ;
   unsigned int ctb_spread_rotor ;
   unsigned int ctb_nparts ;
   struct cfs_cpu_partition *ctb_parts ;
   int *ctb_cpu2cpt ;
   cpumask_t *ctb_cpumask ;
   nodemask_t *ctb_nodemask ;
};
typedef unsigned long cfs_time_t;
typedef long cfs_duration_t;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_23695_180 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_23696_179 {
   struct __anonstruct_ldv_23695_180 ldv_23695 ;
};
struct lockref {
   union __anonunion_ldv_23696_179 ldv_23696 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_23719_182 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23721_181 {
   struct __anonstruct_ldv_23719_182 ldv_23719 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23721_181 ldv_23721 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_183 {
   struct list_head d_child ;
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
   union __anonunion_d_u_183 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
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
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_24082_185 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_24084_184 {
   struct __anonstruct_ldv_24082_185 ldv_24082 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_24084_184 ldv_24084 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_186 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_186 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_24613_187 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24613_187 ldv_24613 ;
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
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
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
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
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
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
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
union __anonunion_ldv_25027_190 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25047_191 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25064_192 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
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
   union __anonunion_ldv_25027_190 ldv_25027 ;
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
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_25047_191 ldv_25047 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25064_192 ldv_25064 ;
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
union __anonunion_f_u_193 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_193 f_u ;
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
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_195 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_194 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_195 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
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
   union __anonunion_fl_u_194 fl_u ;
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
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
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
   int (*freeze_fs)(struct super_block * ) ;
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
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
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
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
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
   struct cftype *base_cftypes ;
};
struct reclaim_state {
   unsigned long reclaimed_slab ;
};
struct swap_extent {
   struct list_head list ;
   unsigned long start_page ;
   unsigned long nr_pages ;
   sector_t start_block ;
};
struct swap_cluster_info {
   unsigned int data : 24 ;
   unsigned char flags ;
};
struct percpu_cluster {
   struct swap_cluster_info index ;
   unsigned int next ;
};
struct swap_info_struct {
   unsigned long flags ;
   short prio ;
   struct plist_node list ;
   struct plist_node avail_list ;
   signed char type ;
   unsigned int max ;
   unsigned char *swap_map ;
   struct swap_cluster_info *cluster_info ;
   struct swap_cluster_info free_cluster_head ;
   struct swap_cluster_info free_cluster_tail ;
   unsigned int lowest_bit ;
   unsigned int highest_bit ;
   unsigned int pages ;
   unsigned int inuse_pages ;
   unsigned int cluster_next ;
   unsigned int cluster_nr ;
   struct percpu_cluster *percpu_cluster ;
   struct swap_extent *curr_swap_extent ;
   struct swap_extent first_swap_extent ;
   struct block_device *bdev ;
   struct file *swap_file ;
   unsigned int old_block_size ;
   unsigned long *frontswap_map ;
   atomic_t frontswap_pages ;
   spinlock_t lock ;
   struct work_struct discard_work ;
   struct swap_cluster_info discard_cluster_head ;
   struct swap_cluster_info discard_cluster_tail ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_201 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_201 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_30664_202 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_30664_202 ldv_30664 ;
   unsigned long nr_segs ;
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
typedef s32 dma_cookie_t;
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
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_204 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_204 sync_serial_settings;
struct __anonstruct_te1_settings_205 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_205 te1_settings;
struct __anonstruct_raw_hdlc_proto_206 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_206 raw_hdlc_proto;
struct __anonstruct_fr_proto_207 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_207 fr_proto;
struct __anonstruct_fr_proto_pvc_208 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_208 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_209 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_209 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_210 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_210 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_211 {
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
   union __anonunion_ifs_ifsu_211 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_212 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_213 {
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
   union __anonunion_ifr_ifrn_212 ifr_ifrn ;
   union __anonunion_ifr_ifru_213 ifr_ifru ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
enum ldv_26025 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_26025 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
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
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_34192_232 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_34193_231 {
   u64 v64 ;
   struct __anonstruct_ldv_34192_232 ldv_34192 ;
};
struct skb_mstamp {
   union __anonunion_ldv_34193_231 ldv_34193 ;
};
union __anonunion_ldv_34212_233 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_34228_235 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_34229_234 {
   __wsum csum ;
   struct __anonstruct_ldv_34228_235 ldv_34228 ;
};
union __anonunion_ldv_34268_236 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_34274_237 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_34212_233 ldv_34212 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_34229_234 ldv_34229 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_34268_236 ldv_34268 ;
   __u32 secmark ;
   union __anonunion_ldv_34274_237 ldv_34274 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
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
   char reserved1[32U] ;
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
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
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
};
union __anonunion_in6_u_240 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_240 in6_u ;
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
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
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
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
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
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
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
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
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
   __be16 protocol ;
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
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
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
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
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
   u16 max_dsize ;
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
struct nlattr;
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
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
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
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
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
   u8 gencursor ;
   u8 genctr ;
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
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
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
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
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
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
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
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
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
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
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
   int (*rebuild)(struct sk_buff * ) ;
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
struct netdev_phys_port_id {
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
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
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
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_249 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_250 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_41692_251 {
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
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_249 adj_list ;
   struct __anonstruct_all_adj_list_250 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
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
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
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
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_41692_251 ldv_41692 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_252 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_252 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sock_filter_int {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion_ldv_43235_253 {
   struct sock_filter insns[0U] ;
   struct sock_filter_int insnsi[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned char jited : 1 ;
   unsigned int len : 31 ;
   struct sock_fprog_kern *orig_prog ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter_int const * ) ;
   union __anonunion_ldv_43235_253 ldv_43235 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
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
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion_ldv_44728_258 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion_ldv_44728_258 ldv_44728 ;
};
struct __anonstruct_socket_lock_t_259 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_259 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_44963_261 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_44964_260 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_44963_261 ldv_44963 ;
};
union __anonunion_ldv_44968_262 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_44974_264 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_44975_263 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_44974_264 ldv_44974 ;
};
union __anonunion_ldv_44984_265 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_44993_266 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_44964_260 ldv_44964 ;
   union __anonunion_ldv_44968_262 ldv_44968 ;
   union __anonunion_ldv_44975_263 ldv_44975 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_44984_265 ldv_44984 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_44993_266 ldv_44993 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_267 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_267 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_268 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_268 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
typedef long long_ptr_t;
typedef __u32 cfs_cap_t;
struct cfs_debug_limit_state {
   cfs_time_t cdls_next ;
   unsigned int cdls_delay ;
   int cdls_count ;
};
struct libcfs_debug_msg_data {
   char const *msg_file ;
   char const *msg_fn ;
   int msg_subsys ;
   int msg_line ;
   int msg_mask ;
   struct cfs_debug_limit_state *msg_cdls ;
};
typedef __u64 lnet_nid_t;
typedef __u32 lnet_pid_t;
struct __anonstruct_lnet_handle_any_t_269 {
   __u64 cookie ;
};
typedef struct __anonstruct_lnet_handle_any_t_269 lnet_handle_any_t;
typedef lnet_handle_any_t lnet_handle_eq_t;
typedef lnet_handle_any_t lnet_handle_md_t;
struct __anonstruct_lnet_process_id_t_270 {
   lnet_nid_t nid ;
   lnet_pid_t pid ;
};
typedef struct __anonstruct_lnet_process_id_t_270 lnet_process_id_t;
struct __anonstruct_lnet_md_t_271 {
   void *start ;
   unsigned int length ;
   int threshold ;
   int max_size ;
   unsigned int options ;
   void *user_ptr ;
   lnet_handle_eq_t eq_handle ;
};
typedef struct __anonstruct_lnet_md_t_271 lnet_md_t;
struct __anonstruct_lnet_kiov_t_272 {
   struct page *kiov_page ;
   unsigned int kiov_len ;
   unsigned int kiov_offset ;
};
typedef struct __anonstruct_lnet_kiov_t_272 lnet_kiov_t;
enum ldv_33186 {
    LNET_EVENT_GET = 1,
    LNET_EVENT_PUT = 2,
    LNET_EVENT_REPLY = 3,
    LNET_EVENT_ACK = 4,
    LNET_EVENT_SEND = 5,
    LNET_EVENT_UNLINK = 6
} ;
typedef enum ldv_33186 lnet_event_kind_t;
typedef unsigned long lnet_seq_t;
struct __anonstruct_lnet_event_t_273 {
   lnet_process_id_t target ;
   lnet_process_id_t initiator ;
   lnet_nid_t sender ;
   lnet_event_kind_t type ;
   unsigned int pt_index ;
   __u64 match_bits ;
   unsigned int rlength ;
   unsigned int mlength ;
   lnet_handle_md_t md_handle ;
   lnet_md_t md ;
   __u64 hdr_data ;
   int status ;
   int unlinked ;
   unsigned int offset ;
   lnet_seq_t volatile sequence ;
};
typedef struct __anonstruct_lnet_event_t_273 lnet_event_t;
struct cfs_workitem;
struct cfs_workitem {
   struct list_head wi_list ;
   int (*wi_action)(struct cfs_workitem * ) ;
   void *wi_data ;
   unsigned char wi_running : 1 ;
   unsigned char wi_scheduled : 1 ;
};
typedef struct cfs_workitem cfs_workitem_t;
struct cfs_hash_ops;
struct cfs_hash_lock_ops;
struct cfs_hash_hlist_ops;
union cfs_hash_lock {
   rwlock_t rw ;
   spinlock_t spin ;
};
struct cfs_hash_bucket {
   union cfs_hash_lock hsb_lock ;
   __u32 hsb_count ;
   __u32 hsb_version ;
   unsigned int hsb_index ;
   int hsb_depmax ;
   long hsb_head[0U] ;
};
struct cfs_hash_bd {
   struct cfs_hash_bucket *bd_bucket ;
   unsigned int bd_offset ;
};
struct cfs_hash {
   union cfs_hash_lock hs_lock ;
   struct cfs_hash_ops *hs_ops ;
   struct cfs_hash_lock_ops *hs_lops ;
   struct cfs_hash_hlist_ops *hs_hops ;
   struct cfs_hash_bucket **hs_buckets ;
   atomic_t hs_count ;
   __u16 hs_flags ;
   __u16 hs_extra_bytes ;
   __u8 hs_iterating ;
   __u8 hs_exiting ;
   __u8 hs_cur_bits ;
   __u8 hs_min_bits ;
   __u8 hs_max_bits ;
   __u8 hs_rehash_bits ;
   __u8 hs_bkt_bits ;
   __u16 hs_min_theta ;
   __u16 hs_max_theta ;
   __u32 hs_rehash_count ;
   __u32 hs_iterators ;
   cfs_workitem_t hs_rehash_wi ;
   atomic_t hs_refcount ;
   struct cfs_hash_bucket **hs_rehash_buckets ;
   char hs_name[0U] ;
};
struct cfs_hash_lock_ops {
   void (*hs_lock)(union cfs_hash_lock * , int ) ;
   void (*hs_unlock)(union cfs_hash_lock * , int ) ;
   void (*hs_bkt_lock)(union cfs_hash_lock * , int ) ;
   void (*hs_bkt_unlock)(union cfs_hash_lock * , int ) ;
};
struct cfs_hash_hlist_ops {
   struct hlist_head *(*hop_hhead)(struct cfs_hash * , struct cfs_hash_bd * ) ;
   int (*hop_hhead_size)(struct cfs_hash * ) ;
   int (*hop_hnode_add)(struct cfs_hash * , struct cfs_hash_bd * , struct hlist_node * ) ;
   int (*hop_hnode_del)(struct cfs_hash * , struct cfs_hash_bd * , struct hlist_node * ) ;
};
struct cfs_hash_ops {
   unsigned int (*hs_hash)(struct cfs_hash * , void const * , unsigned int ) ;
   void *(*hs_key)(struct hlist_node * ) ;
   void (*hs_keycpy)(struct hlist_node * , void * ) ;
   int (*hs_keycmp)(void const * , struct hlist_node * ) ;
   void *(*hs_object)(struct hlist_node * ) ;
   void (*hs_get)(struct cfs_hash * , struct hlist_node * ) ;
   void (*hs_put)(struct cfs_hash * , struct hlist_node * ) ;
   void (*hs_put_locked)(struct cfs_hash * , struct hlist_node * ) ;
   void (*hs_exit)(struct cfs_hash * , struct hlist_node * ) ;
};
struct __anonstruct_cfs_binheap_node_t_274 {
   unsigned int chn_index ;
};
typedef struct __anonstruct_cfs_binheap_node_t_274 cfs_binheap_node_t;
struct fs_struct {
   int users ;
   spinlock_t lock ;
   seqcount_t seq ;
   int umask ;
   int in_exec ;
   struct path root ;
   struct path pwd ;
};
struct nameidata {
   struct path path ;
   struct qstr last ;
   struct path root ;
   struct inode *inode ;
   unsigned int flags ;
   unsigned int seq ;
   unsigned int m_seq ;
   int last_type ;
   unsigned int depth ;
   char *saved_names[9U] ;
};
struct lvfs_run_ctxt;
struct md_identity;
struct lvfs_ucred {
   kuid_t luc_uid ;
   kgid_t luc_gid ;
   kuid_t luc_fsuid ;
   kgid_t luc_fsgid ;
   kernel_cap_t luc_cap ;
   __u32 luc_umask ;
   struct group_info *luc_ginfo ;
   struct md_identity *luc_identity ;
};
struct lvfs_callback_ops {
   struct dentry *(*l_fid2dentry)(__u64 , __u32 , __u64 , void * ) ;
};
struct dt_device;
struct lvfs_run_ctxt {
   struct vfsmount *pwdmnt ;
   struct dentry *pwd ;
   mm_segment_t fs ;
   struct lvfs_ucred luc ;
   int ngroups ;
   struct lvfs_callback_ops cb_ops ;
   struct group_info *group_info ;
   struct dt_device *dt ;
   __u32 magic ;
};
struct upcall_cache_entry;
struct md_perm {
   lnet_nid_t mp_nid ;
   __u32 mp_perm ;
};
struct md_identity {
   struct upcall_cache_entry *mi_uc_entry ;
   uid_t mi_uid ;
   gid_t mi_gid ;
   struct group_info *mi_ginfo ;
   int mi_nperms ;
   struct md_perm *mi_perms ;
};
union __anonunion_u_276 {
   struct md_identity identity ;
};
struct upcall_cache_entry {
   struct list_head ue_hash ;
   __u64 ue_key ;
   atomic_t ue_refcount ;
   int ue_flags ;
   wait_queue_head_t ue_waitq ;
   cfs_time_t ue_acquire_expire ;
   cfs_time_t ue_expire ;
   union __anonunion_u_276 u ;
};
struct kstatfs {
   long f_type ;
   long f_bsize ;
   u64 f_blocks ;
   u64 f_bfree ;
   u64 f_bavail ;
   u64 f_files ;
   u64 f_ffree ;
   __kernel_fsid_t f_fsid ;
   long f_namelen ;
   long f_frsize ;
   long f_flags ;
   long f_spare[4U] ;
};
struct ll_fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_device ;
   __u32 fe_reserved[2U] ;
};
struct ll_user_fiemap {
   __u64 fm_start ;
   __u64 fm_length ;
   __u32 fm_flags ;
   __u32 fm_mapped_extents ;
   __u32 fm_extent_count ;
   __u32 fm_reserved ;
   struct ll_fiemap_extent fm_extents[0U] ;
};
struct obd_statfs {
   __u64 os_type ;
   __u64 os_blocks ;
   __u64 os_bfree ;
   __u64 os_bavail ;
   __u64 os_files ;
   __u64 os_ffree ;
   __u8 os_fsid[40U] ;
   __u32 os_bsize ;
   __u32 os_namelen ;
   __u64 os_maxbytes ;
   __u32 os_state ;
   __u32 os_fprecreated ;
   __u32 os_spare2 ;
   __u32 os_spare3 ;
   __u32 os_spare4 ;
   __u32 os_spare5 ;
   __u32 os_spare6 ;
   __u32 os_spare7 ;
   __u32 os_spare8 ;
   __u32 os_spare9 ;
};
struct lu_fid {
   __u64 f_seq ;
   __u32 f_oid ;
   __u32 f_ver ;
};
typedef struct lu_fid lustre_fid;
struct ostid {
   __u64 oi_id ;
   __u64 oi_seq ;
};
union __anonunion_ldv_48225_277 {
   struct ostid oi ;
   struct lu_fid oi_fid ;
};
struct ost_id {
   union __anonunion_ldv_48225_277 ldv_48225 ;
};
struct ll_fid {
   __u64 id ;
   __u32 generation ;
   __u32 f_type ;
};
struct obd_uuid {
   char uuid[40U] ;
};
struct obd_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct obd_dqblk {
   __u64 dqb_bhardlimit ;
   __u64 dqb_bsoftlimit ;
   __u64 dqb_curspace ;
   __u64 dqb_ihardlimit ;
   __u64 dqb_isoftlimit ;
   __u64 dqb_curinodes ;
   __u64 dqb_btime ;
   __u64 dqb_itime ;
   __u32 dqb_valid ;
   __u32 dqb_padding ;
};
union __anonunion_ldv_48448_280 {
   lustre_fid cr_tfid ;
   __u32 cr_markerflags ;
};
struct changelog_rec {
   __u16 cr_namelen ;
   __u16 cr_flags ;
   __u32 cr_type ;
   __u64 cr_index ;
   __u64 cr_prev ;
   __u64 cr_time ;
   union __anonunion_ldv_48448_280 ldv_48448 ;
   lustre_fid cr_pfid ;
   char cr_name[0U] ;
};
typedef __u32 mdsno_t;
typedef __u64 obd_id;
typedef __u64 obd_seq;
typedef __s64 obd_time;
typedef __u64 obd_size;
typedef __u64 obd_off;
typedef __u64 obd_blocks;
typedef __u64 obd_valid;
typedef __u32 obd_blksize;
typedef __u32 obd_mode;
typedef __u32 obd_uid;
typedef __u32 obd_gid;
typedef __u32 obd_flag;
typedef __u32 obd_count;
struct lu_seq_range {
   __u64 lsr_start ;
   __u64 lsr_end ;
   __u32 lsr_index ;
   __u32 lsr_flags ;
};
struct lustre_handle {
   __u64 cookie ;
};
struct lustre_msg_v2 {
   __u32 lm_bufcount ;
   __u32 lm_secflvr ;
   __u32 lm_magic ;
   __u32 lm_repsize ;
   __u32 lm_cksum ;
   __u32 lm_flags ;
   __u32 lm_padding_2 ;
   __u32 lm_padding_3 ;
   __u32 lm_buflens[0U] ;
};
struct obd_connect_data {
   __u64 ocd_connect_flags ;
   __u32 ocd_version ;
   __u32 ocd_grant ;
   __u32 ocd_index ;
   __u32 ocd_brw_size ;
   __u64 ocd_ibits_known ;
   __u8 ocd_blocksize ;
   __u8 ocd_inodespace ;
   __u16 ocd_grant_extent ;
   __u32 ocd_unused ;
   __u64 ocd_transno ;
   __u32 ocd_group ;
   __u32 ocd_cksum_types ;
   __u32 ocd_max_easize ;
   __u32 ocd_instance ;
   __u64 ocd_maxbytes ;
   __u64 padding1 ;
   __u64 padding2 ;
   __u64 padding3 ;
   __u64 padding4 ;
   __u64 padding5 ;
   __u64 padding6 ;
   __u64 padding7 ;
   __u64 padding8 ;
   __u64 padding9 ;
   __u64 paddingA ;
   __u64 paddingB ;
   __u64 paddingC ;
   __u64 paddingD ;
   __u64 paddingE ;
   __u64 paddingF ;
};
enum ldv_34556 {
    OBD_CKSUM_CRC32 = 1,
    OBD_CKSUM_ADLER = 2,
    OBD_CKSUM_CRC32C = 4
} ;
typedef enum ldv_34556 cksum_type_t;
struct lov_ost_data_v1 {
   struct ost_id l_ost_oi ;
   __u32 l_ost_gen ;
   __u32 l_ost_idx ;
};
struct lov_mds_md_v1 {
   __u32 lmm_magic ;
   __u32 lmm_pattern ;
   struct ost_id lmm_oi ;
   __u32 lmm_stripe_size ;
   __u16 lmm_stripe_count ;
   __u16 lmm_layout_gen ;
   struct lov_ost_data_v1 lmm_objects[0U] ;
};
struct obd_ioobj {
   struct ost_id ioo_oid ;
   __u32 ioo_max_brw ;
   __u32 ioo_bufcnt ;
};
struct niobuf_remote {
   __u64 offset ;
   __u32 len ;
   __u32 flags ;
};
struct ost_lvb {
   __u64 lvb_size ;
   obd_time lvb_mtime ;
   obd_time lvb_atime ;
   obd_time lvb_ctime ;
   __u64 lvb_blocks ;
   __u32 lvb_mtime_ns ;
   __u32 lvb_atime_ns ;
   __u32 lvb_ctime_ns ;
   __u32 lvb_padding ;
};
struct obd_quotactl {
   __u32 qc_cmd ;
   __u32 qc_type ;
   __u32 qc_id ;
   __u32 qc_stat ;
   struct obd_dqinfo qc_dqinfo ;
   struct obd_dqblk qc_dqblk ;
};
struct mdt_body {
   struct lu_fid fid1 ;
   struct lu_fid fid2 ;
   struct lustre_handle handle ;
   __u64 valid ;
   __u64 size ;
   obd_time mtime ;
   obd_time atime ;
   obd_time ctime ;
   __u64 blocks ;
   __u64 ioepoch ;
   __u64 t_state ;
   __u32 fsuid ;
   __u32 fsgid ;
   __u32 capability ;
   __u32 mode ;
   __u32 uid ;
   __u32 gid ;
   __u32 flags ;
   __u32 rdev ;
   __u32 nlink ;
   __u32 unused2 ;
   __u32 suppgid ;
   __u32 eadatasize ;
   __u32 aclsize ;
   __u32 max_mdsize ;
   __u32 max_cookiesize ;
   __u32 uid_h ;
   __u32 gid_h ;
   __u32 padding_5 ;
   __u64 padding_6 ;
   __u64 padding_7 ;
   __u64 padding_8 ;
   __u64 padding_9 ;
   __u64 padding_10 ;
};
struct mdt_remote_perm {
   __u32 rp_uid ;
   __u32 rp_gid ;
   __u32 rp_fsuid ;
   __u32 rp_fsuid_h ;
   __u32 rp_fsgid ;
   __u32 rp_fsgid_h ;
   __u32 rp_access_perm ;
   __u32 rp_padding ;
};
enum mds_op_bias {
    MDS_CHECK_SPLIT = 1,
    MDS_CROSS_REF = 2,
    MDS_VTX_BYPASS = 4,
    MDS_PERM_BYPASS = 8,
    MDS_SOM = 16,
    MDS_QUOTA_IGNORE = 32,
    MDS_CLOSE_CLEANUP = 64,
    MDS_KEEP_ORPHAN = 128,
    MDS_RECOV_OPEN = 256,
    MDS_DATA_MODIFIED = 512,
    MDS_CREATE_VOLATILE = 1024,
    MDS_OWNEROVERRIDE = 2048,
    MDS_HSM_RELEASE = 4096
} ;
struct lmv_desc {
   __u32 ld_tgt_count ;
   __u32 ld_active_tgt_count ;
   __u32 ld_default_stripe_count ;
   __u32 ld_pattern ;
   __u64 ld_default_hash_size ;
   __u64 ld_padding_1 ;
   __u32 ld_padding_2 ;
   __u32 ld_qos_maxage ;
   __u32 ld_padding_3 ;
   __u32 ld_padding_4 ;
   struct obd_uuid ld_uuid ;
};
struct lmv_stripe_md {
   __u32 mea_magic ;
   __u32 mea_count ;
   __u32 mea_master ;
   __u32 mea_padding ;
   char mea_pool_name[16U] ;
   struct lu_fid mea_ids[0U] ;
};
struct lov_desc {
   __u32 ld_tgt_count ;
   __u32 ld_active_tgt_count ;
   __u32 ld_default_stripe_count ;
   __u32 ld_pattern ;
   __u64 ld_default_stripe_size ;
   __u64 ld_default_stripe_offset ;
   __u32 ld_padding_0 ;
   __u32 ld_qos_maxage ;
   __u32 ld_padding_1 ;
   __u32 ld_padding_2 ;
   struct obd_uuid ld_uuid ;
};
struct ldlm_res_id {
   __u64 name[4U] ;
};
enum ldv_34696 {
    LCK_MINMODE = 0,
    LCK_EX = 1,
    LCK_PW = 2,
    LCK_PR = 4,
    LCK_CW = 8,
    LCK_CR = 16,
    LCK_NL = 32,
    LCK_GROUP = 64,
    LCK_COS = 128,
    LCK_MAXMODE = 129
} ;
typedef enum ldv_34696 ldlm_mode_t;
enum ldv_34698 {
    LDLM_PLAIN = 10,
    LDLM_EXTENT = 11,
    LDLM_FLOCK = 12,
    LDLM_IBITS = 13,
    LDLM_MAX_TYPE = 14
} ;
typedef enum ldv_34698 ldlm_type_t;
struct ldlm_extent {
   __u64 start ;
   __u64 end ;
   __u64 gid ;
};
struct ldlm_inodebits {
   __u64 bits ;
};
struct ldlm_flock_wire {
   __u64 lfw_start ;
   __u64 lfw_end ;
   __u64 lfw_owner ;
   __u32 lfw_padding ;
   __u32 lfw_pid ;
};
union __anonunion_ldlm_wire_policy_data_t_282 {
   struct ldlm_extent l_extent ;
   struct ldlm_flock_wire l_flock ;
   struct ldlm_inodebits l_inodebits ;
};
typedef union __anonunion_ldlm_wire_policy_data_t_282 ldlm_wire_policy_data_t;
struct ldlm_resource_desc {
   ldlm_type_t lr_type ;
   __u32 lr_padding ;
   struct ldlm_res_id lr_name ;
};
struct ldlm_lock_desc {
   struct ldlm_resource_desc l_resource ;
   ldlm_mode_t l_req_mode ;
   ldlm_mode_t l_granted_mode ;
   ldlm_wire_policy_data_t l_policy_data ;
};
struct llog_logid {
   struct ost_id lgl_oi ;
   __u32 lgl_ogen ;
};
struct llog_rec_hdr {
   __u32 lrh_len ;
   __u32 lrh_index ;
   __u32 lrh_type ;
   __u32 lrh_id ;
};
struct llog_rec_tail {
   __u32 lrt_len ;
   __u32 lrt_index ;
};
struct llog_logid_rec {
   struct llog_rec_hdr lid_hdr ;
   struct llog_logid lid_id ;
   __u32 lid_padding1 ;
   __u64 lid_padding2 ;
   __u64 lid_padding3 ;
   struct llog_rec_tail lid_tail ;
};
struct llog_unlink64_rec {
   struct llog_rec_hdr lur_hdr ;
   struct lu_fid lur_fid ;
   obd_count lur_count ;
   __u32 lur_padding1 ;
   __u64 lur_padding2 ;
   __u64 lur_padding3 ;
   struct llog_rec_tail lur_tail ;
};
struct llog_setattr64_rec {
   struct llog_rec_hdr lsr_hdr ;
   struct ost_id lsr_oi ;
   __u32 lsr_uid ;
   __u32 lsr_uid_h ;
   __u32 lsr_gid ;
   __u32 lsr_gid_h ;
   __u64 lsr_padding ;
   struct llog_rec_tail lsr_tail ;
};
struct llog_size_change_rec {
   struct llog_rec_hdr lsc_hdr ;
   struct ll_fid lsc_fid ;
   __u32 lsc_ioepoch ;
   __u32 lsc_padding1 ;
   __u64 lsc_padding2 ;
   __u64 lsc_padding3 ;
   struct llog_rec_tail lsc_tail ;
};
struct llog_changelog_rec {
   struct llog_rec_hdr cr_hdr ;
   struct changelog_rec cr ;
   struct llog_rec_tail cr_tail ;
};
struct llog_changelog_user_rec {
   struct llog_rec_hdr cur_hdr ;
   __u32 cur_id ;
   __u32 cur_padding ;
   __u64 cur_endrec ;
   struct llog_rec_tail cur_tail ;
};
struct llog_gen {
   __u64 mnt_cnt ;
   __u64 conn_cnt ;
};
struct llog_gen_rec {
   struct llog_rec_hdr lgr_hdr ;
   struct llog_gen lgr_gen ;
   __u64 padding1 ;
   __u64 padding2 ;
   __u64 padding3 ;
   struct llog_rec_tail lgr_tail ;
};
struct llog_log_hdr {
   struct llog_rec_hdr llh_hdr ;
   obd_time llh_timestamp ;
   __u32 llh_count ;
   __u32 llh_bitmap_offset ;
   __u32 llh_size ;
   __u32 llh_flags ;
   __u32 llh_cat_idx ;
   struct obd_uuid llh_tgtuuid ;
   __u32 llh_reserved[1U] ;
   __u32 llh_bitmap[2024U] ;
   struct llog_rec_tail llh_tail ;
};
struct llog_cookie {
   struct llog_logid lgc_lgl ;
   __u32 lgc_subsys ;
   __u32 lgc_index ;
   __u32 lgc_padding ;
};
struct llogd_conn_body {
   struct llog_gen lgdc_gen ;
   struct llog_logid lgdc_logid ;
   __u32 lgdc_ctxt_idx ;
};
struct obdo {
   obd_valid o_valid ;
   struct ost_id o_oi ;
   obd_id o_parent_seq ;
   obd_size o_size ;
   obd_time o_mtime ;
   obd_time o_atime ;
   obd_time o_ctime ;
   obd_blocks o_blocks ;
   obd_size o_grant ;
   obd_blksize o_blksize ;
   obd_mode o_mode ;
   obd_uid o_uid ;
   obd_gid o_gid ;
   obd_flag o_flags ;
   obd_count o_nlink ;
   obd_count o_parent_oid ;
   obd_count o_misc ;
   __u64 o_ioepoch ;
   __u32 o_stripe_idx ;
   __u32 o_parent_ver ;
   struct lustre_handle o_handle ;
   struct llog_cookie o_lcookie ;
   __u32 o_uid_h ;
   __u32 o_gid_h ;
   __u64 o_data_version ;
   __u64 o_padding_4 ;
   __u64 o_padding_5 ;
   __u64 o_padding_6 ;
};
struct lustre_cfg;
struct lustre_capa {
   struct lu_fid lc_fid ;
   __u64 lc_opc ;
   __u64 lc_uid ;
   __u64 lc_gid ;
   __u32 lc_flags ;
   __u32 lc_keyid ;
   __u32 lc_timeout ;
   __u32 lc_expiry ;
   __u8 lc_hmac[64U] ;
};
struct lustre_capa_key {
   __u64 lk_seq ;
   __u32 lk_keyid ;
   __u32 lk_padding ;
   __u8 lk_key[56U] ;
};
struct lprocfs_vars {
   char const *name ;
   struct file_operations *fops ;
   void *data ;
   umode_t proc_mode ;
};
struct lprocfs_static_vars {
   struct lprocfs_vars *module_vars ;
   struct lprocfs_vars *obd_vars ;
};
struct obd_histogram {
   spinlock_t oh_lock ;
   unsigned long oh_buckets[32U] ;
};
struct lprocfs_counter_header {
   unsigned int lc_config ;
   char const *lc_name ;
   char const *lc_units ;
};
struct lprocfs_counter {
   __s64 lc_count ;
   __s64 lc_min ;
   __s64 lc_max ;
   __s64 lc_sumsquare ;
   __s64 lc_array_sum[1U] ;
};
struct lprocfs_percpu {
   struct lprocfs_counter lp_cntr[0U] ;
};
enum lprocfs_stats_flags {
    LPROCFS_STATS_FLAG_NONE = 0,
    LPROCFS_STATS_FLAG_NOPERCPU = 1,
    LPROCFS_STATS_FLAG_IRQ_SAFE = 2
} ;
struct lprocfs_stats {
   unsigned short ls_num ;
   unsigned short ls_biggest_alloc_num ;
   enum lprocfs_stats_flags ls_flags ;
   spinlock_t ls_lock ;
   struct lprocfs_counter_header *ls_cnt_header ;
   struct lprocfs_percpu *ls_percpu[0U] ;
};
struct obd_export;
struct nid_stat;
struct adaptive_timeout;
struct ptlrpc_request;
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion_ldv_51951_284 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_51955_285 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_51951_284 ldv_51951 ;
   union __anonunion_ldv_51955_285 ldv_51955 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned char bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct blk_trace;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_52459_286 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion_ldv_52474_287 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion_ldv_52478_288 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_290 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_291 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_52489_289 {
   struct __anonstruct_elv_290 elv ;
   struct __anonstruct_flush_291 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion_ldv_52459_286 ldv_52459 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion_ldv_52474_287 ldv_52474 ;
   union __anonunion_ldv_52478_288 ldv_52478 ;
   union __anonunion_ldv_52489_289 ldv_52489 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
typedef struct callback_head cfs_rcu_head_t;
struct portals_handle_ops {
   void (*hop_addref)(void * ) ;
   void (*hop_free)(void * , int ) ;
};
struct portals_handle {
   struct list_head h_link ;
   __u64 h_cookie ;
   struct portals_handle_ops *h_ops ;
   cfs_rcu_head_t h_rcu ;
   spinlock_t h_lock ;
   unsigned int h_size : 31 ;
   unsigned char h_in : 1 ;
};
struct adaptive_timeout {
   time_t at_binstart ;
   unsigned int at_hist[4U] ;
   unsigned int at_flags ;
   unsigned int at_current ;
   unsigned int at_worst_ever ;
   time_t at_worst_time ;
   spinlock_t at_lock ;
};
struct ptlrpc_at_array {
   struct list_head *paa_reqs_array ;
   __u32 paa_size ;
   __u32 paa_count ;
   time_t paa_deadline ;
   __u32 *paa_reqs_count ;
};
struct imp_at {
   int iat_portal[8U] ;
   struct adaptive_timeout iat_net_latency ;
   struct adaptive_timeout iat_service_estimate[8U] ;
};
enum lustre_imp_state {
    LUSTRE_IMP_CLOSED = 1,
    LUSTRE_IMP_NEW = 2,
    LUSTRE_IMP_DISCON = 3,
    LUSTRE_IMP_CONNECTING = 4,
    LUSTRE_IMP_REPLAY = 5,
    LUSTRE_IMP_REPLAY_LOCKS = 6,
    LUSTRE_IMP_REPLAY_WAIT = 7,
    LUSTRE_IMP_RECOVER = 8,
    LUSTRE_IMP_FULL = 9,
    LUSTRE_IMP_EVICTED = 10
} ;
enum obd_import_event {
    IMP_EVENT_DISCON = 8421377,
    IMP_EVENT_INACTIVE = 8421378,
    IMP_EVENT_INVALIDATE = 8421379,
    IMP_EVENT_ACTIVE = 8421380,
    IMP_EVENT_OCD = 8421381,
    IMP_EVENT_DEACTIVATE = 8421382,
    IMP_EVENT_ACTIVATE = 8421383
} ;
struct ptlrpc_connection;
struct obd_import_conn {
   struct list_head oic_item ;
   struct ptlrpc_connection *oic_conn ;
   struct obd_uuid oic_uuid ;
   __u64 oic_last_attempt ;
};
struct import_state_hist {
   enum lustre_imp_state ish_state ;
   time_t ish_time ;
};
struct ptlrpc_client;
struct ptlrpc_sec;
struct ptlrpc_request_pool;
struct obd_import {
   struct portals_handle imp_handle ;
   atomic_t imp_refcount ;
   struct lustre_handle imp_dlm_handle ;
   struct ptlrpc_connection *imp_connection ;
   struct ptlrpc_client *imp_client ;
   struct list_head imp_pinger_chain ;
   struct list_head imp_zombie_chain ;
   struct list_head imp_replay_list ;
   struct list_head imp_sending_list ;
   struct list_head imp_delayed_list ;
   struct list_head imp_committed_list ;
   struct list_head *imp_replay_cursor ;
   struct obd_device *imp_obd ;
   struct ptlrpc_sec *imp_sec ;
   struct mutex imp_sec_mutex ;
   cfs_time_t imp_sec_expire ;
   wait_queue_head_t imp_recovery_waitq ;
   atomic_t imp_inflight ;
   atomic_t imp_unregistering ;
   atomic_t imp_replay_inflight ;
   atomic_t imp_inval_count ;
   atomic_t imp_timeouts ;
   enum lustre_imp_state imp_state ;
   struct import_state_hist imp_state_hist[16U] ;
   int imp_state_hist_idx ;
   int imp_generation ;
   __u32 imp_conn_cnt ;
   int imp_last_generation_checked ;
   __u64 imp_last_replay_transno ;
   __u64 imp_peer_committed_transno ;
   __u64 imp_last_transno_checked ;
   struct lustre_handle imp_remote_handle ;
   cfs_time_t imp_next_ping ;
   __u64 imp_last_success_conn ;
   struct list_head imp_conn_list ;
   struct obd_import_conn *imp_conn_current ;
   spinlock_t imp_lock ;
   unsigned char imp_no_timeout : 1 ;
   unsigned char imp_invalid : 1 ;
   unsigned char imp_deactive : 1 ;
   unsigned char imp_replayable : 1 ;
   unsigned char imp_dlm_fake : 1 ;
   unsigned char imp_server_timeout : 1 ;
   unsigned char imp_delayed_recovery : 1 ;
   unsigned char imp_no_lock_replay : 1 ;
   unsigned char imp_vbr_failed : 1 ;
   unsigned char imp_force_verify : 1 ;
   unsigned char imp_force_next_verify : 1 ;
   unsigned char imp_pingable : 1 ;
   unsigned char imp_resend_replay : 1 ;
   unsigned char imp_no_pinger_recover : 1 ;
   unsigned char imp_need_mne_swab : 1 ;
   unsigned char imp_force_reconnect : 1 ;
   unsigned char imp_connect_tried : 1 ;
   __u32 imp_connect_op ;
   struct obd_connect_data imp_connect_data ;
   __u64 imp_connect_flags_orig ;
   int imp_connect_error ;
   __u32 imp_msg_magic ;
   __u32 imp_msghdr_flags ;
   struct ptlrpc_request_pool *imp_rq_pool ;
   struct imp_at imp_at ;
   time_t imp_last_reply_time ;
};
struct ptlrpc_reply_state;
struct ptlrpc_bulk_desc;
struct brw_page;
struct ptlrpc_sec_policy;
struct ptlrpc_sec_cops;
struct ptlrpc_sec_sops;
struct ptlrpc_svc_ctx;
struct ptlrpc_cli_ctx;
struct ptlrpc_ctx_ops;
struct bulk_spec_hash {
   __u8 hash_alg ;
};
union __anonunion_u_rpc_293 {
};
union __anonunion_u_bulk_294 {
   struct bulk_spec_hash hash ;
};
struct sptlrpc_flavor {
   __u32 sf_rpc ;
   __u32 sf_flags ;
   union __anonunion_u_rpc_293 u_rpc ;
   union __anonunion_u_bulk_294 u_bulk ;
};
enum lustre_sec_part {
    LUSTRE_SP_CLI = 0,
    LUSTRE_SP_MDT = 1,
    LUSTRE_SP_OST = 2,
    LUSTRE_SP_MGC = 3,
    LUSTRE_SP_MGS = 4,
    LUSTRE_SP_ANY = 255
} ;
struct vfs_cred {
   uint32_t vc_uid ;
   uint32_t vc_gid ;
};
struct ptlrpc_ctx_ops {
   int (*match)(struct ptlrpc_cli_ctx * , struct vfs_cred * ) ;
   int (*refresh)(struct ptlrpc_cli_ctx * ) ;
   int (*validate)(struct ptlrpc_cli_ctx * ) ;
   void (*die)(struct ptlrpc_cli_ctx * , int ) ;
   int (*display)(struct ptlrpc_cli_ctx * , char * , int ) ;
   int (*sign)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * ) ;
   int (*verify)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * ) ;
   int (*seal)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * ) ;
   int (*unseal)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * ) ;
   int (*wrap_bulk)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * , struct ptlrpc_bulk_desc * ) ;
   int (*unwrap_bulk)(struct ptlrpc_cli_ctx * , struct ptlrpc_request * , struct ptlrpc_bulk_desc * ) ;
};
struct ptlrpc_cli_ctx {
   struct hlist_node cc_cache ;
   atomic_t cc_refcount ;
   struct ptlrpc_sec *cc_sec ;
   struct ptlrpc_ctx_ops *cc_ops ;
   cfs_time_t cc_expire ;
   unsigned char cc_early_expire : 1 ;
   unsigned long cc_flags ;
   struct vfs_cred cc_vcred ;
   spinlock_t cc_lock ;
   struct list_head cc_req_list ;
   struct list_head cc_gc_chain ;
};
struct ptlrpc_sec_cops {
   struct ptlrpc_sec *(*create_sec)(struct obd_import * , struct ptlrpc_svc_ctx * ,
                                    struct sptlrpc_flavor * ) ;
   void (*destroy_sec)(struct ptlrpc_sec * ) ;
   void (*kill_sec)(struct ptlrpc_sec * ) ;
   struct ptlrpc_cli_ctx *(*lookup_ctx)(struct ptlrpc_sec * , struct vfs_cred * ,
                                        int , int ) ;
   void (*release_ctx)(struct ptlrpc_sec * , struct ptlrpc_cli_ctx * , int ) ;
   int (*flush_ctx_cache)(struct ptlrpc_sec * , uid_t , int , int ) ;
   void (*gc_ctx)(struct ptlrpc_sec * ) ;
   int (*install_rctx)(struct obd_import * , struct ptlrpc_sec * , struct ptlrpc_cli_ctx * ) ;
   int (*alloc_reqbuf)(struct ptlrpc_sec * , struct ptlrpc_request * , int ) ;
   void (*free_reqbuf)(struct ptlrpc_sec * , struct ptlrpc_request * ) ;
   int (*alloc_repbuf)(struct ptlrpc_sec * , struct ptlrpc_request * , int ) ;
   void (*free_repbuf)(struct ptlrpc_sec * , struct ptlrpc_request * ) ;
   int (*enlarge_reqbuf)(struct ptlrpc_sec * , struct ptlrpc_request * , int , int ) ;
   int (*display)(struct ptlrpc_sec * , struct seq_file * ) ;
};
struct ptlrpc_sec_sops {
   int (*accept)(struct ptlrpc_request * ) ;
   int (*authorize)(struct ptlrpc_request * ) ;
   void (*invalidate_ctx)(struct ptlrpc_svc_ctx * ) ;
   int (*alloc_rs)(struct ptlrpc_request * , int ) ;
   void (*free_rs)(struct ptlrpc_reply_state * ) ;
   void (*free_ctx)(struct ptlrpc_svc_ctx * ) ;
   int (*install_rctx)(struct obd_import * , struct ptlrpc_svc_ctx * ) ;
   int (*prep_bulk)(struct ptlrpc_request * , struct ptlrpc_bulk_desc * ) ;
   int (*unwrap_bulk)(struct ptlrpc_request * , struct ptlrpc_bulk_desc * ) ;
   int (*wrap_bulk)(struct ptlrpc_request * , struct ptlrpc_bulk_desc * ) ;
};
struct ptlrpc_sec_policy {
   struct module *sp_owner ;
   char *sp_name ;
   __u16 sp_policy ;
   struct ptlrpc_sec_cops *sp_cops ;
   struct ptlrpc_sec_sops *sp_sops ;
};
struct ptlrpc_sec {
   struct ptlrpc_sec_policy *ps_policy ;
   atomic_t ps_refcount ;
   atomic_t ps_nctx ;
   int ps_id ;
   struct sptlrpc_flavor ps_flvr ;
   enum lustre_sec_part ps_part ;
   unsigned char ps_dying : 1 ;
   struct obd_import *ps_import ;
   spinlock_t ps_lock ;
   struct list_head ps_gc_list ;
   cfs_time_t ps_gc_interval ;
   cfs_time_t ps_gc_next ;
};
struct ptlrpc_svc_ctx {
   atomic_t sc_refcount ;
   struct ptlrpc_sec_policy *sc_policy ;
};
struct ptlrpc_user_desc {
   __u32 pud_uid ;
   __u32 pud_gid ;
   __u32 pud_fsuid ;
   __u32 pud_fsgid ;
   __u32 pud_cap ;
   __u32 pud_ngroups ;
   __u32 pud_groups[0U] ;
};
struct lu_ref {
};
struct lu_ref_link {
};
struct lu_site;
struct lu_object;
struct lu_device;
struct lu_object_header;
struct lu_context;
struct lu_env;
struct lu_device_operations {
   struct lu_object *(*ldo_object_alloc)(struct lu_env const * , struct lu_object_header const * ,
                                         struct lu_device * ) ;
   int (*ldo_process_config)(struct lu_env const * , struct lu_device * , struct lustre_cfg * ) ;
   int (*ldo_recovery_complete)(struct lu_env const * , struct lu_device * ) ;
   int (*ldo_prepare)(struct lu_env const * , struct lu_device * , struct lu_device * ) ;
};
enum ldv_36955 {
    LOC_F_NEW = 1
} ;
typedef enum ldv_36955 loc_flags_t;
struct lu_object_conf {
   loc_flags_t loc_flags ;
};
struct lu_object_operations {
   int (*loo_object_init)(struct lu_env const * , struct lu_object * , struct lu_object_conf const * ) ;
   int (*loo_object_start)(struct lu_env const * , struct lu_object * ) ;
   void (*loo_object_delete)(struct lu_env const * , struct lu_object * ) ;
   void (*loo_object_free)(struct lu_env const * , struct lu_object * ) ;
   void (*loo_object_release)(struct lu_env const * , struct lu_object * ) ;
   int (*loo_object_print)(struct lu_env const * , void * , int (*)(struct lu_env const * ,
                                                                      void * , char const *
                                                                      , ...) , struct lu_object const * ) ;
   int (*loo_object_invariant)(struct lu_object const * ) ;
};
struct lu_device_type;
struct lu_device {
   atomic_t ld_ref ;
   struct lu_device_type *ld_type ;
   struct lu_device_operations const *ld_ops ;
   struct lu_site *ld_site ;
   struct proc_dir_entry *ld_proc_entry ;
   struct obd_device *ld_obd ;
   struct lu_ref ld_reference ;
   struct list_head ld_linkage ;
};
struct lu_device_type_operations;
struct obd_type;
struct lu_device_type {
   __u32 ldt_tags ;
   char *ldt_name ;
   struct lu_device_type_operations const *ldt_ops ;
   struct obd_type *ldt_obd_type ;
   __u32 ldt_ctx_tags ;
   unsigned int ldt_device_nr ;
   struct list_head ldt_linkage ;
};
struct lu_device_type_operations {
   struct lu_device *(*ldto_device_alloc)(struct lu_env const * , struct lu_device_type * ,
                                          struct lustre_cfg * ) ;
   struct lu_device *(*ldto_device_free)(struct lu_env const * , struct lu_device * ) ;
   int (*ldto_device_init)(struct lu_env const * , struct lu_device * , char const * ,
                           struct lu_device * ) ;
   struct lu_device *(*ldto_device_fini)(struct lu_env const * , struct lu_device * ) ;
   int (*ldto_init)(struct lu_device_type * ) ;
   void (*ldto_fini)(struct lu_device_type * ) ;
   void (*ldto_start)(struct lu_device_type * ) ;
   void (*ldto_stop)(struct lu_device_type * ) ;
};
struct lu_attr {
   __u64 la_size ;
   obd_time la_mtime ;
   obd_time la_atime ;
   obd_time la_ctime ;
   __u64 la_blocks ;
   __u32 la_mode ;
   __u32 la_uid ;
   __u32 la_gid ;
   __u32 la_flags ;
   __u32 la_nlink ;
   __u32 la_blkbits ;
   __u32 la_blksize ;
   __u32 la_rdev ;
   __u64 la_valid ;
};
struct lu_object {
   struct lu_object_header *lo_header ;
   struct lu_device *lo_dev ;
   struct lu_object_operations const *lo_ops ;
   struct list_head lo_linkage ;
   struct lu_ref_link lo_dev_ref ;
};
struct lu_object_header {
   struct lu_fid loh_fid ;
   unsigned long loh_flags ;
   atomic_t loh_ref ;
   __u32 loh_attr ;
   struct hlist_node loh_hash ;
   struct list_head loh_lru ;
   struct list_head loh_layers ;
   struct lu_ref loh_reference ;
};
struct seq_server_site;
struct lu_site {
   struct cfs_hash *ls_obj_hash ;
   int ls_purge_start ;
   struct lu_device *ls_top_dev ;
   struct lu_device *ls_bottom_dev ;
   struct list_head ls_linkage ;
   struct list_head ls_ld_linkage ;
   spinlock_t ls_ld_lock ;
   struct lprocfs_stats *ls_stats ;
   struct seq_server_site *ld_seq_site ;
};
enum lu_context_state {
    LCS_INITIALIZED = 1,
    LCS_ENTERED = 2,
    LCS_LEFT = 3,
    LCS_FINALIZED = 4
} ;
struct ptlrpc_thread;
struct lu_context {
   __u32 lc_tags ;
   enum lu_context_state lc_state ;
   struct ptlrpc_thread *lc_thread ;
   void **lc_value ;
   struct list_head lc_remember ;
   unsigned int lc_version ;
   unsigned int lc_cookie ;
};
struct lu_env {
   struct lu_context le_ctx ;
   struct lu_context *le_ses ;
};
struct lu_buf {
   void *lb_buf ;
   ssize_t lb_len ;
};
struct req_msg_field;
struct req_format;
struct req_capsule;
enum req_location {
    RCL_CLIENT = 0,
    RCL_SERVER = 1,
    RCL_NR = 2
} ;
struct req_capsule {
   struct ptlrpc_request *rc_req ;
   struct req_format const *rc_fmt ;
   enum req_location rc_loc ;
   __u32 rc_area[2U][9U] ;
};
struct ptlrpc_connection {
   struct hlist_node c_hash ;
   lnet_nid_t c_self ;
   lnet_process_id_t c_peer ;
   struct obd_uuid c_remote_uuid ;
   atomic_t c_refcount ;
};
struct ptlrpc_client {
   __u32 cli_request_portal ;
   __u32 cli_reply_portal ;
   char *cli_name ;
};
union ptlrpc_async_args {
   void *pointer_arg[11U] ;
   __u64 space[7U] ;
};
struct ptlrpc_request_set;
struct ptlrpc_request_set {
   atomic_t set_refcount ;
   atomic_t set_new_count ;
   atomic_t set_remaining ;
   wait_queue_head_t set_waitq ;
   wait_queue_head_t *set_wakeup_ptr ;
   struct list_head set_requests ;
   struct list_head set_cblist ;
   int (*set_interpret)(struct ptlrpc_request_set * , void * , int ) ;
   void *set_arg ;
   spinlock_t set_new_req_lock ;
   struct list_head set_new_requests ;
   int set_rc ;
   int set_max_inflight ;
   int (*set_producer)(struct ptlrpc_request_set * , void * ) ;
   void *set_producer_arg ;
};
struct ptlrpc_service_part;
struct ptlrpc_service;
struct ptlrpc_cb_id {
   void (*cbid_fn)(lnet_event_t * ) ;
   void *cbid_arg ;
};
struct ptlrpc_reply_state {
   struct ptlrpc_cb_id rs_cb_id ;
   struct list_head rs_list ;
   struct list_head rs_exp_list ;
   struct list_head rs_obd_list ;
   spinlock_t rs_lock ;
   unsigned char rs_difficult : 1 ;
   unsigned char rs_no_ack : 1 ;
   unsigned char rs_scheduled : 1 ;
   unsigned char rs_scheduled_ever : 1 ;
   unsigned char rs_handled : 1 ;
   unsigned char rs_on_net : 1 ;
   unsigned char rs_prealloc : 1 ;
   unsigned char rs_committed : 1 ;
   int rs_size ;
   __u32 rs_opc ;
   __u64 rs_transno ;
   __u64 rs_xid ;
   struct obd_export *rs_export ;
   struct ptlrpc_service_part *rs_svcpt ;
   lnet_handle_md_t rs_md_h ;
   atomic_t rs_refcount ;
   struct ptlrpc_svc_ctx *rs_svc_ctx ;
   struct lustre_msg_v2 *rs_repbuf ;
   int rs_repbuf_len ;
   int rs_repdata_len ;
   struct lustre_msg_v2 *rs_msg ;
   int rs_nlocks ;
   struct lustre_handle rs_locks[8U] ;
   ldlm_mode_t rs_modes[8U] ;
};
enum rq_phase {
    RQ_PHASE_NEW = 3955285504U,
    RQ_PHASE_RPC = 3955285505U,
    RQ_PHASE_BULK = 3955285506U,
    RQ_PHASE_INTERPRET = 3955285507U,
    RQ_PHASE_COMPLETE = 3955285508U,
    RQ_PHASE_UNREGISTERING = 3955285509U,
    RQ_PHASE_UNDEFINED = 3955285510U
} ;
struct ptlrpc_request_pool {
   spinlock_t prp_lock ;
   struct list_head prp_req_list ;
   int prp_rq_size ;
   void (*prp_populate)(struct ptlrpc_request_pool * , int ) ;
};
struct ldlm_lock;
struct ptlrpc_nrs_policy;
struct ptlrpc_nrs_resource;
struct ptlrpc_nrs_request;
enum ptlrpc_nrs_ctl {
    PTLRPC_NRS_CTL_INVALID = 0,
    PTLRPC_NRS_CTL_START = 1,
    PTLRPC_NRS_CTL_STOP = 2,
    PTLRPC_NRS_CTL_1ST_POL_SPEC = 32
} ;
struct ptlrpc_nrs_pol_ops {
   int (*op_policy_init)(struct ptlrpc_nrs_policy * ) ;
   void (*op_policy_fini)(struct ptlrpc_nrs_policy * ) ;
   int (*op_policy_start)(struct ptlrpc_nrs_policy * ) ;
   void (*op_policy_stop)(struct ptlrpc_nrs_policy * ) ;
   int (*op_policy_ctl)(struct ptlrpc_nrs_policy * , enum ptlrpc_nrs_ctl , void * ) ;
   int (*op_res_get)(struct ptlrpc_nrs_policy * , struct ptlrpc_nrs_request * , struct ptlrpc_nrs_resource const * ,
                     struct ptlrpc_nrs_resource ** , bool ) ;
   void (*op_res_put)(struct ptlrpc_nrs_policy * , struct ptlrpc_nrs_resource const * ) ;
   struct ptlrpc_nrs_request *(*op_req_get)(struct ptlrpc_nrs_policy * , bool , bool ) ;
   int (*op_req_enqueue)(struct ptlrpc_nrs_policy * , struct ptlrpc_nrs_request * ) ;
   void (*op_req_dequeue)(struct ptlrpc_nrs_policy * , struct ptlrpc_nrs_request * ) ;
   void (*op_req_stop)(struct ptlrpc_nrs_policy * , struct ptlrpc_nrs_request * ) ;
   int (*op_lprocfs_init)(struct ptlrpc_service * ) ;
   void (*op_lprocfs_fini)(struct ptlrpc_service * ) ;
};
enum ptlrpc_nrs_queue_type {
    PTLRPC_NRS_QUEUE_REG = 1,
    PTLRPC_NRS_QUEUE_HP = 2,
    PTLRPC_NRS_QUEUE_BOTH = 3
} ;
struct ptlrpc_nrs {
   spinlock_t nrs_lock ;
   struct list_head nrs_policy_list ;
   struct list_head nrs_policy_queued ;
   struct ptlrpc_service_part *nrs_svcpt ;
   struct ptlrpc_nrs_policy *nrs_policy_primary ;
   struct ptlrpc_nrs_policy *nrs_policy_fallback ;
   enum ptlrpc_nrs_queue_type nrs_queue_type ;
   unsigned long nrs_req_queued ;
   unsigned long nrs_req_started ;
   unsigned int nrs_num_pols ;
   unsigned char nrs_policy_starting : 1 ;
   unsigned char nrs_stopping : 1 ;
};
struct ptlrpc_nrs_pol_desc;
struct ptlrpc_nrs_pol_desc {
   char pd_name[16U] ;
   struct list_head pd_list ;
   struct ptlrpc_nrs_pol_ops const *pd_ops ;
   bool (*pd_compat)(struct ptlrpc_service const * , struct ptlrpc_nrs_pol_desc const * ) ;
   char const *pd_compat_svc_name ;
   struct module *pd_owner ;
   unsigned int pd_flags ;
   atomic_t pd_refs ;
};
enum ptlrpc_nrs_pol_state {
    NRS_POL_STATE_INVALID = 0,
    NRS_POL_STATE_STOPPED = 1,
    NRS_POL_STATE_STOPPING = 2,
    NRS_POL_STATE_STARTING = 3,
    NRS_POL_STATE_STARTED = 4
} ;
struct ptlrpc_nrs_policy {
   struct list_head pol_list ;
   struct list_head pol_list_queued ;
   enum ptlrpc_nrs_pol_state pol_state ;
   unsigned int pol_flags ;
   long pol_req_queued ;
   long pol_req_started ;
   long pol_ref ;
   struct ptlrpc_nrs *pol_nrs ;
   void *pol_private ;
   struct ptlrpc_nrs_pol_desc *pol_desc ;
};
struct ptlrpc_nrs_resource {
   struct ptlrpc_nrs_resource *res_parent ;
   struct ptlrpc_nrs_policy *res_policy ;
};
struct nrs_fifo_req {
   struct list_head fr_list ;
   __u64 fr_sequence ;
};
struct nrs_crrn_req {
   __u64 cr_round ;
   __u64 cr_sequence ;
};
struct nrs_orr_req_range {
   __u64 or_start ;
   __u64 or_end ;
};
union __anonunion_ldv_55711_295 {
   struct lu_fid ok_fid ;
   __u32 ok_idx ;
};
struct nrs_orr_key {
   union __anonunion_ldv_55711_295 ldv_55711 ;
};
struct nrs_orr_req {
   struct nrs_orr_req_range or_range ;
   __u64 or_round ;
   __u64 or_sequence ;
   struct nrs_orr_key or_key ;
   unsigned char or_orr_set : 1 ;
   unsigned char or_trr_set : 1 ;
   unsigned char or_logical_set : 1 ;
   unsigned char or_physical_set : 1 ;
};
union __anonunion_nr_u_296 {
   struct nrs_fifo_req fifo ;
   struct nrs_crrn_req crr ;
   struct nrs_orr_req orr ;
};
struct ptlrpc_nrs_request {
   struct ptlrpc_nrs_resource *nr_res_ptrs[2U] ;
   unsigned int nr_res_idx ;
   unsigned char nr_initialized : 1 ;
   unsigned char nr_enqueued : 1 ;
   unsigned char nr_started : 1 ;
   unsigned char nr_finalized : 1 ;
   cfs_binheap_node_t nr_node ;
   union __anonunion_nr_u_296 nr_u ;
   void *ext ;
};
struct ptlrpc_hpreq_ops {
   int (*hpreq_lock_match)(struct ptlrpc_request * , struct ldlm_lock * ) ;
   int (*hpreq_check)(struct ptlrpc_request * ) ;
   void (*hpreq_fini)(struct ptlrpc_request * ) ;
};
struct ptlrpc_request_buffer_desc;
struct ptlrpc_request {
   int rq_type ;
   int rq_status ;
   struct list_head rq_list ;
   struct list_head rq_timed_list ;
   struct list_head rq_history_list ;
   struct list_head rq_exp_list ;
   struct ptlrpc_hpreq_ops *rq_ops ;
   struct ptlrpc_thread *rq_svc_thread ;
   __u64 rq_history_seq ;
   struct ptlrpc_nrs_request rq_nrq ;
   time_t rq_at_index ;
   spinlock_t rq_lock ;
   unsigned char rq_intr : 1 ;
   unsigned char rq_replied : 1 ;
   unsigned char rq_err : 1 ;
   unsigned char rq_timedout : 1 ;
   unsigned char rq_resend : 1 ;
   unsigned char rq_restart : 1 ;
   unsigned char rq_replay : 1 ;
   unsigned char rq_no_resend : 1 ;
   unsigned char rq_waiting : 1 ;
   unsigned char rq_receiving_reply : 1 ;
   unsigned char rq_no_delay : 1 ;
   unsigned char rq_net_err : 1 ;
   unsigned char rq_wait_ctx : 1 ;
   unsigned char rq_early : 1 ;
   unsigned char rq_must_unlink : 1 ;
   unsigned char rq_memalloc : 1 ;
   unsigned char rq_packed_final : 1 ;
   unsigned char rq_hp : 1 ;
   unsigned char rq_at_linked : 1 ;
   unsigned char rq_reply_truncate : 1 ;
   unsigned char rq_committed : 1 ;
   unsigned char rq_invalid_rqset : 1 ;
   unsigned char rq_generation_set : 1 ;
   unsigned char rq_no_retry_einprogress : 1 ;
   unsigned char rq_allow_replay : 1 ;
   unsigned int rq_nr_resend ;
   enum rq_phase rq_phase ;
   enum rq_phase rq_next_phase ;
   atomic_t rq_refcount ;
   short rq_request_portal ;
   short rq_reply_portal ;
   int rq_nob_received ;
   int rq_reqlen ;
   int rq_replen ;
   struct lustre_msg_v2 *rq_reqmsg ;
   struct lustre_msg_v2 *rq_repmsg ;
   __u64 rq_transno ;
   __u64 rq_xid ;
   struct list_head rq_replay_list ;
   struct ptlrpc_cli_ctx *rq_cli_ctx ;
   struct ptlrpc_svc_ctx *rq_svc_ctx ;
   struct list_head rq_ctx_chain ;
   struct sptlrpc_flavor rq_flvr ;
   enum lustre_sec_part rq_sp_from ;
   unsigned char rq_ctx_init : 1 ;
   unsigned char rq_ctx_fini : 1 ;
   unsigned char rq_bulk_read : 1 ;
   unsigned char rq_bulk_write : 1 ;
   unsigned char rq_auth_gss : 1 ;
   unsigned char rq_auth_remote : 1 ;
   unsigned char rq_auth_usr_root : 1 ;
   unsigned char rq_auth_usr_mdt : 1 ;
   unsigned char rq_auth_usr_ost : 1 ;
   unsigned char rq_pack_udesc : 1 ;
   unsigned char rq_pack_bulk : 1 ;
   unsigned char rq_no_reply : 1 ;
   unsigned char rq_pill_init : 1 ;
   uid_t rq_auth_uid ;
   uid_t rq_auth_mapped_uid ;
   struct ptlrpc_user_desc *rq_user_desc ;
   struct lustre_msg_v2 *rq_reqbuf ;
   char *rq_repbuf ;
   struct lustre_msg_v2 *rq_repdata ;
   struct lustre_msg_v2 *rq_clrbuf ;
   int rq_reqbuf_len ;
   int rq_reqdata_len ;
   int rq_repbuf_len ;
   int rq_repdata_len ;
   int rq_clrbuf_len ;
   int rq_clrdata_len ;
   unsigned int rq_reply_off ;
   __u32 rq_req_swab_mask ;
   __u32 rq_rep_swab_mask ;
   int rq_import_generation ;
   enum lustre_imp_state rq_send_state ;
   int rq_early_count ;
   lnet_handle_md_t rq_req_md_h ;
   struct ptlrpc_cb_id rq_req_cbid ;
   cfs_duration_t rq_delay_limit ;
   cfs_time_t rq_queued_time ;
   struct timeval rq_arrival_time ;
   struct ptlrpc_reply_state *rq_reply_state ;
   struct ptlrpc_request_buffer_desc *rq_rqbd ;
   lnet_handle_md_t rq_reply_md_h ;
   wait_queue_head_t rq_reply_waitq ;
   struct ptlrpc_cb_id rq_reply_cbid ;
   lnet_nid_t rq_self ;
   lnet_process_id_t rq_peer ;
   struct obd_export *rq_export ;
   struct obd_import *rq_import ;
   void (*rq_replay_cb)(struct ptlrpc_request * ) ;
   void (*rq_commit_cb)(struct ptlrpc_request * ) ;
   void *rq_cb_data ;
   struct ptlrpc_bulk_desc *rq_bulk ;
   time_t rq_sent ;
   time_t rq_real_sent ;
   time_t volatile rq_deadline ;
   time_t rq_reply_deadline ;
   time_t rq_bulk_deadline ;
   int rq_timeout ;
   wait_queue_head_t rq_set_waitq ;
   struct list_head rq_set_chain ;
   struct ptlrpc_request_set *rq_set ;
   int (*rq_interpret_reply)(struct lu_env const * , struct ptlrpc_request * , void * ,
                             int ) ;
   union ptlrpc_async_args rq_async_args ;
   struct ptlrpc_request_pool *rq_pool ;
   struct lu_context rq_session ;
   struct lu_context rq_recov_session ;
   struct req_capsule rq_pill ;
};
struct ptlrpc_bulk_desc {
   unsigned char bd_failure : 1 ;
   unsigned char bd_type : 2 ;
   unsigned char bd_registered : 1 ;
   spinlock_t bd_lock ;
   int bd_import_generation ;
   __u32 bd_portal ;
   struct obd_export *bd_export ;
   struct obd_import *bd_import ;
   struct ptlrpc_request *bd_req ;
   wait_queue_head_t bd_waitq ;
   int bd_iov_count ;
   int bd_max_iov ;
   int bd_nob ;
   int bd_nob_transferred ;
   __u64 bd_last_xid ;
   struct ptlrpc_cb_id bd_cbid ;
   lnet_nid_t bd_sender ;
   int bd_md_count ;
   int bd_md_max_brw ;
   lnet_handle_md_t bd_mds[4U] ;
   lnet_kiov_t *bd_enc_iov ;
   lnet_kiov_t bd_iov[0U] ;
};
struct ptlrpc_thread {
   struct list_head t_link ;
   void *t_data ;
   __u32 t_flags ;
   unsigned int t_id ;
   pid_t t_pid ;
   struct ptlrpc_service_part *t_svcpt ;
   wait_queue_head_t t_ctl_waitq ;
   struct lu_env *t_env ;
   char t_name[32U] ;
};
struct ptlrpc_request_buffer_desc {
   struct list_head rqbd_list ;
   struct list_head rqbd_reqs ;
   struct ptlrpc_service_part *rqbd_svcpt ;
   lnet_handle_md_t rqbd_md_h ;
   int rqbd_refcount ;
   char *rqbd_buffer ;
   struct ptlrpc_cb_id rqbd_cbid ;
   struct ptlrpc_request rqbd_req ;
};
struct ptlrpc_service_ops {
   int (*so_thr_init)(struct ptlrpc_thread * ) ;
   void (*so_thr_done)(struct ptlrpc_thread * ) ;
   int (*so_req_handler)(struct ptlrpc_request * ) ;
   int (*so_hpreq_handler)(struct ptlrpc_request * ) ;
   void (*so_req_printer)(void * , struct ptlrpc_request * ) ;
};
struct ptlrpc_service {
   spinlock_t srv_lock ;
   struct list_head srv_list ;
   struct ptlrpc_service_ops srv_ops ;
   char *srv_name ;
   char *srv_thread_name ;
   struct list_head srv_threads ;
   int srv_nthrs_cpt_init ;
   int srv_nthrs_cpt_limit ;
   struct proc_dir_entry *srv_procroot ;
   struct lprocfs_stats *srv_stats ;
   int srv_hpreq_ratio ;
   int srv_max_req_size ;
   int srv_max_reply_size ;
   int srv_buf_size ;
   int srv_nbuf_per_group ;
   __u32 srv_req_portal ;
   __u32 srv_rep_portal ;
   __u32 srv_ctx_tags ;
   int srv_watchdog_factor ;
   unsigned char srv_is_stopping : 1 ;
   int srv_hist_nrqbds_cpt_max ;
   int srv_ncpts ;
   __u32 *srv_cpts ;
   int srv_cpt_bits ;
   struct cfs_cpt_table *srv_cptable ;
   struct ptlrpc_service_part *srv_parts[0U] ;
};
struct ptlrpc_service_part {
   struct ptlrpc_service *scp_service ;
   int scp_cpt ;
   int scp_thr_nextid ;
   int scp_nthrs_starting ;
   int scp_nthrs_stopping ;
   int scp_nthrs_running ;
   struct list_head scp_threads ;
   spinlock_t scp_lock ;
   int scp_nrqbds_total ;
   int scp_nrqbds_posted ;
   int scp_rqbd_allocating ;
   int scp_nreqs_incoming ;
   struct list_head scp_rqbd_idle ;
   struct list_head scp_rqbd_posted ;
   struct list_head scp_req_incoming ;
   cfs_duration_t scp_rqbd_timeout ;
   wait_queue_head_t scp_waitq ;
   struct list_head scp_hist_reqs ;
   struct list_head scp_hist_rqbds ;
   int scp_hist_nrqbds ;
   __u64 scp_hist_seq ;
   __u64 scp_hist_seq_culled ;
   spinlock_t scp_req_lock ;
   int scp_nreqs_active ;
   int scp_nhreqs_active ;
   int scp_hreq_count ;
   struct ptlrpc_nrs scp_nrs_reg ;
   struct ptlrpc_nrs *scp_nrs_hp ;
   spinlock_t scp_at_lock ;
   struct adaptive_timeout scp_at_estimate ;
   struct ptlrpc_at_array scp_at_array ;
   struct timer_list scp_at_timer ;
   cfs_time_t scp_at_checktime ;
   unsigned int scp_at_check ;
   spinlock_t scp_rep_lock ;
   struct list_head scp_rep_active ;
   struct list_head scp_rep_idle ;
   wait_queue_head_t scp_rep_waitq ;
   atomic_t scp_nreps_difficult ;
};
struct llog_operations;
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
};
struct lustre_intent_data {
   int it_disposition ;
   int it_status ;
   __u64 it_lock_handle ;
   __u64 it_lock_bits ;
   int it_lock_mode ;
   int it_remote_lock_mode ;
   __u64 it_remote_lock_handle ;
   void *it_data ;
   unsigned char it_lock_set : 1 ;
};
union __anonunion_d_297 {
   struct lustre_intent_data lustre ;
};
struct lookup_intent {
   int it_op ;
   int it_create_mode ;
   __u64 it_flags ;
   union __anonunion_d_297 d ;
};
struct __anonstruct_client_obd_lock_t_298 {
   spinlock_t lock ;
   unsigned long time ;
   struct task_struct *task ;
   char const *func ;
   int line ;
};
typedef struct __anonstruct_client_obd_lock_t_298 client_obd_lock_t;
struct lustre_cfg {
   __u32 lcfg_version ;
   __u32 lcfg_command ;
   __u32 lcfg_num ;
   __u32 lcfg_flags ;
   __u64 lcfg_nid ;
   __u32 lcfg_nal ;
   __u32 lcfg_bufcount ;
   __u32 lcfg_buflens[0U] ;
};
struct client_obd;
struct md_open_data;
struct obd_client_handle {
   struct lustre_handle och_fh ;
   struct lu_fid och_fid ;
   struct md_open_data *och_mod ;
   struct lustre_handle och_lease_handle ;
   __u32 och_magic ;
   fmode_t och_flags ;
};
struct interval_node_extent {
   __u64 start ;
   __u64 end ;
};
struct interval_node {
   struct interval_node *in_left ;
   struct interval_node *in_right ;
   struct interval_node *in_parent ;
   unsigned char in_color : 1 ;
   unsigned char in_intree : 1 ;
   unsigned int in_res1 : 30 ;
   __u8 in_res2[4U] ;
   __u64 in_max_high ;
   struct interval_node_extent in_extent ;
};
struct obd_ops;
enum ldv_38218 {
    LDLM_NAMESPACE_SERVER = 1,
    LDLM_NAMESPACE_CLIENT = 2
} ;
typedef enum ldv_38218 ldlm_side_t;
struct ldlm_pool;
struct ldlm_resource;
struct ldlm_namespace;
struct ldlm_pool_ops {
   int (*po_recalc)(struct ldlm_pool * ) ;
   int (*po_shrink)(struct ldlm_pool * , int , gfp_t ) ;
   int (*po_setup)(struct ldlm_pool * , int ) ;
};
struct ldlm_pool {
   struct proc_dir_entry *pl_proc_dir ;
   char pl_name[100U] ;
   spinlock_t pl_lock ;
   atomic_t pl_limit ;
   atomic_t pl_granted ;
   atomic_t pl_grant_rate ;
   atomic_t pl_cancel_rate ;
   __u64 pl_server_lock_volume ;
   __u64 pl_client_lock_volume ;
   atomic_t pl_lock_volume_factor ;
   time_t pl_recalc_time ;
   time_t pl_recalc_period ;
   struct ldlm_pool_ops const *pl_ops ;
   int pl_grant_plan ;
   struct lprocfs_stats *pl_stats ;
};
struct ldlm_valblock_ops {
   int (*lvbo_init)(struct ldlm_resource * ) ;
   int (*lvbo_update)(struct ldlm_resource * , struct ptlrpc_request * , int ) ;
   int (*lvbo_free)(struct ldlm_resource * ) ;
   int (*lvbo_size)(struct ldlm_lock * ) ;
   int (*lvbo_fill)(struct ldlm_lock * , void * , int ) ;
};
enum ldv_38271 {
    LDLM_NAMESPACE_GREEDY = 1,
    LDLM_NAMESPACE_MODEST = 2
} ;
typedef enum ldv_38271 ldlm_appetite_t;
struct ldlm_ns_bucket {
   struct ldlm_namespace *nsb_namespace ;
   struct adaptive_timeout nsb_at_estimate ;
};
struct ldlm_namespace {
   struct obd_device *ns_obd ;
   ldlm_side_t ns_client ;
   struct cfs_hash *ns_rs_hash ;
   spinlock_t ns_lock ;
   atomic_t ns_bref ;
   __u64 ns_connect_flags ;
   __u64 ns_orig_connect_flags ;
   struct proc_dir_entry *ns_proc_dir_entry ;
   struct list_head ns_list_chain ;
   struct list_head ns_unused_list ;
   int ns_nr_unused ;
   unsigned int ns_max_unused ;
   unsigned int ns_max_age ;
   unsigned int ns_timeouts ;
   unsigned int ns_ctime_age_limit ;
   cfs_time_t ns_next_dump ;
   int (*ns_policy)(struct ldlm_namespace * , struct ldlm_lock ** , void * , ldlm_mode_t ,
                    __u64 , void * ) ;
   struct ldlm_valblock_ops *ns_lvbo ;
   void *ns_lvbp ;
   wait_queue_head_t ns_waitq ;
   struct ldlm_pool ns_pool ;
   ldlm_appetite_t ns_appetite ;
   unsigned int ns_contended_locks ;
   unsigned int ns_contention_time ;
   unsigned int ns_max_nolock_size ;
   unsigned int ns_max_parallel_ast ;
   int (*ns_cancel_for_recovery)(struct ldlm_lock * ) ;
   struct lprocfs_stats *ns_stats ;
   unsigned char ns_stopping : 1 ;
};
struct ldlm_interval {
   struct interval_node li_node ;
   struct list_head li_group ;
};
struct ldlm_interval_tree {
   int lit_size ;
   ldlm_mode_t lit_mode ;
   struct interval_node *lit_root ;
};
enum ldv_38364 {
    LCF_ASYNC = 1,
    LCF_LOCAL = 2,
    LCF_BL_AST = 4
} ;
typedef enum ldv_38364 ldlm_cancel_flags_t;
struct ldlm_flock {
   __u64 start ;
   __u64 end ;
   __u64 owner ;
   __u64 blocking_owner ;
   struct obd_export *blocking_export ;
   __u32 blocking_refs ;
   __u32 pid ;
};
union __anonunion_ldlm_policy_data_t_302 {
   struct ldlm_extent l_extent ;
   struct ldlm_flock l_flock ;
   struct ldlm_inodebits l_inodebits ;
};
typedef union __anonunion_ldlm_policy_data_t_302 ldlm_policy_data_t;
enum lvb_type {
    LVB_T_NONE = 0,
    LVB_T_OST = 1,
    LVB_T_LQUOTA = 2,
    LVB_T_LAYOUT = 3
} ;
struct ldlm_lock {
   struct portals_handle l_handle ;
   atomic_t l_refc ;
   spinlock_t l_lock ;
   struct ldlm_resource *l_resource ;
   struct list_head l_lru ;
   struct list_head l_res_link ;
   struct ldlm_interval *l_tree_node ;
   struct hlist_node l_exp_hash ;
   struct hlist_node l_exp_flock_hash ;
   ldlm_mode_t l_req_mode ;
   ldlm_mode_t l_granted_mode ;
   int (*l_completion_ast)(struct ldlm_lock * , __u64 , void * ) ;
   int (*l_blocking_ast)(struct ldlm_lock * , struct ldlm_lock_desc * , void * , int ) ;
   int (*l_glimpse_ast)(struct ldlm_lock * , void * ) ;
   struct obd_export *l_export ;
   struct obd_export *l_conn_export ;
   struct lustre_handle l_remote_handle ;
   ldlm_policy_data_t l_policy_data ;
   __u64 l_flags ;
   __u32 l_readers ;
   __u32 l_writers ;
   wait_queue_head_t l_waitq ;
   cfs_time_t l_last_activity ;
   cfs_time_t l_last_used ;
   struct ldlm_extent l_req_extent ;
   enum lvb_type l_lvb_type ;
   __u32 l_lvb_len ;
   void *l_lvb_data ;
   void *l_ast_data ;
   __u64 l_client_cookie ;
   struct list_head l_pending_chain ;
   cfs_time_t l_callback_timeout ;
   __u32 l_pid ;
   int l_bl_ast_run ;
   struct list_head l_bl_ast ;
   struct list_head l_cp_ast ;
   struct list_head l_rk_ast ;
   struct ldlm_lock *l_blocking_lock ;
   struct list_head l_sl_mode ;
   struct list_head l_sl_policy ;
   struct lu_ref l_reference ;
   struct list_head l_exp_list ;
};
struct ldlm_resource {
   struct ldlm_ns_bucket *lr_ns_bucket ;
   struct hlist_node lr_hash ;
   spinlock_t lr_lock ;
   struct list_head lr_granted ;
   struct list_head lr_converting ;
   struct list_head lr_waiting ;
   ldlm_mode_t lr_most_restr ;
   ldlm_type_t lr_type ;
   struct ldlm_res_id lr_name ;
   atomic_t lr_refcount ;
   struct ldlm_interval_tree lr_itree[8U] ;
   struct mutex lr_lvb_mutex ;
   int lr_lvb_len ;
   void *lr_lvb_data ;
   cfs_time_t lr_contention_time ;
   struct lu_ref lr_reference ;
   struct inode *lr_lvb_inode ;
};
struct ldlm_enqueue_info {
   __u32 ei_type ;
   __u32 ei_mode ;
   void *ei_cb_bl ;
   void *ei_cb_cp ;
   void *ei_cb_gl ;
   void *ei_cbdata ;
};
struct lsd_client_data;
struct tg_export_data {
   struct mutex ted_lcd_lock ;
   struct lsd_client_data *ted_lcd ;
   loff_t ted_lr_off ;
   int ted_lr_idx ;
};
struct lustre_idmap_table;
struct mdt_export_data {
   struct tg_export_data med_ted ;
   struct list_head med_open_head ;
   spinlock_t med_open_lock ;
   __u64 med_ibits_known ;
   struct mutex med_idmap_mutex ;
   struct lustre_idmap_table *med_idmap ;
};
struct ec_export_data {
   struct list_head eced_locks ;
};
struct filter_export_data {
   struct tg_export_data fed_ted ;
   spinlock_t fed_lock ;
   long fed_dirty ;
   long fed_grant ;
   struct list_head fed_mod_list ;
   int fed_mod_count ;
   long fed_pending ;
   __u32 fed_group ;
   __u8 fed_pagesize ;
};
struct mgs_export_data {
   struct list_head med_clients ;
   spinlock_t med_lock ;
};
struct nid_stat {
   lnet_nid_t nid ;
   struct hlist_node nid_hash ;
   struct list_head nid_list ;
   struct obd_device *nid_obd ;
   struct proc_dir_entry *nid_proc ;
   struct lprocfs_stats *nid_stats ;
   struct lprocfs_stats *nid_ldlm_stats ;
   atomic_t nid_exp_ref_count ;
};
enum obd_option {
    OBD_OPT_FORCE = 1,
    OBD_OPT_FAILOVER = 2,
    OBD_OPT_ABORT_RECOV = 4
} ;
union __anonunion_u_303 {
   struct tg_export_data eu_target_data ;
   struct mdt_export_data eu_mdt_data ;
   struct filter_export_data eu_filter_data ;
   struct ec_export_data eu_ec_data ;
   struct mgs_export_data eu_mgs_data ;
};
struct obd_export {
   struct portals_handle exp_handle ;
   atomic_t exp_refcount ;
   atomic_t exp_rpc_count ;
   atomic_t exp_cb_count ;
   atomic_t exp_replay_count ;
   atomic_t exp_locks_count ;
   struct obd_uuid exp_client_uuid ;
   struct list_head exp_obd_chain ;
   struct hlist_node exp_uuid_hash ;
   struct hlist_node exp_nid_hash ;
   struct list_head exp_obd_chain_timed ;
   struct obd_device *exp_obd ;
   struct obd_import *exp_imp_reverse ;
   struct nid_stat *exp_nid_stats ;
   struct lprocfs_stats *exp_md_stats ;
   struct ptlrpc_connection *exp_connection ;
   __u32 exp_conn_cnt ;
   struct cfs_hash *exp_lock_hash ;
   struct cfs_hash *exp_flock_hash ;
   struct list_head exp_outstanding_replies ;
   struct list_head exp_uncommitted_replies ;
   spinlock_t exp_uncommitted_replies_lock ;
   __u64 exp_last_committed ;
   cfs_time_t exp_last_request_time ;
   struct list_head exp_req_replay_queue ;
   spinlock_t exp_lock ;
   struct obd_connect_data exp_connect_data ;
   enum obd_option exp_flags ;
   unsigned char exp_failed : 1 ;
   unsigned char exp_in_recovery : 1 ;
   unsigned char exp_disconnected : 1 ;
   unsigned char exp_connecting : 1 ;
   unsigned char exp_delayed : 1 ;
   unsigned char exp_vbr_failed : 1 ;
   unsigned char exp_req_replay_needed : 1 ;
   unsigned char exp_lock_replay_needed : 1 ;
   unsigned char exp_need_sync : 1 ;
   unsigned char exp_flvr_changed : 1 ;
   unsigned char exp_flvr_adapt : 1 ;
   unsigned char exp_libclient : 1 ;
   unsigned char exp_abort_active_req : 1 ;
   unsigned char exp_need_mne_swab : 1 ;
   enum lustre_sec_part exp_sp_peer ;
   struct sptlrpc_flavor exp_flvr ;
   struct sptlrpc_flavor exp_flvr_old[2U] ;
   cfs_time_t exp_flvr_expire[2U] ;
   spinlock_t exp_rpc_lock ;
   struct list_head exp_hp_rpcs ;
   struct list_head exp_bl_list ;
   spinlock_t exp_bl_list_lock ;
   union __anonunion_u_303 u ;
};
enum lu_cli_type {
    LUSTRE_SEQ_METADATA = 1,
    LUSTRE_SEQ_DATA = 2
} ;
enum lu_mgr_type {
    LUSTRE_SEQ_SERVER = 0,
    LUSTRE_SEQ_CONTROLLER = 1
} ;
struct lu_server_seq;
struct lu_client_seq {
   struct obd_export *lcs_exp ;
   struct mutex lcs_mutex ;
   struct lu_seq_range lcs_space ;
   struct proc_dir_entry *lcs_proc_dir ;
   struct lu_fid lcs_fid ;
   enum lu_cli_type lcs_type ;
   char lcs_name[80U] ;
   __u64 lcs_width ;
   struct lu_server_seq *lcs_srv ;
   wait_queue_head_t lcs_waitq ;
   int lcs_update ;
};
struct dt_object;
struct lu_server_seq {
   struct lu_seq_range lss_space ;
   struct lu_seq_range lss_lowater_set ;
   struct lu_seq_range lss_hiwater_set ;
   struct dt_device *lss_dev ;
   struct dt_object *lss_obj ;
   struct proc_dir_entry *lss_proc_dir ;
   enum lu_mgr_type lss_type ;
   struct lu_client_seq *lss_cli ;
   struct mutex lss_mutex ;
   char lss_name[80U] ;
   __u64 lss_width ;
   __u64 lss_set_width ;
   __u32 lss_need_sync ;
   struct seq_server_site *lss_site ;
};
struct lu_client_fld;
struct lu_fld_hash;
struct fld_cache;
struct dt_index_features;
struct lu_client_fld {
   struct proc_dir_entry *lcf_proc_dir ;
   struct list_head lcf_targets ;
   struct lu_fld_hash *lcf_hash ;
   int lcf_count ;
   spinlock_t lcf_lock ;
   struct fld_cache *lcf_cache ;
   char lcf_name[80U] ;
   int lcf_flags ;
};
struct client_capa {
   struct inode *inode ;
   struct list_head lli_list ;
};
struct target_capa {
   struct hlist_node c_hash ;
};
union __anonunion_u_306 {
   struct client_capa cli ;
   struct target_capa tgt ;
};
struct obd_capa {
   struct list_head c_list ;
   struct lustre_capa c_capa ;
   atomic_t c_refc ;
   cfs_time_t c_expiry ;
   spinlock_t c_lock ;
   int c_site ;
   union __anonunion_u_306 u ;
};
struct osc_async_rc {
   int ar_rc ;
   int ar_force_sync ;
   __u64 ar_min_xid ;
};
struct lov_oinfo {
   struct ost_id loi_oi ;
   int loi_ost_idx ;
   int loi_ost_gen ;
   unsigned char loi_kms_valid : 1 ;
   __u64 loi_kms ;
   struct ost_lvb loi_lvb ;
   struct osc_async_rc loi_ar ;
};
struct __anonstruct_lsm_wire_307 {
   struct ost_id lw_object_oi ;
   __u32 lw_magic ;
   __u32 lw_stripe_size ;
   __u32 lw_pattern ;
   __u16 lw_stripe_count ;
   __u16 lw_layout_gen ;
   char lw_pool_name[16U] ;
};
struct lov_stripe_md {
   atomic_t lsm_refc ;
   spinlock_t lsm_lock ;
   pid_t lsm_lock_owner ;
   __u64 lsm_maxbytes ;
   struct __anonstruct_lsm_wire_307 lsm_wire ;
   struct lov_oinfo *lsm_oinfo[0U] ;
};
struct obd_info;
struct obd_info {
   ldlm_policy_data_t oi_policy ;
   __u64 oi_flags ;
   struct lustre_handle *oi_lockh ;
   struct lov_stripe_md *oi_md ;
   struct obdo *oi_oa ;
   struct obd_statfs *oi_osfs ;
   int (*oi_cb_up)(void * , int ) ;
   void *oi_capa ;
   char *oi_jobid ;
};
struct md_ops;
struct obd_type {
   struct list_head typ_chain ;
   struct obd_ops *typ_dt_ops ;
   struct md_ops *typ_md_ops ;
   struct proc_dir_entry *typ_procroot ;
   char *typ_name ;
   int typ_refcnt ;
   struct lu_device_type *typ_lu ;
   spinlock_t obd_type_lock ;
};
struct brw_page {
   obd_off off ;
   struct page *pg ;
   int count ;
   obd_flag flag ;
};
struct mdc_rpc_lock;
struct cl_client_cache;
struct local_oid_storage;
struct client_obd {
   struct rw_semaphore cl_sem ;
   struct obd_uuid cl_target_uuid ;
   struct obd_import *cl_import ;
   int cl_conn_count ;
   int cl_default_mds_easize ;
   int cl_max_mds_easize ;
   int cl_default_mds_cookiesize ;
   int cl_max_mds_cookiesize ;
   enum lustre_sec_part cl_sp_me ;
   enum lustre_sec_part cl_sp_to ;
   struct sptlrpc_flavor cl_flvr_mgc ;
   long cl_dirty ;
   long cl_dirty_max ;
   long cl_dirty_transit ;
   long cl_avail_grant ;
   long cl_lost_grant ;
   long cl_reserved_grant ;
   struct list_head cl_cache_waiters ;
   cfs_time_t cl_next_shrink_grant ;
   struct list_head cl_grant_shrink_list ;
   int cl_grant_shrink_interval ;
   int cl_chunkbits ;
   int cl_chunk ;
   int cl_extent_tax ;
   client_obd_lock_t cl_loi_list_lock ;
   struct list_head cl_loi_ready_list ;
   struct list_head cl_loi_hp_ready_list ;
   struct list_head cl_loi_write_list ;
   struct list_head cl_loi_read_list ;
   int cl_r_in_flight ;
   int cl_w_in_flight ;
   atomic_t cl_pending_w_pages ;
   atomic_t cl_pending_r_pages ;
   __u32 cl_max_pages_per_rpc ;
   int cl_max_rpcs_in_flight ;
   struct obd_histogram cl_read_rpc_hist ;
   struct obd_histogram cl_write_rpc_hist ;
   struct obd_histogram cl_read_page_hist ;
   struct obd_histogram cl_write_page_hist ;
   struct obd_histogram cl_read_offset_hist ;
   struct obd_histogram cl_write_offset_hist ;
   struct cl_client_cache *cl_cache ;
   struct list_head cl_lru_osc ;
   atomic_t *cl_lru_left ;
   atomic_t cl_lru_busy ;
   atomic_t cl_lru_shrinkers ;
   atomic_t cl_lru_in_list ;
   struct list_head cl_lru_list ;
   client_obd_lock_t cl_lru_list_lock ;
   atomic_t cl_destroy_in_flight ;
   wait_queue_head_t cl_destroy_waitq ;
   struct mdc_rpc_lock *cl_rpc_lock ;
   struct mdc_rpc_lock *cl_close_lock ;
   struct mutex cl_mgc_mutex ;
   struct local_oid_storage *cl_mgc_los ;
   struct dt_object *cl_mgc_configs_dir ;
   atomic_t cl_mgc_refcount ;
   struct obd_export *cl_mgc_mgsexp ;
   unsigned char cl_checksum : 1 ;
   __u32 cl_supp_cksum_types ;
   cksum_type_t cl_cksum_type ;
   struct osc_async_rc cl_ar ;
   int cl_qchk_stat ;
   struct lu_client_seq *cl_seq ;
   atomic_t cl_resends ;
   void *cl_writeback_work ;
   struct cfs_hash *cl_quota_hash[2U] ;
};
struct echo_client_obd {
   struct obd_export *ec_exp ;
   spinlock_t ec_lock ;
   struct list_head ec_objects ;
   struct list_head ec_locks ;
   int ec_nstripes ;
   __u64 ec_unique ;
};
struct lov_qos_oss {
   struct obd_uuid lqo_uuid ;
   struct list_head lqo_oss_list ;
   __u64 lqo_bavail ;
   __u64 lqo_penalty ;
   __u64 lqo_penalty_per_obj ;
   time_t lqo_used ;
   __u32 lqo_ost_count ;
};
struct ltd_qos {
   struct lov_qos_oss *ltq_oss ;
   __u64 ltq_penalty ;
   __u64 ltq_penalty_per_obj ;
   __u64 ltq_weight ;
   time_t ltq_used ;
   unsigned char ltq_usable : 1 ;
};
struct ost_pool {
   __u32 *op_array ;
   unsigned int op_count ;
   unsigned int op_size ;
   struct rw_semaphore op_rw_sem ;
};
struct lov_tgt_desc {
   struct list_head ltd_kill ;
   struct obd_uuid ltd_uuid ;
   struct obd_device *ltd_obd ;
   struct obd_export *ltd_exp ;
   struct ltd_qos ltd_qos ;
   __u32 ltd_gen ;
   __u32 ltd_index ;
   unsigned char ltd_active : 1 ;
   unsigned char ltd_activate : 1 ;
   unsigned char ltd_reap : 1 ;
};
struct lov_obd {
   struct lov_desc desc ;
   struct lov_tgt_desc **lov_tgts ;
   struct ost_pool lov_packed ;
   struct mutex lov_lock ;
   struct obd_connect_data lov_ocd ;
   atomic_t lov_refcount ;
   __u32 lov_tgt_count ;
   __u32 lov_active_tgt_count ;
   __u32 lov_death_row ;
   __u32 lov_tgt_size ;
   int lov_connects ;
   int lov_pool_count ;
   struct cfs_hash *lov_pools_hash_body ;
   struct list_head lov_pool_list ;
   struct proc_dir_entry *lov_pool_proc_entry ;
   enum lustre_sec_part lov_sp_me ;
   void *lov_cache ;
   struct rw_semaphore lov_notify_lock ;
};
struct lmv_tgt_desc {
   struct obd_uuid ltd_uuid ;
   struct obd_export *ltd_exp ;
   int ltd_idx ;
   struct mutex ltd_fid_mutex ;
   unsigned char ltd_active : 1 ;
};
enum placement_policy {
    PLACEMENT_CHAR_POLICY = 0,
    PLACEMENT_NID_POLICY = 1,
    PLACEMENT_INVAL_POLICY = 2,
    PLACEMENT_MAX_POLICY = 3
} ;
typedef enum placement_policy placement_policy_t;
struct lmv_obd {
   int refcount ;
   struct lu_client_fld lmv_fld ;
   spinlock_t lmv_lock ;
   placement_policy_t lmv_placement ;
   struct lmv_desc desc ;
   struct obd_uuid cluuid ;
   struct obd_export *exp ;
   struct mutex init_mutex ;
   int connected ;
   int max_easize ;
   int max_def_easize ;
   int max_cookiesize ;
   int max_def_cookiesize ;
   int server_timeout ;
   int tgts_size ;
   struct lmv_tgt_desc **tgts ;
   struct obd_connect_data conn_data ;
};
struct niobuf_local {
   __u64 lnb_file_offset ;
   __u32 lnb_page_offset ;
   __u32 len ;
   __u32 flags ;
   struct page *page ;
   struct dentry *dentry ;
   int lnb_grant_used ;
   int rc ;
};
struct oti_req_ack_lock {
   struct lustre_handle lock ;
   __u32 mode ;
};
struct obd_trans_info {
   __u64 oti_transno ;
   __u64 oti_xid ;
   struct oti_req_ack_lock oti_ack_locks[4U] ;
   void *oti_handle ;
   struct llog_cookie oti_onecookie ;
   struct llog_cookie *oti_logcookies ;
   int oti_numcookies ;
   unsigned char oti_sync_write : 1 ;
   struct ptlrpc_thread *oti_thread ;
   __u32 oti_conn_cnt ;
   __u64 oti_pre_version ;
   char *oti_jobid ;
   struct obd_uuid *oti_ost_uuid ;
};
enum obd_notify_event {
    OBD_NOTIFY_CREATE = 0,
    OBD_NOTIFY_CONNECT = 1,
    OBD_NOTIFY_ACTIVE = 2,
    OBD_NOTIFY_INACTIVE = 3,
    OBD_NOTIFY_DISCON = 4,
    OBD_NOTIFY_OCD = 5,
    OBD_NOTIFY_SYNC_NONBLOCK = 6,
    OBD_NOTIFY_SYNC = 7,
    OBD_NOTIFY_CONFIG = 8,
    OBD_NOTIFY_DEACTIVATE = 9,
    OBD_NOTIFY_ACTIVATE = 10
} ;
struct obd_notify_upcall {
   int (*onu_upcall)(struct obd_device * , struct obd_device * , enum obd_notify_event ,
                     void * , void * ) ;
   void *onu_owner ;
};
struct target_recovery_data {
   int (*trd_recovery_handler)(struct ptlrpc_request * ) ;
   pid_t trd_processing_task ;
   struct completion trd_starting ;
   struct completion trd_finishing ;
};
struct llog_ctxt;
struct obd_llog_group {
   int olg_seq ;
   struct llog_ctxt *olg_ctxts[16U] ;
   wait_queue_head_t olg_waitq ;
   spinlock_t olg_lock ;
   struct mutex olg_cat_processing ;
};
struct fsfilt_operations;
union __anonunion_u_308 {
   struct client_obd cli ;
   struct echo_client_obd echo_client ;
   struct lov_obd lov ;
   struct lmv_obd lmv ;
};
struct obd_device {
   struct obd_type *obd_type ;
   __u32 obd_magic ;
   char obd_name[128U] ;
   struct obd_uuid obd_uuid ;
   struct lu_device *obd_lu_dev ;
   int obd_minor ;
   unsigned char obd_attached : 1 ;
   unsigned char obd_set_up : 1 ;
   unsigned char obd_recovering : 1 ;
   unsigned char obd_abort_recovery : 1 ;
   unsigned char obd_version_recov : 1 ;
   unsigned char obd_replayable : 1 ;
   unsigned char obd_no_transno : 1 ;
   unsigned char obd_no_recov : 1 ;
   unsigned char obd_stopping : 1 ;
   unsigned char obd_starting : 1 ;
   unsigned char obd_force : 1 ;
   unsigned char obd_fail : 1 ;
   unsigned char obd_async_recov : 1 ;
   unsigned char obd_no_conn : 1 ;
   unsigned char obd_inactive : 1 ;
   unsigned char obd_no_ir : 1 ;
   unsigned char obd_process_conf : 1 ;
   unsigned char obd_recovery_expired : 1 ;
   struct cfs_hash *obd_uuid_hash ;
   struct cfs_hash *obd_nid_hash ;
   struct cfs_hash *obd_nid_stats_hash ;
   struct list_head obd_nid_stats ;
   atomic_t obd_refcount ;
   wait_queue_head_t obd_refcount_waitq ;
   struct list_head obd_exports ;
   struct list_head obd_unlinked_exports ;
   struct list_head obd_delayed_exports ;
   int obd_num_exports ;
   spinlock_t obd_nid_lock ;
   struct ldlm_namespace *obd_namespace ;
   struct ptlrpc_client obd_ldlm_client ;
   spinlock_t obd_dev_lock ;
   struct mutex obd_dev_mutex ;
   __u64 obd_last_committed ;
   struct fsfilt_operations *obd_fsops ;
   spinlock_t obd_osfs_lock ;
   struct obd_statfs obd_osfs ;
   __u64 obd_osfs_age ;
   struct lvfs_run_ctxt obd_lvfs_ctxt ;
   struct obd_llog_group obd_olg ;
   struct obd_device *obd_observer ;
   struct rw_semaphore obd_observer_link_sem ;
   struct obd_notify_upcall obd_upcall ;
   struct obd_export *obd_self_export ;
   struct list_head obd_exports_timed ;
   time_t obd_eviction_timer ;
   int obd_max_recoverable_clients ;
   atomic_t obd_connected_clients ;
   int obd_stale_clients ;
   int obd_delayed_clients ;
   spinlock_t obd_recovery_task_lock ;
   __u64 obd_next_recovery_transno ;
   int obd_replayed_requests ;
   int obd_requests_queued_for_recovery ;
   wait_queue_head_t obd_next_transno_waitq ;
   struct timer_list obd_recovery_timer ;
   time_t obd_recovery_start ;
   time_t obd_recovery_end ;
   int obd_recovery_time_hard ;
   int obd_recovery_timeout ;
   int obd_recovery_ir_factor ;
   struct target_recovery_data obd_recovery_data ;
   int obd_replayed_locks ;
   atomic_t obd_req_replay_clients ;
   atomic_t obd_lock_replay_clients ;
   struct list_head obd_req_replay_queue ;
   struct list_head obd_lock_replay_queue ;
   struct list_head obd_final_req_queue ;
   int obd_recovery_stage ;
   union __anonunion_u_308 u ;
   unsigned int obd_cntr_base ;
   struct lprocfs_stats *obd_stats ;
   unsigned int md_cntr_base ;
   struct lprocfs_stats *md_stats ;
   struct proc_dir_entry *obd_proc_entry ;
   void *obd_proc_private ;
   struct proc_dir_entry *obd_proc_exports_entry ;
   struct proc_dir_entry *obd_svc_procroot ;
   struct lprocfs_stats *obd_svc_stats ;
   atomic_t obd_evict_inprogress ;
   wait_queue_head_t obd_evict_inprogress_waitq ;
   struct list_head obd_evict_list ;
   rwlock_t obd_pool_lock ;
   int obd_pool_limit ;
   __u64 obd_pool_slv ;
   struct lu_ref obd_reference ;
   int obd_conn_inprogress ;
};
enum obd_cleanup_stage {
    OBD_CLEANUP_EARLY = 0,
    OBD_CLEANUP_EXPORTS = 1
} ;
struct md_op_data {
   struct lu_fid op_fid1 ;
   struct lu_fid op_fid2 ;
   struct lu_fid op_fid3 ;
   struct lu_fid op_fid4 ;
   mdsno_t op_mds ;
   struct lustre_handle op_handle ;
   obd_time op_mod_time ;
   char const *op_name ;
   int op_namelen ;
   __u32 op_mode ;
   struct lmv_stripe_md *op_mea1 ;
   struct lmv_stripe_md *op_mea2 ;
   __u32 op_suppgids[2U] ;
   __u32 op_fsuid ;
   __u32 op_fsgid ;
   cfs_cap_t op_cap ;
   void *op_data ;
   struct iattr op_attr ;
   unsigned int op_attr_flags ;
   __u64 op_valid ;
   loff_t op_attr_blocks ;
   __u64 op_ioepoch ;
   __u32 op_flags ;
   struct obd_capa *op_capa1 ;
   struct obd_capa *op_capa2 ;
   enum mds_op_bias op_bias ;
   __u32 op_opc ;
   __u64 op_offset ;
   __u32 op_npages ;
   __u32 op_cli_flags ;
   __u64 op_data_version ;
   struct lustre_handle op_lease_handle ;
};
struct md_enqueue_info;
struct md_enqueue_info {
   struct md_op_data mi_data ;
   struct lookup_intent mi_it ;
   struct lustre_handle mi_lockh ;
   struct inode *mi_dir ;
   int (*mi_cb)(struct ptlrpc_request * , struct md_enqueue_info * , int ) ;
   __u64 mi_cbdata ;
   unsigned int mi_generation ;
};
struct obd_ops {
   struct module *o_owner ;
   int (*o_iocontrol)(unsigned int , struct obd_export * , int , void * , void * ) ;
   int (*o_get_info)(struct lu_env const * , struct obd_export * , __u32 , void * ,
                     __u32 * , void * , struct lov_stripe_md * ) ;
   int (*o_set_info_async)(struct lu_env const * , struct obd_export * , __u32 ,
                           void * , __u32 , void * , struct ptlrpc_request_set * ) ;
   int (*o_attach)(struct obd_device * , obd_count , void * ) ;
   int (*o_detach)(struct obd_device * ) ;
   int (*o_setup)(struct obd_device * , struct lustre_cfg * ) ;
   int (*o_precleanup)(struct obd_device * , enum obd_cleanup_stage ) ;
   int (*o_cleanup)(struct obd_device * ) ;
   int (*o_process_config)(struct obd_device * , obd_count , void * ) ;
   int (*o_postrecov)(struct obd_device * ) ;
   int (*o_add_conn)(struct obd_import * , struct obd_uuid * , int ) ;
   int (*o_del_conn)(struct obd_import * , struct obd_uuid * ) ;
   int (*o_connect)(struct lu_env const * , struct obd_export ** , struct obd_device * ,
                    struct obd_uuid * , struct obd_connect_data * , void * ) ;
   int (*o_reconnect)(struct lu_env const * , struct obd_export * , struct obd_device * ,
                      struct obd_uuid * , struct obd_connect_data * , void * ) ;
   int (*o_disconnect)(struct obd_export * ) ;
   int (*o_fid_init)(struct obd_device * , struct obd_export * , enum lu_cli_type ) ;
   int (*o_fid_fini)(struct obd_device * ) ;
   int (*o_fid_alloc)(struct obd_export * , struct lu_fid * , struct md_op_data * ) ;
   int (*o_statfs)(struct lu_env const * , struct obd_export * , struct obd_statfs * ,
                   __u64 , __u32 ) ;
   int (*o_statfs_async)(struct obd_export * , struct obd_info * , __u64 , struct ptlrpc_request_set * ) ;
   int (*o_packmd)(struct obd_export * , struct lov_mds_md_v1 ** , struct lov_stripe_md * ) ;
   int (*o_unpackmd)(struct obd_export * , struct lov_stripe_md ** , struct lov_mds_md_v1 * ,
                     int ) ;
   int (*o_preallocate)(struct lustre_handle * , obd_count * , obd_id * ) ;
   int (*o_precreate)(struct obd_export * ) ;
   int (*o_create)(struct lu_env const * , struct obd_export * , struct obdo * ,
                   struct lov_stripe_md ** , struct obd_trans_info * ) ;
   int (*o_create_async)(struct obd_export * , struct obd_info * , struct lov_stripe_md ** ,
                         struct obd_trans_info * ) ;
   int (*o_destroy)(struct lu_env const * , struct obd_export * , struct obdo * ,
                    struct lov_stripe_md * , struct obd_trans_info * , struct obd_export * ,
                    void * ) ;
   int (*o_setattr)(struct lu_env const * , struct obd_export * , struct obd_info * ,
                    struct obd_trans_info * ) ;
   int (*o_setattr_async)(struct obd_export * , struct obd_info * , struct obd_trans_info * ,
                          struct ptlrpc_request_set * ) ;
   int (*o_getattr)(struct lu_env const * , struct obd_export * , struct obd_info * ) ;
   int (*o_getattr_async)(struct obd_export * , struct obd_info * , struct ptlrpc_request_set * ) ;
   int (*o_brw)(int , struct obd_export * , struct obd_info * , obd_count , struct brw_page * ,
                struct obd_trans_info * ) ;
   int (*o_merge_lvb)(struct obd_export * , struct lov_stripe_md * , struct ost_lvb * ,
                      int ) ;
   int (*o_adjust_kms)(struct obd_export * , struct lov_stripe_md * , obd_off , int ) ;
   int (*o_punch)(struct lu_env const * , struct obd_export * , struct obd_info * ,
                  struct obd_trans_info * , struct ptlrpc_request_set * ) ;
   int (*o_sync)(struct lu_env const * , struct obd_export * , struct obd_info * ,
                 obd_size , obd_size , struct ptlrpc_request_set * ) ;
   int (*o_migrate)(struct lustre_handle * , struct lov_stripe_md * , struct lov_stripe_md * ,
                    obd_size , obd_size , struct obd_trans_info * ) ;
   int (*o_copy)(struct lustre_handle * , struct lov_stripe_md * , struct lustre_handle * ,
                 struct lov_stripe_md * , obd_size , obd_size , struct obd_trans_info * ) ;
   int (*o_iterate)(struct lustre_handle * , int (*)(obd_id , obd_seq , void * ) ,
                    obd_id * , obd_seq , void * ) ;
   int (*o_preprw)(struct lu_env const * , int , struct obd_export * , struct obdo * ,
                   int , struct obd_ioobj * , struct niobuf_remote * , int * , struct niobuf_local * ,
                   struct obd_trans_info * , struct lustre_capa * ) ;
   int (*o_commitrw)(struct lu_env const * , int , struct obd_export * , struct obdo * ,
                     int , struct obd_ioobj * , struct niobuf_remote * , int , struct niobuf_local * ,
                     struct obd_trans_info * , int ) ;
   int (*o_enqueue)(struct obd_export * , struct obd_info * , struct ldlm_enqueue_info * ,
                    struct ptlrpc_request_set * ) ;
   int (*o_change_cbdata)(struct obd_export * , struct lov_stripe_md * , int (*)(struct ldlm_lock * ,
                                                                                 void * ) ,
                          void * ) ;
   int (*o_find_cbdata)(struct obd_export * , struct lov_stripe_md * , int (*)(struct ldlm_lock * ,
                                                                               void * ) ,
                        void * ) ;
   int (*o_cancel)(struct obd_export * , struct lov_stripe_md * , __u32 , struct lustre_handle * ) ;
   int (*o_cancel_unused)(struct obd_export * , struct lov_stripe_md * , ldlm_cancel_flags_t ,
                          void * ) ;
   int (*o_init_export)(struct obd_export * ) ;
   int (*o_destroy_export)(struct obd_export * ) ;
   int (*o_extent_calc)(struct obd_export * , struct lov_stripe_md * , int , obd_off * ) ;
   int (*o_llog_init)(struct obd_device * , struct obd_llog_group * , struct obd_device * ,
                      int * ) ;
   int (*o_llog_finish)(struct obd_device * , int ) ;
   int (*o_llog_connect)(struct obd_export * , struct llogd_conn_body * ) ;
   int (*o_pin)(struct obd_export * , struct lu_fid const * , struct obd_capa * ,
                struct obd_client_handle * , int ) ;
   int (*o_unpin)(struct obd_export * , struct obd_client_handle * , int ) ;
   int (*o_import_event)(struct obd_device * , struct obd_import * , enum obd_import_event ) ;
   int (*o_notify)(struct obd_device * , struct obd_device * , enum obd_notify_event ,
                   void * ) ;
   int (*o_health_check)(struct lu_env const * , struct obd_device * ) ;
   struct obd_uuid *(*o_get_uuid)(struct obd_export * ) ;
   int (*o_quotacheck)(struct obd_device * , struct obd_export * , struct obd_quotactl * ) ;
   int (*o_quotactl)(struct obd_device * , struct obd_export * , struct obd_quotactl * ) ;
   int (*o_ping)(struct lu_env const * , struct obd_export * ) ;
   int (*o_pool_new)(struct obd_device * , char * ) ;
   int (*o_pool_del)(struct obd_device * , char * ) ;
   int (*o_pool_add)(struct obd_device * , char * , char * ) ;
   int (*o_pool_rem)(struct obd_device * , char * , char * ) ;
   void (*o_getref)(struct obd_device * ) ;
   void (*o_putref)(struct obd_device * ) ;
};
struct lustre_md {
   struct mdt_body *body ;
   struct lov_stripe_md *lsm ;
   struct lmv_stripe_md *mea ;
   struct posix_acl *posix_acl ;
   struct mdt_remote_perm *remote_perm ;
   struct obd_capa *mds_capa ;
   struct obd_capa *oss_capa ;
};
struct md_open_data {
   struct obd_client_handle *mod_och ;
   struct ptlrpc_request *mod_open_req ;
   struct ptlrpc_request *mod_close_req ;
   atomic_t mod_refcount ;
   bool mod_is_create ;
};
struct md_ops {
   int (*m_getstatus)(struct obd_export * , struct lu_fid * , struct obd_capa ** ) ;
   int (*m_null_inode)(struct obd_export * , struct lu_fid const * ) ;
   int (*m_find_cbdata)(struct obd_export * , struct lu_fid const * , int (*)(struct ldlm_lock * ,
                                                                                void * ) ,
                        void * ) ;
   int (*m_close)(struct obd_export * , struct md_op_data * , struct md_open_data * ,
                  struct ptlrpc_request ** ) ;
   int (*m_create)(struct obd_export * , struct md_op_data * , void const * , int ,
                   int , __u32 , __u32 , cfs_cap_t , __u64 , struct ptlrpc_request ** ) ;
   int (*m_done_writing)(struct obd_export * , struct md_op_data * , struct md_open_data * ) ;
   int (*m_enqueue)(struct obd_export * , struct ldlm_enqueue_info * , struct lookup_intent * ,
                    struct md_op_data * , struct lustre_handle * , void * , int ,
                    struct ptlrpc_request ** , __u64 ) ;
   int (*m_getattr)(struct obd_export * , struct md_op_data * , struct ptlrpc_request ** ) ;
   int (*m_getattr_name)(struct obd_export * , struct md_op_data * , struct ptlrpc_request ** ) ;
   int (*m_intent_lock)(struct obd_export * , struct md_op_data * , void * , int ,
                        struct lookup_intent * , int , struct ptlrpc_request ** ,
                        int (*)(struct ldlm_lock * , struct ldlm_lock_desc * , void * ,
                                int ) , __u64 ) ;
   int (*m_link)(struct obd_export * , struct md_op_data * , struct ptlrpc_request ** ) ;
   int (*m_rename)(struct obd_export * , struct md_op_data * , char const * , int ,
                   char const * , int , struct ptlrpc_request ** ) ;
   int (*m_is_subdir)(struct obd_export * , struct lu_fid const * , struct lu_fid const * ,
                      struct ptlrpc_request ** ) ;
   int (*m_setattr)(struct obd_export * , struct md_op_data * , void * , int , void * ,
                    int , struct ptlrpc_request ** , struct md_open_data ** ) ;
   int (*m_sync)(struct obd_export * , struct lu_fid const * , struct obd_capa * ,
                 struct ptlrpc_request ** ) ;
   int (*m_readpage)(struct obd_export * , struct md_op_data * , struct page ** ,
                     struct ptlrpc_request ** ) ;
   int (*m_unlink)(struct obd_export * , struct md_op_data * , struct ptlrpc_request ** ) ;
   int (*m_setxattr)(struct obd_export * , struct lu_fid const * , struct obd_capa * ,
                     obd_valid , char const * , char const * , int , int ,
                     int , __u32 , struct ptlrpc_request ** ) ;
   int (*m_getxattr)(struct obd_export * , struct lu_fid const * , struct obd_capa * ,
                     obd_valid , char const * , char const * , int , int ,
                     int , struct ptlrpc_request ** ) ;
   int (*m_init_ea_size)(struct obd_export * , int , int , int , int ) ;
   int (*m_get_lustre_md)(struct obd_export * , struct ptlrpc_request * , struct obd_export * ,
                          struct obd_export * , struct lustre_md * ) ;
   int (*m_free_lustre_md)(struct obd_export * , struct lustre_md * ) ;
   int (*m_set_open_replay_data)(struct obd_export * , struct obd_client_handle * ,
                                 struct lookup_intent * ) ;
   int (*m_clear_open_replay_data)(struct obd_export * , struct obd_client_handle * ) ;
   int (*m_set_lock_data)(struct obd_export * , __u64 * , void * , __u64 * ) ;
   ldlm_mode_t (*m_lock_match)(struct obd_export * , __u64 , struct lu_fid const * ,
                               ldlm_type_t , ldlm_policy_data_t * , ldlm_mode_t ,
                               struct lustre_handle * ) ;
   int (*m_cancel_unused)(struct obd_export * , struct lu_fid const * , ldlm_policy_data_t * ,
                          ldlm_mode_t , ldlm_cancel_flags_t , void * ) ;
   int (*m_renew_capa)(struct obd_export * , struct obd_capa * , int (*)(struct obd_capa * ,
                                                                         struct lustre_capa * ) ) ;
   int (*m_unpack_capa)(struct obd_export * , struct ptlrpc_request * , struct req_msg_field const * ,
                        struct obd_capa ** ) ;
   int (*m_get_remote_perm)(struct obd_export * , struct lu_fid const * , struct obd_capa * ,
                            __u32 , struct ptlrpc_request ** ) ;
   int (*m_intent_getattr_async)(struct obd_export * , struct md_enqueue_info * ,
                                 struct ldlm_enqueue_info * ) ;
   int (*m_revalidate_lock)(struct obd_export * , struct lookup_intent * , struct lu_fid * ,
                            __u64 * ) ;
};
struct llog_handle;
struct thandle;
enum ldv_42081 {
    MNTOPT_USERXATTR = 1,
    MNTOPT_ACL = 2
} ;
typedef enum ldv_42081 mntopt_t;
struct dt_device_param {
   unsigned int ddp_max_name_len ;
   unsigned int ddp_max_nlink ;
   unsigned int ddp_block_shift ;
   mntopt_t ddp_mntopts ;
   unsigned int ddp_max_ea_size ;
   void *ddp_mnt ;
   int ddp_mount_type ;
   unsigned long long ddp_maxbytes ;
   int ddp_grant_reserved ;
   short ddp_inodespace ;
   int ddp_grant_frag ;
};
struct dt_txn_commit_cb;
struct dt_txn_commit_cb {
   struct list_head dcb_linkage ;
   void (*dcb_func)(struct lu_env * , struct thandle * , struct dt_txn_commit_cb * ,
                    int ) ;
   __u32 dcb_magic ;
   char dcb_name[32U] ;
};
struct dt_device_operations {
   int (*dt_statfs)(struct lu_env const * , struct dt_device * , struct obd_statfs * ) ;
   struct thandle *(*dt_trans_create)(struct lu_env const * , struct dt_device * ) ;
   int (*dt_trans_start)(struct lu_env const * , struct dt_device * , struct thandle * ) ;
   int (*dt_trans_stop)(struct lu_env const * , struct thandle * ) ;
   int (*dt_trans_cb_add)(struct thandle * , struct dt_txn_commit_cb * ) ;
   int (*dt_root_get)(struct lu_env const * , struct dt_device * , struct lu_fid * ) ;
   void (*dt_conf_get)(struct lu_env const * , struct dt_device const * , struct dt_device_param * ) ;
   int (*dt_sync)(struct lu_env const * , struct dt_device * ) ;
   int (*dt_ro)(struct lu_env const * , struct dt_device * ) ;
   int (*dt_commit_async)(struct lu_env const * , struct dt_device * ) ;
   int (*dt_init_capa_ctxt)(struct lu_env const * , struct dt_device * , int ,
                            unsigned long , __u32 , struct lustre_capa_key * ) ;
};
struct dt_index_features {
   __u32 dif_flags ;
   size_t dif_keysize_min ;
   size_t dif_keysize_max ;
   size_t dif_recsize_min ;
   size_t dif_recsize_max ;
   size_t dif_ptrsize ;
};
struct dt_allocation_hint {
   struct dt_object *dah_parent ;
   __u32 dah_mode ;
};
enum dt_format_type {
    DFT_REGULAR = 0,
    DFT_DIR = 1,
    DFT_NODE = 2,
    DFT_INDEX = 3,
    DFT_SYM = 4
} ;
struct dof_regular {
   int striped ;
};
struct dof_dir {
};
struct dof_node {
};
struct dof_index {
   struct dt_index_features const *di_feat ;
};
union __anonunion_u_309 {
   struct dof_regular dof_reg ;
   struct dof_dir dof_dir ;
   struct dof_node dof_node ;
   struct dof_index dof_idx ;
};
struct dt_object_format {
   enum dt_format_type dof_type ;
   union __anonunion_u_309 u ;
};
struct dt_object_operations {
   void (*do_read_lock)(struct lu_env const * , struct dt_object * , unsigned int ) ;
   void (*do_write_lock)(struct lu_env const * , struct dt_object * , unsigned int ) ;
   void (*do_read_unlock)(struct lu_env const * , struct dt_object * ) ;
   void (*do_write_unlock)(struct lu_env const * , struct dt_object * ) ;
   int (*do_write_locked)(struct lu_env const * , struct dt_object * ) ;
   int (*do_attr_get)(struct lu_env const * , struct dt_object * , struct lu_attr * ,
                      struct lustre_capa * ) ;
   int (*do_declare_attr_set)(struct lu_env const * , struct dt_object * , struct lu_attr const * ,
                              struct thandle * ) ;
   int (*do_attr_set)(struct lu_env const * , struct dt_object * , struct lu_attr const * ,
                      struct thandle * , struct lustre_capa * ) ;
   int (*do_xattr_get)(struct lu_env const * , struct dt_object * , struct lu_buf * ,
                       char const * , struct lustre_capa * ) ;
   int (*do_declare_xattr_set)(struct lu_env const * , struct dt_object * , struct lu_buf const * ,
                               char const * , int , struct thandle * ) ;
   int (*do_xattr_set)(struct lu_env const * , struct dt_object * , struct lu_buf const * ,
                       char const * , int , struct thandle * , struct lustre_capa * ) ;
   int (*do_declare_xattr_del)(struct lu_env const * , struct dt_object * , char const * ,
                               struct thandle * ) ;
   int (*do_xattr_del)(struct lu_env const * , struct dt_object * , char const * ,
                       struct thandle * , struct lustre_capa * ) ;
   int (*do_xattr_list)(struct lu_env const * , struct dt_object * , struct lu_buf * ,
                        struct lustre_capa * ) ;
   void (*do_ah_init)(struct lu_env const * , struct dt_allocation_hint * , struct dt_object * ,
                      struct dt_object * , umode_t ) ;
   int (*do_declare_create)(struct lu_env const * , struct dt_object * , struct lu_attr * ,
                            struct dt_allocation_hint * , struct dt_object_format * ,
                            struct thandle * ) ;
   int (*do_create)(struct lu_env const * , struct dt_object * , struct lu_attr * ,
                    struct dt_allocation_hint * , struct dt_object_format * , struct thandle * ) ;
   int (*do_declare_destroy)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   int (*do_destroy)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   int (*do_index_try)(struct lu_env const * , struct dt_object * , struct dt_index_features const * ) ;
   int (*do_declare_ref_add)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   int (*do_ref_add)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   int (*do_declare_ref_del)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   int (*do_ref_del)(struct lu_env const * , struct dt_object * , struct thandle * ) ;
   struct obd_capa *(*do_capa_get)(struct lu_env const * , struct dt_object * ,
                                   struct lustre_capa * , __u64 ) ;
   int (*do_object_sync)(struct lu_env const * , struct dt_object * , __u64 , __u64 ) ;
   int (*do_data_get)(struct lu_env const * , struct dt_object * , void ** ) ;
   int (*do_object_lock)(struct lu_env const * , struct dt_object * , struct lustre_handle * ,
                         struct ldlm_enqueue_info * , void * ) ;
};
struct dt_body_operations {
   ssize_t (*dbo_read)(struct lu_env const * , struct dt_object * , struct lu_buf * ,
                       loff_t * , struct lustre_capa * ) ;
   ssize_t (*dbo_declare_write)(struct lu_env const * , struct dt_object * , loff_t const ,
                                loff_t , struct thandle * ) ;
   ssize_t (*dbo_write)(struct lu_env const * , struct dt_object * , struct lu_buf const * ,
                        loff_t * , struct thandle * , struct lustre_capa * , int ) ;
   int (*dbo_bufs_get)(struct lu_env const * , struct dt_object * , loff_t , ssize_t ,
                       struct niobuf_local * , int , struct lustre_capa * ) ;
   int (*dbo_bufs_put)(struct lu_env const * , struct dt_object * , struct niobuf_local * ,
                       int ) ;
   int (*dbo_write_prep)(struct lu_env const * , struct dt_object * , struct niobuf_local * ,
                         int ) ;
   int (*dbo_declare_write_commit)(struct lu_env const * , struct dt_object * ,
                                   struct niobuf_local * , int , struct thandle * ) ;
   int (*dbo_write_commit)(struct lu_env const * , struct dt_object * , struct niobuf_local * ,
                           int , struct thandle * ) ;
   int (*dbo_read_prep)(struct lu_env const * , struct dt_object * , struct niobuf_local * ,
                        int ) ;
   int (*dbo_fiemap_get)(struct lu_env const * , struct dt_object * , struct ll_user_fiemap * ) ;
   int (*dbo_declare_punch)(struct lu_env const * , struct dt_object * , __u64 ,
                            __u64 , struct thandle * ) ;
   int (*dbo_punch)(struct lu_env const * , struct dt_object * , __u64 , __u64 ,
                    struct thandle * , struct lustre_capa * ) ;
};
struct dt_rec;
struct dt_key;
struct dt_it;
struct dt_it_ops {
   struct dt_it *(*init)(struct lu_env const * , struct dt_object * , __u32 , struct lustre_capa * ) ;
   void (*fini)(struct lu_env const * , struct dt_it * ) ;
   int (*get)(struct lu_env const * , struct dt_it * , struct dt_key const * ) ;
   void (*put)(struct lu_env const * , struct dt_it * ) ;
   int (*next)(struct lu_env const * , struct dt_it * ) ;
   struct dt_key *(*key)(struct lu_env const * , struct dt_it const * ) ;
   int (*key_size)(struct lu_env const * , struct dt_it const * ) ;
   int (*rec)(struct lu_env const * , struct dt_it const * , struct dt_rec * ,
              __u32 ) ;
   __u64 (*store)(struct lu_env const * , struct dt_it const * ) ;
   int (*load)(struct lu_env const * , struct dt_it const * , __u64 ) ;
   int (*key_rec)(struct lu_env const * , struct dt_it const * , void * ) ;
};
struct dt_index_operations {
   int (*dio_lookup)(struct lu_env const * , struct dt_object * , struct dt_rec * ,
                     struct dt_key const * , struct lustre_capa * ) ;
   int (*dio_declare_insert)(struct lu_env const * , struct dt_object * , struct dt_rec const * ,
                             struct dt_key const * , struct thandle * ) ;
   int (*dio_insert)(struct lu_env const * , struct dt_object * , struct dt_rec const * ,
                     struct dt_key const * , struct thandle * , struct lustre_capa * ,
                     int ) ;
   int (*dio_declare_delete)(struct lu_env const * , struct dt_object * , struct dt_key const * ,
                             struct thandle * ) ;
   int (*dio_delete)(struct lu_env const * , struct dt_object * , struct dt_key const * ,
                     struct thandle * , struct lustre_capa * ) ;
   struct dt_it_ops dio_it ;
};
struct dt_device {
   struct lu_device dd_lu_dev ;
   struct dt_device_operations const *dd_ops ;
   struct list_head dd_txn_callbacks ;
};
struct dt_object {
   struct lu_object do_lu ;
   struct dt_object_operations const *do_ops ;
   struct dt_body_operations const *do_body_ops ;
   struct dt_index_operations const *do_index_ops ;
};
struct local_oid_storage {
   struct list_head los_list ;
   atomic_t los_refcount ;
   struct dt_device *los_dev ;
   struct dt_object *los_obj ;
   struct mutex los_id_lock ;
   __u64 los_seq ;
   __u32 los_last_oid ;
};
struct update_request;
struct thandle {
   struct dt_device *th_dev ;
   struct lu_context th_ctx ;
   __u32 th_tags ;
   __s32 th_result ;
   unsigned char th_sync : 1 ;
   unsigned char th_local : 1 ;
   struct list_head th_remote_update_list ;
   struct update_request *th_current_request ;
};
enum llog_open_param {
    LLOG_OPEN_EXISTS = 0,
    LLOG_OPEN_NEW = 1
} ;
struct plain_handle_data {
   struct list_head phd_entry ;
   struct llog_handle *phd_cat_handle ;
   struct llog_cookie phd_cookie ;
};
struct cat_handle_data {
   struct list_head chd_head ;
   struct llog_handle *chd_current_log ;
   struct llog_handle *chd_next_log ;
};
struct llog_operations {
   int (*lop_destroy)(struct lu_env const * , struct llog_handle * ) ;
   int (*lop_next_block)(struct lu_env const * , struct llog_handle * , int * ,
                         int , __u64 * , void * , int ) ;
   int (*lop_prev_block)(struct lu_env const * , struct llog_handle * , int , void * ,
                         int ) ;
   int (*lop_read_header)(struct lu_env const * , struct llog_handle * ) ;
   int (*lop_setup)(struct lu_env const * , struct obd_device * , struct obd_llog_group * ,
                    int , struct obd_device * ) ;
   int (*lop_sync)(struct llog_ctxt * , struct obd_export * , int ) ;
   int (*lop_cleanup)(struct lu_env const * , struct llog_ctxt * ) ;
   int (*lop_cancel)(struct lu_env const * , struct llog_ctxt * , struct llog_cookie * ,
                     int ) ;
   int (*lop_connect)(struct llog_ctxt * , struct llog_logid * , struct llog_gen * ,
                      struct obd_uuid * ) ;
   int (*lop_open)(struct lu_env const * , struct llog_handle * , struct llog_logid * ,
                   char * , enum llog_open_param ) ;
   int (*lop_exist)(struct llog_handle * ) ;
   int (*lop_close)(struct lu_env const * , struct llog_handle * ) ;
   int (*lop_declare_create)(struct lu_env const * , struct llog_handle * , struct thandle * ) ;
   int (*lop_create)(struct lu_env const * , struct llog_handle * , struct thandle * ) ;
   int (*lop_declare_write_rec)(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                                int , struct thandle * ) ;
   int (*lop_write_rec)(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                        struct llog_cookie * , int , void * , int , struct thandle * ) ;
   int (*lop_declare_add)(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                          struct thandle * ) ;
   int (*lop_add)(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                  struct llog_cookie * , void * , struct thandle * ) ;
};
union __anonunion_u_310 {
   struct plain_handle_data phd ;
   struct cat_handle_data chd ;
};
struct llog_handle {
   struct rw_semaphore lgh_lock ;
   spinlock_t lgh_hdr_lock ;
   struct llog_logid lgh_id ;
   struct llog_log_hdr *lgh_hdr ;
   struct file *lgh_file ;
   struct dt_object *lgh_obj ;
   int lgh_last_idx ;
   int lgh_cur_idx ;
   __u64 lgh_cur_offset ;
   struct llog_ctxt *lgh_ctxt ;
   union __anonunion_u_310 u ;
   char *lgh_name ;
   void *private_data ;
   struct llog_operations *lgh_logops ;
   atomic_t lgh_refcount ;
};
struct llog_ctxt {
   int loc_idx ;
   struct obd_device *loc_obd ;
   struct obd_llog_group *loc_olg ;
   struct obd_export *loc_exp ;
   struct obd_import *loc_imp ;
   struct llog_operations *loc_logops ;
   struct llog_handle *loc_handle ;
   struct mutex loc_mutex ;
   atomic_t loc_refcount ;
   long loc_flags ;
   struct dt_object *loc_dir ;
};
struct llog_mini_rec {
   struct llog_rec_hdr lmr_hdr ;
   struct llog_rec_tail lmr_tail ;
};
union __anonunion_llog_records_311 {
   struct llog_rec_hdr lrh ;
   struct llog_logid_rec llr ;
   struct llog_unlink64_rec lur ;
   struct llog_setattr64_rec lsr64 ;
   struct llog_size_change_rec lscr ;
   struct llog_changelog_rec lcr ;
   struct llog_changelog_user_rec lcur ;
   struct llog_gen_rec lgr ;
};
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14130_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14124_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static int test_bit_le(int nr , void const *addr )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )nr, (unsigned long const volatile *)addr);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void *vzalloc(unsigned long ) ;
void *ldv_vzalloc_34(unsigned long ldv_func_arg1 ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_33(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int ldv_state_variable_1 ;
int LDV_IN_INTERRUPT = 1;
struct obd_device *llog_obd_ops_group0 ;
int ref_cnt ;
int ldv_state_variable_0 ;
void ldv_initialize_obd_ops_1(void) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
extern unsigned int cfs_rand(void) ;
extern unsigned int libcfs_subsystem_debug ;
extern unsigned int libcfs_debug ;
__inline static int cfs_cdebug_show(unsigned int mask , unsigned int subsystem )
{
  {
  return ((mask & 33948672U) != 0U || ((libcfs_debug & mask) != 0U && (libcfs_subsystem_debug & subsystem) != 0U));
}
}
extern void libcfs_log_goto(struct libcfs_debug_msg_data * , char const * , long_ptr_t ) ;
extern int libcfs_debug_msg(struct libcfs_debug_msg_data * , char const * , ...) ;
extern void lbug_with_loc(struct libcfs_debug_msg_data * ) ;
__inline static int cfs_size_round(int val )
{
  {
  return ((val + 7) & -8);
}
}
extern unsigned long cfs_fail_loc ;
extern int __cfs_fail_check_set(__u32 , __u32 , int ) ;
__inline static int cfs_fail_check_set(__u32 id , __u32 value , int set , int quiet )
{
  int ret ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  ret = 0;
  tmp___1 = ldv__builtin_expect(cfs_fail_loc != 0UL, 0L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect((((unsigned long )id ^ cfs_fail_loc) & 65535UL) == 0UL,
                               0L);
    if (tmp___2 != 0L) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  if (tmp___3 != 0) {
    ret = __cfs_fail_check_set(id, value, set);
    tmp___4 = ldv__builtin_expect(ret != 0, 0L);
    if (tmp___4 != 0L) {
      if (quiet != 0) {
        tmp = cfs_cdebug_show(64U, 32U);
        if (tmp != 0) {
          msgdata.msg_subsys = 32;
          msgdata.msg_file = "drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h";
          msgdata.msg_fn = "cfs_fail_check_set";
          msgdata.msg_line = 86;
          msgdata.msg_cdls = (struct cfs_debug_limit_state *)0;
          msgdata.msg_mask = 64;
          libcfs_debug_msg(& msgdata, "*** cfs_fail_loc=%x, val=%u***\n", id, value);
        } else {
        }
      } else {
        tmp___0 = cfs_cdebug_show(33554432U, 32U);
        if (tmp___0 != 0) {
          msgdata___0.msg_subsys = 32;
          msgdata___0.msg_file = "drivers/staging/lustre/include/linux/libcfs/libcfs_fail.h";
          msgdata___0.msg_fn = "cfs_fail_check_set";
          msgdata___0.msg_line = 89;
          msgdata___0.msg_cdls = & cdls;
          msgdata___0.msg_mask = 33554432;
          libcfs_debug_msg(& msgdata___0, "*** cfs_fail_loc=%x, val=%u***\n", id,
                           value);
        } else {
        }
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
__inline static void *__container_of(void *ptr , unsigned long shift )
{
  bool tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = IS_ERR((void const *)ptr);
  tmp___0 = ldv__builtin_expect((long )tmp, 0L);
  if (tmp___0 != 0L) {
    return (ptr);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )ptr == (unsigned long )((void *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (ptr);
    } else {
      return (ptr + - shift);
    }
  }
}
}
__inline static void lu_igif_build(struct lu_fid *fid , __u32 ino , __u32 gen )
{
  {
  fid->f_seq = (__u64 )ino;
  fid->f_oid = gen;
  fid->f_ver = 0U;
  return;
}
}
extern void lprocfs_counter_add(struct lprocfs_stats * , int , long ) ;
extern void lprocfs_counter_sub(struct lprocfs_stats * , int , long ) ;
extern struct lprocfs_stats *obd_memory ;
extern unsigned int obd_alloc_fail_rate ;
extern int obd_alloc_fail(void const * , char const * , char const * , size_t ,
                          char const * , int ) ;
__inline static struct lu_fid const *lu_object_fid(struct lu_object const *o )
{
  {
  return ((struct lu_fid const *)(& (o->lo_header)->loh_fid));
}
}
extern int lu_context_init(struct lu_context * , __u32 ) ;
extern void lu_context_fini(struct lu_context * ) ;
extern void lu_context_enter(struct lu_context * ) ;
extern void lu_context_exit(struct lu_context * ) ;
extern int lu_env_init(struct lu_env * , __u32 ) ;
extern void lu_env_fini(struct lu_env * ) ;
__inline static void *lustre_cfg_buf(struct lustre_cfg *lcfg , int index )
{
  int i ;
  int offset ;
  int bufcount ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp ;
  struct libcfs_debug_msg_data __msg_data___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect((unsigned long )lcfg == (unsigned long )((struct lustre_cfg *)0),
                         0L);
  if (tmp != 0L) {
    __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_cfg.h";
    __msg_data.msg_fn = "lustre_cfg_buf";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 160;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"lcfg != ((void *)0)");
    lbug_with_loc(& __msg_data);
  } else {
  }
  tmp___0 = ldv__builtin_expect(index < 0, 0L);
  if (tmp___0 != 0L) {
    __msg_data___0.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_cfg.h";
    __msg_data___0.msg_fn = "lustre_cfg_buf";
    __msg_data___0.msg_subsys = 32;
    __msg_data___0.msg_line = 161;
    __msg_data___0.msg_mask = 0;
    __msg_data___0.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data___0.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data___0, "ASSERTION( %s ) failed: \n", (char *)"index >= 0");
    lbug_with_loc(& __msg_data___0);
  } else {
  }
  bufcount = (int )lcfg->lcfg_bufcount;
  if (index >= bufcount) {
    return ((void *)0);
  } else {
  }
  offset = cfs_size_round((int )((unsigned int )((unsigned long )lcfg->lcfg_bufcount + 8UL) * 4U));
  i = 0;
  goto ldv_57022;
  ldv_57021:
  tmp___1 = cfs_size_round((int )lcfg->lcfg_buflens[i]);
  offset = tmp___1 + offset;
  i = i + 1;
  ldv_57022: ;
  if (i < index) {
    goto ldv_57021;
  } else {
  }
  return ((void *)lcfg + (unsigned long )offset);
}
}
__inline static char *lustre_cfg_string(struct lustre_cfg *lcfg , int index )
{
  char *s ;
  void *tmp ;
  int last ;
  int _min1 ;
  int _min2 ;
  int tmp___0 ;
  char lost ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___1 ;
  {
  if (lcfg->lcfg_buflens[index] == 0U) {
    return ((char *)0);
  } else {
  }
  tmp = lustre_cfg_buf(lcfg, index);
  s = (char *)tmp;
  if ((unsigned long )s == (unsigned long )((char *)0)) {
    return ((char *)0);
  } else {
  }
  if ((int )((signed char )*(s + (unsigned long )(lcfg->lcfg_buflens[index] - 1U))) != 0) {
    _min1 = (int )lcfg->lcfg_buflens[index];
    tmp___0 = cfs_size_round((int )lcfg->lcfg_buflens[index]);
    _min2 = tmp___0 + -1;
    last = _min1 < _min2 ? _min1 : _min2;
    lost = *(s + (unsigned long )last);
    *(s + (unsigned long )last) = 0;
    if ((int )((signed char )lost) != 0) {
      tmp___1 = cfs_cdebug_show(1024U, 32U);
      if (tmp___1 != 0) {
        msgdata.msg_subsys = 32;
        msgdata.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_cfg.h";
        msgdata.msg_fn = "lustre_cfg_string";
        msgdata.msg_line = 206;
        msgdata.msg_cdls = & cdls;
        msgdata.msg_mask = 1024;
        libcfs_debug_msg(& msgdata, "Truncated buf %d to \'%s\' (lost \'%c\'...)\n",
                         index, s, (int )lost);
      } else {
      }
    } else {
    }
  } else {
  }
  return (s);
}
}
extern int class_register_type(struct obd_ops * , struct md_ops * , struct lprocfs_vars * ,
                               char const * , struct lu_device_type * ) ;
extern int class_unregister_type(char const * ) ;
extern struct obd_device *class_name2obd(char const * ) ;
extern struct obd_device *class_find_client_obd(struct obd_uuid * , char const * ,
                                                struct obd_uuid * ) ;
__inline static int obd_connect(struct lu_env const *env , struct obd_export **exp ,
                                struct obd_device *obd , struct obd_uuid *cluuid ,
                                struct obd_connect_data *data , void *localdata )
{
  int rc ;
  __u64 ocf ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___1 ;
  unsigned int coffset ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___2 ;
  struct libcfs_debug_msg_data __msg_data___0 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  ocf = (unsigned long )data != (unsigned long )((struct obd_connect_data *)0) ? data->ocd_connect_flags : 0ULL;
  if ((unsigned long )obd == (unsigned long )((struct obd_device *)0)) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata.msg_fn = "obd_connect";
      msgdata.msg_line = 955;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "NULL device\n");
    } else {
    }
    return (-19);
  } else {
  }
  if ((unsigned int )*((unsigned char *)obd + 196UL) == 0U || (unsigned int )*((unsigned char *)obd + 197UL) != 0U) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata___0.msg_fn = "obd_connect";
      msgdata___0.msg_line = 955;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "Device %d not setup\n", obd->obd_minor);
    } else {
    }
    return (-19);
  } else {
  }
  if ((unsigned long )obd->obd_type == (unsigned long )((struct obd_type *)0) || (unsigned long )((obd->obd_type)->typ_dt_ops)->o_connect == (unsigned long )((int (*)(struct lu_env const * ,
                                                                                                                                                                       struct obd_export ** ,
                                                                                                                                                                       struct obd_device * ,
                                                                                                                                                                       struct obd_uuid * ,
                                                                                                                                                                       struct obd_connect_data * ,
                                                                                                                                                                       void * ))0)) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata___1.msg_fn = "obd_connect";
      msgdata___1.msg_line = 956;
      msgdata___1.msg_cdls = & cdls___1;
      msgdata___1.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___1, "obd_connect: dev %d no operation\n", obd->obd_minor);
    } else {
    }
    return (-95);
  } else {
  }
  if ((unsigned long )obd->obd_stats != (unsigned long )((struct lprocfs_stats *)0)) {
    coffset = obd->obd_cntr_base + 12U;
    tmp___2 = ldv__builtin_expect((unsigned int )(obd->obd_stats)->ls_num <= coffset,
                               0L);
    if (tmp___2 != 0L) {
      __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      __msg_data.msg_fn = "obd_connect";
      __msg_data.msg_subsys = 32;
      __msg_data.msg_line = 957;
      __msg_data.msg_mask = 0;
      __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
      __msg_data.msg_mask = 262144;
      libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"coffset < (obd)->obd_stats->ls_num");
      lbug_with_loc(& __msg_data);
    } else {
    }
    lprocfs_counter_add(obd->obd_stats, (int )coffset, 1L);
  } else {
  }
  rc = (*(((obd->obd_type)->typ_dt_ops)->o_connect))(env, exp, obd, cluuid, data,
                                                     localdata);
  tmp___3 = ldv__builtin_expect((unsigned long )data != (unsigned long )((struct obd_connect_data *)0),
                             0L);
  if (tmp___3 != 0L) {
    tmp___4 = ldv__builtin_expect((data->ocd_connect_flags & ocf) != data->ocd_connect_flags,
                               0L);
    if (tmp___4 != 0L) {
      __msg_data___0.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      __msg_data___0.msg_fn = "obd_connect";
      __msg_data___0.msg_subsys = 32;
      __msg_data___0.msg_line = 962;
      __msg_data___0.msg_mask = 0;
      __msg_data___0.msg_cdls = (struct cfs_debug_limit_state *)0;
      __msg_data___0.msg_mask = 262144;
      libcfs_debug_msg(& __msg_data___0, "ASSERTION( %s ) failed: \n", (char *)"(!(data != ((void *)0)) || ((data->ocd_connect_flags & ocf) == data->ocd_connect_flags))");
      lbug_with_loc(& __msg_data___0);
    } else {
    }
  } else {
  }
  return (rc);
}
}
__inline static int obd_disconnect(struct obd_export *exp )
{
  int rc ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___1 ;
  unsigned int coffset ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___2 ;
  {
  if ((unsigned long )exp == (unsigned long )((struct obd_export *)0)) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata.msg_fn = "obd_disconnect";
      msgdata.msg_line = 992;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "obd_disconnect: NULL export\n");
    } else {
    }
    return (-19);
  } else {
  }
  if ((unsigned long )exp->exp_obd == (unsigned long )((struct obd_device *)0) || (unsigned long )(exp->exp_obd)->obd_type == (unsigned long )((struct obd_type *)0)) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata___0.msg_fn = "obd_disconnect";
      msgdata___0.msg_line = 992;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "obd_disconnect: cleaned up obd\n");
    } else {
    }
    return (-95);
  } else {
  }
  if ((unsigned long )(exp->exp_obd)->obd_type == (unsigned long )((struct obd_type *)0) || (unsigned long )(((exp->exp_obd)->obd_type)->typ_dt_ops)->o_disconnect == (unsigned long )((int (*)(struct obd_export * ))0)) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      msgdata___1.msg_fn = "obd_disconnect";
      msgdata___1.msg_line = 992;
      msgdata___1.msg_cdls = & cdls___1;
      msgdata___1.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___1, "obd_disconnect: dev %d no operation\n", (exp->exp_obd)->obd_minor);
    } else {
    }
    return (-95);
  } else {
  }
  if ((unsigned long )(exp->exp_obd)->obd_stats != (unsigned long )((struct lprocfs_stats *)0)) {
    coffset = (exp->exp_obd)->obd_cntr_base + 14U;
    tmp___2 = ldv__builtin_expect((unsigned int )((exp->exp_obd)->obd_stats)->ls_num <= coffset,
                               0L);
    if (tmp___2 != 0L) {
      __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/obd_class.h";
      __msg_data.msg_fn = "obd_disconnect";
      __msg_data.msg_subsys = 32;
      __msg_data.msg_line = 993;
      __msg_data.msg_mask = 0;
      __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
      __msg_data.msg_mask = 262144;
      libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"coffset < (exp)->exp_obd->obd_stats->ls_num");
      lbug_with_loc(& __msg_data);
    } else {
    }
    lprocfs_counter_add((exp->exp_obd)->obd_stats, (int )coffset, 1L);
    if ((unsigned long )exp->exp_nid_stats != (unsigned long )((struct nid_stat *)0) && (unsigned long )(exp->exp_nid_stats)->nid_stats != (unsigned long )((struct lprocfs_stats *)0)) {
      lprocfs_counter_add((exp->exp_nid_stats)->nid_stats, (int )coffset, 1L);
    } else {
    }
  } else {
  }
  rc = (*((((exp->exp_obd)->obd_type)->typ_dt_ops)->o_disconnect))(exp);
  return (rc);
}
}
__inline static int lu_device_is_dt(struct lu_device const *d )
{
  {
  return ((unsigned long )d == (unsigned long )((struct lu_device const *)0) || ((d->ld_type)->ldt_tags & 2U) != 0U);
}
}
__inline static struct dt_device *lu2dt_dev(struct lu_device *l )
{
  struct libcfs_debug_msg_data __msg_data ;
  int tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  tmp = lu_device_is_dt((struct lu_device const *)l);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/dt_object.h";
    __msg_data.msg_fn = "lu2dt_dev";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 672;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"lu_device_is_dt(l)");
    lbug_with_loc(& __msg_data);
  } else {
  }
  tmp___1 = __container_of((void *)l, 0UL);
  return ((struct dt_device *)tmp___1);
}
}
__inline static void logid_to_fid(struct llog_logid *id , struct lu_fid *fid )
{
  {
  if (id->lgl_ogen == 0U) {
    fid->f_seq = id->lgl_oi.ldv_48225.oi.oi_seq;
    fid->f_oid = (__u32 )id->lgl_oi.ldv_48225.oi.oi_id;
    fid->f_ver = 0U;
  } else {
    lu_igif_build(fid, (__u32 )id->lgl_oi.ldv_48225.oi.oi_id, id->lgl_ogen);
  }
  return;
}
}
extern int llog_init_handle(struct lu_env const * , struct llog_handle * , int ,
                            struct obd_uuid * ) ;
extern int llog_process(struct lu_env const * , struct llog_handle * , int (*)(struct lu_env const * ,
                                                                                 struct llog_handle * ,
                                                                                 struct llog_rec_hdr * ,
                                                                                 void * ) ,
                        void * , void * ) ;
extern int llog_reverse_process(struct lu_env const * , struct llog_handle * , int (*)(struct lu_env const * ,
                                                                                         struct llog_handle * ,
                                                                                         struct llog_rec_hdr * ,
                                                                                         void * ) ,
                                void * , void * ) ;
extern int llog_open(struct lu_env const * , struct llog_ctxt * , struct llog_handle ** ,
                     struct llog_logid * , char * , enum llog_open_param ) ;
extern int llog_close(struct lu_env const * , struct llog_handle * ) ;
extern int llog_cat_close(struct lu_env const * , struct llog_handle * ) ;
extern int llog_cat_add(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                        struct llog_cookie * , void * ) ;
extern int llog_cat_cancel_records(struct lu_env const * , struct llog_handle * ,
                                   int , struct llog_cookie * ) ;
extern int llog_cat_process(struct lu_env const * , struct llog_handle * , int (*)(struct lu_env const * ,
                                                                                     struct llog_handle * ,
                                                                                     struct llog_rec_hdr * ,
                                                                                     void * ) ,
                            void * , int , int ) ;
extern int llog_cat_reverse_process(struct lu_env const * , struct llog_handle * ,
                                    int (*)(struct lu_env const * , struct llog_handle * ,
                                            struct llog_rec_hdr * , void * ) , void * ) ;
extern int llog_setup(struct lu_env const * , struct obd_device * , struct obd_llog_group * ,
                      int , struct obd_device * , struct llog_operations * ) ;
extern int __llog_ctxt_put(struct lu_env const * , struct llog_ctxt * ) ;
extern int llog_cleanup(struct lu_env const * , struct llog_ctxt * ) ;
extern struct llog_operations llog_osd_ops ;
__inline static int llog_handle2ops(struct llog_handle *loghandle , struct llog_operations **lop )
{
  {
  if ((unsigned long )loghandle == (unsigned long )((struct llog_handle *)0) || (unsigned long )loghandle->lgh_logops == (unsigned long )((struct llog_operations *)0)) {
    return (-22);
  } else {
  }
  *lop = loghandle->lgh_logops;
  return (0);
}
}
__inline static struct llog_ctxt *llog_ctxt_get(struct llog_ctxt *ctxt )
{
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  int tmp___0 ;
  {
  atomic_inc(& ctxt->loc_refcount);
  tmp___0 = cfs_cdebug_show(64U, 32U);
  if (tmp___0 != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_log.h";
    msgdata.msg_fn = "llog_ctxt_get";
    msgdata.msg_line = 390;
    msgdata.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata.msg_mask = 64;
    tmp = atomic_read((atomic_t const *)(& ctxt->loc_refcount));
    libcfs_debug_msg(& msgdata, "GETting ctxt %p : new refcount %d\n", ctxt, tmp);
  } else {
  }
  return (ctxt);
}
}
__inline static void llog_ctxt_put(struct llog_ctxt *ctxt )
{
  int __v ;
  int tmp ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___0 ;
  long tmp___1 ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0)) {
    return;
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& ctxt->loc_refcount));
  __v = tmp;
  tmp___0 = ldv__builtin_expect(__v <= 0, 0L);
  if (tmp___0 != 0L) {
    goto _L;
  } else {
    tmp___1 = ldv__builtin_expect(__v > 1515870809, 0L);
    if (tmp___1 != 0L) {
      _L:
      __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_log.h";
      __msg_data.msg_fn = "llog_ctxt_put";
      __msg_data.msg_subsys = 32;
      __msg_data.msg_line = 398;
      __msg_data.msg_mask = 0;
      __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
      __msg_data.msg_mask = 262144;
      libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: value: %d\n", (char *)"__v > 0 && __v < 0x5a5a5a5a",
                       __v);
      lbug_with_loc(& __msg_data);
    } else {
    }
  }
  tmp___3 = cfs_cdebug_show(64U, 32U);
  if (tmp___3 != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_log.h";
    msgdata.msg_fn = "llog_ctxt_put";
    msgdata.msg_line = 400;
    msgdata.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata.msg_mask = 64;
    tmp___2 = atomic_read((atomic_t const *)(& ctxt->loc_refcount));
    libcfs_debug_msg(& msgdata, "PUTting ctxt %p : new refcount %d\n", ctxt, tmp___2 + -1);
  } else {
  }
  __llog_ctxt_put((struct lu_env const *)0, ctxt);
  return;
}
}
__inline static struct llog_ctxt *llog_group_get_ctxt(struct obd_llog_group *olg ,
                                                      int index )
{
  struct llog_ctxt *ctxt ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(index < 0, 0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect(index > 15, 0L);
    if (tmp___0 != 0L) {
      _L:
      __msg_data.msg_file = "drivers/staging/lustre/lustre/obdclass/../include/lustre_log.h";
      __msg_data.msg_fn = "llog_group_get_ctxt";
      __msg_data.msg_subsys = 32;
      __msg_data.msg_line = 432;
      __msg_data.msg_mask = 0;
      __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
      __msg_data.msg_mask = 262144;
      libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"index >= 0 && index < LLOG_MAX_CTXTS");
      lbug_with_loc(& __msg_data);
    } else {
    }
  }
  spin_lock(& olg->olg_lock);
  if ((unsigned long )olg->olg_ctxts[index] == (unsigned long )((struct llog_ctxt *)0)) {
    ctxt = (struct llog_ctxt *)0;
  } else {
    ctxt = llog_ctxt_get(olg->olg_ctxts[index]);
  }
  spin_unlock(& olg->olg_lock);
  return (ctxt);
}
}
__inline static struct llog_ctxt *llog_get_context(struct obd_device *obd , int index )
{
  struct llog_ctxt *tmp ;
  {
  tmp = llog_group_get_ctxt(& obd->obd_olg, index);
  return (tmp);
}
}
__inline static int llog_destroy(struct lu_env const *env , struct llog_handle *handle )
{
  struct llog_operations *lop ;
  int rc ;
  {
  rc = llog_handle2ops(handle, & lop);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((unsigned long )lop->lop_destroy == (unsigned long )((int (*)(struct lu_env const * ,
                                                                    struct llog_handle * ))0)) {
    return (-95);
  } else {
  }
  rc = (*(lop->lop_destroy))(env, handle);
  return (rc);
}
}
extern int llog_exist(struct llog_handle * ) ;
extern int llog_open_create(struct lu_env const * , struct llog_ctxt * , struct llog_handle ** ,
                            struct llog_logid * , char * ) ;
extern int llog_write(struct lu_env const * , struct llog_handle * , struct llog_rec_hdr * ,
                      struct llog_cookie * , int , void * , int ) ;
static int llog_test_rand ;
static struct obd_uuid uuid = {{'t', 'e', 's', 't', '_', 'u', 'u', 'i', 'd', '\000'}};
static struct llog_logid cat_logid ;
static int verify_handle(char *test , struct llog_handle *llh , int num_recs )
{
  int i ;
  int last_idx ;
  int active_recs ;
  int tmp ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  {
  last_idx = 0;
  active_recs = 0;
  i = 0;
  goto ldv_64238;
  ldv_64237:
  tmp = test_bit_le(i, (void const *)(& (llh->lgh_hdr)->llh_bitmap));
  if (tmp != 0) {
    last_idx = i;
    active_recs = active_recs + 1;
  } else {
  }
  i = i + 1;
  ldv_64238: ;
  if (i <= 64767) {
    goto ldv_64237;
  } else {
  }
  if (active_recs != num_recs) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "verify_handle";
      msgdata.msg_line = 106;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "%s: expected %d active recs after write, found %d\n",
                       test, num_recs, active_recs);
    } else {
    }
    return (-34);
  } else {
  }
  if ((llh->lgh_hdr)->llh_count != (__u32 )num_recs) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "verify_handle";
      msgdata___0.msg_line = 112;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "%s: handle->count is %d, expected %d after write\n",
                       test, (llh->lgh_hdr)->llh_count, num_recs);
    } else {
    }
    return (-34);
  } else {
  }
  if (llh->lgh_last_idx < last_idx) {
    tmp___2 = cfs_cdebug_show(131072U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "verify_handle";
      msgdata___1.msg_line = 118;
      msgdata___1.msg_cdls = & cdls___1;
      msgdata___1.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___1, "%s: handle->last_idx is %d, expected %d after write\n",
                       test, llh->lgh_last_idx, last_idx);
    } else {
    }
    return (-34);
  } else {
  }
  return (0);
}
}
static int llog_test_1(struct lu_env const *env , struct obd_device *obd , char *name )
{
  struct llog_handle *llh ;
  struct llog_ctxt *ctxt ;
  int rc ;
  int rc2 ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___0 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___4 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___6 ;
  {
  tmp = cfs_cdebug_show(1024U, 32U);
  if (tmp != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_1";
    msgdata.msg_line = 134;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "1a: create a log with name: %s\n", name);
  } else {
  }
  ctxt = llog_get_context(obd, 8);
  tmp___0 = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                             0L);
  if (tmp___0 != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_1";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 136;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  rc = llog_open_create(env, ctxt, & llh, (struct llog_logid *)0, name);
  if (rc != 0) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_1";
      msgdata___0.msg_line = 140;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "1a: llog_create with name %s failed: %d\n",
                       name, rc);
    } else {
    }
    tmp___2 = cfs_cdebug_show(1U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_1";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 141;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  rc = llog_init_handle(env, llh, 4, & uuid);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_1";
      msgdata___2.msg_line = 145;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "1a: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_1";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 146;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  rc = verify_handle((char *)"1", llh, 1);
  tmp___5 = cfs_cdebug_show(1024U, 32U);
  if (tmp___5 != 0) {
    msgdata___4.msg_subsys = 32;
    msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___4.msg_fn = "llog_test_1";
    msgdata___4.msg_line = 151;
    msgdata___4.msg_cdls = & cdls___2;
    msgdata___4.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___4, "1b: close newly-created log\n");
  } else {
  }
  out_close:
  rc2 = llog_close(env, llh);
  if (rc2 != 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_test_1";
      msgdata___5.msg_line = 155;
      msgdata___5.msg_cdls = & cdls___3;
      msgdata___5.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___5, "1b: close log %s failed: %d\n", name, rc2);
    } else {
    }
    if (rc == 0) {
      rc = rc2;
    } else {
    }
  } else {
  }
  out:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static int llog_test_2(struct lu_env const *env , struct obd_device *obd , char *name ,
                       struct llog_handle **llh )
{
  struct llog_ctxt *ctxt ;
  struct llog_handle *loghandle ;
  struct llog_logid logid ;
  int rc ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___0 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___4 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___5 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___6 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___8 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___9 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___10 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___11 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___12 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___13 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___14 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___15 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___16 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___17 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___17 ;
  int tmp___18 ;
  {
  tmp = cfs_cdebug_show(1024U, 32U);
  if (tmp != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_2";
    msgdata.msg_line = 173;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "2a: re-open a log with name: %s\n", name);
  } else {
  }
  ctxt = llog_get_context(obd, 8);
  tmp___0 = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                             0L);
  if (tmp___0 != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_2";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 175;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  rc = llog_open(env, ctxt, llh, (struct llog_logid *)0, name, 0);
  if (rc != 0) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_2";
      msgdata___0.msg_line = 179;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "2a: re-open log with name %s failed: %d\n",
                       name, rc);
    } else {
    }
    tmp___2 = cfs_cdebug_show(1U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_2";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 180;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "out_put", (long )rc);
    } else {
    }
    goto out_put;
  } else {
  }
  rc = llog_init_handle(env, *llh, 4, & uuid);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_2";
      msgdata___2.msg_line = 185;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "2a: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_2";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 186;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "out_close_llh", (long )rc);
    } else {
    }
    goto out_close_llh;
  } else {
  }
  rc = verify_handle((char *)"2", *llh, 1);
  if (rc != 0) {
    tmp___5 = cfs_cdebug_show(1U, 32U);
    if (tmp___5 != 0) {
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_2";
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_line = 191;
      msgdata___4.msg_mask = 0;
      msgdata___4.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___4.msg_mask = 1;
      libcfs_log_goto(& msgdata___4, "out_close_llh", (long )rc);
    } else {
    }
    goto out_close_llh;
  } else {
  }
  tmp___6 = cfs_cdebug_show(1U, 32U);
  if (tmp___6 != 0) {
    msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___5.msg_fn = "llog_test_2";
    msgdata___5.msg_subsys = 32;
    msgdata___5.msg_line = 196;
    msgdata___5.msg_mask = 0;
    msgdata___5.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata___5.msg_mask = 1;
    libcfs_log_goto(& msgdata___5, "out_put", (long )rc);
  } else {
  }
  goto out_put;
  tmp___7 = cfs_cdebug_show(1024U, 32U);
  if (tmp___7 != 0) {
    msgdata___6.msg_subsys = 32;
    msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___6.msg_fn = "llog_test_2";
    msgdata___6.msg_line = 198;
    msgdata___6.msg_cdls = & cdls___2;
    msgdata___6.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___6, "2b: create a log without specified NAME & LOGID\n");
  } else {
  }
  rc = llog_open_create(env, ctxt, & loghandle, (struct llog_logid *)0, (char *)0);
  if (rc != 0) {
    tmp___8 = cfs_cdebug_show(131072U, 32U);
    if (tmp___8 != 0) {
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_2";
      msgdata___7.msg_line = 201;
      msgdata___7.msg_cdls = & cdls___3;
      msgdata___7.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___7, "2b: create log failed\n");
    } else {
    }
    tmp___9 = cfs_cdebug_show(1U, 32U);
    if (tmp___9 != 0) {
      msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___8.msg_fn = "llog_test_2";
      msgdata___8.msg_subsys = 32;
      msgdata___8.msg_line = 202;
      msgdata___8.msg_mask = 0;
      msgdata___8.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___8.msg_mask = 1;
      libcfs_log_goto(& msgdata___8, "out_close_llh", (long )rc);
    } else {
    }
    goto out_close_llh;
  } else {
  }
  rc = llog_init_handle(env, loghandle, 4, & uuid);
  if (rc != 0) {
    tmp___10 = cfs_cdebug_show(131072U, 32U);
    if (tmp___10 != 0) {
      msgdata___9.msg_subsys = 32;
      msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___9.msg_fn = "llog_test_2";
      msgdata___9.msg_line = 206;
      msgdata___9.msg_cdls = & cdls___4;
      msgdata___9.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___9, "2b: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___11 = cfs_cdebug_show(1U, 32U);
    if (tmp___11 != 0) {
      msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___10.msg_fn = "llog_test_2";
      msgdata___10.msg_subsys = 32;
      msgdata___10.msg_line = 207;
      msgdata___10.msg_mask = 0;
      msgdata___10.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___10.msg_mask = 1;
      libcfs_log_goto(& msgdata___10, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  logid = loghandle->lgh_id;
  llog_close(env, loghandle);
  tmp___12 = cfs_cdebug_show(1024U, 32U);
  if (tmp___12 != 0) {
    msgdata___11.msg_subsys = 32;
    msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___11.msg_fn = "llog_test_2";
    msgdata___11.msg_line = 213;
    msgdata___11.msg_cdls = & cdls___5;
    msgdata___11.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___11, "2c: re-open the log by LOGID\n");
  } else {
  }
  rc = llog_open(env, ctxt, & loghandle, & logid, (char *)0, 0);
  if (rc != 0) {
    tmp___13 = cfs_cdebug_show(131072U, 32U);
    if (tmp___13 != 0) {
      msgdata___12.msg_subsys = 32;
      msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___12.msg_fn = "llog_test_2";
      msgdata___12.msg_line = 216;
      msgdata___12.msg_cdls = & cdls___6;
      msgdata___12.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___12, "2c: re-open log by LOGID failed\n");
    } else {
    }
    tmp___14 = cfs_cdebug_show(1U, 32U);
    if (tmp___14 != 0) {
      msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___13.msg_fn = "llog_test_2";
      msgdata___13.msg_subsys = 32;
      msgdata___13.msg_line = 217;
      msgdata___13.msg_mask = 0;
      msgdata___13.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___13.msg_mask = 1;
      libcfs_log_goto(& msgdata___13, "out_close_llh", (long )rc);
    } else {
    }
    goto out_close_llh;
  } else {
  }
  rc = llog_init_handle(env, loghandle, 4, & uuid);
  if (rc != 0) {
    tmp___15 = cfs_cdebug_show(131072U, 32U);
    if (tmp___15 != 0) {
      msgdata___14.msg_subsys = 32;
      msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___14.msg_fn = "llog_test_2";
      msgdata___14.msg_line = 222;
      msgdata___14.msg_cdls = & cdls___7;
      msgdata___14.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___14, "2c: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___16 = cfs_cdebug_show(1U, 32U);
    if (tmp___16 != 0) {
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_2";
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_line = 223;
      msgdata___15.msg_mask = 0;
      msgdata___15.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___15.msg_mask = 1;
      libcfs_log_goto(& msgdata___15, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  tmp___17 = cfs_cdebug_show(1024U, 32U);
  if (tmp___17 != 0) {
    msgdata___16.msg_subsys = 32;
    msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___16.msg_fn = "llog_test_2";
    msgdata___16.msg_line = 226;
    msgdata___16.msg_cdls = & cdls___8;
    msgdata___16.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___16, "2b: destroy this log\n");
  } else {
  }
  rc = llog_destroy(env, loghandle);
  if (rc != 0) {
    tmp___18 = cfs_cdebug_show(131072U, 32U);
    if (tmp___18 != 0) {
      msgdata___17.msg_subsys = 32;
      msgdata___17.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___17.msg_fn = "llog_test_2";
      msgdata___17.msg_line = 229;
      msgdata___17.msg_cdls = & cdls___9;
      msgdata___17.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___17, "2d: destroy log failed\n");
    } else {
    }
  } else {
  }
  out_close:
  llog_close(env, loghandle);
  out_close_llh: ;
  if (rc != 0) {
    llog_close(env, *llh);
  } else {
  }
  out_put:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static int llog_test_3(struct lu_env const *env , struct obd_device *obd , struct llog_handle *llh )
{
  struct llog_gen_rec lgr ;
  int rc ;
  int i ;
  int num_recs ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___1 ;
  struct llog_rec_hdr hdr ;
  char buf[8U] ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___3 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___4 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___5 ;
  struct llog_rec_hdr hdr___0 ;
  char buf_even[24U] ;
  char buf_odd[32U] ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___6 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___8 ;
  {
  num_recs = 1;
  lgr.lgr_tail.lrt_len = 64U;
  lgr.lgr_hdr.lrh_len = lgr.lgr_tail.lrt_len;
  lgr.lgr_hdr.lrh_type = 274989056U;
  tmp = cfs_cdebug_show(1024U, 32U);
  if (tmp != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_3";
    msgdata.msg_line = 252;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "3a: write one create_rec\n");
  } else {
  }
  rc = llog_write(env, llh, & lgr.lgr_hdr, (struct llog_cookie *)0, 0, (void *)0,
                  -1);
  num_recs = num_recs + 1;
  if (rc < 0) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_3";
      msgdata___0.msg_line = 256;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "3a: write one log record failed: %d\n", rc);
    } else {
    }
    return (rc);
  } else {
  }
  rc = verify_handle((char *)"3a", llh, num_recs);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___1 = cfs_cdebug_show(1024U, 32U);
  if (tmp___1 != 0) {
    msgdata___1.msg_subsys = 32;
    msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___1.msg_fn = "llog_test_3";
    msgdata___1.msg_line = 264;
    msgdata___1.msg_cdls = & cdls___1;
    msgdata___1.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___1, "3b: write 10 cfg log records with 8 bytes bufs\n");
  } else {
  }
  i = 0;
  goto ldv_64338;
  ldv_64337:
  hdr.lrh_len = 8U;
  hdr.lrh_type = 274857984U;
  memset((void *)(& buf), 0, 8UL);
  rc = llog_write(env, llh, & hdr, (struct llog_cookie *)0, 0, (void *)(& buf), -1);
  if (rc < 0) {
    tmp___2 = cfs_cdebug_show(131072U, 32U);
    if (tmp___2 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_3";
      msgdata___2.msg_line = 275;
      msgdata___2.msg_cdls = & cdls___2;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "3b: write 10 records failed at #%d: %d\n",
                       i + 1, rc);
    } else {
    }
    return (rc);
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64338: ;
  if (i <= 9) {
    goto ldv_64337;
  } else {
  }
  rc = verify_handle((char *)"3b", llh, num_recs);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___3 = cfs_cdebug_show(1024U, 32U);
  if (tmp___3 != 0) {
    msgdata___3.msg_subsys = 32;
    msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___3.msg_fn = "llog_test_3";
    msgdata___3.msg_line = 285;
    msgdata___3.msg_cdls = & cdls___3;
    msgdata___3.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___3, "3c: write 1000 more log records\n");
  } else {
  }
  i = 0;
  goto ldv_64345;
  ldv_64344:
  rc = llog_write(env, llh, & lgr.lgr_hdr, (struct llog_cookie *)0, 0, (void *)0,
                  -1);
  if (rc < 0) {
    tmp___4 = cfs_cdebug_show(131072U, 32U);
    if (tmp___4 != 0) {
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_3";
      msgdata___4.msg_line = 290;
      msgdata___4.msg_cdls = & cdls___4;
      msgdata___4.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___4, "3c: write 1000 records failed at #%d: %d\n",
                       i + 1, rc);
    } else {
    }
    return (rc);
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64345: ;
  if (i <= 999) {
    goto ldv_64344;
  } else {
  }
  rc = verify_handle((char *)"3c", llh, num_recs);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___5 = cfs_cdebug_show(1024U, 32U);
  if (tmp___5 != 0) {
    msgdata___5.msg_subsys = 32;
    msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___5.msg_fn = "llog_test_3";
    msgdata___5.msg_line = 300;
    msgdata___5.msg_cdls = & cdls___5;
    msgdata___5.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___5, "3d: write log more than BITMAP_SIZE, return -ENOSPC\n");
  } else {
  }
  i = 0;
  goto ldv_64356;
  ldv_64355:
  memset((void *)(& buf_odd), 0, 32UL);
  memset((void *)(& buf_even), 0, 24UL);
  if (((unsigned int )i & 1U) == 0U) {
    hdr___0.lrh_len = 24U;
    hdr___0.lrh_type = 274857984U;
    rc = llog_write(env, llh, & hdr___0, (struct llog_cookie *)0, 0, (void *)(& buf_even),
                    -1);
  } else {
    hdr___0.lrh_len = 32U;
    hdr___0.lrh_type = 274857984U;
    rc = llog_write(env, llh, & hdr___0, (struct llog_cookie *)0, 0, (void *)(& buf_odd),
                    -1);
  }
  if (rc == -28) {
    goto ldv_64352;
  } else
  if (rc < 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_3";
      msgdata___6.msg_line = 321;
      msgdata___6.msg_cdls = & cdls___6;
      msgdata___6.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___6, "3d: write recs failed at #%d: %d\n", i + 1,
                       rc);
    } else {
    }
    return (rc);
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64356: ;
  if ((unsigned int )i < (unsigned int )((unsigned long )((llh->lgh_hdr)->llh_hdr.lrh_len - (llh->lgh_hdr)->llh_bitmap_offset) - 8UL) * 8U + 1U) {
    goto ldv_64355;
  } else {
  }
  ldv_64352: ;
  if (rc != -28) {
    tmp___7 = cfs_cdebug_show(1024U, 32U);
    if (tmp___7 != 0) {
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_3";
      msgdata___7.msg_line = 327;
      msgdata___7.msg_cdls = & cdls___7;
      msgdata___7.msg_mask = 1024;
      libcfs_debug_msg(& msgdata___7, "3d: write record more than BITMAP size!\n");
    } else {
    }
    return (-22);
  } else {
  }
  tmp___8 = cfs_cdebug_show(1024U, 32U);
  if (tmp___8 != 0) {
    msgdata___8.msg_subsys = 32;
    msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___8.msg_fn = "llog_test_3";
    msgdata___8.msg_line = 331;
    msgdata___8.msg_cdls = & cdls___8;
    msgdata___8.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___8, "3d: wrote %d more records before end of llog is reached\n",
                     num_recs);
  } else {
  }
  rc = verify_handle((char *)"3d", llh, num_recs);
  return (rc);
}
}
static int llog_test_4(struct lu_env const *env , struct obd_device *obd )
{
  struct llog_handle *cath ;
  char name[10U] ;
  int rc ;
  int rc2 ;
  int i ;
  int buflen ;
  struct llog_mini_rec lmr ;
  struct llog_cookie cookie ;
  struct llog_ctxt *ctxt ;
  int num_recs ;
  char *buf ;
  struct llog_rec_hdr rec ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___4 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___6 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___7 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___8 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___9 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___10 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___11 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___12 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___13 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___14 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___15 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___16 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___17 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___17 ;
  int tmp___18 ;
  void *tmp___19 ;
  struct libcfs_debug_msg_data msgdata___18 ;
  int tmp___20 ;
  long tmp___21 ;
  int tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  int tmp___30 ;
  struct libcfs_debug_msg_data msgdata___19 ;
  int tmp___31 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___20 ;
  int tmp___32 ;
  struct libcfs_debug_msg_data msgdata___21 ;
  int tmp___33 ;
  struct libcfs_debug_msg_data __msg_data___0 ;
  long tmp___34 ;
  struct libcfs_debug_msg_data msgdata___22 ;
  int tmp___35 ;
  struct cfs_debug_limit_state cdls___10 ;
  struct libcfs_debug_msg_data msgdata___23 ;
  int tmp___36 ;
  struct cfs_debug_limit_state cdls___11 ;
  struct libcfs_debug_msg_data msgdata___24 ;
  int tmp___37 ;
  {
  num_recs = 0;
  ctxt = llog_get_context(obd, 8);
  tmp = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                         0L);
  if (tmp != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_4";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 352;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  lmr.lmr_tail.lrt_len = 24U;
  lmr.lmr_hdr.lrh_len = lmr.lmr_tail.lrt_len;
  lmr.lmr_hdr.lrh_type = 15732480U;
  sprintf((char *)(& name), "%x", llog_test_rand + 1);
  tmp___0 = cfs_cdebug_show(1024U, 32U);
  if (tmp___0 != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_4";
    msgdata.msg_line = 358;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "4a: create a catalog log with name: %s\n", (char *)(& name));
  } else {
  }
  rc = llog_open_create(env, ctxt, & cath, (struct llog_logid *)0, (char *)(& name));
  if (rc != 0) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_4";
      msgdata___0.msg_line = 361;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "4a: llog_create with name %s failed: %d\n",
                       (char *)(& name), rc);
    } else {
    }
    tmp___2 = cfs_cdebug_show(1U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_4";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 362;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "ctxt_release", (long )rc);
    } else {
    }
    goto ctxt_release;
  } else {
  }
  rc = llog_init_handle(env, cath, 2, & uuid);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_4";
      msgdata___2.msg_line = 366;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "4a: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_4";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 367;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  num_recs = num_recs + 1;
  cat_logid = cath->lgh_id;
  tmp___5 = cfs_cdebug_show(1024U, 32U);
  if (tmp___5 != 0) {
    msgdata___4.msg_subsys = 32;
    msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___4.msg_fn = "llog_test_4";
    msgdata___4.msg_line = 373;
    msgdata___4.msg_cdls = & cdls___2;
    msgdata___4.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___4, "4b: write 1 record into the catalog\n");
  } else {
  }
  rc = llog_cat_add(env, cath, & lmr.lmr_hdr, & cookie, (void *)0);
  if (rc != 1) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_test_4";
      msgdata___5.msg_line = 376;
      msgdata___5.msg_cdls = & cdls___3;
      msgdata___5.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___5, "4b: write 1 catalog record failed at: %d\n",
                       rc);
    } else {
    }
    tmp___7 = cfs_cdebug_show(1U, 32U);
    if (tmp___7 != 0) {
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_4";
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_line = 377;
      msgdata___6.msg_mask = 0;
      msgdata___6.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___6.msg_mask = 1;
      libcfs_log_goto(& msgdata___6, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  num_recs = num_recs + 1;
  rc = verify_handle((char *)"4b", cath, 2);
  if (rc != 0) {
    tmp___8 = cfs_cdebug_show(1U, 32U);
    if (tmp___8 != 0) {
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_4";
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_line = 382;
      msgdata___7.msg_mask = 0;
      msgdata___7.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___7.msg_mask = 1;
      libcfs_log_goto(& msgdata___7, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  rc = verify_handle((char *)"4b", cath->u.chd.chd_current_log, num_recs);
  if (rc != 0) {
    tmp___9 = cfs_cdebug_show(1U, 32U);
    if (tmp___9 != 0) {
      msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___8.msg_fn = "llog_test_4";
      msgdata___8.msg_subsys = 32;
      msgdata___8.msg_line = 386;
      msgdata___8.msg_mask = 0;
      msgdata___8.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___8.msg_mask = 1;
      libcfs_log_goto(& msgdata___8, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___10 = cfs_cdebug_show(1024U, 32U);
  if (tmp___10 != 0) {
    msgdata___9.msg_subsys = 32;
    msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___9.msg_fn = "llog_test_4";
    msgdata___9.msg_line = 388;
    msgdata___9.msg_cdls = & cdls___4;
    msgdata___9.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___9, "4c: cancel 1 log record\n");
  } else {
  }
  rc = llog_cat_cancel_records(env, cath, 1, & cookie);
  if (rc != 0) {
    tmp___11 = cfs_cdebug_show(131072U, 32U);
    if (tmp___11 != 0) {
      msgdata___10.msg_subsys = 32;
      msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___10.msg_fn = "llog_test_4";
      msgdata___10.msg_line = 391;
      msgdata___10.msg_cdls = & cdls___5;
      msgdata___10.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___10, "4c: cancel 1 catalog based record failed: %d\n",
                       rc);
    } else {
    }
    tmp___12 = cfs_cdebug_show(1U, 32U);
    if (tmp___12 != 0) {
      msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___11.msg_fn = "llog_test_4";
      msgdata___11.msg_subsys = 32;
      msgdata___11.msg_line = 392;
      msgdata___11.msg_mask = 0;
      msgdata___11.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___11.msg_mask = 1;
      libcfs_log_goto(& msgdata___11, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  num_recs = num_recs - 1;
  rc = verify_handle((char *)"4c", cath->u.chd.chd_current_log, num_recs);
  if (rc != 0) {
    tmp___13 = cfs_cdebug_show(1U, 32U);
    if (tmp___13 != 0) {
      msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___12.msg_fn = "llog_test_4";
      msgdata___12.msg_subsys = 32;
      msgdata___12.msg_line = 398;
      msgdata___12.msg_mask = 0;
      msgdata___12.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___12.msg_mask = 1;
      libcfs_log_goto(& msgdata___12, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___14 = cfs_cdebug_show(1024U, 32U);
  if (tmp___14 != 0) {
    msgdata___13.msg_subsys = 32;
    msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___13.msg_fn = "llog_test_4";
    msgdata___13.msg_line = 400;
    msgdata___13.msg_cdls = & cdls___6;
    msgdata___13.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___13, "4d: write %d more log records\n", 65536);
  } else {
  }
  i = 0;
  goto ldv_64408;
  ldv_64407:
  rc = llog_cat_add(env, cath, & lmr.lmr_hdr, (struct llog_cookie *)0, (void *)0);
  if (rc != 0) {
    tmp___15 = cfs_cdebug_show(131072U, 32U);
    if (tmp___15 != 0) {
      msgdata___14.msg_subsys = 32;
      msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___14.msg_fn = "llog_test_4";
      msgdata___14.msg_line = 405;
      msgdata___14.msg_cdls = & cdls___7;
      msgdata___14.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___14, "4d: write %d records failed at #%d: %d\n",
                       65536, i + 1, rc);
    } else {
    }
    tmp___16 = cfs_cdebug_show(1U, 32U);
    if (tmp___16 != 0) {
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_4";
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_line = 406;
      msgdata___15.msg_mask = 0;
      msgdata___15.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___15.msg_mask = 1;
      libcfs_log_goto(& msgdata___15, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64408: ;
  if (i <= 65535) {
    goto ldv_64407;
  } else {
  }
  rc = verify_handle((char *)"4d", cath, 3);
  if (rc != 0) {
    tmp___17 = cfs_cdebug_show(1U, 32U);
    if (tmp___17 != 0) {
      msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___16.msg_fn = "llog_test_4";
      msgdata___16.msg_subsys = 32;
      msgdata___16.msg_line = 414;
      msgdata___16.msg_mask = 0;
      msgdata___16.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___16.msg_mask = 1;
      libcfs_log_goto(& msgdata___16, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___18 = cfs_cdebug_show(1024U, 32U);
  if (tmp___18 != 0) {
    msgdata___17.msg_subsys = 32;
    msgdata___17.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___17.msg_fn = "llog_test_4";
    msgdata___17.msg_line = 416;
    msgdata___17.msg_cdls = & cdls___8;
    msgdata___17.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___17, "4e: add 5 large records, one record per block\n");
  } else {
  }
  buflen = 8168;
  tmp___19 = kmalloc((size_t )buflen, 32848U);
  buf = (char *)tmp___19;
  tmp___21 = ldv__builtin_expect((unsigned long )buf != (unsigned long )((char *)0),
                              1L);
  if (tmp___21 != 0L) {
    tmp___22 = cfs_fail_check_set(3072U, 0U, 0, 0);
    tmp___23 = ldv__builtin_expect(tmp___22 == 0, 1L);
    if (tmp___23 != 0L) {
      tmp___25 = 1;
    } else {
      tmp___24 = ldv__builtin_expect(obd_alloc_fail_rate == 0U, 1L);
      if (tmp___24 != 0L) {
        tmp___25 = 1;
      } else {
        tmp___25 = 0;
      }
    }
    if (tmp___25 != 0) {
      tmp___28 = 1;
    } else {
      tmp___26 = obd_alloc_fail((void const *)buf, "buf", "km", (size_t )buflen,
                                "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared",
                                419);
      tmp___27 = ldv__builtin_expect(tmp___26 == 0, 1L);
      if (tmp___27 != 0L) {
        tmp___28 = 1;
      } else {
        tmp___28 = 0;
      }
    }
    if (tmp___28 != 0) {
      tmp___30 = 1;
    } else {
      kfree((void const *)buf);
      buf = (char *)0;
      tmp___29 = ldv__builtin_expect(0, 1L);
      if (tmp___29 != 0L) {
        tmp___30 = 1;
      } else {
        tmp___30 = 0;
      }
    }
    if (tmp___30 != 0) {
      lprocfs_counter_add(obd_memory, 0, (long )buflen);
      tmp___20 = cfs_cdebug_show(16U, 32U);
      if (tmp___20 != 0) {
        msgdata___18.msg_subsys = 32;
        msgdata___18.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
        msgdata___18.msg_fn = "llog_test_4";
        msgdata___18.msg_line = 419;
        msgdata___18.msg_cdls = (struct cfs_debug_limit_state *)0;
        msgdata___18.msg_mask = 16;
        libcfs_debug_msg(& msgdata___18, "kmalloced \'buf\': %d at %p.\n", buflen,
                         buf);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    tmp___31 = cfs_cdebug_show(1U, 32U);
    if (tmp___31 != 0) {
      msgdata___19.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___19.msg_fn = "llog_test_4";
      msgdata___19.msg_subsys = 32;
      msgdata___19.msg_line = 421;
      msgdata___19.msg_mask = 0;
      msgdata___19.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___19.msg_mask = 1;
      rc = -12;
      libcfs_log_goto(& msgdata___19, "out", -12L);
    } else {
      rc = -12;
    }
    goto out;
  } else {
  }
  i = 0;
  goto ldv_64421;
  ldv_64420:
  rec.lrh_len = (__u32 )buflen;
  rec.lrh_type = 274857984U;
  rc = llog_cat_add(env, cath, & rec, (struct llog_cookie *)0, (void *)buf);
  if (rc != 0) {
    tmp___32 = cfs_cdebug_show(131072U, 32U);
    if (tmp___32 != 0) {
      msgdata___20.msg_subsys = 32;
      msgdata___20.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___20.msg_fn = "llog_test_4";
      msgdata___20.msg_line = 428;
      msgdata___20.msg_cdls = & cdls___9;
      msgdata___20.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___20, "4e: write 5 records failed at #%d: %d\n",
                       i + 1, rc);
    } else {
    }
    tmp___33 = cfs_cdebug_show(1U, 32U);
    if (tmp___33 != 0) {
      msgdata___21.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___21.msg_fn = "llog_test_4";
      msgdata___21.msg_subsys = 32;
      msgdata___21.msg_line = 429;
      msgdata___21.msg_mask = 0;
      msgdata___21.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___21.msg_mask = 1;
      libcfs_log_goto(& msgdata___21, "out_free", (long )rc);
    } else {
    }
    goto out_free;
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64421: ;
  if (i <= 4) {
    goto ldv_64420;
  } else {
  }
  out_free:
  tmp___34 = ldv__builtin_expect((unsigned long )buf == (unsigned long )((char *)0),
                              0L);
  if (tmp___34 != 0L) {
    __msg_data___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data___0.msg_fn = "llog_test_4";
    __msg_data___0.msg_subsys = 32;
    __msg_data___0.msg_line = 434;
    __msg_data___0.msg_mask = 0;
    __msg_data___0.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data___0.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data___0, "ASSERTION( %s ) failed: \n", (char *)"buf");
    lbug_with_loc(& __msg_data___0);
  } else {
  }
  lprocfs_counter_sub(obd_memory, 0, (long )buflen);
  tmp___35 = cfs_cdebug_show(16U, 32U);
  if (tmp___35 != 0) {
    msgdata___22.msg_subsys = 32;
    msgdata___22.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___22.msg_fn = "llog_test_4";
    msgdata___22.msg_line = 434;
    msgdata___22.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata___22.msg_mask = 16;
    libcfs_debug_msg(& msgdata___22, "kfreed \'buf\': %d at %p.\n", buflen, buf);
  } else {
  }
  memset((void *)buf, 90, (size_t )buflen);
  kfree((void const *)buf);
  buf = (char *)3735928559L;
  out:
  tmp___36 = cfs_cdebug_show(1024U, 32U);
  if (tmp___36 != 0) {
    msgdata___23.msg_subsys = 32;
    msgdata___23.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___23.msg_fn = "llog_test_4";
    msgdata___23.msg_line = 436;
    msgdata___23.msg_cdls = & cdls___10;
    msgdata___23.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___23, "4f: put newly-created catalog\n");
  } else {
  }
  rc2 = llog_cat_close(env, cath);
  if (rc2 != 0) {
    tmp___37 = cfs_cdebug_show(131072U, 32U);
    if (tmp___37 != 0) {
      msgdata___24.msg_subsys = 32;
      msgdata___24.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___24.msg_fn = "llog_test_4";
      msgdata___24.msg_line = 439;
      msgdata___24.msg_cdls = & cdls___11;
      msgdata___24.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___24, "4: close log %s failed: %d\n", (char *)(& name),
                       rc2);
    } else {
    }
    if (rc == 0) {
      rc = rc2;
    } else {
    }
  } else {
  }
  ctxt_release:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static int cat_counter ;
static int cat_print_cb(struct lu_env const *env , struct llog_handle *llh , struct llog_rec_hdr *rec ,
                        void *data )
{
  struct llog_logid_rec *lir ;
  struct lu_fid fid ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  struct lu_fid const *tmp___0 ;
  struct lu_fid const *tmp___1 ;
  struct lu_fid const *tmp___2 ;
  int tmp___3 ;
  {
  lir = (struct llog_logid_rec *)rec;
  fid.f_seq = 0ULL;
  fid.f_oid = 0U;
  fid.f_ver = 0U;
  if (rec->lrh_type != 275010875U) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "cat_print_cb";
      msgdata.msg_line = 457;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "invalid record in catalog\n");
    } else {
    }
    return (-22);
  } else {
  }
  logid_to_fid(& lir->lid_id, & fid);
  tmp___3 = cfs_cdebug_show(1024U, 32U);
  if (tmp___3 != 0) {
    msgdata___0.msg_subsys = 32;
    msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___0.msg_fn = "cat_print_cb";
    msgdata___0.msg_line = 465;
    msgdata___0.msg_cdls = & cdls___0;
    msgdata___0.msg_mask = 1024;
    tmp___0 = lu_object_fid((struct lu_object const *)(& (llh->lgh_obj)->do_lu));
    tmp___1 = lu_object_fid((struct lu_object const *)(& (llh->lgh_obj)->do_lu));
    tmp___2 = lu_object_fid((struct lu_object const *)(& (llh->lgh_obj)->do_lu));
    libcfs_debug_msg(& msgdata___0, "seeing record at index %d - [%#llx:0x%x:0x%x] in log [%#llx:0x%x:0x%x]\n",
                     rec->lrh_index, fid.f_seq, fid.f_oid, fid.f_ver, tmp___2->f_seq,
                     tmp___1->f_oid, tmp___0->f_ver);
  } else {
  }
  cat_counter = cat_counter + 1;
  return (0);
}
}
static int plain_counter ;
static int plain_print_cb(struct lu_env const *env , struct llog_handle *llh , struct llog_rec_hdr *rec ,
                          void *data )
{
  struct lu_fid fid ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  {
  fid.f_seq = 0ULL;
  fid.f_oid = 0U;
  fid.f_ver = 0U;
  if (((llh->lgh_hdr)->llh_flags & 4U) == 0U) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "plain_print_cb";
      msgdata.msg_line = 480;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "log is not plain\n");
    } else {
    }
    return (-22);
  } else {
  }
  logid_to_fid(& llh->lgh_id, & fid);
  tmp___0 = cfs_cdebug_show(64U, 32U);
  if (tmp___0 != 0) {
    msgdata___0.msg_subsys = 32;
    msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___0.msg_fn = "plain_print_cb";
    msgdata___0.msg_line = 487;
    msgdata___0.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata___0.msg_mask = 64;
    libcfs_debug_msg(& msgdata___0, "seeing record at index %d in log [%#llx:0x%x:0x%x]\n",
                     rec->lrh_index, fid.f_seq, fid.f_oid, fid.f_ver);
  } else {
  }
  plain_counter = plain_counter + 1;
  return (0);
}
}
static int cancel_count ;
static int llog_cancel_rec_cb(struct lu_env const *env , struct llog_handle *llh ,
                              struct llog_rec_hdr *rec , void *data )
{
  struct llog_cookie cookie ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  {
  if (((llh->lgh_hdr)->llh_flags & 4U) == 0U) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "llog_cancel_rec_cb";
      msgdata.msg_line = 503;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "log is not plain\n");
    } else {
    }
    return (-22);
  } else {
  }
  cookie.lgc_lgl = llh->lgh_id;
  cookie.lgc_index = rec->lrh_index;
  llog_cat_cancel_records(env, llh->u.phd.phd_cat_handle, 1, & cookie);
  cancel_count = cancel_count + 1;
  if (cancel_count == 65536) {
    return (-4711);
  } else {
  }
  return (0);
}
}
static int llog_test_5(struct lu_env const *env , struct obd_device *obd )
{
  struct llog_handle *llh ;
  char name[10U] ;
  int rc ;
  int rc2 ;
  struct llog_mini_rec lmr ;
  struct llog_ctxt *ctxt ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___0 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___4 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___6 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___8 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___9 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___10 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___11 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___12 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___13 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___14 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___15 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___16 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___17 ;
  struct cfs_debug_limit_state cdls___10 ;
  struct libcfs_debug_msg_data msgdata___17 ;
  int tmp___18 ;
  struct cfs_debug_limit_state cdls___11 ;
  struct libcfs_debug_msg_data msgdata___18 ;
  int tmp___19 ;
  struct libcfs_debug_msg_data msgdata___19 ;
  int tmp___20 ;
  struct cfs_debug_limit_state cdls___12 ;
  struct libcfs_debug_msg_data msgdata___20 ;
  int tmp___21 ;
  struct cfs_debug_limit_state cdls___13 ;
  struct libcfs_debug_msg_data msgdata___21 ;
  int tmp___22 ;
  struct libcfs_debug_msg_data msgdata___22 ;
  int tmp___23 ;
  struct cfs_debug_limit_state cdls___14 ;
  struct libcfs_debug_msg_data msgdata___23 ;
  int tmp___24 ;
  struct libcfs_debug_msg_data msgdata___24 ;
  int tmp___25 ;
  struct cfs_debug_limit_state cdls___15 ;
  struct libcfs_debug_msg_data msgdata___25 ;
  int tmp___26 ;
  struct cfs_debug_limit_state cdls___16 ;
  struct libcfs_debug_msg_data msgdata___26 ;
  int tmp___27 ;
  struct libcfs_debug_msg_data msgdata___27 ;
  int tmp___28 ;
  struct cfs_debug_limit_state cdls___17 ;
  struct libcfs_debug_msg_data msgdata___28 ;
  int tmp___29 ;
  struct libcfs_debug_msg_data msgdata___29 ;
  int tmp___30 ;
  struct cfs_debug_limit_state cdls___18 ;
  struct libcfs_debug_msg_data msgdata___30 ;
  int tmp___31 ;
  struct cfs_debug_limit_state cdls___19 ;
  struct libcfs_debug_msg_data msgdata___31 ;
  int tmp___32 ;
  {
  llh = (struct llog_handle *)0;
  ctxt = llog_get_context(obd, 8);
  tmp = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                         0L);
  if (tmp != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_5";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 527;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  lmr.lmr_tail.lrt_len = 24U;
  lmr.lmr_hdr.lrh_len = lmr.lmr_tail.lrt_len;
  lmr.lmr_hdr.lrh_type = 15732480U;
  tmp___0 = cfs_cdebug_show(1024U, 32U);
  if (tmp___0 != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_5";
    msgdata.msg_line = 532;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "5a: re-open catalog by id\n");
  } else {
  }
  rc = llog_open(env, ctxt, & llh, & cat_logid, (char *)0, 0);
  if (rc != 0) {
    tmp___1 = cfs_cdebug_show(131072U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_5";
      msgdata___0.msg_line = 535;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "5a: llog_create with logid failed: %d\n", rc);
    } else {
    }
    tmp___2 = cfs_cdebug_show(1U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_5";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 536;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "out_put", (long )rc);
    } else {
    }
    goto out_put;
  } else {
  }
  rc = llog_init_handle(env, llh, 2, & uuid);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_5";
      msgdata___2.msg_line = 541;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "5a: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_5";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 542;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___5 = cfs_cdebug_show(1024U, 32U);
  if (tmp___5 != 0) {
    msgdata___4.msg_subsys = 32;
    msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___4.msg_fn = "llog_test_5";
    msgdata___4.msg_line = 545;
    msgdata___4.msg_cdls = & cdls___2;
    msgdata___4.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___4, "5b: print the catalog entries.. we expect 2\n");
  } else {
  }
  cat_counter = 0;
  rc = llog_process(env, llh, & cat_print_cb, (void *)"test 5", (void *)0);
  if (rc != 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_test_5";
      msgdata___5.msg_line = 549;
      msgdata___5.msg_cdls = & cdls___3;
      msgdata___5.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___5, "5b: process with cat_print_cb failed: %d\n",
                       rc);
    } else {
    }
    tmp___7 = cfs_cdebug_show(1U, 32U);
    if (tmp___7 != 0) {
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_5";
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_line = 550;
      msgdata___6.msg_mask = 0;
      msgdata___6.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___6.msg_mask = 1;
      libcfs_log_goto(& msgdata___6, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  if (cat_counter != 2) {
    tmp___8 = cfs_cdebug_show(131072U, 32U);
    if (tmp___8 != 0) {
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_5";
      msgdata___7.msg_line = 553;
      msgdata___7.msg_cdls = & cdls___4;
      msgdata___7.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___7, "5b: %d entries in catalog\n", cat_counter);
    } else {
    }
    tmp___9 = cfs_cdebug_show(1U, 32U);
    if (tmp___9 != 0) {
      msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___8.msg_fn = "llog_test_5";
      msgdata___8.msg_subsys = 32;
      msgdata___8.msg_line = 554;
      msgdata___8.msg_mask = 0;
      msgdata___8.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___8.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___8, "out", -22L);
    } else {
      rc = -22;
    }
    goto out;
  } else {
  }
  tmp___10 = cfs_cdebug_show(1024U, 32U);
  if (tmp___10 != 0) {
    msgdata___9.msg_subsys = 32;
    msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___9.msg_fn = "llog_test_5";
    msgdata___9.msg_line = 557;
    msgdata___9.msg_cdls = & cdls___5;
    msgdata___9.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___9, "5c: Cancel %d records, see one log zapped\n",
                     65536);
  } else {
  }
  cancel_count = 0;
  rc = llog_cat_process(env, llh, & llog_cancel_rec_cb, (void *)"foobar", 0, 0);
  if (rc != -4711) {
    tmp___11 = cfs_cdebug_show(131072U, 32U);
    if (tmp___11 != 0) {
      msgdata___10.msg_subsys = 32;
      msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___10.msg_fn = "llog_test_5";
      msgdata___10.msg_line = 561;
      msgdata___10.msg_cdls = & cdls___6;
      msgdata___10.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___10, "5c: process with cat_cancel_cb failed: %d\n",
                       rc);
    } else {
    }
    tmp___12 = cfs_cdebug_show(1U, 32U);
    if (tmp___12 != 0) {
      msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___11.msg_fn = "llog_test_5";
      msgdata___11.msg_subsys = 32;
      msgdata___11.msg_line = 562;
      msgdata___11.msg_mask = 0;
      msgdata___11.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___11.msg_mask = 1;
      libcfs_log_goto(& msgdata___11, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___13 = cfs_cdebug_show(1024U, 32U);
  if (tmp___13 != 0) {
    msgdata___12.msg_subsys = 32;
    msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___12.msg_fn = "llog_test_5";
    msgdata___12.msg_line = 565;
    msgdata___12.msg_cdls = & cdls___7;
    msgdata___12.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___12, "5c: print the catalog entries.. we expect 1\n");
  } else {
  }
  cat_counter = 0;
  rc = llog_process(env, llh, & cat_print_cb, (void *)"test 5", (void *)0);
  if (rc != 0) {
    tmp___14 = cfs_cdebug_show(131072U, 32U);
    if (tmp___14 != 0) {
      msgdata___13.msg_subsys = 32;
      msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___13.msg_fn = "llog_test_5";
      msgdata___13.msg_line = 569;
      msgdata___13.msg_cdls = & cdls___8;
      msgdata___13.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___13, "5c: process with cat_print_cb failed: %d\n",
                       rc);
    } else {
    }
    tmp___15 = cfs_cdebug_show(1U, 32U);
    if (tmp___15 != 0) {
      msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___14.msg_fn = "llog_test_5";
      msgdata___14.msg_subsys = 32;
      msgdata___14.msg_line = 570;
      msgdata___14.msg_mask = 0;
      msgdata___14.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___14.msg_mask = 1;
      libcfs_log_goto(& msgdata___14, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  if (cat_counter != 1) {
    tmp___16 = cfs_cdebug_show(131072U, 32U);
    if (tmp___16 != 0) {
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_5";
      msgdata___15.msg_line = 573;
      msgdata___15.msg_cdls = & cdls___9;
      msgdata___15.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___15, "5c: %d entries in catalog\n", cat_counter);
    } else {
    }
    tmp___17 = cfs_cdebug_show(1U, 32U);
    if (tmp___17 != 0) {
      msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___16.msg_fn = "llog_test_5";
      msgdata___16.msg_subsys = 32;
      msgdata___16.msg_line = 574;
      msgdata___16.msg_mask = 0;
      msgdata___16.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___16.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___16, "out", -22L);
    } else {
      rc = -22;
    }
    goto out;
  } else {
  }
  tmp___18 = cfs_cdebug_show(1024U, 32U);
  if (tmp___18 != 0) {
    msgdata___17.msg_subsys = 32;
    msgdata___17.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___17.msg_fn = "llog_test_5";
    msgdata___17.msg_line = 577;
    msgdata___17.msg_cdls = & cdls___10;
    msgdata___17.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___17, "5d: add 1 record to the log with many canceled empty pages\n");
  } else {
  }
  rc = llog_cat_add(env, llh, & lmr.lmr_hdr, (struct llog_cookie *)0, (void *)0);
  if (rc != 0) {
    tmp___19 = cfs_cdebug_show(131072U, 32U);
    if (tmp___19 != 0) {
      msgdata___18.msg_subsys = 32;
      msgdata___18.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___18.msg_fn = "llog_test_5";
      msgdata___18.msg_line = 581;
      msgdata___18.msg_cdls = & cdls___11;
      msgdata___18.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___18, "5d: add record to the log with many canceled empty pages failed\n");
    } else {
    }
    tmp___20 = cfs_cdebug_show(1U, 32U);
    if (tmp___20 != 0) {
      msgdata___19.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___19.msg_fn = "llog_test_5";
      msgdata___19.msg_subsys = 32;
      msgdata___19.msg_line = 582;
      msgdata___19.msg_mask = 0;
      msgdata___19.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___19.msg_mask = 1;
      libcfs_log_goto(& msgdata___19, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___21 = cfs_cdebug_show(1024U, 32U);
  if (tmp___21 != 0) {
    msgdata___20.msg_subsys = 32;
    msgdata___20.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___20.msg_fn = "llog_test_5";
    msgdata___20.msg_line = 585;
    msgdata___20.msg_cdls = & cdls___12;
    msgdata___20.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___20, "5e: print plain log entries.. expect 6\n");
  } else {
  }
  plain_counter = 0;
  rc = llog_cat_process(env, llh, & plain_print_cb, (void *)"foobar", 0, 0);
  if (rc != 0) {
    tmp___22 = cfs_cdebug_show(131072U, 32U);
    if (tmp___22 != 0) {
      msgdata___21.msg_subsys = 32;
      msgdata___21.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___21.msg_fn = "llog_test_5";
      msgdata___21.msg_line = 589;
      msgdata___21.msg_cdls = & cdls___13;
      msgdata___21.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___21, "5e: process with plain_print_cb failed: %d\n",
                       rc);
    } else {
    }
    tmp___23 = cfs_cdebug_show(1U, 32U);
    if (tmp___23 != 0) {
      msgdata___22.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___22.msg_fn = "llog_test_5";
      msgdata___22.msg_subsys = 32;
      msgdata___22.msg_line = 590;
      msgdata___22.msg_mask = 0;
      msgdata___22.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___22.msg_mask = 1;
      libcfs_log_goto(& msgdata___22, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  if (plain_counter != 6) {
    tmp___24 = cfs_cdebug_show(131072U, 32U);
    if (tmp___24 != 0) {
      msgdata___23.msg_subsys = 32;
      msgdata___23.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___23.msg_fn = "llog_test_5";
      msgdata___23.msg_line = 593;
      msgdata___23.msg_cdls = & cdls___14;
      msgdata___23.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___23, "5e: found %d records\n", plain_counter);
    } else {
    }
    tmp___25 = cfs_cdebug_show(1U, 32U);
    if (tmp___25 != 0) {
      msgdata___24.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___24.msg_fn = "llog_test_5";
      msgdata___24.msg_subsys = 32;
      msgdata___24.msg_line = 594;
      msgdata___24.msg_mask = 0;
      msgdata___24.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___24.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___24, "out", -22L);
    } else {
      rc = -22;
    }
    goto out;
  } else {
  }
  tmp___26 = cfs_cdebug_show(1024U, 32U);
  if (tmp___26 != 0) {
    msgdata___25.msg_subsys = 32;
    msgdata___25.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___25.msg_fn = "llog_test_5";
    msgdata___25.msg_line = 597;
    msgdata___25.msg_cdls = & cdls___15;
    msgdata___25.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___25, "5f: print plain log entries reversely.. expect 6\n");
  } else {
  }
  plain_counter = 0;
  rc = llog_cat_reverse_process(env, llh, & plain_print_cb, (void *)"foobar");
  if (rc != 0) {
    tmp___27 = cfs_cdebug_show(131072U, 32U);
    if (tmp___27 != 0) {
      msgdata___26.msg_subsys = 32;
      msgdata___26.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___26.msg_fn = "llog_test_5";
      msgdata___26.msg_line = 602;
      msgdata___26.msg_cdls = & cdls___16;
      msgdata___26.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___26, "5f: reversely process with plain_print_cb failed:%d\n",
                       rc);
    } else {
    }
    tmp___28 = cfs_cdebug_show(1U, 32U);
    if (tmp___28 != 0) {
      msgdata___27.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___27.msg_fn = "llog_test_5";
      msgdata___27.msg_subsys = 32;
      msgdata___27.msg_line = 603;
      msgdata___27.msg_mask = 0;
      msgdata___27.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___27.msg_mask = 1;
      libcfs_log_goto(& msgdata___27, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  if (plain_counter != 6) {
    tmp___29 = cfs_cdebug_show(131072U, 32U);
    if (tmp___29 != 0) {
      msgdata___28.msg_subsys = 32;
      msgdata___28.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___28.msg_fn = "llog_test_5";
      msgdata___28.msg_line = 606;
      msgdata___28.msg_cdls = & cdls___17;
      msgdata___28.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___28, "5f: found %d records\n", plain_counter);
    } else {
    }
    tmp___30 = cfs_cdebug_show(1U, 32U);
    if (tmp___30 != 0) {
      msgdata___29.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___29.msg_fn = "llog_test_5";
      msgdata___29.msg_subsys = 32;
      msgdata___29.msg_line = 607;
      msgdata___29.msg_mask = 0;
      msgdata___29.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___29.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___29, "out", -22L);
    } else {
      rc = -22;
    }
    goto out;
  } else {
  }
  out:
  tmp___31 = cfs_cdebug_show(1024U, 32U);
  if (tmp___31 != 0) {
    msgdata___30.msg_subsys = 32;
    msgdata___30.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___30.msg_fn = "llog_test_5";
    msgdata___30.msg_line = 611;
    msgdata___30.msg_cdls = & cdls___18;
    msgdata___30.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___30, "5g: close re-opened catalog\n");
  } else {
  }
  rc2 = llog_cat_close(env, llh);
  if (rc2 != 0) {
    tmp___32 = cfs_cdebug_show(131072U, 32U);
    if (tmp___32 != 0) {
      msgdata___31.msg_subsys = 32;
      msgdata___31.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___31.msg_fn = "llog_test_5";
      msgdata___31.msg_line = 614;
      msgdata___31.msg_cdls = & cdls___19;
      msgdata___31.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___31, "5g: close log %s failed: %d\n", (char *)(& name),
                       rc2);
    } else {
    }
    if (rc == 0) {
      rc = rc2;
    } else {
    }
  } else {
  }
  out_put:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static int llog_test_6(struct lu_env const *env , struct obd_device *obd , char *name )
{
  struct obd_device *mgc_obd ;
  struct llog_ctxt *ctxt ;
  struct obd_uuid *mgs_uuid ;
  struct obd_export *exp ;
  struct obd_uuid uuid___0 ;
  unsigned int tmp ;
  struct llog_handle *llh ;
  struct llog_ctxt *nctxt ;
  int rc ;
  int rc2 ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___0 ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___1 ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___2 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___3 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___4 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___6 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___8 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___9 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___10 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___11 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___12 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___13 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___14 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___15 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___16 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___17 ;
  struct cfs_debug_limit_state cdls___10 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___18 ;
  {
  uuid___0.uuid[0] = 'L';
  uuid___0.uuid[1] = 'L';
  uuid___0.uuid[2] = 'O';
  uuid___0.uuid[3] = 'G';
  uuid___0.uuid[4] = '_';
  uuid___0.uuid[5] = 'T';
  uuid___0.uuid[6] = 'E';
  uuid___0.uuid[7] = 'S';
  uuid___0.uuid[8] = 'T';
  uuid___0.uuid[9] = '6';
  uuid___0.uuid[10] = '_';
  uuid___0.uuid[11] = 'U';
  uuid___0.uuid[12] = 'U';
  uuid___0.uuid[13] = 'I';
  uuid___0.uuid[14] = 'D';
  uuid___0.uuid[15] = '\000';
  tmp = 16U;
  while (1) {
    if (tmp >= 40U) {
      break;
    } else {
    }
    uuid___0.uuid[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  llh = (struct llog_handle *)0;
  ctxt = llog_get_context(obd, 8);
  tmp___0 = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                             0L);
  if (tmp___0 != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_6";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 638;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  mgs_uuid = & ((ctxt->loc_exp)->exp_obd)->obd_uuid;
  tmp___1 = cfs_cdebug_show(1024U, 32U);
  if (tmp___1 != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_6";
    msgdata.msg_line = 641;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "6a: re-open log %s using client API\n", name);
  } else {
  }
  mgc_obd = class_find_client_obd(mgs_uuid, "mgc", (struct obd_uuid *)0);
  if ((unsigned long )mgc_obd == (unsigned long )((struct obd_device *)0)) {
    tmp___2 = cfs_cdebug_show(131072U, 32U);
    if (tmp___2 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_6";
      msgdata___0.msg_line = 645;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "6a: no MGC devices connected to %s found.\n",
                       (char *)(& mgs_uuid->uuid));
    } else {
    }
    tmp___3 = cfs_cdebug_show(1U, 32U);
    if (tmp___3 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_6";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 646;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      rc = -2;
      libcfs_log_goto(& msgdata___1, "ctxt_release", -2L);
    } else {
      rc = -2;
    }
    goto ctxt_release;
  } else {
  }
  rc = obd_connect((struct lu_env const *)0, & exp, mgc_obd, & uuid___0, (struct obd_connect_data *)0,
                   (void *)0);
  if (rc != -114) {
    tmp___4 = cfs_cdebug_show(131072U, 32U);
    if (tmp___4 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_6";
      msgdata___2.msg_line = 653;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "6a: connect on connected MGC (%s) failed to return -EALREADY",
                       (char *)(& mgc_obd->obd_name));
    } else {
    }
    if (rc == 0) {
      obd_disconnect(exp);
    } else {
    }
    tmp___5 = cfs_cdebug_show(1U, 32U);
    if (tmp___5 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_6";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 656;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___3, "ctxt_release", -22L);
    } else {
      rc = -22;
    }
    goto ctxt_release;
  } else {
  }
  nctxt = llog_get_context(mgc_obd, 1);
  rc = llog_open(env, nctxt, & llh, (struct llog_logid *)0, name, 0);
  if (rc != 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_6";
      msgdata___4.msg_line = 662;
      msgdata___4.msg_cdls = & cdls___2;
      msgdata___4.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___4, "6a: llog_open failed %d\n", rc);
    } else {
    }
    tmp___7 = cfs_cdebug_show(1U, 32U);
    if (tmp___7 != 0) {
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_test_6";
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_line = 663;
      msgdata___5.msg_mask = 0;
      msgdata___5.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___5.msg_mask = 1;
      libcfs_log_goto(& msgdata___5, "nctxt_put", (long )rc);
    } else {
    }
    goto nctxt_put;
  } else {
  }
  rc = llog_init_handle(env, llh, 4, (struct obd_uuid *)0);
  if (rc != 0) {
    tmp___8 = cfs_cdebug_show(131072U, 32U);
    if (tmp___8 != 0) {
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_6";
      msgdata___6.msg_line = 668;
      msgdata___6.msg_cdls = & cdls___3;
      msgdata___6.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___6, "6a: llog_init_handle failed %d\n", rc);
    } else {
    }
    tmp___9 = cfs_cdebug_show(1U, 32U);
    if (tmp___9 != 0) {
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_6";
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_line = 669;
      msgdata___7.msg_mask = 0;
      msgdata___7.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___7.msg_mask = 1;
      libcfs_log_goto(& msgdata___7, "parse_out", (long )rc);
    } else {
    }
    goto parse_out;
  } else {
  }
  plain_counter = 1;
  tmp___10 = cfs_cdebug_show(1024U, 32U);
  if (tmp___10 != 0) {
    msgdata___8.msg_subsys = 32;
    msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___8.msg_fn = "llog_test_6";
    msgdata___8.msg_line = 673;
    msgdata___8.msg_cdls = & cdls___4;
    msgdata___8.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___8, "6b: process log %s using client API\n", name);
  } else {
  }
  rc = llog_process(env, llh, & plain_print_cb, (void *)0, (void *)0);
  if (rc != 0) {
    tmp___11 = cfs_cdebug_show(131072U, 32U);
    if (tmp___11 != 0) {
      msgdata___9.msg_subsys = 32;
      msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___9.msg_fn = "llog_test_6";
      msgdata___9.msg_line = 676;
      msgdata___9.msg_cdls = & cdls___5;
      msgdata___9.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___9, "6b: llog_process failed %d\n", rc);
    } else {
    }
  } else {
  }
  tmp___12 = cfs_cdebug_show(1024U, 32U);
  if (tmp___12 != 0) {
    msgdata___10.msg_subsys = 32;
    msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___10.msg_fn = "llog_test_6";
    msgdata___10.msg_line = 677;
    msgdata___10.msg_cdls = & cdls___6;
    msgdata___10.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___10, "6b: processed %d records\n", plain_counter);
  } else {
  }
  rc = verify_handle((char *)"6b", llh, plain_counter);
  if (rc != 0) {
    tmp___13 = cfs_cdebug_show(1U, 32U);
    if (tmp___13 != 0) {
      msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___11.msg_fn = "llog_test_6";
      msgdata___11.msg_subsys = 32;
      msgdata___11.msg_line = 681;
      msgdata___11.msg_mask = 0;
      msgdata___11.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___11.msg_mask = 1;
      libcfs_log_goto(& msgdata___11, "parse_out", (long )rc);
    } else {
    }
    goto parse_out;
  } else {
  }
  plain_counter = 1;
  tmp___14 = cfs_cdebug_show(1024U, 32U);
  if (tmp___14 != 0) {
    msgdata___12.msg_subsys = 32;
    msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___12.msg_fn = "llog_test_6";
    msgdata___12.msg_line = 684;
    msgdata___12.msg_cdls = & cdls___7;
    msgdata___12.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___12, "6c: process log %s reversely using client API\n",
                     name);
  } else {
  }
  rc = llog_reverse_process(env, llh, & plain_print_cb, (void *)0, (void *)0);
  if (rc != 0) {
    tmp___15 = cfs_cdebug_show(131072U, 32U);
    if (tmp___15 != 0) {
      msgdata___13.msg_subsys = 32;
      msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___13.msg_fn = "llog_test_6";
      msgdata___13.msg_line = 687;
      msgdata___13.msg_cdls = & cdls___8;
      msgdata___13.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___13, "6c: llog_reverse_process failed %d\n", rc);
    } else {
    }
  } else {
  }
  tmp___16 = cfs_cdebug_show(1024U, 32U);
  if (tmp___16 != 0) {
    msgdata___14.msg_subsys = 32;
    msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___14.msg_fn = "llog_test_6";
    msgdata___14.msg_line = 688;
    msgdata___14.msg_cdls = & cdls___9;
    msgdata___14.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___14, "6c: processed %d records\n", plain_counter);
  } else {
  }
  rc = verify_handle((char *)"6c", llh, plain_counter);
  if (rc != 0) {
    tmp___17 = cfs_cdebug_show(1U, 32U);
    if (tmp___17 != 0) {
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_6";
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_line = 692;
      msgdata___15.msg_mask = 0;
      msgdata___15.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___15.msg_mask = 1;
      libcfs_log_goto(& msgdata___15, "parse_out", (long )rc);
    } else {
    }
    goto parse_out;
  } else {
  }
  parse_out:
  rc2 = llog_close(env, llh);
  if (rc2 != 0) {
    tmp___18 = cfs_cdebug_show(131072U, 32U);
    if (tmp___18 != 0) {
      msgdata___16.msg_subsys = 32;
      msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___16.msg_fn = "llog_test_6";
      msgdata___16.msg_line = 697;
      msgdata___16.msg_cdls = & cdls___10;
      msgdata___16.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___16, "6: llog_close failed: rc = %d\n", rc2);
    } else {
    }
    if (rc == 0) {
      rc = rc2;
    } else {
    }
  } else {
  }
  nctxt_put:
  llog_ctxt_put(nctxt);
  ctxt_release:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static union __anonunion_llog_records_311 llog_records ;
static int test_7_print_cb(struct lu_env const *env , struct llog_handle *llh ,
                           struct llog_rec_hdr *rec , void *data )
{
  struct lu_fid fid ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  {
  fid.f_seq = 0ULL;
  fid.f_oid = 0U;
  fid.f_ver = 0U;
  logid_to_fid(& llh->lgh_id, & fid);
  tmp = cfs_cdebug_show(4096U, 32U);
  if (tmp != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "test_7_print_cb";
    msgdata.msg_line = 727;
    msgdata.msg_cdls = (struct cfs_debug_limit_state *)0;
    msgdata.msg_mask = 4096;
    libcfs_debug_msg(& msgdata, "record type %#x at index %d in log [%#llx:0x%x:0x%x]\n",
                     rec->lrh_type, rec->lrh_index, fid.f_seq, fid.f_oid, fid.f_ver);
  } else {
  }
  plain_counter = plain_counter + 1;
  return (0);
}
}
static int test_7_cancel_cb(struct lu_env const *env , struct llog_handle *llh ,
                            struct llog_rec_hdr *rec , void *data )
{
  {
  plain_counter = plain_counter + 1;
  return (2);
}
}
static int llog_test_7_sub(struct lu_env const *env , struct llog_ctxt *ctxt )
{
  struct llog_handle *llh ;
  int rc ;
  int i ;
  int process_count ;
  int num_recs ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___1 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___2 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___3 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___4 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___6 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___8 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___9 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___10 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___11 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___12 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___13 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___14 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___15 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___16 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___17 ;
  int tmp___17 ;
  struct libcfs_debug_msg_data msgdata___18 ;
  int tmp___18 ;
  int tmp___19 ;
  {
  rc = 0;
  num_recs = 0;
  rc = llog_open_create(env, ctxt, & llh, (struct llog_logid *)0, (char *)0);
  if (rc != 0) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "llog_test_7_sub";
      msgdata.msg_line = 749;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "7_sub: create log failed\n");
    } else {
    }
    return (rc);
  } else {
  }
  rc = llog_init_handle(env, llh, 5, & uuid);
  if (rc != 0) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_7_sub";
      msgdata___0.msg_line = 757;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "7_sub: can\'t init llog handle: %d\n", rc);
    } else {
    }
    tmp___1 = cfs_cdebug_show(1U, 32U);
    if (tmp___1 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_7_sub";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 758;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  i = 0;
  goto ldv_64629;
  ldv_64628:
  rc = llog_write(env, llh, & llog_records.lrh, (struct llog_cookie *)0, 0, (void *)0,
                  -1);
  if (rc == -28) {
    goto ldv_64624;
  } else
  if (rc < 0) {
    tmp___2 = cfs_cdebug_show(131072U, 32U);
    if (tmp___2 != 0) {
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_7_sub";
      msgdata___2.msg_line = 767;
      msgdata___2.msg_cdls = & cdls___1;
      msgdata___2.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___2, "7_sub: write recs failed at #%d: %d\n", i + 1,
                       rc);
    } else {
    }
    tmp___3 = cfs_cdebug_show(1U, 32U);
    if (tmp___3 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_7_sub";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 768;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  num_recs = num_recs + 1;
  i = i + 1;
  ldv_64629: ;
  if ((unsigned int )i < (unsigned int )((unsigned long )((llh->lgh_hdr)->llh_hdr.lrh_len - (llh->lgh_hdr)->llh_bitmap_offset) - 8UL) * 8U) {
    goto ldv_64628;
  } else {
  }
  ldv_64624: ;
  if (rc != -28) {
    tmp___4 = cfs_cdebug_show(1024U, 32U);
    if (tmp___4 != 0) {
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_7_sub";
      msgdata___4.msg_line = 773;
      msgdata___4.msg_cdls = & cdls___2;
      msgdata___4.msg_mask = 1024;
      libcfs_debug_msg(& msgdata___4, "7_sub: write record more than BITMAP size!\n");
    } else {
    }
    tmp___5 = cfs_cdebug_show(1U, 32U);
    if (tmp___5 != 0) {
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_test_7_sub";
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_line = 774;
      msgdata___5.msg_mask = 0;
      msgdata___5.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___5.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___5, "out_close", -22L);
    } else {
      rc = -22;
    }
    goto out_close;
  } else {
  }
  rc = verify_handle((char *)"7_sub", llh, num_recs + 1);
  if (rc != 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_7_sub";
      msgdata___6.msg_line = 779;
      msgdata___6.msg_cdls = & cdls___3;
      msgdata___6.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___6, "7_sub: verify handle failed: %d\n", rc);
    } else {
    }
    tmp___7 = cfs_cdebug_show(1U, 32U);
    if (tmp___7 != 0) {
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_7_sub";
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_line = 780;
      msgdata___7.msg_mask = 0;
      msgdata___7.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___7.msg_mask = 1;
      libcfs_log_goto(& msgdata___7, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  if ((unsigned int )num_recs < (unsigned int )((unsigned long )((llh->lgh_hdr)->llh_hdr.lrh_len - (llh->lgh_hdr)->llh_bitmap_offset) - 8UL) * 8U - 1U) {
    tmp___8 = cfs_cdebug_show(1024U, 32U);
    if (tmp___8 != 0) {
      msgdata___8.msg_subsys = 32;
      msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___8.msg_fn = "llog_test_7_sub";
      msgdata___8.msg_line = 784;
      msgdata___8.msg_cdls = & cdls___4;
      msgdata___8.msg_mask = 1024;
      libcfs_debug_msg(& msgdata___8, "7_sub: records are not aligned, written %d from %u\n",
                       num_recs, (unsigned int )((unsigned long )((llh->lgh_hdr)->llh_hdr.lrh_len - (llh->lgh_hdr)->llh_bitmap_offset) - 8UL) * 8U - 1U);
    } else {
    }
  } else {
  }
  plain_counter = 0;
  rc = llog_process(env, llh, & test_7_print_cb, (void *)"test 7", (void *)0);
  if (rc != 0) {
    tmp___9 = cfs_cdebug_show(131072U, 32U);
    if (tmp___9 != 0) {
      msgdata___9.msg_subsys = 32;
      msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___9.msg_fn = "llog_test_7_sub";
      msgdata___9.msg_line = 789;
      msgdata___9.msg_cdls = & cdls___5;
      msgdata___9.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___9, "7_sub: llog process failed: %d\n", rc);
    } else {
    }
    tmp___10 = cfs_cdebug_show(1U, 32U);
    if (tmp___10 != 0) {
      msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___10.msg_fn = "llog_test_7_sub";
      msgdata___10.msg_subsys = 32;
      msgdata___10.msg_line = 790;
      msgdata___10.msg_mask = 0;
      msgdata___10.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___10.msg_mask = 1;
      libcfs_log_goto(& msgdata___10, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  process_count = plain_counter;
  if (process_count != num_recs) {
    tmp___11 = cfs_cdebug_show(131072U, 32U);
    if (tmp___11 != 0) {
      msgdata___11.msg_subsys = 32;
      msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___11.msg_fn = "llog_test_7_sub";
      msgdata___11.msg_line = 795;
      msgdata___11.msg_cdls = & cdls___6;
      msgdata___11.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___11, "7_sub: processed %d records from %d total\n",
                       process_count, num_recs);
    } else {
    }
    tmp___12 = cfs_cdebug_show(1U, 32U);
    if (tmp___12 != 0) {
      msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___12.msg_fn = "llog_test_7_sub";
      msgdata___12.msg_subsys = 32;
      msgdata___12.msg_line = 796;
      msgdata___12.msg_mask = 0;
      msgdata___12.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___12.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___12, "out_close", -22L);
    } else {
      rc = -22;
    }
    goto out_close;
  } else {
  }
  plain_counter = 0;
  rc = llog_reverse_process(env, llh, & test_7_cancel_cb, (void *)"test 7", (void *)0);
  if (rc != 0) {
    tmp___13 = cfs_cdebug_show(131072U, 32U);
    if (tmp___13 != 0) {
      msgdata___13.msg_subsys = 32;
      msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___13.msg_fn = "llog_test_7_sub";
      msgdata___13.msg_line = 802;
      msgdata___13.msg_cdls = & cdls___7;
      msgdata___13.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___13, "7_sub: reverse llog process failed: %d\n",
                       rc);
    } else {
    }
    tmp___14 = cfs_cdebug_show(1U, 32U);
    if (tmp___14 != 0) {
      msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___14.msg_fn = "llog_test_7_sub";
      msgdata___14.msg_subsys = 32;
      msgdata___14.msg_line = 803;
      msgdata___14.msg_mask = 0;
      msgdata___14.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___14.msg_mask = 1;
      libcfs_log_goto(& msgdata___14, "out_close", (long )rc);
    } else {
    }
    goto out_close;
  } else {
  }
  if (process_count != plain_counter) {
    tmp___15 = cfs_cdebug_show(131072U, 32U);
    if (tmp___15 != 0) {
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_7_sub";
      msgdata___15.msg_line = 808;
      msgdata___15.msg_cdls = & cdls___8;
      msgdata___15.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___15, "7_sub: Reverse/direct processing found differentnumber of records: %d/%d\n",
                       plain_counter, process_count);
    } else {
    }
    tmp___16 = cfs_cdebug_show(1U, 32U);
    if (tmp___16 != 0) {
      msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___16.msg_fn = "llog_test_7_sub";
      msgdata___16.msg_subsys = 32;
      msgdata___16.msg_line = 809;
      msgdata___16.msg_mask = 0;
      msgdata___16.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___16.msg_mask = 1;
      rc = -22;
      libcfs_log_goto(& msgdata___16, "out_close", -22L);
    } else {
      rc = -22;
    }
    goto out_close;
  } else {
  }
  tmp___19 = llog_exist(llh);
  if (tmp___19 != 0) {
    tmp___17 = cfs_cdebug_show(131072U, 32U);
    if (tmp___17 != 0) {
      msgdata___17.msg_subsys = 32;
      msgdata___17.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___17.msg_fn = "llog_test_7_sub";
      msgdata___17.msg_line = 812;
      msgdata___17.msg_cdls = & cdls___9;
      msgdata___17.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___17, "7_sub: llog exists but should be zapped\n");
    } else {
    }
    tmp___18 = cfs_cdebug_show(1U, 32U);
    if (tmp___18 != 0) {
      msgdata___18.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___18.msg_fn = "llog_test_7_sub";
      msgdata___18.msg_subsys = 32;
      msgdata___18.msg_line = 813;
      msgdata___18.msg_mask = 0;
      msgdata___18.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___18.msg_mask = 1;
      rc = -17;
      libcfs_log_goto(& msgdata___18, "out_close", -17L);
    } else {
      rc = -17;
    }
    goto out_close;
  } else {
  }
  rc = verify_handle((char *)"7_sub", llh, 1);
  out_close: ;
  if (rc != 0) {
    llog_destroy(env, llh);
  } else {
  }
  llog_close(env, llh);
  return (rc);
}
}
static int llog_test_7(struct lu_env const *env , struct obd_device *obd )
{
  struct llog_ctxt *ctxt ;
  int rc ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___1 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___2 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___4 ;
  struct cfs_debug_limit_state cdls___3 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___5 ;
  struct cfs_debug_limit_state cdls___4 ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___6 ;
  struct libcfs_debug_msg_data msgdata___7 ;
  int tmp___7 ;
  struct cfs_debug_limit_state cdls___5 ;
  struct libcfs_debug_msg_data msgdata___8 ;
  int tmp___8 ;
  struct cfs_debug_limit_state cdls___6 ;
  struct libcfs_debug_msg_data msgdata___9 ;
  int tmp___9 ;
  struct libcfs_debug_msg_data msgdata___10 ;
  int tmp___10 ;
  struct cfs_debug_limit_state cdls___7 ;
  struct libcfs_debug_msg_data msgdata___11 ;
  int tmp___11 ;
  struct cfs_debug_limit_state cdls___8 ;
  struct libcfs_debug_msg_data msgdata___12 ;
  int tmp___12 ;
  struct libcfs_debug_msg_data msgdata___13 ;
  int tmp___13 ;
  struct cfs_debug_limit_state cdls___9 ;
  struct libcfs_debug_msg_data msgdata___14 ;
  int tmp___14 ;
  struct cfs_debug_limit_state cdls___10 ;
  struct libcfs_debug_msg_data msgdata___15 ;
  int tmp___15 ;
  struct libcfs_debug_msg_data msgdata___16 ;
  int tmp___16 ;
  struct cfs_debug_limit_state cdls___11 ;
  struct libcfs_debug_msg_data msgdata___17 ;
  int tmp___17 ;
  struct cfs_debug_limit_state cdls___12 ;
  struct libcfs_debug_msg_data msgdata___18 ;
  int tmp___18 ;
  struct libcfs_debug_msg_data msgdata___19 ;
  int tmp___19 ;
  {
  ctxt = llog_get_context(obd, 8);
  tmp = cfs_cdebug_show(1024U, 32U);
  if (tmp != 0) {
    msgdata.msg_subsys = 32;
    msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata.msg_fn = "llog_test_7";
    msgdata.msg_line = 832;
    msgdata.msg_cdls = & cdls;
    msgdata.msg_mask = 1024;
    libcfs_debug_msg(& msgdata, "7a: test llog_logid_rec\n");
  } else {
  }
  llog_records.llr.lid_hdr.lrh_len = 64U;
  llog_records.llr.lid_tail.lrt_len = 64U;
  llog_records.llr.lid_hdr.lrh_type = 275010875U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_7";
      msgdata___0.msg_line = 839;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "7a: llog_logid_rec test failed\n");
    } else {
    }
    tmp___1 = cfs_cdebug_show(1U, 32U);
    if (tmp___1 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_7";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 840;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___2 = cfs_cdebug_show(1024U, 32U);
  if (tmp___2 != 0) {
    msgdata___2.msg_subsys = 32;
    msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___2.msg_fn = "llog_test_7";
    msgdata___2.msg_line = 843;
    msgdata___2.msg_cdls = & cdls___1;
    msgdata___2.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___2, "7b: test llog_unlink64_rec\n");
  } else {
  }
  llog_records.lur.lur_hdr.lrh_len = 64U;
  llog_records.lur.lur_tail.lrt_len = 64U;
  llog_records.lur.lur_hdr.lrh_type = 275325956U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_test_7";
      msgdata___3.msg_line = 850;
      msgdata___3.msg_cdls = & cdls___2;
      msgdata___3.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___3, "7b: llog_unlink_rec test failed\n");
    } else {
    }
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_7";
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_line = 851;
      msgdata___4.msg_mask = 0;
      msgdata___4.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___4.msg_mask = 1;
      libcfs_log_goto(& msgdata___4, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___5 = cfs_cdebug_show(1024U, 32U);
  if (tmp___5 != 0) {
    msgdata___5.msg_subsys = 32;
    msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___5.msg_fn = "llog_test_7";
    msgdata___5.msg_line = 854;
    msgdata___5.msg_cdls = & cdls___3;
    msgdata___5.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___5, "7c: test llog_setattr64_rec\n");
  } else {
  }
  llog_records.lsr64.lsr_hdr.lrh_len = 64U;
  llog_records.lsr64.lsr_tail.lrt_len = 64U;
  llog_records.lsr64.lsr_hdr.lrh_type = 275325953U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___6 = cfs_cdebug_show(131072U, 32U);
    if (tmp___6 != 0) {
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_test_7";
      msgdata___6.msg_line = 861;
      msgdata___6.msg_cdls = & cdls___4;
      msgdata___6.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___6, "7c: llog_setattr64_rec test failed\n");
    } else {
    }
    tmp___7 = cfs_cdebug_show(1U, 32U);
    if (tmp___7 != 0) {
      msgdata___7.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___7.msg_fn = "llog_test_7";
      msgdata___7.msg_subsys = 32;
      msgdata___7.msg_line = 862;
      msgdata___7.msg_mask = 0;
      msgdata___7.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___7.msg_mask = 1;
      libcfs_log_goto(& msgdata___7, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___8 = cfs_cdebug_show(1024U, 32U);
  if (tmp___8 != 0) {
    msgdata___8.msg_subsys = 32;
    msgdata___8.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___8.msg_fn = "llog_test_7";
    msgdata___8.msg_line = 865;
    msgdata___8.msg_cdls = & cdls___5;
    msgdata___8.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___8, "7d: test llog_size_change_rec\n");
  } else {
  }
  llog_records.lscr.lsc_hdr.lrh_len = 64U;
  llog_records.lscr.lsc_tail.lrt_len = 64U;
  llog_records.lscr.lsc_hdr.lrh_type = 274730752U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___9 = cfs_cdebug_show(131072U, 32U);
    if (tmp___9 != 0) {
      msgdata___9.msg_subsys = 32;
      msgdata___9.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___9.msg_fn = "llog_test_7";
      msgdata___9.msg_line = 872;
      msgdata___9.msg_cdls = & cdls___6;
      msgdata___9.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___9, "7d: llog_size_change_rec test failed\n");
    } else {
    }
    tmp___10 = cfs_cdebug_show(1U, 32U);
    if (tmp___10 != 0) {
      msgdata___10.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___10.msg_fn = "llog_test_7";
      msgdata___10.msg_subsys = 32;
      msgdata___10.msg_line = 873;
      msgdata___10.msg_mask = 0;
      msgdata___10.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___10.msg_mask = 1;
      libcfs_log_goto(& msgdata___10, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___11 = cfs_cdebug_show(1024U, 32U);
  if (tmp___11 != 0) {
    msgdata___11.msg_subsys = 32;
    msgdata___11.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___11.msg_fn = "llog_test_7";
    msgdata___11.msg_line = 876;
    msgdata___11.msg_cdls = & cdls___7;
    msgdata___11.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___11, "7e: test llog_changelog_rec\n");
  } else {
  }
  llog_records.lcr.cr_hdr.lrh_len = 88U;
  llog_records.lcr.cr_tail.lrt_len = 88U;
  llog_records.lcr.cr_hdr.lrh_type = 275120128U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___12 = cfs_cdebug_show(131072U, 32U);
    if (tmp___12 != 0) {
      msgdata___12.msg_subsys = 32;
      msgdata___12.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___12.msg_fn = "llog_test_7";
      msgdata___12.msg_line = 883;
      msgdata___12.msg_cdls = & cdls___8;
      msgdata___12.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___12, "7e: llog_changelog_rec test failed\n");
    } else {
    }
    tmp___13 = cfs_cdebug_show(1U, 32U);
    if (tmp___13 != 0) {
      msgdata___13.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___13.msg_fn = "llog_test_7";
      msgdata___13.msg_subsys = 32;
      msgdata___13.msg_line = 884;
      msgdata___13.msg_mask = 0;
      msgdata___13.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___13.msg_mask = 1;
      libcfs_log_goto(& msgdata___13, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___14 = cfs_cdebug_show(1024U, 32U);
  if (tmp___14 != 0) {
    msgdata___14.msg_subsys = 32;
    msgdata___14.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___14.msg_fn = "llog_test_7";
    msgdata___14.msg_line = 887;
    msgdata___14.msg_cdls = & cdls___9;
    msgdata___14.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___14, "7f: test llog_changelog_user_rec\n");
  } else {
  }
  llog_records.lcur.cur_hdr.lrh_len = 40U;
  llog_records.lcur.cur_tail.lrt_len = 40U;
  llog_records.lcur.cur_hdr.lrh_type = 275185664U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___15 = cfs_cdebug_show(131072U, 32U);
    if (tmp___15 != 0) {
      msgdata___15.msg_subsys = 32;
      msgdata___15.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___15.msg_fn = "llog_test_7";
      msgdata___15.msg_line = 894;
      msgdata___15.msg_cdls = & cdls___10;
      msgdata___15.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___15, "7f: llog_changelog_user_rec test failed\n");
    } else {
    }
    tmp___16 = cfs_cdebug_show(1U, 32U);
    if (tmp___16 != 0) {
      msgdata___16.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___16.msg_fn = "llog_test_7";
      msgdata___16.msg_subsys = 32;
      msgdata___16.msg_line = 895;
      msgdata___16.msg_mask = 0;
      msgdata___16.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___16.msg_mask = 1;
      libcfs_log_goto(& msgdata___16, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  tmp___17 = cfs_cdebug_show(1024U, 32U);
  if (tmp___17 != 0) {
    msgdata___17.msg_subsys = 32;
    msgdata___17.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___17.msg_fn = "llog_test_7";
    msgdata___17.msg_line = 898;
    msgdata___17.msg_cdls = & cdls___11;
    msgdata___17.msg_mask = 1024;
    libcfs_debug_msg(& msgdata___17, "7g: test llog_gen_rec\n");
  } else {
  }
  llog_records.lgr.lgr_hdr.lrh_len = 64U;
  llog_records.lgr.lgr_tail.lrt_len = 64U;
  llog_records.lgr.lgr_hdr.lrh_type = 274989056U;
  rc = llog_test_7_sub(env, ctxt);
  if (rc != 0) {
    tmp___18 = cfs_cdebug_show(131072U, 32U);
    if (tmp___18 != 0) {
      msgdata___18.msg_subsys = 32;
      msgdata___18.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___18.msg_fn = "llog_test_7";
      msgdata___18.msg_line = 905;
      msgdata___18.msg_cdls = & cdls___12;
      msgdata___18.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___18, "7g: llog_size_change_rec test failed\n");
    } else {
    }
    tmp___19 = cfs_cdebug_show(1U, 32U);
    if (tmp___19 != 0) {
      msgdata___19.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___19.msg_fn = "llog_test_7";
      msgdata___19.msg_subsys = 32;
      msgdata___19.msg_line = 906;
      msgdata___19.msg_mask = 0;
      msgdata___19.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___19.msg_mask = 1;
      libcfs_log_goto(& msgdata___19, "out", (long )rc);
    } else {
    }
    goto out;
  } else {
  }
  out:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static int llog_run_tests(struct lu_env const *env , struct obd_device *obd )
{
  struct llog_handle *llh ;
  struct llog_ctxt *ctxt ;
  int rc ;
  int err ;
  char name[10U] ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  int tmp___2 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  int tmp___4 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___5 ;
  struct libcfs_debug_msg_data msgdata___5 ;
  int tmp___6 ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata___6 ;
  int tmp___7 ;
  {
  llh = (struct llog_handle *)0;
  ctxt = llog_get_context(obd, 8);
  tmp = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                         0L);
  if (tmp != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_run_tests";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 924;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  sprintf((char *)(& name), "%x", llog_test_rand);
  rc = llog_test_1(env, obd, (char *)(& name));
  if (rc != 0) {
    tmp___0 = cfs_cdebug_show(1U, 32U);
    if (tmp___0 != 0) {
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "llog_run_tests";
      msgdata.msg_subsys = 32;
      msgdata.msg_line = 930;
      msgdata.msg_mask = 0;
      msgdata.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata.msg_mask = 1;
      libcfs_log_goto(& msgdata, "cleanup_ctxt", (long )rc);
    } else {
    }
    goto cleanup_ctxt;
  } else {
  }
  rc = llog_test_2(env, obd, (char *)(& name), & llh);
  if (rc != 0) {
    tmp___1 = cfs_cdebug_show(1U, 32U);
    if (tmp___1 != 0) {
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_run_tests";
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_line = 934;
      msgdata___0.msg_mask = 0;
      msgdata___0.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___0.msg_mask = 1;
      libcfs_log_goto(& msgdata___0, "cleanup_ctxt", (long )rc);
    } else {
    }
    goto cleanup_ctxt;
  } else {
  }
  rc = llog_test_3(env, obd, llh);
  if (rc != 0) {
    tmp___2 = cfs_cdebug_show(1U, 32U);
    if (tmp___2 != 0) {
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_run_tests";
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_line = 938;
      msgdata___1.msg_mask = 0;
      msgdata___1.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___1.msg_mask = 1;
      libcfs_log_goto(& msgdata___1, "cleanup", (long )rc);
    } else {
    }
    goto cleanup;
  } else {
  }
  rc = llog_test_4(env, obd);
  if (rc != 0) {
    tmp___3 = cfs_cdebug_show(1U, 32U);
    if (tmp___3 != 0) {
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_run_tests";
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_line = 942;
      msgdata___2.msg_mask = 0;
      msgdata___2.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___2.msg_mask = 1;
      libcfs_log_goto(& msgdata___2, "cleanup", (long )rc);
    } else {
    }
    goto cleanup;
  } else {
  }
  rc = llog_test_5(env, obd);
  if (rc != 0) {
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___3.msg_fn = "llog_run_tests";
      msgdata___3.msg_subsys = 32;
      msgdata___3.msg_line = 946;
      msgdata___3.msg_mask = 0;
      msgdata___3.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___3.msg_mask = 1;
      libcfs_log_goto(& msgdata___3, "cleanup", (long )rc);
    } else {
    }
    goto cleanup;
  } else {
  }
  rc = llog_test_6(env, obd, (char *)(& name));
  if (rc != 0) {
    tmp___5 = cfs_cdebug_show(1U, 32U);
    if (tmp___5 != 0) {
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_run_tests";
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_line = 950;
      msgdata___4.msg_mask = 0;
      msgdata___4.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___4.msg_mask = 1;
      libcfs_log_goto(& msgdata___4, "cleanup", (long )rc);
    } else {
    }
    goto cleanup;
  } else {
  }
  rc = llog_test_7(env, obd);
  if (rc != 0) {
    tmp___6 = cfs_cdebug_show(1U, 32U);
    if (tmp___6 != 0) {
      msgdata___5.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___5.msg_fn = "llog_run_tests";
      msgdata___5.msg_subsys = 32;
      msgdata___5.msg_line = 954;
      msgdata___5.msg_mask = 0;
      msgdata___5.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___5.msg_mask = 1;
      libcfs_log_goto(& msgdata___5, "cleanup", (long )rc);
    } else {
    }
    goto cleanup;
  } else {
  }
  cleanup:
  err = llog_destroy(env, llh);
  if (err != 0) {
    tmp___7 = cfs_cdebug_show(131072U, 32U);
    if (tmp___7 != 0) {
      msgdata___6.msg_subsys = 32;
      msgdata___6.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___6.msg_fn = "llog_run_tests";
      msgdata___6.msg_line = 959;
      msgdata___6.msg_cdls = & cdls;
      msgdata___6.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___6, "cleanup: llog_destroy failed: %d\n", err);
    } else {
    }
  } else {
  }
  llog_close(env, llh);
  if (rc == 0) {
    rc = err;
  } else {
  }
  cleanup_ctxt:
  llog_ctxt_put(ctxt);
  return (rc);
}
}
static struct lprocfs_vars lprocfs_llog_test_obd_vars[1U] = { {(char const *)0, 0, 0, (unsigned short)0}};
static struct lprocfs_vars lprocfs_llog_test_module_vars[1U] = { {(char const *)0, 0, 0, (unsigned short)0}};
static void lprocfs_llog_test_init_vars(struct lprocfs_static_vars *lvars )
{
  {
  lvars->module_vars = (struct lprocfs_vars *)(& lprocfs_llog_test_module_vars);
  lvars->obd_vars = (struct lprocfs_vars *)(& lprocfs_llog_test_obd_vars);
  return;
}
}
static int llog_test_cleanup(struct obd_device *obd )
{
  struct obd_device *tgt ;
  struct lu_env env ;
  int rc ;
  struct llog_ctxt *tmp ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp___0 ;
  {
  rc = lu_env_init(& env, 192U);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tgt = (obd->obd_lvfs_ctxt.dt)->dd_lu_dev.ld_obd;
  tmp = llog_get_context(tgt, 8);
  rc = llog_cleanup((struct lu_env const *)(& env), tmp);
  if (rc != 0) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "llog_test_cleanup";
      msgdata.msg_line = 995;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "failed to llog_test_llog_finish: %d\n", rc);
    } else {
    }
  } else {
  }
  lu_env_fini(& env);
  return (rc);
}
}
static int llog_test_setup(struct obd_device *obd , struct lustre_cfg *lcfg )
{
  struct obd_device *tgt ;
  struct llog_ctxt *ctxt ;
  struct dt_object *o ;
  struct lu_env env ;
  struct lu_context test_session ;
  int rc ;
  struct cfs_debug_limit_state cdls ;
  struct libcfs_debug_msg_data msgdata ;
  int tmp ;
  struct cfs_debug_limit_state cdls___0 ;
  struct libcfs_debug_msg_data msgdata___0 ;
  int tmp___0 ;
  char *tmp___1 ;
  struct cfs_debug_limit_state cdls___1 ;
  struct libcfs_debug_msg_data msgdata___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  struct libcfs_debug_msg_data msgdata___2 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  struct cfs_debug_limit_state cdls___2 ;
  struct libcfs_debug_msg_data msgdata___3 ;
  char *tmp___6 ;
  int tmp___7 ;
  struct libcfs_debug_msg_data msgdata___4 ;
  int tmp___8 ;
  struct libcfs_debug_msg_data __msg_data ;
  long tmp___9 ;
  struct libcfs_debug_msg_data __msg_data___0 ;
  long tmp___10 ;
  unsigned int tmp___11 ;
  {
  if (lcfg->lcfg_bufcount <= 1U) {
    tmp = cfs_cdebug_show(131072U, 32U);
    if (tmp != 0) {
      msgdata.msg_subsys = 32;
      msgdata.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata.msg_fn = "llog_test_setup";
      msgdata.msg_line = 1010;
      msgdata.msg_cdls = & cdls;
      msgdata.msg_mask = 131072;
      libcfs_debug_msg(& msgdata, "requires a TARGET OBD name\n");
    } else {
    }
    return (-22);
  } else {
  }
  if (lcfg->lcfg_buflens[1] == 0U) {
    tmp___0 = cfs_cdebug_show(131072U, 32U);
    if (tmp___0 != 0) {
      msgdata___0.msg_subsys = 32;
      msgdata___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___0.msg_fn = "llog_test_setup";
      msgdata___0.msg_line = 1015;
      msgdata___0.msg_cdls = & cdls___0;
      msgdata___0.msg_mask = 131072;
      libcfs_debug_msg(& msgdata___0, "requires a TARGET OBD name\n");
    } else {
    }
    return (-22);
  } else {
  }
  tmp___1 = lustre_cfg_string(lcfg, 1);
  tgt = class_name2obd((char const *)tmp___1);
  if (((unsigned long )tgt == (unsigned long )((struct obd_device *)0) || (unsigned int )*((unsigned char *)tgt + 196UL) == 0U) || (unsigned int )*((unsigned char *)tgt + 196UL) == 0U) {
    tmp___3 = cfs_cdebug_show(131072U, 32U);
    if (tmp___3 != 0) {
      msgdata___1.msg_subsys = 32;
      msgdata___1.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___1.msg_fn = "llog_test_setup";
      msgdata___1.msg_line = 1023;
      msgdata___1.msg_cdls = & cdls___1;
      msgdata___1.msg_mask = 131072;
      tmp___2 = lustre_cfg_string(lcfg, 1);
      libcfs_debug_msg(& msgdata___1, "target device not attached or not set up (%s)\n",
                       tmp___2);
    } else {
    }
    return (-22);
  } else {
  }
  rc = lu_env_init(& env, 192U);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = lu_context_init(& test_session, 16U);
  if (rc != 0) {
    tmp___4 = cfs_cdebug_show(1U, 32U);
    if (tmp___4 != 0) {
      msgdata___2.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___2.msg_fn = "llog_test_setup";
      msgdata___2.msg_subsys = 32;
      msgdata___2.msg_line = 1033;
      msgdata___2.msg_mask = 0;
      msgdata___2.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___2.msg_mask = 1;
      libcfs_log_goto(& msgdata___2, "cleanup_env", (long )rc);
    } else {
    }
    goto cleanup_env;
  } else {
  }
  tmp___5 = get_current();
  test_session.lc_thread = (struct ptlrpc_thread *)tmp___5;
  lu_context_enter(& test_session);
  env.le_ses = & test_session;
  tmp___7 = cfs_cdebug_show(1024U, 32U);
  if (tmp___7 != 0) {
    msgdata___3.msg_subsys = 32;
    msgdata___3.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    msgdata___3.msg_fn = "llog_test_setup";
    msgdata___3.msg_line = 1039;
    msgdata___3.msg_cdls = & cdls___2;
    msgdata___3.msg_mask = 1024;
    tmp___6 = lustre_cfg_string(lcfg, 1);
    libcfs_debug_msg(& msgdata___3, "Setup llog-test device over %s device\n", tmp___6);
  } else {
  }
  obd->obd_lvfs_ctxt.magic = 3237998250U;
  obd->obd_lvfs_ctxt.dt = lu2dt_dev(tgt->obd_lu_dev);
  rc = llog_setup((struct lu_env const *)(& env), tgt, & tgt->obd_olg, 8, tgt, & llog_osd_ops);
  if (rc != 0) {
    tmp___8 = cfs_cdebug_show(1U, 32U);
    if (tmp___8 != 0) {
      msgdata___4.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
      msgdata___4.msg_fn = "llog_test_setup";
      msgdata___4.msg_subsys = 32;
      msgdata___4.msg_line = 1047;
      msgdata___4.msg_mask = 0;
      msgdata___4.msg_cdls = (struct cfs_debug_limit_state *)0;
      msgdata___4.msg_mask = 1;
      libcfs_log_goto(& msgdata___4, "cleanup_session", (long )rc);
    } else {
    }
    goto cleanup_session;
  } else {
  }
  ctxt = llog_get_context(tgt, 0);
  tmp___9 = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                             0L);
  if (tmp___9 != 0L) {
    __msg_data.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data.msg_fn = "llog_test_setup";
    __msg_data.msg_subsys = 32;
    __msg_data.msg_line = 1051;
    __msg_data.msg_mask = 0;
    __msg_data.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data);
  } else {
  }
  o = ctxt->loc_dir;
  llog_ctxt_put(ctxt);
  ctxt = llog_get_context(tgt, 8);
  tmp___10 = ldv__builtin_expect((unsigned long )ctxt == (unsigned long )((struct llog_ctxt *)0),
                              0L);
  if (tmp___10 != 0L) {
    __msg_data___0.msg_file = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/6729/dscv_tempdir/dscv/ri/43_2a/drivers/staging/lustre/lustre/obdclass/llog_test.o.c.prepared";
    __msg_data___0.msg_fn = "llog_test_setup";
    __msg_data___0.msg_subsys = 32;
    __msg_data___0.msg_line = 1056;
    __msg_data___0.msg_mask = 0;
    __msg_data___0.msg_cdls = (struct cfs_debug_limit_state *)0;
    __msg_data___0.msg_mask = 262144;
    libcfs_debug_msg(& __msg_data___0, "ASSERTION( %s ) failed: \n", (char *)"ctxt");
    lbug_with_loc(& __msg_data___0);
  } else {
  }
  ctxt->loc_dir = o;
  llog_ctxt_put(ctxt);
  tmp___11 = cfs_rand();
  llog_test_rand = (int )tmp___11;
  rc = llog_run_tests((struct lu_env const *)(& env), tgt);
  if (rc != 0) {
    llog_test_cleanup(obd);
  } else {
  }
  cleanup_session:
  lu_context_exit(& test_session);
  lu_context_fini(& test_session);
  cleanup_env:
  lu_env_fini(& env);
  return (rc);
}
}
static struct obd_ops llog_obd_ops =
     {& __this_module, 0, 0, 0, 0, 0, & llog_test_setup, 0, & llog_test_cleanup, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int llog_test_init(void)
{
  struct lprocfs_static_vars lvars ;
  int tmp ;
  {
  lvars = lvars;
  lprocfs_llog_test_init_vars(& lvars);
  tmp = class_register_type(& llog_obd_ops, (struct md_ops *)0, lvars.module_vars,
                            "llog_test", (struct lu_device_type *)0);
  return (tmp);
}
}
static void llog_test_exit(void)
{
  {
  class_unregister_type("llog_test");
  return;
}
}
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
void ldv_initialize_obd_ops_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(5744UL);
  llog_obd_ops_group0 = (struct obd_device *)tmp;
  return;
}
}
int main(void)
{
  struct lustre_cfg *ldvarg0 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg0 = (struct lustre_cfg *)tmp;
  ldv_initialize();
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_64809:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      llog_test_cleanup(llog_obd_ops_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_64798;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      llog_test_setup(llog_obd_ops_group0, ldvarg0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_64798;
    default:
    ldv_stop();
    }
    ldv_64798: ;
  } else {
  }
  goto ldv_64801;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      llog_test_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_64805;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = llog_test_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_1 = 1;
        ldv_initialize_obd_ops_1();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_64805;
    default:
    ldv_stop();
    }
    ldv_64805: ;
  } else {
  }
  goto ldv_64801;
  default:
  ldv_stop();
  }
  ldv_64801: ;
  goto ldv_64809;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_33(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vzalloc_34(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vzalloc(ldv_func_arg1);
  return ((void *)0);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
int __VERIFIER_nondet_int(void);
int __cfs_fail_check_set(__u32 arg0, __u32 arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __llog_ctxt_put(const struct lu_env *arg0, struct llog_ctxt *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int cfs_rand() {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
struct obd_device *class_find_client_obd(struct obd_uuid *arg0, const char *arg1, struct obd_uuid *arg2) {
  return (struct obd_device *)external_alloc();
}
void *external_alloc(void);
struct obd_device *class_name2obd(const char *arg0) {
  return (struct obd_device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int class_register_type(struct obd_ops *arg0, struct md_ops *arg1, struct lprocfs_vars *arg2, const char *arg3, struct lu_device_type *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int class_unregister_type(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void lbug_with_loc(struct libcfs_debug_msg_data *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int libcfs_debug_msg(struct libcfs_debug_msg_data *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void libcfs_log_goto(struct libcfs_debug_msg_data *arg0, const char *arg1, long_ptr_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int llog_cat_add(const struct lu_env *arg0, struct llog_handle *arg1, struct llog_rec_hdr *arg2, struct llog_cookie *arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_cat_cancel_records(const struct lu_env *arg0, struct llog_handle *arg1, int arg2, struct llog_cookie *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_cat_close(const struct lu_env *arg0, struct llog_handle *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_cat_process(const struct lu_env *arg0, struct llog_handle *arg1, int (*arg2)(const struct lu_env *, struct llog_handle *, struct llog_rec_hdr *, void *), void *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_cat_reverse_process(const struct lu_env *arg0, struct llog_handle *arg1, int (*arg2)(const struct lu_env *, struct llog_handle *, struct llog_rec_hdr *, void *), void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_cleanup(const struct lu_env *arg0, struct llog_ctxt *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_close(const struct lu_env *arg0, struct llog_handle *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_exist(struct llog_handle *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_init_handle(const struct lu_env *arg0, struct llog_handle *arg1, int arg2, struct obd_uuid *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_open(const struct lu_env *arg0, struct llog_ctxt *arg1, struct llog_handle **arg2, struct llog_logid *arg3, char *arg4, enum llog_open_param arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_open_create(const struct lu_env *arg0, struct llog_ctxt *arg1, struct llog_handle **arg2, struct llog_logid *arg3, char *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_process(const struct lu_env *arg0, struct llog_handle *arg1, int (*arg2)(const struct lu_env *, struct llog_handle *, struct llog_rec_hdr *, void *), void *arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_reverse_process(const struct lu_env *arg0, struct llog_handle *arg1, int (*arg2)(const struct lu_env *, struct llog_handle *, struct llog_rec_hdr *, void *), void *arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_setup(const struct lu_env *arg0, struct obd_device *arg1, struct obd_llog_group *arg2, int arg3, struct obd_device *arg4, struct llog_operations *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int llog_write(const struct lu_env *arg0, struct llog_handle *arg1, struct llog_rec_hdr *arg2, struct llog_cookie *arg3, int arg4, void *arg5, int arg6) {
  return __VERIFIER_nondet_int();
}
void lprocfs_counter_add(struct lprocfs_stats *arg0, int arg1, long arg2) {
  return;
}
void lprocfs_counter_sub(struct lprocfs_stats *arg0, int arg1, long arg2) {
  return;
}
void lu_context_enter(struct lu_context *arg0) {
  return;
}
void lu_context_exit(struct lu_context *arg0) {
  return;
}
void lu_context_fini(struct lu_context *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lu_context_init(struct lu_context *arg0, __u32 arg1) {
  return __VERIFIER_nondet_int();
}
void lu_env_fini(struct lu_env *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lu_env_init(struct lu_env *arg0, __u32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int obd_alloc_fail(const void *arg0, const char *arg1, const char *arg2, size_t arg3, const char *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
