extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef short __s16;
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
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
struct ethtool_wolinfo;
struct ethtool_eee;
struct usb_interface;
struct ethtool_cmd;
struct ethtool_coalesce;
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
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
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
enum ldv_23589 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_23589 socket_state;
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
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_275 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_275 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   u32 tskey ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
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
struct rtable;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned char full_duplex : 1 ;
   unsigned char force_media : 1 ;
   unsigned char supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
enum ldv_27867 {
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
typedef enum ldv_27867 phy_interface_t;
enum ldv_27921 {
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
   enum ldv_27921 state ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
   int streams ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct vlan_hdr {
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_stable_secret {
   bool initialized ;
   struct in6_addr secret ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 accept_ra_from_local ;
   __s32 optimistic_dad ;
   __s32 use_optimistic ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   __s32 accept_ra_mtu ;
   struct ipv6_stable_secret stable_secret ;
   void *sysctl ;
};
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
enum bpf_prog_type {
    BPF_PROG_TYPE_UNSPEC = 0,
    BPF_PROG_TYPE_SOCKET_FILTER = 1,
    BPF_PROG_TYPE_KPROBE = 2,
    BPF_PROG_TYPE_SCHED_CLS = 3,
    BPF_PROG_TYPE_SCHED_ACT = 4
} ;
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_337 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   bool gpl_compatible ;
   u32 len ;
   enum bpf_prog_type type ;
   struct bpf_prog_aux *aux ;
   struct sock_fprog_kern *orig_prog ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_337 __annonCompField99 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
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
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   possible_net_t net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[13U] ;
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
   possible_net_t net ;
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
   int family ;
   int entry_size ;
   int key_len ;
   __be16 protocol ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   bool (*key_eq)(struct neighbour const * , void const * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
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
union __anonunion____missing_field_name_345 {
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
   union __anonunion____missing_field_name_345 __annonCompField100 ;
};
struct __anonstruct_socket_lock_t_346 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_346 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_348 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_347 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_348 __annonCompField101 ;
};
union __anonunion____missing_field_name_349 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_351 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_350 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_351 __annonCompField104 ;
};
union __anonunion____missing_field_name_352 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_353 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_347 __annonCompField102 ;
   union __anonunion____missing_field_name_349 __annonCompField103 ;
   union __anonunion____missing_field_name_350 __annonCompField105 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_352 __annonCompField106 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_353 __annonCompField107 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_354 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_354 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
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
   u32 sk_ack_backlog ;
   u32 sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
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
union __anonunion_h_357 {
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
   int (*sendmsg)(struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct sock * , struct msghdr * , size_t , int , int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
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
   union __anonunion_h_357 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
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
   void (*syn_ack_timeout)(struct request_sock const * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   struct sock *rsk_listener ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   struct timer_list rsk_timer ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 *saved_syn ;
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
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6 ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   __u8 addr_gen_mode ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_376 {
   __be32 a4 ;
   __be32 a6[4U] ;
   struct in6_addr in6 ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_376 __annonCompField109 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_377 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_379 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_378 {
   struct __anonstruct____missing_field_name_379 __annonCompField111 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[16U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_377 __annonCompField110 ;
   union __anonunion____missing_field_name_378 __annonCompField112 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   int total ;
};
struct uncached_list;
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
   struct uncached_list *rt_uncached_list ;
};
struct tally_counter {
   __le64 tx_packets ;
   __le64 rx_packets ;
   __le64 tx_errors ;
   __le32 rx_errors ;
   __le16 rx_missed ;
   __le16 align_errors ;
   __le32 tx_one_collision ;
   __le32 tx_multi_collision ;
   __le64 rx_unicast ;
   __le64 rx_broadcast ;
   __le32 rx_multicast ;
   __le16 tx_aborted ;
   __le16 tx_underrun ;
};
struct rx_desc {
   __le32 opts1 ;
   __le32 opts2 ;
   __le32 opts3 ;
   __le32 opts4 ;
   __le32 opts5 ;
   __le32 opts6 ;
};
struct tx_desc {
   __le32 opts1 ;
   __le32 opts2 ;
};
struct r8152;
struct rx_agg {
   struct list_head list ;
   struct urb *urb ;
   struct r8152 *context ;
   void *buffer ;
   void *head ;
};
struct tx_agg {
   struct list_head list ;
   struct urb *urb ;
   struct r8152 *context ;
   void *buffer ;
   void *head ;
   u32 skb_num ;
   u32 skb_len ;
};
struct rtl_ops {
   void (*init)(struct r8152 * ) ;
   int (*enable)(struct r8152 * ) ;
   void (*disable)(struct r8152 * ) ;
   void (*up)(struct r8152 * ) ;
   void (*down)(struct r8152 * ) ;
   void (*unload)(struct r8152 * ) ;
   int (*eee_get)(struct r8152 * , struct ethtool_eee * ) ;
   int (*eee_set)(struct r8152 * , struct ethtool_eee * ) ;
};
struct r8152 {
   unsigned long flags ;
   struct usb_device *udev ;
   struct napi_struct napi ;
   struct usb_interface *intf ;
   struct net_device *netdev ;
   struct urb *intr_urb ;
   struct tx_agg tx_info[4U] ;
   struct rx_agg rx_info[10U] ;
   struct list_head rx_done ;
   struct list_head tx_free ;
   struct sk_buff_head tx_queue ;
   struct sk_buff_head rx_queue ;
   spinlock_t rx_lock ;
   spinlock_t tx_lock ;
   struct delayed_work schedule ;
   struct mii_if_info mii ;
   struct mutex control ;
   struct rtl_ops rtl_ops ;
   int intr_interval ;
   u32 saved_wolopts ;
   u32 msg_enable ;
   u32 tx_qlen ;
   u32 coalesce ;
   u16 ocp_base ;
   u8 *intr_buff ;
   u8 version ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef bool ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
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
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
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
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
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
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_tail(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head->prev, head);
  } else {
  }
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
__inline static bool IS_ERR(void const *ptr ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_5(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_6(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_10(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_trylock(struct mutex * ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_49(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_50(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_52(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_53(struct delayed_work *ldv_func_arg1 ) ;
extern unsigned int work_busy(struct work_struct * ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_16(8192, wq, dwork, delay);
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
extern int cpu_number ;
extern bool capable(int ) ;
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_42(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc_node(size_t size , gfp_t flags , int node ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct ethtool_wolinfo *ops_group4 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
struct net_device *rtl8152_netdev_ops_group1 ;
int usb_counter ;
struct ethtool_eee *ops_group1 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_state_variable_3 ;
struct usb_interface *rtl8152_driver_group1 ;
struct net_device *ops_group3 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
struct ethtool_cmd *ops_group2 ;
int ldv_state_variable_4 ;
struct ethtool_coalesce *ops_group0 ;
void ldv_usb_driver_2(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void ldv_net_device_ops_3(void) ;
void ldv_initialize_ethtool_ops_4(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
extern void msleep(unsigned int ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern int device_set_wakeup_enable(struct device * , bool ) ;
__inline static int dev_to_node(struct device *dev )
{
  {
  return (dev->numa_node);
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
extern void get_random_bytes(void * , int ) ;
extern int net_ratelimit(void) ;
extern __sum16 csum_ipv6_magic(struct in6_addr const * , struct in6_addr const * ,
                               __u32 , unsigned short , __wsum ) ;
extern void consume_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff const *)list->next) == (unsigned long )((struct sk_buff const *)list));
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 142UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
}
}
__inline static struct sk_buff *skb_peek(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->next;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = (struct sk_buff *)0;
  } else {
  }
  return (skb);
}
}
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
}
}
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  return;
}
}
__inline static void __skb_insert(struct sk_buff *newsk , struct sk_buff *prev , struct sk_buff *next ,
                                  struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  newsk->__annonCompField79.__annonCompField78.next = next;
  newsk->__annonCompField79.__annonCompField78.prev = prev;
  tmp = newsk;
  prev->__annonCompField79.__annonCompField78.next = tmp;
  next->__annonCompField79.__annonCompField78.prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_splice(struct sk_buff_head const *list , struct sk_buff *prev ,
                                        struct sk_buff *next )
{
  struct sk_buff *first ;
  struct sk_buff *last ;
  {
  first = list->next;
  last = list->prev;
  first->__annonCompField79.__annonCompField78.prev = prev;
  prev->__annonCompField79.__annonCompField78.next = first;
  last->__annonCompField79.__annonCompField78.next = next;
  next->__annonCompField79.__annonCompField78.prev = last;
  return;
}
}
__inline static void skb_queue_splice(struct sk_buff_head const *list , struct sk_buff_head *head )
{
  int tmp ;
  {
  tmp = skb_queue_empty(list);
  if (tmp == 0) {
    __skb_queue_splice(list, (struct sk_buff *)head, head->next);
    head->qlen = head->qlen + (__u32 )list->qlen;
  } else {
  }
  return;
}
}
__inline static void skb_queue_splice_init(struct sk_buff_head *list , struct sk_buff_head *head )
{
  int tmp ;
  {
  tmp = skb_queue_empty((struct sk_buff_head const *)list);
  if (tmp == 0) {
    __skb_queue_splice((struct sk_buff_head const *)list, (struct sk_buff *)head,
                       head->next);
    head->qlen = head->qlen + list->qlen;
    __skb_queue_head_init(list);
  } else {
  }
  return;
}
}
__inline static void __skb_queue_after(struct sk_buff_head *list , struct sk_buff *prev ,
                                       struct sk_buff *newsk )
{
  {
  __skb_insert(newsk, prev, prev->__annonCompField79.__annonCompField78.next, list);
  return;
}
}
__inline static void __skb_queue_before(struct sk_buff_head *list , struct sk_buff *next ,
                                        struct sk_buff *newsk )
{
  {
  __skb_insert(newsk, next->__annonCompField79.__annonCompField78.prev, next, list);
  return;
}
}
__inline static void __skb_queue_head(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  __skb_queue_after(list, (struct sk_buff *)list, newsk);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
__inline static void __skb_queue_tail(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  __skb_queue_before(list, (struct sk_buff *)list, newsk);
  return;
}
}
__inline static void __skb_unlink(struct sk_buff *skb , struct sk_buff_head *list )
{
  struct sk_buff *next ;
  struct sk_buff *prev ;
  struct sk_buff *tmp ;
  {
  list->qlen = list->qlen - 1U;
  next = skb->__annonCompField79.__annonCompField78.next;
  prev = skb->__annonCompField79.__annonCompField78.prev;
  tmp = (struct sk_buff *)0;
  skb->__annonCompField79.__annonCompField78.prev = tmp;
  skb->__annonCompField79.__annonCompField78.next = tmp;
  next->__annonCompField79.__annonCompField78.prev = prev;
  prev->__annonCompField79.__annonCompField78.next = next;
  return;
}
}
__inline static struct sk_buff *__skb_dequeue(struct sk_buff_head *list )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = skb_peek((struct sk_buff_head const *)list);
  skb = tmp;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    __skb_unlink(skb, list);
  } else {
  }
  return (skb);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static int pskb_may_pull(struct sk_buff *skb , unsigned int len )
{
  unsigned int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char *tmp___3 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  tmp___0 = ldv__builtin_expect(tmp >= len, 1L);
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  tmp___1 = ldv__builtin_expect(skb->len < len, 0L);
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  tmp___2 = skb_headlen((struct sk_buff const *)skb);
  tmp___3 = __pskb_pull_tail(skb, (int )(len - tmp___2));
  return ((unsigned long )tmp___3 != (unsigned long )((unsigned char *)0U));
}
}
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_38(dev, length, gfp);
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
__inline static int __skb_cow(struct sk_buff *skb , unsigned int headroom , int cloned )
{
  int delta ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___1 ;
  {
  delta = 0;
  tmp___0 = skb_headroom((struct sk_buff const *)skb);
  if (tmp___0 < headroom) {
    tmp = skb_headroom((struct sk_buff const *)skb);
    delta = (int )(headroom - tmp);
  } else {
  }
  if (delta != 0 || cloned != 0) {
    _max1 = 32;
    _max2 = 64;
    _max1___0 = 32;
    _max2___0 = 64;
    tmp___1 = ldv_pskb_expand_head_39(skb, (((_max1 > _max2 ? _max1 : _max2) + -1) + delta) & - (_max1___0 > _max2___0 ? _max1___0 : _max2___0),
                                      0, 32U);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
__inline static int skb_cow_head(struct sk_buff *skb , unsigned int headroom )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = skb_header_cloned((struct sk_buff const *)skb);
  tmp___0 = __skb_cow(skb, headroom, tmp);
  return (tmp___0);
}
}
extern int skb_copy_bits(struct sk_buff const * , int , void * , int ) ;
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
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern int mii_nway_restart(struct mii_if_info * ) ;
extern int mii_ethtool_gset(struct mii_if_info * , struct ethtool_cmd * ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
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
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
__inline static void napi_complete(struct napi_struct *n )
{
  {
  return;
}
}
extern void napi_disable(struct napi_struct * ) ;
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (507), "i" (12UL));
    ldv_41642: ;
    goto ldv_41642;
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
  return ((void *)dev + 3008U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_56(struct net_device *dev ) ;
void ldv_free_netdev_58(struct net_device *dev ) ;
extern void netif_schedule_queue(struct netdev_queue * ) ;
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
extern void netif_tx_wake_queue(struct netdev_queue * ) ;
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
  {
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
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
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
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_43227;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43227;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43227;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43227;
  default:
  __bad_percpu_size();
  }
  ldv_43227:
  pscr_ret__ = pfo_ret__;
  goto ldv_43233;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43237;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43237;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43237;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43237;
  default:
  __bad_percpu_size();
  }
  ldv_43237:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_43233;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43246;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43246;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43246;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43246;
  default:
  __bad_percpu_size();
  }
  ldv_43246:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_43233;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43255;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43255;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43255;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43255;
  default:
  __bad_percpu_size();
  }
  ldv_43255:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_43233;
  default:
  __bad_size_call_parameter();
  goto ldv_43233;
  }
  ldv_43233:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_43265;
  ldv_43264:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  set_bit(2L, (unsigned long volatile *)(& txq->state));
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_43265: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43264;
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
  goto ldv_43276;
  ldv_43275:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  clear_bit(2L, (unsigned long volatile *)(& txq->state));
  netif_schedule_queue(txq);
  i = i + 1U;
  ldv_43276: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43275;
  } else {
  }
  spin_unlock(& dev->tx_global_lock);
  return;
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_55(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_57(struct net_device *dev ) ;
extern int skb_checksum_help(struct sk_buff * ) ;
extern struct sk_buff *__skb_gso_segment(struct sk_buff * , netdev_features_t , bool ) ;
__inline static struct sk_buff *skb_gso_segment(struct sk_buff *skb , netdev_features_t features )
{
  struct sk_buff *tmp ;
  {
  tmp = __skb_gso_segment(skb, features, 1);
  return (tmp);
}
}
__inline static void netif_set_gso_max_size(struct net_device *dev , unsigned int size )
{
  {
  dev->gso_max_size = size;
  return;
}
}
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_notice(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
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
__inline static void pm_runtime_mark_last_busy(struct device *dev )
{
  unsigned long __var ;
  {
  __var = 0UL;
  *((unsigned long volatile *)(& dev->power.last_busy)) = jiffies;
  return;
}
}
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern int usb_reset_device(struct usb_device * ) ;
extern int usb_autopm_get_interface(struct usb_interface * ) ;
extern void usb_autopm_put_interface(struct usb_interface * ) ;
extern int usb_autopm_get_interface_async(struct usb_interface * ) ;
extern void usb_autopm_put_interface_async(struct usb_interface * ) ;
__inline static void usb_mark_last_busy(struct usb_device *udev )
{
  {
  pm_runtime_mark_last_busy(& udev->dev);
  return;
}
}
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_59(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_60(struct usb_driver *arg ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int _min1 ;
  int _max1 ;
  int _max2 ;
  int _min2 ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    _max1 = interval;
    _max2 = 1;
    _min1 = _max1 > _max2 ? _max1 : _max2;
    _min2 = 16;
    interval = _min1 < _min2 ? _min1 : _min2;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
struct urb *ldv_usb_alloc_urb_44(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_45(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_46(int ldv_func_arg1 , gfp_t flags ) ;
extern void usb_free_urb(struct urb * ) ;
int ldv_usb_submit_urb_43(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_47(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_48(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_51(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_54(struct urb *ldv_func_arg1 , gfp_t flags ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_driver_set_configuration(struct usb_device * , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern u8 const byte_rev_table[256U] ;
__inline static u8 __bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
__inline static u16 __bitrev16(u16 x )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  tmp = __bitrev8((int )((u8 )x));
  tmp___0 = __bitrev8((int )((u8 )((int )x >> 8)));
  return ((u16 )((int )((short )((int )tmp << 8)) | (int )((short )tmp___0)));
}
}
__inline static u32 __bitrev32(u32 x )
{
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = __bitrev16((int )((u16 )x));
  tmp___0 = __bitrev16((int )((u16 )(x >> 16)));
  return ((u32 )(((int )tmp << 16) | (int )tmp___0));
}
}
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
__inline static void __vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                            u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return;
}
}
__inline static __be16 __vlan_get_protocol(struct sk_buff *skb , __be16 type , int *depth )
{
  unsigned int vlan_depth ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  struct vlan_hdr *vh ;
  int tmp___1 ;
  long tmp___2 ;
  {
  vlan_depth = (unsigned int )skb->mac_len;
  if ((unsigned int )type == 129U || (unsigned int )type == 43144U) {
    if (vlan_depth != 0U) {
      __ret_warn_on = vlan_depth <= 3U;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_null("include/linux/if_vlan.h", 492);
      } else {
      }
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        return (0U);
      } else {
      }
      vlan_depth = vlan_depth - 4U;
    } else {
      vlan_depth = 14U;
    }
    ldv_45699:
    tmp___1 = pskb_may_pull(skb, vlan_depth + 4U);
    tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
    if (tmp___2 != 0L) {
      return (0U);
    } else {
    }
    vh = (struct vlan_hdr *)skb->data + (unsigned long )vlan_depth;
    type = vh->h_vlan_encapsulated_proto;
    vlan_depth = vlan_depth + 4U;
    if ((unsigned int )type == 129U || (unsigned int )type == 43144U) {
      goto ldv_45699;
    } else {
    }
  } else {
  }
  if ((unsigned long )depth != (unsigned long )((int *)0)) {
    *depth = (int )vlan_depth;
  } else {
  }
  return (type);
}
}
__inline static __be16 vlan_get_protocol(struct sk_buff *skb )
{
  __be16 tmp ;
  {
  tmp = __vlan_get_protocol(skb, (int )skb->protocol, (int *)0);
  return (tmp);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static __sum16 tcp_v6_check(int len , struct in6_addr const *saddr , struct in6_addr const *daddr ,
                                     __wsum base )
{
  __sum16 tmp ;
  {
  tmp = csum_ipv6_magic(saddr, daddr, (__u32 )len, 6, base);
  return (tmp);
}
}
__inline static u32 mmd_eee_cap_to_ethtool_sup_t(u16 eee_cap )
{
  u32 supported ;
  {
  supported = 0U;
  if (((int )eee_cap & 2) != 0) {
    supported = supported | 8U;
  } else {
  }
  if (((int )eee_cap & 4) != 0) {
    supported = supported | 32U;
  } else {
  }
  if (((int )eee_cap & 8) != 0) {
    supported = supported | 4096U;
  } else {
  }
  if (((int )eee_cap & 16) != 0) {
    supported = supported | 131072U;
  } else {
  }
  if (((int )eee_cap & 32) != 0) {
    supported = supported | 262144U;
  } else {
  }
  if (((int )eee_cap & 64) != 0) {
    supported = supported | 524288U;
  } else {
  }
  return (supported);
}
}
__inline static u16 ethtool_adv_to_mmd_eee_adv_t(u32 adv )
{
  u16 reg ;
  {
  reg = 0U;
  if ((adv & 8U) != 0U) {
    reg = (u16 )((unsigned int )reg | 2U);
  } else {
  }
  if ((adv & 32U) != 0U) {
    reg = (u16 )((unsigned int )reg | 4U);
  } else {
  }
  if ((adv & 4096U) != 0U) {
    reg = (u16 )((unsigned int )reg | 8U);
  } else {
  }
  if ((adv & 131072U) != 0U) {
    reg = (u16 )((unsigned int )reg | 16U);
  } else {
  }
  if ((adv & 262144U) != 0U) {
    reg = (u16 )((unsigned int )reg | 32U);
  } else {
  }
  if ((adv & 524288U) != 0U) {
    reg = (u16 )((unsigned int )reg | 64U);
  } else {
  }
  return (reg);
}
}
static int const multicast_filter_limit = 32;
static unsigned int agg_buf_sz = 16384U;
static int get_registers(struct r8152 *tp , u16 value , u16 index , u16 size , void *data )
{
  int ret ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = kmalloc((size_t )size, 208U);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = __create_pipe(tp->udev, 0U);
  ret = usb_control_msg(tp->udev, tmp___0 | 2147483776U, 5, 192, (int )value, (int )index,
                        tmp, (int )size, 500);
  memmove(data, (void const *)tmp, (size_t )size);
  kfree((void const *)tmp);
  return (ret);
}
}
static int set_registers(struct r8152 *tp , u16 value , u16 index , u16 size , void *data )
{
  int ret ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = kmemdup((void const *)data, (size_t )size, 208U);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = __create_pipe(tp->udev, 0U);
  ret = usb_control_msg(tp->udev, tmp___0 | 2147483648U, 5, 64, (int )value, (int )index,
                        tmp, (int )size, 500);
  kfree((void const *)tmp);
  return (ret);
}
}
static int generic_ocp_read(struct r8152 *tp , u16 index , u16 size , void *data ,
                            u16 type )
{
  u16 limit ;
  int ret ;
  int tmp ;
  {
  limit = 64U;
  ret = 0;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return (-19);
  } else {
  }
  if (((((int )size & 3) != 0 || (unsigned int )size == 0U) || ((int )index & 3) != 0) || (unsigned long )data == (unsigned long )((void *)0)) {
    return (-1);
  } else {
  }
  if ((unsigned int )index + (unsigned int )size > 65535U) {
    return (-1);
  } else {
  }
  goto ldv_52605;
  ldv_52604: ;
  if ((int )size > (int )limit) {
    ret = get_registers(tp, (int )index, (int )type, (int )limit, data);
    if (ret < 0) {
      goto ldv_52603;
    } else {
    }
    index = (int )index + (int )limit;
    data = data + (unsigned long )limit;
    size = (int )size - (int )limit;
  } else {
    ret = get_registers(tp, (int )index, (int )type, (int )size, data);
    if (ret < 0) {
      goto ldv_52603;
    } else {
    }
    index = (int )index + (int )size;
    data = data + (unsigned long )size;
    size = 0U;
    goto ldv_52603;
  }
  ldv_52605: ;
  if ((unsigned int )size != 0U) {
    goto ldv_52604;
  } else {
  }
  ldv_52603: ;
  if (ret == -19) {
    set_bit(0L, (unsigned long volatile *)(& tp->flags));
  } else {
  }
  return (ret);
}
}
static int generic_ocp_write(struct r8152 *tp , u16 index , u16 byteen , u16 size ,
                             void *data , u16 type )
{
  int ret ;
  u16 byteen_start ;
  u16 byteen_end ;
  u16 byen ;
  u16 limit ;
  int tmp ;
  {
  limit = 512U;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return (-19);
  } else {
  }
  if (((((int )size & 3) != 0 || (unsigned int )size == 0U) || ((int )index & 3) != 0) || (unsigned long )data == (unsigned long )((void *)0)) {
    return (-1);
  } else {
  }
  if ((unsigned int )index + (unsigned int )size > 65535U) {
    return (-1);
  } else {
  }
  byteen_start = (unsigned int )byteen & 15U;
  byteen_end = (unsigned int )byteen & 240U;
  byen = (u16 )((int )((short )((int )byteen_start << 4)) | (int )((short )byteen_start));
  ret = set_registers(tp, (int )index, (int )type | (int )byen, 4, data);
  if (ret < 0) {
    goto error1;
  } else {
  }
  index = (unsigned int )index + 4U;
  data = data + 4UL;
  size = (unsigned int )size + 65532U;
  if ((unsigned int )size != 0U) {
    size = (unsigned int )size + 65532U;
    goto ldv_52622;
    ldv_52621: ;
    if ((int )size > (int )limit) {
      ret = set_registers(tp, (int )index, (int )((unsigned int )type | 255U), (int )limit,
                          data);
      if (ret < 0) {
        goto error1;
      } else {
      }
      index = (int )index + (int )limit;
      data = data + (unsigned long )limit;
      size = (int )size - (int )limit;
    } else {
      ret = set_registers(tp, (int )index, (int )((unsigned int )type | 255U), (int )size,
                          data);
      if (ret < 0) {
        goto error1;
      } else {
      }
      index = (int )index + (int )size;
      data = data + (unsigned long )size;
      size = 0U;
      goto ldv_52620;
    }
    ldv_52622: ;
    if ((unsigned int )size != 0U) {
      goto ldv_52621;
    } else {
    }
    ldv_52620:
    byen = (u16 )(((int )byteen_end >> 4) | (int )byteen_end);
    ret = set_registers(tp, (int )index, (int )type | (int )byen, 4, data);
    if (ret < 0) {
      goto error1;
    } else {
    }
  } else {
  }
  error1: ;
  if (ret == -19) {
    set_bit(0L, (unsigned long volatile *)(& tp->flags));
  } else {
  }
  return (ret);
}
}
__inline static int pla_ocp_read(struct r8152 *tp , u16 index , u16 size , void *data )
{
  int tmp ;
  {
  tmp = generic_ocp_read(tp, (int )index, (int )size, data, 256);
  return (tmp);
}
}
__inline static int pla_ocp_write(struct r8152 *tp , u16 index , u16 byteen , u16 size ,
                                  void *data )
{
  int tmp ;
  {
  tmp = generic_ocp_write(tp, (int )index, (int )byteen, (int )size, data, 256);
  return (tmp);
}
}
__inline static int usb_ocp_write(struct r8152 *tp , u16 index , u16 byteen , u16 size ,
                                  void *data )
{
  int tmp ;
  {
  tmp = generic_ocp_write(tp, (int )index, (int )byteen, (int )size, data, 0);
  return (tmp);
}
}
static u32 ocp_read_dword(struct r8152 *tp , u16 type , u16 index )
{
  __le32 data ;
  {
  generic_ocp_read(tp, (int )index, 4, (void *)(& data), (int )type);
  return (data);
}
}
static void ocp_write_dword(struct r8152 *tp , u16 type , u16 index , u32 data )
{
  __le32 tmp ;
  {
  tmp = data;
  generic_ocp_write(tp, (int )index, 255, 4, (void *)(& tmp), (int )type);
  return;
}
}
static u16 ocp_read_word(struct r8152 *tp , u16 type , u16 index )
{
  u32 data ;
  __le32 tmp ;
  u8 shift ;
  {
  shift = (unsigned int )((u8 )index) & 2U;
  index = (unsigned int )index & 65532U;
  generic_ocp_read(tp, (int )index, 4, (void *)(& tmp), (int )type);
  data = tmp;
  data = data >> (int )shift * 8;
  data = data & 65535U;
  return ((u16 )data);
}
}
static void ocp_write_word(struct r8152 *tp , u16 type , u16 index , u32 data )
{
  u32 mask ;
  __le32 tmp ;
  u16 byen ;
  u8 shift ;
  {
  mask = 65535U;
  byen = 51U;
  shift = (unsigned int )((u8 )index) & 2U;
  data = data & mask;
  if (((int )index & 2) != 0) {
    byen = (u16 )((int )byen << (int )shift);
    mask = mask << (int )shift * 8;
    data = data << (int )shift * 8;
    index = (unsigned int )index & 65532U;
  } else {
  }
  tmp = data;
  generic_ocp_write(tp, (int )index, (int )byen, 4, (void *)(& tmp), (int )type);
  return;
}
}
static u8 ocp_read_byte(struct r8152 *tp , u16 type , u16 index )
{
  u32 data ;
  __le32 tmp ;
  u8 shift ;
  {
  shift = (unsigned int )((u8 )index) & 3U;
  index = (unsigned int )index & 65532U;
  generic_ocp_read(tp, (int )index, 4, (void *)(& tmp), (int )type);
  data = tmp;
  data = data >> (int )shift * 8;
  data = data & 255U;
  return ((u8 )data);
}
}
static void ocp_write_byte(struct r8152 *tp , u16 type , u16 index , u32 data )
{
  u32 mask ;
  __le32 tmp ;
  u16 byen ;
  u8 shift ;
  {
  mask = 255U;
  byen = 17U;
  shift = (unsigned int )((u8 )index) & 3U;
  data = data & mask;
  if (((int )index & 3) != 0) {
    byen = (u16 )((int )byen << (int )shift);
    mask = mask << (int )shift * 8;
    data = data << (int )shift * 8;
    index = (unsigned int )index & 65532U;
  } else {
  }
  tmp = data;
  generic_ocp_write(tp, (int )index, (int )byen, 4, (void *)(& tmp), (int )type);
  return;
}
}
static u16 ocp_reg_read(struct r8152 *tp , u16 addr )
{
  u16 ocp_base ;
  u16 ocp_index ;
  u16 tmp ;
  {
  ocp_base = (unsigned int )addr & 61440U;
  if ((int )tp->ocp_base != (int )ocp_base) {
    ocp_write_word(tp, 256, 59500, (u32 )ocp_base);
    tp->ocp_base = ocp_base;
  } else {
  }
  ocp_index = (u16 )(((int )((short )addr) & 4095) | -20480);
  tmp = ocp_read_word(tp, 256, (int )ocp_index);
  return (tmp);
}
}
static void ocp_reg_write(struct r8152 *tp , u16 addr , u16 data )
{
  u16 ocp_base ;
  u16 ocp_index ;
  {
  ocp_base = (unsigned int )addr & 61440U;
  if ((int )tp->ocp_base != (int )ocp_base) {
    ocp_write_word(tp, 256, 59500, (u32 )ocp_base);
    tp->ocp_base = ocp_base;
  } else {
  }
  ocp_index = (u16 )(((int )((short )addr) & 4095) | -20480);
  ocp_write_word(tp, 256, (int )ocp_index, (u32 )data);
  return;
}
}
__inline static void r8152_mdio_write(struct r8152 *tp , u32 reg_addr , u32 value )
{
  {
  ocp_reg_write(tp, (int )((unsigned int )((u16 )(reg_addr + 20992U)) * 2U), (int )((u16 )value));
  return;
}
}
__inline static int r8152_mdio_read(struct r8152 *tp , u32 reg_addr )
{
  u16 tmp ;
  {
  tmp = ocp_reg_read(tp, (int )((unsigned int )((u16 )(reg_addr + 20992U)) * 2U));
  return ((int )tmp);
}
}
static void sram_write(struct r8152 *tp , u16 addr , u16 data )
{
  {
  ocp_reg_write(tp, 42038, (int )addr);
  ocp_reg_write(tp, 42040, (int )data);
  return;
}
}
static int read_mii_word(struct net_device *netdev , int phy_id , int reg )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 != 0) {
    return (-19);
  } else {
  }
  if (phy_id != 32) {
    return (-22);
  } else {
  }
  ret = r8152_mdio_read(tp, (u32 )reg);
  return (ret);
}
}
static void write_mii_word(struct net_device *netdev , int phy_id , int reg , int val )
{
  struct r8152 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 != 0) {
    return;
  } else {
  }
  if (phy_id != 32) {
    return;
  } else {
  }
  r8152_mdio_write(tp, (u32 )reg, (u32 )val);
  return;
}
}
static int r8152_submit_rx(struct r8152 *tp , struct rx_agg *agg , gfp_t mem_flags ) ;
static int rtl8152_set_mac_address(struct net_device *netdev , void *p )
{
  struct r8152 *tp ;
  void *tmp ;
  struct sockaddr *addr ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  addr = (struct sockaddr *)p;
  ret = -99;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    goto out1;
  } else {
  }
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out1;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  ocp_write_byte(tp, 256, 59420, 192U);
  pla_ocp_write(tp, 49152, 63, 8, (void *)(& addr->sa_data));
  ocp_write_byte(tp, 256, 59420, 0U);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out1: ;
  return (ret);
}
}
static int set_ethernet_addr(struct r8152 *tp )
{
  struct net_device *dev ;
  struct sockaddr sa ;
  int ret ;
  bool tmp ;
  int tmp___0 ;
  {
  dev = tp->netdev;
  if ((unsigned int )tp->version == 1U) {
    ret = pla_ocp_read(tp, 49152, 8, (void *)(& sa.sa_data));
  } else {
    ret = pla_ocp_read(tp, 53248, 8, (void *)(& sa.sa_data));
  }
  if (ret < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      netdev_err((struct net_device const *)dev, "Get ether addr fail\n");
    } else {
    }
  } else {
    tmp = is_valid_ether_addr((u8 const *)(& sa.sa_data));
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      if ((tp->msg_enable & 2U) != 0U) {
        netdev_err((struct net_device const *)dev, "Invalid ether addr %pM\n", (char *)(& sa.sa_data));
      } else {
      }
      eth_hw_addr_random(dev);
      ether_addr_copy((u8 *)(& sa.sa_data), (u8 const *)dev->dev_addr);
      ret = rtl8152_set_mac_address(dev, (void *)(& sa));
      if ((tp->msg_enable & 2U) != 0U) {
        netdev_info((struct net_device const *)dev, "Random ether addr %pM\n", (char *)(& sa.sa_data));
      } else {
      }
    } else
    if ((unsigned int )tp->version == 1U) {
      ether_addr_copy(dev->dev_addr, (u8 const *)(& sa.sa_data));
    } else {
      ret = rtl8152_set_mac_address(dev, (void *)(& sa));
    }
  }
  return (ret);
}
}
static void read_bulk_callback(struct urb *urb )
{
  struct net_device *netdev ;
  int status ;
  struct rx_agg *agg ;
  struct r8152 *tp ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  status = urb->status;
  agg = (struct rx_agg *)urb->context;
  if ((unsigned long )agg == (unsigned long )((struct rx_agg *)0)) {
    return;
  } else {
  }
  tp = agg->context;
  if ((unsigned long )tp == (unsigned long )((struct r8152 *)0)) {
    return;
  } else {
  }
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 == 0) {
    return;
  } else {
  }
  netdev = tp->netdev;
  tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return;
  } else {
  }
  usb_mark_last_busy(tp->udev);
  switch (status) {
  case 0: ;
  if (urb->actual_length <= 59U) {
    goto ldv_52765;
  } else {
  }
  spin_lock(& tp->rx_lock);
  list_add_tail(& agg->list, & tp->rx_done);
  spin_unlock(& tp->rx_lock);
  napi_schedule(& tp->napi);
  return;
  case -108:
  set_bit(0L, (unsigned long volatile *)(& tp->flags));
  netif_device_detach(tp->netdev);
  return;
  case -2: ;
  return;
  case -62:
  tmp___3 = net_ratelimit();
  if (tmp___3 != 0) {
    netdev_warn((struct net_device const *)netdev, "maybe reset is needed?\n");
  } else {
  }
  goto ldv_52765;
  default:
  tmp___4 = net_ratelimit();
  if (tmp___4 != 0) {
    netdev_warn((struct net_device const *)netdev, "Rx status %d\n", status);
  } else {
  }
  goto ldv_52765;
  }
  ldv_52765:
  r8152_submit_rx(tp, agg, 32U);
  return;
}
}
static void write_bulk_callback(struct urb *urb )
{
  struct net_device_stats *stats ;
  struct net_device *netdev ;
  struct tx_agg *agg ;
  struct r8152 *tp ;
  int status ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  status = urb->status;
  agg = (struct tx_agg *)urb->context;
  if ((unsigned long )agg == (unsigned long )((struct tx_agg *)0)) {
    return;
  } else {
  }
  tp = agg->context;
  if ((unsigned long )tp == (unsigned long )((struct r8152 *)0)) {
    return;
  } else {
  }
  netdev = tp->netdev;
  stats = & netdev->stats;
  if (status != 0) {
    tmp = net_ratelimit();
    if (tmp != 0) {
      netdev_warn((struct net_device const *)netdev, "Tx status %d\n", status);
    } else {
    }
    stats->tx_errors = stats->tx_errors + (unsigned long )agg->skb_num;
  } else {
    stats->tx_packets = stats->tx_packets + (unsigned long )agg->skb_num;
    stats->tx_bytes = stats->tx_bytes + (unsigned long )agg->skb_len;
  }
  spin_lock(& tp->tx_lock);
  list_add_tail(& agg->list, & tp->tx_free);
  spin_unlock(& tp->tx_lock);
  usb_autopm_put_interface_async(tp->intf);
  tmp___0 = netif_carrier_ok((struct net_device const *)netdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  tmp___2 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___2 == 0) {
    return;
  } else {
  }
  tmp___3 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___3 != 0) {
    return;
  } else {
  }
  tmp___4 = skb_queue_empty((struct sk_buff_head const *)(& tp->tx_queue));
  if (tmp___4 == 0) {
    napi_schedule(& tp->napi);
  } else {
  }
  return;
}
}
static void intr_callback(struct urb *urb )
{
  struct r8152 *tp ;
  __le16 *d ;
  int status ;
  int res ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  status = urb->status;
  tp = (struct r8152 *)urb->context;
  if ((unsigned long )tp == (unsigned long )((struct r8152 *)0)) {
    return;
  } else {
  }
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 != 0) {
    return;
  } else {
  }
  switch (status) {
  case 0: ;
  goto ldv_52786;
  case -104: ;
  case -108:
  netif_device_detach(tp->netdev);
  case -2: ;
  case -71: ;
  if ((tp->msg_enable & 512U) != 0U) {
    netdev_info((struct net_device const *)tp->netdev, "Stop submitting intr, status %d\n",
                status);
  } else {
  }
  return;
  case -75: ;
  if ((tp->msg_enable & 512U) != 0U) {
    netdev_info((struct net_device const *)tp->netdev, "intr status -EOVERFLOW\n");
  } else {
  }
  goto resubmit;
  default: ;
  if ((tp->msg_enable & 512U) != 0U) {
    netdev_info((struct net_device const *)tp->netdev, "intr status %d\n", status);
  } else {
  }
  goto resubmit;
  }
  ldv_52786:
  d = (__le16 *)urb->transfer_buffer;
  if (((unsigned int )*d & 4U) != 0U) {
    tmp___1 = netif_carrier_ok((struct net_device const *)tp->netdev);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      set_bit(3L, (unsigned long volatile *)(& tp->flags));
      schedule_delayed_work(& tp->schedule, 0UL);
    } else {
    }
  } else {
    tmp___3 = netif_carrier_ok((struct net_device const *)tp->netdev);
    if ((int )tmp___3) {
      set_bit(3L, (unsigned long volatile *)(& tp->flags));
      schedule_delayed_work(& tp->schedule, 0UL);
    } else {
    }
  }
  resubmit:
  res = ldv_usb_submit_urb_43(urb, 32U);
  if (res == -19) {
    set_bit(0L, (unsigned long volatile *)(& tp->flags));
    netif_device_detach(tp->netdev);
  } else
  if (res != 0) {
    if ((tp->msg_enable & 512U) != 0U) {
      netdev_err((struct net_device const *)tp->netdev, "can\'t resubmit intr, status %d\n",
                 res);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void *rx_agg_align(void *data )
{
  {
  return ((void *)(((unsigned long )data + 7UL) & 0xfffffffffffffff8UL));
}
}
__inline static void *tx_agg_align(void *data )
{
  {
  return ((void *)(((unsigned long )data + 3UL) & 0xfffffffffffffffcUL));
}
}
static void free_all_mem(struct r8152 *tp )
{
  int i ;
  {
  i = 0;
  goto ldv_52805;
  ldv_52804:
  usb_free_urb(tp->rx_info[i].urb);
  tp->rx_info[i].urb = (struct urb *)0;
  kfree((void const *)tp->rx_info[i].buffer);
  tp->rx_info[i].buffer = (void *)0;
  tp->rx_info[i].head = (void *)0;
  i = i + 1;
  ldv_52805: ;
  if (i <= 9) {
    goto ldv_52804;
  } else {
  }
  i = 0;
  goto ldv_52808;
  ldv_52807:
  usb_free_urb(tp->tx_info[i].urb);
  tp->tx_info[i].urb = (struct urb *)0;
  kfree((void const *)tp->tx_info[i].buffer);
  tp->tx_info[i].buffer = (void *)0;
  tp->tx_info[i].head = (void *)0;
  i = i + 1;
  ldv_52808: ;
  if (i <= 3) {
    goto ldv_52807;
  } else {
  }
  usb_free_urb(tp->intr_urb);
  tp->intr_urb = (struct urb *)0;
  kfree((void const *)tp->intr_buff);
  tp->intr_buff = (u8 *)0U;
  return;
}
}
static int alloc_all_mem(struct r8152 *tp )
{
  struct net_device *netdev ;
  struct usb_interface *intf ;
  struct usb_host_interface *alt ;
  struct usb_host_endpoint *ep_intr ;
  struct urb *urb ;
  int node ;
  int i ;
  u8 *buf ;
  int tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  unsigned int tmp___7 ;
  {
  netdev = tp->netdev;
  intf = tp->intf;
  alt = intf->cur_altsetting;
  ep_intr = alt->endpoint + 2UL;
  if ((unsigned long )netdev->dev.parent != (unsigned long )((struct device *)0)) {
    tmp = dev_to_node(netdev->dev.parent);
    node = tmp;
  } else {
    node = -1;
  }
  spinlock_check(& tp->rx_lock);
  __raw_spin_lock_init(& tp->rx_lock.__annonCompField18.rlock, "&(&tp->rx_lock)->rlock",
                       & __key);
  spinlock_check(& tp->tx_lock);
  __raw_spin_lock_init(& tp->tx_lock.__annonCompField18.rlock, "&(&tp->tx_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& tp->tx_free);
  skb_queue_head_init(& tp->tx_queue);
  skb_queue_head_init(& tp->rx_queue);
  i = 0;
  goto ldv_52825;
  ldv_52824:
  tmp___0 = kmalloc_node((size_t )agg_buf_sz, 208U, node);
  buf = (u8 *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    goto err1;
  } else {
  }
  tmp___2 = rx_agg_align((void *)buf);
  if ((unsigned long )tmp___2 != (unsigned long )((void *)buf)) {
    kfree((void const *)buf);
    tmp___1 = kmalloc_node((size_t )(agg_buf_sz + 8U), 208U, node);
    buf = (u8 *)tmp___1;
    if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
      goto err1;
    } else {
    }
  } else {
  }
  urb = ldv_usb_alloc_urb_44(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    kfree((void const *)buf);
    goto err1;
  } else {
  }
  INIT_LIST_HEAD(& tp->rx_info[i].list);
  tp->rx_info[i].context = tp;
  tp->rx_info[i].urb = urb;
  tp->rx_info[i].buffer = (void *)buf;
  tp->rx_info[i].head = rx_agg_align((void *)buf);
  i = i + 1;
  ldv_52825: ;
  if (i <= 9) {
    goto ldv_52824;
  } else {
  }
  i = 0;
  goto ldv_52828;
  ldv_52827:
  tmp___3 = kmalloc_node((size_t )agg_buf_sz, 208U, node);
  buf = (u8 *)tmp___3;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    goto err1;
  } else {
  }
  tmp___5 = tx_agg_align((void *)buf);
  if ((unsigned long )tmp___5 != (unsigned long )((void *)buf)) {
    kfree((void const *)buf);
    tmp___4 = kmalloc_node((size_t )(agg_buf_sz + 4U), 208U, node);
    buf = (u8 *)tmp___4;
    if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
      goto err1;
    } else {
    }
  } else {
  }
  urb = ldv_usb_alloc_urb_45(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    kfree((void const *)buf);
    goto err1;
  } else {
  }
  INIT_LIST_HEAD(& tp->tx_info[i].list);
  tp->tx_info[i].context = tp;
  tp->tx_info[i].urb = urb;
  tp->tx_info[i].buffer = (void *)buf;
  tp->tx_info[i].head = tx_agg_align((void *)buf);
  list_add_tail(& tp->tx_info[i].list, & tp->tx_free);
  i = i + 1;
  ldv_52828: ;
  if (i <= 3) {
    goto ldv_52827;
  } else {
  }
  tp->intr_urb = ldv_usb_alloc_urb_46(0, 208U);
  if ((unsigned long )tp->intr_urb == (unsigned long )((struct urb *)0)) {
    goto err1;
  } else {
  }
  tmp___6 = kmalloc(2UL, 208U);
  tp->intr_buff = (u8 *)tmp___6;
  if ((unsigned long )tp->intr_buff == (unsigned long )((u8 *)0U)) {
    goto err1;
  } else {
  }
  tp->intr_interval = (int )ep_intr->desc.bInterval;
  tmp___7 = __create_pipe(tp->udev, 3U);
  usb_fill_int_urb(tp->intr_urb, tp->udev, tmp___7 | 1073741952U, (void *)tp->intr_buff,
                   2, & intr_callback, (void *)tp, tp->intr_interval);
  return (0);
  err1:
  free_all_mem(tp);
  return (-12);
}
}
static struct tx_agg *r8152_get_tx_agg(struct r8152 *tp )
{
  struct tx_agg *agg ;
  unsigned long flags ;
  int tmp ;
  struct list_head *cursor ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  agg = (struct tx_agg *)0;
  tmp = list_empty((struct list_head const *)(& tp->tx_free));
  if (tmp != 0) {
    return ((struct tx_agg *)0);
  } else {
  }
  ldv_spin_lock();
  tmp___0 = list_empty((struct list_head const *)(& tp->tx_free));
  if (tmp___0 == 0) {
    cursor = tp->tx_free.next;
    list_del_init(cursor);
    __mptr = (struct list_head const *)cursor;
    agg = (struct tx_agg *)__mptr;
  } else {
  }
  spin_unlock_irqrestore(& tp->tx_lock, flags);
  return (agg);
}
}
static void r8152_csum_workaround(struct r8152 *tp , struct sk_buff *skb , struct sk_buff_head *list )
{
  netdev_features_t features ;
  struct sk_buff_head seg_list ;
  struct sk_buff *segs ;
  struct sk_buff *nskb ;
  bool tmp ;
  int tmp___0 ;
  struct net_device_stats *stats ;
  unsigned char *tmp___1 ;
  {
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___1)->gso_size != 0U) {
    features = (tp->netdev)->features;
    features = features & 0xffffffffffefffeeULL;
    segs = skb_gso_segment(skb, features);
    tmp = IS_ERR((void const *)segs);
    if ((int )tmp || (unsigned long )segs == (unsigned long )((struct sk_buff *)0)) {
      goto drop;
    } else {
    }
    __skb_queue_head_init(& seg_list);
    ldv_52848:
    nskb = segs;
    segs = segs->__annonCompField79.__annonCompField78.next;
    nskb->__annonCompField79.__annonCompField78.next = (struct sk_buff *)0;
    __skb_queue_tail(& seg_list, nskb);
    if ((unsigned long )segs != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_52848;
    } else {
    }
    skb_queue_splice((struct sk_buff_head const *)(& seg_list), list);
    consume_skb(skb);
  } else
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    tmp___0 = skb_checksum_help(skb);
    if (tmp___0 < 0) {
      goto drop;
    } else {
    }
    __skb_queue_head(list, skb);
  } else {
    drop:
    stats = & (tp->netdev)->stats;
    stats->tx_dropped = stats->tx_dropped + 1UL;
    consume_skb(skb);
  }
  return;
}
}
static int msdn_giant_send_check(struct sk_buff *skb )
{
  struct ipv6hdr const *ipv6h ;
  struct tcphdr *th ;
  int ret ;
  struct ipv6hdr *tmp ;
  __sum16 tmp___0 ;
  {
  ret = skb_cow_head(skb, 0U);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = ipv6_hdr((struct sk_buff const *)skb);
  ipv6h = (struct ipv6hdr const *)tmp;
  th = tcp_hdr((struct sk_buff const *)skb);
  th->check = 0U;
  tmp___0 = tcp_v6_check(0, & ipv6h->saddr, & ipv6h->daddr, 0U);
  th->check = ~ ((int )tmp___0);
  return (ret);
}
}
__inline static void rtl_tx_vlan_tag(struct tx_desc *desc , struct sk_buff *skb )
{
  u32 opts2 ;
  __u16 tmp ;
  {
  if (((int )skb->vlan_tci & 4096) != 0) {
    tmp = __fswab16((int )skb->vlan_tci & 61439);
    opts2 = (u32 )tmp | 65536U;
    desc->opts2 = desc->opts2 | opts2;
  } else {
  }
  return;
}
}
__inline static void rtl_rx_vlan_tag(struct rx_desc *desc , struct sk_buff *skb )
{
  u32 opts2 ;
  __u16 tmp ;
  {
  opts2 = desc->opts2;
  if (((unsigned long )opts2 & 65536UL) != 0UL) {
    tmp = __fswab16((int )((__u16 )opts2));
    __vlan_hwaccel_put_tag(skb, 129, (int )tmp);
  } else {
  }
  return;
}
}
static int r8152_tx_csum(struct r8152 *tp , struct tx_desc *desc , struct sk_buff *skb ,
                         u32 len , u32 transport_offset )
{
  u32 mss ;
  unsigned char *tmp ;
  u32 opts1 ;
  u32 opts2 ;
  int ret ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  __be16 tmp___3 ;
  int tmp___4 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  u32 _min1 ;
  unsigned int _min2 ;
  u8 ip_protocol ;
  __be16 tmp___8 ;
  struct iphdr *tmp___9 ;
  struct ipv6hdr *tmp___10 ;
  bool __warned___1 ;
  int __ret_warn_once___1 ;
  int __ret_warn_on___1 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  mss = (u32 )((struct skb_shared_info *)tmp)->gso_size;
  opts2 = 0U;
  ret = 0;
  __ret_warn_once = len > 262143U;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11951/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/r8152.c",
                         1456);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  opts1 = len | 3221225472U;
  if (mss != 0U) {
    if (transport_offset > 127U) {
      if ((tp->msg_enable & 128U) != 0U) {
        netdev_warn((struct net_device const *)tp->netdev, "Invalid transport offset 0x%x for TSO\n",
                    transport_offset);
      } else {
      }
      ret = 1;
      goto unavailable;
    } else {
    }
    tmp___3 = vlan_get_protocol(skb);
    switch ((int )tmp___3) {
    case 8:
    opts1 = opts1 | 268435456U;
    goto ldv_52885;
    case 56710:
    tmp___4 = msdn_giant_send_check(skb);
    if (tmp___4 != 0) {
      ret = 1;
      goto unavailable;
    } else {
    }
    opts1 = opts1 | 134217728U;
    goto ldv_52885;
    default:
    __ret_warn_once___0 = 1;
    tmp___7 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (tmp___7 != 0L) {
      __ret_warn_on___0 = ! __warned___0;
      tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___5 != 0L) {
        warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11951/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/r8152.c",
                           1483);
      } else {
      }
      tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___6 != 0L) {
        __warned___0 = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    goto ldv_52885;
    }
    ldv_52885:
    opts1 = (transport_offset << 18) | opts1;
    _min1 = mss;
    _min2 = 2047U;
    opts2 = ((_min1 < _min2 ? _min1 : _min2) << 17) | opts2;
  } else
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    if (transport_offset > 2047U) {
      if ((tp->msg_enable & 128U) != 0U) {
        netdev_warn((struct net_device const *)tp->netdev, "Invalid transport offset 0x%x\n",
                    transport_offset);
      } else {
      }
      ret = 2;
      goto unavailable;
    } else {
    }
    tmp___8 = vlan_get_protocol(skb);
    switch ((int )tmp___8) {
    case 8:
    opts2 = opts2 | 536870912U;
    tmp___9 = ip_hdr((struct sk_buff const *)skb);
    ip_protocol = tmp___9->protocol;
    goto ldv_52898;
    case 56710:
    opts2 = opts2 | 268435456U;
    tmp___10 = ipv6_hdr((struct sk_buff const *)skb);
    ip_protocol = tmp___10->nexthdr;
    goto ldv_52898;
    default:
    ip_protocol = 255U;
    goto ldv_52898;
    }
    ldv_52898: ;
    if ((unsigned int )ip_protocol == 6U) {
      opts2 = opts2 | 1073741824U;
    } else
    if ((unsigned int )ip_protocol == 17U) {
      opts2 = opts2 | 2147483648U;
    } else {
      __ret_warn_once___1 = 1;
      tmp___13 = ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
      if (tmp___13 != 0L) {
        __ret_warn_on___1 = ! __warned___1;
        tmp___11 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
        if (tmp___11 != 0L) {
          warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11951/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/r8152.c",
                             1521);
        } else {
        }
        tmp___12 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
        if (tmp___12 != 0L) {
          __warned___1 = 1;
        } else {
        }
      } else {
      }
      ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
    }
    opts2 = (transport_offset << 17) | opts2;
  } else {
  }
  desc->opts2 = opts2;
  desc->opts1 = opts1;
  unavailable: ;
  return (ret);
}
}
static int r8152_tx_agg_fill(struct r8152 *tp , struct tx_agg *agg )
{
  struct sk_buff_head skb_head ;
  struct sk_buff_head *tx_queue ;
  int remain ;
  int ret ;
  u8 *tx_data ;
  struct tx_desc *tx_desc ;
  struct sk_buff *skb ;
  unsigned int len ;
  u32 offset ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct net_device_stats *stats ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  __u32 tmp___6 ;
  unsigned int tmp___7 ;
  {
  tx_queue = & tp->tx_queue;
  __skb_queue_head_init(& skb_head);
  spin_lock(& tx_queue->lock);
  skb_queue_splice_init(tx_queue, & skb_head);
  spin_unlock(& tx_queue->lock);
  tx_data = (u8 *)agg->head;
  agg->skb_num = 0U;
  agg->skb_len = 0U;
  remain = (int )agg_buf_sz;
  goto ldv_52920;
  ldv_52922:
  skb = __skb_dequeue(& skb_head);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_52919;
  } else {
  }
  len = skb->len + 8U;
  if ((unsigned int )remain < len) {
    __skb_queue_head(& skb_head, skb);
    goto ldv_52919;
  } else {
  }
  tmp = tx_agg_align((void *)tx_data);
  tx_data = (u8 *)tmp;
  tx_desc = (struct tx_desc *)tx_data;
  tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
  offset = (unsigned int )tmp___0;
  tmp___1 = r8152_tx_csum(tp, tx_desc, skb, skb->len, offset);
  if (tmp___1 != 0) {
    r8152_csum_workaround(tp, skb, & skb_head);
    goto ldv_52920;
  } else {
  }
  rtl_tx_vlan_tag(tx_desc, skb);
  tx_data = tx_data + 8UL;
  len = skb->len;
  tmp___2 = skb_copy_bits((struct sk_buff const *)skb, 0, (void *)tx_data, (int )len);
  if (tmp___2 < 0) {
    stats = & (tp->netdev)->stats;
    stats->tx_dropped = stats->tx_dropped + 1UL;
    dev_kfree_skb_any(skb);
    tx_data = tx_data + 0xfffffffffffffff8UL;
    goto ldv_52920;
  } else {
  }
  tx_data = tx_data + (unsigned long )len;
  agg->skb_len = agg->skb_len + len;
  agg->skb_num = agg->skb_num + 1U;
  dev_kfree_skb_any(skb);
  tmp___3 = tx_agg_align((void *)tx_data);
  remain = (int )(((unsigned int )((long )agg->head) - (unsigned int )((long )tmp___3)) + agg_buf_sz);
  ldv_52920: ;
  if ((unsigned int )remain > 67U) {
    goto ldv_52922;
  } else {
  }
  ldv_52919:
  tmp___4 = skb_queue_empty((struct sk_buff_head const *)(& skb_head));
  if (tmp___4 == 0) {
    spin_lock(& tx_queue->lock);
    skb_queue_splice((struct sk_buff_head const *)(& skb_head), tx_queue);
    spin_unlock(& tx_queue->lock);
  } else {
  }
  netif_tx_lock(tp->netdev);
  tmp___5 = netif_queue_stopped((struct net_device const *)tp->netdev);
  if ((int )tmp___5) {
    tmp___6 = skb_queue_len((struct sk_buff_head const *)(& tp->tx_queue));
    if (tmp___6 < tp->tx_qlen) {
      netif_wake_queue(tp->netdev);
    } else {
    }
  } else {
  }
  netif_tx_unlock(tp->netdev);
  ret = usb_autopm_get_interface_async(tp->intf);
  if (ret < 0) {
    goto out_tx_fill;
  } else {
  }
  tmp___7 = __create_pipe(tp->udev, 2U);
  usb_fill_bulk_urb(agg->urb, tp->udev, tmp___7 | 3221225472U, agg->head, (int )((unsigned int )((long )tx_data) - (unsigned int )((long )agg->head)),
                    & write_bulk_callback, (void *)agg);
  ret = ldv_usb_submit_urb_47(agg->urb, 32U);
  if (ret < 0) {
    usb_autopm_put_interface_async(tp->intf);
  } else {
  }
  out_tx_fill: ;
  return (ret);
}
}
static u8 r8152_rx_csum(struct r8152 *tp , struct rx_desc *rx_desc )
{
  u8 checksum ;
  u32 opts2 ;
  u32 opts3 ;
  {
  checksum = 0U;
  if ((unsigned int )tp->version == 1U) {
    goto return_result;
  } else {
  }
  opts2 = rx_desc->opts2;
  opts3 = rx_desc->opts3;
  if (((unsigned long )opts2 & 524288UL) != 0UL) {
    if (((unsigned long )opts3 & 8388608UL) != 0UL) {
      checksum = 0U;
    } else
    if (((unsigned long )opts2 & 8388608UL) != 0UL && ((unsigned long )opts3 & 4194304UL) != 0UL) {
      checksum = 0U;
    } else
    if (((unsigned long )opts2 & 4194304UL) != 0UL && ((unsigned long )opts3 & 2097152UL) != 0UL) {
      checksum = 0U;
    } else {
      checksum = 1U;
    }
  } else
  if (((unsigned long )opts2 & 8388608UL) != 0UL && ((unsigned long )opts3 & 4194304UL) == 0UL) {
    checksum = 1U;
  } else
  if (((unsigned long )opts2 & 4194304UL) != 0UL && ((unsigned long )opts3 & 2097152UL) == 0UL) {
    checksum = 1U;
  } else {
  }
  return_result: ;
  return (checksum);
}
}
static int rx_bottom(struct r8152 *tp , int budget )
{
  unsigned long flags ;
  struct list_head *cursor ;
  struct list_head *next ;
  struct list_head rx_queue ;
  int ret ;
  int work_done ;
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  struct net_device *netdev ;
  struct net_device_stats *stats ;
  unsigned int pkt_len ;
  int tmp___0 ;
  int tmp___1 ;
  struct rx_desc *rx_desc ;
  struct rx_agg *agg ;
  int len_used ;
  struct urb *urb ;
  u8 *rx_data ;
  struct list_head const *__mptr ;
  struct net_device *netdev___0 ;
  struct net_device_stats *stats___0 ;
  unsigned int pkt_len___0 ;
  struct sk_buff *skb___0 ;
  u8 tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  ret = 0;
  work_done = 0;
  tmp___0 = skb_queue_empty((struct sk_buff_head const *)(& tp->rx_queue));
  if (tmp___0 == 0) {
    goto ldv_52948;
    ldv_52947:
    tmp = __skb_dequeue(& tp->rx_queue);
    skb = tmp;
    netdev = tp->netdev;
    stats = & netdev->stats;
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto ldv_52946;
    } else {
    }
    pkt_len = skb->len;
    napi_gro_receive(& tp->napi, skb);
    work_done = work_done + 1;
    stats->rx_packets = stats->rx_packets + 1UL;
    stats->rx_bytes = stats->rx_bytes + (unsigned long )pkt_len;
    ldv_52948: ;
    if (work_done < budget) {
      goto ldv_52947;
    } else {
    }
    ldv_52946: ;
  } else {
  }
  tmp___1 = list_empty((struct list_head const *)(& tp->rx_done));
  if (tmp___1 != 0) {
    goto out1;
  } else {
  }
  INIT_LIST_HEAD(& rx_queue);
  ldv_spin_lock();
  list_splice_init(& tp->rx_done, & rx_queue);
  spin_unlock_irqrestore(& tp->rx_lock, flags);
  cursor = rx_queue.next;
  next = cursor->next;
  goto ldv_52967;
  ldv_52966:
  len_used = 0;
  list_del_init(cursor);
  __mptr = (struct list_head const *)cursor;
  agg = (struct rx_agg *)__mptr;
  urb = agg->urb;
  if (urb->actual_length <= 59U) {
    goto submit;
  } else {
  }
  rx_desc = (struct rx_desc *)agg->head;
  rx_data = (u8 *)agg->head;
  len_used = (int )((unsigned int )len_used + 24U);
  goto ldv_52965;
  ldv_52964:
  netdev___0 = tp->netdev;
  stats___0 = & netdev___0->stats;
  pkt_len___0 = rx_desc->opts1 & 32767U;
  if (pkt_len___0 <= 59U) {
    goto ldv_52962;
  } else {
  }
  len_used = (int )((unsigned int )len_used + pkt_len___0);
  if (urb->actual_length < (u32 )len_used) {
    goto ldv_52962;
  } else {
  }
  pkt_len___0 = pkt_len___0 - 4U;
  rx_data = rx_data + 24UL;
  skb___0 = netdev_alloc_skb_ip_align(netdev___0, pkt_len___0);
  if ((unsigned long )skb___0 == (unsigned long )((struct sk_buff *)0)) {
    stats___0->rx_dropped = stats___0->rx_dropped + 1UL;
    goto find_next_rx;
  } else {
  }
  tmp___2 = r8152_rx_csum(tp, rx_desc);
  skb___0->ip_summed = tmp___2;
  memcpy((void *)skb___0->data, (void const *)rx_data, (size_t )pkt_len___0);
  skb_put(skb___0, pkt_len___0);
  skb___0->protocol = eth_type_trans(skb___0, netdev___0);
  rtl_rx_vlan_tag(rx_desc, skb___0);
  if (work_done < budget) {
    napi_gro_receive(& tp->napi, skb___0);
    work_done = work_done + 1;
    stats___0->rx_packets = stats___0->rx_packets + 1UL;
    stats___0->rx_bytes = stats___0->rx_bytes + (unsigned long )pkt_len___0;
  } else {
    __skb_queue_tail(& tp->rx_queue, skb___0);
  }
  find_next_rx:
  tmp___3 = rx_agg_align((void *)(rx_data + ((unsigned long )pkt_len___0 + 4UL)));
  rx_data = (u8 *)tmp___3;
  rx_desc = (struct rx_desc *)rx_data;
  len_used = (int )((unsigned int )((long )rx_data) - (unsigned int )((long )agg->head));
  len_used = (int )((unsigned int )len_used + 24U);
  ldv_52965: ;
  if (urb->actual_length > (u32 )len_used) {
    goto ldv_52964;
  } else {
  }
  ldv_52962: ;
  submit: ;
  if (ret == 0) {
    ret = r8152_submit_rx(tp, agg, 32U);
  } else {
    urb->actual_length = 0U;
    list_add_tail(& agg->list, next);
  }
  cursor = next;
  next = cursor->next;
  ldv_52967: ;
  if ((unsigned long )(& rx_queue) != (unsigned long )cursor) {
    goto ldv_52966;
  } else {
  }
  tmp___4 = list_empty((struct list_head const *)(& rx_queue));
  if (tmp___4 == 0) {
    ldv_spin_lock();
    list_splice_tail(& rx_queue, & tp->rx_done);
    spin_unlock_irqrestore(& tp->rx_lock, flags);
  } else {
  }
  out1: ;
  return (work_done);
}
}
static void tx_bottom(struct r8152 *tp )
{
  int res ;
  struct tx_agg *agg ;
  int tmp ;
  struct net_device *netdev ;
  struct net_device_stats *stats ;
  unsigned long flags ;
  {
  ldv_52978:
  tmp = skb_queue_empty((struct sk_buff_head const *)(& tp->tx_queue));
  if (tmp != 0) {
    goto ldv_52974;
  } else {
  }
  agg = r8152_get_tx_agg(tp);
  if ((unsigned long )agg == (unsigned long )((struct tx_agg *)0)) {
    goto ldv_52974;
  } else {
  }
  res = r8152_tx_agg_fill(tp, agg);
  if (res != 0) {
    netdev = tp->netdev;
    if (res == -19) {
      set_bit(0L, (unsigned long volatile *)(& tp->flags));
      netif_device_detach(netdev);
    } else {
      stats = & netdev->stats;
      if ((tp->msg_enable & 128U) != 0U) {
        netdev_warn((struct net_device const *)netdev, "failed tx_urb %d\n", res);
      } else {
      }
      stats->tx_dropped = stats->tx_dropped + (unsigned long )agg->skb_num;
      ldv_spin_lock();
      list_add_tail(& agg->list, & tp->tx_free);
      spin_unlock_irqrestore(& tp->tx_lock, flags);
    }
  } else {
  }
  if (res == 0) {
    goto ldv_52978;
  } else {
  }
  ldv_52974: ;
  return;
}
}
static void bottom_half(struct r8152 *tp )
{
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 == 0) {
    return;
  } else {
  }
  tmp___1 = netif_carrier_ok((struct net_device const *)tp->netdev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return;
  } else {
  }
  clear_bit(6L, (unsigned long volatile *)(& tp->flags));
  tx_bottom(tp);
  return;
}
}
static int r8152_poll(struct napi_struct *napi , int budget )
{
  struct r8152 *tp ;
  struct napi_struct const *__mptr ;
  int work_done ;
  int tmp ;
  {
  __mptr = (struct napi_struct const *)napi;
  tp = (struct r8152 *)__mptr + 0xfffffffffffffff0UL;
  work_done = rx_bottom(tp, budget);
  bottom_half(tp);
  if (work_done < budget) {
    napi_complete(napi);
    tmp = list_empty((struct list_head const *)(& tp->rx_done));
    if (tmp == 0) {
      napi_schedule(napi);
    } else {
    }
  } else {
  }
  return (work_done);
}
}
static int r8152_submit_rx(struct r8152 *tp , struct rx_agg *agg , gfp_t mem_flags )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  struct urb *urb ;
  unsigned long flags ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return (0);
  } else {
    tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___0 == 0) {
      return (0);
    } else {
      tmp___1 = netif_carrier_ok((struct net_device const *)tp->netdev);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        return (0);
      } else {
      }
    }
  }
  tmp___3 = __create_pipe(tp->udev, 1U);
  usb_fill_bulk_urb(agg->urb, tp->udev, tmp___3 | 3221225600U, agg->head, (int )agg_buf_sz,
                    & read_bulk_callback, (void *)agg);
  ret = ldv_usb_submit_urb_48(agg->urb, mem_flags);
  if (ret == -19) {
    set_bit(0L, (unsigned long volatile *)(& tp->flags));
    netif_device_detach(tp->netdev);
  } else
  if (ret != 0) {
    urb = agg->urb;
    urb->actual_length = 0U;
    ldv_spin_lock();
    list_add_tail(& agg->list, & tp->rx_done);
    spin_unlock_irqrestore(& tp->rx_lock, flags);
    if ((tp->msg_enable & 64U) != 0U) {
      netdev_err((struct net_device const *)tp->netdev, "Couldn\'t submit rx[%p], ret = %d\n",
                 agg, ret);
    } else {
    }
    napi_schedule(& tp->napi);
  } else {
  }
  return (ret);
}
}
static void rtl_drop_queued_tx(struct r8152 *tp )
{
  struct net_device_stats *stats ;
  struct sk_buff_head skb_head ;
  struct sk_buff_head *tx_queue ;
  struct sk_buff *skb ;
  int tmp ;
  {
  stats = & (tp->netdev)->stats;
  tx_queue = & tp->tx_queue;
  tmp = skb_queue_empty((struct sk_buff_head const *)tx_queue);
  if (tmp != 0) {
    return;
  } else {
  }
  __skb_queue_head_init(& skb_head);
  spin_lock_bh(& tx_queue->lock);
  skb_queue_splice_init(tx_queue, & skb_head);
  spin_unlock_bh(& tx_queue->lock);
  goto ldv_53006;
  ldv_53005:
  consume_skb(skb);
  stats->tx_dropped = stats->tx_dropped + 1UL;
  ldv_53006:
  skb = __skb_dequeue(& skb_head);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_53005;
  } else {
  }
  return;
}
}
static void rtl8152_tx_timeout(struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  if ((tp->msg_enable & 128U) != 0U) {
    netdev_warn((struct net_device const *)netdev, "Tx timeout\n");
  } else {
  }
  i = 0;
  goto ldv_53014;
  ldv_53013:
  usb_unlink_urb(tp->tx_info[i].urb);
  i = i + 1;
  ldv_53014: ;
  if (i <= 3) {
    goto ldv_53013;
  } else {
  }
  return;
}
}
static void rtl8152_set_rx_mode(struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  tmp___0 = netif_carrier_ok((struct net_device const *)netdev);
  if ((int )tmp___0) {
    set_bit(1L, (unsigned long volatile *)(& tp->flags));
    schedule_delayed_work(& tp->schedule, 0UL);
  } else {
  }
  return;
}
}
static void _rtl8152_set_rx_mode(struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  u32 mc_filter[2U] ;
  __le32 tmp___0[2U] ;
  u32 ocp_data ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  int bit_nr ;
  u32 __x ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  struct list_head const *__mptr___0 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  clear_bit(1L, (unsigned long volatile *)(& tp->flags));
  netif_stop_queue(netdev);
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data & 4294967280U;
  ocp_data = ocp_data | 10U;
  if ((netdev->flags & 256U) != 0U) {
    if ((tp->msg_enable & 4U) != 0U) {
      netdev_notice((struct net_device const *)netdev, "Promiscuous mode enabled\n");
    } else {
    }
    ocp_data = ocp_data | 5U;
    mc_filter[1] = 4294967295U;
    mc_filter[0] = 4294967295U;
  } else
  if (netdev->mc.count > (int )multicast_filter_limit || (netdev->flags & 512U) != 0U) {
    ocp_data = ocp_data | 4U;
    mc_filter[1] = 4294967295U;
    mc_filter[0] = 4294967295U;
  } else {
    mc_filter[1] = 0U;
    mc_filter[0] = 0U;
    __mptr = (struct list_head const *)netdev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_53038;
    ldv_53037:
    tmp___1 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    __x = tmp___1;
    tmp___2 = __bitrev32(__x);
    bit_nr = (int )(tmp___2 >> 26);
    mc_filter[bit_nr >> 5] = mc_filter[bit_nr >> 5] | (u32 )(1 << (bit_nr & 31));
    ocp_data = ocp_data | 4U;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_53038: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
      goto ldv_53037;
    } else {
    }
  }
  tmp___3 = __fswab32(mc_filter[1]);
  tmp___0[0] = tmp___3;
  tmp___4 = __fswab32(mc_filter[0]);
  tmp___0[1] = tmp___4;
  pla_ocp_write(tp, 52480, 255, 8, (void *)(& tmp___0));
  ocp_write_dword(tp, 256, 49168, ocp_data);
  netif_wake_queue(netdev);
  return;
}
}
static netdev_features_t rtl8152_features_check(struct sk_buff *skb , struct net_device *dev ,
                                                netdev_features_t features )
{
  u32 mss ;
  unsigned char *tmp ;
  int max_offset ;
  int offset ;
  int tmp___0 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  mss = (u32 )((struct skb_shared_info *)tmp)->gso_size;
  max_offset = mss != 0U ? 127 : 2047;
  tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
  offset = tmp___0;
  if ((mss != 0U || (unsigned int )*((unsigned char *)skb + 145UL) == 6U) && offset > max_offset) {
    features = features & 0xffffffffe000ffe5ULL;
  } else
  if ((unsigned long )skb->len + 8UL > (unsigned long )agg_buf_sz) {
    features = features & 0xffffffffe000ffffULL;
  } else {
  }
  return (features);
}
}
static netdev_tx_t rtl8152_start_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  skb_tx_timestamp(skb);
  skb_queue_tail(& tp->tx_queue, skb);
  tmp___2 = list_empty((struct list_head const *)(& tp->tx_free));
  if (tmp___2 == 0) {
    tmp___0 = constant_test_bit(4L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___0 != 0) {
      set_bit(6L, (unsigned long volatile *)(& tp->flags));
      schedule_delayed_work(& tp->schedule, 0UL);
    } else {
      usb_mark_last_busy(tp->udev);
      napi_schedule(& tp->napi);
    }
  } else {
    tmp___1 = skb_queue_len((struct sk_buff_head const *)(& tp->tx_queue));
    if (tmp___1 > tp->tx_qlen) {
      netif_stop_queue(netdev);
    } else {
    }
  }
  return (0);
}
}
static void r8152b_reset_packet_filter(struct r8152 *tp )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 49332);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967294U;
  ocp_write_word(tp, 256, 49332, ocp_data);
  ocp_data = ocp_data | 1U;
  ocp_write_word(tp, 256, 49332, ocp_data);
  return;
}
}
static void rtl8152_nic_reset(struct r8152 *tp )
{
  int i ;
  u8 tmp ;
  {
  ocp_write_byte(tp, 256, 59411, 16U);
  i = 0;
  goto ldv_53063;
  ldv_53062:
  tmp = ocp_read_byte(tp, 256, 59411);
  if (((int )tmp & 16) == 0) {
    goto ldv_53061;
  } else {
  }
  usleep_range(100UL, 400UL);
  i = i + 1;
  ldv_53063: ;
  if (i <= 999) {
    goto ldv_53062;
  } else {
  }
  ldv_53061: ;
  return;
}
}
static void set_tx_qlen(struct r8152 *tp )
{
  struct net_device *netdev ;
  {
  netdev = tp->netdev;
  tp->tx_qlen = (u32 )((unsigned long )agg_buf_sz / ((unsigned long )(netdev->mtu + 22U) + 8UL));
  return;
}
}
__inline static u8 rtl8152_get_speed(struct r8152 *tp )
{
  u8 tmp ;
  {
  tmp = ocp_read_byte(tp, 256, 59656);
  return (tmp);
}
}
static void rtl_set_eee_plus(struct r8152 *tp )
{
  u32 ocp_data ;
  u8 speed ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  speed = rtl8152_get_speed(tp);
  if (((int )speed & 4) != 0) {
    tmp = ocp_read_word(tp, 256, 57472);
    ocp_data = (u32 )tmp;
    ocp_data = ocp_data | 2U;
    ocp_write_word(tp, 256, 57472, ocp_data);
  } else {
    tmp___0 = ocp_read_word(tp, 256, 57472);
    ocp_data = (u32 )tmp___0;
    ocp_data = ocp_data & 4294967293U;
    ocp_write_word(tp, 256, 57472, ocp_data);
  }
  return;
}
}
static void rxdy_gated_en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 59482);
  ocp_data = (u32 )tmp;
  if ((int )enable) {
    ocp_data = ocp_data | 8U;
  } else {
    ocp_data = ocp_data & 4294967287U;
  }
  ocp_write_word(tp, 256, 59482, ocp_data);
  return;
}
}
static int rtl_start_rx(struct r8152 *tp )
{
  int i ;
  int ret ;
  struct list_head rx_queue ;
  unsigned long flags ;
  struct rx_agg *agg ;
  int tmp ;
  struct urb *urb ;
  {
  ret = 0;
  napi_disable(& tp->napi);
  INIT_LIST_HEAD(& tp->rx_done);
  i = 0;
  goto ldv_53088;
  ldv_53087:
  INIT_LIST_HEAD(& tp->rx_info[i].list);
  ret = r8152_submit_rx(tp, (struct rx_agg *)(& tp->rx_info) + (unsigned long )i,
                        208U);
  if (ret != 0) {
    goto ldv_53086;
  } else {
  }
  i = i + 1;
  ldv_53088: ;
  if (i <= 9) {
    goto ldv_53087;
  } else {
  }
  ldv_53086:
  napi_enable(& tp->napi);
  if (ret != 0) {
    i = i + 1;
    if (i <= 9) {
      INIT_LIST_HEAD(& rx_queue);
      ldv_53093:
      tmp = i;
      i = i + 1;
      agg = (struct rx_agg *)(& tp->rx_info) + (unsigned long )tmp;
      urb = agg->urb;
      urb->actual_length = 0U;
      list_add_tail(& agg->list, & rx_queue);
      if (i <= 9) {
        goto ldv_53093;
      } else {
      }
      ldv_spin_lock();
      list_splice_tail(& rx_queue, & tp->rx_done);
      spin_unlock_irqrestore(& tp->rx_lock, flags);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int rtl_stop_rx(struct r8152 *tp )
{
  int i ;
  struct sk_buff *tmp ;
  int tmp___0 ;
  {
  i = 0;
  goto ldv_53100;
  ldv_53099:
  usb_kill_urb(tp->rx_info[i].urb);
  i = i + 1;
  ldv_53100: ;
  if (i <= 9) {
    goto ldv_53099;
  } else {
  }
  goto ldv_53103;
  ldv_53102:
  tmp = __skb_dequeue(& tp->rx_queue);
  consume_skb(tmp);
  ldv_53103:
  tmp___0 = skb_queue_empty((struct sk_buff_head const *)(& tp->rx_queue));
  if (tmp___0 == 0) {
    goto ldv_53102;
  } else {
  }
  return (0);
}
}
static int rtl_enable(struct r8152 *tp )
{
  u32 ocp_data ;
  u8 tmp ;
  {
  r8152b_reset_packet_filter(tp);
  tmp = ocp_read_byte(tp, 256, 59411);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data | 12U;
  ocp_write_byte(tp, 256, 59411, ocp_data);
  rxdy_gated_en(tp, 0);
  return (0);
}
}
static int rtl8152_enable(struct r8152 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return (-19);
  } else {
  }
  set_tx_qlen(tp);
  rtl_set_eee_plus(tp);
  tmp___0 = rtl_enable(tp);
  return (tmp___0);
}
}
static void r8153_set_rx_early_timeout(struct r8152 *tp )
{
  u32 ocp_data ;
  {
  ocp_data = tp->coalesce / 8U;
  ocp_write_word(tp, 0, 54316, ocp_data);
  return;
}
}
static void r8153_set_rx_early_size(struct r8152 *tp )
{
  u32 mtu ;
  u32 ocp_data ;
  {
  mtu = (tp->netdev)->mtu;
  ocp_data = ((agg_buf_sz - mtu) - 22U) / 4U;
  ocp_write_word(tp, 0, 54318, ocp_data);
  return;
}
}
static int rtl8153_enable(struct r8152 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return (-19);
  } else {
  }
  set_tx_qlen(tp);
  rtl_set_eee_plus(tp);
  r8153_set_rx_early_timeout(tp);
  r8153_set_rx_early_size(tp);
  tmp___0 = rtl_enable(tp);
  return (tmp___0);
}
}
static void rtl_disable(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  int tmp ;
  u8 tmp___0 ;
  u16 tmp___1 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    rtl_drop_queued_tx(tp);
    return;
  } else {
  }
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data & 4294967280U;
  ocp_write_dword(tp, 256, 49168, ocp_data);
  rtl_drop_queued_tx(tp);
  i = 0;
  goto ldv_53130;
  ldv_53129:
  usb_kill_urb(tp->tx_info[i].urb);
  i = i + 1;
  ldv_53130: ;
  if (i <= 3) {
    goto ldv_53129;
  } else {
  }
  rxdy_gated_en(tp, 1);
  i = 0;
  goto ldv_53134;
  ldv_53133:
  tmp___0 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___0;
  if ((ocp_data & 48U) == 48U) {
    goto ldv_53132;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53134: ;
  if (i <= 999) {
    goto ldv_53133;
  } else {
  }
  ldv_53132:
  i = 0;
  goto ldv_53137;
  ldv_53136:
  tmp___1 = ocp_read_word(tp, 256, 58896);
  if (((int )tmp___1 & 2048) != 0) {
    goto ldv_53135;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53137: ;
  if (i <= 999) {
    goto ldv_53136;
  } else {
  }
  ldv_53135:
  rtl_stop_rx(tp);
  rtl8152_nic_reset(tp);
  return;
}
}
static void r8152_power_cut_en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = ocp_read_word(tp, 0, 55296);
  ocp_data = (u32 )tmp;
  if ((int )enable) {
    ocp_data = ocp_data | 256U;
  } else {
    ocp_data = ocp_data & 4294967039U;
  }
  ocp_write_word(tp, 0, 55296, ocp_data);
  tmp___0 = ocp_read_word(tp, 0, 54322);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data & 4294967294U;
  ocp_write_word(tp, 0, 54322, ocp_data);
  return;
}
}
static void rtl_rx_vlan_en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 59476);
  ocp_data = (u32 )tmp;
  if ((int )enable) {
    ocp_data = ocp_data | 64U;
  } else {
    ocp_data = ocp_data & 4294967231U;
  }
  ocp_write_word(tp, 256, 59476, ocp_data);
  return;
}
}
static int rtl8152_set_features(struct net_device *dev , netdev_features_t features )
{
  netdev_features_t changed ;
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  changed = dev->features ^ features;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  if ((changed & 256ULL) != 0ULL) {
    if ((features & 256ULL) != 0ULL) {
      rtl_rx_vlan_en(tp, 1);
    } else {
      rtl_rx_vlan_en(tp, 0);
    }
  } else {
  }
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static u32 __rtl_get_wol(struct r8152 *tp )
{
  u32 ocp_data ;
  u32 wolopts ;
  u8 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  wolopts = 0U;
  tmp = ocp_read_byte(tp, 256, 59426);
  ocp_data = (u32 )tmp;
  if ((ocp_data & 2U) == 0U) {
    return (0U);
  } else {
  }
  tmp___0 = ocp_read_word(tp, 256, 59424);
  ocp_data = (u32 )tmp___0;
  if ((ocp_data & 16U) != 0U) {
    wolopts = wolopts | 1U;
  } else {
  }
  tmp___1 = ocp_read_word(tp, 256, 59426);
  ocp_data = (u32 )tmp___1;
  if ((ocp_data & 16U) != 0U) {
    wolopts = wolopts | 2U;
  } else {
  }
  if ((ocp_data & 64U) != 0U) {
    wolopts = wolopts | 8U;
  } else {
  }
  if ((ocp_data & 32U) != 0U) {
    wolopts = wolopts | 4U;
  } else {
  }
  tmp___2 = ocp_read_word(tp, 256, 49334);
  ocp_data = (u32 )tmp___2;
  if ((int )ocp_data & 1) {
    wolopts = wolopts | 32U;
  } else {
  }
  return (wolopts);
}
}
static void __rtl_set_wol(struct r8152 *tp , u32 wolopts )
{
  u32 ocp_data ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  ocp_write_byte(tp, 256, 59420, 192U);
  tmp = ocp_read_word(tp, 256, 59424);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967279U;
  if ((int )wolopts & 1) {
    ocp_data = ocp_data | 16U;
  } else {
  }
  ocp_write_word(tp, 256, 59424, ocp_data);
  tmp___0 = ocp_read_word(tp, 256, 59426);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data & 4294967181U;
  if ((wolopts & 2U) != 0U) {
    ocp_data = ocp_data | 16U;
  } else {
  }
  if ((wolopts & 8U) != 0U) {
    ocp_data = ocp_data | 64U;
  } else {
  }
  if ((wolopts & 4U) != 0U) {
    ocp_data = ocp_data | 32U;
  } else {
  }
  if ((wolopts & 47U) != 0U) {
    ocp_data = ocp_data | 2U;
  } else {
  }
  ocp_write_word(tp, 256, 59426, ocp_data);
  ocp_write_byte(tp, 256, 59420, 0U);
  tmp___1 = ocp_read_word(tp, 256, 49334);
  ocp_data = (u32 )tmp___1;
  ocp_data = ocp_data & 4294967294U;
  if ((wolopts & 32U) != 0U) {
    ocp_data = ocp_data | 1U;
  } else {
  }
  ocp_write_word(tp, 256, 49334, ocp_data);
  if ((wolopts & 47U) != 0U) {
    device_set_wakeup_enable(& (tp->udev)->dev, 1);
  } else {
    device_set_wakeup_enable(& (tp->udev)->dev, 0);
  }
  return;
}
}
static void rtl_runtime_suspend_enable(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  if ((int )enable) {
    __rtl_set_wol(tp, 47U);
    ocp_write_byte(tp, 256, 59420, 192U);
    tmp = ocp_read_word(tp, 256, 59424);
    ocp_data = (u32 )tmp;
    ocp_data = ocp_data | 8U;
    ocp_write_word(tp, 256, 59424, ocp_data);
    ocp_write_byte(tp, 256, 59420, 0U);
  } else {
    __rtl_set_wol(tp, tp->saved_wolopts);
  }
  return;
}
}
static void rtl_phy_reset(struct r8152 *tp )
{
  u16 data ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  clear_bit(5L, (unsigned long volatile *)(& tp->flags));
  tmp = r8152_mdio_read(tp, 0U);
  data = (u16 )tmp;
  if ((int )((short )data) < 0) {
    return;
  } else {
  }
  data = (u16 )((unsigned int )data | 32768U);
  r8152_mdio_write(tp, 0U, (u32 )data);
  i = 0;
  goto ldv_53178;
  ldv_53177:
  msleep(20U);
  tmp___0 = r8152_mdio_read(tp, 0U);
  if ((tmp___0 & 32768) == 0) {
    goto ldv_53176;
  } else {
  }
  i = i + 1;
  ldv_53178: ;
  if (i <= 49) {
    goto ldv_53177;
  } else {
  }
  ldv_53176: ;
  return;
}
}
static void r8153_teredo_off(struct r8152 *tp )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 49340);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294934272U;
  ocp_write_word(tp, 256, 49340, ocp_data);
  ocp_write_word(tp, 256, 58408, 16U);
  ocp_write_word(tp, 256, 53992, 0U);
  ocp_write_dword(tp, 256, 53964, 0U);
  return;
}
}
static void r8152b_disable_aldps(struct r8152 *tp )
{
  {
  ocp_reg_write(tp, 8208, 784);
  msleep(20U);
  return;
}
}
__inline static void r8152b_enable_aldps(struct r8152 *tp )
{
  {
  ocp_reg_write(tp, 8208, 33552);
  return;
}
}
static void rtl8152_disable(struct r8152 *tp )
{
  {
  r8152b_disable_aldps(tp);
  rtl_disable(tp);
  r8152b_enable_aldps(tp);
  return;
}
}
static void r8152b_hw_phy_cfg(struct r8152 *tp )
{
  u16 data ;
  int tmp ;
  {
  tmp = r8152_mdio_read(tp, 0U);
  data = (u16 )tmp;
  if (((int )data & 2048) != 0) {
    data = (unsigned int )data & 63487U;
    r8152_mdio_write(tp, 0U, (u32 )data);
  } else {
  }
  set_bit(5L, (unsigned long volatile *)(& tp->flags));
  return;
}
}
static void r8152b_exit_oob(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  u8 tmp ;
  u16 tmp___0 ;
  u8 tmp___1 ;
  u16 tmp___2 ;
  u8 tmp___3 ;
  u16 tmp___4 ;
  {
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data & 4294967280U;
  ocp_write_dword(tp, 256, 49168, ocp_data);
  rxdy_gated_en(tp, 1);
  r8153_teredo_off(tp);
  r8152b_hw_phy_cfg(tp);
  ocp_write_byte(tp, 256, 59420, 0U);
  ocp_write_byte(tp, 256, 59411, 0U);
  tmp = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967167U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  tmp___0 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data & 4294950911U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53203;
  ldv_53202:
  tmp___1 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___1;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53201;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53203: ;
  if (i <= 999) {
    goto ldv_53202;
  } else {
  }
  ldv_53201:
  tmp___2 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___2;
  ocp_data = ocp_data | 32768U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53206;
  ldv_53205:
  tmp___3 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___3;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53204;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53206: ;
  if (i <= 999) {
    goto ldv_53205;
  } else {
  }
  ldv_53204:
  rtl8152_nic_reset(tp);
  ocp_write_dword(tp, 256, 49312, 524290U);
  if ((unsigned int )(tp->udev)->speed == 2U || (unsigned int )(tp->udev)->speed == 1U) {
    ocp_write_dword(tp, 256, 49316, 96U);
    ocp_write_dword(tp, 256, 49320, 120U);
  } else {
    ocp_write_dword(tp, 256, 49316, 56U);
    ocp_write_dword(tp, 256, 49320, 72U);
  }
  ocp_write_dword(tp, 256, 58904, 4194312U);
  ocp_write_byte(tp, 0, 54282, 3U);
  ocp_write_dword(tp, 0, 54284, 2048000384U);
  ocp_write_dword(tp, 0, 54324, 257U);
  rtl_rx_vlan_en(tp, ((tp->netdev)->features & 256ULL) != 0ULL);
  ocp_write_word(tp, 256, 49174, 1522U);
  tmp___4 = ocp_read_word(tp, 256, 58896);
  ocp_data = (u32 )tmp___4;
  ocp_data = ocp_data | 128U;
  ocp_write_word(tp, 256, 58896, ocp_data);
  return;
}
}
static void r8152b_enter_oob(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  u8 tmp ;
  u8 tmp___0 ;
  u16 tmp___1 ;
  u8 tmp___2 ;
  u16 tmp___3 ;
  u8 tmp___4 ;
  {
  tmp = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967167U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  ocp_write_dword(tp, 256, 49312, 25165827U);
  ocp_write_dword(tp, 256, 49316, 74U);
  ocp_write_dword(tp, 256, 49320, 90U);
  rtl_disable(tp);
  i = 0;
  goto ldv_53214;
  ldv_53213:
  tmp___0 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___0;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53212;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53214: ;
  if (i <= 999) {
    goto ldv_53213;
  } else {
  }
  ldv_53212:
  tmp___1 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___1;
  ocp_data = ocp_data | 32768U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53217;
  ldv_53216:
  tmp___2 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___2;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53215;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53217: ;
  if (i <= 999) {
    goto ldv_53216;
  } else {
  }
  ldv_53215:
  ocp_write_word(tp, 256, 49174, 1522U);
  rtl_rx_vlan_en(tp, 1);
  tmp___3 = ocp_read_word(tp, 256, 53664);
  ocp_data = (u32 )tmp___3;
  ocp_data = ocp_data | 1U;
  ocp_write_word(tp, 256, 53664, ocp_data);
  tmp___4 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___4;
  ocp_data = ocp_data | 129U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  rxdy_gated_en(tp, 0);
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data | 14U;
  ocp_write_dword(tp, 256, 49168, ocp_data);
  return;
}
}
static void r8153_hw_phy_cfg(struct r8152 *tp )
{
  u32 ocp_data ;
  u16 data ;
  int tmp ;
  u16 tmp___0 ;
  {
  ocp_reg_write(tp, 48134, 448);
  tmp = r8152_mdio_read(tp, 0U);
  data = (u16 )tmp;
  if (((int )data & 2048) != 0) {
    data = (unsigned int )data & 63487U;
    r8152_mdio_write(tp, 0U, (u32 )data);
  } else {
  }
  if ((unsigned int )tp->version == 3U) {
    data = ocp_reg_read(tp, 42034);
    data = (unsigned int )data & 65471U;
    ocp_reg_write(tp, 42034, (int )data);
  } else {
  }
  data = ocp_reg_read(tp, 42032);
  data = (u16 )((unsigned int )data | 32768U);
  ocp_reg_write(tp, 42032, (int )data);
  data = ocp_reg_read(tp, 42050);
  data = (u16 )((unsigned int )data | 128U);
  ocp_reg_write(tp, 42050, (int )data);
  data = ocp_reg_read(tp, 42032);
  data = (u16 )((unsigned int )data | 1U);
  ocp_reg_write(tp, 42032, (int )data);
  sram_write(tp, 32900, 2835);
  tmp___0 = ocp_read_word(tp, 256, 59468);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data | 64U;
  ocp_write_word(tp, 256, 59468, ocp_data);
  sram_write(tp, 32786, 63247);
  sram_write(tp, 32896, 175);
  sram_write(tp, 32898, 520);
  set_bit(5L, (unsigned long volatile *)(& tp->flags));
  return;
}
}
static void r8153_u1u2en(struct r8152 *tp , bool enable )
{
  u8 u1u2[8U] ;
  {
  if ((int )enable) {
    memset((void *)(& u1u2), 255, 8UL);
  } else {
    memset((void *)(& u1u2), 0, 8UL);
  }
  usb_ocp_write(tp, 54416, 63, 8, (void *)(& u1u2));
  return;
}
}
static void r8153_u2p3en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 0, 46176);
  ocp_data = (u32 )tmp;
  if ((int )enable) {
    ocp_data = ocp_data | 1U;
  } else {
    ocp_data = ocp_data & 4294967294U;
  }
  ocp_write_word(tp, 0, 46176, ocp_data);
  return;
}
}
static void r8153_power_cut_en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = ocp_read_word(tp, 0, 55306);
  ocp_data = (u32 )tmp;
  if ((int )enable) {
    ocp_data = ocp_data | 9U;
  } else {
    ocp_data = ocp_data & 4294967286U;
  }
  ocp_write_word(tp, 0, 55306, ocp_data);
  tmp___0 = ocp_read_word(tp, 0, 55322);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data & 4294967294U;
  ocp_write_word(tp, 0, 55322, ocp_data);
  return;
}
}
static void r8153_first_init(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  u8 tmp ;
  u16 tmp___0 ;
  u8 tmp___1 ;
  u16 tmp___2 ;
  u8 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  {
  rxdy_gated_en(tp, 1);
  r8153_teredo_off(tp);
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data & 4294967280U;
  ocp_write_dword(tp, 256, 49168, ocp_data);
  r8153_hw_phy_cfg(tp);
  rtl8152_nic_reset(tp);
  tmp = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967167U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  tmp___0 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___0;
  ocp_data = ocp_data & 4294950911U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53245;
  ldv_53244:
  tmp___1 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___1;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53243;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53245: ;
  if (i <= 999) {
    goto ldv_53244;
  } else {
  }
  ldv_53243:
  tmp___2 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___2;
  ocp_data = ocp_data | 32768U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53248;
  ldv_53247:
  tmp___3 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___3;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53246;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53248: ;
  if (i <= 999) {
    goto ldv_53247;
  } else {
  }
  ldv_53246:
  rtl_rx_vlan_en(tp, ((tp->netdev)->features & 256ULL) != 0ULL);
  ocp_write_word(tp, 256, 49174, 9216U);
  ocp_write_byte(tp, 256, 58901, 192U);
  tmp___4 = ocp_read_word(tp, 256, 58896);
  ocp_data = (u32 )tmp___4;
  ocp_data = ocp_data | 128U;
  ocp_write_word(tp, 256, 58896, ocp_data);
  rtl8152_nic_reset(tp);
  ocp_write_dword(tp, 256, 49312, 524290U);
  ocp_write_word(tp, 256, 49316, 160U);
  ocp_write_word(tp, 256, 49320, 272U);
  ocp_write_dword(tp, 256, 58904, 16777224U);
  tmp___5 = ocp_read_word(tp, 0, 54278);
  ocp_data = (u32 )tmp___5;
  ocp_data = ocp_data & 4294967279U;
  ocp_write_word(tp, 0, 54278, ocp_data);
  return;
}
}
static void r8153_enter_oob(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  u8 tmp ;
  u8 tmp___0 ;
  u16 tmp___1 ;
  u8 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u8 tmp___5 ;
  {
  tmp = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 4294967167U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  rtl_disable(tp);
  i = 0;
  goto ldv_53256;
  ldv_53255:
  tmp___0 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___0;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53254;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53256: ;
  if (i <= 999) {
    goto ldv_53255;
  } else {
  }
  ldv_53254:
  tmp___1 = ocp_read_word(tp, 256, 59614);
  ocp_data = (u32 )tmp___1;
  ocp_data = ocp_data | 32768U;
  ocp_write_word(tp, 256, 59614, ocp_data);
  i = 0;
  goto ldv_53259;
  ldv_53258:
  tmp___2 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___2;
  if ((ocp_data & 2U) != 0U) {
    goto ldv_53257;
  } else {
  }
  usleep_range(1000UL, 2000UL);
  i = i + 1;
  ldv_53259: ;
  if (i <= 999) {
    goto ldv_53258;
  } else {
  }
  ldv_53257:
  ocp_write_word(tp, 256, 49174, 9216U);
  tmp___3 = ocp_read_word(tp, 256, 49340);
  ocp_data = (u32 )tmp___3;
  ocp_data = ocp_data & 4294934783U;
  ocp_write_word(tp, 256, 49340, ocp_data);
  rtl_rx_vlan_en(tp, 1);
  tmp___4 = ocp_read_word(tp, 256, 53664);
  ocp_data = (u32 )tmp___4;
  ocp_data = ocp_data | 1U;
  ocp_write_word(tp, 256, 53664, ocp_data);
  tmp___5 = ocp_read_byte(tp, 256, 59471);
  ocp_data = (u32 )tmp___5;
  ocp_data = ocp_data | 129U;
  ocp_write_byte(tp, 256, 59471, ocp_data);
  rxdy_gated_en(tp, 0);
  ocp_data = ocp_read_dword(tp, 256, 49168);
  ocp_data = ocp_data | 14U;
  ocp_write_dword(tp, 256, 49168, ocp_data);
  return;
}
}
static void r8153_disable_aldps(struct r8152 *tp )
{
  u16 data ;
  {
  data = ocp_reg_read(tp, 42032);
  data = (unsigned int )data & 65531U;
  ocp_reg_write(tp, 42032, (int )data);
  msleep(20U);
  return;
}
}
static void r8153_enable_aldps(struct r8152 *tp )
{
  u16 data ;
  {
  data = ocp_reg_read(tp, 42032);
  data = (u16 )((unsigned int )data | 4U);
  ocp_reg_write(tp, 42032, (int )data);
  return;
}
}
static void rtl8153_disable(struct r8152 *tp )
{
  {
  r8153_disable_aldps(tp);
  rtl_disable(tp);
  r8153_enable_aldps(tp);
  return;
}
}
static int rtl8152_set_speed(struct r8152 *tp , u8 autoneg , u16 speed , u8 duplex )
{
  u16 bmcr ;
  u16 anar ;
  u16 gbcr ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int i ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ret = 0;
  ldv_cancel_delayed_work_sync_49(& tp->schedule);
  tmp = r8152_mdio_read(tp, 4U);
  anar = (u16 )tmp;
  anar = (unsigned int )anar & 65055U;
  if ((unsigned int )*((unsigned char *)tp + 1632UL) != 0U) {
    tmp___0 = r8152_mdio_read(tp, 9U);
    gbcr = (u16 )tmp___0;
    gbcr = (unsigned int )gbcr & 64767U;
  } else {
    gbcr = 0U;
  }
  if ((unsigned int )autoneg == 0U) {
    if ((unsigned int )speed == 10U) {
      bmcr = 0U;
      anar = (u16 )((unsigned int )anar | 96U);
    } else
    if ((unsigned int )speed == 100U) {
      bmcr = 8192U;
      anar = (u16 )((unsigned int )anar | 384U);
    } else
    if ((unsigned int )speed == 1000U && (unsigned int )*((unsigned char *)tp + 1632UL) != 0U) {
      bmcr = 64U;
      gbcr = (u16 )((unsigned int )gbcr | 768U);
    } else {
      ret = -22;
      goto out;
    }
    if ((unsigned int )duplex == 1U) {
      bmcr = (u16 )((unsigned int )bmcr | 256U);
    } else {
    }
  } else {
    if ((unsigned int )speed == 10U) {
      if ((unsigned int )duplex == 1U) {
        anar = (u16 )((unsigned int )anar | 96U);
      } else {
        anar = (u16 )((unsigned int )anar | 32U);
      }
    } else
    if ((unsigned int )speed == 100U) {
      if ((unsigned int )duplex == 1U) {
        anar = (u16 )((unsigned int )anar | 96U);
        anar = (u16 )((unsigned int )anar | 384U);
      } else {
        anar = (u16 )((unsigned int )anar | 32U);
        anar = (u16 )((unsigned int )anar | 128U);
      }
    } else
    if ((unsigned int )speed == 1000U && (unsigned int )*((unsigned char *)tp + 1632UL) != 0U) {
      if ((unsigned int )duplex == 1U) {
        anar = (u16 )((unsigned int )anar | 96U);
        anar = (u16 )((unsigned int )anar | 384U);
        gbcr = (u16 )((unsigned int )gbcr | 768U);
      } else {
        anar = (u16 )((unsigned int )anar | 32U);
        anar = (u16 )((unsigned int )anar | 128U);
        gbcr = (u16 )((unsigned int )gbcr | 256U);
      }
    } else {
      ret = -22;
      goto out;
    }
    bmcr = 4608U;
  }
  tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___1 != 0) {
    bmcr = (u16 )((unsigned int )bmcr | 32768U);
  } else {
  }
  if ((unsigned int )*((unsigned char *)tp + 1632UL) != 0U) {
    r8152_mdio_write(tp, 9U, (u32 )gbcr);
  } else {
  }
  r8152_mdio_write(tp, 4U, (u32 )anar);
  r8152_mdio_write(tp, 0U, (u32 )bmcr);
  tmp___3 = constant_test_bit(5L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___3 != 0) {
    clear_bit(5L, (unsigned long volatile *)(& tp->flags));
    i = 0;
    goto ldv_53285;
    ldv_53284:
    msleep(20U);
    tmp___2 = r8152_mdio_read(tp, 0U);
    if ((tmp___2 & 32768) == 0) {
      goto ldv_53283;
    } else {
    }
    i = i + 1;
    ldv_53285: ;
    if (i <= 49) {
      goto ldv_53284;
    } else {
    }
    ldv_53283: ;
  } else {
  }
  out: ;
  return (ret);
}
}
static void rtl8152_up(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  r8152b_disable_aldps(tp);
  r8152b_exit_oob(tp);
  r8152b_enable_aldps(tp);
  return;
}
}
static void rtl8152_down(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    rtl_drop_queued_tx(tp);
    return;
  } else {
  }
  r8152_power_cut_en(tp, 0);
  r8152b_disable_aldps(tp);
  r8152b_enter_oob(tp);
  r8152b_enable_aldps(tp);
  return;
}
}
static void rtl8153_up(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  r8153_disable_aldps(tp);
  r8153_first_init(tp);
  r8153_enable_aldps(tp);
  return;
}
}
static void rtl8153_down(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    rtl_drop_queued_tx(tp);
    return;
  } else {
  }
  r8153_u1u2en(tp, 0);
  r8153_power_cut_en(tp, 0);
  r8153_disable_aldps(tp);
  r8153_enter_oob(tp);
  r8153_enable_aldps(tp);
  return;
}
}
static void set_carrier(struct r8152 *tp )
{
  struct net_device *netdev ;
  u8 speed ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  netdev = tp->netdev;
  clear_bit(3L, (unsigned long volatile *)(& tp->flags));
  speed = rtl8152_get_speed(tp);
  if (((int )speed & 2) != 0) {
    tmp = netif_carrier_ok((struct net_device const *)netdev);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      (*(tp->rtl_ops.enable))(tp);
      set_bit(1L, (unsigned long volatile *)(& tp->flags));
      netif_carrier_on(netdev);
      rtl_start_rx(tp);
    } else {
    }
  } else {
    tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
    if ((int )tmp___1) {
      netif_carrier_off(netdev);
      napi_disable(& tp->napi);
      (*(tp->rtl_ops.disable))(tp);
      napi_enable(& tp->napi);
    } else {
    }
  }
  return;
}
}
static void rtl_work_func_t(struct work_struct *work )
{
  struct r8152 *tp ;
  struct work_struct const *__mptr ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct r8152 *)__mptr + 0xfffffffffffffa90UL;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
    tmp___0 = netif_running((struct net_device const *)tp->netdev);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return;
    } else {
    }
  }
  tmp___2 = usb_autopm_get_interface(tp->intf);
  if (tmp___2 < 0) {
    return;
  } else {
  }
  tmp___3 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___3 == 0) {
    goto out1;
  } else {
  }
  tmp___4 = mutex_trylock(& tp->control);
  if (tmp___4 == 0) {
    schedule_delayed_work(& tp->schedule, 0UL);
    goto out1;
  } else {
  }
  tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___5 != 0) {
    set_carrier(tp);
  } else {
  }
  tmp___6 = constant_test_bit(1L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___6 != 0) {
    _rtl8152_set_rx_mode(tp->netdev);
  } else {
  }
  tmp___7 = constant_test_bit(6L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___7 != 0) {
    tmp___8 = netif_carrier_ok((struct net_device const *)tp->netdev);
    if ((int )tmp___8) {
      clear_bit(6L, (unsigned long volatile *)(& tp->flags));
      napi_schedule(& tp->napi);
    } else {
    }
  } else {
  }
  tmp___9 = constant_test_bit(5L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___9 != 0) {
    rtl_phy_reset(tp);
  } else {
  }
  mutex_unlock(& tp->control);
  out1:
  usb_autopm_put_interface(tp->intf);
  return;
}
}
static int rtl8152_open(struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  int res ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  res = 0;
  res = alloc_all_mem(tp);
  if (res != 0) {
    goto out;
  } else {
  }
  netif_carrier_off(netdev);
  res = usb_autopm_get_interface(tp->intf);
  if (res < 0) {
    free_all_mem(tp);
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  tmp___1 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___1 != 0) {
    clear_bit(2L, (unsigned long volatile *)(& tp->flags));
    usb_kill_urb(tp->intr_urb);
    ldv_cancel_delayed_work_sync_50(& tp->schedule);
    tmp___0 = netif_carrier_ok((struct net_device const *)netdev);
    if ((int )tmp___0) {
      (*(tp->rtl_ops.disable))(tp);
    } else {
    }
  } else {
  }
  (*(tp->rtl_ops.up))(tp);
  rtl8152_set_speed(tp, 1, (unsigned int )*((unsigned char *)tp + 1632UL) != 0U ? 1000 : 100,
                    1);
  netif_carrier_off(netdev);
  netif_start_queue(netdev);
  set_bit(2L, (unsigned long volatile *)(& tp->flags));
  res = ldv_usb_submit_urb_51(tp->intr_urb, 208U);
  if (res != 0) {
    if (res == -19) {
      netif_device_detach(tp->netdev);
    } else {
    }
    if ((tp->msg_enable & 32U) != 0U) {
      netdev_warn((struct net_device const *)netdev, "intr_urb submit failed: %d\n",
                  res);
    } else {
    }
    free_all_mem(tp);
  } else {
    napi_enable(& tp->napi);
  }
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (res);
}
}
static int rtl8152_close(struct net_device *netdev )
{
  struct r8152 *tp ;
  void *tmp ;
  int res ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  res = 0;
  napi_disable(& tp->napi);
  clear_bit(2L, (unsigned long volatile *)(& tp->flags));
  usb_kill_urb(tp->intr_urb);
  ldv_cancel_delayed_work_sync_52(& tp->schedule);
  netif_stop_queue(netdev);
  res = usb_autopm_get_interface(tp->intf);
  if (res < 0) {
    rtl_drop_queued_tx(tp);
    rtl_stop_rx(tp);
  } else {
    tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___0 != 0) {
      rtl_drop_queued_tx(tp);
      rtl_stop_rx(tp);
    } else {
      mutex_lock_nested(& tp->control, 0U);
      rtl_runtime_suspend_enable(tp, 0);
      (*(tp->rtl_ops.down))(tp);
      mutex_unlock(& tp->control);
      usb_autopm_put_interface(tp->intf);
    }
  }
  free_all_mem(tp);
  return (res);
}
}
__inline static void r8152_mmd_indirect(struct r8152 *tp , u16 dev , u16 reg )
{
  {
  ocp_reg_write(tp, 42010, (int )dev);
  ocp_reg_write(tp, 42012, (int )reg);
  ocp_reg_write(tp, 42010, (int )((unsigned int )dev | 16384U));
  return;
}
}
static u16 r8152_mmd_read(struct r8152 *tp , u16 dev , u16 reg )
{
  u16 data ;
  {
  r8152_mmd_indirect(tp, (int )dev, (int )reg);
  data = ocp_reg_read(tp, 42012);
  ocp_reg_write(tp, 42010, 0);
  return (data);
}
}
static void r8152_mmd_write(struct r8152 *tp , u16 dev , u16 reg , u16 data )
{
  {
  r8152_mmd_indirect(tp, (int )dev, (int )reg);
  ocp_reg_write(tp, 42012, (int )data);
  ocp_reg_write(tp, 42010, 0);
  return;
}
}
static void r8152_eee_en(struct r8152 *tp , bool enable )
{
  u16 config1 ;
  u16 config2 ;
  u16 config3 ;
  u32 ocp_data ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  int _min1___2 ;
  int _min2___2 ;
  {
  tmp = ocp_read_word(tp, 256, 57408);
  ocp_data = (u32 )tmp;
  tmp___0 = ocp_reg_read(tp, 8320);
  config1 = (unsigned int )tmp___0 & 65423U;
  config2 = ocp_reg_read(tp, 8338);
  tmp___1 = ocp_reg_read(tp, 8340);
  config3 = (unsigned int )tmp___1 & 127U;
  if ((int )enable) {
    ocp_data = ocp_data | 3U;
    config1 = (u16 )((unsigned int )config1 | 13056U);
    _min1 = 1;
    _min2 = 7;
    config1 = (u16 )((int )((short )((_min1 < _min2 ? _min1 : _min2) << 4)) | (int )((short )config1));
    config2 = (u16 )((unsigned int )config2 | 1536U);
    _min1___0 = 42;
    _min2___0 = 511;
    config3 = (u16 )((int )((short )((_min1___0 < _min2___0 ? _min1___0 : _min2___0) << 7)) | (int )((short )config3));
  } else {
    ocp_data = ocp_data & 4294967292U;
    config1 = (unsigned int )config1 & 52479U;
    _min1___1 = 7;
    _min2___1 = 7;
    config1 = (u16 )((int )((short )((_min1___1 < _min2___1 ? _min1___1 : _min2___1) << 4)) | (int )((short )config1));
    config2 = (unsigned int )config2 & 63999U;
    _min1___2 = 511;
    _min2___2 = 511;
    config3 = (u16 )((int )((short )((_min1___2 < _min2___2 ? _min1___2 : _min2___2) << 7)) | (int )((short )config3));
  }
  ocp_write_word(tp, 256, 57408, ocp_data);
  ocp_reg_write(tp, 8320, (int )config1);
  ocp_reg_write(tp, 8338, (int )config2);
  ocp_reg_write(tp, 8340, (int )config3);
  return;
}
}
static void r8152b_enable_eee(struct r8152 *tp )
{
  {
  r8152_eee_en(tp, 1);
  r8152_mmd_write(tp, 7, 60, 2);
  return;
}
}
static void r8153_eee_en(struct r8152 *tp , bool enable )
{
  u32 ocp_data ;
  u16 config ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 57408);
  ocp_data = (u32 )tmp;
  config = ocp_reg_read(tp, 42034);
  if ((int )enable) {
    ocp_data = ocp_data | 3U;
    config = (u16 )((unsigned int )config | 16U);
  } else {
    ocp_data = ocp_data & 4294967292U;
    config = (unsigned int )config & 65519U;
  }
  ocp_write_word(tp, 256, 57408, ocp_data);
  ocp_reg_write(tp, 42034, (int )config);
  return;
}
}
static void r8153_enable_eee(struct r8152 *tp )
{
  {
  r8153_eee_en(tp, 1);
  ocp_reg_write(tp, 42448, 6);
  return;
}
}
static void r8152b_enable_fc(struct r8152 *tp )
{
  u16 anar ;
  int tmp ;
  {
  tmp = r8152_mdio_read(tp, 4U);
  anar = (u16 )tmp;
  anar = (u16 )((unsigned int )anar | 3072U);
  r8152_mdio_write(tp, 4U, (u32 )anar);
  return;
}
}
static void rtl_tally_reset(struct r8152 *tp )
{
  u32 ocp_data ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 59392);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data | 1U;
  ocp_write_word(tp, 256, 59392, ocp_data);
  return;
}
}
static void r8152b_init(struct r8152 *tp )
{
  u32 ocp_data ;
  int tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  r8152b_disable_aldps(tp);
  if ((unsigned int )tp->version == 1U) {
    tmp___0 = ocp_read_word(tp, 256, 56722);
    ocp_data = (u32 )tmp___0;
    ocp_data = ocp_data & 4294965503U;
    ocp_write_word(tp, 256, 56722, ocp_data);
  } else {
  }
  r8152_power_cut_en(tp, 0);
  tmp___1 = ocp_read_word(tp, 256, 59468);
  ocp_data = (u32 )tmp___1;
  ocp_data = ocp_data | 192U;
  ocp_write_word(tp, 256, 59468, ocp_data);
  ocp_data = ocp_read_dword(tp, 256, 57536);
  ocp_data = ocp_data & 4042322160U;
  ocp_data = ocp_data | 117526279U;
  ocp_write_dword(tp, 256, 57536, ocp_data);
  ocp_data = 15U;
  ocp_write_word(tp, 256, 57378, ocp_data);
  r8152b_enable_eee(tp);
  r8152b_enable_aldps(tp);
  r8152b_enable_fc(tp);
  rtl_tally_reset(tp);
  tmp___2 = ocp_read_word(tp, 0, 54278);
  ocp_data = (u32 )tmp___2;
  ocp_data = ocp_data & 4294967279U;
  ocp_write_word(tp, 0, 54278, ocp_data);
  return;
}
}
static void r8153_init(struct r8152 *tp )
{
  u32 ocp_data ;
  int i ;
  int tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  u8 tmp___5 ;
  u16 tmp___6 ;
  u8 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  r8153_disable_aldps(tp);
  r8153_u1u2en(tp, 0);
  i = 0;
  goto ldv_53389;
  ldv_53388:
  tmp___0 = ocp_read_word(tp, 256, 57348);
  if (((int )tmp___0 & 2) != 0) {
    goto ldv_53387;
  } else {
  }
  msleep(20U);
  i = i + 1;
  ldv_53389: ;
  if (i <= 499) {
    goto ldv_53388;
  } else {
  }
  ldv_53387:
  i = 0;
  goto ldv_53392;
  ldv_53391:
  tmp___1 = ocp_reg_read(tp, 42016);
  ocp_data = (u32 )tmp___1 & 7U;
  if (ocp_data == 3U || ocp_data == 5U) {
    goto ldv_53390;
  } else {
  }
  msleep(20U);
  i = i + 1;
  ldv_53392: ;
  if (i <= 499) {
    goto ldv_53391;
  } else {
  }
  ldv_53390:
  r8153_u2p3en(tp, 0);
  if ((unsigned int )tp->version == 4U) {
    tmp___2 = ocp_read_word(tp, 0, 46120);
    ocp_data = (u32 )tmp___2;
    ocp_data = ocp_data & 4294950913U;
    ocp_data = ocp_data | 192U;
    ocp_write_word(tp, 0, 46120, ocp_data);
    tmp___3 = ocp_read_byte(tp, 0, 46110);
    ocp_data = (u32 )tmp___3;
    ocp_data = ocp_data | 3U;
    ocp_write_byte(tp, 0, 46110, ocp_data);
  } else
  if ((unsigned int )tp->version == 5U) {
    tmp___4 = ocp_read_byte(tp, 256, 49328);
    ocp_data = (u32 )tmp___4;
    ocp_data = ocp_data & 4294967293U;
    ocp_write_byte(tp, 256, 49328, ocp_data);
    tmp___5 = ocp_read_byte(tp, 0, 46180);
    ocp_data = (u32 )tmp___5;
    tmp___6 = ocp_read_word(tp, 0, 53184);
    if ((unsigned int )tmp___6 == 0U) {
      ocp_data = ocp_data & 4294967294U;
    } else {
      ocp_data = ocp_data | 1U;
    }
    ocp_write_byte(tp, 0, 46180, ocp_data);
  } else {
  }
  tmp___7 = ocp_read_byte(tp, 0, 46182);
  ocp_data = (u32 )tmp___7;
  ocp_data = ocp_data | 1U;
  ocp_write_byte(tp, 0, 46182, ocp_data);
  tmp___8 = ocp_read_word(tp, 0, 58428);
  ocp_data = (u32 )tmp___8;
  ocp_data = ocp_data & 4294967294U;
  ocp_write_word(tp, 0, 58428, ocp_data);
  tmp___9 = ocp_read_word(tp, 256, 56722);
  ocp_data = (u32 )tmp___9;
  ocp_data = ocp_data & 4294965503U;
  ocp_write_word(tp, 256, 56722, ocp_data);
  ocp_data = 50U;
  if ((unsigned int )tp->version == 4U && (unsigned int )(tp->udev)->speed != 5U) {
    ocp_data = ocp_data | 4U;
  } else {
    ocp_data = ocp_data | 12U;
  }
  ocp_write_byte(tp, 0, 54298, ocp_data);
  tmp___10 = ocp_read_word(tp, 0, 55332);
  ocp_data = (u32 )tmp___10;
  ocp_data = ocp_data & 4294903807U;
  ocp_data = ocp_data | 41216U;
  ocp_write_word(tp, 0, 55332, ocp_data);
  ocp_write_word(tp, 0, 52216, 1U);
  r8153_power_cut_en(tp, 0);
  r8153_u1u2en(tp, 1);
  ocp_write_word(tp, 256, 57536, 3975U);
  ocp_write_word(tp, 256, 57546, 32775U);
  ocp_write_word(tp, 256, 57548, 263U);
  ocp_write_word(tp, 256, 57550, 6457U);
  r8153_enable_eee(tp);
  r8153_enable_aldps(tp);
  r8152b_enable_fc(tp);
  rtl_tally_reset(tp);
  return;
}
}
static int rtl8152_suspend(struct usb_interface *intf , pm_message_t message )
{
  struct r8152 *tp ;
  void *tmp ;
  struct net_device *netdev ;
  int ret ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  tmp = usb_get_intfdata(intf);
  tp = (struct r8152 *)tmp;
  netdev = tp->netdev;
  ret = 0;
  mutex_lock_nested(& tp->control, 0U);
  if ((message.event & 1024) != 0) {
    tmp___0 = netif_running((struct net_device const *)netdev);
    if ((int )tmp___0) {
      tmp___1 = work_busy(& tp->schedule.work);
      if (tmp___1 != 0U) {
        ret = -16;
        goto out1;
      } else {
      }
    } else {
    }
    set_bit(4L, (unsigned long volatile *)(& tp->flags));
  } else {
    netif_device_detach(netdev);
  }
  tmp___3 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___3) {
    tmp___4 = constant_test_bit(2L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___4 != 0) {
      clear_bit(2L, (unsigned long volatile *)(& tp->flags));
      usb_kill_urb(tp->intr_urb);
      napi_disable(& tp->napi);
      tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& tp->flags));
      if (tmp___2 != 0) {
        rtl_stop_rx(tp);
        rtl_runtime_suspend_enable(tp, 1);
      } else {
        ldv_cancel_delayed_work_sync_53(& tp->schedule);
        (*(tp->rtl_ops.down))(tp);
      }
      napi_enable(& tp->napi);
    } else {
    }
  } else {
  }
  out1:
  mutex_unlock(& tp->control);
  return (ret);
}
}
static int rtl8152_resume(struct usb_interface *intf )
{
  struct r8152 *tp ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  {
  tmp = usb_get_intfdata(intf);
  tp = (struct r8152 *)tmp;
  mutex_lock_nested(& tp->control, 0U);
  tmp___0 = constant_test_bit(4L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___0 == 0) {
    (*(tp->rtl_ops.init))(tp);
    netif_device_attach(tp->netdev);
  } else {
  }
  tmp___4 = netif_running((struct net_device const *)tp->netdev);
  if ((int )tmp___4) {
    tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___2 != 0) {
      rtl_runtime_suspend_enable(tp, 0);
      clear_bit(4L, (unsigned long volatile *)(& tp->flags));
      set_bit(2L, (unsigned long volatile *)(& tp->flags));
      tmp___1 = netif_carrier_ok((struct net_device const *)tp->netdev);
      if ((int )tmp___1) {
        rtl_start_rx(tp);
      } else {
      }
    } else {
      (*(tp->rtl_ops.up))(tp);
      rtl8152_set_speed(tp, 1, (unsigned int )*((unsigned char *)tp + 1632UL) != 0U ? 1000 : 100,
                        1);
      netif_carrier_off(tp->netdev);
      set_bit(2L, (unsigned long volatile *)(& tp->flags));
    }
    ldv_usb_submit_urb_54(tp->intr_urb, 208U);
  } else {
    tmp___3 = constant_test_bit(4L, (unsigned long const volatile *)(& tp->flags));
    if (tmp___3 != 0) {
      clear_bit(4L, (unsigned long volatile *)(& tp->flags));
    } else {
    }
  }
  mutex_unlock(& tp->control);
  return (0);
}
}
static void rtl8152_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct r8152 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  tmp___0 = usb_autopm_get_interface(tp->intf);
  if (tmp___0 < 0) {
    return;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  wol->supported = 47U;
  wol->wolopts = __rtl_get_wol(tp);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  return;
}
}
static int rtl8152_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out_set_wol;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  __rtl_set_wol(tp, wol->wolopts);
  tp->saved_wolopts = wol->wolopts & 47U;
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out_set_wol: ;
  return (ret);
}
}
static u32 rtl8152_get_msglevel(struct net_device *dev )
{
  struct r8152 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  return (tp->msg_enable);
}
}
static void rtl8152_set_msglevel(struct net_device *dev , u32 value )
{
  struct r8152 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  tp->msg_enable = value;
  return;
}
}
static void rtl8152_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *info )
{
  struct r8152 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  strlcpy((char *)(& info->driver), "r8152", 32UL);
  strlcpy((char *)(& info->version), "v1.08.0 (2015/01/13)", 32UL);
  usb_make_path(tp->udev, (char *)(& info->bus_info), 32UL);
  return;
}
}
static int rtl8152_get_settings(struct net_device *netdev , struct ethtool_cmd *cmd )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  if ((unsigned long )tp->mii.mdio_read == (unsigned long )((int (*)(struct net_device * ,
                                                                     int , int ))0)) {
    return (-95);
  } else {
  }
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  ret = mii_ethtool_gset(& tp->mii, cmd);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static int rtl8152_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  ret = rtl8152_set_speed(tp, (int )cmd->autoneg, (int )cmd->speed, (int )cmd->duplex);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static char const rtl8152_gstrings[13U][32U] =
  { { 't', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'm',
            'i', 's', 's', 'e',
            'd', '\000'},
   { 'a', 'l', 'i', 'g',
            'n', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 't', 'x', '_', 's',
            'i', 'n', 'g', 'l',
            'e', '_', 'c', 'o',
            'l', 'l', 'i', 's',
            'i', 'o', 'n', 's',
            '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', 's', '\000'},
   { 'r', 'x', '_', 'u',
            'n', 'i', 'c', 'a',
            's', 't', '\000'},
   { 'r', 'x', '_', 'b',
            'r', 'o', 'a', 'd',
            'c', 'a', 's', 't',
            '\000'},
   { 'r', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            'c', 'a', 's', 't',
            '\000'},
   { 't', 'x', '_', 'a',
            'b', 'o', 'r', 't',
            'e', 'd', '\000'},
   { 't', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            'r', 'u', 'n', '\000'}};
static int rtl8152_get_sset_count(struct net_device *dev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (13);
  default: ;
  return (-95);
  }
}
}
static void rtl8152_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                      u64 *data )
{
  struct r8152 *tp ;
  void *tmp ;
  struct tally_counter tally ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  tmp___0 = usb_autopm_get_interface(tp->intf);
  if (tmp___0 < 0) {
    return;
  } else {
  }
  generic_ocp_read(tp, 59536, 64, (void *)(& tally), 256);
  usb_autopm_put_interface(tp->intf);
  *data = tally.tx_packets;
  *(data + 1UL) = tally.rx_packets;
  *(data + 2UL) = tally.tx_errors;
  *(data + 3UL) = (u64 )tally.rx_errors;
  *(data + 4UL) = (u64 )tally.rx_missed;
  *(data + 5UL) = (u64 )tally.align_errors;
  *(data + 6UL) = (u64 )tally.tx_one_collision;
  *(data + 7UL) = (u64 )tally.tx_multi_collision;
  *(data + 8UL) = tally.rx_unicast;
  *(data + 9UL) = tally.rx_broadcast;
  *(data + 10UL) = (u64 )tally.rx_multicast;
  *(data + 11UL) = (u64 )tally.tx_aborted;
  *(data + 12UL) = (u64 )tally.tx_underrun;
  return;
}
}
static void rtl8152_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  {
  switch (stringset) {
  case 1U:
  memcpy((void *)data, (void const *)(& rtl8152_gstrings), 416UL);
  goto ldv_53467;
  }
  ldv_53467: ;
  return;
}
}
static int r8152_get_eee(struct r8152 *tp , struct ethtool_eee *eee )
{
  u32 ocp_data ;
  u32 lp ;
  u32 adv ;
  u32 supported ;
  u16 val ;
  u16 tmp ;
  {
  supported = 0U;
  val = r8152_mmd_read(tp, 3, 20);
  supported = mmd_eee_cap_to_ethtool_sup_t((int )val);
  val = r8152_mmd_read(tp, 7, 60);
  adv = mmd_eee_cap_to_ethtool_sup_t((int )val);
  val = r8152_mmd_read(tp, 7, 61);
  lp = mmd_eee_cap_to_ethtool_sup_t((int )val);
  tmp = ocp_read_word(tp, 256, 57408);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 3U;
  eee->eee_enabled = ocp_data != 0U;
  eee->eee_active = ((supported & adv) & lp) != 0U;
  eee->supported = supported;
  eee->advertised = adv;
  eee->lp_advertised = lp;
  return (0);
}
}
static int r8152_set_eee(struct r8152 *tp , struct ethtool_eee *eee )
{
  u16 val ;
  u16 tmp ;
  {
  tmp = ethtool_adv_to_mmd_eee_adv_t(eee->advertised);
  val = tmp;
  r8152_eee_en(tp, eee->eee_enabled != 0U);
  if (eee->eee_enabled == 0U) {
    val = 0U;
  } else {
  }
  r8152_mmd_write(tp, 7, 60, (int )val);
  return (0);
}
}
static int r8153_get_eee(struct r8152 *tp , struct ethtool_eee *eee )
{
  u32 ocp_data ;
  u32 lp ;
  u32 adv ;
  u32 supported ;
  u16 val ;
  u16 tmp ;
  {
  supported = 0U;
  val = ocp_reg_read(tp, 42436);
  supported = mmd_eee_cap_to_ethtool_sup_t((int )val);
  val = ocp_reg_read(tp, 42448);
  adv = mmd_eee_cap_to_ethtool_sup_t((int )val);
  val = ocp_reg_read(tp, 42450);
  lp = mmd_eee_cap_to_ethtool_sup_t((int )val);
  tmp = ocp_read_word(tp, 256, 57408);
  ocp_data = (u32 )tmp;
  ocp_data = ocp_data & 3U;
  eee->eee_enabled = ocp_data != 0U;
  eee->eee_active = ((supported & adv) & lp) != 0U;
  eee->supported = supported;
  eee->advertised = adv;
  eee->lp_advertised = lp;
  return (0);
}
}
static int r8153_set_eee(struct r8152 *tp , struct ethtool_eee *eee )
{
  u16 val ;
  u16 tmp ;
  {
  tmp = ethtool_adv_to_mmd_eee_adv_t(eee->advertised);
  val = tmp;
  r8153_eee_en(tp, eee->eee_enabled != 0U);
  if (eee->eee_enabled == 0U) {
    val = 0U;
  } else {
  }
  ocp_reg_write(tp, 42448, (int )val);
  return (0);
}
}
static int rtl_ethtool_get_eee(struct net_device *net , struct ethtool_eee *edata )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  ret = (*(tp->rtl_ops.eee_get))(tp, edata);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static int rtl_ethtool_set_eee(struct net_device *net , struct ethtool_eee *edata )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  ret = (*(tp->rtl_ops.eee_set))(tp, edata);
  if (ret == 0) {
    ret = mii_nway_restart(& tp->mii);
  } else {
  }
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static int rtl8152_nway_reset(struct net_device *dev )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    goto out;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  ret = mii_nway_restart(& tp->mii);
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (ret);
}
}
static int rtl8152_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *coalesce )
{
  struct r8152 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  switch ((int )tp->version) {
  case 1: ;
  case 2: ;
  return (-95);
  default: ;
  goto ldv_53524;
  }
  ldv_53524:
  coalesce->rx_coalesce_usecs = tp->coalesce;
  return (0);
}
}
static int rtl8152_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *coalesce )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  switch ((int )tp->version) {
  case 1: ;
  case 2: ;
  return (-95);
  default: ;
  goto ldv_53534;
  }
  ldv_53534: ;
  if (coalesce->rx_coalesce_usecs > 524280U) {
    return (-22);
  } else {
  }
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    return (ret);
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  if (tp->coalesce != coalesce->rx_coalesce_usecs) {
    tp->coalesce = coalesce->rx_coalesce_usecs;
    tmp___0 = netif_running((struct net_device const *)tp->netdev);
    if ((int )tmp___0) {
      tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
      if ((int )tmp___1) {
        r8153_set_rx_early_timeout(tp);
      } else {
      }
    } else {
    }
  } else {
  }
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  return (ret);
}
}
static struct ethtool_ops ops =
     {& rtl8152_get_settings, & rtl8152_set_settings, & rtl8152_get_drvinfo, 0, 0, & rtl8152_get_wol,
    & rtl8152_set_wol, & rtl8152_get_msglevel, & rtl8152_set_msglevel, & rtl8152_nway_reset,
    & ethtool_op_get_link, 0, 0, 0, & rtl8152_get_coalesce, & rtl8152_set_coalesce,
    0, 0, 0, 0, 0, & rtl8152_get_strings, 0, & rtl8152_get_ethtool_stats, 0, 0, 0,
    0, & rtl8152_get_sset_count, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rtl_ethtool_get_eee,
    & rtl_ethtool_set_eee, 0, 0};
static int rtl8152_ioctl(struct net_device *netdev , struct ifreq *rq , int cmd )
{
  struct r8152 *tp ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  int res ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp;
  tmp___0 = if_mii(rq);
  data = tmp___0;
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp___1 != 0) {
    return (-19);
  } else {
  }
  res = usb_autopm_get_interface(tp->intf);
  if (res < 0) {
    goto out;
  } else {
  }
  switch (cmd) {
  case 35143:
  data->phy_id = 32U;
  goto ldv_53546;
  case 35144:
  mutex_lock_nested(& tp->control, 0U);
  tmp___2 = r8152_mdio_read(tp, (u32 )data->reg_num);
  data->val_out = (__u16 )tmp___2;
  mutex_unlock(& tp->control);
  goto ldv_53546;
  case 35145:
  tmp___3 = capable(12);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    res = -1;
    goto ldv_53546;
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  r8152_mdio_write(tp, (u32 )data->reg_num, (u32 )data->val_in);
  mutex_unlock(& tp->control);
  goto ldv_53546;
  default:
  res = -95;
  }
  ldv_53546:
  usb_autopm_put_interface(tp->intf);
  out: ;
  return (res);
}
}
static int rtl8152_change_mtu(struct net_device *dev , int new_mtu )
{
  struct r8152 *tp ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct r8152 *)tmp;
  switch ((int )tp->version) {
  case 1: ;
  case 2:
  tmp___0 = eth_change_mtu(dev, new_mtu);
  return (tmp___0);
  default: ;
  goto ldv_53559;
  }
  ldv_53559: ;
  if (new_mtu <= 67 || new_mtu > 9194) {
    return (-22);
  } else {
  }
  ret = usb_autopm_get_interface(tp->intf);
  if (ret < 0) {
    return (ret);
  } else {
  }
  mutex_lock_nested(& tp->control, 0U);
  dev->mtu = (unsigned int )new_mtu;
  tmp___1 = netif_running((struct net_device const *)dev);
  if ((int )tmp___1) {
    tmp___2 = netif_carrier_ok((struct net_device const *)dev);
    if ((int )tmp___2) {
      r8153_set_rx_early_size(tp);
    } else {
    }
  } else {
  }
  mutex_unlock(& tp->control);
  usb_autopm_put_interface(tp->intf);
  return (ret);
}
}
static struct net_device_ops const rtl8152_netdev_ops =
     {0, 0, & rtl8152_open, & rtl8152_close, & rtl8152_start_xmit, 0, 0, & rtl8152_set_rx_mode,
    & rtl8152_set_mac_address, & eth_validate_addr, & rtl8152_ioctl, 0, & rtl8152_change_mtu,
    0, & rtl8152_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rtl8152_set_features, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rtl8152_features_check, 0, 0};
static void r8152b_get_version(struct r8152 *tp )
{
  u32 ocp_data ;
  u16 version ;
  u16 tmp ;
  {
  tmp = ocp_read_word(tp, 256, 58898);
  ocp_data = (u32 )tmp;
  version = (unsigned int )((unsigned short )ocp_data) & 31984U;
  switch ((int )version) {
  case 19456:
  tp->version = 1U;
  goto ldv_53567;
  case 19472:
  tp->version = 2U;
  goto ldv_53567;
  case 23552:
  tp->version = 3U;
  tp->mii.supports_gmii = 1U;
  goto ldv_53567;
  case 23568:
  tp->version = 4U;
  tp->mii.supports_gmii = 1U;
  goto ldv_53567;
  case 23584:
  tp->version = 5U;
  tp->mii.supports_gmii = 1U;
  goto ldv_53567;
  default: ;
  if ((tp->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)tp->netdev, "Unknown version 0x%04x\n",
                (int )version);
  } else {
  }
  goto ldv_53567;
  }
  ldv_53567: ;
  return;
}
}
static void rtl8152_unload(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  if ((unsigned int )tp->version != 1U) {
    r8152_power_cut_en(tp, 1);
  } else {
  }
  return;
}
}
static void rtl8153_unload(struct r8152 *tp )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tp->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  r8153_power_cut_en(tp, 0);
  return;
}
}
static int rtl_ops_init(struct r8152 *tp )
{
  struct rtl_ops *ops___0 ;
  int ret ;
  {
  ops___0 = & tp->rtl_ops;
  ret = 0;
  switch ((int )tp->version) {
  case 1: ;
  case 2:
  ops___0->init = & r8152b_init;
  ops___0->enable = & rtl8152_enable;
  ops___0->disable = & rtl8152_disable;
  ops___0->up = & rtl8152_up;
  ops___0->down = & rtl8152_down;
  ops___0->unload = & rtl8152_unload;
  ops___0->eee_get = & r8152_get_eee;
  ops___0->eee_set = & r8152_set_eee;
  goto ldv_53586;
  case 3: ;
  case 4: ;
  case 5:
  ops___0->init = & r8153_init;
  ops___0->enable = & rtl8153_enable;
  ops___0->disable = & rtl8153_disable;
  ops___0->up = & rtl8153_up;
  ops___0->down = & rtl8153_down;
  ops___0->unload = & rtl8153_unload;
  ops___0->eee_get = & r8153_get_eee;
  ops___0->eee_set = & r8153_set_eee;
  goto ldv_53586;
  default:
  ret = -19;
  if ((tp->msg_enable & 2U) != 0U) {
    netdev_err((struct net_device const *)tp->netdev, "Unknown Device\n");
  } else {
  }
  goto ldv_53586;
  }
  ldv_53586: ;
  return (ret);
}
}
static int rtl8152_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct r8152 *tp ;
  struct net_device *netdev ;
  int ret ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  {
  tmp = interface_to_usbdev(intf);
  udev = tmp;
  if ((unsigned int )(udev->actconfig)->desc.bConfigurationValue != 1U) {
    usb_driver_set_configuration(udev, 1);
    return (-19);
  } else {
  }
  usb_reset_device(udev);
  netdev = alloc_etherdev_mqs(1928, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    dev_err((struct device const *)(& intf->dev), "Out of memory\n");
    return (-12);
  } else {
  }
  netdev->dev.parent = & intf->dev;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  tp = (struct r8152 *)tmp___0;
  tp->msg_enable = 32767U;
  tp->udev = udev;
  tp->netdev = netdev;
  tp->intf = intf;
  r8152b_get_version(tp);
  ret = rtl_ops_init(tp);
  if (ret != 0) {
    goto out;
  } else {
  }
  __mutex_init(& tp->control, "&tp->control", & __key);
  __init_work(& tp->schedule.work, 0);
  __constr_expr_0.counter = 137438953408L;
  tp->schedule.work.data = __constr_expr_0;
  lockdep_init_map(& tp->schedule.work.lockdep_map, "(&(&tp->schedule)->work)", & __key___0,
                   0);
  INIT_LIST_HEAD(& tp->schedule.work.entry);
  tp->schedule.work.func = & rtl_work_func_t;
  init_timer_key(& tp->schedule.timer, 2097152U, "(&(&tp->schedule)->timer)", & __key___1);
  tp->schedule.timer.function = & delayed_work_timer_fn;
  tp->schedule.timer.data = (unsigned long )(& tp->schedule);
  netdev->netdev_ops = & rtl8152_netdev_ops;
  netdev->watchdog_timeo = 1250;
  netdev->features = netdev->features | 17180983763ULL;
  netdev->hw_features = 17180983763ULL;
  netdev->vlan_features = 1114227ULL;
  netdev->ethtool_ops = (struct ethtool_ops const *)(& ops);
  netif_set_gso_max_size(netdev, agg_buf_sz - 30U);
  tp->mii.dev = netdev;
  tp->mii.mdio_read = & read_mii_word;
  tp->mii.mdio_write = & write_mii_word;
  tp->mii.phy_id_mask = 63;
  tp->mii.reg_num_mask = 31;
  tp->mii.phy_id = 32;
  switch ((unsigned int )udev->speed) {
  case 5U:
  tp->coalesce = 85000U;
  goto ldv_53605;
  case 3U:
  tp->coalesce = 250000U;
  goto ldv_53605;
  default:
  tp->coalesce = 524280U;
  goto ldv_53605;
  }
  ldv_53605:
  intf->needs_remote_wakeup = 1U;
  (*(tp->rtl_ops.init))(tp);
  set_ethernet_addr(tp);
  usb_set_intfdata(intf, (void *)tp);
  netif_napi_add(netdev, & tp->napi, & r8152_poll, 64);
  ret = ldv_register_netdev_55(netdev);
  if (ret != 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      netdev_err((struct net_device const *)netdev, "couldn\'t register the device\n");
    } else {
    }
    goto out1;
  } else {
  }
  tp->saved_wolopts = __rtl_get_wol(tp);
  if (tp->saved_wolopts != 0U) {
    device_set_wakeup_enable(& udev->dev, 1);
  } else {
    device_set_wakeup_enable(& udev->dev, 0);
  }
  if ((tp->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)netdev, "%s\n", (char *)"v1.08.0 (2015/01/13)");
  } else {
  }
  return (0);
  out1:
  netif_napi_del(& tp->napi);
  usb_set_intfdata(intf, (void *)0);
  out:
  ldv_free_netdev_56(netdev);
  return (ret);
}
}
static void rtl8152_disconnect(struct usb_interface *intf )
{
  struct r8152 *tp ;
  void *tmp ;
  struct usb_device *udev ;
  {
  tmp = usb_get_intfdata(intf);
  tp = (struct r8152 *)tmp;
  usb_set_intfdata(intf, (void *)0);
  if ((unsigned long )tp != (unsigned long )((struct r8152 *)0)) {
    udev = tp->udev;
    if ((unsigned int )udev->state == 0U) {
      set_bit(0L, (unsigned long volatile *)(& tp->flags));
    } else {
    }
    netif_napi_del(& tp->napi);
    ldv_unregister_netdev_57(tp->netdev);
    (*(tp->rtl_ops.unload))(tp);
    ldv_free_netdev_58(tp->netdev);
  } else {
  }
  return;
}
}
static struct usb_device_id rtl8152_table[11U] =
  { {131U, 3034U, 33106U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {899U, 3034U, 33106U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 6U, 0U, (unsigned char)0, 0UL},
        {131U, 3034U, 33107U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {899U, 3034U, 33107U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 6U, 0U, (unsigned char)0, 0UL},
        {131U, 1256U, 41217U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {899U, 1256U, 41217U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 6U, 0U, (unsigned char)0, 0UL},
        {131U, 6127U, 29189U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {899U, 6127U, 29189U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 6U, 0U, (unsigned char)0, 0UL},
        {131U, 6127U, 12367U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 255U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {899U, 6127U, 12367U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 6U, 0U, (unsigned char)0, 0UL}};
struct usb_device_id const __mod_usb__rtl8152_table_device_table[11U] ;
static struct usb_driver rtl8152_driver =
     {"r8152", & rtl8152_probe, & rtl8152_disconnect, 0, & rtl8152_suspend, & rtl8152_resume,
    & rtl8152_resume, 0, 0, (struct usb_device_id const *)(& rtl8152_table), {{{{{{0}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0}},
    {{0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0}, (unsigned char)0,
    1U, 1U, (unsigned char)0};
static int rtl8152_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv_usb_register_driver_59(& rtl8152_driver, & __this_module, "r8152");
  return (tmp);
}
}
static void rtl8152_driver_exit(void)
{
  {
  ldv_usb_deregister_60(& rtl8152_driver);
  return;
}
}
extern int ldv_ndo_uninit_3(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
extern int ldv_ndo_init_3(void) ;
int ldv_retval_3 ;
void ldv_usb_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  rtl8152_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    rtl_work_func_t(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    rtl_work_func_t(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    rtl_work_func_t(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    rtl_work_func_t(work);
    ldv_work_1_3 = 1;
    return;
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
    rtl_work_func_t(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_53673;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    rtl_work_func_t(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_53673;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    rtl_work_func_t(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_53673;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    rtl_work_func_t(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_53673;
  default:
  ldv_stop();
  }
  ldv_53673: ;
  return;
}
}
void ldv_net_device_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  rtl8152_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_initialize_ethtool_ops_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_init_zalloc(40UL);
  ops_group1 = (struct ethtool_eee *)tmp;
  tmp___0 = ldv_init_zalloc(92UL);
  ops_group0 = (struct ethtool_coalesce *)tmp___0;
  tmp___1 = ldv_init_zalloc(3008UL);
  ops_group3 = (struct net_device *)tmp___1;
  tmp___2 = ldv_init_zalloc(44UL);
  ops_group2 = (struct ethtool_cmd *)tmp___2;
  tmp___3 = ldv_init_zalloc(20UL);
  ops_group4 = (struct ethtool_wolinfo *)tmp___3;
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
int main(void)
{
  u32 ldvarg1 ;
  u64 *ldvarg4 ;
  void *tmp ;
  int ldvarg3 ;
  u8 *ldvarg0 ;
  void *tmp___0 ;
  struct ethtool_stats *ldvarg5 ;
  void *tmp___1 ;
  u32 ldvarg2 ;
  struct ethtool_drvinfo *ldvarg6 ;
  void *tmp___2 ;
  netdev_features_t ldvarg11 ;
  void *ldvarg7 ;
  void *tmp___3 ;
  struct sk_buff *ldvarg12 ;
  void *tmp___4 ;
  int ldvarg8 ;
  struct ifreq *ldvarg14 ;
  void *tmp___5 ;
  int ldvarg13 ;
  struct sk_buff *ldvarg10 ;
  void *tmp___6 ;
  netdev_features_t ldvarg9 ;
  struct usb_device_id *ldvarg16 ;
  void *tmp___7 ;
  pm_message_t ldvarg15 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg4 = (u64 *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg0 = (u8 *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg5 = (struct ethtool_stats *)tmp___1;
  tmp___2 = ldv_init_zalloc(196UL);
  ldvarg6 = (struct ethtool_drvinfo *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg7 = tmp___3;
  tmp___4 = ldv_init_zalloc(232UL);
  ldvarg12 = (struct sk_buff *)tmp___4;
  tmp___5 = ldv_init_zalloc(40UL);
  ldvarg14 = (struct ifreq *)tmp___5;
  tmp___6 = ldv_init_zalloc(232UL);
  ldvarg10 = (struct sk_buff *)tmp___6;
  tmp___7 = ldv_init_zalloc(32UL);
  ldvarg16 = (struct usb_device_id *)tmp___7;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_state_variable_4 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_53770:
  tmp___8 = __VERIFIER_nondet_int();
  switch (tmp___8) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_drvinfo(ops_group3, ldvarg6);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_ethtool_stats(ops_group3, ldvarg5, ldvarg4);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_coalesce(ops_group3, ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_sset_count(ops_group3, ldvarg3);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_settings(ops_group3, ops_group2);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 5: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_set_coalesce(ops_group3, ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 6: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_set_wol(ops_group3, ops_group4);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 7: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_set_msglevel(ops_group3, ldvarg2);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 8: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_set_settings(ops_group3, ops_group2);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 9: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_strings(ops_group3, ldvarg1, ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 10: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_nway_reset(ops_group3);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 11: ;
    if (ldv_state_variable_4 == 1) {
      rtl_ethtool_set_eee(ops_group3, ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 12: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_wol(ops_group3, ops_group4);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 13: ;
    if (ldv_state_variable_4 == 1) {
      rtl_ethtool_get_eee(ops_group3, ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 14: ;
    if (ldv_state_variable_4 == 1) {
      rtl8152_get_msglevel(ops_group3);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    case 15: ;
    if (ldv_state_variable_4 == 1) {
      ethtool_op_get_link(ops_group3);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_53720;
    default:
    ldv_stop();
    }
    ldv_53720: ;
  } else {
  }
  goto ldv_53737;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_53737;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      rtl8152_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_53742;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = rtl8152_driver_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_4 = 1;
        ldv_initialize_ethtool_ops_4();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_53742;
    default:
    ldv_stop();
    }
    ldv_53742: ;
  } else {
  }
  goto ldv_53737;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_ioctl(rtl8152_netdev_ops_group1, ldvarg14, ldvarg13);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_ioctl(rtl8152_netdev_ops_group1, ldvarg14, ldvarg13);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_ioctl(rtl8152_netdev_ops_group1, ldvarg14, ldvarg13);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      ldv_retval_2 = rtl8152_open(rtl8152_netdev_ops_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 3;
      } else {
      }
    } else {
    }
    goto ldv_53747;
    case 2: ;
    if (ldv_state_variable_3 == 3) {
      rtl8152_start_xmit(ldvarg12, rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_53747;
    case 3: ;
    if (ldv_state_variable_3 == 3) {
      rtl8152_close(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 4: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_set_rx_mode(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_set_rx_mode(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_set_rx_mode(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 5: ;
    if (ldv_state_variable_3 == 1) {
      eth_validate_addr(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      eth_validate_addr(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      eth_validate_addr(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 6: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_features_check(ldvarg10, rtl8152_netdev_ops_group1, ldvarg11);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_features_check(ldvarg10, rtl8152_netdev_ops_group1, ldvarg11);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_features_check(ldvarg10, rtl8152_netdev_ops_group1, ldvarg11);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 7: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_set_features(rtl8152_netdev_ops_group1, ldvarg9);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_set_features(rtl8152_netdev_ops_group1, ldvarg9);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_set_features(rtl8152_netdev_ops_group1, ldvarg9);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 8: ;
    if (ldv_state_variable_3 == 3) {
      rtl8152_change_mtu(rtl8152_netdev_ops_group1, ldvarg8);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_change_mtu(rtl8152_netdev_ops_group1, ldvarg8);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 9: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_set_mac_address(rtl8152_netdev_ops_group1, ldvarg7);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_set_mac_address(rtl8152_netdev_ops_group1, ldvarg7);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_set_mac_address(rtl8152_netdev_ops_group1, ldvarg7);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 10: ;
    if (ldv_state_variable_3 == 1) {
      rtl8152_tx_timeout(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rtl8152_tx_timeout(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rtl8152_tx_timeout(rtl8152_netdev_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_53747;
    case 11: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_1 = ldv_ndo_init_3();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 2;
        usb_counter = usb_counter + 1;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_53747;
    case 12: ;
    if (ldv_state_variable_3 == 2) {
      ldv_ndo_uninit_3();
      ldv_state_variable_3 = 1;
      usb_counter = usb_counter - 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_53747;
    default:
    ldv_stop();
    }
    ldv_53747: ;
  } else {
  }
  goto ldv_53737;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_5 = rtl8152_probe(rtl8152_driver_group1, (struct usb_device_id const *)ldvarg16);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_53763;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      rtl8152_suspend(rtl8152_driver_group1, ldvarg15);
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_53763;
    case 2: ;
    if (ldv_state_variable_2 == 3) {
      ldv_retval_4 = rtl8152_resume(rtl8152_driver_group1);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_2 = 2;
      } else {
      }
    } else {
    }
    goto ldv_53763;
    case 3: ;
    if (ldv_state_variable_2 == 3) {
      ldv_retval_3 = rtl8152_resume(rtl8152_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_2 = 2;
      } else {
      }
    } else {
    }
    goto ldv_53763;
    case 4: ;
    if (ldv_state_variable_2 == 3 && usb_counter == 0) {
      rtl8152_disconnect(rtl8152_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2 && usb_counter == 0) {
      rtl8152_disconnect(rtl8152_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_53763;
    default:
    ldv_stop();
    }
    ldv_53763: ;
  } else {
  }
  goto ldv_53737;
  default:
  ldv_stop();
  }
  ldv_53737: ;
  goto ldv_53770;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_5(lock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_bh_6(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_9(lock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_bh_10(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
__inline static void *kmalloc_node(size_t size , gfp_t flags , int node )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
void *ldv_kmem_cache_alloc_42(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_usb_submit_urb_43(struct urb *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct urb *ldv_usb_alloc_urb_44(int ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct urb *)tmp);
}
}
struct urb *ldv_usb_alloc_urb_45(int ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct urb *)tmp);
}
}
struct urb *ldv_usb_alloc_urb_46(int ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct urb *)tmp);
}
}
int ldv_usb_submit_urb_47(struct urb *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_usb_submit_urb_48(struct urb *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
bool ldv_cancel_delayed_work_sync_49(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_50(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv_usb_submit_urb_51(struct urb *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
bool ldv_cancel_delayed_work_sync_52(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_53(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv_usb_submit_urb_54(struct urb *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_register_netdev_55(struct net_device *dev )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  ldv_net_device_ops_3();
  return (ldv_func_res);
}
}
void ldv_free_netdev_56(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_unregister_netdev_57(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_free_netdev_58(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
int ldv_usb_register_driver_59(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  usb_counter = 0;
  ldv_usb_driver_2();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_60(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_2 = 0;
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
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
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return (unsigned char *)external_alloc();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__skb_gso_segment(struct sk_buff *arg0, netdev_features_t arg1, bool arg2) {
  return (struct sk_buff *)external_alloc();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 csum_ipv6_magic(const struct in6_addr *arg0, const struct in6_addr *arg1, __u32 arg2, unsigned short arg3, __wsum arg4) {
  return __VERIFIER_nondet_ushort();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_3() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mii_ethtool_gset(struct mii_if_info *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mii_nway_restart(struct mii_if_info *arg0) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_disable(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_notice(const struct net_device *arg0, const char *arg1, ...) {
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
void netif_schedule_queue(struct netdev_queue *arg0) {
  return;
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int skb_checksum_help(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
void skb_clone_tx_timestamp(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int skb_copy_bits(const struct sk_buff *arg0, int arg1, void *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface_async(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_autopm_put_interface(struct usb_interface *arg0) {
  return;
}
void usb_autopm_put_interface_async(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_driver_set_configuration(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int work_busy(struct work_struct *arg0) {
  return __VERIFIER_nondet_uint();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
