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
typedef unsigned long long __u64;
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
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
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
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
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
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
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
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
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
struct nsproxy;
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
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
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
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
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
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
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
union __anonunion_ldv_14668_154 {
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
   union __anonunion_ldv_14668_154 ldv_14668 ;
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
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
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
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
struct drm_device;
struct drm_file;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_16438_160 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_16439_159 {
   struct __anonstruct_ldv_16438_160 ldv_16438 ;
};
struct lockref {
   union __anonunion_ldv_16439_159 ldv_16439 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_16463_162 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_16465_161 {
   struct __anonstruct_ldv_16463_162 ldv_16463 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_16465_161 ldv_16465 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_163 {
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
   union __anonunion_d_u_163 d_u ;
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
struct __anonstruct_ldv_16826_165 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_16828_164 {
   struct __anonstruct_ldv_16826_165 ldv_16826 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_16828_164 ldv_16828 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct __anonstruct_kprojid_t_167 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_167 kprojid_t;
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
union __anonunion_ldv_17648_168 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_17648_168 ldv_17648 ;
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
struct writeback_control;
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
struct backing_dev_info;
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
union __anonunion_ldv_18064_171 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18084_172 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_18101_173 {
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
   union __anonunion_ldv_18064_171 ldv_18064 ;
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
   union __anonunion_ldv_18084_172 ldv_18084 ;
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
   union __anonunion_ldv_18101_173 ldv_18101 ;
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
union __anonunion_f_u_174 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_174 f_u ;
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
struct files_struct;
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
struct fasync_struct;
struct __anonstruct_afs_176 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_175 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_176 afs ;
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
   union __anonunion_fl_u_175 fl_u ;
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
struct pdev_archdata {
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
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_21982_180 {
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
   union __anonunion_ldv_21982_180 ldv_21982 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct user_struct;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
enum chipset_type {
    NOT_SUPPORTED = 0,
    SUPPORTED = 1
} ;
struct agp_version {
   u16 major ;
   u16 minor ;
};
struct agp_kern_info {
   struct agp_version version ;
   struct pci_dev *device ;
   enum chipset_type chipset ;
   unsigned long mode ;
   unsigned long aper_base ;
   size_t aper_size ;
   int max_memory ;
   int current_memory ;
   bool cant_use_aperture ;
   unsigned long page_mask ;
   struct vm_operations_struct const *vm_ops ;
};
struct agp_bridge_data;
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
typedef unsigned int drm_magic_t;
struct drm_clip_rect {
   unsigned short x1 ;
   unsigned short y1 ;
   unsigned short x2 ;
   unsigned short y2 ;
};
struct drm_hw_lock {
   unsigned int volatile lock ;
   char padding[60U] ;
};
enum drm_map_type {
    _DRM_FRAME_BUFFER = 0,
    _DRM_REGISTERS = 1,
    _DRM_SHM = 2,
    _DRM_AGP = 3,
    _DRM_SCATTER_GATHER = 4,
    _DRM_CONSISTENT = 5
} ;
enum drm_map_flags {
    _DRM_RESTRICTED = 1,
    _DRM_READ_ONLY = 2,
    _DRM_LOCKED = 4,
    _DRM_KERNEL = 8,
    _DRM_WRITE_COMBINING = 16,
    _DRM_CONTAINS_LOCK = 32,
    _DRM_REMOVABLE = 64,
    _DRM_DRIVER = 128
} ;
enum drm_vblank_seq_type {
    _DRM_VBLANK_ABSOLUTE = 0,
    _DRM_VBLANK_RELATIVE = 1,
    _DRM_VBLANK_HIGH_CRTC_MASK = 62,
    _DRM_VBLANK_EVENT = 67108864,
    _DRM_VBLANK_FLIP = 134217728,
    _DRM_VBLANK_NEXTONMISS = 268435456,
    _DRM_VBLANK_SECONDARY = 536870912,
    _DRM_VBLANK_SIGNAL = 1073741824
} ;
struct drm_wait_vblank_reply {
   enum drm_vblank_seq_type type ;
   unsigned int sequence ;
   long tval_sec ;
   long tval_usec ;
};
struct drm_mode_fb_cmd2 {
   __u32 fb_id ;
   __u32 width ;
   __u32 height ;
   __u32 pixel_format ;
   __u32 flags ;
   __u32 handles[4U] ;
   __u32 pitches[4U] ;
   __u32 offsets[4U] ;
};
struct drm_mode_create_dumb {
   uint32_t height ;
   uint32_t width ;
   uint32_t bpp ;
   uint32_t flags ;
   uint32_t handle ;
   uint32_t pitch ;
   uint64_t size ;
};
struct drm_mm;
struct drm_mm_node {
   struct list_head node_list ;
   struct list_head hole_stack ;
   unsigned char hole_follows : 1 ;
   unsigned char scanned_block : 1 ;
   unsigned char scanned_prev_free : 1 ;
   unsigned char scanned_next_free : 1 ;
   unsigned char scanned_preceeds_hole : 1 ;
   unsigned char allocated : 1 ;
   unsigned long color ;
   unsigned long start ;
   unsigned long size ;
   struct drm_mm *mm ;
};
struct drm_mm {
   struct list_head hole_stack ;
   struct drm_mm_node head_node ;
   unsigned char scan_check_range : 1 ;
   unsigned int scan_alignment ;
   unsigned long scan_color ;
   unsigned long scan_size ;
   unsigned long scan_hit_start ;
   unsigned long scan_hit_end ;
   unsigned int scanned_blocks ;
   unsigned long scan_start ;
   unsigned long scan_end ;
   struct drm_mm_node *prev_scanned_node ;
   void (*color_adjust)(struct drm_mm_node * , unsigned long , unsigned long * ,
                        unsigned long * ) ;
};
struct drm_vma_offset_node {
   rwlock_t vm_lock ;
   struct drm_mm_node vm_node ;
   struct rb_node vm_rb ;
   struct rb_root vm_files ;
};
struct drm_vma_offset_manager {
   rwlock_t vm_lock ;
   struct rb_root vm_addr_space_rb ;
   struct drm_mm vm_addr_space_mm ;
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
struct drm_open_hash {
   struct hlist_head *table ;
   u8 order ;
};
typedef int drm_ioctl_t(struct drm_device * , void * , struct drm_file * );
struct drm_ioctl_desc {
   unsigned int cmd ;
   int flags ;
   drm_ioctl_t *func ;
   unsigned int cmd_drv ;
   char const *name ;
};
enum ldv_24240 {
    DRM_LIST_NONE = 0,
    DRM_LIST_FREE = 1,
    DRM_LIST_WAIT = 2,
    DRM_LIST_PEND = 3,
    DRM_LIST_PRIO = 4,
    DRM_LIST_RECLAIM = 5
} ;
struct drm_buf {
   int idx ;
   int total ;
   int order ;
   int used ;
   unsigned long offset ;
   void *address ;
   unsigned long bus_address ;
   struct drm_buf *next ;
   int volatile waiting ;
   int volatile pending ;
   struct drm_file *file_priv ;
   int context ;
   int while_locked ;
   enum ldv_24240 list ;
   int dev_priv_size ;
   void *dev_private ;
};
struct drm_freelist {
   int initialized ;
   atomic_t count ;
   struct drm_buf *next ;
   wait_queue_head_t waiting ;
   int low_mark ;
   int high_mark ;
   atomic_t wfh ;
   spinlock_t lock ;
};
struct drm_dma_handle {
   dma_addr_t busaddr ;
   void *vaddr ;
   size_t size ;
};
struct drm_buf_entry {
   int buf_size ;
   int buf_count ;
   struct drm_buf *buflist ;
   int seg_count ;
   int page_order ;
   struct drm_dma_handle **seglist ;
   struct drm_freelist freelist ;
};
struct drm_prime_file_private {
   struct list_head head ;
   struct mutex lock ;
};
struct drm_minor;
struct drm_master;
struct drm_file {
   unsigned char always_authenticated : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char is_master : 1 ;
   unsigned char stereo_allowed : 1 ;
   unsigned char universal_planes : 1 ;
   struct pid *pid ;
   kuid_t uid ;
   drm_magic_t magic ;
   struct list_head lhead ;
   struct drm_minor *minor ;
   unsigned long lock_count ;
   struct idr object_idr ;
   spinlock_t table_lock ;
   struct file *filp ;
   void *driver_priv ;
   struct drm_master *master ;
   struct list_head fbs ;
   struct mutex fbs_lock ;
   wait_queue_head_t event_wait ;
   struct list_head event_list ;
   int event_space ;
   struct drm_prime_file_private prime ;
};
struct drm_lock_data {
   struct drm_hw_lock *hw_lock ;
   struct drm_file *file_priv ;
   wait_queue_head_t lock_queue ;
   unsigned long lock_time ;
   spinlock_t spinlock ;
   uint32_t kernel_waiters ;
   uint32_t user_waiters ;
   int idle_has_lock ;
};
enum ldv_24266 {
    _DRM_DMA_USE_AGP = 1,
    _DRM_DMA_USE_SG = 2,
    _DRM_DMA_USE_FB = 4,
    _DRM_DMA_USE_PCI_RO = 8
} ;
struct drm_device_dma {
   struct drm_buf_entry bufs[23U] ;
   int buf_count ;
   struct drm_buf **buflist ;
   int seg_count ;
   int page_count ;
   unsigned long *pagelist ;
   unsigned long byte_count ;
   enum ldv_24266 flags ;
};
struct drm_agp_head {
   struct agp_kern_info agp_info ;
   struct list_head memory ;
   unsigned long mode ;
   struct agp_bridge_data *bridge ;
   int enabled ;
   int acquired ;
   unsigned long base ;
   int agp_mtrr ;
   int cant_use_aperture ;
   unsigned long page_mask ;
};
struct drm_sg_mem {
   unsigned long handle ;
   void *virtual ;
   int pages ;
   struct page **pagelist ;
   dma_addr_t *busaddr ;
};
struct drm_sigdata {
   int context ;
   struct drm_hw_lock *lock ;
};
struct drm_local_map {
   resource_size_t offset ;
   unsigned long size ;
   enum drm_map_type type ;
   enum drm_map_flags flags ;
   void *handle ;
   int mtrr ;
};
typedef struct drm_local_map drm_local_map_t;
struct dma_buf;
struct dma_buf_attachment;
struct drm_gem_object {
   struct kref refcount ;
   unsigned int handle_count ;
   struct drm_device *dev ;
   struct file *filp ;
   struct drm_vma_offset_node vma_node ;
   size_t size ;
   int name ;
   uint32_t read_domains ;
   uint32_t write_domain ;
   uint32_t pending_read_domains ;
   uint32_t pending_write_domain ;
   struct dma_buf *dma_buf ;
   struct dma_buf_attachment *import_attach ;
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
struct __anonstruct_sigset_t_185 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_185 sigset_t;
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
struct __anonstruct__kill_187 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_188 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_189 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_190 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_191 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_192 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_193 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_186 {
   int _pad[28U] ;
   struct __anonstruct__kill_187 _kill ;
   struct __anonstruct__timer_188 _timer ;
   struct __anonstruct__rt_189 _rt ;
   struct __anonstruct__sigchld_190 _sigchld ;
   struct __anonstruct__sigfault_191 _sigfault ;
   struct __anonstruct__sigpoll_192 _sigpoll ;
   struct __anonstruct__sigsys_193 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_186 _sifields ;
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
union __anonunion_ldv_31580_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_31588_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_31601_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_31602_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_31601_199 ldv_31601 ;
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
union __anonunion_ldv_31617_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_31580_196 ldv_31580 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_31588_197 ldv_31588 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_31602_198 ldv_31602 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion_ldv_31617_201 ldv_31617 ;
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
struct ww_class {
   atomic_long_t stamp ;
   struct lock_class_key acquire_key ;
   struct lock_class_key mutex_key ;
   char const *acquire_name ;
   char const *mutex_name ;
};
struct ww_mutex;
struct ww_acquire_ctx {
   struct task_struct *task ;
   unsigned long stamp ;
   unsigned int acquired ;
   unsigned int done_acquire ;
   struct ww_class *ww_class ;
   struct ww_mutex *contending_lock ;
   struct lockdep_map dep_map ;
   unsigned int deadlock_inject_interval ;
   unsigned int deadlock_inject_countdown ;
};
struct ww_mutex {
   struct mutex base ;
   struct ww_acquire_ctx *ctx ;
   struct ww_class *ww_class ;
};
struct drm_modeset_lock;
struct drm_modeset_acquire_ctx {
   struct ww_acquire_ctx ww_ctx ;
   struct drm_modeset_lock *contended ;
   struct list_head locked ;
};
struct drm_modeset_lock {
   struct ww_mutex mutex ;
   struct list_head head ;
};
struct drm_framebuffer;
struct drm_object_properties;
struct drm_mode_object {
   uint32_t id ;
   uint32_t type ;
   struct drm_object_properties *properties ;
};
struct drm_object_properties {
   int count ;
   uint32_t ids[24U] ;
   uint64_t values[24U] ;
};
struct drm_framebuffer_funcs {
   void (*destroy)(struct drm_framebuffer * ) ;
   int (*create_handle)(struct drm_framebuffer * , struct drm_file * , unsigned int * ) ;
   int (*dirty)(struct drm_framebuffer * , struct drm_file * , unsigned int , unsigned int ,
                struct drm_clip_rect * , unsigned int ) ;
};
struct drm_framebuffer {
   struct drm_device *dev ;
   struct kref refcount ;
   struct list_head head ;
   struct drm_mode_object base ;
   struct drm_framebuffer_funcs const *funcs ;
   unsigned int pitches[4U] ;
   unsigned int offsets[4U] ;
   unsigned int width ;
   unsigned int height ;
   unsigned int depth ;
   int bits_per_pixel ;
   int flags ;
   uint32_t pixel_format ;
   struct list_head filp_head ;
   void *helper_private ;
};
struct drm_property {
   struct list_head head ;
   struct drm_mode_object base ;
   uint32_t flags ;
   char name[32U] ;
   uint32_t num_values ;
   uint64_t *values ;
   struct drm_device *dev ;
   struct list_head enum_blob_list ;
};
struct drm_mode_config_funcs {
   struct drm_framebuffer *(*fb_create)(struct drm_device * , struct drm_file * ,
                                        struct drm_mode_fb_cmd2 * ) ;
   void (*output_poll_changed)(struct drm_device * ) ;
};
struct drm_mode_group {
   uint32_t num_crtcs ;
   uint32_t num_encoders ;
   uint32_t num_connectors ;
   uint32_t num_bridges ;
   uint32_t *id_list ;
};
struct drm_mode_config {
   struct mutex mutex ;
   struct drm_modeset_lock connection_mutex ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
   struct mutex idr_mutex ;
   struct idr crtc_idr ;
   struct mutex fb_lock ;
   int num_fb ;
   struct list_head fb_list ;
   int num_connector ;
   struct list_head connector_list ;
   int num_bridge ;
   struct list_head bridge_list ;
   int num_encoder ;
   struct list_head encoder_list ;
   int num_overlay_plane ;
   int num_total_plane ;
   struct list_head plane_list ;
   int num_crtc ;
   struct list_head crtc_list ;
   struct list_head property_list ;
   int min_width ;
   int min_height ;
   int max_width ;
   int max_height ;
   struct drm_mode_config_funcs const *funcs ;
   resource_size_t fb_base ;
   bool poll_enabled ;
   bool poll_running ;
   struct delayed_work output_poll_work ;
   struct list_head property_blob_list ;
   struct drm_property *edid_property ;
   struct drm_property *dpms_property ;
   struct drm_property *plane_type_property ;
   struct drm_property *dvi_i_subconnector_property ;
   struct drm_property *dvi_i_select_subconnector_property ;
   struct drm_property *tv_subconnector_property ;
   struct drm_property *tv_select_subconnector_property ;
   struct drm_property *tv_mode_property ;
   struct drm_property *tv_left_margin_property ;
   struct drm_property *tv_right_margin_property ;
   struct drm_property *tv_top_margin_property ;
   struct drm_property *tv_bottom_margin_property ;
   struct drm_property *tv_brightness_property ;
   struct drm_property *tv_contrast_property ;
   struct drm_property *tv_flicker_reduction_property ;
   struct drm_property *tv_overscan_property ;
   struct drm_property *tv_saturation_property ;
   struct drm_property *tv_hue_property ;
   struct drm_property *scaling_mode_property ;
   struct drm_property *dirty_info_property ;
   uint32_t preferred_depth ;
   uint32_t prefer_shadow ;
   bool async_page_flip ;
   uint32_t cursor_width ;
   uint32_t cursor_height ;
};
struct drm_master {
   struct kref refcount ;
   struct drm_minor *minor ;
   char *unique ;
   int unique_len ;
   int unique_size ;
   struct drm_open_hash magiclist ;
   struct list_head magicfree ;
   struct drm_lock_data lock ;
   void *driver_priv ;
};
struct drm_bus {
   int (*set_busid)(struct drm_device * , struct drm_master * ) ;
};
struct drm_driver {
   int (*load)(struct drm_device * , unsigned long ) ;
   int (*firstopen)(struct drm_device * ) ;
   int (*open)(struct drm_device * , struct drm_file * ) ;
   void (*preclose)(struct drm_device * , struct drm_file * ) ;
   void (*postclose)(struct drm_device * , struct drm_file * ) ;
   void (*lastclose)(struct drm_device * ) ;
   int (*unload)(struct drm_device * ) ;
   int (*suspend)(struct drm_device * , pm_message_t ) ;
   int (*resume)(struct drm_device * ) ;
   int (*dma_ioctl)(struct drm_device * , void * , struct drm_file * ) ;
   int (*dma_quiescent)(struct drm_device * ) ;
   int (*context_dtor)(struct drm_device * , int ) ;
   u32 (*get_vblank_counter)(struct drm_device * , int ) ;
   int (*enable_vblank)(struct drm_device * , int ) ;
   void (*disable_vblank)(struct drm_device * , int ) ;
   int (*device_is_agp)(struct drm_device * ) ;
   int (*get_scanout_position)(struct drm_device * , int , unsigned int , int * ,
                               int * , ktime_t * , ktime_t * ) ;
   int (*get_vblank_timestamp)(struct drm_device * , int , int * , struct timeval * ,
                               unsigned int ) ;
   irqreturn_t (*irq_handler)(int , void * ) ;
   void (*irq_preinstall)(struct drm_device * ) ;
   int (*irq_postinstall)(struct drm_device * ) ;
   void (*irq_uninstall)(struct drm_device * ) ;
   int (*master_create)(struct drm_device * , struct drm_master * ) ;
   void (*master_destroy)(struct drm_device * , struct drm_master * ) ;
   int (*master_set)(struct drm_device * , struct drm_file * , bool ) ;
   void (*master_drop)(struct drm_device * , struct drm_file * , bool ) ;
   int (*debugfs_init)(struct drm_minor * ) ;
   void (*debugfs_cleanup)(struct drm_minor * ) ;
   void (*gem_free_object)(struct drm_gem_object * ) ;
   int (*gem_open_object)(struct drm_gem_object * , struct drm_file * ) ;
   void (*gem_close_object)(struct drm_gem_object * , struct drm_file * ) ;
   int (*prime_handle_to_fd)(struct drm_device * , struct drm_file * , uint32_t ,
                             uint32_t , int * ) ;
   int (*prime_fd_to_handle)(struct drm_device * , struct drm_file * , int , uint32_t * ) ;
   struct dma_buf *(*gem_prime_export)(struct drm_device * , struct drm_gem_object * ,
                                       int ) ;
   struct drm_gem_object *(*gem_prime_import)(struct drm_device * , struct dma_buf * ) ;
   int (*gem_prime_pin)(struct drm_gem_object * ) ;
   void (*gem_prime_unpin)(struct drm_gem_object * ) ;
   struct sg_table *(*gem_prime_get_sg_table)(struct drm_gem_object * ) ;
   struct drm_gem_object *(*gem_prime_import_sg_table)(struct drm_device * , size_t ,
                                                       struct sg_table * ) ;
   void *(*gem_prime_vmap)(struct drm_gem_object * ) ;
   void (*gem_prime_vunmap)(struct drm_gem_object * , void * ) ;
   int (*gem_prime_mmap)(struct drm_gem_object * , struct vm_area_struct * ) ;
   void (*vgaarb_irq)(struct drm_device * , bool ) ;
   int (*dumb_create)(struct drm_file * , struct drm_device * , struct drm_mode_create_dumb * ) ;
   int (*dumb_map_offset)(struct drm_file * , struct drm_device * , uint32_t , uint64_t * ) ;
   int (*dumb_destroy)(struct drm_file * , struct drm_device * , uint32_t ) ;
   struct vm_operations_struct const *gem_vm_ops ;
   int major ;
   int minor ;
   int patchlevel ;
   char *name ;
   char *desc ;
   char *date ;
   u32 driver_features ;
   int dev_priv_size ;
   struct drm_ioctl_desc const *ioctls ;
   int num_ioctls ;
   struct file_operations const *fops ;
   struct drm_bus *bus ;
   struct list_head legacy_dev_list ;
};
struct drm_minor {
   int index ;
   int type ;
   struct device *kdev ;
   struct drm_device *dev ;
   struct dentry *debugfs_root ;
   struct list_head debugfs_list ;
   struct mutex debugfs_lock ;
   struct drm_master *master ;
   struct drm_mode_group mode_group ;
};
struct drm_vblank_crtc {
   struct drm_device *dev ;
   wait_queue_head_t queue ;
   struct timeval time[2U] ;
   struct timer_list disable_timer ;
   atomic_t count ;
   atomic_t refcount ;
   u32 last ;
   u32 last_wait ;
   unsigned int inmodeset ;
   int crtc ;
   bool enabled ;
};
struct usb_device;
struct drm_device {
   struct list_head legacy_dev_list ;
   int if_version ;
   struct kref ref ;
   struct device *dev ;
   struct drm_driver *driver ;
   void *dev_private ;
   struct drm_minor *control ;
   struct drm_minor *primary ;
   struct drm_minor *render ;
   atomic_t unplugged ;
   struct inode *anon_inode ;
   char *unique ;
   struct mutex struct_mutex ;
   struct mutex master_mutex ;
   int open_count ;
   spinlock_t buf_lock ;
   int buf_use ;
   atomic_t buf_alloc ;
   struct list_head filelist ;
   struct list_head maplist ;
   struct drm_open_hash map_hash ;
   struct list_head ctxlist ;
   struct mutex ctxlist_mutex ;
   struct idr ctx_idr ;
   struct list_head vmalist ;
   struct drm_device_dma *dma ;
   bool irq_enabled ;
   int irq ;
   long volatile context_flag ;
   int last_context ;
   bool vblank_disable_allowed ;
   struct drm_vblank_crtc *vblank ;
   spinlock_t vblank_time_lock ;
   spinlock_t vbl_lock ;
   u32 max_vblank_count ;
   struct list_head vblank_event_list ;
   spinlock_t event_lock ;
   struct drm_agp_head *agp ;
   struct pci_dev *pdev ;
   struct platform_device *platformdev ;
   struct usb_device *usbdev ;
   struct drm_sg_mem *sg ;
   unsigned int num_crtcs ;
   struct drm_sigdata sigdata ;
   sigset_t sigmask ;
   struct drm_local_map *agp_buffer_map ;
   unsigned int agp_buffer_token ;
   struct drm_mode_config mode_config ;
   struct mutex object_name_lock ;
   struct idr object_name_idr ;
   struct drm_vma_offset_manager *vma_offset_manager ;
   int switch_power_state ;
};
struct _drm_via_tex_region {
   unsigned char next ;
   unsigned char prev ;
   unsigned char inUse ;
   int age ;
};
typedef struct _drm_via_tex_region drm_via_tex_region_t;
struct _drm_via_sarea {
   unsigned int dirty ;
   unsigned int nbox ;
   struct drm_clip_rect boxes[8U] ;
   drm_via_tex_region_t texList[65U] ;
   int texAge ;
   int ctxOwner ;
   int vertexPrim ;
   char XvMCLockArea[384U] ;
   unsigned int XvMCDisplaying[10U] ;
   unsigned int XvMCSubPicOn[10U] ;
   unsigned int XvMCCtxNoGrabbed ;
   unsigned int pfCurrentOffset ;
};
typedef struct _drm_via_sarea drm_via_sarea_t;
enum ldv_27036 {
    VIA_IRQ_ABSOLUTE = 0,
    VIA_IRQ_RELATIVE = 1,
    VIA_IRQ_SIGNAL = 268435456,
    VIA_IRQ_FORCE_SEQUENCE = 536870912
} ;
typedef enum ldv_27036 via_irq_seq_type_t;
struct drm_via_wait_irq_request {
   unsigned int irq ;
   via_irq_seq_type_t type ;
   __u32 sequence ;
   __u32 signal ;
};
union drm_via_irqwait {
   struct drm_via_wait_irq_request request ;
   struct drm_wait_vblank_reply reply ;
};
typedef union drm_via_irqwait drm_via_irqwait_t;
enum ldv_27047 {
    no_sequence = 0,
    z_address = 1,
    dest_address = 2,
    tex_address = 3
} ;
typedef enum ldv_27047 drm_via_sequence_t;
struct __anonstruct_drm_via_state_t_208 {
   unsigned int texture ;
   uint32_t z_addr ;
   uint32_t d_addr ;
   uint32_t t_addr[2U][10U] ;
   uint32_t pitch[2U][10U] ;
   uint32_t height[2U][10U] ;
   uint32_t tex_level_lo[2U] ;
   uint32_t tex_level_hi[2U] ;
   uint32_t tex_palette_size[2U] ;
   uint32_t tex_npot[2U] ;
   drm_via_sequence_t unfinished ;
   int agp_texture ;
   int multitex ;
   struct drm_device *dev ;
   drm_local_map_t *map_cache ;
   uint32_t vertex_count ;
   int agp ;
   uint32_t const *buf_start ;
};
typedef struct __anonstruct_drm_via_state_t_208 drm_via_state_t;
struct _drm_via_descriptor;
enum ldv_27085 {
    dr_via_device_mapped = 0,
    dr_via_desc_pages_alloc = 1,
    dr_via_pages_locked = 2,
    dr_via_pages_alloc = 3,
    dr_via_sg_init = 4
} ;
struct _drm_via_sg_info {
   struct page **pages ;
   unsigned long num_pages ;
   struct _drm_via_descriptor **desc_pages ;
   int num_desc_pages ;
   int num_desc ;
   enum dma_data_direction direction ;
   unsigned char *bounce_buffer ;
   dma_addr_t chain_start ;
   uint32_t free_on_sequence ;
   unsigned int descriptors_per_page ;
   int aborted ;
   enum ldv_27085 state ;
};
typedef struct _drm_via_sg_info drm_via_sg_info_t;
struct _drm_via_blitq {
   struct drm_device *dev ;
   uint32_t cur_blit_handle ;
   uint32_t done_blit_handle ;
   unsigned int serviced ;
   unsigned int head ;
   unsigned int cur ;
   unsigned int num_free ;
   unsigned int num_outstanding ;
   unsigned long end ;
   int aborting ;
   int is_active ;
   drm_via_sg_info_t *blits[8U] ;
   spinlock_t blit_lock ;
   wait_queue_head_t blit_queue[8U] ;
   wait_queue_head_t busy_queue ;
   struct work_struct wq ;
   struct timer_list poll_timer ;
};
typedef struct _drm_via_blitq drm_via_blitq_t;
struct drm_via_ring_buffer {
   drm_local_map_t map ;
   char *virtual_start ;
};
typedef struct drm_via_ring_buffer drm_via_ring_buffer_t;
typedef uint32_t maskarray_t[5U];
struct drm_via_irq {
   atomic_t irq_received ;
   uint32_t pending_mask ;
   uint32_t enable_mask ;
   wait_queue_head_t irq_queue ;
};
typedef struct drm_via_irq drm_via_irq_t;
struct drm_via_private {
   drm_via_sarea_t *sarea_priv ;
   drm_local_map_t *sarea ;
   drm_local_map_t *fb ;
   drm_local_map_t *mmio ;
   unsigned long agpAddr ;
   wait_queue_head_t decoder_queue[5U] ;
   char *dma_ptr ;
   unsigned int dma_low ;
   unsigned int dma_high ;
   unsigned int dma_offset ;
   uint32_t dma_wrap ;
   uint32_t volatile *last_pause_ptr ;
   uint32_t volatile *hw_addr_ptr ;
   drm_via_ring_buffer_t ring ;
   struct timeval last_vblank ;
   int last_vblank_valid ;
   unsigned int usec_per_vblank ;
   atomic_t vbl_received ;
   drm_via_state_t hc_state ;
   char pci_buf[60000U] ;
   uint32_t const *fire_offsets[1024U] ;
   uint32_t num_fire_offsets ;
   int chipset ;
   drm_via_irq_t via_irqs[4U] ;
   unsigned int num_irqs ;
   maskarray_t *irq_masks ;
   uint32_t irq_enable_mask ;
   uint32_t irq_pending_mask ;
   int *irq_map ;
   unsigned int idle_fault ;
   int vram_initialized ;
   struct drm_mm vram_mm ;
   int agp_initialized ;
   struct drm_mm agp_mm ;
   struct idr object_idr ;
   unsigned long vram_offset ;
   unsigned long agp_offset ;
   drm_via_blitq_t blit_queues[2U] ;
   uint32_t dma_diff ;
};
typedef struct drm_via_private drm_via_private_t;
enum hrtimer_restart;
struct via_file_private {
   struct list_head obj_list ;
};
enum hrtimer_restart;
struct drm_hash_item {
   struct hlist_node head ;
   unsigned long key ;
};
struct drm_map_list {
   struct list_head head ;
   struct drm_hash_item hash ;
   struct drm_local_map *map ;
   uint64_t user_token ;
   struct drm_master *master ;
};
enum ldv_27006 {
    VIA_INIT_MAP = 1,
    VIA_CLEANUP_MAP = 2
} ;
struct _drm_via_init {
   enum ldv_27006 func ;
   unsigned long sarea_priv_offset ;
   unsigned long fb_offset ;
   unsigned long mmio_offset ;
   unsigned long agpAddr ;
};
typedef struct _drm_via_init drm_via_init_t;
enum hrtimer_restart;
enum drm_mm_search_flags {
    DRM_MM_SEARCH_DEFAULT = 0,
    DRM_MM_SEARCH_BEST = 1,
    DRM_MM_SEARCH_BELOW = 2
} ;
enum drm_mm_allocator_flags {
    DRM_MM_CREATE_DEFAULT = 0,
    DRM_MM_CREATE_TOP = 1
} ;
struct __anonstruct_drm_via_agp_t_205 {
   __u32 offset ;
   __u32 size ;
};
typedef struct __anonstruct_drm_via_agp_t_205 drm_via_agp_t;
struct __anonstruct_drm_via_fb_t_206 {
   __u32 offset ;
   __u32 size ;
};
typedef struct __anonstruct_drm_via_fb_t_206 drm_via_fb_t;
struct __anonstruct_drm_via_mem_t_207 {
   __u32 context ;
   __u32 type ;
   __u32 size ;
   unsigned long index ;
   unsigned long offset ;
};
typedef struct __anonstruct_drm_via_mem_t_207 drm_via_mem_t;
struct via_memblock {
   struct drm_mm_node mm_node ;
   struct list_head owner_list ;
};
enum hrtimer_restart;
enum ldv_27012 {
    VIA_INIT_DMA = 1,
    VIA_CLEANUP_DMA = 2,
    VIA_DMA_INITIALIZED = 3
} ;
struct _drm_via_dma_init {
   enum ldv_27012 func ;
   unsigned long offset ;
   unsigned long size ;
   unsigned long reg_pause_addr ;
};
typedef struct _drm_via_dma_init drm_via_dma_init_t;
struct _drm_via_cmdbuffer {
   char *buf ;
   unsigned long size ;
};
typedef struct _drm_via_cmdbuffer drm_via_cmdbuffer_t;
enum ldv_27034 {
    VIA_CMDBUF_SPACE = 1,
    VIA_CMDBUF_LAG = 2
} ;
struct _drm_via_cmdbuf_size {
   enum ldv_27034 func ;
   int wait ;
   __u32 size ;
};
typedef struct _drm_via_cmdbuf_size drm_via_cmdbuf_size_t;
enum hrtimer_restart;
enum ldv_27177 {
    state_command = 0,
    state_header2 = 1,
    state_header1 = 2,
    state_vheader5 = 3,
    state_vheader6 = 4,
    state_error = 5
} ;
typedef enum ldv_27177 verifier_state_t;
enum ldv_27179 {
    no_check = 0,
    check_for_header2 = 1,
    check_for_header1 = 2,
    check_for_header2_err = 3,
    check_for_header1_err = 4,
    check_for_fire = 5,
    check_z_buffer_addr0 = 6,
    check_z_buffer_addr1 = 7,
    check_z_buffer_addr_mode = 8,
    check_destination_addr0 = 9,
    check_destination_addr1 = 10,
    check_destination_addr_mode = 11,
    check_for_dummy = 12,
    check_for_dd = 13,
    check_texture_addr0 = 14,
    check_texture_addr1 = 15,
    check_texture_addr2 = 16,
    check_texture_addr3 = 17,
    check_texture_addr4 = 18,
    check_texture_addr5 = 19,
    check_texture_addr6 = 20,
    check_texture_addr7 = 21,
    check_texture_addr8 = 22,
    check_texture_addr_mode = 23,
    check_for_vertex_count = 24,
    check_number_texunits = 25,
    forbidden_command = 26
} ;
typedef enum ldv_27179 hazard_t;
struct __anonstruct_hz_init_t_209 {
   unsigned int code ;
   hazard_t hz ;
};
typedef struct __anonstruct_hz_init_t_209 hz_init_t;
enum hrtimer_restart;
enum ldv_27009 {
    VIA_FUTEX_WAIT = 0,
    VIA_FUTEX_WAKE = 1
} ;
struct _drm_via_futex {
   enum ldv_27009 func ;
   __u32 ms ;
   __u32 lock ;
   __u32 val ;
};
typedef struct _drm_via_futex drm_via_futex_t;
enum hrtimer_restart;
struct drm_via_blitsync {
   __u32 sync_handle ;
   unsigned int engine ;
};
typedef struct drm_via_blitsync drm_via_blitsync_t;
struct drm_via_dmablit {
   __u32 num_lines ;
   __u32 line_length ;
   __u32 fb_addr ;
   __u32 fb_stride ;
   unsigned char *mem_addr ;
   __u32 mem_stride ;
   __u32 flags ;
   int to_fb ;
   drm_via_blitsync_t sync ;
};
typedef struct drm_via_dmablit drm_via_dmablit_t;
struct _drm_via_descriptor {
   uint32_t mem_addr ;
   uint32_t dev_addr ;
   uint32_t size ;
   uint32_t next ;
};
typedef struct _drm_via_descriptor drm_via_descriptor_t;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
   union __anonunion_ldv_14126_140 __annonCompField38 ;
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
   union __anonunion_ldv_14120_138 __annonCompField37 ;
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void do_gettimeofday(struct timeval * ) ;
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
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
int LDV_IN_INTERRUPT = 1;
extern void drm_ut_debug_printk(char const * , char const * , ...) ;
extern int drm_err(char const * , char const * , ...) ;
extern long schedule_timeout(long ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern bool drm_handle_vblank(struct drm_device * , int ) ;
extern unsigned int drm_debug ;
int via_wait_irq(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
u32 via_get_vblank_counter(struct drm_device *dev , int crtc ) ;
int via_enable_vblank(struct drm_device *dev , int crtc ) ;
void via_disable_vblank(struct drm_device *dev , int crtc ) ;
irqreturn_t via_driver_irq_handler(int irq , void *arg ) ;
void via_driver_irq_preinstall(struct drm_device *dev ) ;
int via_driver_irq_postinstall(struct drm_device *dev ) ;
void via_driver_irq_uninstall(struct drm_device *dev ) ;
void via_dmablit_handler(struct drm_device *dev , int engine , int from_irq ) ;
static maskarray_t via_pro_group_a_irqs[4U][5U] = { { { 2048U},
     { 512U},
     { 976U},
     { 32784U},
     { 0U}},
   { { 33554432U},
     { 1024U},
     { 5072U},
     { 32784U},
     { 0U}},
   { { 2097152U},
     { 32U},
     { 3728U},
     { 12U},
     { 8U}},
   { { 8388608U},
     { 128U},
     { 3732U},
     { 12U},
     { 8U}}};
static int via_num_pro_group_a = 4;
static int via_irqmap_pro_group_a[6U] = { 0, 1, -1, 2,
        -1, 3};
static maskarray_t via_unichrome_irqs[2U][5U] = { { { 2097152U},
     { 32U},
     { 3728U},
     { 12U},
     { 8U}},
   { { 8388608U},
     { 128U},
     { 3732U},
     { 12U},
     { 8U}}};
static int via_num_unichrome = 2;
static int via_irqmap_unichrome[6U] = { -1, -1, -1, 0,
        -1, 1};
static unsigned int time_diff(struct timeval *now , struct timeval *then )
{
  {
  return (now->tv_usec >= then->tv_usec ? (unsigned int )now->tv_usec - (unsigned int )then->tv_usec : ((unsigned int )now->tv_usec - (unsigned int )then->tv_usec) + 1000000U);
}
}
u32 via_get_vblank_counter(struct drm_device *dev , int crtc )
{
  drm_via_private_t *dev_priv ;
  int tmp ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if (crtc != 0) {
    return (0U);
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& dev_priv->vbl_received));
  return ((u32 )tmp);
}
}
irqreturn_t via_driver_irq_handler(int irq , void *arg )
{
  struct drm_device *dev ;
  drm_via_private_t *dev_priv ;
  u32 status ;
  int handled ;
  struct timeval cur_vblank ;
  drm_via_irq_t *cur_irq ;
  int i ;
  unsigned int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  dev = (struct drm_device *)arg;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  handled = 0;
  cur_irq = (drm_via_irq_t *)(& dev_priv->via_irqs);
  status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
  if ((status & 8U) != 0U) {
    atomic_inc(& dev_priv->vbl_received);
    tmp___0 = atomic_read((atomic_t const *)(& dev_priv->vbl_received));
    if ((tmp___0 & 15) == 0) {
      do_gettimeofday(& cur_vblank);
      if (dev_priv->last_vblank_valid != 0) {
        tmp = time_diff(& cur_vblank, & dev_priv->last_vblank);
        dev_priv->usec_per_vblank = tmp >> 4;
      } else {
      }
      dev_priv->last_vblank = cur_vblank;
      dev_priv->last_vblank_valid = 1;
    } else {
    }
    tmp___2 = atomic_read((atomic_t const *)(& dev_priv->vbl_received));
    if ((tmp___2 & 255) == 0) {
      tmp___1 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
      if (tmp___1 != 0L) {
        drm_ut_debug_printk("via_driver_irq_handler", "US per vblank is: %u\n", dev_priv->usec_per_vblank);
      } else {
      }
    } else {
    }
    drm_handle_vblank(dev, 0);
    handled = 1;
  } else {
  }
  i = 0;
  goto ldv_37484;
  ldv_37483: ;
  if ((cur_irq->pending_mask & status) != 0U) {
    atomic_inc(& cur_irq->irq_received);
    __wake_up(& cur_irq->irq_queue, 3U, 1, (void *)0);
    handled = 1;
    if (*(dev_priv->irq_map + 3UL) == i) {
      via_dmablit_handler(dev, 0, 1);
    } else
    if (*(dev_priv->irq_map + 5UL) == i) {
      via_dmablit_handler(dev, 1, 1);
    } else {
    }
  } else {
  }
  cur_irq = cur_irq + 1;
  i = i + 1;
  ldv_37484: ;
  if ((unsigned int )i < dev_priv->num_irqs) {
    goto ldv_37483;
  } else {
  }
  writel(status, (void volatile *)(dev_priv->mmio)->handle + 512U);
  if (handled != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
__inline static void viadrv_acknowledge_irqs(drm_via_private_t *dev_priv )
{
  u32 status ;
  {
  if ((unsigned long )dev_priv != (unsigned long )((drm_via_private_t *)0)) {
    status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
    writel(dev_priv->irq_pending_mask | status, (void volatile *)(dev_priv->mmio)->handle + 512U);
  } else {
  }
  return;
}
}
int via_enable_vblank(struct drm_device *dev , int crtc )
{
  drm_via_private_t *dev_priv ;
  u32 status ;
  unsigned char tmp ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if (crtc != 0) {
    drm_err("via_enable_vblank", "%s:  bad crtc %d\n", "via_enable_vblank", crtc);
    return (-22);
  } else {
  }
  status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
  writel(status | 524288U, (void volatile *)(dev_priv->mmio)->handle + 512U);
  writeb(17, (void volatile *)(dev_priv->mmio)->handle + 33748U);
  tmp = readb((void const volatile *)(dev_priv->mmio)->handle + 33749U);
  writeb((int )((unsigned int )tmp | 48U), (void volatile *)(dev_priv->mmio)->handle + 33749U);
  return (0);
}
}
void via_disable_vblank(struct drm_device *dev , int crtc )
{
  drm_via_private_t *dev_priv ;
  u32 status ;
  unsigned char tmp ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
  writel(status & 4294443007U, (void volatile *)(dev_priv->mmio)->handle + 512U);
  writeb(17, (void volatile *)(dev_priv->mmio)->handle + 33748U);
  tmp = readb((void const volatile *)(dev_priv->mmio)->handle + 33749U);
  writeb((int )tmp & 207, (void volatile *)(dev_priv->mmio)->handle + 33749U);
  if (crtc != 0) {
    drm_err("via_disable_vblank", "%s:  bad crtc %d\n", "via_disable_vblank", crtc);
  } else {
  }
  return;
}
}
static int via_driver_irq_wait(struct drm_device *dev , unsigned int irq , int force_sequence ,
                               unsigned int *sequence )
{
  drm_via_private_t *dev_priv ;
  unsigned int cur_irq_sequence ;
  drm_via_irq_t *cur_irq ;
  int ret ;
  maskarray_t *masks ;
  int real_irq ;
  long tmp ;
  wait_queue_t entry ;
  struct task_struct *tmp___0 ;
  unsigned long end ;
  struct task_struct *tmp___1 ;
  unsigned int tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  wait_queue_t entry___0 ;
  struct task_struct *tmp___7 ;
  unsigned long end___0 ;
  struct task_struct *tmp___8 ;
  int tmp___9 ;
  struct task_struct *tmp___10 ;
  int tmp___11 ;
  struct task_struct *tmp___12 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  ret = 0;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_driver_irq_wait", "\n");
  } else {
  }
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0)) {
    drm_err("via_driver_irq_wait", "called with no initialization\n");
    return (-22);
  } else {
  }
  if (irq > 5U) {
    drm_err("via_driver_irq_wait", "Trying to wait on unknown irq %d\n", irq);
    return (-22);
  } else {
  }
  real_irq = *(dev_priv->irq_map + (unsigned long )irq);
  if (real_irq < 0) {
    drm_err("via_driver_irq_wait", "Video IRQ %d not available on this hardware.\n",
            irq);
    return (-22);
  } else {
  }
  masks = dev_priv->irq_masks;
  cur_irq = (drm_via_irq_t *)(& dev_priv->via_irqs) + (unsigned long )real_irq;
  if ((*(masks + (unsigned long )real_irq))[2] != 0U && force_sequence == 0) {
    tmp___0 = get_current();
    entry.flags = 0U;
    entry.private = (void *)tmp___0;
    entry.func = & default_wake_function;
    entry.task_list.next = (struct list_head *)0;
    entry.task_list.prev = (struct list_head *)0;
    end = (unsigned long )jiffies + 750UL;
    add_wait_queue(& cur_irq->irq_queue, & entry);
    ldv_37526:
    tmp___1 = get_current();
    tmp___1->state = 1L;
    tmp___2 = readl((void const volatile *)(dev_priv->mmio)->handle + (unsigned long )(*(masks + (unsigned long )irq))[2]);
    if ((tmp___2 & (*(masks + (unsigned long )irq))[3]) == (*(masks + (unsigned long )irq))[4]) {
      goto ldv_37519;
    } else {
    }
    if ((long )((unsigned long )jiffies - end) >= 0L) {
      ret = -16;
      goto ldv_37519;
    } else {
    }
    schedule_timeout(2L);
    tmp___3 = get_current();
    tmp___4 = signal_pending(tmp___3);
    if (tmp___4 != 0) {
      ret = -4;
      goto ldv_37519;
    } else {
    }
    goto ldv_37526;
    ldv_37519:
    tmp___5 = get_current();
    tmp___5->state = 0L;
    remove_wait_queue(& cur_irq->irq_queue, & entry);
    tmp___6 = atomic_read((atomic_t const *)(& cur_irq->irq_received));
    cur_irq_sequence = (unsigned int )tmp___6;
  } else {
    tmp___7 = get_current();
    entry___0.flags = 0U;
    entry___0.private = (void *)tmp___7;
    entry___0.func = & default_wake_function;
    entry___0.task_list.next = (struct list_head *)0;
    entry___0.task_list.prev = (struct list_head *)0;
    end___0 = (unsigned long )jiffies + 750UL;
    add_wait_queue(& cur_irq->irq_queue, & entry___0);
    ldv_37536:
    tmp___8 = get_current();
    tmp___8->state = 1L;
    tmp___9 = atomic_read((atomic_t const *)(& cur_irq->irq_received));
    cur_irq_sequence = (unsigned int )tmp___9;
    if (cur_irq_sequence - *sequence <= 8388608U) {
      goto ldv_37529;
    } else {
    }
    if ((long )((unsigned long )jiffies - end___0) >= 0L) {
      ret = -16;
      goto ldv_37529;
    } else {
    }
    schedule_timeout(2L);
    tmp___10 = get_current();
    tmp___11 = signal_pending(tmp___10);
    if (tmp___11 != 0) {
      ret = -4;
      goto ldv_37529;
    } else {
    }
    goto ldv_37536;
    ldv_37529:
    tmp___12 = get_current();
    tmp___12->state = 0L;
    remove_wait_queue(& cur_irq->irq_queue, & entry___0);
  }
  *sequence = cur_irq_sequence;
  return (ret);
}
}
void via_driver_irq_preinstall(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  u32 status ;
  drm_via_irq_t *cur_irq ;
  int i ;
  long tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_driver_irq_preinstall", "dev_priv: %p\n", dev_priv);
  } else {
  }
  if ((unsigned long )dev_priv != (unsigned long )((drm_via_private_t *)0)) {
    cur_irq = (drm_via_irq_t *)(& dev_priv->via_irqs);
    dev_priv->irq_enable_mask = 524288U;
    dev_priv->irq_pending_mask = 8U;
    if (dev_priv->chipset == 1 || dev_priv->chipset == 2) {
      dev_priv->irq_masks = (maskarray_t *)(& via_pro_group_a_irqs);
      dev_priv->num_irqs = (unsigned int )via_num_pro_group_a;
      dev_priv->irq_map = (int *)(& via_irqmap_pro_group_a);
    } else {
      dev_priv->irq_masks = (maskarray_t *)(& via_unichrome_irqs);
      dev_priv->num_irqs = (unsigned int )via_num_unichrome;
      dev_priv->irq_map = (int *)(& via_irqmap_unichrome);
    }
    i = 0;
    goto ldv_37547;
    ldv_37546:
    atomic_set(& cur_irq->irq_received, 0);
    cur_irq->enable_mask = (*(dev_priv->irq_masks + (unsigned long )i))[0];
    cur_irq->pending_mask = (*(dev_priv->irq_masks + (unsigned long )i))[1];
    __init_waitqueue_head(& cur_irq->irq_queue, "&cur_irq->irq_queue", & __key);
    dev_priv->irq_enable_mask = dev_priv->irq_enable_mask | cur_irq->enable_mask;
    dev_priv->irq_pending_mask = dev_priv->irq_pending_mask | cur_irq->pending_mask;
    cur_irq = cur_irq + 1;
    tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
    if (tmp___0 != 0L) {
      drm_ut_debug_printk("via_driver_irq_preinstall", "Initializing IRQ %d\n", i);
    } else {
    }
    i = i + 1;
    ldv_37547: ;
    if ((unsigned int )i < dev_priv->num_irqs) {
      goto ldv_37546;
    } else {
    }
    dev_priv->last_vblank_valid = 0;
    status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
    writel(~ dev_priv->irq_enable_mask & status, (void volatile *)(dev_priv->mmio)->handle + 512U);
    viadrv_acknowledge_irqs(dev_priv);
  } else {
  }
  return;
}
}
int via_driver_irq_postinstall(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  u32 status ;
  long tmp ;
  unsigned char tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_driver_irq_postinstall", "via_driver_irq_postinstall\n");
  } else {
  }
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0)) {
    return (-22);
  } else {
  }
  status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
  writel((dev_priv->irq_enable_mask | status) | 2147483648U, (void volatile *)(dev_priv->mmio)->handle + 512U);
  writeb(17, (void volatile *)(dev_priv->mmio)->handle + 33748U);
  tmp___0 = readb((void const volatile *)(dev_priv->mmio)->handle + 33749U);
  writeb((int )((unsigned int )tmp___0 | 48U), (void volatile *)(dev_priv->mmio)->handle + 33749U);
  return (0);
}
}
void via_driver_irq_uninstall(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  u32 status ;
  long tmp ;
  unsigned char tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_driver_irq_uninstall", "\n");
  } else {
  }
  if ((unsigned long )dev_priv != (unsigned long )((drm_via_private_t *)0)) {
    writeb(17, (void volatile *)(dev_priv->mmio)->handle + 33748U);
    tmp___0 = readb((void const volatile *)(dev_priv->mmio)->handle + 33749U);
    writeb((int )tmp___0 & 207, (void volatile *)(dev_priv->mmio)->handle + 33749U);
    status = readl((void const volatile *)(dev_priv->mmio)->handle + 512U);
    writel(~ (dev_priv->irq_enable_mask | 524288U) & status, (void volatile *)(dev_priv->mmio)->handle + 512U);
  } else {
  }
  return;
}
}
int via_wait_irq(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_irqwait_t *irqwait ;
  struct timeval now ;
  int ret ;
  drm_via_private_t *dev_priv ;
  drm_via_irq_t *cur_irq ;
  int force_sequence ;
  int tmp ;
  {
  irqwait = (drm_via_irqwait_t *)data;
  ret = 0;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  cur_irq = (drm_via_irq_t *)(& dev_priv->via_irqs);
  if (irqwait->request.irq >= dev_priv->num_irqs) {
    drm_err("via_wait_irq", "Trying to wait on unknown irq %d\n", irqwait->request.irq);
    return (-22);
  } else {
  }
  cur_irq = cur_irq + (unsigned long )irqwait->request.irq;
  switch ((unsigned int )irqwait->request.type & 268435455U) {
  case 1U:
  tmp = atomic_read((atomic_t const *)(& cur_irq->irq_received));
  irqwait->request.sequence = irqwait->request.sequence + (__u32 )tmp;
  irqwait->request.type = (via_irq_seq_type_t )((unsigned int )irqwait->request.type & 4294967294U);
  case 0U: ;
  goto ldv_37575;
  default: ;
  return (-22);
  }
  ldv_37575: ;
  if (((unsigned int )irqwait->request.type & 268435456U) != 0U) {
    drm_err("via_wait_irq", "Signals on Via IRQs not implemented yet.\n");
    return (-22);
  } else {
  }
  force_sequence = (int )irqwait->request.type & 536870912;
  ret = via_driver_irq_wait(dev, irqwait->request.irq, force_sequence, & irqwait->request.sequence);
  do_gettimeofday(& now);
  irqwait->reply.tval_sec = now.tv_sec;
  irqwait->reply.tval_usec = now.tv_usec;
  return (ret);
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
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_kmem_cache_alloc_36(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_32(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_timer_1_0 ;
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct file *via_driver_fops_group2 ;
struct timer_list *ldv_timer_list_1_1 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_timer_1_2 ;
int ldv_state_variable_3 ;
struct drm_device *driver_group1 ;
int ldv_timer_1_1 ;
int ldv_state_variable_2 ;
struct timer_list *ldv_timer_list_1_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
struct inode *via_driver_fops_group1 ;
struct drm_file *driver_group0 ;
void timer_init_1(void) ;
void ldv_file_operations_3(void) ;
void ldv_initialize_drm_driver_2(void) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern long drm_ioctl(struct file * , unsigned int , unsigned long ) ;
extern long drm_compat_ioctl(struct file * , unsigned int , unsigned long ) ;
extern int drm_open(struct inode * , struct file * ) ;
extern int drm_release(struct inode * , struct file * ) ;
extern int drm_mmap(struct file * , struct vm_area_struct * ) ;
extern unsigned int drm_poll(struct file * , struct poll_table_struct * ) ;
extern int drm_pci_init(struct drm_driver * , struct pci_driver * ) ;
extern void drm_pci_exit(struct drm_driver * , struct pci_driver * ) ;
struct drm_ioctl_desc const via_ioctls[16U] ;
int via_max_ioctl ;
int via_driver_load(struct drm_device *dev , unsigned long chipset ) ;
int via_driver_unload(struct drm_device *dev ) ;
int via_final_context(struct drm_device *dev , int context ) ;
void via_init_command_verifier(void) ;
int via_driver_dma_quiescent(struct drm_device *dev ) ;
void via_reclaim_buffers_locked(struct drm_device *dev , struct drm_file *file ) ;
void via_lastclose(struct drm_device *dev ) ;
static int via_driver_open(struct drm_device *dev , struct drm_file *file )
{
  struct via_file_private *file_priv ;
  long tmp ;
  void *tmp___0 ;
  {
  tmp = ldv__builtin_expect((drm_debug & 2U) != 0U, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_driver_open", "\n");
  } else {
  }
  tmp___0 = kmalloc(16UL, 208U);
  file_priv = (struct via_file_private *)tmp___0;
  if ((unsigned long )file_priv == (unsigned long )((struct via_file_private *)0)) {
    return (-12);
  } else {
  }
  file->driver_priv = (void *)file_priv;
  INIT_LIST_HEAD(& file_priv->obj_list);
  return (0);
}
}
static void via_driver_postclose(struct drm_device *dev , struct drm_file *file )
{
  struct via_file_private *file_priv ;
  {
  file_priv = (struct via_file_private *)file->driver_priv;
  kfree((void const *)file_priv);
  return;
}
}
static struct pci_device_id pciidlist[10U] =
  { {4358U, 12322U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 12568U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4358U, 12578U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 29189U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 12552U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 13124U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 13123U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 12848U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4358U, 12631U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static struct file_operations const via_driver_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, & drm_poll, & drm_ioctl,
    & drm_compat_ioctl, & drm_mmap, & drm_open, 0, & drm_release, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
static struct drm_driver driver =
     {& via_driver_load, 0, & via_driver_open, & via_reclaim_buffers_locked, & via_driver_postclose,
    & via_lastclose, & via_driver_unload, 0, 0, 0, & via_driver_dma_quiescent, & via_final_context,
    & via_get_vblank_counter, & via_enable_vblank, & via_disable_vblank, 0, 0, 0,
    & via_driver_irq_handler, & via_driver_irq_preinstall, & via_driver_irq_postinstall,
    & via_driver_irq_uninstall, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 1, (char *)"via", (char *)"VIA Unichrome / Pro",
    (char *)"20070202", 193U, 0, (struct drm_ioctl_desc const *)(& via_ioctls),
    0, & via_driver_fops, 0, {0, 0}};
static struct pci_driver via_pci_driver =
     {{0, 0}, "via", (struct pci_device_id const *)(& pciidlist), 0, 0, 0, 0, 0, 0,
    0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                    {0, 0}}};
static int via_init(void)
{
  int tmp ;
  {
  driver.num_ioctls = via_max_ioctl;
  via_init_command_verifier();
  tmp = drm_pci_init(& driver, & via_pci_driver);
  return (tmp);
}
}
static void via_exit(void)
{
  {
  drm_pci_exit(& driver, & via_pci_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_release_2(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_file_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  via_driver_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  via_driver_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_initialize_drm_driver_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(744UL);
  driver_group0 = (struct drm_file *)tmp;
  tmp___0 = ldv_zalloc(2992UL);
  driver_group1 = (struct drm_device *)tmp___0;
  return;
}
}
int main(void)
{
  struct vm_area_struct *ldvarg7 ;
  void *tmp ;
  loff_t ldvarg3 ;
  loff_t tmp___0 ;
  unsigned long ldvarg0 ;
  unsigned long tmp___1 ;
  unsigned long ldvarg5 ;
  unsigned long tmp___2 ;
  unsigned int ldvarg6 ;
  unsigned int tmp___3 ;
  unsigned int ldvarg1 ;
  unsigned int tmp___4 ;
  struct poll_table_struct *ldvarg4 ;
  void *tmp___5 ;
  int ldvarg2 ;
  int tmp___6 ;
  int ldvarg8 ;
  int tmp___7 ;
  int ldvarg11 ;
  int tmp___8 ;
  unsigned long ldvarg14 ;
  unsigned long tmp___9 ;
  int ldvarg13 ;
  int tmp___10 ;
  int ldvarg10 ;
  int tmp___11 ;
  void *ldvarg12 ;
  void *tmp___12 ;
  int ldvarg9 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = ldv_zalloc(184UL);
  ldvarg7 = (struct vm_area_struct *)tmp;
  tmp___0 = __VERIFIER_nondet_loff_t();
  ldvarg3 = tmp___0;
  tmp___1 = __VERIFIER_nondet_ulong();
  ldvarg0 = tmp___1;
  tmp___2 = __VERIFIER_nondet_ulong();
  ldvarg5 = tmp___2;
  tmp___3 = __VERIFIER_nondet_uint();
  ldvarg6 = tmp___3;
  tmp___4 = __VERIFIER_nondet_uint();
  ldvarg1 = tmp___4;
  tmp___5 = ldv_zalloc(16UL);
  ldvarg4 = (struct poll_table_struct *)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg8 = tmp___7;
  tmp___8 = __VERIFIER_nondet_int();
  ldvarg11 = tmp___8;
  tmp___9 = __VERIFIER_nondet_ulong();
  ldvarg14 = tmp___9;
  tmp___10 = __VERIFIER_nondet_int();
  ldvarg13 = tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg10 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg12 = tmp___12;
  tmp___13 = __VERIFIER_nondet_int();
  ldvarg9 = tmp___13;
  ldv_initialize();
  timer_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_37567:
  tmp___14 = __VERIFIER_nondet_int();
  switch (tmp___14) {
  case 0: ;
  goto ldv_37530;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      via_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_37534;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = via_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_initialize_drm_driver_2();
        ldv_state_variable_3 = 1;
        ldv_file_operations_3();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_37534;
    default:
    ldv_stop();
    }
    ldv_37534: ;
  } else {
  }
  goto ldv_37530;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      drm_mmap(via_driver_fops_group2, ldvarg7);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      drm_mmap(via_driver_fops_group2, ldvarg7);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_37539;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      drm_release(via_driver_fops_group1, via_driver_fops_group2);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_37539;
    case 2: ;
    if (ldv_state_variable_3 == 2) {
      drm_compat_ioctl(via_driver_fops_group2, ldvarg6, ldvarg5);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_37539;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      drm_poll(via_driver_fops_group2, ldvarg4);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      drm_poll(via_driver_fops_group2, ldvarg4);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_37539;
    case 4: ;
    if (ldv_state_variable_3 == 2) {
      noop_llseek(via_driver_fops_group2, ldvarg3, ldvarg2);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_37539;
    case 5: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_1 = drm_open(via_driver_fops_group1, via_driver_fops_group2);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_37539;
    case 6: ;
    if (ldv_state_variable_3 == 2) {
      drm_ioctl(via_driver_fops_group2, ldvarg1, ldvarg0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_37539;
    default:
    ldv_stop();
    }
    ldv_37539: ;
  } else {
  }
  goto ldv_37530;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_irq_preinstall(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_irq_preinstall(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      via_lastclose(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_lastclose(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 2: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_load(driver_group1, ldvarg14);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_load(driver_group1, ldvarg14);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 3: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_irq_uninstall(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_irq_uninstall(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      via_get_vblank_counter(driver_group1, ldvarg13);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_get_vblank_counter(driver_group1, ldvarg13);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 5: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_postclose(driver_group1, driver_group0);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_postclose(driver_group1, driver_group0);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 6: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_irq_postinstall(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_irq_postinstall(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 7: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_2 = via_driver_open(driver_group1, driver_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_37549;
    case 8: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_irq_handler(ldvarg11, ldvarg12);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_irq_handler(ldvarg11, ldvarg12);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 9: ;
    if (ldv_state_variable_2 == 1) {
      via_enable_vblank(driver_group1, ldvarg10);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_enable_vblank(driver_group1, ldvarg10);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 10: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_dma_quiescent(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_dma_quiescent(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 11: ;
    if (ldv_state_variable_2 == 1) {
      via_final_context(driver_group1, ldvarg9);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_final_context(driver_group1, ldvarg9);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 12: ;
    if (ldv_state_variable_2 == 1) {
      via_driver_unload(driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_driver_unload(driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 13: ;
    if (ldv_state_variable_2 == 1) {
      via_reclaim_buffers_locked(driver_group1, driver_group0);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_reclaim_buffers_locked(driver_group1, driver_group0);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 14: ;
    if (ldv_state_variable_2 == 1) {
      via_disable_vblank(driver_group1, ldvarg8);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      via_disable_vblank(driver_group1, ldvarg8);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_37549;
    case 15: ;
    if (ldv_state_variable_2 == 2) {
      ldv_release_2();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_37549;
    default:
    ldv_stop();
    }
    ldv_37549: ;
  } else {
  }
  goto ldv_37530;
  default:
  ldv_stop();
  }
  ldv_37530: ;
  goto ldv_37567;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_32(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_36(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void idr_destroy(struct idr * ) ;
extern void idr_init(struct idr * ) ;
void *ldv_kmem_cache_alloc_56(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int drm_vblank_init(struct drm_device * , int ) ;
extern struct drm_local_map *drm_getsarea(struct drm_device * ) ;
__inline static struct drm_local_map *drm_core_findmap(struct drm_device *dev , unsigned int token )
{
  struct drm_map_list *_entry ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->maplist.next;
  _entry = (struct drm_map_list *)__mptr;
  goto ldv_37000;
  ldv_36999: ;
  if (_entry->user_token == (uint64_t )token) {
    return (_entry->map);
  } else {
  }
  __mptr___0 = (struct list_head const *)_entry->head.next;
  _entry = (struct drm_map_list *)__mptr___0;
  ldv_37000: ;
  if ((unsigned long )(& _entry->head) != (unsigned long )(& dev->maplist)) {
    goto ldv_36999;
  } else {
  }
  return ((struct drm_local_map *)0);
}
}
int via_map_init(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
int via_do_cleanup_map(struct drm_device *dev ) ;
int via_dma_cleanup(struct drm_device *dev ) ;
void via_init_futex(drm_via_private_t *dev_priv ) ;
void via_init_dmablit(struct drm_device *dev ) ;
static int via_do_init_map(struct drm_device *dev , drm_via_init_t *init )
{
  drm_via_private_t *dev_priv ;
  long tmp ;
  struct drm_local_map *tmp___0 ;
  struct drm_local_map *tmp___1 ;
  struct drm_local_map *tmp___2 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_do_init_map", "\n");
  } else {
  }
  tmp___0 = drm_getsarea(dev);
  dev_priv->sarea = tmp___0;
  if ((unsigned long )dev_priv->sarea == (unsigned long )((drm_local_map_t *)0)) {
    drm_err("via_do_init_map", "could not find sarea!\n");
    dev->dev_private = (void *)dev_priv;
    via_do_cleanup_map(dev);
    return (-22);
  } else {
  }
  tmp___1 = drm_core_findmap(dev, (unsigned int )init->fb_offset);
  dev_priv->fb = tmp___1;
  if ((unsigned long )dev_priv->fb == (unsigned long )((drm_local_map_t *)0)) {
    drm_err("via_do_init_map", "could not find framebuffer!\n");
    dev->dev_private = (void *)dev_priv;
    via_do_cleanup_map(dev);
    return (-22);
  } else {
  }
  tmp___2 = drm_core_findmap(dev, (unsigned int )init->mmio_offset);
  dev_priv->mmio = tmp___2;
  if ((unsigned long )dev_priv->mmio == (unsigned long )((drm_local_map_t *)0)) {
    drm_err("via_do_init_map", "could not find mmio region!\n");
    dev->dev_private = (void *)dev_priv;
    via_do_cleanup_map(dev);
    return (-22);
  } else {
  }
  dev_priv->sarea_priv = (drm_via_sarea_t *)(dev_priv->sarea)->handle + init->sarea_priv_offset;
  dev_priv->agpAddr = init->agpAddr;
  via_init_futex(dev_priv);
  via_init_dmablit(dev);
  dev->dev_private = (void *)dev_priv;
  return (0);
}
}
int via_do_cleanup_map(struct drm_device *dev )
{
  {
  via_dma_cleanup(dev);
  return (0);
}
}
int via_map_init(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_init_t *init ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  init = (drm_via_init_t *)data;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_map_init", "\n");
  } else {
  }
  switch ((unsigned int )init->func) {
  case 1U:
  tmp___0 = via_do_init_map(dev, init);
  return (tmp___0);
  case 2U:
  tmp___1 = via_do_cleanup_map(dev);
  return (tmp___1);
  }
  return (-22);
}
}
int via_driver_load(struct drm_device *dev , unsigned long chipset )
{
  drm_via_private_t *dev_priv ;
  int ret ;
  void *tmp ;
  {
  ret = 0;
  tmp = kzalloc(72448UL, 208U);
  dev_priv = (drm_via_private_t *)tmp;
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0)) {
    return (-12);
  } else {
  }
  idr_init(& dev_priv->object_idr);
  dev->dev_private = (void *)dev_priv;
  dev_priv->chipset = (int )chipset;
  pci_set_master(dev->pdev);
  ret = drm_vblank_init(dev, 1);
  if (ret != 0) {
    kfree((void const *)dev_priv);
    return (ret);
  } else {
  }
  return (0);
}
}
int via_driver_unload(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  idr_destroy(& dev_priv->object_idr);
  kfree((void const *)dev_priv);
  return (0);
}
}
void *ldv_kmem_cache_alloc_56(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static int list_is_singular(struct list_head const *head )
{
  int tmp ;
  {
  tmp = list_empty(head);
  return (tmp == 0 && (unsigned long )head->next == (unsigned long )head->prev);
}
}
extern int lock_is_held(struct lockdep_map * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_watching();
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  tmp___2 = rcu_lockdep_current_cpu_online();
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  tmp___4 = lock_is_held(& rcu_lock_map);
  return (tmp___4);
}
}
extern void *idr_find_slowpath(struct idr * , int ) ;
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern void idr_remove(struct idr * , int ) ;
__inline static void *idr_find(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *_________p1 ;
  bool __warned ;
  int tmp ;
  struct idr_layer *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  _________p1 = *((struct idr_layer * volatile *)(& idr->hint));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  hint = _________p1;
  if ((unsigned long )hint != (unsigned long )((struct idr_layer *)0) && (id & -256) == hint->prefix) {
    _________p1___0 = *((struct idr_layer * volatile *)(& hint->ary) + ((unsigned long )id & 255UL));
    tmp___0 = debug_lockdep_rcu_enabled();
    if (tmp___0 != 0 && ! __warned___0) {
      rcu_read_lock_held();
    } else {
    }
    return ((void *)_________p1___0);
  } else {
  }
  tmp___1 = idr_find_slowpath(idr, id);
  return (tmp___1);
}
}
void *ldv_kmem_cache_alloc_76(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int drm_mm_insert_node_generic(struct drm_mm * , struct drm_mm_node * , unsigned long ,
                                      unsigned int , unsigned long , enum drm_mm_search_flags ,
                                      enum drm_mm_allocator_flags ) ;
__inline static int drm_mm_insert_node(struct drm_mm *mm , struct drm_mm_node *node ,
                                       unsigned long size , unsigned int alignment ,
                                       enum drm_mm_search_flags flags )
{
  int tmp ;
  {
  tmp = drm_mm_insert_node_generic(mm, node, size, alignment, 0UL, flags, 0);
  return (tmp);
}
}
extern void drm_mm_remove_node(struct drm_mm_node * ) ;
extern void drm_mm_init(struct drm_mm * , unsigned long , unsigned long ) ;
extern void drm_mm_takedown(struct drm_mm * ) ;
extern void drm_idlelock_take(struct drm_lock_data * ) ;
extern void drm_idlelock_release(struct drm_lock_data * ) ;
extern int drm_irq_uninstall(struct drm_device * ) ;
int via_fb_init(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
int via_mem_alloc(struct drm_device *dev , void *data , struct drm_file *file ) ;
int via_mem_free(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
int via_agp_init(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
void via_cleanup_futex(drm_via_private_t *dev_priv ) ;
void via_release_futex(drm_via_private_t *dev_priv , int context ) ;
int via_agp_init(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_agp_t *agp ;
  drm_via_private_t *dev_priv ;
  long tmp ;
  {
  agp = (drm_via_agp_t *)data;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  mutex_lock_nested(& dev->struct_mutex, 0U);
  drm_mm_init(& dev_priv->agp_mm, 0UL, (unsigned long )(agp->size >> 4));
  dev_priv->agp_initialized = 1;
  dev_priv->agp_offset = (unsigned long )agp->offset;
  mutex_unlock(& dev->struct_mutex);
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_agp_init", "offset = %u, size = %u\n", agp->offset, agp->size);
  } else {
  }
  return (0);
}
}
int via_fb_init(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_fb_t *fb ;
  drm_via_private_t *dev_priv ;
  long tmp ;
  {
  fb = (drm_via_fb_t *)data;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  mutex_lock_nested(& dev->struct_mutex, 0U);
  drm_mm_init(& dev_priv->vram_mm, 0UL, (unsigned long )(fb->size >> 4));
  dev_priv->vram_initialized = 1;
  dev_priv->vram_offset = (unsigned long )fb->offset;
  mutex_unlock(& dev->struct_mutex);
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_fb_init", "offset = %u, size = %u\n", fb->offset, fb->size);
  } else {
  }
  return (0);
}
}
int via_final_context(struct drm_device *dev , int context )
{
  drm_via_private_t *dev_priv ;
  long tmp ;
  int tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  via_release_futex(dev_priv, context);
  tmp___0 = list_is_singular((struct list_head const *)(& dev->ctxlist));
  if (tmp___0 != 0) {
    tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
    if (tmp != 0L) {
      drm_ut_debug_printk("via_final_context", "Last Context\n");
    } else {
    }
    drm_irq_uninstall(dev);
    via_cleanup_futex(dev_priv);
    via_do_cleanup_map(dev);
  } else {
  }
  return (1);
}
}
void via_lastclose(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0)) {
    return;
  } else {
  }
  mutex_lock_nested(& dev->struct_mutex, 0U);
  if (dev_priv->vram_initialized != 0) {
    drm_mm_takedown(& dev_priv->vram_mm);
    dev_priv->vram_initialized = 0;
  } else {
  }
  if (dev_priv->agp_initialized != 0) {
    drm_mm_takedown(& dev_priv->agp_mm);
    dev_priv->agp_initialized = 0;
  } else {
  }
  mutex_unlock(& dev->struct_mutex);
  return;
}
}
int via_mem_alloc(struct drm_device *dev , void *data , struct drm_file *file )
{
  drm_via_mem_t *mem ;
  int retval ;
  int user_key ;
  struct via_memblock *item ;
  drm_via_private_t *dev_priv ;
  struct via_file_private *file_priv ;
  unsigned long tmpSize ;
  void *tmp ;
  long tmp___0 ;
  {
  mem = (drm_via_mem_t *)data;
  retval = 0;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  file_priv = (struct via_file_private *)file->driver_priv;
  if (mem->type > 1U) {
    drm_err("via_mem_alloc", "Unknown memory type allocation\n");
    return (-22);
  } else {
  }
  mutex_lock_nested(& dev->struct_mutex, 0U);
  if (mem->type == 0U ? dev_priv->vram_initialized == 0 : dev_priv->agp_initialized == 0) {
    drm_err("via_mem_alloc", "Attempt to allocate from uninitialized memory manager.\n");
    mutex_unlock(& dev->struct_mutex);
    return (-22);
  } else {
  }
  tmp = kzalloc(88UL, 208U);
  item = (struct via_memblock *)tmp;
  if ((unsigned long )item == (unsigned long )((struct via_memblock *)0)) {
    retval = -12;
    goto fail_alloc;
  } else {
  }
  tmpSize = (unsigned long )((mem->size + 15U) >> 4);
  if (mem->type == 1U) {
    retval = drm_mm_insert_node(& dev_priv->agp_mm, & item->mm_node, tmpSize, 0U,
                                0);
  } else {
    retval = drm_mm_insert_node(& dev_priv->vram_mm, & item->mm_node, tmpSize, 0U,
                                0);
  }
  if (retval != 0) {
    goto fail_alloc;
  } else {
  }
  retval = idr_alloc(& dev_priv->object_idr, (void *)item, 1, 0, 208U);
  if (retval < 0) {
    goto fail_idr;
  } else {
  }
  user_key = retval;
  list_add(& item->owner_list, & file_priv->obj_list);
  mutex_unlock(& dev->struct_mutex);
  mem->offset = (mem->type == 0U ? dev_priv->vram_offset : dev_priv->agp_offset) + (item->mm_node.start << 4);
  mem->index = (unsigned long )user_key;
  return (0);
  fail_idr:
  drm_mm_remove_node(& item->mm_node);
  fail_alloc:
  kfree((void const *)item);
  mutex_unlock(& dev->struct_mutex);
  mem->offset = 0UL;
  mem->size = 0U;
  mem->index = 0UL;
  tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___0 != 0L) {
    drm_ut_debug_printk("via_mem_alloc", "Video memory allocation failed\n");
  } else {
  }
  return (retval);
}
}
int via_mem_free(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_private_t *dev_priv ;
  drm_via_mem_t *mem ;
  struct via_memblock *obj ;
  void *tmp ;
  long tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  mem = (drm_via_mem_t *)data;
  mutex_lock_nested(& dev->struct_mutex, 0U);
  tmp = idr_find(& dev_priv->object_idr, (int )mem->index);
  obj = (struct via_memblock *)tmp;
  if ((unsigned long )obj == (unsigned long )((struct via_memblock *)0)) {
    mutex_unlock(& dev->struct_mutex);
    return (-22);
  } else {
  }
  idr_remove(& dev_priv->object_idr, (int )mem->index);
  list_del(& obj->owner_list);
  drm_mm_remove_node(& obj->mm_node);
  kfree((void const *)obj);
  mutex_unlock(& dev->struct_mutex);
  tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___0 != 0L) {
    drm_ut_debug_printk("via_mem_free", "free = 0x%lx\n", mem->index);
  } else {
  }
  return (0);
}
}
void via_reclaim_buffers_locked(struct drm_device *dev , struct drm_file *file )
{
  struct via_file_private *file_priv ;
  struct via_memblock *entry ;
  struct via_memblock *next ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  file_priv = (struct via_file_private *)file->driver_priv;
  if ((unsigned long )(file->minor)->master == (unsigned long )((struct drm_master *)0) || (unsigned long )(file->master)->lock.hw_lock == (unsigned long )((struct drm_hw_lock *)0)) {
    return;
  } else {
  }
  drm_idlelock_take(& (file->master)->lock);
  mutex_lock_nested(& dev->struct_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& file_priv->obj_list));
  if (tmp != 0) {
    mutex_unlock(& dev->struct_mutex);
    drm_idlelock_release(& (file->master)->lock);
    return;
  } else {
  }
  via_driver_dma_quiescent(dev);
  __mptr = (struct list_head const *)file_priv->obj_list.next;
  entry = (struct via_memblock *)__mptr + 0xffffffffffffffb8UL;
  __mptr___0 = (struct list_head const *)entry->owner_list.next;
  next = (struct via_memblock *)__mptr___0 + 0xffffffffffffffb8UL;
  goto ldv_37519;
  ldv_37518:
  list_del(& entry->owner_list);
  drm_mm_remove_node(& entry->mm_node);
  kfree((void const *)entry);
  entry = next;
  __mptr___1 = (struct list_head const *)next->owner_list.next;
  next = (struct via_memblock *)__mptr___1 + 0xffffffffffffffb8UL;
  ldv_37519: ;
  if ((unsigned long )(& entry->owner_list) != (unsigned long )(& file_priv->obj_list)) {
    goto ldv_37518;
  } else {
  }
  mutex_unlock(& dev->struct_mutex);
  drm_idlelock_release(& (file->master)->lock);
  return;
}
}
void *ldv_kmem_cache_alloc_76(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void might_fault(void) ;
void *ldv_kmem_cache_alloc_96(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern bool capable(int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
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
extern void msleep(unsigned int ) ;
extern void drm_core_ioremap(struct drm_local_map * , struct drm_device * ) ;
extern void drm_core_ioremapfree(struct drm_local_map * , struct drm_device * ) ;
int via_verify_command_stream(uint32_t const *buf , unsigned int size , struct drm_device *dev ,
                              int agp ) ;
int via_parse_command_stream(struct drm_device *dev , uint32_t const *buf , unsigned int size ) ;
int via_decoder_futex(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
int via_dma_blit_sync(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
int via_dma_blit(struct drm_device *dev , void *data , struct drm_file *file_priv ) ;
static void via_cmdbuf_start(drm_via_private_t *dev_priv ) ;
static void via_cmdbuf_pause(drm_via_private_t *dev_priv ) ;
static void via_cmdbuf_reset(drm_via_private_t *dev_priv ) ;
static void via_cmdbuf_rewind(drm_via_private_t *dev_priv ) ;
static int via_wait_idle(drm_via_private_t *dev_priv ) ;
static void via_pad_cache(drm_via_private_t *dev_priv , int qwords ) ;
static uint32_t via_cmdbuf_space(drm_via_private_t *dev_priv )
{
  uint32_t agp_base ;
  uint32_t hw_addr ;
  {
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  hw_addr = (unsigned int )*(dev_priv->hw_addr_ptr) - agp_base;
  return (dev_priv->dma_low >= hw_addr ? (dev_priv->dma_high + hw_addr) - dev_priv->dma_low : hw_addr - dev_priv->dma_low);
}
}
static uint32_t via_cmdbuf_lag(drm_via_private_t *dev_priv )
{
  uint32_t agp_base ;
  uint32_t hw_addr ;
  {
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  hw_addr = (unsigned int )*(dev_priv->hw_addr_ptr) - agp_base;
  return (dev_priv->dma_low >= hw_addr ? dev_priv->dma_low - hw_addr : (dev_priv->dma_wrap + dev_priv->dma_low) - hw_addr);
}
}
__inline static int via_cmdbuf_wait(drm_via_private_t *dev_priv , unsigned int size )
{
  uint32_t agp_base ;
  uint32_t cur_addr ;
  uint32_t hw_addr ;
  uint32_t next_addr ;
  uint32_t volatile *hw_addr_ptr ;
  uint32_t count ;
  uint32_t tmp ;
  {
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  hw_addr_ptr = dev_priv->hw_addr_ptr;
  cur_addr = dev_priv->dma_low;
  next_addr = (cur_addr + size) + 524288U;
  count = 1000000U;
  ldv_37486:
  hw_addr = (unsigned int )*hw_addr_ptr - agp_base;
  tmp = count;
  count = count - 1U;
  if (tmp == 0U) {
    drm_err("via_cmdbuf_wait", "via_cmdbuf_wait timed out hw %x cur_addr %x next_addr %x\n",
            hw_addr, cur_addr, next_addr);
    return (-1);
  } else {
  }
  if (cur_addr < hw_addr && next_addr >= hw_addr) {
    msleep(1U);
  } else {
  }
  if (cur_addr < hw_addr && next_addr >= hw_addr) {
    goto ldv_37486;
  } else {
  }
  return (0);
}
}
__inline static uint32_t *via_check_dma(drm_via_private_t *dev_priv , unsigned int size )
{
  int tmp ;
  {
  if ((dev_priv->dma_low + size) + 1024U > dev_priv->dma_high) {
    via_cmdbuf_rewind(dev_priv);
  } else {
  }
  tmp = via_cmdbuf_wait(dev_priv, size);
  if (tmp != 0) {
    return ((uint32_t *)0U);
  } else {
  }
  return ((uint32_t *)dev_priv->dma_ptr + (unsigned long )dev_priv->dma_low);
}
}
int via_dma_cleanup(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  {
  if ((unsigned long )dev->dev_private != (unsigned long )((void *)0)) {
    dev_priv = (drm_via_private_t *)dev->dev_private;
    if ((unsigned long )dev_priv->ring.virtual_start != (unsigned long )((char *)0)) {
      via_cmdbuf_reset(dev_priv);
      drm_core_ioremapfree(& dev_priv->ring.map, dev);
      dev_priv->ring.virtual_start = (char *)0;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int via_initialize(struct drm_device *dev , drm_via_private_t *dev_priv , drm_via_dma_init_t *init )
{
  {
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0) || (unsigned long )dev_priv->mmio == (unsigned long )((drm_local_map_t *)0)) {
    drm_err("via_initialize", "via_dma_init called before via_map_init\n");
    return (-14);
  } else {
  }
  if ((unsigned long )dev_priv->ring.virtual_start != (unsigned long )((char *)0)) {
    drm_err("via_initialize", "called again without calling cleanup\n");
    return (-14);
  } else {
  }
  if ((unsigned long )dev->agp == (unsigned long )((struct drm_agp_head *)0) || (dev->agp)->base == 0UL) {
    drm_err("via_initialize", "called with no agp memory available\n");
    return (-14);
  } else {
  }
  if (dev_priv->chipset == 2) {
    drm_err("via_initialize", "AGP DMA is not supported on this chip\n");
    return (-22);
  } else {
  }
  dev_priv->ring.map.offset = (resource_size_t )((dev->agp)->base + init->offset);
  dev_priv->ring.map.size = init->size;
  dev_priv->ring.map.type = 0;
  dev_priv->ring.map.flags = 0;
  dev_priv->ring.map.mtrr = 0;
  drm_core_ioremap(& dev_priv->ring.map, dev);
  if ((unsigned long )dev_priv->ring.map.handle == (unsigned long )((void *)0)) {
    via_dma_cleanup(dev);
    drm_err("via_initialize", "can not ioremap virtual address for ring buffer\n");
    return (-12);
  } else {
  }
  dev_priv->ring.virtual_start = (char *)dev_priv->ring.map.handle;
  dev_priv->dma_ptr = dev_priv->ring.virtual_start;
  dev_priv->dma_low = 0U;
  dev_priv->dma_high = (unsigned int )init->size;
  dev_priv->dma_wrap = (uint32_t )init->size;
  dev_priv->dma_offset = (unsigned int )init->offset;
  dev_priv->last_pause_ptr = (uint32_t volatile *)0U;
  dev_priv->hw_addr_ptr = (uint32_t volatile *)(dev_priv->mmio)->handle + init->reg_pause_addr;
  via_cmdbuf_start(dev_priv);
  return (0);
}
}
static int via_dma_init(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_private_t *dev_priv ;
  drm_via_dma_init_t *init ;
  int retcode ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  init = (drm_via_dma_init_t *)data;
  retcode = 0;
  switch ((unsigned int )init->func) {
  case 1U:
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    retcode = -1;
  } else {
    retcode = via_initialize(dev, dev_priv, init);
  }
  goto ldv_37511;
  case 2U:
  tmp___1 = capable(21);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    retcode = -1;
  } else {
    retcode = via_dma_cleanup(dev);
  }
  goto ldv_37511;
  case 3U:
  retcode = (unsigned long )dev_priv->ring.virtual_start != (unsigned long )((char *)0) ? 0 : -14;
  goto ldv_37511;
  default:
  retcode = -22;
  goto ldv_37511;
  }
  ldv_37511: ;
  return (retcode);
}
}
extern void *memcpy(void * , void const   * , size_t  ) ;
static int via_dispatch_cmdbuffer(struct drm_device *dev , drm_via_cmdbuffer_t *cmd )
{
  drm_via_private_t *dev_priv ;
  uint32_t *vb ;
  int ret ;
  unsigned long tmp ;
  size_t __len ;
  void *__ret ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if ((unsigned long )dev_priv->ring.virtual_start == (unsigned long )((char *)0)) {
    drm_err("via_dispatch_cmdbuffer", "called without initializing AGP ring buffer.\n");
    return (-14);
  } else {
  }
  if (cmd->size > 60000UL) {
    return (-12);
  } else {
  }
  tmp = copy_from_user((void *)(& dev_priv->pci_buf), (void const *)cmd->buf, cmd->size);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ret = via_verify_command_stream((uint32_t const *)(& dev_priv->pci_buf), (unsigned int )cmd->size,
                                  dev, 1);
  if (ret != 0) {
    return (ret);
  } else {
  }
  vb = via_check_dma(dev_priv, cmd->size > 255UL ? (unsigned int )cmd->size : 258U);
  if ((unsigned long )vb == (unsigned long )((uint32_t *)0U)) {
    return (-11);
  } else {
  }
  __len = cmd->size;
  __ret = memcpy((void *)vb, (void const *)(& dev_priv->pci_buf), __len);
  dev_priv->dma_low = dev_priv->dma_low + (unsigned int )cmd->size;
  if (cmd->size <= 255UL) {
    via_pad_cache(dev_priv, (int )((256UL - cmd->size) >> 3));
  } else {
  }
  via_cmdbuf_pause(dev_priv);
  return (0);
}
}
int via_driver_dma_quiescent(struct drm_device *dev )
{
  drm_via_private_t *dev_priv ;
  int tmp ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  tmp = via_wait_idle(dev_priv);
  if (tmp == 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int via_flush_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  int tmp ;
  {
  if ((int )((file_priv->master)->lock.hw_lock)->lock >= 0 || (unsigned long )(file_priv->master)->lock.file_priv != (unsigned long )file_priv) {
    drm_err("via_flush_ioctl", "%s called without lock held, held  %d owner %p %p\n",
            "via_flush_ioctl", (unsigned int )((file_priv->master)->lock.hw_lock)->lock & 2147483648U,
            (file_priv->master)->lock.file_priv, file_priv);
    return (-22);
  } else {
  }
  tmp = via_driver_dma_quiescent(dev);
  return (tmp);
}
}
static int via_cmdbuffer(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_cmdbuffer_t *cmdbuf ;
  int ret ;
  long tmp ;
  {
  cmdbuf = (drm_via_cmdbuffer_t *)data;
  if ((int )((file_priv->master)->lock.hw_lock)->lock >= 0 || (unsigned long )(file_priv->master)->lock.file_priv != (unsigned long )file_priv) {
    drm_err("via_cmdbuffer", "%s called without lock held, held  %d owner %p %p\n",
            "via_cmdbuffer", (unsigned int )((file_priv->master)->lock.hw_lock)->lock & 2147483648U,
            (file_priv->master)->lock.file_priv, file_priv);
    return (-22);
  } else {
  }
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_cmdbuffer", "buf %p size %lu\n", cmdbuf->buf, cmdbuf->size);
  } else {
  }
  ret = via_dispatch_cmdbuffer(dev, cmdbuf);
  return (ret);
}
}
static int via_dispatch_pci_cmdbuffer(struct drm_device *dev , drm_via_cmdbuffer_t *cmd )
{
  drm_via_private_t *dev_priv ;
  int ret ;
  unsigned long tmp ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if (cmd->size > 60000UL) {
    return (-12);
  } else {
  }
  tmp = copy_from_user((void *)(& dev_priv->pci_buf), (void const *)cmd->buf, cmd->size);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ret = via_verify_command_stream((uint32_t const *)(& dev_priv->pci_buf), (unsigned int )cmd->size,
                                  dev, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = via_parse_command_stream(dev, (uint32_t const *)(& dev_priv->pci_buf), (unsigned int )cmd->size);
  return (ret);
}
}
static int via_pci_cmdbuffer(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_cmdbuffer_t *cmdbuf ;
  int ret ;
  long tmp ;
  {
  cmdbuf = (drm_via_cmdbuffer_t *)data;
  if ((int )((file_priv->master)->lock.hw_lock)->lock >= 0 || (unsigned long )(file_priv->master)->lock.file_priv != (unsigned long )file_priv) {
    drm_err("via_pci_cmdbuffer", "%s called without lock held, held  %d owner %p %p\n",
            "via_pci_cmdbuffer", (unsigned int )((file_priv->master)->lock.hw_lock)->lock & 2147483648U,
            (file_priv->master)->lock.file_priv, file_priv);
    return (-22);
  } else {
  }
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_pci_cmdbuffer", "buf %p size %lu\n", cmdbuf->buf, cmdbuf->size);
  } else {
  }
  ret = via_dispatch_pci_cmdbuffer(dev, cmdbuf);
  return (ret);
}
}
__inline static uint32_t *via_align_buffer(drm_via_private_t *dev_priv , uint32_t *vb ,
                                           int qw_count )
{
  uint32_t *tmp ;
  uint32_t *tmp___0 ;
  {
  goto ldv_37564;
  ldv_37563:
  tmp = vb;
  vb = vb + 1;
  *tmp = 3435973836U;
  tmp___0 = vb;
  vb = vb + 1;
  *tmp___0 = 3435973836U;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  qw_count = qw_count - 1;
  ldv_37564: ;
  if (qw_count > 0) {
    goto ldv_37563;
  } else {
  }
  return (vb);
}
}
__inline static uint32_t *via_get_dma(drm_via_private_t *dev_priv )
{
  {
  return ((uint32_t *)dev_priv->dma_ptr + (unsigned long )dev_priv->dma_low);
}
}
static int via_hook_segment(drm_via_private_t *dev_priv , uint32_t pause_addr_hi ,
                            uint32_t pause_addr_lo , int no_pci_fire )
{
  int paused ;
  int count ;
  uint32_t volatile *paused_at ;
  uint32_t reader ;
  uint32_t ptr ;
  uint32_t diff ;
  uint32_t *tmp ;
  uint32_t *tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  paused_at = dev_priv->last_pause_ptr;
  paused = 0;
  __asm__ volatile ("mfence": : : "memory");
  tmp = via_get_dma(dev_priv);
  *paused_at = pause_addr_lo;
  __asm__ volatile ("mfence": : : "memory");
  reader = *(dev_priv->hw_addr_ptr);
  ptr = ((((uint32_t )((long )paused_at) - (uint32_t )((long )dev_priv->dma_ptr)) + dev_priv->dma_offset) + (uint32_t )dev_priv->agpAddr) + 4U;
  tmp___0 = via_get_dma(dev_priv);
  dev_priv->last_pause_ptr = (uint32_t volatile *)tmp___0 + 0xffffffffffffffffUL;
  diff = (ptr - reader) - dev_priv->dma_diff;
  count = 10000000;
  goto ldv_37583;
  ldv_37582:
  tmp___1 = readl((void const volatile *)(dev_priv->mmio)->handle + 1052U);
  paused = (long )((int )tmp___1) & (-0x7FFFFFFF-1);
  if (paused != 0) {
    goto ldv_37581;
  } else {
  }
  reader = *(dev_priv->hw_addr_ptr);
  diff = (ptr - reader) - dev_priv->dma_diff;
  ldv_37583: ;
  if (diff == 0U) {
    tmp___2 = count;
    count = count - 1;
    if (tmp___2 != 0) {
      goto ldv_37582;
    } else {
      goto ldv_37581;
    }
  } else {
  }
  ldv_37581:
  tmp___3 = readl((void const volatile *)(dev_priv->mmio)->handle + 1052U);
  paused = (long )((int )tmp___3) & (-0x7FFFFFFF-1);
  if (paused != 0 && no_pci_fire == 0) {
    reader = *(dev_priv->hw_addr_ptr);
    diff = (ptr - reader) - dev_priv->dma_diff;
    diff = (dev_priv->dma_high - 1U) & diff;
    if (diff != 0U && dev_priv->dma_high >> 1 > diff) {
      drm_err("via_hook_segment", "Paused at incorrect address. 0x%08x, 0x%08x 0x%08x\n",
              ptr, reader, dev_priv->dma_diff);
    } else
    if (diff == 0U) {
      writel(1048576U, (void volatile *)(dev_priv->mmio)->handle + 1084U);
      writel(pause_addr_hi, (void volatile *)(dev_priv->mmio)->handle + 1088U);
      writel(pause_addr_lo, (void volatile *)(dev_priv->mmio)->handle + 1088U);
      readl((void const volatile *)(dev_priv->mmio)->handle + 1088U);
    } else {
    }
  } else {
  }
  return (paused);
}
}
static int via_wait_idle(drm_via_private_t *dev_priv )
{
  int count ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  count = 10000000;
  goto ldv_37590;
  ldv_37589: ;
  ldv_37590:
  tmp = readl((void const volatile *)(dev_priv->mmio)->handle + 1024U);
  if ((tmp & 131072U) == 0U) {
    count = count - 1;
    if (count != 0) {
      goto ldv_37589;
    } else {
      goto ldv_37591;
    }
  } else {
  }
  ldv_37591: ;
  goto ldv_37593;
  ldv_37592:
  count = count - 1;
  ldv_37593: ;
  if (count != 0) {
    tmp___0 = readl((void const volatile *)(dev_priv->mmio)->handle + 1024U);
    if ((tmp___0 & 131U) != 0U) {
      goto ldv_37592;
    } else {
      goto ldv_37594;
    }
  } else {
  }
  ldv_37594: ;
  return (count);
}
}
static uint32_t *via_align_cmd(drm_via_private_t *dev_priv , uint32_t cmd_type , uint32_t addr ,
                               uint32_t *cmd_addr_hi , uint32_t *cmd_addr_lo , int skip_wait )
{
  uint32_t agp_base ;
  uint32_t cmd_addr ;
  uint32_t addr_lo ;
  uint32_t addr_hi ;
  uint32_t *vb ;
  uint32_t qw_pad_count ;
  uint32_t *tmp ;
  uint32_t *tmp___0 ;
  uint32_t *tmp___1 ;
  uint32_t tmp___2 ;
  uint32_t *tmp___3 ;
  uint32_t tmp___4 ;
  {
  if (skip_wait == 0) {
    via_cmdbuf_wait(dev_priv, 512U);
  } else {
  }
  vb = via_get_dma(dev_priv);
  tmp = vb;
  vb = vb + 1;
  *tmp = 4061196560U;
  tmp___0 = vb;
  vb = vb + 1;
  *tmp___0 = 1048576U;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  qw_pad_count = 32U - ((dev_priv->dma_low & 255U) >> 3);
  cmd_addr = addr == 0U ? ((dev_priv->dma_low + agp_base) + (qw_pad_count << 3)) - 8U : addr;
  addr_lo = ((cmd_type & 3U) | (cmd_addr & 16777212U)) | 1660944384U;
  addr_hi = (cmd_addr >> 24) | 1677721600U;
  vb = via_align_buffer(dev_priv, vb, (int )(qw_pad_count - 1U));
  tmp___1 = vb;
  vb = vb + 1;
  tmp___2 = addr_hi;
  *cmd_addr_hi = tmp___2;
  *tmp___1 = tmp___2;
  tmp___3 = vb;
  vb = vb + 1;
  tmp___4 = addr_lo;
  *cmd_addr_lo = tmp___4;
  *tmp___3 = tmp___4;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  return (vb);
}
}
static void via_cmdbuf_start(drm_via_private_t *dev_priv )
{
  uint32_t pause_addr_lo ;
  uint32_t pause_addr_hi ;
  uint32_t start_addr ;
  uint32_t start_addr_lo ;
  uint32_t end_addr ;
  uint32_t end_addr_lo ;
  uint32_t command ;
  uint32_t agp_base ;
  uint32_t ptr ;
  uint32_t reader ;
  int count ;
  uint32_t *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  dev_priv->dma_low = 0U;
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  start_addr = agp_base;
  end_addr = dev_priv->dma_high + agp_base;
  start_addr_lo = (start_addr & 16777215U) | 1610612736U;
  end_addr_lo = (end_addr & 16777215U) | 1627389952U;
  command = ((start_addr >> 24) | ((end_addr & 4278190080U) >> 16)) | 1644167168U;
  tmp = via_align_cmd(dev_priv, 0U, 0U, & pause_addr_hi, & pause_addr_lo, 1);
  dev_priv->last_pause_ptr = (uint32_t volatile *)tmp + 0xffffffffffffffffUL;
  __asm__ volatile ("mfence": : : "memory");
  writel(1048576U, (void volatile *)(dev_priv->mmio)->handle + 1084U);
  writel(command, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  writel(start_addr_lo, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  writel(end_addr_lo, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  writel(pause_addr_hi, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  writel(pause_addr_lo, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  __asm__ volatile ("sfence": : : "memory");
  writel(command | 8388608U, (void volatile *)(dev_priv->mmio)->handle + 1088U);
  readl((void const volatile *)(dev_priv->mmio)->handle + 1088U);
  dev_priv->dma_diff = 0U;
  count = 10000000;
  goto ldv_37624;
  ldv_37623: ;
  ldv_37624:
  tmp___0 = readl((void const volatile *)(dev_priv->mmio)->handle + 1052U);
  if ((int )tmp___0 >= 0) {
    tmp___1 = count;
    count = count - 1;
    if (tmp___1 != 0) {
      goto ldv_37623;
    } else {
      goto ldv_37625;
    }
  } else {
  }
  ldv_37625:
  reader = *(dev_priv->hw_addr_ptr);
  ptr = ((((uint32_t )((long )dev_priv->last_pause_ptr) - (uint32_t )((long )dev_priv->dma_ptr)) + dev_priv->dma_offset) + (uint32_t )dev_priv->agpAddr) + 4U;
  dev_priv->dma_diff = ptr - reader;
  return;
}
}
static void via_pad_cache(drm_via_private_t *dev_priv , int qwords )
{
  uint32_t *vb ;
  uint32_t *tmp ;
  uint32_t *tmp___0 ;
  {
  via_cmdbuf_wait(dev_priv, (unsigned int )(qwords + 2));
  vb = via_get_dma(dev_priv);
  tmp = vb;
  vb = vb + 1;
  *tmp = 4061196560U;
  tmp___0 = vb;
  vb = vb + 1;
  *tmp___0 = 65536U;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  via_align_buffer(dev_priv, vb, qwords);
  return;
}
}
__inline static void via_dummy_bitblt(drm_via_private_t *dev_priv )
{
  uint32_t *vb ;
  uint32_t *tmp ;
  {
  tmp = via_get_dma(dev_priv);
  vb = tmp;
  *vb = 4026531843U;
  *(vb + 1UL) = 0U;
  vb = vb + 2UL;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  *vb = 4026531844U;
  *(vb + 1UL) = 0U;
  vb = vb + 2UL;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  *vb = 4026531840U;
  *(vb + 1UL) = 2852134913U;
  vb = vb + 2UL;
  dev_priv->dma_low = dev_priv->dma_low + 8U;
  return;
}
}
static void via_cmdbuf_jump(drm_via_private_t *dev_priv )
{
  uint32_t agp_base ;
  uint32_t pause_addr_lo ;
  uint32_t pause_addr_hi ;
  uint32_t jump_addr_lo ;
  uint32_t jump_addr_hi ;
  uint32_t volatile *last_pause_ptr ;
  uint32_t dma_low_save1 ;
  uint32_t dma_low_save2 ;
  int tmp ;
  uint32_t *tmp___0 ;
  uint32_t *tmp___1 ;
  {
  agp_base = dev_priv->dma_offset + (unsigned int )dev_priv->agpAddr;
  via_align_cmd(dev_priv, 1U, 0U, & jump_addr_hi, & jump_addr_lo, 0);
  dev_priv->dma_wrap = dev_priv->dma_low;
  dev_priv->dma_low = 0U;
  tmp = via_cmdbuf_wait(dev_priv, 256U);
  if (tmp != 0) {
    drm_err("via_cmdbuf_jump", "via_cmdbuf_jump failed\n");
  } else {
  }
  via_dummy_bitblt(dev_priv);
  via_dummy_bitblt(dev_priv);
  tmp___0 = via_align_cmd(dev_priv, 0U, 0U, & pause_addr_hi, & pause_addr_lo, 0);
  last_pause_ptr = (uint32_t volatile *)tmp___0 + 0xffffffffffffffffUL;
  via_align_cmd(dev_priv, 0U, 0U, & pause_addr_hi, & pause_addr_lo, 0);
  *last_pause_ptr = pause_addr_lo;
  dma_low_save1 = dev_priv->dma_low;
  tmp___1 = via_align_cmd(dev_priv, 0U, 0U, & pause_addr_hi, & pause_addr_lo, 0);
  last_pause_ptr = (uint32_t volatile *)tmp___1 + 0xffffffffffffffffUL;
  via_align_cmd(dev_priv, 0U, 0U, & pause_addr_hi, & pause_addr_lo, 0);
  *last_pause_ptr = pause_addr_lo;
  dma_low_save2 = dev_priv->dma_low;
  dev_priv->dma_low = dma_low_save1;
  via_hook_segment(dev_priv, jump_addr_hi, jump_addr_lo, 0);
  dev_priv->dma_low = dma_low_save2;
  via_hook_segment(dev_priv, pause_addr_hi, pause_addr_lo, 0);
  return;
}
}
static void via_cmdbuf_rewind(drm_via_private_t *dev_priv )
{
  {
  via_cmdbuf_jump(dev_priv);
  return;
}
}
static void via_cmdbuf_flush(drm_via_private_t *dev_priv , uint32_t cmd_type )
{
  uint32_t pause_addr_lo ;
  uint32_t pause_addr_hi ;
  {
  via_align_cmd(dev_priv, cmd_type, 0U, & pause_addr_hi, & pause_addr_lo, 0);
  via_hook_segment(dev_priv, pause_addr_hi, pause_addr_lo, 0);
  return;
}
}
static void via_cmdbuf_pause(drm_via_private_t *dev_priv )
{
  {
  via_cmdbuf_flush(dev_priv, 0U);
  return;
}
}
static void via_cmdbuf_reset(drm_via_private_t *dev_priv )
{
  {
  via_cmdbuf_flush(dev_priv, 2U);
  via_wait_idle(dev_priv);
  return;
}
}
static int via_cmdbuf_size(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_cmdbuf_size_t *d_siz ;
  int ret ;
  uint32_t tmp_size ;
  uint32_t count ;
  drm_via_private_t *dev_priv ;
  long tmp ;
  {
  d_siz = (drm_via_cmdbuf_size_t *)data;
  ret = 0;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_cmdbuf_size", "\n");
  } else {
  }
  if ((int )((file_priv->master)->lock.hw_lock)->lock >= 0 || (unsigned long )(file_priv->master)->lock.file_priv != (unsigned long )file_priv) {
    drm_err("via_cmdbuf_size", "%s called without lock held, held  %d owner %p %p\n",
            "via_cmdbuf_size", (unsigned int )((file_priv->master)->lock.hw_lock)->lock & 2147483648U,
            (file_priv->master)->lock.file_priv, file_priv);
    return (-22);
  } else {
  }
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if ((unsigned long )dev_priv->ring.virtual_start == (unsigned long )((char *)0)) {
    drm_err("via_cmdbuf_size", "called without initializing AGP ring buffer.\n");
    return (-14);
  } else {
  }
  count = 1000000U;
  tmp_size = d_siz->size;
  switch ((unsigned int )d_siz->func) {
  case 1U: ;
  goto ldv_37676;
  ldv_37675: ;
  if (d_siz->wait == 0) {
    goto ldv_37674;
  } else {
  }
  ldv_37676:
  tmp_size = via_cmdbuf_space(dev_priv);
  if (tmp_size < d_siz->size) {
    count = count - 1U;
    if (count != 0U) {
      goto ldv_37675;
    } else {
      goto ldv_37674;
    }
  } else {
  }
  ldv_37674: ;
  if (count == 0U) {
    drm_err("via_cmdbuf_size", "VIA_CMDBUF_SPACE timed out.\n");
    ret = -11;
  } else {
  }
  goto ldv_37677;
  case 2U: ;
  goto ldv_37681;
  ldv_37680: ;
  if (d_siz->wait == 0) {
    goto ldv_37679;
  } else {
  }
  ldv_37681:
  tmp_size = via_cmdbuf_lag(dev_priv);
  if (tmp_size > d_siz->size) {
    count = count - 1U;
    if (count != 0U) {
      goto ldv_37680;
    } else {
      goto ldv_37679;
    }
  } else {
  }
  ldv_37679: ;
  if (count == 0U) {
    drm_err("via_cmdbuf_size", "VIA_CMDBUF_LAG timed out.\n");
    ret = -11;
  } else {
  }
  goto ldv_37677;
  default:
  ret = -14;
  }
  ldv_37677:
  d_siz->size = tmp_size;
  return (ret);
}
}
struct drm_ioctl_desc const via_ioctls[16U] =
  { {0U, 1, & via_mem_alloc, 3223348288U, "VIA_ALLOCMEM"},
        {1U, 1, & via_mem_free, 1075864641U, "VIA_FREEMEM"},
        {2U, 3, & via_agp_init, 3221775426U, "VIA_AGP_INIT"},
        {3U, 3, & via_fb_init, 3221775427U, "VIA_FB_INIT"},
        {4U, 3, & via_map_init, 3223872580U, "VIA_MAP_INIT"},
        {5U, 1, & via_decoder_futex, 1074816069U, "VIA_DEC_FUTEX"},
        {0U, 0, 0, 0U, 0},
        {7U, 1, & via_dma_init, 3223348295U, "VIA_DMA_INIT"},
        {8U, 1, & via_cmdbuffer, 1074816072U, "VIA_CMDBUFFER"},
        {9U, 1, & via_flush_ioctl, 25673U, "VIA_FLUSH"},
        {10U, 1, & via_pci_cmdbuffer, 1074816074U, "VIA_PCICMD"},
        {11U, 1, & via_cmdbuf_size, 3222037579U, "VIA_CMDBUF_SIZE"},
        {0U, 0, 0, 0U, 0},
        {13U, 1, & via_wait_irq, 3222824013U, "VIA_WAIT_IRQ"},
        {14U, 1, & via_dma_blit, 1076913230U, "VIA_DMA_BLIT"},
        {15U, 1, & via_dma_blit_sync, 1074291791U, "VIA_BLIT_SYNC"}};
int via_max_ioctl = 16;
void *ldv_kmem_cache_alloc_96(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_116(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
static drm_via_sequence_t seqs[25U] =
  { 0, 0, 0, 0,
        0, 0, 1, 1,
        1, 2, 2, 2,
        0, 0, 3, 3,
        3, 3, 3, 3,
        3, 3, 3, 3,
        0};
static hz_init_t init_table1[48U] =
  { {242U, 3},
        {240U, 4},
        {238U, 5},
        {204U, 12},
        {221U, 13},
        {0U, 0},
        {16U, 6},
        {17U, 7},
        {18U, 8},
        {19U, 0},
        {20U, 0},
        {21U, 0},
        {35U, 0},
        {36U, 0},
        {51U, 0},
        {52U, 0},
        {53U, 0},
        {54U, 0},
        {55U, 0},
        {56U, 0},
        {57U, 0},
        {58U, 0},
        {59U, 0},
        {60U, 0},
        {61U, 0},
        {62U, 0},
        {64U, 9},
        {65U, 10},
        {66U, 11},
        {67U, 0},
        {68U, 0},
        {80U, 0},
        {81U, 0},
        {82U, 0},
        {83U, 0},
        {84U, 0},
        {85U, 0},
        {86U, 0},
        {87U, 0},
        {88U, 0},
        {112U, 0},
        {113U, 0},
        {120U, 0},
        {121U, 0},
        {122U, 0},
        {123U, 0},
        {124U, 0},
        {125U, 24}};
static hz_init_t init_table2[55U] =
  { {242U, 3},
        {240U, 4},
        {238U, 5},
        {204U, 12},
        {0U, 14},
        {1U, 14},
        {2U, 14},
        {3U, 14},
        {4U, 14},
        {5U, 14},
        {6U, 14},
        {7U, 14},
        {8U, 14},
        {9U, 14},
        {32U, 15},
        {33U, 15},
        {34U, 15},
        {35U, 18},
        {43U, 17},
        {44U, 17},
        {45U, 17},
        {46U, 17},
        {47U, 17},
        {48U, 17},
        {49U, 17},
        {50U, 17},
        {51U, 17},
        {52U, 17},
        {75U, 19},
        {76U, 20},
        {81U, 21},
        {82U, 22},
        {119U, 16},
        {120U, 0},
        {121U, 0},
        {122U, 0},
        {123U, 23},
        {124U, 0},
        {125U, 0},
        {126U, 0},
        {127U, 0},
        {128U, 0},
        {129U, 0},
        {130U, 0},
        {131U, 0},
        {133U, 0},
        {134U, 0},
        {135U, 0},
        {136U, 0},
        {137U, 0},
        {138U, 0},
        {144U, 0},
        {145U, 0},
        {146U, 0},
        {147U, 0}};
static hz_init_t init_table3[4U] = { {242U, 3},
        {240U, 4},
        {204U, 12},
        {0U, 25}};
static hazard_t table1[256U] ;
static hazard_t table2[256U] ;
static hazard_t table3[256U] ;
__inline static int eat_words(uint32_t const **buf , uint32_t const *buf_end ,
                              unsigned int num_words )
{
  {
  if (((long )buf_end - (long )*buf) / 4L >= (long )num_words) {
    *buf = *buf + (unsigned long )num_words;
    return (0);
  } else {
  }
  drm_err("eat_words", "Illegal termination of DMA command buffer\n");
  return (1);
}
}
__inline static drm_local_map_t *via_drm_lookup_agp_map(drm_via_state_t *seq , unsigned long offset ,
                                                        unsigned long size , struct drm_device *dev )
{
  struct drm_map_list *r_list ;
  drm_local_map_t *map ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  map = seq->map_cache;
  if (((unsigned long )map != (unsigned long )((drm_local_map_t *)0) && map->offset <= (unsigned long long )offset) && (unsigned long long )(offset + size) <= map->offset + (unsigned long long )map->size) {
    return (map);
  } else {
  }
  __mptr = (struct list_head const *)dev->maplist.next;
  r_list = (struct drm_map_list *)__mptr;
  goto ldv_37520;
  ldv_37519:
  map = r_list->map;
  if ((unsigned long )map == (unsigned long )((drm_local_map_t *)0)) {
    goto ldv_37518;
  } else {
  }
  if (((map->offset <= (unsigned long long )offset && (unsigned long long )(offset + size) <= map->offset + (unsigned long long )map->size) && ((unsigned int )map->flags & 1U) == 0U) && (unsigned int )map->type == 3U) {
    seq->map_cache = map;
    return (map);
  } else {
  }
  ldv_37518:
  __mptr___0 = (struct list_head const *)r_list->head.next;
  r_list = (struct drm_map_list *)__mptr___0;
  ldv_37520: ;
  if ((unsigned long )(& r_list->head) != (unsigned long )(& dev->maplist)) {
    goto ldv_37519;
  } else {
  }
  return ((drm_local_map_t *)0);
}
}
__inline static int finish_current_sequence(drm_via_state_t *cur_seq )
{
  long tmp ;
  long tmp___0 ;
  unsigned int start ;
  unsigned int end ;
  unsigned long lo ;
  unsigned long hi ;
  unsigned long tmp___1 ;
  uint32_t *addr ;
  uint32_t *pitch ;
  uint32_t *height ;
  uint32_t tex ;
  unsigned int i ;
  int npot ;
  uint32_t *tmp___2 ;
  uint32_t *tmp___3 ;
  uint32_t *tmp___4 ;
  uint32_t *tmp___5 ;
  uint32_t *tmp___6 ;
  drm_local_map_t *tmp___7 ;
  {
  switch ((unsigned int )cur_seq->unfinished) {
  case 1U:
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("finish_current_sequence", "Z Buffer start address is 0x%x\n",
                        cur_seq->z_addr);
  } else {
  }
  goto ldv_37527;
  case 2U:
  tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___0 != 0L) {
    drm_ut_debug_printk("finish_current_sequence", "Destination start address is 0x%x\n",
                        cur_seq->d_addr);
  } else {
  }
  goto ldv_37527;
  case 3U: ;
  if (cur_seq->agp_texture != 0) {
    start = cur_seq->tex_level_lo[cur_seq->texture];
    end = cur_seq->tex_level_hi[cur_seq->texture];
    lo = 0xffffffffffffffffUL;
    hi = 0UL;
    if (end > 9U) {
      end = 9U;
    } else {
    }
    if (start > 9U) {
      start = 9U;
    } else {
    }
    tex = cur_seq->texture;
    addr = (uint32_t *)(& cur_seq->t_addr) + ((unsigned long )tex + (unsigned long )start);
    pitch = (uint32_t *)(& cur_seq->pitch) + ((unsigned long )tex + (unsigned long )start);
    height = (uint32_t *)(& cur_seq->height) + ((unsigned long )tex + (unsigned long )start);
    npot = (int )cur_seq->tex_npot[tex];
    i = start;
    goto ldv_37542;
    ldv_37541:
    tmp___2 = addr;
    addr = addr + 1;
    tmp___1 = (unsigned long )*tmp___2;
    if (tmp___1 < lo) {
      lo = tmp___1;
    } else {
    }
    if (i == 0U && npot != 0) {
      tmp___3 = height;
      height = height + 1;
      tmp___4 = pitch;
      pitch = pitch + 1;
      tmp___1 = (unsigned long )(*tmp___3 * *tmp___4) + tmp___1;
    } else {
      tmp___5 = height;
      height = height + 1;
      tmp___6 = pitch;
      pitch = pitch + 1;
      tmp___1 = (unsigned long )(*tmp___5 << (int )*tmp___6) + tmp___1;
    }
    if (tmp___1 > hi) {
      hi = tmp___1;
    } else {
    }
    i = i + 1U;
    ldv_37542: ;
    if (i <= end) {
      goto ldv_37541;
    } else {
    }
    tmp___7 = via_drm_lookup_agp_map(cur_seq, lo, hi - lo, cur_seq->dev);
    if ((unsigned long )tmp___7 == (unsigned long )((drm_local_map_t *)0)) {
      drm_err("finish_current_sequence", "AGP texture is not in allowed map\n");
      return (2);
    } else {
    }
  } else {
  }
  goto ldv_37527;
  default: ;
  goto ldv_37527;
  }
  ldv_37527:
  cur_seq->unfinished = 0;
  return (0);
}
}
__inline static int investigate_hazard(uint32_t cmd , hazard_t hz , drm_via_state_t *cur_seq )
{
  register uint32_t tmp ;
  register uint32_t *tmp_addr ;
  int ret ;
  {
  if ((unsigned int )cur_seq->unfinished != 0U && (unsigned int )cur_seq->unfinished != (unsigned int )seqs[(unsigned int )hz]) {
    ret = finish_current_sequence(cur_seq);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  switch ((unsigned int )hz) {
  case 1U: ;
  if (cmd == 4061196560U) {
    return (1);
  } else {
  }
  return (0);
  case 2U: ;
  if ((cmd & 4294966272U) == 4026531840U) {
    return (1);
  } else {
  }
  return (0);
  case 3U: ;
  if (cmd == 4061196560U) {
    return (1);
  } else {
  }
  drm_err("investigate_hazard", "Illegal DMA HALCYON_HEADER2 command\n");
  goto ldv_37557;
  case 4U: ;
  if ((cmd & 4294966272U) == 4026531840U) {
    return (1);
  } else {
  }
  drm_err("investigate_hazard", "Illegal DMA HALCYON_HEADER1 command\n");
  goto ldv_37557;
  case 5U: ;
  if ((cmd & 4293918720U) == 3994025984U) {
    return (1);
  } else {
  }
  drm_err("investigate_hazard", "Illegal DMA HALCYON_FIRECMD command\n");
  goto ldv_37557;
  case 12U: ;
  if (cmd == 3435973836U) {
    return (0);
  } else {
  }
  drm_err("investigate_hazard", "Illegal DMA HC_DUMMY command\n");
  goto ldv_37557;
  case 13U: ;
  if (cmd == 3722304989U) {
    return (0);
  } else {
  }
  drm_err("investigate_hazard", "Illegal DMA 0xdddddddd command\n");
  goto ldv_37557;
  case 6U:
  cur_seq->unfinished = 1;
  cur_seq->z_addr = (cur_seq->z_addr & 4278190080U) | (cmd & 16777215U);
  return (0);
  case 7U:
  cur_seq->unfinished = 1;
  cur_seq->z_addr = (cur_seq->z_addr & 16777215U) | (cmd << 24);
  return (0);
  case 8U:
  cur_seq->unfinished = 1;
  if ((cmd & 49152U) == 0U) {
    return (0);
  } else {
  }
  drm_err("investigate_hazard", "Attempt to place Z buffer in system memory\n");
  return (2);
  case 9U:
  cur_seq->unfinished = 2;
  cur_seq->d_addr = (cur_seq->d_addr & 4278190080U) | (cmd & 16777215U);
  return (0);
  case 10U:
  cur_seq->unfinished = 2;
  cur_seq->d_addr = (cur_seq->d_addr & 16777215U) | (cmd << 24);
  return (0);
  case 11U:
  cur_seq->unfinished = 2;
  if ((cmd & 49152U) == 0U) {
    return (0);
  } else {
  }
  drm_err("investigate_hazard", "Attempt to place 3D drawing buffer in system memory\n");
  return (2);
  case 14U:
  cur_seq->unfinished = 3;
  tmp = cmd >> 24;
  tmp_addr = (uint32_t *)(& cur_seq->t_addr) + ((unsigned long )cur_seq->texture + (unsigned long )tmp);
  *tmp_addr = (*tmp_addr & 4278190080U) | (cmd & 16777215U);
  return (0);
  case 15U:
  cur_seq->unfinished = 3;
  tmp = (cmd >> 24) - 32U;
  tmp = (tmp << 1) + tmp;
  tmp_addr = (uint32_t *)(& cur_seq->t_addr) + ((unsigned long )cur_seq->texture + (unsigned long )tmp);
  *tmp_addr = (*tmp_addr & 16777215U) | (cmd << 24);
  tmp_addr = tmp_addr + 1;
  *tmp_addr = (*tmp_addr & 16777215U) | ((cmd & 65280U) << 16);
  tmp_addr = tmp_addr + 1;
  *tmp_addr = (*tmp_addr & 16777215U) | ((cmd & 16711680U) << 8);
  return (0);
  case 16U:
  cur_seq->unfinished = 3;
  tmp = cur_seq->texture;
  cur_seq->tex_level_lo[tmp] = cmd & 63U;
  cur_seq->tex_level_hi[tmp] = (cmd & 4032U) >> 6;
  return (0);
  case 17U:
  cur_seq->unfinished = 3;
  tmp = (cmd >> 24) - 43U;
  if (tmp == 0U && (cmd & 524288U) != 0U) {
    cur_seq->pitch[cur_seq->texture][tmp] = cmd & 16383U;
    cur_seq->tex_npot[cur_seq->texture] = 1U;
  } else {
    cur_seq->pitch[cur_seq->texture][tmp] = (cmd & 15728640U) >> 20;
    cur_seq->tex_npot[cur_seq->texture] = 0U;
    if ((cmd & 1048575U) != 0U) {
      drm_err("investigate_hazard", "Unimplemented texture level 0 pitch mode.\n");
      return (2);
    } else {
    }
  }
  return (0);
  case 18U:
  cur_seq->unfinished = 3;
  tmp_addr = (uint32_t *)(& cur_seq->t_addr) + ((unsigned long )cur_seq->texture + 9UL);
  *tmp_addr = (*tmp_addr & 16777215U) | (cmd << 24);
  return (0);
  case 19U: ;
  case 20U:
  cur_seq->unfinished = 3;
  return (0);
  case 21U:
  cur_seq->unfinished = 3;
  tmp_addr = (uint32_t *)(& cur_seq->height) + (unsigned long )cur_seq->texture;
  *(tmp_addr + 5UL) = (uint32_t )(1 << (int )((cmd & 15728640U) >> 20));
  *(tmp_addr + 4UL) = (uint32_t )(1 << (int )((cmd & 983040U) >> 16));
  *(tmp_addr + 3UL) = (uint32_t )(1 << (int )((cmd & 61440U) >> 12));
  *(tmp_addr + 2UL) = (uint32_t )(1 << (int )((cmd & 3840U) >> 8));
  *(tmp_addr + 1UL) = (uint32_t )(1 << (int )((cmd & 240U) >> 4));
  *tmp_addr = (uint32_t )(1 << ((int )cmd & 15));
  return (0);
  case 22U:
  cur_seq->unfinished = 3;
  tmp_addr = (uint32_t *)(& cur_seq->height) + (unsigned long )cur_seq->texture;
  *(tmp_addr + 9UL) = (uint32_t )(1 << (int )((cmd & 61440U) >> 12));
  *(tmp_addr + 8UL) = (uint32_t )(1 << (int )((cmd & 3840U) >> 8));
  *(tmp_addr + 7UL) = (uint32_t )(1 << (int )((cmd & 240U) >> 4));
  *(tmp_addr + 6UL) = (uint32_t )(1 << ((int )cmd & 15));
  return (0);
  case 23U:
  cur_seq->unfinished = 3;
  tmp = cmd & 3U;
  if (tmp == 2U) {
    drm_err("investigate_hazard", "Attempt to fetch texture from system memory.\n");
    return (2);
  } else {
  }
  cur_seq->agp_texture = tmp == 3U;
  cur_seq->tex_palette_size[cur_seq->texture] = (cmd >> 16) & 7U;
  return (0);
  case 24U:
  cur_seq->vertex_count = cmd & 65535U;
  return (0);
  case 25U:
  cur_seq->multitex = (int )(cmd >> 3) & 1;
  return (0);
  default:
  drm_err("investigate_hazard", "Illegal DMA data: 0x%x\n", cmd);
  return (2);
  }
  ldv_37557: ;
  return (2);
}
}
__inline static int via_check_prim_list(uint32_t const **buffer , uint32_t const *buf_end ,
                                        drm_via_state_t *cur_seq )
{
  drm_via_private_t *dev_priv ;
  uint32_t a_fire ;
  uint32_t bcmd ;
  uint32_t dw_count ;
  int ret ;
  int have_fire ;
  uint32_t const *buf ;
  uint32_t const *tmp ;
  uint32_t const *tmp___0 ;
  uint32_t tmp___1 ;
  {
  dev_priv = (drm_via_private_t *)(cur_seq->dev)->dev_private;
  ret = 0;
  buf = *buffer;
  goto ldv_37599;
  ldv_37598:
  have_fire = 0;
  if ((long )buf_end - (long )buf <= 7L) {
    drm_err("via_check_prim_list", "Unexpected termination of primitive list.\n");
    ret = 1;
    goto ldv_37594;
  } else {
  }
  if (((unsigned int )*buf & 4261412864U) != 3959422976U) {
    goto ldv_37594;
  } else {
  }
  tmp = buf;
  buf = buf + 1;
  bcmd = *tmp;
  if (((unsigned int )*buf & 4261412864U) != 3992977408U) {
    drm_err("via_check_prim_list", "Expected Vertex List A command, got 0x%x\n", *buf);
    ret = 1;
    goto ldv_37594;
  } else {
  }
  tmp___0 = buf;
  buf = buf + 1;
  a_fire = (unsigned int )*tmp___0 | 1049344U;
  if (cur_seq->agp != 0 && (bcmd & 30720U) == 0U) {
    drm_err("via_check_prim_list", "Illegal B command vertex data for AGP.\n");
    ret = 1;
    goto ldv_37594;
  } else {
  }
  dw_count = 0U;
  if ((bcmd & 128U) != 0U) {
    dw_count = (cur_seq->multitex != 0 ? 2U : 1U) + dw_count;
  } else {
  }
  if ((bcmd & 256U) != 0U) {
    dw_count = (cur_seq->multitex != 0 ? 2U : 1U) + dw_count;
  } else {
  }
  if ((bcmd & 512U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  if ((bcmd & 1024U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  if ((bcmd & 2048U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  if ((bcmd & 4096U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  if ((bcmd & 8192U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  if ((bcmd & 16384U) != 0U) {
    dw_count = dw_count + 1U;
  } else {
  }
  goto ldv_37597;
  ldv_37596: ;
  if ((unsigned int )*buf == a_fire) {
    if (dev_priv->num_fire_offsets > 1023U) {
      drm_err("via_check_prim_list", "Fire offset buffer full.\n");
      ret = 1;
      goto ldv_37595;
    } else {
    }
    tmp___1 = dev_priv->num_fire_offsets;
    dev_priv->num_fire_offsets = dev_priv->num_fire_offsets + 1U;
    dev_priv->fire_offsets[tmp___1] = buf;
    have_fire = 1;
    buf = buf + 1;
    if ((unsigned long )buf < (unsigned long )buf_end && (unsigned int )*buf == a_fire) {
      buf = buf + 1;
    } else {
    }
    goto ldv_37595;
  } else {
  }
  if ((unsigned int )*buf == 4061196560U || ((unsigned int )*buf & 4293918720U) == 3994025984U) {
    drm_err("via_check_prim_list", "Missing Vertex Fire command, Stray Vertex Fire command  or verifier lost sync.\n");
    ret = 1;
    goto ldv_37595;
  } else {
  }
  ret = eat_words(& buf, buf_end, dw_count);
  if (ret != 0) {
    goto ldv_37595;
  } else {
  }
  ldv_37597: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37596;
  } else {
  }
  ldv_37595: ;
  if ((unsigned long )buf >= (unsigned long )buf_end && have_fire == 0) {
    drm_err("via_check_prim_list", "Missing Vertex Fire command or verifier lost sync.\n");
    ret = 1;
    goto ldv_37594;
  } else {
  }
  if (cur_seq->agp != 0 && (int )(((long )buf - (long )cur_seq->buf_start) / 4L) & 1) {
    drm_err("via_check_prim_list", "AGP Primitive list end misaligned.\n");
    ret = 1;
    goto ldv_37594;
  } else {
  }
  ldv_37599: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37598;
  } else {
  }
  ldv_37594:
  *buffer = buf;
  return (ret);
}
}
__inline static verifier_state_t via_check_header2(uint32_t const **buffer , uint32_t const *buf_end ,
                                                   drm_via_state_t *hc_state )
{
  uint32_t cmd ;
  int hz_mode ;
  hazard_t hz ;
  uint32_t const *buf ;
  hazard_t const *hz_table ;
  uint32_t const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  uint32_t const *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  buf = *buffer;
  if ((long )buf_end - (long )buf <= 7L) {
    drm_err("via_check_header2", "Illegal termination of DMA HALCYON_HEADER2 sequence.\n");
    return (5);
  } else {
  }
  buf = buf + 1;
  tmp = buf;
  buf = buf + 1;
  cmd = (unsigned int )*tmp >> 16;
  switch (cmd) {
  case 0U:
  tmp___0 = via_check_prim_list(& buf, buf_end, hc_state);
  if (tmp___0 != 0) {
    return (5);
  } else {
  }
  *buffer = buf;
  return (0);
  case 1U:
  hz_table = (hazard_t const *)(& table1);
  goto ldv_37613;
  case 2U:
  hc_state->texture = 0U;
  hz_table = (hazard_t const *)(& table2);
  goto ldv_37613;
  case 258U:
  hc_state->texture = 1U;
  hz_table = (hazard_t const *)(& table2);
  goto ldv_37613;
  case 65026U:
  hz_table = (hazard_t const *)(& table3);
  goto ldv_37613;
  case 254U:
  tmp___1 = eat_words(& buf, buf_end, 2U);
  if (tmp___1 != 0) {
    return (5);
  } else {
  }
  *buffer = buf;
  return (0);
  case 5123U:
  tmp___2 = eat_words(& buf, buf_end, 32U);
  if (tmp___2 != 0) {
    return (5);
  } else {
  }
  *buffer = buf;
  return (0);
  case 3U: ;
  case 259U:
  drm_err("via_check_header2", "Texture palettes are rejected because of lack of info how to determine their size.\n");
  return (5);
  case 4099U:
  drm_err("via_check_header2", "Fog factor palettes are rejected because of lack of info how to determine their size.\n");
  return (5);
  default:
  drm_err("via_check_header2", "Invalid or unimplemented HALCYON_HEADER2 DMA subcommand: 0x%x. Previous dword: 0x%x\n",
          cmd, *(buf + 0xfffffffffffffffeUL));
  *buffer = buf;
  return (5);
  }
  ldv_37613: ;
  goto ldv_37625;
  ldv_37624:
  tmp___3 = buf;
  buf = buf + 1;
  cmd = *tmp___3;
  hz = *(hz_table + (unsigned long )(cmd >> 24));
  if ((unsigned int )hz != 0U) {
    hz_mode = investigate_hazard(cmd, hz, hc_state);
    if (hz_mode != 0) {
      if (hz_mode == 1) {
        buf = buf - 1;
        goto ldv_37623;
      } else {
      }
      return (5);
    } else {
    }
  } else
  if ((unsigned int )hc_state->unfinished != 0U) {
    tmp___4 = finish_current_sequence(hc_state);
    if (tmp___4 != 0) {
      return (5);
    } else {
    }
  } else {
  }
  ldv_37625: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37624;
  } else {
  }
  ldv_37623: ;
  if ((unsigned int )hc_state->unfinished != 0U) {
    tmp___5 = finish_current_sequence(hc_state);
    if (tmp___5 != 0) {
      return (5);
    } else {
    }
  } else {
  }
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_parse_header2(drm_via_private_t *dev_priv , uint32_t const **buffer ,
                                                   uint32_t const *buf_end , int *fire_count )
{
  uint32_t cmd ;
  uint32_t const *buf ;
  uint32_t const *next_fire ;
  int burst ;
  uint32_t const *tmp ;
  uint32_t const *tmp___0 ;
  uint32_t const *tmp___1 ;
  {
  buf = *buffer;
  burst = 0;
  next_fire = dev_priv->fire_offsets[*fire_count];
  buf = buf + 1;
  cmd = (unsigned int )*buf >> 16;
  tmp = buf;
  buf = buf + 1;
  writel(*tmp, (void volatile *)(dev_priv->mmio)->handle + 1084U);
  switch (cmd) {
  case 0U: ;
  goto ldv_37641;
  ldv_37640: ;
  goto ldv_37638;
  ldv_37637:
  tmp___0 = buf;
  buf = buf + 1;
  writel(*tmp___0, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((burst & 63) + 1088));
  burst = burst + 4;
  ldv_37638: ;
  if ((unsigned long )buf <= (unsigned long )next_fire) {
    goto ldv_37637;
  } else {
  }
  if ((unsigned long )buf < (unsigned long )buf_end && ((unsigned int )*buf & 4293918720U) == 3994025984U) {
    buf = buf + 1;
  } else {
  }
  *fire_count = *fire_count + 1;
  if ((uint32_t )*fire_count < dev_priv->num_fire_offsets) {
    next_fire = dev_priv->fire_offsets[*fire_count];
  } else {
  }
  ldv_37641: ;
  if (((unsigned long )buf < (unsigned long )buf_end && (uint32_t )*fire_count < dev_priv->num_fire_offsets) && ((unsigned int )*buf & 4261412864U) == 3959422976U) {
    goto ldv_37640;
  } else {
  }
  goto ldv_37643;
  default: ;
  goto ldv_37647;
  ldv_37646: ;
  if ((((unsigned int )*buf == 4061196560U || ((unsigned int )*buf & 4294966272U) == 4026531840U) || ((unsigned int )*buf & 4294901760U) == 4261675008U) || ((unsigned int )*buf & 4294901760U) == 4261740544U) {
    goto ldv_37645;
  } else {
  }
  tmp___1 = buf;
  buf = buf + 1;
  writel(*tmp___1, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((burst & 63) + 1088));
  burst = burst + 4;
  ldv_37647: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37646;
  } else {
  }
  ldv_37645: ;
  }
  ldv_37643:
  *buffer = buf;
  return (0);
}
}
__inline static int verify_mmio_address(uint32_t address )
{
  {
  if (address > 1023U && address <= 3071U) {
    drm_err("verify_mmio_address", "Invalid VIDEO DMA command. Attempt to access 3D- or command burst area.\n");
    return (1);
  } else
  if (address > 3327U && address <= 4863U) {
    drm_err("verify_mmio_address", "Invalid VIDEO DMA command. Attempt to access PCI DMA area.\n");
    return (1);
  } else
  if (address > 5119U) {
    drm_err("verify_mmio_address", "Invalid VIDEO DMA command. Attempt to access VGA registers.\n");
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int verify_video_tail(uint32_t const **buffer , uint32_t const *buf_end ,
                                      uint32_t dwords )
{
  uint32_t const *buf ;
  uint32_t const *tmp ;
  uint32_t tmp___0 ;
  {
  buf = *buffer;
  if (((long )buf_end - (long )buf) / 4L < (long )dwords) {
    drm_err("verify_video_tail", "Illegal termination of video command.\n");
    return (1);
  } else {
  }
  goto ldv_37660;
  ldv_37659:
  tmp = buf;
  buf = buf + 1;
  if ((unsigned int )*tmp != 0U) {
    drm_err("verify_video_tail", "Illegal video command tail.\n");
    return (1);
  } else {
  }
  ldv_37660:
  tmp___0 = dwords;
  dwords = dwords - 1U;
  if (tmp___0 != 0U) {
    goto ldv_37659;
  } else {
  }
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_check_header1(uint32_t const **buffer , uint32_t const *buf_end )
{
  uint32_t cmd ;
  uint32_t const *buf ;
  verifier_state_t ret ;
  {
  buf = *buffer;
  ret = 0;
  goto ldv_37672;
  ldv_37671:
  cmd = *buf;
  if (cmd > 4026532095U && cmd <= 4026532607U) {
    if ((cmd & 4294966272U) != 4026531840U) {
      goto ldv_37669;
    } else {
    }
    drm_err("via_check_header1", "Invalid HALCYON_HEADER1 command. Attempt to access 3D- or command burst area.\n");
    ret = 5;
    goto ldv_37669;
  } else
  if (cmd > 4026532671U) {
    if ((cmd & 4294966272U) != 4026531840U) {
      goto ldv_37669;
    } else {
    }
    drm_err("via_check_header1", "Invalid HALCYON_HEADER1 command. Attempt to access VGA registers.\n");
    ret = 5;
    goto ldv_37669;
  } else {
    buf = buf + 2UL;
  }
  ldv_37672: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37671;
  } else {
  }
  ldv_37669:
  *buffer = buf;
  return (ret);
}
}
__inline static verifier_state_t via_parse_header1(drm_via_private_t *dev_priv , uint32_t const **buffer ,
                                                   uint32_t const *buf_end )
{
  register uint32_t cmd ;
  uint32_t const *buf ;
  {
  buf = *buffer;
  goto ldv_37682;
  ldv_37681:
  cmd = *buf;
  if ((cmd & 4294966272U) != 4026531840U) {
    goto ldv_37680;
  } else {
  }
  buf = buf + 1;
  writel(*buf, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((cmd & 1023U) << 2));
  buf = buf + 1;
  ldv_37682: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37681;
  } else {
  }
  ldv_37680:
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_check_vheader5(uint32_t const **buffer , uint32_t const *buf_end )
{
  uint32_t data ;
  uint32_t const *buf ;
  uint32_t const *tmp ;
  int tmp___0 ;
  uint32_t const *tmp___1 ;
  uint32_t const *tmp___2 ;
  uint32_t const *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  buf = *buffer;
  if ((long )buf_end - (long )buf <= 15L) {
    drm_err("via_check_vheader5", "Illegal termination of video header5 command\n");
    return (5);
  } else {
  }
  tmp = buf;
  buf = buf + 1;
  data = (unsigned int )*tmp & 65535U;
  tmp___0 = verify_mmio_address(data);
  if (tmp___0 != 0) {
    return (5);
  } else {
  }
  tmp___1 = buf;
  buf = buf + 1;
  data = *tmp___1;
  tmp___2 = buf;
  buf = buf + 1;
  if ((unsigned int )*tmp___2 != 16056320U) {
    drm_err("via_check_vheader5", "Illegal header5 header data\n");
    return (5);
  } else {
  }
  tmp___3 = buf;
  buf = buf + 1;
  if ((unsigned int )*tmp___3 != 0U) {
    drm_err("via_check_vheader5", "Illegal header5 header data\n");
    return (5);
  } else {
  }
  tmp___4 = eat_words(& buf, buf_end, data);
  if (tmp___4 != 0) {
    return (5);
  } else {
  }
  if ((data & 3U) != 0U) {
    tmp___5 = verify_video_tail(& buf, buf_end, 4U - (data & 3U));
    if (tmp___5 != 0) {
      return (5);
    } else {
    }
  } else {
  }
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_parse_vheader5(drm_via_private_t *dev_priv ,
                                                    uint32_t const **buffer , uint32_t const *buf_end )
{
  uint32_t addr ;
  uint32_t count ;
  uint32_t i ;
  uint32_t const *buf ;
  uint32_t const *tmp ;
  uint32_t const *tmp___0 ;
  uint32_t tmp___1 ;
  {
  buf = *buffer;
  tmp = buf;
  buf = buf + 1;
  addr = (unsigned int )*tmp & 65535U;
  count = *buf;
  i = count;
  buf = buf + 3UL;
  goto ldv_37700;
  ldv_37699:
  tmp___0 = buf;
  buf = buf + 1;
  writel(*tmp___0, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )addr);
  ldv_37700:
  tmp___1 = i;
  i = i - 1U;
  if (tmp___1 != 0U) {
    goto ldv_37699;
  } else {
  }
  if ((count & 3U) != 0U) {
    buf = buf + (unsigned long )(4U - (count & 3U));
  } else {
  }
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_check_vheader6(uint32_t const **buffer , uint32_t const *buf_end )
{
  uint32_t data ;
  uint32_t const *buf ;
  uint32_t i ;
  uint32_t const *tmp ;
  uint32_t const *tmp___0 ;
  uint32_t const *tmp___1 ;
  uint32_t const *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  buf = *buffer;
  if ((long )buf_end - (long )buf <= 15L) {
    drm_err("via_check_vheader6", "Illegal termination of video header6 command\n");
    return (5);
  } else {
  }
  buf = buf + 1;
  tmp = buf;
  buf = buf + 1;
  data = *tmp;
  tmp___0 = buf;
  buf = buf + 1;
  if ((unsigned int )*tmp___0 != 16121856U) {
    drm_err("via_check_vheader6", "Illegal header6 header data\n");
    return (5);
  } else {
  }
  tmp___1 = buf;
  buf = buf + 1;
  if ((unsigned int )*tmp___1 != 0U) {
    drm_err("via_check_vheader6", "Illegal header6 header data\n");
    return (5);
  } else {
  }
  if (((long )buf_end - (long )buf) / 4L < (long )(data << 1)) {
    drm_err("via_check_vheader6", "Illegal termination of video header6 command\n");
    return (5);
  } else {
  }
  i = 0U;
  goto ldv_37711;
  ldv_37710:
  tmp___2 = buf;
  buf = buf + 1;
  tmp___3 = verify_mmio_address(*tmp___2);
  if (tmp___3 != 0) {
    return (5);
  } else {
  }
  buf = buf + 1;
  i = i + 1U;
  ldv_37711: ;
  if (i < data) {
    goto ldv_37710;
  } else {
  }
  data = data << 1;
  if ((data & 3U) != 0U) {
    tmp___4 = verify_video_tail(& buf, buf_end, 4U - (data & 3U));
    if (tmp___4 != 0) {
      return (5);
    } else {
    }
  } else {
  }
  *buffer = buf;
  return (0);
}
}
__inline static verifier_state_t via_parse_vheader6(drm_via_private_t *dev_priv ,
                                                    uint32_t const **buffer , uint32_t const *buf_end )
{
  uint32_t addr ;
  uint32_t count ;
  uint32_t i ;
  uint32_t const *buf ;
  uint32_t const *tmp ;
  uint32_t const *tmp___0 ;
  uint32_t tmp___1 ;
  {
  buf = *buffer;
  buf = buf + 1;
  count = *buf;
  i = count;
  buf = buf + 3UL;
  goto ldv_37723;
  ldv_37722:
  tmp = buf;
  buf = buf + 1;
  addr = *tmp;
  tmp___0 = buf;
  buf = buf + 1;
  writel(*tmp___0, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )addr);
  ldv_37723:
  tmp___1 = i;
  i = i - 1U;
  if (tmp___1 != 0U) {
    goto ldv_37722;
  } else {
  }
  count = count << 1;
  if ((count & 3U) != 0U) {
    buf = buf + (unsigned long )(4U - (count & 3U));
  } else {
  }
  *buffer = buf;
  return (0);
}
}
int via_verify_command_stream(uint32_t const *buf , unsigned int size , struct drm_device *dev ,
                              int agp )
{
  drm_via_private_t *dev_priv ;
  drm_via_state_t *hc_state ;
  drm_via_state_t saved_state ;
  uint32_t cmd ;
  uint32_t const *buf_end ;
  verifier_state_t state ;
  int cme_video ;
  int supported_3d ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  hc_state = & dev_priv->hc_state;
  saved_state = *hc_state;
  buf_end = buf + (unsigned long )(size >> 2);
  state = 0;
  cme_video = dev_priv->chipset == 1 || dev_priv->chipset == 2;
  supported_3d = dev_priv->chipset != 2;
  hc_state->dev = dev;
  hc_state->unfinished = 0;
  hc_state->map_cache = (drm_local_map_t *)0;
  hc_state->agp = agp;
  hc_state->buf_start = buf;
  dev_priv->num_fire_offsets = 0U;
  goto ldv_37749;
  ldv_37748: ;
  switch ((unsigned int )state) {
  case 1U:
  state = via_check_header2(& buf, buf_end, hc_state);
  goto ldv_37740;
  case 2U:
  state = via_check_header1(& buf, buf_end);
  goto ldv_37740;
  case 3U:
  state = via_check_vheader5(& buf, buf_end);
  goto ldv_37740;
  case 4U:
  state = via_check_vheader6(& buf, buf_end);
  goto ldv_37740;
  case 0U:
  cmd = *buf;
  if (cmd == 4061196560U && supported_3d != 0) {
    state = 1;
  } else
  if ((cmd & 4294966272U) == 4026531840U) {
    state = 2;
  } else
  if (cme_video != 0 && (cmd & 4294901760U) == 4261675008U) {
    state = 3;
  } else
  if (cme_video != 0 && (cmd & 4294901760U) == 4261740544U) {
    state = 4;
  } else
  if (cmd == 4061196560U && supported_3d == 0) {
    drm_err("via_verify_command_stream", "Accelerated 3D is not supported on this chipset yet.\n");
    state = 5;
  } else {
    drm_err("via_verify_command_stream", "Invalid / Unimplemented DMA HEADER command. 0x%x\n",
            cmd);
    state = 5;
  }
  goto ldv_37740;
  case 5U: ;
  default:
  *hc_state = saved_state;
  return (-22);
  }
  ldv_37740: ;
  ldv_37749: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37748;
  } else {
  }
  if ((unsigned int )state == 5U) {
    *hc_state = saved_state;
    return (-22);
  } else {
  }
  return (0);
}
}
int via_parse_command_stream(struct drm_device *dev , uint32_t const *buf , unsigned int size )
{
  drm_via_private_t *dev_priv ;
  uint32_t cmd ;
  uint32_t const *buf_end ;
  verifier_state_t state ;
  int fire_count ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  buf_end = buf + (unsigned long )(size >> 2);
  state = 0;
  fire_count = 0;
  goto ldv_37771;
  ldv_37770: ;
  switch ((unsigned int )state) {
  case 1U:
  state = via_parse_header2(dev_priv, & buf, buf_end, & fire_count);
  goto ldv_37762;
  case 2U:
  state = via_parse_header1(dev_priv, & buf, buf_end);
  goto ldv_37762;
  case 3U:
  state = via_parse_vheader5(dev_priv, & buf, buf_end);
  goto ldv_37762;
  case 4U:
  state = via_parse_vheader6(dev_priv, & buf, buf_end);
  goto ldv_37762;
  case 0U:
  cmd = *buf;
  if (cmd == 4061196560U) {
    state = 1;
  } else
  if ((cmd & 4294966272U) == 4026531840U) {
    state = 2;
  } else
  if ((cmd & 4294901760U) == 4261675008U) {
    state = 3;
  } else
  if ((cmd & 4294901760U) == 4261740544U) {
    state = 4;
  } else {
    drm_err("via_parse_command_stream", "Invalid / Unimplemented DMA HEADER command. 0x%x\n",
            cmd);
    state = 5;
  }
  goto ldv_37762;
  case 5U: ;
  default: ;
  return (-22);
  }
  ldv_37762: ;
  ldv_37771: ;
  if ((unsigned long )buf < (unsigned long )buf_end) {
    goto ldv_37770;
  } else {
  }
  if ((unsigned int )state == 5U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static void setup_hazard_table(hz_init_t *init_table , hazard_t *table , int size )
{
  int i ;
  {
  i = 0;
  goto ldv_37780;
  ldv_37779:
  *(table + (unsigned long )i) = 26;
  i = i + 1;
  ldv_37780: ;
  if (i <= 255) {
    goto ldv_37779;
  } else {
  }
  i = 0;
  goto ldv_37783;
  ldv_37782:
  *(table + (unsigned long )(init_table + (unsigned long )i)->code) = (init_table + (unsigned long )i)->hz;
  i = i + 1;
  ldv_37783: ;
  if (i < size) {
    goto ldv_37782;
  } else {
  }
  return;
}
}
void via_init_command_verifier(void)
{
  {
  setup_hazard_table((hz_init_t *)(& init_table1), (hazard_t *)(& table1), 48);
  setup_hazard_table((hz_init_t *)(& init_table2), (hazard_t *)(& table2), 55);
  setup_hazard_table((hz_init_t *)(& init_table3), (hazard_t *)(& table3), 4);
  return;
}
}
void *ldv_kmem_cache_alloc_116(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_136(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void via_init_futex(drm_via_private_t *dev_priv )
{
  unsigned int i ;
  long tmp ;
  struct lock_class_key __key ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_init_futex", "\n");
  } else {
  }
  i = 0U;
  goto ldv_37459;
  ldv_37458:
  __init_waitqueue_head((wait_queue_head_t *)(& dev_priv->decoder_queue) + (unsigned long )i,
                        "&(dev_priv->decoder_queue[i])", & __key);
  ((struct drm_hw_lock volatile *)((((unsigned long )(& (dev_priv->sarea_priv)->XvMCLockArea) + 63UL) & 0xffffffffffffffc0UL) + (unsigned long )(i * 64U)))->lock = 0U;
  i = i + 1U;
  ldv_37459: ;
  if (i <= 4U) {
    goto ldv_37458;
  } else {
  }
  return;
}
}
void via_cleanup_futex(drm_via_private_t *dev_priv )
{
  {
  return;
}
}
void via_release_futex(drm_via_private_t *dev_priv , int context )
{
  unsigned int i ;
  int volatile *lock ;
  {
  if ((unsigned long )dev_priv->sarea_priv == (unsigned long )((drm_via_sarea_t *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_37471;
  ldv_37470:
  lock = (int volatile *)((((unsigned long )(& (dev_priv->sarea_priv)->XvMCLockArea) + 63UL) & 0xffffffffffffffc0UL) + (unsigned long )(i * 64U));
  if (((unsigned int )*lock & 1073741823U) == (unsigned int )context) {
    if ((int )*lock < 0 && ((unsigned int )*lock & 1073741824U) != 0U) {
      __wake_up((wait_queue_head_t *)(& dev_priv->decoder_queue) + (unsigned long )i,
                3U, 1, (void *)0);
    } else {
    }
    *lock = 0;
  } else {
  }
  i = i + 1U;
  ldv_37471: ;
  if (i <= 4U) {
    goto ldv_37470;
  } else {
  }
  return;
}
}
int via_decoder_futex(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_futex_t *fx ;
  int volatile *lock ;
  drm_via_private_t *dev_priv ;
  drm_via_sarea_t *sAPriv ;
  int ret ;
  long tmp ;
  wait_queue_t entry ;
  struct task_struct *tmp___0 ;
  unsigned long end ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  {
  fx = (drm_via_futex_t *)data;
  dev_priv = (drm_via_private_t *)dev->dev_private;
  sAPriv = dev_priv->sarea_priv;
  ret = 0;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_decoder_futex", "\n");
  } else {
  }
  if (fx->lock > 4U) {
    return (-14);
  } else {
  }
  lock = (int volatile *)((((unsigned long )(& sAPriv->XvMCLockArea) + 63UL) & 0xffffffffffffffc0UL) + (unsigned long )(fx->lock * 64U));
  switch ((unsigned int )fx->func) {
  case 0U:
  tmp___0 = get_current();
  entry.flags = 0U;
  entry.private = (void *)tmp___0;
  entry.func = & default_wake_function;
  entry.task_list.next = (struct list_head *)0;
  entry.task_list.prev = (struct list_head *)0;
  end = (unsigned long )((fx->ms / 10U) * 2U) + (unsigned long )jiffies;
  add_wait_queue((wait_queue_head_t *)(& dev_priv->decoder_queue) + (unsigned long )fx->lock,
                 & entry);
  ldv_37494:
  tmp___1 = get_current();
  tmp___1->state = 1L;
  if ((__u32 )*lock != fx->val) {
    goto ldv_37487;
  } else {
  }
  if ((long )((unsigned long )jiffies - end) >= 0L) {
    ret = -16;
    goto ldv_37487;
  } else {
  }
  schedule_timeout(2L);
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    ret = -4;
    goto ldv_37487;
  } else {
  }
  goto ldv_37494;
  ldv_37487:
  tmp___4 = get_current();
  tmp___4->state = 0L;
  remove_wait_queue((wait_queue_head_t *)(& dev_priv->decoder_queue) + (unsigned long )fx->lock,
                    & entry);
  return (ret);
  case 1U:
  __wake_up((wait_queue_head_t *)(& dev_priv->decoder_queue) + (unsigned long )fx->lock,
            3U, 1, (void *)0);
  return (0);
  }
  return (0);
}
}
void *ldv_kmem_cache_alloc_136(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
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
__inline static void ldv_spin_lock_141(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_145(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_148(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_163(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_162(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_164(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
extern void *vzalloc(unsigned long ) ;
void *ldv_vzalloc_160(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
unsigned long ldv___get_free_pages_161(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
void *ldv_kmem_cache_alloc_156(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
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
__inline static void *ldv_kcalloc_154(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
__inline static void SetPageDirty(struct page *page )
{
  {
  set_bit(4L, (unsigned long volatile *)(& page->flags));
  return;
}
}
__inline static int PageReserved(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern long get_user_pages(struct task_struct * , struct mm_struct * , unsigned long ,
                           unsigned long , int , int , struct page ** , struct vm_area_struct ** ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
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
    ldv_26456: ;
    goto ldv_26456;
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
    ldv_26465: ;
    goto ldv_26465;
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
    ldv_26499: ;
    goto ldv_26499;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (91), "i" (12UL));
    ldv_26507: ;
    goto ldv_26507;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
static void via_unmap_blit_from_device(struct pci_dev *pdev , drm_via_sg_info_t *vsg )
{
  int num_desc ;
  unsigned int cur_descriptor_page ;
  unsigned int descriptor_this_page ;
  drm_via_descriptor_t *desc_ptr ;
  dma_addr_t next ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  num_desc = vsg->num_desc;
  cur_descriptor_page = (unsigned int )num_desc / vsg->descriptors_per_page;
  descriptor_this_page = (unsigned int )num_desc % vsg->descriptors_per_page;
  desc_ptr = *(vsg->desc_pages + (unsigned long )cur_descriptor_page) + (unsigned long )descriptor_this_page;
  next = vsg->chain_start;
  goto ldv_37493;
  ldv_37492:
  tmp = descriptor_this_page;
  descriptor_this_page = descriptor_this_page - 1U;
  if (tmp == 0U) {
    cur_descriptor_page = cur_descriptor_page - 1U;
    descriptor_this_page = vsg->descriptors_per_page - 1U;
    desc_ptr = *(vsg->desc_pages + (unsigned long )cur_descriptor_page) + (unsigned long )descriptor_this_page;
  } else {
  }
  dma_unmap_single_attrs(& pdev->dev, next, 16UL, 1, (struct dma_attrs *)0);
  dma_unmap_page(& pdev->dev, (dma_addr_t )desc_ptr->mem_addr, (size_t )desc_ptr->size,
                 vsg->direction);
  next = (unsigned long long )desc_ptr->next;
  desc_ptr = desc_ptr - 1;
  ldv_37493:
  tmp___0 = num_desc;
  num_desc = num_desc - 1;
  if (tmp___0 != 0) {
    goto ldv_37492;
  } else {
  }
  return;
}
}
static void via_map_blit_for_device(struct pci_dev *pdev , drm_via_dmablit_t const *xfer ,
                                    drm_via_sg_info_t *vsg , int mode )
{
  unsigned int cur_descriptor_page ;
  unsigned int num_descriptors_this_page ;
  unsigned char *mem_addr ;
  unsigned char *cur_mem ;
  unsigned char *first_addr ;
  uint32_t fb_addr ;
  uint32_t cur_fb ;
  unsigned long line_len ;
  unsigned int remaining_len ;
  int num_desc ;
  int cur_line ;
  dma_addr_t next ;
  drm_via_descriptor_t *desc_ptr ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  dma_addr_t tmp ;
  {
  cur_descriptor_page = 0U;
  num_descriptors_this_page = 0U;
  mem_addr = xfer->mem_addr;
  first_addr = (unsigned char *)((unsigned long )mem_addr & 0xfffffffffffff000UL);
  fb_addr = xfer->fb_addr;
  num_desc = 0;
  next = 2ULL;
  desc_ptr = (drm_via_descriptor_t *)0;
  if (mode == 1) {
    desc_ptr = *(vsg->desc_pages + (unsigned long )cur_descriptor_page);
  } else {
  }
  cur_line = 0;
  goto ldv_37521;
  ldv_37520:
  line_len = (unsigned long )xfer->line_length;
  cur_fb = fb_addr;
  cur_mem = mem_addr;
  goto ldv_37518;
  ldv_37517:
  _min1 = 4096UL - ((unsigned long )cur_mem & 4095UL);
  _min2 = line_len;
  remaining_len = (unsigned int )(_min1 < _min2 ? _min1 : _min2);
  line_len = line_len - (unsigned long )remaining_len;
  if (mode == 1) {
    tmp = dma_map_page(& pdev->dev, *(vsg->pages + (((unsigned long )cur_mem >> 12) - ((unsigned long )first_addr >> 12))),
                       (unsigned long )cur_mem & 4095UL, (size_t )remaining_len, vsg->direction);
    desc_ptr->mem_addr = (uint32_t )tmp;
    desc_ptr->dev_addr = cur_fb;
    desc_ptr->size = remaining_len;
    desc_ptr->next = (unsigned int )next;
    next = dma_map_single_attrs(& pdev->dev, (void *)desc_ptr, 16UL, 1, (struct dma_attrs *)0);
    desc_ptr = desc_ptr + 1;
    num_descriptors_this_page = num_descriptors_this_page + 1U;
    if (num_descriptors_this_page >= vsg->descriptors_per_page) {
      num_descriptors_this_page = 0U;
      cur_descriptor_page = cur_descriptor_page + 1U;
      desc_ptr = *(vsg->desc_pages + (unsigned long )cur_descriptor_page);
    } else {
    }
  } else {
  }
  num_desc = num_desc + 1;
  cur_mem = cur_mem + (unsigned long )remaining_len;
  cur_fb = cur_fb + remaining_len;
  ldv_37518: ;
  if (line_len != 0UL) {
    goto ldv_37517;
  } else {
  }
  mem_addr = mem_addr + (unsigned long )xfer->mem_stride;
  fb_addr = (uint32_t )xfer->fb_stride + fb_addr;
  cur_line = cur_line + 1;
  ldv_37521: ;
  if ((unsigned int )cur_line < (unsigned int )xfer->num_lines) {
    goto ldv_37520;
  } else {
  }
  if (mode == 1) {
    vsg->chain_start = next;
    vsg->state = 0;
  } else {
  }
  vsg->num_desc = num_desc;
  return;
}
}
static void via_free_sg_info(struct pci_dev *pdev , drm_via_sg_info_t *vsg )
{
  struct page *page ;
  int i ;
  int tmp ;
  {
  switch ((unsigned int )vsg->state) {
  case 0U:
  via_unmap_blit_from_device(pdev, vsg);
  case 1U:
  i = 0;
  goto ldv_37532;
  ldv_37531: ;
  if ((unsigned long )*(vsg->desc_pages + (unsigned long )i) != (unsigned long )((struct _drm_via_descriptor *)0)) {
    free_pages((unsigned long )*(vsg->desc_pages + (unsigned long )i), 0U);
  } else {
  }
  i = i + 1;
  ldv_37532: ;
  if (vsg->num_desc_pages > i) {
    goto ldv_37531;
  } else {
  }
  kfree((void const *)vsg->desc_pages);
  case 2U:
  i = 0;
  goto ldv_37536;
  ldv_37535:
  page = *(vsg->pages + (unsigned long )i);
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    tmp = PageReserved((struct page const *)page);
    if (tmp == 0 && (unsigned int )vsg->direction == 2U) {
      SetPageDirty(page);
    } else {
    }
    put_page(page);
  } else {
  }
  i = i + 1;
  ldv_37536: ;
  if ((unsigned long )i < vsg->num_pages) {
    goto ldv_37535;
  } else {
  }
  case 3U:
  vfree((void const *)vsg->pages);
  default:
  vsg->state = 4;
  }
  vfree((void const *)vsg->bounce_buffer);
  vsg->bounce_buffer = (unsigned char *)0U;
  vsg->free_on_sequence = 0U;
  return;
}
}
static void via_fire_dmablit(struct drm_device *dev , drm_via_sg_info_t *vsg , int engine )
{
  drm_via_private_t *dev_priv ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  writel(0U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 228) * 16));
  writel(0U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )(engine * 16 + 3652));
  writel(25U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
  writel(3U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 928) * 4));
  writel(0U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )(engine * 16 + 3656));
  writel((unsigned int )vsg->chain_start, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )(engine * 16 + 3660));
  __asm__ volatile ("sfence": : : "memory");
  writel(3U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
  readl((void const volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
  return;
}
}
static int via_lock_all_dma_pages(drm_via_sg_info_t *vsg , drm_via_dmablit_t *xfer )
{
  int ret ;
  unsigned long first_pfn ;
  void *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  {
  first_pfn = (unsigned long )xfer->mem_addr >> 12;
  vsg->num_pages = (((unsigned long )(xfer->mem_addr + (unsigned long )(xfer->num_lines * xfer->mem_stride - 1U)) >> 12) - first_pfn) + 1UL;
  tmp = ldv_vzalloc_160(vsg->num_pages * 8UL);
  vsg->pages = (struct page **)tmp;
  if ((unsigned long )vsg->pages == (unsigned long )((struct page **)0)) {
    return (-12);
  } else {
  }
  tmp___0 = get_current();
  down_read(& (tmp___0->mm)->mmap_sem);
  tmp___1 = get_current();
  tmp___2 = get_current();
  tmp___3 = get_user_pages(tmp___2, tmp___1->mm, (unsigned long )xfer->mem_addr, vsg->num_pages,
                           (unsigned int )vsg->direction == 2U, 0, vsg->pages, (struct vm_area_struct **)0);
  ret = (int )tmp___3;
  tmp___4 = get_current();
  up_read(& (tmp___4->mm)->mmap_sem);
  if ((unsigned long )ret != vsg->num_pages) {
    if (ret < 0) {
      return (ret);
    } else {
    }
    vsg->state = 2;
    return (-22);
  } else {
  }
  vsg->state = 2;
  tmp___5 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___5 != 0L) {
    drm_ut_debug_printk("via_lock_all_dma_pages", "DMA pages locked\n");
  } else {
  }
  return (0);
}
}
static int via_alloc_desc_pages(drm_via_sg_info_t *vsg )
{
  int i ;
  struct _drm_via_descriptor **tmp ;
  void *tmp___0 ;
  struct _drm_via_descriptor *tmp___1 ;
  unsigned long tmp___2 ;
  long tmp___3 ;
  {
  vsg->descriptors_per_page = 256U;
  vsg->num_desc_pages = (int )((((unsigned int )vsg->num_desc + vsg->descriptors_per_page) - 1U) / vsg->descriptors_per_page);
  tmp___0 = kcalloc((size_t )vsg->num_desc_pages, 8UL, 208U);
  tmp = (struct _drm_via_descriptor **)tmp___0;
  vsg->desc_pages = tmp;
  if ((unsigned long )tmp == (unsigned long )((struct _drm_via_descriptor **)0)) {
    return (-12);
  } else {
  }
  vsg->state = 1;
  i = 0;
  goto ldv_37558;
  ldv_37557:
  tmp___2 = ldv___get_free_pages_161(208U, 0U);
  tmp___1 = (struct _drm_via_descriptor *)tmp___2;
  *(vsg->desc_pages + (unsigned long )i) = tmp___1;
  if ((unsigned long )tmp___1 == (unsigned long )((struct _drm_via_descriptor *)0)) {
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_37558: ;
  if (vsg->num_desc_pages > i) {
    goto ldv_37557;
  } else {
  }
  tmp___3 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___3 != 0L) {
    drm_ut_debug_printk("via_alloc_desc_pages", "Allocated %d pages for %d descriptors.\n",
                        vsg->num_desc_pages, vsg->num_desc);
  } else {
  }
  return (0);
}
}
static void via_abort_dmablit(struct drm_device *dev , int engine )
{
  drm_via_private_t *dev_priv ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  writel(4U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
  return;
}
}
static void via_dmablit_engine_off(struct drm_device *dev , int engine )
{
  drm_via_private_t *dev_priv ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  writel(24U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
  return;
}
}
void via_dmablit_handler(struct drm_device *dev , int engine , int from_irq )
{
  drm_via_private_t *dev_priv ;
  drm_via_blitq_t *blitq ;
  int cur ;
  int done_transfer ;
  unsigned long irqsave ;
  uint32_t status ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  blitq = (drm_via_blitq_t *)(& dev_priv->blit_queues) + (unsigned long )engine;
  irqsave = 0UL;
  status = 0U;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_dmablit_handler", "DMA blit handler called. engine = %d, from_irq = %d, blitq = 0x%lx\n",
                        engine, from_irq, (unsigned long )blitq);
  } else {
  }
  if (from_irq != 0) {
    spin_lock(& blitq->blit_lock);
  } else {
    ldv_spin_lock();
  }
  if (blitq->is_active != 0) {
    status = readl((void const volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
    if ((status & 8U) != 0U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  done_transfer = tmp___0;
  done_transfer = done_transfer != 0 || (blitq->aborting != 0 && (status & 1U) == 0U);
  cur = (int )blitq->cur;
  if (done_transfer != 0) {
    (blitq->blits[cur])->aborted = blitq->aborting;
    blitq->done_blit_handle = blitq->done_blit_handle + 1U;
    __wake_up((wait_queue_head_t *)(& blitq->blit_queue) + (unsigned long )cur, 3U,
              1, (void *)0);
    cur = cur + 1;
    if (cur > 7) {
      cur = 0;
    } else {
    }
    blitq->cur = (unsigned int )cur;
    writel(8U, (void volatile *)(dev_priv->mmio)->handle + (unsigned long )((engine + 932) * 4));
    blitq->is_active = 0;
    blitq->aborting = 0;
    schedule_work(& blitq->wq);
  } else
  if (blitq->is_active != 0 && (long )((unsigned long )jiffies - blitq->end) >= 0L) {
    via_abort_dmablit(dev, engine);
    blitq->aborting = 1;
    blitq->end = (unsigned long )jiffies + 250UL;
  } else {
  }
  if (blitq->is_active == 0) {
    if (blitq->num_outstanding != 0U) {
      via_fire_dmablit(dev, blitq->blits[cur], engine);
      blitq->is_active = 1;
      blitq->cur = (unsigned int )cur;
      blitq->num_outstanding = blitq->num_outstanding - 1U;
      blitq->end = (unsigned long )jiffies + 250UL;
      tmp___1 = timer_pending((struct timer_list const *)(& blitq->poll_timer));
      if (tmp___1 == 0) {
        ldv_mod_timer_162(& blitq->poll_timer, (unsigned long )jiffies + 1UL);
      } else {
      }
    } else {
      tmp___2 = timer_pending((struct timer_list const *)(& blitq->poll_timer));
      if (tmp___2 != 0) {
        ldv_del_timer_163(& blitq->poll_timer);
      } else {
      }
      via_dmablit_engine_off(dev, engine);
    }
  } else {
  }
  if (from_irq != 0) {
    spin_unlock(& blitq->blit_lock);
  } else {
    spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  }
  return;
}
}
static int via_dmablit_active(drm_via_blitq_t *blitq , int engine , uint32_t handle ,
                              wait_queue_head_t **queue )
{
  unsigned long irqsave ;
  uint32_t slot ;
  int active ;
  {
  ldv_spin_lock();
  active = blitq->done_blit_handle - handle > 8388608U && blitq->cur_blit_handle - handle <= 8388608U;
  if ((unsigned long )queue != (unsigned long )((wait_queue_head_t **)0) && active != 0) {
    slot = ((handle - blitq->done_blit_handle) + blitq->cur) - 1U;
    if (slot > 7U) {
      slot = slot - 8U;
    } else {
    }
    *queue = (wait_queue_head_t *)(& blitq->blit_queue) + (unsigned long )slot;
  } else {
  }
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  return (active);
}
}
static int via_dmablit_sync(struct drm_device *dev , uint32_t handle , int engine )
{
  drm_via_private_t *dev_priv ;
  drm_via_blitq_t *blitq ;
  wait_queue_head_t *queue ;
  int ret ;
  wait_queue_t entry ;
  struct task_struct *tmp ;
  unsigned long end ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  blitq = (drm_via_blitq_t *)(& dev_priv->blit_queues) + (unsigned long )engine;
  ret = 0;
  tmp___5 = via_dmablit_active(blitq, engine, handle, & queue);
  if (tmp___5 != 0) {
    tmp = get_current();
    entry.flags = 0U;
    entry.private = (void *)tmp;
    entry.func = & default_wake_function;
    entry.task_list.next = (struct list_head *)0;
    entry.task_list.prev = (struct list_head *)0;
    end = (unsigned long )jiffies + 750UL;
    add_wait_queue(queue, & entry);
    ldv_37616:
    tmp___0 = get_current();
    tmp___0->state = 1L;
    tmp___1 = via_dmablit_active(blitq, engine, handle, (wait_queue_head_t **)0);
    if (tmp___1 == 0) {
      goto ldv_37609;
    } else {
    }
    if ((long )((unsigned long )jiffies - end) >= 0L) {
      ret = -16;
      goto ldv_37609;
    } else {
    }
    schedule_timeout(2L);
    tmp___2 = get_current();
    tmp___3 = signal_pending(tmp___2);
    if (tmp___3 != 0) {
      ret = -4;
      goto ldv_37609;
    } else {
    }
    goto ldv_37616;
    ldv_37609:
    tmp___4 = get_current();
    tmp___4->state = 0L;
    remove_wait_queue(queue, & entry);
  } else {
  }
  tmp___6 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___6 != 0L) {
    drm_ut_debug_printk("via_dmablit_sync", "DMA blit sync handle 0x%x engine %d returned %d\n",
                        handle, engine, ret);
  } else {
  }
  return (ret);
}
}
static void via_dmablit_timer(unsigned long data )
{
  drm_via_blitq_t *blitq ;
  struct drm_device *dev ;
  int engine ;
  long tmp ;
  int tmp___0 ;
  {
  blitq = (drm_via_blitq_t *)data;
  dev = blitq->dev;
  engine = (int )(((long )blitq - (long )(& ((drm_via_private_t *)dev->dev_private)->blit_queues)) / 1192L);
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_dmablit_timer", "Polling timer called for engine %d, jiffies %lu\n",
                        engine, jiffies);
  } else {
  }
  via_dmablit_handler(dev, engine, 0);
  tmp___0 = timer_pending((struct timer_list const *)(& blitq->poll_timer));
  if (tmp___0 == 0) {
    ldv_mod_timer_164(& blitq->poll_timer, (unsigned long )jiffies + 1UL);
    via_dmablit_handler(dev, engine, 0);
  } else {
  }
  return;
}
}
static void via_dmablit_workqueue(struct work_struct *work )
{
  drm_via_blitq_t *blitq ;
  struct work_struct const *__mptr ;
  struct drm_device *dev ;
  unsigned long irqsave ;
  drm_via_sg_info_t *cur_sg ;
  int cur_released ;
  long tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  blitq = (drm_via_blitq_t *)__mptr + 0xfffffffffffffc28UL;
  dev = blitq->dev;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_dmablit_workqueue", "Workqueue task called for blit engine %ld\n",
                        (unsigned long )(((long )blitq - (long )(& ((drm_via_private_t *)dev->dev_private)->blit_queues)) / 1192L));
  } else {
  }
  ldv_spin_lock();
  goto ldv_37637;
  ldv_37636:
  tmp___0 = blitq->serviced;
  blitq->serviced = blitq->serviced + 1U;
  cur_released = (int )tmp___0;
  tmp___1 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___1 != 0L) {
    drm_ut_debug_printk("via_dmablit_workqueue", "Releasing blit slot %d\n", cur_released);
  } else {
  }
  if (blitq->serviced > 7U) {
    blitq->serviced = 0U;
  } else {
  }
  cur_sg = blitq->blits[cur_released];
  blitq->num_free = blitq->num_free + 1U;
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  __wake_up(& blitq->busy_queue, 3U, 1, (void *)0);
  via_free_sg_info(dev->pdev, cur_sg);
  kfree((void const *)cur_sg);
  ldv_spin_lock();
  ldv_37637: ;
  if (blitq->serviced != blitq->cur) {
    goto ldv_37636;
  } else {
  }
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  return;
}
}
void via_init_dmablit(struct drm_device *dev )
{
  int i ;
  int j ;
  drm_via_private_t *dev_priv ;
  drm_via_blitq_t *blitq ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  pci_set_master(dev->pdev);
  i = 0;
  goto ldv_37655;
  ldv_37654:
  blitq = (drm_via_blitq_t *)(& dev_priv->blit_queues) + (unsigned long )i;
  blitq->dev = dev;
  blitq->cur_blit_handle = 0U;
  blitq->done_blit_handle = 0U;
  blitq->head = 0U;
  blitq->cur = 0U;
  blitq->serviced = 0U;
  blitq->num_free = 7U;
  blitq->num_outstanding = 0U;
  blitq->is_active = 0;
  blitq->aborting = 0;
  spinlock_check(& blitq->blit_lock);
  __raw_spin_lock_init(& blitq->blit_lock.ldv_6347.rlock, "&(&blitq->blit_lock)->rlock",
                       & __key);
  j = 0;
  goto ldv_37649;
  ldv_37648:
  __init_waitqueue_head((wait_queue_head_t *)(& blitq->blit_queue) + (unsigned long )j,
                        "blitq->blit_queue + j", & __key___0);
  j = j + 1;
  ldv_37649: ;
  if (j <= 7) {
    goto ldv_37648;
  } else {
  }
  __init_waitqueue_head(& blitq->busy_queue, "&blitq->busy_queue", & __key___1);
  __init_work(& blitq->wq, 0);
  __constr_expr_0.counter = 137438953408L;
  blitq->wq.data = __constr_expr_0;
  lockdep_init_map(& blitq->wq.lockdep_map, "(&blitq->wq)", & __key___2, 0);
  INIT_LIST_HEAD(& blitq->wq.entry);
  blitq->wq.func = & via_dmablit_workqueue;
  reg_timer_1(& blitq->poll_timer, & via_dmablit_timer, (unsigned long )blitq);
  i = i + 1;
  ldv_37655: ;
  if (i <= 1) {
    goto ldv_37654;
  } else {
  }
  return;
}
}
static int via_build_sg_info(struct drm_device *dev , drm_via_sg_info_t *vsg , drm_via_dmablit_t *xfer )
{
  int draw ;
  int ret ;
  long ret___0 ;
  int __x___0 ;
  {
  draw = xfer->to_fb;
  ret = 0;
  vsg->direction = draw != 0 ? 1 : 2;
  vsg->bounce_buffer = (unsigned char *)0U;
  vsg->state = 4;
  if (xfer->num_lines == 0U || xfer->line_length == 0U) {
    drm_err("via_build_sg_info", "Zero size bitblt.\n");
    return (-22);
  } else {
  }
  if (xfer->mem_stride - xfer->line_length > 8192U) {
    drm_err("via_build_sg_info", "Too large system memory stride. Stride: %d, Length: %d\n",
            xfer->mem_stride, xfer->line_length);
    return (-22);
  } else {
  }
  if (xfer->mem_stride == xfer->line_length && xfer->fb_stride == xfer->line_length) {
    xfer->mem_stride = xfer->mem_stride * xfer->num_lines;
    xfer->line_length = xfer->mem_stride;
    xfer->fb_stride = xfer->mem_stride;
    xfer->num_lines = 1U;
  } else {
  }
  if (xfer->num_lines > 2048U || xfer->num_lines * xfer->mem_stride > 16777216U) {
    drm_err("via_build_sg_info", "Too large PCI DMA bitblt.\n");
    return (-22);
  } else {
  }
  if (xfer->mem_stride < xfer->line_length) {
    drm_err("via_build_sg_info", "Invalid frame-buffer / memory stride.\n");
    return (-22);
  } else {
    __x___0 = (int )xfer->fb_stride;
    ret___0 = (long )(__x___0 < 0 ? - __x___0 : __x___0);
    if (ret___0 < (long )xfer->line_length) {
      drm_err("via_build_sg_info", "Invalid frame-buffer / memory stride.\n");
      return (-22);
    } else {
    }
  }
  if ((((unsigned long )xfer->mem_addr & 15UL) != 0UL || ((unsigned long )xfer->fb_addr & 3UL) != 0UL) || (xfer->num_lines > 1U && ((xfer->mem_stride & 15U) != 0U || (xfer->fb_stride & 3U) != 0U))) {
    drm_err("via_build_sg_info", "Invalid DRM bitblt alignment.\n");
    return (-22);
  } else {
  }
  ret = via_lock_all_dma_pages(vsg, xfer);
  if (ret != 0) {
    drm_err("via_build_sg_info", "Could not lock DMA pages.\n");
    via_free_sg_info(dev->pdev, vsg);
    return (ret);
  } else {
  }
  via_map_blit_for_device(dev->pdev, (drm_via_dmablit_t const *)xfer, vsg, 0);
  ret = via_alloc_desc_pages(vsg);
  if (ret != 0) {
    drm_err("via_build_sg_info", "Could not allocate DMA descriptor pages.\n");
    via_free_sg_info(dev->pdev, vsg);
    return (ret);
  } else {
  }
  via_map_blit_for_device(dev->pdev, (drm_via_dmablit_t const *)xfer, vsg, 1);
  return (0);
}
}
static int via_dmablit_grab_slot(drm_via_blitq_t *blitq , int engine )
{
  int ret ;
  unsigned long irqsave ;
  long tmp ;
  wait_queue_t entry ;
  struct task_struct *tmp___0 ;
  unsigned long end ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  {
  ret = 0;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("via_dmablit_grab_slot", "Num free is %d\n", blitq->num_free);
  } else {
  }
  ldv_spin_lock();
  goto ldv_37687;
  ldv_37686:
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  tmp___0 = get_current();
  entry.flags = 0U;
  entry.private = (void *)tmp___0;
  entry.func = & default_wake_function;
  entry.task_list.next = (struct list_head *)0;
  entry.task_list.prev = (struct list_head *)0;
  end = (unsigned long )jiffies + 250UL;
  add_wait_queue(& blitq->busy_queue, & entry);
  ldv_37685:
  tmp___1 = get_current();
  tmp___1->state = 1L;
  if (blitq->num_free != 0U) {
    goto ldv_37678;
  } else {
  }
  if ((long )((unsigned long )jiffies - end) >= 0L) {
    ret = -16;
    goto ldv_37678;
  } else {
  }
  schedule_timeout(2L);
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    ret = -4;
    goto ldv_37678;
  } else {
  }
  goto ldv_37685;
  ldv_37678:
  tmp___4 = get_current();
  tmp___4->state = 0L;
  remove_wait_queue(& blitq->busy_queue, & entry);
  if (ret != 0) {
    return (ret != -4 ? ret : -11);
  } else {
  }
  ldv_spin_lock();
  ldv_37687: ;
  if (blitq->num_free == 0U) {
    goto ldv_37686;
  } else {
  }
  blitq->num_free = blitq->num_free - 1U;
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  return (0);
}
}
static void via_dmablit_release_slot(drm_via_blitq_t *blitq )
{
  unsigned long irqsave ;
  {
  ldv_spin_lock();
  blitq->num_free = blitq->num_free + 1U;
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  __wake_up(& blitq->busy_queue, 3U, 1, (void *)0);
  return;
}
}
static int via_dmablit(struct drm_device *dev , drm_via_dmablit_t *xfer )
{
  drm_via_private_t *dev_priv ;
  drm_via_sg_info_t *vsg ;
  drm_via_blitq_t *blitq ;
  int ret ;
  int engine ;
  unsigned long irqsave ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  dev_priv = (drm_via_private_t *)dev->dev_private;
  if ((unsigned long )dev_priv == (unsigned long )((drm_via_private_t *)0)) {
    drm_err("via_dmablit", "Called without initialization.\n");
    return (-22);
  } else {
  }
  engine = xfer->to_fb == 0;
  blitq = (drm_via_blitq_t *)(& dev_priv->blit_queues) + (unsigned long )engine;
  ret = via_dmablit_grab_slot(blitq, engine);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = kmalloc(72UL, 208U);
  vsg = (drm_via_sg_info_t *)tmp;
  if ((unsigned long )vsg == (unsigned long )((drm_via_sg_info_t *)0)) {
    via_dmablit_release_slot(blitq);
    return (-12);
  } else {
  }
  ret = via_build_sg_info(dev, vsg, xfer);
  if (ret != 0) {
    via_dmablit_release_slot(blitq);
    kfree((void const *)vsg);
    return (ret);
  } else {
  }
  ldv_spin_lock();
  tmp___0 = blitq->head;
  blitq->head = blitq->head + 1U;
  blitq->blits[tmp___0] = vsg;
  if (blitq->head > 7U) {
    blitq->head = 0U;
  } else {
  }
  blitq->num_outstanding = blitq->num_outstanding + 1U;
  blitq->cur_blit_handle = blitq->cur_blit_handle + 1U;
  xfer->sync.sync_handle = blitq->cur_blit_handle;
  spin_unlock_irqrestore(& blitq->blit_lock, irqsave);
  xfer->sync.engine = (unsigned int )engine;
  via_dmablit_handler(dev, engine, 0);
  return (0);
}
}
int via_dma_blit_sync(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_blitsync_t *sync ;
  int err ;
  {
  sync = (drm_via_blitsync_t *)data;
  if (sync->engine > 1U) {
    return (-22);
  } else {
  }
  err = via_dmablit_sync(dev, sync->sync_handle, (int )sync->engine);
  if (err == -4) {
    err = -11;
  } else {
  }
  return (err);
}
}
int via_dma_blit(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  drm_via_dmablit_t *xfer ;
  int err ;
  {
  xfer = (drm_via_dmablit_t *)data;
  err = via_dmablit(dev, xfer);
  return (err);
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_37734;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_37734;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_37734;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_37734;
  default:
  ldv_stop();
  }
  ldv_37734: ;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& via_dmablit_timer)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  via_dmablit_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_141(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_145(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_148(lock, flags);
  return;
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kcalloc_154(n, size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_156(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vzalloc_160(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vzalloc(ldv_func_arg1);
  return ((void *)0);
}
}
unsigned long ldv___get_free_pages_161(gfp_t flags , unsigned int ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __get_free_pages(flags, ldv_func_arg2);
  return (tmp);
}
}
int ldv_mod_timer_162(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_163(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_164(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
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
void __copy_from_user_overflow() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int drm_compat_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void drm_core_ioremap(struct drm_local_map *arg0, struct drm_device *arg1) {
  return;
}
void drm_core_ioremapfree(struct drm_local_map *arg0, struct drm_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_err(const char *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct drm_local_map *drm_getsarea(struct drm_device *arg0) {
  return (struct drm_local_map *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool drm_handle_vblank(struct drm_device *arg0, int arg1) {
  return __VERIFIER_nondet_bool();
}
void drm_idlelock_release(struct drm_lock_data *arg0) {
  return;
}
void drm_idlelock_take(struct drm_lock_data *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int drm_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int drm_irq_uninstall(struct drm_device *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_mm_init(struct drm_mm *arg0, unsigned long arg1, unsigned long arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_mm_insert_node_generic(struct drm_mm *arg0, struct drm_mm_node *arg1, unsigned long arg2, unsigned int arg3, unsigned long arg4, enum drm_mm_search_flags arg5, enum drm_mm_allocator_flags arg6) {
  return __VERIFIER_nondet_int();
}
void drm_mm_remove_node(struct drm_mm_node *arg0) {
  return;
}
void drm_mm_takedown(struct drm_mm *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_mmap(struct file *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_pci_exit(struct drm_driver *arg0, struct pci_driver *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_pci_init(struct drm_driver *arg0, struct pci_driver *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int drm_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int drm_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_ut_debug_printk(const char *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_vblank_init(struct drm_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int get_user_pages(struct task_struct *arg0, struct mm_struct *arg1, unsigned long arg2, unsigned long arg3, int arg4, int arg5, struct page **arg6, struct vm_area_struct **arg7) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void idr_destroy(struct idr *arg0) {
  return;
}
void *external_alloc(void);
void *idr_find_slowpath(struct idr *arg0, int arg1) {
  return (void *)external_alloc();
}
void idr_init(struct idr *arg0) {
  return;
}
void idr_remove(struct idr *arg0, int arg1) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
