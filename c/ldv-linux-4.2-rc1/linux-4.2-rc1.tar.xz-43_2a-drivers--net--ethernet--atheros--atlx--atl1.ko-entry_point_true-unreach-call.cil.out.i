extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
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
struct pci_bus;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct ethtool_ringparam;
struct ethtool_wolinfo;
struct ethtool_pauseparam;
struct ethtool_cmd;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
struct kvec;
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
enum ldv_21485 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21485 socket_state;
struct poll_table_struct;
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
typedef u64 netdev_features_t;
union __anonunion_in6_u_218 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_218 in6_u ;
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
union __anonunion____missing_field_name_223 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_224 {
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
   union __anonunion____missing_field_name_223 __annonCompField62 ;
   union __anonunion____missing_field_name_224 __annonCompField63 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_225 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_225 page ;
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
struct __anonstruct____missing_field_name_227 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_226 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_227 __annonCompField64 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_226 __annonCompField65 ;
};
union __anonunion____missing_field_name_230 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_229 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
union __anonunion____missing_field_name_228 {
   struct __anonstruct____missing_field_name_229 __annonCompField67 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_232 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_231 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_232 __annonCompField69 ;
};
union __anonunion____missing_field_name_233 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_234 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_235 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_228 __annonCompField68 ;
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
   union __anonunion____missing_field_name_231 __annonCompField70 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_233 __annonCompField71 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_234 __annonCompField72 ;
   union __anonunion____missing_field_name_235 __annonCompField73 ;
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
struct __anonstruct_sync_serial_settings_237 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_237 sync_serial_settings;
struct __anonstruct_te1_settings_238 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_238 te1_settings;
struct __anonstruct_raw_hdlc_proto_239 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_239 raw_hdlc_proto;
struct __anonstruct_fr_proto_240 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_240 fr_proto;
struct __anonstruct_fr_proto_pvc_241 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_241 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_242 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_242 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_243 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_243 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_244 {
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
   union __anonunion_ifs_ifsu_244 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_245 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_246 {
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
   union __anonunion_ifr_ifrn_245 ifr_ifrn ;
   union __anonunion_ifr_ifru_246 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_251 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_250 {
   struct __anonstruct____missing_field_name_251 __annonCompField74 ;
};
struct lockref {
   union __anonunion____missing_field_name_250 __annonCompField75 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_253 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_252 {
   struct __anonstruct____missing_field_name_253 __annonCompField76 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_252 __annonCompField77 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_254 {
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
   union __anonunion_d_u_254 d_u ;
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
struct __anonstruct____missing_field_name_258 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_257 {
   struct __anonstruct____missing_field_name_258 __annonCompField78 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_257 __annonCompField79 ;
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
struct __anonstruct_kprojid_t_262 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_262 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_263 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_263 __annonCompField81 ;
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
union __anonunion____missing_field_name_266 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_267 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_268 {
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
   union __anonunion____missing_field_name_266 __annonCompField82 ;
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
   union __anonunion____missing_field_name_267 __annonCompField83 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_268 __annonCompField84 ;
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
union __anonunion_f_u_269 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_269 f_u ;
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
struct __anonstruct_afs_271 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_270 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_271 afs ;
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
   union __anonunion_fl_u_270 fl_u ;
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
enum ldv_27921 {
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
typedef enum ldv_27921 phy_interface_t;
enum ldv_27975 {
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
   enum ldv_27975 state ;
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
union __anonunion____missing_field_name_330 {
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
   unsigned char ignore_hotplug : 1 ;
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
   unsigned char no_64bit_msi : 1 ;
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
   unsigned char irq_managed : 1 ;
   unsigned char has_secondary_link : 1 ;
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
   union __anonunion____missing_field_name_330 __annonCompField95 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
   union __anonunion____missing_field_name_337 __annonCompField100 ;
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
   union __anonunion____missing_field_name_345 __annonCompField101 ;
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
   struct __anonstruct____missing_field_name_348 __annonCompField102 ;
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
   struct __anonstruct____missing_field_name_351 __annonCompField105 ;
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
   union __anonunion____missing_field_name_347 __annonCompField103 ;
   union __anonunion____missing_field_name_349 __annonCompField104 ;
   union __anonunion____missing_field_name_350 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_352 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_353 __annonCompField108 ;
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
struct atlx_spi_flash_dev {
   char const *manu_name ;
   u8 cmd_wrsr ;
   u8 cmd_read ;
   u8 cmd_program ;
   u8 cmd_wren ;
   u8 cmd_wrdi ;
   u8 cmd_rdsr ;
   u8 cmd_rdid ;
   u8 cmd_sector_erase ;
   u8 cmd_chip_erase ;
};
struct atl1_adapter;
struct atl1_hw;
struct stats_msg_block {
   u32 rx_ok ;
   u32 rx_bcast ;
   u32 rx_mcast ;
   u32 rx_pause ;
   u32 rx_ctrl ;
   u32 rx_fcs_err ;
   u32 rx_len_err ;
   u32 rx_byte_cnt ;
   u32 rx_runt ;
   u32 rx_frag ;
   u32 rx_sz_64 ;
   u32 rx_sz_65_127 ;
   u32 rx_sz_128_255 ;
   u32 rx_sz_256_511 ;
   u32 rx_sz_512_1023 ;
   u32 rx_sz_1024_1518 ;
   u32 rx_sz_1519_max ;
   u32 rx_sz_ov ;
   u32 rx_rxf_ov ;
   u32 rx_rrd_ov ;
   u32 rx_align_err ;
   u32 rx_bcast_byte_cnt ;
   u32 rx_mcast_byte_cnt ;
   u32 rx_err_addr ;
   u32 tx_ok ;
   u32 tx_bcast ;
   u32 tx_mcast ;
   u32 tx_pause ;
   u32 tx_exc_defer ;
   u32 tx_ctrl ;
   u32 tx_defer ;
   u32 tx_byte_cnt ;
   u32 tx_sz_64 ;
   u32 tx_sz_65_127 ;
   u32 tx_sz_128_255 ;
   u32 tx_sz_256_511 ;
   u32 tx_sz_512_1023 ;
   u32 tx_sz_1024_1518 ;
   u32 tx_sz_1519_max ;
   u32 tx_1_col ;
   u32 tx_2_col ;
   u32 tx_late_col ;
   u32 tx_abort_col ;
   u32 tx_underrun ;
   u32 tx_rd_eop ;
   u32 tx_len_err ;
   u32 tx_trunc ;
   u32 tx_bcast_byte ;
   u32 tx_mcast_byte ;
   u32 smb_updated ;
};
struct coals_msg_block {
   u32 int_stats ;
   u16 rrd_prod_idx ;
   u16 rfd_cons_idx ;
   u16 update ;
   u16 tpd_cons_idx ;
};
struct __anonstruct_xsum_sz_374 {
   u16 rx_chksum ;
   u16 pkt_size ;
};
union __anonunion_xsz_373 {
   u32 valid ;
   struct __anonstruct_xsum_sz_374 xsum_sz ;
};
struct rx_return_desc {
   u8 num_buf ;
   u8 resved ;
   u16 buf_indx ;
   union __anonunion_xsz_373 xsz ;
   u16 pkt_flg ;
   u16 err_flg ;
   u16 resved2 ;
   u16 vlan_tag ;
};
struct rx_free_desc {
   __le64 buffer_addr ;
   __le16 buf_len ;
   u16 coalese ;
};
struct tx_packet_desc {
   __le64 buffer_addr ;
   __le32 word2 ;
   __le32 word3 ;
};
enum atl1_dma_order {
    atl1_dma_ord_in = 1,
    atl1_dma_ord_enh = 2,
    atl1_dma_ord_out = 4
} ;
enum atl1_dma_rcb {
    atl1_rcb_64 = 0,
    atl1_rcb_128 = 1
} ;
enum atl1_dma_req_block {
    atl1_dma_req_128 = 0,
    atl1_dma_req_256 = 1,
    atl1_dma_req_512 = 2,
    atl1_dma_req_1024 = 3,
    atl1_dma_req_2048 = 4,
    atl1_dma_req_4096 = 5
} ;
struct atl1_ring_header {
   void *desc ;
   dma_addr_t dma ;
   unsigned int size ;
};
struct atl1_buffer {
   struct sk_buff *skb ;
   u16 length ;
   u16 alloced ;
   dma_addr_t dma ;
};
struct atl1_tpd_ring {
   void *desc ;
   dma_addr_t dma ;
   u16 size ;
   u16 count ;
   u16 hw_idx ;
   atomic_t next_to_clean ;
   atomic_t next_to_use ;
   struct atl1_buffer *buffer_info ;
};
struct atl1_rfd_ring {
   void *desc ;
   dma_addr_t dma ;
   u16 size ;
   u16 count ;
   atomic_t next_to_use ;
   u16 next_to_clean ;
   struct atl1_buffer *buffer_info ;
};
struct atl1_rrd_ring {
   void *desc ;
   dma_addr_t dma ;
   unsigned int size ;
   u16 count ;
   u16 next_to_use ;
   atomic_t next_to_clean ;
};
struct atl1_cmb {
   struct coals_msg_block *cmb ;
   dma_addr_t dma ;
};
struct atl1_smb {
   struct stats_msg_block *smb ;
   dma_addr_t dma ;
};
struct atl1_sft_stats {
   u64 rx_packets ;
   u64 tx_packets ;
   u64 rx_bytes ;
   u64 tx_bytes ;
   u64 multicast ;
   u64 collisions ;
   u64 rx_errors ;
   u64 rx_length_errors ;
   u64 rx_crc_errors ;
   u64 rx_dropped ;
   u64 rx_frame_errors ;
   u64 rx_fifo_errors ;
   u64 rx_missed_errors ;
   u64 tx_errors ;
   u64 tx_fifo_errors ;
   u64 tx_aborted_errors ;
   u64 tx_window_errors ;
   u64 tx_carrier_errors ;
   u64 tx_pause ;
   u64 excecol ;
   u64 deffer ;
   u64 scc ;
   u64 mcc ;
   u64 latecol ;
   u64 tx_underun ;
   u64 tx_trunc ;
   u64 rx_pause ;
   u64 rx_rrd_ov ;
   u64 rx_trunc ;
};
struct atl1_hw {
   u8 *hw_addr ;
   struct atl1_adapter *back ;
   enum atl1_dma_order dma_ord ;
   enum atl1_dma_rcb rcb_value ;
   enum atl1_dma_req_block dmar_block ;
   enum atl1_dma_req_block dmaw_block ;
   u8 preamble_len ;
   u8 max_retry ;
   u8 jam_ipg ;
   u8 ipgt ;
   u8 min_ifg ;
   u8 ipgr1 ;
   u8 ipgr2 ;
   u8 tpd_burst ;
   u8 rfd_burst ;
   u8 rfd_fetch_gap ;
   u8 rrd_burst ;
   u8 tpd_fetch_th ;
   u8 tpd_fetch_gap ;
   u16 tx_jumbo_task_th ;
   u16 txf_burst ;
   u16 rx_jumbo_th ;
   u16 rx_jumbo_lkah ;
   u16 rrd_ret_timer ;
   u16 lcol ;
   u16 cmb_tpd ;
   u16 cmb_rrd ;
   u16 cmb_rx_timer ;
   u16 cmb_tx_timer ;
   u32 smb_timer ;
   u16 media_type ;
   u16 autoneg_advertised ;
   u16 mii_autoneg_adv_reg ;
   u16 mii_1000t_ctrl_reg ;
   u32 max_frame_size ;
   u32 min_frame_size ;
   u16 dev_rev ;
   u8 flash_vendor ;
   u8 mac_addr[6U] ;
   u8 perm_mac_addr[6U] ;
   bool phy_configured ;
};
struct atl1_adapter {
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct atl1_sft_stats soft_stats ;
   u32 rx_buffer_len ;
   u32 wol ;
   u16 link_speed ;
   u16 link_duplex ;
   spinlock_t lock ;
   struct napi_struct napi ;
   struct work_struct reset_dev_task ;
   struct work_struct link_chg_task ;
   struct timer_list phy_config_timer ;
   bool phy_timer_pending ;
   struct atl1_ring_header ring_header ;
   struct atl1_tpd_ring tpd_ring ;
   spinlock_t mb_lock ;
   struct atl1_rfd_ring rfd_ring ;
   struct atl1_rrd_ring rrd_ring ;
   u64 hw_csum_err ;
   u64 hw_csum_good ;
   u32 msg_enable ;
   u16 imt ;
   u16 ict ;
   struct mii_if_info mii ;
   bool int_enabled ;
   u32 bd_number ;
   bool pci_using_64 ;
   struct atl1_hw hw ;
   struct atl1_smb smb ;
   struct atl1_cmb cmb ;
};
enum ldv_34578 {
    enable_option = 0,
    range_option = 1,
    list_option = 2
} ;
struct atl1_opt_list {
   int i ;
   char *str ;
};
struct __anonstruct_r_376 {
   int min ;
   int max ;
};
struct __anonstruct_l_377 {
   int nr ;
   struct atl1_opt_list *p ;
};
union __anonunion_arg_375 {
   struct __anonstruct_r_376 r ;
   struct __anonstruct_l_377 l ;
};
struct atl1_option {
   enum ldv_34578 type ;
   char *name ;
   char *err ;
   int def ;
   union __anonunion_arg_375 arg ;
};
struct atl1_stats {
   char stat_string[32U] ;
   int sizeof_stat ;
   int stat_offset ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
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
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
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
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
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
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_43(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_45(struct timer_list *ldv_func_arg1 ) ;
extern unsigned long round_jiffies(unsigned long ) ;
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
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_15(8192, wq, work);
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
extern unsigned int ioread16(void * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite8(u8 , void * ) ;
extern void iowrite16(u16 , void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_42(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_8 ;
struct device *atl1_pm_ops_group1 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
int ldv_timer_4_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
int ldv_timer_4_3 ;
struct work_struct *ldv_work_struct_2_2 ;
struct ethtool_ringparam *atl1_ethtool_ops_group0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_work_3_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_timer_4_2 ;
struct net_device *atl1_netdev_ops_group1 ;
int ldv_irq_1_0 = 0;
struct timer_list *ldv_timer_list_4_0 ;
struct work_struct *ldv_work_struct_2_1 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_work_3_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct net_device *atl1_ethtool_ops_group3 ;
int ldv_work_2_0 ;
void *ldv_irq_data_1_2 ;
struct ethtool_wolinfo *atl1_ethtool_ops_group4 ;
struct work_struct *ldv_work_struct_3_0 ;
struct timer_list *ldv_timer_list_4_3 ;
int ldv_irq_1_2 = 0;
struct pci_dev *atl1_driver_group1 ;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct timer_list *ldv_timer_list_4_2 ;
struct ethtool_pauseparam *atl1_ethtool_ops_group2 ;
int ldv_irq_line_1_3 ;
struct ethtool_cmd *atl1_ethtool_ops_group1 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_timer_4_1 ;
struct timer_list *ldv_timer_list_4_1 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void work_init_3(void) ;
void ldv_net_device_ops_7(void) ;
void work_init_2(void) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void call_and_disable_all_2(int state ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void timer_init_4(void) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_ethtool_ops_5(void) ;
void choose_interrupt_1(void) ;
void choose_timer_4(void) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
int reg_timer_4(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void invoke_work_3(void) ;
void ldv_dev_pm_ops_8(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void call_and_disable_all_3(int state ) ;
void ldv_timer_4(int state , struct timer_list *timer ) ;
void activate_suitable_timer_4(struct timer_list *timer , unsigned long data ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void ldv_pci_driver_6(void) ;
void invoke_work_2(void) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern int device_set_wakeup_enable(struct device * , bool ) ;
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
extern void dev_printk(char const * , struct device const * , char const *
                       , ...) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void dev_notice(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
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
                         "i" (84), "i" (12UL));
    ldv_25033: ;
    goto ldv_25033;
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
                         "i" (96), "i" (12UL));
    ldv_25041: ;
    goto ldv_25041;
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
extern int dma_set_mask(struct device * , u64 ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
extern void get_random_bytes(void * , int ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  return (tmp___0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
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
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
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
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  tmp = skb_headroom(skb);
  return ((int )((unsigned int )skb->__annonCompField70.__annonCompField69.csum_start - tmp));
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
extern int ___pskb_trim(struct sk_buff * , unsigned int ) ;
__inline static void __skb_trim(struct sk_buff *skb , unsigned int len )
{
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/skbuff.h", 2054);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  skb->len = len;
  skb_set_tail_pointer(skb, (int const )len);
  return;
}
}
__inline static int __pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  {
  if (skb->data_len != 0U) {
    tmp = ___pskb_trim(skb, len);
    return (tmp);
  } else {
  }
  __skb_trim(skb, len);
  return (0);
}
}
__inline static int pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  int tmp___0 ;
  {
  if (skb->len > len) {
    tmp = __pskb_trim(skb, len);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
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
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern void synchronize_irq(unsigned int ) ;
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
__inline static int ldv_request_irq_44(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern int generic_mii_ioctl(struct mii_if_info * , struct mii_ioctl_data * , int ,
                             unsigned int * ) ;
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
    ldv_41785: ;
    goto ldv_41785;
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
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_48(struct net_device *dev ) ;
void ldv_free_netdev_50(struct net_device *dev ) ;
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
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern int netif_receive_skb_sk(struct sock * , struct sk_buff * ) ;
__inline static int netif_receive_skb(struct sk_buff *skb )
{
  int tmp ;
  {
  tmp = netif_receive_skb_sk(skb->sk, skb);
  return (tmp);
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
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_47(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_49(struct net_device *dev ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
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
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
__inline static bool ether_addr_equal_unaligned(u8 const *addr1 , u8 const *addr2 )
{
  bool tmp ;
  {
  tmp = ether_addr_equal(addr1, addr2);
  return (tmp);
}
}
__inline static void __vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                            u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int pci_wake_from_d3(struct pci_dev * , bool ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_51(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_52(struct pci_driver *ldv_func_arg1 ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     page, offset, size, (enum dma_data_direction )direction);
  return (tmp);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
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
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )((int )tmp->doff * 4));
}
}
static u32 atl1_hash_mc_addr(struct atl1_hw *hw , u8 *mc_addr ) ;
static void atl1_hash_set(struct atl1_hw *hw , u32 hash_value ) ;
static void atl1_set_mac_addr(struct atl1_hw *hw ) ;
static int atl1_mii_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd ) ;
static u32 atl1_check_link(struct atl1_adapter *adapter ) ;
static s32 atl1_read_phy_reg(struct atl1_hw *hw , u16 reg_addr , u16 *phy_data ) ;
static struct atlx_spi_flash_dev flash_table[3U] = { {"Atmel", 0U, 3U, 2U, 6U, 4U, 5U, 21U, 82U, 98U},
        {"SST", 1U, 3U, 2U, 6U, 4U, 5U, 144U, 32U, 96U},
        {"ST", 1U, 3U, 2U, 6U, 4U, 5U, 171U, 216U, 199U}};
static int atlx_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  int tmp ;
  {
  switch (cmd) {
  case 35143: ;
  case 35144: ;
  case 35145:
  tmp = atl1_mii_ioctl(netdev, ifr, cmd);
  return (tmp);
  default: ;
  return (-95);
  }
}
}
static int atl1_set_mac(struct net_device *netdev , void *p )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  tmp___1 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-99);
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  memcpy((void *)(& adapter->hw.mac_addr), (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  atl1_set_mac_addr(& adapter->hw);
  return (0);
}
}
static void atl1_check_for_link(struct atl1_adapter *adapter )
{
  struct net_device *netdev ;
  u16 phy_data ;
  bool tmp ;
  {
  netdev = adapter->netdev;
  phy_data = 0U;
  spin_lock(& adapter->lock);
  adapter->phy_timer_pending = 0;
  atl1_read_phy_reg(& adapter->hw, 1, & phy_data);
  atl1_read_phy_reg(& adapter->hw, 1, & phy_data);
  spin_unlock(& adapter->lock);
  if (((int )phy_data & 4) == 0) {
    tmp = netif_carrier_ok((struct net_device const *)netdev);
    if ((int )tmp) {
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s link is down\n",
                (char *)(& netdev->name));
      adapter->link_speed = 65535U;
      netif_carrier_off(netdev);
    } else {
    }
  } else {
  }
  schedule_work(& adapter->link_chg_task);
  return;
}
}
static void atlx_set_multi(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  struct netdev_hw_addr *ha ;
  u32 rctl ;
  u32 hash_value ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  rctl = ioread32((void *)hw->hw_addr + 5248U);
  if ((netdev->flags & 256U) != 0U) {
    rctl = rctl | 32768U;
  } else
  if ((netdev->flags & 512U) != 0U) {
    rctl = rctl | 33554432U;
    rctl = rctl & 4294934527U;
  } else {
    rctl = rctl & 4261380095U;
  }
  iowrite32(rctl, (void *)hw->hw_addr + 5248U);
  iowrite32(0U, (void *)hw->hw_addr + 5264U);
  iowrite32(0U, (void *)hw->hw_addr + 5268U);
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_51106;
  ldv_51105:
  hash_value = atl1_hash_mc_addr(hw, (u8 *)(& ha->addr));
  atl1_hash_set(hw, hash_value);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_51106: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_51105;
  } else {
  }
  return;
}
}
__inline static void atlx_imr_set(struct atl1_adapter *adapter , unsigned int imr )
{
  {
  iowrite32(imr, (void *)adapter->hw.hw_addr + 5636U);
  ioread32((void *)adapter->hw.hw_addr + 5636U);
  return;
}
}
static void atlx_irq_enable(struct atl1_adapter *adapter )
{
  {
  atlx_imr_set(adapter, 271588353U);
  adapter->int_enabled = 1;
  return;
}
}
static void atlx_irq_disable(struct atl1_adapter *adapter )
{
  {
  adapter->int_enabled = 0;
  atlx_imr_set(adapter, 0U);
  synchronize_irq((adapter->pdev)->irq);
  return;
}
}
static void atlx_clear_phy_int(struct atl1_adapter *adapter )
{
  u16 phy_data ;
  unsigned long flags ;
  {
  ldv_spin_lock();
  atl1_read_phy_reg(& adapter->hw, 19, & phy_data);
  spin_unlock_irqrestore(& adapter->lock, flags);
  return;
}
}
static void atlx_tx_timeout(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  schedule_work(& adapter->reset_dev_task);
  return;
}
}
static void atlx_link_chg_task(struct work_struct *work )
{
  struct atl1_adapter *adapter ;
  unsigned long flags ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct atl1_adapter *)__mptr + 0xfffffffffffffd48UL;
  ldv_spin_lock();
  atl1_check_link(adapter);
  spin_unlock_irqrestore(& adapter->lock, flags);
  return;
}
}
static void __atlx_vlan_mode(netdev_features_t features , u32 *ctrl )
{
  {
  if ((features & 256ULL) != 0ULL) {
    *ctrl = *ctrl | 16384U;
  } else {
    *ctrl = *ctrl & 4294950911U;
  }
  return;
}
}
static void atlx_vlan_mode(struct net_device *netdev , netdev_features_t features )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  u32 ctrl ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  ldv_spin_lock();
  ctrl = ioread32((void *)adapter->hw.hw_addr + 5248U);
  __atlx_vlan_mode(features, & ctrl);
  iowrite32(ctrl, (void *)adapter->hw.hw_addr + 5248U);
  spin_unlock_irqrestore(& adapter->lock, flags);
  return;
}
}
static void atlx_restore_vlan(struct atl1_adapter *adapter )
{
  {
  atlx_vlan_mode(adapter->netdev, (adapter->netdev)->features);
  return;
}
}
static netdev_features_t atlx_fix_features(struct net_device *netdev , netdev_features_t features )
{
  {
  if ((features & 256ULL) != 0ULL) {
    features = features | 128ULL;
  } else {
    features = features & 0xffffffffffffff7fULL;
  }
  return (features);
}
}
static int atlx_set_features(struct net_device *netdev , netdev_features_t features )
{
  netdev_features_t changed ;
  {
  changed = netdev->features ^ features;
  if ((changed & 256ULL) != 0ULL) {
    atlx_vlan_mode(netdev, features);
  } else {
  }
  return (0);
}
}
static struct ethtool_ops const atl1_ethtool_ops ;
static int int_mod_timer[5U] = { -1, -1, -1, -1,
        -1};
static unsigned int num_int_mod_timer ;
static int atl1_validate_option(int *value , struct atl1_option *opt , struct pci_dev *pdev )
{
  int i ;
  struct atl1_opt_list *ent ;
  {
  if (*value == -1) {
    *value = opt->def;
    return (0);
  } else {
  }
  switch ((unsigned int )opt->type) {
  case 0U: ;
  switch (*value) {
  case 1:
  _dev_info((struct device const *)(& pdev->dev), "%s enabled\n", opt->name);
  return (0);
  case 0:
  _dev_info((struct device const *)(& pdev->dev), "%s disabled\n", opt->name);
  return (0);
  }
  goto ldv_51212;
  case 1U: ;
  if (*value >= opt->arg.r.min && *value <= opt->arg.r.max) {
    _dev_info((struct device const *)(& pdev->dev), "%s set to %i\n", opt->name,
              *value);
    return (0);
  } else {
  }
  goto ldv_51212;
  case 2U:
  i = 0;
  goto ldv_51218;
  ldv_51217:
  ent = opt->arg.l.p + (unsigned long )i;
  if (*value == ent->i) {
    if ((int )((signed char )*(ent->str)) != 0) {
      _dev_info((struct device const *)(& pdev->dev), "%s\n", ent->str);
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_51218: ;
  if (opt->arg.l.nr > i) {
    goto ldv_51217;
  } else {
  }
  goto ldv_51212;
  default: ;
  goto ldv_51212;
  }
  ldv_51212:
  _dev_info((struct device const *)(& pdev->dev), "invalid %s specified (%i) %s\n",
            opt->name, *value, opt->err);
  *value = opt->def;
  return (-1);
}
}
static void atl1_check_options(struct atl1_adapter *adapter )
{
  struct pci_dev *pdev ;
  int bd ;
  struct atl1_option opt ;
  int val ;
  {
  pdev = adapter->pdev;
  bd = (int )adapter->bd_number;
  if (bd > 3) {
    dev_notice((struct device const *)(& pdev->dev), "no configuration for board#%i\n",
               bd);
    dev_notice((struct device const *)(& pdev->dev), "using defaults for all values\n");
  } else {
  }
  opt.type = 1;
  opt.name = (char *)"Interrupt Moderator Timer";
  opt.err = (char *)"using default of 100";
  opt.def = 100;
  opt.arg.r.min = 50;
  opt.arg.r.max = 65000;
  if ((unsigned int )bd < num_int_mod_timer) {
    val = int_mod_timer[bd];
    atl1_validate_option(& val, & opt, pdev);
    adapter->imt = (unsigned short )val;
  } else {
    adapter->imt = (unsigned short )opt.def;
  }
  return;
}
}
static struct pci_device_id const atl1_pci_tbl[2U] = { {6505U, 4168U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__atl1_pci_tbl_device_table[2U] ;
static unsigned int const atl1_default_msg = 63U;
static int debug = -1;
static s32 atl1_reset_hw(struct atl1_hw *hw )
{
  struct pci_dev *pdev ;
  struct atl1_adapter *adapter ;
  u32 icr ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pdev = (hw->back)->pdev;
  adapter = hw->back;
  iowrite32(1U, (void *)hw->hw_addr + 5120U);
  ioread32((void *)hw->hw_addr + 5120U);
  iowrite16(1, (void *)hw->hw_addr + 5132U);
  ioread16((void *)hw->hw_addr + 5132U);
  msleep(1U);
  i = 0;
  goto ldv_51260;
  ldv_51259:
  icr = ioread32((void *)hw->hw_addr + 5136U);
  if (icr == 0U) {
    goto ldv_51258;
  } else {
  }
  msleep(1U);
  cpu_relax();
  i = i + 1;
  ldv_51260: ;
  if (i <= 9) {
    goto ldv_51259;
  } else {
  }
  ldv_51258: ;
  if (icr != 0U) {
    if ((adapter->msg_enable & 8192U) != 0U) {
      descriptor.modname = "atl1";
      descriptor.function = "atl1_reset_hw";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor.format = "ICR = 0x%x\n";
      descriptor.lineno = 301U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "ICR = 0x%x\n",
                          icr);
      } else {
      }
    } else {
    }
    return ((s32 )icr);
  } else {
  }
  return (0);
}
}
static int atl1_check_eeprom_exist(struct atl1_hw *hw )
{
  u32 value ;
  {
  value = ioread32((void *)hw->hw_addr + 512U);
  if ((value & 8192U) != 0U) {
    value = value & 4294959103U;
    iowrite32(value, (void *)hw->hw_addr + 512U);
  } else {
  }
  value = ioread16((void *)hw->hw_addr + 88U);
  return ((value & 65280U) != 27648U);
}
}
static bool atl1_read_eeprom(struct atl1_hw *hw , u32 offset , u32 *p_value )
{
  int i ;
  u32 control ;
  {
  if ((offset & 3U) != 0U) {
    return (0);
  } else {
  }
  iowrite32(0U, (void *)hw->hw_addr + 112U);
  control = (offset & 32767U) << 16;
  iowrite32(control, (void *)hw->hw_addr + 108U);
  ioread32((void *)hw->hw_addr + 108U);
  i = 0;
  goto ldv_51276;
  ldv_51275:
  msleep(2U);
  control = ioread32((void *)hw->hw_addr + 108U);
  if ((int )control < 0) {
    goto ldv_51274;
  } else {
  }
  i = i + 1;
  ldv_51276: ;
  if (i <= 9) {
    goto ldv_51275;
  } else {
  }
  ldv_51274: ;
  if ((int )control < 0) {
    *p_value = ioread32((void *)hw->hw_addr + 112U);
    return (1);
  } else {
  }
  return (0);
}
}
static s32 atl1_read_phy_reg(struct atl1_hw *hw , u16 reg_addr , u16 *phy_data )
{
  u32 val ;
  int i ;
  {
  val = (((unsigned int )reg_addr & 31U) << 16) | 14680064U;
  iowrite32(val, (void *)hw->hw_addr + 5140U);
  ioread32((void *)hw->hw_addr + 5140U);
  i = 0;
  goto ldv_51286;
  ldv_51285:
  __const_udelay(8590UL);
  val = ioread32((void *)hw->hw_addr + 5140U);
  if ((val & 142606336U) == 0U) {
    goto ldv_51284;
  } else {
  }
  i = i + 1;
  ldv_51286: ;
  if (i <= 29) {
    goto ldv_51285;
  } else {
  }
  ldv_51284: ;
  if ((val & 142606336U) == 0U) {
    *phy_data = (unsigned short )val;
    return (0);
  } else {
  }
  return (2);
}
}
static bool atl1_spi_read(struct atl1_hw *hw , u32 addr , u32 *buf )
{
  int i ;
  u32 value ;
  {
  iowrite32(0U, (void *)hw->hw_addr + 520U);
  iowrite32(addr, (void *)hw->hw_addr + 516U);
  value = 313196800U;
  iowrite32(value, (void *)hw->hw_addr + 512U);
  value = value | 2048U;
  iowrite32(value, (void *)hw->hw_addr + 512U);
  ioread32((void *)hw->hw_addr + 512U);
  i = 0;
  goto ldv_51296;
  ldv_51295:
  msleep(1U);
  value = ioread32((void *)hw->hw_addr + 512U);
  if ((value & 2048U) == 0U) {
    goto ldv_51294;
  } else {
  }
  i = i + 1;
  ldv_51296: ;
  if (i <= 9) {
    goto ldv_51295;
  } else {
  }
  ldv_51294: ;
  if ((value & 2048U) != 0U) {
    return (0);
  } else {
  }
  *buf = ioread32((void *)hw->hw_addr + 520U);
  return (1);
}
}
static int atl1_get_permanent_address(struct atl1_hw *hw )
{
  u32 addr[2U] ;
  u32 i ;
  u32 control ;
  u16 reg ;
  u8 eth_addr[6U] ;
  bool key_valid ;
  bool tmp ;
  bool tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  __u32 tmp___6 ;
  __u16 tmp___7 ;
  bool tmp___8 ;
  __u32 tmp___9 ;
  __u16 tmp___10 ;
  bool tmp___11 ;
  {
  tmp = is_valid_ether_addr((u8 const *)(& hw->perm_mac_addr));
  if ((int )tmp) {
    return (0);
  } else {
  }
  addr[1] = 0U;
  addr[0] = addr[1];
  tmp___4 = atl1_check_eeprom_exist(hw);
  if (tmp___4 == 0) {
    reg = 0U;
    key_valid = 0;
    i = 0U;
    ldv_51307:
    tmp___0 = atl1_read_eeprom(hw, i + 256U, & control);
    if ((int )tmp___0) {
      if ((int )key_valid) {
        if ((unsigned int )reg == 5256U) {
          addr[0] = control;
        } else
        if ((unsigned int )reg == 5260U) {
          addr[1] = control;
        } else {
        }
        key_valid = 0;
      } else
      if ((control & 255U) == 90U) {
        key_valid = 1;
        reg = (unsigned short )(control >> 16);
      } else {
        goto ldv_51306;
      }
    } else {
      goto ldv_51306;
    }
    i = i + 4U;
    goto ldv_51307;
    ldv_51306:
    tmp___1 = __fswab32(addr[0]);
    *((u32 *)(& eth_addr) + 2U) = tmp___1;
    tmp___2 = __fswab16((int )*((u16 *)(& addr) + 1U));
    *((u16 *)(& eth_addr)) = tmp___2;
    tmp___3 = is_valid_ether_addr((u8 const *)(& eth_addr));
    if ((int )tmp___3) {
      memcpy((void *)(& hw->perm_mac_addr), (void const *)(& eth_addr), 6UL);
      return (0);
    } else {
    }
  } else {
  }
  addr[1] = 0U;
  addr[0] = addr[1];
  reg = 0U;
  key_valid = 0;
  i = 0U;
  ldv_51309:
  tmp___5 = atl1_spi_read(hw, i + 126976U, & control);
  if ((int )tmp___5) {
    if ((int )key_valid) {
      if ((unsigned int )reg == 5256U) {
        addr[0] = control;
      } else
      if ((unsigned int )reg == 5260U) {
        addr[1] = control;
      } else {
      }
      key_valid = 0;
    } else
    if ((control & 255U) == 90U) {
      key_valid = 1;
      reg = (unsigned short )(control >> 16);
    } else {
      goto ldv_51308;
    }
  } else {
    goto ldv_51308;
  }
  i = i + 4U;
  goto ldv_51309;
  ldv_51308:
  tmp___6 = __fswab32(addr[0]);
  *((u32 *)(& eth_addr) + 2U) = tmp___6;
  tmp___7 = __fswab16((int )*((u16 *)(& addr) + 1U));
  *((u16 *)(& eth_addr)) = tmp___7;
  tmp___8 = is_valid_ether_addr((u8 const *)(& eth_addr));
  if ((int )tmp___8) {
    memcpy((void *)(& hw->perm_mac_addr), (void const *)(& eth_addr), 6UL);
    return (0);
  } else {
  }
  addr[0] = ioread32((void *)hw->hw_addr + 5256U);
  addr[1] = ioread16((void *)hw->hw_addr + 5260U);
  tmp___9 = __fswab32(addr[0]);
  *((u32 *)(& eth_addr) + 2U) = tmp___9;
  tmp___10 = __fswab16((int )*((u16 *)(& addr) + 1U));
  *((u16 *)(& eth_addr)) = tmp___10;
  tmp___11 = is_valid_ether_addr((u8 const *)(& eth_addr));
  if ((int )tmp___11) {
    memcpy((void *)(& hw->perm_mac_addr), (void const *)(& eth_addr), 6UL);
    return (0);
  } else {
  }
  return (1);
}
}
static s32 atl1_read_mac_addr(struct atl1_hw *hw )
{
  s32 ret ;
  u16 i ;
  int tmp ;
  {
  ret = 0;
  tmp = atl1_get_permanent_address(hw);
  if (tmp != 0) {
    eth_random_addr((u8 *)(& hw->perm_mac_addr));
    ret = 1;
  } else {
  }
  i = 0U;
  goto ldv_51316;
  ldv_51315:
  hw->mac_addr[(int )i] = hw->perm_mac_addr[(int )i];
  i = (u16 )((int )i + 1);
  ldv_51316: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_51315;
  } else {
  }
  return (ret);
}
}
static u32 atl1_hash_mc_addr(struct atl1_hw *hw , u8 *mc_addr )
{
  u32 crc32 ;
  u32 value ;
  int i ;
  {
  value = 0U;
  crc32 = crc32_le(4294967295U, (unsigned char const *)mc_addr, 6UL);
  i = 0;
  goto ldv_51326;
  ldv_51325:
  value = (((crc32 >> i) & 1U) << (31 - i)) | value;
  i = i + 1;
  ldv_51326: ;
  if (i <= 31) {
    goto ldv_51325;
  } else {
  }
  return (value);
}
}
static void atl1_hash_set(struct atl1_hw *hw , u32 hash_value )
{
  u32 hash_bit ;
  u32 hash_reg ;
  u32 mta ;
  {
  hash_reg = hash_value >> 31;
  hash_bit = (hash_value >> 26) & 31U;
  mta = ioread32((void *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 5264UL)));
  mta = (u32 )(1 << (int )hash_bit) | mta;
  iowrite32(mta, (void *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 5264UL)));
  return;
}
}
static s32 atl1_write_phy_reg(struct atl1_hw *hw , u32 reg_addr , u16 phy_data )
{
  int i ;
  u32 val ;
  {
  val = ((unsigned int )phy_data | ((reg_addr & 31U) << 16)) | 12582912U;
  iowrite32(val, (void *)hw->hw_addr + 5140U);
  ioread32((void *)hw->hw_addr + 5140U);
  i = 0;
  goto ldv_51344;
  ldv_51343:
  __const_udelay(8590UL);
  val = ioread32((void *)hw->hw_addr + 5140U);
  if ((val & 142606336U) == 0U) {
    goto ldv_51342;
  } else {
  }
  i = i + 1;
  ldv_51344: ;
  if (i <= 29) {
    goto ldv_51343;
  } else {
  }
  ldv_51342: ;
  if ((val & 142606336U) == 0U) {
    return (0);
  } else {
  }
  return (2);
}
}
static s32 atl1_phy_leave_power_saving(struct atl1_hw *hw )
{
  s32 ret ;
  s32 tmp ;
  {
  ret = atl1_write_phy_reg(hw, 29U, 41);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = atl1_write_phy_reg(hw, 30U, 0);
  return (tmp);
}
}
static s32 atl1_phy_reset(struct atl1_hw *hw )
{
  struct pci_dev *pdev ;
  struct atl1_adapter *adapter ;
  s32 ret_val ;
  u16 phy_data ;
  u32 val ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pdev = (hw->back)->pdev;
  adapter = hw->back;
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    phy_data = 36864U;
  } else {
    switch ((int )hw->media_type) {
    case 2:
    phy_data = 41216U;
    goto ldv_51357;
    case 3:
    phy_data = 40960U;
    goto ldv_51357;
    case 4:
    phy_data = 33024U;
    goto ldv_51357;
    default:
    phy_data = 32768U;
    goto ldv_51357;
    }
    ldv_51357: ;
  }
  ret_val = atl1_write_phy_reg(hw, 0U, (int )phy_data);
  if (ret_val != 0) {
    if ((adapter->msg_enable & 8192U) != 0U) {
      descriptor.modname = "atl1";
      descriptor.function = "atl1_phy_reset";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor.format = "pcie phy link down\n";
      descriptor.lineno = 689U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "pcie phy link down\n");
      } else {
      }
    } else {
    }
    i = 0;
    goto ldv_51367;
    ldv_51366:
    msleep(1U);
    val = ioread32((void *)hw->hw_addr + 5140U);
    if ((val & 142606336U) == 0U) {
      goto ldv_51365;
    } else {
    }
    i = i + 1;
    ldv_51367: ;
    if (i <= 24) {
      goto ldv_51366;
    } else {
    }
    ldv_51365: ;
    if ((val & 142606336U) != 0U) {
      if ((adapter->msg_enable & 8192U) != 0U) {
        dev_warn((struct device const *)(& pdev->dev), "pcie link down at least 25ms\n");
      } else {
      }
      return (ret_val);
    } else {
    }
  } else {
  }
  return (0);
}
}
static s32 atl1_phy_setup_autoneg_adv(struct atl1_hw *hw )
{
  s32 ret_val ;
  s16 mii_autoneg_adv_reg ;
  s16 mii_1000t_ctrl_reg ;
  {
  mii_autoneg_adv_reg = 3552;
  mii_1000t_ctrl_reg = 768;
  mii_autoneg_adv_reg = (int )mii_autoneg_adv_reg & -481;
  mii_1000t_ctrl_reg = (int )mii_1000t_ctrl_reg & -769;
  switch ((int )hw->media_type) {
  case 0:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 480);
  mii_1000t_ctrl_reg = (s16 )((int )mii_1000t_ctrl_reg | 512);
  goto ldv_51375;
  case 1:
  mii_1000t_ctrl_reg = (s16 )((int )mii_1000t_ctrl_reg | 512);
  goto ldv_51375;
  case 2:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 256);
  goto ldv_51375;
  case 3:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 128);
  goto ldv_51375;
  case 4:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 64);
  goto ldv_51375;
  default:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 32);
  goto ldv_51375;
  }
  ldv_51375:
  mii_autoneg_adv_reg = (s16 )((int )mii_autoneg_adv_reg | 3072);
  hw->mii_autoneg_adv_reg = (u16 )mii_autoneg_adv_reg;
  hw->mii_1000t_ctrl_reg = (u16 )mii_1000t_ctrl_reg;
  ret_val = atl1_write_phy_reg(hw, 4U, (int )((u16 )mii_autoneg_adv_reg));
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  ret_val = atl1_write_phy_reg(hw, 9U, (int )((u16 )mii_1000t_ctrl_reg));
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  return (0);
}
}
static s32 atl1_setup_link(struct atl1_hw *hw )
{
  struct pci_dev *pdev ;
  struct atl1_adapter *adapter ;
  s32 ret_val ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  pdev = (hw->back)->pdev;
  adapter = hw->back;
  ret_val = atl1_phy_setup_autoneg_adv(hw);
  if (ret_val != 0) {
    if ((adapter->msg_enable & 4U) != 0U) {
      descriptor.modname = "atl1";
      descriptor.function = "atl1_setup_link";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor.format = "error setting up autonegotiation\n";
      descriptor.lineno = 805U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "error setting up autonegotiation\n");
      } else {
      }
    } else {
    }
    return (ret_val);
  } else {
  }
  ret_val = atl1_phy_reset(hw);
  if (ret_val != 0) {
    if ((adapter->msg_enable & 4U) != 0U) {
      descriptor___0.modname = "atl1";
      descriptor___0.function = "atl1_setup_link";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor___0.format = "error resetting phy\n";
      descriptor___0.lineno = 812U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev),
                          "error resetting phy\n");
      } else {
      }
    } else {
    }
    return (ret_val);
  } else {
  }
  hw->phy_configured = 1;
  return (ret_val);
}
}
static void atl1_init_flash_opcode(struct atl1_hw *hw )
{
  {
  if ((unsigned int )hw->flash_vendor > 2U) {
    hw->flash_vendor = 0U;
  } else {
  }
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_program, (void *)hw->hw_addr + 528U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_sector_erase, (void *)hw->hw_addr + 529U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_chip_erase, (void *)hw->hw_addr + 530U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_rdid, (void *)hw->hw_addr + 531U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_wren, (void *)hw->hw_addr + 532U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_rdsr, (void *)hw->hw_addr + 533U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_wrsr, (void *)hw->hw_addr + 534U);
  iowrite8((int )flash_table[(int )hw->flash_vendor].cmd_read, (void *)hw->hw_addr + 535U);
  return;
}
}
static s32 atl1_init_hw(struct atl1_hw *hw )
{
  u32 ret_val ;
  s32 tmp ;
  s32 tmp___0 ;
  s32 tmp___1 ;
  {
  ret_val = 0U;
  iowrite32(0U, (void *)hw->hw_addr + 5264U);
  iowrite32(0U, (void *)hw->hw_addr + 5268U);
  atl1_init_flash_opcode(hw);
  if (! hw->phy_configured) {
    tmp = atl1_write_phy_reg(hw, 18U, 3072);
    ret_val = (u32 )tmp;
    if (ret_val != 0U) {
      return ((s32 )ret_val);
    } else {
    }
    tmp___0 = atl1_phy_leave_power_saving(hw);
    ret_val = (u32 )tmp___0;
    if (ret_val != 0U) {
      return ((s32 )ret_val);
    } else {
    }
    tmp___1 = atl1_setup_link(hw);
    ret_val = (u32 )tmp___1;
  } else {
  }
  return ((s32 )ret_val);
}
}
static s32 atl1_get_speed_and_duplex(struct atl1_hw *hw , u16 *speed , u16 *duplex )
{
  struct pci_dev *pdev ;
  struct atl1_adapter *adapter ;
  s32 ret_val ;
  u16 phy_data ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pdev = (hw->back)->pdev;
  adapter = hw->back;
  ret_val = atl1_read_phy_reg(hw, 17, & phy_data);
  if (ret_val != 0) {
    return (ret_val);
  } else {
  }
  if (((int )phy_data & 2048) == 0) {
    return (8);
  } else {
  }
  switch ((int )phy_data & 49152) {
  case 32768:
  *speed = 1000U;
  goto ldv_51409;
  case 16384:
  *speed = 100U;
  goto ldv_51409;
  case 0:
  *speed = 10U;
  goto ldv_51409;
  default: ;
  if ((adapter->msg_enable & 8192U) != 0U) {
    descriptor.modname = "atl1";
    descriptor.function = "atl1_get_speed_and_duplex";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
    descriptor.format = "error getting speed\n";
    descriptor.lineno = 911U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "error getting speed\n");
    } else {
    }
  } else {
  }
  return (7);
  }
  ldv_51409: ;
  if (((int )phy_data & 8192) != 0) {
    *duplex = 2U;
  } else {
    *duplex = 1U;
  }
  return (0);
}
}
static void atl1_set_mac_addr(struct atl1_hw *hw )
{
  u32 value ;
  {
  value = ((((unsigned int )hw->mac_addr[2] << 24) | ((unsigned int )hw->mac_addr[3] << 16)) | ((unsigned int )hw->mac_addr[4] << 8)) | (unsigned int )hw->mac_addr[5];
  iowrite32(value, (void *)hw->hw_addr + 5256U);
  value = ((unsigned int )hw->mac_addr[0] << 8) | (unsigned int )hw->mac_addr[1];
  iowrite32(value, (void *)hw->hw_addr + 5260U);
  return;
}
}
static int atl1_sw_init(struct atl1_adapter *adapter )
{
  struct atl1_hw *hw ;
  struct net_device *netdev ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  hw->max_frame_size = netdev->mtu + 22U;
  hw->min_frame_size = 64U;
  adapter->wol = 0U;
  device_set_wakeup_enable(& (adapter->pdev)->dev, 0);
  adapter->rx_buffer_len = (hw->max_frame_size + 7U) & 4294967288U;
  adapter->ict = 50000U;
  adapter->link_speed = 65535U;
  adapter->link_duplex = 2U;
  hw->phy_configured = 0;
  hw->preamble_len = 7U;
  hw->ipgt = 96U;
  hw->min_ifg = 80U;
  hw->ipgr1 = 64U;
  hw->ipgr2 = 96U;
  hw->max_retry = 15U;
  hw->lcol = 55U;
  hw->jam_ipg = 7U;
  hw->rfd_burst = 8U;
  hw->rrd_burst = 8U;
  hw->rfd_fetch_gap = 1U;
  hw->rx_jumbo_th = (u16 )(adapter->rx_buffer_len / 8U);
  hw->rx_jumbo_lkah = 1U;
  hw->rrd_ret_timer = 16U;
  hw->tpd_burst = 4U;
  hw->tpd_fetch_th = 16U;
  hw->txf_burst = 256U;
  hw->tx_jumbo_task_th = (u16 )((hw->max_frame_size + 7U) >> 3);
  hw->tpd_fetch_gap = 1U;
  hw->rcb_value = 0;
  hw->dma_ord = 2;
  hw->dmar_block = 1;
  hw->dmaw_block = 1;
  hw->cmb_rrd = 4U;
  hw->cmb_tpd = 4U;
  hw->cmb_rx_timer = 1U;
  hw->cmb_tx_timer = 1U;
  hw->smb_timer = 100000U;
  spinlock_check(& adapter->lock);
  __raw_spin_lock_init(& adapter->lock.__annonCompField18.rlock, "&(&adapter->lock)->rlock",
                       & __key);
  spinlock_check(& adapter->mb_lock);
  __raw_spin_lock_init(& adapter->mb_lock.__annonCompField18.rlock, "&(&adapter->mb_lock)->rlock",
                       & __key___0);
  return (0);
}
}
static int mdio_read(struct net_device *netdev , int phy_id , int reg_num )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  u16 result ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  atl1_read_phy_reg(& adapter->hw, (int )((u16 )reg_num) & 31, & result);
  return ((int )result);
}
}
static void mdio_write(struct net_device *netdev , int phy_id , int reg_num , int val )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  atl1_write_phy_reg(& adapter->hw, (u32 )reg_num, (int )((u16 )val));
  return;
}
}
static int atl1_mii_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  int retval ;
  bool tmp___0 ;
  int tmp___1 ;
  struct mii_ioctl_data *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-22);
  } else {
  }
  ldv_spin_lock();
  tmp___2 = if_mii(ifr);
  retval = generic_mii_ioctl(& adapter->mii, tmp___2, cmd, (unsigned int *)0U);
  spin_unlock_irqrestore(& adapter->lock, flags);
  return (retval);
}
}
static s32 atl1_setup_ring_resources(struct atl1_adapter *adapter )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_rfd_ring *rfd_ring ;
  struct atl1_rrd_ring *rrd_ring ;
  struct atl1_ring_header *ring_header ;
  struct pci_dev *pdev ;
  int size ;
  u8 offset ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tpd_ring = & adapter->tpd_ring;
  rfd_ring = & adapter->rfd_ring;
  rrd_ring = & adapter->rrd_ring;
  ring_header = & adapter->ring_header;
  pdev = adapter->pdev;
  offset = 0U;
  size = (int )((unsigned int )((int )tpd_ring->count + (int )rfd_ring->count) * 24U);
  tmp = kzalloc((size_t )size, 208U);
  tpd_ring->buffer_info = (struct atl1_buffer *)tmp;
  tmp___0 = ldv__builtin_expect((unsigned long )tpd_ring->buffer_info == (unsigned long )((struct atl1_buffer *)0),
                             0L);
  if (tmp___0 != 0L) {
    if ((int )adapter->msg_enable & 1) {
      dev_err((struct device const *)(& pdev->dev), "kzalloc failed , size = D%d\n",
              size);
    } else {
    }
    goto err_nomem;
  } else {
  }
  rfd_ring->buffer_info = tpd_ring->buffer_info + (unsigned long )tpd_ring->count;
  size = (int )((((unsigned int )tpd_ring->count * 16U + (unsigned int )rfd_ring->count * 12U) + (unsigned int )rrd_ring->count * 16U) + 252U);
  ring_header->size = (unsigned int )size;
  ring_header->desc = pci_alloc_consistent(pdev, (size_t )ring_header->size, & ring_header->dma);
  tmp___1 = ldv__builtin_expect((unsigned long )ring_header->desc == (unsigned long )((void *)0),
                             0L);
  if (tmp___1 != 0L) {
    if ((int )adapter->msg_enable & 1) {
      dev_err((struct device const *)(& pdev->dev), "pci_alloc_consistent failed\n");
    } else {
    }
    goto err_nomem;
  } else {
  }
  memset(ring_header->desc, 0, (size_t )ring_header->size);
  tpd_ring->dma = ring_header->dma;
  offset = (tpd_ring->dma & 7ULL) != 0ULL ? 8U - ((unsigned int )((u8 )ring_header->dma) & 7U) : 0U;
  tpd_ring->dma = tpd_ring->dma + (dma_addr_t )offset;
  tpd_ring->desc = ring_header->desc + (unsigned long )offset;
  tpd_ring->size = (unsigned int )tpd_ring->count * 16U;
  rfd_ring->dma = tpd_ring->dma + (dma_addr_t )tpd_ring->size;
  offset = (rfd_ring->dma & 7ULL) != 0ULL ? 8U - ((unsigned int )((u8 )rfd_ring->dma) & 7U) : 0U;
  rfd_ring->dma = rfd_ring->dma + (dma_addr_t )offset;
  rfd_ring->desc = tpd_ring->desc + (unsigned long )((int )tpd_ring->size + (int )offset);
  rfd_ring->size = (unsigned int )rfd_ring->count * 12U;
  rrd_ring->dma = rfd_ring->dma + (dma_addr_t )rfd_ring->size;
  offset = (rrd_ring->dma & 7ULL) != 0ULL ? 8U - ((unsigned int )((u8 )rrd_ring->dma) & 7U) : 0U;
  rrd_ring->dma = rrd_ring->dma + (dma_addr_t )offset;
  rrd_ring->desc = rfd_ring->desc + (unsigned long )((int )rfd_ring->size + (int )offset);
  rrd_ring->size = (unsigned int )rrd_ring->count * 16U;
  adapter->cmb.dma = rrd_ring->dma + (dma_addr_t )rrd_ring->size;
  offset = (adapter->cmb.dma & 7ULL) != 0ULL ? 8U - ((unsigned int )((u8 )adapter->cmb.dma) & 7U) : 0U;
  adapter->cmb.dma = adapter->cmb.dma + (dma_addr_t )offset;
  adapter->cmb.cmb = (struct coals_msg_block *)rrd_ring->desc + (unsigned long )(rrd_ring->size + (unsigned int )offset);
  adapter->smb.dma = adapter->cmb.dma + 12ULL;
  offset = (adapter->smb.dma & 7ULL) != 0ULL ? 8U - ((unsigned int )((u8 )adapter->smb.dma) & 7U) : 0U;
  adapter->smb.dma = adapter->smb.dma + (dma_addr_t )offset;
  adapter->smb.smb = (struct stats_msg_block *)adapter->cmb.cmb + ((unsigned long )offset + 12UL);
  return (0);
  err_nomem:
  kfree((void const *)tpd_ring->buffer_info);
  return (-12);
}
}
static void atl1_init_ring_ptrs(struct atl1_adapter *adapter )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_rfd_ring *rfd_ring ;
  struct atl1_rrd_ring *rrd_ring ;
  {
  tpd_ring = & adapter->tpd_ring;
  rfd_ring = & adapter->rfd_ring;
  rrd_ring = & adapter->rrd_ring;
  atomic_set(& tpd_ring->next_to_use, 0);
  atomic_set(& tpd_ring->next_to_clean, 0);
  rfd_ring->next_to_clean = 0U;
  atomic_set(& rfd_ring->next_to_use, 0);
  rrd_ring->next_to_use = 0U;
  atomic_set(& rrd_ring->next_to_clean, 0);
  return;
}
}
static void atl1_clean_rx_ring(struct atl1_adapter *adapter )
{
  struct atl1_rfd_ring *rfd_ring ;
  struct atl1_rrd_ring *rrd_ring ;
  struct atl1_buffer *buffer_info ;
  struct pci_dev *pdev ;
  unsigned long size ;
  unsigned int i ;
  {
  rfd_ring = & adapter->rfd_ring;
  rrd_ring = & adapter->rrd_ring;
  pdev = adapter->pdev;
  i = 0U;
  goto ldv_51475;
  ldv_51474:
  buffer_info = rfd_ring->buffer_info + (unsigned long )i;
  if (buffer_info->dma != 0ULL) {
    pci_unmap_page(pdev, buffer_info->dma, (size_t )buffer_info->length, 2);
    buffer_info->dma = 0ULL;
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    consume_skb(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
  } else {
  }
  i = i + 1U;
  ldv_51475: ;
  if ((unsigned int )rfd_ring->count > i) {
    goto ldv_51474;
  } else {
  }
  size = (unsigned long )rfd_ring->count * 24UL;
  memset((void *)rfd_ring->buffer_info, 0, size);
  memset(rfd_ring->desc, 0, (size_t )rfd_ring->size);
  rfd_ring->next_to_clean = 0U;
  atomic_set(& rfd_ring->next_to_use, 0);
  rrd_ring->next_to_use = 0U;
  atomic_set(& rrd_ring->next_to_clean, 0);
  return;
}
}
static void atl1_clean_tx_ring(struct atl1_adapter *adapter )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_buffer *buffer_info ;
  struct pci_dev *pdev ;
  unsigned long size ;
  unsigned int i ;
  {
  tpd_ring = & adapter->tpd_ring;
  pdev = adapter->pdev;
  i = 0U;
  goto ldv_51486;
  ldv_51485:
  buffer_info = tpd_ring->buffer_info + (unsigned long )i;
  if (buffer_info->dma != 0ULL) {
    pci_unmap_page(pdev, buffer_info->dma, (size_t )buffer_info->length, 1);
    buffer_info->dma = 0ULL;
  } else {
  }
  i = i + 1U;
  ldv_51486: ;
  if ((unsigned int )tpd_ring->count > i) {
    goto ldv_51485;
  } else {
  }
  i = 0U;
  goto ldv_51489;
  ldv_51488:
  buffer_info = tpd_ring->buffer_info + (unsigned long )i;
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
  } else {
  }
  i = i + 1U;
  ldv_51489: ;
  if ((unsigned int )tpd_ring->count > i) {
    goto ldv_51488;
  } else {
  }
  size = (unsigned long )tpd_ring->count * 24UL;
  memset((void *)tpd_ring->buffer_info, 0, size);
  memset(tpd_ring->desc, 0, (size_t )tpd_ring->size);
  atomic_set(& tpd_ring->next_to_use, 0);
  atomic_set(& tpd_ring->next_to_clean, 0);
  return;
}
}
static void atl1_free_ring_resources(struct atl1_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_rfd_ring *rfd_ring ;
  struct atl1_rrd_ring *rrd_ring ;
  struct atl1_ring_header *ring_header ;
  {
  pdev = adapter->pdev;
  tpd_ring = & adapter->tpd_ring;
  rfd_ring = & adapter->rfd_ring;
  rrd_ring = & adapter->rrd_ring;
  ring_header = & adapter->ring_header;
  atl1_clean_tx_ring(adapter);
  atl1_clean_rx_ring(adapter);
  kfree((void const *)tpd_ring->buffer_info);
  pci_free_consistent(pdev, (size_t )ring_header->size, ring_header->desc, ring_header->dma);
  tpd_ring->buffer_info = (struct atl1_buffer *)0;
  tpd_ring->desc = (void *)0;
  tpd_ring->dma = 0ULL;
  rfd_ring->buffer_info = (struct atl1_buffer *)0;
  rfd_ring->desc = (void *)0;
  rfd_ring->dma = 0ULL;
  rrd_ring->desc = (void *)0;
  rrd_ring->dma = 0ULL;
  adapter->cmb.dma = 0ULL;
  adapter->cmb.cmb = (struct coals_msg_block *)0;
  adapter->smb.dma = 0ULL;
  adapter->smb.smb = (struct stats_msg_block *)0;
  return;
}
}
static void atl1_setup_mac_ctrl(struct atl1_adapter *adapter )
{
  u32 value ;
  struct atl1_hw *hw ;
  struct net_device *netdev ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  value = 3U;
  if ((unsigned int )adapter->link_duplex == 2U) {
    value = value | 32U;
  } else {
  }
  value = ((unsigned int )adapter->link_speed == 1000U ? 2097152U : 1048576U) | value;
  value = value | 12U;
  value = value | 192U;
  value = (((unsigned int )adapter->hw.preamble_len & 15U) << 10) | value;
  __atlx_vlan_mode(netdev->features, & value);
  value = value | 67108864U;
  if ((netdev->flags & 256U) != 0U) {
    value = value | 32768U;
  } else
  if ((netdev->flags & 512U) != 0U) {
    value = value | 33554432U;
  } else {
  }
  iowrite32(value, (void *)hw->hw_addr + 5248U);
  return;
}
}
static u32 atl1_check_link(struct atl1_adapter *adapter )
{
  struct atl1_hw *hw ;
  struct net_device *netdev ;
  u32 ret_val ;
  u16 speed ;
  u16 duplex ;
  u16 phy_data ;
  int reconfig ;
  bool tmp ;
  s32 tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  unsigned long tmp___4 ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  reconfig = 0;
  atl1_read_phy_reg(hw, 1, & phy_data);
  atl1_read_phy_reg(hw, 1, & phy_data);
  if (((int )phy_data & 4) == 0) {
    tmp = netif_carrier_ok((struct net_device const *)netdev);
    if ((int )tmp) {
      if ((adapter->msg_enable & 4U) != 0U) {
        _dev_info((struct device const *)(& (adapter->pdev)->dev), "link is down\n");
      } else {
      }
      adapter->link_speed = 65535U;
      netif_carrier_off(netdev);
    } else {
    }
    return (0U);
  } else {
  }
  tmp___0 = atl1_get_speed_and_duplex(hw, & speed, & duplex);
  ret_val = (u32 )tmp___0;
  if (ret_val != 0U) {
    return (ret_val);
  } else {
  }
  switch ((int )hw->media_type) {
  case 1: ;
  if ((unsigned int )speed != 1000U || (unsigned int )duplex != 2U) {
    reconfig = 1;
  } else {
  }
  goto ldv_51516;
  case 2: ;
  if ((unsigned int )speed != 100U || (unsigned int )duplex != 2U) {
    reconfig = 1;
  } else {
  }
  goto ldv_51516;
  case 3: ;
  if ((unsigned int )speed != 100U || (unsigned int )duplex != 1U) {
    reconfig = 1;
  } else {
  }
  goto ldv_51516;
  case 4: ;
  if ((unsigned int )speed != 10U || (unsigned int )duplex != 2U) {
    reconfig = 1;
  } else {
  }
  goto ldv_51516;
  case 5: ;
  if ((unsigned int )speed != 10U || (unsigned int )duplex != 1U) {
    reconfig = 1;
  } else {
  }
  goto ldv_51516;
  }
  ldv_51516: ;
  if (reconfig == 0) {
    if ((int )adapter->link_speed != (int )speed || (int )adapter->link_duplex != (int )duplex) {
      adapter->link_speed = speed;
      adapter->link_duplex = duplex;
      atl1_setup_mac_ctrl(adapter);
      if ((adapter->msg_enable & 4U) != 0U) {
        _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s link is up %d Mbps %s\n",
                  (char *)(& netdev->name), (int )adapter->link_speed, (unsigned int )adapter->link_duplex == 2U ? (char *)"full duplex" : (char *)"half duplex");
      } else {
      }
    } else {
    }
    tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      netif_carrier_on(netdev);
    } else {
    }
    return (0U);
  } else {
  }
  tmp___3 = netif_carrier_ok((struct net_device const *)netdev);
  if ((int )tmp___3) {
    adapter->link_speed = 65535U;
    netif_carrier_off(netdev);
    netif_stop_queue(netdev);
  } else {
  }
  if ((unsigned int )hw->media_type != 0U && (unsigned int )hw->media_type != 1U) {
    switch ((int )hw->media_type) {
    case 2:
    phy_data = 41216U;
    goto ldv_51522;
    case 3:
    phy_data = 40960U;
    goto ldv_51522;
    case 4:
    phy_data = 33024U;
    goto ldv_51522;
    default:
    phy_data = 32768U;
    goto ldv_51522;
    }
    ldv_51522:
    atl1_write_phy_reg(hw, 0U, (int )phy_data);
    return (0U);
  } else {
  }
  if (! adapter->phy_timer_pending) {
    adapter->phy_timer_pending = 1;
    tmp___4 = round_jiffies((unsigned long )jiffies + 750UL);
    ldv_mod_timer_43(& adapter->phy_config_timer, tmp___4);
  } else {
  }
  return (0U);
}
}
static void set_flow_ctrl_old(struct atl1_adapter *adapter )
{
  u32 hi ;
  u32 lo ;
  u32 value ;
  {
  value = (u32 )adapter->rfd_ring.count;
  hi = value / 16U;
  if (hi <= 1U) {
    hi = 2U;
  } else {
  }
  lo = (value * 7U) / 8U;
  value = ((hi & 4095U) << 16) | (lo & 4095U);
  iowrite32(value, (void *)adapter->hw.hw_addr + 5544U);
  value = (u32 )adapter->rrd_ring.count;
  lo = value / 16U;
  hi = (value * 7U) / 8U;
  if (lo <= 1U) {
    lo = 2U;
  } else {
  }
  value = (hi & 4095U) | ((lo & 4095U) << 16);
  iowrite32(value, (void *)adapter->hw.hw_addr + 5548U);
  return;
}
}
static void set_flow_ctrl_new(struct atl1_hw *hw )
{
  u32 hi ;
  u32 lo ;
  u32 value ;
  {
  value = ioread32((void *)hw->hw_addr + 5412U);
  lo = value / 16U;
  if (lo <= 191U) {
    lo = 192U;
  } else {
  }
  hi = (value * 7U) / 8U;
  if (hi < lo) {
    hi = lo + 16U;
  } else {
  }
  value = ((hi & 4095U) << 16) | (lo & 4095U);
  iowrite32(value, (void *)hw->hw_addr + 5544U);
  value = ioread32((void *)hw->hw_addr + 5388U);
  lo = value / 8U;
  hi = (value * 7U) / 8U;
  if (lo <= 1U) {
    lo = 2U;
  } else {
  }
  if (hi < lo) {
    hi = lo + 3U;
  } else {
  }
  value = (hi & 4095U) | ((lo & 4095U) << 16);
  iowrite32(value, (void *)hw->hw_addr + 5548U);
  return;
}
}
static u32 atl1_configure(struct atl1_adapter *adapter )
{
  struct atl1_hw *hw ;
  u32 value ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  hw = & adapter->hw;
  iowrite32(4294967295U, (void *)adapter->hw.hw_addr + 5632U);
  value = ((((unsigned int )hw->mac_addr[2] << 24) | ((unsigned int )hw->mac_addr[3] << 16)) | ((unsigned int )hw->mac_addr[4] << 8)) | (unsigned int )hw->mac_addr[5];
  iowrite32(value, (void *)hw->hw_addr + 5256U);
  value = ((unsigned int )hw->mac_addr[0] << 8) | (unsigned int )hw->mac_addr[1];
  iowrite32(value, (void *)hw->hw_addr + 5260U);
  iowrite32((unsigned int )(adapter->tpd_ring.dma >> 32), (void *)hw->hw_addr + 5440U);
  iowrite32((unsigned int )adapter->rfd_ring.dma, (void *)hw->hw_addr + 5444U);
  iowrite32((unsigned int )adapter->rrd_ring.dma, (void *)hw->hw_addr + 5448U);
  iowrite32((unsigned int )adapter->tpd_ring.dma, (void *)hw->hw_addr + 5452U);
  iowrite32((unsigned int )adapter->cmb.dma, (void *)hw->hw_addr + 5456U);
  iowrite32((unsigned int )adapter->smb.dma, (void *)hw->hw_addr + 5460U);
  value = (u32 )adapter->rrd_ring.count;
  value = value << 16;
  value = (u32 )adapter->rfd_ring.count + value;
  iowrite32(value, (void *)hw->hw_addr + 5464U);
  iowrite32((u32 )adapter->tpd_ring.count, (void *)hw->hw_addr + 5468U);
  iowrite32(1U, (void *)hw->hw_addr + 5428U);
  tmp = atomic_read((atomic_t const *)(& adapter->tpd_ring.next_to_use));
  tmp___0 = atomic_read((atomic_t const *)(& adapter->rrd_ring.next_to_clean));
  tmp___1 = atomic_read((atomic_t const *)(& adapter->rfd_ring.next_to_use));
  value = (u32 )(((tmp << 22) | ((tmp___0 & 2047) << 11)) | (tmp___1 & 2047));
  iowrite32(value, (void *)hw->hw_addr + 5616U);
  value = ((((unsigned int )hw->ipgt & 127U) | ((unsigned int )hw->min_ifg << 8)) | (((unsigned int )hw->ipgr1 & 127U) << 16)) | (((unsigned int )hw->ipgr2 & 127U) << 24);
  iowrite32(value, (void *)hw->hw_addr + 5252U);
  value = ((((unsigned int )hw->lcol & 1023U) | (((unsigned int )hw->max_retry << 12) & 65535U)) | (((unsigned int )hw->jam_ipg & 15U) << 24)) | 10551296U;
  iowrite32(value, (void *)hw->hw_addr + 5272U);
  iowrite16((int )adapter->imt, (void *)hw->hw_addr + 5128U);
  iowrite32(4U, (void *)hw->hw_addr + 5120U);
  iowrite16((int )adapter->ict, (void *)hw->hw_addr + 5134U);
  iowrite32(hw->max_frame_size, (void *)hw->hw_addr + 5276U);
  value = (((unsigned int )hw->rx_jumbo_th & 2047U) | (((unsigned int )hw->rx_jumbo_lkah & 15U) << 11)) | ((unsigned int )hw->rrd_ret_timer << 16);
  iowrite32(value, (void *)hw->hw_addr + 5540U);
  switch ((int )hw->dev_rev) {
  case 32769: ;
  case 36865: ;
  case 36866: ;
  case 36867:
  set_flow_ctrl_old(adapter);
  goto ldv_51547;
  default:
  set_flow_ctrl_new(hw);
  goto ldv_51547;
  }
  ldv_51547:
  value = ((((unsigned int )hw->tpd_burst & 31U) | ((unsigned int )hw->txf_burst << 16)) | (((unsigned int )hw->tpd_fetch_th & 63U) << 8)) | 96U;
  iowrite32(value, (void *)hw->hw_addr + 5504U);
  value = ((unsigned int )hw->tx_jumbo_task_th & 2047U) | (((unsigned int )hw->tpd_fetch_gap & 31U) << 16);
  iowrite32(value, (void *)hw->hw_addr + 5508U);
  value = (((unsigned int )hw->rfd_burst | ((unsigned int )hw->rrd_burst << 8)) | (((unsigned int )hw->rfd_fetch_gap & 31U) << 16)) | 3221225472U;
  iowrite32(value, (void *)hw->hw_addr + 5536U);
  value = ((((unsigned int )hw->dmar_block & 7U) << 4) | (((unsigned int )hw->dmaw_block & 7U) << 7)) | 3072U;
  value = (u32 )hw->dma_ord | value;
  if ((unsigned int )hw->rcb_value == 1U) {
    value = value | 8U;
  } else {
  }
  iowrite32(value, (void *)hw->hw_addr + 5568U);
  value = (u32 )((int )hw->cmb_tpd > (int )adapter->tpd_ring.count ? hw->cmb_tpd : adapter->tpd_ring.count);
  value = value << 16;
  value = (u32 )hw->cmb_rrd | value;
  iowrite32(value, (void *)hw->hw_addr + 5588U);
  value = (unsigned int )hw->cmb_rx_timer | ((unsigned int )hw->cmb_tx_timer << 16);
  iowrite32(value, (void *)hw->hw_addr + 5592U);
  iowrite32(hw->smb_timer, (void *)hw->hw_addr + 5604U);
  value = 12U;
  iowrite32(value, (void *)hw->hw_addr + 5584U);
  value = ioread32((void *)adapter->hw.hw_addr + 5632U);
  tmp___2 = ldv__builtin_expect((value & 268435456U) != 0U, 0L);
  if (tmp___2 != 0L) {
    value = 1U;
  } else {
    value = 0U;
  }
  iowrite32(1073741823U, (void *)adapter->hw.hw_addr + 5632U);
  iowrite32(0U, (void *)adapter->hw.hw_addr + 5632U);
  return (value);
}
}
static void atl1_pcie_patch(struct atl1_adapter *adapter )
{
  u32 value ;
  {
  value = 25856U;
  iowrite32(value, (void *)adapter->hw.hw_addr + 4860U);
  value = ioread32((void *)adapter->hw.hw_addr + 4104U);
  value = value | 32768U;
  iowrite32(value, (void *)adapter->hw.hw_addr + 4104U);
  return;
}
}
static void atl1_via_workaround(struct atl1_adapter *adapter )
{
  unsigned long value ;
  unsigned int tmp ;
  {
  tmp = ioread16((void *)adapter->hw.hw_addr + 4U);
  value = (unsigned long )tmp;
  if ((value & 1024UL) != 0UL) {
    value = value & 0xfffffffffffffbffUL;
  } else {
  }
  iowrite32((u32 )value, (void *)adapter->hw.hw_addr + 4U);
  return;
}
}
static void atl1_inc_smb(struct atl1_adapter *adapter )
{
  struct net_device *netdev ;
  struct stats_msg_block *smb ;
  u64 new_rx_errors ;
  u64 new_tx_errors ;
  {
  netdev = adapter->netdev;
  smb = adapter->smb.smb;
  new_rx_errors = (u64 )((((((smb->rx_frag + smb->rx_fcs_err) + smb->rx_len_err) + smb->rx_sz_ov) + smb->rx_rxf_ov) + smb->rx_rrd_ov) + smb->rx_align_err);
  new_tx_errors = (u64 )(((smb->tx_late_col + smb->tx_abort_col) + smb->tx_underrun) + smb->tx_trunc);
  adapter->soft_stats.rx_packets = adapter->soft_stats.rx_packets + ((u64 )smb->rx_ok + new_rx_errors);
  adapter->soft_stats.tx_packets = adapter->soft_stats.tx_packets + ((u64 )smb->tx_ok + new_tx_errors);
  adapter->soft_stats.rx_bytes = adapter->soft_stats.rx_bytes + (u64 )smb->rx_byte_cnt;
  adapter->soft_stats.tx_bytes = adapter->soft_stats.tx_bytes + (u64 )smb->tx_byte_cnt;
  adapter->soft_stats.multicast = adapter->soft_stats.multicast + (u64 )smb->rx_mcast;
  adapter->soft_stats.collisions = adapter->soft_stats.collisions + (u64 )(((smb->tx_1_col + smb->tx_2_col) + smb->tx_late_col) + smb->tx_abort_col);
  adapter->soft_stats.rx_errors = adapter->soft_stats.rx_errors + new_rx_errors;
  adapter->soft_stats.rx_fifo_errors = adapter->soft_stats.rx_fifo_errors + (u64 )smb->rx_rxf_ov;
  adapter->soft_stats.rx_length_errors = adapter->soft_stats.rx_length_errors + (u64 )smb->rx_len_err;
  adapter->soft_stats.rx_crc_errors = adapter->soft_stats.rx_crc_errors + (u64 )smb->rx_fcs_err;
  adapter->soft_stats.rx_frame_errors = adapter->soft_stats.rx_frame_errors + (u64 )smb->rx_align_err;
  adapter->soft_stats.rx_pause = adapter->soft_stats.rx_pause + (u64 )smb->rx_pause;
  adapter->soft_stats.rx_rrd_ov = adapter->soft_stats.rx_rrd_ov + (u64 )smb->rx_rrd_ov;
  adapter->soft_stats.rx_trunc = adapter->soft_stats.rx_trunc + (u64 )smb->rx_sz_ov;
  adapter->soft_stats.tx_errors = adapter->soft_stats.tx_errors + new_tx_errors;
  adapter->soft_stats.tx_fifo_errors = adapter->soft_stats.tx_fifo_errors + (u64 )smb->tx_underrun;
  adapter->soft_stats.tx_aborted_errors = adapter->soft_stats.tx_aborted_errors + (u64 )smb->tx_abort_col;
  adapter->soft_stats.tx_window_errors = adapter->soft_stats.tx_window_errors + (u64 )smb->tx_late_col;
  adapter->soft_stats.excecol = adapter->soft_stats.excecol + (u64 )smb->tx_abort_col;
  adapter->soft_stats.deffer = adapter->soft_stats.deffer + (u64 )smb->tx_defer;
  adapter->soft_stats.scc = adapter->soft_stats.scc + (u64 )smb->tx_1_col;
  adapter->soft_stats.mcc = adapter->soft_stats.mcc + (u64 )smb->tx_2_col;
  adapter->soft_stats.latecol = adapter->soft_stats.latecol + (u64 )smb->tx_late_col;
  adapter->soft_stats.tx_underun = adapter->soft_stats.tx_underun + (u64 )smb->tx_underrun;
  adapter->soft_stats.tx_trunc = adapter->soft_stats.tx_trunc + (u64 )smb->tx_trunc;
  adapter->soft_stats.tx_pause = adapter->soft_stats.tx_pause + (u64 )smb->tx_pause;
  netdev->stats.rx_bytes = (unsigned long )adapter->soft_stats.rx_bytes;
  netdev->stats.tx_bytes = (unsigned long )adapter->soft_stats.tx_bytes;
  netdev->stats.multicast = (unsigned long )adapter->soft_stats.multicast;
  netdev->stats.collisions = (unsigned long )adapter->soft_stats.collisions;
  netdev->stats.rx_errors = (unsigned long )adapter->soft_stats.rx_errors;
  netdev->stats.rx_length_errors = (unsigned long )adapter->soft_stats.rx_length_errors;
  netdev->stats.rx_crc_errors = (unsigned long )adapter->soft_stats.rx_crc_errors;
  netdev->stats.rx_frame_errors = (unsigned long )adapter->soft_stats.rx_frame_errors;
  netdev->stats.rx_fifo_errors = (unsigned long )adapter->soft_stats.rx_fifo_errors;
  netdev->stats.rx_dropped = (unsigned long )adapter->soft_stats.rx_rrd_ov;
  netdev->stats.tx_errors = (unsigned long )adapter->soft_stats.tx_errors;
  netdev->stats.tx_fifo_errors = (unsigned long )adapter->soft_stats.tx_fifo_errors;
  netdev->stats.tx_aborted_errors = (unsigned long )adapter->soft_stats.tx_aborted_errors;
  netdev->stats.tx_window_errors = (unsigned long )adapter->soft_stats.tx_window_errors;
  netdev->stats.tx_carrier_errors = (unsigned long )adapter->soft_stats.tx_carrier_errors;
  netdev->stats.rx_packets = (unsigned long )adapter->soft_stats.rx_packets;
  netdev->stats.tx_packets = (unsigned long )adapter->soft_stats.tx_packets;
  return;
}
}
static void atl1_update_mailbox(struct atl1_adapter *adapter )
{
  unsigned long flags ;
  u32 tpd_next_to_use ;
  u32 rfd_next_to_use ;
  u32 rrd_next_to_clean ;
  u32 value ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_spin_lock();
  tmp = atomic_read((atomic_t const *)(& adapter->tpd_ring.next_to_use));
  tpd_next_to_use = (u32 )tmp;
  tmp___0 = atomic_read((atomic_t const *)(& adapter->rfd_ring.next_to_use));
  rfd_next_to_use = (u32 )tmp___0;
  tmp___1 = atomic_read((atomic_t const *)(& adapter->rrd_ring.next_to_clean));
  rrd_next_to_clean = (u32 )tmp___1;
  value = ((rfd_next_to_use & 2047U) | ((rrd_next_to_clean & 2047U) << 11)) | (tpd_next_to_use << 22);
  iowrite32(value, (void *)adapter->hw.hw_addr + 5616U);
  spin_unlock_irqrestore(& adapter->mb_lock, flags);
  return;
}
}
static void atl1_clean_alloc_flag(struct atl1_adapter *adapter , struct rx_return_desc *rrd ,
                                  u16 offset )
{
  struct atl1_rfd_ring *rfd_ring ;
  {
  rfd_ring = & adapter->rfd_ring;
  goto ldv_51579;
  ldv_51578:
  (rfd_ring->buffer_info + (unsigned long )rfd_ring->next_to_clean)->alloced = 0U;
  rfd_ring->next_to_clean = (u16 )((int )rfd_ring->next_to_clean + 1);
  if ((int )rfd_ring->next_to_clean == (int )rfd_ring->count) {
    rfd_ring->next_to_clean = 0U;
  } else {
  }
  ldv_51579: ;
  if ((int )rfd_ring->next_to_clean != (int )rrd->buf_indx + (int )offset) {
    goto ldv_51578;
  } else {
  }
  return;
}
}
static void atl1_update_rfd_index(struct atl1_adapter *adapter , struct rx_return_desc *rrd )
{
  u16 num_buf ;
  {
  num_buf = (u16 )((((u32 )rrd->xsz.xsum_sz.pkt_size + adapter->rx_buffer_len) - 1U) / adapter->rx_buffer_len);
  if ((int )((unsigned short )rrd->num_buf) == (int )num_buf) {
    atl1_clean_alloc_flag(adapter, rrd, (int )num_buf);
  } else {
  }
  return;
}
}
static void atl1_rx_checksum(struct atl1_adapter *adapter , struct rx_return_desc *rrd ,
                             struct sk_buff *skb )
{
  struct pci_dev *pdev ;
  long tmp ;
  long tmp___0 ;
  {
  pdev = adapter->pdev;
  skb_checksum_none_assert((struct sk_buff const *)skb);
  tmp = ldv__builtin_expect(((int )rrd->pkt_flg & 512) != 0, 0L);
  if (tmp != 0L) {
    if (((int )rrd->err_flg & 51) != 0) {
      adapter->hw_csum_err = adapter->hw_csum_err + 1ULL;
      if ((adapter->msg_enable & 64U) != 0U) {
        dev_printk("\017", (struct device const *)(& pdev->dev), "rx checksum error\n");
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  if (((int )rrd->pkt_flg & 1024) == 0) {
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(((int )rrd->err_flg & 192) == 0, 1L);
  if (tmp___0 != 0L) {
    skb->ip_summed = 1U;
    adapter->hw_csum_good = adapter->hw_csum_good + 1ULL;
    return;
  } else {
  }
  return;
}
}
static u16 atl1_alloc_rx_buffers(struct atl1_adapter *adapter )
{
  struct atl1_rfd_ring *rfd_ring ;
  struct pci_dev *pdev ;
  struct page *page ;
  unsigned long offset ;
  struct atl1_buffer *buffer_info ;
  struct atl1_buffer *next_info ;
  struct sk_buff *skb ;
  u16 num_alloc ;
  u16 rfd_next_to_use ;
  u16 next_next ;
  struct rx_free_desc *rfd_desc ;
  int tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  long tmp___2 ;
  {
  rfd_ring = & adapter->rfd_ring;
  pdev = adapter->pdev;
  num_alloc = 0U;
  tmp = atomic_read((atomic_t const *)(& rfd_ring->next_to_use));
  rfd_next_to_use = (u16 )tmp;
  next_next = rfd_next_to_use;
  next_next = (u16 )((int )next_next + 1);
  if ((int )next_next == (int )rfd_ring->count) {
    next_next = 0U;
  } else {
  }
  buffer_info = rfd_ring->buffer_info + (unsigned long )rfd_next_to_use;
  next_info = rfd_ring->buffer_info + (unsigned long )next_next;
  goto ldv_51609;
  ldv_51608: ;
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    buffer_info->alloced = 1U;
    goto next;
  } else {
  }
  rfd_desc = (struct rx_free_desc *)rfd_ring->desc + (unsigned long )rfd_next_to_use;
  skb = netdev_alloc_skb_ip_align(adapter->netdev, adapter->rx_buffer_len);
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    adapter->soft_stats.rx_dropped = adapter->soft_stats.rx_dropped + 1ULL;
    goto ldv_51607;
  } else {
  }
  buffer_info->alloced = 1U;
  buffer_info->skb = skb;
  buffer_info->length = (unsigned short )adapter->rx_buffer_len;
  tmp___1 = __phys_addr((unsigned long )skb->data);
  page = (struct page *)-24189255811072L + (tmp___1 >> 12);
  offset = (unsigned long )skb->data & 4095UL;
  buffer_info->dma = pci_map_page(pdev, page, offset, (size_t )adapter->rx_buffer_len,
                                  2);
  rfd_desc->buffer_addr = buffer_info->dma;
  rfd_desc->buf_len = (unsigned short )adapter->rx_buffer_len;
  rfd_desc->coalese = 0U;
  next:
  rfd_next_to_use = next_next;
  next_next = (u16 )((int )next_next + 1);
  tmp___2 = ldv__builtin_expect((int )next_next == (int )rfd_ring->count, 0L);
  if (tmp___2 != 0L) {
    next_next = 0U;
  } else {
  }
  buffer_info = rfd_ring->buffer_info + (unsigned long )rfd_next_to_use;
  next_info = rfd_ring->buffer_info + (unsigned long )next_next;
  num_alloc = (u16 )((int )num_alloc + 1);
  ldv_51609: ;
  if ((unsigned int )buffer_info->alloced == 0U && (unsigned int )next_info->alloced == 0U) {
    goto ldv_51608;
  } else {
  }
  ldv_51607: ;
  if ((unsigned int )num_alloc != 0U) {
    __asm__ volatile ("sfence": : : "memory");
    atomic_set(& rfd_ring->next_to_use, (int )rfd_next_to_use);
  } else {
  }
  return (num_alloc);
}
}
static int atl1_intr_rx(struct atl1_adapter *adapter , int budget )
{
  int i ;
  int count ;
  u16 length ;
  u16 rrd_next_to_clean ;
  u32 value ;
  struct atl1_rfd_ring *rfd_ring ;
  struct atl1_rrd_ring *rrd_ring ;
  struct atl1_buffer *buffer_info ;
  struct rx_return_desc *rrd ;
  struct sk_buff *skb ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  u16 vlan_tag ;
  u32 tpd_next_to_use ;
  u32 rfd_next_to_use ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  rfd_ring = & adapter->rfd_ring;
  rrd_ring = & adapter->rrd_ring;
  count = 0;
  tmp = atomic_read((atomic_t const *)(& rrd_ring->next_to_clean));
  rrd_next_to_clean = (u16 )tmp;
  goto ldv_51626;
  ldv_51629:
  rrd = (struct rx_return_desc *)rrd_ring->desc + (unsigned long )rrd_next_to_clean;
  i = 1;
  tmp___3 = ldv__builtin_expect(rrd->xsz.valid != 0U, 1L);
  if (tmp___3 != 0L) {
    chk_rrd:
    tmp___0 = ldv__builtin_expect((unsigned int )rrd->num_buf == 1U, 1L);
    if (tmp___0 != 0L) {
      goto rrd_ok;
    } else
    if ((adapter->msg_enable & 64U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "unexpected RRD buffer count\n");
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "rx_buf_len = %d\n",
                 adapter->rx_buffer_len);
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "RRD num_buf = %d\n",
                 (int )rrd->num_buf);
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "RRD pkt_len = %d\n",
                 (int )rrd->xsz.xsum_sz.pkt_size);
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "RRD pkt_flg = 0x%08X\n",
                 (int )rrd->pkt_flg);
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "RRD err_flg = 0x%08X\n",
                 (int )rrd->err_flg);
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "RRD vlan_tag = 0x%08X\n",
                 (int )rrd->vlan_tag);
    } else {
    }
    tmp___1 = i;
    i = i - 1;
    tmp___2 = ldv__builtin_expect(tmp___1 > 0, 0L);
    if (tmp___2 != 0L) {
      __const_udelay(4295UL);
      goto chk_rrd;
    } else {
    }
    if ((adapter->msg_enable & 64U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "bad RRD\n");
    } else {
    }
    if ((unsigned int )rrd->num_buf > 1U) {
      atl1_update_rfd_index(adapter, rrd);
    } else {
    }
    rrd->xsz.valid = 0U;
    rrd_next_to_clean = (u16 )((int )rrd_next_to_clean + 1);
    if ((int )rrd_next_to_clean == (int )rrd_ring->count) {
      rrd_next_to_clean = 0U;
    } else {
    }
    count = count + 1;
    goto ldv_51626;
  } else {
    goto ldv_51627;
  }
  rrd_ok:
  atl1_clean_alloc_flag(adapter, rrd, 0);
  buffer_info = rfd_ring->buffer_info + (unsigned long )rrd->buf_indx;
  rfd_ring->next_to_clean = (u16 )((int )rfd_ring->next_to_clean + 1);
  if ((int )rfd_ring->next_to_clean == (int )rfd_ring->count) {
    rfd_ring->next_to_clean = 0U;
  } else {
  }
  rrd_next_to_clean = (u16 )((int )rrd_next_to_clean + 1);
  if ((int )rrd_next_to_clean == (int )rrd_ring->count) {
    rrd_next_to_clean = 0U;
  } else {
  }
  count = count + 1;
  tmp___4 = ldv__builtin_expect(((int )rrd->pkt_flg & 512) != 0, 0L);
  if (tmp___4 != 0L) {
    if (((int )rrd->err_flg & 448) == 0) {
      buffer_info->alloced = 0U;
      rrd->xsz.valid = 0U;
      goto ldv_51626;
    } else {
    }
  } else {
  }
  pci_unmap_page(adapter->pdev, buffer_info->dma, (size_t )buffer_info->length, 2);
  buffer_info->dma = 0ULL;
  skb = buffer_info->skb;
  length = rrd->xsz.xsum_sz.pkt_size;
  skb_put(skb, (unsigned int )((int )length + -4));
  atl1_rx_checksum(adapter, rrd, skb);
  skb->protocol = eth_type_trans(skb, adapter->netdev);
  if (((int )rrd->pkt_flg & 256) != 0) {
    vlan_tag = (u16 )(((int )((short )((int )rrd->vlan_tag >> 4)) | (int )((short )((int )rrd->vlan_tag << 13))) | (int )((short )(((int )rrd->vlan_tag & 8) << 9)));
    __vlan_hwaccel_put_tag(skb, 129, (int )vlan_tag);
  } else {
  }
  netif_receive_skb(skb);
  buffer_info->skb = (struct sk_buff *)0;
  buffer_info->alloced = 0U;
  rrd->xsz.valid = 0U;
  ldv_51626: ;
  if (count < budget) {
    goto ldv_51629;
  } else {
  }
  ldv_51627:
  atomic_set(& rrd_ring->next_to_clean, (int )rrd_next_to_clean);
  atl1_alloc_rx_buffers(adapter);
  if (count != 0) {
    spin_lock(& adapter->mb_lock);
    tmp___5 = atomic_read((atomic_t const *)(& adapter->tpd_ring.next_to_use));
    tpd_next_to_use = (u32 )tmp___5;
    tmp___6 = atomic_read((atomic_t const *)(& adapter->rfd_ring.next_to_use));
    rfd_next_to_use = (u32 )tmp___6;
    tmp___7 = atomic_read((atomic_t const *)(& adapter->rrd_ring.next_to_clean));
    rrd_next_to_clean = (u16 )tmp___7;
    value = ((rfd_next_to_use & 2047U) | (u32 )(((int )rrd_next_to_clean & 2047) << 11)) | (tpd_next_to_use << 22);
    iowrite32(value, (void *)adapter->hw.hw_addr + 5616U);
    spin_unlock(& adapter->mb_lock);
  } else {
  }
  return (count);
}
}
static int atl1_intr_tx(struct atl1_adapter *adapter )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_buffer *buffer_info ;
  u16 sw_tpd_next_to_clean ;
  u16 cmb_tpd_next_to_clean ;
  int count ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tpd_ring = & adapter->tpd_ring;
  count = 0;
  tmp = atomic_read((atomic_t const *)(& tpd_ring->next_to_clean));
  sw_tpd_next_to_clean = (u16 )tmp;
  cmb_tpd_next_to_clean = (adapter->cmb.cmb)->tpd_cons_idx;
  goto ldv_51641;
  ldv_51640:
  buffer_info = tpd_ring->buffer_info + (unsigned long )sw_tpd_next_to_clean;
  if (buffer_info->dma != 0ULL) {
    pci_unmap_page(adapter->pdev, buffer_info->dma, (size_t )buffer_info->length,
                   1);
    buffer_info->dma = 0ULL;
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_irq(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
  } else {
  }
  sw_tpd_next_to_clean = (u16 )((int )sw_tpd_next_to_clean + 1);
  if ((int )sw_tpd_next_to_clean == (int )tpd_ring->count) {
    sw_tpd_next_to_clean = 0U;
  } else {
  }
  count = count + 1;
  ldv_51641: ;
  if ((int )cmb_tpd_next_to_clean != (int )sw_tpd_next_to_clean) {
    goto ldv_51640;
  } else {
  }
  atomic_set(& tpd_ring->next_to_clean, (int )sw_tpd_next_to_clean);
  tmp___0 = netif_queue_stopped((struct net_device const *)adapter->netdev);
  if ((int )tmp___0) {
    tmp___1 = netif_carrier_ok((struct net_device const *)adapter->netdev);
    if ((int )tmp___1) {
      netif_wake_queue(adapter->netdev);
    } else {
    }
  } else {
  }
  return (count);
}
}
static u16 atl1_tpd_avail(struct atl1_tpd_ring *tpd_ring )
{
  u16 next_to_clean ;
  int tmp ;
  u16 next_to_use ;
  int tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& tpd_ring->next_to_clean));
  next_to_clean = (u16 )tmp;
  tmp___0 = atomic_read((atomic_t const *)(& tpd_ring->next_to_use));
  next_to_use = (u16 )tmp___0;
  return ((int )next_to_clean > (int )next_to_use ? (unsigned int )((int )next_to_clean - (int )next_to_use) + 65535U : (unsigned int )(((int )tpd_ring->count + (int )next_to_clean) - (int )next_to_use) + 65535U);
}
}
static int atl1_tso(struct atl1_adapter *adapter , struct sk_buff *skb , struct tx_packet_desc *ptpd )
{
  u8 hdr_len ;
  u8 ip_off ;
  u32 real_len ;
  int err ;
  struct iphdr *iph ;
  struct iphdr *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  struct tcphdr *tmp___3 ;
  unsigned int tmp___4 ;
  __sum16 tmp___5 ;
  unsigned int tmp___6 ;
  struct tcphdr *tmp___7 ;
  __sum16 tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned int tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  {
  tmp___12 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___12)->gso_size != 0U) {
    err = skb_cow_head(skb, 0U);
    if (err < 0) {
      return (err);
    } else {
    }
    if ((unsigned int )skb->protocol == 8U) {
      tmp = ip_hdr((struct sk_buff const *)skb);
      iph = tmp;
      tmp___0 = __fswab16((int )iph->tot_len);
      real_len = ((u32 )((long )iph) - (u32 )((long )skb->data)) + (u32 )tmp___0;
      if (skb->len > real_len) {
        pskb_trim(skb, real_len);
      } else {
      }
      tmp___1 = skb_transport_offset((struct sk_buff const *)skb);
      tmp___2 = tcp_hdrlen((struct sk_buff const *)skb);
      hdr_len = (int )((u8 )tmp___1) + (int )((u8 )tmp___2);
      if (skb->len == (unsigned int )hdr_len) {
        iph->check = 0U;
        tmp___3 = tcp_hdr((struct sk_buff const *)skb);
        tmp___4 = tcp_hdrlen((struct sk_buff const *)skb);
        tmp___5 = csum_tcpudp_magic(iph->saddr, iph->daddr, (int )((unsigned short )tmp___4),
                                    6, 0U);
        tmp___3->check = ~ ((int )tmp___5);
        ptpd->word3 = ptpd->word3 | (__le32 )(((int )iph->ihl & 15) << 10);
        tmp___6 = tcp_hdrlen((struct sk_buff const *)skb);
        ptpd->word3 = ptpd->word3 | (((tmp___6 >> 2) & 15U) << 14);
        ptpd->word3 = ptpd->word3 | 32U;
        ptpd->word3 = ptpd->word3 | 64U;
        return (1);
      } else {
      }
      iph->check = 0U;
      tmp___7 = tcp_hdr((struct sk_buff const *)skb);
      tmp___8 = csum_tcpudp_magic(iph->saddr, iph->daddr, 0, 6, 0U);
      tmp___7->check = ~ ((int )tmp___8);
      tmp___9 = skb_network_header((struct sk_buff const *)skb);
      ip_off = (int )((u8 )((long )iph)) - (int )((u8 )((long )tmp___9));
      if ((unsigned int )ip_off == 8U) {
        ptpd->word3 = ptpd->word3 | 512U;
      } else
      if ((unsigned int )ip_off != 0U) {
        return (-2);
      } else {
      }
      ptpd->word3 = ptpd->word3 | (__le32 )(((int )iph->ihl & 15) << 10);
      tmp___10 = tcp_hdrlen((struct sk_buff const *)skb);
      ptpd->word3 = ptpd->word3 | (((tmp___10 >> 2) & 15U) << 14);
      tmp___11 = skb_end_pointer((struct sk_buff const *)skb);
      ptpd->word3 = ptpd->word3 | (__le32 )((int )((struct skb_shared_info *)tmp___11)->gso_size << 19);
      ptpd->word3 = ptpd->word3 | 16U;
      return (3);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int atl1_tx_csum(struct atl1_adapter *adapter , struct sk_buff *skb , struct tx_packet_desc *ptpd )
{
  u8 css ;
  u8 cso ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)skb + 145UL) == 6U,
                             1L);
  if (tmp___1 != 0L) {
    tmp = skb_checksum_start_offset((struct sk_buff const *)skb);
    css = (u8 )tmp;
    cso = (int )((u8 )skb->__annonCompField70.__annonCompField69.csum_offset) + (int )css;
    tmp___0 = ldv__builtin_expect((long )css & 1L, 0L);
    if (tmp___0 != 0L) {
      if ((adapter->msg_enable & 128U) != 0U) {
        dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "payload offset not an even number\n");
      } else {
      }
      return (-1);
    } else {
    }
    ptpd->word3 = ptpd->word3 | (__le32 )((int )css << 16);
    ptpd->word3 = ptpd->word3 | (__le32 )((int )cso << 24);
    ptpd->word3 = ptpd->word3 | 8U;
    return (1);
  } else {
  }
  return (0);
}
}
static void atl1_tx_map(struct atl1_adapter *adapter , struct sk_buff *skb , struct tx_packet_desc *ptpd )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_buffer *buffer_info ;
  u16 buf_len ;
  struct page *page ;
  unsigned long offset ;
  unsigned int nr_frags ;
  unsigned int f ;
  int retval ;
  u16 next_to_use ;
  u16 data_len ;
  u8 hdr_len ;
  unsigned char *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned long tmp___4 ;
  int i ;
  int nseg ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  struct skb_frag_struct const *frag ;
  u16 i___0 ;
  u16 nseg___0 ;
  unsigned char *tmp___7 ;
  unsigned int tmp___8 ;
  long tmp___9 ;
  {
  tpd_ring = & adapter->tpd_ring;
  buf_len = (u16 )skb->len;
  buf_len = (int )buf_len - (int )((u16 )skb->data_len);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (unsigned int )((struct skb_shared_info *)tmp)->nr_frags;
  tmp___0 = atomic_read((atomic_t const *)(& tpd_ring->next_to_use));
  next_to_use = (u16 )tmp___0;
  buffer_info = tpd_ring->buffer_info + (unsigned long )next_to_use;
  tmp___1 = ldv__builtin_expect((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c"),
                         "i" (2223), "i" (12UL));
    ldv_51681: ;
    goto ldv_51681;
  } else {
  }
  buffer_info->skb = (struct sk_buff *)0;
  retval = (int )(ptpd->word3 >> 4) & 1;
  if (retval != 0) {
    tmp___2 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___3 = tcp_hdrlen((struct sk_buff const *)skb);
    hdr_len = (int )((u8 )tmp___2) + (int )((u8 )tmp___3);
    buffer_info->length = (u16 )hdr_len;
    tmp___4 = __phys_addr((unsigned long )skb->data);
    page = (struct page *)-24189255811072L + (tmp___4 >> 12);
    offset = (unsigned long )skb->data & 4095UL;
    buffer_info->dma = pci_map_page(adapter->pdev, page, offset, (size_t )hdr_len,
                                    1);
    next_to_use = (u16 )((int )next_to_use + 1);
    if ((int )next_to_use == (int )tpd_ring->count) {
      next_to_use = 0U;
    } else {
    }
    if ((int )((unsigned short )hdr_len) < (int )buf_len) {
      data_len = (int )buf_len - (int )((u16 )hdr_len);
      nseg = ((int )data_len + 12287) / 12288;
      i = 0;
      goto ldv_51685;
      ldv_51684:
      buffer_info = tpd_ring->buffer_info + (unsigned long )next_to_use;
      buffer_info->skb = (struct sk_buff *)0;
      buffer_info->length = 12288U > (unsigned int )data_len ? 12288U : data_len;
      data_len = (int )data_len - (int )buffer_info->length;
      tmp___5 = __phys_addr((unsigned long )(skb->data + (unsigned long )((int )hdr_len + i * 12288)));
      page = (struct page *)-24189255811072L + (tmp___5 >> 12);
      offset = (unsigned long )(skb->data + (unsigned long )((int )hdr_len + i * 12288)) & 4095UL;
      buffer_info->dma = pci_map_page(adapter->pdev, page, offset, (size_t )buffer_info->length,
                                      1);
      next_to_use = (u16 )((int )next_to_use + 1);
      if ((int )next_to_use == (int )tpd_ring->count) {
        next_to_use = 0U;
      } else {
      }
      i = i + 1;
      ldv_51685: ;
      if (i < nseg) {
        goto ldv_51684;
      } else {
      }
    } else {
    }
  } else {
    buffer_info->length = buf_len;
    tmp___6 = __phys_addr((unsigned long )skb->data);
    page = (struct page *)-24189255811072L + (tmp___6 >> 12);
    offset = (unsigned long )skb->data & 4095UL;
    buffer_info->dma = pci_map_page(adapter->pdev, page, offset, (size_t )buf_len,
                                    1);
    next_to_use = (u16 )((int )next_to_use + 1);
    if ((int )next_to_use == (int )tpd_ring->count) {
      next_to_use = 0U;
    } else {
    }
  }
  f = 0U;
  goto ldv_51695;
  ldv_51694:
  tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___7)->frags) + (unsigned long )f;
  tmp___8 = skb_frag_size(frag);
  buf_len = (u16 )tmp___8;
  nseg___0 = (u16 )(((int )buf_len + 12287) / 12288);
  i___0 = 0U;
  goto ldv_51692;
  ldv_51691:
  buffer_info = tpd_ring->buffer_info + (unsigned long )next_to_use;
  tmp___9 = ldv__builtin_expect((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___9 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c"),
                         "i" (2289), "i" (12UL));
    ldv_51690: ;
    goto ldv_51690;
  } else {
  }
  buffer_info->skb = (struct sk_buff *)0;
  buffer_info->length = 12288U < (unsigned int )buf_len ? 12288U : buf_len;
  buf_len = (int )buf_len - (int )buffer_info->length;
  buffer_info->dma = skb_frag_dma_map(& (adapter->pdev)->dev, frag, (size_t )((int )i___0 * 12288),
                                      (size_t )buffer_info->length, 1);
  next_to_use = (u16 )((int )next_to_use + 1);
  if ((int )next_to_use == (int )tpd_ring->count) {
    next_to_use = 0U;
  } else {
  }
  i___0 = (u16 )((int )i___0 + 1);
  ldv_51692: ;
  if ((int )i___0 < (int )nseg___0) {
    goto ldv_51691;
  } else {
  }
  f = f + 1U;
  ldv_51695: ;
  if (f < nr_frags) {
    goto ldv_51694;
  } else {
  }
  buffer_info->skb = skb;
  return;
}
}
static void atl1_tx_queue(struct atl1_adapter *adapter , u16 count , struct tx_packet_desc *ptpd )
{
  struct atl1_tpd_ring *tpd_ring ;
  struct atl1_buffer *buffer_info ;
  struct tx_packet_desc *tpd ;
  u16 j ;
  u32 val ;
  u16 next_to_use ;
  int tmp ;
  {
  tpd_ring = & adapter->tpd_ring;
  tmp = atomic_read((atomic_t const *)(& tpd_ring->next_to_use));
  next_to_use = (unsigned short )tmp;
  j = 0U;
  goto ldv_51709;
  ldv_51708:
  buffer_info = tpd_ring->buffer_info + (unsigned long )next_to_use;
  tpd = (struct tx_packet_desc *)adapter->tpd_ring.desc + (unsigned long )next_to_use;
  if ((unsigned long )tpd != (unsigned long )ptpd) {
    memcpy((void *)tpd, (void const *)ptpd, 16UL);
  } else {
  }
  tpd->buffer_addr = buffer_info->dma;
  tpd->word2 = tpd->word2 & 4294950912U;
  tpd->word2 = tpd->word2 | ((__le32 )buffer_info->length & 16383U);
  val = (tpd->word3 >> 4) & 1U;
  if (val != 0U) {
    if ((unsigned int )j == 0U) {
      tpd->word3 = tpd->word3 | 262144U;
    } else {
      tpd->word3 = tpd->word3 & 4294705151U;
    }
  } else {
  }
  if ((int )j == (int )count + -1) {
    tpd->word3 = tpd->word3 | 1U;
  } else {
  }
  next_to_use = (u16 )((int )next_to_use + 1);
  if ((int )next_to_use == (int )tpd_ring->count) {
    next_to_use = 0U;
  } else {
  }
  j = (u16 )((int )j + 1);
  ldv_51709: ;
  if ((int )j < (int )count) {
    goto ldv_51708;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  atomic_set(& tpd_ring->next_to_use, (int )next_to_use);
  return;
}
}
static netdev_tx_t atl1_xmit_frame(struct sk_buff *skb , struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_tpd_ring *tpd_ring ;
  int len ;
  int tso ;
  int count ;
  int ret_val ;
  struct tx_packet_desc *ptpd ;
  u16 vlan_tag ;
  unsigned int nr_frags ;
  unsigned int mss ;
  unsigned int f ;
  unsigned int proto_hdr_len ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned int f_size ;
  unsigned char *tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char *tmp___5 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  long tmp___8 ;
  u16 tmp___9 ;
  int tmp___10 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  tpd_ring = & adapter->tpd_ring;
  count = 1;
  nr_frags = 0U;
  mss = 0U;
  tmp___0 = skb_headlen((struct sk_buff const *)skb);
  len = (int )tmp___0;
  tmp___1 = ldv__builtin_expect(skb->len == 0U, 0L);
  if (tmp___1 != 0L) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (unsigned int )((struct skb_shared_info *)tmp___2)->nr_frags;
  f = 0U;
  goto ldv_51729;
  ldv_51728:
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___4 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp___3)->frags) + (unsigned long )f);
  f_size = tmp___4;
  count = (int )((f_size + 12287U) / 12288U + (unsigned int )count);
  f = f + 1U;
  ldv_51729: ;
  if (f < nr_frags) {
    goto ldv_51728;
  } else {
  }
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  mss = (unsigned int )((struct skb_shared_info *)tmp___5)->gso_size;
  if (mss != 0U) {
    if ((unsigned int )skb->protocol == 8U) {
      tmp___6 = skb_transport_offset((struct sk_buff const *)skb);
      tmp___7 = tcp_hdrlen((struct sk_buff const *)skb);
      proto_hdr_len = (unsigned int )tmp___6 + tmp___7;
      tmp___8 = ldv__builtin_expect((unsigned int )len < proto_hdr_len, 0L);
      if (tmp___8 != 0L) {
        dev_kfree_skb_any(skb);
        return (0);
      } else {
      }
      if ((unsigned int )len != proto_hdr_len) {
        count = (int )((((unsigned int )len - proto_hdr_len) + 12287U) / 12288U + (unsigned int )count);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___9 = atl1_tpd_avail(& adapter->tpd_ring);
  if ((int )tmp___9 < count) {
    netif_stop_queue(netdev);
    if ((adapter->msg_enable & 256U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "tx busy\n");
    } else {
    }
    return (16);
  } else {
  }
  tmp___10 = atomic_read((atomic_t const *)(& tpd_ring->next_to_use));
  ptpd = (struct tx_packet_desc *)tpd_ring->desc + (unsigned long )((unsigned short )tmp___10);
  memset((void *)ptpd, 0, 16UL);
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag = (unsigned int )skb->vlan_tci & 61439U;
    vlan_tag = (u16 )(((int )((short )((int )vlan_tag << 4)) | (int )((short )((int )vlan_tag >> 13))) | ((int )((short )((int )vlan_tag >> 9)) & 8));
    ptpd->word3 = ptpd->word3 | 4U;
    ptpd->word2 = ptpd->word2 | (__le32 )((int )vlan_tag << 16);
  } else {
  }
  tso = atl1_tso(adapter, skb, ptpd);
  if (tso < 0) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  if (tso == 0) {
    ret_val = atl1_tx_csum(adapter, skb, ptpd);
    if (ret_val < 0) {
      dev_kfree_skb_any(skb);
      return (0);
    } else {
    }
  } else {
  }
  atl1_tx_map(adapter, skb, ptpd);
  atl1_tx_queue(adapter, (int )((u16 )count), ptpd);
  atl1_update_mailbox(adapter);
  __asm__ volatile ("": : : "memory");
  return (0);
}
}
static int atl1_rings_clean(struct napi_struct *napi , int budget )
{
  struct atl1_adapter *adapter ;
  struct napi_struct const *__mptr ;
  int work_done ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct napi_struct const *)napi;
  adapter = (struct atl1_adapter *)__mptr + 0xfffffffffffffeb0UL;
  tmp = atl1_intr_rx(adapter, budget);
  work_done = tmp;
  tmp___0 = atl1_intr_tx(adapter);
  if (tmp___0 != 0) {
    work_done = budget;
  } else {
  }
  if (work_done >= budget) {
    return (work_done);
  } else {
  }
  napi_complete(napi);
  tmp___1 = ldv__builtin_expect((long )adapter->int_enabled, 1L);
  if (tmp___1 != 0L) {
    atlx_imr_set(adapter, 271588353U);
  } else {
  }
  return (work_done);
}
}
__inline static int atl1_sched_rings_clean(struct atl1_adapter *adapter )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = napi_schedule_prep(& adapter->napi);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  __napi_schedule(& adapter->napi);
  if (! adapter->int_enabled) {
    return (1);
  } else {
  }
  atlx_imr_set(adapter, 268442625U);
  return (1);
}
}
static irqreturn_t atl1_intr(int irq , void *data )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  u32 status ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)data);
  adapter = (struct atl1_adapter *)tmp;
  status = (adapter->cmb.cmb)->int_stats;
  if (status == 0U) {
    return (0);
  } else {
  }
  (adapter->cmb.cmb)->int_stats = status & 3145728U;
  if ((status & 4096U) != 0U) {
    atlx_clear_phy_int(adapter);
  } else {
  }
  iowrite32(status | 2147483648U, (void *)adapter->hw.hw_addr + 5632U);
  if ((int )status & 1) {
    atl1_inc_smb(adapter);
  } else {
  }
  if ((status & 268435456U) != 0U) {
    if ((adapter->msg_enable & 512U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "pcie phy link down %x\n",
                 status);
    } else {
    }
    tmp___0 = netif_running((struct net_device const *)adapter->netdev);
    if ((int )tmp___0) {
      atlx_irq_disable(adapter);
      schedule_work(& adapter->reset_dev_task);
      return (1);
    } else {
    }
  } else {
  }
  if ((status & 3072U) != 0U) {
    if ((adapter->msg_enable & 512U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "pcie DMA r/w error (status = 0x%x)\n",
                 status);
    } else {
    }
    atlx_irq_disable(adapter);
    schedule_work(& adapter->reset_dev_task);
    return (1);
  } else {
  }
  if ((status & 4096U) != 0U) {
    adapter->soft_stats.tx_carrier_errors = adapter->soft_stats.tx_carrier_errors + 1ULL;
    atl1_check_for_link(adapter);
  } else {
  }
  if ((status & 3145728U) != 0U) {
    tmp___1 = atl1_sched_rings_clean(adapter);
    if (tmp___1 != 0) {
      (adapter->cmb.cmb)->int_stats = (adapter->cmb.cmb)->int_stats & 4291821567U;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect((status & 824U) != 0U, 0L);
  if (tmp___2 != 0L) {
    if ((adapter->msg_enable & 512U) != 0U) {
      dev_printk("\017", (struct device const *)(& (adapter->pdev)->dev), "rx exception, ISR = 0x%x\n",
                 status);
    } else {
    }
    atl1_sched_rings_clean(adapter);
  } else {
  }
  iowrite32(1610612736U, (void *)adapter->hw.hw_addr + 5632U);
  return (1);
}
}
static void atl1_phy_config(unsigned long data )
{
  struct atl1_adapter *adapter ;
  struct atl1_hw *hw ;
  unsigned long flags ;
  {
  adapter = (struct atl1_adapter *)data;
  hw = & adapter->hw;
  ldv_spin_lock();
  adapter->phy_timer_pending = 0;
  atl1_write_phy_reg(hw, 4U, (int )hw->mii_autoneg_adv_reg);
  atl1_write_phy_reg(hw, 9U, (int )hw->mii_1000t_ctrl_reg);
  atl1_write_phy_reg(hw, 0U, 36864);
  spin_unlock_irqrestore(& adapter->lock, flags);
  return;
}
}
static int atl1_reset(struct atl1_adapter *adapter )
{
  int ret ;
  s32 tmp ;
  {
  ret = atl1_reset_hw(& adapter->hw);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = atl1_init_hw(& adapter->hw);
  return (tmp);
}
}
static s32 atl1_up(struct atl1_adapter *adapter )
{
  struct net_device *netdev ;
  int err ;
  int irq_flags ;
  u16 tmp ;
  long tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  netdev = adapter->netdev;
  irq_flags = 0;
  atlx_set_multi(netdev);
  atl1_init_ring_ptrs(adapter);
  atlx_restore_vlan(adapter);
  tmp = atl1_alloc_rx_buffers(adapter);
  err = (int )tmp;
  tmp___0 = ldv__builtin_expect(err == 0, 0L);
  if (tmp___0 != 0L) {
    return (-12);
  } else {
  }
  tmp___1 = atl1_configure(adapter);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0U, 0L);
  if (tmp___2 != 0L) {
    err = -5;
    goto err_up;
  } else {
  }
  err = pci_enable_msi_exact(adapter->pdev, 1);
  if (err != 0) {
    if ((adapter->msg_enable & 32U) != 0U) {
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "Unable to enable MSI: %d\n",
                err);
    } else {
    }
    irq_flags = irq_flags | 128;
  } else {
  }
  err = ldv_request_irq_44((adapter->pdev)->irq, & atl1_intr, (unsigned long )irq_flags,
                           (char const *)(& netdev->name), (void *)netdev);
  tmp___3 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___3 != 0L) {
    goto err_up;
  } else {
  }
  napi_enable(& adapter->napi);
  atlx_irq_enable(adapter);
  atl1_check_link(adapter);
  netif_start_queue(netdev);
  return (0);
  err_up:
  pci_disable_msi(adapter->pdev);
  atl1_clean_rx_ring(adapter);
  return (err);
}
}
static void atl1_down(struct atl1_adapter *adapter )
{
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  napi_disable(& adapter->napi);
  netif_stop_queue(netdev);
  ldv_del_timer_sync_45(& adapter->phy_config_timer);
  adapter->phy_timer_pending = 0;
  atlx_irq_disable(adapter);
  ldv_free_irq_46((adapter->pdev)->irq, (void *)netdev);
  pci_disable_msi(adapter->pdev);
  atl1_reset_hw(& adapter->hw);
  (adapter->cmb.cmb)->int_stats = 0U;
  adapter->link_speed = 65535U;
  adapter->link_duplex = 65535U;
  netif_carrier_off(netdev);
  atl1_clean_tx_ring(adapter);
  atl1_clean_rx_ring(adapter);
  return;
}
}
static void atl1_reset_dev_task(struct work_struct *work )
{
  struct atl1_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct atl1_adapter *)__mptr + 0xfffffffffffffd98UL;
  netdev = adapter->netdev;
  netif_device_detach(netdev);
  atl1_down(adapter);
  atl1_up(adapter);
  netif_device_attach(netdev);
  return;
}
}
static int atl1_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  int old_mtu ;
  int max_frame ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  old_mtu = (int )netdev->mtu;
  max_frame = new_mtu + 22;
  if (max_frame <= 63 || max_frame > 10240) {
    if ((adapter->msg_enable & 4U) != 0U) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "invalid MTU setting\n");
    } else {
    }
    return (-22);
  } else {
  }
  adapter->hw.max_frame_size = (u32 )max_frame;
  adapter->hw.tx_jumbo_task_th = (u16 )((max_frame + 7) >> 3);
  adapter->rx_buffer_len = (u32 )(max_frame + 7) & 4294967288U;
  adapter->hw.rx_jumbo_th = (u16 )(adapter->rx_buffer_len / 8U);
  netdev->mtu = (unsigned int )new_mtu;
  if (old_mtu != new_mtu) {
    tmp___0 = netif_running((struct net_device const *)netdev);
    if ((int )tmp___0) {
      atl1_down(adapter);
      atl1_up(adapter);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int atl1_open(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  netif_carrier_off(netdev);
  err = atl1_setup_ring_resources(adapter);
  if (err != 0) {
    return (err);
  } else {
  }
  err = atl1_up(adapter);
  if (err != 0) {
    goto err_up;
  } else {
  }
  return (0);
  err_up:
  atl1_reset(adapter);
  return (err);
}
}
static int atl1_close(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  atl1_down(adapter);
  atl1_free_ring_resources(adapter);
  return (0);
}
}
static int atl1_suspend(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *netdev ;
  void *tmp ;
  struct atl1_adapter *adapter ;
  void *tmp___0 ;
  struct atl1_hw *hw ;
  u32 ctrl ;
  u32 wufc ;
  u32 val ;
  u16 speed ;
  u16 duplex ;
  bool tmp___1 ;
  s32 tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp___0;
  hw = & adapter->hw;
  ctrl = 0U;
  wufc = adapter->wol;
  netif_device_detach(netdev);
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    atl1_down(adapter);
  } else {
  }
  atl1_read_phy_reg(hw, 1, (u16 *)(& ctrl));
  atl1_read_phy_reg(hw, 1, (u16 *)(& ctrl));
  val = ctrl & 4U;
  if (val != 0U) {
    wufc = wufc & 4294967294U;
  } else {
  }
  if (wufc == 0U) {
    goto disable_wol;
  } else {
  }
  if (val != 0U) {
    tmp___2 = atl1_get_speed_and_duplex(hw, & speed, & duplex);
    val = (u32 )tmp___2;
    if (val != 0U) {
      if ((adapter->msg_enable & 16U) != 0U) {
        dev_printk("\017", (struct device const *)(& pdev->dev), "error getting speed/duplex\n");
      } else {
      }
      goto disable_wol;
    } else {
    }
    ctrl = 0U;
    if ((wufc & 2U) != 0U) {
      ctrl = ctrl | 12U;
    } else {
    }
    iowrite32(ctrl, (void *)hw->hw_addr + 5280U);
    ioread32((void *)hw->hw_addr + 5280U);
    ctrl = 2U;
    ctrl = ((unsigned int )speed == 1000U ? 2097152U : 1048576U) | ctrl;
    if ((unsigned int )duplex == 2U) {
      ctrl = ctrl | 32U;
    } else {
    }
    ctrl = (((unsigned int )adapter->hw.preamble_len & 15U) << 10) | ctrl;
    __atlx_vlan_mode(netdev->features, & ctrl);
    if ((wufc & 2U) != 0U) {
      ctrl = ctrl | 67108864U;
    } else {
    }
    iowrite32(ctrl, (void *)hw->hw_addr + 5248U);
    ioread32((void *)hw->hw_addr + 5248U);
    ctrl = ioread32((void *)hw->hw_addr + 4096U);
    ctrl = ctrl | 4U;
    iowrite32(ctrl, (void *)hw->hw_addr + 4096U);
    ioread32((void *)hw->hw_addr + 4096U);
  } else {
    ctrl = ctrl | 48U;
    iowrite32(ctrl, (void *)hw->hw_addr + 5280U);
    ioread32((void *)hw->hw_addr + 5280U);
    iowrite32(0U, (void *)hw->hw_addr + 5248U);
    ioread32((void *)hw->hw_addr + 5248U);
    hw->phy_configured = 0;
  }
  return (0);
  disable_wol:
  iowrite32(0U, (void *)hw->hw_addr + 5280U);
  ioread32((void *)hw->hw_addr + 5280U);
  ctrl = ioread32((void *)hw->hw_addr + 4096U);
  ctrl = ctrl | 4U;
  iowrite32(ctrl, (void *)hw->hw_addr + 4096U);
  ioread32((void *)hw->hw_addr + 4096U);
  hw->phy_configured = 0;
  return (0);
}
}
static int atl1_resume(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *netdev ;
  void *tmp ;
  struct atl1_adapter *adapter ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp___0;
  iowrite32(0U, (void *)adapter->hw.hw_addr + 5280U);
  atl1_reset_hw(& adapter->hw);
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    (adapter->cmb.cmb)->int_stats = 0U;
    atl1_up(adapter);
  } else {
  }
  netif_device_attach(netdev);
  return (0);
}
}
static struct dev_pm_ops const atl1_pm_ops =
     {0, 0, & atl1_suspend, & atl1_resume, & atl1_suspend, & atl1_resume, & atl1_suspend,
    & atl1_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void atl1_shutdown(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1_adapter *adapter ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp___0;
  atl1_suspend(& pdev->dev);
  pci_wake_from_d3(pdev, adapter->wol != 0U);
  pci_set_power_state(pdev, 3);
  return;
}
}
static void atl1_poll_controller(struct net_device *netdev )
{
  {
  disable_irq((unsigned int )netdev->irq);
  atl1_intr(netdev->irq, (void *)netdev);
  enable_irq((unsigned int )netdev->irq);
  return;
}
}
static struct net_device_ops const atl1_netdev_ops =
     {0, 0, & atl1_open, & atl1_close, & atl1_xmit_frame, 0, 0, & atlx_set_multi, & atl1_set_mac,
    & eth_validate_addr, & atlx_ioctl, 0, & atl1_change_mtu, 0, & atlx_tx_timeout,
    0, 0, 0, 0, & atl1_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & atlx_fix_features, & atlx_set_features, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int atl1_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct atl1_adapter *adapter ;
  int cards_found ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  u16 tmp___2 ;
  s32 tmp___3 ;
  s32 tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  {
  cards_found = 0;
  err = pci_enable_device(pdev);
  if (err != 0) {
    return (err);
  } else {
  }
  err = pci_set_dma_mask(pdev, 4294967295ULL);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "no usable DMA configuration\n");
    goto err_dma;
  } else {
  }
  err = pci_request_regions(pdev, "atl1");
  if (err != 0) {
    goto err_request_regions;
  } else {
  }
  pci_set_master(pdev);
  netdev = alloc_etherdev_mqs(1344, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_alloc_etherdev;
  } else {
  }
  netdev->dev.parent = & pdev->dev;
  pci_set_drvdata(pdev, (void *)netdev);
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  adapter->netdev = netdev;
  adapter->pdev = pdev;
  adapter->hw.back = adapter;
  adapter->msg_enable = netif_msg_init(debug, (int )atl1_default_msg);
  tmp___0 = pci_iomap(pdev, 0, 0UL);
  adapter->hw.hw_addr = (u8 *)tmp___0;
  if ((unsigned long )adapter->hw.hw_addr == (unsigned long )((u8 *)0U)) {
    err = -5;
    goto err_pci_iomap;
  } else {
  }
  tmp___1 = ioread16((void *)adapter->hw.hw_addr + 5122U);
  adapter->hw.dev_rev = (u16 )tmp___1;
  if ((adapter->msg_enable & 2U) != 0U) {
    _dev_info((struct device const *)(& pdev->dev), "version %s\n", (char *)"2.1.3");
  } else {
  }
  tmp___2 = 512U;
  adapter->rrd_ring.count = tmp___2;
  adapter->rfd_ring.count = tmp___2;
  adapter->tpd_ring.count = 256U;
  adapter->mii.dev = netdev;
  adapter->mii.mdio_read = & mdio_read;
  adapter->mii.mdio_write = & mdio_write;
  adapter->mii.phy_id_mask = 31;
  adapter->mii.reg_num_mask = 31;
  netdev->netdev_ops = & atl1_netdev_ops;
  netdev->watchdog_timeo = 1250;
  netif_napi_add(netdev, & adapter->napi, & atl1_rings_clean, 64);
  netdev->ethtool_ops = & atl1_ethtool_ops;
  adapter->bd_number = (u32 )cards_found;
  err = atl1_sw_init(adapter);
  if (err != 0) {
    goto err_common;
  } else {
  }
  netdev->features = 8ULL;
  netdev->features = netdev->features | 1ULL;
  netdev->features = netdev->features | 384ULL;
  netdev->hw_features = 65801ULL;
  netdev->features = netdev->features | 17179869184ULL;
  iowrite16(0, (void *)adapter->hw.hw_addr + 5132U);
  tmp___3 = atl1_reset_hw(& adapter->hw);
  if (tmp___3 != 0) {
    err = -5;
    goto err_common;
  } else {
  }
  tmp___4 = atl1_read_mac_addr(& adapter->hw);
  if (tmp___4 != 0) {
    netdev->addr_assign_type = 1U;
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& adapter->hw.mac_addr), (size_t )netdev->addr_len);
  tmp___5 = is_valid_ether_addr((u8 const *)netdev->dev_addr);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    err = -5;
    goto err_common;
  } else {
  }
  atl1_check_options(adapter);
  err = atl1_init_hw(& adapter->hw);
  if (err != 0) {
    err = -5;
    goto err_common;
  } else {
  }
  atl1_pcie_patch(adapter);
  netif_carrier_off(netdev);
  reg_timer_4(& adapter->phy_config_timer, & atl1_phy_config, (unsigned long )adapter);
  adapter->phy_timer_pending = 0;
  __init_work(& adapter->reset_dev_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->reset_dev_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->reset_dev_task.lockdep_map, "(&adapter->reset_dev_task)",
                   & __key, 0);
  INIT_LIST_HEAD(& adapter->reset_dev_task.entry);
  adapter->reset_dev_task.func = & atl1_reset_dev_task;
  __init_work(& adapter->link_chg_task, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->link_chg_task.data = __constr_expr_1;
  lockdep_init_map(& adapter->link_chg_task.lockdep_map, "(&adapter->link_chg_task)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& adapter->link_chg_task.entry);
  adapter->link_chg_task.func = & atlx_link_chg_task;
  err = ldv_register_netdev_47(netdev);
  if (err != 0) {
    goto err_common;
  } else {
  }
  cards_found = cards_found + 1;
  atl1_via_workaround(adapter);
  return (0);
  err_common:
  pci_iounmap(pdev, (void *)adapter->hw.hw_addr);
  err_pci_iomap:
  ldv_free_netdev_48(netdev);
  err_alloc_etherdev:
  pci_release_regions(pdev);
  err_dma: ;
  err_request_regions:
  pci_disable_device(pdev);
  return (err);
}
}
static void atl1_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct atl1_adapter *adapter ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    return;
  } else {
  }
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp___0;
  tmp___1 = ether_addr_equal_unaligned((u8 const *)(& adapter->hw.mac_addr), (u8 const *)(& adapter->hw.perm_mac_addr));
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    memcpy((void *)(& adapter->hw.mac_addr), (void const *)(& adapter->hw.perm_mac_addr),
             6UL);
    atl1_set_mac_addr(& adapter->hw);
  } else {
  }
  iowrite16(0, (void *)adapter->hw.hw_addr + 5132U);
  ldv_unregister_netdev_49(netdev);
  pci_iounmap(pdev, (void *)adapter->hw.hw_addr);
  pci_release_regions(pdev);
  ldv_free_netdev_50(netdev);
  pci_disable_device(pdev);
  return;
}
}
static struct pci_driver atl1_driver =
     {{0, 0}, "atl1", (struct pci_device_id const *)(& atl1_pci_tbl), & atl1_probe,
    & atl1_remove, 0, 0, 0, 0, & atl1_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0,
                                                       0, 0, 0, 0, 0, 0, 0, & atl1_pm_ops,
                                                       0}, {{{{{{0}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                            {0, 0}}};
static struct atl1_stats atl1_gstrings_stats[29U] =
  { {{'r', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 16},
        {{'t', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 24},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 32},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 40},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8, 64},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8, 120},
        {{'m', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 8, 48},
        {{'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}, 8, 56},
        {{'r', 'x', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 8, 72},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      8, 112},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8,
      80},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 'e', 'r', 'r', 'o', 'r', 's',
       '\000'}, 8, 96},
        {{'r', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      8, 104},
        {{'r', 'x', '_', 'm', 'i', 's', 's', 'e', 'd', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 8, 112},
        {{'t', 'x', '_', 'a', 'b', 'o', 'r', 't', 'e', 'd', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}, 8, 136},
        {{'t', 'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}, 8, 152},
        {{'t', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      8, 128},
        {{'t', 'x', '_', 'w', 'i', 'n', 'd', 'o', 'w', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 8, 144},
        {{'t', 'x', '_', 'a', 'b', 'o', 'r', 't', '_', 'e', 'x', 'c', 'e', '_', 'c',
       'o', 'l', 'l', '\000'}, 8, 168},
        {{'t', 'x', '_', 'a', 'b', 'o', 'r', 't', '_', 'l', 'a', 't', 'e', '_', 'c',
       'o', 'l', 'l', '\000'}, 8, 200},
        {{'t', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd', '_', 'o', 'k', '\000'},
      8, 176},
        {{'t', 'x', '_', 's', 'i', 'n', 'g', 'l', 'e', '_', 'c', 'o', 'l', 'l', '_',
       'o', 'k', '\000'}, 8, 184},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', '_', 'c', 'o', 'l', 'l', '_', 'o',
       'k', '\000'}, 8, 192},
        {{'t', 'x', '_', 'u', 'n', 'd', 'e', 'r', 'u', 'n', '\000'}, 8, 208},
        {{'t', 'x', '_', 't', 'r', 'u', 'n', 'c', '\000'}, 8, 216},
        {{'t', 'x', '_', 'p', 'a', 'u', 's', 'e', '\000'}, 8, 160},
        {{'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '\000'}, 8, 224},
        {{'r', 'x', '_', 'r', 'r', 'd', '_', 'o', 'v', '\000'}, 8, 232},
        {{'r', 'x', '_', 't', 'r', 'u', 'n', 'c', '\000'}, 8, 240}};
static void atl1_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  int i ;
  char *p ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  i = 0;
  goto ldv_51865;
  ldv_51864:
  p = (char *)adapter + (unsigned long )atl1_gstrings_stats[i].stat_offset;
  *(data + (unsigned long )i) = atl1_gstrings_stats[i].sizeof_stat == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  i = i + 1;
  ldv_51865: ;
  if ((unsigned int )i <= 28U) {
    goto ldv_51864;
  } else {
  }
  return;
}
}
static int atl1_get_sset_count(struct net_device *netdev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (29);
  default: ;
  return (-95);
  }
}
}
static int atl1_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  u16 link_speed ;
  u16 link_duplex ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  ecmd->supported = 239U;
  ecmd->advertising = 128U;
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    ecmd->advertising = ecmd->advertising | 64U;
    if ((unsigned int )hw->media_type == 0U) {
      ecmd->advertising = ecmd->advertising | 64U;
      ecmd->advertising = ecmd->advertising | 47U;
    } else {
      ecmd->advertising = ecmd->advertising | 32U;
    }
  } else {
  }
  ecmd->port = 0U;
  ecmd->phy_address = 0U;
  ecmd->transceiver = 0U;
  tmp___0 = netif_carrier_ok((struct net_device const *)adapter->netdev);
  if ((int )tmp___0) {
    atl1_get_speed_and_duplex(hw, & link_speed, & link_duplex);
    ethtool_cmd_speed_set(ecmd, (__u32 )link_speed);
    if ((unsigned int )link_duplex == 2U) {
      ecmd->duplex = 1U;
    } else {
      ecmd->duplex = 0U;
    }
  } else {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
  }
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    ecmd->autoneg = 1U;
  } else {
    ecmd->autoneg = 0U;
  }
  return (0);
}
}
static int atl1_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  u16 phy_data ;
  int ret_val ;
  u16 old_media_type ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  u32 speed ;
  __u32 tmp___2 ;
  s32 tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  bool tmp___6 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  ret_val = 0;
  old_media_type = hw->media_type;
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp___1) {
    if ((adapter->msg_enable & 4U) != 0U) {
      descriptor.modname = "atl1";
      descriptor.function = "atl1_set_settings";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor.format = "ethtool shutting down adapter\n";
      descriptor.lineno = 3284U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (adapter->pdev)->dev),
                          "ethtool shutting down adapter\n");
      } else {
      }
    } else {
    }
    atl1_down(adapter);
  } else {
  }
  if ((unsigned int )ecmd->autoneg == 1U) {
    hw->media_type = 0U;
  } else {
    tmp___2 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
    speed = tmp___2;
    if (speed == 1000U) {
      if ((unsigned int )ecmd->duplex != 1U) {
        if ((adapter->msg_enable & 4U) != 0U) {
          dev_warn((struct device const *)(& (adapter->pdev)->dev), "1000M half is invalid\n");
        } else {
        }
        ret_val = -22;
        goto exit_sset;
      } else {
      }
      hw->media_type = 1U;
    } else
    if (speed == 100U) {
      if ((unsigned int )ecmd->duplex == 1U) {
        hw->media_type = 2U;
      } else {
        hw->media_type = 3U;
      }
    } else
    if ((unsigned int )ecmd->duplex == 1U) {
      hw->media_type = 4U;
    } else {
      hw->media_type = 5U;
    }
  }
  switch ((int )hw->media_type) {
  case 0:
  ecmd->advertising = 239U;
  goto ldv_51897;
  case 1:
  ecmd->advertising = 224U;
  goto ldv_51897;
  default:
  ecmd->advertising = 0U;
  goto ldv_51897;
  }
  ldv_51897:
  tmp___3 = atl1_phy_setup_autoneg_adv(hw);
  if (tmp___3 != 0) {
    ret_val = -22;
    if ((adapter->msg_enable & 4U) != 0U) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "invalid ethtool speed/duplex setting\n");
    } else {
    }
    goto exit_sset;
  } else {
  }
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    phy_data = 36864U;
  } else {
    switch ((int )hw->media_type) {
    case 2:
    phy_data = 41216U;
    goto ldv_51901;
    case 3:
    phy_data = 40960U;
    goto ldv_51901;
    case 4:
    phy_data = 33024U;
    goto ldv_51901;
    default:
    phy_data = 32768U;
    goto ldv_51901;
    }
    ldv_51901: ;
  }
  atl1_write_phy_reg(hw, 0U, (int )phy_data);
  exit_sset: ;
  if (ret_val != 0) {
    hw->media_type = old_media_type;
  } else {
  }
  tmp___6 = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp___6) {
    if ((adapter->msg_enable & 4U) != 0U) {
      descriptor___0.modname = "atl1";
      descriptor___0.function = "atl1_set_settings";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor___0.format = "ethtool starting adapter\n";
      descriptor___0.lineno = 3370U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (adapter->pdev)->dev),
                          "ethtool starting adapter\n");
      } else {
      }
    } else {
    }
    atl1_up(adapter);
  } else
  if (ret_val == 0) {
    if ((adapter->msg_enable & 4U) != 0U) {
      descriptor___1.modname = "atl1";
      descriptor___1.function = "atl1_set_settings";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10501/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/atlx/atl1.c";
      descriptor___1.format = "ethtool resetting adapter\n";
      descriptor___1.lineno = 3375U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (adapter->pdev)->dev),
                          "ethtool resetting adapter\n");
      } else {
      }
    } else {
    }
    atl1_reset(adapter);
  } else {
  }
  return (ret_val);
}
}
static void atl1_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), "atl1", 32UL);
  strlcpy((char *)(& drvinfo->version), "2.1.3", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->eedump_len = 48U;
  return;
}
}
static void atl1_get_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  wol->supported = 32U;
  wol->wolopts = 0U;
  if ((adapter->wol & 2U) != 0U) {
    wol->wolopts = wol->wolopts | 32U;
  } else {
  }
  return;
}
}
static int atl1_set_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  if ((wol->wolopts & 95U) != 0U) {
    return (-95);
  } else {
  }
  adapter->wol = 0U;
  if ((wol->wolopts & 32U) != 0U) {
    adapter->wol = adapter->wol | 2U;
  } else {
  }
  device_set_wakeup_enable(& (adapter->pdev)->dev, adapter->wol != 0U);
  return (0);
}
}
static u32 atl1_get_msglevel(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  return (adapter->msg_enable);
}
}
static void atl1_set_msglevel(struct net_device *netdev , u32 value )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  adapter->msg_enable = value;
  return;
}
}
static int atl1_get_regs_len(struct net_device *netdev )
{
  {
  return (6152);
}
}
static void atl1_get_regs(struct net_device *netdev , struct ethtool_regs *regs ,
                          void *p )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  unsigned int i ;
  u32 *regbuf ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  regbuf = (u32 *)p;
  i = 0U;
  goto ldv_51968;
  ldv_51967: ;
  switch (i) {
  case 9U:
  case 8U:
  case 7U:
  case 6U: ;
  case 14U: ;
  case 31U:
  case 30U:
  case 29U: ;
  case 63U:
  case 62U:
  case 61U:
  case 60U:
  case 59U:
  case 58U:
  case 57U:
  case 56U:
  case 55U:
  case 54U:
  case 53U:
  case 52U:
  case 51U:
  case 50U:
  case 49U:
  case 48U:
  case 47U:
  case 46U:
  case 45U:
  case 44U:
  case 43U:
  case 42U:
  case 41U:
  case 40U:
  case 39U:
  case 38U:
  case 37U:
  case 36U:
  case 35U:
  case 34U: ;
  case 127U:
  case 126U:
  case 125U:
  case 124U:
  case 123U:
  case 122U:
  case 121U:
  case 120U:
  case 119U:
  case 118U:
  case 117U:
  case 116U:
  case 115U:
  case 114U:
  case 113U:
  case 112U:
  case 111U:
  case 110U:
  case 109U:
  case 108U:
  case 107U:
  case 106U:
  case 105U:
  case 104U:
  case 103U:
  case 102U:
  case 101U:
  case 100U:
  case 99U:
  case 98U:
  case 97U:
  case 96U:
  case 95U:
  case 94U:
  case 93U:
  case 92U:
  case 91U:
  case 90U:
  case 89U:
  case 88U:
  case 87U:
  case 86U:
  case 85U:
  case 84U:
  case 83U:
  case 82U:
  case 81U:
  case 80U:
  case 79U:
  case 78U:
  case 77U:
  case 76U:
  case 75U: ;
  case 1023U:
  case 1022U:
  case 1021U:
  case 1020U:
  case 1019U:
  case 1018U:
  case 1017U:
  case 1016U:
  case 1015U:
  case 1014U:
  case 1013U:
  case 1012U:
  case 1011U:
  case 1010U:
  case 1009U:
  case 1008U:
  case 1007U:
  case 1006U:
  case 1005U:
  case 1004U:
  case 1003U:
  case 1002U:
  case 1001U:
  case 1000U:
  case 999U:
  case 998U:
  case 997U:
  case 996U:
  case 995U:
  case 994U:
  case 993U:
  case 992U:
  case 991U:
  case 990U:
  case 989U:
  case 988U:
  case 987U:
  case 986U:
  case 985U:
  case 984U:
  case 983U:
  case 982U:
  case 981U:
  case 980U:
  case 979U:
  case 978U:
  case 977U:
  case 976U:
  case 975U:
  case 974U:
  case 973U:
  case 972U:
  case 971U:
  case 970U:
  case 969U:
  case 968U:
  case 967U:
  case 966U:
  case 965U:
  case 964U:
  case 963U:
  case 962U:
  case 961U:
  case 960U:
  case 959U:
  case 958U:
  case 957U:
  case 956U:
  case 955U:
  case 954U:
  case 953U:
  case 952U:
  case 951U:
  case 950U:
  case 949U:
  case 948U:
  case 947U:
  case 946U:
  case 945U:
  case 944U:
  case 943U:
  case 942U:
  case 941U:
  case 940U:
  case 939U:
  case 938U:
  case 937U:
  case 936U:
  case 935U:
  case 934U:
  case 933U:
  case 932U:
  case 931U:
  case 930U:
  case 929U:
  case 928U:
  case 927U:
  case 926U:
  case 925U:
  case 924U:
  case 923U:
  case 922U:
  case 921U:
  case 920U:
  case 919U:
  case 918U:
  case 917U:
  case 916U:
  case 915U:
  case 914U:
  case 913U:
  case 912U:
  case 911U:
  case 910U:
  case 909U:
  case 908U:
  case 907U:
  case 906U:
  case 905U:
  case 904U:
  case 903U:
  case 902U:
  case 901U:
  case 900U:
  case 899U:
  case 898U:
  case 897U:
  case 896U:
  case 895U:
  case 894U:
  case 893U:
  case 892U:
  case 891U:
  case 890U:
  case 889U:
  case 888U:
  case 887U:
  case 886U:
  case 885U:
  case 884U:
  case 883U:
  case 882U:
  case 881U:
  case 880U:
  case 879U:
  case 878U:
  case 877U:
  case 876U:
  case 875U:
  case 874U:
  case 873U:
  case 872U:
  case 871U:
  case 870U:
  case 869U:
  case 868U:
  case 867U:
  case 866U:
  case 865U:
  case 864U:
  case 863U:
  case 862U:
  case 861U:
  case 860U:
  case 859U:
  case 858U:
  case 857U:
  case 856U:
  case 855U:
  case 854U:
  case 853U:
  case 852U:
  case 851U:
  case 850U:
  case 849U:
  case 848U:
  case 847U:
  case 846U:
  case 845U:
  case 844U:
  case 843U:
  case 842U:
  case 841U:
  case 840U:
  case 839U:
  case 838U:
  case 837U:
  case 836U:
  case 835U:
  case 834U:
  case 833U:
  case 832U:
  case 831U:
  case 830U:
  case 829U:
  case 828U:
  case 827U:
  case 826U:
  case 825U:
  case 824U:
  case 823U:
  case 822U:
  case 821U:
  case 820U:
  case 819U:
  case 818U:
  case 817U:
  case 816U:
  case 815U:
  case 814U:
  case 813U:
  case 812U:
  case 811U:
  case 810U:
  case 809U:
  case 808U:
  case 807U:
  case 806U:
  case 805U:
  case 804U:
  case 803U:
  case 802U:
  case 801U:
  case 800U:
  case 799U:
  case 798U:
  case 797U:
  case 796U:
  case 795U:
  case 794U:
  case 793U:
  case 792U:
  case 791U:
  case 790U:
  case 789U:
  case 788U:
  case 787U:
  case 786U:
  case 785U:
  case 784U:
  case 783U:
  case 782U:
  case 781U:
  case 780U:
  case 779U:
  case 778U:
  case 777U:
  case 776U:
  case 775U:
  case 774U:
  case 773U:
  case 772U:
  case 771U:
  case 770U:
  case 769U:
  case 768U:
  case 767U:
  case 766U:
  case 765U:
  case 764U:
  case 763U:
  case 762U:
  case 761U:
  case 760U:
  case 759U:
  case 758U:
  case 757U:
  case 756U:
  case 755U:
  case 754U:
  case 753U:
  case 752U:
  case 751U:
  case 750U:
  case 749U:
  case 748U:
  case 747U:
  case 746U:
  case 745U:
  case 744U:
  case 743U:
  case 742U:
  case 741U:
  case 740U:
  case 739U:
  case 738U:
  case 737U:
  case 736U:
  case 735U:
  case 734U:
  case 733U:
  case 732U:
  case 731U:
  case 730U:
  case 729U:
  case 728U:
  case 727U:
  case 726U:
  case 725U:
  case 724U:
  case 723U:
  case 722U:
  case 721U:
  case 720U:
  case 719U:
  case 718U:
  case 717U:
  case 716U:
  case 715U:
  case 714U:
  case 713U:
  case 712U:
  case 711U:
  case 710U:
  case 709U:
  case 708U:
  case 707U:
  case 706U:
  case 705U:
  case 704U:
  case 703U:
  case 702U:
  case 701U:
  case 700U:
  case 699U:
  case 698U:
  case 697U:
  case 696U:
  case 695U:
  case 694U:
  case 693U:
  case 692U:
  case 691U:
  case 690U:
  case 689U:
  case 688U:
  case 687U:
  case 686U:
  case 685U:
  case 684U:
  case 683U:
  case 682U:
  case 681U:
  case 680U:
  case 679U:
  case 678U:
  case 677U:
  case 676U:
  case 675U:
  case 674U:
  case 673U:
  case 672U:
  case 671U:
  case 670U:
  case 669U:
  case 668U:
  case 667U:
  case 666U:
  case 665U:
  case 664U:
  case 663U:
  case 662U:
  case 661U:
  case 660U:
  case 659U:
  case 658U:
  case 657U:
  case 656U:
  case 655U:
  case 654U:
  case 653U:
  case 652U:
  case 651U:
  case 650U:
  case 649U:
  case 648U:
  case 647U:
  case 646U:
  case 645U:
  case 644U:
  case 643U:
  case 642U:
  case 641U:
  case 640U:
  case 639U:
  case 638U:
  case 637U:
  case 636U:
  case 635U:
  case 634U:
  case 633U:
  case 632U:
  case 631U:
  case 630U:
  case 629U:
  case 628U:
  case 627U:
  case 626U:
  case 625U:
  case 624U:
  case 623U:
  case 622U:
  case 621U:
  case 620U:
  case 619U:
  case 618U:
  case 617U:
  case 616U:
  case 615U:
  case 614U:
  case 613U:
  case 612U:
  case 611U:
  case 610U:
  case 609U:
  case 608U:
  case 607U:
  case 606U:
  case 605U:
  case 604U:
  case 603U:
  case 602U:
  case 601U:
  case 600U:
  case 599U:
  case 598U:
  case 597U:
  case 596U:
  case 595U:
  case 594U:
  case 593U:
  case 592U:
  case 591U:
  case 590U:
  case 589U:
  case 588U:
  case 587U:
  case 586U:
  case 585U:
  case 584U:
  case 583U:
  case 582U:
  case 581U:
  case 580U:
  case 579U:
  case 578U:
  case 577U:
  case 576U:
  case 575U:
  case 574U:
  case 573U:
  case 572U:
  case 571U:
  case 570U:
  case 569U:
  case 568U:
  case 567U:
  case 566U:
  case 565U:
  case 564U:
  case 563U:
  case 562U:
  case 561U:
  case 560U:
  case 559U:
  case 558U:
  case 557U:
  case 556U:
  case 555U:
  case 554U:
  case 553U:
  case 552U:
  case 551U:
  case 550U:
  case 549U:
  case 548U:
  case 547U:
  case 546U:
  case 545U:
  case 544U:
  case 543U:
  case 542U:
  case 541U:
  case 540U:
  case 539U:
  case 538U:
  case 537U:
  case 536U:
  case 535U:
  case 534U:
  case 533U:
  case 532U:
  case 531U:
  case 530U:
  case 529U:
  case 528U:
  case 527U:
  case 526U:
  case 525U:
  case 524U:
  case 523U:
  case 522U:
  case 521U:
  case 520U:
  case 519U:
  case 518U:
  case 517U:
  case 516U:
  case 515U:
  case 514U:
  case 513U:
  case 512U:
  case 511U:
  case 510U:
  case 509U:
  case 508U:
  case 507U:
  case 506U:
  case 505U:
  case 504U:
  case 503U:
  case 502U:
  case 501U:
  case 500U:
  case 499U:
  case 498U:
  case 497U:
  case 496U:
  case 495U:
  case 494U:
  case 493U:
  case 492U:
  case 491U:
  case 490U:
  case 489U:
  case 488U:
  case 487U:
  case 486U:
  case 485U:
  case 484U:
  case 483U:
  case 482U:
  case 481U:
  case 480U:
  case 479U:
  case 478U:
  case 477U:
  case 476U:
  case 475U:
  case 474U:
  case 473U:
  case 472U:
  case 471U:
  case 470U:
  case 469U:
  case 468U:
  case 467U:
  case 466U:
  case 465U:
  case 464U:
  case 463U:
  case 462U:
  case 461U:
  case 460U:
  case 459U:
  case 458U:
  case 457U:
  case 456U:
  case 455U:
  case 454U:
  case 453U:
  case 452U:
  case 451U:
  case 450U:
  case 449U:
  case 448U:
  case 447U:
  case 446U:
  case 445U:
  case 444U:
  case 443U:
  case 442U:
  case 441U:
  case 440U:
  case 439U:
  case 438U:
  case 437U:
  case 436U:
  case 435U:
  case 434U:
  case 433U:
  case 432U:
  case 431U:
  case 430U:
  case 429U:
  case 428U:
  case 427U:
  case 426U:
  case 425U:
  case 424U:
  case 423U:
  case 422U:
  case 421U:
  case 420U:
  case 419U:
  case 418U:
  case 417U:
  case 416U:
  case 415U:
  case 414U:
  case 413U:
  case 412U:
  case 411U:
  case 410U:
  case 409U:
  case 408U:
  case 407U:
  case 406U:
  case 405U:
  case 404U:
  case 403U:
  case 402U:
  case 401U:
  case 400U:
  case 399U:
  case 398U:
  case 397U:
  case 396U:
  case 395U:
  case 394U:
  case 393U:
  case 392U:
  case 391U:
  case 390U:
  case 389U:
  case 388U:
  case 387U:
  case 386U:
  case 385U:
  case 384U:
  case 383U:
  case 382U:
  case 381U:
  case 380U:
  case 379U:
  case 378U:
  case 377U:
  case 376U:
  case 375U:
  case 374U:
  case 373U:
  case 372U:
  case 371U:
  case 370U:
  case 369U:
  case 368U:
  case 367U:
  case 366U:
  case 365U:
  case 364U:
  case 363U:
  case 362U:
  case 361U:
  case 360U:
  case 359U:
  case 358U:
  case 357U:
  case 356U:
  case 355U:
  case 354U:
  case 353U:
  case 352U:
  case 351U:
  case 350U:
  case 349U:
  case 348U:
  case 347U:
  case 346U:
  case 345U:
  case 344U:
  case 343U:
  case 342U:
  case 341U:
  case 340U:
  case 339U:
  case 338U:
  case 337U:
  case 336U:
  case 335U:
  case 334U:
  case 333U:
  case 332U:
  case 331U:
  case 330U:
  case 329U:
  case 328U:
  case 327U:
  case 326U:
  case 325U:
  case 324U:
  case 323U:
  case 322U:
  case 321U:
  case 320U:
  case 319U:
  case 318U:
  case 317U:
  case 316U:
  case 315U:
  case 314U:
  case 313U:
  case 312U:
  case 311U:
  case 310U:
  case 309U:
  case 308U:
  case 307U:
  case 306U:
  case 305U:
  case 304U:
  case 303U:
  case 302U:
  case 301U:
  case 300U:
  case 299U:
  case 298U:
  case 297U:
  case 296U:
  case 295U:
  case 294U:
  case 293U:
  case 292U:
  case 291U:
  case 290U:
  case 289U:
  case 288U:
  case 287U:
  case 286U:
  case 285U:
  case 284U:
  case 283U:
  case 282U:
  case 281U:
  case 280U:
  case 279U:
  case 278U:
  case 277U:
  case 276U:
  case 275U:
  case 274U:
  case 273U:
  case 272U:
  case 271U:
  case 270U:
  case 269U:
  case 268U:
  case 267U:
  case 266U:
  case 265U:
  case 264U:
  case 263U:
  case 262U:
  case 261U:
  case 260U:
  case 259U:
  case 258U:
  case 257U:
  case 256U:
  case 255U:
  case 254U:
  case 253U:
  case 252U:
  case 251U:
  case 250U:
  case 249U:
  case 248U:
  case 247U:
  case 246U:
  case 245U:
  case 244U:
  case 243U:
  case 242U:
  case 241U:
  case 240U:
  case 239U:
  case 238U:
  case 237U:
  case 236U:
  case 235U:
  case 234U:
  case 233U:
  case 232U:
  case 231U:
  case 230U:
  case 229U:
  case 228U:
  case 227U:
  case 226U:
  case 225U:
  case 224U:
  case 223U:
  case 222U:
  case 221U:
  case 220U:
  case 219U:
  case 218U:
  case 217U:
  case 216U:
  case 215U:
  case 214U:
  case 213U:
  case 212U:
  case 211U:
  case 210U:
  case 209U:
  case 208U:
  case 207U:
  case 206U:
  case 205U:
  case 204U:
  case 203U:
  case 202U:
  case 201U:
  case 200U:
  case 199U:
  case 198U:
  case 197U:
  case 196U:
  case 195U:
  case 194U:
  case 193U:
  case 192U:
  case 191U:
  case 190U:
  case 189U:
  case 188U:
  case 187U:
  case 186U:
  case 185U:
  case 184U:
  case 183U:
  case 182U:
  case 181U:
  case 180U:
  case 179U:
  case 178U:
  case 177U:
  case 176U:
  case 175U:
  case 174U:
  case 173U:
  case 172U:
  case 171U:
  case 170U:
  case 169U:
  case 168U:
  case 167U:
  case 166U:
  case 165U:
  case 164U:
  case 163U:
  case 162U:
  case 161U:
  case 160U:
  case 159U:
  case 158U:
  case 157U:
  case 156U:
  case 155U:
  case 154U:
  case 153U:
  case 152U:
  case 151U:
  case 150U:
  case 149U:
  case 148U:
  case 147U:
  case 146U:
  case 145U:
  case 144U:
  case 143U:
  case 142U:
  case 141U:
  case 140U:
  case 139U:
  case 138U:
  case 137U:
  case 136U: ;
  case 1087U:
  case 1086U:
  case 1085U:
  case 1084U:
  case 1083U:
  case 1082U:
  case 1081U:
  case 1080U:
  case 1079U:
  case 1078U:
  case 1077U:
  case 1076U:
  case 1075U:
  case 1074U:
  case 1073U:
  case 1072U:
  case 1071U:
  case 1070U:
  case 1069U:
  case 1068U:
  case 1067U:
  case 1066U:
  case 1065U:
  case 1064U:
  case 1063U:
  case 1062U:
  case 1061U:
  case 1060U:
  case 1059U:
  case 1058U:
  case 1057U:
  case 1056U:
  case 1055U:
  case 1054U:
  case 1053U:
  case 1052U:
  case 1051U:
  case 1050U:
  case 1049U:
  case 1048U:
  case 1047U:
  case 1046U:
  case 1045U:
  case 1044U:
  case 1043U:
  case 1042U:
  case 1041U:
  case 1040U:
  case 1039U:
  case 1038U:
  case 1037U:
  case 1036U:
  case 1035U:
  case 1034U:
  case 1033U:
  case 1032U:
  case 1031U:
  case 1030U:
  case 1029U:
  case 1028U:
  case 1027U: ;
  case 1151U:
  case 1150U:
  case 1149U:
  case 1148U:
  case 1147U:
  case 1146U:
  case 1145U:
  case 1144U:
  case 1143U:
  case 1142U:
  case 1141U:
  case 1140U:
  case 1139U:
  case 1138U:
  case 1137U:
  case 1136U:
  case 1135U:
  case 1134U:
  case 1133U:
  case 1132U:
  case 1131U:
  case 1130U:
  case 1129U:
  case 1128U:
  case 1127U:
  case 1126U:
  case 1125U:
  case 1124U:
  case 1123U:
  case 1122U:
  case 1121U:
  case 1120U:
  case 1119U:
  case 1118U:
  case 1117U:
  case 1116U:
  case 1115U:
  case 1114U:
  case 1113U:
  case 1112U:
  case 1111U:
  case 1110U:
  case 1109U:
  case 1108U:
  case 1107U:
  case 1106U:
  case 1105U:
  case 1104U:
  case 1103U:
  case 1102U:
  case 1101U:
  case 1100U:
  case 1099U:
  case 1098U:
  case 1097U:
  case 1096U:
  case 1095U:
  case 1094U:
  case 1093U:
  case 1092U:
  case 1091U: ;
  case 1195U:
  case 1194U: ;
  case 1201U:
  case 1200U: ;
  case 1213U:
  case 1212U:
  case 1211U:
  case 1210U:
  case 1209U:
  case 1208U:
  case 1207U:
  case 1206U: ;
  case 1279U:
  case 1278U:
  case 1277U:
  case 1276U:
  case 1275U:
  case 1274U:
  case 1273U:
  case 1272U:
  case 1271U:
  case 1270U:
  case 1269U:
  case 1268U:
  case 1267U:
  case 1266U:
  case 1265U:
  case 1264U:
  case 1263U:
  case 1262U:
  case 1261U:
  case 1260U:
  case 1259U:
  case 1258U:
  case 1257U:
  case 1256U:
  case 1255U:
  case 1254U:
  case 1253U:
  case 1252U:
  case 1251U:
  case 1250U:
  case 1249U:
  case 1248U:
  case 1247U:
  case 1246U:
  case 1245U:
  case 1244U:
  case 1243U:
  case 1242U:
  case 1241U:
  case 1240U:
  case 1239U:
  case 1238U:
  case 1237U:
  case 1236U:
  case 1235U:
  case 1234U:
  case 1233U:
  case 1232U:
  case 1231U:
  case 1230U:
  case 1229U:
  case 1228U:
  case 1227U:
  case 1226U:
  case 1225U:
  case 1224U:
  case 1223U:
  case 1222U:
  case 1221U:
  case 1220U:
  case 1219U:
  case 1218U:
  case 1217U:
  case 1216U: ;
  case 1311U:
  case 1310U:
  case 1309U:
  case 1308U:
  case 1307U:
  case 1306U:
  case 1305U:
  case 1304U:
  case 1303U:
  case 1302U:
  case 1301U:
  case 1300U:
  case 1299U:
  case 1298U:
  case 1297U:
  case 1296U:
  case 1295U:
  case 1294U:
  case 1293U:
  case 1292U:
  case 1291U:
  case 1290U: ;
  case 1343U:
  case 1342U:
  case 1341U:
  case 1340U:
  case 1339U:
  case 1338U:
  case 1337U:
  case 1336U:
  case 1335U:
  case 1334U:
  case 1333U:
  case 1332U:
  case 1331U:
  case 1330U:
  case 1329U:
  case 1328U:
  case 1327U:
  case 1326U:
  case 1325U:
  case 1324U:
  case 1323U: ;
  case 1359U:
  case 1358U: ;
  case 1375U:
  case 1374U:
  case 1373U:
  case 1372U:
  case 1371U:
  case 1370U:
  case 1369U:
  case 1368U: ;
  case 1383U:
  case 1382U:
  case 1381U:
  case 1380U:
  case 1379U:
  case 1378U: ;
  case 1391U:
  case 1390U:
  case 1389U:
  case 1388U: ;
  case 1395U:
  case 1394U:
  case 1393U: ;
  case 1403U:
  case 1402U: ;
  case 1471U:
  case 1470U:
  case 1469U:
  case 1468U:
  case 1467U:
  case 1466U:
  case 1465U:
  case 1464U:
  case 1463U:
  case 1462U:
  case 1461U:
  case 1460U:
  case 1459U:
  case 1458U:
  case 1457U:
  case 1456U:
  case 1455U:
  case 1454U:
  case 1453U:
  case 1452U:
  case 1451U:
  case 1450U:
  case 1449U:
  case 1448U:
  case 1447U:
  case 1446U:
  case 1445U:
  case 1444U:
  case 1443U:
  case 1442U:
  case 1441U:
  case 1440U:
  case 1439U:
  case 1438U:
  case 1437U:
  case 1436U:
  case 1435U:
  case 1434U:
  case 1433U:
  case 1432U:
  case 1431U:
  case 1430U:
  case 1429U:
  case 1428U:
  case 1427U:
  case 1426U:
  case 1425U:
  case 1424U:
  case 1423U:
  case 1422U:
  case 1421U:
  case 1420U:
  case 1419U:
  case 1418U:
  case 1417U:
  case 1416U:
  case 1415U:
  case 1414U:
  case 1413U:
  case 1412U:
  case 1411U:
  case 1410U: ;
  case 1535U:
  case 1534U:
  case 1533U:
  case 1532U:
  case 1531U:
  case 1530U:
  case 1529U:
  case 1528U:
  case 1527U:
  case 1526U:
  case 1525U:
  case 1524U:
  case 1523U:
  case 1522U:
  *(regbuf + (unsigned long )i) = 0U;
  goto ldv_51965;
  default:
  *(regbuf + (unsigned long )i) = ioread32((void *)(hw->hw_addr + (unsigned long )i * 4UL));
  }
  ldv_51965:
  i = i + 1U;
  ldv_51968: ;
  if (i <= 1537U) {
    goto ldv_51967;
  } else {
  }
  return;
}
}
static void atl1_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_tpd_ring *txdr ;
  struct atl1_rfd_ring *rxdr ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  txdr = & adapter->tpd_ring;
  rxdr = & adapter->rfd_ring;
  ring->rx_max_pending = 2048U;
  ring->tx_max_pending = 1024U;
  ring->rx_pending = (__u32 )rxdr->count;
  ring->tx_pending = (__u32 )txdr->count;
  return;
}
}
static int atl1_set_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_tpd_ring *tpdr ;
  struct atl1_rrd_ring *rrdr ;
  struct atl1_rfd_ring *rfdr ;
  struct atl1_tpd_ring tpd_old ;
  struct atl1_tpd_ring tpd_new ;
  struct atl1_rfd_ring rfd_old ;
  struct atl1_rfd_ring rfd_new ;
  struct atl1_rrd_ring rrd_old ;
  struct atl1_rrd_ring rrd_new ;
  struct atl1_ring_header rhdr_old ;
  struct atl1_ring_header rhdr_new ;
  struct atl1_smb smb ;
  struct atl1_cmb cmb ;
  int err ;
  bool tmp___0 ;
  __u32 _max1 ;
  unsigned int _max2 ;
  __u32 _max1___0 ;
  unsigned int _max2___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  tpdr = & adapter->tpd_ring;
  rrdr = & adapter->rrd_ring;
  rfdr = & adapter->rfd_ring;
  tpd_old = adapter->tpd_ring;
  rfd_old = adapter->rfd_ring;
  rrd_old = adapter->rrd_ring;
  rhdr_old = adapter->ring_header;
  tmp___0 = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp___0) {
    atl1_down(adapter);
  } else {
  }
  _max1 = ring->rx_pending;
  _max2 = 128U;
  rfdr->count = (unsigned short )(_max1 > _max2 ? _max1 : _max2);
  rfdr->count = 2048U < (unsigned int )rfdr->count ? 2048U : rfdr->count;
  rfdr->count = (unsigned int )((u16 )((unsigned int )rfdr->count + 3U)) & 65532U;
  rrdr->count = rfdr->count;
  _max1___0 = ring->tx_pending;
  _max2___0 = 64U;
  tpdr->count = (unsigned short )(_max1___0 > _max2___0 ? _max1___0 : _max2___0);
  tpdr->count = 1024U < (unsigned int )tpdr->count ? 1024U : tpdr->count;
  tpdr->count = (unsigned int )((u16 )((unsigned int )tpdr->count + 3U)) & 65532U;
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp___1) {
    err = atl1_setup_ring_resources(adapter);
    if (err != 0) {
      goto err_setup_ring;
    } else {
    }
    rfd_new = adapter->rfd_ring;
    rrd_new = adapter->rrd_ring;
    tpd_new = adapter->tpd_ring;
    rhdr_new = adapter->ring_header;
    adapter->rfd_ring = rfd_old;
    adapter->rrd_ring = rrd_old;
    adapter->tpd_ring = tpd_old;
    adapter->ring_header = rhdr_old;
    smb = adapter->smb;
    cmb = adapter->cmb;
    atl1_free_ring_resources(adapter);
    adapter->rfd_ring = rfd_new;
    adapter->rrd_ring = rrd_new;
    adapter->tpd_ring = tpd_new;
    adapter->ring_header = rhdr_new;
    adapter->smb = smb;
    adapter->cmb = cmb;
    err = atl1_up(adapter);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  return (0);
  err_setup_ring:
  adapter->rfd_ring = rfd_old;
  adapter->rrd_ring = rrd_old;
  adapter->tpd_ring = tpd_old;
  adapter->ring_header = rhdr_old;
  atl1_up(adapter);
  return (err);
}
}
static void atl1_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *epause )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    epause->autoneg = 1U;
  } else {
    epause->autoneg = 0U;
  }
  epause->rx_pause = 1U;
  epause->tx_pause = 1U;
  return;
}
}
static int atl1_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *epause )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
    epause->autoneg = 1U;
  } else {
    epause->autoneg = 0U;
  }
  epause->rx_pause = 1U;
  epause->tx_pause = 1U;
  return (0);
}
}
static void atl1_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  u8 *p ;
  int i ;
  {
  p = data;
  switch (stringset) {
  case 1U:
  i = 0;
  goto ldv_52026;
  ldv_52025:
  memcpy((void *)p, (void const *)(& atl1_gstrings_stats[i].stat_string), 32UL);
  p = p + 32UL;
  i = i + 1;
  ldv_52026: ;
  if ((unsigned int )i <= 28U) {
    goto ldv_52025;
  } else {
  }
  goto ldv_52028;
  }
  ldv_52028: ;
  return;
}
}
static int atl1_nway_reset(struct net_device *netdev )
{
  struct atl1_adapter *adapter ;
  void *tmp ;
  struct atl1_hw *hw ;
  u16 phy_data ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct atl1_adapter *)tmp;
  hw = & adapter->hw;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    atl1_down(adapter);
    if ((unsigned int )hw->media_type == 0U || (unsigned int )hw->media_type == 1U) {
      phy_data = 36864U;
    } else {
      switch ((int )hw->media_type) {
      case 2:
      phy_data = 41216U;
      goto ldv_52036;
      case 3:
      phy_data = 40960U;
      goto ldv_52036;
      case 4:
      phy_data = 33024U;
      goto ldv_52036;
      default:
      phy_data = 32768U;
      }
      ldv_52036: ;
    }
    atl1_write_phy_reg(hw, 0U, (int )phy_data);
    atl1_up(adapter);
  } else {
  }
  return (0);
}
}
static struct ethtool_ops const atl1_ethtool_ops =
     {& atl1_get_settings, & atl1_set_settings, & atl1_get_drvinfo, & atl1_get_regs_len,
    & atl1_get_regs, & atl1_get_wol, & atl1_set_wol, & atl1_get_msglevel, & atl1_set_msglevel,
    & atl1_nway_reset, & ethtool_op_get_link, 0, 0, 0, 0, 0, & atl1_get_ringparam,
    & atl1_set_ringparam, & atl1_get_pauseparam, & atl1_set_pauseparam, 0, & atl1_get_strings,
    0, & atl1_get_ethtool_stats, 0, 0, 0, 0, & atl1_get_sset_count, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int atl1_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv___pci_register_driver_51(& atl1_driver, & __this_module, "atl1");
  return (tmp);
}
}
static void atl1_driver_exit(void)
{
  {
  ldv_pci_unregister_driver_52(& atl1_driver);
  return;
}
}
int ldv_retval_20 ;
extern int ldv_resume_noirq_8(void) ;
extern int ldv_restore_noirq_8(void) ;
int ldv_retval_18 ;
extern int ldv_ndo_uninit_7(void) ;
int ldv_retval_2 ;
extern int ldv_prepare_8(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
int ldv_retval_22 ;
extern int ldv_restore_early_8(void) ;
int ldv_retval_15 ;
extern int ldv_thaw_noirq_8(void) ;
extern int ldv_thaw_early_8(void) ;
int ldv_retval_16 ;
extern int ldv_poweroff_late_8(void) ;
extern int ldv_suspend_noirq_8(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_ndo_init_7(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
int ldv_retval_12 ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_freeze_noirq_8(void) ;
extern int ldv_freeze_late_8(void) ;
extern int ldv_poweroff_noirq_8(void) ;
int ldv_retval_21 ;
extern int ldv_suspend_late_8(void) ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
extern int ldv_resume_early_8(void) ;
int ldv_retval_3 ;
extern int ldv_complete_8(void) ;
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void ldv_net_device_ops_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  atl1_netdev_ops_group1 = (struct net_device *)tmp;
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
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_4_0 == (unsigned long )timer) {
    if (ldv_timer_4_0 == 2 || pending_flag != 0) {
      ldv_timer_list_4_0 = timer;
      ldv_timer_list_4_0->data = data;
      ldv_timer_4_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_1 == (unsigned long )timer) {
    if (ldv_timer_4_1 == 2 || pending_flag != 0) {
      ldv_timer_list_4_1 = timer;
      ldv_timer_list_4_1->data = data;
      ldv_timer_4_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_2 == (unsigned long )timer) {
    if (ldv_timer_4_2 == 2 || pending_flag != 0) {
      ldv_timer_list_4_2 = timer;
      ldv_timer_list_4_2->data = data;
      ldv_timer_4_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_3 == (unsigned long )timer) {
    if (ldv_timer_4_3 == 2 || pending_flag != 0) {
      ldv_timer_list_4_3 = timer;
      ldv_timer_list_4_3->data = data;
      ldv_timer_4_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_4(timer, data);
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& atl1_intr)) {
    return (1);
  } else {
  }
  return (0);
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
void timer_init_4(void)
{
  {
  ldv_timer_4_0 = 0;
  ldv_timer_4_1 = 0;
  ldv_timer_4_2 = 0;
  ldv_timer_4_3 = 0;
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_ethtool_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_init_zalloc(36UL);
  atl1_ethtool_ops_group0 = (struct ethtool_ringparam *)tmp;
  tmp___0 = ldv_init_zalloc(3008UL);
  atl1_ethtool_ops_group3 = (struct net_device *)tmp___0;
  tmp___1 = ldv_init_zalloc(44UL);
  atl1_ethtool_ops_group1 = (struct ethtool_cmd *)tmp___1;
  tmp___2 = ldv_init_zalloc(20UL);
  atl1_ethtool_ops_group4 = (struct ethtool_wolinfo *)tmp___2;
  tmp___3 = ldv_init_zalloc(16UL);
  atl1_ethtool_ops_group2 = (struct ethtool_pauseparam *)tmp___3;
  return;
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
  goto ldv_52156;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_52156;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_52156;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_52156;
  default:
  ldv_stop();
  }
  ldv_52156: ;
  return;
}
}
void choose_timer_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_4_0 == 1) {
    ldv_timer_4_0 = 2;
    ldv_timer_4(ldv_timer_4_0, ldv_timer_list_4_0);
  } else {
  }
  goto ldv_52165;
  case 1: ;
  if (ldv_timer_4_1 == 1) {
    ldv_timer_4_1 = 2;
    ldv_timer_4(ldv_timer_4_1, ldv_timer_list_4_1);
  } else {
  }
  goto ldv_52165;
  case 2: ;
  if (ldv_timer_4_2 == 1) {
    ldv_timer_4_2 = 2;
    ldv_timer_4(ldv_timer_4_2, ldv_timer_list_4_2);
  } else {
  }
  goto ldv_52165;
  case 3: ;
  if (ldv_timer_4_3 == 1) {
    ldv_timer_4_3 = 2;
    ldv_timer_4(ldv_timer_4_3, ldv_timer_list_4_3);
  } else {
  }
  goto ldv_52165;
  default:
  ldv_stop();
  }
  ldv_52165: ;
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    atlx_link_chg_task(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    atlx_link_chg_task(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    atlx_link_chg_task(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    atlx_link_chg_task(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if (ldv_timer_4_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_0) {
    ldv_timer_4_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_1) {
    ldv_timer_4_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_2) {
    ldv_timer_4_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_3) {
    ldv_timer_4_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
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
int reg_timer_4(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& atl1_phy_config)) {
    activate_suitable_timer_4(timer, data);
  } else {
  }
  return (0);
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    atlx_link_chg_task(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_52196;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    atlx_link_chg_task(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_52196;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    atlx_link_chg_task(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_52196;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    atlx_link_chg_task(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_52196;
  default:
  ldv_stop();
  }
  ldv_52196: ;
  return;
}
}
void ldv_dev_pm_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  atl1_pm_ops_group1 = (struct device *)tmp;
  return;
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
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = atl1_intr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_52215;
    default:
    ldv_stop();
    }
    ldv_52215: ;
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
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
void ldv_timer_4(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  atl1_phy_config(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void activate_suitable_timer_4(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_4_0 == 0 || ldv_timer_4_0 == 2) {
    ldv_timer_list_4_0 = timer;
    ldv_timer_list_4_0->data = data;
    ldv_timer_4_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_1 == 0 || ldv_timer_4_1 == 2) {
    ldv_timer_list_4_1 = timer;
    ldv_timer_list_4_1->data = data;
    ldv_timer_4_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_2 == 0 || ldv_timer_4_2 == 2) {
    ldv_timer_list_4_2 = timer;
    ldv_timer_list_4_2->data = data;
    ldv_timer_4_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_3 == 0 || ldv_timer_4_3 == 2) {
    ldv_timer_list_4_3 = timer;
    ldv_timer_list_4_3->data = data;
    ldv_timer_4_3 = 1;
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
    atl1_reset_dev_task(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    atl1_reset_dev_task(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    atl1_reset_dev_task(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    atl1_reset_dev_task(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_pci_driver_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  atl1_driver_group1 = (struct pci_dev *)tmp;
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
    atl1_reset_dev_task(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_52248;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    atl1_reset_dev_task(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_52248;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    atl1_reset_dev_task(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_52248;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    atl1_reset_dev_task(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_52248;
  default:
  ldv_stop();
  }
  ldv_52248: ;
  return;
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  void *ldvarg1 ;
  void *tmp___0 ;
  struct ifreq *ldvarg7 ;
  void *tmp___1 ;
  int ldvarg4 ;
  struct sk_buff *ldvarg3 ;
  void *tmp___2 ;
  netdev_features_t ldvarg5 ;
  netdev_features_t ldvarg2 ;
  int ldvarg6 ;
  int ldvarg11 ;
  void *ldvarg12 ;
  void *tmp___3 ;
  struct ethtool_drvinfo *ldvarg16 ;
  void *tmp___4 ;
  struct ethtool_stats *ldvarg15 ;
  void *tmp___5 ;
  u8 *ldvarg8 ;
  void *tmp___6 ;
  u64 *ldvarg14 ;
  void *tmp___7 ;
  struct ethtool_regs *ldvarg13 ;
  void *tmp___8 ;
  u32 ldvarg10 ;
  u32 ldvarg9 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg1 = tmp___0;
  tmp___1 = ldv_init_zalloc(40UL);
  ldvarg7 = (struct ifreq *)tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg3 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg12 = tmp___3;
  tmp___4 = ldv_init_zalloc(196UL);
  ldvarg16 = (struct ethtool_drvinfo *)tmp___4;
  tmp___5 = ldv_init_zalloc(8UL);
  ldvarg15 = (struct ethtool_stats *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg8 = (u8 *)tmp___6;
  tmp___7 = ldv_init_zalloc(8UL);
  ldvarg14 = (u64 *)tmp___7;
  tmp___8 = ldv_init_zalloc(12UL);
  ldvarg13 = (struct ethtool_regs *)tmp___8;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 8UL);
  ldv_memset((void *)(& ldvarg2), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  timer_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_52362:
  tmp___9 = __VERIFIER_nondet_int();
  switch (tmp___9) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = atl1_probe(atl1_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52285;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      atl1_shutdown(atl1_driver_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_52285;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      atl1_remove(atl1_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_52285;
    default:
    ldv_stop();
    }
    ldv_52285: ;
  } else {
  }
  goto ldv_52289;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_52289;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_7 == 3) {
      atl1_close(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      atlx_set_multi(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atlx_set_multi(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atlx_set_multi(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      eth_validate_addr(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      eth_validate_addr(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      eth_validate_addr(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      atlx_ioctl(atl1_netdev_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atlx_ioctl(atl1_netdev_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atlx_ioctl(atl1_netdev_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      atl1_poll_controller(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atl1_poll_controller(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atl1_poll_controller(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      atlx_set_features(atl1_netdev_ops_group1, ldvarg5);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atlx_set_features(atl1_netdev_ops_group1, ldvarg5);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atlx_set_features(atl1_netdev_ops_group1, ldvarg5);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 6: ;
    if (ldv_state_variable_7 == 3) {
      atl1_change_mtu(atl1_netdev_ops_group1, ldvarg4);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atl1_change_mtu(atl1_netdev_ops_group1, ldvarg4);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 7: ;
    if (ldv_state_variable_7 == 2) {
      ldv_retval_2 = atl1_open(atl1_netdev_ops_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_7 = 3;
      } else {
      }
    } else {
    }
    goto ldv_52293;
    case 8: ;
    if (ldv_state_variable_7 == 3) {
      atl1_xmit_frame(ldvarg3, atl1_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_52293;
    case 9: ;
    if (ldv_state_variable_7 == 1) {
      atlx_fix_features(atl1_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atlx_fix_features(atl1_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atlx_fix_features(atl1_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 10: ;
    if (ldv_state_variable_7 == 1) {
      atl1_set_mac(atl1_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atl1_set_mac(atl1_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atl1_set_mac(atl1_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 11: ;
    if (ldv_state_variable_7 == 1) {
      atlx_tx_timeout(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      atlx_tx_timeout(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      atlx_tx_timeout(atl1_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52293;
    case 12: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_1 = ldv_ndo_init_7();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52293;
    case 13: ;
    if (ldv_state_variable_7 == 2) {
      ldv_ndo_uninit_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52293;
    default:
    ldv_stop();
    }
    ldv_52293: ;
  } else {
  }
  goto ldv_52289;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_52289;
  case 4: ;
  if (ldv_state_variable_8 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_8 == 12) {
      ldv_retval_21 = atl1_resume(atl1_pm_ops_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 1: ;
    if (ldv_state_variable_8 == 13) {
      ldv_retval_20 = atl1_resume(atl1_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 2: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_19 = atl1_suspend(atl1_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_8 = 3;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 3: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_18 = atl1_suspend(atl1_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_8 = 4;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 4: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_17 = atl1_suspend(atl1_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_8 = 5;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 5: ;
    if (ldv_state_variable_8 == 14) {
      ldv_retval_16 = atl1_resume(atl1_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 6: ;
    if (ldv_state_variable_8 == 5) {
      ldv_retval_15 = ldv_suspend_late_8();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_8 = 10;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 7: ;
    if (ldv_state_variable_8 == 7) {
      ldv_retval_14 = ldv_restore_early_8();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_8 = 12;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 8: ;
    if (ldv_state_variable_8 == 10) {
      ldv_retval_13 = ldv_resume_early_8();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_8 = 14;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 9: ;
    if (ldv_state_variable_8 == 9) {
      ldv_retval_12 = ldv_thaw_early_8();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_8 = 13;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 10: ;
    if (ldv_state_variable_8 == 11) {
      ldv_retval_11 = ldv_resume_noirq_8();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_8 = 14;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 11: ;
    if (ldv_state_variable_8 == 4) {
      ldv_retval_10 = ldv_freeze_noirq_8();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_8 = 8;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 12: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_9 = ldv_prepare_8();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 13: ;
    if (ldv_state_variable_8 == 4) {
      ldv_retval_8 = ldv_freeze_late_8();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_8 = 9;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 14: ;
    if (ldv_state_variable_8 == 8) {
      ldv_retval_7 = ldv_thaw_noirq_8();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_8 = 13;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 15: ;
    if (ldv_state_variable_8 == 3) {
      ldv_retval_6 = ldv_poweroff_noirq_8();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_8 = 6;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 16: ;
    if (ldv_state_variable_8 == 3) {
      ldv_retval_5 = ldv_poweroff_late_8();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_8 = 7;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 17: ;
    if (ldv_state_variable_8 == 6) {
      ldv_retval_4 = ldv_restore_noirq_8();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_8 = 12;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 18: ;
    if (ldv_state_variable_8 == 5) {
      ldv_retval_3 = ldv_suspend_noirq_8();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_8 = 11;
      } else {
      }
    } else {
    }
    goto ldv_52311;
    case 19: ;
    if (ldv_state_variable_8 == 15) {
      ldv_complete_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52311;
    default:
    ldv_stop();
    }
    ldv_52311: ;
  } else {
  }
  goto ldv_52289;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_52289;
  case 6: ;
  if (ldv_state_variable_4 != 0) {
    choose_timer_4();
  } else {
  }
  goto ldv_52289;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      atl1_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_52337;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_22 = atl1_driver_init();
      if (ldv_retval_22 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_ethtool_ops_5();
        ldv_state_variable_8 = 1;
        ldv_dev_pm_ops_8();
      } else {
      }
      if (ldv_retval_22 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_52337;
    default:
    ldv_stop();
    }
    ldv_52337: ;
  } else {
  }
  goto ldv_52289;
  case 8: ;
  if (ldv_state_variable_5 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_drvinfo(atl1_ethtool_ops_group3, ldvarg16);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      atl1_set_pauseparam(atl1_ethtool_ops_group3, atl1_ethtool_ops_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_ethtool_stats(atl1_ethtool_ops_group3, ldvarg15, ldvarg14);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_ringparam(atl1_ethtool_ops_group3, atl1_ethtool_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_regs(atl1_ethtool_ops_group3, ldvarg13, ldvarg12);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_pauseparam(atl1_ethtool_ops_group3, atl1_ethtool_ops_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_sset_count(atl1_ethtool_ops_group3, ldvarg11);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_settings(atl1_ethtool_ops_group3, atl1_ethtool_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      atl1_set_wol(atl1_ethtool_ops_group3, atl1_ethtool_ops_group4);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      atl1_set_msglevel(atl1_ethtool_ops_group3, ldvarg10);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      atl1_set_settings(atl1_ethtool_ops_group3, atl1_ethtool_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_strings(atl1_ethtool_ops_group3, ldvarg9, ldvarg8);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 12: ;
    if (ldv_state_variable_5 == 1) {
      atl1_nway_reset(atl1_ethtool_ops_group3);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 13: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_wol(atl1_ethtool_ops_group3, atl1_ethtool_ops_group4);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 14: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_msglevel(atl1_ethtool_ops_group3);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 15: ;
    if (ldv_state_variable_5 == 1) {
      atl1_get_regs_len(atl1_ethtool_ops_group3);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 16: ;
    if (ldv_state_variable_5 == 1) {
      atl1_set_ringparam(atl1_ethtool_ops_group3, atl1_ethtool_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    case 17: ;
    if (ldv_state_variable_5 == 1) {
      ethtool_op_get_link(atl1_ethtool_ops_group3);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_52342;
    default:
    ldv_stop();
    }
    ldv_52342: ;
  } else {
  }
  goto ldv_52289;
  default:
  ldv_stop();
  }
  ldv_52289: ;
  goto ldv_52362;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_9(lock);
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
  activate_work_3(ldv_func_arg3, 2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
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
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
__inline static void *kzalloc(size_t size , gfp_t flags )
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
int ldv_mod_timer_43(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
__inline static int ldv_request_irq_44(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_45(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_register_netdev_47(struct net_device *dev )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_net_device_ops_7();
  return (ldv_func_res);
}
}
void ldv_free_netdev_48(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_unregister_netdev_49(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_free_netdev_50(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
int ldv___pci_register_driver_51(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_pci_driver_6();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_52(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_6 = 0;
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
int __VERIFIER_nondet_int(void);
int ___pskb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
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
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_notice(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void *external_alloc(void);
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return (void *)external_alloc();
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void enable_irq(unsigned int arg0) {
  return;
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
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int generic_mii_ioctl(struct mii_if_info *arg0, struct mii_ioctl_data *arg1, int arg2, unsigned int *arg3) {
  return __VERIFIER_nondet_int();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread16(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16(u16 arg0, void *arg1) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void iowrite8(u8 arg0, void *arg1) {
  return;
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_8() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_8() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_8() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void napi_disable(struct napi_struct *arg0) {
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
int __VERIFIER_nondet_int(void);
int netif_receive_skb_sk(struct sock *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
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
int __VERIFIER_nondet_int(void);
int pci_wake_from_d3(struct pci_dev *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
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
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
