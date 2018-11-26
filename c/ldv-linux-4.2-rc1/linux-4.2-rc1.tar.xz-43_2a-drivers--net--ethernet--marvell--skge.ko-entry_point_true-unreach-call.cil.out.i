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
struct ethtool_cmd;
struct ethtool_eeprom;
struct ethtool_ringparam;
struct ethtool_coalesce;
struct ethtool_wolinfo;
struct ethtool_pauseparam;
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
struct dmi_strmatch {
   unsigned char slot : 7 ;
   unsigned char exact_match : 1 ;
   char substr[79U] ;
};
struct dmi_system_id {
   int (*callback)(struct dmi_system_id const * ) ;
   char const *ident ;
   struct dmi_strmatch matches[4U] ;
   void *driver_data ;
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
enum ldv_27887 {
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
typedef enum ldv_27887 phy_interface_t;
enum ldv_27941 {
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
   enum ldv_27941 state ;
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
struct netdev_notifier_info {
   struct net_device *dev ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
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
union __anonunion____missing_field_name_326 {
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
   union __anonunion____missing_field_name_326 __annonCompField95 ;
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
struct skge_rx_desc {
   u32 control ;
   u32 next_offset ;
   u32 dma_lo ;
   u32 dma_hi ;
   u32 status ;
   u32 timestamp ;
   u16 csum2 ;
   u16 csum1 ;
   u16 csum2_start ;
   u16 csum1_start ;
};
struct skge_tx_desc {
   u32 control ;
   u32 next_offset ;
   u32 dma_lo ;
   u32 dma_hi ;
   u32 status ;
   u32 csum_offs ;
   u16 csum_write ;
   u16 csum_start ;
   u32 rsvd ;
};
struct skge_element {
   struct skge_element *next ;
   void *desc ;
   struct sk_buff *skb ;
   dma_addr_t mapaddr ;
   __u32 maplen ;
};
struct skge_ring {
   struct skge_element *to_clean ;
   struct skge_element *to_use ;
   struct skge_element *start ;
   unsigned long count ;
};
struct skge_hw {
   void *regs ;
   struct pci_dev *pdev ;
   spinlock_t hw_lock ;
   u32 intr_mask ;
   struct net_device *dev[2U] ;
   u8 chip_id ;
   u8 chip_rev ;
   u8 copper ;
   u8 ports ;
   u8 phy_type ;
   u32 ram_size ;
   u32 ram_offset ;
   u16 phy_addr ;
   spinlock_t phy_lock ;
   struct tasklet_struct phy_task ;
   char irq_name[0U] ;
};
enum pause_control {
    FLOW_MODE_NONE = 1,
    FLOW_MODE_LOC_SEND = 2,
    FLOW_MODE_SYMMETRIC = 3,
    FLOW_MODE_SYM_OR_REM = 4
} ;
enum pause_status {
    FLOW_STAT_INDETERMINATED = 0,
    FLOW_STAT_NONE = 1,
    FLOW_STAT_REM_SEND = 2,
    FLOW_STAT_LOC_SEND = 3,
    FLOW_STAT_SYMMETRIC = 4
} ;
struct skge_port {
   struct skge_hw *hw ;
   struct net_device *netdev ;
   struct napi_struct napi ;
   int port ;
   u32 msg_enable ;
   struct skge_ring tx_ring ;
   struct skge_ring rx_ring ;
   unsigned int rx_buf_size ;
   struct timer_list link_timer ;
   enum pause_control flow_control ;
   enum pause_status flow_status ;
   u8 blink_on ;
   u8 wol ;
   u8 autoneg ;
   u8 duplex ;
   u16 speed ;
   u32 advertising ;
   void *mem ;
   dma_addr_t dma ;
   unsigned long mem_size ;
   struct dentry *debugfs ;
};
struct skge_stat {
   char name[32U] ;
   u16 xmac_offset ;
   u16 gma_offset ;
};
enum led_mode {
    LED_MODE_OFF = 0,
    LED_MODE_ON = 1,
    LED_MODE_TST = 2
} ;
struct __anonstruct_A1hack_335 {
   u16 reg ;
   u16 val ;
};
struct __anonstruct_C0hack_336 {
   u16 reg ;
   u16 val ;
};
struct __anonstruct_skge_chips_341 {
   u8 id ;
   char const *name ;
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
void __builtin_prefetch(void const * , ...) ;
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
extern int printk(char const * , ...) ;
extern void __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * ,
                                 char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
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
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  __local_bh_disable_ip(0UL, 512U);
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  __local_bh_enable_ip(0UL, 512U);
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
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
__inline static void ldv_spin_lock_irq_8(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
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
__inline static void ldv_spin_unlock_irq_11(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
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
int ldv_mod_timer_38(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_39(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_40(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_42(struct timer_list *ldv_func_arg1 ) ;
extern unsigned long round_jiffies(unsigned long ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
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
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
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
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  memcpy(dst, (void const *)src, count);
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  memcpy((void *)dst, src, count);
  return;
}
}
extern int cpu_number ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_20(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
struct ethtool_cmd *skge_ethtool_ops_group1 ;
int ldv_state_variable_8 ;
int pci_counter ;
struct ethtool_eeprom *skge_ethtool_ops_group2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_irq_2_0 = 0;
struct timer_list *ldv_timer_list_3_1 ;
struct file *skge_debug_fops_group2 ;
struct net_device *skge_netdev_ops_group1 ;
struct timer_list *ldv_timer_list_3_2 ;
int ldv_timer_3_3 ;
struct timer_list *ldv_timer_list_3_3 ;
struct inode *skge_debug_fops_group1 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
int ldv_state_variable_9 ;
int ldv_irq_line_2_0 ;
int ldv_timer_3_1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct ethtool_ringparam *skge_ethtool_ops_group0 ;
int ldv_irq_line_1_2 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
struct pci_dev *skge_driver_group1 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct device *skge_pm_ops_group1 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
int ldv_irq_line_1_3 ;
int ldv_timer_3_2 ;
struct ethtool_coalesce *skge_ethtool_ops_group4 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct net_device *skge_ethtool_ops_group5 ;
int ldv_timer_3_0 ;
struct timer_list *ldv_timer_list_3_0 ;
struct ethtool_wolinfo *skge_ethtool_ops_group6 ;
int ldv_state_variable_4 ;
struct ethtool_pauseparam *skge_ethtool_ops_group3 ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void choose_timer_3(void) ;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void timer_init_3(void) ;
void ldv_pci_driver_4(void) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_ethtool_ops_9(void) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data ) ;
void ldv_net_device_ops_6(void) ;
void ldv_file_operations_8(void) ;
void ldv_dev_pm_ops_5(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_timer_3(int state , struct timer_list *timer ) ;
extern void __const_udelay(unsigned long ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
__inline static bool device_can_wakeup(struct device *dev )
{
  {
  return ((int )dev->power.can_wakeup != 0);
}
}
__inline static bool device_may_wakeup(struct device *dev )
{
  {
  return ((bool )((unsigned int )*((unsigned char *)dev + 524UL) != 0U && (unsigned long )dev->power.wakeup != (unsigned long )((struct wakeup_source *)0)));
}
}
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void dql_queued(struct dql *dql , unsigned int count )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(count > 268435455U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/dynamic_queue_limits.h"),
                         "i" (74), "i" (12UL));
    ldv_25388: ;
    goto ldv_25388;
  } else {
  }
  dql->last_obj_cnt = count;
  __asm__ volatile ("": : : "memory");
  dql->num_queued = dql->num_queued + count;
  return;
}
}
__inline static int dql_avail(struct dql const *dql )
{
  unsigned int __var ;
  unsigned int __var___0 ;
  {
  __var = 0U;
  __var___0 = 0U;
  return ((int )((unsigned int )*((unsigned int const volatile *)(& dql->adj_limit)) - (unsigned int )*((unsigned int const volatile *)(& dql->num_queued))));
}
}
extern void dql_completed(struct dql * , unsigned int ) ;
extern void dql_reset(struct dql * ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern int net_ratelimit(void) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
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
    ldv_31594: ;
    goto ldv_31594;
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
    ldv_31603: ;
    goto ldv_31603;
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
                         "i" (84), "i" (12UL));
    ldv_31638: ;
    goto ldv_31638;
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
    ldv_31646: ;
    goto ldv_31646;
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
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
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
                         "i" (108), "i" (12UL));
    ldv_31654: ;
    goto ldv_31654;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
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
                         "i" (120), "i" (12UL));
    ldv_31662: ;
    goto ldv_31662;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
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
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern int skb_pad(struct sk_buff * , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  tmp = skb_headroom(skb);
  return ((int )((unsigned int )skb->__annonCompField81.__annonCompField80.csum_start - tmp));
}
}
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_33(dev, length, gfp);
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
__inline static int skb_padto(struct sk_buff *skb , unsigned int len )
{
  unsigned int size ;
  long tmp ;
  int tmp___0 ;
  {
  size = skb->len;
  tmp = ldv__builtin_expect(size >= len, 1L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  tmp___0 = skb_pad(skb, (int )(len - size));
  return (tmp___0);
}
}
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
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
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_43(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_53(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
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
extern void __napi_complete(struct napi_struct * ) ;
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
    ldv_41747: ;
    goto ldv_41747;
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
extern int register_netdevice_notifier(struct notifier_block * ) ;
extern int unregister_netdevice_notifier(struct notifier_block * ) ;
__inline static struct net_device *netdev_notifier_info_to_dev(struct netdev_notifier_info const *info )
{
  {
  return ((struct net_device *)info->dev);
}
}
extern int dev_close(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_48(struct net_device *dev ) ;
void ldv_free_netdev_50(struct net_device *dev ) ;
void ldv_free_netdev_55(struct net_device *dev ) ;
void ldv_free_netdev_56(struct net_device *dev ) ;
extern void netif_schedule_queue(struct netdev_queue * ) ;
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
__inline static void netdev_tx_sent_queue(struct netdev_queue *dev_queue , unsigned int bytes )
{
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  dql_queued(& dev_queue->dql, bytes);
  tmp = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___0 = ldv__builtin_expect(tmp >= 0, 1L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___2 = ldv__builtin_expect(tmp___1 >= 0, 0L);
  if (tmp___2 != 0L) {
    clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  } else {
  }
  return;
}
}
__inline static void netdev_sent_queue(struct net_device *dev , unsigned int bytes )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netdev_tx_sent_queue(tmp, bytes);
  return;
}
}
__inline static void netdev_tx_completed_queue(struct netdev_queue *dev_queue , unsigned int pkts ,
                                               unsigned int bytes )
{
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(bytes == 0U, 0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dql_completed(& dev_queue->dql, bytes);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = dql_avail((struct dql const *)(& dev_queue->dql));
  if (tmp___0 < 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___1 != 0) {
    netif_schedule_queue(dev_queue);
  } else {
  }
  return;
}
}
__inline static void netdev_completed_queue(struct net_device *dev , unsigned int pkts ,
                                            unsigned int bytes )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netdev_tx_completed_queue(tmp, pkts, bytes);
  return;
}
}
__inline static void netdev_tx_reset_queue(struct netdev_queue *q )
{
  {
  clear_bit(1L, (unsigned long volatile *)(& q->state));
  dql_reset(& q->dql);
  return;
}
}
__inline static void netdev_reset_queue(struct net_device *dev_queue )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev_queue, 0U);
  netdev_tx_reset_queue(tmp);
  return;
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
extern void napi_gro_flush(struct napi_struct * , bool ) ;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_43340;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43340;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43340;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43340;
  default:
  __bad_percpu_size();
  }
  ldv_43340:
  pscr_ret__ = pfo_ret__;
  goto ldv_43346;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43350;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43350;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43350;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43350;
  default:
  __bad_percpu_size();
  }
  ldv_43350:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_43346;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43359;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43359;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43359;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43359;
  default:
  __bad_percpu_size();
  }
  ldv_43359:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_43346;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43368;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43368;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43368;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43368;
  default:
  __bad_percpu_size();
  }
  ldv_43368:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_43346;
  default:
  __bad_size_call_parameter();
  goto ldv_43346;
  }
  ldv_43346:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_43378;
  ldv_43377:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  set_bit(2L, (unsigned long volatile *)(& txq->state));
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_43378: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43377;
  } else {
  }
  return;
}
}
__inline static void netif_tx_lock_bh(struct net_device *dev )
{
  {
  local_bh_disable();
  netif_tx_lock(dev);
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
  goto ldv_43389;
  ldv_43388:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  clear_bit(2L, (unsigned long volatile *)(& txq->state));
  netif_schedule_queue(txq);
  i = i + 1U;
  ldv_43389: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43388;
  } else {
  }
  spin_unlock(& dev->tx_global_lock);
  return;
}
}
__inline static void netif_tx_unlock_bh(struct net_device *dev )
{
  {
  netif_tx_unlock(dev);
  local_bh_enable();
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
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
  local_bh_disable();
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_43404;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43404;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43404;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_43404;
  default:
  __bad_percpu_size();
  }
  ldv_43404:
  pscr_ret__ = pfo_ret__;
  goto ldv_43410;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43414;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43414;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43414;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_43414;
  default:
  __bad_percpu_size();
  }
  ldv_43414:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_43410;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43423;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43423;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43423;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_43423;
  default:
  __bad_percpu_size();
  }
  ldv_43423:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_43410;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43432;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43432;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43432;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_43432;
  default:
  __bad_percpu_size();
  }
  ldv_43432:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_43410;
  default:
  __bad_size_call_parameter();
  goto ldv_43410;
  }
  ldv_43410:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_43442;
  ldv_43441:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_43442: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43441;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_44(struct net_device *dev ) ;
int ldv_register_netdev_45(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_47(struct net_device *dev ) ;
void ldv_unregister_netdev_49(struct net_device *dev ) ;
void ldv_unregister_netdev_51(struct net_device *dev ) ;
void ldv_unregister_netdev_52(struct net_device *dev ) ;
extern void netdev_printk(char const * , struct net_device const * , char const *
                          , ...) ;
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_notice(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
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
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
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
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 ) ;
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
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
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
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
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
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
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
__inline static struct iphdr *ipip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct iphdr *)tmp);
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
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern struct dentry *debugfs_rename(struct dentry * , struct dentry * , struct dentry * ,
                                     char const * ) ;
extern int dmi_check_system(struct dmi_system_id const * ) ;
__inline static u32 skge_read32(struct skge_hw const *hw , int reg )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)hw->regs + (unsigned long )reg);
  return (tmp);
}
}
__inline static u16 skge_read16(struct skge_hw const *hw , int reg )
{
  unsigned short tmp ;
  {
  tmp = readw((void const volatile *)hw->regs + (unsigned long )reg);
  return (tmp);
}
}
__inline static u8 skge_read8(struct skge_hw const *hw , int reg )
{
  unsigned char tmp ;
  {
  tmp = readb((void const volatile *)hw->regs + (unsigned long )reg);
  return (tmp);
}
}
__inline static void skge_write32(struct skge_hw const *hw , int reg , u32 val )
{
  {
  writel(val, (void volatile *)hw->regs + (unsigned long )reg);
  return;
}
}
__inline static void skge_write16(struct skge_hw const *hw , int reg , u16 val )
{
  {
  writew((int )val, (void volatile *)hw->regs + (unsigned long )reg);
  return;
}
}
__inline static void skge_write8(struct skge_hw const *hw , int reg , u8 val )
{
  {
  writeb((int )val, (void volatile *)hw->regs + (unsigned long )reg);
  return;
}
}
__inline static u32 xm_read32(struct skge_hw const *hw , int port , int reg )
{
  u32 v ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = skge_read16(hw, (port + 2) * 4096 | (reg << 1));
  v = (u32 )tmp;
  tmp___0 = skge_read16(hw, (port + 2) * 4096 | ((reg + 2) << 1));
  v = ((unsigned int )tmp___0 << 16) | v;
  return (v);
}
}
__inline static u16 xm_read16(struct skge_hw const *hw , int port , int reg )
{
  u16 tmp ;
  {
  tmp = skge_read16(hw, (port + 2) * 4096 | (reg << 1));
  return (tmp);
}
}
__inline static void xm_write32(struct skge_hw const *hw , int port , int r , u32 v )
{
  {
  skge_write16(hw, (port + 2) * 4096 | (r << 1), (int )((u16 )v));
  skge_write16(hw, (port + 2) * 4096 | ((r + 2) << 1), (int )((u16 )(v >> 16)));
  return;
}
}
__inline static void xm_write16(struct skge_hw const *hw , int port , int r , u16 v )
{
  {
  skge_write16(hw, (port + 2) * 4096 | (r << 1), (int )v);
  return;
}
}
__inline static void xm_outhash(struct skge_hw const *hw , int port , int reg ,
                                u8 const *hash )
{
  {
  xm_write16(hw, port, reg, (int )((u16 )((int )((short )*hash) | (int )((short )((int )*(hash + 1UL) << 8)))));
  xm_write16(hw, port, reg + 2, (int )((u16 )((int )((short )*(hash + 2UL)) | (int )((short )((int )*(hash + 3UL) << 8)))));
  xm_write16(hw, port, reg + 4, (int )((u16 )((int )((short )*(hash + 4UL)) | (int )((short )((int )*(hash + 5UL) << 8)))));
  xm_write16(hw, port, reg + 6, (int )((u16 )((int )((short )*(hash + 6UL)) | (int )((short )((int )*(hash + 7UL) << 8)))));
  return;
}
}
__inline static void xm_outaddr(struct skge_hw const *hw , int port , int reg ,
                                u8 const *addr )
{
  {
  xm_write16(hw, port, reg, (int )((u16 )((int )((short )*addr) | (int )((short )((int )*(addr + 1UL) << 8)))));
  xm_write16(hw, port, reg + 2, (int )((u16 )((int )((short )*(addr + 2UL)) | (int )((short )((int )*(addr + 3UL) << 8)))));
  xm_write16(hw, port, reg + 4, (int )((u16 )((int )((short )*(addr + 4UL)) | (int )((short )((int )*(addr + 5UL) << 8)))));
  return;
}
}
__inline static u16 gma_read16(struct skge_hw const *hw , int port , int reg )
{
  u16 tmp ;
  {
  tmp = skge_read16(hw, (port * 4096 + 10240) + reg);
  return (tmp);
}
}
__inline static u32 gma_read32(struct skge_hw const *hw , int port , int reg )
{
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = skge_read16(hw, (port * 4096 + 10240) + reg);
  tmp___0 = skge_read16(hw, (port * 4096 + 10240) + (reg + 4));
  return ((unsigned int )tmp | ((unsigned int )tmp___0 << 16));
}
}
__inline static void gma_write16(struct skge_hw const *hw , int port , int r , u16 v )
{
  {
  skge_write16(hw, (port * 4096 + 10240) + r, (int )v);
  return;
}
}
__inline static void gma_set_addr(struct skge_hw *hw , int port , int reg , u8 const *addr )
{
  {
  gma_write16((struct skge_hw const *)hw, port, reg, (int )((u16 )((int )((short )*addr) | (int )((short )((int )*(addr + 1UL) << 8)))));
  gma_write16((struct skge_hw const *)hw, port, reg + 4, (int )((u16 )((int )((short )*(addr + 2UL)) | (int )((short )((int )*(addr + 3UL) << 8)))));
  gma_write16((struct skge_hw const *)hw, port, reg + 8, (int )((u16 )((int )((short )*(addr + 4UL)) | (int )((short )((int )*(addr + 5UL) << 8)))));
  return;
}
}
static unsigned int const default_msg = 55U;
static int debug = -1;
static struct pci_device_id const skge_id_table[13U] =
  { {4279U, 5888U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4279U, 33003U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4424U, 17152U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4424U, 17184U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 19201U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 19456U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 17154U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4523U, 17184U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4523U, 20485U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4977U, 17230U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5943U, 4196U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5943U, 4146U, 4294967295U, 21U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__skge_id_table_device_table[13U] ;
static int skge_up(struct net_device *dev ) ;
static int skge_down(struct net_device *dev ) ;
static void skge_phy_reset(struct skge_port *skge ) ;
static void skge_tx_clean(struct net_device *dev ) ;
static int xm_phy_write(struct skge_hw *hw , int port , u16 reg , u16 val ) ;
static int gm_phy_write(struct skge_hw *hw , int port , u16 reg , u16 val ) ;
static void genesis_get_stats(struct skge_port *skge , u64 *data ) ;
static void yukon_get_stats(struct skge_port *skge , u64 *data ) ;
static void yukon_init(struct skge_hw *hw , int port ) ;
static void genesis_mac_init(struct skge_hw *hw , int port ) ;
static void genesis_link_up(struct skge_port *skge ) ;
static void skge_set_multicast(struct net_device *dev ) ;
static irqreturn_t skge_intr(int irq , void *dev_id ) ;
static int const txqaddr[2U] = { 640, 896};
static int const rxqaddr[2U] = { 0, 128};
static u32 const rxirqmask[2U] = { 65536U, 8192U};
static u32 const txirqmask[2U] = { 128U, 2U};
static u32 const napimask[2U] = { 65664U, 8194U};
static u32 const portmask[2U] = { 673251456U, 336076802U};
__inline static bool is_genesis(struct skge_hw const *hw )
{
  {
  return ((unsigned int )((unsigned char )hw->chip_id) == 10U);
}
}
static int skge_get_regs_len(struct net_device *dev )
{
  {
  return (16384);
}
}
static void skge_get_regs(struct net_device *dev , struct ethtool_regs *regs , void *p )
{
  struct skge_port const *skge ;
  void *tmp ;
  void const *io ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port const *)tmp;
  io = (void const *)(skge->hw)->regs;
  regs->version = 1U;
  memset(p, 0, (size_t )regs->len);
  memcpy_fromio(p, (void const volatile *)io, 384UL);
  memcpy_fromio(p + 400UL, (void const volatile *)io + 400U, (size_t )(regs->len - 400U));
  return;
}
}
static u32 wol_supported(struct skge_hw const *hw )
{
  bool tmp ;
  {
  tmp = is_genesis(hw);
  if ((int )tmp) {
    return (0U);
  } else {
  }
  if ((unsigned int )((unsigned char )hw->chip_id) == 176U && (unsigned int )((unsigned char )hw->chip_rev) == 0U) {
    return (0U);
  } else {
  }
  return (33U);
}
}
static void skge_wol_init(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 ctrl ;
  u32 reg ;
  u32 tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  skge_write16((struct skge_hw const *)hw, 4, 2);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3856, 2);
  skge_write8((struct skge_hw const *)hw, 7, 169);
  if ((unsigned int )hw->chip_id == 177U && (unsigned int )hw->chip_rev > 6U) {
    tmp = skge_read32((struct skge_hw const *)hw, 348);
    reg = tmp;
    reg = reg | 33554432U;
    reg = reg & 4294966783U;
    skge_write32((struct skge_hw const *)hw, 348, reg);
  } else {
  }
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3844, 32522241U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3844, 32522242U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3840, 2U);
  gm_phy_write(hw, port, 4, 481);
  gm_phy_write(hw, port, 9, 0);
  gm_phy_write(hw, port, 0, 45824);
  gma_write16((struct skge_hw const *)hw, port, 4, 14386);
  memcpy_toio((void volatile *)hw->regs + (unsigned long )(port * 128 + 3876), (void const *)(skge->netdev)->dev_addr,
              6UL);
  skge_write16((struct skge_hw const *)hw, port * 128 + 3872, 4096);
  ctrl = 0U;
  if ((int )skge->wol & 1) {
    ctrl = (u16 )((unsigned int )ctrl | 2080U);
  } else {
    ctrl = (u16 )((unsigned int )ctrl | 1040U);
  }
  if (((int )skge->wol & 32) != 0) {
    ctrl = (u16 )((unsigned int )ctrl | 520U);
  } else {
    ctrl = (u16 )((unsigned int )ctrl | 260U);
  }
  ctrl = (u16 )((unsigned int )ctrl | 65U);
  skge_write16((struct skge_hw const *)hw, port * 128 + 3872, (int )ctrl);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3144, 1);
  return;
}
}
static void skge_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  wol->supported = wol_supported((struct skge_hw const *)skge->hw);
  wol->wolopts = (__u32 )skge->wol;
  return;
}
}
static int skge_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  u32 tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  tmp___0 = wol_supported((struct skge_hw const *)hw);
  if ((wol->wolopts & ~ tmp___0) != 0U) {
    return (-95);
  } else {
    tmp___1 = device_can_wakeup(& (hw->pdev)->dev);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-95);
    } else {
    }
  }
  skge->wol = (u8 )wol->wolopts;
  device_set_wakeup_enable(& (hw->pdev)->dev, (unsigned int )skge->wol != 0U);
  return (0);
}
}
static u32 skge_supported_modes(struct skge_hw const *hw )
{
  u32 supported ;
  bool tmp ;
  {
  if ((unsigned int )((unsigned char )hw->copper) != 0U) {
    supported = 255U;
    tmp = is_genesis(hw);
    if ((int )tmp) {
      supported = supported & 4294967280U;
    } else
    if ((unsigned int )((unsigned char )hw->chip_id) == 176U) {
      supported = supported & 4294967279U;
    } else {
    }
  } else {
    supported = 1136U;
  }
  return (supported);
}
}
static int skge_get_settings(struct net_device *dev , struct ethtool_cmd *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  ecmd->transceiver = 0U;
  ecmd->supported = skge_supported_modes((struct skge_hw const *)hw);
  if ((unsigned int )hw->copper != 0U) {
    ecmd->port = 0U;
    ecmd->phy_address = (__u8 )hw->phy_addr;
  } else {
    ecmd->port = 3U;
  }
  ecmd->advertising = skge->advertising;
  ecmd->autoneg = skge->autoneg;
  ethtool_cmd_speed_set(ecmd, (__u32 )skge->speed);
  ecmd->duplex = skge->duplex;
  return (0);
}
}
static int skge_set_settings(struct net_device *dev , struct ethtool_cmd *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw const *hw ;
  u32 supported ;
  u32 tmp___0 ;
  int err ;
  u32 setting ;
  u32 speed ;
  __u32 tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = (struct skge_hw const *)skge->hw;
  tmp___0 = skge_supported_modes(hw);
  supported = tmp___0;
  err = 0;
  if ((unsigned int )ecmd->autoneg == 1U) {
    ecmd->advertising = supported;
    skge->duplex = 255U;
    skge->speed = 65535U;
  } else {
    tmp___1 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
    speed = tmp___1;
    switch (speed) {
    case 1000U: ;
    if ((unsigned int )ecmd->duplex == 1U) {
      setting = 32U;
    } else
    if ((unsigned int )ecmd->duplex == 0U) {
      setting = 16U;
    } else {
      return (-22);
    }
    goto ldv_48514;
    case 100U: ;
    if ((unsigned int )ecmd->duplex == 1U) {
      setting = 8U;
    } else
    if ((unsigned int )ecmd->duplex == 0U) {
      setting = 4U;
    } else {
      return (-22);
    }
    goto ldv_48514;
    case 10U: ;
    if ((unsigned int )ecmd->duplex == 1U) {
      setting = 2U;
    } else
    if ((unsigned int )ecmd->duplex == 0U) {
      setting = 1U;
    } else {
      return (-22);
    }
    goto ldv_48514;
    default: ;
    return (-22);
    }
    ldv_48514: ;
    if ((setting & supported) == 0U) {
      return (-22);
    } else {
    }
    skge->speed = (u16 )speed;
    skge->duplex = ecmd->duplex;
  }
  skge->autoneg = ecmd->autoneg;
  skge->advertising = ecmd->advertising;
  tmp___2 = netif_running((struct net_device const *)dev);
  if ((int )tmp___2) {
    skge_down(dev);
    err = skge_up(dev);
    if (err != 0) {
      dev_close(dev);
      return (err);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void skge_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct skge_port *skge ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  strlcpy((char *)(& info->driver), "skge", 32UL);
  strlcpy((char *)(& info->version), "1.14", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)(skge->hw)->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  return;
}
}
static struct skge_stat const skge_stats[21U] =
  { {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 644U, 488U},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 772U, 312U},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '\000'}, 652U,
      456U},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '\000'}, 780U,
      264U},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 656U,
      472U},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 784U,
      280U},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '\000'}, 660U, 448U},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '\000'}, 788U, 256U},
        {{'t', 'x', '_', 'm', 'a', 'c', '_', 'p', 'a', 'u', 's', 'e', '\000'}, 672U,
      464U},
        {{'r', 'x', '_', 'm', 'a', 'c', '_', 'p', 'a', 'u', 's', 'e', '\000'}, 792U,
      272U},
        {{'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}, 680U, 592U},
        {{'m', 'u', 'l', 't', 'i', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n',
       's', '\000'}, 684U, 584U},
        {{'a', 'b', 'o', 'r', 't', 'e', 'd', '\000'}, 688U, 576U},
        {{'l', 'a', 't', 'e', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', '\000'},
      692U, 568U},
        {{'f', 'i', 'f', 'o', '_', 'u', 'n', 'd', 'e', 'r', 'r', 'u', 'n', '\000'}, 704U,
      600U},
        {{'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w', '\000'}, 820U,
      432U},
        {{'r', 'x', '_', 't', 'o', 'o', 'l', 'o', 'n', 'g', '\000'}, 848U, 408U},
        {{'r', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', '\000'}, 824U, 416U},
        {{'r', 'x', '_', 'r', 'u', 'n', 't', '\000'}, 844U, 344U},
        {{'r', 'x', '_', 't', 'o', 'o', '_', 'l', 'o', 'n', 'g', '\000'}, 848U, 408U},
        {{'r',
       'x', '_', 'f', 'c', 's', '_', 'e', 'r', 'r', 'o', 'r', '\000'}, 852U, 288U}};
static int skge_get_sset_count(struct net_device *dev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (21);
  default: ;
  return (-95);
  }
}
}
static void skge_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  tmp___0 = is_genesis((struct skge_hw const *)skge->hw);
  if ((int )tmp___0) {
    genesis_get_stats(skge, data);
  } else {
    yukon_get_stats(skge, data);
  }
  return;
}
}
static struct net_device_stats *skge_get_stats(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  u64 data[21U] ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  tmp___0 = is_genesis((struct skge_hw const *)skge->hw);
  if ((int )tmp___0) {
    genesis_get_stats(skge, (u64 *)(& data));
  } else {
    yukon_get_stats(skge, (u64 *)(& data));
  }
  dev->stats.tx_bytes = (unsigned long )data[0];
  dev->stats.rx_bytes = (unsigned long )data[1];
  dev->stats.tx_packets = (unsigned long )((data[2] + data[4]) + data[6]);
  dev->stats.rx_packets = (unsigned long )((data[3] + data[5]) + data[7]);
  dev->stats.multicast = (unsigned long )(data[3] + data[5]);
  dev->stats.collisions = (unsigned long )data[10];
  dev->stats.tx_aborted_errors = (unsigned long )data[12];
  return (& dev->stats);
}
}
static void skge_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  int i ;
  {
  switch (stringset) {
  case 1U:
  i = 0;
  goto ldv_48559;
  ldv_48558:
  memcpy((void *)data + (unsigned long )(i * 32), (void const *)(& skge_stats[i].name),
           32UL);
  i = i + 1;
  ldv_48559: ;
  if ((unsigned int )i <= 20U) {
    goto ldv_48558;
  } else {
  }
  goto ldv_48561;
  }
  ldv_48561: ;
  return;
}
}
static void skge_get_ring_param(struct net_device *dev , struct ethtool_ringparam *p )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  p->rx_max_pending = 4096U;
  p->tx_max_pending = 1024U;
  p->rx_pending = (__u32 )skge->rx_ring.count;
  p->tx_pending = (__u32 )skge->tx_ring.count;
  return;
}
}
static int skge_set_ring_param(struct net_device *dev , struct ethtool_ringparam *p )
{
  struct skge_port *skge ;
  void *tmp ;
  int err ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  err = 0;
  if (((p->rx_pending == 0U || p->rx_pending > 4096U) || p->tx_pending <= 17U) || p->tx_pending > 1024U) {
    return (-22);
  } else {
  }
  skge->rx_ring.count = (unsigned long )p->rx_pending;
  skge->tx_ring.count = (unsigned long )p->tx_pending;
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    skge_down(dev);
    err = skge_up(dev);
    if (err != 0) {
      dev_close(dev);
    } else {
    }
  } else {
  }
  return (err);
}
}
static u32 skge_get_msglevel(struct net_device *netdev )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  skge = (struct skge_port *)tmp;
  return (skge->msg_enable);
}
}
static void skge_set_msglevel(struct net_device *netdev , u32 value )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  skge = (struct skge_port *)tmp;
  skge->msg_enable = value;
  return;
}
}
static int skge_nway_reset(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  if ((unsigned int )skge->autoneg != 1U) {
    return (-22);
  } else {
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
  }
  skge_phy_reset(skge);
  return (0);
}
}
static void skge_get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  ecmd->rx_pause = (__u32 )((unsigned int )skge->flow_control == 3U || (unsigned int )skge->flow_control == 4U);
  ecmd->tx_pause = (__u32 )(ecmd->rx_pause != 0U || (unsigned int )skge->flow_control == 2U);
  ecmd->autoneg = (__u32 )(ecmd->rx_pause != 0U || ecmd->tx_pause != 0U);
  return;
}
}
static int skge_set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  struct ethtool_pauseparam old ;
  int err ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  err = 0;
  skge_get_pauseparam(dev, & old);
  if (ecmd->autoneg != old.autoneg) {
    skge->flow_control = ecmd->autoneg != 0U ? 1 : 3;
  } else
  if (ecmd->rx_pause != 0U && ecmd->tx_pause != 0U) {
    skge->flow_control = 3;
  } else
  if (ecmd->rx_pause != 0U && ecmd->tx_pause == 0U) {
    skge->flow_control = 4;
  } else
  if (ecmd->rx_pause == 0U && ecmd->tx_pause != 0U) {
    skge->flow_control = 2;
  } else {
    skge->flow_control = 1;
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    skge_down(dev);
    err = skge_up(dev);
    if (err != 0) {
      dev_close(dev);
      return (err);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static u32 hwkhz(struct skge_hw const *hw )
{
  bool tmp ;
  {
  tmp = is_genesis(hw);
  return ((int )tmp ? 53125U : 78125U);
}
}
__inline static u32 skge_clk2usec(struct skge_hw const *hw , u32 ticks )
{
  u32 tmp ;
  {
  tmp = hwkhz(hw);
  return ((ticks * 1000U) / tmp);
}
}
__inline static u32 skge_usecs2clk(struct skge_hw const *hw , u32 usec )
{
  u32 tmp ;
  {
  tmp = hwkhz(hw);
  return ((tmp * usec) / 1000U);
}
}
static int skge_get_coalesce(struct net_device *dev , struct ethtool_coalesce *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  u32 delay ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 msk ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  ecmd->rx_coalesce_usecs = 0U;
  ecmd->tx_coalesce_usecs = 0U;
  tmp___3 = skge_read32((struct skge_hw const *)hw, 328);
  if ((tmp___3 & 4U) != 0U) {
    tmp___0 = skge_read32((struct skge_hw const *)hw, 320);
    tmp___1 = skge_clk2usec((struct skge_hw const *)hw, tmp___0);
    delay = tmp___1;
    tmp___2 = skge_read32((struct skge_hw const *)hw, 332);
    msk = tmp___2;
    if (((u32 )rxirqmask[port] & msk) != 0U) {
      ecmd->rx_coalesce_usecs = delay;
    } else {
    }
    if (((u32 )txirqmask[port] & msk) != 0U) {
      ecmd->tx_coalesce_usecs = delay;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int skge_set_coalesce(struct net_device *dev , struct ethtool_coalesce *ecmd )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  u32 msk ;
  u32 tmp___0 ;
  u32 delay ;
  u32 _min1 ;
  __u32 _min2 ;
  u32 tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  tmp___0 = skge_read32((struct skge_hw const *)hw, 332);
  msk = tmp___0;
  delay = 25U;
  if (ecmd->rx_coalesce_usecs == 0U) {
    msk = (u32 )(~ rxirqmask[port]) & msk;
  } else
  if (ecmd->rx_coalesce_usecs <= 24U || ecmd->rx_coalesce_usecs > 33333U) {
    return (-22);
  } else {
    msk = (u32 )rxirqmask[port] | msk;
    delay = ecmd->rx_coalesce_usecs;
  }
  if (ecmd->tx_coalesce_usecs == 0U) {
    msk = (u32 )(~ txirqmask[port]) & msk;
  } else
  if (ecmd->tx_coalesce_usecs <= 24U || ecmd->tx_coalesce_usecs > 33333U) {
    return (-22);
  } else {
    msk = (u32 )txirqmask[port] | msk;
    _min1 = delay;
    _min2 = ecmd->rx_coalesce_usecs;
    delay = _min1 < _min2 ? _min1 : _min2;
  }
  skge_write32((struct skge_hw const *)hw, 332, msk);
  if (msk == 0U) {
    skge_write32((struct skge_hw const *)hw, 328, 2U);
  } else {
    tmp___1 = skge_usecs2clk((struct skge_hw const *)hw, delay);
    skge_write32((struct skge_hw const *)hw, 320, tmp___1);
    skge_write32((struct skge_hw const *)hw, 328, 4U);
  }
  return (0);
}
}
static void skge_led(struct skge_port *skge , enum led_mode mode )
{
  struct skge_hw *hw ;
  int port ;
  bool tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  spin_lock_bh(& hw->phy_lock);
  tmp = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp) {
    switch ((unsigned int )mode) {
    case 0U: ;
    if ((unsigned int )hw->phy_type == 1U) {
      xm_phy_write(hw, port, 16, 8);
    } else {
      skge_write32((struct skge_hw const *)hw, (port << 7) + 3364, 0U);
      skge_write8((struct skge_hw const *)hw, (port << 7) + 3368, 2);
    }
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3132, 1);
    skge_write32((struct skge_hw const *)hw, (port << 7) + 3108, 0U);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3112, 2);
    goto ldv_48641;
    case 1U:
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3132, 2);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3132, 8);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3112, 4);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3368, 4);
    goto ldv_48641;
    case 2U:
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3113, 4);
    skge_write32((struct skge_hw const *)hw, (port << 7) + 3108, 100U);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3112, 4);
    if ((unsigned int )hw->phy_type == 1U) {
      xm_phy_write(hw, port, 16, 16);
    } else {
      skge_write8((struct skge_hw const *)hw, (port << 7) + 3369, 4);
      skge_write32((struct skge_hw const *)hw, (port << 7) + 3364, 100U);
      skge_write8((struct skge_hw const *)hw, (port << 7) + 3368, 4);
    }
    }
    ldv_48641: ;
  } else {
    switch ((unsigned int )mode) {
    case 0U:
    gm_phy_write(hw, port, 24, 0);
    gm_phy_write(hw, port, 25, 2728);
    goto ldv_48645;
    case 1U:
    gm_phy_write(hw, port, 24, 16645);
    gm_phy_write(hw, port, 25, (unsigned int )skge->speed == 100U ? 200 : 8);
    goto ldv_48645;
    case 2U:
    gm_phy_write(hw, port, 24, 0);
    gm_phy_write(hw, port, 25, 4092);
    }
    ldv_48645: ;
  }
  spin_unlock_bh(& hw->phy_lock);
  return;
}
}
static int skge_set_phys_id(struct net_device *dev , enum ethtool_phys_id_state state )
{
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  switch ((unsigned int )state) {
  case 1U: ;
  return (2);
  case 2U:
  skge_led(skge, 2);
  goto ldv_48655;
  case 3U:
  skge_led(skge, 0);
  goto ldv_48655;
  case 0U:
  tmp___0 = netif_running((struct net_device const *)dev);
  skge_led(skge, (enum led_mode )tmp___0);
  }
  ldv_48655: ;
  return (0);
}
}
static int skge_get_eeprom_len(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  u32 reg2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  pci_read_config_dword((struct pci_dev const *)(skge->hw)->pdev, 68, & reg2);
  return (1 << (int )((unsigned int )(((long )reg2 & 114688L) >> 14) + 8U));
}
}
static u32 skge_vpd_read(struct pci_dev *pdev , int cap , u16 offset )
{
  u32 val ;
  {
  pci_write_config_word((struct pci_dev const *)pdev, cap + 2, (int )offset);
  ldv_48669:
  pci_read_config_word((struct pci_dev const *)pdev, cap + 2, & offset);
  if ((int )((short )offset) >= 0) {
    goto ldv_48669;
  } else {
  }
  pci_read_config_dword((struct pci_dev const *)pdev, cap + 4, & val);
  return (val);
}
}
static void skge_vpd_write(struct pci_dev *pdev , int cap , u16 offset , u32 val )
{
  {
  pci_write_config_dword((struct pci_dev const *)pdev, cap + 4, val);
  pci_write_config_word((struct pci_dev const *)pdev, cap + 2, (int )((unsigned int )offset | 32768U));
  ldv_48677:
  pci_read_config_word((struct pci_dev const *)pdev, cap + 2, & offset);
  if ((int )((short )offset) < 0) {
    goto ldv_48677;
  } else {
  }
  return;
}
}
static int skge_get_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                           u8 *data )
{
  struct skge_port *skge ;
  void *tmp ;
  struct pci_dev *pdev ;
  int cap ;
  int tmp___0 ;
  int length ;
  u16 offset ;
  u32 val ;
  u32 tmp___1 ;
  int n ;
  int __min1 ;
  int __min2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  pdev = (skge->hw)->pdev;
  tmp___0 = pci_find_capability(pdev, 3);
  cap = tmp___0;
  length = (int )eeprom->len;
  offset = (u16 )eeprom->offset;
  if (cap == 0) {
    return (-22);
  } else {
  }
  eeprom->magic = 2570300091U;
  goto ldv_48695;
  ldv_48694:
  tmp___1 = skge_vpd_read(pdev, cap, (int )offset);
  val = tmp___1;
  __min1 = length;
  __min2 = 4;
  n = __min1 < __min2 ? __min1 : __min2;
  memcpy((void *)data, (void const *)(& val), (size_t )n);
  length = length - n;
  data = data + (unsigned long )n;
  offset = (int )((u16 )n) + (int )offset;
  ldv_48695: ;
  if (length > 0) {
    goto ldv_48694;
  } else {
  }
  return (0);
}
}
static int skge_set_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                           u8 *data )
{
  struct skge_port *skge ;
  void *tmp ;
  struct pci_dev *pdev ;
  int cap ;
  int tmp___0 ;
  int length ;
  u16 offset ;
  u32 val ;
  int n ;
  int __min1 ;
  int __min2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  pdev = (skge->hw)->pdev;
  tmp___0 = pci_find_capability(pdev, 3);
  cap = tmp___0;
  length = (int )eeprom->len;
  offset = (u16 )eeprom->offset;
  if (cap == 0) {
    return (-22);
  } else {
  }
  if (eeprom->magic != 2570300091U) {
    return (-22);
  } else {
  }
  goto ldv_48713;
  ldv_48712:
  __min1 = length;
  __min2 = 4;
  n = __min1 < __min2 ? __min1 : __min2;
  if ((unsigned int )n <= 3U) {
    val = skge_vpd_read(pdev, cap, (int )offset);
  } else {
  }
  memcpy((void *)(& val), (void const *)data, (size_t )n);
  skge_vpd_write(pdev, cap, (int )offset, val);
  length = length - n;
  data = data + (unsigned long )n;
  offset = (int )((u16 )n) + (int )offset;
  ldv_48713: ;
  if (length > 0) {
    goto ldv_48712;
  } else {
  }
  return (0);
}
}
static struct ethtool_ops const skge_ethtool_ops =
     {& skge_get_settings, & skge_set_settings, & skge_get_drvinfo, & skge_get_regs_len,
    & skge_get_regs, & skge_get_wol, & skge_set_wol, & skge_get_msglevel, & skge_set_msglevel,
    & skge_nway_reset, & ethtool_op_get_link, & skge_get_eeprom_len, & skge_get_eeprom,
    & skge_set_eeprom, & skge_get_coalesce, & skge_set_coalesce, & skge_get_ring_param,
    & skge_set_ring_param, & skge_get_pauseparam, & skge_set_pauseparam, 0, & skge_get_strings,
    & skge_set_phys_id, & skge_get_ethtool_stats, 0, 0, 0, 0, & skge_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int skge_ring_alloc(struct skge_ring *ring , void *vaddr , u32 base )
{
  struct skge_tx_desc *d ;
  struct skge_element *e ;
  int i ;
  void *tmp ;
  struct skge_element *tmp___0 ;
  {
  tmp = kcalloc(ring->count, 40UL, 208U);
  ring->start = (struct skge_element *)tmp;
  if ((unsigned long )ring->start == (unsigned long )((struct skge_element *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  e = ring->start;
  d = (struct skge_tx_desc *)vaddr;
  goto ldv_48725;
  ldv_48724:
  e->desc = (void *)d;
  if ((unsigned long )i == ring->count - 1UL) {
    e->next = ring->start;
    d->next_offset = base;
  } else {
    e->next = e + 1UL;
    d->next_offset = (u32 )((unsigned long )(i + 1)) * 32U + base;
  }
  i = i + 1;
  e = e + 1;
  d = d + 1;
  ldv_48725: ;
  if ((unsigned long )i < ring->count) {
    goto ldv_48724;
  } else {
  }
  tmp___0 = ring->start;
  ring->to_clean = tmp___0;
  ring->to_use = tmp___0;
  return (0);
}
}
static int skge_rx_setup(struct skge_port *skge , struct skge_element *e , struct sk_buff *skb ,
                         unsigned int bufsize )
{
  struct skge_rx_desc *rd ;
  dma_addr_t map ;
  int tmp ;
  {
  rd = (struct skge_rx_desc *)e->desc;
  map = pci_map_single((skge->hw)->pdev, (void *)skb->data, (size_t )bufsize, 2);
  tmp = pci_dma_mapping_error((skge->hw)->pdev, map);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  rd->dma_lo = (unsigned int )map;
  rd->dma_hi = (unsigned int )(map >> 32ULL);
  e->skb = skb;
  rd->csum1_start = 14U;
  rd->csum2_start = 14U;
  rd->csum1 = 0U;
  rd->csum2 = 0U;
  __asm__ volatile ("sfence": : : "memory");
  rd->control = bufsize | 3361079296U;
  e->mapaddr = map;
  e->maplen = bufsize;
  return (0);
}
}
__inline static void skge_rx_reuse(struct skge_element *e , unsigned int size )
{
  struct skge_rx_desc *rd ;
  {
  rd = (struct skge_rx_desc *)e->desc;
  rd->csum2 = 0U;
  rd->csum2_start = 14U;
  __asm__ volatile ("sfence": : : "memory");
  rd->control = size | 3361079296U;
  return;
}
}
static void skge_rx_clean(struct skge_port *skge )
{
  struct skge_hw *hw ;
  struct skge_ring *ring ;
  struct skge_element *e ;
  struct skge_rx_desc *rd ;
  {
  hw = skge->hw;
  ring = & skge->rx_ring;
  e = ring->start;
  ldv_48747:
  rd = (struct skge_rx_desc *)e->desc;
  rd->control = 0U;
  if ((unsigned long )e->skb != (unsigned long )((struct sk_buff *)0)) {
    pci_unmap_single(hw->pdev, e->mapaddr, (size_t )e->maplen, 2);
    consume_skb(e->skb);
    e->skb = (struct sk_buff *)0;
  } else {
  }
  e = e->next;
  if ((unsigned long )e != (unsigned long )ring->start) {
    goto ldv_48747;
  } else {
  }
  return;
}
}
static int skge_rx_fill(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_ring *ring ;
  struct skge_element *e ;
  struct sk_buff *skb ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  ring = & skge->rx_ring;
  e = ring->start;
  ldv_48756:
  skb = ldv___netdev_alloc_skb_37(dev, skge->rx_buf_size, 208U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  skb_reserve(skb, 0);
  tmp___0 = skge_rx_setup(skge, e, skb, skge->rx_buf_size);
  if (tmp___0 < 0) {
    consume_skb(skb);
    return (-5);
  } else {
  }
  e = e->next;
  if ((unsigned long )e != (unsigned long )ring->start) {
    goto ldv_48756;
  } else {
  }
  ring->to_clean = ring->start;
  return (0);
}
}
static char const *skge_pause(enum pause_status status )
{
  {
  switch ((unsigned int )status) {
  case 1U: ;
  return ("none");
  case 2U: ;
  return ("rx only");
  case 3U: ;
  return ("tx_only");
  case 4U: ;
  return ("both");
  default: ;
  return ("indeterminated");
  }
}
}
static void skge_link_up(struct skge_port *skge )
{
  char const *tmp ;
  {
  skge_write8((struct skge_hw const *)skge->hw, (skge->port << 7) + 3132, 22);
  netif_carrier_on(skge->netdev);
  netif_wake_queue(skge->netdev);
  if ((skge->msg_enable & 4U) != 0U) {
    tmp = skge_pause(skge->flow_status);
    netdev_info((struct net_device const *)skge->netdev, "Link is up at %d Mbps, %s duplex, flow control %s\n",
                (int )skge->speed, (unsigned int )skge->duplex == 1U ? (char *)"full" : (char *)"half",
                tmp);
  } else {
  }
  return;
}
}
static void skge_link_down(struct skge_port *skge )
{
  {
  skge_write8((struct skge_hw const *)skge->hw, (skge->port << 7) + 3132, 1);
  netif_carrier_off(skge->netdev);
  netif_stop_queue(skge->netdev);
  if ((skge->msg_enable & 4U) != 0U) {
    netdev_info((struct net_device const *)skge->netdev, "Link is down\n");
  } else {
  }
  return;
}
}
static void xm_link_down(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  {
  dev = hw->dev[port];
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  xm_write16((struct skge_hw const *)hw, port, 68, 65535);
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  if ((int )tmp___0) {
    skge_link_down(skge);
  } else {
  }
  return;
}
}
static int __xm_phy_read(struct skge_hw *hw , int port , u16 reg , u16 *val )
{
  int i ;
  u16 tmp ;
  {
  xm_write16((struct skge_hw const *)hw, port, 52, (int )hw->phy_addr | (int )reg);
  *val = xm_read16((struct skge_hw const *)hw, port, 56);
  if ((unsigned int )hw->phy_type == 0U) {
    goto ready;
  } else {
  }
  i = 0;
  goto ldv_48787;
  ldv_48786:
  tmp = xm_read16((struct skge_hw const *)hw, port, 0);
  if (((int )tmp & 4096) != 0) {
    goto ready;
  } else {
  }
  __const_udelay(4295UL);
  i = i + 1;
  ldv_48787: ;
  if (i <= 999) {
    goto ldv_48786;
  } else {
  }
  return (-110);
  ready:
  *val = xm_read16((struct skge_hw const *)hw, port, 56);
  return (0);
}
}
static u16 xm_phy_read(struct skge_hw *hw , int port , u16 reg )
{
  u16 v ;
  int tmp ;
  {
  v = 0U;
  tmp = __xm_phy_read(hw, port, (int )reg, & v);
  if (tmp != 0) {
    printk("\fskge: %s: phy read timed out\n", (char *)(& (hw->dev[port])->name));
  } else {
  }
  return (v);
}
}
static int xm_phy_write(struct skge_hw *hw , int port , u16 reg , u16 val )
{
  int i ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  xm_write16((struct skge_hw const *)hw, port, 52, (int )hw->phy_addr | (int )reg);
  i = 0;
  goto ldv_48804;
  ldv_48803:
  tmp = xm_read16((struct skge_hw const *)hw, port, 0);
  if (((int )tmp & 2048) == 0) {
    goto ready;
  } else {
  }
  __const_udelay(4295UL);
  i = i + 1;
  ldv_48804: ;
  if (i <= 999) {
    goto ldv_48803;
  } else {
  }
  return (-5);
  ready:
  xm_write16((struct skge_hw const *)hw, port, 56, (int )val);
  i = 0;
  goto ldv_48807;
  ldv_48806:
  tmp___0 = xm_read16((struct skge_hw const *)hw, port, 0);
  if (((int )tmp___0 & 2048) == 0) {
    return (0);
  } else {
  }
  __const_udelay(4295UL);
  i = i + 1;
  ldv_48807: ;
  if (i <= 999) {
    goto ldv_48806;
  } else {
  }
  return (-110);
}
}
static void genesis_init(struct skge_hw *hw )
{
  {
  skge_write32((struct skge_hw const *)hw, 368, 26562500U);
  skge_write8((struct skge_hw const *)hw, 376, 2);
  skge_write16((struct skge_hw const *)hw, 440, 2);
  skge_write8((struct skge_hw const *)hw, 432, 72);
  skge_write8((struct skge_hw const *)hw, 433, 72);
  skge_write8((struct skge_hw const *)hw, 434, 72);
  skge_write8((struct skge_hw const *)hw, 435, 72);
  skge_write8((struct skge_hw const *)hw, 448, 0);
  skge_write8((struct skge_hw const *)hw, 449, 0);
  skge_write8((struct skge_hw const *)hw, 450, 0);
  skge_write8((struct skge_hw const *)hw, 451, 0);
  skge_write16((struct skge_hw const *)hw, 496, 2);
  skge_write16((struct skge_hw const *)hw, 464, 65535);
  skge_write16((struct skge_hw const *)hw, 472, 65535);
  skge_write16((struct skge_hw const *)hw, 468, 65535);
  skge_write16((struct skge_hw const *)hw, 476, 65535);
  return;
}
}
static void genesis_reset(struct skge_hw *hw , int port )
{
  u8 zero[8U] ;
  unsigned int tmp ;
  u32 reg ;
  {
  zero[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 8U) {
      break;
    } else {
    }
    zero[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3852, 0);
  xm_write32((struct skge_hw const *)hw, port, 64, 4U);
  xm_write16((struct skge_hw const *)hw, port, 68, 65535);
  xm_write32((struct skge_hw const *)hw, port, 292, 0U);
  xm_write16((struct skge_hw const *)hw, port, 32, 0);
  xm_write16((struct skge_hw const *)hw, port, 48, 0);
  if ((unsigned int )hw->phy_type == 1U) {
    xm_write16((struct skge_hw const *)hw, port, 27, 65535);
  } else {
  }
  xm_outhash((struct skge_hw const *)hw, port, 272, (u8 const *)(& zero));
  reg = xm_read32((struct skge_hw const *)hw, port, 292);
  xm_write32((struct skge_hw const *)hw, port, 292, reg | 2U);
  xm_write32((struct skge_hw const *)hw, port, 292, reg | 1U);
  return;
}
}
static u16 const phy_pause_map[5U] = { (unsigned short)0, 0U, 2048U, 1024U,
        3072U};
static u16 const fiber_pause_map[5U] = { (unsigned short)0, 0U, 256U, 128U,
        384U};
static void bcom_check_link(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  u16 status ;
  u16 lpa ;
  u16 aux ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  dev = hw->dev[port];
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  xm_phy_read(hw, port, 1);
  status = xm_phy_read(hw, port, 1);
  if (((int )status & 4) == 0) {
    xm_link_down(hw, port);
    return;
  } else {
  }
  if ((unsigned int )skge->autoneg == 1U) {
    if (((int )status & 32) == 0) {
      return;
    } else {
    }
    lpa = xm_phy_read(hw, port, 5);
    if (((int )lpa & 8192) != 0) {
      netdev_notice((struct net_device const *)dev, "remote fault\n");
      return;
    } else {
    }
    aux = xm_phy_read(hw, port, 25);
    switch ((int )aux & 1792) {
    case 1792:
    skge->duplex = 1U;
    goto ldv_48830;
    case 1536:
    skge->duplex = 0U;
    goto ldv_48830;
    default:
    netdev_notice((struct net_device const *)dev, "duplex mismatch\n");
    return;
    }
    ldv_48830: ;
    switch ((int )aux & 3) {
    case 3:
    skge->flow_status = 4;
    goto ldv_48834;
    case 2:
    skge->flow_status = 2;
    goto ldv_48834;
    case 1:
    skge->flow_status = 3;
    goto ldv_48834;
    default:
    skge->flow_status = 1;
    }
    ldv_48834:
    skge->speed = 1000U;
  } else {
  }
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    genesis_link_up(skge);
  } else {
  }
  return;
}
}
static void bcom_phy_init(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  int i ;
  u16 id1 ;
  u16 r ;
  u16 ext ;
  u16 ctl ;
  struct __anonstruct_A1hack_335 A1hack[12U] ;
  struct __anonstruct_C0hack_336 C0hack[6U] ;
  u16 adv ;
  {
  hw = skge->hw;
  port = skge->port;
  A1hack[0].reg = 24U;
  A1hack[0].val = 3104U;
  A1hack[1].reg = 23U;
  A1hack[1].val = 18U;
  A1hack[2].reg = 21U;
  A1hack[2].val = 4356U;
  A1hack[3].reg = 23U;
  A1hack[3].val = 19U;
  A1hack[4].reg = 21U;
  A1hack[4].val = 1028U;
  A1hack[5].reg = 23U;
  A1hack[5].val = 32774U;
  A1hack[6].reg = 21U;
  A1hack[6].val = 306U;
  A1hack[7].reg = 23U;
  A1hack[7].val = 32774U;
  A1hack[8].reg = 21U;
  A1hack[8].val = 562U;
  A1hack[9].reg = 23U;
  A1hack[9].val = 32781U;
  A1hack[10].reg = 21U;
  A1hack[10].val = 15U;
  A1hack[11].reg = 24U;
  A1hack[11].val = 1056U;
  C0hack[0].reg = 24U;
  C0hack[0].val = 3104U;
  C0hack[1].reg = 23U;
  C0hack[1].val = 18U;
  C0hack[2].reg = 21U;
  C0hack[2].val = 4612U;
  C0hack[3].reg = 23U;
  C0hack[3].val = 19U;
  C0hack[4].reg = 21U;
  C0hack[4].val = 2564U;
  C0hack[5].reg = 24U;
  C0hack[5].val = 1056U;
  id1 = xm_phy_read(hw, port, 3);
  r = xm_read16((struct skge_hw const *)hw, port, 0);
  r = (u16 )((unsigned int )r | 32U);
  xm_write16((struct skge_hw const *)hw, port, 0, (int )r);
  switch ((int )id1) {
  case 24644:
  i = 0;
  goto ldv_48857;
  ldv_48856:
  xm_phy_write(hw, port, (int )C0hack[i].reg, (int )C0hack[i].val);
  i = i + 1;
  ldv_48857: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_48856;
  } else {
  }
  goto ldv_48859;
  case 24641:
  i = 0;
  goto ldv_48864;
  ldv_48863:
  xm_phy_write(hw, port, (int )A1hack[i].reg, (int )A1hack[i].val);
  i = i + 1;
  ldv_48864: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_48863;
  } else {
  }
  goto ldv_48859;
  }
  ldv_48859:
  r = xm_phy_read(hw, port, 24);
  r = (u16 )((unsigned int )r | 32U);
  xm_phy_write(hw, port, 24, (int )r);
  xm_read16((struct skge_hw const *)hw, port, 72);
  ext = 32U;
  ctl = 64U;
  if ((unsigned int )skge->autoneg == 1U) {
    adv = 1024U;
    if ((skge->advertising & 16U) != 0U) {
      adv = (u16 )((unsigned int )adv | 256U);
    } else {
    }
    if ((skge->advertising & 32U) != 0U) {
      adv = (u16 )((unsigned int )adv | 512U);
    } else {
    }
    xm_phy_write(hw, port, 9, (int )adv);
    ctl = (u16 )((unsigned int )ctl | 4608U);
  } else {
    if ((unsigned int )skge->duplex == 1U) {
      ctl = (u16 )((unsigned int )ctl | 256U);
    } else {
    }
    xm_phy_write(hw, port, 9, 4096);
  }
  xm_phy_write(hw, port, 4, (int )((unsigned int )((unsigned short )phy_pause_map[(unsigned int )skge->flow_control]) | 1U));
  if ((hw->dev[port])->mtu > 1500U) {
    xm_phy_write(hw, port, 24, 17408);
    ext = (u16 )((unsigned int )ext | 1U);
  } else {
  }
  xm_phy_write(hw, port, 16, (int )ext);
  xm_phy_write(hw, port, 0, (int )ctl);
  xm_phy_write(hw, port, 27, 48113);
  return;
}
}
static void xm_phy_init(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 ctrl ;
  {
  hw = skge->hw;
  port = skge->port;
  ctrl = 0U;
  if ((unsigned int )skge->autoneg == 1U) {
    if ((skge->advertising & 16U) != 0U) {
      ctrl = (u16 )((unsigned int )ctrl | 64U);
    } else {
    }
    if ((skge->advertising & 32U) != 0U) {
      ctrl = (u16 )((unsigned int )ctrl | 32U);
    } else {
    }
    ctrl = (u16 )((int )((unsigned short )fiber_pause_map[(unsigned int )skge->flow_control]) | (int )ctrl);
    xm_phy_write(hw, port, 4, (int )ctrl);
    ctrl = 4608U;
  } else
  if ((unsigned int )skge->duplex == 1U) {
    ctrl = (u16 )((unsigned int )ctrl | 256U);
  } else {
  }
  xm_phy_write(hw, port, 0, (int )ctrl);
  ldv_mod_timer_38(& skge->link_timer, (unsigned long )jiffies + 250UL);
  return;
}
}
static int xm_check_link(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  u16 status ;
  u16 lpa ;
  u16 res ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  xm_phy_read(hw, port, 1);
  status = xm_phy_read(hw, port, 1);
  if (((int )status & 4) == 0) {
    xm_link_down(hw, port);
    return (0);
  } else {
  }
  if ((unsigned int )skge->autoneg == 1U) {
    if (((int )status & 32) == 0) {
      return (0);
    } else {
    }
    lpa = xm_phy_read(hw, port, 5);
    if (((int )lpa & 8192) != 0) {
      netdev_notice((struct net_device const *)dev, "remote fault\n");
      return (0);
    } else {
    }
    res = xm_phy_read(hw, port, 16);
    switch ((int )res & 96) {
    case 32:
    skge->duplex = 1U;
    goto ldv_48883;
    case 64:
    skge->duplex = 0U;
    goto ldv_48883;
    default:
    netdev_notice((struct net_device const *)dev, "duplex mismatch\n");
    return (0);
    }
    ldv_48883: ;
    if (((unsigned int )skge->flow_control == 3U || (unsigned int )skge->flow_control == 4U) && ((int )lpa & 128) != 0) {
      skge->flow_status = 4;
    } else
    if ((unsigned int )skge->flow_control == 4U && ((int )lpa & 384) == 256) {
      skge->flow_status = 2;
    } else
    if ((unsigned int )skge->flow_control == 2U && ((int )lpa & 384) == 384) {
      skge->flow_status = 3;
    } else {
      skge->flow_status = 1;
    }
    skge->speed = 1000U;
  } else {
  }
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    genesis_link_up(skge);
  } else {
  }
  return (1);
}
}
static void xm_link_timer(unsigned long arg )
{
  struct skge_port *skge ;
  struct net_device *dev ;
  struct skge_hw *hw ;
  int port ;
  int i ;
  unsigned long flags ;
  bool tmp ;
  int tmp___0 ;
  u16 tmp___1 ;
  u16 msk ;
  u16 tmp___2 ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  {
  skge = (struct skge_port *)arg;
  dev = skge->netdev;
  hw = skge->hw;
  port = skge->port;
  tmp = netif_running((struct net_device const *)dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  ldv_spin_lock();
  i = 0;
  goto ldv_48897;
  ldv_48896:
  tmp___1 = xm_read16((struct skge_hw const *)hw, port, 64);
  if ((int )tmp___1 & 1) {
    goto link_down;
  } else {
  }
  i = i + 1;
  ldv_48897: ;
  if (i <= 2) {
    goto ldv_48896;
  } else {
  }
  tmp___4 = xm_check_link(dev);
  if (tmp___4 != 0) {
    tmp___2 = xm_read16((struct skge_hw const *)hw, port, 68);
    msk = tmp___2;
    msk = (unsigned int )msk & 63487U;
    xm_write16((struct skge_hw const *)hw, port, 68, (int )msk);
    xm_read16((struct skge_hw const *)hw, port, 72);
  } else {
    link_down:
    tmp___3 = round_jiffies((unsigned long )jiffies + 250UL);
    ldv_mod_timer_39(& skge->link_timer, tmp___3);
  }
  spin_unlock_irqrestore(& hw->phy_lock, flags);
  return;
}
}
static void genesis_mac_init(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  int jumbo ;
  int i ;
  u32 r ;
  u8 zero[6U] ;
  unsigned int tmp___0 ;
  u16 tmp___1 ;
  {
  dev = hw->dev[port];
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  jumbo = (hw->dev[port])->mtu > 1500U;
  zero[0] = 0U;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 6U) {
      break;
    } else {
    }
    zero[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  i = 0;
  goto ldv_48912;
  ldv_48911:
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 1);
  tmp___1 = skge_read16((struct skge_hw const *)hw, (port << 7) + 3352);
  if ((int )tmp___1 & 1) {
    goto reset_ok;
  } else {
  }
  __const_udelay(4295UL);
  i = i + 1;
  ldv_48912: ;
  if (i <= 9) {
    goto ldv_48911;
  } else {
  }
  netdev_warn((struct net_device const *)dev, "genesis reset failed\n");
  reset_ok:
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 2);
  if ((unsigned int )hw->phy_type != 0U) {
    r = skge_read32((struct skge_hw const *)hw, 348);
    if (port == 0) {
      r = r | 65537U;
    } else {
      r = r | 262148U;
    }
    skge_write32((struct skge_hw const *)hw, 348, r);
    xm_write16((struct skge_hw const *)hw, port, 76, 1);
  } else {
  }
  switch ((int )hw->phy_type) {
  case 0:
  xm_phy_init(skge);
  goto ldv_48915;
  case 1:
  bcom_phy_init(skge);
  bcom_check_link(hw, port);
  }
  ldv_48915:
  xm_outaddr((struct skge_hw const *)hw, port, 264, (u8 const *)dev->dev_addr);
  i = 1;
  goto ldv_48918;
  ldv_48917:
  xm_outaddr((struct skge_hw const *)hw, port, (i << 3) + 128, (u8 const *)(& zero));
  i = i + 1;
  ldv_48918: ;
  if (i <= 15) {
    goto ldv_48917;
  } else {
  }
  xm_write16((struct skge_hw const *)hw, port, 512, 3);
  xm_write16((struct skge_hw const *)hw, port, 512, 3);
  xm_write16((struct skge_hw const *)hw, port, 282, 1450);
  r = 272U;
  if (jumbo != 0) {
    r = r | 128U;
  } else {
  }
  if ((unsigned int )skge->duplex == 0U) {
    r = r | 1U;
  } else {
  }
  xm_write16((struct skge_hw const *)hw, port, 48, (int )((u16 )r));
  xm_write16((struct skge_hw const *)hw, port, 32, 1);
  if ((unsigned int )hw->ports > 1U && jumbo != 0) {
    xm_write16((struct skge_hw const *)hw, port, 100, 1020);
  } else {
    xm_write16((struct skge_hw const *)hw, port, 100, 512);
  }
  xm_write32((struct skge_hw const *)hw, port, 292, 20352U);
  xm_write32((struct skge_hw const *)hw, port, 524, 6U);
  xm_write32((struct skge_hw const *)hw, port, 528, 6U);
  skge_write16((struct skge_hw const *)hw, 440, 2);
  skge_write8((struct skge_hw const *)hw, 432, 72);
  skge_write8((struct skge_hw const *)hw, 433, 72);
  skge_write8((struct skge_hw const *)hw, 434, 72);
  skge_write8((struct skge_hw const *)hw, 435, 72);
  skge_write8((struct skge_hw const *)hw, 448, 0);
  skge_write8((struct skge_hw const *)hw, 449, 0);
  skge_write8((struct skge_hw const *)hw, 450, 0);
  skge_write8((struct skge_hw const *)hw, 451, 0);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3100, 2);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3096, 2048);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3100, 8);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3356, 2);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 10272);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3356, 8);
  if (jumbo != 0) {
    skge_write16((struct skge_hw const *)hw, (port << 7) + 3096, 32);
  } else {
    skge_write16((struct skge_hw const *)hw, 496, port == 0 ? 128 : 512);
  }
  return;
}
}
static void genesis_stop(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  unsigned int retries ;
  u16 cmd ;
  u16 tmp ;
  u32 reg ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  {
  hw = skge->hw;
  port = skge->port;
  retries = 1000U;
  cmd = xm_read16((struct skge_hw const *)hw, port, 0);
  cmd = (unsigned int )cmd & 65532U;
  xm_write16((struct skge_hw const *)hw, port, 0, (int )cmd);
  genesis_reset(hw, port);
  skge_write16((struct skge_hw const *)hw, 496, port == 0 ? 4096 : 8192);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 2);
  ldv_48928:
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 1);
  tmp = skge_read16((struct skge_hw const *)hw, (port << 7) + 3352);
  if (((int )tmp & 1) == 0) {
    goto ldv_48927;
  } else {
  }
  retries = retries - 1U;
  if (retries != 0U) {
    goto ldv_48928;
  } else {
  }
  ldv_48927: ;
  if ((unsigned int )hw->phy_type != 0U) {
    tmp___0 = skge_read32((struct skge_hw const *)hw, 348);
    reg = tmp___0;
    if (port == 0) {
      reg = reg | 65536U;
      reg = reg & 4294967294U;
    } else {
      reg = reg | 262144U;
      reg = reg & 4294967291U;
    }
    skge_write32((struct skge_hw const *)hw, 348, reg);
    skge_read32((struct skge_hw const *)hw, 348);
  } else {
  }
  tmp___1 = xm_read16((struct skge_hw const *)hw, port, 0);
  xm_write16((struct skge_hw const *)hw, port, 0, (int )tmp___1 & 65532);
  xm_read16((struct skge_hw const *)hw, port, 0);
  return;
}
}
static void genesis_get_stats(struct skge_port *skge , u64 *data )
{
  struct skge_hw *hw ;
  int port ;
  int i ;
  unsigned long timeout ;
  u16 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  {
  hw = skge->hw;
  port = skge->port;
  timeout = (unsigned long )jiffies + 250UL;
  xm_write16((struct skge_hw const *)hw, port, 512, 48);
  goto ldv_48946;
  ldv_48945: ;
  if ((long )(timeout - (unsigned long )jiffies) < 0L) {
    goto ldv_48944;
  } else {
  }
  __const_udelay(42950UL);
  ldv_48946:
  tmp = xm_read16((struct skge_hw const *)hw, port, 512);
  if (((int )tmp & 48) != 0) {
    goto ldv_48945;
  } else {
  }
  ldv_48944:
  tmp___0 = xm_read32((struct skge_hw const *)hw, port, 644);
  tmp___1 = xm_read32((struct skge_hw const *)hw, port, 648);
  *data = ((unsigned long long )tmp___0 << 32) | (unsigned long long )tmp___1;
  tmp___2 = xm_read32((struct skge_hw const *)hw, port, 772);
  tmp___3 = xm_read32((struct skge_hw const *)hw, port, 776);
  *(data + 1UL) = ((unsigned long long )tmp___2 << 32) | (unsigned long long )tmp___3;
  i = 2;
  goto ldv_48950;
  ldv_48949:
  tmp___4 = xm_read32((struct skge_hw const *)hw, port, (int )skge_stats[i].xmac_offset);
  *(data + (unsigned long )i) = (u64 )tmp___4;
  i = i + 1;
  ldv_48950: ;
  if ((unsigned int )i <= 20U) {
    goto ldv_48949;
  } else {
  }
  return;
}
}
static void genesis_mac_intr(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  u16 status ;
  u16 tmp___0 ;
  {
  dev = hw->dev[port];
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  tmp___0 = xm_read16((struct skge_hw const *)hw, port, 72);
  status = tmp___0;
  if ((skge->msg_enable & 512U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "mac interrupt status 0x%x\n",
                  (int )status);
  } else {
  }
  if ((unsigned int )hw->phy_type == 0U && ((int )status & 2048) != 0) {
    xm_link_down(hw, port);
    ldv_mod_timer_40(& skge->link_timer, (unsigned long )jiffies + 1UL);
  } else {
  }
  if (((int )status & 4) != 0) {
    xm_write32((struct skge_hw const *)hw, port, 292, 2U);
    dev->stats.tx_fifo_errors = dev->stats.tx_fifo_errors + 1UL;
  } else {
  }
  return;
}
}
static void genesis_link_up(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 cmd ;
  u16 msk ;
  u32 mode ;
  u16 tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  cmd = xm_read16((struct skge_hw const *)hw, port, 0);
  if ((unsigned int )skge->flow_status == 1U || (unsigned int )skge->flow_status == 3U) {
    cmd = (u16 )((unsigned int )cmd | 1024U);
  } else {
    cmd = (unsigned int )cmd & 64511U;
  }
  xm_write16((struct skge_hw const *)hw, port, 0, (int )cmd);
  mode = xm_read32((struct skge_hw const *)hw, port, 292);
  if ((unsigned int )skge->flow_status == 4U || (unsigned int )skge->flow_status == 3U) {
    xm_write16((struct skge_hw const *)hw, port, 118, 65535);
    mode = mode | 33947648U;
    skge_write16((struct skge_hw const *)hw, (port << 7) + 3096, 128);
  } else {
    mode = mode & 4261019647U;
    skge_write16((struct skge_hw const *)hw, (port << 7) + 3096, 64);
  }
  xm_write32((struct skge_hw const *)hw, port, 292, mode);
  msk = xm_read16((struct skge_hw const *)hw, port, 68);
  msk = (unsigned int )msk & 65531U;
  xm_write16((struct skge_hw const *)hw, port, 68, (int )msk);
  xm_read16((struct skge_hw const *)hw, port, 72);
  cmd = xm_read16((struct skge_hw const *)hw, port, 0);
  if ((unsigned int )hw->phy_type != 0U && (unsigned int )skge->duplex == 1U) {
    cmd = (u16 )((unsigned int )cmd | 16U);
  } else {
  }
  if ((unsigned int )hw->phy_type == 1U) {
    tmp = xm_phy_read(hw, port, 24);
    xm_phy_write(hw, port, 24, (int )tmp & 65503);
    xm_phy_write(hw, port, 27, 48113);
  } else {
  }
  xm_write16((struct skge_hw const *)hw, port, 0, (int )((unsigned int )cmd | 3U));
  skge_link_up(skge);
  return;
}
}
__inline static void bcom_phy_intr(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 isrc ;
  u16 ctrl ;
  u16 tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  isrc = xm_phy_read(hw, port, 26);
  if ((skge->msg_enable & 512U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "phy interrupt status 0x%x\n",
                  (int )isrc);
  } else {
  }
  if (((int )isrc & 16384) != 0) {
    printk("\vskge: %s: uncorrectable pair swap error\n", (char *)(& (hw->dev[port])->name));
  } else {
  }
  if (((int )isrc & 512) != 0) {
    tmp = xm_phy_read(hw, port, 0);
    ctrl = tmp;
    xm_phy_write(hw, port, 0, (int )((unsigned int )ctrl | 16384U));
    xm_phy_write(hw, port, 0, (int )ctrl & 49151);
  } else {
  }
  if (((int )isrc & 1026) != 0) {
    bcom_check_link(hw, port);
  } else {
  }
  return;
}
}
static int gm_phy_write(struct skge_hw *hw , int port , u16 reg , u16 val )
{
  int i ;
  u16 tmp ;
  {
  gma_write16((struct skge_hw const *)hw, port, 132, (int )val);
  gma_write16((struct skge_hw const *)hw, port, 128, (int )((u16 )((int )((short )((int )hw->phy_addr << 11)) | ((int )((short )((int )reg << 6)) & 1984))));
  i = 0;
  goto ldv_48982;
  ldv_48981:
  __const_udelay(4295UL);
  tmp = gma_read16((struct skge_hw const *)hw, port, 128);
  if (((int )tmp & 8) == 0) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_48982: ;
  if (i <= 999) {
    goto ldv_48981;
  } else {
  }
  printk("\fskge: %s: phy write timeout\n", (char *)(& (hw->dev[port])->name));
  return (-5);
}
}
static int __gm_phy_read(struct skge_hw *hw , int port , u16 reg , u16 *val )
{
  int i ;
  u16 tmp ;
  {
  gma_write16((struct skge_hw const *)hw, port, 128, (int )((u16 )(((int )((short )((int )hw->phy_addr << 11)) | ((int )((short )((int )reg << 6)) & 1984)) | 32)));
  i = 0;
  goto ldv_48993;
  ldv_48992:
  __const_udelay(4295UL);
  tmp = gma_read16((struct skge_hw const *)hw, port, 128);
  if (((int )tmp & 16) != 0) {
    goto ready;
  } else {
  }
  i = i + 1;
  ldv_48993: ;
  if (i <= 999) {
    goto ldv_48992;
  } else {
  }
  return (-110);
  ready:
  *val = gma_read16((struct skge_hw const *)hw, port, 132);
  return (0);
}
}
static u16 gm_phy_read(struct skge_hw *hw , int port , u16 reg )
{
  u16 v ;
  int tmp ;
  {
  v = 0U;
  tmp = __gm_phy_read(hw, port, (int )reg, & v);
  if (tmp != 0) {
    printk("\fskge: %s: phy read timeout\n", (char *)(& (hw->dev[port])->name));
  } else {
  }
  return (v);
}
}
static void yukon_init(struct skge_hw *hw , int port )
{
  struct skge_port *skge ;
  void *tmp ;
  u16 ctrl ;
  u16 ct1000 ;
  u16 adv ;
  u16 ectrl ;
  u16 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)hw->dev[port]);
  skge = (struct skge_port *)tmp;
  if ((unsigned int )skge->autoneg == 1U) {
    tmp___0 = gm_phy_read(hw, port, 20);
    ectrl = tmp___0;
    ectrl = (unsigned int )ectrl & 61583U;
    ectrl = (u16 )((unsigned int )ectrl | 112U);
    ectrl = (u16 )((unsigned int )ectrl | 256U);
    gm_phy_write(hw, port, 20, (int )ectrl);
  } else {
  }
  ctrl = gm_phy_read(hw, port, 0);
  if ((unsigned int )skge->autoneg == 0U) {
    ctrl = (unsigned int )ctrl & 61439U;
  } else {
  }
  ctrl = (u16 )((unsigned int )ctrl | 32768U);
  gm_phy_write(hw, port, 0, (int )ctrl);
  ctrl = 0U;
  ct1000 = 0U;
  adv = 1U;
  if ((unsigned int )skge->autoneg == 1U) {
    if ((unsigned int )hw->copper != 0U) {
      if ((skge->advertising & 32U) != 0U) {
        ct1000 = (u16 )((unsigned int )ct1000 | 512U);
      } else {
      }
      if ((skge->advertising & 16U) != 0U) {
        ct1000 = (u16 )((unsigned int )ct1000 | 256U);
      } else {
      }
      if ((skge->advertising & 8U) != 0U) {
        adv = (u16 )((unsigned int )adv | 256U);
      } else {
      }
      if ((skge->advertising & 4U) != 0U) {
        adv = (u16 )((unsigned int )adv | 128U);
      } else {
      }
      if ((skge->advertising & 2U) != 0U) {
        adv = (u16 )((unsigned int )adv | 64U);
      } else {
      }
      if ((int )skge->advertising & 1) {
        adv = (u16 )((unsigned int )adv | 32U);
      } else {
      }
      adv = (u16 )((int )((unsigned short )phy_pause_map[(unsigned int )skge->flow_control]) | (int )adv);
    } else {
      if ((skge->advertising & 32U) != 0U) {
        adv = (u16 )((unsigned int )adv | 32U);
      } else {
      }
      if ((skge->advertising & 16U) != 0U) {
        adv = (u16 )((unsigned int )adv | 64U);
      } else {
      }
      adv = (u16 )((int )((unsigned short )fiber_pause_map[(unsigned int )skge->flow_control]) | (int )adv);
    }
    ctrl = (u16 )((unsigned int )ctrl | 4608U);
  } else {
    ct1000 = 4096U;
    if ((unsigned int )skge->duplex == 1U) {
      ctrl = (u16 )((unsigned int )ctrl | 256U);
    } else {
    }
    switch ((int )skge->speed) {
    case 1000:
    ctrl = (u16 )((unsigned int )ctrl | 64U);
    goto ldv_49011;
    case 100:
    ctrl = (u16 )((unsigned int )ctrl | 8192U);
    goto ldv_49011;
    }
    ldv_49011:
    ctrl = (u16 )((unsigned int )ctrl | 32768U);
  }
  gm_phy_write(hw, port, 9, (int )ct1000);
  gm_phy_write(hw, port, 4, (int )adv);
  gm_phy_write(hw, port, 0, (int )ctrl);
  if ((unsigned int )skge->autoneg == 1U) {
    gm_phy_write(hw, port, 18, 34816);
  } else {
    gm_phy_write(hw, port, 18, 50304);
  }
  return;
}
}
static void yukon_reset(struct skge_hw *hw , int port )
{
  u16 tmp ;
  {
  gm_phy_write(hw, port, 18, 0);
  gma_write16((struct skge_hw const *)hw, port, 52, 0);
  gma_write16((struct skge_hw const *)hw, port, 56, 0);
  gma_write16((struct skge_hw const *)hw, port, 60, 0);
  gma_write16((struct skge_hw const *)hw, port, 64, 0);
  tmp = gma_read16((struct skge_hw const *)hw, port, 12);
  gma_write16((struct skge_hw const *)hw, port, 12, (int )((unsigned int )tmp | 49152U));
  return;
}
}
static int is_yukon_lite_a0(struct skge_hw *hw )
{
  u32 reg ;
  int ret ;
  u8 tmp ;
  {
  if ((unsigned int )hw->chip_id != 176U) {
    return (0);
  } else {
  }
  reg = skge_read32((struct skge_hw const *)hw, 288);
  skge_write8((struct skge_hw const *)hw, 291, 255);
  tmp = skge_read8((struct skge_hw const *)hw, 291);
  ret = (unsigned int )tmp != 0U;
  skge_write32((struct skge_hw const *)hw, 288, reg);
  return (ret);
}
}
static void yukon_mac_init(struct skge_hw *hw , int port )
{
  struct skge_port *skge ;
  void *tmp ;
  int i ;
  u32 reg ;
  u8 const *addr ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)hw->dev[port]);
  skge = (struct skge_port *)tmp;
  addr = (u8 const *)(hw->dev[port])->dev_addr;
  if ((unsigned int )hw->chip_id == 177U && (unsigned int )hw->chip_rev > 6U) {
    reg = skge_read32((struct skge_hw const *)hw, 348);
    reg = reg | 33554944U;
    skge_write32((struct skge_hw const *)hw, 348, reg);
  } else {
  }
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3844, 1U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3840, 1U);
  if ((unsigned int )hw->chip_id == 177U && (unsigned int )hw->chip_rev > 6U) {
    reg = skge_read32((struct skge_hw const *)hw, 348);
    reg = reg | 33554432U;
    reg = reg & 4294966783U;
    skge_write32((struct skge_hw const *)hw, 348, reg);
  } else {
  }
  reg = 185458688U;
  reg = ((unsigned int )hw->copper != 0U ? 15728640U : 7340032U) | reg;
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3844, reg | 1U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3844, reg | 2U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3840, 10U);
  if ((unsigned int )skge->autoneg == 0U) {
    reg = 7U;
    tmp___0 = gma_read16((struct skge_hw const *)hw, port, 4);
    gma_write16((struct skge_hw const *)hw, port, 4, (int )tmp___0 | (int )((u16 )reg));
    switch ((int )skge->speed) {
    case 1000:
    reg = reg & 4294967287U;
    reg = reg | 136U;
    goto ldv_49031;
    case 100:
    reg = reg & 4294967159U;
    reg = reg | 8U;
    goto ldv_49031;
    case 10:
    reg = reg & 4294967159U;
    goto ldv_49031;
    }
    ldv_49031: ;
    if ((unsigned int )skge->duplex == 1U) {
      reg = reg | 32U;
    } else {
    }
  } else {
    reg = 168U;
  }
  switch ((unsigned int )skge->flow_control) {
  case 1U:
  skge_write32((struct skge_hw const *)hw, (port << 7) + 3840, 4U);
  reg = reg | 8210U;
  goto ldv_49035;
  case 2U:
  reg = reg | 18U;
  goto ldv_49035;
  case 3U: ;
  case 4U: ;
  goto ldv_49035;
  }
  ldv_49035:
  gma_write16((struct skge_hw const *)hw, port, 4, (int )((u16 )reg));
  skge_read16((struct skge_hw const *)hw, (port << 7) + 3848);
  yukon_init(hw, port);
  tmp___1 = gma_read16((struct skge_hw const *)hw, port, 136);
  reg = (u32 )tmp___1;
  gma_write16((struct skge_hw const *)hw, port, 136, (int )((unsigned int )((u16 )reg) | 32U));
  i = 0;
  goto ldv_49040;
  ldv_49039:
  gma_read16((struct skge_hw const *)hw, port, (i + 32) * 8);
  i = i + 1;
  ldv_49040: ;
  if (i <= 43) {
    goto ldv_49039;
  } else {
  }
  gma_write16((struct skge_hw const *)hw, port, 136, (int )((u16 )reg));
  gma_write16((struct skge_hw const *)hw, port, 8, 4096);
  gma_write16((struct skge_hw const *)hw, port, 12, 57344);
  gma_write16((struct skge_hw const *)hw, port, 16, 65535);
  gma_write16((struct skge_hw const *)hw, port, 20, 55232);
  reg = 8734U;
  if ((hw->dev[port])->mtu > 1500U) {
    reg = reg | 256U;
  } else {
  }
  gma_write16((struct skge_hw const *)hw, port, 24, (int )((u16 )reg));
  gma_set_addr(hw, port, 28, addr);
  gma_set_addr(hw, port, 40, addr);
  gma_write16((struct skge_hw const *)hw, port, 80, 0);
  gma_write16((struct skge_hw const *)hw, port, 84, 0);
  gma_write16((struct skge_hw const *)hw, port, 88, 0);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3148, 6243);
  reg = 136U;
  tmp___2 = is_yukon_lite_a0(hw);
  if (tmp___2 != 0) {
    reg = reg & 4294967167U;
  } else {
  }
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3144, 2);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3144, (int )((u16 )reg));
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3152, 11);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3400, 2);
  skge_write16((struct skge_hw const *)hw, (port << 7) + 3400, 8);
  return;
}
}
static void yukon_suspend(struct skge_hw *hw , int port )
{
  u16 ctrl ;
  {
  ctrl = gm_phy_read(hw, port, 16);
  ctrl = (u16 )((unsigned int )ctrl | 2U);
  gm_phy_write(hw, port, 16, (int )ctrl);
  ctrl = gm_phy_read(hw, port, 0);
  ctrl = (u16 )((unsigned int )ctrl | 32768U);
  gm_phy_write(hw, port, 0, (int )ctrl);
  ctrl = gm_phy_read(hw, port, 0);
  ctrl = (u16 )((unsigned int )ctrl | 2048U);
  gm_phy_write(hw, port, 0, (int )ctrl);
  return;
}
}
static void yukon_stop(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3852, 0);
  yukon_reset(hw, port);
  tmp = gma_read16((struct skge_hw const *)hw, port, 4);
  gma_write16((struct skge_hw const *)hw, port, 4, (int )tmp & 59391);
  gma_read16((struct skge_hw const *)hw, port, 4);
  yukon_suspend(hw, port);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3844, 1);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3840, 1);
  return;
}
}
static void yukon_get_stats(struct skge_port *skge , u64 *data )
{
  struct skge_hw *hw ;
  int port ;
  int i ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  hw = skge->hw;
  port = skge->port;
  tmp = gma_read32((struct skge_hw const *)hw, port, 488);
  tmp___0 = gma_read32((struct skge_hw const *)hw, port, 480);
  *data = ((unsigned long long )tmp << 32) | (unsigned long long )tmp___0;
  tmp___1 = gma_read32((struct skge_hw const *)hw, port, 312);
  tmp___2 = gma_read32((struct skge_hw const *)hw, port, 304);
  *(data + 1UL) = ((unsigned long long )tmp___1 << 32) | (unsigned long long )tmp___2;
  i = 2;
  goto ldv_49062;
  ldv_49061:
  tmp___3 = gma_read32((struct skge_hw const *)hw, port, (int )skge_stats[i].gma_offset);
  *(data + (unsigned long )i) = (u64 )tmp___3;
  i = i + 1;
  ldv_49062: ;
  if ((unsigned int )i <= 20U) {
    goto ldv_49061;
  } else {
  }
  return;
}
}
static void yukon_mac_intr(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  u8 status ;
  u8 tmp___0 ;
  {
  dev = hw->dev[port];
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  tmp___0 = skge_read8((struct skge_hw const *)hw, (port << 7) + 3848);
  status = tmp___0;
  if ((skge->msg_enable & 512U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "mac interrupt status 0x%x\n",
                  (int )status);
  } else {
  }
  if (((int )status & 2) != 0) {
    dev->stats.rx_fifo_errors = dev->stats.rx_fifo_errors + 1UL;
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3144, 32);
  } else {
  }
  if (((int )status & 8) != 0) {
    dev->stats.tx_fifo_errors = dev->stats.tx_fifo_errors + 1UL;
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3400, 64);
  } else {
  }
  return;
}
}
static u16 yukon_speed(struct skge_hw const *hw , u16 aux )
{
  {
  switch ((int )aux & 49152) {
  case 32768: ;
  return (1000U);
  case 16384: ;
  return (100U);
  default: ;
  return (10U);
  }
}
}
static void yukon_link_up(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 reg ;
  {
  hw = skge->hw;
  port = skge->port;
  skge_write8((struct skge_hw const *)hw, (port << 7) + 3852, 10);
  reg = gma_read16((struct skge_hw const *)hw, port, 4);
  if ((unsigned int )skge->duplex == 1U || (unsigned int )skge->autoneg == 1U) {
    reg = (u16 )((unsigned int )reg | 32U);
  } else {
  }
  reg = (u16 )((unsigned int )reg | 6144U);
  gma_write16((struct skge_hw const *)hw, port, 4, (int )reg);
  gm_phy_write(hw, port, 18, 50304);
  skge_link_up(skge);
  return;
}
}
static void yukon_link_down(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  u16 ctrl ;
  {
  hw = skge->hw;
  port = skge->port;
  ctrl = gma_read16((struct skge_hw const *)hw, port, 4);
  ctrl = (unsigned int )ctrl & 59391U;
  gma_write16((struct skge_hw const *)hw, port, 4, (int )ctrl);
  if ((unsigned int )skge->flow_status == 2U) {
    ctrl = gm_phy_read(hw, port, 4);
    ctrl = (u16 )((unsigned int )ctrl | 2048U);
    gm_phy_write(hw, port, 4, (int )ctrl);
  } else {
  }
  skge_link_down(skge);
  yukon_init(hw, port);
  return;
}
}
static void yukon_phy_intr(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  char const *reason ;
  u16 istatus ;
  u16 phystat ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  hw = skge->hw;
  port = skge->port;
  reason = (char const *)0;
  istatus = gm_phy_read(hw, port, 19);
  phystat = gm_phy_read(hw, port, 17);
  if ((skge->msg_enable & 512U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "phy interrupt status 0x%x 0x%x\n",
                  (int )istatus, (int )phystat);
  } else {
  }
  if (((int )istatus & 2048) != 0) {
    tmp = gm_phy_read(hw, port, 5);
    if (((int )tmp & 8192) != 0) {
      reason = "remote fault";
      goto failed;
    } else {
    }
    tmp___0 = gm_phy_read(hw, port, 10);
    if ((int )((short )tmp___0) < 0) {
      reason = "master/slave fault";
      goto failed;
    } else {
    }
    if (((int )phystat & 2048) == 0) {
      reason = "speed/duplex";
      goto failed;
    } else {
    }
    skge->duplex = ((int )phystat & 8192) != 0;
    skge->speed = yukon_speed((struct skge_hw const *)hw, (int )phystat);
    switch ((int )phystat & 12) {
    case 12:
    skge->flow_status = 4;
    goto ldv_49100;
    case 4:
    skge->flow_status = 2;
    goto ldv_49100;
    case 8:
    skge->flow_status = 3;
    goto ldv_49100;
    default:
    skge->flow_status = 1;
    }
    ldv_49100: ;
    if ((unsigned int )skge->flow_status == 1U || ((unsigned int )skge->speed <= 999U && (unsigned int )skge->duplex == 0U)) {
      skge_write8((struct skge_hw const *)hw, (port << 7) + 3840, 4);
    } else {
      skge_write8((struct skge_hw const *)hw, (port << 7) + 3840, 8);
    }
    yukon_link_up(skge);
    return;
  } else {
  }
  if (((int )istatus & 16384) != 0) {
    skge->speed = yukon_speed((struct skge_hw const *)hw, (int )phystat);
  } else {
  }
  if (((int )istatus & 8192) != 0) {
    skge->duplex = ((int )phystat & 8192) != 0;
  } else {
  }
  if (((int )istatus & 1024) != 0) {
    if (((int )phystat & 1024) != 0) {
      yukon_link_up(skge);
    } else {
      yukon_link_down(skge);
    }
  } else {
  }
  return;
  failed:
  printk("\vskge: %s: autonegotiation failed (%s)\n", (char *)(& (skge->netdev)->name),
         reason);
  return;
}
}
static void skge_phy_reset(struct skge_port *skge )
{
  struct skge_hw *hw ;
  int port ;
  struct net_device *dev ;
  bool tmp ;
  {
  hw = skge->hw;
  port = skge->port;
  dev = hw->dev[port];
  netif_stop_queue(skge->netdev);
  netif_carrier_off(skge->netdev);
  spin_lock_bh(& hw->phy_lock);
  tmp = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp) {
    genesis_reset(hw, port);
    genesis_mac_init(hw, port);
  } else {
    yukon_reset(hw, port);
    yukon_init(hw, port);
  }
  spin_unlock_bh(& hw->phy_lock);
  skge_set_multicast(dev);
  return;
}
}
static int skge_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp ;
  struct skge_port *skge ;
  void *tmp___0 ;
  struct skge_hw *hw ;
  int err ;
  bool tmp___1 ;
  int tmp___2 ;
  u16 val ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  tmp = if_mii(ifr);
  data = tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp___0;
  hw = skge->hw;
  err = -95;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-19);
  } else {
  }
  switch (cmd) {
  case 35143:
  data->phy_id = hw->phy_addr;
  case 35144:
  val = 0U;
  spin_lock_bh(& hw->phy_lock);
  tmp___3 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___3) {
    err = __xm_phy_read(hw, skge->port, (int )data->reg_num & 31, & val);
  } else {
    err = __gm_phy_read(hw, skge->port, (int )data->reg_num & 31, & val);
  }
  spin_unlock_bh(& hw->phy_lock);
  data->val_out = val;
  goto ldv_49122;
  case 35145:
  spin_lock_bh(& hw->phy_lock);
  tmp___4 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___4) {
    err = xm_phy_write(hw, skge->port, (int )data->reg_num & 31, (int )data->val_in);
  } else {
    err = gm_phy_write(hw, skge->port, (int )data->reg_num & 31, (int )data->val_in);
  }
  spin_unlock_bh(& hw->phy_lock);
  goto ldv_49122;
  }
  ldv_49122: ;
  return (err);
}
}
static void skge_ramset(struct skge_hw *hw , u16 q , u32 start , size_t len )
{
  u32 end ;
  {
  start = start / 8U;
  len = len / 8UL;
  end = ((u32 )len + start) - 1U;
  skge_write8((struct skge_hw const *)hw, (int )q + 2088, 2);
  skge_write32((struct skge_hw const *)hw, (int )q + 2048, start);
  skge_write32((struct skge_hw const *)hw, (int )q + 2056, start);
  skge_write32((struct skge_hw const *)hw, (int )q + 2060, start);
  skge_write32((struct skge_hw const *)hw, (int )q + 2052, end);
  if ((unsigned int )q == 0U || (unsigned int )q == 128U) {
    skge_write32((struct skge_hw const *)hw, (int )q + 2064, (u32 )((len * 2UL) / 3UL) + start);
    skge_write32((struct skge_hw const *)hw, (int )q + 2068, (u32 )(len / 3UL) + start);
  } else {
    skge_write8((struct skge_hw const *)hw, (int )q + 2088, 32);
  }
  skge_write8((struct skge_hw const *)hw, (int )q + 2088, 8);
  return;
}
}
static void skge_qset(struct skge_port *skge , u16 q , struct skge_element const *e )
{
  struct skge_hw *hw ;
  u32 watermark ;
  u64 base ;
  u16 tmp ;
  {
  hw = skge->hw;
  watermark = 1536U;
  base = skge->dma + (unsigned long long )((long )e->desc - (long )skge->mem);
  tmp = skge_read16((struct skge_hw const *)hw, 4);
  if (((int )tmp & 768) == 0) {
    watermark = watermark / 2U;
  } else {
  }
  skge_write32((struct skge_hw const *)hw, (int )q + 1076, 2796032U);
  skge_write32((struct skge_hw const *)hw, (int )q + 1080, watermark);
  skge_write32((struct skge_hw const *)hw, (int )q + 1060, (unsigned int )(base >> 32));
  skge_write32((struct skge_hw const *)hw, (int )q + 1056, (unsigned int )base);
  return;
}
}
static int skge_up(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  u32 chunk ;
  u32 ram_addr ;
  size_t rx_size ;
  size_t tx_size ;
  int err ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  tmp___0 = is_valid_ether_addr((u8 const *)dev->dev_addr);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-22);
  } else {
  }
  if ((skge->msg_enable & 32U) != 0U) {
    netdev_info((struct net_device const *)skge->netdev, "enabling interface\n");
  } else {
  }
  if (dev->mtu > 1536U) {
    skge->rx_buf_size = dev->mtu + 14U;
  } else {
    skge->rx_buf_size = 1536U;
  }
  rx_size = skge->rx_ring.count * 32UL;
  tx_size = skge->tx_ring.count * 32UL;
  skge->mem_size = tx_size + rx_size;
  skge->mem = pci_alloc_consistent(hw->pdev, skge->mem_size, & skge->dma);
  if ((unsigned long )skge->mem == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  tmp___2 = ldv__builtin_expect((skge->dma & 7ULL) != 0ULL, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10526/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/marvell/skge.c"),
                         "i" (2552), "i" (12UL));
    ldv_49150: ;
    goto ldv_49150;
  } else {
  }
  if ((unsigned int )(skge->dma >> 32ULL) != (unsigned int )((skge->dma + (unsigned long long )skge->mem_size) >> 32ULL)) {
    dev_err((struct device const *)(& (hw->pdev)->dev), "pci_alloc_consistent region crosses 4G boundary\n");
    err = -22;
    goto free_pci_mem;
  } else {
  }
  memset(skge->mem, 0, skge->mem_size);
  err = skge_ring_alloc(& skge->rx_ring, skge->mem, (u32 )skge->dma);
  if (err != 0) {
    goto free_pci_mem;
  } else {
  }
  err = skge_rx_fill(dev);
  if (err != 0) {
    goto free_rx_ring;
  } else {
  }
  err = skge_ring_alloc(& skge->tx_ring, skge->mem + rx_size, (u32 )skge->dma + (u32 )rx_size);
  if (err != 0) {
    goto free_rx_ring;
  } else {
  }
  if ((unsigned int )hw->ports == 1U) {
    err = ldv_request_irq_41((hw->pdev)->irq, & skge_intr, 128UL, (char const *)(& dev->name),
                             (void *)hw);
    if (err != 0) {
      netdev_err((struct net_device const *)dev, "Unable to allocate interrupt %d error: %d\n",
                 (hw->pdev)->irq, err);
      goto free_tx_ring;
    } else {
    }
  } else {
  }
  netif_carrier_off(dev);
  spin_lock_bh(& hw->phy_lock);
  tmp___3 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___3) {
    genesis_mac_init(hw, port);
  } else {
    yukon_mac_init(hw, port);
  }
  spin_unlock_bh(& hw->phy_lock);
  chunk = (hw->ram_size - hw->ram_offset) / (u32 )((int )hw->ports * 2);
  ram_addr = hw->ram_offset + (chunk * (u32 )port) * 2U;
  skge_ramset(hw, (int )((u16 )rxqaddr[port]), ram_addr, (size_t )chunk);
  skge_qset(skge, (int )((u16 )rxqaddr[port]), (struct skge_element const *)skge->rx_ring.to_clean);
  tmp___4 = ldv__builtin_expect((unsigned long )skge->tx_ring.to_use != (unsigned long )skge->tx_ring.to_clean,
                             0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10526/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/marvell/skge.c"),
                         "i" (2601), "i" (12UL));
    ldv_49154: ;
    goto ldv_49154;
  } else {
  }
  skge_ramset(hw, (int )((u16 )txqaddr[port]), ram_addr + chunk, (size_t )chunk);
  skge_qset(skge, (int )((u16 )txqaddr[port]), (struct skge_element const *)skge->tx_ring.to_use);
  __asm__ volatile ("sfence": : : "memory");
  skge_write8((struct skge_hw const *)hw, (int )rxqaddr[port] + 1076, 18);
  skge_led(skge, 1);
  spin_lock_irq(& hw->hw_lock);
  hw->intr_mask = hw->intr_mask | (u32 )portmask[port];
  skge_write32((struct skge_hw const *)hw, 12, hw->intr_mask);
  skge_read32((struct skge_hw const *)hw, 12);
  spin_unlock_irq(& hw->hw_lock);
  napi_enable(& skge->napi);
  skge_set_multicast(dev);
  return (0);
  free_tx_ring:
  kfree((void const *)skge->tx_ring.start);
  free_rx_ring:
  skge_rx_clean(skge);
  kfree((void const *)skge->rx_ring.start);
  free_pci_mem:
  pci_free_consistent(hw->pdev, skge->mem_size, skge->mem, skge->dma);
  skge->mem = (void *)0;
  return (err);
}
}
static void skge_rx_stop(struct skge_hw *hw , int port )
{
  {
  skge_write8((struct skge_hw const *)hw, (int )rxqaddr[port] + 1076, 32);
  skge_write32((struct skge_hw const *)hw, port != 0 ? 2216 : 2088, 5U);
  skge_write32((struct skge_hw const *)hw, (int )rxqaddr[port] + 1076, 1398016U);
  return;
}
}
static int skge_down(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  if ((unsigned long )skge->mem == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  if ((skge->msg_enable & 16U) != 0U) {
    netdev_info((struct net_device const *)skge->netdev, "disabling interface\n");
  } else {
  }
  netif_tx_disable(dev);
  tmp___0 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___0 && (unsigned int )hw->phy_type == 0U) {
    ldv_del_timer_sync_42(& skge->link_timer);
  } else {
  }
  napi_disable(& skge->napi);
  netif_carrier_off(dev);
  spin_lock_irq(& hw->hw_lock);
  hw->intr_mask = hw->intr_mask & (u32 )(~ portmask[port]);
  skge_write32((struct skge_hw const *)hw, 12, (unsigned int )hw->ports != 1U ? hw->intr_mask : 0U);
  skge_read32((struct skge_hw const *)hw, 12);
  spin_unlock_irq(& hw->hw_lock);
  if ((unsigned int )hw->ports == 1U) {
    ldv_free_irq_43((hw->pdev)->irq, (void *)hw);
  } else {
  }
  skge_write8((struct skge_hw const *)skge->hw, (skge->port << 7) + 3132, 1);
  tmp___1 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___1) {
    genesis_stop(skge);
  } else {
    yukon_stop(skge);
  }
  skge_write8((struct skge_hw const *)hw, (int )txqaddr[port] + 1076, 32);
  skge_write32((struct skge_hw const *)hw, (int )txqaddr[port] + 2088, 5U);
  skge_write8((struct skge_hw const *)hw, (port << 7) + 528, 84);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 512, 0U);
  skge_write32((struct skge_hw const *)hw, (port << 7) + 520, 0U);
  skge_write32((struct skge_hw const *)hw, (int )txqaddr[port] + 1076, 1398016U);
  skge_write32((struct skge_hw const *)hw, (int )txqaddr[port] + 2088, 1U);
  skge_write8((struct skge_hw const *)hw, port == 0 ? 2728 : 2984, 1);
  skge_rx_stop(hw, port);
  tmp___2 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___2) {
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3356, 1);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3100, 1);
  } else {
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3144, 1);
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3400, 1);
  }
  skge_led(skge, 0);
  netif_tx_lock_bh(dev);
  skge_tx_clean(dev);
  netif_tx_unlock_bh(dev);
  skge_rx_clean(skge);
  kfree((void const *)skge->rx_ring.start);
  kfree((void const *)skge->tx_ring.start);
  pci_free_consistent(hw->pdev, skge->mem_size, skge->mem, skge->dma);
  skge->mem = (void *)0;
  return (0);
}
}
__inline static int skge_avail(struct skge_ring const *ring )
{
  {
  __asm__ volatile ("mfence": : : "memory");
  return ((int )((((unsigned long )ring->to_clean <= (unsigned long )ring->to_use ? (unsigned int )ring->count : 0U) + (unsigned int )(((long )ring->to_clean - (long )ring->to_use) / 40L)) - 1U));
}
}
static netdev_tx_t skge_xmit_frame(struct sk_buff *skb , struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  struct skge_element *e ;
  struct skge_tx_desc *td ;
  int i ;
  u32 control ;
  u32 len ;
  dma_addr_t map ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int offset ;
  int tmp___6 ;
  struct iphdr *tmp___7 ;
  struct skge_tx_desc *tf ;
  skb_frag_t const *frag ;
  unsigned char *tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  unsigned int tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned char *tmp___14 ;
  struct _ddebug descriptor ;
  long tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  tmp___0 = skb_padto(skb, 60U);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = skge_avail((struct skge_ring const *)(& skge->tx_ring));
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___3 = ldv__builtin_expect(tmp___1 < (int )((struct skb_shared_info *)tmp___2)->nr_frags + 1,
                             0L);
  if (tmp___3 != 0L) {
    return (16);
  } else {
  }
  e = skge->tx_ring.to_use;
  td = (struct skge_tx_desc *)e->desc;
  tmp___4 = ldv__builtin_expect((int )td->control < 0, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10526/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/marvell/skge.c"),
                         "i" (2749), "i" (12UL));
    ldv_49180: ;
    goto ldv_49180;
  } else {
  }
  e->skb = skb;
  len = skb_headlen((struct sk_buff const *)skb);
  map = pci_map_single(hw->pdev, (void *)skb->data, (size_t )len, 1);
  tmp___5 = pci_dma_mapping_error(hw->pdev, map);
  if (tmp___5 != 0) {
    goto mapping_error;
  } else {
  }
  e->mapaddr = map;
  e->maplen = len;
  td->dma_lo = (unsigned int )map;
  td->dma_hi = (unsigned int )(map >> 32ULL);
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    tmp___6 = skb_checksum_start_offset((struct sk_buff const *)skb);
    offset = tmp___6;
    tmp___7 = ipip_hdr((struct sk_buff const *)skb);
    if (((unsigned int )tmp___7->protocol == 17U && (unsigned int )hw->chip_rev == 0U) && (unsigned int )hw->chip_id == 176U) {
      control = 5636096U;
    } else {
      control = 5701632U;
    }
    td->csum_offs = 0U;
    td->csum_start = (u16 )offset;
    td->csum_write = (int )skb->__annonCompField81.__annonCompField80.csum_offset + (int )((u16 )offset);
  } else {
    control = 5570560U;
  }
  tmp___14 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___14)->nr_frags == 0U) {
    control = control | 671088640U;
  } else {
    tf = td;
    control = control | 67108864U;
    i = 0;
    goto ldv_49188;
    ldv_49187:
    tmp___8 = skb_end_pointer((struct sk_buff const *)skb);
    frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___8)->frags) + (unsigned long )i;
    tmp___9 = skb_frag_size(frag);
    map = skb_frag_dma_map(& (hw->pdev)->dev, frag, 0UL, (size_t )tmp___9, 1);
    tmp___10 = dma_mapping_error(& (hw->pdev)->dev, map);
    if (tmp___10 != 0) {
      goto mapping_unwind;
    } else {
    }
    e = e->next;
    e->skb = skb;
    tf = (struct skge_tx_desc *)e->desc;
    tmp___11 = ldv__builtin_expect((int )tf->control < 0, 0L);
    if (tmp___11 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10526/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/marvell/skge.c"),
                           "i" (2797), "i" (12UL));
      ldv_49186: ;
      goto ldv_49186;
    } else {
    }
    tf->dma_lo = (unsigned int )map;
    tf->dma_hi = (unsigned int )(map >> 32ULL);
    e->mapaddr = map;
    e->maplen = skb_frag_size(frag);
    tmp___12 = skb_frag_size(frag);
    tf->control = (tmp___12 | control) | 2164260864U;
    i = i + 1;
    ldv_49188:
    tmp___13 = skb_end_pointer((struct sk_buff const *)skb);
    if ((int )((struct skb_shared_info *)tmp___13)->nr_frags > i) {
      goto ldv_49187;
    } else {
    }
    tf->control = tf->control | 671088640U;
  }
  __asm__ volatile ("sfence": : : "memory");
  td->control = (control | len) | 3238002688U;
  __asm__ volatile ("sfence": : : "memory");
  netdev_sent_queue(dev, skb->len);
  skge_write8((struct skge_hw const *)hw, (int )txqaddr[skge->port] + 1076, 16);
  if ((skge->msg_enable & 256U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "tx queued, slot %td, len %d\n",
                  ((long )e - (long )skge->tx_ring.start) / 40L, skb->len);
  } else {
  }
  skge->tx_ring.to_use = e->next;
  __asm__ volatile ("": : : "memory");
  tmp___16 = skge_avail((struct skge_ring const *)(& skge->tx_ring));
  if ((unsigned int )tmp___16 <= 18U) {
    descriptor.modname = "skge";
    descriptor.function = "skge_xmit_frame";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10526/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/marvell/skge.c";
    descriptor.format = "transmit queue full\n";
    descriptor.lineno = 2825U;
    descriptor.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "transmit queue full\n");
    } else {
    }
    netif_stop_queue(dev);
  } else {
  }
  return (0);
  mapping_unwind:
  e = skge->tx_ring.to_use;
  pci_unmap_single(hw->pdev, e->mapaddr, (size_t )e->maplen, 1);
  goto ldv_49193;
  ldv_49192:
  e = e->next;
  pci_unmap_page(hw->pdev, e->mapaddr, (size_t )e->maplen, 1);
  ldv_49193:
  tmp___17 = i;
  i = i - 1;
  if (tmp___17 > 0) {
    goto ldv_49192;
  } else {
  }
  mapping_error:
  tmp___18 = net_ratelimit();
  if (tmp___18 != 0) {
    dev_warn((struct device const *)(& (hw->pdev)->dev), "%s: tx mapping error\n",
             (char *)(& dev->name));
  } else {
  }
  dev_kfree_skb_any(skb);
  return (0);
}
}
__inline static void skge_tx_unmap(struct pci_dev *pdev , struct skge_element *e ,
                                   u32 control )
{
  {
  if ((control & 1073741824U) != 0U) {
    pci_unmap_single(pdev, e->mapaddr, (size_t )e->maplen, 1);
  } else {
    pci_unmap_page(pdev, e->mapaddr, (size_t )e->maplen, 1);
  }
  return;
}
}
static void skge_tx_clean(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_element *e ;
  struct skge_tx_desc *td ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  e = skge->tx_ring.to_clean;
  goto ldv_49207;
  ldv_49206:
  td = (struct skge_tx_desc *)e->desc;
  skge_tx_unmap((skge->hw)->pdev, e, td->control);
  if ((td->control & 536870912U) != 0U) {
    consume_skb(e->skb);
  } else {
  }
  td->control = 0U;
  e = e->next;
  ldv_49207: ;
  if ((unsigned long )skge->tx_ring.to_use != (unsigned long )e) {
    goto ldv_49206;
  } else {
  }
  netdev_reset_queue(dev);
  skge->tx_ring.to_clean = e;
  return;
}
}
static void skge_tx_timeout(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  if ((skge->msg_enable & 8U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "tx timeout\n");
  } else {
  }
  skge_write8((struct skge_hw const *)skge->hw, (int )txqaddr[skge->port] + 1076,
              32);
  skge_tx_clean(dev);
  netif_wake_queue(dev);
  return;
}
}
static int skge_change_mtu(struct net_device *dev , int new_mtu )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  if (new_mtu <= 59 || new_mtu > 9000) {
    return (-22);
  } else {
  }
  tmp = netif_running((struct net_device const *)dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev->mtu = (unsigned int )new_mtu;
    return (0);
  } else {
  }
  skge_down(dev);
  dev->mtu = (unsigned int )new_mtu;
  err = skge_up(dev);
  if (err != 0) {
    dev_close(dev);
  } else {
  }
  return (err);
}
}
static u8 const pause_mc_addr[6U] = { 1U, 128U, 194U, 0U,
        0U, 1U};
static void genesis_add_filter(u8 *filter , u8 const *addr )
{
  u32 crc ;
  u32 bit ;
  {
  crc = crc32_le(4294967295U, addr, 6UL);
  bit = ~ crc & 63U;
  *(filter + (unsigned long )(bit / 8U)) = (u8 )((int )((signed char )*(filter + (unsigned long )(bit / 8U))) | (int )((signed char )(1 << ((int )bit & 7))));
  return;
}
}
static void genesis_set_multicast(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  struct netdev_hw_addr *ha ;
  u32 mode ;
  u8 filter[8U] ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  mode = xm_read32((struct skge_hw const *)hw, port, 292);
  mode = mode | 32768U;
  if ((dev->flags & 256U) != 0U) {
    mode = mode | 8U;
  } else {
    mode = mode & 4294967287U;
  }
  if ((dev->flags & 512U) != 0U) {
    memset((void *)(& filter), 255, 8UL);
  } else {
    memset((void *)(& filter), 0, 8UL);
    if ((unsigned int )skge->flow_status == 2U || (unsigned int )skge->flow_status == 4U) {
      genesis_add_filter((u8 *)(& filter), (u8 const *)(& pause_mc_addr));
    } else {
    }
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_49239;
    ldv_49238:
    genesis_add_filter((u8 *)(& filter), (u8 const *)(& ha->addr));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_49239: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_49238;
    } else {
    }
  }
  xm_write32((struct skge_hw const *)hw, port, 292, mode);
  xm_outhash((struct skge_hw const *)hw, port, 272, (u8 const *)(& filter));
  return;
}
}
static void yukon_add_filter(u8 *filter , u8 const *addr )
{
  u32 bit ;
  u32 __x ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  tmp = crc32_le(4294967295U, addr, 6UL);
  __x = tmp;
  tmp___0 = __bitrev32(__x);
  bit = tmp___0 & 63U;
  *(filter + (unsigned long )(bit / 8U)) = (u8 )((int )((signed char )*(filter + (unsigned long )(bit / 8U))) | (int )((signed char )(1 << ((int )bit & 7))));
  return;
}
}
static void yukon_set_multicast(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  int port ;
  struct netdev_hw_addr *ha ;
  int rx_pause ;
  u16 reg ;
  u8 filter[8U] ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = skge->port;
  rx_pause = (unsigned int )skge->flow_status == 2U || (unsigned int )skge->flow_status == 4U;
  memset((void *)(& filter), 0, 8UL);
  reg = gma_read16((struct skge_hw const *)hw, port, 12);
  reg = (u16 )((unsigned int )reg | 32768U);
  if ((dev->flags & 256U) != 0U) {
    reg = (unsigned int )reg & 16383U;
  } else
  if ((dev->flags & 512U) != 0U) {
    memset((void *)(& filter), 255, 8UL);
  } else
  if (dev->mc.count == 0 && rx_pause == 0) {
    reg = (unsigned int )reg & 49151U;
  } else {
    reg = (u16 )((unsigned int )reg | 16384U);
    if (rx_pause != 0) {
      yukon_add_filter((u8 *)(& filter), (u8 const *)(& pause_mc_addr));
    } else {
    }
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_49265;
    ldv_49264:
    yukon_add_filter((u8 *)(& filter), (u8 const *)(& ha->addr));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_49265: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_49264;
    } else {
    }
  }
  gma_write16((struct skge_hw const *)hw, port, 52, (int )((u16 )((int )((short )filter[0]) | (int )((short )((int )filter[1] << 8)))));
  gma_write16((struct skge_hw const *)hw, port, 56, (int )((u16 )((int )((short )filter[2]) | (int )((short )((int )filter[3] << 8)))));
  gma_write16((struct skge_hw const *)hw, port, 60, (int )((u16 )((int )((short )filter[4]) | (int )((short )((int )filter[5] << 8)))));
  gma_write16((struct skge_hw const *)hw, port, 64, (int )((u16 )((int )((short )filter[6]) | (int )((short )((int )filter[7] << 8)))));
  gma_write16((struct skge_hw const *)hw, port, 12, (int )reg);
  return;
}
}
__inline static u16 phy_length(struct skge_hw const *hw , u32 status )
{
  bool tmp ;
  {
  tmp = is_genesis(hw);
  if ((int )tmp) {
    return ((u16 )(status >> 18));
  } else {
    return ((u16 )(status >> 16));
  }
}
}
__inline static int bad_phy_status(struct skge_hw const *hw , u32 status )
{
  bool tmp ;
  {
  tmp = is_genesis(hw);
  if ((int )tmp) {
    return ((status & 131074U) != 0U);
  } else {
    return ((status & 4338U) != 0U || (status & 256U) == 0U);
  }
}
}
static void skge_set_multicast(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  tmp___0 = is_genesis((struct skge_hw const *)skge->hw);
  if ((int )tmp___0) {
    genesis_set_multicast(dev);
  } else {
    yukon_set_multicast(dev);
  }
  return;
}
}
static struct sk_buff *skge_rx_get(struct net_device *dev , struct skge_element *e ,
                                   u32 control , u32 status , u16 csum )
{
  struct skge_port *skge ;
  void *tmp ;
  struct sk_buff *skb ;
  u16 len ;
  int tmp___0 ;
  u16 tmp___1 ;
  struct skge_element ee ;
  struct sk_buff *nskb ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  len = (u16 )control;
  if ((skge->msg_enable & 2048U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "rx slot %td status 0x%x len %d\n",
                  ((long )e - (long )skge->rx_ring.start) / 40L, status, (int )len);
  } else {
  }
  if ((unsigned int )len > skge->rx_buf_size) {
    goto error;
  } else {
  }
  if ((control & 1610612736U) != 1610612736U) {
    goto error;
  } else {
  }
  tmp___0 = bad_phy_status((struct skge_hw const *)skge->hw, status);
  if (tmp___0 != 0) {
    goto error;
  } else {
  }
  tmp___1 = phy_length((struct skge_hw const *)skge->hw, status);
  if ((int )tmp___1 != (int )len) {
    goto error;
  } else {
  }
  if ((unsigned int )len <= 127U) {
    skb = netdev_alloc_skb_ip_align(dev, (unsigned int )len);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto resubmit;
    } else {
    }
    pci_dma_sync_single_for_cpu((skge->hw)->pdev, e->mapaddr, (size_t )e->maplen,
                                2);
    skb_copy_from_linear_data((struct sk_buff const *)e->skb, (void *)skb->data,
                              (unsigned int const )len);
    pci_dma_sync_single_for_device((skge->hw)->pdev, e->mapaddr, (size_t )e->maplen,
                                   2);
    skge_rx_reuse(e, skge->rx_buf_size);
  } else {
    nskb = netdev_alloc_skb_ip_align(dev, skge->rx_buf_size);
    if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
      goto resubmit;
    } else {
    }
    ee = *e;
    skb = ee.skb;
    __builtin_prefetch((void const *)skb->data);
    tmp___2 = skge_rx_setup(skge, e, nskb, skge->rx_buf_size);
    if (tmp___2 < 0) {
      consume_skb(nskb);
      goto resubmit;
    } else {
    }
    pci_unmap_single((skge->hw)->pdev, ee.mapaddr, (size_t )ee.maplen, 2);
  }
  skb_put(skb, (unsigned int )len);
  if ((dev->features & 17179869184ULL) != 0ULL) {
    skb->__annonCompField81.csum = (__wsum )csum;
    skb->ip_summed = 2U;
  } else {
  }
  skb->protocol = eth_type_trans(skb, dev);
  return (skb);
  error: ;
  if ((skge->msg_enable & 64U) != 0U) {
    netdev_printk("\017", (struct net_device const *)skge->netdev, "rx err, slot %td control 0x%x status 0x%x\n",
                  ((long )e - (long )skge->rx_ring.start) / 40L, control, status);
  } else {
  }
  tmp___3 = is_genesis((struct skge_hw const *)skge->hw);
  if ((int )tmp___3) {
    if ((status & 24U) != 0U) {
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    } else {
    }
    if ((status & 32U) != 0U) {
      dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
    } else {
    }
    if ((status & 4U) != 0U) {
      dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
    } else {
    }
  } else {
    if ((status & 2064U) != 0U) {
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    } else {
    }
    if ((status & 8U) != 0U) {
      dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
    } else {
    }
    if ((status & 2U) != 0U) {
      dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
    } else {
    }
  }
  resubmit:
  skge_rx_reuse(e, skge->rx_buf_size);
  return ((struct sk_buff *)0);
}
}
static void skge_tx_done(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_ring *ring ;
  struct skge_element *e ;
  unsigned int bytes_compl ;
  unsigned int pkts_compl ;
  u32 control ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  ring = & skge->tx_ring;
  bytes_compl = 0U;
  pkts_compl = 0U;
  skge_write8((struct skge_hw const *)skge->hw, (int )txqaddr[skge->port] + 1076,
              2);
  e = ring->to_clean;
  goto ldv_49304;
  ldv_49303:
  control = ((struct skge_tx_desc const *)e->desc)->control;
  if ((int )control < 0) {
    goto ldv_49302;
  } else {
  }
  skge_tx_unmap((skge->hw)->pdev, e, control);
  if ((control & 536870912U) != 0U) {
    if ((skge->msg_enable & 1024U) != 0U) {
      netdev_printk("\017", (struct net_device const *)skge->netdev, "tx done slot %td\n",
                    ((long )e - (long )skge->tx_ring.start) / 40L);
    } else {
    }
    pkts_compl = pkts_compl + 1U;
    bytes_compl = (e->skb)->len + bytes_compl;
    dev_consume_skb_any(e->skb);
  } else {
  }
  e = e->next;
  ldv_49304: ;
  if ((unsigned long )ring->to_use != (unsigned long )e) {
    goto ldv_49303;
  } else {
  }
  ldv_49302:
  netdev_completed_queue(dev, pkts_compl, bytes_compl);
  skge->tx_ring.to_clean = e;
  __asm__ volatile ("mfence": : : "memory");
  tmp___4 = netif_queue_stopped((struct net_device const *)dev);
  if ((int )tmp___4) {
    tmp___5 = skge_avail((struct skge_ring const *)(& skge->tx_ring));
    if ((unsigned int )tmp___5 > 18U) {
      tmp___6 = 1;
    } else {
      tmp___6 = 0;
    }
  } else {
    tmp___6 = 0;
  }
  tmp___7 = ldv__builtin_expect((long )tmp___6, 0L);
  if (tmp___7 != 0L) {
    netif_tx_lock(dev);
    tmp___0 = netif_queue_stopped((struct net_device const *)dev);
    if ((int )tmp___0) {
      tmp___1 = skge_avail((struct skge_ring const *)(& skge->tx_ring));
      if ((unsigned int )tmp___1 > 18U) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    } else {
      tmp___2 = 0;
    }
    tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
    if (tmp___3 != 0L) {
      netif_wake_queue(dev);
    } else {
    }
    netif_tx_unlock(dev);
  } else {
  }
  return;
}
}
static int skge_poll(struct napi_struct *napi , int to_do )
{
  struct skge_port *skge ;
  struct napi_struct const *__mptr ;
  struct net_device *dev ;
  struct skge_hw *hw ;
  struct skge_ring *ring ;
  struct skge_element *e ;
  int work_done ;
  struct skge_rx_desc *rd ;
  struct sk_buff *skb ;
  u32 control ;
  long tmp ;
  unsigned long flags ;
  {
  __mptr = (struct napi_struct const *)napi;
  skge = (struct skge_port *)__mptr + 0xfffffffffffffff0UL;
  dev = skge->netdev;
  hw = skge->hw;
  ring = & skge->rx_ring;
  work_done = 0;
  skge_tx_done(dev);
  skge_write8((struct skge_hw const *)hw, (int )rxqaddr[skge->port] + 1076, 2);
  e = ring->to_clean;
  goto ldv_49322;
  ldv_49321:
  rd = (struct skge_rx_desc *)e->desc;
  __asm__ volatile ("lfence": : : "memory");
  control = rd->control;
  if ((int )control < 0) {
    goto ldv_49320;
  } else {
  }
  skb = skge_rx_get(dev, e, control, rd->status, (int )rd->csum2);
  tmp = ldv__builtin_expect((unsigned long )skb != (unsigned long )((struct sk_buff *)0),
                         1L);
  if (tmp != 0L) {
    napi_gro_receive(napi, skb);
    work_done = work_done + 1;
  } else {
  }
  e = e->next;
  ldv_49322:
  __builtin_prefetch((void const *)e->next);
  if (work_done < to_do) {
    goto ldv_49321;
  } else {
  }
  ldv_49320:
  ring->to_clean = e;
  __asm__ volatile ("sfence": : : "memory");
  skge_write8((struct skge_hw const *)hw, (int )rxqaddr[skge->port] + 1076, 16);
  if (work_done < to_do) {
    napi_gro_flush(napi, 0);
    ldv_spin_lock();
    __napi_complete(napi);
    hw->intr_mask = hw->intr_mask | (u32 )napimask[skge->port];
    skge_write32((struct skge_hw const *)hw, 12, hw->intr_mask);
    skge_read32((struct skge_hw const *)hw, 12);
    spin_unlock_irqrestore(& hw->hw_lock, flags);
  } else {
  }
  return (work_done);
}
}
static void skge_mac_parity(struct skge_hw *hw , int port )
{
  struct net_device *dev ;
  bool tmp ;
  {
  dev = hw->dev[port];
  dev->stats.tx_heartbeat_errors = dev->stats.tx_heartbeat_errors + 1UL;
  tmp = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp) {
    skge_write16((struct skge_hw const *)hw, (port << 7) + 3352, 32768);
  } else {
    skge_write8((struct skge_hw const *)hw, (port << 7) + 3400, (unsigned int )hw->chip_id == 176U && (unsigned int )hw->chip_rev == 0U ? 32 : 16);
  }
  return;
}
}
static void skge_mac_intr(struct skge_hw *hw , int port )
{
  bool tmp ;
  {
  tmp = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp) {
    genesis_mac_intr(hw, port);
  } else {
    yukon_mac_intr(hw, port);
  }
  return;
}
}
static void skge_error_irq(struct skge_hw *hw )
{
  struct pci_dev *pdev ;
  u32 hwstatus ;
  u32 tmp ;
  bool tmp___0 ;
  u16 pci_status ;
  u16 pci_cmd ;
  {
  pdev = hw->pdev;
  tmp = skge_read32((struct skge_hw const *)hw, 16);
  hwstatus = tmp;
  tmp___0 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___0) {
    if ((hwstatus & 640U) != 0U) {
      skge_write16((struct skge_hw const *)hw, 3096, 1);
    } else {
    }
    if ((hwstatus & 320U) != 0U) {
      skge_write16((struct skge_hw const *)hw, 3100, 1);
    } else {
    }
  } else
  if ((hwstatus & 8192U) != 0U) {
    skge_write8((struct skge_hw const *)hw, 3608, 1);
  } else {
  }
  if ((hwstatus & 32U) != 0U) {
    dev_err((struct device const *)(& pdev->dev), "Ram read data parity error\n");
    skge_write16((struct skge_hw const *)hw, 416, 512);
  } else {
  }
  if ((hwstatus & 16U) != 0U) {
    dev_err((struct device const *)(& pdev->dev), "Ram write data parity error\n");
    skge_write16((struct skge_hw const *)hw, 416, 256);
  } else {
  }
  if ((hwstatus & 8U) != 0U) {
    skge_mac_parity(hw, 0);
  } else {
  }
  if ((hwstatus & 4U) != 0U) {
    skge_mac_parity(hw, 1);
  } else {
  }
  if ((hwstatus & 2U) != 0U) {
    dev_err((struct device const *)(& pdev->dev), "%s: receive queue parity error\n",
            (char *)(& (hw->dev[0])->name));
    skge_write32((struct skge_hw const *)hw, 96, 8U);
  } else {
  }
  if ((int )hwstatus & 1) {
    dev_err((struct device const *)(& pdev->dev), "%s: receive queue parity error\n",
            (char *)(& (hw->dev[1])->name));
    skge_write32((struct skge_hw const *)hw, 100, 8U);
  } else {
  }
  if ((hwstatus & 3072U) != 0U) {
    pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_cmd);
    pci_read_config_word((struct pci_dev const *)pdev, 6, & pci_status);
    dev_err((struct device const *)(& pdev->dev), "PCI error cmd=%#x status=%#x\n",
            (int )pci_cmd, (int )pci_status);
    pci_status = (unsigned int )pci_status & 61696U;
    skge_write8((struct skge_hw const *)hw, 344, 2);
    pci_write_config_word((struct pci_dev const *)pdev, 4, (int )((unsigned int )pci_cmd | 320U));
    pci_write_config_word((struct pci_dev const *)pdev, 6, (int )pci_status);
    skge_write8((struct skge_hw const *)hw, 344, 1);
    hwstatus = skge_read32((struct skge_hw const *)hw, 16);
    if ((hwstatus & 1024U) != 0U) {
      dev_warn((struct device const *)(& (hw->pdev)->dev), "unable to clear error (so ignoring them)\n");
      hw->intr_mask = hw->intr_mask & 2147483647U;
    } else {
    }
  } else {
  }
  return;
}
}
static void skge_extirq(unsigned long arg )
{
  struct skge_hw *hw ;
  int port ;
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  hw = (struct skge_hw *)arg;
  port = 0;
  goto ldv_49348;
  ldv_49347:
  dev = hw->dev[port];
  tmp___2 = netif_running((struct net_device const *)dev);
  if ((int )tmp___2) {
    tmp = netdev_priv((struct net_device const *)dev);
    skge = (struct skge_port *)tmp;
    spin_lock(& hw->phy_lock);
    tmp___0 = is_genesis((struct skge_hw const *)hw);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      yukon_phy_intr(skge);
    } else
    if ((unsigned int )hw->phy_type == 1U) {
      bcom_phy_intr(skge);
    } else {
    }
    spin_unlock(& hw->phy_lock);
  } else {
  }
  port = port + 1;
  ldv_49348: ;
  if ((int )hw->ports > port) {
    goto ldv_49347;
  } else {
  }
  spin_lock_irq(& hw->hw_lock);
  hw->intr_mask = hw->intr_mask | 8388608U;
  skge_write32((struct skge_hw const *)hw, 12, hw->intr_mask);
  skge_read32((struct skge_hw const *)hw, 12);
  spin_unlock_irq(& hw->hw_lock);
  return;
}
}
static irqreturn_t skge_intr(int irq , void *dev_id )
{
  struct skge_hw *hw ;
  u32 status ;
  int handled ;
  struct skge_port *skge ;
  void *tmp ;
  struct skge_port *skge___0 ;
  void *tmp___0 ;
  {
  hw = (struct skge_hw *)dev_id;
  handled = 0;
  spin_lock(& hw->hw_lock);
  status = skge_read32((struct skge_hw const *)hw, 24);
  if (status == 0U || status == 4294967295U) {
    goto out;
  } else {
  }
  handled = 1;
  status = hw->intr_mask & status;
  if ((status & 8388608U) != 0U) {
    hw->intr_mask = hw->intr_mask & 4286578687U;
    tasklet_schedule(& hw->phy_task);
  } else {
  }
  if ((status & 65664U) != 0U) {
    tmp = netdev_priv((struct net_device const *)hw->dev[0]);
    skge = (struct skge_port *)tmp;
    hw->intr_mask = hw->intr_mask & 4294901631U;
    napi_schedule(& skge->napi);
  } else {
  }
  if ((status & 134217728U) != 0U) {
    skge_write16((struct skge_hw const *)hw, 496, 4096);
  } else {
  }
  if ((status & 536870912U) != 0U) {
    (hw->dev[0])->stats.rx_over_errors = (hw->dev[0])->stats.rx_over_errors + 1UL;
    skge_write16((struct skge_hw const *)hw, 496, 1024);
  } else {
  }
  if ((status & 2097152U) != 0U) {
    skge_mac_intr(hw, 0);
  } else {
  }
  if ((unsigned long )hw->dev[1] != (unsigned long )((struct net_device *)0)) {
    tmp___0 = netdev_priv((struct net_device const *)hw->dev[1]);
    skge___0 = (struct skge_port *)tmp___0;
    if ((status & 8194U) != 0U) {
      hw->intr_mask = hw->intr_mask & 4294959101U;
      napi_schedule(& skge___0->napi);
    } else {
    }
    if ((status & 268435456U) != 0U) {
      (hw->dev[1])->stats.rx_over_errors = (hw->dev[1])->stats.rx_over_errors + 1UL;
      skge_write16((struct skge_hw const *)hw, 496, 2048);
    } else {
    }
    if ((status & 67108864U) != 0U) {
      skge_write16((struct skge_hw const *)hw, 496, 8192);
    } else {
    }
    if ((status & 524288U) != 0U) {
      skge_mac_intr(hw, 1);
    } else {
    }
  } else {
  }
  if ((int )status < 0) {
    skge_error_irq(hw);
  } else {
  }
  out:
  skge_write32((struct skge_hw const *)hw, 12, hw->intr_mask);
  skge_read32((struct skge_hw const *)hw, 12);
  spin_unlock(& hw->hw_lock);
  return (handled != 0);
}
}
static void skge_netpoll(struct net_device *dev )
{
  struct skge_port *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  disable_irq((unsigned int )dev->irq);
  skge_intr(dev->irq, (void *)skge->hw);
  enable_irq((unsigned int )dev->irq);
  return;
}
}
static int skge_set_mac_address(struct net_device *dev , void *p )
{
  struct skge_port *skge ;
  void *tmp ;
  struct skge_hw *hw ;
  unsigned int port ;
  struct sockaddr const *addr ;
  u16 ctrl ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp;
  hw = skge->hw;
  port = (unsigned int )skge->port;
  addr = (struct sockaddr const *)p;
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
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), 6UL);
  tmp___3 = netif_running((struct net_device const *)dev);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    memcpy_toio((void volatile *)(hw->regs + ((unsigned long )(port * 8U) + 256UL)),
                (void const *)dev->dev_addr, 6UL);
    memcpy_toio((void volatile *)(hw->regs + ((unsigned long )(port * 8U) + 264UL)),
                (void const *)dev->dev_addr, 6UL);
  } else {
    spin_lock_bh(& hw->phy_lock);
    ctrl = gma_read16((struct skge_hw const *)hw, (int )port, 4);
    gma_write16((struct skge_hw const *)hw, (int )port, 4, (int )ctrl & 63487);
    memcpy_toio((void volatile *)(hw->regs + ((unsigned long )(port * 8U) + 256UL)),
                (void const *)dev->dev_addr, 6UL);
    memcpy_toio((void volatile *)(hw->regs + ((unsigned long )(port * 8U) + 264UL)),
                (void const *)dev->dev_addr, 6UL);
    tmp___2 = is_genesis((struct skge_hw const *)hw);
    if ((int )tmp___2) {
      xm_outaddr((struct skge_hw const *)hw, (int )port, 264, (u8 const *)dev->dev_addr);
    } else {
      gma_set_addr(hw, (int )port, 28, (u8 const *)dev->dev_addr);
      gma_set_addr(hw, (int )port, 40, (u8 const *)dev->dev_addr);
    }
    gma_write16((struct skge_hw const *)hw, (int )port, 4, (int )ctrl);
    spin_unlock_bh(& hw->phy_lock);
  }
  return (0);
}
}
static struct __anonstruct_skge_chips_341 const skge_chips[4U] = { {10U, "Genesis"},
        {176U, "Yukon"},
        {177U, "Yukon-Lite"},
        {178U, "Yukon-LP"}};
static char const *skge_board_name(struct skge_hw const *hw )
{
  int i ;
  char buf[16U] ;
  {
  i = 0;
  goto ldv_49385;
  ldv_49384: ;
  if ((int )((unsigned char )skge_chips[i].id) == (int )((unsigned char )hw->chip_id)) {
    return ((char const *)skge_chips[i].name);
  } else {
  }
  i = i + 1;
  ldv_49385: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_49384;
  } else {
  }
  snprintf((char *)(& buf), 16UL, "chipid 0x%x", (int )hw->chip_id);
  return ((char const *)(& buf));
}
}
static int skge_reset(struct skge_hw *hw )
{
  u32 reg ;
  u16 ctst ;
  u16 pci_status ;
  u8 t8 ;
  u8 mac_cfg ;
  u8 pmd_type ;
  int i ;
  u8 tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  bool tmp___5 ;
  u32 tmp___6 ;
  bool tmp___7 ;
  {
  ctst = skge_read16((struct skge_hw const *)hw, 4);
  skge_write8((struct skge_hw const *)hw, 4, 1);
  skge_write8((struct skge_hw const *)hw, 4, 2);
  skge_write8((struct skge_hw const *)hw, 344, 2);
  skge_write8((struct skge_hw const *)hw, 345, 0);
  pci_read_config_word((struct pci_dev const *)hw->pdev, 6, & pci_status);
  pci_write_config_word((struct pci_dev const *)hw->pdev, 6, (int )((unsigned int )pci_status | 61696U));
  skge_write8((struct skge_hw const *)hw, 344, 1);
  skge_write8((struct skge_hw const *)hw, 4, 8);
  skge_write16((struct skge_hw const *)hw, 4, (int )ctst & 14336);
  hw->chip_id = skge_read8((struct skge_hw const *)hw, 283);
  tmp = skge_read8((struct skge_hw const *)hw, 285);
  hw->phy_type = (unsigned int )tmp & 15U;
  pmd_type = skge_read8((struct skge_hw const *)hw, 281);
  hw->copper = (u8 )((unsigned int )pmd_type == 84U || (unsigned int )pmd_type == 49U);
  switch ((int )hw->chip_id) {
  case 10: ;
  switch ((int )hw->phy_type) {
  case 0:
  hw->phy_addr = 0U;
  goto ldv_49399;
  case 1:
  hw->phy_addr = 256U;
  goto ldv_49399;
  default:
  dev_err((struct device const *)(& (hw->pdev)->dev), "unsupported phy type 0x%x\n",
          (int )hw->phy_type);
  return (-95);
  }
  ldv_49399: ;
  goto ldv_49402;
  case 176: ;
  case 177: ;
  case 178: ;
  if ((unsigned int )hw->phy_type <= 3U && (unsigned int )pmd_type != 83U) {
    hw->copper = 1U;
  } else {
  }
  hw->phy_addr = 0U;
  goto ldv_49402;
  default:
  dev_err((struct device const *)(& (hw->pdev)->dev), "unsupported chip type 0x%x\n",
          (int )hw->chip_id);
  return (-95);
  }
  ldv_49402:
  mac_cfg = skge_read8((struct skge_hw const *)hw, 282);
  hw->ports = (int )mac_cfg & 1 ? 1U : 2U;
  hw->chip_rev = (int )mac_cfg >> 4;
  t8 = skge_read8((struct skge_hw const *)hw, 284);
  tmp___0 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___0) {
    if ((unsigned int )t8 == 3U) {
      hw->ram_size = 1048576U;
      hw->ram_offset = 524288U;
    } else {
      hw->ram_size = (u32 )((int )t8 * 512);
    }
  } else
  if ((unsigned int )t8 == 0U) {
    hw->ram_size = 131072U;
  } else {
    hw->ram_size = (u32 )((int )t8 * 4096);
  }
  hw->intr_mask = 2147483648U;
  tmp___1 = is_genesis((struct skge_hw const *)hw);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2 || (unsigned int )hw->phy_type != 0U) {
    hw->intr_mask = hw->intr_mask | 8388608U;
  } else {
  }
  tmp___5 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___5) {
    genesis_init(hw);
  } else {
    skge_write8((struct skge_hw const *)hw, 7, 166);
    tmp___3 = skge_read32((struct skge_hw const *)hw, 8);
    if ((int )tmp___3 < 0) {
      tmp___4 = skge_read32((struct skge_hw const *)hw, 16);
      if ((tmp___4 & 4096U) != 0U) {
        dev_warn((struct device const *)(& (hw->pdev)->dev), "stuck hardware sensor bit\n");
        hw->intr_mask = hw->intr_mask & 2147483647U;
      } else {
      }
    } else {
    }
    skge_write8((struct skge_hw const *)hw, 344, 2);
    pci_read_config_dword((struct pci_dev const *)hw->pdev, 64, & reg);
    reg = reg & 4160749567U;
    pci_write_config_dword((struct pci_dev const *)hw->pdev, 64, reg);
    skge_write8((struct skge_hw const *)hw, 344, 1);
    i = 0;
    goto ldv_49408;
    ldv_49407:
    skge_write16((struct skge_hw const *)hw, (i << 7) + 3856, 1);
    skge_write16((struct skge_hw const *)hw, (i << 7) + 3856, 2);
    i = i + 1;
    ldv_49408: ;
    if ((int )hw->ports > i) {
      goto ldv_49407;
    } else {
    }
  }
  skge_write8((struct skge_hw const *)hw, 312, 2);
  skge_write8((struct skge_hw const *)hw, 312, 1);
  skge_write8((struct skge_hw const *)hw, 6, 2);
  i = 0;
  goto ldv_49411;
  ldv_49410:
  skge_write8((struct skge_hw const *)hw, (i << 7) + 528, 2);
  i = i + 1;
  ldv_49411: ;
  if ((int )hw->ports > i) {
    goto ldv_49410;
  } else {
  }
  skge_write16((struct skge_hw const *)hw, 416, 2);
  skge_write8((struct skge_hw const *)hw, 400, 36);
  skge_write8((struct skge_hw const *)hw, 401, 36);
  skge_write8((struct skge_hw const *)hw, 402, 36);
  skge_write8((struct skge_hw const *)hw, 403, 36);
  skge_write8((struct skge_hw const *)hw, 404, 36);
  skge_write8((struct skge_hw const *)hw, 405, 36);
  skge_write8((struct skge_hw const *)hw, 406, 36);
  skge_write8((struct skge_hw const *)hw, 407, 36);
  skge_write8((struct skge_hw const *)hw, 408, 36);
  skge_write8((struct skge_hw const *)hw, 409, 36);
  skge_write8((struct skge_hw const *)hw, 410, 36);
  skge_write8((struct skge_hw const *)hw, 411, 36);
  skge_write32((struct skge_hw const *)hw, 20, 3135U);
  skge_write32((struct skge_hw const *)hw, 332, 130U);
  tmp___6 = skge_usecs2clk((struct skge_hw const *)hw, 100U);
  skge_write32((struct skge_hw const *)hw, 320, tmp___6);
  skge_write32((struct skge_hw const *)hw, 328, 4U);
  skge_write32((struct skge_hw const *)hw, 12, 0U);
  i = 0;
  goto ldv_49414;
  ldv_49413:
  tmp___7 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___7) {
    genesis_reset(hw, i);
  } else {
    yukon_reset(hw, i);
  }
  i = i + 1;
  ldv_49414: ;
  if ((int )hw->ports > i) {
    goto ldv_49413;
  } else {
  }
  return (0);
}
}
static struct dentry *skge_debug ;
static int skge_debug_show(struct seq_file *seq , void *v )
{
  struct net_device *dev ;
  struct skge_port const *skge ;
  void *tmp ;
  struct skge_hw const *hw ;
  struct skge_element const *e ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  struct skge_tx_desc const *t ;
  struct skge_rx_desc const *r ;
  {
  dev = (struct net_device *)seq->private;
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port const *)tmp;
  hw = (struct skge_hw const *)skge->hw;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-100);
  } else {
  }
  tmp___2 = skge_read32(hw, 12);
  tmp___3 = skge_read32(hw, 8);
  seq_printf(seq, "IRQ src=%x mask=%x\n", tmp___3, tmp___2);
  tmp___4 = skge_avail(& skge->tx_ring);
  seq_printf(seq, "Tx Ring: (%d)\n", tmp___4);
  e = (struct skge_element const *)skge->tx_ring.to_clean;
  goto ldv_49427;
  ldv_49426:
  t = (struct skge_tx_desc const *)e->desc;
  seq_printf(seq, "%#x dma=%#x%08x %#x csum=%#x/%x/%x\n", t->control, t->dma_hi, t->dma_lo,
             t->status, t->csum_offs, (int )t->csum_write, (int )t->csum_start);
  e = (struct skge_element const *)e->next;
  ldv_49427: ;
  if ((unsigned long )((struct skge_element const *)skge->tx_ring.to_use) != (unsigned long )e) {
    goto ldv_49426;
  } else {
  }
  seq_printf(seq, "\nRx Ring:\n");
  e = (struct skge_element const *)skge->rx_ring.to_clean;
  ldv_49431:
  r = (struct skge_rx_desc const *)e->desc;
  if ((int )r->control < 0) {
    goto ldv_49430;
  } else {
  }
  seq_printf(seq, "%#x dma=%#x%08x %#x %#x csum=%#x/%x\n", r->control, r->dma_hi,
             r->dma_lo, r->status, r->timestamp, (int )r->csum1, (int )r->csum1_start);
  e = (struct skge_element const *)e->next;
  goto ldv_49431;
  ldv_49430: ;
  return (0);
}
}
static int skge_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & skge_debug_show, inode->i_private);
  return (tmp);
}
}
static struct file_operations const skge_debug_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & skge_debug_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int skge_device_event(struct notifier_block *unused , unsigned long event ,
                             void *ptr )
{
  struct net_device *dev ;
  struct net_device *tmp ;
  struct skge_port *skge ;
  struct dentry *d ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_notifier_info_to_dev((struct netdev_notifier_info const *)ptr);
  dev = tmp;
  if ((unsigned long )((int (*)(struct net_device * ))(dev->netdev_ops)->ndo_open) != (unsigned long )(& skge_up) || (unsigned long )skge_debug == (unsigned long )((struct dentry *)0)) {
    goto done;
  } else {
  }
  tmp___0 = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp___0;
  switch (event) {
  case 10UL: ;
  if ((unsigned long )skge->debugfs != (unsigned long )((struct dentry *)0)) {
    d = debugfs_rename(skge_debug, skge->debugfs, skge_debug, (char const *)(& dev->name));
    if ((unsigned long )d != (unsigned long )((struct dentry *)0)) {
      skge->debugfs = d;
    } else {
      netdev_info((struct net_device const *)dev, "rename failed\n");
      debugfs_remove(skge->debugfs);
    }
  } else {
  }
  goto ldv_49447;
  case 9UL: ;
  if ((unsigned long )skge->debugfs != (unsigned long )((struct dentry *)0)) {
    debugfs_remove(skge->debugfs);
    skge->debugfs = (struct dentry *)0;
  } else {
  }
  goto ldv_49447;
  case 1UL:
  d = debugfs_create_file((char const *)(& dev->name), 292, skge_debug, (void *)dev,
                          & skge_debug_fops);
  if ((unsigned long )d == (unsigned long )((struct dentry *)0)) {
    netdev_info((struct net_device const *)dev, "debugfs create failed\n");
  } else {
    tmp___1 = IS_ERR((void const *)d);
    if ((int )tmp___1) {
      netdev_info((struct net_device const *)dev, "debugfs create failed\n");
    } else {
      skge->debugfs = d;
    }
  }
  goto ldv_49447;
  }
  ldv_49447: ;
  done: ;
  return (0);
}
}
static struct notifier_block skge_notifier = {& skge_device_event, 0, 0};
static void skge_debug_init(void)
{
  struct dentry *ent ;
  bool tmp ;
  {
  ent = debugfs_create_dir("skge", (struct dentry *)0);
  if ((unsigned long )ent == (unsigned long )((struct dentry *)0)) {
    printk("\016skge: debugfs create directory failed\n");
    return;
  } else {
    tmp = IS_ERR((void const *)ent);
    if ((int )tmp) {
      printk("\016skge: debugfs create directory failed\n");
      return;
    } else {
    }
  }
  skge_debug = ent;
  register_netdevice_notifier(& skge_notifier);
  return;
}
}
static void skge_debug_cleanup(void)
{
  {
  if ((unsigned long )skge_debug != (unsigned long )((struct dentry *)0)) {
    unregister_netdevice_notifier(& skge_notifier);
    debugfs_remove(skge_debug);
    skge_debug = (struct dentry *)0;
  } else {
  }
  return;
}
}
static struct net_device_ops const skge_netdev_ops =
     {0, 0, & skge_up, & skge_down, & skge_xmit_frame, 0, 0, & skge_set_multicast, & skge_set_mac_address,
    & eth_validate_addr, & skge_ioctl, 0, & skge_change_mtu, 0, & skge_tx_timeout,
    0, & skge_get_stats, 0, 0, & skge_netpoll, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct net_device *skge_devinit(struct skge_hw *hw , int port , int highmem )
{
  struct skge_port *skge ;
  struct net_device *dev ;
  struct net_device *tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  tmp = alloc_etherdev_mqs(640, 1U, 1U);
  dev = tmp;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return ((struct net_device *)0);
  } else {
  }
  dev->dev.parent = & (hw->pdev)->dev;
  dev->netdev_ops = & skge_netdev_ops;
  dev->ethtool_ops = & skge_ethtool_ops;
  dev->watchdog_timeo = 1250;
  dev->irq = (int )(hw->pdev)->irq;
  if (highmem != 0) {
    dev->features = dev->features | 32ULL;
  } else {
  }
  tmp___0 = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp___0;
  netif_napi_add(dev, & skge->napi, & skge_poll, 64);
  skge->netdev = dev;
  skge->hw = hw;
  skge->msg_enable = netif_msg_init(debug, (int )default_msg);
  skge->tx_ring.count = 128UL;
  skge->rx_ring.count = 512UL;
  skge->autoneg = 1U;
  skge->flow_control = 4;
  skge->duplex = 255U;
  skge->speed = 65535U;
  skge->advertising = skge_supported_modes((struct skge_hw const *)hw);
  tmp___2 = device_can_wakeup(& (hw->pdev)->dev);
  if ((int )tmp___2) {
    tmp___1 = wol_supported((struct skge_hw const *)hw);
    skge->wol = (unsigned int )((u8 )tmp___1) & 32U;
    device_set_wakeup_enable(& (hw->pdev)->dev, (unsigned int )skge->wol != 0U);
  } else {
  }
  hw->dev[port] = dev;
  skge->port = port;
  tmp___3 = is_genesis((struct skge_hw const *)hw);
  if ((int )tmp___3) {
    reg_timer_3(& skge->link_timer, & xm_link_timer, (unsigned long )skge);
  } else {
    dev->hw_features = 17179869187ULL;
    dev->features = dev->features | dev->hw_features;
  }
  memcpy_fromio((void *)dev->dev_addr, (void const volatile *)(hw->regs + ((unsigned long )(port * 8) + 256UL)),
                6UL);
  return (dev);
}
}
static void skge_show_addr(struct net_device *dev )
{
  struct skge_port const *skge ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port const *)tmp;
  if (((unsigned int )skge->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)skge->netdev, "addr %pM\n", dev->dev_addr);
  } else {
  }
  return;
}
}
static int only_32bit_dma ;
static int skge_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *dev ;
  struct net_device *dev1 ;
  struct skge_hw *hw ;
  int err ;
  int using_dac ;
  int tmp ;
  size_t tmp___0 ;
  char const *tmp___1 ;
  size_t tmp___2 ;
  void *tmp___3 ;
  char const *tmp___4 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  using_dac = 0;
  err = pci_enable_device(pdev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot enable PCI device\n");
    goto err_out;
  } else {
  }
  err = pci_request_regions(pdev, "skge");
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot obtain PCI resources\n");
    goto err_out_disable_pdev;
  } else {
  }
  pci_set_master(pdev);
  if (only_32bit_dma == 0) {
    tmp = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp == 0) {
      using_dac = 1;
      err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    } else {
      goto _L;
    }
  } else {
    _L:
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err == 0) {
      using_dac = 0;
      err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    } else {
    }
  }
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "no usable DMA configuration\n");
    goto err_out_free_regions;
  } else {
  }
  err = -12;
  tmp___0 = strlen("skge@pci:");
  tmp___1 = pci_name((struct pci_dev const *)pdev);
  tmp___2 = strlen(tmp___1);
  tmp___3 = kzalloc((tmp___0 + tmp___2) + 249UL, 208U);
  hw = (struct skge_hw *)tmp___3;
  if ((unsigned long )hw == (unsigned long )((struct skge_hw *)0)) {
    goto err_out_free_regions;
  } else {
  }
  tmp___4 = pci_name((struct pci_dev const *)pdev);
  sprintf((char *)(& hw->irq_name), "skge@pci:%s", tmp___4);
  hw->pdev = pdev;
  spinlock_check(& hw->hw_lock);
  __raw_spin_lock_init(& hw->hw_lock.__annonCompField18.rlock, "&(&hw->hw_lock)->rlock",
                       & __key);
  spinlock_check(& hw->phy_lock);
  __raw_spin_lock_init(& hw->phy_lock.__annonCompField18.rlock, "&(&hw->phy_lock)->rlock",
                       & __key___0);
  tasklet_init(& hw->phy_task, & skge_extirq, (unsigned long )hw);
  hw->regs = ioremap_nocache(pdev->resource[0].start, 16384UL);
  if ((unsigned long )hw->regs == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "cannot map device registers\n");
    goto err_out_free_hw;
  } else {
  }
  err = skge_reset(hw);
  if (err != 0) {
    goto err_out_iounmap;
  } else {
  }
  tmp___5 = skge_board_name((struct skge_hw const *)hw);
  printk("\016skge: %s addr 0x%llx irq %d chip %s rev %d\n", (char *)"1.14", pdev->resource[0].start,
         pdev->irq, tmp___5, (int )hw->chip_rev);
  dev = skge_devinit(hw, 0, using_dac);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_out_led_off;
  } else {
  }
  tmp___6 = is_valid_ether_addr((u8 const *)dev->dev_addr);
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    dev_warn((struct device const *)(& pdev->dev), "bad (zero?) ethernet address in rom\n");
  } else {
  }
  err = ldv_register_netdev_44(dev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot register net device\n");
    goto err_out_free_netdev;
  } else {
  }
  skge_show_addr(dev);
  if ((unsigned int )hw->ports > 1U) {
    dev1 = skge_devinit(hw, 1, using_dac);
    if ((unsigned long )dev1 == (unsigned long )((struct net_device *)0)) {
      err = -12;
      goto err_out_unregister;
    } else {
    }
    err = ldv_register_netdev_45(dev1);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "cannot register second net device\n");
      goto err_out_free_dev1;
    } else {
    }
    err = ldv_request_irq_46(pdev->irq, & skge_intr, 128UL, (char const *)(& hw->irq_name),
                             (void *)hw);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "cannot assign irq %d\n", pdev->irq);
      goto err_out_unregister_dev1;
    } else {
    }
    skge_show_addr(dev1);
  } else {
  }
  pci_set_drvdata(pdev, (void *)hw);
  return (0);
  err_out_unregister_dev1:
  ldv_unregister_netdev_47(dev1);
  err_out_free_dev1:
  ldv_free_netdev_48(dev1);
  err_out_unregister:
  ldv_unregister_netdev_49(dev);
  err_out_free_netdev:
  ldv_free_netdev_50(dev);
  err_out_led_off:
  skge_write16((struct skge_hw const *)hw, 6, 1);
  err_out_iounmap:
  iounmap((void volatile *)hw->regs);
  err_out_free_hw:
  kfree((void const *)hw);
  err_out_free_regions:
  pci_release_regions(pdev);
  err_out_disable_pdev:
  pci_disable_device(pdev);
  err_out: ;
  return (err);
}
}
static void skge_remove(struct pci_dev *pdev )
{
  struct skge_hw *hw ;
  void *tmp ;
  struct net_device *dev0 ;
  struct net_device *dev1 ;
  {
  tmp = pci_get_drvdata(pdev);
  hw = (struct skge_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct skge_hw *)0)) {
    return;
  } else {
  }
  dev1 = hw->dev[1];
  if ((unsigned long )dev1 != (unsigned long )((struct net_device *)0)) {
    ldv_unregister_netdev_51(dev1);
  } else {
  }
  dev0 = hw->dev[0];
  ldv_unregister_netdev_52(dev0);
  tasklet_kill(& hw->phy_task);
  spin_lock_irq(& hw->hw_lock);
  hw->intr_mask = 0U;
  if ((unsigned int )hw->ports > 1U) {
    skge_write32((struct skge_hw const *)hw, 12, 0U);
    skge_read32((struct skge_hw const *)hw, 12);
    ldv_free_irq_53(pdev->irq, (void *)hw);
  } else {
  }
  spin_unlock_irq(& hw->hw_lock);
  skge_write16((struct skge_hw const *)hw, 6, 1);
  skge_write8((struct skge_hw const *)hw, 4, 1);
  if ((unsigned int )hw->ports > 1U) {
    ldv_free_irq_54(pdev->irq, (void *)hw);
  } else {
  }
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  if ((unsigned long )dev1 != (unsigned long )((struct net_device *)0)) {
    ldv_free_netdev_55(dev1);
  } else {
  }
  ldv_free_netdev_56(dev0);
  iounmap((void volatile *)hw->regs);
  kfree((void const *)hw);
  return;
}
}
static int skge_suspend(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct skge_hw *hw ;
  void *tmp ;
  int i ;
  struct net_device *dev___0 ;
  struct skge_port *skge ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  hw = (struct skge_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct skge_hw *)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_49509;
  ldv_49508:
  dev___0 = hw->dev[i];
  tmp___0 = netdev_priv((struct net_device const *)dev___0);
  skge = (struct skge_port *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev___0);
  if ((int )tmp___1) {
    skge_down(dev___0);
  } else {
  }
  if ((unsigned int )skge->wol != 0U) {
    skge_wol_init(skge);
  } else {
  }
  i = i + 1;
  ldv_49509: ;
  if ((int )hw->ports > i) {
    goto ldv_49508;
  } else {
  }
  skge_write32((struct skge_hw const *)hw, 12, 0U);
  return (0);
}
}
static int skge_resume(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct skge_hw *hw ;
  void *tmp ;
  int i ;
  int err ;
  struct net_device *dev___0 ;
  bool tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  hw = (struct skge_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct skge_hw *)0)) {
    return (0);
  } else {
  }
  err = skge_reset(hw);
  if (err != 0) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_49523;
  ldv_49522:
  dev___0 = hw->dev[i];
  tmp___0 = netif_running((struct net_device const *)dev___0);
  if ((int )tmp___0) {
    err = skge_up(dev___0);
    if (err != 0) {
      netdev_err((struct net_device const *)dev___0, "could not up: %d\n", err);
      dev_close(dev___0);
      goto out;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_49523: ;
  if ((int )hw->ports > i) {
    goto ldv_49522;
  } else {
  }
  out: ;
  return (err);
}
}
static struct dev_pm_ops const skge_pm_ops =
     {0, 0, & skge_suspend, & skge_resume, & skge_suspend, & skge_resume, & skge_suspend,
    & skge_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void skge_shutdown(struct pci_dev *pdev )
{
  struct skge_hw *hw ;
  void *tmp ;
  int i ;
  struct net_device *dev ;
  struct skge_port *skge ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  hw = (struct skge_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct skge_hw *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_49534;
  ldv_49533:
  dev = hw->dev[i];
  tmp___0 = netdev_priv((struct net_device const *)dev);
  skge = (struct skge_port *)tmp___0;
  if ((unsigned int )skge->wol != 0U) {
    skge_wol_init(skge);
  } else {
  }
  i = i + 1;
  ldv_49534: ;
  if ((int )hw->ports > i) {
    goto ldv_49533;
  } else {
  }
  tmp___1 = device_may_wakeup(& pdev->dev);
  pci_wake_from_d3(pdev, (int )tmp___1);
  pci_set_power_state(pdev, 3);
  return;
}
}
static struct pci_driver skge_driver =
     {{0, 0}, "skge", (struct pci_device_id const *)(& skge_id_table), & skge_probe,
    & skge_remove, 0, 0, 0, 0, & skge_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0,
                                                       0, 0, 0, 0, 0, 0, 0, & skge_pm_ops,
                                                       0}, {{{{{{0}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                            {0, 0}}};
static struct dmi_system_id skge_32bit_dma_boards[4U] = { {0, "Gigabyte nForce boards", {{9U, (unsigned char)0, {'G', 'i', 'g', 'a', 'b',
                                                            'y', 't', 'e', ' ', 'T',
                                                            'e', 'c', 'h', 'n', 'o',
                                                            'l', 'o', 'g', 'y', ' ',
                                                            'C', 'o', '\000'}}, {10U,
                                                                                 (unsigned char)0,
                                                                                 {'n',
                                                                                  'F',
                                                                                  'o',
                                                                                  'r',
                                                                                  'c',
                                                                                  'e',
                                                                                  '\000'}}},
      0},
        {0, "ASUS P5NSLI", {{9U, (unsigned char)0, {'A', 'S', 'U', 'S', 'T', 'e', 'K',
                                                 ' ', 'C', 'o', 'm', 'p', 'u', 't',
                                                 'e', 'r', ' ', 'I', 'N', 'C', '.',
                                                 '\000'}}, {10U, (unsigned char)0,
                                                            {'P', '5', 'N', 'S', 'L',
                                                             'I', '\000'}}}, 0},
        {0, "FUJITSU SIEMENS A8NE-FM", {{9U, (unsigned char)0, {'A', 'S', 'U', 'S', 'T',
                                                             'e', 'k', ' ', 'C', 'o',
                                                             'm', 'p', 'u', 't', 'e',
                                                             'r', ' ', 'I', 'N', 'C',
                                                             '.', '\000'}}, {10U,
                                                                             (unsigned char)0,
                                                                             {'A',
                                                                              '8',
                                                                              'N',
                                                                              'E',
                                                                              '-',
                                                                              'F',
                                                                              'M',
                                                                              '\000'}}},
      0}};
static int skge_init_module(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = dmi_check_system((struct dmi_system_id const *)(& skge_32bit_dma_boards));
  if (tmp != 0) {
    only_32bit_dma = 1;
  } else {
  }
  skge_debug_init();
  tmp___0 = ldv___pci_register_driver_57(& skge_driver, & __this_module, "skge");
  return (tmp___0);
}
}
static void skge_cleanup_module(void)
{
  {
  ldv_pci_unregister_driver_58(& skge_driver);
  skge_debug_cleanup();
  return;
}
}
extern int ldv_thaw_noirq_5(void) ;
int ldv_retval_20 ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_ndo_init_6(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_23 ;
extern int ldv_restore_early_5(void) ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_suspend_noirq_5(void) ;
int ldv_retval_22 ;
int ldv_retval_15 ;
int ldv_retval_16 ;
extern int ldv_poweroff_noirq_5(void) ;
extern int ldv_complete_5(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_suspend_late_5(void) ;
int ldv_retval_8 ;
extern int ldv_freeze_noirq_5(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_ndo_uninit_6(void) ;
extern int ldv_poweroff_late_5(void) ;
extern int ldv_thaw_early_5(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_resume_noirq_5(void) ;
int ldv_retval_12 ;
extern int ldv_restore_noirq_5(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_prepare_5(void) ;
extern int ldv_freeze_late_5(void) ;
int ldv_retval_21 ;
extern int ldv_resume_early_5(void) ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
int ldv_retval_3 ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_49618;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_49618;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_49618;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_49618;
  default:
  ldv_stop();
  }
  ldv_49618: ;
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
void choose_timer_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_3_0 == 1) {
    ldv_timer_3_0 = 2;
    ldv_timer_3(ldv_timer_3_0, ldv_timer_list_3_0);
  } else {
  }
  goto ldv_49631;
  case 1: ;
  if (ldv_timer_3_1 == 1) {
    ldv_timer_3_1 = 2;
    ldv_timer_3(ldv_timer_3_1, ldv_timer_list_3_1);
  } else {
  }
  goto ldv_49631;
  case 2: ;
  if (ldv_timer_3_2 == 1) {
    ldv_timer_3_2 = 2;
    ldv_timer_3(ldv_timer_3_2, ldv_timer_list_3_2);
  } else {
  }
  goto ldv_49631;
  case 3: ;
  if (ldv_timer_3_3 == 1) {
    ldv_timer_3_3 = 2;
    ldv_timer_3(ldv_timer_3_3, ldv_timer_list_3_3);
  } else {
  }
  goto ldv_49631;
  default:
  ldv_stop();
  }
  ldv_49631: ;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& skge_intr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void timer_init_3(void)
{
  {
  ldv_timer_3_0 = 0;
  ldv_timer_3_1 = 0;
  ldv_timer_3_2 = 0;
  ldv_timer_3_3 = 0;
  return;
}
}
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  skge_driver_group1 = (struct pci_dev *)tmp;
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
  goto ldv_49655;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_49655;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_49655;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_49655;
  default:
  ldv_stop();
  }
  ldv_49655: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& skge_intr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_initialize_ethtool_ops_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  {
  tmp = ldv_init_zalloc(92UL);
  skge_ethtool_ops_group4 = (struct ethtool_coalesce *)tmp;
  tmp___0 = ldv_init_zalloc(36UL);
  skge_ethtool_ops_group0 = (struct ethtool_ringparam *)tmp___0;
  tmp___1 = ldv_init_zalloc(3008UL);
  skge_ethtool_ops_group5 = (struct net_device *)tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  skge_ethtool_ops_group2 = (struct ethtool_eeprom *)tmp___2;
  tmp___3 = ldv_init_zalloc(44UL);
  skge_ethtool_ops_group1 = (struct ethtool_cmd *)tmp___3;
  tmp___4 = ldv_init_zalloc(20UL);
  skge_ethtool_ops_group6 = (struct ethtool_wolinfo *)tmp___4;
  tmp___5 = ldv_init_zalloc(16UL);
  skge_ethtool_ops_group3 = (struct ethtool_pauseparam *)tmp___5;
  return;
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if (ldv_timer_3_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_0) {
    ldv_timer_3_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_1) {
    ldv_timer_3_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_2) {
    ldv_timer_3_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_3) {
    ldv_timer_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_3_0 == 0 || ldv_timer_3_0 == 2) {
    ldv_timer_list_3_0 = timer;
    ldv_timer_list_3_0->data = data;
    ldv_timer_3_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_1 == 0 || ldv_timer_3_1 == 2) {
    ldv_timer_list_3_1 = timer;
    ldv_timer_list_3_1->data = data;
    ldv_timer_3_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_2 == 0 || ldv_timer_3_2 == 2) {
    ldv_timer_list_3_2 = timer;
    ldv_timer_list_3_2->data = data;
    ldv_timer_3_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_3 == 0 || ldv_timer_3_3 == 2) {
    ldv_timer_list_3_3 = timer;
    ldv_timer_list_3_3->data = data;
    ldv_timer_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  skge_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_file_operations_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  skge_debug_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  skge_debug_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_dev_pm_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  skge_pm_ops_group1 = (struct device *)tmp;
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
      irq_retval = skge_intr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_49695;
    default:
    ldv_stop();
    }
    ldv_49695: ;
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
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3_0 == (unsigned long )timer) {
    if (ldv_timer_3_0 == 2 || pending_flag != 0) {
      ldv_timer_list_3_0 = timer;
      ldv_timer_list_3_0->data = data;
      ldv_timer_3_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_1 == (unsigned long )timer) {
    if (ldv_timer_3_1 == 2 || pending_flag != 0) {
      ldv_timer_list_3_1 = timer;
      ldv_timer_list_3_1->data = data;
      ldv_timer_3_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_2 == (unsigned long )timer) {
    if (ldv_timer_3_2 == 2 || pending_flag != 0) {
      ldv_timer_list_3_2 = timer;
      ldv_timer_list_3_2->data = data;
      ldv_timer_3_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_3 == (unsigned long )timer) {
    if (ldv_timer_3_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3_3 = timer;
      ldv_timer_list_3_3->data = data;
      ldv_timer_3_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_3(timer, data);
  return;
}
}
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& xm_link_timer)) {
    activate_suitable_timer_3(timer, data);
  } else {
  }
  return (0);
}
}
int ldv_irq_2(int state , int line , void *data )
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
      irq_retval = skge_intr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_49721;
    default:
    ldv_stop();
    }
    ldv_49721: ;
  } else {
  }
  return (state);
}
}
void ldv_timer_3(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  xm_link_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
int main(void)
{
  int ldvarg1 ;
  struct ifreq *ldvarg4 ;
  void *tmp ;
  int ldvarg3 ;
  void *ldvarg0 ;
  void *tmp___0 ;
  struct sk_buff *ldvarg2 ;
  void *tmp___1 ;
  unsigned long ldvarg7 ;
  struct notifier_block *ldvarg5 ;
  void *tmp___2 ;
  void *ldvarg6 ;
  void *tmp___3 ;
  struct ethtool_stats *ldvarg18 ;
  void *tmp___4 ;
  u8 *ldvarg11 ;
  void *tmp___5 ;
  u32 ldvarg12 ;
  struct ethtool_regs *ldvarg16 ;
  void *tmp___6 ;
  void *ldvarg15 ;
  void *tmp___7 ;
  u8 *ldvarg8 ;
  void *tmp___8 ;
  u64 *ldvarg17 ;
  void *tmp___9 ;
  enum ethtool_phys_id_state ldvarg14 ;
  int ldvarg13 ;
  u32 ldvarg10 ;
  struct ethtool_drvinfo *ldvarg19 ;
  void *tmp___10 ;
  u8 *ldvarg9 ;
  void *tmp___11 ;
  char *ldvarg24 ;
  void *tmp___12 ;
  loff_t ldvarg21 ;
  int ldvarg20 ;
  size_t ldvarg23 ;
  loff_t *ldvarg22 ;
  void *tmp___13 ;
  struct pci_device_id *ldvarg25 ;
  void *tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  {
  tmp = ldv_init_zalloc(40UL);
  ldvarg4 = (struct ifreq *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg0 = tmp___0;
  tmp___1 = ldv_init_zalloc(232UL);
  ldvarg2 = (struct sk_buff *)tmp___1;
  tmp___2 = ldv_init_zalloc(24UL);
  ldvarg5 = (struct notifier_block *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg6 = tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg18 = (struct ethtool_stats *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg11 = (u8 *)tmp___5;
  tmp___6 = ldv_init_zalloc(12UL);
  ldvarg16 = (struct ethtool_regs *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg15 = tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg8 = (u8 *)tmp___8;
  tmp___9 = ldv_init_zalloc(8UL);
  ldvarg17 = (u64 *)tmp___9;
  tmp___10 = ldv_init_zalloc(196UL);
  ldvarg19 = (struct ethtool_drvinfo *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg9 = (u8 *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(8UL);
  ldvarg22 = (loff_t *)tmp___13;
  tmp___14 = ldv_init_zalloc(32UL);
  ldvarg25 = (struct pci_device_id *)tmp___14;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 8UL);
  ldv_memset((void *)(& ldvarg20), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 8UL);
  ldv_state_variable_6 = 0;
  timer_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_49864:
  tmp___15 = __VERIFIER_nondet_int();
  switch (tmp___15) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      skge_ioctl(skge_netdev_ops_group1, ldvarg4, ldvarg3);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_ioctl(skge_netdev_ops_group1, ldvarg4, ldvarg3);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_ioctl(skge_netdev_ops_group1, ldvarg4, ldvarg3);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      skge_get_stats(skge_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_get_stats(skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_get_stats(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      ldv_retval_1 = skge_up(skge_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 3;
      } else {
      }
    } else {
    }
    goto ldv_49772;
    case 3: ;
    if (ldv_state_variable_6 == 3) {
      skge_xmit_frame(ldvarg2, skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_49772;
    case 4: ;
    if (ldv_state_variable_6 == 3) {
      skge_down(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      skge_set_multicast(skge_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_set_multicast(skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_set_multicast(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 6: ;
    if (ldv_state_variable_6 == 1) {
      eth_validate_addr(skge_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      eth_validate_addr(skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      eth_validate_addr(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 7: ;
    if (ldv_state_variable_6 == 1) {
      skge_netpoll(skge_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_netpoll(skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_netpoll(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 8: ;
    if (ldv_state_variable_6 == 3) {
      skge_change_mtu(skge_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_change_mtu(skge_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 9: ;
    if (ldv_state_variable_6 == 1) {
      skge_set_mac_address(skge_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_set_mac_address(skge_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_set_mac_address(skge_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 10: ;
    if (ldv_state_variable_6 == 1) {
      skge_tx_timeout(skge_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      skge_tx_timeout(skge_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      skge_tx_timeout(skge_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_49772;
    case 11: ;
    if (ldv_state_variable_6 == 2) {
      ldv_ndo_uninit_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49772;
    case 12: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = ldv_ndo_init_6();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49772;
    default:
    ldv_stop();
    }
    ldv_49772: ;
  } else {
  }
  goto ldv_49786;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3();
  } else {
  }
  goto ldv_49786;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      skge_device_event(ldvarg5, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_49790;
    default:
    ldv_stop();
    }
    ldv_49790: ;
  } else {
  }
  goto ldv_49786;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_drvinfo(skge_ethtool_ops_group5, ldvarg19);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_pauseparam(skge_ethtool_ops_group5, skge_ethtool_ops_group3);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_ethtool_stats(skge_ethtool_ops_group5, ldvarg18, ldvarg17);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_coalesce(skge_ethtool_ops_group5, skge_ethtool_ops_group4);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 4: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_ring_param(skge_ethtool_ops_group5, skge_ethtool_ops_group0);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 5: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_regs(skge_ethtool_ops_group5, ldvarg16, ldvarg15);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 6: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_phys_id(skge_ethtool_ops_group5, ldvarg14);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 7: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_pauseparam(skge_ethtool_ops_group5, skge_ethtool_ops_group3);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 8: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_sset_count(skge_ethtool_ops_group5, ldvarg13);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 9: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_settings(skge_ethtool_ops_group5, skge_ethtool_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 10: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_coalesce(skge_ethtool_ops_group5, skge_ethtool_ops_group4);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 11: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_wol(skge_ethtool_ops_group5, skge_ethtool_ops_group6);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 12: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_msglevel(skge_ethtool_ops_group5, ldvarg12);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 13: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_eeprom_len(skge_ethtool_ops_group5);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 14: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_settings(skge_ethtool_ops_group5, skge_ethtool_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 15: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_eeprom(skge_ethtool_ops_group5, skge_ethtool_ops_group2, ldvarg11);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 16: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_strings(skge_ethtool_ops_group5, ldvarg10, ldvarg9);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 17: ;
    if (ldv_state_variable_9 == 1) {
      skge_nway_reset(skge_ethtool_ops_group5);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 18: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_wol(skge_ethtool_ops_group5, skge_ethtool_ops_group6);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 19: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_eeprom(skge_ethtool_ops_group5, skge_ethtool_ops_group2, ldvarg8);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 20: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_msglevel(skge_ethtool_ops_group5);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 21: ;
    if (ldv_state_variable_9 == 1) {
      skge_get_regs_len(skge_ethtool_ops_group5);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 22: ;
    if (ldv_state_variable_9 == 1) {
      skge_set_ring_param(skge_ethtool_ops_group5, skge_ethtool_ops_group0);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    case 23: ;
    if (ldv_state_variable_9 == 1) {
      ethtool_op_get_link(skge_ethtool_ops_group5);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_49794;
    default:
    ldv_stop();
    }
    ldv_49794: ;
  } else {
  }
  goto ldv_49786;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_49786;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_2 = skge_debug_open(skge_debug_fops_group1, skge_debug_fops_group2);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49822;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      single_release(skge_debug_fops_group1, skge_debug_fops_group2);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49822;
    case 2: ;
    if (ldv_state_variable_8 == 2) {
      seq_read(skge_debug_fops_group2, ldvarg24, ldvarg23, ldvarg22);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_49822;
    case 3: ;
    if (ldv_state_variable_8 == 2) {
      seq_lseek(skge_debug_fops_group2, ldvarg21, ldvarg20);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_49822;
    default:
    ldv_stop();
    }
    ldv_49822: ;
  } else {
  }
  goto ldv_49786;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_49786;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_3 = skge_probe(skge_driver_group1, (struct pci_device_id const *)ldvarg25);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49830;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      skge_shutdown(skge_driver_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_49830;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      skge_remove(skge_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_49830;
    default:
    ldv_stop();
    }
    ldv_49830: ;
  } else {
  }
  goto ldv_49786;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      skge_cleanup_module();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_49837;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_4 = skge_init_module();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_dev_pm_ops_5();
        ldv_state_variable_9 = 1;
        ldv_initialize_ethtool_ops_9();
        ldv_state_variable_7 = 1;
        ldv_state_variable_8 = 1;
        ldv_file_operations_8();
      } else {
      }
      if (ldv_retval_4 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_49837;
    default:
    ldv_stop();
    }
    ldv_49837: ;
  } else {
  }
  goto ldv_49786;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_5 == 14) {
      ldv_retval_23 = skge_resume(skge_pm_ops_group1);
      if (ldv_retval_23 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_22 = skge_suspend(skge_pm_ops_group1);
      if (ldv_retval_22 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 2: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_21 = skge_suspend(skge_pm_ops_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_5 = 4;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_20 = skge_suspend(skge_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_5 = 5;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 4: ;
    if (ldv_state_variable_5 == 12) {
      ldv_retval_19 = skge_resume(skge_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 5: ;
    if (ldv_state_variable_5 == 13) {
      ldv_retval_18 = skge_resume(skge_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 6: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_17 = ldv_suspend_late_5();
      if (ldv_retval_17 == 0) {
        ldv_state_variable_5 = 6;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 7: ;
    if (ldv_state_variable_5 == 9) {
      ldv_retval_16 = ldv_restore_early_5();
      if (ldv_retval_16 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 8: ;
    if (ldv_state_variable_5 == 6) {
      ldv_retval_15 = ldv_resume_early_5();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_5 = 12;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 9: ;
    if (ldv_state_variable_5 == 11) {
      ldv_retval_14 = ldv_thaw_early_5();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 10: ;
    if (ldv_state_variable_5 == 7) {
      ldv_retval_13 = ldv_resume_noirq_5();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_5 = 12;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 11: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_12 = ldv_freeze_noirq_5();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_5 = 10;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 12: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_11 = ldv_prepare_5();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 13: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_10 = ldv_freeze_late_5();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_5 = 11;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 14: ;
    if (ldv_state_variable_5 == 10) {
      ldv_retval_9 = ldv_thaw_noirq_5();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 15: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_8 = ldv_poweroff_noirq_5();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_5 = 8;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 16: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_7 = ldv_poweroff_late_5();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_5 = 9;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 17: ;
    if (ldv_state_variable_5 == 8) {
      ldv_retval_6 = ldv_restore_noirq_5();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 18: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_5 = ldv_suspend_noirq_5();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 7;
      } else {
      }
    } else {
    }
    goto ldv_49842;
    case 19: ;
    if (ldv_state_variable_5 == 15) {
      ldv_complete_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49842;
    default:
    ldv_stop();
    }
    ldv_49842: ;
  } else {
  }
  goto ldv_49786;
  default:
  ldv_stop();
  }
  ldv_49786: ;
  goto ldv_49864;
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
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_8(lock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_11(lock);
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
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_20(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags )
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
int ldv_mod_timer_38(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_39(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_40(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_41(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
int ldv_del_timer_sync_42(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_43(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_register_netdev_44(struct net_device *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_net_device_ops_6();
  return (ldv_func_res);
}
}
int ldv_register_netdev_45(struct net_device *dev )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_net_device_ops_6();
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
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
void ldv_unregister_netdev_47(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_free_netdev_48(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_unregister_netdev_49(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_free_netdev_50(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_unregister_netdev_51(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_unregister_netdev_52(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_free_irq_53(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_netdev_55(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
void ldv_free_netdev_56(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __napi_complete(struct napi_struct *arg0) {
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
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
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
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
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
void *external_alloc(void);
struct dentry *debugfs_rename(struct dentry *arg0, struct dentry *arg1, struct dentry *arg2, const char *arg3) {
  return (struct dentry *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_close(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
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
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dmi_check_system(const struct dmi_system_id *arg0) {
  return __VERIFIER_nondet_int();
}
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
void dql_reset(struct dql *arg0) {
  return;
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
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_5() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_5() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void napi_disable(struct napi_struct *arg0) {
  return;
}
void napi_gro_flush(struct napi_struct *arg0, bool arg1) {
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
void netdev_printk(const char *arg0, const struct net_device *arg1, const char *arg2, ...) {
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
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_schedule_queue(struct netdev_queue *arg0) {
  return;
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdevice_notifier(struct notifier_block *arg0) {
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
int __VERIFIER_nondet_int(void);
int skb_pad(struct sk_buff *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
