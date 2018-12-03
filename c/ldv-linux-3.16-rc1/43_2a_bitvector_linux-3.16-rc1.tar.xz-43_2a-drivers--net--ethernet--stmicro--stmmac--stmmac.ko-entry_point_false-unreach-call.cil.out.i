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
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
struct pci_bus;
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
struct __anonstruct_ldv_13794_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13796_128 {
   struct __anonstruct_ldv_13794_129 ldv_13794 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13796_128 ldv_13796 ;
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
struct __anonstruct_ldv_14040_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14044_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14045_135 {
   struct __anonstruct_ldv_14040_136 ldv_14040 ;
   struct __anonstruct_ldv_14044_137 ldv_14044 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14045_135 ldv_14045 ;
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
union __anonunion_ldv_14154_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14160_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14170_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14172_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14170_144 ldv_14170 ;
   int units ;
};
struct __anonstruct_ldv_14174_142 {
   union __anonunion_ldv_14172_143 ldv_14172 ;
   atomic_t _count ;
};
union __anonunion_ldv_14176_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14174_142 ldv_14174 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14177_139 {
   union __anonunion_ldv_14160_140 ldv_14160 ;
   union __anonunion_ldv_14176_141 ldv_14176 ;
};
struct __anonstruct_ldv_14184_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14189_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14184_146 ldv_14184 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14195_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14154_138 ldv_14154 ;
   struct __anonstruct_ldv_14177_139 ldv_14177 ;
   union __anonunion_ldv_14189_145 ldv_14189 ;
   union __anonunion_ldv_14195_147 ldv_14195 ;
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
union __anonunion_ldv_14558_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14558_153 ldv_14558 ;
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
union __anonunion_ldv_14702_154 {
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
   union __anonunion_ldv_14702_154 ldv_14702 ;
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
union __anonunion_ldv_15377_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15377_155 ldv_15377 ;
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
struct __anonstruct_ldv_16003_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_16009_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_16010_156 {
   struct __anonstruct_ldv_16003_157 ldv_16003 ;
   struct __anonstruct_ldv_16009_158 ldv_16009 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_16010_156 ldv_16010 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct dma_desc;
struct ptp_clock_info;
struct ethtool_coalesce;
struct stmmac_extra_stats;
struct platform_device;
struct ethtool_cmd;
struct ethtool_eee;
struct ethtool_wolinfo;
struct ethtool_pauseparam;
struct clk;
struct device_node;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_18666_161 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_18666_161 ldv_18666 ;
   unsigned long nr_segs ;
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
enum ldv_16907 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_16907 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
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
struct kiocb;
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
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
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
struct user_struct;
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
struct __anonstruct_sigset_t_164 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_164 sigset_t;
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
struct __anonstruct__kill_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_167 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_170 {
   void *_addr ;
   short _addr_lsb ;
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
union __anonunion__sifields_165 {
   int _pad[28U] ;
   struct __anonstruct__kill_166 _kill ;
   struct __anonstruct__timer_167 _timer ;
   struct __anonstruct__rt_168 _rt ;
   struct __anonstruct__sigchld_169 _sigchld ;
   struct __anonstruct__sigfault_170 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_165 _sifields ;
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
union __anonunion_ldv_25923_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_25931_176 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_25944_178 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_25945_177 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_25944_178 ldv_25944 ;
};
union __anonunion_type_data_179 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_181 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_25960_180 {
   union __anonunion_payload_181 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_25923_175 ldv_25923 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_25931_176 ldv_25931 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_25945_177 ldv_25945 ;
   union __anonunion_type_data_179 type_data ;
   union __anonunion_ldv_25960_180 ldv_25960 ;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_184 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_184 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_27706_186 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_27707_185 {
   u64 v64 ;
   struct __anonstruct_ldv_27706_186 ldv_27706 ;
};
struct skb_mstamp {
   union __anonunion_ldv_27707_185 ldv_27707 ;
};
union __anonunion_ldv_27726_187 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_27742_189 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_27743_188 {
   __wsum csum ;
   struct __anonstruct_ldv_27742_189 ldv_27742 ;
};
union __anonunion_ldv_27782_190 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_27788_191 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_27726_187 ldv_27726 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_27743_188 ldv_27743 ;
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
   union __anonunion_ldv_27782_190 ldv_27782 ;
   __u32 secmark ;
   union __anonunion_ldv_27788_191 ldv_27788 ;
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
union __anonunion_data_192 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_192 data ;
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
struct __anonstruct_sync_serial_settings_193 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_193 sync_serial_settings;
struct __anonstruct_te1_settings_194 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_194 te1_settings;
struct __anonstruct_raw_hdlc_proto_195 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_195 raw_hdlc_proto;
struct __anonstruct_fr_proto_196 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_196 fr_proto;
struct __anonstruct_fr_proto_pvc_197 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_197 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_198 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_198 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_199 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_199 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_200 {
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
   union __anonunion_ifs_ifsu_200 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_201 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_202 {
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
   union __anonunion_ifr_ifrn_201 ifr_ifrn ;
   union __anonunion_ifr_ifru_202 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_29622_205 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_29623_204 {
   struct __anonstruct_ldv_29622_205 ldv_29622 ;
};
struct lockref {
   union __anonunion_ldv_29623_204 ldv_29623 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_29646_207 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_29648_206 {
   struct __anonstruct_ldv_29646_207 ldv_29646 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_29648_206 ldv_29648 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_208 {
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
   union __anonunion_d_u_208 d_u ;
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
struct __anonstruct_ldv_30009_210 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_30011_209 {
   struct __anonstruct_ldv_30009_210 ldv_30009 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_30011_209 ldv_30011 ;
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
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
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
struct __anonstruct_kprojid_t_211 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_211 kprojid_t;
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
union __anonunion_ldv_30536_212 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_30536_212 ldv_30536 ;
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
union __anonunion_ldv_30950_215 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_30970_216 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_30987_217 {
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
   union __anonunion_ldv_30950_215 ldv_30950 ;
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
   union __anonunion_ldv_30970_216 ldv_30970 ;
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
   union __anonunion_ldv_30987_217 ldv_30987 ;
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
union __anonunion_f_u_218 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_218 f_u ;
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
struct __anonstruct_afs_220 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_219 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_220 afs ;
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
   union __anonunion_fl_u_219 fl_u ;
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
union __anonunion_in6_u_237 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_237 in6_u ;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
struct __anonstruct_adj_list_246 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_247 {
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
union __anonunion_ldv_40581_248 {
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
   struct __anonstruct_adj_list_246 adj_list ;
   struct __anonstruct_all_adj_list_247 all_adj_list ;
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
   union __anonunion_ldv_40581_248 ldv_40581 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
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
union __anonunion_ki_obj_249 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_249 ki_obj ;
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
union __anonunion_ldv_42402_250 {
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
   union __anonunion_ldv_42402_250 ldv_42402 ;
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
union __anonunion_ldv_43895_255 {
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
   union __anonunion_ldv_43895_255 ldv_43895 ;
};
struct __anonstruct_socket_lock_t_256 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_256 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_44130_258 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_44131_257 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_44130_258 ldv_44130 ;
};
union __anonunion_ldv_44135_259 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_44141_261 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_44142_260 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_44141_261 ldv_44141 ;
};
union __anonunion_ldv_44151_262 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_44160_263 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_44131_257 ldv_44131 ;
   union __anonunion_ldv_44135_259 ldv_44135 ;
   union __anonunion_ldv_44142_260 ldv_44142 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_44151_262 ldv_44151 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_44160_263 ldv_44160 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_264 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_264 sk_backlog ;
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
union __anonunion_h_265 {
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
   union __anonunion_h_265 h ;
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
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct vlan_ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_vlan_proto ;
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct hwtstamp_config {
   int flags ;
   int tx_type ;
   int rx_filter ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct stmmac_mdio_bus_data {
   int (*phy_reset)(void * ) ;
   unsigned int phy_mask ;
   int *irqs ;
   int probed_phy_irq ;
};
struct stmmac_dma_cfg {
   int pbl ;
   int fixed_burst ;
   int mixed_burst ;
   int burst_len ;
};
struct plat_stmmacenet_data {
   char *phy_bus_name ;
   int bus_id ;
   int phy_addr ;
   int interface ;
   struct stmmac_mdio_bus_data *mdio_bus_data ;
   struct stmmac_dma_cfg *dma_cfg ;
   int clk_csr ;
   int has_gmac ;
   int enh_desc ;
   int tx_coe ;
   int rx_coe ;
   int bugged_jumbo ;
   int pmt ;
   int force_sf_dma_mode ;
   int force_thresh_dma_mode ;
   int riwt_off ;
   int max_speed ;
   int maxmtu ;
   void (*fix_mac_speed)(void * , unsigned int ) ;
   void (*bus_setup)(void * ) ;
   void *(*setup)(struct platform_device * ) ;
   void (*free)(struct platform_device * , void * ) ;
   int (*init)(struct platform_device * , void * ) ;
   void (*exit)(struct platform_device * , void * ) ;
   void *custom_cfg ;
   void *custom_data ;
   void *bsp_priv ;
};
enum ldv_33083 {
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
typedef enum ldv_33083 phy_interface_t;
enum ldv_33133 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_33133 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
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
   struct device_driver driver ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion_ldv_48062_276 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_48062_276 ldv_48062 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct __anonstruct_rx_278 {
   unsigned char payload_csum_error : 1 ;
   unsigned char crc_error : 1 ;
   unsigned char dribbling : 1 ;
   unsigned char mii_error : 1 ;
   unsigned char receive_watchdog : 1 ;
   unsigned char frame_type : 1 ;
   unsigned char collision : 1 ;
   unsigned char ipc_csum_error : 1 ;
   unsigned char last_descriptor : 1 ;
   unsigned char first_descriptor : 1 ;
   unsigned char vlan_tag : 1 ;
   unsigned char overflow_error : 1 ;
   unsigned char length_error : 1 ;
   unsigned char sa_filter_fail : 1 ;
   unsigned char descriptor_error : 1 ;
   unsigned char error_summary : 1 ;
   unsigned short frame_length : 14 ;
   unsigned char da_filter_fail : 1 ;
   unsigned char own : 1 ;
   unsigned short buffer1_size : 11 ;
   unsigned short buffer2_size : 11 ;
   unsigned char reserved1 : 2 ;
   unsigned char second_address_chained : 1 ;
   unsigned char end_ring : 1 ;
   unsigned char reserved2 : 5 ;
   unsigned char disable_ic : 1 ;
};
struct __anonstruct_erx_279 {
   unsigned char rx_mac_addr : 1 ;
   unsigned char crc_error : 1 ;
   unsigned char dribbling : 1 ;
   unsigned char error_gmii : 1 ;
   unsigned char receive_watchdog : 1 ;
   unsigned char frame_type : 1 ;
   unsigned char late_collision : 1 ;
   unsigned char ipc_csum_error : 1 ;
   unsigned char last_descriptor : 1 ;
   unsigned char first_descriptor : 1 ;
   unsigned char vlan_tag : 1 ;
   unsigned char overflow_error : 1 ;
   unsigned char length_error : 1 ;
   unsigned char sa_filter_fail : 1 ;
   unsigned char descriptor_error : 1 ;
   unsigned char error_summary : 1 ;
   unsigned short frame_length : 14 ;
   unsigned char da_filter_fail : 1 ;
   unsigned char own : 1 ;
   unsigned short buffer1_size : 13 ;
   unsigned char reserved1 : 1 ;
   unsigned char second_address_chained : 1 ;
   unsigned char end_ring : 1 ;
   unsigned short buffer2_size : 13 ;
   unsigned char reserved2 : 2 ;
   unsigned char disable_ic : 1 ;
};
struct __anonstruct_tx_280 {
   unsigned char deferred : 1 ;
   unsigned char underflow_error : 1 ;
   unsigned char excessive_deferral : 1 ;
   unsigned char collision_count : 4 ;
   unsigned char vlan_frame : 1 ;
   unsigned char excessive_collisions : 1 ;
   unsigned char late_collision : 1 ;
   unsigned char no_carrier : 1 ;
   unsigned char loss_carrier : 1 ;
   unsigned char payload_error : 1 ;
   unsigned char frame_flushed : 1 ;
   unsigned char jabber_timeout : 1 ;
   unsigned char error_summary : 1 ;
   unsigned char ip_header_error : 1 ;
   unsigned char time_stamp_status : 1 ;
   unsigned short reserved1 : 13 ;
   unsigned char own : 1 ;
   unsigned short buffer1_size : 11 ;
   unsigned short buffer2_size : 11 ;
   unsigned char time_stamp_enable : 1 ;
   unsigned char disable_padding : 1 ;
   unsigned char second_address_chained : 1 ;
   unsigned char end_ring : 1 ;
   unsigned char crc_disable : 1 ;
   unsigned char checksum_insertion : 2 ;
   unsigned char first_segment : 1 ;
   unsigned char last_segment : 1 ;
   unsigned char interrupt : 1 ;
};
struct __anonstruct_etx_281 {
   unsigned char deferred : 1 ;
   unsigned char underflow_error : 1 ;
   unsigned char excessive_deferral : 1 ;
   unsigned char collision_count : 4 ;
   unsigned char vlan_frame : 1 ;
   unsigned char excessive_collisions : 1 ;
   unsigned char late_collision : 1 ;
   unsigned char no_carrier : 1 ;
   unsigned char loss_carrier : 1 ;
   unsigned char payload_error : 1 ;
   unsigned char frame_flushed : 1 ;
   unsigned char jabber_timeout : 1 ;
   unsigned char error_summary : 1 ;
   unsigned char ip_header_error : 1 ;
   unsigned char time_stamp_status : 1 ;
   unsigned char reserved1 : 2 ;
   unsigned char second_address_chained : 1 ;
   unsigned char end_ring : 1 ;
   unsigned char checksum_insertion : 2 ;
   unsigned char reserved2 : 1 ;
   unsigned char time_stamp_enable : 1 ;
   unsigned char disable_padding : 1 ;
   unsigned char crc_disable : 1 ;
   unsigned char first_segment : 1 ;
   unsigned char last_segment : 1 ;
   unsigned char interrupt : 1 ;
   unsigned char own : 1 ;
   unsigned short buffer1_size : 13 ;
   unsigned char reserved3 : 3 ;
   unsigned short buffer2_size : 13 ;
   unsigned char reserved4 : 3 ;
};
union __anonunion_des01_277 {
   struct __anonstruct_rx_278 rx ;
   struct __anonstruct_erx_279 erx ;
   struct __anonstruct_tx_280 tx ;
   struct __anonstruct_etx_281 etx ;
};
struct dma_desc {
   union __anonunion_des01_277 des01 ;
   unsigned int des2 ;
   unsigned int des3 ;
};
struct __anonstruct_erx_283 {
   unsigned char ip_payload_type : 3 ;
   unsigned char ip_hdr_err : 1 ;
   unsigned char ip_payload_err : 1 ;
   unsigned char ip_csum_bypassed : 1 ;
   unsigned char ipv4_pkt_rcvd : 1 ;
   unsigned char ipv6_pkt_rcvd : 1 ;
   unsigned char msg_type : 4 ;
   unsigned char ptp_frame_type : 1 ;
   unsigned char ptp_ver : 1 ;
   unsigned char timestamp_dropped : 1 ;
   unsigned char reserved : 1 ;
   unsigned char av_pkt_rcvd : 1 ;
   unsigned char av_tagged_pkt_rcvd : 1 ;
   unsigned char vlan_tag_priority_val : 3 ;
   unsigned char reserved3 : 3 ;
   unsigned char l3_filter_match : 1 ;
   unsigned char l4_filter_match : 1 ;
   unsigned char l3_l4_filter_no_match : 2 ;
   unsigned char reserved4 : 4 ;
};
struct __anonstruct_etx_284 {
   u32 reserved ;
};
union __anonunion_des4_282 {
   struct __anonstruct_erx_283 erx ;
   struct __anonstruct_etx_284 etx ;
};
struct dma_extended_desc {
   struct dma_desc basic ;
   union __anonunion_des4_282 des4 ;
   unsigned int des5 ;
   unsigned int des6 ;
   unsigned int des7 ;
};
struct stmmac_counters {
   unsigned int mmc_tx_octetcount_gb ;
   unsigned int mmc_tx_framecount_gb ;
   unsigned int mmc_tx_broadcastframe_g ;
   unsigned int mmc_tx_multicastframe_g ;
   unsigned int mmc_tx_64_octets_gb ;
   unsigned int mmc_tx_65_to_127_octets_gb ;
   unsigned int mmc_tx_128_to_255_octets_gb ;
   unsigned int mmc_tx_256_to_511_octets_gb ;
   unsigned int mmc_tx_512_to_1023_octets_gb ;
   unsigned int mmc_tx_1024_to_max_octets_gb ;
   unsigned int mmc_tx_unicast_gb ;
   unsigned int mmc_tx_multicast_gb ;
   unsigned int mmc_tx_broadcast_gb ;
   unsigned int mmc_tx_underflow_error ;
   unsigned int mmc_tx_singlecol_g ;
   unsigned int mmc_tx_multicol_g ;
   unsigned int mmc_tx_deferred ;
   unsigned int mmc_tx_latecol ;
   unsigned int mmc_tx_exesscol ;
   unsigned int mmc_tx_carrier_error ;
   unsigned int mmc_tx_octetcount_g ;
   unsigned int mmc_tx_framecount_g ;
   unsigned int mmc_tx_excessdef ;
   unsigned int mmc_tx_pause_frame ;
   unsigned int mmc_tx_vlan_frame_g ;
   unsigned int mmc_rx_framecount_gb ;
   unsigned int mmc_rx_octetcount_gb ;
   unsigned int mmc_rx_octetcount_g ;
   unsigned int mmc_rx_broadcastframe_g ;
   unsigned int mmc_rx_multicastframe_g ;
   unsigned int mmc_rx_crc_errror ;
   unsigned int mmc_rx_align_error ;
   unsigned int mmc_rx_run_error ;
   unsigned int mmc_rx_jabber_error ;
   unsigned int mmc_rx_undersize_g ;
   unsigned int mmc_rx_oversize_g ;
   unsigned int mmc_rx_64_octets_gb ;
   unsigned int mmc_rx_65_to_127_octets_gb ;
   unsigned int mmc_rx_128_to_255_octets_gb ;
   unsigned int mmc_rx_256_to_511_octets_gb ;
   unsigned int mmc_rx_512_to_1023_octets_gb ;
   unsigned int mmc_rx_1024_to_max_octets_gb ;
   unsigned int mmc_rx_unicast_g ;
   unsigned int mmc_rx_length_error ;
   unsigned int mmc_rx_autofrangetype ;
   unsigned int mmc_rx_pause_frames ;
   unsigned int mmc_rx_fifo_overflow ;
   unsigned int mmc_rx_vlan_frames_gb ;
   unsigned int mmc_rx_watchdog_error ;
   unsigned int mmc_rx_ipc_intr_mask ;
   unsigned int mmc_rx_ipc_intr ;
   unsigned int mmc_rx_ipv4_gd ;
   unsigned int mmc_rx_ipv4_hderr ;
   unsigned int mmc_rx_ipv4_nopay ;
   unsigned int mmc_rx_ipv4_frag ;
   unsigned int mmc_rx_ipv4_udsbl ;
   unsigned int mmc_rx_ipv4_gd_octets ;
   unsigned int mmc_rx_ipv4_hderr_octets ;
   unsigned int mmc_rx_ipv4_nopay_octets ;
   unsigned int mmc_rx_ipv4_frag_octets ;
   unsigned int mmc_rx_ipv4_udsbl_octets ;
   unsigned int mmc_rx_ipv6_gd_octets ;
   unsigned int mmc_rx_ipv6_hderr_octets ;
   unsigned int mmc_rx_ipv6_nopay_octets ;
   unsigned int mmc_rx_ipv6_gd ;
   unsigned int mmc_rx_ipv6_hderr ;
   unsigned int mmc_rx_ipv6_nopay ;
   unsigned int mmc_rx_udp_gd ;
   unsigned int mmc_rx_udp_err ;
   unsigned int mmc_rx_tcp_gd ;
   unsigned int mmc_rx_tcp_err ;
   unsigned int mmc_rx_icmp_gd ;
   unsigned int mmc_rx_icmp_err ;
   unsigned int mmc_rx_udp_gd_octets ;
   unsigned int mmc_rx_udp_err_octets ;
   unsigned int mmc_rx_tcp_gd_octets ;
   unsigned int mmc_rx_tcp_err_octets ;
   unsigned int mmc_rx_icmp_gd_octets ;
   unsigned int mmc_rx_icmp_err_octets ;
};
struct stmmac_extra_stats {
   unsigned long tx_underflow ;
   unsigned long tx_carrier ;
   unsigned long tx_losscarrier ;
   unsigned long vlan_tag ;
   unsigned long tx_deferred ;
   unsigned long tx_vlan ;
   unsigned long tx_jabber ;
   unsigned long tx_frame_flushed ;
   unsigned long tx_payload_error ;
   unsigned long tx_ip_header_error ;
   unsigned long rx_desc ;
   unsigned long sa_filter_fail ;
   unsigned long overflow_error ;
   unsigned long ipc_csum_error ;
   unsigned long rx_collision ;
   unsigned long rx_crc ;
   unsigned long dribbling_bit ;
   unsigned long rx_length ;
   unsigned long rx_mii ;
   unsigned long rx_multicast ;
   unsigned long rx_gmac_overflow ;
   unsigned long rx_watchdog ;
   unsigned long da_rx_filter_fail ;
   unsigned long sa_rx_filter_fail ;
   unsigned long rx_missed_cntr ;
   unsigned long rx_overflow_cntr ;
   unsigned long rx_vlan ;
   unsigned long tx_undeflow_irq ;
   unsigned long tx_process_stopped_irq ;
   unsigned long tx_jabber_irq ;
   unsigned long rx_overflow_irq ;
   unsigned long rx_buf_unav_irq ;
   unsigned long rx_process_stopped_irq ;
   unsigned long rx_watchdog_irq ;
   unsigned long tx_early_irq ;
   unsigned long fatal_bus_error_irq ;
   unsigned long rx_early_irq ;
   unsigned long threshold ;
   unsigned long tx_pkt_n ;
   unsigned long rx_pkt_n ;
   unsigned long normal_irq_n ;
   unsigned long rx_normal_irq_n ;
   unsigned long napi_poll ;
   unsigned long tx_normal_irq_n ;
   unsigned long tx_clean ;
   unsigned long tx_reset_ic_bit ;
   unsigned long irq_receive_pmt_irq_n ;
   unsigned long mmc_tx_irq_n ;
   unsigned long mmc_rx_irq_n ;
   unsigned long mmc_rx_csum_offload_irq_n ;
   unsigned long irq_tx_path_in_lpi_mode_n ;
   unsigned long irq_tx_path_exit_lpi_mode_n ;
   unsigned long irq_rx_path_in_lpi_mode_n ;
   unsigned long irq_rx_path_exit_lpi_mode_n ;
   unsigned long phy_eee_wakeup_error_n ;
   unsigned long ip_hdr_err ;
   unsigned long ip_payload_err ;
   unsigned long ip_csum_bypassed ;
   unsigned long ipv4_pkt_rcvd ;
   unsigned long ipv6_pkt_rcvd ;
   unsigned long rx_msg_type_ext_no_ptp ;
   unsigned long rx_msg_type_sync ;
   unsigned long rx_msg_type_follow_up ;
   unsigned long rx_msg_type_delay_req ;
   unsigned long rx_msg_type_delay_resp ;
   unsigned long rx_msg_type_pdelay_req ;
   unsigned long rx_msg_type_pdelay_resp ;
   unsigned long rx_msg_type_pdelay_follow_up ;
   unsigned long ptp_frame_type ;
   unsigned long ptp_ver ;
   unsigned long timestamp_dropped ;
   unsigned long av_pkt_rcvd ;
   unsigned long av_tagged_pkt_rcvd ;
   unsigned long vlan_tag_priority_val ;
   unsigned long l3_filter_match ;
   unsigned long l4_filter_match ;
   unsigned long l3_l4_filter_no_match ;
   unsigned long irq_pcs_ane_n ;
   unsigned long irq_pcs_link_n ;
   unsigned long irq_rgmii_n ;
   unsigned long pcs_link ;
   unsigned long pcs_duplex ;
   unsigned long pcs_speed ;
};
struct rgmii_adv {
   unsigned int pause ;
   unsigned int duplex ;
   unsigned int lp_pause ;
   unsigned int lp_duplex ;
};
struct dma_features {
   unsigned int mbps_10_100 ;
   unsigned int mbps_1000 ;
   unsigned int half_duplex ;
   unsigned int hash_filter ;
   unsigned int multi_addr ;
   unsigned int pcs ;
   unsigned int sma_mdio ;
   unsigned int pmt_remote_wake_up ;
   unsigned int pmt_magic_frame ;
   unsigned int rmon ;
   unsigned int time_stamp ;
   unsigned int atime_stamp ;
   unsigned int eee ;
   unsigned int av ;
   unsigned int tx_coe ;
   unsigned int rx_coe_type1 ;
   unsigned int rx_coe_type2 ;
   unsigned int rxfifo_over_2048 ;
   unsigned int number_rx_channel ;
   unsigned int number_tx_channel ;
   unsigned int enh_desc ;
};
struct stmmac_desc_ops {
   void (*init_rx_desc)(struct dma_desc * , int , int , int ) ;
   void (*init_tx_desc)(struct dma_desc * , int , int ) ;
   void (*prepare_tx_desc)(struct dma_desc * , int , int , int , int ) ;
   void (*set_tx_owner)(struct dma_desc * ) ;
   int (*get_tx_owner)(struct dma_desc * ) ;
   void (*close_tx_desc)(struct dma_desc * ) ;
   void (*release_tx_desc)(struct dma_desc * , int ) ;
   void (*clear_tx_ic)(struct dma_desc * ) ;
   int (*get_tx_ls)(struct dma_desc * ) ;
   int (*tx_status)(void * , struct stmmac_extra_stats * , struct dma_desc * , void * ) ;
   int (*get_tx_len)(struct dma_desc * ) ;
   int (*get_rx_owner)(struct dma_desc * ) ;
   void (*set_rx_owner)(struct dma_desc * ) ;
   int (*get_rx_frame_len)(struct dma_desc * , int ) ;
   int (*rx_status)(void * , struct stmmac_extra_stats * , struct dma_desc * ) ;
   void (*rx_extended_status)(void * , struct stmmac_extra_stats * , struct dma_extended_desc * ) ;
   void (*enable_tx_timestamp)(struct dma_desc * ) ;
   int (*get_tx_timestamp_status)(struct dma_desc * ) ;
   u64 (*get_timestamp)(void * , u32 ) ;
   int (*get_rx_timestamp_status)(void * , u32 ) ;
};
struct stmmac_dma_ops {
   int (*init)(void * , int , int , int , int , u32 , u32 , int ) ;
   void (*dump_regs)(void * ) ;
   void (*dma_mode)(void * , int , int ) ;
   void (*dma_diagnostic_fr)(void * , struct stmmac_extra_stats * , void * ) ;
   void (*enable_dma_transmission)(void * ) ;
   void (*enable_dma_irq)(void * ) ;
   void (*disable_dma_irq)(void * ) ;
   void (*start_tx)(void * ) ;
   void (*stop_tx)(void * ) ;
   void (*start_rx)(void * ) ;
   void (*stop_rx)(void * ) ;
   int (*dma_interrupt)(void * , struct stmmac_extra_stats * ) ;
   unsigned int (*get_hw_feature)(void * ) ;
   void (*rx_watchdog)(void * , u32 ) ;
};
struct stmmac_ops {
   void (*core_init)(void * , int ) ;
   int (*rx_ipc)(void * ) ;
   void (*dump_regs)(void * ) ;
   int (*host_irq_status)(void * , struct stmmac_extra_stats * ) ;
   void (*set_filter)(struct net_device * , int ) ;
   void (*flow_ctrl)(void * , unsigned int , unsigned int , unsigned int ) ;
   void (*pmt)(void * , unsigned long ) ;
   void (*set_umac_addr)(void * , unsigned char * , unsigned int ) ;
   void (*get_umac_addr)(void * , unsigned char * , unsigned int ) ;
   void (*set_eee_mode)(void * ) ;
   void (*reset_eee_mode)(void * ) ;
   void (*set_eee_timer)(void * , int , int ) ;
   void (*set_eee_pls)(void * , int ) ;
   void (*ctrl_ane)(void * , bool ) ;
   void (*get_adv)(void * , struct rgmii_adv * ) ;
};
struct stmmac_hwtimestamp {
   void (*config_hw_tstamping)(void * , u32 ) ;
   void (*config_sub_second_increment)(void * ) ;
   int (*init_systime)(void * , u32 , u32 ) ;
   int (*config_addend)(void * , u32 ) ;
   int (*adjust_systime)(void * , u32 , u32 , int ) ;
   u64 (*get_systime)(void * ) ;
};
struct mac_link {
   int port ;
   int duplex ;
   int speed ;
};
struct mii_regs {
   unsigned int addr ;
   unsigned int data ;
};
struct stmmac_mode_ops {
   void (*init)(void * , dma_addr_t , unsigned int , unsigned int ) ;
   unsigned int (*is_jumbo_frm)(int , int ) ;
   unsigned int (*jumbo_frm)(void * , struct sk_buff * , int ) ;
   int (*set_16kib_bfsize)(int ) ;
   void (*init_desc3)(struct dma_desc * ) ;
   void (*refill_desc3)(void * , struct dma_desc * ) ;
   void (*clean_desc3)(void * , struct dma_desc * ) ;
};
struct mac_device_info {
   struct stmmac_ops const *mac ;
   struct stmmac_desc_ops const *desc ;
   struct stmmac_dma_ops const *dma ;
   struct stmmac_mode_ops const *mode ;
   struct stmmac_hwtimestamp const *ptp ;
   struct mii_regs mii ;
   struct mac_link link ;
   unsigned int synopsys_uid ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct ptp_clock_time {
   __s64 sec ;
   __u32 nsec ;
   __u32 reserved ;
};
struct ptp_extts_request {
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[2U] ;
};
struct ptp_perout_request {
   struct ptp_clock_time start ;
   struct ptp_clock_time period ;
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[4U] ;
};
enum ptp_pin_function {
    PTP_PF_NONE = 0,
    PTP_PF_EXTTS = 1,
    PTP_PF_PEROUT = 2,
    PTP_PF_PHYSYNC = 3
} ;
struct ptp_pin_desc {
   char name[64U] ;
   unsigned int index ;
   unsigned int func ;
   unsigned int chan ;
   unsigned int rsv[5U] ;
};
enum ldv_34202 {
    PTP_CLK_REQ_EXTTS = 0,
    PTP_CLK_REQ_PEROUT = 1,
    PTP_CLK_REQ_PPS = 2
} ;
union __anonunion_ldv_50155_285 {
   struct ptp_extts_request extts ;
   struct ptp_perout_request perout ;
};
struct ptp_clock_request {
   enum ldv_34202 type ;
   union __anonunion_ldv_50155_285 ldv_50155 ;
};
struct ptp_clock_info {
   struct module *owner ;
   char name[16U] ;
   s32 max_adj ;
   int n_alarm ;
   int n_ext_ts ;
   int n_per_out ;
   int n_pins ;
   int pps ;
   struct ptp_pin_desc *pin_config ;
   int (*adjfreq)(struct ptp_clock_info * , s32 ) ;
   int (*adjtime)(struct ptp_clock_info * , s64 ) ;
   int (*gettime)(struct ptp_clock_info * , struct timespec * ) ;
   int (*settime)(struct ptp_clock_info * , struct timespec const * ) ;
   int (*enable)(struct ptp_clock_info * , struct ptp_clock_request * , int ) ;
   int (*verify)(struct ptp_clock_info * , unsigned int , enum ptp_pin_function ,
                 unsigned int ) ;
};
struct ptp_clock;
struct reset_control;
struct stmmac_priv {
   struct dma_extended_desc *dma_etx ;
   struct dma_desc *dma_tx ;
   struct sk_buff **tx_skbuff ;
   unsigned int cur_tx ;
   unsigned int dirty_tx ;
   unsigned int dma_tx_size ;
   u32 tx_count_frames ;
   u32 tx_coal_frames ;
   u32 tx_coal_timer ;
   dma_addr_t *tx_skbuff_dma ;
   dma_addr_t dma_tx_phy ;
   int tx_coalesce ;
   int hwts_tx_en ;
   spinlock_t tx_lock ;
   bool tx_path_in_lpi_mode ;
   struct timer_list txtimer ;
   struct dma_desc *dma_rx ;
   struct dma_extended_desc *dma_erx ;
   struct sk_buff **rx_skbuff ;
   unsigned int cur_rx ;
   unsigned int dirty_rx ;
   unsigned int dma_rx_size ;
   unsigned int dma_buf_sz ;
   u32 rx_riwt ;
   int hwts_rx_en ;
   dma_addr_t *rx_skbuff_dma ;
   dma_addr_t dma_rx_phy ;
   struct napi_struct napi ;
   void *ioaddr ;
   struct net_device *dev ;
   struct device *device ;
   struct mac_device_info *hw ;
   spinlock_t lock ;
   struct phy_device *phydev ;
   int oldlink ;
   int speed ;
   int oldduplex ;
   unsigned int flow_ctrl ;
   unsigned int pause ;
   struct mii_bus *mii ;
   int mii_irq[32U] ;
   struct stmmac_extra_stats xstats ;
   struct plat_stmmacenet_data *plat ;
   struct dma_features dma_cap ;
   struct stmmac_counters mmc ;
   int hw_cap_support ;
   int synopsys_id ;
   u32 msg_enable ;
   int wolopts ;
   int wol_irq ;
   struct clk *stmmac_clk ;
   struct reset_control *stmmac_rst ;
   int clk_csr ;
   struct timer_list eee_ctrl_timer ;
   int lpi_irq ;
   int eee_enabled ;
   int eee_active ;
   int tx_lpi_timer ;
   int pcs ;
   unsigned int mode ;
   int extend_desc ;
   struct ptp_clock *ptp_clock ;
   struct ptp_clock_info ptp_clock_ops ;
   unsigned int default_addend ;
   u32 adv_ts ;
   int use_riwt ;
   int irq_wake ;
   spinlock_t ptp_lock ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___13;
enum hrtimer_restart;
struct stmmac_stats {
   char stat_string[32U] ;
   int sizeof_stat ;
   int stat_offset ;
};
enum hrtimer_restart;
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
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct regmap;
struct stmmac_of_data {
   int has_gmac ;
   int enh_desc ;
   int tx_coe ;
   int rx_coe ;
   int bugged_jumbo ;
   int pmt ;
   int riwt_off ;
   void (*fix_mac_speed)(void * , unsigned int ) ;
   void (*bus_setup)(void * ) ;
   void *(*setup)(struct platform_device * ) ;
   void (*free)(struct platform_device * , void * ) ;
   int (*init)(struct platform_device * , void * ) ;
   void (*exit)(struct platform_device * , void * ) ;
};
struct socfpga_dwmac {
   int interface ;
   u32 reg_offset ;
   u32 reg_shift ;
   struct device *dev ;
   struct regmap *sys_mgr_base_addr ;
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
   union __anonunion_ldv_14160_140 __annonCompField38 ;
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
   union __anonunion_ldv_14154_138 __annonCompField37 ;
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
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
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
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static u64 div_u64(u64 dividend , u32 divisor )
{
  u32 remainder ;
  u64 tmp ;
  {
  tmp = div_u64_rem(dividend, divisor, & remainder);
  return (tmp);
}
}
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
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
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void getnstimeofday(struct timespec * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern unsigned long usecs_to_jiffies(unsigned int const ) ;
__inline static ktime_t ns_to_ktime(u64 ns )
{
  ktime_t ktime_zero ;
  ktime_t __constr_expr_0 ;
  {
  ktime_zero.tv64 = 0LL;
  __constr_expr_0.tv64 = (long long )((unsigned long long )ktime_zero.tv64 + ns);
  return (__constr_expr_0);
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_37(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_40(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_51(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_36(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_38(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_46(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_47(struct timer_list *ldv_func_arg1 ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static phys_addr_t virt_to_phys(void volatile *address )
{
  unsigned long tmp ;
  {
  tmp = __phys_addr((unsigned long )address);
  return ((phys_addr_t )tmp);
}
}
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_33(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return ((void *)0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
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
int ldv_timer_state_5 = 0;
int ldv_state_variable_8 ;
struct timer_list *ldv_timer_list_5 ;
int ldv_state_variable_15 ;
int ldv_state_variable_20 ;
struct timer_list *ldv_timer_list_4 ;
struct dma_desc *chain_mode_ops_group0 ;
int ldv_state_variable_0 ;
struct ptp_clock_info *stmmac_ptp_clock_ops_group0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
struct ethtool_coalesce *stmmac_ethtool_ops_group3 ;
struct stmmac_extra_stats *dwmac100_dma_ops_group0 ;
int ldv_state_variable_13 ;
struct file *stmmac_rings_status_fops_group2 ;
int ldv_irq_3_1 = 0;
int ldv_irq_2_0 = 0;
struct platform_device *stmmac_pltfr_driver_group0 ;
int ldv_state_variable_12 ;
int ldv_irq_3_2 = 0;
struct net_device *stmmac_netdev_ops_group1 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
int ldv_state_variable_17 ;
struct ethtool_cmd *stmmac_ethtool_ops_group1 ;
struct stmmac_extra_stats *ndesc_ops_group1 ;
void *ldv_irq_data_2_3 ;
struct device *stmmac_pltfr_pm_ops_group1 ;
int ldv_state_variable_19 ;
int ldv_irq_2_2 = 0;
int ldv_state_variable_9 ;
struct ethtool_eee *stmmac_ethtool_ops_group0 ;
struct inode *stmmac_rings_status_fops_group1 ;
int ldv_irq_line_2_0 ;
int ldv_timer_state_4 = 0;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_irq_line_3_0 ;
struct ethtool_wolinfo *stmmac_ethtool_ops_group2 ;
int ldv_state_variable_1 ;
struct file *stmmac_dma_cap_fops_group2 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_23 ;
int ldv_irq_line_2_3 ;
int ldv_irq_3_0 = 0;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_3_3 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_irq_line_3_2 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_3_1 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_16 ;
void *ldv_irq_data_3_0 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct dma_desc *enh_desc_ops_group0 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct stmmac_extra_stats *enh_desc_ops_group1 ;
struct inode *stmmac_dma_cap_fops_group1 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct dma_desc *ring_mode_ops_group0 ;
int ldv_irq_1_1 = 0;
int ldv_state_variable_18 ;
int ldv_irq_2_3 = 0;
int ldv_irq_line_3_1 ;
struct net_device *stmmac_ethtool_ops_group5 ;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
void *ldv_irq_data_3_2 ;
struct dma_desc *ndesc_ops_group0 ;
struct ethtool_pauseparam *stmmac_ethtool_ops_group4 ;
struct pci_dev *stmmac_pci_driver_group0 ;
int ldv_irq_3_3 = 0;
int ldv_state_variable_4 ;
int ldv_irq_line_3_3 ;
int ldv_irq_3(int state , int line , void *data ) ;
void ldv_initialize_stmmac_dma_ops_14(void) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void choose_timer_5(struct timer_list *timer ) ;
void activate_suitable_irq_3(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_ethtool_ops_20(void) ;
void choose_interrupt_1(void) ;
void choose_timer_4(struct timer_list *timer ) ;
void ldv_initialize_platform_driver_8(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_ptp_clock_info_10(void) ;
void ldv_initialize_pci_driver_7(void) ;
void disable_suitable_irq_3(int line , void *data ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
void ldv_file_operations_22(void) ;
int reg_check_3(irqreturn_t (*handler)(int , void * ) ) ;
int reg_timer_4(struct timer_list *timer ) ;
void ldv_initialize_stmmac_desc_ops_12(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
void ldv_dev_pm_ops_9(void) ;
void ldv_initialize_stmmac_desc_ops_13(void) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void ldv_initialize_stmmac_mode_ops_18(void) ;
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_5(struct timer_list *timer ) ;
void choose_interrupt_3(void) ;
int reg_timer_5(struct timer_list *timer ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_net_device_ops_21(void) ;
void ldv_file_operations_23(void) ;
void ldv_initialize_stmmac_mode_ops_19(void) ;
extern int clk_prepare(struct clk * ) ;
extern void clk_unprepare(struct clk * ) ;
extern struct clk *devm_clk_get(struct device * , char const * ) ;
extern int clk_enable(struct clk * ) ;
extern void clk_disable(struct clk * ) ;
extern unsigned long clk_get_rate(struct clk * ) ;
__inline static int clk_prepare_enable(struct clk *clk )
{
  int ret ;
  {
  ret = clk_prepare(clk);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = clk_enable(clk);
  if (ret != 0) {
    clk_unprepare(clk);
  } else {
  }
  return (ret);
}
}
__inline static void clk_disable_unprepare(struct clk *clk )
{
  {
  clk_disable(clk);
  clk_unprepare(clk);
  return;
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
  }
  return (n);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_41(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_42(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_43(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_44(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_45(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_48(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_50(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void get_random_bytes(void * , int ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int pinctrl_pm_select_default_state(struct device * ) ;
extern int pinctrl_pm_select_sleep_state(struct device * ) ;
__inline static bool device_may_wakeup(struct device *dev )
{
  {
  return ((bool )((unsigned int )*((unsigned char *)dev + 532UL) != 0U && (unsigned long )dev->power.wakeup != (unsigned long )((struct wakeup_source *)0)));
}
}
extern void device_set_wakeup_capable(struct device * , bool ) ;
extern void pm_wakeup_event(struct device * , unsigned int ) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_24413: ;
    goto ldv_24413;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_24422: ;
    goto ldv_24422;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    ldv_24456: ;
    goto ldv_24456;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
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
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct skb_shared_hwtstamps *skb_hwtstamps(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  return (& ((struct skb_shared_info *)tmp)->hwtstamps);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_39(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_29(dev, length, gfp);
  skb = tmp;
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  return (tmp___0);
}
}
extern void skb_clone_tx_timestamp(struct sk_buff * ) ;
extern void skb_tstamp_tx(struct sk_buff * , struct skb_shared_hwtstamps * ) ;
__inline static void sw_tx_timestamp(struct sk_buff *skb )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  if (((int )((struct skb_shared_info *)tmp)->tx_flags & 2) != 0) {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    if (((int )((struct skb_shared_info *)tmp___0)->tx_flags & 4) == 0) {
      skb_tstamp_tx(skb, (struct skb_shared_hwtstamps *)0);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void skb_tx_timestamp(struct sk_buff *skb )
{
  {
  skb_clone_tx_timestamp(skb);
  sw_tx_timestamp(skb);
  return;
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void msleep(unsigned int ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  __might_sleep("include/linux/netdevice.h", 476, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  goto ldv_40074;
  ldv_40073:
  msleep(1U);
  ldv_40074:
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_40073;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (492), "i" (12UL));
    ldv_40079: ;
    goto ldv_40079;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_54(struct net_device *dev ) ;
void ldv_free_netdev_56(struct net_device *dev ) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_schedule_queue(struct netdev_queue *txq )
{
  {
  if ((txq->state & 3UL) == 0UL) {
    __netif_schedule(txq->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
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
__inline static void dev_consume_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 0);
  return;
}
}
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if (debug_value < 0 || (unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  spin_lock(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  return;
}
}
__inline static void netif_tx_lock(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  spin_lock(& dev->tx_global_lock);
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_41498;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41498;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41498;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41498;
  default:
  __bad_percpu_size();
  }
  ldv_41498:
  pscr_ret__ = pfo_ret__;
  goto ldv_41504;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41508;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41508;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41508;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41508;
  default:
  __bad_percpu_size();
  }
  ldv_41508:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_41504;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41517;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41517;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41517;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41517;
  default:
  __bad_percpu_size();
  }
  ldv_41517:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_41504;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41526;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41526;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41526;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41526;
  default:
  __bad_percpu_size();
  }
  ldv_41526:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_41504;
  default:
  __bad_size_call_parameter();
  goto ldv_41504;
  }
  ldv_41504:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_41536;
  ldv_41535:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  set_bit(2L, (unsigned long volatile *)(& txq->state));
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_41536: ;
  if (dev->num_tx_queues > i) {
    goto ldv_41535;
  } else {
  }
  return;
}
}
__inline static void netif_tx_unlock(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_41547;
  ldv_41546:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  clear_bit(2L, (unsigned long volatile *)(& txq->state));
  netif_schedule_queue(txq);
  i = i + 1U;
  ldv_41547: ;
  if (dev->num_tx_queues > i) {
    goto ldv_41546;
  } else {
  }
  spin_unlock(& dev->tx_global_lock);
  return;
}
}
extern void ether_setup(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_52(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_53(struct net_device *dev ) ;
void ldv_unregister_netdev_55(struct net_device *dev ) ;
extern void netdev_update_features(struct net_device * ) ;
extern int netdev_alert(struct net_device const * , char const * , ...) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
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
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static int __vlan_get_tag(struct sk_buff const *skb , u16 *vlan_tci )
{
  struct vlan_ethhdr *veth ;
  __u16 tmp ;
  {
  veth = (struct vlan_ethhdr *)skb->data;
  if ((unsigned int )veth->h_vlan_proto != 129U && (unsigned int )veth->h_vlan_proto != 43144U) {
    return (-22);
  } else {
  }
  tmp = __fswab16((int )veth->h_vlan_TCI);
  *vlan_tci = tmp;
  return (0);
}
}
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_34(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_35(struct platform_driver *drv ) ;
extern struct phy_device *phy_connect(struct net_device * , char const * , void (*)(struct net_device * ) ,
                                      phy_interface_t ) ;
extern void phy_disconnect(struct phy_device * ) ;
extern void phy_start(struct phy_device * ) ;
extern void phy_stop(struct phy_device * ) ;
extern int phy_mii_ioctl(struct phy_device * , struct ifreq * , int ) ;
extern void phy_print_status(struct phy_device * ) ;
extern int phy_init_eee(struct phy_device * , bool ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void dwmac_mmc_ctrl(void *ioaddr , unsigned int mode ) ;
void dwmac_mmc_intr_all_mask(void *ioaddr ) ;
struct mac_device_info *dwmac1000_setup(void *ioaddr ) ;
struct mac_device_info *dwmac100_setup(void *ioaddr ) ;
void stmmac_set_mac(void *ioaddr , bool enable ) ;
struct stmmac_mode_ops const ring_mode_ops ;
struct stmmac_mode_ops const chain_mode_ops ;
extern int reset_control_assert(struct reset_control * ) ;
extern int reset_control_deassert(struct reset_control * ) ;
extern struct reset_control *devm_reset_control_get(struct device * , char const * ) ;
int stmmac_mdio_unregister(struct net_device *ndev ) ;
int stmmac_mdio_register(struct net_device *ndev ) ;
int stmmac_mdio_reset(struct mii_bus *bus ) ;
void stmmac_set_ethtool_ops(struct net_device *netdev ) ;
struct stmmac_desc_ops const enh_desc_ops ;
struct stmmac_desc_ops const ndesc_ops ;
struct stmmac_hwtimestamp const stmmac_ptp ;
int stmmac_ptp_register(struct stmmac_priv *priv ) ;
void stmmac_ptp_unregister(struct stmmac_priv *priv ) ;
int stmmac_resume(struct net_device *ndev ) ;
int stmmac_suspend(struct net_device *ndev ) ;
int stmmac_dvr_remove(struct net_device *ndev ) ;
struct stmmac_priv *stmmac_dvr_probe(struct device *device , struct plat_stmmacenet_data *plat_dat___0 ,
                                     void *addr ) ;
void stmmac_disable_eee_mode(struct stmmac_priv *priv ) ;
bool stmmac_eee_init(struct stmmac_priv *priv ) ;
struct platform_driver stmmac_pltfr_driver ;
__inline static int stmmac_register_platform(void)
{
  int err ;
  {
  err = ldv___platform_driver_register_34(& stmmac_pltfr_driver, & __this_module);
  if (err != 0) {
    printk("\vstmmac: failed to register the platform driver\n");
  } else {
  }
  return (err);
}
}
__inline static void stmmac_unregister_platform(void)
{
  {
  ldv_platform_driver_unregister_35(& stmmac_pltfr_driver);
  return;
}
}
struct pci_driver stmmac_pci_driver ;
__inline static int stmmac_register_pci(void)
{
  int err ;
  {
  err = __pci_register_driver(& stmmac_pci_driver, & __this_module, "stmmac");
  if (err != 0) {
    printk("\vstmmac: failed to register the PCI driver\n");
  } else {
  }
  return (err);
}
}
__inline static void stmmac_unregister_pci(void)
{
  {
  pci_unregister_driver(& stmmac_pci_driver);
  return;
}
}
static int watchdog = 5000;
static int debug = -1;
static int phyaddr = -1;
static int dma_txsize = 256;
static int dma_rxsize = 256;
static int flow_ctrl = 0;
static int pause = 512;
static int tc = 64;
static int buf_sz = 1536;
static unsigned int const default_msg_level = 63U;
static int eee_timer = 1000;
static unsigned int chain_mode ;
static irqreturn_t stmmac_interrupt(int irq , void *dev_id ) ;
static int stmmac_init_fs(struct net_device *dev ) ;
static void stmmac_exit_fs(void) ;
static void stmmac_verify_args(void)
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  tmp = ldv__builtin_expect(watchdog < 0, 0L);
  if (tmp != 0L) {
    watchdog = 5000;
  } else {
  }
  tmp___0 = ldv__builtin_expect(dma_rxsize < 0, 0L);
  if (tmp___0 != 0L) {
    dma_rxsize = 256;
  } else {
  }
  tmp___1 = ldv__builtin_expect(dma_txsize < 0, 0L);
  if (tmp___1 != 0L) {
    dma_txsize = 256;
  } else {
  }
  tmp___2 = ldv__builtin_expect(buf_sz <= 1535, 0L);
  if (tmp___2 != 0L) {
    buf_sz = 1536;
  } else {
    tmp___3 = ldv__builtin_expect(buf_sz > 16384, 0L);
    if (tmp___3 != 0L) {
      buf_sz = 1536;
    } else {
    }
  }
  tmp___5 = ldv__builtin_expect(flow_ctrl > 1, 0L);
  if (tmp___5 != 0L) {
    flow_ctrl = 3;
  } else {
    tmp___4 = ldv__builtin_expect(flow_ctrl < 0, 1L);
    if (tmp___4 != 0L) {
      flow_ctrl = 0;
    } else {
    }
  }
  tmp___6 = ldv__builtin_expect(pause < 0, 0L);
  if (tmp___6 != 0L) {
    pause = 512;
  } else {
    tmp___7 = ldv__builtin_expect(pause > 65535, 0L);
    if (tmp___7 != 0L) {
      pause = 512;
    } else {
    }
  }
  if (eee_timer < 0) {
    eee_timer = 1000;
  } else {
  }
  return;
}
}
static void stmmac_clk_csr_set(struct stmmac_priv *priv )
{
  u32 clk_rate ;
  unsigned long tmp ;
  {
  tmp = clk_get_rate(priv->stmmac_clk);
  clk_rate = (u32 )tmp;
  if ((priv->clk_csr & 32) == 0) {
    if (clk_rate <= 34999999U) {
      priv->clk_csr = 2;
    } else
    if (clk_rate > 34999999U && clk_rate <= 59999999U) {
      priv->clk_csr = 3;
    } else
    if (clk_rate > 59999999U && clk_rate <= 99999999U) {
      priv->clk_csr = 0;
    } else
    if (clk_rate > 99999999U && clk_rate <= 149999999U) {
      priv->clk_csr = 1;
    } else
    if (clk_rate > 149999999U && clk_rate <= 249999999U) {
      priv->clk_csr = 4;
    } else
    if (clk_rate > 249999999U && clk_rate <= 299999999U) {
      priv->clk_csr = 5;
    } else {
    }
  } else {
  }
  return;
}
}
static void print_pkt(unsigned char *buf , int len )
{
  int j ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  descriptor.modname = "stmmac";
  descriptor.function = "print_pkt";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor.format = "len = %d byte, buf addr: 0x%p";
  descriptor.lineno = 341U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "len = %d byte, buf addr: 0x%p", len, buf);
  } else {
  }
  j = 0;
  goto ldv_50560;
  ldv_50559: ;
  if (((unsigned int )j & 15U) == 0U) {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "print_pkt";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___0.format = "\n %03x:";
    descriptor___0.lineno = 344U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "\n %03x:", j);
    } else {
    }
  } else {
  }
  descriptor___1.modname = "stmmac";
  descriptor___1.function = "print_pkt";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor___1.format = " %02x";
  descriptor___1.lineno = 345U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___1, " %02x", (int )*(buf + (unsigned long )j));
  } else {
  }
  j = j + 1;
  ldv_50560: ;
  if (j < len) {
    goto ldv_50559;
  } else {
  }
  descriptor___2.modname = "stmmac";
  descriptor___2.function = "print_pkt";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor___2.format = "\n";
  descriptor___2.lineno = 347U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "\n");
  } else {
  }
  return;
}
}
__inline static u32 stmmac_tx_avail(struct stmmac_priv *priv )
{
  {
  return (((priv->dirty_tx + priv->dma_tx_size) - priv->cur_tx) - 1U);
}
}
__inline static void stmmac_hw_fix_mac_speed(struct stmmac_priv *priv )
{
  struct phy_device *phydev ;
  long tmp ;
  {
  phydev = priv->phydev;
  tmp = ldv__builtin_expect((unsigned long )(priv->plat)->fix_mac_speed != (unsigned long )((void (*)(void * ,
                                                                                                   unsigned int ))0),
                         1L);
  if (tmp != 0L) {
    (*((priv->plat)->fix_mac_speed))((priv->plat)->bsp_priv, (unsigned int )phydev->speed);
  } else {
  }
  return;
}
}
static void stmmac_enable_eee_mode(struct stmmac_priv *priv )
{
  {
  if (priv->dirty_tx == priv->cur_tx && ! priv->tx_path_in_lpi_mode) {
    (*(((priv->hw)->mac)->set_eee_mode))(priv->ioaddr);
  } else {
  }
  return;
}
}
void stmmac_disable_eee_mode(struct stmmac_priv *priv )
{
  {
  (*(((priv->hw)->mac)->reset_eee_mode))(priv->ioaddr);
  ldv_del_timer_sync_36(& priv->eee_ctrl_timer);
  priv->tx_path_in_lpi_mode = 0;
  return;
}
}
static void stmmac_eee_ctrl_timer(unsigned long arg )
{
  struct stmmac_priv *priv ;
  unsigned long tmp ;
  {
  priv = (struct stmmac_priv *)arg;
  stmmac_enable_eee_mode(priv);
  tmp = msecs_to_jiffies((unsigned int const )eee_timer);
  ldv_mod_timer_37(& priv->eee_ctrl_timer, tmp + (unsigned long )jiffies);
  return;
}
}
bool stmmac_eee_init(struct stmmac_priv *priv )
{
  bool ret ;
  int tx_lpi_timer ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  ret = 0;
  if ((priv->pcs == 1 || priv->pcs == 4) || priv->pcs == 8) {
    goto out;
  } else {
  }
  if (priv->dma_cap.eee != 0U) {
    tx_lpi_timer = priv->tx_lpi_timer;
    tmp___0 = phy_init_eee(priv->phydev, 1);
    if (tmp___0 != 0) {
      if (priv->eee_active != 0) {
        descriptor.modname = "stmmac";
        descriptor.function = "stmmac_eee_init";
        descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
        descriptor.format = "stmmac: disable EEE\n";
        descriptor.lineno = 445U;
        descriptor.flags = 0U;
        tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp != 0L) {
          __dynamic_pr_debug(& descriptor, "stmmac: disable EEE\n");
        } else {
        }
        ldv_del_timer_sync_38(& priv->eee_ctrl_timer);
        (*(((priv->hw)->mac)->set_eee_timer))(priv->ioaddr, 0, tx_lpi_timer);
      } else {
      }
      priv->eee_active = 0;
      goto out;
    } else {
    }
    if (priv->eee_active == 0) {
      priv->eee_active = 1;
      reg_timer_4(& priv->eee_ctrl_timer);
      priv->eee_ctrl_timer.function = & stmmac_eee_ctrl_timer;
      priv->eee_ctrl_timer.data = (unsigned long )priv;
      tmp___1 = msecs_to_jiffies((unsigned int const )eee_timer);
      priv->eee_ctrl_timer.expires = tmp___1 + (unsigned long )jiffies;
      add_timer(& priv->eee_ctrl_timer);
      (*(((priv->hw)->mac)->set_eee_timer))(priv->ioaddr, 1000, tx_lpi_timer);
    } else {
      (*(((priv->hw)->mac)->set_eee_pls))(priv->ioaddr, (priv->phydev)->link);
    }
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "stmmac_eee_init";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___0.format = "stmmac: Energy-Efficient Ethernet initialized\n";
    descriptor___0.lineno = 470U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "stmmac: Energy-Efficient Ethernet initialized\n");
    } else {
    }
    ret = 1;
  } else {
  }
  out: ;
  return (ret);
}
}
static void stmmac_get_tx_hwtstamp(struct stmmac_priv *priv , unsigned int entry ,
                                   struct sk_buff *skb )
{
  struct skb_shared_hwtstamps shhwtstamp ;
  u64 ns ;
  void *desc ;
  long tmp ;
  unsigned char *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  desc = (void *)0;
  if (priv->hwts_tx_en == 0) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         1L);
  if (tmp != 0L) {
    return;
  } else {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    tmp___1 = ldv__builtin_expect(((int )((struct skb_shared_info *)tmp___0)->tx_flags & 4) == 0,
                               1L);
    if (tmp___1 != 0L) {
      return;
    } else {
    }
  }
  if (priv->adv_ts != 0U) {
    desc = (void *)priv->dma_etx + (unsigned long )entry;
  } else {
    desc = (void *)priv->dma_tx + (unsigned long )entry;
  }
  tmp___2 = (*(((priv->hw)->desc)->get_tx_timestamp_status))((struct dma_desc *)desc);
  if (tmp___2 == 0) {
    return;
  } else {
  }
  ns = (*(((priv->hw)->desc)->get_timestamp))(desc, priv->adv_ts);
  memset((void *)(& shhwtstamp), 0, 16UL);
  shhwtstamp.hwtstamp = ns_to_ktime(ns);
  skb_tstamp_tx(skb, & shhwtstamp);
  return;
}
}
static void stmmac_get_rx_hwtstamp(struct stmmac_priv *priv , unsigned int entry ,
                                   struct sk_buff *skb )
{
  struct skb_shared_hwtstamps *shhwtstamp ;
  u64 ns ;
  void *desc ;
  int tmp ;
  {
  shhwtstamp = (struct skb_shared_hwtstamps *)0;
  desc = (void *)0;
  if (priv->hwts_rx_en == 0) {
    return;
  } else {
  }
  if (priv->adv_ts != 0U) {
    desc = (void *)priv->dma_erx + (unsigned long )entry;
  } else {
    desc = (void *)priv->dma_rx + (unsigned long )entry;
  }
  tmp = (*(((priv->hw)->desc)->get_rx_timestamp_status))(desc, priv->adv_ts);
  if (tmp == 0) {
    return;
  } else {
  }
  ns = (*(((priv->hw)->desc)->get_timestamp))(desc, priv->adv_ts);
  shhwtstamp = skb_hwtstamps(skb);
  memset((void *)shhwtstamp, 0, 16UL);
  shhwtstamp->hwtstamp = ns_to_ktime(ns);
  return;
}
}
static int stmmac_hwtstamp_ioctl(struct net_device *dev , struct ifreq *ifr )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct hwtstamp_config config ;
  struct timespec now ;
  u64 temp ;
  u32 ptp_v2 ;
  u32 tstamp_all ;
  u32 ptp_over_ipv4_udp ;
  u32 ptp_over_ipv6_udp ;
  u32 ptp_over_ethernet ;
  u32 snap_type_sel ;
  u32 ts_master_en ;
  u32 ts_event_en ;
  u32 value ;
  unsigned long tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  u64 tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  temp = 0ULL;
  ptp_v2 = 0U;
  tstamp_all = 0U;
  ptp_over_ipv4_udp = 0U;
  ptp_over_ipv6_udp = 0U;
  ptp_over_ethernet = 0U;
  snap_type_sel = 0U;
  ts_master_en = 0U;
  ts_event_en = 0U;
  value = 0U;
  if (priv->dma_cap.time_stamp == 0U && priv->adv_ts == 0U) {
    netdev_alert((struct net_device const *)priv->dev, "No support for HW time stamping\n");
    priv->hwts_tx_en = 0;
    priv->hwts_rx_en = 0;
    return (-95);
  } else {
  }
  tmp___0 = copy_from_user((void *)(& config), (void const *)ifr->ifr_ifru.ifru_data,
                           12UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  descriptor.modname = "stmmac";
  descriptor.function = "stmmac_hwtstamp_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor.format = "%s config flags:0x%x, tx_type:0x%x, rx_filter:0x%x\n";
  descriptor.lineno = 594U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s config flags:0x%x, tx_type:0x%x, rx_filter:0x%x\n",
                       "stmmac_hwtstamp_ioctl", config.flags, config.tx_type, config.rx_filter);
  } else {
  }
  if (config.flags != 0) {
    return (-22);
  } else {
  }
  if (config.tx_type != 0 && config.tx_type != 1) {
    return (-34);
  } else {
  }
  if (priv->adv_ts != 0U) {
    switch (config.rx_filter) {
    case 0:
    config.rx_filter = 0;
    goto ldv_50625;
    case 3:
    config.rx_filter = 3;
    snap_type_sel = 65536U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 4:
    config.rx_filter = 4;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 5:
    config.rx_filter = 5;
    ts_master_en = 32768U;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 6:
    config.rx_filter = 6;
    ptp_v2 = 1024U;
    snap_type_sel = 65536U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 7:
    config.rx_filter = 7;
    ptp_v2 = 1024U;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 8:
    config.rx_filter = 8;
    ptp_v2 = 1024U;
    ts_master_en = 32768U;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    goto ldv_50625;
    case 12:
    config.rx_filter = 12;
    ptp_v2 = 1024U;
    snap_type_sel = 65536U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    ptp_over_ethernet = 2048U;
    goto ldv_50625;
    case 13:
    config.rx_filter = 13;
    ptp_v2 = 1024U;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    ptp_over_ethernet = 2048U;
    goto ldv_50625;
    case 14:
    config.rx_filter = 14;
    ptp_v2 = 1024U;
    ts_master_en = 32768U;
    ts_event_en = 16384U;
    ptp_over_ipv4_udp = 8192U;
    ptp_over_ipv6_udp = 4096U;
    ptp_over_ethernet = 2048U;
    goto ldv_50625;
    case 1:
    config.rx_filter = 1;
    tstamp_all = 256U;
    goto ldv_50625;
    default: ;
    return (-34);
    }
    ldv_50625: ;
  } else {
    switch (config.rx_filter) {
    case 0:
    config.rx_filter = 0;
    goto ldv_50638;
    default:
    config.rx_filter = 3;
    goto ldv_50638;
    }
    ldv_50638: ;
  }
  priv->hwts_rx_en = config.rx_filter != 0;
  priv->hwts_tx_en = config.tx_type == 1;
  if (priv->hwts_tx_en == 0 && priv->hwts_rx_en == 0) {
    (*(((priv->hw)->ptp)->config_hw_tstamping))(priv->ioaddr, 0U);
  } else {
    value = (((((((tstamp_all | ptp_v2) | ptp_over_ethernet) | ptp_over_ipv6_udp) | ptp_over_ipv4_udp) | ts_event_en) | ts_master_en) | snap_type_sel) | 515U;
    (*(((priv->hw)->ptp)->config_hw_tstamping))(priv->ioaddr, value);
    (*(((priv->hw)->ptp)->config_sub_second_increment))(priv->ioaddr);
    temp = 214748364800000000ULL;
    tmp___2 = div_u64(temp, 62500000U);
    priv->default_addend = (unsigned int )tmp___2;
    (*(((priv->hw)->ptp)->config_addend))(priv->ioaddr, priv->default_addend);
    getnstimeofday(& now);
    (*(((priv->hw)->ptp)->init_systime))(priv->ioaddr, (u32 )now.tv_sec, (u32 )now.tv_nsec);
  }
  tmp___3 = copy_to_user(ifr->ifr_ifru.ifru_data, (void const *)(& config), 12UL);
  return (tmp___3 != 0UL ? -14 : 0);
}
}
static int stmmac_init_ptp(struct stmmac_priv *priv )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if (priv->dma_cap.time_stamp == 0U && priv->dma_cap.atime_stamp == 0U) {
    return (-95);
  } else {
  }
  priv->adv_ts = 0U;
  if (priv->dma_cap.atime_stamp != 0U && priv->extend_desc != 0) {
    priv->adv_ts = 1U;
  } else {
  }
  if ((priv->msg_enable & 8192U) != 0U && priv->dma_cap.time_stamp != 0U) {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_init_ptp";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor.format = "IEEE 1588-2002 Time Stamp supported\n";
    descriptor.lineno = 792U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "IEEE 1588-2002 Time Stamp supported\n");
    } else {
    }
  } else {
  }
  if ((priv->msg_enable & 8192U) != 0U && priv->adv_ts != 0U) {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "stmmac_init_ptp";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___0.format = "IEEE 1588-2008 Advanced Time Stamp supported\n";
    descriptor___0.lineno = 795U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "IEEE 1588-2008 Advanced Time Stamp supported\n");
    } else {
    }
  } else {
  }
  (priv->hw)->ptp = & stmmac_ptp;
  priv->hwts_tx_en = 0;
  priv->hwts_rx_en = 0;
  tmp___1 = stmmac_ptp_register(priv);
  return (tmp___1);
}
}
static void stmmac_release_ptp(struct stmmac_priv *priv )
{
  {
  stmmac_ptp_unregister(priv);
  return;
}
}
static void stmmac_adjust_link(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct phy_device *phydev ;
  unsigned long flags ;
  int new_state ;
  unsigned int fc ;
  unsigned int pause_time ;
  u32 ctrl ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  phydev = priv->phydev;
  new_state = 0;
  fc = priv->flow_ctrl;
  pause_time = priv->pause;
  if ((unsigned long )phydev == (unsigned long )((struct phy_device *)0)) {
    return;
  } else {
  }
  ldv_spin_lock();
  if (phydev->link != 0) {
    tmp___0 = readl((void const volatile *)priv->ioaddr);
    ctrl = tmp___0;
    if (phydev->duplex != priv->oldduplex) {
      new_state = 1;
      if (phydev->duplex == 0) {
        ctrl = (u32 )(~ (priv->hw)->link.duplex) & ctrl;
      } else {
        ctrl = (u32 )(priv->hw)->link.duplex | ctrl;
      }
      priv->oldduplex = phydev->duplex;
    } else {
    }
    if (phydev->pause != 0) {
      (*(((priv->hw)->mac)->flow_ctrl))(priv->ioaddr, (unsigned int )phydev->duplex,
                                        fc, pause_time);
    } else {
    }
    if (phydev->speed != priv->speed) {
      new_state = 1;
      switch (phydev->speed) {
      case 1000:
      tmp___1 = ldv__builtin_expect((priv->plat)->has_gmac != 0, 1L);
      if (tmp___1 != 0L) {
        ctrl = (u32 )(~ (priv->hw)->link.port) & ctrl;
      } else {
      }
      stmmac_hw_fix_mac_speed(priv);
      goto ldv_50660;
      case 100: ;
      case 10: ;
      if ((priv->plat)->has_gmac != 0) {
        ctrl = (u32 )(priv->hw)->link.port | ctrl;
        if (phydev->speed == 100) {
          ctrl = (u32 )(priv->hw)->link.speed | ctrl;
        } else {
          ctrl = (u32 )(~ (priv->hw)->link.speed) & ctrl;
        }
      } else {
        ctrl = (u32 )(~ (priv->hw)->link.port) & ctrl;
      }
      stmmac_hw_fix_mac_speed(priv);
      goto ldv_50660;
      default: ;
      if ((priv->msg_enable & 4U) != 0U) {
        printk("\f%s: Speed (%d) not 10/100\n", (char *)(& dev->name), phydev->speed);
      } else {
      }
      goto ldv_50660;
      }
      ldv_50660:
      priv->speed = phydev->speed;
    } else {
    }
    writel(ctrl, (void volatile *)priv->ioaddr);
    if (priv->oldlink == 0) {
      new_state = 1;
      priv->oldlink = 1;
    } else {
    }
  } else
  if (priv->oldlink != 0) {
    new_state = 1;
    priv->oldlink = 0;
    priv->speed = 0;
    priv->oldduplex = -1;
  } else {
  }
  if (new_state != 0 && (priv->msg_enable & 4U) != 0U) {
    phy_print_status(phydev);
  } else {
  }
  tmp___2 = stmmac_eee_init(priv);
  priv->eee_enabled = (int )tmp___2;
  spin_unlock_irqrestore(& priv->lock, flags);
  return;
}
}
static void stmmac_check_pcs_mode(struct stmmac_priv *priv )
{
  int interface ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  interface = (priv->plat)->interface;
  if (priv->dma_cap.pcs != 0U) {
    if (((interface == 7 || interface == 8) || interface == 9) || interface == 10) {
      descriptor.modname = "stmmac";
      descriptor.function = "stmmac_check_pcs_mode";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor.format = "STMMAC: PCS RGMII support enable\n";
      descriptor.lineno = 917U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "STMMAC: PCS RGMII support enable\n");
      } else {
      }
      priv->pcs = 1;
    } else
    if (interface == 3) {
      descriptor___0.modname = "stmmac";
      descriptor___0.function = "stmmac_check_pcs_mode";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor___0.format = "STMMAC: PCS SGMII support enable\n";
      descriptor___0.lineno = 920U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "STMMAC: PCS SGMII support enable\n");
      } else {
      }
      priv->pcs = 2;
    } else {
    }
  } else {
  }
  return;
}
}
static int stmmac_init_phy(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct phy_device *phydev ;
  char phy_id_fmt[20U] ;
  char bus_id[17U] ;
  int interface ;
  int max_speed ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  interface = (priv->plat)->interface;
  max_speed = (priv->plat)->max_speed;
  priv->oldlink = 0;
  priv->speed = 0;
  priv->oldduplex = -1;
  if ((unsigned long )(priv->plat)->phy_bus_name != (unsigned long )((char *)0)) {
    snprintf((char *)(& bus_id), 17UL, "%s-%x", (priv->plat)->phy_bus_name, (priv->plat)->bus_id);
  } else {
    snprintf((char *)(& bus_id), 17UL, "stmmac-%x", (priv->plat)->bus_id);
  }
  snprintf((char *)(& phy_id_fmt), 20UL, "%s:%02x", (char *)(& bus_id), (priv->plat)->phy_addr);
  descriptor.modname = "stmmac";
  descriptor.function = "stmmac_init_phy";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor.format = "stmmac_init_phy:  trying to attach to %s\n";
  descriptor.lineno = 955U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "stmmac_init_phy:  trying to attach to %s\n",
                       (char *)(& phy_id_fmt));
  } else {
  }
  phydev = phy_connect(dev, (char const *)(& phy_id_fmt), & stmmac_adjust_link,
                       (phy_interface_t )interface);
  tmp___2 = IS_ERR((void const *)phydev);
  if ((int )tmp___2) {
    printk("\v%s: Could not attach to PHY\n", (char *)(& dev->name));
    tmp___1 = PTR_ERR((void const *)phydev);
    return ((int )tmp___1);
  } else {
  }
  if ((interface == 1 || interface == 6) || (max_speed <= 999 && max_speed > 0)) {
    phydev->advertising = phydev->advertising & 4294967247U;
  } else {
  }
  if (phydev->phy_id == 0U) {
    phy_disconnect(phydev);
    return (-19);
  } else {
  }
  descriptor___0.modname = "stmmac";
  descriptor___0.function = "stmmac_init_phy";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor___0.format = "stmmac_init_phy:  %s: attached to PHY (UID 0x%x) Link = %d\n";
  descriptor___0.lineno = 983U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "stmmac_init_phy:  %s: attached to PHY (UID 0x%x) Link = %d\n",
                       (char *)(& dev->name), phydev->phy_id, phydev->link);
  } else {
  }
  priv->phydev = phydev;
  return (0);
}
}
static void stmmac_display_ring(void *head , int size , int extend_desc )
{
  int i ;
  struct dma_extended_desc *ep ;
  struct dma_desc *p ;
  u64 x ;
  phys_addr_t tmp ;
  phys_addr_t tmp___0 ;
  {
  ep = (struct dma_extended_desc *)head;
  p = (struct dma_desc *)head;
  i = 0;
  goto ldv_50693;
  ldv_50692: ;
  if (extend_desc != 0) {
    x = *((u64 *)ep);
    tmp = virt_to_phys((void volatile *)ep);
    printk("\016%d [0x%x]: 0x%x 0x%x 0x%x 0x%x\n", i, (unsigned int )tmp, (unsigned int )x,
           (unsigned int )(x >> 32), ep->basic.des2, ep->basic.des3);
    ep = ep + 1;
  } else {
    x = *((u64 *)p);
    tmp___0 = virt_to_phys((void volatile *)p);
    printk("\016%d [0x%x]: 0x%x 0x%x 0x%x 0x%x", i, (unsigned int )tmp___0, (unsigned int )x,
           (unsigned int )(x >> 32), p->des2, p->des3);
    p = p + 1;
  }
  printk("\016\n");
  i = i + 1;
  ldv_50693: ;
  if (i < size) {
    goto ldv_50692;
  } else {
  }
  return;
}
}
static void stmmac_display_rings(struct stmmac_priv *priv )
{
  unsigned int txsize ;
  unsigned int rxsize ;
  {
  txsize = priv->dma_tx_size;
  rxsize = priv->dma_rx_size;
  if (priv->extend_desc != 0) {
    printk("\016Extended RX descriptor ring:\n");
    stmmac_display_ring((void *)priv->dma_erx, (int )rxsize, 1);
    printk("\016Extended TX descriptor ring:\n");
    stmmac_display_ring((void *)priv->dma_etx, (int )txsize, 1);
  } else {
    printk("\016RX descriptor ring:\n");
    stmmac_display_ring((void *)priv->dma_rx, (int )rxsize, 0);
    printk("\016TX descriptor ring:\n");
    stmmac_display_ring((void *)priv->dma_tx, (int )txsize, 0);
  }
  return;
}
}
static int stmmac_set_bfsize(int mtu , int bufsize )
{
  int ret ;
  {
  ret = bufsize;
  if (mtu > 4095) {
    ret = 8192;
  } else
  if (mtu > 2047) {
    ret = 4096;
  } else
  if (mtu > 1536) {
    ret = 2048;
  } else {
    ret = 1536;
  }
  return (ret);
}
}
static void stmmac_clear_descriptors(struct stmmac_priv *priv )
{
  int i ;
  unsigned int txsize ;
  unsigned int rxsize ;
  {
  txsize = priv->dma_tx_size;
  rxsize = priv->dma_rx_size;
  i = 0;
  goto ldv_50712;
  ldv_50711: ;
  if (priv->extend_desc != 0) {
    (*(((priv->hw)->desc)->init_rx_desc))(& (priv->dma_erx + (unsigned long )i)->basic,
                                          priv->use_riwt, (int )priv->mode, (unsigned int )i == rxsize - 1U);
  } else {
    (*(((priv->hw)->desc)->init_rx_desc))(priv->dma_rx + (unsigned long )i, priv->use_riwt,
                                          (int )priv->mode, (unsigned int )i == rxsize - 1U);
  }
  i = i + 1;
  ldv_50712: ;
  if ((unsigned int )i < rxsize) {
    goto ldv_50711;
  } else {
  }
  i = 0;
  goto ldv_50715;
  ldv_50714: ;
  if (priv->extend_desc != 0) {
    (*(((priv->hw)->desc)->init_tx_desc))(& (priv->dma_etx + (unsigned long )i)->basic,
                                          (int )priv->mode, (unsigned int )i == txsize - 1U);
  } else {
    (*(((priv->hw)->desc)->init_tx_desc))(priv->dma_tx + (unsigned long )i, (int )priv->mode,
                                          (unsigned int )i == txsize - 1U);
  }
  i = i + 1;
  ldv_50715: ;
  if ((unsigned int )i < txsize) {
    goto ldv_50714;
  } else {
  }
  return;
}
}
static int stmmac_init_rx_buffers(struct stmmac_priv *priv , struct dma_desc *p ,
                                  int i )
{
  struct sk_buff *skb ;
  int tmp ;
  {
  skb = ldv___netdev_alloc_skb_39(priv->dev, priv->dma_buf_sz, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    printk("\v%s: Rx init fails; skb is NULL\n", "stmmac_init_rx_buffers");
    return (-12);
  } else {
  }
  skb_reserve(skb, 0);
  *(priv->rx_skbuff + (unsigned long )i) = skb;
  *(priv->rx_skbuff_dma + (unsigned long )i) = dma_map_single_attrs(priv->device,
                                                                    (void *)skb->data,
                                                                    (size_t )priv->dma_buf_sz,
                                                                    2, (struct dma_attrs *)0);
  tmp = dma_mapping_error(priv->device, *(priv->rx_skbuff_dma + (unsigned long )i));
  if (tmp != 0) {
    printk("\v%s: DMA mapping error\n", "stmmac_init_rx_buffers");
    dev_kfree_skb_any(skb);
    return (-22);
  } else {
  }
  p->des2 = (unsigned int )*(priv->rx_skbuff_dma + (unsigned long )i);
  if ((unsigned long )((priv->hw)->mode)->init_desc3 != (unsigned long )((void (* )(struct dma_desc * ))0) && priv->dma_buf_sz == 16384U) {
    (*(((priv->hw)->mode)->init_desc3))(p);
  } else {
  }
  return (0);
}
}
static void stmmac_free_rx_buffers(struct stmmac_priv *priv , int i )
{
  {
  if ((unsigned long )*(priv->rx_skbuff + (unsigned long )i) != (unsigned long )((struct sk_buff *)0)) {
    dma_unmap_single_attrs(priv->device, *(priv->rx_skbuff_dma + (unsigned long )i),
                           (size_t )priv->dma_buf_sz, 2, (struct dma_attrs *)0);
    dev_kfree_skb_any(*(priv->rx_skbuff + (unsigned long )i));
  } else {
  }
  *(priv->rx_skbuff + (unsigned long )i) = (struct sk_buff *)0;
  return;
}
}
static int init_dma_desc_rings(struct net_device *dev )
{
  int i ;
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int txsize ;
  unsigned int rxsize ;
  unsigned int bfsize ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct dma_desc *p ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  struct dma_desc *p___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  txsize = priv->dma_tx_size;
  rxsize = priv->dma_rx_size;
  bfsize = 0U;
  ret = -12;
  if ((unsigned long )((priv->hw)->mode)->set_16kib_bfsize != (unsigned long )((int (* )(int ))0)) {
    tmp___0 = (*(((priv->hw)->mode)->set_16kib_bfsize))((int )dev->mtu);
    bfsize = (unsigned int )tmp___0;
  } else {
  }
  if (bfsize <= 16383U) {
    tmp___1 = stmmac_set_bfsize((int )dev->mtu, (int )priv->dma_buf_sz);
    bfsize = (unsigned int )tmp___1;
  } else {
  }
  priv->dma_buf_sz = bfsize;
  if ((priv->msg_enable & 2U) != 0U) {
    descriptor.modname = "stmmac";
    descriptor.function = "init_dma_desc_rings";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor.format = "%s: txsize %d, rxsize %d, bfsize %d\n";
    descriptor.lineno = 1158U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: txsize %d, rxsize %d, bfsize %d\n", "init_dma_desc_rings",
                         txsize, rxsize, bfsize);
    } else {
    }
  } else {
  }
  if ((priv->msg_enable & 2U) != 0U) {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "init_dma_desc_rings";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___0.format = "(%s) dma_rx_phy=0x%08x dma_tx_phy=0x%08x\n";
    descriptor___0.lineno = 1162U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "(%s) dma_rx_phy=0x%08x dma_tx_phy=0x%08x\n",
                         "init_dma_desc_rings", (unsigned int )priv->dma_rx_phy, (unsigned int )priv->dma_tx_phy);
    } else {
    }
    descriptor___1.modname = "stmmac";
    descriptor___1.function = "init_dma_desc_rings";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___1.format = "\tSKB addresses:\nskb\t\tskb data\tdma data\n";
    descriptor___1.lineno = 1165U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "\tSKB addresses:\nskb\t\tskb data\tdma data\n");
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_50745;
  ldv_50744: ;
  if (priv->extend_desc != 0) {
    p = & (priv->dma_erx + (unsigned long )i)->basic;
  } else {
    p = priv->dma_rx + (unsigned long )i;
  }
  ret = stmmac_init_rx_buffers(priv, p, i);
  if (ret != 0) {
    goto err_init_rx_buffers;
  } else {
  }
  if ((priv->msg_enable & 2U) != 0U) {
    descriptor___2.modname = "stmmac";
    descriptor___2.function = "init_dma_desc_rings";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___2.format = "[%p]\t[%p]\t[%x]\n";
    descriptor___2.lineno = 1181U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "[%p]\t[%p]\t[%x]\n", *(priv->rx_skbuff + (unsigned long )i),
                         (*(priv->rx_skbuff + (unsigned long )i))->data, (unsigned int )*(priv->rx_skbuff_dma + (unsigned long )i));
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_50745: ;
  if ((unsigned int )i < rxsize) {
    goto ldv_50744;
  } else {
  }
  priv->cur_rx = 0U;
  priv->dirty_rx = (unsigned int )i - rxsize;
  buf_sz = (int )bfsize;
  if (priv->mode == 1U) {
    if (priv->extend_desc != 0) {
      (*(((priv->hw)->mode)->init))((void *)priv->dma_erx, priv->dma_rx_phy, rxsize,
                                    1U);
      (*(((priv->hw)->mode)->init))((void *)priv->dma_etx, priv->dma_tx_phy, txsize,
                                    1U);
    } else {
      (*(((priv->hw)->mode)->init))((void *)priv->dma_rx, priv->dma_rx_phy, rxsize,
                                    0U);
      (*(((priv->hw)->mode)->init))((void *)priv->dma_tx, priv->dma_tx_phy, txsize,
                                    0U);
    }
  } else {
  }
  i = 0;
  goto ldv_50749;
  ldv_50748: ;
  if (priv->extend_desc != 0) {
    p___0 = & (priv->dma_etx + (unsigned long )i)->basic;
  } else {
    p___0 = priv->dma_tx + (unsigned long )i;
  }
  p___0->des2 = 0U;
  *(priv->tx_skbuff_dma + (unsigned long )i) = 0ULL;
  *(priv->tx_skbuff + (unsigned long )i) = (struct sk_buff *)0;
  i = i + 1;
  ldv_50749: ;
  if ((unsigned int )i < txsize) {
    goto ldv_50748;
  } else {
  }
  priv->dirty_tx = 0U;
  priv->cur_tx = 0U;
  stmmac_clear_descriptors(priv);
  if ((priv->msg_enable & 8192U) != 0U) {
    stmmac_display_rings(priv);
  } else {
  }
  return (0);
  err_init_rx_buffers: ;
  goto ldv_50752;
  ldv_50751:
  stmmac_free_rx_buffers(priv, i);
  ldv_50752:
  i = i - 1;
  if (i >= 0) {
    goto ldv_50751;
  } else {
  }
  return (ret);
}
}
static void dma_free_rx_skbufs(struct stmmac_priv *priv )
{
  int i ;
  {
  i = 0;
  goto ldv_50759;
  ldv_50758:
  stmmac_free_rx_buffers(priv, i);
  i = i + 1;
  ldv_50759: ;
  if ((unsigned int )i < priv->dma_rx_size) {
    goto ldv_50758;
  } else {
  }
  return;
}
}
static void dma_free_tx_skbufs(struct stmmac_priv *priv )
{
  int i ;
  struct dma_desc *p ;
  int tmp ;
  {
  i = 0;
  goto ldv_50767;
  ldv_50766: ;
  if (priv->extend_desc != 0) {
    p = & (priv->dma_etx + (unsigned long )i)->basic;
  } else {
    p = priv->dma_tx + (unsigned long )i;
  }
  if (*(priv->tx_skbuff_dma + (unsigned long )i) != 0ULL) {
    tmp = (*(((priv->hw)->desc)->get_tx_len))(p);
    dma_unmap_single_attrs(priv->device, *(priv->tx_skbuff_dma + (unsigned long )i),
                           (size_t )tmp, 1, (struct dma_attrs *)0);
    *(priv->tx_skbuff_dma + (unsigned long )i) = 0ULL;
  } else {
  }
  if ((unsigned long )*(priv->tx_skbuff + (unsigned long )i) != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(*(priv->tx_skbuff + (unsigned long )i));
    *(priv->tx_skbuff + (unsigned long )i) = (struct sk_buff *)0;
  } else {
  }
  i = i + 1;
  ldv_50767: ;
  if ((unsigned int )i < priv->dma_tx_size) {
    goto ldv_50766;
  } else {
  }
  return;
}
}
static int alloc_dma_desc_resources(struct stmmac_priv *priv )
{
  unsigned int txsize ;
  unsigned int rxsize ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  txsize = priv->dma_tx_size;
  rxsize = priv->dma_rx_size;
  ret = -12;
  tmp = kmalloc_array((size_t )rxsize, 8UL, 208U);
  priv->rx_skbuff_dma = (dma_addr_t *)tmp;
  if ((unsigned long )priv->rx_skbuff_dma == (unsigned long )((dma_addr_t *)0ULL)) {
    return (-12);
  } else {
  }
  tmp___0 = kmalloc_array((size_t )rxsize, 8UL, 208U);
  priv->rx_skbuff = (struct sk_buff **)tmp___0;
  if ((unsigned long )priv->rx_skbuff == (unsigned long )((struct sk_buff **)0)) {
    goto err_rx_skbuff;
  } else {
  }
  tmp___1 = kmalloc_array((size_t )txsize, 8UL, 208U);
  priv->tx_skbuff_dma = (dma_addr_t *)tmp___1;
  if ((unsigned long )priv->tx_skbuff_dma == (unsigned long )((dma_addr_t *)0ULL)) {
    goto err_tx_skbuff_dma;
  } else {
  }
  tmp___2 = kmalloc_array((size_t )txsize, 8UL, 208U);
  priv->tx_skbuff = (struct sk_buff **)tmp___2;
  if ((unsigned long )priv->tx_skbuff == (unsigned long )((struct sk_buff **)0)) {
    goto err_tx_skbuff;
  } else {
  }
  if (priv->extend_desc != 0) {
    tmp___3 = dma_alloc_attrs(priv->device, (unsigned long )rxsize * 32UL, & priv->dma_rx_phy,
                              208U, (struct dma_attrs *)0);
    priv->dma_erx = (struct dma_extended_desc *)tmp___3;
    if ((unsigned long )priv->dma_erx == (unsigned long )((struct dma_extended_desc *)0)) {
      goto err_dma;
    } else {
    }
    tmp___4 = dma_alloc_attrs(priv->device, (unsigned long )txsize * 32UL, & priv->dma_tx_phy,
                              208U, (struct dma_attrs *)0);
    priv->dma_etx = (struct dma_extended_desc *)tmp___4;
    if ((unsigned long )priv->dma_etx == (unsigned long )((struct dma_extended_desc *)0)) {
      dma_free_attrs(priv->device, (unsigned long )priv->dma_rx_size * 32UL, (void *)priv->dma_erx,
                     priv->dma_rx_phy, (struct dma_attrs *)0);
      goto err_dma;
    } else {
    }
  } else {
    tmp___5 = dma_alloc_attrs(priv->device, (unsigned long )rxsize * 16UL, & priv->dma_rx_phy,
                              208U, (struct dma_attrs *)0);
    priv->dma_rx = (struct dma_desc *)tmp___5;
    if ((unsigned long )priv->dma_rx == (unsigned long )((struct dma_desc *)0)) {
      goto err_dma;
    } else {
    }
    tmp___6 = dma_alloc_attrs(priv->device, (unsigned long )txsize * 16UL, & priv->dma_tx_phy,
                              208U, (struct dma_attrs *)0);
    priv->dma_tx = (struct dma_desc *)tmp___6;
    if ((unsigned long )priv->dma_tx == (unsigned long )((struct dma_desc *)0)) {
      dma_free_attrs(priv->device, (unsigned long )priv->dma_rx_size * 16UL, (void *)priv->dma_rx,
                     priv->dma_rx_phy, (struct dma_attrs *)0);
      goto err_dma;
    } else {
    }
  }
  return (0);
  err_dma:
  kfree((void const *)priv->tx_skbuff);
  err_tx_skbuff:
  kfree((void const *)priv->tx_skbuff_dma);
  err_tx_skbuff_dma:
  kfree((void const *)priv->rx_skbuff);
  err_rx_skbuff:
  kfree((void const *)priv->rx_skbuff_dma);
  return (ret);
}
}
static void free_dma_desc_resources(struct stmmac_priv *priv )
{
  {
  dma_free_rx_skbufs(priv);
  dma_free_tx_skbufs(priv);
  if (priv->extend_desc == 0) {
    dma_free_attrs(priv->device, (unsigned long )priv->dma_tx_size * 16UL, (void *)priv->dma_tx,
                   priv->dma_tx_phy, (struct dma_attrs *)0);
    dma_free_attrs(priv->device, (unsigned long )priv->dma_rx_size * 16UL, (void *)priv->dma_rx,
                   priv->dma_rx_phy, (struct dma_attrs *)0);
  } else {
    dma_free_attrs(priv->device, (unsigned long )priv->dma_tx_size * 32UL, (void *)priv->dma_etx,
                   priv->dma_tx_phy, (struct dma_attrs *)0);
    dma_free_attrs(priv->device, (unsigned long )priv->dma_rx_size * 32UL, (void *)priv->dma_erx,
                   priv->dma_rx_phy, (struct dma_attrs *)0);
  }
  kfree((void const *)priv->rx_skbuff_dma);
  kfree((void const *)priv->rx_skbuff);
  kfree((void const *)priv->tx_skbuff_dma);
  kfree((void const *)priv->tx_skbuff);
  return;
}
}
static void stmmac_dma_operation_mode(struct stmmac_priv *priv )
{
  {
  if ((priv->plat)->force_thresh_dma_mode != 0) {
    (*(((priv->hw)->dma)->dma_mode))(priv->ioaddr, tc, tc);
  } else
  if ((priv->plat)->force_sf_dma_mode != 0 || (priv->plat)->tx_coe != 0) {
    (*(((priv->hw)->dma)->dma_mode))(priv->ioaddr, 1, 1);
    tc = 1;
  } else {
    (*(((priv->hw)->dma)->dma_mode))(priv->ioaddr, tc, 1);
  }
  return;
}
}
static void stmmac_tx_clean(struct stmmac_priv *priv )
{
  unsigned int txsize ;
  int last ;
  unsigned int entry ;
  struct sk_buff *skb ;
  struct dma_desc *p ;
  int tmp ;
  int tx_error ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___0 ;
  long tmp___7 ;
  bool tmp___8 ;
  u32 tmp___9 ;
  bool tmp___10 ;
  long tmp___11 ;
  u32 tmp___12 ;
  long tmp___13 ;
  unsigned long tmp___14 ;
  {
  txsize = priv->dma_tx_size;
  spin_lock(& priv->tx_lock);
  priv->xstats.tx_clean = priv->xstats.tx_clean + 1UL;
  goto ldv_50798;
  ldv_50797:
  entry = priv->dirty_tx % txsize;
  skb = *(priv->tx_skbuff + (unsigned long )entry);
  if (priv->extend_desc != 0) {
    p = (struct dma_desc *)priv->dma_etx + (unsigned long )entry;
  } else {
    p = priv->dma_tx + (unsigned long )entry;
  }
  tmp = (*(((priv->hw)->desc)->get_tx_owner))(p);
  if (tmp != 0) {
    goto ldv_50793;
  } else {
  }
  last = (*(((priv->hw)->desc)->get_tx_ls))(p);
  tmp___2 = ldv__builtin_expect(last != 0, 1L);
  if (tmp___2 != 0L) {
    tmp___0 = (*(((priv->hw)->desc)->tx_status))((void *)(& (priv->dev)->stats), & priv->xstats,
                                                 p, priv->ioaddr);
    tx_error = tmp___0;
    tmp___1 = ldv__builtin_expect(tx_error == 0, 1L);
    if (tmp___1 != 0L) {
      (priv->dev)->stats.tx_packets = (priv->dev)->stats.tx_packets + 1UL;
      priv->xstats.tx_pkt_n = priv->xstats.tx_pkt_n + 1UL;
    } else {
      (priv->dev)->stats.tx_errors = (priv->dev)->stats.tx_errors + 1UL;
    }
    stmmac_get_tx_hwtstamp(priv, entry, skb);
  } else {
  }
  if ((priv->msg_enable & 1024U) != 0U) {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_tx_clean";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor.format = "%s: curr %d, dirty %d\n";
    descriptor.lineno = 1440U;
    descriptor.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: curr %d, dirty %d\n", "stmmac_tx_clean",
                         priv->cur_tx, priv->dirty_tx);
    } else {
    }
  } else {
  }
  tmp___5 = ldv__builtin_expect(*(priv->tx_skbuff_dma + (unsigned long )entry) != 0ULL,
                             1L);
  if (tmp___5 != 0L) {
    tmp___4 = (*(((priv->hw)->desc)->get_tx_len))(p);
    dma_unmap_single_attrs(priv->device, *(priv->tx_skbuff_dma + (unsigned long )entry),
                           (size_t )tmp___4, 1, (struct dma_attrs *)0);
    *(priv->tx_skbuff_dma + (unsigned long )entry) = 0ULL;
  } else {
  }
  (*(((priv->hw)->mode)->clean_desc3))((void *)priv, p);
  tmp___6 = ldv__builtin_expect((unsigned long )skb != (unsigned long )((struct sk_buff *)0),
                             1L);
  if (tmp___6 != 0L) {
    dev_consume_skb_any(skb);
    *(priv->tx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
  } else {
  }
  (*(((priv->hw)->desc)->release_tx_desc))(p, (int )priv->mode);
  priv->dirty_tx = priv->dirty_tx + 1U;
  ldv_50798: ;
  if (priv->dirty_tx != priv->cur_tx) {
    goto ldv_50797;
  } else {
  }
  ldv_50793:
  tmp___10 = netif_queue_stopped((struct net_device const *)priv->dev);
  tmp___11 = ldv__builtin_expect((long )tmp___10, 0L);
  if (tmp___11 != 0L) {
    tmp___12 = stmmac_tx_avail(priv);
    tmp___13 = ldv__builtin_expect(tmp___12 > priv->dma_tx_size / 4U, 0L);
    if (tmp___13 != 0L) {
      netif_tx_lock(priv->dev);
      tmp___8 = netif_queue_stopped((struct net_device const *)priv->dev);
      if ((int )tmp___8) {
        tmp___9 = stmmac_tx_avail(priv);
        if (tmp___9 > priv->dma_tx_size / 4U) {
          if ((priv->msg_enable & 1024U) != 0U) {
            descriptor___0.modname = "stmmac";
            descriptor___0.function = "stmmac_tx_clean";
            descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
            descriptor___0.format = "%s: restart transmit\n";
            descriptor___0.lineno = 1466U;
            descriptor___0.flags = 0U;
            tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
            if (tmp___7 != 0L) {
              __dynamic_pr_debug(& descriptor___0, "%s: restart transmit\n", "stmmac_tx_clean");
            } else {
            }
          } else {
          }
          netif_wake_queue(priv->dev);
        } else {
        }
      } else {
      }
      netif_tx_unlock(priv->dev);
    } else {
    }
  } else {
  }
  if (priv->eee_enabled != 0 && ! priv->tx_path_in_lpi_mode) {
    stmmac_enable_eee_mode(priv);
    tmp___14 = msecs_to_jiffies((unsigned int const )eee_timer);
    ldv_mod_timer_40(& priv->eee_ctrl_timer, tmp___14 + (unsigned long )jiffies);
  } else {
  }
  spin_unlock(& priv->tx_lock);
  return;
}
}
__inline static void stmmac_enable_dma_irq(struct stmmac_priv *priv )
{
  {
  (*(((priv->hw)->dma)->enable_dma_irq))(priv->ioaddr);
  return;
}
}
__inline static void stmmac_disable_dma_irq(struct stmmac_priv *priv )
{
  {
  (*(((priv->hw)->dma)->disable_dma_irq))(priv->ioaddr);
  return;
}
}
static void stmmac_tx_err(struct stmmac_priv *priv )
{
  int i ;
  int txsize ;
  {
  txsize = (int )priv->dma_tx_size;
  netif_stop_queue(priv->dev);
  (*(((priv->hw)->dma)->stop_tx))(priv->ioaddr);
  dma_free_tx_skbufs(priv);
  i = 0;
  goto ldv_50812;
  ldv_50811: ;
  if (priv->extend_desc != 0) {
    (*(((priv->hw)->desc)->init_tx_desc))(& (priv->dma_etx + (unsigned long )i)->basic,
                                          (int )priv->mode, txsize + -1 == i);
  } else {
    (*(((priv->hw)->desc)->init_tx_desc))(priv->dma_tx + (unsigned long )i, (int )priv->mode,
                                          txsize + -1 == i);
  }
  i = i + 1;
  ldv_50812: ;
  if (i < txsize) {
    goto ldv_50811;
  } else {
  }
  priv->dirty_tx = 0U;
  priv->cur_tx = 0U;
  (*(((priv->hw)->dma)->start_tx))(priv->ioaddr);
  (priv->dev)->stats.tx_errors = (priv->dev)->stats.tx_errors + 1UL;
  netif_wake_queue(priv->dev);
  return;
}
}
static void stmmac_dma_interrupt(struct stmmac_priv *priv )
{
  int status ;
  bool tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  status = (*(((priv->hw)->dma)->dma_interrupt))(priv->ioaddr, & priv->xstats);
  tmp___1 = ldv__builtin_expect((status & 4) != 0, 1L);
  if (tmp___1 != 0L || (status & 8) != 0) {
    tmp = napi_schedule_prep(& priv->napi);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    if (tmp___0 != 0L) {
      stmmac_disable_dma_irq(priv);
      __napi_schedule(& priv->napi);
    } else {
    }
  } else {
  }
  tmp___4 = ldv__builtin_expect((status & 2) != 0, 0L);
  if (tmp___4 != 0L) {
    tmp___2 = ldv__builtin_expect(tc != 1, 0L);
    if (tmp___2 != 0L && tc <= 256) {
      tc = tc + 64;
      (*(((priv->hw)->dma)->dma_mode))(priv->ioaddr, tc, 1);
      priv->xstats.threshold = (unsigned long )tc;
    } else {
    }
  } else {
    tmp___3 = ldv__builtin_expect(status == 1, 0L);
    if (tmp___3 != 0L) {
      stmmac_tx_err(priv);
    } else {
    }
  }
  return;
}
}
static void stmmac_mmc_setup(struct stmmac_priv *priv )
{
  unsigned int mode ;
  {
  mode = 53U;
  dwmac_mmc_intr_all_mask(priv->ioaddr);
  if (priv->dma_cap.rmon != 0U) {
    dwmac_mmc_ctrl(priv->ioaddr, mode);
    memset((void *)(& priv->mmc), 0, 316UL);
  } else {
    printk("\016 No MAC Management Counters available\n");
  }
  return;
}
}
static u32 stmmac_get_synopsys_id(struct stmmac_priv *priv )
{
  u32 hwid ;
  u32 uid ;
  u32 synid ;
  long tmp ;
  {
  hwid = (priv->hw)->synopsys_uid;
  tmp = ldv__builtin_expect(hwid != 0U, 1L);
  if (tmp != 0L) {
    uid = (hwid & 65280U) >> 8;
    synid = hwid & 255U;
    printk("\016stmmac - user ID: 0x%x, Synopsys ID: 0x%x\n", uid, synid);
    return (synid);
  } else {
  }
  return (0U);
}
}
static void stmmac_selec_desc_mode(struct stmmac_priv *priv )
{
  {
  if ((priv->plat)->enh_desc != 0) {
    printk("\016 Enhanced/Alternate descriptors\n");
    if (priv->synopsys_id > 52) {
      printk("\016\tEnabled extended descriptors\n");
      priv->extend_desc = 1;
    } else {
      printk("\fExtended descriptors not supported\n");
    }
    (priv->hw)->desc = & enh_desc_ops;
  } else {
    printk("\016 Normal descriptors\n");
    (priv->hw)->desc = & ndesc_ops;
  }
  return;
}
}
static int stmmac_get_hw_features(struct stmmac_priv *priv )
{
  u32 hw_cap ;
  {
  hw_cap = 0U;
  if ((unsigned long )((priv->hw)->dma)->get_hw_feature != (unsigned long )((unsigned int (* )(void * ))0)) {
    hw_cap = (*(((priv->hw)->dma)->get_hw_feature))(priv->ioaddr);
    priv->dma_cap.mbps_10_100 = hw_cap & 1U;
    priv->dma_cap.mbps_1000 = (hw_cap & 2U) >> 1;
    priv->dma_cap.half_duplex = (hw_cap & 4U) >> 2;
    priv->dma_cap.hash_filter = (hw_cap & 16U) >> 4;
    priv->dma_cap.multi_addr = (hw_cap & 32U) >> 5;
    priv->dma_cap.pcs = (hw_cap & 64U) >> 6;
    priv->dma_cap.sma_mdio = (hw_cap & 256U) >> 8;
    priv->dma_cap.pmt_remote_wake_up = (hw_cap & 512U) >> 9;
    priv->dma_cap.pmt_magic_frame = (hw_cap & 1024U) >> 10;
    priv->dma_cap.rmon = (hw_cap & 2048U) >> 11;
    priv->dma_cap.time_stamp = (hw_cap & 4096U) >> 12;
    priv->dma_cap.atime_stamp = (hw_cap & 8192U) >> 13;
    priv->dma_cap.eee = (hw_cap & 16384U) >> 14;
    priv->dma_cap.av = (hw_cap & 32768U) >> 15;
    priv->dma_cap.tx_coe = (hw_cap & 65536U) >> 16;
    priv->dma_cap.rx_coe_type1 = (hw_cap & 131072U) >> 17;
    priv->dma_cap.rx_coe_type2 = (hw_cap & 262144U) >> 18;
    priv->dma_cap.rxfifo_over_2048 = (hw_cap & 524288U) >> 19;
    priv->dma_cap.number_rx_channel = (hw_cap & 3145728U) >> 20;
    priv->dma_cap.number_tx_channel = (hw_cap & 12582912U) >> 22;
    priv->dma_cap.enh_desc = (hw_cap & 16777216U) >> 24;
  } else {
  }
  return ((int )hw_cap);
}
}
static void stmmac_check_ether_addr(struct stmmac_priv *priv )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp___1 = is_valid_ether_addr((u8 const *)(priv->dev)->dev_addr);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    (*(((priv->hw)->mac)->get_umac_addr))((void *)(priv->dev)->base_addr, (priv->dev)->dev_addr,
                                          0U);
    tmp = is_valid_ether_addr((u8 const *)(priv->dev)->dev_addr);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      eth_hw_addr_random(priv->dev);
    } else {
    }
    printk("\016%s: device MAC address %pM\n", (char *)(& (priv->dev)->name), (priv->dev)->dev_addr);
  } else {
  }
  return;
}
}
static int stmmac_init_dma_engine(struct stmmac_priv *priv )
{
  int pbl ;
  int fixed_burst ;
  int burst_len ;
  int mixed_burst ;
  int atds ;
  int tmp ;
  {
  pbl = 8;
  fixed_burst = 0;
  burst_len = 0;
  mixed_burst = 0;
  atds = 0;
  if ((unsigned long )(priv->plat)->dma_cfg != (unsigned long )((struct stmmac_dma_cfg *)0)) {
    pbl = ((priv->plat)->dma_cfg)->pbl;
    fixed_burst = ((priv->plat)->dma_cfg)->fixed_burst;
    mixed_burst = ((priv->plat)->dma_cfg)->mixed_burst;
    burst_len = ((priv->plat)->dma_cfg)->burst_len;
  } else {
  }
  if (priv->extend_desc != 0 && priv->mode == 2U) {
    atds = 1;
  } else {
  }
  tmp = (*(((priv->hw)->dma)->init))(priv->ioaddr, pbl, fixed_burst, mixed_burst,
                                     burst_len, (u32 )priv->dma_tx_phy, (u32 )priv->dma_rx_phy,
                                     atds);
  return (tmp);
}
}
static void stmmac_tx_timer(unsigned long data )
{
  struct stmmac_priv *priv ;
  {
  priv = (struct stmmac_priv *)data;
  stmmac_tx_clean(priv);
  return;
}
}
static void stmmac_init_tx_coalesce(struct stmmac_priv *priv )
{
  unsigned long tmp ;
  {
  priv->tx_coal_frames = 64U;
  priv->tx_coal_timer = 40000U;
  reg_timer_4(& priv->txtimer);
  tmp = usecs_to_jiffies(priv->tx_coal_timer);
  priv->txtimer.expires = tmp + (unsigned long )jiffies;
  priv->txtimer.data = (unsigned long )priv;
  priv->txtimer.function = & stmmac_tx_timer;
  add_timer(& priv->txtimer);
  return;
}
}
static int stmmac_hw_setup(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  ret = init_dma_desc_rings(dev);
  if (ret < 0) {
    printk("\v%s: DMA descriptors initialization failed\n", "stmmac_hw_setup");
    return (ret);
  } else {
  }
  ret = stmmac_init_dma_engine(priv);
  if (ret < 0) {
    printk("\v%s: DMA engine initialization failed\n", "stmmac_hw_setup");
    return (ret);
  } else {
  }
  (*(((priv->hw)->mac)->set_umac_addr))(priv->ioaddr, dev->dev_addr, 0U);
  if ((unsigned long )(priv->plat)->bus_setup != (unsigned long )((void (*)(void * ))0)) {
    (*((priv->plat)->bus_setup))(priv->ioaddr);
  } else {
  }
  (*(((priv->hw)->mac)->core_init))(priv->ioaddr, (int )dev->mtu);
  stmmac_set_mac(priv->ioaddr, 1);
  stmmac_dma_operation_mode(priv);
  stmmac_mmc_setup(priv);
  ret = stmmac_init_ptp(priv);
  if (ret != 0 && ret != -95) {
    printk("\f%s: failed PTP initialisation\n", "stmmac_hw_setup");
  } else {
  }
  ret = stmmac_init_fs(dev);
  if (ret < 0) {
    printk("\f%s: failed debugFS registration\n", "stmmac_hw_setup");
  } else {
  }
  descriptor.modname = "stmmac";
  descriptor.function = "stmmac_hw_setup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
  descriptor.format = "%s: DMA RX/TX processes started...\n";
  descriptor.lineno = 1805U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: DMA RX/TX processes started...\n", (char *)(& dev->name));
  } else {
  }
  (*(((priv->hw)->dma)->start_tx))(priv->ioaddr);
  (*(((priv->hw)->dma)->start_rx))(priv->ioaddr);
  if ((priv->msg_enable & 8192U) != 0U) {
    (*(((priv->hw)->mac)->dump_regs))(priv->ioaddr);
    (*(((priv->hw)->dma)->dump_regs))(priv->ioaddr);
  } else {
  }
  priv->tx_lpi_timer = 0;
  tmp___1 = stmmac_eee_init(priv);
  priv->eee_enabled = (int )tmp___1;
  stmmac_init_tx_coalesce(priv);
  if (priv->use_riwt != 0 && (unsigned long )((priv->hw)->dma)->rx_watchdog != (unsigned long )((void (* )(void * ,
                                                                                                                      u32 ))0)) {
    priv->rx_riwt = 255U;
    (*(((priv->hw)->dma)->rx_watchdog))(priv->ioaddr, 255U);
  } else {
  }
  if (priv->pcs != 0 && (unsigned long )((priv->hw)->mac)->ctrl_ane != (unsigned long )((void (* )(void * ,
                                                                                                              bool ))0)) {
    (*(((priv->hw)->mac)->ctrl_ane))(priv->ioaddr, 0);
  } else {
  }
  return (0);
}
}
static int stmmac_open(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int ret ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  stmmac_check_ether_addr(priv);
  if ((priv->pcs != 1 && priv->pcs != 4) && priv->pcs != 8) {
    ret = stmmac_init_phy(dev);
    if (ret != 0) {
      printk("\v%s: Cannot attach to PHY (error: %d)\n", "stmmac_open", ret);
      return (ret);
    } else {
    }
  } else {
  }
  memset((void *)(& priv->xstats), 0, 704UL);
  priv->xstats.threshold = (unsigned long )tc;
  priv->dma_tx_size = (unsigned int )(dma_txsize + 63) & 4294967232U;
  priv->dma_rx_size = (unsigned int )(dma_rxsize + 63) & 4294967232U;
  priv->dma_buf_sz = (unsigned int )(buf_sz + 63) & 4294967232U;
  ret = alloc_dma_desc_resources(priv);
  if (ret < 0) {
    printk("\v%s: DMA descriptors allocation failed\n", "stmmac_open");
    goto dma_desc_error;
  } else {
  }
  ret = stmmac_hw_setup(dev);
  if (ret < 0) {
    printk("\v%s: Hw setup failed\n", "stmmac_open");
    goto init_error;
  } else {
  }
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    phy_start(priv->phydev);
  } else {
  }
  ret = ldv_request_irq_41((unsigned int )dev->irq, & stmmac_interrupt, 128UL, (char const *)(& dev->name),
                           (void *)dev);
  tmp___0 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___0 != 0L) {
    printk("\v%s: OLD_ERROR: allocating the IRQ %d (error: %d)\n", "stmmac_open", dev->irq,
           ret);
    goto init_error;
  } else {
  }
  if (priv->wol_irq != dev->irq) {
    ret = ldv_request_irq_42((unsigned int )priv->wol_irq, & stmmac_interrupt, 128UL,
                             (char const *)(& dev->name), (void *)dev);
    tmp___1 = ldv__builtin_expect(ret < 0, 0L);
    if (tmp___1 != 0L) {
      printk("\v%s: OLD_ERROR: allocating the WoL IRQ %d (%d)\n", "stmmac_open", priv->wol_irq,
             ret);
      goto wolirq_error;
    } else {
    }
  } else {
  }
  if (priv->lpi_irq > 0) {
    ret = ldv_request_irq_43((unsigned int )priv->lpi_irq, & stmmac_interrupt, 128UL,
                             (char const *)(& dev->name), (void *)dev);
    tmp___2 = ldv__builtin_expect(ret < 0, 0L);
    if (tmp___2 != 0L) {
      printk("\v%s: OLD_ERROR: allocating the LPI IRQ %d (%d)\n", "stmmac_open", priv->lpi_irq,
             ret);
      goto lpiirq_error;
    } else {
    }
  } else {
  }
  napi_enable(& priv->napi);
  netif_start_queue(dev);
  return (0);
  lpiirq_error: ;
  if (priv->wol_irq != dev->irq) {
    ldv_free_irq_44((unsigned int )priv->wol_irq, (void *)dev);
  } else {
  }
  wolirq_error:
  ldv_free_irq_45((unsigned int )dev->irq, (void *)dev);
  init_error:
  free_dma_desc_resources(priv);
  dma_desc_error: ;
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    phy_disconnect(priv->phydev);
  } else {
  }
  return (ret);
}
}
static int stmmac_release(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->eee_enabled != 0) {
    ldv_del_timer_sync_46(& priv->eee_ctrl_timer);
  } else {
  }
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    phy_stop(priv->phydev);
    phy_disconnect(priv->phydev);
    priv->phydev = (struct phy_device *)0;
  } else {
  }
  netif_stop_queue(dev);
  napi_disable(& priv->napi);
  ldv_del_timer_sync_47(& priv->txtimer);
  ldv_free_irq_48((unsigned int )dev->irq, (void *)dev);
  if (priv->wol_irq != dev->irq) {
    ldv_free_irq_49((unsigned int )priv->wol_irq, (void *)dev);
  } else {
  }
  if (priv->lpi_irq > 0) {
    ldv_free_irq_50((unsigned int )priv->lpi_irq, (void *)dev);
  } else {
  }
  (*(((priv->hw)->dma)->stop_tx))(priv->ioaddr);
  (*(((priv->hw)->dma)->stop_rx))(priv->ioaddr);
  free_dma_desc_resources(priv);
  stmmac_set_mac(priv->ioaddr, 0);
  netif_carrier_off(dev);
  stmmac_exit_fs();
  stmmac_release_ptp(priv);
  return (0);
}
}
static netdev_tx_t stmmac_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int txsize ;
  unsigned int entry ;
  int i ;
  int csum_insertion ;
  int is_jumbo ;
  int nfrags ;
  unsigned char *tmp___0 ;
  struct dma_desc *desc ;
  struct dma_desc *first ;
  unsigned int nopaged_len ;
  unsigned int tmp___1 ;
  unsigned int enh_desc ;
  bool tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  dma_addr_t tmp___7 ;
  long tmp___8 ;
  skb_frag_t const *frag ;
  unsigned char *tmp___9 ;
  int len ;
  unsigned int tmp___10 ;
  dma_addr_t tmp___11 ;
  unsigned long tmp___12 ;
  struct _ddebug descriptor ;
  long tmp___13 ;
  struct _ddebug descriptor___0 ;
  long tmp___14 ;
  struct _ddebug descriptor___1 ;
  long tmp___15 ;
  u32 tmp___16 ;
  long tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  txsize = priv->dma_tx_size;
  csum_insertion = 0;
  is_jumbo = 0;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  nfrags = (int )((struct skb_shared_info *)tmp___0)->nr_frags;
  tmp___1 = skb_headlen((struct sk_buff const *)skb);
  nopaged_len = tmp___1;
  enh_desc = (unsigned int )(priv->plat)->enh_desc;
  tmp___4 = stmmac_tx_avail(priv);
  tmp___5 = ldv__builtin_expect(tmp___4 < (u32 )(nfrags + 1), 0L);
  if (tmp___5 != 0L) {
    tmp___2 = netif_queue_stopped((struct net_device const *)dev);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      netif_stop_queue(dev);
      printk("\v%s: Tx Ring full when queue awake\n", "stmmac_xmit");
    } else {
    }
    return (16);
  } else {
  }
  spin_lock(& priv->tx_lock);
  if ((int )priv->tx_path_in_lpi_mode) {
    stmmac_disable_eee_mode(priv);
  } else {
  }
  entry = priv->cur_tx % txsize;
  csum_insertion = (unsigned int )*((unsigned char *)skb + 124UL) == 12U;
  if (priv->extend_desc != 0) {
    desc = (struct dma_desc *)priv->dma_etx + (unsigned long )entry;
  } else {
    desc = priv->dma_tx + (unsigned long )entry;
  }
  first = desc;
  if (enh_desc != 0U) {
    tmp___6 = (*(((priv->hw)->mode)->is_jumbo_frm))((int )skb->len, (int )enh_desc);
    is_jumbo = (int )tmp___6;
  } else {
  }
  tmp___8 = ldv__builtin_expect(is_jumbo == 0, 1L);
  if (tmp___8 != 0L) {
    tmp___7 = dma_map_single_attrs(priv->device, (void *)skb->data, (size_t )nopaged_len,
                                   1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___7;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 1, (int )nopaged_len, csum_insertion,
                                             (int )priv->mode);
  } else {
    desc = first;
    entry = (*(((priv->hw)->mode)->jumbo_frm))((void *)priv, skb, csum_insertion);
  }
  i = 0;
  goto ldv_50893;
  ldv_50892:
  tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___9)->frags) + (unsigned long )i;
  tmp___10 = skb_frag_size(frag);
  len = (int )tmp___10;
  *(priv->tx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
  priv->cur_tx = priv->cur_tx + 1U;
  entry = priv->cur_tx % txsize;
  if (priv->extend_desc != 0) {
    desc = (struct dma_desc *)priv->dma_etx + (unsigned long )entry;
  } else {
    desc = priv->dma_tx + (unsigned long )entry;
  }
  tmp___11 = skb_frag_dma_map(priv->device, frag, 0UL, (size_t )len, 1);
  desc->des2 = (unsigned int )tmp___11;
  *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
  (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 0, len, csum_insertion, (int )priv->mode);
  __asm__ volatile ("sfence": : : "memory");
  (*(((priv->hw)->desc)->set_tx_owner))(desc);
  __asm__ volatile ("sfence": : : "memory");
  i = i + 1;
  ldv_50893: ;
  if (i < nfrags) {
    goto ldv_50892;
  } else {
  }
  *(priv->tx_skbuff + (unsigned long )entry) = skb;
  (*(((priv->hw)->desc)->close_tx_desc))(desc);
  __asm__ volatile ("sfence": : : "memory");
  priv->tx_count_frames = (priv->tx_count_frames + (u32 )nfrags) + 1U;
  if (priv->tx_coal_frames > priv->tx_count_frames) {
    (*(((priv->hw)->desc)->clear_tx_ic))(desc);
    priv->xstats.tx_reset_ic_bit = priv->xstats.tx_reset_ic_bit + 1UL;
    tmp___12 = usecs_to_jiffies(priv->tx_coal_timer);
    ldv_mod_timer_51(& priv->txtimer, tmp___12 + (unsigned long )jiffies);
  } else {
    priv->tx_count_frames = 0U;
  }
  (*(((priv->hw)->desc)->set_tx_owner))(first);
  __asm__ volatile ("sfence": : : "memory");
  priv->cur_tx = priv->cur_tx + 1U;
  if ((priv->msg_enable & 4096U) != 0U) {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_xmit";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor.format = "%s: curr %d dirty=%d entry=%d, first=%p, nfrags=%d";
    descriptor.lineno = 2094U;
    descriptor.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: curr %d dirty=%d entry=%d, first=%p, nfrags=%d",
                         "stmmac_xmit", priv->cur_tx % txsize, priv->dirty_tx % txsize,
                         entry, first, nfrags);
    } else {
    }
    if (priv->extend_desc != 0) {
      stmmac_display_ring((void *)priv->dma_etx, (int )txsize, 1);
    } else {
      stmmac_display_ring((void *)priv->dma_tx, (int )txsize, 0);
    }
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "stmmac_xmit";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor___0.format = ">>> frame to be transmitted: ";
    descriptor___0.lineno = 2101U;
    descriptor___0.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      __dynamic_pr_debug(& descriptor___0, ">>> frame to be transmitted: ");
    } else {
    }
    print_pkt(skb->data, (int )skb->len);
  } else {
  }
  tmp___16 = stmmac_tx_avail(priv);
  tmp___17 = ldv__builtin_expect(tmp___16 <= 18U, 0L);
  if (tmp___17 != 0L) {
    if ((priv->msg_enable & 8192U) != 0U) {
      descriptor___1.modname = "stmmac";
      descriptor___1.function = "stmmac_xmit";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor___1.format = "%s: stop transmitted packets\n";
      descriptor___1.lineno = 2106U;
      descriptor___1.flags = 0U;
      tmp___15 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___15 != 0L) {
        __dynamic_pr_debug(& descriptor___1, "%s: stop transmitted packets\n", "stmmac_xmit");
      } else {
      }
    } else {
    }
    netif_stop_queue(dev);
  } else {
  }
  dev->stats.tx_bytes = dev->stats.tx_bytes + (unsigned long )skb->len;
  tmp___20 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___21 = ldv__builtin_expect((long )((struct skb_shared_info *)tmp___20)->tx_flags & 1L,
                              0L);
  if (tmp___21 != 0L) {
    tmp___22 = ldv__builtin_expect(priv->hwts_tx_en != 0, 0L);
    if (tmp___22 != 0L) {
      tmp___18 = skb_end_pointer((struct sk_buff const *)skb);
      tmp___19 = skb_end_pointer((struct sk_buff const *)skb);
      ((struct skb_shared_info *)tmp___18)->tx_flags = (__u8 )((unsigned int )((struct skb_shared_info *)tmp___19)->tx_flags | 4U);
      (*(((priv->hw)->desc)->enable_tx_timestamp))(first);
    } else {
    }
  } else {
  }
  if (priv->hwts_tx_en == 0) {
    skb_tx_timestamp(skb);
  } else {
  }
  (*(((priv->hw)->dma)->enable_dma_transmission))(priv->ioaddr);
  spin_unlock(& priv->tx_lock);
  return (0);
}
}
static void stmmac_rx_vlan(struct net_device *dev , struct sk_buff *skb )
{
  struct ethhdr *ehdr ;
  u16 vlanid ;
  int tmp ;
  {
  if ((dev->features & 256ULL) != 0ULL) {
    tmp = __vlan_get_tag((struct sk_buff const *)skb, & vlanid);
    if (tmp == 0) {
      ehdr = (struct ethhdr *)skb->data;
      memmove((void *)skb->data + 4U, (void const *)ehdr, 12UL);
      skb_pull(skb, 4U);
      __vlan_hwaccel_put_tag(skb, 129, (int )vlanid);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void stmmac_rx_refill(struct stmmac_priv *priv )
{
  unsigned int rxsize ;
  int bfsize ;
  unsigned int entry ;
  struct dma_desc *p ;
  struct sk_buff *skb ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  {
  rxsize = priv->dma_rx_size;
  bfsize = (int )priv->dma_buf_sz;
  goto ldv_50916;
  ldv_50915:
  entry = priv->dirty_rx % rxsize;
  if (priv->extend_desc != 0) {
    p = (struct dma_desc *)priv->dma_erx + (unsigned long )entry;
  } else {
    p = priv->dma_rx + (unsigned long )entry;
  }
  tmp___1 = ldv__builtin_expect((unsigned long )*(priv->rx_skbuff + (unsigned long )entry) == (unsigned long )((struct sk_buff *)0),
                             1L);
  if (tmp___1 != 0L) {
    skb = netdev_alloc_skb_ip_align(priv->dev, (unsigned int )bfsize);
    tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                           0L);
    if (tmp != 0L) {
      goto ldv_50912;
    } else {
    }
    *(priv->rx_skbuff + (unsigned long )entry) = skb;
    *(priv->rx_skbuff_dma + (unsigned long )entry) = dma_map_single_attrs(priv->device,
                                                                          (void *)skb->data,
                                                                          (size_t )bfsize,
                                                                          2, (struct dma_attrs *)0);
    p->des2 = (unsigned int )*(priv->rx_skbuff_dma + (unsigned long )entry);
    (*(((priv->hw)->mode)->refill_desc3))((void *)priv, p);
    if ((priv->msg_enable & 2048U) != 0U) {
      descriptor.modname = "stmmac";
      descriptor.function = "stmmac_rx_refill";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor.format = "\trefill entry #%d\n";
      descriptor.lineno = 2184U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor, "\trefill entry #%d\n", entry);
      } else {
      }
    } else {
    }
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  (*(((priv->hw)->desc)->set_rx_owner))(p);
  __asm__ volatile ("sfence": : : "memory");
  priv->dirty_rx = priv->dirty_rx + 1U;
  ldv_50916: ;
  if (priv->cur_rx != priv->dirty_rx) {
    goto ldv_50915;
  } else {
  }
  ldv_50912: ;
  return;
}
}
static int stmmac_rx(struct stmmac_priv *priv , int limit )
{
  unsigned int rxsize ;
  unsigned int entry ;
  unsigned int next_entry ;
  unsigned int count ;
  int coe ;
  struct _ddebug descriptor ;
  long tmp ;
  int status ;
  struct dma_desc *p ;
  int tmp___0 ;
  struct sk_buff *skb ;
  int frame_len ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  rxsize = priv->dma_rx_size;
  entry = priv->cur_rx % rxsize;
  count = 0U;
  coe = (priv->plat)->rx_coe;
  if ((priv->msg_enable & 2048U) != 0U) {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_rx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
    descriptor.format = "%s: descriptor ring:\n";
    descriptor.lineno = 2208U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: descriptor ring:\n", "stmmac_rx");
    } else {
    }
    if (priv->extend_desc != 0) {
      stmmac_display_ring((void *)priv->dma_erx, (int )rxsize, 1);
    } else {
      stmmac_display_ring((void *)priv->dma_rx, (int )rxsize, 0);
    }
  } else {
  }
  goto ldv_50937;
  ldv_50936: ;
  if (priv->extend_desc != 0) {
    p = (struct dma_desc *)priv->dma_erx + (unsigned long )entry;
  } else {
    p = priv->dma_rx + (unsigned long )entry;
  }
  tmp___0 = (*(((priv->hw)->desc)->get_rx_owner))(p);
  if (tmp___0 != 0) {
    goto ldv_50930;
  } else {
  }
  count = count + 1U;
  priv->cur_rx = priv->cur_rx + 1U;
  next_entry = priv->cur_rx % rxsize;
  if (priv->extend_desc != 0) {
    __builtin_prefetch((void const *)priv->dma_erx + (unsigned long )next_entry);
  } else {
    __builtin_prefetch((void const *)priv->dma_rx + (unsigned long )next_entry);
  }
  status = (*(((priv->hw)->desc)->rx_status))((void *)(& (priv->dev)->stats), & priv->xstats,
                                              p);
  if (priv->extend_desc != 0 && (unsigned long )((priv->hw)->desc)->rx_extended_status != (unsigned long )((void (* )(void * ,
                                                                                                                                 struct stmmac_extra_stats * ,
                                                                                                                                 struct dma_extended_desc * ))0)) {
    (*(((priv->hw)->desc)->rx_extended_status))((void *)(& (priv->dev)->stats), & priv->xstats,
                                                priv->dma_erx + (unsigned long )entry);
  } else {
  }
  tmp___7 = ldv__builtin_expect(status == 1, 0L);
  if (tmp___7 != 0L) {
    (priv->dev)->stats.rx_errors = (priv->dev)->stats.rx_errors + 1UL;
    if (priv->hwts_rx_en != 0 && priv->extend_desc == 0) {
      *(priv->rx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
      dma_unmap_single_attrs(priv->device, *(priv->rx_skbuff_dma + (unsigned long )entry),
                             (size_t )priv->dma_buf_sz, 2, (struct dma_attrs *)0);
    } else {
    }
  } else {
    frame_len = (*(((priv->hw)->desc)->get_rx_frame_len))(p, coe);
    tmp___1 = ldv__builtin_expect(status != 4, 0L);
    if (tmp___1 != 0L) {
      frame_len = frame_len + -4;
    } else {
    }
    if ((priv->msg_enable & 2048U) != 0U) {
      descriptor___0.modname = "stmmac";
      descriptor___0.function = "stmmac_rx";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor___0.format = "\tdesc: %p [entry %d] buff=0x%x\n";
      descriptor___0.lineno = 2270U;
      descriptor___0.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "\tdesc: %p [entry %d] buff=0x%x\n",
                           p, entry, p->des2);
      } else {
      }
      if (frame_len > 1514) {
        descriptor___1.modname = "stmmac";
        descriptor___1.function = "stmmac_rx";
        descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
        descriptor___1.format = "\tframe size %d, COE: %d\n";
        descriptor___1.lineno = 2273U;
        descriptor___1.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_pr_debug(& descriptor___1, "\tframe size %d, COE: %d\n", frame_len,
                             status);
        } else {
        }
      } else {
      }
    } else {
    }
    skb = *(priv->rx_skbuff + (unsigned long )entry);
    tmp___4 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___4 != 0L) {
      printk("\v%s: Inconsistent Rx descriptor chain\n", (char *)(& (priv->dev)->name));
      (priv->dev)->stats.rx_dropped = (priv->dev)->stats.rx_dropped + 1UL;
      goto ldv_50930;
    } else {
    }
    __builtin_prefetch((void const *)skb->data);
    *(priv->rx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
    stmmac_get_rx_hwtstamp(priv, entry, skb);
    skb_put(skb, (unsigned int )frame_len);
    dma_unmap_single_attrs(priv->device, *(priv->rx_skbuff_dma + (unsigned long )entry),
                           (size_t )priv->dma_buf_sz, 2, (struct dma_attrs *)0);
    if ((priv->msg_enable & 4096U) != 0U) {
      descriptor___2.modname = "stmmac";
      descriptor___2.function = "stmmac_rx";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor___2.format = "frame received (%dbytes)";
      descriptor___2.lineno = 2293U;
      descriptor___2.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_pr_debug(& descriptor___2, "frame received (%dbytes)", frame_len);
      } else {
      }
      print_pkt(skb->data, frame_len);
    } else {
    }
    stmmac_rx_vlan(priv->dev, skb);
    skb->protocol = eth_type_trans(skb, priv->dev);
    tmp___6 = ldv__builtin_expect(coe == 0, 0L);
    if (tmp___6 != 0L) {
      skb_checksum_none_assert((struct sk_buff const *)skb);
    } else {
      skb->ip_summed = 1U;
    }
    napi_gro_receive(& priv->napi, skb);
    (priv->dev)->stats.rx_packets = (priv->dev)->stats.rx_packets + 1UL;
    (priv->dev)->stats.rx_bytes = (priv->dev)->stats.rx_bytes + (unsigned long )frame_len;
  }
  entry = next_entry;
  ldv_50937: ;
  if ((unsigned int )limit > count) {
    goto ldv_50936;
  } else {
  }
  ldv_50930:
  stmmac_rx_refill(priv);
  priv->xstats.rx_pkt_n = priv->xstats.rx_pkt_n + (unsigned long )count;
  return ((int )count);
}
}
static int stmmac_poll(struct napi_struct *napi , int budget )
{
  struct stmmac_priv *priv ;
  struct napi_struct const *__mptr ;
  int work_done ;
  {
  __mptr = (struct napi_struct const *)napi;
  priv = (struct stmmac_priv *)__mptr + 0xfffffffffffffe80UL;
  work_done = 0;
  priv->xstats.napi_poll = priv->xstats.napi_poll + 1UL;
  stmmac_tx_clean(priv);
  work_done = stmmac_rx(priv, budget);
  if (work_done < budget) {
    napi_complete(napi);
    stmmac_enable_dma_irq(priv);
  } else {
  }
  return (work_done);
}
}
static void stmmac_tx_timeout(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  stmmac_tx_err(priv);
  return;
}
}
static void stmmac_set_rx_mode(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  spin_lock(& priv->lock);
  (*(((priv->hw)->mac)->set_filter))(dev, priv->synopsys_id);
  spin_unlock(& priv->lock);
  return;
}
}
static int stmmac_change_mtu(struct net_device *dev , int new_mtu )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int max_mtu ;
  bool tmp___0 ;
  int _max1 ;
  int _max2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    printk("\v%s: must be stopped to change its MTU\n", (char *)(& dev->name));
    return (-16);
  } else {
  }
  if ((priv->plat)->enh_desc != 0) {
    max_mtu = 9000;
  } else {
    _max1 = 32;
    _max2 = 64;
    max_mtu = (int )(3776U - (unsigned int )(_max1 > _max2 ? _max1 : _max2));
  }
  if ((priv->plat)->maxmtu < max_mtu) {
    max_mtu = (priv->plat)->maxmtu;
  } else {
  }
  if (new_mtu <= 45 || new_mtu > max_mtu) {
    printk("\v%s: invalid MTU, max MTU is: %d\n", (char *)(& dev->name), max_mtu);
    return (-22);
  } else {
  }
  dev->mtu = (unsigned int )new_mtu;
  netdev_update_features(dev);
  return (0);
}
}
static netdev_features_t stmmac_fix_features(struct net_device *dev , netdev_features_t features )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if ((priv->plat)->rx_coe == 0) {
    features = features & 0xfffffffbffffffffULL;
  } else
  if ((priv->plat)->rx_coe == 1) {
    features = features & 0xffffffffffffffefULL;
  } else {
  }
  if ((priv->plat)->tx_coe == 0) {
    features = features & 0xffffffffffffffe5ULL;
  } else {
  }
  if ((priv->plat)->bugged_jumbo != 0 && dev->mtu > 1500U) {
    features = features & 0xffffffffffffffe5ULL;
  } else {
  }
  return (features);
}
}
static irqreturn_t stmmac_interrupt(int irq , void *dev_id )
{
  struct net_device *dev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  long tmp___0 ;
  int status ;
  int tmp___1 ;
  long tmp___2 ;
  {
  dev = (struct net_device *)dev_id;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->irq_wake != 0) {
    pm_wakeup_event(priv->device, 0U);
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct net_device *)0),
                             0L);
  if (tmp___0 != 0L) {
    printk("\v%s: invalid dev pointer\n", "stmmac_interrupt");
    return (0);
  } else {
  }
  if ((priv->plat)->has_gmac != 0) {
    tmp___1 = (*(((priv->hw)->mac)->host_irq_status))((void *)dev->base_addr, & priv->xstats);
    status = tmp___1;
    tmp___2 = ldv__builtin_expect(status != 0, 0L);
    if (tmp___2 != 0L) {
      if ((status & 2) != 0) {
        priv->tx_path_in_lpi_mode = 1;
      } else {
      }
      if ((status & 4) != 0) {
        priv->tx_path_in_lpi_mode = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  stmmac_dma_interrupt(priv);
  return (1);
}
}
static void stmmac_poll_controller(struct net_device *dev )
{
  {
  disable_irq((unsigned int )dev->irq);
  stmmac_interrupt(dev->irq, (void *)dev);
  enable_irq((unsigned int )dev->irq);
  return;
}
}
static int stmmac_ioctl(struct net_device *dev , struct ifreq *rq , int cmd )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  ret = -95;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-22);
  } else {
  }
  switch (cmd) {
  case 35143: ;
  case 35144: ;
  case 35145: ;
  if ((unsigned long )priv->phydev == (unsigned long )((struct phy_device *)0)) {
    return (-22);
  } else {
  }
  ret = phy_mii_ioctl(priv->phydev, rq, cmd);
  goto ldv_50989;
  case 35248:
  ret = stmmac_hwtstamp_ioctl(dev, rq);
  goto ldv_50989;
  default: ;
  goto ldv_50989;
  }
  ldv_50989: ;
  return (ret);
}
}
static struct dentry *stmmac_fs_dir ;
static struct dentry *stmmac_rings_status ;
static struct dentry *stmmac_dma_cap ;
static void sysfs_display_ring(void *head , int size , int extend_desc , struct seq_file *seq )
{
  int i ;
  struct dma_extended_desc *ep ;
  struct dma_desc *p ;
  u64 x ;
  phys_addr_t tmp ;
  phys_addr_t tmp___0 ;
  {
  ep = (struct dma_extended_desc *)head;
  p = (struct dma_desc *)head;
  i = 0;
  goto ldv_51006;
  ldv_51005: ;
  if (extend_desc != 0) {
    x = *((u64 *)ep);
    tmp = virt_to_phys((void volatile *)ep);
    seq_printf(seq, "%d [0x%x]: 0x%x 0x%x 0x%x 0x%x\n", i, (unsigned int )tmp, (unsigned int )x,
               (unsigned int )(x >> 32), ep->basic.des2, ep->basic.des3);
    ep = ep + 1;
  } else {
    x = *((u64 *)p);
    tmp___0 = virt_to_phys((void volatile *)ep);
    seq_printf(seq, "%d [0x%x]: 0x%x 0x%x 0x%x 0x%x\n", i, (unsigned int )tmp___0,
               (unsigned int )x, (unsigned int )(x >> 32), p->des2, p->des3);
    p = p + 1;
  }
  seq_printf(seq, "\n");
  i = i + 1;
  ldv_51006: ;
  if (i < size) {
    goto ldv_51005;
  } else {
  }
  return;
}
}
static int stmmac_sysfs_ring_read(struct seq_file *seq , void *v )
{
  struct net_device *dev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int txsize ;
  unsigned int rxsize ;
  {
  dev = (struct net_device *)seq->private;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  txsize = priv->dma_tx_size;
  rxsize = priv->dma_rx_size;
  if (priv->extend_desc != 0) {
    seq_printf(seq, "Extended RX descriptor ring:\n");
    sysfs_display_ring((void *)priv->dma_erx, (int )rxsize, 1, seq);
    seq_printf(seq, "Extended TX descriptor ring:\n");
    sysfs_display_ring((void *)priv->dma_etx, (int )txsize, 1, seq);
  } else {
    seq_printf(seq, "RX descriptor ring:\n");
    sysfs_display_ring((void *)priv->dma_rx, (int )rxsize, 0, seq);
    seq_printf(seq, "TX descriptor ring:\n");
    sysfs_display_ring((void *)priv->dma_tx, (int )txsize, 0, seq);
  }
  return (0);
}
}
static int stmmac_sysfs_ring_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & stmmac_sysfs_ring_read, inode->i_private);
  return (tmp);
}
}
static struct file_operations const stmmac_rings_status_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & stmmac_sysfs_ring_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int stmmac_sysfs_dma_cap_read(struct seq_file *seq , void *v )
{
  struct net_device *dev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  dev = (struct net_device *)seq->private;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->hw_cap_support == 0) {
    seq_printf(seq, "DMA HW features not supported\n");
    return (0);
  } else {
  }
  seq_printf(seq, "==============================\n");
  seq_printf(seq, "\tDMA HW features\n");
  seq_printf(seq, "==============================\n");
  seq_printf(seq, "\t10/100 Mbps %s\n", priv->dma_cap.mbps_10_100 != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\t1000 Mbps %s\n", priv->dma_cap.mbps_1000 != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tHalf duple %s\n", priv->dma_cap.half_duplex != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tHash Filter: %s\n", priv->dma_cap.hash_filter != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tMultiple MAC address registers: %s\n", priv->dma_cap.multi_addr != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tPCS (TBI/SGMII/RTBI PHY interfatces): %s\n", priv->dma_cap.pcs != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tSMA (MDIO) Interface: %s\n", priv->dma_cap.sma_mdio != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tPMT Remote wake up: %s\n", priv->dma_cap.pmt_remote_wake_up != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tPMT Magic Frame: %s\n", priv->dma_cap.pmt_magic_frame != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tRMON module: %s\n", priv->dma_cap.rmon != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tIEEE 1588-2002 Time Stamp: %s\n", priv->dma_cap.time_stamp != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tIEEE 1588-2008 Advanced Time Stamp:%s\n", priv->dma_cap.atime_stamp != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\t802.3az - Energy-Efficient Ethernet (EEE) %s\n", priv->dma_cap.eee != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tAV features: %s\n", priv->dma_cap.av != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tChecksum Offload in TX: %s\n", priv->dma_cap.tx_coe != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tIP Checksum Offload (type1) in RX: %s\n", priv->dma_cap.rx_coe_type1 != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tIP Checksum Offload (type2) in RX: %s\n", priv->dma_cap.rx_coe_type2 != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tRXFIFO > 2048bytes: %s\n", priv->dma_cap.rxfifo_over_2048 != 0U ? (char *)"Y" : (char *)"N");
  seq_printf(seq, "\tNumber of Additional RX channel: %d\n", priv->dma_cap.number_rx_channel);
  seq_printf(seq, "\tNumber of Additional TX channel: %d\n", priv->dma_cap.number_tx_channel);
  seq_printf(seq, "\tEnhanced descriptors: %s\n", priv->dma_cap.enh_desc != 0U ? (char *)"Y" : (char *)"N");
  return (0);
}
}
static int stmmac_sysfs_dma_cap_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & stmmac_sysfs_dma_cap_read, inode->i_private);
  return (tmp);
}
}
static struct file_operations const stmmac_dma_cap_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & stmmac_sysfs_dma_cap_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int stmmac_init_fs(struct net_device *dev )
{
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  stmmac_fs_dir = debugfs_create_dir("stmmaceth", (struct dentry *)0);
  if ((unsigned long )stmmac_fs_dir == (unsigned long )((struct dentry *)0)) {
    printk("\vERROR %s, debugfs create directory failed\n", (char *)"stmmaceth");
    return (-12);
  } else {
    tmp = IS_ERR((void const *)stmmac_fs_dir);
    if ((int )tmp) {
      printk("\vERROR %s, debugfs create directory failed\n", (char *)"stmmaceth");
      return (-12);
    } else {
    }
  }
  stmmac_rings_status = debugfs_create_file("descriptors_status", 292, stmmac_fs_dir,
                                            (void *)dev, & stmmac_rings_status_fops);
  if ((unsigned long )stmmac_rings_status == (unsigned long )((struct dentry *)0)) {
    printk("\016ERROR creating stmmac ring debugfs file\n");
    debugfs_remove(stmmac_fs_dir);
    return (-12);
  } else {
    tmp___0 = IS_ERR((void const *)stmmac_rings_status);
    if ((int )tmp___0) {
      printk("\016ERROR creating stmmac ring debugfs file\n");
      debugfs_remove(stmmac_fs_dir);
      return (-12);
    } else {
    }
  }
  stmmac_dma_cap = debugfs_create_file("dma_cap", 292, stmmac_fs_dir, (void *)dev,
                                       & stmmac_dma_cap_fops);
  if ((unsigned long )stmmac_dma_cap == (unsigned long )((struct dentry *)0)) {
    printk("\016ERROR creating stmmac MMC debugfs file\n");
    debugfs_remove(stmmac_rings_status);
    debugfs_remove(stmmac_fs_dir);
    return (-12);
  } else {
    tmp___1 = IS_ERR((void const *)stmmac_dma_cap);
    if ((int )tmp___1) {
      printk("\016ERROR creating stmmac MMC debugfs file\n");
      debugfs_remove(stmmac_rings_status);
      debugfs_remove(stmmac_fs_dir);
      return (-12);
    } else {
    }
  }
  return (0);
}
}
static void stmmac_exit_fs(void)
{
  {
  debugfs_remove(stmmac_rings_status);
  debugfs_remove(stmmac_dma_cap);
  debugfs_remove(stmmac_fs_dir);
  return;
}
}
static struct net_device_ops const stmmac_netdev_ops =
     {0, 0, & stmmac_open, & stmmac_release, & stmmac_xmit, 0, 0, & stmmac_set_rx_mode,
    & eth_mac_addr, 0, & stmmac_ioctl, 0, & stmmac_change_mtu, 0, & stmmac_tx_timeout,
    0, 0, 0, 0, & stmmac_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & stmmac_fix_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int stmmac_hw_init(struct stmmac_priv *priv )
{
  int ret ;
  struct mac_device_info *mac ;
  u32 tmp ;
  {
  if ((priv->plat)->has_gmac != 0) {
    (priv->dev)->priv_flags = (priv->dev)->priv_flags | 131072U;
    mac = dwmac1000_setup(priv->ioaddr);
  } else {
    mac = dwmac100_setup(priv->ioaddr);
  }
  if ((unsigned long )mac == (unsigned long )((struct mac_device_info *)0)) {
    return (-12);
  } else {
  }
  priv->hw = mac;
  tmp = stmmac_get_synopsys_id(priv);
  priv->synopsys_id = (int )tmp;
  if (chain_mode != 0U) {
    (priv->hw)->mode = & chain_mode_ops;
    printk("\016 Chain mode enabled\n");
    priv->mode = 1U;
  } else {
    (priv->hw)->mode = & ring_mode_ops;
    printk("\016 Ring mode enabled\n");
    priv->mode = 2U;
  }
  priv->hw_cap_support = stmmac_get_hw_features(priv);
  if (priv->hw_cap_support != 0) {
    printk("\016 DMA HW capability register supported");
    (priv->plat)->enh_desc = (int )priv->dma_cap.enh_desc;
    (priv->plat)->pmt = (int )priv->dma_cap.pmt_remote_wake_up;
    (priv->plat)->tx_coe = (int )priv->dma_cap.tx_coe;
    if (priv->dma_cap.rx_coe_type2 != 0U) {
      (priv->plat)->rx_coe = 2;
    } else
    if (priv->dma_cap.rx_coe_type1 != 0U) {
      (priv->plat)->rx_coe = 1;
    } else {
    }
  } else {
    printk("\016 No HW DMA feature register supported");
  }
  stmmac_selec_desc_mode(priv);
  ret = (*(((priv->hw)->mac)->rx_ipc))(priv->ioaddr);
  if (ret == 0) {
    printk("\f RX IPC Checksum Offload not configured.\n");
    (priv->plat)->rx_coe = 0;
  } else {
  }
  if ((priv->plat)->rx_coe != 0) {
    printk("\016 RX Checksum Offload Engine supported (type %d)\n", (priv->plat)->rx_coe);
  } else {
  }
  if ((priv->plat)->tx_coe != 0) {
    printk("\016 TX Checksum insertion supported\n");
  } else {
  }
  if ((priv->plat)->pmt != 0) {
    printk("\016 Wake-Up On Lan supported\n");
    device_set_wakeup_capable(priv->device, 1);
  } else {
  }
  return (0);
}
}
struct stmmac_priv *stmmac_dvr_probe(struct device *device , struct plat_stmmacenet_data *plat_dat___0 ,
                                     void *addr )
{
  int ret ;
  struct net_device *ndev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  unsigned long tmp___4 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  void *tmp___6 ;
  {
  ret = 0;
  ndev = (struct net_device *)0;
  ndev = alloc_etherdev_mqs(2432, 1U, 1U);
  if ((unsigned long )ndev == (unsigned long )((struct net_device *)0)) {
    return ((struct stmmac_priv *)0);
  } else {
  }
  ndev->dev.parent = device;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  priv->device = device;
  priv->dev = ndev;
  ether_setup(ndev);
  stmmac_set_ethtool_ops(ndev);
  priv->pause = (unsigned int )pause;
  priv->plat = plat_dat___0;
  priv->ioaddr = addr;
  (priv->dev)->base_addr = (unsigned long )addr;
  stmmac_verify_args();
  if (phyaddr >= 0 && phyaddr <= 31) {
    (priv->plat)->phy_addr = phyaddr;
  } else {
  }
  priv->stmmac_clk = devm_clk_get(priv->device, "stmmaceth");
  tmp___1 = IS_ERR((void const *)priv->stmmac_clk);
  if ((int )tmp___1) {
    dev_warn((struct device const *)priv->device, "%s: warning: cannot get CSR clock\n",
             "stmmac_dvr_probe");
    tmp___0 = PTR_ERR((void const *)priv->stmmac_clk);
    ret = (int )tmp___0;
    goto error_clk_get;
  } else {
  }
  clk_prepare_enable(priv->stmmac_clk);
  priv->stmmac_rst = devm_reset_control_get(priv->device, "stmmaceth");
  tmp___3 = IS_ERR((void const *)priv->stmmac_rst);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)priv->stmmac_rst);
    if (tmp___2 == -517L) {
      ret = -517;
      goto error_hw_init;
    } else {
    }
    _dev_info((struct device const *)priv->device, "no reset control found\n");
    priv->stmmac_rst = (struct reset_control *)0;
  } else {
  }
  if ((unsigned long )priv->stmmac_rst != (unsigned long )((struct reset_control *)0)) {
    reset_control_deassert(priv->stmmac_rst);
  } else {
  }
  ret = stmmac_hw_init(priv);
  if (ret != 0) {
    goto error_hw_init;
  } else {
  }
  ndev->netdev_ops = & stmmac_netdev_ops;
  ndev->hw_features = 17179869203ULL;
  ndev->features = (ndev->features | ndev->hw_features) | 32ULL;
  tmp___4 = msecs_to_jiffies((unsigned int const )watchdog);
  ndev->watchdog_timeo = (int )tmp___4;
  ndev->features = ndev->features | 256ULL;
  priv->msg_enable = netif_msg_init(debug, (int )default_msg_level);
  if (flow_ctrl != 0) {
    priv->flow_ctrl = 3U;
  } else {
  }
  if (priv->synopsys_id > 52 && (priv->plat)->riwt_off == 0) {
    priv->use_riwt = 1;
    printk("\016 Enable RX Mitigation via HW Watchdog Timer\n");
  } else {
  }
  netif_napi_add(ndev, & priv->napi, & stmmac_poll, 64);
  spinlock_check(& priv->lock);
  __raw_spin_lock_init(& priv->lock.ldv_6347.rlock, "&(&priv->lock)->rlock", & __key);
  spinlock_check(& priv->tx_lock);
  __raw_spin_lock_init(& priv->tx_lock.ldv_6347.rlock, "&(&priv->tx_lock)->rlock",
                       & __key___0);
  ret = ldv_register_netdev_52(ndev);
  if (ret != 0) {
    printk("\v%s: OLD_ERROR %i registering the device\n", "stmmac_dvr_probe", ret);
    goto error_netdev_register;
  } else {
  }
  if ((priv->plat)->clk_csr == 0) {
    stmmac_clk_csr_set(priv);
  } else {
    priv->clk_csr = (priv->plat)->clk_csr;
  }
  stmmac_check_pcs_mode(priv);
  if ((priv->pcs != 1 && priv->pcs != 4) && priv->pcs != 8) {
    ret = stmmac_mdio_register(ndev);
    if (ret < 0) {
      descriptor.modname = "stmmac";
      descriptor.function = "stmmac_dvr_probe";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.o.c.prepared";
      descriptor.format = "%s: MDIO bus (id: %d) registration failed";
      descriptor.lineno = 2943U;
      descriptor.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s: MDIO bus (id: %d) registration failed",
                           "stmmac_dvr_probe", (priv->plat)->bus_id);
      } else {
      }
      goto error_mdio_register;
    } else {
    }
  } else {
  }
  return (priv);
  error_mdio_register:
  ldv_unregister_netdev_53(ndev);
  error_netdev_register:
  netif_napi_del(& priv->napi);
  error_hw_init:
  clk_disable_unprepare(priv->stmmac_clk);
  error_clk_get:
  ldv_free_netdev_54(ndev);
  tmp___6 = ERR_PTR((long )ret);
  return ((struct stmmac_priv *)tmp___6);
}
}
int stmmac_dvr_remove(struct net_device *ndev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  printk("\016%s:\n\tremoving driver", "stmmac_dvr_remove");
  (*(((priv->hw)->dma)->stop_rx))(priv->ioaddr);
  (*(((priv->hw)->dma)->stop_tx))(priv->ioaddr);
  stmmac_set_mac(priv->ioaddr, 0);
  if ((priv->pcs != 1 && priv->pcs != 4) && priv->pcs != 8) {
    stmmac_mdio_unregister(ndev);
  } else {
  }
  netif_carrier_off(ndev);
  ldv_unregister_netdev_55(ndev);
  if ((unsigned long )priv->stmmac_rst != (unsigned long )((struct reset_control *)0)) {
    reset_control_assert(priv->stmmac_rst);
  } else {
  }
  clk_disable_unprepare(priv->stmmac_clk);
  ldv_free_netdev_56(ndev);
  return (0);
}
}
int stmmac_suspend(struct net_device *ndev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned long flags ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  if ((unsigned long )ndev == (unsigned long )((struct net_device *)0)) {
    return (0);
  } else {
    tmp___0 = netif_running((struct net_device const *)ndev);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (0);
    } else {
    }
  }
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    phy_stop(priv->phydev);
  } else {
  }
  ldv_spin_lock();
  netif_device_detach(ndev);
  netif_stop_queue(ndev);
  napi_disable(& priv->napi);
  (*(((priv->hw)->dma)->stop_tx))(priv->ioaddr);
  (*(((priv->hw)->dma)->stop_rx))(priv->ioaddr);
  stmmac_clear_descriptors(priv);
  tmp___2 = device_may_wakeup(priv->device);
  if ((int )tmp___2) {
    (*(((priv->hw)->mac)->pmt))(priv->ioaddr, (unsigned long )priv->wolopts);
    priv->irq_wake = 1;
  } else {
    stmmac_set_mac(priv->ioaddr, 0);
    pinctrl_pm_select_sleep_state(priv->device);
    clk_disable_unprepare(priv->stmmac_clk);
  }
  spin_unlock_irqrestore(& priv->lock, flags);
  return (0);
}
}
int stmmac_resume(struct net_device *ndev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned long flags ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  tmp___0 = netif_running((struct net_device const *)ndev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  tmp___2 = device_may_wakeup(priv->device);
  if ((int )tmp___2) {
    (*(((priv->hw)->mac)->pmt))(priv->ioaddr, 0UL);
    priv->irq_wake = 0;
  } else {
    pinctrl_pm_select_default_state(priv->device);
    clk_prepare_enable(priv->stmmac_clk);
    if ((unsigned long )priv->mii != (unsigned long )((struct mii_bus *)0)) {
      stmmac_mdio_reset(priv->mii);
    } else {
    }
  }
  netif_device_attach(ndev);
  stmmac_hw_setup(ndev);
  napi_enable(& priv->napi);
  netif_start_queue(ndev);
  spin_unlock_irqrestore(& priv->lock, flags);
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    phy_start(priv->phydev);
  } else {
  }
  return (0);
}
}
static int stmmac_init(void)
{
  int ret ;
  {
  ret = stmmac_register_platform();
  if (ret != 0) {
    goto err;
  } else {
  }
  ret = stmmac_register_pci();
  if (ret != 0) {
    goto err_pci;
  } else {
  }
  return (0);
  err_pci:
  stmmac_unregister_platform();
  err:
  printk("\vstmmac: driver registration failed\n");
  return (ret);
}
}
static void stmmac_exit(void)
{
  {
  stmmac_unregister_platform();
  stmmac_unregister_pci();
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_5 ;
extern int ldv_ndo_init_21(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
int ldv_retval_6 ;
extern void ldv_check_final_state(void) ;
extern int ldv_ndo_uninit_21(void) ;
int ldv_retval_7 ;
int ldv_irq_3(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = stmmac_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_51117;
    default:
    ldv_stop();
    }
    ldv_51117: ;
  } else {
  }
  return (state);
}
}
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_51123;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_51123;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_51123;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_51123;
  default:
  ldv_stop();
  }
  ldv_51123: ;
  return;
}
}
void disable_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void choose_timer_5(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_5 = 2;
  return;
}
}
void activate_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 == 0) {
    ldv_irq_line_3_0 = line;
    ldv_irq_data_3_0 = data;
    ldv_irq_3_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_1 == 0) {
    ldv_irq_line_3_1 = line;
    ldv_irq_data_3_1 = data;
    ldv_irq_3_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_2 == 0) {
    ldv_irq_line_3_2 = line;
    ldv_irq_data_3_2 = data;
    ldv_irq_3_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_3 == 0) {
    ldv_irq_line_3_3 = line;
    ldv_irq_data_3_3 = data;
    ldv_irq_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_4 == (unsigned long )timer) {
    if (ldv_timer_state_4 == 2 || pending_flag != 0) {
      ldv_timer_list_4 = timer;
      ldv_timer_list_4->data = data;
      ldv_timer_state_4 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_4(timer);
  ldv_timer_list_4->data = data;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& stmmac_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_51157;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_51157;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_51157;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_51157;
  default:
  ldv_stop();
  }
  ldv_51157: ;
  return;
}
}
void choose_timer_4(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_4 = 2;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& stmmac_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void disable_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 != 0 && line == ldv_irq_line_3_0) {
    ldv_irq_3_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_1 != 0 && line == ldv_irq_line_3_1) {
    ldv_irq_3_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_2 != 0 && line == ldv_irq_line_3_2) {
    ldv_irq_3_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_3 != 0 && line == ldv_irq_line_3_3) {
    ldv_irq_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_4) {
    ldv_timer_state_4 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_file_operations_22(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  stmmac_dma_cap_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  stmmac_dma_cap_fops_group2 = (struct file *)tmp___0;
  return;
}
}
int reg_check_3(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& stmmac_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
int reg_timer_4(struct timer_list *timer )
{
  {
  ldv_timer_list_4 = timer;
  ldv_timer_state_4 = 1;
  return (0);
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = stmmac_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_51199;
    default:
    ldv_stop();
    }
    ldv_51199: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_5 == (unsigned long )timer) {
    if (ldv_timer_state_5 == 2 || pending_flag != 0) {
      ldv_timer_list_5 = timer;
      ldv_timer_list_5->data = data;
      ldv_timer_state_5 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_5(timer);
  ldv_timer_list_5->data = data;
  return;
}
}
void disable_suitable_timer_5(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_5) {
    ldv_timer_state_5 = 0;
    return;
  } else {
  }
  return;
}
}
void choose_interrupt_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_0, ldv_irq_line_3_0, ldv_irq_data_3_0);
  goto ldv_51219;
  case 1:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_1, ldv_irq_line_3_1, ldv_irq_data_3_1);
  goto ldv_51219;
  case 2:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_2, ldv_irq_line_3_2, ldv_irq_data_3_2);
  goto ldv_51219;
  case 3:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_3, ldv_irq_line_3_3, ldv_irq_data_3_3);
  goto ldv_51219;
  default:
  ldv_stop();
  }
  ldv_51219: ;
  return;
}
}
int reg_timer_5(struct timer_list *timer )
{
  {
  ldv_timer_list_5 = timer;
  ldv_timer_state_5 = 1;
  return (0);
}
}
int ldv_irq_2(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = stmmac_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_51234;
    default:
    ldv_stop();
    }
    ldv_51234: ;
  } else {
  }
  return (state);
}
}
void ldv_net_device_ops_21(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  stmmac_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_file_operations_23(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  stmmac_rings_status_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  stmmac_rings_status_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_13(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_19(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_20(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_18(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_16(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_9(void) ;
int main(void)
{
  struct ifreq *ldvarg18 ;
  void *tmp ;
  int ldvarg17 ;
  int tmp___0 ;
  netdev_features_t ldvarg14 ;
  void *ldvarg13 ;
  void *tmp___1 ;
  int ldvarg16 ;
  int tmp___2 ;
  struct sk_buff *ldvarg15 ;
  void *tmp___3 ;
  loff_t *ldvarg54 ;
  void *tmp___4 ;
  loff_t ldvarg53 ;
  loff_t tmp___5 ;
  size_t ldvarg55 ;
  size_t tmp___6 ;
  char *ldvarg56 ;
  void *tmp___7 ;
  int ldvarg52 ;
  int tmp___8 ;
  loff_t *ldvarg70 ;
  void *tmp___9 ;
  size_t ldvarg71 ;
  size_t tmp___10 ;
  int ldvarg68 ;
  int tmp___11 ;
  char *ldvarg72 ;
  void *tmp___12 ;
  loff_t ldvarg69 ;
  loff_t tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  tmp = ldv_zalloc(40UL);
  ldvarg18 = (struct ifreq *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg17 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg13 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg16 = tmp___2;
  tmp___3 = ldv_zalloc(232UL);
  ldvarg15 = (struct sk_buff *)tmp___3;
  tmp___4 = ldv_zalloc(8UL);
  ldvarg54 = (loff_t *)tmp___4;
  tmp___5 = __VERIFIER_nondet_loff_t();
  ldvarg53 = tmp___5;
  tmp___6 = __VERIFIER_nondet_size_t();
  ldvarg55 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg56 = (char *)tmp___7;
  tmp___8 = __VERIFIER_nondet_int();
  ldvarg52 = tmp___8;
  tmp___9 = ldv_zalloc(8UL);
  ldvarg70 = (loff_t *)tmp___9;
  tmp___10 = __VERIFIER_nondet_size_t();
  ldvarg71 = tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg68 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg72 = (char *)tmp___12;
  tmp___13 = __VERIFIER_nondet_loff_t();
  ldvarg69 = tmp___13;
  ldv_initialize();
  memset((void *)(& ldvarg14), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_22 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_23 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 1;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 1;
  ldv_51356:
  tmp___14 = __VERIFIER_nondet_int();
  switch (tmp___14) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_51300;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      stmmac_set_rx_mode(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      stmmac_set_rx_mode(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_set_rx_mode(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 1: ;
    if (ldv_state_variable_21 == 3) {
      stmmac_release(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 2: ;
    if (ldv_state_variable_21 == 1) {
      stmmac_ioctl(stmmac_netdev_ops_group1, ldvarg18, ldvarg17);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      stmmac_ioctl(stmmac_netdev_ops_group1, ldvarg18, ldvarg17);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_ioctl(stmmac_netdev_ops_group1, ldvarg18, ldvarg17);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 3: ;
    if (ldv_state_variable_21 == 1) {
      stmmac_poll_controller(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      stmmac_poll_controller(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_poll_controller(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 4: ;
    if (ldv_state_variable_21 == 3) {
      stmmac_change_mtu(stmmac_netdev_ops_group1, ldvarg16);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_change_mtu(stmmac_netdev_ops_group1, ldvarg16);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 5: ;
    if (ldv_state_variable_21 == 2) {
      ldv_retval_1 = stmmac_open(stmmac_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_21 = 3;
      } else {
      }
    } else {
    }
    goto ldv_51303;
    case 6: ;
    if (ldv_state_variable_21 == 3) {
      stmmac_xmit(ldvarg15, stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 3;
    } else {
    }
    goto ldv_51303;
    case 7: ;
    if (ldv_state_variable_21 == 1) {
      stmmac_fix_features(stmmac_netdev_ops_group1, ldvarg14);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      stmmac_fix_features(stmmac_netdev_ops_group1, ldvarg14);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_fix_features(stmmac_netdev_ops_group1, ldvarg14);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 8: ;
    if (ldv_state_variable_21 == 1) {
      eth_mac_addr(stmmac_netdev_ops_group1, ldvarg13);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      eth_mac_addr(stmmac_netdev_ops_group1, ldvarg13);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      eth_mac_addr(stmmac_netdev_ops_group1, ldvarg13);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 9: ;
    if (ldv_state_variable_21 == 1) {
      stmmac_tx_timeout(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 3) {
      stmmac_tx_timeout(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 3;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      stmmac_tx_timeout(stmmac_netdev_ops_group1);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_51303;
    case 10: ;
    if (ldv_state_variable_21 == 2) {
      ldv_ndo_uninit_21();
      ldv_state_variable_21 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51303;
    case 11: ;
    if (ldv_state_variable_21 == 1) {
      ldv_retval_0 = ldv_ndo_init_21();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_21 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51303;
    default:
    ldv_stop();
    }
    ldv_51303: ;
  } else {
  }
  goto ldv_51300;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_51300;
  case 3: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_51300;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_51300;
  case 5: ;
  if (ldv_state_variable_22 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_22 == 2) {
      single_release(stmmac_dma_cap_fops_group1, stmmac_dma_cap_fops_group2);
      ldv_state_variable_22 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51321;
    case 1: ;
    if (ldv_state_variable_22 == 2) {
      seq_read(stmmac_dma_cap_fops_group2, ldvarg56, ldvarg55, ldvarg54);
      ldv_state_variable_22 = 2;
    } else {
    }
    goto ldv_51321;
    case 2: ;
    if (ldv_state_variable_22 == 2) {
      seq_lseek(stmmac_dma_cap_fops_group2, ldvarg53, ldvarg52);
      ldv_state_variable_22 = 2;
    } else {
    }
    goto ldv_51321;
    case 3: ;
    if (ldv_state_variable_22 == 1) {
      ldv_retval_5 = stmmac_sysfs_dma_cap_open(stmmac_dma_cap_fops_group1, stmmac_dma_cap_fops_group2);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_22 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51321;
    default:
    ldv_stop();
    }
    ldv_51321: ;
  } else {
  }
  goto ldv_51300;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_51300;
  case 7: ;
  if (ldv_state_variable_18 != 0) {
    ldv_main_exported_18();
  } else {
  }
  goto ldv_51300;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      stmmac_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_51331;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_6 = stmmac_init();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_19 = 1;
        ldv_initialize_stmmac_mode_ops_19();
        ldv_state_variable_10 = 1;
        ldv_initialize_ptp_clock_info_10();
        ldv_state_variable_20 = 1;
        ldv_initialize_ethtool_ops_20();
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_initialize_stmmac_dma_ops_14();
        ldv_state_variable_12 = 1;
        ldv_initialize_stmmac_desc_ops_12();
        ldv_state_variable_9 = 1;
        ldv_dev_pm_ops_9();
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_stmmac_desc_ops_13();
        ldv_state_variable_16 = 1;
        ldv_state_variable_23 = 1;
        ldv_file_operations_23();
        ldv_state_variable_18 = 1;
        ldv_initialize_stmmac_mode_ops_18();
        ldv_state_variable_22 = 1;
        ldv_file_operations_22();
        ldv_state_variable_17 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_pci_driver_7();
        ldv_state_variable_11 = 1;
      } else {
      }
      if (ldv_retval_6 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_51331;
    default:
    ldv_stop();
    }
    ldv_51331: ;
  } else {
  }
  goto ldv_51300;
  case 9: ;
  if (ldv_state_variable_23 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_23 == 2) {
      single_release(stmmac_rings_status_fops_group1, stmmac_rings_status_fops_group2);
      ldv_state_variable_23 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51336;
    case 1: ;
    if (ldv_state_variable_23 == 2) {
      seq_read(stmmac_rings_status_fops_group2, ldvarg72, ldvarg71, ldvarg70);
      ldv_state_variable_23 = 2;
    } else {
    }
    goto ldv_51336;
    case 2: ;
    if (ldv_state_variable_23 == 2) {
      seq_lseek(stmmac_rings_status_fops_group2, ldvarg69, ldvarg68);
      ldv_state_variable_23 = 2;
    } else {
    }
    goto ldv_51336;
    case 3: ;
    if (ldv_state_variable_23 == 1) {
      ldv_retval_7 = stmmac_sysfs_ring_open(stmmac_rings_status_fops_group1, stmmac_rings_status_fops_group2);
      if (ldv_retval_7 == 0) {
        ldv_state_variable_23 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51336;
    default:
    ldv_stop();
    }
    ldv_51336: ;
  } else {
  }
  goto ldv_51300;
  case 10: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_51300;
  case 11: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_51300;
  case 12: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_51300;
  case 13: ;
  if (ldv_state_variable_3 != 0) {
    choose_interrupt_3();
  } else {
  }
  goto ldv_51300;
  case 14: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_51300;
  case 15: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_51300;
  case 16: ;
  if (ldv_state_variable_20 != 0) {
    ldv_main_exported_20();
  } else {
  }
  goto ldv_51300;
  case 17: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_51300;
  case 18: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_51300;
  case 19: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_51300;
  case 20: ;
  if (ldv_state_variable_4 != 0) {
    choose_timer_4(ldv_timer_list_4);
  } else {
  }
  goto ldv_51300;
  case 21: ;
  if (ldv_state_variable_19 != 0) {
    ldv_main_exported_19();
  } else {
  }
  goto ldv_51300;
  case 22: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_51300;
  case 23: ;
  if (ldv_state_variable_5 != 0) {
    choose_timer_5(ldv_timer_list_5);
  } else {
  }
  goto ldv_51300;
  default:
  ldv_stop();
  }
  ldv_51300: ;
  goto ldv_51356;
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
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
int ldv___platform_driver_register_34(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_35(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
int ldv_del_timer_sync_36(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_37(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_38(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
struct sk_buff *ldv___netdev_alloc_skb_39(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_mod_timer_40(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_41(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_42(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_43(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_44(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_45(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_del_timer_sync_46(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_47(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_48(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_50(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_mod_timer_51(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_register_netdev_52(struct net_device *dev )
{
  ldv_func_ret_type___13 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_21 = 1;
  ldv_net_device_ops_21();
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_53(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_21 = 0;
  return;
}
}
void ldv_free_netdev_54(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_21 = 0;
  return;
}
}
void ldv_unregister_netdev_55(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_21 = 0;
  return;
}
}
void ldv_free_netdev_56(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_21 = 0;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_94(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_97(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
void *ldv_kmem_cache_alloc_106(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern u32 __VERIFIER_nondet_u32(void) ;
__inline static bool device_can_wakeup(struct device *dev )
{
  {
  return ((int )dev->power.can_wakeup != 0);
}
}
extern int device_set_wakeup_enable(struct device * , bool ) ;
struct sk_buff *ldv_skb_clone_114(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_122(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_116(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_112(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_120(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_121(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_118(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_119(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern int ethtool_op_get_ts_info(struct net_device * , struct ethtool_ts_info * ) ;
extern int irq_set_irq_wake(unsigned int , unsigned int ) ;
__inline static int enable_irq_wake(unsigned int irq )
{
  int tmp ;
  {
  tmp = irq_set_irq_wake(irq, 1U);
  return (tmp);
}
}
__inline static int disable_irq_wake(unsigned int irq )
{
  int tmp ;
  {
  tmp = irq_set_irq_wake(irq, 0U);
  return (tmp);
}
}
extern int phy_start_aneg(struct phy_device * ) ;
extern int phy_ethtool_sset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_ethtool_gset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_get_eee_err(struct phy_device * ) ;
extern int phy_ethtool_set_eee(struct phy_device * , struct ethtool_eee * ) ;
extern int phy_ethtool_get_eee(struct phy_device * , struct ethtool_eee * ) ;
int ldv___platform_driver_register_123(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_124(struct platform_driver *drv ) ;
void dwmac_mmc_read(void *ioaddr , struct stmmac_counters *mmc ) ;
extern int ptp_clock_index(struct ptp_clock * ) ;
static struct stmmac_stats const stmmac_gstrings_stats[80U] =
  { {{'t', 'x', '_', 'u', 'n', 'd', 'e', 'r', 'f', 'l', 'o', 'w', '\000'}, 8, 896},
        {{'t',
       'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '\000'}, 8, 904},
        {{'t', 'x', '_', 'l', 'o', 's', 's', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '\000'},
      8, 912},
        {{'v', 'l', 'a', 'n', '_', 't', 'a', 'g', '\000'}, 8, 920},
        {{'t', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd', '\000'}, 8, 928},
        {{'t', 'x', '_', 'v', 'l', 'a', 'n', '\000'}, 8, 936},
        {{'t', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', '\000'}, 8, 944},
        {{'t', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 'f', 'l', 'u', 's', 'h', 'e',
       'd', '\000'}, 8, 952},
        {{'t', 'x', '_', 'p', 'a', 'y', 'l', 'o', 'a', 'd', '_', 'e', 'r', 'r', 'o',
       'r', '\000'}, 8, 960},
        {{'t', 'x', '_', 'i', 'p', '_', 'h', 'e', 'a', 'd', 'e', 'r', '_', 'e', 'r',
       'r', 'o', 'r', '\000'}, 8, 968},
        {{'r', 'x', '_', 'd', 'e', 's', 'c', '\000'}, 8, 976},
        {{'s', 'a', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'f', 'a', 'i', 'l', '\000'},
      8, 984},
        {{'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'e', 'r', 'r', 'o', 'r', '\000'},
      8, 992},
        {{'i', 'p', 'c', '_', 'c', 's', 'u', 'm', '_', 'e', 'r', 'r', 'o', 'r', '\000'},
      8, 1000},
        {{'r', 'x', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', '\000'}, 8, 1008},
        {{'r',
       'x', '_', 'c', 'r', 'c', '\000'}, 8, 1016},
        {{'d', 'r', 'i', 'b', 'b', 'l', 'i', 'n', 'g', '_', 'b', 'i', 't', '\000'}, 8,
      1024},
        {{'r', 'x', '_', 'l', 'e', 'n', 'g', 't', 'h', '\000'}, 8, 1032},
        {{'r', 'x', '_', 'm', 'i', 'i', '\000'}, 8, 1040},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 8, 1048},
        {{'r',
       'x', '_', 'g', 'm', 'a', 'c', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w',
       '\000'}, 8, 1056},
        {{'r', 'x', '_', 'w', 'a', 't', 'c', 'h', 'd', 'o', 'g', '\000'}, 8, 1064},
        {{'d', 'a', '_', 'r', 'x', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'f', 'a',
       'i', 'l', '\000'}, 8, 1072},
        {{'s', 'a', '_', 'r', 'x', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'f', 'a',
       'i', 'l', '\000'}, 8, 1080},
        {{'r', 'x', '_', 'm', 'i', 's', 's', 'e', 'd', '_', 'c', 'n', 't', 'r', '\000'},
      8, 1088},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'c', 'n', 't',
       'r', '\000'}, 8, 1096},
        {{'r', 'x', '_', 'v', 'l', 'a', 'n', '\000'}, 8, 1104},
        {{'t', 'x', '_', 'u', 'n', 'd', 'e', 'f', 'l', 'o', 'w', '_', 'i', 'r', 'q',
       '\000'}, 8, 1112},
        {{'t', 'x', '_', 'p', 'r', 'o', 'c', 'e', 's', 's', '_', 's', 't', 'o', 'p',
       'p', 'e', 'd', '_', 'i', 'r', 'q', '\000'}, 8, 1120},
        {{'t', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', '_', 'i', 'r', 'q', '\000'}, 8,
      1128},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'i', 'r', 'q',
       '\000'}, 8, 1136},
        {{'r', 'x', '_', 'b', 'u', 'f', '_', 'u', 'n', 'a', 'v', '_', 'i', 'r', 'q',
       '\000'}, 8, 1144},
        {{'r', 'x', '_', 'p', 'r', 'o', 'c', 'e', 's', 's', '_', 's', 't', 'o', 'p',
       'p', 'e', 'd', '_', 'i', 'r', 'q', '\000'}, 8, 1152},
        {{'r', 'x', '_', 'w', 'a', 't', 'c', 'h', 'd', 'o', 'g', '_', 'i', 'r', 'q',
       '\000'}, 8, 1160},
        {{'t', 'x', '_', 'e', 'a', 'r', 'l', 'y', '_', 'i', 'r', 'q', '\000'}, 8, 1168},
        {{'f',
       'a', 't', 'a', 'l', '_', 'b', 'u', 's', '_', 'e', 'r', 'r', 'o', 'r', '_',
       'i', 'r', 'q', '\000'}, 8, 1176},
        {{'r', 'x', '_', 'e', 'a', 'r', 'l', 'y', '_', 'i', 'r', 'q', '\000'}, 8, 1184},
        {{'t',
       'h', 'r', 'e', 's', 'h', 'o', 'l', 'd', '\000'}, 8, 1192},
        {{'t', 'x', '_', 'p', 'k', 't', '_', 'n', '\000'}, 8, 1200},
        {{'r', 'x', '_', 'p', 'k', 't', '_', 'n', '\000'}, 8, 1208},
        {{'n', 'o', 'r', 'm', 'a', 'l', '_', 'i', 'r', 'q', '_', 'n', '\000'}, 8, 1216},
        {{'r',
       'x', '_', 'n', 'o', 'r', 'm', 'a', 'l', '_', 'i', 'r', 'q', '_', 'n', '\000'},
      8, 1224},
        {{'n', 'a', 'p', 'i', '_', 'p', 'o', 'l', 'l', '\000'}, 8, 1232},
        {{'t', 'x', '_', 'n', 'o', 'r', 'm', 'a', 'l', '_', 'i', 'r', 'q', '_', 'n',
       '\000'}, 8, 1240},
        {{'t', 'x', '_', 'c', 'l', 'e', 'a', 'n', '\000'}, 8, 1248},
        {{'t', 'x', '_', 'r', 'e', 's', 'e', 't', '_', 'i', 'c', '_', 'b', 'i', 't',
       '\000'}, 8, 1256},
        {{'i', 'r', 'q', '_', 'r', 'e', 'c', 'e', 'i', 'v', 'e', '_', 'p', 'm', 't',
       '_', 'i', 'r', 'q', '_', 'n', '\000'}, 8, 1264},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'i', 'r', 'q', '_', 'n', '\000'}, 8, 1272},
        {{'m',
       'm', 'c', '_', 'r', 'x', '_', 'i', 'r', 'q', '_', 'n', '\000'}, 8, 1280},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f',
       'l', 'o', 'a', 'd', '_', 'i', 'r', 'q', '_', 'n', '\000'}, 8, 1288},
        {{'i', 'r', 'q', '_', 't', 'x', '_', 'p', 'a', 't', 'h', '_', 'i', 'n', '_',
       'l', 'p', 'i', '_', 'm', 'o', 'd', 'e', '_', 'n', '\000'}, 8, 1296},
        {{'i', 'r', 'q', '_', 't', 'x', '_', 'p', 'a', 't', 'h', '_', 'e', 'x', 'i',
       't', '_', 'l', 'p', 'i', '_', 'm', 'o', 'd', 'e', '_', 'n', '\000'}, 8, 1304},
        {{'i',
       'r', 'q', '_', 'r', 'x', '_', 'p', 'a', 't', 'h', '_', 'i', 'n', '_', 'l',
       'p', 'i', '_', 'm', 'o', 'd', 'e', '_', 'n', '\000'}, 8, 1312},
        {{'i', 'r', 'q', '_', 'r', 'x', '_', 'p', 'a', 't', 'h', '_', 'e', 'x', 'i',
       't', '_', 'l', 'p', 'i', '_', 'm', 'o', 'd', 'e', '_', 'n', '\000'}, 8, 1320},
        {{'p',
       'h', 'y', '_', 'e', 'e', 'e', '_', 'w', 'a', 'k', 'e', 'u', 'p', '_', 'e',
       'r', 'r', 'o', 'r', '_', 'n', '\000'}, 8, 1328},
        {{'i', 'p', '_', 'h', 'd', 'r', '_', 'e', 'r', 'r', '\000'}, 8, 1336},
        {{'i', 'p', '_', 'p', 'a', 'y', 'l', 'o', 'a', 'd', '_', 'e', 'r', 'r', '\000'},
      8, 1344},
        {{'i', 'p', '_', 'c', 's', 'u', 'm', '_', 'b', 'y', 'p', 'a', 's', 's', 'e',
       'd', '\000'}, 8, 1352},
        {{'i', 'p', 'v', '4', '_', 'p', 'k', 't', '_', 'r', 'c', 'v', 'd', '\000'}, 8,
      1360},
        {{'i', 'p', 'v', '6', '_', 'p', 'k', 't', '_', 'r', 'c', 'v', 'd', '\000'}, 8,
      1368},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'e', 'x', 't',
       '_', 'n', 'o', '_', 'p', 't', 'p', '\000'}, 8, 1376},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 's', 'y', 'n',
       'c', '\000'}, 8, 1384},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'f', 'o', 'l',
       'l', 'o', 'w', '_', 'u', 'p', '\000'}, 8, 1392},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'd', 'e', 'l',
       'a', 'y', '_', 'r', 'e', 'q', '\000'}, 8, 1400},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'd', 'e', 'l',
       'a', 'y', '_', 'r', 'e', 's', 'p', '\000'}, 8, 1408},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'p', 'd', 'e',
       'l', 'a', 'y', '_', 'r', 'e', 'q', '\000'}, 8, 1416},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'p', 'd', 'e',
       'l', 'a', 'y', '_', 'r', 'e', 's', 'p', '\000'}, 8, 1424},
        {{'r', 'x', '_', 'm', 's', 'g', '_', 't', 'y', 'p', 'e', '_', 'p', 'd', 'e',
       'l', 'a', 'y', '_', 'f', 'o', 'l', 'l', 'o', 'w', '_', 'u', 'p', '\000'}, 8,
      1432},
        {{'p', 't', 'p', '_', 'f', 'r', 'a', 'm', 'e', '_', 't', 'y', 'p', 'e', '\000'},
      8, 1440},
        {{'p', 't', 'p', '_', 'v', 'e', 'r', '\000'}, 8, 1448},
        {{'t', 'i', 'm', 'e', 's', 't', 'a', 'm', 'p', '_', 'd', 'r', 'o', 'p', 'p',
       'e', 'd', '\000'}, 8, 1456},
        {{'a', 'v', '_', 'p', 'k', 't', '_', 'r', 'c', 'v', 'd', '\000'}, 8, 1464},
        {{'a', 'v', '_', 't', 'a', 'g', 'g', 'e', 'd', '_', 'p', 'k', 't', '_', 'r',
       'c', 'v', 'd', '\000'}, 8, 1472},
        {{'v', 'l', 'a', 'n', '_', 't', 'a', 'g', '_', 'p', 'r', 'i', 'o', 'r', 'i',
       't', 'y', '_', 'v', 'a', 'l', '\000'}, 8, 1480},
        {{'l', '3', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'm', 'a', 't', 'c', 'h',
       '\000'}, 8, 1488},
        {{'l', '4', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'm', 'a', 't', 'c', 'h',
       '\000'}, 8, 1496},
        {{'l', '3', '_', 'l', '4', '_', 'f', 'i', 'l', 't', 'e', 'r', '_', 'n', 'o',
       '_', 'm', 'a', 't', 'c', 'h', '\000'}, 8, 1504},
        {{'i', 'r', 'q', '_', 'p', 'c', 's', '_', 'a', 'n', 'e', '_', 'n', '\000'}, 8,
      1512},
        {{'i', 'r', 'q', '_', 'p', 'c', 's', '_', 'l', 'i', 'n', 'k', '_', 'n', '\000'},
      8, 1520},
        {{'i', 'r', 'q', '_', 'r', 'g', 'm', 'i', 'i', '_', 'n', '\000'}, 8, 1528}};
static struct stmmac_stats const stmmac_mmc[79U] =
  { {{'m', 'm', 'c', '_', 't', 'x', '_', 'o', 'c', 't', 'e', 't', 'c', 'o', 'u',
       'n', 't', '_', 'g', 'b', '\000'}, 4, 1692},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'f', 'r', 'a', 'm', 'e', 'c', 'o', 'u',
       'n', 't', '_', 'g', 'b', '\000'}, 4, 1696},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's',
       't', 'f', 'r', 'a', 'm', 'e', '_', 'g', '\000'}, 4, 1700},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's',
       't', 'f', 'r', 'a', 'm', 'e', '_', 'g', '\000'}, 4, 1704},
        {{'m', 'm', 'c', '_', 't', 'x', '_', '6', '4', '_', 'o', 'c', 't', 'e', 't',
       's', '_', 'g', 'b', '\000'}, 4, 1708},
        {{'m', 'm', 'c', '_', 't', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2',
       '7', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1712},
        {{'m', 'm', 'c', '_', 't', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2',
       '5', '5', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1716},
        {{'m',
       'm', 'c', '_', 't', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1',
       '1', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1720},
        {{'m', 'm', 'c', '_', 't', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1',
       '0', '2', '3', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4,
      1724},
        {{'m', 'm', 'c', '_', 't', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_',
       'm', 'a', 'x', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4,
      1728},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_',
       'g', 'b', '\000'}, 4, 1732},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's',
       't', '_', 'g', 'b', '\000'}, 4, 1736},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's',
       't', '_', 'g', 'b', '\000'}, 4, 1740},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'u', 'n', 'd', 'e', 'r', 'f', 'l', 'o',
       'w', '_', 'e', 'r', 'r', 'o', 'r', '\000'}, 4, 1744},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 's', 'i', 'n', 'g', 'l', 'e', 'c', 'o',
       'l', '_', 'g', '\000'}, 4, 1748},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'o', 'l',
       '_', 'g', '\000'}, 4, 1752},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd',
       '\000'}, 4, 1756},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'l', 'a', 't', 'e', 'c', 'o', 'l', '\000'},
      4, 1760},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'e', 'x', 'e', 's', 's', 'c', 'o', 'l',
       '\000'}, 4, 1764},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '_',
       'e', 'r', 'r', 'o', 'r', '\000'}, 4, 1768},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'o', 'c', 't', 'e', 't', 'c', 'o', 'u',
       'n', 't', '_', 'g', '\000'}, 4, 1772},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'f', 'r', 'a', 'm', 'e', 'c', 'o', 'u',
       'n', 't', '_', 'g', '\000'}, 4, 1776},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'e', 'x', 'c', 'e', 's', 's', 'd', 'e',
       'f', '\000'}, 4, 1780},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r',
       'a', 'm', 'e', '\000'}, 4, 1784},
        {{'m', 'm', 'c', '_', 't', 'x', '_', 'v', 'l', 'a', 'n', '_', 'f', 'r', 'a',
       'm', 'e', '_', 'g', '\000'}, 4, 1788},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 'c', 'o', 'u',
       'n', 't', '_', 'g', 'b', '\000'}, 4, 1792},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'o', 'c', 't', 'e', 't', 'c', 'o', 'u',
       'n', 't', '_', 'g', 'b', '\000'}, 4, 1796},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'o', 'c', 't', 'e', 't', 'c', 'o', 'u',
       'n', 't', '_', 'g', '\000'}, 4, 1800},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's',
       't', 'f', 'r', 'a', 'm', 'e', '_', 'g', '\000'}, 4, 1804},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's',
       't', 'f', 'r', 'a', 'm', 'e', '_', 'g', '\000'}, 4, 1808},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'r',
       'o', 'r', '\000'}, 4, 1812},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', '_', 'e', 'r',
       'r', 'o', 'r', '\000'}, 4, 1816},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'r', 'u', 'n', '_', 'e', 'r', 'r', 'o',
       'r', '\000'}, 4, 1820},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', '_', 'e',
       'r', 'r', 'o', 'r', '\000'}, 4, 1824},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z',
       'e', '_', 'g', '\000'}, 4, 1828},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e',
       '_', 'g', '\000'}, 4, 1832},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', '6', '4', '_', 'o', 'c', 't', 'e', 't',
       's', '_', 'g', 'b', '\000'}, 4, 1836},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2',
       '7', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1840},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2',
       '5', '5', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1844},
        {{'m',
       'm', 'c', '_', 'r', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1',
       '1', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4, 1848},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1',
       '0', '2', '3', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4,
      1852},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_',
       'm', 'a', 'x', '_', 'o', 'c', 't', 'e', 't', 's', '_', 'g', 'b', '\000'}, 4,
      1856},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_',
       'g', '\000'}, 4, 1860},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e',
       'r', 'r', 'o', 'r', '\000'}, 4, 1864},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'a', 'u', 't', 'o', 'f', 'r', 'a', 'n',
       'g', 'e', 't', 'y', 'p', 'e', '\000'}, 4, 1868},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r',
       'a', 'm', 'e', 's', '\000'}, 4, 1872},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e',
       'r', 'f', 'l', 'o', 'w', '\000'}, 4, 1876},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'v', 'l', 'a', 'n', '_', 'f', 'r', 'a',
       'm', 'e', 's', '_', 'g', 'b', '\000'}, 4, 1880},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'w', 'a', 't', 'c', 'h', 'd', 'o', 'g',
       '_', 'e', 'r', 'r', 'o', 'r', '\000'}, 4, 1884},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'c', '_', 'i', 'n', 't', 'r',
       '_', 'm', 'a', 's', 'k', '\000'}, 4, 1888},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'c', '_', 'i', 'n', 't', 'r',
       '\000'}, 4, 1892},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'g', 'd', '\000'},
      4, 1896},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'h', 'd', 'e',
       'r', 'r', '\000'}, 4, 1900},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'n', 'o', 'p',
       'a', 'y', '\000'}, 4, 1904},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'f', 'r', 'a',
       'g', '\000'}, 4, 1908},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'u', 'd', 's',
       'b', 'l', '\000'}, 4, 1912},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'g', 'd', '_',
       'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1916},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'h', 'd', 'e',
       'r', 'r', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1920},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'n', 'o', 'p',
       'a', 'y', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1924},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'f', 'r', 'a',
       'g', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1928},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '4', '_', 'u', 'd', 's',
       'b', 'l', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1932},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'g', 'd', '_',
       'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1936},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'h', 'd', 'e',
       'r', 'r', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1940},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'n', 'o', 'p',
       'a', 'y', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1944},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'g', 'd', '\000'},
      4, 1948},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'h', 'd', 'e',
       'r', 'r', '\000'}, 4, 1952},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'p', 'v', '6', '_', 'n', 'o', 'p',
       'a', 'y', '\000'}, 4, 1956},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'd', 'p', '_', 'g', 'd', '\000'}, 4,
      1960},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'd', 'p', '_', 'e', 'r', 'r', '\000'},
      4, 1964},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 't', 'c', 'p', '_', 'g', 'd', '\000'}, 4,
      1968},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 't', 'c', 'p', '_', 'e', 'r', 'r', '\000'},
      4, 1972},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'c', 'm', 'p', '_', 'g', 'd', '\000'},
      4, 1976},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'c', 'm', 'p', '_', 'e', 'r', 'r',
       '\000'}, 4, 1980},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'd', 'p', '_', 'g', 'd', '_', 'o',
       'c', 't', 'e', 't', 's', '\000'}, 4, 1984},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'u', 'd', 'p', '_', 'e', 'r', 'r', '_',
       'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1988},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 't', 'c', 'p', '_', 'g', 'd', '_', 'o',
       'c', 't', 'e', 't', 's', '\000'}, 4, 1992},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 't', 'c', 'p', '_', 'e', 'r', 'r', '_',
       'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 1996},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'c', 'm', 'p', '_', 'g', 'd', '_',
       'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 2000},
        {{'m', 'm', 'c', '_', 'r', 'x', '_', 'i', 'c', 'm', 'p', '_', 'e', 'r', 'r',
       '_', 'o', 'c', 't', 'e', 't', 's', '\000'}, 4, 2004}};
static void stmmac_ethtool_getdrvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if ((priv->plat)->has_gmac != 0) {
    strlcpy((char *)(& info->driver), "st_gmac", 32UL);
  } else {
    strlcpy((char *)(& info->driver), "st_mac100", 32UL);
  }
  strlcpy((char *)(& info->version), "March_2013", 32UL);
  return;
}
}
static int stmmac_ethtool_getsettings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct phy_device *phy ;
  int rc ;
  struct rgmii_adv adv ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  phy = priv->phydev;
  if (priv->pcs & 1 || (priv->pcs & 2) != 0) {
    if (priv->xstats.pcs_link == 0UL) {
      ethtool_cmd_speed_set(cmd, 4294967295U);
      cmd->duplex = 255U;
      return (0);
    } else {
    }
    cmd->duplex = (__u8 )priv->xstats.pcs_duplex;
    ethtool_cmd_speed_set(cmd, (__u32 )priv->xstats.pcs_speed);
    if ((unsigned long )((priv->hw)->mac)->get_adv != (unsigned long )((void (* )(void * ,
                                                                                             struct rgmii_adv * ))0)) {
      (*(((priv->hw)->mac)->get_adv))(priv->ioaddr, & adv);
    } else {
      return (-95);
    }
    if ((int )adv.pause & 1) {
      cmd->advertising = cmd->advertising | 8192U;
    } else {
    }
    if ((adv.pause & 2U) != 0U) {
      cmd->advertising = cmd->advertising | 16384U;
    } else {
    }
    if ((int )adv.lp_pause & 1) {
      cmd->lp_advertising = cmd->lp_advertising | 8192U;
    } else {
    }
    if ((adv.lp_pause & 2U) != 0U) {
      cmd->lp_advertising = cmd->lp_advertising | 16384U;
    } else {
    }
    cmd->autoneg = 64U;
    cmd->supported = cmd->supported | 64U;
    cmd->advertising = cmd->advertising | 64U;
    cmd->lp_advertising = cmd->lp_advertising | 64U;
    if (adv.duplex != 0U) {
      cmd->supported = cmd->supported | 42U;
      cmd->advertising = cmd->advertising | 42U;
    } else {
      cmd->supported = cmd->supported | 21U;
      cmd->advertising = cmd->advertising | 21U;
    }
    if (adv.lp_duplex != 0U) {
      cmd->lp_advertising = cmd->lp_advertising | 42U;
    } else {
      cmd->lp_advertising = cmd->lp_advertising | 21U;
    }
    cmd->port = 255U;
    return (0);
  } else {
  }
  if ((unsigned long )phy == (unsigned long )((struct phy_device *)0)) {
    printk("\v%s: %s: PHY is not registered\n", "stmmac_ethtool_getsettings", (char *)(& dev->name));
    return (-19);
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    printk("\v%s: interface is disabled: we cannot track link speed / duplex setting\n",
           (char *)(& dev->name));
    return (-16);
  } else {
  }
  cmd->transceiver = 0U;
  rc = phy_ethtool_gset(phy, cmd);
  return (rc);
}
}
static int stmmac_ethtool_setsettings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct phy_device *phy ;
  int rc ;
  u32 mask ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  phy = priv->phydev;
  if (priv->pcs & 1 || (priv->pcs & 2) != 0) {
    mask = 8256U;
    if ((unsigned int )cmd->autoneg != 1U) {
      return (-22);
    } else {
    }
    if ((unsigned int )cmd->autoneg == 1U) {
      mask = mask & 63U;
      spin_lock(& priv->lock);
      if ((unsigned long )((priv->hw)->mac)->ctrl_ane != (unsigned long )((void (* )(void * ,
                                                                                                bool ))0)) {
        (*(((priv->hw)->mac)->ctrl_ane))(priv->ioaddr, 1);
      } else {
      }
      spin_unlock(& priv->lock);
    } else {
    }
    return (0);
  } else {
  }
  spin_lock(& priv->lock);
  rc = phy_ethtool_sset(phy, cmd);
  spin_unlock(& priv->lock);
  return (rc);
}
}
static u32 stmmac_ethtool_getmsglevel(struct net_device *dev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  return (priv->msg_enable);
}
}
static void stmmac_ethtool_setmsglevel(struct net_device *dev , u32 level )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  priv->msg_enable = level;
  return;
}
}
static int stmmac_check_if_running(struct net_device *dev )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = netif_running((struct net_device const *)dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int stmmac_ethtool_get_regs_len(struct net_device *dev )
{
  {
  return (4180);
}
}
static void stmmac_ethtool_gregs(struct net_device *dev , struct ethtool_regs *regs ,
                                 void *space )
{
  int i ;
  u32 *reg_space ;
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  reg_space = (u32 *)space;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  memset((void *)reg_space, 0, 4180UL);
  if ((priv->plat)->has_gmac == 0) {
    i = 0;
    goto ldv_46022;
    ldv_46021:
    *(reg_space + (unsigned long )i) = readl((void const volatile *)priv->ioaddr + (unsigned long )(i * 4));
    i = i + 1;
    ldv_46022: ;
    if (i <= 11) {
      goto ldv_46021;
    } else {
    }
    i = 0;
    goto ldv_46025;
    ldv_46024:
    *(reg_space + ((unsigned long )i + 12UL)) = readl((void const volatile *)priv->ioaddr + (unsigned long )((i + 1024) * 4));
    i = i + 1;
    ldv_46025: ;
    if (i <= 8) {
      goto ldv_46024;
    } else {
    }
    *(reg_space + 22UL) = readl((void const volatile *)priv->ioaddr + 4176U);
    *(reg_space + 23UL) = readl((void const volatile *)priv->ioaddr + 4180U);
  } else {
    i = 0;
    goto ldv_46028;
    ldv_46027:
    *(reg_space + (unsigned long )i) = readl((void const volatile *)priv->ioaddr + (unsigned long )(i * 4));
    i = i + 1;
    ldv_46028: ;
    if (i <= 54) {
      goto ldv_46027;
    } else {
    }
    i = 0;
    goto ldv_46031;
    ldv_46030:
    *(reg_space + ((unsigned long )i + 55UL)) = readl((void const volatile *)priv->ioaddr + (unsigned long )((i + 1024) * 4));
    i = i + 1;
    ldv_46031: ;
    if (i <= 21) {
      goto ldv_46030;
    } else {
    }
  }
  return;
}
}
static void stmmac_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause___0 )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->pcs != 0) {
    return;
  } else {
  }
  pause___0->rx_pause = 0U;
  pause___0->tx_pause = 0U;
  pause___0->autoneg = (__u32 )(priv->phydev)->autoneg;
  if ((int )priv->flow_ctrl & 1) {
    pause___0->rx_pause = 1U;
  } else {
  }
  if ((priv->flow_ctrl & 2U) != 0U) {
    pause___0->tx_pause = 1U;
  } else {
  }
  return;
}
}
static int stmmac_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause___0 )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  struct phy_device *phy ;
  int new_pause ;
  int ret ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  priv = (struct stmmac_priv *)tmp;
  phy = priv->phydev;
  new_pause = 0;
  ret = 0;
  if (priv->pcs != 0) {
    return (-95);
  } else {
  }
  if (pause___0->rx_pause != 0U) {
    new_pause = new_pause | 1;
  } else {
  }
  if (pause___0->tx_pause != 0U) {
    new_pause = new_pause | 2;
  } else {
  }
  priv->flow_ctrl = (unsigned int )new_pause;
  phy->autoneg = (int )pause___0->autoneg;
  if (phy->autoneg != 0) {
    tmp___0 = netif_running((struct net_device const *)netdev);
    if ((int )tmp___0) {
      ret = phy_start_aneg(phy);
    } else {
    }
  } else {
    (*(((priv->hw)->mac)->flow_ctrl))(priv->ioaddr, (unsigned int )phy->duplex, priv->flow_ctrl,
                                      priv->pause);
  }
  return (ret);
}
}
static void stmmac_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *dummy ,
                                     u64 *data )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int i ;
  int j ;
  char *p ;
  int tmp___0 ;
  int val ;
  int tmp___1 ;
  char *p___0 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  j = 0;
  if ((priv->plat)->has_gmac == 0) {
    (*(((priv->hw)->dma)->dma_diagnostic_fr))((void *)(& dev->stats), & priv->xstats,
                                              priv->ioaddr);
  } else {
    if (priv->dma_cap.rmon != 0U) {
      dwmac_mmc_read(priv->ioaddr, & priv->mmc);
      i = 0;
      goto ldv_46058;
      ldv_46057:
      p = (char *)priv + (unsigned long )stmmac_mmc[i].stat_offset;
      tmp___0 = j;
      j = j + 1;
      *(data + (unsigned long )tmp___0) = stmmac_mmc[i].sizeof_stat == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
      i = i + 1;
      ldv_46058: ;
      if ((unsigned int )i <= 78U) {
        goto ldv_46057;
      } else {
      }
    } else {
    }
    if (priv->eee_enabled != 0) {
      tmp___1 = phy_get_eee_err(priv->phydev);
      val = tmp___1;
      if (val != 0) {
        priv->xstats.phy_eee_wakeup_error_n = (unsigned long )val;
      } else {
      }
    } else {
    }
  }
  i = 0;
  goto ldv_46065;
  ldv_46064:
  p___0 = (char *)priv + (unsigned long )stmmac_gstrings_stats[i].stat_offset;
  tmp___2 = j;
  j = j + 1;
  *(data + (unsigned long )tmp___2) = stmmac_gstrings_stats[i].sizeof_stat == 8 ? *((u64 *)p___0) : (u64 )*((u32 *)p___0);
  i = i + 1;
  ldv_46065: ;
  if ((unsigned int )i <= 79U) {
    goto ldv_46064;
  } else {
  }
  return;
}
}
static int stmmac_get_sset_count(struct net_device *netdev , int sset )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int len ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  priv = (struct stmmac_priv *)tmp;
  switch (sset) {
  case 1:
  len = 80;
  if (priv->dma_cap.rmon != 0U) {
    len = (int )((unsigned int )len + 79U);
  } else {
  }
  return (len);
  default: ;
  return (-95);
  }
}
}
static void stmmac_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  int i ;
  u8 *p ;
  struct stmmac_priv *priv ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  p = data;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  switch (stringset) {
  case 1U: ;
  if (priv->dma_cap.rmon != 0U) {
    i = 0;
    goto ldv_46094;
    ldv_46093:
    __len = 32UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)p, (void const *)(& stmmac_mmc[i].stat_string), __len);
    } else {
      __ret = memcpy((void *)p, (void const *)(& stmmac_mmc[i].stat_string),
                               __len);
    }
    p = p + 32UL;
    i = i + 1;
    ldv_46094: ;
    if ((unsigned int )i <= 78U) {
      goto ldv_46093;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_46102;
  ldv_46101:
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)p, (void const *)(& stmmac_gstrings_stats[i].stat_string),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)p, (void const *)(& stmmac_gstrings_stats[i].stat_string),
                                 __len___0);
  }
  p = p + 32UL;
  i = i + 1;
  ldv_46102: ;
  if ((unsigned int )i <= 79U) {
    goto ldv_46101;
  } else {
  }
  goto ldv_46104;
  default:
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.o.c.prepared",
                       694);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_46104;
  }
  ldv_46104: ;
  return;
}
}
static void stmmac_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  spin_lock_irq(& priv->lock);
  tmp___0 = device_can_wakeup(priv->device);
  if ((int )tmp___0) {
    wol->supported = 34U;
    wol->wolopts = (__u32 )priv->wolopts;
  } else {
  }
  spin_unlock_irq(& priv->lock);
  return;
}
}
static int stmmac_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  u32 support ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  support = 34U;
  if (priv->hw_cap_support != 0 && priv->dma_cap.pmt_magic_frame == 0U) {
    wol->wolopts = wol->wolopts & 4294967263U;
  } else {
  }
  tmp___0 = device_can_wakeup(priv->device);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-22);
  } else {
  }
  if ((wol->wolopts & ~ support) != 0U) {
    return (-22);
  } else {
  }
  if (wol->wolopts != 0U) {
    printk("\016stmmac: wakeup enable\n");
    device_set_wakeup_enable(priv->device, 1);
    enable_irq_wake((unsigned int )priv->wol_irq);
  } else {
    device_set_wakeup_enable(priv->device, 0);
    disable_irq_wake((unsigned int )priv->wol_irq);
  }
  spin_lock_irq(& priv->lock);
  priv->wolopts = (int )wol->wolopts;
  spin_unlock_irq(& priv->lock);
  return (0);
}
}
static int stmmac_ethtool_op_get_eee(struct net_device *dev , struct ethtool_eee *edata )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->dma_cap.eee == 0U) {
    return (-95);
  } else {
  }
  edata->eee_enabled = (__u32 )priv->eee_enabled;
  edata->eee_active = (__u32 )priv->eee_active;
  edata->tx_lpi_timer = (__u32 )priv->tx_lpi_timer;
  tmp___0 = phy_ethtool_get_eee(priv->phydev, edata);
  return (tmp___0);
}
}
static int stmmac_ethtool_op_set_eee(struct net_device *dev , struct ethtool_eee *edata )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  priv->eee_enabled = (int )edata->eee_enabled;
  if (priv->eee_enabled == 0) {
    stmmac_disable_eee_mode(priv);
  } else {
    tmp___0 = stmmac_eee_init(priv);
    priv->eee_enabled = (int )tmp___0;
    if (priv->eee_enabled == 0) {
      return (-95);
    } else {
    }
    priv->tx_lpi_timer = (int )edata->tx_lpi_timer;
  }
  tmp___1 = phy_ethtool_set_eee(priv->phydev, edata);
  return (tmp___1);
}
}
static u32 stmmac_usec2riwt(u32 usec , struct stmmac_priv *priv )
{
  unsigned long clk ;
  unsigned long tmp ;
  {
  tmp = clk_get_rate(priv->stmmac_clk);
  clk = tmp;
  if (clk == 0UL) {
    return (0U);
  } else {
  }
  return ((u32 )(((unsigned long )usec * (clk / 1000000UL)) / 256UL));
}
}
static u32 stmmac_riwt2usec(u32 riwt , struct stmmac_priv *priv )
{
  unsigned long clk ;
  unsigned long tmp ;
  {
  tmp = clk_get_rate(priv->stmmac_clk);
  clk = tmp;
  if (clk == 0UL) {
    return (0U);
  } else {
  }
  return ((u32 )((unsigned long )(riwt * 256U) / (clk / 1000000UL)));
}
}
static int stmmac_get_coalesce(struct net_device *dev , struct ethtool_coalesce *ec )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  ec->tx_coalesce_usecs = priv->tx_coal_timer;
  ec->tx_max_coalesced_frames = priv->tx_coal_frames;
  if (priv->use_riwt != 0) {
    ec->rx_coalesce_usecs = stmmac_riwt2usec(priv->rx_riwt, priv);
  } else {
  }
  return (0);
}
}
static int stmmac_set_coalesce(struct net_device *dev , struct ethtool_coalesce *ec )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int rx_riwt ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if ((((((((((((((((((ec->rx_max_coalesced_frames != 0U || ec->rx_coalesce_usecs_irq != 0U) || ec->rx_max_coalesced_frames_irq != 0U) || ec->tx_coalesce_usecs_irq != 0U) || ec->use_adaptive_rx_coalesce != 0U) || ec->use_adaptive_tx_coalesce != 0U) || ec->pkt_rate_low != 0U) || ec->rx_coalesce_usecs_low != 0U) || ec->rx_max_coalesced_frames_low != 0U) || ec->tx_coalesce_usecs_high != 0U) || ec->tx_max_coalesced_frames_low != 0U) || ec->pkt_rate_high != 0U) || ec->tx_coalesce_usecs_low != 0U) || ec->rx_coalesce_usecs_high != 0U) || ec->rx_max_coalesced_frames_high != 0U) || ec->tx_max_coalesced_frames_irq != 0U) || ec->stats_block_coalesce_usecs != 0U) || ec->tx_max_coalesced_frames_high != 0U) || ec->rate_sample_interval != 0U) {
    return (-95);
  } else {
  }
  if (ec->rx_coalesce_usecs == 0U) {
    return (-22);
  } else {
  }
  if (ec->tx_coalesce_usecs == 0U && ec->tx_max_coalesced_frames == 0U) {
    return (-22);
  } else {
  }
  if (ec->tx_coalesce_usecs > 40000U || ec->tx_max_coalesced_frames > 256U) {
    return (-22);
  } else {
  }
  rx_riwt = stmmac_usec2riwt(ec->rx_coalesce_usecs, priv);
  if (rx_riwt > 255U || rx_riwt <= 31U) {
    return (-22);
  } else
  if (priv->use_riwt == 0) {
    return (-95);
  } else {
  }
  priv->tx_coal_frames = ec->tx_max_coalesced_frames;
  priv->tx_coal_timer = ec->tx_coalesce_usecs;
  priv->rx_riwt = rx_riwt;
  (*(((priv->hw)->dma)->rx_watchdog))(priv->ioaddr, priv->rx_riwt);
  return (0);
}
}
static int stmmac_get_ts_info(struct net_device *dev , struct ethtool_ts_info *info )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct stmmac_priv *)tmp;
  if (priv->hwts_tx_en != 0 && priv->hwts_rx_en != 0) {
    info->so_timestamping = 69U;
    if ((unsigned long )priv->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
      info->phc_index = ptp_clock_index(priv->ptp_clock);
    } else {
    }
    info->tx_types = 3U;
    info->rx_filters = 29179U;
    return (0);
  } else {
    tmp___0 = ethtool_op_get_ts_info(dev, info);
    return (tmp___0);
  }
}
}
static struct ethtool_ops const stmmac_ethtool_ops =
     {& stmmac_ethtool_getsettings, & stmmac_ethtool_setsettings, & stmmac_ethtool_getdrvinfo,
    & stmmac_ethtool_get_regs_len, & stmmac_ethtool_gregs, & stmmac_get_wol, & stmmac_set_wol,
    & stmmac_ethtool_getmsglevel, & stmmac_ethtool_setmsglevel, 0, & ethtool_op_get_link,
    0, 0, 0, & stmmac_get_coalesce, & stmmac_set_coalesce, 0, 0, & stmmac_get_pauseparam,
    & stmmac_set_pauseparam, 0, & stmmac_get_strings, 0, & stmmac_get_ethtool_stats,
    & stmmac_check_if_running, 0, 0, 0, & stmmac_get_sset_count, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, & stmmac_get_ts_info, 0, 0, & stmmac_ethtool_op_get_eee,
    & stmmac_ethtool_op_set_eee};
void stmmac_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & stmmac_ethtool_ops;
  return;
}
}
void ldv_initialize_ethtool_ops_20(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  tmp = ldv_zalloc(40UL);
  stmmac_ethtool_ops_group0 = (struct ethtool_eee *)tmp;
  tmp___0 = ldv_zalloc(20UL);
  stmmac_ethtool_ops_group2 = (struct ethtool_wolinfo *)tmp___0;
  tmp___1 = ldv_zalloc(44UL);
  stmmac_ethtool_ops_group1 = (struct ethtool_cmd *)tmp___1;
  tmp___2 = ldv_zalloc(92UL);
  stmmac_ethtool_ops_group3 = (struct ethtool_coalesce *)tmp___2;
  tmp___3 = ldv_zalloc(16UL);
  stmmac_ethtool_ops_group4 = (struct ethtool_pauseparam *)tmp___3;
  tmp___4 = ldv_zalloc(3264UL);
  stmmac_ethtool_ops_group5 = (struct net_device *)tmp___4;
  return;
}
}
void ldv_main_exported_20(void)
{
  struct ethtool_regs *ldvarg142 ;
  void *tmp ;
  struct ethtool_ts_info *ldvarg139 ;
  void *tmp___0 ;
  u64 *ldvarg143 ;
  void *tmp___1 ;
  u32 ldvarg138 ;
  u32 tmp___2 ;
  u8 *ldvarg136 ;
  void *tmp___3 ;
  void *ldvarg141 ;
  void *tmp___4 ;
  struct ethtool_stats *ldvarg144 ;
  void *tmp___5 ;
  u32 ldvarg137 ;
  u32 tmp___6 ;
  int ldvarg140 ;
  int tmp___7 ;
  struct ethtool_drvinfo *ldvarg145 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  tmp = ldv_zalloc(12UL);
  ldvarg142 = (struct ethtool_regs *)tmp;
  tmp___0 = ldv_zalloc(44UL);
  ldvarg139 = (struct ethtool_ts_info *)tmp___0;
  tmp___1 = ldv_zalloc(8UL);
  ldvarg143 = (u64 *)tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg138 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg136 = (u8 *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg141 = tmp___4;
  tmp___5 = ldv_zalloc(8UL);
  ldvarg144 = (struct ethtool_stats *)tmp___5;
  tmp___6 = __VERIFIER_nondet_u32();
  ldvarg137 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg140 = tmp___7;
  tmp___8 = ldv_zalloc(196UL);
  ldvarg145 = (struct ethtool_drvinfo *)tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  switch (tmp___9) {
  case 0: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_getdrvinfo(stmmac_ethtool_ops_group5, ldvarg145);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 1: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_set_pauseparam(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group4);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 2: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_coalesce(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group3);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 3: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_ethtool_stats(stmmac_ethtool_ops_group5, ldvarg144, ldvarg143);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 4: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_gregs(stmmac_ethtool_ops_group5, ldvarg142, ldvarg141);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 5: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_pauseparam(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group4);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 6: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_sset_count(stmmac_ethtool_ops_group5, ldvarg140);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 7: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_getsettings(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group1);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 8: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_set_coalesce(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group3);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 9: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_check_if_running(stmmac_ethtool_ops_group5);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 10: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_set_wol(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group2);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 11: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_ts_info(stmmac_ethtool_ops_group5, ldvarg139);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 12: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_setmsglevel(stmmac_ethtool_ops_group5, ldvarg138);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 13: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_setsettings(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group1);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 14: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_strings(stmmac_ethtool_ops_group5, ldvarg137, ldvarg136);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 15: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_op_set_eee(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 16: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_get_wol(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group2);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 17: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_op_get_eee(stmmac_ethtool_ops_group5, stmmac_ethtool_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 18: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_getmsglevel(stmmac_ethtool_ops_group5);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 19: ;
  if (ldv_state_variable_20 == 1) {
    stmmac_ethtool_get_regs_len(stmmac_ethtool_ops_group5);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  case 20: ;
  if (ldv_state_variable_20 == 1) {
    ethtool_op_get_link(stmmac_ethtool_ops_group5);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_46176;
  default:
  ldv_stop();
  }
  ldv_46176: ;
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_94(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_97(lock);
  return;
}
}
void *ldv_kmem_cache_alloc_106(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_112(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_114(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_116(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_118(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_119(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_120(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_121(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_122(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_123(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_124(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
extern int sprintf(char * , char const * , ...) ;
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  rep_nop();
  return;
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
void *ldv_kmem_cache_alloc_152(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_160(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_168(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_162(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_158(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_166(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_167(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_163(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_164(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_165(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern struct mii_bus *mdiobus_alloc_size(size_t ) ;
__inline static struct mii_bus *mdiobus_alloc(void)
{
  struct mii_bus *tmp ;
  {
  tmp = mdiobus_alloc_size(0UL);
  return (tmp);
}
}
extern int mdiobus_register(struct mii_bus * ) ;
extern void mdiobus_unregister(struct mii_bus * ) ;
extern void mdiobus_free(struct mii_bus * ) ;
int ldv___platform_driver_register_169(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_170(struct platform_driver *drv ) ;
static int stmmac_mdio_busy_wait(void *ioaddr , unsigned int mii_addr )
{
  unsigned long curr ;
  unsigned long finish ;
  unsigned int tmp ;
  {
  finish = (unsigned long )jiffies + 750UL;
  ldv_46784:
  curr = jiffies;
  tmp = readl((void const volatile *)ioaddr + (unsigned long )mii_addr);
  if ((int )tmp & 1) {
    cpu_relax();
  } else {
    return (0);
  }
  if ((long )(curr - finish) < 0L) {
    goto ldv_46784;
  } else {
  }
  return (-16);
}
}
static int stmmac_mdio_read(struct mii_bus *bus , int phyaddr___0 , int phyreg )
{
  struct net_device *ndev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int mii_address ;
  unsigned int mii_data ;
  int data ;
  u16 regValue ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  ndev = (struct net_device *)bus->priv;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  mii_address = (priv->hw)->mii.addr;
  mii_data = (priv->hw)->mii.data;
  regValue = (u16 )((int )((short )(phyaddr___0 << 11)) | ((int )((short )(phyreg << 6)) & 1984));
  regValue = (u16 )(((int )((short )((priv->clk_csr & 15) << 2)) | 1) | (int )((short )regValue));
  tmp___0 = stmmac_mdio_busy_wait(priv->ioaddr, mii_address);
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  writel((unsigned int )regValue, (void volatile *)priv->ioaddr + (unsigned long )mii_address);
  tmp___1 = stmmac_mdio_busy_wait(priv->ioaddr, mii_address);
  if (tmp___1 != 0) {
    return (-16);
  } else {
  }
  tmp___2 = readl((void const volatile *)priv->ioaddr + (unsigned long )mii_data);
  data = (int )tmp___2;
  return (data);
}
}
static int stmmac_mdio_write(struct mii_bus *bus , int phyaddr___0 , int phyreg ,
                             u16 phydata )
{
  struct net_device *ndev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int mii_address ;
  unsigned int mii_data ;
  u16 value ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ndev = (struct net_device *)bus->priv;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  mii_address = (priv->hw)->mii.addr;
  mii_data = (priv->hw)->mii.data;
  value = (u16 )(((int )((short )(phyaddr___0 << 11)) | ((int )((short )(phyreg << 6)) & 1984)) | 2);
  value = (u16 )(((int )((short )((priv->clk_csr & 15) << 2)) | 1) | (int )((short )value));
  tmp___0 = stmmac_mdio_busy_wait(priv->ioaddr, mii_address);
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  writel((unsigned int )phydata, (void volatile *)priv->ioaddr + (unsigned long )mii_data);
  writel((unsigned int )value, (void volatile *)priv->ioaddr + (unsigned long )mii_address);
  tmp___1 = stmmac_mdio_busy_wait(priv->ioaddr, mii_address);
  return (tmp___1);
}
}
int stmmac_mdio_reset(struct mii_bus *bus )
{
  struct net_device *ndev ;
  struct stmmac_priv *priv ;
  void *tmp ;
  unsigned int mii_address ;
  struct stmmac_mdio_bus_data *data ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  ndev = (struct net_device *)bus->priv;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  mii_address = (priv->hw)->mii.addr;
  data = (priv->plat)->mdio_bus_data;
  if ((unsigned long )data->phy_reset != (unsigned long )((int (*)(void * ))0)) {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_mdio_reset";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o.c.prepared";
    descriptor.format = "stmmac_mdio_reset: calling phy_reset\n";
    descriptor.lineno = 319U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "stmmac_mdio_reset: calling phy_reset\n");
    } else {
    }
    (*(data->phy_reset))((priv->plat)->bsp_priv);
  } else {
  }
  writel(0U, (void volatile *)priv->ioaddr + (unsigned long )mii_address);
  return (0);
}
}
int stmmac_mdio_register(struct net_device *ndev )
{
  int err ;
  struct mii_bus *new_bus ;
  int *irqlist ;
  struct stmmac_priv *priv ;
  void *tmp ;
  struct stmmac_mdio_bus_data *mdio_bus_data ;
  int addr ;
  int found ;
  struct phy_device *phydev ;
  int act ;
  char irq_num[4U] ;
  char *irq_str ;
  char const *tmp___0 ;
  {
  err = 0;
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  mdio_bus_data = (priv->plat)->mdio_bus_data;
  if ((unsigned long )mdio_bus_data == (unsigned long )((struct stmmac_mdio_bus_data *)0)) {
    return (0);
  } else {
  }
  new_bus = mdiobus_alloc();
  if ((unsigned long )new_bus == (unsigned long )((struct mii_bus *)0)) {
    return (-12);
  } else {
  }
  if ((unsigned long )mdio_bus_data->irqs != (unsigned long )((int *)0)) {
    irqlist = mdio_bus_data->irqs;
  } else {
    addr = 0;
    goto ldv_46828;
    ldv_46827:
    priv->mii_irq[addr] = -1;
    addr = addr + 1;
    ldv_46828: ;
    if (addr <= 31) {
      goto ldv_46827;
    } else {
    }
    irqlist = (int *)(& priv->mii_irq);
  }
  new_bus->name = "stmmac";
  new_bus->read = & stmmac_mdio_read;
  new_bus->write = & stmmac_mdio_write;
  new_bus->reset = & stmmac_mdio_reset;
  snprintf((char *)(& new_bus->id), 17UL, "%s-%x", new_bus->name, (priv->plat)->bus_id);
  new_bus->priv = (void *)ndev;
  new_bus->irq = irqlist;
  new_bus->phy_mask = mdio_bus_data->phy_mask;
  new_bus->parent = priv->device;
  err = mdiobus_register(new_bus);
  if (err != 0) {
    printk("\v%s: Cannot register as MDIO bus\n", new_bus->name);
    goto bus_register_fail;
  } else {
  }
  found = 0;
  addr = 0;
  goto ldv_46840;
  ldv_46839:
  phydev = new_bus->phy_map[addr];
  if ((unsigned long )phydev != (unsigned long )((struct phy_device *)0)) {
    act = 0;
    if ((unsigned long )mdio_bus_data->irqs == (unsigned long )((int *)0) && mdio_bus_data->probed_phy_irq > 0) {
      *(irqlist + (unsigned long )addr) = mdio_bus_data->probed_phy_irq;
      phydev->irq = mdio_bus_data->probed_phy_irq;
    } else {
    }
    if ((priv->plat)->phy_addr == -1) {
      (priv->plat)->phy_addr = addr;
    } else {
    }
    act = (priv->plat)->phy_addr == addr;
    switch (phydev->irq) {
    case -1:
    irq_str = (char *)"POLL";
    goto ldv_46836;
    case -2:
    irq_str = (char *)"IGNORE";
    goto ldv_46836;
    default:
    sprintf((char *)(& irq_num), "%d", phydev->irq);
    irq_str = (char *)(& irq_num);
    goto ldv_46836;
    }
    ldv_46836:
    tmp___0 = dev_name((struct device const *)(& phydev->dev));
    printk("\016%s: PHY ID %08x at %d IRQ %s (%s)%s\n", (char *)(& ndev->name), phydev->phy_id,
           addr, irq_str, tmp___0, act != 0 ? (char *)" active" : (char *)"");
    found = 1;
  } else {
  }
  addr = addr + 1;
  ldv_46840: ;
  if (addr <= 31) {
    goto ldv_46839;
  } else {
  }
  if (found == 0) {
    printk("\f%s: No PHY found\n", (char *)(& ndev->name));
    mdiobus_unregister(new_bus);
    mdiobus_free(new_bus);
    return (-19);
  } else {
  }
  priv->mii = new_bus;
  return (0);
  bus_register_fail:
  mdiobus_free(new_bus);
  return (err);
}
}
int stmmac_mdio_unregister(struct net_device *ndev )
{
  struct stmmac_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp;
  if ((unsigned long )priv->mii == (unsigned long )((struct mii_bus *)0)) {
    return (0);
  } else {
  }
  mdiobus_unregister(priv->mii);
  (priv->mii)->priv = (void *)0;
  mdiobus_free(priv->mii);
  priv->mii = (struct mii_bus *)0;
  return (0);
}
}
void *ldv_kmem_cache_alloc_152(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_158(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_160(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_162(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_163(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_164(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_165(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_166(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_167(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_168(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_169(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_170(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
void *ldv_kmem_cache_alloc_198(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv___platform_driver_register_215(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_216(struct platform_driver *drv ) ;
__inline static dma_addr_t dma_map_single_attrs___0(struct device *dev , void *ptr ,
                                                    size_t size , enum dma_data_direction dir ,
                                                    struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_30805: ;
    goto ldv_30805;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
struct sk_buff *ldv_skb_clone_206(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_214(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_208(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_212(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_213(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_209(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_210(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_211(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static unsigned int stmmac_jumbo_frm(void *p , struct sk_buff *skb , int csum )
{
  struct stmmac_priv *priv ;
  unsigned int txsize ;
  unsigned int entry ;
  struct dma_desc *desc ;
  unsigned int nopaged_len ;
  unsigned int tmp ;
  unsigned int bmax ;
  unsigned int len ;
  dma_addr_t tmp___0 ;
  dma_addr_t tmp___1 ;
  dma_addr_t tmp___2 ;
  {
  priv = (struct stmmac_priv *)p;
  txsize = priv->dma_tx_size;
  entry = priv->cur_tx % txsize;
  tmp = skb_headlen((struct sk_buff const *)skb);
  nopaged_len = tmp;
  if (priv->extend_desc != 0) {
    desc = (struct dma_desc *)priv->dma_etx + (unsigned long )entry;
  } else {
    desc = priv->dma_tx + (unsigned long )entry;
  }
  if ((priv->plat)->enh_desc != 0) {
    bmax = 8192U;
  } else {
    bmax = 2048U;
  }
  len = nopaged_len - bmax;
  if (nopaged_len > 8192U) {
    tmp___0 = dma_map_single_attrs___0(priv->device, (void *)skb->data, (size_t )bmax,
                                       1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___0;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    desc->des3 = desc->des2 + 4096U;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 1, (int )bmax, csum, 2);
    __asm__ volatile ("sfence": : : "memory");
    *(priv->tx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
    priv->cur_tx = priv->cur_tx + 1U;
    entry = priv->cur_tx % txsize;
    if (priv->extend_desc != 0) {
      desc = (struct dma_desc *)priv->dma_etx + (unsigned long )entry;
    } else {
      desc = priv->dma_tx + (unsigned long )entry;
    }
    tmp___1 = dma_map_single_attrs___0(priv->device, (void *)skb->data + (unsigned long )bmax,
                                       (size_t )len, 1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___1;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    desc->des3 = desc->des2 + 4096U;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 0, (int )len, csum, 2);
    __asm__ volatile ("sfence": : : "memory");
    (*(((priv->hw)->desc)->set_tx_owner))(desc);
  } else {
    tmp___2 = dma_map_single_attrs___0(priv->device, (void *)skb->data, (size_t )nopaged_len,
                                       1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___2;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    desc->des3 = desc->des2 + 4096U;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 1, (int )nopaged_len, csum, 2);
  }
  return (entry);
}
}
static unsigned int stmmac_is_jumbo_frm(int len , int enh_desc )
{
  unsigned int ret ;
  {
  ret = 0U;
  if (len > 4095) {
    ret = 1U;
  } else {
  }
  return (ret);
}
}
static void stmmac_refill_desc3(void *priv_ptr , struct dma_desc *p )
{
  struct stmmac_priv *priv ;
  {
  priv = (struct stmmac_priv *)priv_ptr;
  if (priv->dma_buf_sz > 8191U) {
    p->des3 = p->des2 + 8192U;
  } else {
  }
  return;
}
}
static void stmmac_init_desc3(struct dma_desc *p )
{
  {
  p->des3 = p->des2 + 8192U;
  return;
}
}
static void stmmac_clean_desc3(void *priv_ptr , struct dma_desc *p )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(p->des3 != 0U, 0L);
  if (tmp != 0L) {
    p->des3 = 0U;
  } else {
  }
  return;
}
}
static int stmmac_set_16kib_bfsize(int mtu )
{
  int ret ;
  long tmp ;
  {
  ret = 0;
  tmp = ldv__builtin_expect(mtu > 8191, 0L);
  if (tmp != 0L) {
    ret = 16384;
  } else {
  }
  return (ret);
}
}
struct stmmac_mode_ops const ring_mode_ops = {0, & stmmac_is_jumbo_frm, & stmmac_jumbo_frm, & stmmac_set_16kib_bfsize, & stmmac_init_desc3,
    & stmmac_refill_desc3, & stmmac_clean_desc3};
void ldv_initialize_stmmac_mode_ops_19(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(16UL);
  ring_mode_ops_group0 = (struct dma_desc *)tmp;
  return;
}
}
void ldv_main_exported_19(void)
{
  int ldvarg192 ;
  int tmp ;
  int ldvarg188 ;
  int tmp___0 ;
  struct sk_buff *ldvarg193 ;
  void *tmp___1 ;
  int ldvarg189 ;
  int tmp___2 ;
  void *ldvarg190 ;
  void *tmp___3 ;
  void *ldvarg194 ;
  void *tmp___4 ;
  int ldvarg195 ;
  int tmp___5 ;
  void *ldvarg191 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg192 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg188 = tmp___0;
  tmp___1 = ldv_zalloc(232UL);
  ldvarg193 = (struct sk_buff *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg189 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg190 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg194 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg195 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg191 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_init_desc3(ring_mode_ops_group0);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  case 1: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_set_16kib_bfsize(ldvarg195);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  case 2: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_jumbo_frm(ldvarg194, ldvarg193, ldvarg192);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  case 3: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_refill_desc3(ldvarg191, ring_mode_ops_group0);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  case 4: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_clean_desc3(ldvarg190, ring_mode_ops_group0);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  case 5: ;
  if (ldv_state_variable_19 == 1) {
    stmmac_is_jumbo_frm(ldvarg189, ldvarg188);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_45969;
  default:
  ldv_stop();
  }
  ldv_45969: ;
  return;
}
}
void *ldv_kmem_cache_alloc_198(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_206(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_208(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_209(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_210(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_211(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_212(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_213(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_214(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_215(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_216(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
void *ldv_kmem_cache_alloc_244(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
int ldv___platform_driver_register_261(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_262(struct platform_driver *drv ) ;
struct sk_buff *ldv_skb_clone_252(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_260(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_254(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_250(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_258(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_259(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_255(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_256(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_257(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static unsigned int stmmac_jumbo_frm___0(void *p , struct sk_buff *skb , int csum )
{
  struct stmmac_priv *priv ;
  unsigned int txsize ;
  unsigned int entry ;
  struct dma_desc *desc ;
  unsigned int nopaged_len ;
  unsigned int tmp ;
  unsigned int bmax ;
  unsigned int i ;
  unsigned int len ;
  dma_addr_t tmp___0 ;
  dma_addr_t tmp___1 ;
  dma_addr_t tmp___2 ;
  {
  priv = (struct stmmac_priv *)p;
  txsize = priv->dma_tx_size;
  entry = priv->cur_tx % txsize;
  desc = priv->dma_tx + (unsigned long )entry;
  tmp = skb_headlen((struct sk_buff const *)skb);
  nopaged_len = tmp;
  i = 1U;
  if ((priv->plat)->enh_desc != 0) {
    bmax = 8192U;
  } else {
    bmax = 2048U;
  }
  len = nopaged_len - bmax;
  tmp___0 = dma_map_single_attrs___0(priv->device, (void *)skb->data, (size_t )bmax,
                                     1, (struct dma_attrs *)0);
  desc->des2 = (unsigned int )tmp___0;
  *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
  (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 1, (int )bmax, csum, 1);
  goto ldv_45934;
  ldv_45933:
  *(priv->tx_skbuff + (unsigned long )entry) = (struct sk_buff *)0;
  priv->cur_tx = priv->cur_tx + 1U;
  entry = priv->cur_tx % txsize;
  desc = priv->dma_tx + (unsigned long )entry;
  if (len > bmax) {
    tmp___1 = dma_map_single_attrs___0(priv->device, (void *)skb->data + (unsigned long )(bmax * i),
                                       (size_t )bmax, 1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___1;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 0, (int )bmax, csum, 1);
    (*(((priv->hw)->desc)->set_tx_owner))(desc);
    len = len - bmax;
    i = i + 1U;
  } else {
    tmp___2 = dma_map_single_attrs___0(priv->device, (void *)skb->data + (unsigned long )(bmax * i),
                                       (size_t )len, 1, (struct dma_attrs *)0);
    desc->des2 = (unsigned int )tmp___2;
    *(priv->tx_skbuff_dma + (unsigned long )entry) = (dma_addr_t )desc->des2;
    (*(((priv->hw)->desc)->prepare_tx_desc))(desc, 0, (int )len, csum, 1);
    (*(((priv->hw)->desc)->set_tx_owner))(desc);
    len = 0U;
  }
  ldv_45934: ;
  if (len != 0U) {
    goto ldv_45933;
  } else {
  }
  return (entry);
}
}
static unsigned int stmmac_is_jumbo_frm___0(int len , int enh_desc )
{
  unsigned int ret ;
  {
  ret = 0U;
  if ((enh_desc != 0 && len > 8192) || (enh_desc == 0 && len > 2048)) {
    ret = 1U;
  } else {
  }
  return (ret);
}
}
static void stmmac_init_dma_chain(void *des , dma_addr_t phy_addr , unsigned int size ,
                                  unsigned int extend_desc )
{
  int i ;
  dma_addr_t dma_phy ;
  struct dma_extended_desc *p ;
  struct dma_desc *p___0 ;
  {
  dma_phy = phy_addr;
  if (extend_desc != 0U) {
    p = (struct dma_extended_desc *)des;
    i = 0;
    goto ldv_45951;
    ldv_45950:
    dma_phy = dma_phy + 32ULL;
    p->basic.des3 = (unsigned int )dma_phy;
    p = p + 1;
    i = i + 1;
    ldv_45951: ;
    if ((unsigned int )i < size - 1U) {
      goto ldv_45950;
    } else {
    }
    p->basic.des3 = (unsigned int )phy_addr;
  } else {
    p___0 = (struct dma_desc *)des;
    i = 0;
    goto ldv_45955;
    ldv_45954:
    dma_phy = dma_phy + 16ULL;
    p___0->des3 = (unsigned int )dma_phy;
    p___0 = p___0 + 1;
    i = i + 1;
    ldv_45955: ;
    if ((unsigned int )i < size - 1U) {
      goto ldv_45954;
    } else {
    }
    p___0->des3 = (unsigned int )phy_addr;
  }
  return;
}
}
static void stmmac_refill_desc3___0(void *priv_ptr , struct dma_desc *p )
{
  struct stmmac_priv *priv ;
  {
  priv = (struct stmmac_priv *)priv_ptr;
  if (priv->hwts_rx_en != 0 && priv->extend_desc == 0) {
    p->des3 = (unsigned int )priv->dma_rx_phy + ((priv->dirty_rx + 1U) % priv->dma_rx_size) * 16U;
  } else {
  }
  return;
}
}
static void stmmac_clean_desc3___0(void *priv_ptr , struct dma_desc *p )
{
  struct stmmac_priv *priv ;
  int tmp ;
  {
  priv = (struct stmmac_priv *)priv_ptr;
  tmp = (*(((priv->hw)->desc)->get_tx_ls))(p);
  if (tmp != 0 && priv->extend_desc == 0) {
    p->des3 = (unsigned int )priv->dma_tx_phy + ((priv->dirty_tx + 1U) % priv->dma_tx_size) * 16U;
  } else {
  }
  return;
}
}
struct stmmac_mode_ops const chain_mode_ops = {& stmmac_init_dma_chain, & stmmac_is_jumbo_frm___0, & stmmac_jumbo_frm___0, 0,
    0, & stmmac_refill_desc3___0, & stmmac_clean_desc3___0};
extern int ldv_release_18(void) ;
extern int ldv_setup_18(void) ;
void ldv_initialize_stmmac_mode_ops_18(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(16UL);
  chain_mode_ops_group0 = (struct dma_desc *)tmp;
  return;
}
}
void ldv_main_exported_18(void)
{
  void *ldvarg64 ;
  void *tmp ;
  int ldvarg66 ;
  int tmp___0 ;
  unsigned int ldvarg61 ;
  unsigned int tmp___1 ;
  int ldvarg58 ;
  int tmp___2 ;
  void *ldvarg65 ;
  void *tmp___3 ;
  int ldvarg57 ;
  int tmp___4 ;
  dma_addr_t ldvarg62 ;
  unsigned int ldvarg59 ;
  unsigned int tmp___5 ;
  void *ldvarg60 ;
  void *tmp___6 ;
  struct sk_buff *ldvarg67 ;
  void *tmp___7 ;
  void *ldvarg63 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg64 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg66 = tmp___0;
  tmp___1 = __VERIFIER_nondet_uint();
  ldvarg61 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg58 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg65 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg57 = tmp___4;
  tmp___5 = __VERIFIER_nondet_uint();
  ldvarg59 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg60 = tmp___6;
  tmp___7 = ldv_zalloc(232UL);
  ldvarg67 = (struct sk_buff *)tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg63 = tmp___8;
  memset((void *)(& ldvarg62), 0, 8UL);
  tmp___9 = __VERIFIER_nondet_int();
  switch (tmp___9) {
  case 0: ;
  if (ldv_state_variable_18 == 1) {
    stmmac_jumbo_frm___0(ldvarg65, ldvarg67, ldvarg66);
    ldv_state_variable_18 = 1;
  } else {
  }
  if (ldv_state_variable_18 == 3) {
    stmmac_jumbo_frm___0(ldvarg65, ldvarg67, ldvarg66);
    ldv_state_variable_18 = 3;
  } else {
  }
  if (ldv_state_variable_18 == 2) {
    stmmac_jumbo_frm___0(ldvarg65, ldvarg67, ldvarg66);
    ldv_state_variable_18 = 2;
  } else {
  }
  goto ldv_45990;
  case 1: ;
  if (ldv_state_variable_18 == 1) {
    stmmac_refill_desc3___0(ldvarg64, chain_mode_ops_group0);
    ldv_state_variable_18 = 1;
  } else {
  }
  if (ldv_state_variable_18 == 3) {
    stmmac_refill_desc3___0(ldvarg64, chain_mode_ops_group0);
    ldv_state_variable_18 = 3;
  } else {
  }
  if (ldv_state_variable_18 == 2) {
    stmmac_refill_desc3___0(ldvarg64, chain_mode_ops_group0);
    ldv_state_variable_18 = 2;
  } else {
  }
  goto ldv_45990;
  case 2: ;
  if (ldv_state_variable_18 == 1) {
    stmmac_clean_desc3___0(ldvarg63, chain_mode_ops_group0);
    ldv_state_variable_18 = 1;
  } else {
  }
  if (ldv_state_variable_18 == 3) {
    stmmac_clean_desc3___0(ldvarg63, chain_mode_ops_group0);
    ldv_state_variable_18 = 3;
  } else {
  }
  if (ldv_state_variable_18 == 2) {
    stmmac_clean_desc3___0(ldvarg63, chain_mode_ops_group0);
    ldv_state_variable_18 = 2;
  } else {
  }
  goto ldv_45990;
  case 3: ;
  if (ldv_state_variable_18 == 2) {
    stmmac_init_dma_chain(ldvarg60, ldvarg62, ldvarg61, ldvarg59);
    ldv_state_variable_18 = 3;
  } else {
  }
  goto ldv_45990;
  case 4: ;
  if (ldv_state_variable_18 == 1) {
    stmmac_is_jumbo_frm___0(ldvarg57, ldvarg58);
    ldv_state_variable_18 = 1;
  } else {
  }
  if (ldv_state_variable_18 == 3) {
    stmmac_is_jumbo_frm___0(ldvarg57, ldvarg58);
    ldv_state_variable_18 = 3;
  } else {
  }
  if (ldv_state_variable_18 == 2) {
    stmmac_is_jumbo_frm___0(ldvarg57, ldvarg58);
    ldv_state_variable_18 = 2;
  } else {
  }
  goto ldv_45990;
  case 5: ;
  if (ldv_state_variable_18 == 3) {
    ldv_release_18();
    ldv_state_variable_18 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_18 == 2) {
    ldv_release_18();
    ldv_state_variable_18 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45990;
  case 6: ;
  if (ldv_state_variable_18 == 1) {
    ldv_setup_18();
    ldv_state_variable_18 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_45990;
  default:
  ldv_stop();
  }
  ldv_45990: ;
  return;
}
}
void *ldv_kmem_cache_alloc_244(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_250(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_252(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_254(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_255(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_256(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_257(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_258(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_259(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_260(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_261(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_262(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
void *ldv_kmem_cache_alloc_290(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_298(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_306(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_300(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_296(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_304(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_305(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_301(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_302(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_303(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void stmmac_set_mac_addr(void *ioaddr , u8 *addr , unsigned int high , unsigned int low ) ;
void stmmac_get_mac_addr(void *ioaddr , unsigned char *addr , unsigned int high ,
                         unsigned int low ) ;
void dwmac_dma_flush_tx_fifo(void *ioaddr ) ;
void dwmac_enable_dma_transmission(void *ioaddr ) ;
void dwmac_enable_dma_irq(void *ioaddr ) ;
void dwmac_disable_dma_irq(void *ioaddr ) ;
void dwmac_dma_start_tx(void *ioaddr ) ;
void dwmac_dma_stop_tx(void *ioaddr ) ;
void dwmac_dma_start_rx(void *ioaddr ) ;
void dwmac_dma_stop_rx(void *ioaddr ) ;
int dwmac_dma_interrupt(void *ioaddr , struct stmmac_extra_stats *x ) ;
void dwmac_enable_dma_transmission(void *ioaddr )
{
  {
  writel(1U, (void volatile *)ioaddr + 4100U);
  return;
}
}
void dwmac_enable_dma_irq(void *ioaddr )
{
  {
  writel(106593U, (void volatile *)ioaddr + 4124U);
  return;
}
}
void dwmac_disable_dma_irq(void *ioaddr )
{
  {
  writel(0U, (void volatile *)ioaddr + 4124U);
  return;
}
}
void dwmac_dma_start_tx(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  value = tmp;
  value = value | 8192U;
  writel(value, (void volatile *)ioaddr + 4120U);
  return;
}
}
void dwmac_dma_stop_tx(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  value = tmp;
  value = value & 4294959103U;
  writel(value, (void volatile *)ioaddr + 4120U);
  return;
}
}
void dwmac_dma_start_rx(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  value = tmp;
  value = value | 2U;
  writel(value, (void volatile *)ioaddr + 4120U);
  return;
}
}
void dwmac_dma_stop_rx(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  value = tmp;
  value = value & 4294967293U;
  writel(value, (void volatile *)ioaddr + 4120U);
  return;
}
}
int dwmac_dma_interrupt(void *ioaddr , struct stmmac_extra_stats *x )
{
  int ret ;
  u32 intr_status ;
  unsigned int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  u32 value ;
  unsigned int tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  {
  ret = 0;
  tmp = readl((void const volatile *)ioaddr + 4116U);
  intr_status = tmp;
  tmp___9 = ldv__builtin_expect((intr_status & 32768U) != 0U, 0L);
  if (tmp___9 != 0L) {
    tmp___0 = ldv__builtin_expect((intr_status & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      ret = 2;
      x->tx_undeflow_irq = x->tx_undeflow_irq + 1UL;
    } else {
    }
    tmp___1 = ldv__builtin_expect((intr_status & 8U) != 0U, 0L);
    if (tmp___1 != 0L) {
      x->tx_jabber_irq = x->tx_jabber_irq + 1UL;
    } else {
    }
    tmp___2 = ldv__builtin_expect((intr_status & 16U) != 0U, 0L);
    if (tmp___2 != 0L) {
      x->rx_overflow_irq = x->rx_overflow_irq + 1UL;
    } else {
    }
    tmp___3 = ldv__builtin_expect((intr_status & 128U) != 0U, 0L);
    if (tmp___3 != 0L) {
      x->rx_buf_unav_irq = x->rx_buf_unav_irq + 1UL;
    } else {
    }
    tmp___4 = ldv__builtin_expect((intr_status & 256U) != 0U, 0L);
    if (tmp___4 != 0L) {
      x->rx_process_stopped_irq = x->rx_process_stopped_irq + 1UL;
    } else {
    }
    tmp___5 = ldv__builtin_expect((intr_status & 512U) != 0U, 0L);
    if (tmp___5 != 0L) {
      x->rx_watchdog_irq = x->rx_watchdog_irq + 1UL;
    } else {
    }
    tmp___6 = ldv__builtin_expect((intr_status & 1024U) != 0U, 0L);
    if (tmp___6 != 0L) {
      x->tx_early_irq = x->tx_early_irq + 1UL;
    } else {
    }
    tmp___7 = ldv__builtin_expect((intr_status & 2U) != 0U, 0L);
    if (tmp___7 != 0L) {
      x->tx_process_stopped_irq = x->tx_process_stopped_irq + 1UL;
      ret = 1;
    } else {
    }
    tmp___8 = ldv__builtin_expect((intr_status & 8192U) != 0U, 0L);
    if (tmp___8 != 0L) {
      x->fatal_bus_error_irq = x->fatal_bus_error_irq + 1UL;
      ret = 1;
    } else {
    }
  } else {
  }
  tmp___15 = ldv__builtin_expect((intr_status & 65536U) != 0U, 1L);
  if (tmp___15 != 0L) {
    x->normal_irq_n = x->normal_irq_n + 1UL;
    tmp___12 = ldv__builtin_expect((intr_status & 64U) != 0U, 1L);
    if (tmp___12 != 0L) {
      tmp___10 = readl((void const volatile *)ioaddr + 4124U);
      value = tmp___10;
      tmp___11 = ldv__builtin_expect((value & 64U) != 0U, 1L);
      if (tmp___11 != 0L) {
        x->rx_normal_irq_n = x->rx_normal_irq_n + 1UL;
        ret = ret | 4;
      } else {
      }
    } else {
    }
    tmp___13 = ldv__builtin_expect((long )((int )intr_status) & 1L, 1L);
    if (tmp___13 != 0L) {
      x->tx_normal_irq_n = x->tx_normal_irq_n + 1UL;
      ret = ret | 8;
    } else {
    }
    tmp___14 = ldv__builtin_expect((intr_status & 16384U) != 0U, 0L);
    if (tmp___14 != 0L) {
      x->rx_early_irq = x->rx_early_irq + 1UL;
    } else {
    }
  } else {
  }
  tmp___16 = ldv__builtin_expect((intr_status & 469762048U) != 0U, 0L);
  if (tmp___16 != 0L) {
    printk("\f%s: unexpected status %08x\n", "dwmac_dma_interrupt", intr_status);
  } else {
  }
  writel(intr_status & 131071U, (void volatile *)ioaddr + 4116U);
  return (ret);
}
}
void dwmac_dma_flush_tx_fifo(void *ioaddr )
{
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  csr6 = tmp;
  writel(csr6 | 1048576U, (void volatile *)ioaddr + 4120U);
  ldv_43773:
  tmp___0 = readl((void const volatile *)ioaddr + 4120U);
  if ((tmp___0 & 1048576U) != 0U) {
    goto ldv_43773;
  } else {
  }
  return;
}
}
void stmmac_set_mac_addr(void *ioaddr , u8 *addr , unsigned int high , unsigned int low )
{
  unsigned long data ;
  {
  data = (unsigned long )(((int )*(addr + 5UL) << 8) | (int )*(addr + 4UL));
  writel((unsigned int )data | 2147483648U, (void volatile *)ioaddr + (unsigned long )high);
  data = (unsigned long )(((((int )*(addr + 3UL) << 24) | ((int )*(addr + 2UL) << 16)) | ((int )*(addr + 1UL) << 8)) | (int )*addr);
  writel((unsigned int )data, (void volatile *)ioaddr + (unsigned long )low);
  return;
}
}
void stmmac_set_mac(void *ioaddr , bool enable )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr);
  value = tmp;
  if ((int )enable) {
    value = value | 12U;
  } else {
    value = value & 4294967283U;
  }
  writel(value, (void volatile *)ioaddr);
  return;
}
}
void stmmac_get_mac_addr(void *ioaddr , unsigned char *addr , unsigned int high ,
                         unsigned int low )
{
  unsigned int hi_addr ;
  unsigned int lo_addr ;
  {
  hi_addr = readl((void const volatile *)ioaddr + (unsigned long )high);
  lo_addr = readl((void const volatile *)ioaddr + (unsigned long )low);
  *addr = (unsigned char )lo_addr;
  *(addr + 1UL) = (unsigned char )(lo_addr >> 8);
  *(addr + 2UL) = (unsigned char )(lo_addr >> 16);
  *(addr + 3UL) = (unsigned char )(lo_addr >> 24);
  *(addr + 4UL) = (unsigned char )hi_addr;
  *(addr + 5UL) = (unsigned char )(hi_addr >> 8);
  return;
}
}
void *ldv_kmem_cache_alloc_290(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_296(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_298(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_300(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_301(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_302(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_303(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_304(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_305(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_306(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_332(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern u32 bitrev32(u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
struct sk_buff *ldv_skb_clone_340(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_348(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_342(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_338(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_346(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_347(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_343(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_344(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_345(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct stmmac_dma_ops const dwmac1000_dma_ops ;
static void dwmac1000_core_init(void *ioaddr , int mtu )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr);
  value = tmp;
  value = value | 6324352U;
  if (mtu > 1500) {
    value = value | 134217728U;
  } else {
  }
  if (mtu > 2000) {
    value = value | 1048576U;
  } else {
  }
  writel(value, (void volatile *)ioaddr);
  writel(519U, (void volatile *)ioaddr + 60U);
  writel(0U, (void volatile *)ioaddr + 28U);
  return;
}
}
static int dwmac1000_rx_ipc_enable(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr);
  value = tmp;
  value = value | 1024U;
  writel(value, (void volatile *)ioaddr);
  value = readl((void const volatile *)ioaddr);
  return ((value & 1024U) != 0U);
}
}
static void dwmac1000_dump_regs(void *ioaddr )
{
  int i ;
  int offset ;
  unsigned int tmp ;
  {
  printk("\016\tDWMAC1000 regs (base addr = 0x%p)\n", ioaddr);
  i = 0;
  goto ldv_43776;
  ldv_43775:
  offset = i * 4;
  tmp = readl((void const volatile *)ioaddr + (unsigned long )offset);
  printk("\016\tReg No. %d (offset 0x%x): 0x%08x\n", i, offset, tmp);
  i = i + 1;
  ldv_43776: ;
  if (i <= 54) {
    goto ldv_43775;
  } else {
  }
  return;
}
}
static void dwmac1000_set_umac_addr(void *ioaddr , unsigned char *addr , unsigned int reg_n )
{
  {
  stmmac_set_mac_addr(ioaddr, addr, (reg_n > 15U ? 2048U : 64U) + reg_n * 8U, (reg_n > 15U ? 2052U : 68U) + reg_n * 8U);
  return;
}
}
static void dwmac1000_get_umac_addr(void *ioaddr , unsigned char *addr , unsigned int reg_n )
{
  {
  stmmac_get_mac_addr(ioaddr, addr, (reg_n > 15U ? 2048U : 64U) + reg_n * 8U, (reg_n > 15U ? 2052U : 68U) + reg_n * 8U);
  return;
}
}
static void dwmac1000_set_filter(struct net_device *dev , int id )
{
  void *ioaddr ;
  unsigned int value ;
  unsigned int perfect_addr_number ;
  struct _ddebug descriptor ;
  long tmp ;
  u32 mc_filter[2U] ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  int bit_nr ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  struct list_head const *__mptr___0 ;
  int reg ;
  struct netdev_hw_addr *ha___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct _ddebug descriptor___0 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  long tmp___5 ;
  {
  ioaddr = (void *)dev->base_addr;
  value = 0U;
  descriptor.modname = "stmmac";
  descriptor.function = "dwmac1000_set_filter";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
  descriptor.format = "%s: # mcasts %d, # unicast %d\n";
  descriptor.lineno = 245U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: # mcasts %d, # unicast %d\n", "dwmac1000_set_filter",
                       dev->mc.count, dev->uc.count);
  } else {
  }
  if ((dev->flags & 256U) != 0U) {
    value = 1U;
  } else
  if (dev->mc.count > 64 || (dev->flags & 512U) != 0U) {
    value = 16U;
    writel(4294967295U, (void volatile *)ioaddr + 8U);
    writel(4294967295U, (void volatile *)ioaddr + 12U);
  } else
  if (dev->mc.count != 0) {
    value = 4U;
    memset((void *)(& mc_filter), 0, 8UL);
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_43805;
    ldv_43804:
    tmp___0 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___1 = bitrev32(~ tmp___0);
    bit_nr = (int )(tmp___1 >> 26);
    mc_filter[bit_nr >> 5] = mc_filter[bit_nr >> 5] | (u32 )(1 << (bit_nr & 31));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_43805: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_43804;
    } else {
    }
    writel(mc_filter[0], (void volatile *)ioaddr + 12U);
    writel(mc_filter[1], (void volatile *)ioaddr + 8U);
  } else {
  }
  if (id > 52) {
    perfect_addr_number = 32U;
  } else {
    perfect_addr_number = 16U;
  }
  if ((unsigned int )dev->uc.count > perfect_addr_number) {
    value = value | 1U;
  } else {
    reg = 1;
    __mptr___1 = (struct list_head const *)dev->uc.list.next;
    ha___0 = (struct netdev_hw_addr *)__mptr___1;
    goto ldv_43814;
    ldv_43813:
    dwmac1000_set_umac_addr(ioaddr, (unsigned char *)(& ha___0->addr), (unsigned int )reg);
    reg = reg + 1;
    __mptr___2 = (struct list_head const *)ha___0->list.next;
    ha___0 = (struct netdev_hw_addr *)__mptr___2;
    ldv_43814: ;
    if ((unsigned long )(& ha___0->list) != (unsigned long )(& dev->uc.list)) {
      goto ldv_43813;
    } else {
    }
  }
  writel(value, (void volatile *)ioaddr + 4U);
  descriptor___0.modname = "stmmac";
  descriptor___0.function = "dwmac1000_set_filter";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
  descriptor___0.format = "\tFilter: 0x%08x\n\tHash: HI 0x%08x, LO 0x%08x\n";
  descriptor___0.lineno = 307U;
  descriptor___0.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___2 = readl((void const volatile *)ioaddr + 12U);
    tmp___3 = readl((void const volatile *)ioaddr + 8U);
    tmp___4 = readl((void const volatile *)ioaddr + 4U);
    __dynamic_pr_debug(& descriptor___0, "\tFilter: 0x%08x\n\tHash: HI 0x%08x, LO 0x%08x\n",
                       tmp___4, tmp___3, tmp___2);
  } else {
  }
  return;
}
}
static void dwmac1000_flow_ctrl(void *ioaddr , unsigned int duplex , unsigned int fc ,
                                unsigned int pause_time )
{
  unsigned int flow ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  flow = 0U;
  descriptor.modname = "stmmac";
  descriptor.function = "dwmac1000_flow_ctrl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
  descriptor.format = "GMAC Flow-Control:\n";
  descriptor.lineno = 315U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "GMAC Flow-Control:\n");
  } else {
  }
  if ((int )fc & 1) {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "dwmac1000_flow_ctrl";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
    descriptor___0.format = "\tReceive Flow-Control ON\n";
    descriptor___0.lineno = 317U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "\tReceive Flow-Control ON\n");
    } else {
    }
    flow = flow | 4U;
  } else {
  }
  if ((fc & 2U) != 0U) {
    descriptor___1.modname = "stmmac";
    descriptor___1.function = "dwmac1000_flow_ctrl";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
    descriptor___1.format = "\tTransmit Flow-Control ON\n";
    descriptor___1.lineno = 321U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "\tTransmit Flow-Control ON\n");
    } else {
    }
    flow = flow | 2U;
  } else {
  }
  if (duplex != 0U) {
    descriptor___2.modname = "stmmac";
    descriptor___2.function = "dwmac1000_flow_ctrl";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
    descriptor___2.format = "\tduplex mode: PAUSE %d\n";
    descriptor___2.lineno = 326U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "\tduplex mode: PAUSE %d\n", pause_time);
    } else {
    }
    flow = (pause_time << 16) | flow;
  } else {
  }
  writel(flow, (void volatile *)ioaddr + 24U);
  return;
}
}
static void dwmac1000_pmt(void *ioaddr , unsigned long mode )
{
  unsigned int pmt ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  pmt = 0U;
  if ((mode & 32UL) != 0UL) {
    descriptor.modname = "stmmac";
    descriptor.function = "dwmac1000_pmt";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
    descriptor.format = "GMAC: WOL Magic frame\n";
    descriptor.lineno = 338U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "GMAC: WOL Magic frame\n");
    } else {
    }
    pmt = pmt | 3U;
  } else {
  }
  if ((mode & 2UL) != 0UL) {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "dwmac1000_pmt";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
    descriptor___0.format = "GMAC: WOL on global unicast\n";
    descriptor___0.lineno = 342U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "GMAC: WOL on global unicast\n");
    } else {
    }
    pmt = pmt | 512U;
  } else {
  }
  writel(pmt, (void volatile *)ioaddr + 44U);
  return;
}
}
static int dwmac1000_irq_status(void *ioaddr , struct stmmac_extra_stats *x )
{
  u32 intr_status ;
  unsigned int tmp ;
  int ret ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  u32 status ;
  unsigned int tmp___4 ;
  int speed_value ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  {
  tmp = readl((void const volatile *)ioaddr + 56U);
  intr_status = tmp;
  ret = 0;
  if ((intr_status & 64U) != 0U) {
    x->mmc_tx_irq_n = x->mmc_tx_irq_n + 1UL;
  } else {
  }
  tmp___0 = ldv__builtin_expect((intr_status & 32U) != 0U, 0L);
  if (tmp___0 != 0L) {
    x->mmc_rx_irq_n = x->mmc_rx_irq_n + 1UL;
  } else {
  }
  tmp___1 = ldv__builtin_expect((intr_status & 128U) != 0U, 0L);
  if (tmp___1 != 0L) {
    x->mmc_rx_csum_offload_irq_n = x->mmc_rx_csum_offload_irq_n + 1UL;
  } else {
  }
  tmp___2 = ldv__builtin_expect((intr_status & 8U) != 0U, 0L);
  if (tmp___2 != 0L) {
    readl((void const volatile *)ioaddr + 44U);
    x->irq_receive_pmt_irq_n = x->irq_receive_pmt_irq_n + 1UL;
  } else {
  }
  if ((intr_status & 1024U) != 0U) {
    tmp___3 = readl((void const volatile *)ioaddr + 48U);
    ret = (int )tmp___3;
    if (ret & 1) {
      x->irq_tx_path_in_lpi_mode_n = x->irq_tx_path_in_lpi_mode_n + 1UL;
    } else {
    }
    if ((ret & 2) != 0) {
      x->irq_tx_path_exit_lpi_mode_n = x->irq_tx_path_exit_lpi_mode_n + 1UL;
    } else {
    }
    if ((ret & 4) != 0) {
      x->irq_rx_path_in_lpi_mode_n = x->irq_rx_path_in_lpi_mode_n + 1UL;
    } else {
    }
    if ((ret & 8) != 0) {
      x->irq_rx_path_exit_lpi_mode_n = x->irq_rx_path_exit_lpi_mode_n + 1UL;
    } else {
    }
  } else {
  }
  if ((intr_status & 4U) != 0U || (intr_status & 2U) != 0U) {
    readl((void const volatile *)ioaddr + 196U);
    x->irq_pcs_ane_n = x->irq_pcs_ane_n + 1UL;
  } else {
  }
  if ((int )intr_status & 1) {
    tmp___4 = readl((void const volatile *)ioaddr + 216U);
    status = tmp___4;
    x->irq_rgmii_n = x->irq_rgmii_n + 1UL;
    if ((status & 8U) != 0U) {
      speed_value = (int )((status & 5U) >> 1);
      x->pcs_duplex = (unsigned long )status & 1UL;
      if (speed_value == 2) {
        x->pcs_speed = 1000UL;
      } else
      if (speed_value == 1) {
        x->pcs_speed = 100UL;
      } else {
        x->pcs_speed = 10UL;
      }
      x->pcs_link = 1UL;
      descriptor.modname = "stmmac";
      descriptor.function = "dwmac1000_irq_status";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
      descriptor.format = "%s: Link is Up - %d/%s\n";
      descriptor.lineno = 406U;
      descriptor.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s: Link is Up - %d/%s\n", "dwmac1000_irq_status",
                           (int )x->pcs_speed, x->pcs_duplex != 0UL ? (char *)"Full" : (char *)"Half");
      } else {
      }
    } else {
      x->pcs_link = 0UL;
      descriptor___0.modname = "stmmac";
      descriptor___0.function = "dwmac1000_irq_status";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o.c.prepared";
      descriptor___0.format = "%s: Link is Down\n";
      descriptor___0.lineno = 409U;
      descriptor___0.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s: Link is Down\n", "dwmac1000_irq_status");
      } else {
      }
    }
  } else {
  }
  return (ret);
}
}
static void dwmac1000_set_eee_mode(void *ioaddr )
{
  u32 value ;
  {
  value = readl((void const volatile *)ioaddr + 48U);
  value = value | 589824U;
  writel(value, (void volatile *)ioaddr + 48U);
  return;
}
}
static void dwmac1000_reset_eee_mode(void *ioaddr )
{
  u32 value ;
  {
  value = readl((void const volatile *)ioaddr + 48U);
  value = value & 4294377471U;
  writel(value, (void volatile *)ioaddr + 48U);
  return;
}
}
static void dwmac1000_set_eee_pls(void *ioaddr , int link )
{
  u32 value ;
  {
  value = readl((void const volatile *)ioaddr + 48U);
  if (link != 0) {
    value = value | 131072U;
  } else {
    value = value & 4294836223U;
  }
  writel(value, (void volatile *)ioaddr + 48U);
  return;
}
}
static void dwmac1000_set_eee_timer(void *ioaddr , int ls , int tw )
{
  int value ;
  {
  value = (tw & 65535) | ((ls & 2047) << 16);
  writel((unsigned int )value, (void volatile *)ioaddr + 52U);
  return;
}
}
static void dwmac1000_ctrl_ane(void *ioaddr , bool restart )
{
  u32 value ;
  {
  value = readl((void const volatile *)ioaddr + 192U);
  value = 20480U;
  if ((int )restart) {
    value = value | 512U;
  } else {
  }
  writel(value, (void volatile *)ioaddr + 192U);
  return;
}
}
static void dwmac1000_get_adv(void *ioaddr , struct rgmii_adv *adv )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 200U);
  value = tmp;
  if ((value & 32U) != 0U) {
    adv->duplex = 1U;
  } else {
  }
  if ((value & 64U) != 0U) {
    adv->duplex = adv->duplex;
  } else {
  }
  adv->pause = (value & 384U) >> 7;
  value = readl((void const volatile *)ioaddr + 204U);
  if ((value & 32U) != 0U) {
    adv->lp_duplex = 1U;
  } else {
  }
  if ((value & 64U) != 0U) {
    adv->lp_duplex = 0U;
  } else {
  }
  adv->lp_pause = (value & 384U) >> 7;
  return;
}
}
static struct stmmac_ops const dwmac1000_ops =
     {& dwmac1000_core_init, & dwmac1000_rx_ipc_enable, & dwmac1000_dump_regs, & dwmac1000_irq_status,
    & dwmac1000_set_filter, & dwmac1000_flow_ctrl, & dwmac1000_pmt, & dwmac1000_set_umac_addr,
    & dwmac1000_get_umac_addr, & dwmac1000_set_eee_mode, & dwmac1000_reset_eee_mode,
    & dwmac1000_set_eee_timer, & dwmac1000_set_eee_pls, & dwmac1000_ctrl_ane, & dwmac1000_get_adv};
struct mac_device_info *dwmac1000_setup(void *ioaddr )
{
  struct mac_device_info *mac ;
  u32 hwid ;
  unsigned int tmp ;
  void *tmp___0 ;
  {
  tmp = readl((void const volatile *)ioaddr + 32U);
  hwid = tmp;
  tmp___0 = kzalloc(64UL, 208U);
  mac = (struct mac_device_info *)tmp___0;
  if ((unsigned long )mac == (unsigned long )((struct mac_device_info *)0)) {
    return ((struct mac_device_info *)0);
  } else {
  }
  mac->mac = & dwmac1000_ops;
  mac->dma = & dwmac1000_dma_ops;
  mac->link.port = 32768;
  mac->link.duplex = 2048;
  mac->link.speed = 16384;
  mac->mii.addr = 16U;
  mac->mii.data = 20U;
  mac->synopsys_uid = hwid;
  return (mac);
}
}
void ldv_main_exported_17(void)
{
  void *ldvarg47 ;
  void *tmp ;
  int ldvarg34 ;
  int tmp___0 ;
  unsigned int ldvarg28 ;
  unsigned int tmp___1 ;
  void *ldvarg22 ;
  void *tmp___2 ;
  void *ldvarg25 ;
  void *tmp___3 ;
  void *ldvarg21 ;
  void *tmp___4 ;
  bool ldvarg48 ;
  void *ldvarg33 ;
  void *tmp___5 ;
  unsigned int ldvarg30 ;
  unsigned int tmp___6 ;
  void *ldvarg38 ;
  void *tmp___7 ;
  void *ldvarg35 ;
  void *tmp___8 ;
  int ldvarg27 ;
  int tmp___9 ;
  struct net_device *ldvarg26 ;
  void *tmp___10 ;
  int ldvarg24 ;
  int tmp___11 ;
  void *ldvarg45 ;
  void *tmp___12 ;
  int ldvarg44 ;
  int tmp___13 ;
  void *ldvarg40 ;
  void *tmp___14 ;
  void *ldvarg29 ;
  void *tmp___15 ;
  unsigned int ldvarg36 ;
  unsigned int tmp___16 ;
  unsigned char *ldvarg37 ;
  void *tmp___17 ;
  struct rgmii_adv *ldvarg46 ;
  void *tmp___18 ;
  unsigned int ldvarg50 ;
  unsigned int tmp___19 ;
  void *ldvarg49 ;
  void *tmp___20 ;
  void *ldvarg42 ;
  void *tmp___21 ;
  void *ldvarg43 ;
  void *tmp___22 ;
  int ldvarg23 ;
  int tmp___23 ;
  unsigned long ldvarg41 ;
  unsigned long tmp___24 ;
  unsigned int ldvarg31 ;
  unsigned int tmp___25 ;
  void *ldvarg32 ;
  void *tmp___26 ;
  unsigned char *ldvarg51 ;
  void *tmp___27 ;
  struct stmmac_extra_stats *ldvarg39 ;
  void *tmp___28 ;
  int tmp___29 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg47 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg34 = tmp___0;
  tmp___1 = __VERIFIER_nondet_uint();
  ldvarg28 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg22 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg25 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg21 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg33 = tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg30 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg38 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg35 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg27 = tmp___9;
  tmp___10 = ldv_zalloc(3264UL);
  ldvarg26 = (struct net_device *)tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg24 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg45 = tmp___12;
  tmp___13 = __VERIFIER_nondet_int();
  ldvarg44 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg40 = tmp___14;
  tmp___15 = ldv_zalloc(1UL);
  ldvarg29 = tmp___15;
  tmp___16 = __VERIFIER_nondet_uint();
  ldvarg36 = tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg37 = (unsigned char *)tmp___17;
  tmp___18 = ldv_zalloc(16UL);
  ldvarg46 = (struct rgmii_adv *)tmp___18;
  tmp___19 = __VERIFIER_nondet_uint();
  ldvarg50 = tmp___19;
  tmp___20 = ldv_zalloc(1UL);
  ldvarg49 = tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg42 = tmp___21;
  tmp___22 = ldv_zalloc(1UL);
  ldvarg43 = tmp___22;
  tmp___23 = __VERIFIER_nondet_int();
  ldvarg23 = tmp___23;
  tmp___24 = __VERIFIER_nondet_ulong();
  ldvarg41 = tmp___24;
  tmp___25 = __VERIFIER_nondet_uint();
  ldvarg31 = tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg32 = tmp___26;
  tmp___27 = ldv_zalloc(1UL);
  ldvarg51 = (unsigned char *)tmp___27;
  tmp___28 = ldv_zalloc(704UL);
  ldvarg39 = (struct stmmac_extra_stats *)tmp___28;
  memset((void *)(& ldvarg48), 0, 1UL);
  tmp___29 = __VERIFIER_nondet_int();
  switch (tmp___29) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_get_umac_addr(ldvarg49, ldvarg51, ldvarg50);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 1: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_ctrl_ane(ldvarg47, (int )ldvarg48);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 2: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_get_adv(ldvarg45, ldvarg46);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 3: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_set_eee_pls(ldvarg43, ldvarg44);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 4: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_reset_eee_mode(ldvarg42);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 5: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_pmt(ldvarg40, ldvarg41);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 6: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_irq_status(ldvarg38, ldvarg39);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 7: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_set_umac_addr(ldvarg35, ldvarg37, ldvarg36);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 8: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_core_init(ldvarg33, ldvarg34);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 9: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_dump_regs(ldvarg32);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 10: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_flow_ctrl(ldvarg29, ldvarg31, ldvarg30, ldvarg28);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 11: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_set_filter(ldvarg26, ldvarg27);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 12: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_rx_ipc_enable(ldvarg25);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 13: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_set_eee_timer(ldvarg22, ldvarg24, ldvarg23);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  case 14: ;
  if (ldv_state_variable_17 == 1) {
    dwmac1000_set_eee_mode(ldvarg21);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_43918;
  default:
  ldv_stop();
  }
  ldv_43918: ;
  return;
}
}
void *ldv_kmem_cache_alloc_332(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_338(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_340(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_342(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_343(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_344(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_345(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_346(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_347(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_348(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_374(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_382(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_390(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_384(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_380(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_388(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_389(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_385(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_386(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_387(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void __const_udelay(unsigned long ) ;
static int dwmac1000_dma_init(void *ioaddr , int pbl , int fb , int mb , int burst_len ,
                              u32 dma_tx , u32 dma_rx , int atds )
{
  u32 value ;
  unsigned int tmp ;
  int limit ;
  unsigned int tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  tmp = readl((void const volatile *)ioaddr + 4096U);
  value = tmp;
  value = value | 1U;
  writel(value, (void volatile *)ioaddr + 4096U);
  limit = 10;
  goto ldv_43768;
  ldv_43767:
  tmp___0 = readl((void const volatile *)ioaddr + 4096U);
  if ((tmp___0 & 1U) == 0U) {
    goto ldv_43762;
  } else {
  }
  __ms = 10UL;
  goto ldv_43765;
  ldv_43764:
  __const_udelay(4295000UL);
  ldv_43765:
  tmp___1 = __ms;
  __ms = __ms - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_43764;
  } else {
  }
  ldv_43768:
  tmp___2 = limit;
  limit = limit - 1;
  if (tmp___2 != 0) {
    goto ldv_43767;
  } else {
  }
  ldv_43762: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  value = (u32 )(((pbl << 8) | (pbl << 17)) | 16777216);
  if (fb != 0) {
    value = value | 65536U;
  } else {
  }
  if (mb != 0) {
    value = value | 67108864U;
  } else {
  }
  value = value | 2U;
  if (atds != 0) {
    value = value | 128U;
  } else {
  }
  writel(value, (void volatile *)ioaddr + 4096U);
  writel((unsigned int )burst_len, (void volatile *)ioaddr + 4136U);
  writel(106593U, (void volatile *)ioaddr + 4124U);
  writel(dma_tx, (void volatile *)ioaddr + 4112U);
  writel(dma_rx, (void volatile *)ioaddr + 4108U);
  return (0);
}
}
static void dwmac1000_dma_operation_mode(void *ioaddr , int txmode , int rxmode )
{
  u32 csr6 ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  csr6 = tmp;
  if (txmode == 1) {
    descriptor.modname = "stmmac";
    descriptor.function = "dwmac1000_dma_operation_mode";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.o.c.prepared";
    descriptor.format = "GMAC: enable TX store and forward mode\n";
    descriptor.lineno = 264U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "GMAC: enable TX store and forward mode\n");
    } else {
    }
    csr6 = csr6 | 2097152U;
    csr6 = csr6 | 4U;
  } else {
    descriptor___0.modname = "stmmac";
    descriptor___0.function = "dwmac1000_dma_operation_mode";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.o.c.prepared";
    descriptor___0.format = "GMAC: disabling TX SF (threshold %d)\n";
    descriptor___0.lineno = 272U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "GMAC: disabling TX SF (threshold %d)\n",
                         txmode);
    } else {
    }
    csr6 = csr6 & 4292870143U;
    csr6 = csr6 & 4294852607U;
    if (txmode <= 32) {
      csr6 = csr6 | 81920U;
    } else
    if (txmode <= 64) {
      csr6 = csr6;
    } else
    if (txmode <= 128) {
      csr6 = csr6 | 16384U;
    } else
    if (txmode <= 192) {
      csr6 = csr6 | 32768U;
    } else {
      csr6 = csr6 | 49152U;
    }
  }
  if (rxmode == 1) {
    descriptor___1.modname = "stmmac";
    descriptor___1.function = "dwmac1000_dma_operation_mode";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.o.c.prepared";
    descriptor___1.format = "GMAC: enable RX store and forward mode\n";
    descriptor___1.lineno = 289U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "GMAC: enable RX store and forward mode\n");
    } else {
    }
    csr6 = csr6 | 33554432U;
  } else {
    descriptor___2.modname = "stmmac";
    descriptor___2.function = "dwmac1000_dma_operation_mode";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.o.c.prepared";
    descriptor___2.format = "GMAC: disable RX SF mode (threshold %d)\n";
    descriptor___2.lineno = 292U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "GMAC: disable RX SF mode (threshold %d)\n",
                         rxmode);
    } else {
    }
    csr6 = csr6 & 4261412863U;
    csr6 = csr6 & 4294967271U;
    if (rxmode <= 32) {
      csr6 = csr6 | 8U;
    } else
    if (rxmode <= 64) {
      csr6 = csr6;
    } else
    if (rxmode <= 96) {
      csr6 = csr6 | 16U;
    } else {
      csr6 = csr6 | 24U;
    }
  }
  writel(csr6, (void volatile *)ioaddr + 4120U);
  return;
}
}
static void dwmac1000_dump_dma_regs(void *ioaddr )
{
  int i ;
  int offset ;
  unsigned int tmp ;
  {
  printk("\016 DMA registers\n");
  i = 0;
  goto ldv_43786;
  ldv_43785: ;
  if (i <= 8 || i > 17) {
    offset = i * 4;
    tmp = readl((void const volatile *)(ioaddr + ((unsigned long )offset + 4096UL)));
    printk("\v\t Reg No. %d (offset 0x%x): 0x%08x\n", i, offset + 4096, tmp);
  } else {
  }
  i = i + 1;
  ldv_43786: ;
  if (i <= 21) {
    goto ldv_43785;
  } else {
  }
  return;
}
}
static unsigned int dwmac1000_get_hw_feature(void *ioaddr )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4184U);
  return (tmp);
}
}
static void dwmac1000_rx_watchdog(void *ioaddr , u32 riwt )
{
  {
  writel(riwt, (void volatile *)ioaddr + 4132U);
  return;
}
}
struct stmmac_dma_ops const dwmac1000_dma_ops =
     {& dwmac1000_dma_init, & dwmac1000_dump_dma_regs, & dwmac1000_dma_operation_mode,
    0, & dwmac_enable_dma_transmission, & dwmac_enable_dma_irq, & dwmac_disable_dma_irq,
    & dwmac_dma_start_tx, & dwmac_dma_stop_tx, & dwmac_dma_start_rx, & dwmac_dma_stop_rx,
    & dwmac_dma_interrupt, & dwmac1000_get_hw_feature, & dwmac1000_rx_watchdog};
extern int ldv_setup_16(void) ;
extern int ldv_release_16(void) ;
int ldv_retval_8 ;
void ldv_main_exported_16(void)
{
  void *ldvarg75 ;
  void *tmp ;
  int ldvarg82 ;
  int tmp___0 ;
  void *ldvarg74 ;
  void *tmp___1 ;
  void *ldvarg76 ;
  void *tmp___2 ;
  void *ldvarg89 ;
  void *tmp___3 ;
  void *ldvarg92 ;
  void *tmp___4 ;
  int ldvarg93 ;
  int tmp___5 ;
  void *ldvarg90 ;
  void *tmp___6 ;
  u32 ldvarg78 ;
  u32 tmp___7 ;
  void *ldvarg88 ;
  void *tmp___8 ;
  int ldvarg85 ;
  int tmp___9 ;
  void *ldvarg73 ;
  void *tmp___10 ;
  void *ldvarg95 ;
  void *tmp___11 ;
  int ldvarg81 ;
  int tmp___12 ;
  void *ldvarg83 ;
  void *tmp___13 ;
  void *ldvarg96 ;
  void *tmp___14 ;
  int ldvarg79 ;
  int tmp___15 ;
  void *ldvarg86 ;
  void *tmp___16 ;
  u32 ldvarg87 ;
  u32 tmp___17 ;
  u32 ldvarg80 ;
  u32 tmp___18 ;
  void *ldvarg91 ;
  void *tmp___19 ;
  int ldvarg94 ;
  int tmp___20 ;
  int ldvarg84 ;
  int tmp___21 ;
  struct stmmac_extra_stats *ldvarg77 ;
  void *tmp___22 ;
  int tmp___23 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg75 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg82 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg74 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg76 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg89 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg92 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg93 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg90 = tmp___6;
  tmp___7 = __VERIFIER_nondet_u32();
  ldvarg78 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg88 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg85 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg73 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg95 = tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  ldvarg81 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg83 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg96 = tmp___14;
  tmp___15 = __VERIFIER_nondet_int();
  ldvarg79 = tmp___15;
  tmp___16 = ldv_zalloc(1UL);
  ldvarg86 = tmp___16;
  tmp___17 = __VERIFIER_nondet_u32();
  ldvarg87 = tmp___17;
  tmp___18 = __VERIFIER_nondet_u32();
  ldvarg80 = tmp___18;
  tmp___19 = ldv_zalloc(1UL);
  ldvarg91 = tmp___19;
  tmp___20 = __VERIFIER_nondet_int();
  ldvarg94 = tmp___20;
  tmp___21 = __VERIFIER_nondet_int();
  ldvarg84 = tmp___21;
  tmp___22 = ldv_zalloc(704UL);
  ldvarg77 = (struct stmmac_extra_stats *)tmp___22;
  tmp___23 = __VERIFIER_nondet_int();
  switch (tmp___23) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_enable_dma_transmission(ldvarg96);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_enable_dma_transmission(ldvarg96);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_enable_dma_transmission(ldvarg96);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 1: ;
  if (ldv_state_variable_16 == 1) {
    dwmac1000_dma_operation_mode(ldvarg95, ldvarg94, ldvarg93);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac1000_dma_operation_mode(ldvarg95, ldvarg94, ldvarg93);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac1000_dma_operation_mode(ldvarg95, ldvarg94, ldvarg93);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 2: ;
  if (ldv_state_variable_16 == 1) {
    dwmac1000_get_hw_feature(ldvarg92);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac1000_get_hw_feature(ldvarg92);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac1000_get_hw_feature(ldvarg92);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 3: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_dma_start_tx(ldvarg91);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_dma_start_tx(ldvarg91);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_dma_start_tx(ldvarg91);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 4: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_enable_dma_irq(ldvarg90);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_enable_dma_irq(ldvarg90);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_enable_dma_irq(ldvarg90);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 5: ;
  if (ldv_state_variable_16 == 1) {
    dwmac1000_dump_dma_regs(ldvarg89);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac1000_dump_dma_regs(ldvarg89);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac1000_dump_dma_regs(ldvarg89);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 6: ;
  if (ldv_state_variable_16 == 1) {
    dwmac1000_rx_watchdog(ldvarg88, ldvarg87);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac1000_rx_watchdog(ldvarg88, ldvarg87);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac1000_rx_watchdog(ldvarg88, ldvarg87);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 7: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_dma_stop_tx(ldvarg86);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_dma_stop_tx(ldvarg86);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_dma_stop_tx(ldvarg86);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 8: ;
  if (ldv_state_variable_16 == 2) {
    ldv_retval_8 = dwmac1000_dma_init(ldvarg83, ldvarg81, ldvarg79, ldvarg84, ldvarg85,
                                      ldvarg78, ldvarg80, ldvarg82);
    if (ldv_retval_8 == 0) {
      ldv_state_variable_16 = 3;
    } else {
    }
  } else {
  }
  goto ldv_43829;
  case 9: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_dma_interrupt(ldvarg76, ldvarg77);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_dma_interrupt(ldvarg76, ldvarg77);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_dma_interrupt(ldvarg76, ldvarg77);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 10: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_dma_stop_rx(ldvarg75);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_dma_stop_rx(ldvarg75);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_dma_stop_rx(ldvarg75);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 11: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_disable_dma_irq(ldvarg74);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_disable_dma_irq(ldvarg74);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_disable_dma_irq(ldvarg74);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 12: ;
  if (ldv_state_variable_16 == 1) {
    dwmac_dma_start_rx(ldvarg73);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 3) {
    dwmac_dma_start_rx(ldvarg73);
    ldv_state_variable_16 = 3;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    dwmac_dma_start_rx(ldvarg73);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_43829;
  case 13: ;
  if (ldv_state_variable_16 == 3) {
    ldv_release_16();
    ldv_state_variable_16 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    ldv_release_16();
    ldv_state_variable_16 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_43829;
  case 14: ;
  if (ldv_state_variable_16 == 1) {
    ldv_setup_16();
    ldv_state_variable_16 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_43829;
  default:
  ldv_stop();
  }
  ldv_43829: ;
  return;
}
}
void *ldv_kmem_cache_alloc_374(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_380(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_382(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_384(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_385(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_386(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_387(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_388(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_389(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_390(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_416(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_424(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_432(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_426(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_422(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_430(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_431(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_427(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_428(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_429(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct stmmac_dma_ops const dwmac100_dma_ops ;
static void dwmac100_core_init(void *ioaddr , int mtu )
{
  u32 value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr);
  value = tmp;
  writel(value | 268435712U, (void volatile *)ioaddr);
  writel(33024U, (void volatile *)ioaddr + 32U);
  return;
}
}
static void dwmac100_dump_mac_regs(void *ioaddr )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  printk("\016\t----------------------------------------------\n\t  DWMAC 100 CSR (base addr = 0x%p)\n\t----------------------------------------------\n",
         ioaddr);
  tmp = readl((void const volatile *)ioaddr);
  printk("\016\tcontrol reg (offset 0x%x): 0x%08x\n", 0, tmp);
  tmp___0 = readl((void const volatile *)ioaddr + 4U);
  printk("\016\taddr HI (offset 0x%x): 0x%08x\n ", 4, tmp___0);
  tmp___1 = readl((void const volatile *)ioaddr + 8U);
  printk("\016\taddr LO (offset 0x%x): 0x%08x\n", 8, tmp___1);
  tmp___2 = readl((void const volatile *)ioaddr + 12U);
  printk("\016\tmulticast hash HI (offset 0x%x): 0x%08x\n", 12, tmp___2);
  tmp___3 = readl((void const volatile *)ioaddr + 16U);
  printk("\016\tmulticast hash LO (offset 0x%x): 0x%08x\n", 16, tmp___3);
  tmp___4 = readl((void const volatile *)ioaddr + 28U);
  printk("\016\tflow control (offset 0x%x): 0x%08x\n", 28, tmp___4);
  tmp___5 = readl((void const volatile *)ioaddr + 32U);
  printk("\016\tVLAN1 tag (offset 0x%x): 0x%08x\n", 32, tmp___5);
  tmp___6 = readl((void const volatile *)ioaddr + 36U);
  printk("\016\tVLAN2 tag (offset 0x%x): 0x%08x\n", 36, tmp___6);
  return;
}
}
static int dwmac100_rx_ipc_enable(void *ioaddr )
{
  {
  return (0);
}
}
static int dwmac100_irq_status(void *ioaddr , struct stmmac_extra_stats *x )
{
  {
  return (0);
}
}
static void dwmac100_set_umac_addr(void *ioaddr , unsigned char *addr , unsigned int reg_n )
{
  {
  stmmac_set_mac_addr(ioaddr, addr, 4U, 8U);
  return;
}
}
static void dwmac100_get_umac_addr(void *ioaddr , unsigned char *addr , unsigned int reg_n )
{
  {
  stmmac_get_mac_addr(ioaddr, addr, 4U, 8U);
  return;
}
}
static void dwmac100_set_filter(struct net_device *dev , int id )
{
  void *ioaddr ;
  u32 value ;
  unsigned int tmp ;
  u32 mc_filter[2U] ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  int bit_nr ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  ioaddr = (void *)dev->base_addr;
  tmp = readl((void const volatile *)ioaddr);
  value = tmp;
  if ((dev->flags & 256U) != 0U) {
    value = value | 262144U;
    value = value & 4294270975U;
  } else
  if (dev->mc.count > 64 || (dev->flags & 512U) != 0U) {
    value = value | 524288U;
    value = value & 4294541311U;
    writel(4294967295U, (void volatile *)ioaddr + 12U);
    writel(4294967295U, (void volatile *)ioaddr + 16U);
  } else
  if (dev->mc.count == 0) {
    value = value & 4294008831U;
  } else {
    value = value | 8192U;
    value = value & 4294017023U;
    memset((void *)(& mc_filter), 0, 8UL);
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_43760;
    ldv_43759:
    tmp___0 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___1 = bitrev32(tmp___0);
    bit_nr = (int )(tmp___1 >> 26);
    mc_filter[bit_nr >> 5] = mc_filter[bit_nr >> 5] | (u32 )(1 << (bit_nr & 31));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_43760: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_43759;
    } else {
    }
    writel(mc_filter[0], (void volatile *)ioaddr + 16U);
    writel(mc_filter[1], (void volatile *)ioaddr + 12U);
  }
  writel(value, (void volatile *)ioaddr);
  return;
}
}
static void dwmac100_flow_ctrl(void *ioaddr , unsigned int duplex , unsigned int fc ,
                               unsigned int pause_time )
{
  unsigned int flow ;
  {
  flow = 2U;
  if (duplex != 0U) {
    flow = (pause_time << 16) | flow;
  } else {
  }
  writel(flow, (void volatile *)ioaddr + 28U);
  return;
}
}
static void dwmac100_pmt(void *ioaddr , unsigned long mode )
{
  {
  return;
}
}
static struct stmmac_ops const dwmac100_ops =
     {& dwmac100_core_init, & dwmac100_rx_ipc_enable, & dwmac100_dump_mac_regs, & dwmac100_irq_status,
    & dwmac100_set_filter, & dwmac100_flow_ctrl, & dwmac100_pmt, & dwmac100_set_umac_addr,
    & dwmac100_get_umac_addr, 0, 0, 0, 0, 0, 0};
struct mac_device_info *dwmac100_setup(void *ioaddr )
{
  struct mac_device_info *mac ;
  void *tmp ;
  {
  tmp = kzalloc(64UL, 208U);
  mac = (struct mac_device_info *)tmp;
  if ((unsigned long )mac == (unsigned long )((struct mac_device_info *)0)) {
    return ((struct mac_device_info *)0);
  } else {
  }
  printk("\016\tDWMAC100\n");
  mac->mac = & dwmac100_ops;
  mac->dma = & dwmac100_dma_ops;
  mac->link.port = 134217728;
  mac->link.duplex = 1048576;
  mac->link.speed = 0;
  mac->mii.addr = 20U;
  mac->mii.data = 24U;
  mac->synopsys_uid = 0U;
  return (mac);
}
}
void ldv_main_exported_15(void)
{
  int ldvarg169 ;
  int tmp ;
  void *ldvarg182 ;
  void *tmp___0 ;
  int ldvarg171 ;
  int tmp___1 ;
  void *ldvarg180 ;
  void *tmp___2 ;
  struct net_device *ldvarg170 ;
  void *tmp___3 ;
  unsigned char *ldvarg179 ;
  void *tmp___4 ;
  void *ldvarg173 ;
  void *tmp___5 ;
  unsigned int ldvarg176 ;
  unsigned int tmp___6 ;
  unsigned long ldvarg183 ;
  unsigned long tmp___7 ;
  unsigned int ldvarg185 ;
  unsigned int tmp___8 ;
  unsigned int ldvarg174 ;
  unsigned int tmp___9 ;
  void *ldvarg168 ;
  void *tmp___10 ;
  struct stmmac_extra_stats *ldvarg181 ;
  void *tmp___11 ;
  void *ldvarg177 ;
  void *tmp___12 ;
  void *ldvarg184 ;
  void *tmp___13 ;
  unsigned char *ldvarg186 ;
  void *tmp___14 ;
  void *ldvarg172 ;
  void *tmp___15 ;
  unsigned int ldvarg178 ;
  unsigned int tmp___16 ;
  void *ldvarg187 ;
  void *tmp___17 ;
  unsigned int ldvarg175 ;
  unsigned int tmp___18 ;
  int tmp___19 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg169 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg182 = tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg171 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg180 = tmp___2;
  tmp___3 = ldv_zalloc(3264UL);
  ldvarg170 = (struct net_device *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg179 = (unsigned char *)tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg173 = tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg176 = tmp___6;
  tmp___7 = __VERIFIER_nondet_ulong();
  ldvarg183 = tmp___7;
  tmp___8 = __VERIFIER_nondet_uint();
  ldvarg185 = tmp___8;
  tmp___9 = __VERIFIER_nondet_uint();
  ldvarg174 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg168 = tmp___10;
  tmp___11 = ldv_zalloc(704UL);
  ldvarg181 = (struct stmmac_extra_stats *)tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg177 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg184 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg186 = (unsigned char *)tmp___14;
  tmp___15 = ldv_zalloc(1UL);
  ldvarg172 = tmp___15;
  tmp___16 = __VERIFIER_nondet_uint();
  ldvarg178 = tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg187 = tmp___17;
  tmp___18 = __VERIFIER_nondet_uint();
  ldvarg175 = tmp___18;
  tmp___19 = __VERIFIER_nondet_int();
  switch (tmp___19) {
  case 0: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_get_umac_addr(ldvarg187, ldvarg186, ldvarg185);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 1: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_pmt(ldvarg184, ldvarg183);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 2: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_irq_status(ldvarg182, ldvarg181);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 3: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_set_umac_addr(ldvarg180, ldvarg179, ldvarg178);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 4: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_flow_ctrl(ldvarg177, ldvarg175, ldvarg174, ldvarg176);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 5: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_dump_mac_regs(ldvarg173);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 6: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_core_init(ldvarg172, ldvarg171);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 7: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_set_filter(ldvarg170, ldvarg169);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  case 8: ;
  if (ldv_state_variable_15 == 1) {
    dwmac100_rx_ipc_enable(ldvarg168);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_43802;
  default:
  ldv_stop();
  }
  ldv_43802: ;
  return;
}
}
void *ldv_kmem_cache_alloc_416(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_422(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_424(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_426(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_427(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_428(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_429(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_430(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_431(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_432(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_458(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_466(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_474(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_468(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_464(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_472(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_473(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_469(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_470(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_471(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int dwmac100_dma_init(void *ioaddr , int pbl , int fb , int mb , int burst_len ,
                             u32 dma_tx , u32 dma_rx , int atds )
{
  u32 value ;
  unsigned int tmp ;
  int limit ;
  unsigned int tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  tmp = readl((void const volatile *)ioaddr + 4096U);
  value = tmp;
  value = value | 1U;
  writel(value, (void volatile *)ioaddr + 4096U);
  limit = 10;
  goto ldv_43728;
  ldv_43727:
  tmp___0 = readl((void const volatile *)ioaddr + 4096U);
  if ((tmp___0 & 1U) == 0U) {
    goto ldv_43722;
  } else {
  }
  __ms = 10UL;
  goto ldv_43725;
  ldv_43724:
  __const_udelay(4295000UL);
  ldv_43725:
  tmp___1 = __ms;
  __ms = __ms - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_43724;
  } else {
  }
  ldv_43728:
  tmp___2 = limit;
  limit = limit - 1;
  if (tmp___2 != 0) {
    goto ldv_43727;
  } else {
  }
  ldv_43722: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  writel((unsigned int )(pbl << 8), (void volatile *)ioaddr + 4096U);
  writel(106593U, (void volatile *)ioaddr + 4124U);
  writel(dma_tx, (void volatile *)ioaddr + 4112U);
  writel(dma_rx, (void volatile *)ioaddr + 4108U);
  return (0);
}
}
static void dwmac100_dma_operation_mode(void *ioaddr , int txmode , int rxmode )
{
  u32 csr6 ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 4120U);
  csr6 = tmp;
  if (txmode <= 32) {
    csr6 = csr6 | 4227072U;
  } else
  if (txmode <= 64) {
    csr6 = csr6 | 16384U;
  } else {
    csr6 = csr6 | 32768U;
  }
  writel(csr6, (void volatile *)ioaddr + 4120U);
  return;
}
}
static void dwmac100_dump_dma_regs(void *ioaddr )
{
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "stmmac";
  descriptor.function = "dwmac100_dump_dma_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.o.c.prepared";
  descriptor.format = "DWMAC 100 DMA CSR\n";
  descriptor.lineno = 238U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "DWMAC 100 DMA CSR\n");
  } else {
  }
  i = 0;
  goto ldv_43743;
  ldv_43742:
  descriptor___0.modname = "stmmac";
  descriptor___0.function = "dwmac100_dump_dma_regs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.o.c.prepared";
  descriptor___0.format = "\t CSR%d (offset 0x%x): 0x%08x\n";
  descriptor___0.lineno = 242U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = readl((void const volatile *)(ioaddr + ((unsigned long )(i * 4) + 4096UL)));
    __dynamic_pr_debug(& descriptor___0, "\t CSR%d (offset 0x%x): 0x%08x\n", i, (i + 1024) * 4,
                       tmp___0);
  } else {
  }
  i = i + 1;
  ldv_43743: ;
  if (i <= 8) {
    goto ldv_43742;
  } else {
  }
  descriptor___1.modname = "stmmac";
  descriptor___1.function = "dwmac100_dump_dma_regs";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.o.c.prepared";
  descriptor___1.format = "\tCSR20 (0x%x): 0x%08x, CSR21 (0x%x): 0x%08x\n";
  descriptor___1.lineno = 246U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___2 = readl((void const volatile *)ioaddr + 4180U);
    tmp___3 = readl((void const volatile *)ioaddr + 4176U);
    __dynamic_pr_debug(& descriptor___1, "\tCSR20 (0x%x): 0x%08x, CSR21 (0x%x): 0x%08x\n",
                       4176, tmp___3, 4180, tmp___2);
  } else {
  }
  return;
}
}
static void dwmac100_dma_diagnostic_fr(void *data , struct stmmac_extra_stats *x ,
                                       void *ioaddr )
{
  struct net_device_stats *stats ;
  u32 csr8 ;
  unsigned int tmp ;
  unsigned int ove_cntr ;
  unsigned int miss_f ;
  long tmp___0 ;
  {
  stats = (struct net_device_stats *)data;
  tmp = readl((void const volatile *)ioaddr + 4128U);
  csr8 = tmp;
  tmp___0 = ldv__builtin_expect(csr8 != 0U, 0L);
  if (tmp___0 != 0L) {
    if ((csr8 & 268435456U) != 0U) {
      stats->rx_over_errors = stats->rx_over_errors + 2048UL;
      x->rx_overflow_cntr = x->rx_overflow_cntr + 2048UL;
    } else {
      ove_cntr = (csr8 & 268304384U) >> 17;
      stats->rx_over_errors = stats->rx_over_errors + (unsigned long )ove_cntr;
      x->rx_overflow_cntr = x->rx_overflow_cntr + (unsigned long )ove_cntr;
    }
    if ((csr8 & 65536U) != 0U) {
      stats->rx_missed_errors = stats->rx_missed_errors + 65535UL;
      x->rx_missed_cntr = x->rx_missed_cntr + 65535UL;
    } else {
      miss_f = csr8 & 65535U;
      stats->rx_missed_errors = stats->rx_missed_errors + (unsigned long )miss_f;
      x->rx_missed_cntr = x->rx_missed_cntr + (unsigned long )miss_f;
    }
  } else {
  }
  return;
}
}
struct stmmac_dma_ops const dwmac100_dma_ops =
     {& dwmac100_dma_init, & dwmac100_dump_dma_regs, & dwmac100_dma_operation_mode,
    & dwmac100_dma_diagnostic_fr, & dwmac_enable_dma_transmission, & dwmac_enable_dma_irq,
    & dwmac_disable_dma_irq, & dwmac_dma_start_tx, & dwmac_dma_stop_tx, & dwmac_dma_start_rx,
    & dwmac_dma_stop_rx, & dwmac_dma_interrupt, 0, 0};
extern int ldv_release_14(void) ;
int ldv_retval_28 ;
extern int ldv_setup_14(void) ;
void ldv_initialize_stmmac_dma_ops_14(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(704UL);
  dwmac100_dma_ops_group0 = (struct stmmac_extra_stats *)tmp;
  return;
}
}
void ldv_main_exported_14(void)
{
  void *ldvarg160 ;
  void *tmp ;
  void *ldvarg158 ;
  void *tmp___0 ;
  void *ldvarg148 ;
  void *tmp___1 ;
  void *ldvarg161 ;
  void *tmp___2 ;
  void *ldvarg162 ;
  void *tmp___3 ;
  void *ldvarg149 ;
  void *tmp___4 ;
  int ldvarg159 ;
  int tmp___5 ;
  void *ldvarg163 ;
  void *tmp___6 ;
  void *ldvarg150 ;
  void *tmp___7 ;
  u32 ldvarg152 ;
  u32 tmp___8 ;
  int ldvarg164 ;
  int tmp___9 ;
  void *ldvarg147 ;
  void *tmp___10 ;
  void *ldvarg167 ;
  void *tmp___11 ;
  int ldvarg155 ;
  int tmp___12 ;
  void *ldvarg166 ;
  void *tmp___13 ;
  int ldvarg156 ;
  int tmp___14 ;
  int ldvarg165 ;
  int tmp___15 ;
  int ldvarg153 ;
  int tmp___16 ;
  int ldvarg157 ;
  int tmp___17 ;
  void *ldvarg146 ;
  void *tmp___18 ;
  void *ldvarg151 ;
  void *tmp___19 ;
  u32 ldvarg154 ;
  u32 tmp___20 ;
  int tmp___21 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg160 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg158 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg148 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg161 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg162 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg149 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg159 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg163 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg150 = tmp___7;
  tmp___8 = __VERIFIER_nondet_u32();
  ldvarg152 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg164 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg147 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg167 = tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  ldvarg155 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg166 = tmp___13;
  tmp___14 = __VERIFIER_nondet_int();
  ldvarg156 = tmp___14;
  tmp___15 = __VERIFIER_nondet_int();
  ldvarg165 = tmp___15;
  tmp___16 = __VERIFIER_nondet_int();
  ldvarg153 = tmp___16;
  tmp___17 = __VERIFIER_nondet_int();
  ldvarg157 = tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg146 = tmp___18;
  tmp___19 = ldv_zalloc(1UL);
  ldvarg151 = tmp___19;
  tmp___20 = __VERIFIER_nondet_u32();
  ldvarg154 = tmp___20;
  tmp___21 = __VERIFIER_nondet_int();
  switch (tmp___21) {
  case 0: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_enable_dma_transmission(ldvarg167);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_enable_dma_transmission(ldvarg167);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_enable_dma_transmission(ldvarg167);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 1: ;
  if (ldv_state_variable_14 == 3) {
    dwmac100_dma_operation_mode(ldvarg166, ldvarg165, ldvarg164);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac100_dma_operation_mode(ldvarg166, ldvarg165, ldvarg164);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac100_dma_operation_mode(ldvarg166, ldvarg165, ldvarg164);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 2: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_dma_start_tx(ldvarg163);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_dma_start_tx(ldvarg163);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_dma_start_tx(ldvarg163);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 3: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_enable_dma_irq(ldvarg162);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_enable_dma_irq(ldvarg162);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_enable_dma_irq(ldvarg162);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 4: ;
  if (ldv_state_variable_14 == 3) {
    dwmac100_dump_dma_regs(ldvarg161);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac100_dump_dma_regs(ldvarg161);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac100_dump_dma_regs(ldvarg161);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 5: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_dma_stop_tx(ldvarg160);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_dma_stop_tx(ldvarg160);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_dma_stop_tx(ldvarg160);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 6: ;
  if (ldv_state_variable_14 == 2) {
    ldv_retval_28 = dwmac100_dma_init(ldvarg158, ldvarg155, ldvarg153, ldvarg157,
                                      ldvarg159, ldvarg152, ldvarg154, ldvarg156);
    if (ldv_retval_28 == 0) {
      ldv_state_variable_14 = 3;
    } else {
    }
  } else {
  }
  goto ldv_43790;
  case 7: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_dma_interrupt(ldvarg151, dwmac100_dma_ops_group0);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_dma_interrupt(ldvarg151, dwmac100_dma_ops_group0);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_dma_interrupt(ldvarg151, dwmac100_dma_ops_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 8: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_dma_stop_rx(ldvarg150);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_dma_stop_rx(ldvarg150);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_dma_stop_rx(ldvarg150);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 9: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_disable_dma_irq(ldvarg149);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_disable_dma_irq(ldvarg149);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_disable_dma_irq(ldvarg149);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 10: ;
  if (ldv_state_variable_14 == 3) {
    dwmac_dma_start_rx(ldvarg148);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac_dma_start_rx(ldvarg148);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac_dma_start_rx(ldvarg148);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 11: ;
  if (ldv_state_variable_14 == 3) {
    dwmac100_dma_diagnostic_fr(ldvarg147, dwmac100_dma_ops_group0, ldvarg146);
    ldv_state_variable_14 = 3;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    dwmac100_dma_diagnostic_fr(ldvarg147, dwmac100_dma_ops_group0, ldvarg146);
    ldv_state_variable_14 = 2;
  } else {
  }
  if (ldv_state_variable_14 == 1) {
    dwmac100_dma_diagnostic_fr(ldvarg147, dwmac100_dma_ops_group0, ldvarg146);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_43790;
  case 12: ;
  if (ldv_state_variable_14 == 3) {
    ldv_release_14();
    ldv_state_variable_14 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    ldv_release_14();
    ldv_state_variable_14 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_43790;
  case 13: ;
  if (ldv_state_variable_14 == 1) {
    ldv_setup_14();
    ldv_state_variable_14 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_43790;
  default:
  ldv_stop();
  }
  ldv_43790: ;
  return;
}
}
void *ldv_kmem_cache_alloc_458(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_464(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_466(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_468(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_469(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_470(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_471(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_472(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_473(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_474(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_500(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_508(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_516(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_510(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_506(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_514(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_515(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_511(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_512(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_513(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void ehn_desc_rx_set_on_ring(struct dma_desc *p , int end )
{
  {
  p->des01.erx.buffer2_size = 8191U;
  if (end != 0) {
    p->des01.erx.end_ring = 1U;
  } else {
  }
  return;
}
}
__inline static void ehn_desc_tx_set_on_ring(struct dma_desc *p , int end )
{
  {
  if (end != 0) {
    p->des01.etx.end_ring = 1U;
  } else {
  }
  return;
}
}
__inline static void enh_desc_end_tx_desc_on_ring(struct dma_desc *p , int ter )
{
  {
  p->des01.etx.end_ring = (unsigned char )ter;
  return;
}
}
__inline static void enh_set_tx_desc_len_on_ring(struct dma_desc *p , int len )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(len > 4096, 0L);
  if (tmp != 0L) {
    p->des01.etx.buffer1_size = 4096U;
    p->des01.etx.buffer2_size = (unsigned short )((unsigned int )((unsigned short )len) + 61440U);
  } else {
    p->des01.etx.buffer1_size = (unsigned short )len;
  }
  return;
}
}
__inline static void ehn_desc_rx_set_on_chain(struct dma_desc *p , int end )
{
  {
  p->des01.erx.second_address_chained = 1U;
  return;
}
}
__inline static void ehn_desc_tx_set_on_chain(struct dma_desc *p , int end )
{
  {
  p->des01.etx.second_address_chained = 1U;
  return;
}
}
__inline static void enh_set_tx_desc_len_on_chain(struct dma_desc *p , int len )
{
  {
  p->des01.etx.buffer1_size = (unsigned short )len;
  return;
}
}
static int enh_desc_get_tx_status(void *data , struct stmmac_extra_stats *x , struct dma_desc *p ,
                                  void *ioaddr )
{
  int ret ;
  struct net_device_stats *stats ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  ret = 0;
  stats = (struct net_device_stats *)data;
  tmp___9 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 1UL)) < 0,
                             0L);
  if (tmp___9 != 0L) {
    tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp != 0L) {
      x->tx_jabber = x->tx_jabber + 1UL;
    } else {
    }
    tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___0 != 0L) {
      x->tx_frame_flushed = x->tx_frame_flushed + 1UL;
      dwmac_dma_flush_tx_fifo(ioaddr);
    } else {
    }
    tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___1 != 0L) {
      x->tx_losscarrier = x->tx_losscarrier + 1UL;
      stats->tx_carrier_errors = stats->tx_carrier_errors + 1UL;
    } else {
    }
    tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___2 != 0L) {
      x->tx_carrier = x->tx_carrier + 1UL;
      stats->tx_carrier_errors = stats->tx_carrier_errors + 1UL;
    } else {
    }
    tmp___3 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___3 != 0L) {
      stats->collisions = stats->collisions + (unsigned long )p->des01.etx.collision_count;
    } else {
    }
    tmp___4 = ldv__builtin_expect((long )*((unsigned char *)p + 1UL) & 1L, 0L);
    if (tmp___4 != 0L) {
      stats->collisions = stats->collisions + (unsigned long )p->des01.etx.collision_count;
    } else {
    }
    tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___5 != 0L) {
      x->tx_deferred = x->tx_deferred + 1UL;
    } else {
    }
    tmp___6 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___6 != 0L) {
      dwmac_dma_flush_tx_fifo(ioaddr);
      x->tx_underflow = x->tx_underflow + 1UL;
    } else {
    }
    tmp___7 = ldv__builtin_expect((long )*((unsigned char *)p + 2UL) & 1L, 0L);
    if (tmp___7 != 0L) {
      x->tx_ip_header_error = x->tx_ip_header_error + 1UL;
    } else {
    }
    tmp___8 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___8 != 0L) {
      x->tx_payload_error = x->tx_payload_error + 1UL;
      dwmac_dma_flush_tx_fifo(ioaddr);
    } else {
    }
    ret = -1;
  } else {
  }
  tmp___10 = ldv__builtin_expect((long )*((unsigned char *)p + 0UL) & 1L, 0L);
  if (tmp___10 != 0L) {
    x->tx_deferred = x->tx_deferred + 1UL;
  } else {
  }
  if ((unsigned int )*((unsigned char *)p + 0UL) != 0U) {
    x->tx_vlan = x->tx_vlan + 1UL;
  } else {
  }
  return (ret);
}
}
static int enh_desc_get_tx_len(struct dma_desc *p )
{
  {
  return ((int )p->des01.etx.buffer1_size);
}
}
static int enh_desc_coe_rdes0(int ipc_err , int type , int payload_err )
{
  int ret ;
  u32 status ;
  {
  ret = 0;
  status = (u32 )(((type << 2) | (ipc_err << 1)) | payload_err) & 7U;
  if (status == 0U) {
    ret = 4;
  } else
  if (status == 4U) {
    ret = 0;
  } else
  if (status == 5U) {
    ret = 2;
  } else
  if (status == 6U) {
    ret = 2;
  } else
  if (status == 7U) {
    ret = 2;
  } else
  if (status == 1U) {
    ret = 1;
  } else
  if (status == 3U) {
    ret = 1;
  } else {
  }
  return (ret);
}
}
static void enh_desc_get_ext_status(void *data , struct stmmac_extra_stats *x , struct dma_extended_desc *p )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )*((unsigned char *)p + 0UL) & 1L, 0L);
  if (tmp != 0L) {
    if ((unsigned int )*((unsigned char *)p + 16UL) != 0U) {
      x->ip_hdr_err = x->ip_hdr_err + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 16UL) != 0U) {
      x->ip_payload_err = x->ip_payload_err + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 16UL) != 0U) {
      x->ip_csum_bypassed = x->ip_csum_bypassed + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 16UL) != 0U) {
      x->ipv4_pkt_rcvd = x->ipv4_pkt_rcvd + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 16UL) != 0U) {
      x->ipv6_pkt_rcvd = x->ipv6_pkt_rcvd + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 17UL) == 1U) {
      x->rx_msg_type_sync = x->rx_msg_type_sync + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 2U) {
      x->rx_msg_type_follow_up = x->rx_msg_type_follow_up + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 3U) {
      x->rx_msg_type_delay_req = x->rx_msg_type_delay_req + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 4U) {
      x->rx_msg_type_delay_resp = x->rx_msg_type_delay_resp + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 3U) {
      x->rx_msg_type_pdelay_req = x->rx_msg_type_pdelay_req + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 6U) {
      x->rx_msg_type_pdelay_resp = x->rx_msg_type_pdelay_resp + 1UL;
    } else
    if ((unsigned int )*((unsigned char *)p + 17UL) == 7U) {
      x->rx_msg_type_pdelay_follow_up = x->rx_msg_type_pdelay_follow_up + 1UL;
    } else {
      x->rx_msg_type_ext_no_ptp = x->rx_msg_type_ext_no_ptp + 1UL;
    }
    if ((unsigned int )*((unsigned char *)p + 17UL) != 0U) {
      x->ptp_frame_type = x->ptp_frame_type + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 17UL) != 0U) {
      x->ptp_ver = x->ptp_ver + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 17UL) != 0U) {
      x->timestamp_dropped = x->timestamp_dropped + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 18UL) != 0U) {
      x->av_pkt_rcvd = x->av_pkt_rcvd + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 18UL) != 0U) {
      x->av_tagged_pkt_rcvd = x->av_tagged_pkt_rcvd + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 18UL) != 0U) {
      x->vlan_tag_priority_val = x->vlan_tag_priority_val + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 19UL) != 0U) {
      x->l3_filter_match = x->l3_filter_match + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 19UL) != 0U) {
      x->l4_filter_match = x->l4_filter_match + 1UL;
    } else {
    }
    if ((unsigned int )*((unsigned char *)p + 19UL) != 0U) {
      x->l3_l4_filter_no_match = x->l3_l4_filter_no_match + 1UL;
    } else {
    }
  } else {
  }
  return;
}
}
static int enh_desc_get_rx_status(void *data , struct stmmac_extra_stats *x , struct dma_desc *p )
{
  int ret ;
  struct net_device_stats *stats ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  ret = 0;
  stats = (struct net_device_stats *)data;
  tmp___6 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 1UL)) < 0,
                             0L);
  if (tmp___6 != 0L) {
    tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp != 0L) {
      x->rx_desc = x->rx_desc + 1UL;
      stats->rx_length_errors = stats->rx_length_errors + 1UL;
    } else {
    }
    tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___0 != 0L) {
      x->rx_gmac_overflow = x->rx_gmac_overflow + 1UL;
    } else {
    }
    tmp___1 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 0UL)) < 0,
                               0L);
    if (tmp___1 != 0L) {
      printk("\v\tIPC Csum Error/Giant frame\n");
    } else {
    }
    tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___2 != 0L) {
      stats->collisions = stats->collisions + 1UL;
    } else {
    }
    tmp___3 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___3 != 0L) {
      x->rx_watchdog = x->rx_watchdog + 1UL;
    } else {
    }
    tmp___4 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___4 != 0L) {
      x->rx_mii = x->rx_mii + 1UL;
    } else {
    }
    tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___5 != 0L) {
      x->rx_crc = x->rx_crc + 1UL;
      stats->rx_crc_errors = stats->rx_crc_errors + 1UL;
    } else {
    }
    ret = 1;
  } else {
  }
  ret = enh_desc_coe_rdes0((int )p->des01.erx.ipc_csum_error, (int )p->des01.erx.frame_type,
                           (int )p->des01.erx.rx_mac_addr);
  tmp___7 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
  if (tmp___7 != 0L) {
    x->dribbling_bit = x->dribbling_bit + 1UL;
  } else {
  }
  tmp___8 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
  if (tmp___8 != 0L) {
    x->sa_rx_filter_fail = x->sa_rx_filter_fail + 1UL;
    ret = 1;
  } else {
  }
  tmp___9 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 3UL) != 0U, 0L);
  if (tmp___9 != 0L) {
    x->da_rx_filter_fail = x->da_rx_filter_fail + 1UL;
    ret = 1;
  } else {
  }
  tmp___10 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
  if (tmp___10 != 0L) {
    x->rx_length = x->rx_length + 1UL;
    ret = 1;
  } else {
  }
  if ((unsigned int )*((unsigned char *)p + 1UL) != 0U) {
    x->rx_vlan = x->rx_vlan + 1UL;
  } else {
  }
  return (ret);
}
}
static void enh_desc_init_rx_desc(struct dma_desc *p , int disable_rx_ic , int mode ,
                                  int end )
{
  {
  p->des01.erx.own = 1U;
  p->des01.erx.buffer1_size = 8191U;
  if (mode == 1) {
    ehn_desc_rx_set_on_chain(p, end);
  } else {
    ehn_desc_rx_set_on_ring(p, end);
  }
  if (disable_rx_ic != 0) {
    p->des01.erx.disable_ic = 1U;
  } else {
  }
  return;
}
}
static void enh_desc_init_tx_desc(struct dma_desc *p , int mode , int end )
{
  {
  p->des01.etx.own = 0U;
  if (mode == 1) {
    ehn_desc_tx_set_on_chain(p, end);
  } else {
    ehn_desc_tx_set_on_ring(p, end);
  }
  return;
}
}
static int enh_desc_get_tx_owner(struct dma_desc *p )
{
  {
  return ((int )p->des01.etx.own);
}
}
static int enh_desc_get_rx_owner(struct dma_desc *p )
{
  {
  return ((int )p->des01.erx.own);
}
}
static void enh_desc_set_tx_owner(struct dma_desc *p )
{
  {
  p->des01.etx.own = 1U;
  return;
}
}
static void enh_desc_set_rx_owner(struct dma_desc *p )
{
  {
  p->des01.erx.own = 1U;
  return;
}
}
static int enh_desc_get_tx_ls(struct dma_desc *p )
{
  {
  return ((int )p->des01.etx.last_segment);
}
}
static void enh_desc_release_tx_desc(struct dma_desc *p , int mode )
{
  int ter ;
  {
  ter = (int )p->des01.etx.end_ring;
  memset((void *)p, 0, 8UL);
  if (mode == 1) {
    ehn_desc_tx_set_on_chain(p, ter);
  } else {
    enh_desc_end_tx_desc_on_ring(p, ter);
  }
  return;
}
}
static void enh_desc_prepare_tx_desc(struct dma_desc *p , int is_fs , int len , int csum_flag ,
                                     int mode )
{
  long tmp ;
  {
  p->des01.etx.first_segment = (unsigned char )is_fs;
  if (mode == 1) {
    enh_set_tx_desc_len_on_chain(p, len);
  } else {
    enh_set_tx_desc_len_on_ring(p, len);
  }
  tmp = ldv__builtin_expect(csum_flag != 0, 1L);
  if (tmp != 0L) {
    p->des01.etx.checksum_insertion = 3U;
  } else {
  }
  return;
}
}
static void enh_desc_clear_tx_ic(struct dma_desc *p )
{
  {
  p->des01.etx.interrupt = 0U;
  return;
}
}
static void enh_desc_close_tx_desc(struct dma_desc *p )
{
  {
  p->des01.etx.last_segment = 1U;
  p->des01.etx.interrupt = 1U;
  return;
}
}
static int enh_desc_get_rx_frame_len(struct dma_desc *p , int rx_coe_type )
{
  {
  if (rx_coe_type == 1) {
    return ((int )p->des01.erx.frame_length + -2);
  } else {
    return ((int )p->des01.erx.frame_length);
  }
}
}
static void enh_desc_enable_tx_timestamp(struct dma_desc *p )
{
  {
  p->des01.etx.time_stamp_enable = 1U;
  return;
}
}
static int enh_desc_get_tx_timestamp_status(struct dma_desc *p )
{
  {
  return ((int )p->des01.etx.time_stamp_status);
}
}
static u64 enh_desc_get_timestamp(void *desc , u32 ats )
{
  u64 ns ;
  struct dma_extended_desc *p ;
  struct dma_desc *p___0 ;
  {
  if (ats != 0U) {
    p = (struct dma_extended_desc *)desc;
    ns = (u64 )p->des6;
    ns = (unsigned long long )p->des7 * 1000000000ULL + ns;
  } else {
    p___0 = (struct dma_desc *)desc;
    ns = (u64 )p___0->des2;
    ns = (unsigned long long )p___0->des3 * 1000000000ULL + ns;
  }
  return (ns);
}
}
static int enh_desc_get_rx_timestamp_status(void *desc , u32 ats )
{
  struct dma_extended_desc *p ;
  struct dma_desc *p___0 ;
  {
  if (ats != 0U) {
    p = (struct dma_extended_desc *)desc;
    return ((int )p->basic.des01.erx.ipc_csum_error);
  } else {
    p___0 = (struct dma_desc *)desc;
    if (p___0->des2 == 4294967295U && p___0->des3 == 4294967295U) {
      return (0);
    } else {
      return (1);
    }
  }
}
}
struct stmmac_desc_ops const enh_desc_ops =
     {& enh_desc_init_rx_desc, & enh_desc_init_tx_desc, & enh_desc_prepare_tx_desc,
    & enh_desc_set_tx_owner, & enh_desc_get_tx_owner, & enh_desc_close_tx_desc, & enh_desc_release_tx_desc,
    & enh_desc_clear_tx_ic, & enh_desc_get_tx_ls, & enh_desc_get_tx_status, & enh_desc_get_tx_len,
    & enh_desc_get_rx_owner, & enh_desc_set_rx_owner, & enh_desc_get_rx_frame_len,
    & enh_desc_get_rx_status, & enh_desc_get_ext_status, & enh_desc_enable_tx_timestamp,
    & enh_desc_get_tx_timestamp_status, & enh_desc_get_timestamp, & enh_desc_get_rx_timestamp_status};
void ldv_initialize_stmmac_desc_ops_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(16UL);
  enh_desc_ops_group0 = (struct dma_desc *)tmp;
  tmp___0 = ldv_zalloc(704UL);
  enh_desc_ops_group1 = (struct stmmac_extra_stats *)tmp___0;
  return;
}
}
void ldv_main_exported_13(void)
{
  int ldvarg107 ;
  int tmp ;
  int ldvarg110 ;
  int tmp___0 ;
  int ldvarg108 ;
  int tmp___1 ;
  int ldvarg105 ;
  int tmp___2 ;
  void *ldvarg116 ;
  void *tmp___3 ;
  u32 ldvarg103 ;
  u32 tmp___4 ;
  int ldvarg99 ;
  int tmp___5 ;
  void *ldvarg114 ;
  void *tmp___6 ;
  u32 ldvarg113 ;
  u32 tmp___7 ;
  void *ldvarg112 ;
  void *tmp___8 ;
  int ldvarg102 ;
  int tmp___9 ;
  int ldvarg97 ;
  int tmp___10 ;
  int ldvarg98 ;
  int tmp___11 ;
  int ldvarg111 ;
  int tmp___12 ;
  int ldvarg109 ;
  int tmp___13 ;
  void *ldvarg115 ;
  void *tmp___14 ;
  struct dma_extended_desc *ldvarg100 ;
  void *tmp___15 ;
  void *ldvarg101 ;
  void *tmp___16 ;
  int ldvarg106 ;
  int tmp___17 ;
  void *ldvarg104 ;
  void *tmp___18 ;
  int tmp___19 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg107 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg110 = tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg108 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg105 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg116 = tmp___3;
  tmp___4 = __VERIFIER_nondet_u32();
  ldvarg103 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg99 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg114 = tmp___6;
  tmp___7 = __VERIFIER_nondet_u32();
  ldvarg113 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg112 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg102 = tmp___9;
  tmp___10 = __VERIFIER_nondet_int();
  ldvarg97 = tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg98 = tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  ldvarg111 = tmp___12;
  tmp___13 = __VERIFIER_nondet_int();
  ldvarg109 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg115 = tmp___14;
  tmp___15 = ldv_zalloc(32UL);
  ldvarg100 = (struct dma_extended_desc *)tmp___15;
  tmp___16 = ldv_zalloc(1UL);
  ldvarg101 = tmp___16;
  tmp___17 = __VERIFIER_nondet_int();
  ldvarg106 = tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg104 = tmp___18;
  tmp___19 = __VERIFIER_nondet_int();
  switch (tmp___19) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_enable_tx_timestamp(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_set_tx_owner(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_tx_status(ldvarg116, enh_desc_ops_group1, enh_desc_ops_group0, ldvarg115);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_rx_timestamp_status(ldvarg114, ldvarg113);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 4: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_rx_status(ldvarg112, enh_desc_ops_group1, enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 5: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_prepare_tx_desc(enh_desc_ops_group0, ldvarg109, ldvarg108, ldvarg110,
                             ldvarg111);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 6: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_tx_timestamp_status(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 7: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_init_tx_desc(enh_desc_ops_group0, ldvarg107, ldvarg106);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 8: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_tx_owner(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 9: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_release_tx_desc(enh_desc_ops_group0, ldvarg105);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 10: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_clear_tx_ic(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 11: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_rx_owner(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 12: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_timestamp(ldvarg104, ldvarg103);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 13: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_tx_len(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 14: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_tx_ls(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 15: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_rx_frame_len(enh_desc_ops_group0, ldvarg102);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 16: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_get_ext_status(ldvarg101, enh_desc_ops_group1, ldvarg100);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 17: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_init_rx_desc(enh_desc_ops_group0, ldvarg98, ldvarg97, ldvarg99);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 18: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_close_tx_desc(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  case 19: ;
  if (ldv_state_variable_13 == 1) {
    enh_desc_set_rx_owner(enh_desc_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_44105;
  default:
  ldv_stop();
  }
  ldv_44105: ;
  return;
}
}
void *ldv_kmem_cache_alloc_500(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_506(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_508(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_510(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_511(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_512(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_513(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_514(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_515(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_516(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_542(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_550(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_558(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_552(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_548(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_556(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_557(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_553(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_554(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_555(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void ndesc_rx_set_on_ring(struct dma_desc *p , int end )
{
  {
  p->des01.rx.buffer2_size = 2047U;
  if (end != 0) {
    p->des01.rx.end_ring = 1U;
  } else {
  }
  return;
}
}
__inline static void ndesc_tx_set_on_ring(struct dma_desc *p , int end )
{
  {
  if (end != 0) {
    p->des01.tx.end_ring = 1U;
  } else {
  }
  return;
}
}
__inline static void ndesc_end_tx_desc_on_ring(struct dma_desc *p , int ter )
{
  {
  p->des01.tx.end_ring = (unsigned char )ter;
  return;
}
}
__inline static void norm_set_tx_desc_len_on_ring(struct dma_desc *p , int len )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(len > 2048, 0L);
  if (tmp != 0L) {
    p->des01.etx.buffer1_size = 2047U;
    p->des01.etx.buffer2_size = (unsigned short )((int )((unsigned short )len) - (int )p->des01.etx.buffer1_size);
  } else {
    p->des01.tx.buffer1_size = (unsigned short )len;
  }
  return;
}
}
__inline static void ndesc_rx_set_on_chain(struct dma_desc *p , int end )
{
  {
  p->des01.rx.second_address_chained = 1U;
  return;
}
}
__inline static void ndesc_tx_set_on_chain(struct dma_desc *p , int ring_size )
{
  {
  p->des01.tx.second_address_chained = 1U;
  return;
}
}
__inline static void norm_set_tx_desc_len_on_chain(struct dma_desc *p , int len )
{
  {
  p->des01.tx.buffer1_size = (unsigned short )len;
  return;
}
}
static int ndesc_get_tx_status(void *data , struct stmmac_extra_stats *x , struct dma_desc *p ,
                               void *ioaddr )
{
  int ret ;
  struct net_device_stats *stats ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  ret = 0;
  stats = (struct net_device_stats *)data;
  tmp___6 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 1UL)) < 0,
                             0L);
  if (tmp___6 != 0L) {
    tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp != 0L) {
      x->tx_underflow = x->tx_underflow + 1UL;
      stats->tx_fifo_errors = stats->tx_fifo_errors + 1UL;
    } else {
    }
    tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___0 != 0L) {
      x->tx_carrier = x->tx_carrier + 1UL;
      stats->tx_carrier_errors = stats->tx_carrier_errors + 1UL;
    } else {
    }
    tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___1 != 0L) {
      x->tx_losscarrier = x->tx_losscarrier + 1UL;
      stats->tx_carrier_errors = stats->tx_carrier_errors + 1UL;
    } else {
    }
    tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___2 != 0L) {
      tmp___4 = 1;
    } else {
      tmp___3 = ldv__builtin_expect((long )*((unsigned char *)p + 1UL) & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___4 = 1;
      } else {
        tmp___4 = 0;
      }
    }
    if (tmp___4 != 0) {
      stats->collisions = stats->collisions + (unsigned long )p->des01.tx.collision_count;
    } else {
      tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U,
                                 0L);
      if (tmp___5 != 0L) {
        stats->collisions = stats->collisions + (unsigned long )p->des01.tx.collision_count;
      } else {
      }
    }
    ret = -1;
  } else {
  }
  if ((unsigned int )*((unsigned char *)p + 0UL) != 0U) {
    x->tx_vlan = x->tx_vlan + 1UL;
  } else {
  }
  tmp___7 = ldv__builtin_expect((long )*((unsigned char *)p + 0UL) & 1L, 0L);
  if (tmp___7 != 0L) {
    x->tx_deferred = x->tx_deferred + 1UL;
  } else {
  }
  return (ret);
}
}
static int ndesc_get_tx_len(struct dma_desc *p )
{
  {
  return ((int )p->des01.tx.buffer1_size);
}
}
static int ndesc_get_rx_status(void *data , struct stmmac_extra_stats *x , struct dma_desc *p )
{
  int ret ;
  struct net_device_stats *stats ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  ret = 0;
  stats = (struct net_device_stats *)data;
  tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) == 0U, 0L);
  if (tmp != 0L) {
    printk("\f%s: Oversized frame spanned multiple buffers\n", "ndesc_get_rx_status");
    stats->rx_length_errors = stats->rx_length_errors + 1UL;
    return (1);
  } else {
  }
  tmp___6 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 1UL)) < 0,
                             0L);
  if (tmp___6 != 0L) {
    tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___0 != 0L) {
      x->rx_desc = x->rx_desc + 1UL;
    } else {
    }
    tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___1 != 0L) {
      x->sa_filter_fail = x->sa_filter_fail + 1UL;
    } else {
    }
    tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
    if (tmp___2 != 0L) {
      x->overflow_error = x->overflow_error + 1UL;
    } else {
    }
    tmp___3 = ldv__builtin_expect((int )((signed char )*((unsigned char *)p + 0UL)) < 0,
                               0L);
    if (tmp___3 != 0L) {
      x->ipc_csum_error = x->ipc_csum_error + 1UL;
    } else {
    }
    tmp___4 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___4 != 0L) {
      x->rx_collision = x->rx_collision + 1UL;
      stats->collisions = stats->collisions + 1UL;
    } else {
    }
    tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
    if (tmp___5 != 0L) {
      x->rx_crc = x->rx_crc + 1UL;
      stats->rx_crc_errors = stats->rx_crc_errors + 1UL;
    } else {
    }
    ret = 1;
  } else {
  }
  tmp___7 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
  if (tmp___7 != 0L) {
    x->dribbling_bit = x->dribbling_bit + 1UL;
  } else {
  }
  tmp___8 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 1UL) != 0U, 0L);
  if (tmp___8 != 0L) {
    x->rx_length = x->rx_length + 1UL;
    ret = 1;
  } else {
  }
  tmp___9 = ldv__builtin_expect((unsigned int )*((unsigned char *)p + 0UL) != 0U, 0L);
  if (tmp___9 != 0L) {
    x->rx_mii = x->rx_mii + 1UL;
    ret = 1;
  } else {
  }
  if ((unsigned int )*((unsigned char *)p + 1UL) != 0U) {
    x->vlan_tag = x->vlan_tag + 1UL;
  } else {
  }
  return (ret);
}
}
static void ndesc_init_rx_desc(struct dma_desc *p , int disable_rx_ic , int mode ,
                               int end )
{
  {
  p->des01.rx.own = 1U;
  p->des01.rx.buffer1_size = 2047U;
  if (mode == 1) {
    ndesc_rx_set_on_chain(p, end);
  } else {
    ndesc_rx_set_on_ring(p, end);
  }
  if (disable_rx_ic != 0) {
    p->des01.rx.disable_ic = 1U;
  } else {
  }
  return;
}
}
static void ndesc_init_tx_desc(struct dma_desc *p , int mode , int end )
{
  {
  p->des01.tx.own = 0U;
  if (mode == 1) {
    ndesc_tx_set_on_chain(p, end);
  } else {
    ndesc_tx_set_on_ring(p, end);
  }
  return;
}
}
static int ndesc_get_tx_owner(struct dma_desc *p )
{
  {
  return ((int )p->des01.tx.own);
}
}
static int ndesc_get_rx_owner(struct dma_desc *p )
{
  {
  return ((int )p->des01.rx.own);
}
}
static void ndesc_set_tx_owner(struct dma_desc *p )
{
  {
  p->des01.tx.own = 1U;
  return;
}
}
static void ndesc_set_rx_owner(struct dma_desc *p )
{
  {
  p->des01.rx.own = 1U;
  return;
}
}
static int ndesc_get_tx_ls(struct dma_desc *p )
{
  {
  return ((int )p->des01.tx.last_segment);
}
}
static void ndesc_release_tx_desc(struct dma_desc *p , int mode )
{
  int ter ;
  {
  ter = (int )p->des01.tx.end_ring;
  memset((void *)p, 0, 8UL);
  if (mode == 1) {
    ndesc_tx_set_on_chain(p, ter);
  } else {
    ndesc_end_tx_desc_on_ring(p, ter);
  }
  return;
}
}
static void ndesc_prepare_tx_desc(struct dma_desc *p , int is_fs , int len , int csum_flag ,
                                  int mode )
{
  long tmp ;
  {
  p->des01.tx.first_segment = (unsigned char )is_fs;
  if (mode == 1) {
    norm_set_tx_desc_len_on_chain(p, len);
  } else {
    norm_set_tx_desc_len_on_ring(p, len);
  }
  tmp = ldv__builtin_expect(csum_flag != 0, 1L);
  if (tmp != 0L) {
    p->des01.tx.checksum_insertion = 3U;
  } else {
  }
  return;
}
}
static void ndesc_clear_tx_ic(struct dma_desc *p )
{
  {
  p->des01.tx.interrupt = 0U;
  return;
}
}
static void ndesc_close_tx_desc(struct dma_desc *p )
{
  {
  p->des01.tx.last_segment = 1U;
  p->des01.tx.interrupt = 1U;
  return;
}
}
static int ndesc_get_rx_frame_len(struct dma_desc *p , int rx_coe_type )
{
  {
  if (rx_coe_type == 1) {
    return ((int )p->des01.rx.frame_length + -2);
  } else {
    return ((int )p->des01.rx.frame_length);
  }
}
}
static void ndesc_enable_tx_timestamp(struct dma_desc *p )
{
  {
  p->des01.tx.time_stamp_enable = 1U;
  return;
}
}
static int ndesc_get_tx_timestamp_status(struct dma_desc *p )
{
  {
  return ((int )p->des01.tx.time_stamp_status);
}
}
static u64 ndesc_get_timestamp(void *desc , u32 ats )
{
  struct dma_desc *p ;
  u64 ns ;
  {
  p = (struct dma_desc *)desc;
  ns = (u64 )p->des2;
  ns = (unsigned long long )p->des3 * 1000000000ULL + ns;
  return (ns);
}
}
static int ndesc_get_rx_timestamp_status(void *desc , u32 ats )
{
  struct dma_desc *p ;
  {
  p = (struct dma_desc *)desc;
  if (p->des2 == 4294967295U && p->des3 == 4294967295U) {
    return (0);
  } else {
    return (1);
  }
}
}
struct stmmac_desc_ops const ndesc_ops =
     {& ndesc_init_rx_desc, & ndesc_init_tx_desc, & ndesc_prepare_tx_desc, & ndesc_set_tx_owner,
    & ndesc_get_tx_owner, & ndesc_close_tx_desc, & ndesc_release_tx_desc, & ndesc_clear_tx_ic,
    & ndesc_get_tx_ls, & ndesc_get_tx_status, & ndesc_get_tx_len, & ndesc_get_rx_owner,
    & ndesc_set_rx_owner, & ndesc_get_rx_frame_len, & ndesc_get_rx_status, 0, & ndesc_enable_tx_timestamp,
    & ndesc_get_tx_timestamp_status, & ndesc_get_timestamp, & ndesc_get_rx_timestamp_status};
void ldv_initialize_stmmac_desc_ops_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(16UL);
  ndesc_ops_group0 = (struct dma_desc *)tmp;
  tmp___0 = ldv_zalloc(704UL);
  ndesc_ops_group1 = (struct stmmac_extra_stats *)tmp___0;
  return;
}
}
void ldv_main_exported_12(void)
{
  int ldvarg130 ;
  int tmp ;
  int ldvarg129 ;
  int tmp___0 ;
  u32 ldvarg132 ;
  u32 tmp___1 ;
  void *ldvarg133 ;
  void *tmp___2 ;
  int ldvarg124 ;
  int tmp___3 ;
  int ldvarg127 ;
  int tmp___4 ;
  int ldvarg125 ;
  int tmp___5 ;
  int ldvarg119 ;
  int tmp___6 ;
  int ldvarg120 ;
  int tmp___7 ;
  void *ldvarg135 ;
  void *tmp___8 ;
  void *ldvarg123 ;
  void *tmp___9 ;
  int ldvarg118 ;
  int tmp___10 ;
  int ldvarg126 ;
  int tmp___11 ;
  int ldvarg128 ;
  int tmp___12 ;
  u32 ldvarg122 ;
  u32 tmp___13 ;
  void *ldvarg134 ;
  void *tmp___14 ;
  void *ldvarg131 ;
  void *tmp___15 ;
  int ldvarg121 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg130 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg129 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg132 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg133 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  ldvarg124 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg127 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg125 = tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  ldvarg119 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg120 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg135 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg123 = tmp___9;
  tmp___10 = __VERIFIER_nondet_int();
  ldvarg118 = tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg126 = tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  ldvarg128 = tmp___12;
  tmp___13 = __VERIFIER_nondet_u32();
  ldvarg122 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg134 = tmp___14;
  tmp___15 = ldv_zalloc(1UL);
  ldvarg131 = tmp___15;
  tmp___16 = __VERIFIER_nondet_int();
  ldvarg121 = tmp___16;
  tmp___17 = __VERIFIER_nondet_int();
  switch (tmp___17) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_set_tx_owner(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_enable_tx_timestamp(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_tx_status(ldvarg135, ndesc_ops_group1, ndesc_ops_group0, ldvarg134);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 3: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_rx_timestamp_status(ldvarg133, ldvarg132);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 4: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_rx_status(ldvarg131, ndesc_ops_group1, ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 5: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_prepare_tx_desc(ndesc_ops_group0, ldvarg128, ldvarg127, ldvarg129, ldvarg130);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 6: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_tx_timestamp_status(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 7: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_init_tx_desc(ndesc_ops_group0, ldvarg126, ldvarg125);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 8: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_tx_owner(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 9: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_release_tx_desc(ndesc_ops_group0, ldvarg124);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 10: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_clear_tx_ic(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 11: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_rx_owner(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 12: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_timestamp(ldvarg123, ldvarg122);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 13: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_tx_len(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 14: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_tx_ls(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 15: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_get_rx_frame_len(ndesc_ops_group0, ldvarg121);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 16: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_init_rx_desc(ndesc_ops_group0, ldvarg119, ldvarg118, ldvarg120);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 17: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_close_tx_desc(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  case 18: ;
  if (ldv_state_variable_12 == 1) {
    ndesc_set_rx_owner(ndesc_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_44090;
  default:
  ldv_stop();
  }
  ldv_44090: ;
  return;
}
}
void *ldv_kmem_cache_alloc_542(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_548(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_550(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_552(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_553(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_554(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_555(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_556(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_557(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_558(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_584(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void dwmac_mmc_ctrl(void *ioaddr , unsigned int mode )
{
  u32 value ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = readl((void const volatile *)ioaddr + 256U);
  value = tmp;
  value = (mode & 63U) | value;
  writel(value, (void volatile *)ioaddr + 256U);
  descriptor.modname = "stmmac";
  descriptor.function = "dwmac_mmc_ctrl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/mmc_core.o.c.prepared";
  descriptor.format = "stmmac: MMC ctrl register (offset 0x%x): 0x%08x\n";
  descriptor.lineno = 289U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "stmmac: MMC ctrl register (offset 0x%x): 0x%08x\n",
                       256, value);
  } else {
  }
  return;
}
}
void dwmac_mmc_intr_all_mask(void *ioaddr )
{
  {
  writel(4294967295U, (void volatile *)ioaddr + 268U);
  writel(4294967295U, (void volatile *)ioaddr + 272U);
  writel(4294967295U, (void volatile *)ioaddr + 512U);
  return;
}
}
void dwmac_mmc_read(void *ioaddr , struct stmmac_counters *mmc )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  unsigned int tmp___22 ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  unsigned int tmp___25 ;
  unsigned int tmp___26 ;
  unsigned int tmp___27 ;
  unsigned int tmp___28 ;
  unsigned int tmp___29 ;
  unsigned int tmp___30 ;
  unsigned int tmp___31 ;
  unsigned int tmp___32 ;
  unsigned int tmp___33 ;
  unsigned int tmp___34 ;
  unsigned int tmp___35 ;
  unsigned int tmp___36 ;
  unsigned int tmp___37 ;
  unsigned int tmp___38 ;
  unsigned int tmp___39 ;
  unsigned int tmp___40 ;
  unsigned int tmp___41 ;
  unsigned int tmp___42 ;
  unsigned int tmp___43 ;
  unsigned int tmp___44 ;
  unsigned int tmp___45 ;
  unsigned int tmp___46 ;
  unsigned int tmp___47 ;
  unsigned int tmp___48 ;
  unsigned int tmp___49 ;
  unsigned int tmp___50 ;
  unsigned int tmp___51 ;
  unsigned int tmp___52 ;
  unsigned int tmp___53 ;
  unsigned int tmp___54 ;
  unsigned int tmp___55 ;
  unsigned int tmp___56 ;
  unsigned int tmp___57 ;
  unsigned int tmp___58 ;
  unsigned int tmp___59 ;
  unsigned int tmp___60 ;
  unsigned int tmp___61 ;
  unsigned int tmp___62 ;
  unsigned int tmp___63 ;
  unsigned int tmp___64 ;
  unsigned int tmp___65 ;
  unsigned int tmp___66 ;
  unsigned int tmp___67 ;
  unsigned int tmp___68 ;
  unsigned int tmp___69 ;
  unsigned int tmp___70 ;
  unsigned int tmp___71 ;
  unsigned int tmp___72 ;
  unsigned int tmp___73 ;
  unsigned int tmp___74 ;
  unsigned int tmp___75 ;
  unsigned int tmp___76 ;
  unsigned int tmp___77 ;
  {
  tmp = readl((void const volatile *)ioaddr + 276U);
  mmc->mmc_tx_octetcount_gb = mmc->mmc_tx_octetcount_gb + tmp;
  tmp___0 = readl((void const volatile *)ioaddr + 280U);
  mmc->mmc_tx_framecount_gb = mmc->mmc_tx_framecount_gb + tmp___0;
  tmp___1 = readl((void const volatile *)ioaddr + 284U);
  mmc->mmc_tx_broadcastframe_g = mmc->mmc_tx_broadcastframe_g + tmp___1;
  tmp___2 = readl((void const volatile *)ioaddr + 288U);
  mmc->mmc_tx_multicastframe_g = mmc->mmc_tx_multicastframe_g + tmp___2;
  tmp___3 = readl((void const volatile *)ioaddr + 292U);
  mmc->mmc_tx_64_octets_gb = mmc->mmc_tx_64_octets_gb + tmp___3;
  tmp___4 = readl((void const volatile *)ioaddr + 296U);
  mmc->mmc_tx_65_to_127_octets_gb = mmc->mmc_tx_65_to_127_octets_gb + tmp___4;
  tmp___5 = readl((void const volatile *)ioaddr + 300U);
  mmc->mmc_tx_128_to_255_octets_gb = mmc->mmc_tx_128_to_255_octets_gb + tmp___5;
  tmp___6 = readl((void const volatile *)ioaddr + 304U);
  mmc->mmc_tx_256_to_511_octets_gb = mmc->mmc_tx_256_to_511_octets_gb + tmp___6;
  tmp___7 = readl((void const volatile *)ioaddr + 308U);
  mmc->mmc_tx_512_to_1023_octets_gb = mmc->mmc_tx_512_to_1023_octets_gb + tmp___7;
  tmp___8 = readl((void const volatile *)ioaddr + 312U);
  mmc->mmc_tx_1024_to_max_octets_gb = mmc->mmc_tx_1024_to_max_octets_gb + tmp___8;
  tmp___9 = readl((void const volatile *)ioaddr + 316U);
  mmc->mmc_tx_unicast_gb = mmc->mmc_tx_unicast_gb + tmp___9;
  tmp___10 = readl((void const volatile *)ioaddr + 320U);
  mmc->mmc_tx_multicast_gb = mmc->mmc_tx_multicast_gb + tmp___10;
  tmp___11 = readl((void const volatile *)ioaddr + 324U);
  mmc->mmc_tx_broadcast_gb = mmc->mmc_tx_broadcast_gb + tmp___11;
  tmp___12 = readl((void const volatile *)ioaddr + 328U);
  mmc->mmc_tx_underflow_error = mmc->mmc_tx_underflow_error + tmp___12;
  tmp___13 = readl((void const volatile *)ioaddr + 332U);
  mmc->mmc_tx_singlecol_g = mmc->mmc_tx_singlecol_g + tmp___13;
  tmp___14 = readl((void const volatile *)ioaddr + 336U);
  mmc->mmc_tx_multicol_g = mmc->mmc_tx_multicol_g + tmp___14;
  tmp___15 = readl((void const volatile *)ioaddr + 340U);
  mmc->mmc_tx_deferred = mmc->mmc_tx_deferred + tmp___15;
  tmp___16 = readl((void const volatile *)ioaddr + 344U);
  mmc->mmc_tx_latecol = mmc->mmc_tx_latecol + tmp___16;
  tmp___17 = readl((void const volatile *)ioaddr + 348U);
  mmc->mmc_tx_exesscol = mmc->mmc_tx_exesscol + tmp___17;
  tmp___18 = readl((void const volatile *)ioaddr + 352U);
  mmc->mmc_tx_carrier_error = mmc->mmc_tx_carrier_error + tmp___18;
  tmp___19 = readl((void const volatile *)ioaddr + 356U);
  mmc->mmc_tx_octetcount_g = mmc->mmc_tx_octetcount_g + tmp___19;
  tmp___20 = readl((void const volatile *)ioaddr + 360U);
  mmc->mmc_tx_framecount_g = mmc->mmc_tx_framecount_g + tmp___20;
  tmp___21 = readl((void const volatile *)ioaddr + 364U);
  mmc->mmc_tx_excessdef = mmc->mmc_tx_excessdef + tmp___21;
  tmp___22 = readl((void const volatile *)ioaddr + 368U);
  mmc->mmc_tx_pause_frame = mmc->mmc_tx_pause_frame + tmp___22;
  tmp___23 = readl((void const volatile *)ioaddr + 372U);
  mmc->mmc_tx_vlan_frame_g = mmc->mmc_tx_vlan_frame_g + tmp___23;
  tmp___24 = readl((void const volatile *)ioaddr + 384U);
  mmc->mmc_rx_framecount_gb = mmc->mmc_rx_framecount_gb + tmp___24;
  tmp___25 = readl((void const volatile *)ioaddr + 388U);
  mmc->mmc_rx_octetcount_gb = mmc->mmc_rx_octetcount_gb + tmp___25;
  tmp___26 = readl((void const volatile *)ioaddr + 392U);
  mmc->mmc_rx_octetcount_g = mmc->mmc_rx_octetcount_g + tmp___26;
  tmp___27 = readl((void const volatile *)ioaddr + 396U);
  mmc->mmc_rx_broadcastframe_g = mmc->mmc_rx_broadcastframe_g + tmp___27;
  tmp___28 = readl((void const volatile *)ioaddr + 400U);
  mmc->mmc_rx_multicastframe_g = mmc->mmc_rx_multicastframe_g + tmp___28;
  tmp___29 = readl((void const volatile *)ioaddr + 404U);
  mmc->mmc_rx_crc_errror = mmc->mmc_rx_crc_errror + tmp___29;
  tmp___30 = readl((void const volatile *)ioaddr + 408U);
  mmc->mmc_rx_align_error = mmc->mmc_rx_align_error + tmp___30;
  tmp___31 = readl((void const volatile *)ioaddr + 412U);
  mmc->mmc_rx_run_error = mmc->mmc_rx_run_error + tmp___31;
  tmp___32 = readl((void const volatile *)ioaddr + 416U);
  mmc->mmc_rx_jabber_error = mmc->mmc_rx_jabber_error + tmp___32;
  tmp___33 = readl((void const volatile *)ioaddr + 420U);
  mmc->mmc_rx_undersize_g = mmc->mmc_rx_undersize_g + tmp___33;
  tmp___34 = readl((void const volatile *)ioaddr + 424U);
  mmc->mmc_rx_oversize_g = mmc->mmc_rx_oversize_g + tmp___34;
  tmp___35 = readl((void const volatile *)ioaddr + 428U);
  mmc->mmc_rx_64_octets_gb = mmc->mmc_rx_64_octets_gb + tmp___35;
  tmp___36 = readl((void const volatile *)ioaddr + 432U);
  mmc->mmc_rx_65_to_127_octets_gb = mmc->mmc_rx_65_to_127_octets_gb + tmp___36;
  tmp___37 = readl((void const volatile *)ioaddr + 436U);
  mmc->mmc_rx_128_to_255_octets_gb = mmc->mmc_rx_128_to_255_octets_gb + tmp___37;
  tmp___38 = readl((void const volatile *)ioaddr + 440U);
  mmc->mmc_rx_256_to_511_octets_gb = mmc->mmc_rx_256_to_511_octets_gb + tmp___38;
  tmp___39 = readl((void const volatile *)ioaddr + 444U);
  mmc->mmc_rx_512_to_1023_octets_gb = mmc->mmc_rx_512_to_1023_octets_gb + tmp___39;
  tmp___40 = readl((void const volatile *)ioaddr + 448U);
  mmc->mmc_rx_1024_to_max_octets_gb = mmc->mmc_rx_1024_to_max_octets_gb + tmp___40;
  tmp___41 = readl((void const volatile *)ioaddr + 452U);
  mmc->mmc_rx_unicast_g = mmc->mmc_rx_unicast_g + tmp___41;
  tmp___42 = readl((void const volatile *)ioaddr + 456U);
  mmc->mmc_rx_length_error = mmc->mmc_rx_length_error + tmp___42;
  tmp___43 = readl((void const volatile *)ioaddr + 460U);
  mmc->mmc_rx_autofrangetype = mmc->mmc_rx_autofrangetype + tmp___43;
  tmp___44 = readl((void const volatile *)ioaddr + 464U);
  mmc->mmc_rx_pause_frames = mmc->mmc_rx_pause_frames + tmp___44;
  tmp___45 = readl((void const volatile *)ioaddr + 468U);
  mmc->mmc_rx_fifo_overflow = mmc->mmc_rx_fifo_overflow + tmp___45;
  tmp___46 = readl((void const volatile *)ioaddr + 472U);
  mmc->mmc_rx_vlan_frames_gb = mmc->mmc_rx_vlan_frames_gb + tmp___46;
  tmp___47 = readl((void const volatile *)ioaddr + 476U);
  mmc->mmc_rx_watchdog_error = mmc->mmc_rx_watchdog_error + tmp___47;
  tmp___48 = readl((void const volatile *)ioaddr + 512U);
  mmc->mmc_rx_ipc_intr_mask = mmc->mmc_rx_ipc_intr_mask + tmp___48;
  tmp___49 = readl((void const volatile *)ioaddr + 520U);
  mmc->mmc_rx_ipc_intr = mmc->mmc_rx_ipc_intr + tmp___49;
  tmp___50 = readl((void const volatile *)ioaddr + 528U);
  mmc->mmc_rx_ipv4_gd = mmc->mmc_rx_ipv4_gd + tmp___50;
  tmp___51 = readl((void const volatile *)ioaddr + 532U);
  mmc->mmc_rx_ipv4_hderr = mmc->mmc_rx_ipv4_hderr + tmp___51;
  tmp___52 = readl((void const volatile *)ioaddr + 536U);
  mmc->mmc_rx_ipv4_nopay = mmc->mmc_rx_ipv4_nopay + tmp___52;
  tmp___53 = readl((void const volatile *)ioaddr + 540U);
  mmc->mmc_rx_ipv4_frag = mmc->mmc_rx_ipv4_frag + tmp___53;
  tmp___54 = readl((void const volatile *)ioaddr + 544U);
  mmc->mmc_rx_ipv4_udsbl = mmc->mmc_rx_ipv4_udsbl + tmp___54;
  tmp___55 = readl((void const volatile *)ioaddr + 592U);
  mmc->mmc_rx_ipv4_gd_octets = mmc->mmc_rx_ipv4_gd_octets + tmp___55;
  tmp___56 = readl((void const volatile *)ioaddr + 596U);
  mmc->mmc_rx_ipv4_hderr_octets = mmc->mmc_rx_ipv4_hderr_octets + tmp___56;
  tmp___57 = readl((void const volatile *)ioaddr + 600U);
  mmc->mmc_rx_ipv4_nopay_octets = mmc->mmc_rx_ipv4_nopay_octets + tmp___57;
  tmp___58 = readl((void const volatile *)ioaddr + 604U);
  mmc->mmc_rx_ipv4_frag_octets = mmc->mmc_rx_ipv4_frag_octets + tmp___58;
  tmp___59 = readl((void const volatile *)ioaddr + 608U);
  mmc->mmc_rx_ipv4_udsbl_octets = mmc->mmc_rx_ipv4_udsbl_octets + tmp___59;
  tmp___60 = readl((void const volatile *)ioaddr + 612U);
  mmc->mmc_rx_ipv6_gd_octets = mmc->mmc_rx_ipv6_gd_octets + tmp___60;
  tmp___61 = readl((void const volatile *)ioaddr + 616U);
  mmc->mmc_rx_ipv6_hderr_octets = mmc->mmc_rx_ipv6_hderr_octets + tmp___61;
  tmp___62 = readl((void const volatile *)ioaddr + 620U);
  mmc->mmc_rx_ipv6_nopay_octets = mmc->mmc_rx_ipv6_nopay_octets + tmp___62;
  tmp___63 = readl((void const volatile *)ioaddr + 548U);
  mmc->mmc_rx_ipv6_gd = mmc->mmc_rx_ipv6_gd + tmp___63;
  tmp___64 = readl((void const volatile *)ioaddr + 552U);
  mmc->mmc_rx_ipv6_hderr = mmc->mmc_rx_ipv6_hderr + tmp___64;
  tmp___65 = readl((void const volatile *)ioaddr + 556U);
  mmc->mmc_rx_ipv6_nopay = mmc->mmc_rx_ipv6_nopay + tmp___65;
  tmp___66 = readl((void const volatile *)ioaddr + 560U);
  mmc->mmc_rx_udp_gd = mmc->mmc_rx_udp_gd + tmp___66;
  tmp___67 = readl((void const volatile *)ioaddr + 564U);
  mmc->mmc_rx_udp_err = mmc->mmc_rx_udp_err + tmp___67;
  tmp___68 = readl((void const volatile *)ioaddr + 568U);
  mmc->mmc_rx_tcp_gd = mmc->mmc_rx_tcp_gd + tmp___68;
  tmp___69 = readl((void const volatile *)ioaddr + 572U);
  mmc->mmc_rx_tcp_err = mmc->mmc_rx_tcp_err + tmp___69;
  tmp___70 = readl((void const volatile *)ioaddr + 576U);
  mmc->mmc_rx_icmp_gd = mmc->mmc_rx_icmp_gd + tmp___70;
  tmp___71 = readl((void const volatile *)ioaddr + 580U);
  mmc->mmc_rx_icmp_err = mmc->mmc_rx_icmp_err + tmp___71;
  tmp___72 = readl((void const volatile *)ioaddr + 624U);
  mmc->mmc_rx_udp_gd_octets = mmc->mmc_rx_udp_gd_octets + tmp___72;
  tmp___73 = readl((void const volatile *)ioaddr + 628U);
  mmc->mmc_rx_udp_err_octets = mmc->mmc_rx_udp_err_octets + tmp___73;
  tmp___74 = readl((void const volatile *)ioaddr + 632U);
  mmc->mmc_rx_tcp_gd_octets = mmc->mmc_rx_tcp_gd_octets + tmp___74;
  tmp___75 = readl((void const volatile *)ioaddr + 636U);
  mmc->mmc_rx_tcp_err_octets = mmc->mmc_rx_tcp_err_octets + tmp___75;
  tmp___76 = readl((void const volatile *)ioaddr + 640U);
  mmc->mmc_rx_icmp_gd_octets = mmc->mmc_rx_icmp_gd_octets + tmp___76;
  tmp___77 = readl((void const volatile *)ioaddr + 644U);
  mmc->mmc_rx_icmp_err_octets = mmc->mmc_rx_icmp_err_octets + tmp___77;
  return;
}
}
void *ldv_kmem_cache_alloc_584(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_603(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_611(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_619(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_613(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_609(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_617(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_618(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_614(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_615(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_616(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static void stmmac_config_hw_tstamping(void *ioaddr , u32 data )
{
  {
  writel(data, (void volatile *)ioaddr + 1792U);
  return;
}
}
static void stmmac_config_sub_second_increment(void *ioaddr )
{
  u32 value ;
  unsigned int tmp ;
  unsigned long data ;
  {
  tmp = readl((void const volatile *)ioaddr + 1792U);
  value = tmp;
  data = 20UL;
  if ((value & 512U) == 0U) {
    data = (data * 1000UL) / 465UL;
  } else {
  }
  writel((unsigned int )data, (void volatile *)ioaddr + 1796U);
  return;
}
}
static int stmmac_init_systime(void *ioaddr , u32 sec , u32 nsec )
{
  int limit ;
  u32 value ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  writel(sec, (void volatile *)ioaddr + 1808U);
  writel(nsec, (void volatile *)ioaddr + 1812U);
  value = readl((void const volatile *)ioaddr + 1792U);
  value = value | 4U;
  writel(value, (void volatile *)ioaddr + 1792U);
  limit = 10;
  goto ldv_43741;
  ldv_43740:
  tmp = readl((void const volatile *)ioaddr + 1792U);
  if ((tmp & 4U) == 0U) {
    goto ldv_43735;
  } else {
  }
  __ms = 10UL;
  goto ldv_43738;
  ldv_43737:
  __const_udelay(4295000UL);
  ldv_43738:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_43737;
  } else {
  }
  ldv_43741:
  tmp___1 = limit;
  limit = limit - 1;
  if (tmp___1 != 0) {
    goto ldv_43740;
  } else {
  }
  ldv_43735: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int stmmac_config_addend(void *ioaddr , u32 addend )
{
  u32 value ;
  int limit ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  writel(addend, (void volatile *)ioaddr + 1816U);
  value = readl((void const volatile *)ioaddr + 1792U);
  value = value | 32U;
  writel(value, (void volatile *)ioaddr + 1792U);
  limit = 10;
  goto ldv_43754;
  ldv_43753:
  tmp = readl((void const volatile *)ioaddr + 1792U);
  if ((tmp & 32U) == 0U) {
    goto ldv_43748;
  } else {
  }
  __ms = 10UL;
  goto ldv_43751;
  ldv_43750:
  __const_udelay(4295000UL);
  ldv_43751:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_43750;
  } else {
  }
  ldv_43754:
  tmp___1 = limit;
  limit = limit - 1;
  if (tmp___1 != 0) {
    goto ldv_43753;
  } else {
  }
  ldv_43748: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int stmmac_adjust_systime(void *ioaddr , u32 sec , u32 nsec , int add_sub )
{
  u32 value ;
  int limit ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  writel(sec, (void volatile *)ioaddr + 1808U);
  writel((u32 )(add_sub << 31) | nsec, (void volatile *)ioaddr + 1812U);
  value = readl((void const volatile *)ioaddr + 1792U);
  value = value | 8U;
  writel(value, (void volatile *)ioaddr + 1792U);
  limit = 10;
  goto ldv_43769;
  ldv_43768:
  tmp = readl((void const volatile *)ioaddr + 1792U);
  if ((tmp & 8U) == 0U) {
    goto ldv_43763;
  } else {
  }
  __ms = 10UL;
  goto ldv_43766;
  ldv_43765:
  __const_udelay(4295000UL);
  ldv_43766:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_43765;
  } else {
  }
  ldv_43769:
  tmp___1 = limit;
  limit = limit - 1;
  if (tmp___1 != 0) {
    goto ldv_43768;
  } else {
  }
  ldv_43763: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static u64 stmmac_get_systime(void *ioaddr )
{
  u64 ns ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  tmp = readl((void const volatile *)ioaddr + 1804U);
  ns = (u64 )tmp;
  tmp___0 = readl((void const volatile *)ioaddr + 1800U);
  ns = (unsigned long long )tmp___0 * 1000000000ULL + ns;
  return (ns);
}
}
struct stmmac_hwtimestamp const stmmac_ptp = {& stmmac_config_hw_tstamping, & stmmac_config_sub_second_increment, & stmmac_init_systime,
    & stmmac_config_addend, & stmmac_adjust_systime, & stmmac_get_systime};
void ldv_main_exported_11(void)
{
  u32 ldvarg2 ;
  u32 tmp ;
  int ldvarg9 ;
  int tmp___0 ;
  void *ldvarg10 ;
  void *tmp___1 ;
  u32 ldvarg4 ;
  u32 tmp___2 ;
  u32 ldvarg1 ;
  u32 tmp___3 ;
  u32 ldvarg8 ;
  u32 tmp___4 ;
  void *ldvarg6 ;
  void *tmp___5 ;
  void *ldvarg5 ;
  void *tmp___6 ;
  u32 ldvarg12 ;
  u32 tmp___7 ;
  void *ldvarg0 ;
  void *tmp___8 ;
  void *ldvarg3 ;
  void *tmp___9 ;
  void *ldvarg7 ;
  void *tmp___10 ;
  u32 ldvarg11 ;
  u32 tmp___11 ;
  int tmp___12 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg2 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg9 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg10 = tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg4 = tmp___2;
  tmp___3 = __VERIFIER_nondet_u32();
  ldvarg1 = tmp___3;
  tmp___4 = __VERIFIER_nondet_u32();
  ldvarg8 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg6 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg5 = tmp___6;
  tmp___7 = __VERIFIER_nondet_u32();
  ldvarg12 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg0 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg3 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg7 = tmp___10;
  tmp___11 = __VERIFIER_nondet_u32();
  ldvarg11 = tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_adjust_systime(ldvarg10, ldvarg12, ldvarg11, ldvarg9);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_config_addend(ldvarg7, ldvarg8);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_get_systime(ldvarg6);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_config_sub_second_increment(ldvarg5);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  case 4: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_config_hw_tstamping(ldvarg3, ldvarg4);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  case 5: ;
  if (ldv_state_variable_11 == 1) {
    stmmac_init_systime(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_43792;
  default:
  ldv_stop();
  }
  ldv_43792: ;
  return;
}
}
void *ldv_kmem_cache_alloc_603(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_609(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_611(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_613(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_614(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_615(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_616(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_617(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_618(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_619(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_645(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv___platform_driver_register_662(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_663(struct platform_driver *drv ) ;
struct sk_buff *ldv_skb_clone_653(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_661(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_655(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_651(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_659(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_660(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_656(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_657(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_658(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern struct ptp_clock *ptp_clock_register(struct ptp_clock_info * , struct device * ) ;
extern int ptp_clock_unregister(struct ptp_clock * ) ;
static int stmmac_adjust_freq(struct ptp_clock_info *ptp , s32 ppb )
{
  struct stmmac_priv *priv ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u32 diff ;
  u32 addend ;
  int neg_adj ;
  u64 adj ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  priv = (struct stmmac_priv *)__mptr + 0xfffffffffffff750UL;
  neg_adj = 0;
  if (ppb < 0) {
    neg_adj = 1;
    ppb = - ppb;
  } else {
  }
  addend = priv->default_addend;
  adj = (u64 )addend;
  adj = (u64 )ppb * adj;
  tmp = div_u64(adj, 1000000000U);
  diff = (u32 )tmp;
  addend = neg_adj != 0 ? addend - diff : addend + diff;
  ldv_spin_lock();
  (*(((priv->hw)->ptp)->config_addend))(priv->ioaddr, addend);
  spin_unlock_irqrestore(& priv->ptp_lock, flags);
  return (0);
}
}
static int stmmac_adjust_time(struct ptp_clock_info *ptp , s64 delta )
{
  struct stmmac_priv *priv ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u32 sec ;
  u32 nsec ;
  u32 quotient ;
  u32 reminder ;
  int neg_adj ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  priv = (struct stmmac_priv *)__mptr + 0xfffffffffffff750UL;
  neg_adj = 0;
  if (delta < 0LL) {
    neg_adj = 1;
    delta = - delta;
  } else {
  }
  tmp = div_u64_rem((u64 )delta, 1000000000U, & reminder);
  quotient = (u32 )tmp;
  sec = quotient;
  nsec = reminder;
  ldv_spin_lock();
  (*(((priv->hw)->ptp)->adjust_systime))(priv->ioaddr, sec, nsec, neg_adj);
  spin_unlock_irqrestore(& priv->ptp_lock, flags);
  return (0);
}
}
static int stmmac_get_time(struct ptp_clock_info *ptp , struct timespec *ts )
{
  struct stmmac_priv *priv ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u64 ns ;
  u32 reminder ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  priv = (struct stmmac_priv *)__mptr + 0xfffffffffffff750UL;
  ldv_spin_lock();
  ns = (*(((priv->hw)->ptp)->get_systime))(priv->ioaddr);
  spin_unlock_irqrestore(& priv->ptp_lock, flags);
  tmp = div_u64_rem(ns, 1000000000U, & reminder);
  ts->tv_sec = (__kernel_time_t )tmp;
  ts->tv_nsec = (long )reminder;
  return (0);
}
}
static int stmmac_set_time(struct ptp_clock_info *ptp , struct timespec const *ts )
{
  struct stmmac_priv *priv ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  priv = (struct stmmac_priv *)__mptr + 0xfffffffffffff750UL;
  ldv_spin_lock();
  (*(((priv->hw)->ptp)->init_systime))(priv->ioaddr, (u32 )ts->tv_sec, (u32 )ts->tv_nsec);
  spin_unlock_irqrestore(& priv->ptp_lock, flags);
  return (0);
}
}
static int stmmac_enable(struct ptp_clock_info *ptp , struct ptp_clock_request *rq ,
                         int on )
{
  {
  return (-95);
}
}
static struct ptp_clock_info stmmac_ptp_clock_ops =
     {& __this_module, {'s', 't', 'm', 'm', 'a', 'c', '_', 'p', 't', 'p', '_', 'c',
                      'l', 'o', 'c', 'k'}, 62500000, 0, 0, 0, 0, 0, 0, & stmmac_adjust_freq,
    & stmmac_adjust_time, & stmmac_get_time, & stmmac_set_time, & stmmac_enable, 0};
int stmmac_ptp_register(struct stmmac_priv *priv )
{
  struct lock_class_key __key ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  {
  spinlock_check(& priv->ptp_lock);
  __raw_spin_lock_init(& priv->ptp_lock.ldv_6347.rlock, "&(&priv->ptp_lock)->rlock",
                       & __key);
  priv->ptp_clock_ops = stmmac_ptp_clock_ops;
  priv->ptp_clock = ptp_clock_register(& priv->ptp_clock_ops, priv->device);
  tmp___0 = IS_ERR((void const *)priv->ptp_clock);
  if ((int )tmp___0) {
    priv->ptp_clock = (struct ptp_clock *)0;
    printk("\vptp_clock_register() failed on %s\n", (char *)(& (priv->dev)->name));
  } else {
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_ptp_register";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.o.c.prepared";
    descriptor.format = "Added PTP HW clock successfully on %s\n";
    descriptor.lineno = 339U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Added PTP HW clock successfully on %s\n",
                         (char *)(& (priv->dev)->name));
    } else {
    }
  }
  return (0);
}
}
void stmmac_ptp_unregister(struct stmmac_priv *priv )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned long )priv->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    ptp_clock_unregister(priv->ptp_clock);
    descriptor.modname = "stmmac";
    descriptor.function = "stmmac_ptp_unregister";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.o.c.prepared";
    descriptor.format = "Removed PTP HW clock successfully on %s\n";
    descriptor.lineno = 355U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Removed PTP HW clock successfully on %s\n",
                         (char *)(& (priv->dev)->name));
    } else {
    }
  } else {
  }
  return;
}
}
void ldv_initialize_ptp_clock_info_10(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(104UL);
  stmmac_ptp_clock_ops_group0 = (struct ptp_clock_info *)tmp;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct timespec *ldvarg196 ;
  void *tmp ;
  s64 ldvarg201 ;
  struct timespec *ldvarg199 ;
  void *tmp___0 ;
  struct ptp_clock_request *ldvarg198 ;
  void *tmp___1 ;
  int ldvarg197 ;
  int tmp___2 ;
  s32 ldvarg200 ;
  int tmp___3 ;
  {
  tmp = ldv_zalloc(16UL);
  ldvarg196 = (struct timespec *)tmp;
  tmp___0 = ldv_zalloc(16UL);
  ldvarg199 = (struct timespec *)tmp___0;
  tmp___1 = ldv_zalloc(64UL);
  ldvarg198 = (struct ptp_clock_request *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg197 = tmp___2;
  memset((void *)(& ldvarg201), 0, 8UL);
  memset((void *)(& ldvarg200), 0, 4UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    stmmac_adjust_time(stmmac_ptp_clock_ops_group0, ldvarg201);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45993;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    stmmac_adjust_freq(stmmac_ptp_clock_ops_group0, ldvarg200);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45993;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    stmmac_set_time(stmmac_ptp_clock_ops_group0, (struct timespec const *)ldvarg199);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45993;
  case 3: ;
  if (ldv_state_variable_10 == 1) {
    stmmac_enable(stmmac_ptp_clock_ops_group0, ldvarg198, ldvarg197);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45993;
  case 4: ;
  if (ldv_state_variable_10 == 1) {
    stmmac_get_time(stmmac_ptp_clock_ops_group0, ldvarg196);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45993;
  default:
  ldv_stop();
  }
  ldv_45993: ;
  return;
}
}
void *ldv_kmem_cache_alloc_645(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_651(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_653(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_655(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_656(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_657(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_658(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_659(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_660(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_661(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_662(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_663(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
void *ldv_kmem_cache_alloc_691(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
extern void *devm_ioremap_resource(struct device * , struct resource * ) ;
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
__inline static void *dev_get_platdata(struct device const *dev )
{
  {
  return ((void *)dev->platform_data);
}
}
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq_byname(struct platform_device * , char const * ) ;
int ldv___platform_driver_register_708(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_709(struct platform_driver *drv ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
struct sk_buff *ldv_skb_clone_699(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_707(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_701(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_697(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_705(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_706(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_702(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_703(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_704(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
struct of_device_id const __mod_of__stmmac_dt_ids_device_table ;
static int stmmac_probe_config_dt(struct platform_device *pdev , struct plat_stmmacenet_data *plat ,
                                  char const **mac )
{
  {
  return (-38);
}
}
static int stmmac_pltfr_probe(struct platform_device *pdev )
{
  int ret ;
  struct resource *res ;
  struct device *dev ;
  void *addr ;
  struct stmmac_priv *priv ;
  struct plat_stmmacenet_data *plat_dat___0 ;
  char const *mac ;
  long tmp ;
  bool tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor ;
  long tmp___8 ;
  {
  ret = 0;
  dev = & pdev->dev;
  addr = (void *)0;
  priv = (struct stmmac_priv *)0;
  plat_dat___0 = (struct plat_stmmacenet_data *)0;
  mac = (char const *)0;
  res = platform_get_resource(pdev, 512U, 0U);
  addr = devm_ioremap_resource(dev, res);
  tmp___0 = IS_ERR((void const *)addr);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)addr);
    return ((int )tmp);
  } else {
  }
  tmp___1 = dev_get_platdata((struct device const *)(& pdev->dev));
  plat_dat___0 = (struct plat_stmmacenet_data *)tmp___1;
  if ((unsigned long )pdev->dev.of_node != (unsigned long )((struct device_node *)0)) {
    if ((unsigned long )plat_dat___0 == (unsigned long )((struct plat_stmmacenet_data *)0)) {
      tmp___2 = devm_kzalloc(& pdev->dev, 160UL, 208U);
      plat_dat___0 = (struct plat_stmmacenet_data *)tmp___2;
    } else {
    }
    if ((unsigned long )plat_dat___0 == (unsigned long )((struct plat_stmmacenet_data *)0)) {
      printk("\v%s: OLD_ERROR: no memory", "stmmac_pltfr_probe");
      return (-12);
    } else {
    }
    ret = stmmac_probe_config_dt(pdev, plat_dat___0, & mac);
    if (ret != 0) {
      printk("\v%s: main dt probe failed", "stmmac_pltfr_probe");
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned long )plat_dat___0->setup != (unsigned long )((void *(*)(struct platform_device * ))0)) {
    plat_dat___0->bsp_priv = (*(plat_dat___0->setup))(pdev);
    tmp___4 = IS_ERR((void const *)plat_dat___0->bsp_priv);
    if ((int )tmp___4) {
      tmp___3 = PTR_ERR((void const *)plat_dat___0->bsp_priv);
      return ((int )tmp___3);
    } else {
    }
  } else {
  }
  if ((unsigned long )plat_dat___0->init != (unsigned long )((int (*)(struct platform_device * ,
                                                                      void * ))0)) {
    ret = (*(plat_dat___0->init))(pdev, plat_dat___0->bsp_priv);
    tmp___5 = ldv__builtin_expect(ret != 0, 0L);
    if (tmp___5 != 0L) {
      return (ret);
    } else {
    }
  } else {
  }
  priv = stmmac_dvr_probe(& pdev->dev, plat_dat___0, addr);
  tmp___7 = IS_ERR((void const *)priv);
  if ((int )tmp___7) {
    printk("\v%s: main driver probe failed", "stmmac_pltfr_probe");
    tmp___6 = PTR_ERR((void const *)priv);
    return ((int )tmp___6);
  } else {
  }
  if ((unsigned long )mac != (unsigned long )((char const *)0)) {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(priv->dev)->dev_addr, (void const *)mac, __len);
    } else {
      __ret = memcpy((void *)(priv->dev)->dev_addr, (void const *)mac,
                               __len);
    }
  } else {
  }
  (priv->dev)->irq = platform_get_irq_byname(pdev, "macirq");
  if ((priv->dev)->irq < 0) {
    if ((priv->dev)->irq != -517) {
      netdev_err((struct net_device const *)priv->dev, "MAC IRQ configuration information not found\n");
    } else {
    }
    return ((priv->dev)->irq);
  } else {
  }
  priv->wol_irq = platform_get_irq_byname(pdev, "eth_wake_irq");
  if (priv->wol_irq < 0) {
    if (priv->wol_irq == -517) {
      return (-517);
    } else {
    }
    priv->wol_irq = (priv->dev)->irq;
  } else {
  }
  priv->lpi_irq = platform_get_irq_byname(pdev, "eth_lpi");
  if (priv->lpi_irq == -517) {
    return (-517);
  } else {
  }
  platform_set_drvdata(pdev, (void *)priv->dev);
  descriptor.modname = "stmmac";
  descriptor.function = "stmmac_pltfr_probe";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.o.c.prepared";
  descriptor.format = "STMMAC platform driver registration completed";
  descriptor.lineno = 414U;
  descriptor.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_pr_debug(& descriptor, "STMMAC platform driver registration completed");
  } else {
  }
  return (0);
}
}
static int stmmac_pltfr_remove(struct platform_device *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct stmmac_priv *priv ;
  void *tmp___0 ;
  int ret ;
  int tmp___1 ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp___0;
  tmp___1 = stmmac_dvr_remove(ndev);
  ret = tmp___1;
  if ((unsigned long )(priv->plat)->exit != (unsigned long )((void (*)(struct platform_device * ,
                                                                       void * ))0)) {
    (*((priv->plat)->exit))(pdev, (priv->plat)->bsp_priv);
  } else {
  }
  if ((unsigned long )(priv->plat)->free != (unsigned long )((void (*)(struct platform_device * ,
                                                                       void * ))0)) {
    (*((priv->plat)->free))(pdev, (priv->plat)->bsp_priv);
  } else {
  }
  return (ret);
}
}
static int stmmac_pltfr_suspend(struct device *dev )
{
  int ret ;
  struct net_device *ndev ;
  void *tmp ;
  struct stmmac_priv *priv ;
  void *tmp___0 ;
  struct platform_device *pdev ;
  struct device const *__mptr ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp___0;
  __mptr = (struct device const *)dev;
  pdev = (struct platform_device *)__mptr + 0xfffffffffffffff0UL;
  ret = stmmac_suspend(ndev);
  if ((unsigned long )(priv->plat)->exit != (unsigned long )((void (*)(struct platform_device * ,
                                                                       void * ))0)) {
    (*((priv->plat)->exit))(pdev, (priv->plat)->bsp_priv);
  } else {
  }
  return (ret);
}
}
static int stmmac_pltfr_resume(struct device *dev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct stmmac_priv *priv ;
  void *tmp___0 ;
  struct platform_device *pdev ;
  struct device const *__mptr ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp___0;
  __mptr = (struct device const *)dev;
  pdev = (struct platform_device *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned long )(priv->plat)->init != (unsigned long )((int (*)(struct platform_device * ,
                                                                      void * ))0)) {
    (*((priv->plat)->init))(pdev, (priv->plat)->bsp_priv);
  } else {
  }
  tmp___1 = stmmac_resume(ndev);
  return (tmp___1);
}
}
static struct dev_pm_ops const stmmac_pltfr_pm_ops =
     {0, 0, & stmmac_pltfr_suspend, & stmmac_pltfr_resume, & stmmac_pltfr_suspend, & stmmac_pltfr_resume,
    & stmmac_pltfr_suspend, & stmmac_pltfr_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0};
struct platform_driver stmmac_pltfr_driver =
     {& stmmac_pltfr_probe, & stmmac_pltfr_remove, 0, 0, 0, {"stmmaceth", 0, & __this_module,
                                                           0, (_Bool)0, (struct of_device_id const *)0,
                                                           0, 0, 0, 0, 0, 0, 0, & stmmac_pltfr_pm_ops,
                                                           0}, 0, (_Bool)0};
int ldv_retval_20 ;
int ldv_retval_18 ;
int ldv_retval_26 ;
int ldv_retval_23 ;
int ldv_retval_11 ;
int ldv_retval_25 ;
int ldv_retval_22 ;
extern int ldv_suspend_late_9(void) ;
int ldv_retval_27 ;
int ldv_retval_15 ;
extern int ldv_poweroff_late_9(void) ;
int ldv_retval_16 ;
int ldv_retval_29 ;
int ldv_retval_24 ;
extern int ldv_thaw_noirq_9(void) ;
extern int ldv_restore_early_9(void) ;
int ldv_retval_19 ;
extern int ldv_resume_early_9(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_resume_noirq_9(void) ;
int ldv_retval_12 ;
extern int ldv_poweroff_noirq_9(void) ;
extern int ldv_prepare_9(void) ;
extern int ldv_suspend_noirq_9(void) ;
extern int ldv_complete_9(void) ;
extern int ldv_restore_noirq_9(void) ;
int ldv_retval_21 ;
int ldv_retval_13 ;
int ldv_retval_10 ;
int ldv_retval_9 ;
extern int ldv_thaw_early_9(void) ;
extern int ldv_freeze_noirq_9(void) ;
extern int ldv_freeze_late_9(void) ;
void ldv_initialize_platform_driver_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1464UL);
  stmmac_pltfr_driver_group0 = (struct platform_device *)tmp;
  return;
}
}
void ldv_dev_pm_ops_9(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1416UL);
  stmmac_pltfr_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_29 = stmmac_pltfr_probe(stmmac_pltfr_driver_group0);
    if (ldv_retval_29 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_46487;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    stmmac_pltfr_remove(stmmac_pltfr_driver_group0);
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_46487;
  default:
  ldv_stop();
  }
  ldv_46487: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_9 == 14) {
    ldv_retval_27 = stmmac_pltfr_resume(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_27 == 0) {
      ldv_state_variable_9 = 15;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 1: ;
  if (ldv_state_variable_9 == 2) {
    ldv_retval_26 = stmmac_pltfr_suspend(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_26 == 0) {
      ldv_state_variable_9 = 3;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 2: ;
  if (ldv_state_variable_9 == 2) {
    ldv_retval_25 = stmmac_pltfr_suspend(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_25 == 0) {
      ldv_state_variable_9 = 4;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 3: ;
  if (ldv_state_variable_9 == 2) {
    ldv_retval_24 = stmmac_pltfr_suspend(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_24 == 0) {
      ldv_state_variable_9 = 5;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 4: ;
  if (ldv_state_variable_9 == 12) {
    ldv_retval_23 = stmmac_pltfr_resume(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_23 == 0) {
      ldv_state_variable_9 = 15;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 5: ;
  if (ldv_state_variable_9 == 13) {
    ldv_retval_22 = stmmac_pltfr_resume(stmmac_pltfr_pm_ops_group1);
    if (ldv_retval_22 == 0) {
      ldv_state_variable_9 = 15;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 6: ;
  if (ldv_state_variable_9 == 3) {
    ldv_retval_21 = ldv_suspend_late_9();
    if (ldv_retval_21 == 0) {
      ldv_state_variable_9 = 6;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 7: ;
  if (ldv_state_variable_9 == 9) {
    ldv_retval_20 = ldv_restore_early_9();
    if (ldv_retval_20 == 0) {
      ldv_state_variable_9 = 13;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 8: ;
  if (ldv_state_variable_9 == 6) {
    ldv_retval_19 = ldv_resume_early_9();
    if (ldv_retval_19 == 0) {
      ldv_state_variable_9 = 12;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 9: ;
  if (ldv_state_variable_9 == 11) {
    ldv_retval_18 = ldv_thaw_early_9();
    if (ldv_retval_18 == 0) {
      ldv_state_variable_9 = 14;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 10: ;
  if (ldv_state_variable_9 == 7) {
    ldv_retval_17 = ldv_resume_noirq_9();
    if (ldv_retval_17 == 0) {
      ldv_state_variable_9 = 12;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 11: ;
  if (ldv_state_variable_9 == 5) {
    ldv_retval_16 = ldv_freeze_noirq_9();
    if (ldv_retval_16 == 0) {
      ldv_state_variable_9 = 10;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 12: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_15 = ldv_prepare_9();
    if (ldv_retval_15 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 13: ;
  if (ldv_state_variable_9 == 5) {
    ldv_retval_14 = ldv_freeze_late_9();
    if (ldv_retval_14 == 0) {
      ldv_state_variable_9 = 11;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 14: ;
  if (ldv_state_variable_9 == 10) {
    ldv_retval_13 = ldv_thaw_noirq_9();
    if (ldv_retval_13 == 0) {
      ldv_state_variable_9 = 14;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 15: ;
  if (ldv_state_variable_9 == 4) {
    ldv_retval_12 = ldv_poweroff_noirq_9();
    if (ldv_retval_12 == 0) {
      ldv_state_variable_9 = 8;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 16: ;
  if (ldv_state_variable_9 == 4) {
    ldv_retval_11 = ldv_poweroff_late_9();
    if (ldv_retval_11 == 0) {
      ldv_state_variable_9 = 9;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 17: ;
  if (ldv_state_variable_9 == 8) {
    ldv_retval_10 = ldv_restore_noirq_9();
    if (ldv_retval_10 == 0) {
      ldv_state_variable_9 = 13;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 18: ;
  if (ldv_state_variable_9 == 3) {
    ldv_retval_9 = ldv_suspend_noirq_9();
    if (ldv_retval_9 == 0) {
      ldv_state_variable_9 = 7;
    } else {
    }
  } else {
  }
  goto ldv_46494;
  case 19: ;
  if (ldv_state_variable_9 == 15) {
    ldv_complete_9();
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_46494;
  default:
  ldv_stop();
  }
  ldv_46494: ;
  return;
}
}
void *ldv_kmem_cache_alloc_691(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_697(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_699(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_701(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_702(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_703(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_704(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_705(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_706(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_707(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_708(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_709(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
void *ldv_kmem_cache_alloc_737(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern void pci_clear_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
int ldv___platform_driver_register_754(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
void ldv_platform_driver_unregister_755(struct platform_driver *drv ) ;
struct sk_buff *ldv_skb_clone_745(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_753(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_747(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_743(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_751(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_752(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_748(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_749(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_750(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static struct plat_stmmacenet_data plat_dat ;
static struct stmmac_mdio_bus_data mdio_data ;
static struct stmmac_dma_cfg dma_cfg ;
static void stmmac_default_data(void)
{
  {
  memset((void *)(& plat_dat), 0, 160UL);
  plat_dat.bus_id = 1;
  plat_dat.phy_addr = 0;
  plat_dat.interface = 2;
  plat_dat.clk_csr = 2;
  plat_dat.has_gmac = 1;
  plat_dat.force_sf_dma_mode = 1;
  mdio_data.phy_reset = (int (*)(void * ))0;
  mdio_data.phy_mask = 0U;
  plat_dat.mdio_bus_data = & mdio_data;
  dma_cfg.pbl = 32;
  dma_cfg.burst_len = 128;
  plat_dat.dma_cfg = & dma_cfg;
  return;
}
}
static int stmmac_pci_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  int ret ;
  void *addr ;
  struct stmmac_priv *priv ;
  int i ;
  char const *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  {
  ret = 0;
  addr = (void *)0;
  priv = (struct stmmac_priv *)0;
  ret = pci_enable_device(pdev);
  if (ret != 0) {
    tmp = pci_name((struct pci_dev const *)pdev);
    printk("\v%s : OLD_ERROR: failed to enable %s device\n", "stmmac_pci_probe", tmp);
    return (ret);
  } else {
  }
  tmp___0 = pci_request_regions(pdev, "stmmaceth");
  if (tmp___0 != 0) {
    printk("\v%s: OLD_ERROR: failed to get PCI region\n", "stmmac_pci_probe");
    ret = -19;
    goto err_out_req_reg_failed;
  } else {
  }
  i = 0;
  goto ldv_45940;
  ldv_45939: ;
  if ((pdev->resource[i].start == 0ULL && pdev->resource[i].end == pdev->resource[i].start) || pdev->resource[i].end - pdev->resource[i].start == 0xffffffffffffffffULL) {
    goto ldv_45936;
  } else {
  }
  addr = pci_iomap(pdev, i, 0UL);
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    printk("\v%s: OLD_ERROR: cannot map register memory aborting", "stmmac_pci_probe");
    ret = -5;
    goto err_out_map_failed;
  } else {
  }
  goto ldv_45938;
  ldv_45936:
  i = i + 1;
  ldv_45940: ;
  if (i <= 5) {
    goto ldv_45939;
  } else {
  }
  ldv_45938:
  pci_set_master(pdev);
  stmmac_default_data();
  priv = stmmac_dvr_probe(& pdev->dev, & plat_dat, addr);
  tmp___2 = IS_ERR((void const *)priv);
  if ((int )tmp___2) {
    printk("\v%s: main driver probe failed", "stmmac_pci_probe");
    tmp___1 = PTR_ERR((void const *)priv);
    ret = (int )tmp___1;
    goto err_out;
  } else {
  }
  (priv->dev)->irq = (int )pdev->irq;
  priv->wol_irq = (int )pdev->irq;
  pci_set_drvdata(pdev, (void *)priv->dev);
  descriptor.modname = "stmmac";
  descriptor.function = "stmmac_pci_probe";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10255/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.o.c.prepared";
  descriptor.format = "STMMAC platform driver registration completed";
  descriptor.lineno = 258U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor, "STMMAC platform driver registration completed");
  } else {
  }
  return (0);
  err_out:
  pci_clear_master(pdev);
  err_out_map_failed:
  pci_release_regions(pdev);
  err_out_req_reg_failed:
  pci_disable_device(pdev);
  return (ret);
}
}
static void stmmac_pci_remove(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct stmmac_priv *priv ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  priv = (struct stmmac_priv *)tmp___0;
  stmmac_dvr_remove(ndev);
  pci_iounmap(pdev, priv->ioaddr);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  return;
}
}
static int stmmac_pci_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *ndev ;
  void *tmp ;
  int ret ;
  pci_power_t tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  ret = stmmac_suspend(ndev);
  pci_save_state(pdev);
  tmp___0 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___0);
  return (ret);
}
}
static int stmmac_pci_resume(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  tmp___0 = stmmac_resume(ndev);
  return (tmp___0);
}
}
static struct pci_device_id const stmmac_id_table[3U] = { {1792U, 4360U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4170U, 52233U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__stmmac_id_table_device_table ;
struct pci_driver stmmac_pci_driver =
     {{0, 0}, "stmmaceth", (struct pci_device_id const *)(& stmmac_id_table), & stmmac_pci_probe,
    & stmmac_pci_remove, & stmmac_pci_suspend, 0, 0, & stmmac_pci_resume, 0, 0, 0,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                           {0, 0}}};
int ldv_retval_4 ;
int ldv_retval_3 ;
int ldv_retval_2 ;
void ldv_initialize_pci_driver_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  stmmac_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_7(void)
{
  pm_message_t ldvarg19 ;
  struct pci_device_id *ldvarg20 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg20 = (struct pci_device_id *)tmp;
  memset((void *)(& ldvarg19), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_4 = stmmac_pci_probe(stmmac_pci_driver_group0, (struct pci_device_id const *)ldvarg20);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45977;
  case 1: ;
  if (ldv_state_variable_7 == 2) {
    ldv_retval_3 = stmmac_pci_suspend(stmmac_pci_driver_group0, ldvarg19);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_7 = 3;
    } else {
    }
  } else {
  }
  goto ldv_45977;
  case 2: ;
  if (ldv_state_variable_7 == 3) {
    ldv_retval_2 = stmmac_pci_resume(stmmac_pci_driver_group0);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_7 = 2;
    } else {
    }
  } else {
  }
  goto ldv_45977;
  case 3: ;
  if (ldv_state_variable_7 == 3) {
    stmmac_pci_remove(stmmac_pci_driver_group0);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    stmmac_pci_remove(stmmac_pci_driver_group0);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45977;
  default:
  ldv_stop();
  }
  ldv_45977: ;
  return;
}
}
void *ldv_kmem_cache_alloc_737(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_743(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_745(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_747(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_748(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_749(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_750(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_751(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_752(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_753(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv___platform_driver_register_754(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_initialize_platform_driver_8();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_755(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_8 = 0;
  return;
}
}
void *ldv_kmem_cache_alloc_783(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern struct regmap *syscon_regmap_lookup_by_phandle(struct device_node * , char const * ) ;
__inline static int of_property_read_u32_index(struct device_node const *np , char const *propname ,
                                               u32 index , u32 *out_value )
{
  {
  return (-38);
}
}
__inline static int of_get_phy_mode(struct device_node *np )
{
  {
  return (-19);
}
}
extern int dev_err(struct device const * , char const * , ...) ;
struct sk_buff *ldv_skb_clone_791(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_793(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_789(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_797(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_798(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_794(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_795(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_796(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern int regmap_write(struct regmap * , unsigned int , unsigned int ) ;
extern int regmap_read(struct regmap * , unsigned int , unsigned int * ) ;
static int socfpga_dwmac_parse_data(struct socfpga_dwmac *dwmac , struct device *dev )
{
  struct device_node *np ;
  struct regmap *sys_mgr_base_addr ;
  u32 reg_offset ;
  u32 reg_shift ;
  int ret ;
  long tmp ;
  bool tmp___0 ;
  {
  np = dev->of_node;
  dwmac->interface = of_get_phy_mode(np);
  sys_mgr_base_addr = syscon_regmap_lookup_by_phandle(np, "altr,sysmgr-syscon");
  tmp___0 = IS_ERR((void const *)sys_mgr_base_addr);
  if ((int )tmp___0) {
    _dev_info((struct device const *)dev, "No sysmgr-syscon node found\n");
    tmp = PTR_ERR((void const *)sys_mgr_base_addr);
    return ((int )tmp);
  } else {
  }
  ret = of_property_read_u32_index((struct device_node const *)np, "altr,sysmgr-syscon",
                                   1U, & reg_offset);
  if (ret != 0) {
    _dev_info((struct device const *)dev, "Could not read reg_offset from sysmgr-syscon!\n");
    return (-22);
  } else {
  }
  ret = of_property_read_u32_index((struct device_node const *)np, "altr,sysmgr-syscon",
                                   2U, & reg_shift);
  if (ret != 0) {
    _dev_info((struct device const *)dev, "Could not read reg_shift from sysmgr-syscon!\n");
    return (-22);
  } else {
  }
  dwmac->reg_offset = reg_offset;
  dwmac->reg_shift = reg_shift;
  dwmac->sys_mgr_base_addr = sys_mgr_base_addr;
  dwmac->dev = dev;
  return (0);
}
}
static int socfpga_dwmac_setup(struct socfpga_dwmac *dwmac )
{
  struct regmap *sys_mgr_base_addr ;
  int phymode ;
  u32 reg_offset ;
  u32 reg_shift ;
  u32 ctrl ;
  u32 val ;
  {
  sys_mgr_base_addr = dwmac->sys_mgr_base_addr;
  phymode = dwmac->interface;
  reg_offset = dwmac->reg_offset;
  reg_shift = dwmac->reg_shift;
  switch (phymode) {
  case 7:
  val = 1U;
  goto ldv_34212;
  case 1: ;
  case 2:
  val = 0U;
  goto ldv_34212;
  default:
  dev_err((struct device const *)dwmac->dev, "bad phy mode %d\n", phymode);
  return (-22);
  }
  ldv_34212:
  regmap_read(sys_mgr_base_addr, reg_offset, & ctrl);
  ctrl = (u32 )(~ (3 << (int )reg_shift)) & ctrl;
  ctrl = (val << (int )reg_shift) | ctrl;
  regmap_write(sys_mgr_base_addr, reg_offset, ctrl);
  return (0);
}
}
static void *socfpga_dwmac_probe(struct platform_device *pdev )
{
  struct device *dev ;
  int ret ;
  struct socfpga_dwmac *dwmac ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  dev = & pdev->dev;
  tmp = devm_kzalloc(dev, 32UL, 208U);
  dwmac = (struct socfpga_dwmac *)tmp;
  if ((unsigned long )dwmac == (unsigned long )((struct socfpga_dwmac *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return (tmp___0);
  } else {
  }
  ret = socfpga_dwmac_parse_data(dwmac, dev);
  if (ret != 0) {
    dev_err((struct device const *)dev, "Unable to parse OF data\n");
    tmp___1 = ERR_PTR((long )ret);
    return (tmp___1);
  } else {
  }
  ret = socfpga_dwmac_setup(dwmac);
  if (ret != 0) {
    dev_err((struct device const *)dev, "couldn\'t setup SoC glue (%d)\n", ret);
    tmp___2 = ERR_PTR((long )ret);
    return (tmp___2);
  } else {
  }
  return ((void *)dwmac);
}
}
struct stmmac_of_data const socfpga_gmac_data =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, & socfpga_dwmac_probe, 0, 0, 0};
extern int ldv_release_6(void) ;
extern int ldv_init_6(void) ;
void ldv_main_exported_6(void)
{
  struct platform_device *ldvarg117 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1464UL);
  ldvarg117 = (struct platform_device *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    socfpga_dwmac_probe(ldvarg117);
    ldv_state_variable_6 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_34232;
  case 1: ;
  if (ldv_state_variable_6 == 3) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34232;
  case 2: ;
  if (ldv_state_variable_6 == 2) {
    ldv_init_6();
    ldv_state_variable_6 = 3;
  } else {
  }
  goto ldv_34232;
  default:
  ldv_stop();
  }
  ldv_34232: ;
  return;
}
}
void *ldv_kmem_cache_alloc_783(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_789(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_791(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_793(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_794(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_795(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_796(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_797(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_798(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
void clk_disable(struct clk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int clk_enable(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int clk_get_rate(struct clk *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int clk_prepare(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
void clk_unprepare(struct clk *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void *external_alloc(void);
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void device_set_wakeup_capable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct clk *devm_clk_get(struct device *arg0, const char *arg1) {
  return (struct clk *)external_alloc();
}
void *external_alloc(void);
void *devm_ioremap_resource(struct device *arg0, struct resource *arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct reset_control *devm_reset_control_get(struct device *arg0, const char *arg1) {
  return (struct reset_control *)external_alloc();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
void ether_setup(struct net_device *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int ethtool_op_get_ts_info(struct net_device *arg0, struct ethtool_ts_info *arg1) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void getnstimeofday(struct timespec *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int irq_set_irq_wake(unsigned int arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_init_6() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_16() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_18() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_16() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_18() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_9() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct mii_bus *mdiobus_alloc_size(size_t arg0) {
  return (struct mii_bus *)external_alloc();
}
void mdiobus_free(struct mii_bus *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mdiobus_register(struct mii_bus *arg0) {
  return __VERIFIER_nondet_int();
}
void mdiobus_unregister(struct mii_bus *arg0) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_alert(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netdev_update_features(struct net_device *arg0) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_clear_master(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void *external_alloc(void);
struct phy_device *phy_connect(struct net_device *arg0, const char *arg1, void (*arg2)(struct net_device *), phy_interface_t arg3) {
  return (struct phy_device *)external_alloc();
}
void phy_disconnect(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_get_eee(struct phy_device *arg0, struct ethtool_eee *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_gset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_set_eee(struct phy_device *arg0, struct ethtool_eee *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_sset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_get_eee_err(struct phy_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_init_eee(struct phy_device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_mii_ioctl(struct phy_device *arg0, struct ifreq *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void phy_print_status(struct phy_device *arg0) {
  return;
}
void phy_start(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_start_aneg(struct phy_device *arg0) {
  return __VERIFIER_nondet_int();
}
void phy_stop(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pinctrl_pm_select_default_state(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pinctrl_pm_select_sleep_state(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq_byname(struct platform_device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return (struct resource *)external_alloc();
}
void pm_wakeup_event(struct device *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ptp_clock_index(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct ptp_clock *ptp_clock_register(struct ptp_clock_info *arg0, struct device *arg1) {
  return (struct ptp_clock *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ptp_clock_unregister(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_read(struct regmap *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_write(struct regmap *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int reset_control_assert(struct reset_control *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int reset_control_deassert(struct reset_control *arg0) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void skb_clone_tx_timestamp(struct sk_buff *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *arg0, const char *arg1) {
  return (struct regmap *)external_alloc();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int usecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
