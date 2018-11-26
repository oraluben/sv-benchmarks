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
struct ethtool_pauseparam;
struct ethtool_cmd;
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
union __anonunion____missing_field_name_220 {
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
   union __anonunion____missing_field_name_220 __annonCompField58 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_229 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_229 __annonCompField66 ;
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
enum ldv_23718 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_23718 socket_state;
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
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_230 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_230 in6_u ;
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
union __anonunion____missing_field_name_235 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_236 {
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
   union __anonunion____missing_field_name_235 __annonCompField70 ;
   union __anonunion____missing_field_name_236 __annonCompField71 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_237 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_237 page ;
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
struct __anonstruct____missing_field_name_239 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_238 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_239 __annonCompField72 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_238 __annonCompField73 ;
};
union __anonunion____missing_field_name_242 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_241 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_242 __annonCompField74 ;
};
union __anonunion____missing_field_name_240 {
   struct __anonstruct____missing_field_name_241 __annonCompField75 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_244 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_243 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_244 __annonCompField77 ;
};
union __anonunion____missing_field_name_245 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_246 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_247 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_240 __annonCompField76 ;
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
   union __anonunion____missing_field_name_243 __annonCompField78 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_245 __annonCompField79 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_246 __annonCompField80 ;
   union __anonunion____missing_field_name_247 __annonCompField81 ;
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
struct __anonstruct_sync_serial_settings_250 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_250 sync_serial_settings;
struct __anonstruct_te1_settings_251 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_251 te1_settings;
struct __anonstruct_raw_hdlc_proto_252 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_252 raw_hdlc_proto;
struct __anonstruct_fr_proto_253 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_253 fr_proto;
struct __anonstruct_fr_proto_pvc_254 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_254 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_255 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_255 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_256 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_256 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_257 {
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
   union __anonunion_ifs_ifsu_257 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_258 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_259 {
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
   union __anonunion_ifr_ifrn_258 ifr_ifrn ;
   union __anonunion_ifr_ifru_259 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_264 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_263 {
   struct __anonstruct____missing_field_name_264 __annonCompField82 ;
};
struct lockref {
   union __anonunion____missing_field_name_263 __annonCompField83 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_266 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_265 {
   struct __anonstruct____missing_field_name_266 __annonCompField84 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_265 __annonCompField85 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_267 {
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
   union __anonunion_d_u_267 d_u ;
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
struct __anonstruct____missing_field_name_271 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_270 {
   struct __anonstruct____missing_field_name_271 __annonCompField86 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_270 __annonCompField87 ;
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
struct __anonstruct_kprojid_t_275 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_275 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_276 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_276 __annonCompField89 ;
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
union __anonunion____missing_field_name_279 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_280 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_281 {
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
   union __anonunion____missing_field_name_279 __annonCompField90 ;
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
   union __anonunion____missing_field_name_280 __annonCompField91 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_281 __annonCompField92 ;
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
union __anonunion_f_u_282 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_282 f_u ;
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
struct __anonstruct_afs_284 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_283 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_284 afs ;
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
   union __anonunion_fl_u_283 fl_u ;
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
struct __anonstruct_possible_net_t_307 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_307 possible_net_t;
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
enum ldv_28698 {
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
typedef enum ldv_28698 phy_interface_t;
enum ldv_28752 {
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
   enum ldv_28752 state ;
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
struct __anonstruct_adj_list_317 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_318 {
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
union __anonunion____missing_field_name_319 {
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
   struct __anonstruct_adj_list_317 adj_list ;
   struct __anonstruct_all_adj_list_318 all_adj_list ;
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
   union __anonunion____missing_field_name_319 __annonCompField95 ;
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
union __anonunion____missing_field_name_330 {
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
   union __anonunion____missing_field_name_330 __annonCompField100 ;
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
union __anonunion____missing_field_name_341 {
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
   union __anonunion____missing_field_name_341 __annonCompField101 ;
};
struct __anonstruct_socket_lock_t_342 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_342 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_344 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_343 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_344 __annonCompField102 ;
};
union __anonunion____missing_field_name_345 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_347 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_346 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_347 __annonCompField105 ;
};
union __anonunion____missing_field_name_348 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_349 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_343 __annonCompField103 ;
   union __anonunion____missing_field_name_345 __annonCompField104 ;
   union __anonunion____missing_field_name_346 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_348 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_349 __annonCompField108 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_350 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_350 sk_backlog ;
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
union __anonunion_h_353 {
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
   union __anonunion_h_353 h ;
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
struct mdio_if_info {
   int prtad ;
   u32 mmds ;
   unsigned int mode_support ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int , u16 ) ;
   int (*mdio_write)(struct net_device * , int , int , u16 , u16 ) ;
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
union __anonunion____missing_field_name_377 {
   __be32 a4 ;
   __be32 a6[4U] ;
   struct in6_addr in6 ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_377 __annonCompField110 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_378 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_380 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_379 {
   struct __anonstruct____missing_field_name_380 __annonCompField112 ;
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
   union __anonunion____missing_field_name_378 __annonCompField111 ;
   union __anonunion____missing_field_name_379 __annonCompField113 ;
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
struct __anonstruct_l_383 {
   __le32 pkt_len ;
   __le32 resvd ;
};
union __anonunion_adrl_382 {
   __le64 addr ;
   struct __anonstruct_l_383 l ;
};
struct alx_txd {
   __le16 len ;
   __le16 vlan_tag ;
   __le32 word1 ;
   union __anonunion_adrl_382 adrl ;
};
struct alx_rfd {
   __le64 addr ;
};
struct alx_rrd {
   __le32 word0 ;
   __le32 rss_hash ;
   __le32 word2 ;
   __le32 word3 ;
};
struct alx_hw_stats {
   u64 rx_ok ;
   u64 rx_bcast ;
   u64 rx_mcast ;
   u64 rx_pause ;
   u64 rx_ctrl ;
   u64 rx_fcs_err ;
   u64 rx_len_err ;
   u64 rx_byte_cnt ;
   u64 rx_runt ;
   u64 rx_frag ;
   u64 rx_sz_64B ;
   u64 rx_sz_127B ;
   u64 rx_sz_255B ;
   u64 rx_sz_511B ;
   u64 rx_sz_1023B ;
   u64 rx_sz_1518B ;
   u64 rx_sz_max ;
   u64 rx_ov_sz ;
   u64 rx_ov_rxf ;
   u64 rx_ov_rrd ;
   u64 rx_align_err ;
   u64 rx_bc_byte_cnt ;
   u64 rx_mc_byte_cnt ;
   u64 rx_err_addr ;
   u64 tx_ok ;
   u64 tx_bcast ;
   u64 tx_mcast ;
   u64 tx_pause ;
   u64 tx_exc_defer ;
   u64 tx_ctrl ;
   u64 tx_defer ;
   u64 tx_byte_cnt ;
   u64 tx_sz_64B ;
   u64 tx_sz_127B ;
   u64 tx_sz_255B ;
   u64 tx_sz_511B ;
   u64 tx_sz_1023B ;
   u64 tx_sz_1518B ;
   u64 tx_sz_max ;
   u64 tx_single_col ;
   u64 tx_multi_col ;
   u64 tx_late_col ;
   u64 tx_abort_col ;
   u64 tx_underrun ;
   u64 tx_trd_eop ;
   u64 tx_len_err ;
   u64 tx_trunc ;
   u64 tx_bc_byte_cnt ;
   u64 tx_mc_byte_cnt ;
   u64 update ;
};
struct alx_hw {
   struct pci_dev *pdev ;
   u8 *hw_addr ;
   u8 mac_addr[6U] ;
   u8 perm_addr[6U] ;
   u16 mtu ;
   u16 imt ;
   u8 dma_chnl ;
   u8 max_dma_chnl ;
   u32 ith_tpd ;
   u32 rx_ctrl ;
   u32 mc_hash[2U] ;
   u32 smb_timer ;
   int link_speed ;
   u8 duplex ;
   u8 flowctrl ;
   u32 adv_cfg ;
   spinlock_t mdio_lock ;
   struct mdio_if_info mdio ;
   u16 phy_id[2U] ;
   bool lnk_patch ;
   struct alx_hw_stats stats ;
};
struct alx_buffer {
   struct sk_buff *skb ;
   dma_addr_t dma ;
   __u32 size ;
};
struct alx_rx_queue {
   struct alx_rrd *rrd ;
   dma_addr_t rrd_dma ;
   struct alx_rfd *rfd ;
   dma_addr_t rfd_dma ;
   struct alx_buffer *bufs ;
   u16 write_idx ;
   u16 read_idx ;
   u16 rrd_read_idx ;
};
struct alx_tx_queue {
   struct alx_txd *tpd ;
   dma_addr_t tpd_dma ;
   struct alx_buffer *bufs ;
   u16 write_idx ;
   u16 read_idx ;
};
struct __anonstruct_descmem_384 {
   dma_addr_t dma ;
   void *virt ;
   unsigned int size ;
};
struct alx_priv {
   struct net_device *dev ;
   struct alx_hw hw ;
   struct __anonstruct_descmem_384 descmem ;
   spinlock_t irq_lock ;
   u32 int_mask ;
   unsigned int tx_ringsz ;
   unsigned int rx_ringsz ;
   unsigned int rxbuf_size ;
   struct napi_struct napi ;
   struct alx_tx_queue txq ;
   struct alx_rx_queue rxq ;
   struct work_struct link_check_wk ;
   struct work_struct reset_wk ;
   u16 msg_enable ;
   bool msi ;
   spinlock_t stats_lock ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef bool ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
enum hrtimer_restart;
enum hrtimer_restart;
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
extern void dump_stack(void) ;
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
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
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
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_49(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_50(struct work_struct *ldv_func_arg1 ) ;
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
extern void iounmap(void volatile * ) ;
extern int cpu_number ;
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_42(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_8 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct ethtool_pauseparam *alx_ethtool_ops_group2 ;
struct net_device *alx_netdev_ops_group1 ;
struct pci_dev *alx_err_handlers_group0 ;
int ldv_irq_2_0 = 0;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
int ldv_irq_line_2_0 ;
struct ethtool_cmd *alx_ethtool_ops_group0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
struct pci_dev *alx_driver_group1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
struct net_device *alx_ethtool_ops_group1 ;
int ldv_irq_1_0 = 0;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct work_struct *ldv_work_struct_4_2 ;
void *ldv_irq_data_1_2 ;
struct device *alx_pm_ops_group1 ;
void *ldv_irq_data_2_0 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct work_struct *ldv_work_struct_4_1 ;
int ldv_state_variable_4 ;
void work_init_3(void) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void activate_work_4(struct work_struct *work , int state ) ;
void ldv_initialize_pci_error_handlers_7(void) ;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_ethtool_ops_5(void) ;
void call_and_disable_all_4(int state ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void ldv_net_device_ops_9(void) ;
void disable_work_4(struct work_struct *work ) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
void ldv_dev_pm_ops_8(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void invoke_work_4(void) ;
void call_and_disable_all_3(int state ) ;
void call_and_disable_work_4(struct work_struct *work ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_pci_driver_6(void) ;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern int pci_enable_device_mem(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_select_bars(struct pci_dev * , unsigned long ) ;
extern int pci_request_selected_regions(struct pci_dev * , int , char const * ) ;
extern void pci_release_selected_regions(struct pci_dev * , int ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_53(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_54(struct pci_driver *ldv_func_arg1 ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
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
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
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
    ldv_26530: ;
    goto ldv_26530;
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
    ldv_26539: ;
    goto ldv_26539;
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
    ldv_26574: ;
    goto ldv_26574;
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
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
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
__inline static int ldv_request_irq_45(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void get_random_bytes(void * , int ) ;
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
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  tmp = skb_headroom(skb);
  return ((int )((unsigned int )skb->__annonCompField78.__annonCompField77.csum_start - tmp));
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_43(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
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
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
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
    ldv_32486: ;
    goto ldv_32486;
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
    ldv_43634: ;
    goto ldv_43634;
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
void ldv_free_netdev_48(struct net_device *dev ) ;
void ldv_free_netdev_52(struct net_device *dev ) ;
extern void netif_schedule_queue(struct netdev_queue * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_44708;
  ldv_44707:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  ldv_44708: ;
  if (dev->num_tx_queues > i) {
    goto ldv_44707;
  } else {
  }
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
__inline static void netif_tx_wake_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_44721;
  ldv_44720:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_wake_queue(txq);
  i = i + 1U;
  ldv_44721: ;
  if (dev->num_tx_queues > i) {
    goto ldv_44720;
  } else {
  }
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
  goto ldv_45283;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_45283;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_45283;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_45283;
  default:
  __bad_percpu_size();
  }
  ldv_45283:
  pscr_ret__ = pfo_ret__;
  goto ldv_45289;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_45293;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_45293;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_45293;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_45293;
  default:
  __bad_percpu_size();
  }
  ldv_45293:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_45289;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_45302;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_45302;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_45302;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_45302;
  default:
  __bad_percpu_size();
  }
  ldv_45302:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_45289;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_45311;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_45311;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_45311;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_45311;
  default:
  __bad_percpu_size();
  }
  ldv_45311:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_45289;
  default:
  __bad_size_call_parameter();
  goto ldv_45289;
  }
  ldv_45289:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_45321;
  ldv_45320:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_45321: ;
  if (dev->num_tx_queues > i) {
    goto ldv_45320;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_47(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_51(struct net_device *dev ) ;
extern void netdev_update_features(struct net_device * ) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int rtnl_is_locked(void) ;
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
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  return;
}
}
extern int mdio_mii_ioctl(struct mdio_if_info const * , struct mii_ioctl_data * ,
                          int ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
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
__inline static int alx_hw_revision(struct alx_hw *hw )
{
  {
  return ((int )(hw->pdev)->revision >> 3);
}
}
__inline static void alx_write_mem16(struct alx_hw *hw , u32 reg , u16 val )
{
  {
  writew((int )val, (void volatile *)hw->hw_addr + (unsigned long )reg);
  return;
}
}
__inline static u16 alx_read_mem16(struct alx_hw *hw , u32 reg )
{
  unsigned short tmp ;
  {
  tmp = readw((void const volatile *)hw->hw_addr + (unsigned long )reg);
  return (tmp);
}
}
__inline static void alx_write_mem32(struct alx_hw *hw , u32 reg , u32 val )
{
  {
  writel(val, (void volatile *)hw->hw_addr + (unsigned long )reg);
  return;
}
}
__inline static u32 alx_read_mem32(struct alx_hw *hw , u32 reg )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)hw->hw_addr + (unsigned long )reg);
  return (tmp);
}
}
__inline static void alx_post_write(struct alx_hw *hw )
{
  {
  readl((void const volatile *)hw->hw_addr);
  return;
}
}
int alx_get_perm_macaddr(struct alx_hw *hw , u8 *addr ) ;
void alx_reset_phy(struct alx_hw *hw ) ;
void alx_reset_pcie(struct alx_hw *hw ) ;
void alx_enable_aspm(struct alx_hw *hw , bool l0s_en , bool l1_en ) ;
int alx_setup_speed_duplex(struct alx_hw *hw , u32 ethadv , u8 flowctrl ) ;
void alx_post_phy_link(struct alx_hw *hw ) ;
int alx_read_phy_reg(struct alx_hw *hw , u16 reg , u16 *phy_data ) ;
int alx_write_phy_reg(struct alx_hw *hw , u16 reg , u16 phy_data ) ;
int alx_read_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 *pdata ) ;
int alx_write_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 data ) ;
int alx_read_phy_link(struct alx_hw *hw ) ;
int alx_clear_phy_intr(struct alx_hw *hw ) ;
void alx_start_mac(struct alx_hw *hw ) ;
int alx_reset_mac(struct alx_hw *hw ) ;
void alx_set_macaddr(struct alx_hw *hw , u8 const *addr ) ;
bool alx_phy_configured(struct alx_hw *hw ) ;
void alx_configure_basic(struct alx_hw *hw ) ;
void alx_disable_rss(struct alx_hw *hw ) ;
bool alx_get_phy_info(struct alx_hw *hw ) ;
void alx_update_hw_stats(struct alx_hw *hw ) ;
__inline static u32 alx_speed_to_ethadv(int speed , u8 duplex )
{
  {
  if (speed == 1000 && (unsigned int )duplex == 1U) {
    return (32U);
  } else {
  }
  if (speed == 100 && (unsigned int )duplex == 1U) {
    return (8U);
  } else {
  }
  if (speed == 100 && (unsigned int )duplex == 0U) {
    return (4U);
  } else {
  }
  if (speed == 10 && (unsigned int )duplex == 1U) {
    return (2U);
  } else {
  }
  if (speed == 10 && (unsigned int )duplex == 0U) {
    return (1U);
  } else {
  }
  return (0U);
}
}
struct ethtool_ops const alx_ethtool_ops ;
char const alx_drv_name[4U] ;
char const alx_drv_name[4U] = { 'a', 'l', 'x', '\000'};
static void alx_free_txbuf(struct alx_priv *alx , int entry )
{
  struct alx_buffer *txb ;
  {
  txb = alx->txq.bufs + (unsigned long )entry;
  if (txb->size != 0U) {
    dma_unmap_single_attrs(& (alx->hw.pdev)->dev, txb->dma, (size_t )txb->size, 1,
                           (struct dma_attrs *)0);
    txb->size = 0U;
  } else {
  }
  if ((unsigned long )txb->skb != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(txb->skb);
    txb->skb = (struct sk_buff *)0;
  } else {
  }
  return;
}
}
static int alx_refill_rx_ring(struct alx_priv *alx , gfp_t gfp )
{
  struct alx_rx_queue *rxq ;
  struct sk_buff *skb ;
  struct alx_buffer *cur_buf ;
  dma_addr_t dma ;
  u16 cur ;
  u16 next ;
  u16 count ;
  struct alx_rfd *rfd ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  rxq = & alx->rxq;
  count = 0U;
  cur = rxq->write_idx;
  next = cur;
  next = (u16 )((int )next + 1);
  if ((unsigned int )next == alx->rx_ringsz) {
    next = 0U;
  } else {
  }
  cur_buf = rxq->bufs + (unsigned long )cur;
  goto ldv_53233;
  ldv_53232:
  rfd = rxq->rfd + (unsigned long )cur;
  skb = ldv___netdev_alloc_skb_43(alx->dev, alx->rxbuf_size, gfp);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_53229;
  } else {
  }
  dma = dma_map_single_attrs(& (alx->hw.pdev)->dev, (void *)skb->data, (size_t )alx->rxbuf_size,
                             2, (struct dma_attrs *)0);
  tmp = dma_mapping_error(& (alx->hw.pdev)->dev, dma);
  if (tmp != 0) {
    consume_skb(skb);
    goto ldv_53229;
  } else {
  }
  __ret_warn_on = (dma & 3ULL) != 0ULL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/main.c",
                       103);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    consume_skb(skb);
    goto ldv_53229;
  } else {
  }
  cur_buf->skb = skb;
  cur_buf->size = alx->rxbuf_size;
  cur_buf->dma = dma;
  rfd->addr = dma;
  cur = next;
  next = (u16 )((int )next + 1);
  if ((unsigned int )next == alx->rx_ringsz) {
    next = 0U;
  } else {
  }
  cur_buf = rxq->bufs + (unsigned long )cur;
  count = (u16 )((int )count + 1);
  ldv_53233: ;
  if ((unsigned long )cur_buf->skb == (unsigned long )((struct sk_buff *)0) && (int )rxq->read_idx != (int )next) {
    goto ldv_53232;
  } else {
  }
  ldv_53229: ;
  if ((unsigned int )count != 0U) {
    __asm__ volatile ("sfence": : : "memory");
    rxq->write_idx = cur;
    alx_write_mem16(& alx->hw, 5600U, (int )cur);
  } else {
  }
  return ((int )count);
}
}
__inline static int alx_tpd_avail(struct alx_priv *alx )
{
  struct alx_tx_queue *txq ;
  {
  txq = & alx->txq;
  if ((int )txq->write_idx >= (int )txq->read_idx) {
    return ((int )(((alx->tx_ringsz + (unsigned int )txq->read_idx) - (unsigned int )txq->write_idx) - 1U));
  } else {
  }
  return (((int )txq->read_idx - (int )txq->write_idx) + -1);
}
}
static bool alx_clean_tx_irq(struct alx_priv *alx )
{
  struct alx_tx_queue *txq ;
  u16 hw_read_idx ;
  u16 sw_read_idx ;
  unsigned int total_bytes ;
  unsigned int total_packets ;
  int budget ;
  struct sk_buff *skb ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  txq = & alx->txq;
  total_bytes = 0U;
  total_packets = 0U;
  budget = 128;
  sw_read_idx = txq->read_idx;
  hw_read_idx = alx_read_mem16(& alx->hw, 5622U);
  if ((int )sw_read_idx != (int )hw_read_idx) {
    goto ldv_53249;
    ldv_53248:
    skb = (txq->bufs + (unsigned long )sw_read_idx)->skb;
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      total_bytes = skb->len + total_bytes;
      total_packets = total_packets + 1U;
      budget = budget - 1;
    } else {
    }
    alx_free_txbuf(alx, (int )sw_read_idx);
    sw_read_idx = (u16 )((int )sw_read_idx + 1);
    if ((unsigned int )sw_read_idx == alx->tx_ringsz) {
      sw_read_idx = 0U;
    } else {
    }
    ldv_53249: ;
    if ((int )sw_read_idx != (int )hw_read_idx && budget > 0) {
      goto ldv_53248;
    } else {
    }
    txq->read_idx = sw_read_idx;
    netdev_completed_queue(alx->dev, total_packets, total_bytes);
  } else {
  }
  tmp = netif_queue_stopped((struct net_device const *)alx->dev);
  if ((int )tmp) {
    tmp___0 = netif_carrier_ok((struct net_device const *)alx->dev);
    if ((int )tmp___0) {
      tmp___1 = alx_tpd_avail(alx);
      if ((unsigned int )tmp___1 > alx->tx_ringsz / 4U) {
        netif_wake_queue(alx->dev);
      } else {
      }
    } else {
    }
  } else {
  }
  return ((int )sw_read_idx == (int )hw_read_idx);
}
}
static void alx_schedule_link_check(struct alx_priv *alx )
{
  {
  schedule_work(& alx->link_check_wk);
  return;
}
}
static void alx_schedule_reset(struct alx_priv *alx )
{
  {
  schedule_work(& alx->reset_wk);
  return;
}
}
static int alx_clean_rx_irq(struct alx_priv *alx , int budget )
{
  struct alx_rx_queue *rxq ;
  struct alx_rrd *rrd ;
  struct alx_buffer *rxb ;
  struct sk_buff *skb ;
  u16 length ;
  u16 rfd_cleaned ;
  int work ;
  int tmp ;
  {
  rxq = & alx->rxq;
  rfd_cleaned = 0U;
  work = 0;
  goto ldv_53276;
  ldv_53275:
  rrd = rxq->rrd + (unsigned long )rxq->rrd_read_idx;
  if ((int )rrd->word3 >= 0) {
    goto ldv_53268;
  } else {
  }
  rrd->word3 = rrd->word3 & 2147483647U;
  if (rrd->word0 >> 20 != (__le32 )rxq->read_idx || ((rrd->word0 >> 16) & 15U) != 1U) {
    alx_schedule_reset(alx);
    return (work);
  } else {
  }
  rxb = rxq->bufs + (unsigned long )rxq->read_idx;
  dma_unmap_single_attrs(& (alx->hw.pdev)->dev, rxb->dma, (size_t )rxb->size, 2, (struct dma_attrs *)0);
  rxb->size = 0U;
  skb = rxb->skb;
  rxb->skb = (struct sk_buff *)0;
  if ((rrd->word3 & 1048576U) != 0U || (rrd->word3 & 1073741824U) != 0U) {
    rrd->word3 = 0U;
    dev_kfree_skb_any(skb);
    goto next_pkt;
  } else {
  }
  length = ((unsigned int )((u16 )rrd->word3) & 16383U) - 4U;
  skb_put(skb, (unsigned int )length);
  skb->protocol = eth_type_trans(skb, alx->dev);
  skb_checksum_none_assert((struct sk_buff const *)skb);
  if (((alx->dev)->features & 17179869184ULL) != 0ULL && (rrd->word3 & 49152U) == 0U) {
    switch ((rrd->word2 >> 16) & 255U) {
    case 4U: ;
    case 5U: ;
    case 3U: ;
    case 2U:
    skb->ip_summed = 1U;
    goto ldv_53274;
    }
    ldv_53274: ;
  } else {
  }
  napi_gro_receive(& alx->napi, skb);
  work = work + 1;
  next_pkt:
  rxq->read_idx = (u16 )((int )rxq->read_idx + 1);
  if ((unsigned int )rxq->read_idx == alx->rx_ringsz) {
    rxq->read_idx = 0U;
  } else {
  }
  rxq->rrd_read_idx = (u16 )((int )rxq->rrd_read_idx + 1);
  if ((unsigned int )rxq->rrd_read_idx == alx->rx_ringsz) {
    rxq->rrd_read_idx = 0U;
  } else {
  }
  rfd_cleaned = (u16 )((int )rfd_cleaned + 1);
  if ((unsigned int )rfd_cleaned > 32U) {
    tmp = alx_refill_rx_ring(alx, 32U);
    rfd_cleaned = (int )rfd_cleaned - (int )((u16 )tmp);
  } else {
  }
  ldv_53276: ;
  if (work < budget) {
    goto ldv_53275;
  } else {
  }
  ldv_53268: ;
  if ((unsigned int )rfd_cleaned != 0U) {
    alx_refill_rx_ring(alx, 32U);
  } else {
  }
  return (work);
}
}
static int alx_poll(struct napi_struct *napi , int budget )
{
  struct alx_priv *alx ;
  struct napi_struct const *__mptr ;
  struct alx_hw *hw ;
  unsigned long flags ;
  bool tx_complete ;
  int work ;
  {
  __mptr = (struct napi_struct const *)napi;
  alx = (struct alx_priv *)__mptr + 0xfffffffffffffd38UL;
  hw = & alx->hw;
  tx_complete = alx_clean_tx_irq(alx);
  work = alx_clean_rx_irq(alx, budget);
  if (! tx_complete || work == budget) {
    return (budget);
  } else {
  }
  napi_complete(& alx->napi);
  ldv_spin_lock();
  alx->int_mask = alx->int_mask | 98304U;
  alx_write_mem32(hw, 5636U, alx->int_mask);
  spin_unlock_irqrestore(& alx->irq_lock, flags);
  alx_post_write(hw);
  return (work);
}
}
static irqreturn_t alx_intr_handle(struct alx_priv *alx , u32 intr )
{
  struct alx_hw *hw ;
  bool write_int_mask ;
  {
  hw = & alx->hw;
  write_int_mask = 0;
  spin_lock(& alx->irq_lock);
  alx_write_mem32(hw, 5632U, intr | 2147483648U);
  intr = alx->int_mask & intr;
  if (((unsigned long )intr & 67110400UL) != 0UL) {
    if (((int )alx->msg_enable & 8192) != 0) {
      netdev_warn((struct net_device const *)alx->dev, "fatal interrupt 0x%x, resetting\n",
                  intr);
    } else {
    }
    alx_schedule_reset(alx);
    goto out;
  } else {
  }
  if (((unsigned long )intr & 280UL) != 0UL) {
    netdev_warn((struct net_device const *)alx->dev, "alert interrupt: 0x%x\n",
                intr);
  } else {
  }
  if (((unsigned long )intr & 4096UL) != 0UL) {
    alx->int_mask = alx->int_mask & 4294963199U;
    write_int_mask = 1;
    alx_schedule_link_check(alx);
  } else {
  }
  if (((unsigned long )intr & 98304UL) != 0UL) {
    napi_schedule(& alx->napi);
    alx->int_mask = alx->int_mask & 2280685343U;
    write_int_mask = 1;
  } else {
  }
  if ((int )write_int_mask) {
    alx_write_mem32(hw, 5636U, alx->int_mask);
  } else {
  }
  alx_write_mem32(hw, 5632U, 0U);
  out:
  spin_unlock(& alx->irq_lock);
  return (1);
}
}
static irqreturn_t alx_intr_msi(int irq , void *data )
{
  struct alx_priv *alx ;
  u32 tmp ;
  irqreturn_t tmp___0 ;
  {
  alx = (struct alx_priv *)data;
  tmp = alx_read_mem32(& alx->hw, 5632U);
  tmp___0 = alx_intr_handle(alx, tmp);
  return (tmp___0);
}
}
static irqreturn_t alx_intr_legacy(int irq , void *data )
{
  struct alx_priv *alx ;
  struct alx_hw *hw ;
  u32 intr ;
  irqreturn_t tmp ;
  {
  alx = (struct alx_priv *)data;
  hw = & alx->hw;
  intr = alx_read_mem32(hw, 5632U);
  if ((int )intr < 0 || (alx->int_mask & intr) == 0U) {
    return (0);
  } else {
  }
  tmp = alx_intr_handle(alx, intr);
  return (tmp);
}
}
static void alx_init_ring_ptrs(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  u32 addr_hi ;
  {
  hw = & alx->hw;
  addr_hi = (u32 )(alx->descmem.dma >> 32);
  alx->rxq.read_idx = 0U;
  alx->rxq.write_idx = 0U;
  alx->rxq.rrd_read_idx = 0U;
  alx_write_mem32(hw, 5440U, addr_hi);
  alx_write_mem32(hw, 5480U, (u32 )alx->rxq.rrd_dma);
  alx_write_mem32(hw, 5496U, alx->rx_ringsz);
  alx_write_mem32(hw, 5456U, (u32 )alx->rxq.rfd_dma);
  alx_write_mem32(hw, 5472U, alx->rx_ringsz);
  alx_write_mem32(hw, 5476U, alx->rxbuf_size);
  alx->txq.read_idx = 0U;
  alx->txq.write_idx = 0U;
  alx_write_mem32(hw, 5444U, addr_hi);
  alx_write_mem32(hw, 5504U, (u32 )alx->txq.tpd_dma);
  alx_write_mem32(hw, 5508U, alx->tx_ringsz);
  alx_write_mem32(hw, 5428U, 1U);
  return;
}
}
static void alx_free_txring_buf(struct alx_priv *alx )
{
  struct alx_tx_queue *txq ;
  int i ;
  {
  txq = & alx->txq;
  if ((unsigned long )txq->bufs == (unsigned long )((struct alx_buffer *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_53318;
  ldv_53317:
  alx_free_txbuf(alx, i);
  i = i + 1;
  ldv_53318: ;
  if ((unsigned int )i < alx->tx_ringsz) {
    goto ldv_53317;
  } else {
  }
  memset((void *)txq->bufs, 0, (unsigned long )alx->tx_ringsz * 24UL);
  memset((void *)txq->tpd, 0, (unsigned long )alx->tx_ringsz * 16UL);
  txq->write_idx = 0U;
  txq->read_idx = 0U;
  netdev_reset_queue(alx->dev);
  return;
}
}
static void alx_free_rxring_buf(struct alx_priv *alx )
{
  struct alx_rx_queue *rxq ;
  struct alx_buffer *cur_buf ;
  u16 i ;
  {
  rxq = & alx->rxq;
  if ((unsigned long )rxq == (unsigned long )((struct alx_rx_queue *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_53327;
  ldv_53326:
  cur_buf = rxq->bufs + (unsigned long )i;
  if ((unsigned long )cur_buf->skb != (unsigned long )((struct sk_buff *)0)) {
    dma_unmap_single_attrs(& (alx->hw.pdev)->dev, cur_buf->dma, (size_t )cur_buf->size,
                           2, (struct dma_attrs *)0);
    consume_skb(cur_buf->skb);
    cur_buf->skb = (struct sk_buff *)0;
    cur_buf->size = 0U;
    cur_buf->dma = 0ULL;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53327: ;
  if ((unsigned int )i < alx->rx_ringsz) {
    goto ldv_53326;
  } else {
  }
  rxq->write_idx = 0U;
  rxq->read_idx = 0U;
  rxq->rrd_read_idx = 0U;
  return;
}
}
static void alx_free_buffers(struct alx_priv *alx )
{
  {
  alx_free_txring_buf(alx);
  alx_free_rxring_buf(alx);
  return;
}
}
static int alx_reinit_rings(struct alx_priv *alx )
{
  int tmp ;
  {
  alx_free_buffers(alx);
  alx_init_ring_ptrs(alx);
  tmp = alx_refill_rx_ring(alx, 208U);
  if (tmp == 0) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void alx_add_mc_addr(struct alx_hw *hw , u8 const *addr , u32 *mc_hash )
{
  u32 crc32 ;
  u32 bit ;
  u32 reg ;
  u32 __x ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  tmp = crc32_le(4294967295U, addr, 6UL);
  __x = tmp;
  tmp___0 = __bitrev32(__x);
  crc32 = tmp___0;
  reg = crc32 >> 31;
  bit = (crc32 >> 26) & 31U;
  *(mc_hash + (unsigned long )reg) = *(mc_hash + (unsigned long )reg) | (u32 )(1UL << (int )bit);
  return;
}
}
static void __alx_set_rx_mode(struct net_device *netdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  struct netdev_hw_addr *ha ;
  u32 mc_hash[2U] ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  mc_hash[0] = 0U;
  mc_hash[1] = 0U;
  if ((netdev->flags & 512U) == 0U) {
    __mptr = (struct list_head const *)netdev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_53359;
    ldv_53358:
    alx_add_mc_addr(hw, (u8 const *)(& ha->addr), (u32 *)(& mc_hash));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_53359: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
      goto ldv_53358;
    } else {
    }
    alx_write_mem32(hw, 5264U, mc_hash[0]);
    alx_write_mem32(hw, 5268U, mc_hash[1]);
  } else {
  }
  hw->rx_ctrl = hw->rx_ctrl & 4261380095U;
  if ((netdev->flags & 256U) != 0U) {
    hw->rx_ctrl = hw->rx_ctrl | 32768U;
  } else {
  }
  if ((netdev->flags & 512U) != 0U) {
    hw->rx_ctrl = hw->rx_ctrl | 33554432U;
  } else {
  }
  alx_write_mem32(hw, 5248U, hw->rx_ctrl);
  return;
}
}
static void alx_set_rx_mode(struct net_device *netdev )
{
  {
  __alx_set_rx_mode(netdev);
  return;
}
}
static int alx_set_mac_address(struct net_device *netdev , void *data )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  addr = (struct sockaddr *)data;
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
  if ((int )netdev->addr_assign_type & 1) {
    netdev->addr_assign_type = (unsigned int )netdev->addr_assign_type ^ 1U;
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  memcpy((void *)(& hw->mac_addr), (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  alx_set_macaddr(hw, (u8 const *)(& hw->mac_addr));
  return (0);
}
}
static int alx_alloc_descriptors(struct alx_priv *alx )
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kcalloc((size_t )alx->tx_ringsz, 24UL, 208U);
  alx->txq.bufs = (struct alx_buffer *)tmp;
  if ((unsigned long )alx->txq.bufs == (unsigned long )((struct alx_buffer *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = kcalloc((size_t )alx->rx_ringsz, 24UL, 208U);
  alx->rxq.bufs = (struct alx_buffer *)tmp___0;
  if ((unsigned long )alx->rxq.bufs == (unsigned long )((struct alx_buffer *)0)) {
    goto out_free;
  } else {
  }
  alx->descmem.size = (unsigned int )(((unsigned long )alx->tx_ringsz + (unsigned long )alx->rx_ringsz) * 2UL + (unsigned long )alx->rx_ringsz) * 8U;
  alx->descmem.virt = dma_zalloc_coherent(& (alx->hw.pdev)->dev, (size_t )alx->descmem.size,
                                          & alx->descmem.dma, 208U);
  if ((unsigned long )alx->descmem.virt == (unsigned long )((void *)0)) {
    goto out_free;
  } else {
  }
  alx->txq.tpd = (struct alx_txd *)alx->descmem.virt;
  alx->txq.tpd_dma = alx->descmem.dma;
  alx->rxq.rrd = (struct alx_rrd *)alx->descmem.virt + (unsigned long )alx->tx_ringsz * 16UL;
  alx->rxq.rrd_dma = alx->descmem.dma + (unsigned long long )((unsigned long )alx->tx_ringsz * 16UL);
  alx->rxq.rfd = (struct alx_rfd *)(alx->descmem.virt + ((unsigned long )alx->tx_ringsz + (unsigned long )alx->rx_ringsz) * 16UL);
  alx->rxq.rfd_dma = alx->descmem.dma + ((unsigned long long )alx->rx_ringsz + (unsigned long long )alx->tx_ringsz) * 16ULL;
  return (0);
  out_free:
  kfree((void const *)alx->txq.bufs);
  kfree((void const *)alx->rxq.bufs);
  return (-12);
}
}
static int alx_alloc_rings(struct alx_priv *alx )
{
  int err ;
  {
  err = alx_alloc_descriptors(alx);
  if (err != 0) {
    return (err);
  } else {
  }
  alx->int_mask = alx->int_mask & 2280685343U;
  alx->int_mask = alx->int_mask | 98304U;
  alx->tx_ringsz = alx->tx_ringsz;
  netif_napi_add(alx->dev, & alx->napi, & alx_poll, 64);
  alx_reinit_rings(alx);
  return (0);
}
}
static void alx_free_rings(struct alx_priv *alx )
{
  {
  netif_napi_del(& alx->napi);
  alx_free_buffers(alx);
  kfree((void const *)alx->txq.bufs);
  kfree((void const *)alx->rxq.bufs);
  dma_free_attrs(& (alx->hw.pdev)->dev, (size_t )alx->descmem.size, alx->descmem.virt,
                 alx->descmem.dma, (struct dma_attrs *)0);
  return;
}
}
static void alx_config_vector_mapping(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  {
  hw = & alx->hw;
  alx_write_mem32(hw, 5584U, 0U);
  alx_write_mem32(hw, 5592U, 0U);
  alx_write_mem32(hw, 5588U, 0U);
  return;
}
}
static void alx_irq_enable(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  {
  hw = & alx->hw;
  alx_write_mem32(hw, 5632U, 0U);
  alx_write_mem32(hw, 5636U, alx->int_mask);
  alx_post_write(hw);
  return;
}
}
static void alx_irq_disable(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  {
  hw = & alx->hw;
  alx_write_mem32(hw, 5632U, 2147483648U);
  alx_write_mem32(hw, 5636U, 0U);
  alx_post_write(hw);
  synchronize_irq((alx->hw.pdev)->irq);
  return;
}
}
static int alx_request_irq(struct alx_priv *alx )
{
  struct pci_dev *pdev ;
  struct alx_hw *hw ;
  int err ;
  u32 msi_ctrl ;
  int tmp ;
  {
  pdev = alx->hw.pdev;
  hw = & alx->hw;
  msi_ctrl = (u32 )((int )hw->imt >> 1);
  tmp = pci_enable_msi_exact(alx->hw.pdev, 1);
  if (tmp == 0) {
    alx->msi = 1;
    alx_write_mem32(hw, 6432U, msi_ctrl | 65536U);
    err = ldv_request_irq_44(pdev->irq, & alx_intr_msi, 0UL, (char const *)(& (alx->dev)->name),
                             (void *)alx);
    if (err == 0) {
      goto out;
    } else {
    }
    pci_disable_msi(alx->hw.pdev);
  } else {
  }
  alx_write_mem32(hw, 6432U, 0U);
  err = ldv_request_irq_45(pdev->irq, & alx_intr_legacy, 128UL, (char const *)(& (alx->dev)->name),
                           (void *)alx);
  out: ;
  if (err == 0) {
    alx_config_vector_mapping(alx);
  } else {
  }
  return (err);
}
}
static void alx_free_irq(struct alx_priv *alx )
{
  struct pci_dev *pdev ;
  {
  pdev = alx->hw.pdev;
  ldv_free_irq_46(pdev->irq, (void *)alx);
  if ((int )alx->msi) {
    pci_disable_msi(alx->hw.pdev);
    alx->msi = 0;
  } else {
  }
  return;
}
}
static int alx_identify_hw(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  int rev ;
  int tmp ;
  {
  hw = & alx->hw;
  tmp = alx_hw_revision(hw);
  rev = tmp;
  if (rev > 3) {
    return (-22);
  } else {
  }
  hw->max_dma_chnl = rev > 1 ? 4U : 2U;
  return (0);
}
}
static int alx_init_sw(struct alx_priv *alx )
{
  struct pci_dev *pdev ;
  struct alx_hw *hw ;
  int err ;
  {
  pdev = alx->hw.pdev;
  hw = & alx->hw;
  err = alx_identify_hw(alx);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "unrecognized chip, aborting\n");
    return (err);
  } else {
  }
  alx->hw.lnk_patch = (bool )((((unsigned int )pdev->device == 4241U && (unsigned int )pdev->subsystem_vendor == 6505U) && (unsigned int )pdev->subsystem_device == 145U) && (unsigned int )pdev->revision == 0U);
  hw->smb_timer = 400U;
  hw->mtu = (u16 )(alx->dev)->mtu;
  alx->rxbuf_size = (unsigned int )((int )hw->mtu + 29) & 4294967288U;
  alx->tx_ringsz = 256U;
  alx->rx_ringsz = 512U;
  hw->imt = 200U;
  alx->int_mask = 67110407U;
  hw->dma_chnl = hw->max_dma_chnl;
  hw->ith_tpd = alx->tx_ringsz / 3U;
  hw->link_speed = -1;
  hw->duplex = 255U;
  hw->adv_cfg = 111U;
  hw->flowctrl = 7U;
  hw->rx_ctrl = 1677728972U;
  return (err);
}
}
static netdev_features_t alx_fix_features(struct net_device *netdev , netdev_features_t features )
{
  {
  if (netdev->mtu > 7168U) {
    features = features & 0xffffffffffeeffffULL;
  } else {
  }
  return (features);
}
}
static void alx_netif_stop(struct alx_priv *alx )
{
  bool tmp ;
  {
  (alx->dev)->trans_start = jiffies;
  tmp = netif_carrier_ok((struct net_device const *)alx->dev);
  if ((int )tmp) {
    netif_carrier_off(alx->dev);
    netif_tx_disable(alx->dev);
    napi_disable(& alx->napi);
  } else {
  }
  return;
}
}
static void alx_halt(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  {
  hw = & alx->hw;
  alx_netif_stop(alx);
  hw->link_speed = -1;
  hw->duplex = 255U;
  alx_reset_mac(hw);
  alx_enable_aspm(hw, 0, 0);
  alx_irq_disable(alx);
  alx_free_buffers(alx);
  return;
}
}
static void alx_configure(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  {
  hw = & alx->hw;
  alx_configure_basic(hw);
  alx_disable_rss(hw);
  __alx_set_rx_mode(alx->dev);
  alx_write_mem32(hw, 5248U, hw->rx_ctrl);
  return;
}
}
static void alx_activate(struct alx_priv *alx )
{
  {
  alx_reinit_rings(alx);
  alx_configure(alx);
  alx_write_mem32(& alx->hw, 5632U, 2147483647U);
  alx_irq_enable(alx);
  alx_schedule_link_check(alx);
  return;
}
}
static void alx_reinit(struct alx_priv *alx )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = rtnl_is_locked();
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    printk("\vRTNL: assertion failed at %s (%d)\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/main.c",
           800);
    dump_stack();
  } else {
  }
  alx_halt(alx);
  alx_activate(alx);
  return;
}
}
static int alx_change_mtu(struct net_device *netdev , int mtu )
{
  struct alx_priv *alx ;
  void *tmp ;
  int max_frame ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  max_frame = mtu + 22;
  if (max_frame <= 67 || max_frame > 9216) {
    return (-22);
  } else {
  }
  if (netdev->mtu == (unsigned int )mtu) {
    return (0);
  } else {
  }
  netdev->mtu = (unsigned int )mtu;
  alx->hw.mtu = (u16 )mtu;
  alx->rxbuf_size = mtu > 1536 ? (unsigned int )(max_frame + 7) & 4294967288U : 1536U;
  netdev_update_features(netdev);
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    alx_reinit(alx);
  } else {
  }
  return (0);
}
}
static void alx_netif_start(struct alx_priv *alx )
{
  {
  netif_tx_wake_all_queues(alx->dev);
  napi_enable(& alx->napi);
  netif_carrier_on(alx->dev);
  return;
}
}
static int __alx_open(struct alx_priv *alx , bool resume )
{
  int err ;
  {
  if (! resume) {
    netif_carrier_off(alx->dev);
  } else {
  }
  err = alx_alloc_rings(alx);
  if (err != 0) {
    return (err);
  } else {
  }
  alx_configure(alx);
  err = alx_request_irq(alx);
  if (err != 0) {
    goto out_free_rings;
  } else {
  }
  alx_write_mem32(& alx->hw, 5632U, 2147483647U);
  alx_irq_enable(alx);
  if (! resume) {
    netif_tx_start_all_queues(alx->dev);
  } else {
  }
  alx_schedule_link_check(alx);
  return (0);
  out_free_rings:
  alx_free_rings(alx);
  return (err);
}
}
static void __alx_stop(struct alx_priv *alx )
{
  {
  alx_halt(alx);
  alx_free_irq(alx);
  alx_free_rings(alx);
  return;
}
}
static char const *alx_speed_desc(struct alx_hw *hw )
{
  u32 tmp ;
  {
  tmp = alx_speed_to_ethadv(hw->link_speed, (int )hw->duplex);
  switch (tmp) {
  case 32U: ;
  return ("1 Gbps Full");
  case 8U: ;
  return ("100 Mbps Full");
  case 4U: ;
  return ("100 Mbps Half");
  case 2U: ;
  return ("10 Mbps Full");
  case 1U: ;
  return ("10 Mbps Half");
  default: ;
  return ("Unknown speed");
  }
}
}
static void alx_check_link(struct alx_priv *alx )
{
  struct alx_hw *hw ;
  unsigned long flags ;
  int old_speed ;
  u8 old_duplex ;
  int err ;
  char const *tmp ;
  {
  hw = & alx->hw;
  alx_clear_phy_intr(hw);
  old_speed = hw->link_speed;
  old_duplex = hw->duplex;
  err = alx_read_phy_link(hw);
  if (err < 0) {
    goto reset;
  } else {
  }
  ldv_spin_lock();
  alx->int_mask = alx->int_mask | 4096U;
  alx_write_mem32(hw, 5636U, alx->int_mask);
  spin_unlock_irqrestore(& alx->irq_lock, flags);
  if (hw->link_speed == old_speed) {
    return;
  } else {
  }
  if (hw->link_speed != -1) {
    if (((int )alx->msg_enable & 4) != 0) {
      tmp = alx_speed_desc(hw);
      netdev_info((struct net_device const *)alx->dev, "NIC Up: %s\n", tmp);
    } else {
    }
    alx_post_phy_link(hw);
    alx_enable_aspm(hw, 1, 1);
    alx_start_mac(hw);
    if (old_speed == -1) {
      alx_netif_start(alx);
    } else {
    }
  } else {
    alx_netif_stop(alx);
    if (((int )alx->msg_enable & 4) != 0) {
      netdev_info((struct net_device const *)alx->dev, "Link Down\n");
    } else {
    }
    err = alx_reset_mac(hw);
    if (err != 0) {
      goto reset;
    } else {
    }
    alx_irq_disable(alx);
    err = alx_reinit_rings(alx);
    if (err != 0) {
      goto reset;
    } else {
    }
    alx_configure(alx);
    alx_enable_aspm(hw, 0, 1);
    alx_post_phy_link(hw);
    alx_irq_enable(alx);
  }
  return;
  reset:
  alx_schedule_reset(alx);
  return;
}
}
static int alx_open(struct net_device *netdev )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  tmp___0 = __alx_open((struct alx_priv *)tmp, 0);
  return (tmp___0);
}
}
static int alx_stop(struct net_device *netdev )
{
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  __alx_stop((struct alx_priv *)tmp);
  return (0);
}
}
static void alx_link_check(struct work_struct *work )
{
  struct alx_priv *alx ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  alx = (struct alx_priv *)__mptr + 0xfffffffffffffbd0UL;
  rtnl_lock();
  alx_check_link(alx);
  rtnl_unlock();
  return;
}
}
static void alx_reset(struct work_struct *work )
{
  struct alx_priv *alx ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  alx = (struct alx_priv *)__mptr + 0xfffffffffffffb80UL;
  rtnl_lock();
  alx_reinit(alx);
  rtnl_unlock();
  return;
}
}
static int alx_tx_csum(struct sk_buff *skb , struct alx_txd *first )
{
  u8 cso ;
  u8 css ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 145UL) != 6U) {
    return (0);
  } else {
  }
  tmp = skb_checksum_start_offset((struct sk_buff const *)skb);
  cso = (u8 )tmp;
  if ((int )cso & 1) {
    return (-22);
  } else {
  }
  css = (int )((u8 )skb->__annonCompField78.__annonCompField77.csum_offset) + (int )cso;
  first->word1 = first->word1 | (__le32 )((int )cso >> 1);
  first->word1 = first->word1 | (__le32 )(((int )css >> 1) << 18);
  first->word1 = first->word1 | 256U;
  return (0);
}
}
static int alx_map_tx_skb(struct alx_priv *alx , struct sk_buff *skb )
{
  struct alx_tx_queue *txq ;
  struct alx_txd *tpd ;
  struct alx_txd *first_tpd ;
  dma_addr_t dma ;
  int maplen ;
  int f ;
  int first_idx ;
  unsigned int tmp ;
  int tmp___0 ;
  struct skb_frag_struct *frag ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned char *tmp___4 ;
  {
  txq = & alx->txq;
  first_idx = (int )txq->write_idx;
  first_tpd = txq->tpd + (unsigned long )txq->write_idx;
  tpd = first_tpd;
  tmp = skb_headlen((struct sk_buff const *)skb);
  maplen = (int )tmp;
  dma = dma_map_single_attrs(& (alx->hw.pdev)->dev, (void *)skb->data, (size_t )maplen,
                             1, (struct dma_attrs *)0);
  tmp___0 = dma_mapping_error(& (alx->hw.pdev)->dev, dma);
  if (tmp___0 != 0) {
    goto err_dma;
  } else {
  }
  (txq->bufs + (unsigned long )txq->write_idx)->size = (__u32 )maplen;
  (txq->bufs + (unsigned long )txq->write_idx)->dma = dma;
  tpd->adrl.addr = dma;
  tpd->len = (unsigned short )maplen;
  f = 0;
  goto ldv_53512;
  ldv_53511:
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )f;
  txq->write_idx = (u16 )((int )txq->write_idx + 1);
  if ((unsigned int )txq->write_idx == alx->tx_ringsz) {
    txq->write_idx = 0U;
  } else {
  }
  tpd = txq->tpd + (unsigned long )txq->write_idx;
  tpd->word1 = first_tpd->word1;
  tmp___2 = skb_frag_size((skb_frag_t const *)frag);
  maplen = (int )tmp___2;
  dma = skb_frag_dma_map(& (alx->hw.pdev)->dev, (skb_frag_t const *)frag, 0UL, (size_t )maplen,
                         1);
  tmp___3 = dma_mapping_error(& (alx->hw.pdev)->dev, dma);
  if (tmp___3 != 0) {
    goto err_dma;
  } else {
  }
  (txq->bufs + (unsigned long )txq->write_idx)->size = (__u32 )maplen;
  (txq->bufs + (unsigned long )txq->write_idx)->dma = dma;
  tpd->adrl.addr = dma;
  tpd->len = (unsigned short )maplen;
  f = f + 1;
  ldv_53512:
  tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
  if ((int )((struct skb_shared_info *)tmp___4)->nr_frags > f) {
    goto ldv_53511;
  } else {
  }
  tpd->word1 = tpd->word1 | 2147483648U;
  (txq->bufs + (unsigned long )txq->write_idx)->skb = skb;
  txq->write_idx = (u16 )((int )txq->write_idx + 1);
  if ((unsigned int )txq->write_idx == alx->tx_ringsz) {
    txq->write_idx = 0U;
  } else {
  }
  return (0);
  err_dma:
  f = first_idx;
  goto ldv_53515;
  ldv_53514:
  alx_free_txbuf(alx, f);
  f = f + 1;
  if ((unsigned int )f == alx->tx_ringsz) {
    f = 0;
  } else {
  }
  ldv_53515: ;
  if ((int )txq->write_idx != f) {
    goto ldv_53514;
  } else {
  }
  return (-12);
}
}
static netdev_tx_t alx_start_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_tx_queue *txq ;
  struct alx_txd *first ;
  int tpdreq ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  txq = & alx->txq;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  tpdreq = (int )((struct skb_shared_info *)tmp___0)->nr_frags + 1;
  tmp___1 = alx_tpd_avail(alx);
  if (tmp___1 < tpdreq) {
    netif_stop_queue(alx->dev);
    goto drop;
  } else {
  }
  first = txq->tpd + (unsigned long )txq->write_idx;
  memset((void *)first, 0, 16UL);
  tmp___2 = alx_tx_csum(skb, first);
  if (tmp___2 != 0) {
    goto drop;
  } else {
  }
  tmp___3 = alx_map_tx_skb(alx, skb);
  if (tmp___3 < 0) {
    goto drop;
  } else {
  }
  netdev_sent_queue(alx->dev, skb->len);
  __asm__ volatile ("sfence": : : "memory");
  alx_write_mem16(& alx->hw, 5618U, (int )txq->write_idx);
  tmp___4 = alx_tpd_avail(alx);
  if ((unsigned int )tmp___4 < alx->tx_ringsz / 8U) {
    netif_stop_queue(alx->dev);
  } else {
  }
  return (0);
  drop:
  dev_kfree_skb_any(skb);
  return (0);
}
}
static void alx_tx_timeout(struct net_device *dev )
{
  struct alx_priv *alx ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  alx = (struct alx_priv *)tmp;
  alx_schedule_reset(alx);
  return;
}
}
static int alx_mdio_read(struct net_device *netdev , int prtad , int devad , u16 addr )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  u16 val ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  if (hw->mdio.prtad != prtad) {
    return (-22);
  } else {
  }
  if (devad == -1) {
    err = alx_read_phy_reg(hw, (int )addr, & val);
  } else {
    err = alx_read_phy_ext(hw, (int )((u8 )devad), (int )addr, & val);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  return ((int )val);
}
}
static int alx_mdio_write(struct net_device *netdev , int prtad , int devad , u16 addr ,
                          u16 val )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  if (hw->mdio.prtad != prtad) {
    return (-22);
  } else {
  }
  if (devad == -1) {
    tmp___0 = alx_write_phy_reg(hw, (int )addr, (int )val);
    return (tmp___0);
  } else {
  }
  tmp___1 = alx_write_phy_ext(hw, (int )((u8 )devad), (int )addr, (int )val);
  return (tmp___1);
}
}
static int alx_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  struct alx_priv *alx ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct mii_ioctl_data *tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-11);
  } else {
  }
  tmp___2 = if_mii(ifr);
  tmp___3 = mdio_mii_ioctl((struct mdio_if_info const *)(& alx->hw.mdio), tmp___2,
                           cmd);
  return (tmp___3);
}
}
static void alx_poll_controller(struct net_device *netdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  if ((int )alx->msi) {
    alx_intr_msi(0, (void *)alx);
  } else {
    alx_intr_legacy(0, (void *)alx);
  }
  return;
}
}
static struct rtnl_link_stats64 *alx_get_stats64(struct net_device *dev , struct rtnl_link_stats64 *net_stats )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw_stats *hw_stats ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  alx = (struct alx_priv *)tmp;
  hw_stats = & alx->hw.stats;
  spin_lock(& alx->stats_lock);
  alx_update_hw_stats(& alx->hw);
  net_stats->tx_bytes = hw_stats->tx_byte_cnt;
  net_stats->rx_bytes = hw_stats->rx_byte_cnt;
  net_stats->multicast = hw_stats->rx_mcast;
  net_stats->collisions = ((hw_stats->tx_single_col + hw_stats->tx_multi_col) + hw_stats->tx_late_col) + hw_stats->tx_abort_col;
  net_stats->rx_errors = (((((hw_stats->rx_frag + hw_stats->rx_fcs_err) + hw_stats->rx_len_err) + hw_stats->rx_ov_sz) + hw_stats->rx_ov_rrd) + hw_stats->rx_align_err) + hw_stats->rx_ov_rxf;
  net_stats->rx_fifo_errors = hw_stats->rx_ov_rxf;
  net_stats->rx_length_errors = hw_stats->rx_len_err;
  net_stats->rx_crc_errors = hw_stats->rx_fcs_err;
  net_stats->rx_frame_errors = hw_stats->rx_align_err;
  net_stats->rx_dropped = hw_stats->rx_ov_rrd;
  net_stats->tx_errors = ((hw_stats->tx_late_col + hw_stats->tx_abort_col) + hw_stats->tx_underrun) + hw_stats->tx_trunc;
  net_stats->tx_aborted_errors = hw_stats->tx_abort_col;
  net_stats->tx_fifo_errors = hw_stats->tx_underrun;
  net_stats->tx_window_errors = hw_stats->tx_late_col;
  net_stats->tx_packets = hw_stats->tx_ok + net_stats->tx_errors;
  net_stats->rx_packets = hw_stats->rx_ok + net_stats->rx_errors;
  spin_unlock(& alx->stats_lock);
  return (net_stats);
}
}
static struct net_device_ops const alx_netdev_ops =
     {0, 0, & alx_open, & alx_stop, & alx_start_xmit, 0, 0, & alx_set_rx_mode, & alx_set_mac_address,
    & eth_validate_addr, & alx_ioctl, 0, & alx_change_mtu, 0, & alx_tx_timeout, & alx_get_stats64,
    0, 0, 0, & alx_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & alx_fix_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static int alx_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct alx_priv *alx ;
  struct alx_hw *hw ;
  bool phy_configured ;
  int bars ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_1 ;
  {
  err = pci_enable_device_mem(pdev);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___0 = dma_set_mask_and_coherent(& pdev->dev, 0xffffffffffffffffULL);
  if (tmp___0 == 0) {
    descriptor.modname = "alx";
    descriptor.function = "alx_probe";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/main.c";
    descriptor.format = "DMA to 64-BIT addresses\n";
    descriptor.lineno = 1254U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "DMA to 64-BIT addresses\n");
    } else {
    }
  } else {
    err = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "No usable DMA config, aborting\n");
      goto out_pci_disable;
    } else {
    }
  }
  bars = pci_select_bars(pdev, 512UL);
  err = pci_request_selected_regions(pdev, bars, (char const *)(& alx_drv_name));
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "pci_request_selected_regions failed(bars:%d)\n",
            bars);
    goto out_pci_disable;
  } else {
  }
  pci_enable_pcie_error_reporting(pdev);
  pci_set_master(pdev);
  if ((unsigned int )pdev->pm_cap == 0U) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t find power management capability, aborting\n");
    err = -5;
    goto out_pci_release;
  } else {
  }
  netdev = alloc_etherdev_mqs(1312, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto out_pci_release;
  } else {
  }
  netdev->dev.parent = & pdev->dev;
  tmp___1 = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp___1;
  spinlock_check(& alx->hw.mdio_lock);
  __raw_spin_lock_init(& alx->hw.mdio_lock.__annonCompField18.rlock, "&(&alx->hw.mdio_lock)->rlock",
                       & __key);
  spinlock_check(& alx->irq_lock);
  __raw_spin_lock_init(& alx->irq_lock.__annonCompField18.rlock, "&(&alx->irq_lock)->rlock",
                       & __key___0);
  spinlock_check(& alx->stats_lock);
  __raw_spin_lock_init(& alx->stats_lock.__annonCompField18.rlock, "&(&alx->stats_lock)->rlock",
                       & __key___1);
  alx->dev = netdev;
  alx->hw.pdev = pdev;
  alx->msg_enable = 24804U;
  hw = & alx->hw;
  pci_set_drvdata(pdev, (void *)alx);
  tmp___2 = pci_ioremap_bar(pdev, 0);
  hw->hw_addr = (u8 *)tmp___2;
  if ((unsigned long )hw->hw_addr == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& pdev->dev), "cannot map device registers\n");
    err = -5;
    goto out_free_netdev;
  } else {
  }
  netdev->netdev_ops = & alx_netdev_ops;
  netdev->ethtool_ops = & alx_ethtool_ops;
  netdev->irq = (int )pdev->irq;
  netdev->watchdog_timeo = 1250;
  if ((int )ent->driver_data & 1) {
    pdev->dev_flags = (pci_dev_flags_t )((unsigned int )pdev->dev_flags | 1U);
  } else {
  }
  err = alx_init_sw(alx);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "net device private data init failed\n");
    goto out_unmap;
  } else {
  }
  alx_reset_pcie(hw);
  phy_configured = alx_phy_configured(hw);
  if (! phy_configured) {
    alx_reset_phy(hw);
  } else {
  }
  err = alx_reset_mac(hw);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "MAC Reset failed, error = %d\n",
            err);
    goto out_unmap;
  } else {
  }
  if (! phy_configured) {
    err = alx_setup_speed_duplex(hw, hw->adv_cfg, (int )hw->flowctrl);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "failed to configure PHY speed/duplex (err=%d)\n",
              err);
      goto out_unmap;
    } else {
    }
  } else {
  }
  netdev->hw_features = 9ULL;
  tmp___3 = alx_get_perm_macaddr(hw, (u8 *)(& hw->perm_addr));
  if (tmp___3 != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Invalid permanent address programmed, using random one\n");
    eth_hw_addr_random(netdev);
    memcpy((void *)(& hw->perm_addr), (void const *)netdev->dev_addr, (size_t )netdev->addr_len);
  } else {
  }
  memcpy((void *)(& hw->mac_addr), (void const *)(& hw->perm_addr), 6UL);
  memcpy((void *)netdev->dev_addr, (void const *)(& hw->mac_addr), 6UL);
  memcpy((void *)(& netdev->perm_addr), (void const *)(& hw->perm_addr), 6UL);
  hw->mdio.prtad = 0;
  hw->mdio.mmds = 0U;
  hw->mdio.dev = netdev;
  hw->mdio.mode_support = 7U;
  hw->mdio.mdio_read = & alx_mdio_read;
  hw->mdio.mdio_write = & alx_mdio_write;
  tmp___4 = alx_get_phy_info(hw);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    dev_err((struct device const *)(& pdev->dev), "failed to identify PHY\n");
    err = -5;
    goto out_unmap;
  } else {
  }
  __init_work(& alx->link_check_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  alx->link_check_wk.data = __constr_expr_0;
  lockdep_init_map(& alx->link_check_wk.lockdep_map, "(&alx->link_check_wk)", & __key___2,
                   0);
  INIT_LIST_HEAD(& alx->link_check_wk.entry);
  alx->link_check_wk.func = & alx_link_check;
  __init_work(& alx->reset_wk, 0);
  __constr_expr_1.counter = 137438953408L;
  alx->reset_wk.data = __constr_expr_1;
  lockdep_init_map(& alx->reset_wk.lockdep_map, "(&alx->reset_wk)", & __key___3, 0);
  INIT_LIST_HEAD(& alx->reset_wk.entry);
  alx->reset_wk.func = & alx_reset;
  netif_carrier_off(netdev);
  err = ldv_register_netdev_47(netdev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "register netdevice failed\n");
    goto out_unmap;
  } else {
  }
  netdev_info((struct net_device const *)netdev, "Qualcomm Atheros AR816x/AR817x Ethernet [%pM]\n",
              netdev->dev_addr);
  return (0);
  out_unmap:
  iounmap((void volatile *)hw->hw_addr);
  out_free_netdev:
  ldv_free_netdev_48(netdev);
  out_pci_release:
  pci_release_selected_regions(pdev, bars);
  out_pci_disable:
  pci_disable_device(pdev);
  return (err);
}
}
static void alx_remove(struct pci_dev *pdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  int tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  ldv_cancel_work_sync_49(& alx->link_check_wk);
  ldv_cancel_work_sync_50(& alx->reset_wk);
  alx_set_macaddr(hw, (u8 const *)(& hw->perm_addr));
  ldv_unregister_netdev_51(alx->dev);
  iounmap((void volatile *)hw->hw_addr);
  tmp___0 = pci_select_bars(pdev, 512UL);
  pci_release_selected_regions(pdev, tmp___0);
  pci_disable_pcie_error_reporting(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_52(alx->dev);
  return;
}
}
static int alx_suspend(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct alx_priv *alx ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  tmp___0 = netif_running((struct net_device const *)alx->dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  netif_device_detach(alx->dev);
  __alx_stop(alx);
  return (0);
}
}
static int alx_resume(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  alx_reset_phy(hw);
  tmp___0 = netif_running((struct net_device const *)alx->dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  netif_device_attach(alx->dev);
  tmp___2 = __alx_open(alx, 1);
  return (tmp___2);
}
}
static struct dev_pm_ops const alx_pm_ops =
     {0, 0, & alx_suspend, & alx_resume, & alx_suspend, & alx_resume, & alx_suspend,
    & alx_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static pci_ers_result_t alx_pci_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct net_device *netdev ;
  pci_ers_result_t rc ;
  bool tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  netdev = alx->dev;
  rc = 3U;
  _dev_info((struct device const *)(& pdev->dev), "pci error detected\n");
  rtnl_lock();
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    netif_device_detach(netdev);
    alx_halt(alx);
  } else {
  }
  if (state == 3U) {
    rc = 4U;
  } else {
    pci_disable_device(pdev);
  }
  rtnl_unlock();
  return (rc);
}
}
static pci_ers_result_t alx_pci_error_slot_reset(struct pci_dev *pdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  pci_ers_result_t rc ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  rc = 4U;
  _dev_info((struct device const *)(& pdev->dev), "pci error slot reset\n");
  rtnl_lock();
  tmp___0 = pci_enable_device(pdev);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& pdev->dev), "Failed to re-enable PCI device after reset\n");
    goto out;
  } else {
  }
  pci_set_master(pdev);
  alx_reset_pcie(hw);
  tmp___1 = alx_reset_mac(hw);
  if (tmp___1 == 0) {
    rc = 5U;
  } else {
  }
  out:
  pci_cleanup_aer_uncorrect_error_status(pdev);
  rtnl_unlock();
  return (rc);
}
}
static void alx_pci_error_resume(struct pci_dev *pdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct net_device *netdev ;
  bool tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  alx = (struct alx_priv *)tmp;
  netdev = alx->dev;
  _dev_info((struct device const *)(& pdev->dev), "pci error resume\n");
  rtnl_lock();
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    alx_activate(alx);
    netif_device_attach(netdev);
  } else {
  }
  rtnl_unlock();
  return;
}
}
static struct pci_error_handlers const alx_err_handlers = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& alx_pci_error_detected),
    0, 0, & alx_pci_error_slot_reset, 0, & alx_pci_error_resume};
static struct pci_device_id const alx_pci_tbl[6U] = { {6505U, 4241U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {6505U, 57489U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {6505U, 4240U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {6505U, 4257U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6505U, 4256U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
static struct pci_driver alx_driver =
     {{0, 0}, (char const *)(& alx_drv_name), (struct pci_device_id const *)(& alx_pci_tbl),
    & alx_probe, & alx_remove, 0, 0, 0, 0, 0, 0, & alx_err_handlers, {0, 0, 0, 0,
                                                                      (_Bool)0, 0,
                                                                      0, 0, 0, 0,
                                                                      0, 0, 0, 0,
                                                                      & alx_pm_ops,
                                                                      0}, {{{{{{0}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                           {0, 0}}};
static int alx_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv___pci_register_driver_53(& alx_driver, & __this_module, "alx");
  return (tmp);
}
}
static void alx_driver_exit(void)
{
  {
  ldv_pci_unregister_driver_54(& alx_driver);
  return;
}
}
struct pci_device_id const __mod_pci__alx_pci_tbl_device_table[6U] ;
int ldv_retval_20 ;
extern int ldv_resume_noirq_8(void) ;
extern int ldv_restore_noirq_8(void) ;
extern int ldv_suspend_7(void) ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_shutdown_6(void) ;
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
extern int ldv_ndo_init_9(void) ;
extern int ldv_suspend_noirq_8(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_probe_7(void) ;
int ldv_retval_8 ;
extern int ldv_release_7(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
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
int ldv_retval_10 ;
int ldv_retval_9 ;
extern int ldv_ndo_uninit_9(void) ;
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
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_53727;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_53727;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_53727;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_53727;
  default:
  ldv_stop();
  }
  ldv_53727: ;
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
void activate_work_4(struct work_struct *work , int state )
{
  {
  if (ldv_work_4_0 == 0) {
    ldv_work_struct_4_0 = work;
    ldv_work_4_0 = state;
    return;
  } else {
  }
  if (ldv_work_4_1 == 0) {
    ldv_work_struct_4_1 = work;
    ldv_work_4_1 = state;
    return;
  } else {
  }
  if (ldv_work_4_2 == 0) {
    ldv_work_struct_4_2 = work;
    ldv_work_4_2 = state;
    return;
  } else {
  }
  if (ldv_work_4_3 == 0) {
    ldv_work_struct_4_3 = work;
    ldv_work_4_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_pci_error_handlers_7(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  alx_err_handlers_group0 = (struct pci_dev *)tmp;
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
  if ((unsigned long )handler == (unsigned long )(& alx_intr_msi)) {
    return (1);
  } else {
  }
  return (0);
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
void call_and_disable_all_4(int state )
{
  {
  if (ldv_work_4_0 == state) {
    call_and_disable_work_4(ldv_work_struct_4_0);
  } else {
  }
  if (ldv_work_4_1 == state) {
    call_and_disable_work_4(ldv_work_struct_4_1);
  } else {
  }
  if (ldv_work_4_2 == state) {
    call_and_disable_work_4(ldv_work_struct_4_2);
  } else {
  }
  if (ldv_work_4_3 == state) {
    call_and_disable_work_4(ldv_work_struct_4_3);
  } else {
  }
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
  goto ldv_53763;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_53763;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_53763;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_53763;
  default:
  ldv_stop();
  }
  ldv_53763: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& alx_intr_legacy)) {
    return (1);
  } else {
  }
  return (0);
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    alx_link_check(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    alx_link_check(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    alx_link_check(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    alx_link_check(work);
    ldv_work_3_3 = 1;
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
void ldv_net_device_ops_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  alx_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 3 || ldv_work_4_0 == 2) && (unsigned long )ldv_work_struct_4_0 == (unsigned long )work) {
    ldv_work_4_0 = 1;
  } else {
  }
  if ((ldv_work_4_1 == 3 || ldv_work_4_1 == 2) && (unsigned long )ldv_work_struct_4_1 == (unsigned long )work) {
    ldv_work_4_1 = 1;
  } else {
  }
  if ((ldv_work_4_2 == 3 || ldv_work_4_2 == 2) && (unsigned long )ldv_work_struct_4_2 == (unsigned long )work) {
    ldv_work_4_2 = 1;
  } else {
  }
  if ((ldv_work_4_3 == 3 || ldv_work_4_3 == 2) && (unsigned long )ldv_work_struct_4_3 == (unsigned long )work) {
    ldv_work_4_3 = 1;
  } else {
  }
  return;
}
}
void work_init_4(void)
{
  {
  ldv_work_4_0 = 0;
  ldv_work_4_1 = 0;
  ldv_work_4_2 = 0;
  ldv_work_4_3 = 0;
  return;
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
    alx_link_check(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_53796;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    alx_link_check(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_53796;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    alx_link_check(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_53796;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    alx_link_check(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_53796;
  default:
  ldv_stop();
  }
  ldv_53796: ;
  return;
}
}
void ldv_dev_pm_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  alx_pm_ops_group1 = (struct device *)tmp;
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
      irq_retval = alx_intr_msi(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_53815;
    default:
    ldv_stop();
    }
    ldv_53815: ;
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
void invoke_work_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_4_0 == 2 || ldv_work_4_0 == 3) {
    ldv_work_4_0 = 4;
    alx_reset(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_53829;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    alx_reset(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_53829;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    alx_reset(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_53829;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    alx_reset(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_53829;
  default:
  ldv_stop();
  }
  ldv_53829: ;
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
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    alx_reset(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    alx_reset(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    alx_reset(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    alx_reset(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
  return;
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
      irq_retval = alx_intr_legacy(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_53849;
    default:
    ldv_stop();
    }
    ldv_53849: ;
  } else {
  }
  return (state);
}
}
void ldv_pci_driver_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  alx_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_5(void) ;
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  enum pci_channel_state ldvarg1 ;
  struct ifreq *ldvarg8 ;
  void *tmp___0 ;
  int ldvarg7 ;
  netdev_features_t ldvarg4 ;
  void *ldvarg3 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg5 ;
  void *tmp___2 ;
  struct rtnl_link_stats64 *ldvarg2 ;
  void *tmp___3 ;
  int ldvarg6 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(40UL);
  ldvarg8 = (struct ifreq *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg3 = tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg5 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_init_zalloc(184UL);
  ldvarg2 = (struct rtnl_link_stats64 *)tmp___3;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  work_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_53946:
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = alx_probe(alx_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_53880;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      alx_remove(alx_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_53880;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      ldv_shutdown_6();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_53880;
    default:
    ldv_stop();
    }
    ldv_53880: ;
  } else {
  }
  goto ldv_53884;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_53884;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      alx_pci_error_slot_reset(alx_err_handlers_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      alx_pci_error_slot_reset(alx_err_handlers_group0);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      alx_pci_error_slot_reset(alx_err_handlers_group0);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_53888;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      alx_pci_error_detected(alx_err_handlers_group0, (pci_channel_state_t )ldvarg1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      alx_pci_error_detected(alx_err_handlers_group0, (pci_channel_state_t )ldvarg1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      alx_pci_error_detected(alx_err_handlers_group0, (pci_channel_state_t )ldvarg1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_53888;
    case 2: ;
    if (ldv_state_variable_7 == 3) {
      alx_pci_error_resume(alx_err_handlers_group0);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_53888;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      ldv_suspend_7();
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_53888;
    case 4: ;
    if (ldv_state_variable_7 == 3) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_53888;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      ldv_probe_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_53888;
    default:
    ldv_stop();
    }
    ldv_53888: ;
  } else {
  }
  goto ldv_53884;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_9 == 3) {
      alx_stop(alx_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      alx_set_rx_mode(alx_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_set_rx_mode(alx_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_set_rx_mode(alx_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      eth_validate_addr(alx_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      eth_validate_addr(alx_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      eth_validate_addr(alx_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      alx_ioctl(alx_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_ioctl(alx_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_ioctl(alx_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 4: ;
    if (ldv_state_variable_9 == 1) {
      alx_poll_controller(alx_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_poll_controller(alx_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_poll_controller(alx_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 5: ;
    if (ldv_state_variable_9 == 3) {
      alx_change_mtu(alx_netdev_ops_group1, ldvarg6);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_change_mtu(alx_netdev_ops_group1, ldvarg6);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 6: ;
    if (ldv_state_variable_9 == 2) {
      ldv_retval_2 = alx_open(alx_netdev_ops_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 3;
      } else {
      }
    } else {
    }
    goto ldv_53897;
    case 7: ;
    if (ldv_state_variable_9 == 3) {
      alx_start_xmit(ldvarg5, alx_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    goto ldv_53897;
    case 8: ;
    if (ldv_state_variable_9 == 1) {
      alx_fix_features(alx_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_fix_features(alx_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_fix_features(alx_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 9: ;
    if (ldv_state_variable_9 == 1) {
      alx_set_mac_address(alx_netdev_ops_group1, ldvarg3);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_set_mac_address(alx_netdev_ops_group1, ldvarg3);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_set_mac_address(alx_netdev_ops_group1, ldvarg3);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 10: ;
    if (ldv_state_variable_9 == 1) {
      alx_get_stats64(alx_netdev_ops_group1, ldvarg2);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_get_stats64(alx_netdev_ops_group1, ldvarg2);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_get_stats64(alx_netdev_ops_group1, ldvarg2);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 11: ;
    if (ldv_state_variable_9 == 1) {
      alx_tx_timeout(alx_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      alx_tx_timeout(alx_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      alx_tx_timeout(alx_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_53897;
    case 12: ;
    if (ldv_state_variable_9 == 2) {
      ldv_ndo_uninit_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_53897;
    case 13: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_1 = ldv_ndo_init_9();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_53897;
    default:
    ldv_stop();
    }
    ldv_53897: ;
  } else {
  }
  goto ldv_53884;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_53884;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_8 == 14) {
      ldv_retval_21 = alx_resume(alx_pm_ops_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_20 = alx_suspend(alx_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_8 = 3;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 2: ;
    if (ldv_state_variable_8 == 13) {
      ldv_retval_19 = alx_resume(alx_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 3: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_18 = alx_suspend(alx_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_8 = 4;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 4: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_17 = alx_suspend(alx_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_8 = 5;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 5: ;
    if (ldv_state_variable_8 == 12) {
      ldv_retval_16 = alx_resume(alx_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_8 = 15;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 6: ;
    if (ldv_state_variable_8 == 3) {
      ldv_retval_15 = ldv_suspend_late_8();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_8 = 6;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 7: ;
    if (ldv_state_variable_8 == 9) {
      ldv_retval_14 = ldv_restore_early_8();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_8 = 13;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 8: ;
    if (ldv_state_variable_8 == 6) {
      ldv_retval_13 = ldv_resume_early_8();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_8 = 12;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 9: ;
    if (ldv_state_variable_8 == 11) {
      ldv_retval_12 = ldv_thaw_early_8();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_8 = 14;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 10: ;
    if (ldv_state_variable_8 == 7) {
      ldv_retval_11 = ldv_resume_noirq_8();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_8 = 12;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 11: ;
    if (ldv_state_variable_8 == 5) {
      ldv_retval_10 = ldv_freeze_noirq_8();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_8 = 10;
      } else {
      }
    } else {
    }
    goto ldv_53915;
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
    goto ldv_53915;
    case 13: ;
    if (ldv_state_variable_8 == 5) {
      ldv_retval_8 = ldv_freeze_late_8();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_8 = 11;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 14: ;
    if (ldv_state_variable_8 == 10) {
      ldv_retval_7 = ldv_thaw_noirq_8();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_8 = 14;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 15: ;
    if (ldv_state_variable_8 == 4) {
      ldv_retval_6 = ldv_poweroff_noirq_8();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_8 = 8;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 16: ;
    if (ldv_state_variable_8 == 4) {
      ldv_retval_5 = ldv_poweroff_late_8();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_8 = 9;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 17: ;
    if (ldv_state_variable_8 == 8) {
      ldv_retval_4 = ldv_restore_noirq_8();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_8 = 13;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 18: ;
    if (ldv_state_variable_8 == 3) {
      ldv_retval_3 = ldv_suspend_noirq_8();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_8 = 7;
      } else {
      }
    } else {
    }
    goto ldv_53915;
    case 19: ;
    if (ldv_state_variable_8 == 15) {
      ldv_complete_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_53915;
    default:
    ldv_stop();
    }
    ldv_53915: ;
  } else {
  }
  goto ldv_53884;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_53884;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    invoke_work_4();
  } else {
  }
  goto ldv_53884;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      alx_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_53941;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_22 = alx_driver_init();
      if (ldv_retval_22 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_ethtool_ops_5();
        ldv_state_variable_7 = 1;
        ldv_initialize_pci_error_handlers_7();
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
    goto ldv_53941;
    default:
    ldv_stop();
    }
    ldv_53941: ;
  } else {
  }
  goto ldv_53884;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_53884;
  default:
  ldv_stop();
  }
  ldv_53884: ;
  goto ldv_53946;
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
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
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
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags )
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
struct sk_buff *ldv___netdev_alloc_skb_43(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
__inline static int ldv_request_irq_44(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
__inline static int ldv_request_irq_45(unsigned int irq , irqreturn_t (*handler)(int ,
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
void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_register_netdev_47(struct net_device *dev )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_9 = 1;
  ldv_net_device_ops_9();
  return (ldv_func_res);
}
}
void ldv_free_netdev_48(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
bool ldv_cancel_work_sync_49(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_50(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_51(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
void ldv_free_netdev_52(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
int ldv___pci_register_driver_53(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_pci_driver_6();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_54(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_6 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
bool ldv_queue_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_87(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_86(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_95(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_112(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_103(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_111(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_105(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_101(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_109(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_106(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_107(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_108(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
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
__inline static bool alx_hw_giga(struct alx_hw *hw )
{
  {
  return (((int )(hw->pdev)->device & 1) != 0);
}
}
void alx_cfg_mac_flowcontrol(struct alx_hw *hw , u8 fc ) ;
static char const alx_gstrings_stats[50U][32U] =
  { { 'r', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'b',
            'c', 'a', 's', 't',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'm',
            'c', 'a', 's', 't',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'p',
            'a', 'u', 's', 'e',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 'r', 'x', '_', 'c',
            't', 'r', 'l', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', 'f',
            'c', 's', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'l',
            'e', 'n', 'g', 't',
            'h', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 'r', 'x', '_', 'b',
            'y', 't', 'e', 's',
            '\000'},
   { 'r', 'x', '_', 'r',
            'u', 'n', 't', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', 'f',
            'r', 'a', 'g', 'm',
            'e', 'n', 't', 's',
            '\000'},
   { 'r', 'x', '_', '6',
            '4', 'B', '_', 'o',
            'r', '_', 'l', 'e',
            's', 's', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', '6',
            '5', 'B', '_', 't',
            'o', '_', '1', '2',
            '7', 'B', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', '1',
            '2', '8', 'B', '_',
            't', 'o', '_', '2',
            '5', '5', 'B', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', '2',
            '5', '6', 'B', '_',
            't', 'o', '_', '5',
            '1', '1', 'B', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', '5',
            '1', '2', 'B', '_',
            't', 'o', '_', '1',
            '0', '2', '3', 'B',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 'r', 'x', '_', '1',
            '0', '2', '4', 'B',
            '_', 't', 'o', '_',
            '1', '5', '1', '8',
            'B', '_', 'p', 'a',
            'c', 'k', 'e', 't',
            's', '\000'},
   { 'r', 'x', '_', '1',
            '5', '1', '9', 'B',
            '_', 't', 'o', '_',
            'm', 't', 'u', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', 'o',
            'v', 'e', 'r', 's',
            'i', 'z', 'e', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 'r', 'x', '_', 'r',
            'x', 'f', '_', 'o',
            'v', '_', 'd', 'r',
            'o', 'p', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'r',
            'r', 'd', '_', 'o',
            'v', '_', 'd', 'r',
            'o', 'p', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'a',
            'l', 'i', 'g', 'n',
            '_', 'e', 'r', 'r',
            'o', 'r', 's', '\000'},
   { 'r', 'x', '_', 'b',
            'c', 'a', 's', 't',
            '_', 'b', 'y', 't',
            'e', 's', '\000'},
   { 'r', 'x', '_', 'm',
            'c', 'a', 's', 't',
            '_', 'b', 'y', 't',
            'e', 's', '\000'},
   { 'r', 'x', '_', 'a',
            'd', 'd', 'r', 'e',
            's', 's', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 't', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', 'b',
            'c', 'a', 's', 't',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'm',
            'c', 'a', 's', 't',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'p',
            'a', 'u', 's', 'e',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'e',
            'x', 'c', '_', 'd',
            'e', 'f', 'e', 'r',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'c',
            't', 'r', 'l', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 't', 'x', '_', 'd',
            'e', 'f', 'e', 'r',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'b',
            'y', 't', 'e', 's',
            '\000'},
   { 't', 'x', '_', '6',
            '4', 'B', '_', 'o',
            'r', '_', 'l', 'e',
            's', 's', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', '6',
            '5', 'B', '_', 't',
            'o', '_', '1', '2',
            '7', 'B', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', '1',
            '2', '8', 'B', '_',
            't', 'o', '_', '2',
            '5', '5', 'B', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 't', 'x', '_', '2',
            '5', '6', 'B', '_',
            't', 'o', '_', '5',
            '1', '1', 'B', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 't', 'x', '_', '5',
            '1', '2', 'B', '_',
            't', 'o', '_', '1',
            '0', '2', '3', 'B',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', '1',
            '0', '2', '4', 'B',
            '_', 't', 'o', '_',
            '1', '5', '1', '8',
            'B', '_', 'p', 'a',
            'c', 'k', 'e', 't',
            's', '\000'},
   { 't', 'x', '_', '1',
            '5', '1', '9', 'B',
            '_', 't', 'o', '_',
            'm', 't', 'u', '_',
            'p', 'a', 'c', 'k',
            'e', 't', 's', '\000'},
   { 't', 'x', '_', 's',
            'i', 'n', 'g', 'l',
            'e', '_', 'c', 'o',
            'l', 'l', 'i', 's',
            'i', 'o', 'n', '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            'p', 'l', 'e', '_',
            'c', 'o', 'l', 'l',
            'i', 's', 'i', 'o',
            'n', 's', '\000'},
   { 't', 'x', '_', 'l',
            'a', 't', 'e', '_',
            'c', 'o', 'l', 'l',
            'i', 's', 'i', 'o',
            'n', '\000'},
   { 't', 'x', '_', 'a',
            'b', 'o', 'r', 't',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', '\000'},
   { 't', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            'r', 'u', 'n', '\000'},
   { 't', 'x', '_', 't',
            'r', 'd', '_', 'e',
            'o', 'p', '\000'},
   { 't', 'x', '_', 'l',
            'e', 'n', 'g', 't',
            'h', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 't', 'x', '_', 't',
            'r', 'u', 'n', 'c',
            '_', 'p', 'a', 'c',
            'k', 'e', 't', 's',
            '\000'},
   { 't', 'x', '_', 'b',
            'c', 'a', 's', 't',
            '_', 'b', 'y', 't',
            'e', 's', '\000'},
   { 't', 'x', '_', 'm',
            'c', 'a', 's', 't',
            '_', 'b', 'y', 't',
            'e', 's', '\000'},
   { 't', 'x', '_', 'u',
            'p', 'd', 'a', 't',
            'e', '\000'}};
static u32 alx_get_supported_speeds(struct alx_hw *hw )
{
  u32 supported ;
  bool tmp ;
  {
  supported = 15U;
  tmp = alx_hw_giga(hw);
  if ((int )tmp) {
    supported = supported | 32U;
  } else {
  }
  return (supported);
}
}
static int alx_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  bool tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  ecmd->supported = 24768U;
  tmp___0 = alx_hw_giga(hw);
  if ((int )tmp___0) {
    ecmd->supported = ecmd->supported | 32U;
  } else {
  }
  tmp___1 = alx_get_supported_speeds(hw);
  ecmd->supported = ecmd->supported | tmp___1;
  ecmd->advertising = 128U;
  if ((hw->adv_cfg & 64U) != 0U) {
    ecmd->advertising = ecmd->advertising | hw->adv_cfg;
  } else {
  }
  ecmd->port = 0U;
  ecmd->phy_address = 0U;
  if ((hw->adv_cfg & 64U) != 0U) {
    ecmd->autoneg = 1U;
  } else {
    ecmd->autoneg = 0U;
  }
  ecmd->transceiver = 0U;
  if (((int )hw->flowctrl & 4) != 0 && (hw->adv_cfg & 64U) != 0U) {
    if ((int )hw->flowctrl & 1) {
      ecmd->advertising = ecmd->advertising | 8192U;
      if (((int )hw->flowctrl & 2) == 0) {
        ecmd->advertising = ecmd->advertising | 16384U;
      } else {
      }
    } else
    if (((int )hw->flowctrl & 2) != 0) {
      ecmd->advertising = ecmd->advertising | 16384U;
    } else {
    }
  } else {
  }
  ethtool_cmd_speed_set(ecmd, (__u32 )hw->link_speed);
  ecmd->duplex = hw->duplex;
  return (0);
}
}
static int alx_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  u32 adv_cfg ;
  int tmp___0 ;
  long tmp___1 ;
  u32 tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  tmp___0 = rtnl_is_locked();
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    printk("\vRTNL: assertion failed at %s (%d)\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/ethtool.c",
           177);
    dump_stack();
  } else {
  }
  if ((unsigned int )ecmd->autoneg == 1U) {
    tmp___2 = alx_get_supported_speeds(hw);
    if ((ecmd->advertising & ~ tmp___2) != 0U) {
      return (-22);
    } else {
    }
    adv_cfg = ecmd->advertising | 64U;
  } else {
    tmp___3 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
    adv_cfg = alx_speed_to_ethadv((int )tmp___3, (int )ecmd->duplex);
    if (adv_cfg == 0U || adv_cfg == 32U) {
      return (-22);
    } else {
    }
  }
  hw->adv_cfg = adv_cfg;
  tmp___4 = alx_setup_speed_duplex(hw, adv_cfg, (int )hw->flowctrl);
  return (tmp___4);
}
}
static void alx_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  pause->autoneg = (__u32 )(((int )hw->flowctrl & 4) != 0 && (hw->adv_cfg & 64U) != 0U);
  pause->tx_pause = ((int )hw->flowctrl & 2) != 0;
  pause->rx_pause = (__u32 )hw->flowctrl & 1U;
  return;
}
}
static int alx_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  int err ;
  bool reconfig_phy ;
  u8 fc ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  err = 0;
  reconfig_phy = 0;
  fc = 0U;
  if (pause->tx_pause != 0U) {
    fc = (u8 )((unsigned int )fc | 2U);
  } else {
  }
  if (pause->rx_pause != 0U) {
    fc = (u8 )((unsigned int )fc | 1U);
  } else {
  }
  if (pause->autoneg != 0U) {
    fc = (u8 )((unsigned int )fc | 4U);
  } else {
  }
  tmp___0 = rtnl_is_locked();
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    printk("\vRTNL: assertion failed at %s (%d)\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/ethtool.c",
           224);
    dump_stack();
  } else {
  }
  if ((hw->adv_cfg & 64U) != 0U) {
    if ((((int )hw->flowctrl ^ (int )fc) & 4) == 0) {
      reconfig_phy = 1;
    } else {
    }
    if ((((int )hw->flowctrl & (int )fc) & 4) != 0 && (((int )hw->flowctrl ^ (int )fc) & 3) != 0) {
      reconfig_phy = 1;
    } else {
    }
  } else {
  }
  if ((int )reconfig_phy) {
    err = alx_setup_speed_duplex(hw, hw->adv_cfg, (int )fc);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if ((((int )hw->flowctrl ^ (int )fc) & 3) != 0) {
    alx_cfg_mac_flowcontrol(hw, (int )fc);
  } else {
  }
  hw->flowctrl = fc;
  return (0);
}
}
static u32 alx_get_msglevel(struct net_device *netdev )
{
  struct alx_priv *alx ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  return ((u32 )alx->msg_enable);
}
}
static void alx_set_msglevel(struct net_device *netdev , u32 data )
{
  struct alx_priv *alx ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  alx->msg_enable = (u16 )data;
  return;
}
}
static void alx_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *estats ,
                                  u64 *data )
{
  struct alx_priv *alx ;
  void *tmp ;
  struct alx_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  alx = (struct alx_priv *)tmp;
  hw = & alx->hw;
  spin_lock(& alx->stats_lock);
  alx_update_hw_stats(hw);
  memcpy((void *)data, (void const *)(& hw->stats.rx_ok), 400UL);
  spin_unlock(& alx->stats_lock);
  return;
}
}
static void alx_get_strings(struct net_device *netdev , u32 stringset , u8 *buf )
{
  int __ret_warn_on ;
  long tmp ;
  {
  switch (stringset) {
  case 1U:
  memcpy((void *)buf, (void const *)(& alx_gstrings_stats), 1600UL);
  goto ldv_50848;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10493/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/atheros/alx/ethtool.c",
                       287);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_50848;
  }
  ldv_50848: ;
  return;
}
}
static int alx_get_sset_count(struct net_device *netdev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (50);
  default: ;
  return (-22);
  }
}
}
struct ethtool_ops const alx_ethtool_ops =
     {& alx_get_settings, & alx_set_settings, 0, 0, 0, 0, 0, & alx_get_msglevel, & alx_set_msglevel,
    0, & ethtool_op_get_link, 0, 0, 0, 0, 0, 0, 0, & alx_get_pauseparam, & alx_set_pauseparam,
    0, & alx_get_strings, 0, & alx_get_ethtool_stats, 0, 0, 0, 0, & alx_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void ldv_initialize_ethtool_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(3008UL);
  alx_ethtool_ops_group1 = (struct net_device *)tmp;
  tmp___0 = ldv_init_zalloc(44UL);
  alx_ethtool_ops_group0 = (struct ethtool_cmd *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  alx_ethtool_ops_group2 = (struct ethtool_pauseparam *)tmp___1;
  return;
}
}
void ldv_main_exported_5(void)
{
  u8 *ldvarg9 ;
  void *tmp ;
  struct ethtool_stats *ldvarg12 ;
  void *tmp___0 ;
  u32 ldvarg10 ;
  u32 ldvarg13 ;
  int ldvarg14 ;
  u64 *ldvarg11 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg9 = (u8 *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg12 = (struct ethtool_stats *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg11 = (u64 *)tmp___1;
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_sset_count(alx_ethtool_ops_group1, ldvarg14);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_settings(alx_ethtool_ops_group1, alx_ethtool_ops_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    alx_set_msglevel(alx_ethtool_ops_group1, ldvarg13);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    alx_set_settings(alx_ethtool_ops_group1, alx_ethtool_ops_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    alx_set_pauseparam(alx_ethtool_ops_group1, alx_ethtool_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_ethtool_stats(alx_ethtool_ops_group1, ldvarg12, ldvarg11);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 6: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_strings(alx_ethtool_ops_group1, ldvarg10, ldvarg9);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 7: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_msglevel(alx_ethtool_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 8: ;
  if (ldv_state_variable_5 == 1) {
    alx_get_pauseparam(alx_ethtool_ops_group1, alx_ethtool_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  case 9: ;
  if (ldv_state_variable_5 == 1) {
    ethtool_op_get_link(alx_ethtool_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_50874;
  default:
  ldv_stop();
  }
  ldv_50874: ;
  return;
}
}
bool ldv_queue_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_86(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_87(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_95(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_101(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_103(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_105(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_106(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_107(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_108(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_109(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_111(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
void *ldv_kmem_cache_alloc_112(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
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
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
bool ldv_queue_work_on_132(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_134(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_133(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_136(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_135(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_142(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_150(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_158(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_152(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_148(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_156(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_157(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_153(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_154(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_155(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void __const_udelay(unsigned long ) ;
__inline static u32 ethtool_adv_to_mii_adv_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((int )ethadv & 1) {
    result = result | 32U;
  } else {
  }
  if ((ethadv & 2U) != 0U) {
    result = result | 64U;
  } else {
  }
  if ((ethadv & 4U) != 0U) {
    result = result | 128U;
  } else {
  }
  if ((ethadv & 8U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 8192U) != 0U) {
    result = result | 1024U;
  } else {
  }
  if ((ethadv & 16384U) != 0U) {
    result = result | 2048U;
  } else {
  }
  return (result);
}
}
__inline static u32 ethtool_adv_to_mii_ctrl1000_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((ethadv & 16U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 32U) != 0U) {
    result = result | 512U;
  } else {
  }
  return (result);
}
}
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_le16(u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le64(u64 val , void *p )
{
  {
  *((__le64 *)p) = val;
  return;
}
}
extern void __bad_unaligned_access_size(void) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
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
extern int pcie_get_readrq(struct pci_dev * ) ;
extern int pcie_set_readrq(struct pci_dev * , int ) ;
__inline static bool alx_hw_with_cr(struct alx_hw *hw )
{
  {
  return (((int )(hw->pdev)->revision & 1) != 0);
}
}
__inline static bool alx_is_rev_a(u8 rev )
{
  {
  return ((bool )((unsigned int )rev == 0U || (unsigned int )rev == 1U));
}
}
static int alx_wait_mdio_idle(struct alx_hw *hw )
{
  u32 val ;
  int i ;
  {
  i = 0;
  goto ldv_45891;
  ldv_45890:
  val = alx_read_mem32(hw, 5140U);
  if (((unsigned long )val & 134217728UL) == 0UL) {
    return (0);
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_45891: ;
  if (i <= 119) {
    goto ldv_45890;
  } else {
  }
  return (-110);
}
}
static int alx_read_phy_core(struct alx_hw *hw , bool ext , u8 dev , u16 reg , u16 *phy_data )
{
  u32 val ;
  u32 clk_sel ;
  int err ;
  {
  *phy_data = 0U;
  clk_sel = hw->link_speed != -1 ? 0U : 7U;
  if ((int )ext) {
    val = (u32 )(((int )dev << 16) | (int )reg);
    alx_write_mem32(hw, 5192U, val);
    val = (clk_sel << 24) | 1088421888U;
  } else {
    val = ((clk_sel << 24) | (u32 )((int )reg << 16)) | 14680064U;
  }
  alx_write_mem32(hw, 5140U, val);
  err = alx_wait_mdio_idle(hw);
  if (err != 0) {
    return (err);
  } else {
  }
  val = alx_read_mem32(hw, 5140U);
  *phy_data = (u16 )val;
  return (0);
}
}
static int alx_write_phy_core(struct alx_hw *hw , bool ext , u8 dev , u16 reg , u16 phy_data )
{
  u32 val ;
  u32 clk_sel ;
  int tmp ;
  {
  clk_sel = hw->link_speed != -1 ? 0U : 7U;
  if ((int )ext) {
    val = (u32 )(((int )dev << 16) | (int )reg);
    alx_write_mem32(hw, 5192U, val);
    val = ((clk_sel << 24) | (u32 )phy_data) | 1086324736U;
  } else {
    val = (((clk_sel << 24) | (u32 )((int )reg << 16)) | (u32 )phy_data) | 12582912U;
  }
  alx_write_mem32(hw, 5140U, val);
  tmp = alx_wait_mdio_idle(hw);
  return (tmp);
}
}
static int __alx_read_phy_reg(struct alx_hw *hw , u16 reg , u16 *phy_data )
{
  int tmp ;
  {
  tmp = alx_read_phy_core(hw, 0, 0, (int )reg, phy_data);
  return (tmp);
}
}
static int __alx_write_phy_reg(struct alx_hw *hw , u16 reg , u16 phy_data )
{
  int tmp ;
  {
  tmp = alx_write_phy_core(hw, 0, 0, (int )reg, (int )phy_data);
  return (tmp);
}
}
static int __alx_read_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 *pdata )
{
  int tmp ;
  {
  tmp = alx_read_phy_core(hw, 1, (int )dev, (int )reg, pdata);
  return (tmp);
}
}
static int __alx_write_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 data )
{
  int tmp ;
  {
  tmp = alx_write_phy_core(hw, 1, (int )dev, (int )reg, (int )data);
  return (tmp);
}
}
static int __alx_read_phy_dbg(struct alx_hw *hw , u16 reg , u16 *pdata )
{
  int err ;
  int tmp ;
  {
  err = __alx_write_phy_reg(hw, 29, (int )reg);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = __alx_read_phy_reg(hw, 30, pdata);
  return (tmp);
}
}
static int __alx_write_phy_dbg(struct alx_hw *hw , u16 reg , u16 data )
{
  int err ;
  int tmp ;
  {
  err = __alx_write_phy_reg(hw, 29, (int )reg);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = __alx_write_phy_reg(hw, 30, (int )data);
  return (tmp);
}
}
int alx_read_phy_reg(struct alx_hw *hw , u16 reg , u16 *phy_data )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_read_phy_reg(hw, (int )reg, phy_data);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
int alx_write_phy_reg(struct alx_hw *hw , u16 reg , u16 phy_data )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_write_phy_reg(hw, (int )reg, (int )phy_data);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
int alx_read_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 *pdata )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_read_phy_ext(hw, (int )dev, (int )reg, pdata);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
int alx_write_phy_ext(struct alx_hw *hw , u8 dev , u16 reg , u16 data )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_write_phy_ext(hw, (int )dev, (int )reg, (int )data);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
static int alx_read_phy_dbg(struct alx_hw *hw , u16 reg , u16 *pdata )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_read_phy_dbg(hw, (int )reg, pdata);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
static int alx_write_phy_dbg(struct alx_hw *hw , u16 reg , u16 data )
{
  int err ;
  {
  spin_lock(& hw->mdio_lock);
  err = __alx_write_phy_dbg(hw, (int )reg, (int )data);
  spin_unlock(& hw->mdio_lock);
  return (err);
}
}
static u16 alx_get_phy_config(struct alx_hw *hw )
{
  u32 val ;
  u16 phy_val ;
  {
  val = alx_read_mem32(hw, 5132U);
  if (((unsigned long )val & 1UL) == 0UL) {
    return (0U);
  } else {
  }
  val = alx_read_mem32(hw, 6148U);
  val = (val >> 21) & 255U;
  if (val == 0U) {
    return (0U);
  } else {
  }
  alx_read_phy_reg(hw, 29, & phy_val);
  if ((unsigned int )phy_val == 63U) {
    return ((u16 )val);
  } else {
  }
  return (0U);
}
}
static bool alx_wait_reg(struct alx_hw *hw , u32 reg , u32 wait , u32 *val )
{
  u32 read ;
  int i ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  i = 0;
  goto ldv_46002;
  ldv_46001:
  read = alx_read_mem32(hw, reg);
  if ((read & wait) == 0U) {
    if ((unsigned long )val != (unsigned long )((u32 *)0U)) {
      *val = read;
    } else {
    }
    return (1);
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_45999;
    ldv_45998:
    __const_udelay(4295000UL);
    ldv_45999:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_45998;
    } else {
    }
  }
  i = i + 1;
  ldv_46002: ;
  if (i <= 99) {
    goto ldv_46001;
  } else {
  }
  return (0);
}
}
static bool alx_read_macaddr(struct alx_hw *hw , u8 *addr )
{
  u32 mac0 ;
  u32 mac1 ;
  void *__gu_p ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  void *__gu_p___0 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  __u16 tmp___5 ;
  __u16 tmp___6 ;
  bool tmp___7 ;
  {
  mac0 = alx_read_mem32(hw, 5256U);
  mac1 = alx_read_mem32(hw, 5260U);
  __gu_p = (void *)addr + 2U;
  switch (4UL) {
  case 1UL:
  tmp = __fswab32(mac0);
  *((u8 *)__gu_p) = (unsigned char )tmp;
  goto ldv_46012;
  case 2UL:
  tmp___0 = __fswab32(mac0);
  put_unaligned_le16((int )((unsigned short )tmp___0), __gu_p);
  goto ldv_46012;
  case 4UL:
  tmp___1 = __fswab32(mac0);
  put_unaligned_le32(tmp___1, __gu_p);
  goto ldv_46012;
  case 8UL:
  tmp___2 = __fswab32(mac0);
  put_unaligned_le64((unsigned long long )tmp___2, __gu_p);
  goto ldv_46012;
  default:
  __bad_unaligned_access_size();
  goto ldv_46012;
  }
  ldv_46012:
  __gu_p___0 = (void *)addr;
  switch (2UL) {
  case 1UL:
  tmp___3 = __fswab16((int )((__u16 )mac1));
  *((u8 *)__gu_p___0) = (unsigned char )tmp___3;
  goto ldv_46019;
  case 2UL:
  tmp___4 = __fswab16((int )((__u16 )mac1));
  put_unaligned_le16((int )tmp___4, __gu_p___0);
  goto ldv_46019;
  case 4UL:
  tmp___5 = __fswab16((int )((__u16 )mac1));
  put_unaligned_le32((unsigned int )tmp___5, __gu_p___0);
  goto ldv_46019;
  case 8UL:
  tmp___6 = __fswab16((int )((__u16 )mac1));
  put_unaligned_le64((unsigned long long )tmp___6, __gu_p___0);
  goto ldv_46019;
  default:
  __bad_unaligned_access_size();
  goto ldv_46019;
  }
  ldv_46019:
  tmp___7 = is_valid_ether_addr((u8 const *)addr);
  return (tmp___7);
}
}
int alx_get_perm_macaddr(struct alx_hw *hw , u8 *addr )
{
  u32 val ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  {
  tmp = alx_read_macaddr(hw, addr);
  if ((int )tmp) {
    return (0);
  } else {
  }
  tmp___0 = alx_wait_reg(hw, 536U, 6144U, & val);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-5);
  } else {
  }
  alx_write_mem32(hw, 536U, val | 2048U);
  tmp___2 = alx_wait_reg(hw, 536U, 2048U, (u32 *)0U);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (-5);
  } else {
  }
  tmp___4 = alx_read_macaddr(hw, addr);
  if ((int )tmp___4) {
    return (0);
  } else {
  }
  val = alx_read_mem32(hw, 516U);
  if (((unsigned long )val & 1536UL) != 0UL) {
    tmp___5 = alx_wait_reg(hw, 516U, 33U, & val);
    if (tmp___5) {
      tmp___6 = 0;
    } else {
      tmp___6 = 1;
    }
    if (tmp___6) {
      return (-5);
    } else {
    }
    alx_write_mem32(hw, 516U, val | 1U);
    tmp___7 = alx_wait_reg(hw, 516U, 1U, (u32 *)0U);
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      return (-5);
    } else {
    }
    tmp___9 = alx_read_macaddr(hw, addr);
    if ((int )tmp___9) {
      return (0);
    } else {
    }
  } else {
  }
  return (-5);
}
}
void alx_set_macaddr(struct alx_hw *hw , u8 const *addr )
{
  u32 val ;
  u32 tmp ;
  __u32 tmp___0 ;
  u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  tmp = get_unaligned_le32((void const *)addr + 2U);
  tmp___0 = __fswab32(tmp);
  val = tmp___0;
  alx_write_mem32(hw, 5256U, val);
  tmp___1 = get_unaligned_le16((void const *)addr);
  tmp___2 = __fswab16((int )tmp___1);
  val = (u32 )tmp___2;
  alx_write_mem32(hw, 5260U, val);
  return;
}
}
static void alx_reset_osc(struct alx_hw *hw , u8 rev )
{
  u32 val ;
  u32 val2 ;
  bool tmp ;
  {
  val = alx_read_mem32(hw, 6604U);
  alx_write_mem32(hw, 6604U, (val & 4294967292U) | 1U);
  val = alx_read_mem32(hw, 6592U);
  if ((unsigned int )rev > 1U) {
    val = val & 4280287231U;
    val = val | 14680064U;
    val = val & 4294967287U;
    alx_write_mem32(hw, 6592U, val);
    alx_write_mem32(hw, 6592U, val | 8U);
    val2 = alx_read_mem32(hw, 6600U);
    val2 = val2 & 4294967294U;
    alx_write_mem32(hw, 6600U, val2);
    alx_write_mem32(hw, 6600U, val2 | 1U);
  } else {
    val = val & 4294967287U;
    tmp = alx_is_rev_a((int )rev);
    if ((int )tmp) {
      val = val & 4294963199U;
    } else {
    }
    alx_write_mem32(hw, 6592U, val | 8U);
    alx_write_mem32(hw, 6592U, val);
  }
  __const_udelay(85900UL);
  return;
}
}
static int alx_stop_mac(struct alx_hw *hw )
{
  u32 rxq ;
  u32 txq ;
  u32 val ;
  u16 i ;
  {
  rxq = alx_read_mem32(hw, 5536U);
  alx_write_mem32(hw, 5536U, rxq & 2147483647U);
  txq = alx_read_mem32(hw, 5520U);
  alx_write_mem32(hw, 5520U, txq & 4294967263U);
  __const_udelay(171800UL);
  hw->rx_ctrl = hw->rx_ctrl & 4294967292U;
  alx_write_mem32(hw, 5248U, hw->rx_ctrl);
  i = 0U;
  goto ldv_46048;
  ldv_46047:
  val = alx_read_mem32(hw, 5136U);
  if (((unsigned long )val & 15UL) == 0UL) {
    return (0);
  } else {
  }
  __const_udelay(42950UL);
  i = (u16 )((int )i + 1);
  ldv_46048: ;
  if ((unsigned int )i <= 49U) {
    goto ldv_46047;
  } else {
  }
  return (-110);
}
}
int alx_reset_mac(struct alx_hw *hw )
{
  u32 val ;
  u32 pmctrl ;
  int i ;
  int ret ;
  u8 rev ;
  bool a_cr ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  pmctrl = 0U;
  tmp = alx_hw_revision(hw);
  rev = (u8 )tmp;
  tmp___0 = alx_is_rev_a((int )rev);
  if ((int )tmp___0) {
    tmp___1 = alx_hw_with_cr(hw);
    if ((int )tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  a_cr = (bool )tmp___2;
  alx_write_mem32(hw, 144U, 4294967295U);
  alx_write_mem32(hw, 5636U, 0U);
  alx_write_mem32(hw, 5632U, 2147483648U);
  ret = alx_stop_mac(hw);
  if (ret != 0) {
    return (ret);
  } else {
  }
  alx_write_mem32(hw, 5600U, 1U);
  if ((int )a_cr) {
    pmctrl = alx_read_mem32(hw, 4856U);
    if (((unsigned long )pmctrl & 4104UL) != 0UL) {
      alx_write_mem32(hw, 4856U, pmctrl & 4294963191U);
    } else {
    }
  } else {
  }
  val = alx_read_mem32(hw, 5120U);
  alx_write_mem32(hw, 5120U, val | 65U);
  __const_udelay(42950UL);
  i = 0;
  goto ldv_46061;
  ldv_46060:
  val = alx_read_mem32(hw, 5600U);
  if (val == 0U) {
    goto ldv_46059;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_46061: ;
  if (i <= 49) {
    goto ldv_46060;
  } else {
  }
  ldv_46059: ;
  goto ldv_46064;
  ldv_46063:
  val = alx_read_mem32(hw, 5120U);
  if (((unsigned long )val & 1UL) == 0UL) {
    goto ldv_46062;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_46064: ;
  if (i <= 49) {
    goto ldv_46063;
  } else {
  }
  ldv_46062: ;
  if (i == 50) {
    return (-5);
  } else {
  }
  __const_udelay(42950UL);
  if ((int )a_cr) {
    alx_write_mem32(hw, 5120U, val | 4096U);
    if (((unsigned long )pmctrl & 4104UL) != 0UL) {
      alx_write_mem32(hw, 4856U, pmctrl);
    } else {
    }
  } else {
  }
  alx_reset_osc(hw, (int )rev);
  val = alx_read_mem32(hw, 6604U);
  alx_write_mem32(hw, 6604U, (val & 4294967292U) | 1U);
  val = alx_read_mem32(hw, 6592U);
  val = val & 4294967287U;
  tmp___3 = alx_is_rev_a((int )rev);
  if ((int )tmp___3) {
    val = val & 4294963199U;
  } else {
  }
  alx_write_mem32(hw, 6592U, val);
  __const_udelay(85900UL);
  alx_write_mem32(hw, 5248U, hw->rx_ctrl);
  val = alx_read_mem32(hw, 5156U);
  alx_write_mem32(hw, 5156U, val | 393216U);
  return (0);
}
}
void alx_reset_phy(struct alx_hw *hw )
{
  int i ;
  u32 val ;
  u16 phy_val ;
  {
  val = alx_read_mem32(hw, 5132U);
  val = val & 4294811482U;
  val = val | 4096U;
  val = val | 3072U;
  alx_write_mem32(hw, 5132U, val);
  __const_udelay(42950UL);
  alx_write_mem32(hw, 5132U, val | 1U);
  i = 0;
  goto ldv_46072;
  ldv_46071:
  __const_udelay(42950UL);
  i = i + 1;
  ldv_46072: ;
  if (i <= 79) {
    goto ldv_46071;
  } else {
  }
  alx_write_phy_dbg(hw, 41, 4765);
  alx_write_phy_dbg(hw, 4, 48011);
  alx_write_phy_ext(hw, 3, 32866, 3);
  val = alx_read_mem32(hw, 5184U);
  alx_write_mem32(hw, 5184U, val & 4294967294U);
  alx_write_phy_ext(hw, 7, 60, 0);
  alx_write_phy_dbg(hw, 18, 19460);
  alx_write_phy_dbg(hw, 5, 11334);
  alx_write_phy_dbg(hw, 54, 57644);
  alx_write_phy_dbg(hw, 0, 751);
  alx_read_phy_dbg(hw, 61, & phy_val);
  alx_write_phy_dbg(hw, 61, (int )phy_val & 65407);
  alx_write_phy_ext(hw, 7, 32807, 35333);
  alx_write_phy_ext(hw, 7, 32803, 0);
  if ((int )hw->lnk_patch) {
    alx_read_phy_ext(hw, 3, 32771, & phy_val);
    alx_write_phy_ext(hw, 3, 32771, (int )((unsigned int )phy_val | 32768U));
    alx_read_phy_dbg(hw, 61, & phy_val);
    alx_write_phy_dbg(hw, 61, (int )((unsigned int )phy_val | 32768U));
    alx_read_phy_ext(hw, 3, 32773, & phy_val);
    alx_write_phy_ext(hw, 3, 32773, (int )((unsigned int )phy_val | 16384U));
  } else {
  }
  alx_write_phy_reg(hw, 18, 3072);
  return;
}
}
void alx_reset_pcie(struct alx_hw *hw )
{
  u8 rev ;
  int tmp ;
  u32 val ;
  u16 val16 ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp = alx_hw_revision(hw);
  rev = (u8 )tmp;
  pci_read_config_word((struct pci_dev const *)hw->pdev, 4, & val16);
  if (((int )val16 & 7) == 0 || ((int )val16 & 1024) != 0) {
    val16 = (u16 )(((int )((short )val16) & 64504) | 7);
    pci_write_config_word((struct pci_dev const *)hw->pdev, 4, (int )val16);
  } else {
  }
  val = alx_read_mem32(hw, 5280U);
  alx_write_mem32(hw, 5280U, 0U);
  val = alx_read_mem32(hw, 4356U);
  alx_write_mem32(hw, 4356U, val & 4294965247U);
  val = alx_read_mem32(hw, 268U);
  val = val & 4294959087U;
  alx_write_mem32(hw, 268U, val);
  val = alx_read_mem32(hw, 5120U);
  tmp___0 = alx_is_rev_a((int )rev);
  if ((int )tmp___0) {
    tmp___1 = alx_hw_with_cr(hw);
    if ((int )tmp___1) {
      if (((unsigned long )val & 32UL) == 0UL || ((unsigned long )val & 4096UL) == 0UL) {
        alx_write_mem32(hw, 5120U, val | 4128U);
      } else {
      }
    } else {
      goto _L;
    }
  } else
  _L:
  if (((unsigned long )val & 32UL) == 0UL || ((unsigned long )val & 4096UL) != 0UL) {
    alx_write_mem32(hw, 5120U, (val & 4294963167U) | 32U);
  } else {
  }
  alx_enable_aspm(hw, 1, 1);
  __const_udelay(42950UL);
  return;
}
}
void alx_start_mac(struct alx_hw *hw )
{
  u32 mac ;
  u32 txq ;
  u32 rxq ;
  {
  rxq = alx_read_mem32(hw, 5536U);
  alx_write_mem32(hw, 5536U, rxq | 2147483648U);
  txq = alx_read_mem32(hw, 5520U);
  alx_write_mem32(hw, 5520U, txq | 32U);
  mac = hw->rx_ctrl;
  if ((unsigned int )hw->duplex == 1U) {
    mac = mac | 32U;
  } else {
    mac = mac & 4294967263U;
  }
  mac = mac & 4291821567U;
  mac = (hw->link_speed == 1000 ? 2097152U : 1048576U) | mac;
  mac = mac | 3U;
  hw->rx_ctrl = mac;
  alx_write_mem32(hw, 5248U, mac);
  return;
}
}
void alx_cfg_mac_flowcontrol(struct alx_hw *hw , u8 fc )
{
  {
  if ((int )fc & 1) {
    hw->rx_ctrl = hw->rx_ctrl | 8U;
  } else {
    hw->rx_ctrl = hw->rx_ctrl & 4294967287U;
  }
  if (((int )fc & 2) != 0) {
    hw->rx_ctrl = hw->rx_ctrl | 4U;
  } else {
    hw->rx_ctrl = hw->rx_ctrl & 4294967291U;
  }
  alx_write_mem32(hw, 5248U, hw->rx_ctrl);
  return;
}
}
void alx_enable_aspm(struct alx_hw *hw , bool l0s_en , bool l1_en )
{
  u32 pmctrl ;
  u8 rev ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp = alx_hw_revision(hw);
  rev = (u8 )tmp;
  pmctrl = alx_read_mem32(hw, 4856U);
  pmctrl = pmctrl & 4043309055U;
  pmctrl = pmctrl | 201326592U;
  pmctrl = pmctrl | 41024U;
  pmctrl = pmctrl & 4279238655U;
  pmctrl = pmctrl | 15728640U;
  pmctrl = pmctrl & 4294508543U;
  pmctrl = pmctrl | 262144U;
  pmctrl = pmctrl & 536340295U;
  tmp___0 = alx_is_rev_a((int )rev);
  if ((int )tmp___0) {
    tmp___1 = alx_hw_with_cr(hw);
    if ((int )tmp___1) {
      pmctrl = pmctrl | 48U;
    } else {
    }
  } else {
  }
  if ((int )l0s_en) {
    pmctrl = pmctrl | 1073745920U;
  } else {
  }
  if ((int )l1_en) {
    pmctrl = pmctrl | 1073741832U;
  } else {
  }
  alx_write_mem32(hw, 4856U, pmctrl);
  return;
}
}
static u32 ethadv_to_hw_cfg(struct alx_hw *hw , u32 ethadv_cfg )
{
  u32 cfg ;
  {
  cfg = 0U;
  if ((ethadv_cfg & 64U) != 0U) {
    cfg = cfg | 268435456U;
    if ((int )ethadv_cfg & 1) {
      cfg = cfg | 33554432U;
    } else {
    }
    if ((ethadv_cfg & 2U) != 0U) {
      cfg = cfg | 50331648U;
    } else {
    }
    if ((ethadv_cfg & 4U) != 0U) {
      cfg = cfg | 67108864U;
    } else {
    }
    if ((ethadv_cfg & 8U) != 0U) {
      cfg = cfg | 83886080U;
    } else {
    }
    if ((ethadv_cfg & 16U) != 0U) {
      cfg = cfg | 134217728U;
    } else {
    }
    if ((ethadv_cfg & 32U) != 0U) {
      cfg = cfg | 83886080U;
    } else {
    }
    if ((ethadv_cfg & 8192U) != 0U) {
      cfg = cfg | 1024U;
    } else {
    }
    if ((ethadv_cfg & 16384U) != 0U) {
      cfg = cfg | 2048U;
    } else {
    }
  } else {
    switch (ethadv_cfg) {
    case 1U:
    cfg = cfg | 33554432U;
    goto ldv_46103;
    case 4U:
    cfg = cfg | 67108864U;
    goto ldv_46103;
    case 2U:
    cfg = cfg | 50331648U;
    goto ldv_46103;
    case 8U:
    cfg = cfg | 83886080U;
    goto ldv_46103;
    }
    ldv_46103: ;
  }
  return (cfg);
}
}
int alx_setup_speed_duplex(struct alx_hw *hw , u32 ethadv , u8 flowctrl )
{
  u16 adv ;
  u16 giga ;
  u16 cr ;
  u32 val ;
  int err ;
  u32 tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  {
  err = 0;
  alx_write_phy_reg(hw, 29, 0);
  val = alx_read_mem32(hw, 6148U);
  val = val & 3760193535U;
  val = val;
  if ((ethadv & 64U) != 0U) {
    adv = 1U;
    tmp = ethtool_adv_to_mii_adv_t(ethadv);
    adv = (int )((u16 )tmp) | (int )adv;
    if (((int )flowctrl & 4) != 0) {
      if ((int )flowctrl & 1) {
        adv = (u16 )((unsigned int )adv | 8192U);
        if (((int )flowctrl & 2) == 0) {
          adv = (u16 )((unsigned int )adv | 16384U);
        } else {
        }
      } else
      if (((int )flowctrl & 2) != 0) {
        adv = (u16 )((unsigned int )adv | 16384U);
      } else {
      }
    } else {
    }
    giga = 0U;
    tmp___1 = alx_hw_giga(hw);
    if ((int )tmp___1) {
      tmp___0 = ethtool_adv_to_mii_ctrl1000_t(ethadv);
      giga = (u16 )tmp___0;
    } else {
    }
    cr = 37376U;
    tmp___2 = alx_write_phy_reg(hw, 4, (int )adv);
    if (tmp___2 != 0) {
      err = -16;
    } else {
      tmp___3 = alx_write_phy_reg(hw, 9, (int )giga);
      if (tmp___3 != 0) {
        err = -16;
      } else {
        tmp___4 = alx_write_phy_reg(hw, 0, (int )cr);
        if (tmp___4 != 0) {
          err = -16;
        } else {
        }
      }
    }
  } else {
    cr = 32768U;
    if (ethadv == 4U || ethadv == 8U) {
      cr = (u16 )((unsigned int )cr | 8192U);
    } else {
    }
    if (ethadv == 2U || ethadv == 8U) {
      cr = (u16 )((unsigned int )cr | 256U);
    } else {
    }
    err = alx_write_phy_reg(hw, 0, (int )cr);
  }
  if (err == 0) {
    alx_write_phy_reg(hw, 29, 63);
    tmp___5 = ethadv_to_hw_cfg(hw, ethadv);
    val = tmp___5 | val;
  } else {
  }
  alx_write_mem32(hw, 6148U, val);
  return (err);
}
}
void alx_post_phy_link(struct alx_hw *hw )
{
  u16 phy_val ;
  u16 len ;
  u16 agc ;
  u8 revid ;
  int tmp ;
  bool adj_th ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = alx_hw_revision(hw);
  revid = (u8 )tmp;
  adj_th = (unsigned int )revid == 2U;
  if ((unsigned int )revid != 2U) {
    tmp___0 = alx_is_rev_a((int )revid);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return;
    } else {
    }
  } else {
  }
  if (hw->link_speed != -1) {
    alx_read_phy_ext(hw, 3, 32774, & phy_val);
    len = (unsigned int )phy_val & 255U;
    alx_read_phy_dbg(hw, 35, & phy_val);
    agc = (unsigned int )((u16 )((int )phy_val >> 8)) & 63U;
    if ((hw->link_speed == 1000 && ((unsigned int )len > 116U || ((unsigned int )len == 0U && (unsigned int )agc > 40U))) || (hw->link_speed == 100 && ((unsigned int )len > 152U || ((unsigned int )len == 0U && (unsigned int )agc > 44U)))) {
      alx_write_phy_dbg(hw, 21, 12816);
      alx_read_phy_ext(hw, 7, 32794, & phy_val);
      alx_write_phy_ext(hw, 7, 32794, (int )((unsigned int )phy_val | 64U));
    } else {
      alx_write_phy_dbg(hw, 21, 12832);
      alx_read_phy_ext(hw, 7, 32794, & phy_val);
      alx_write_phy_ext(hw, 7, 32794, (int )phy_val & 65471);
    }
    if ((int )adj_th && (int )hw->lnk_patch) {
      if (hw->link_speed == 100) {
        alx_write_phy_dbg(hw, 24, 1514);
      } else
      if (hw->link_speed == 1000) {
        alx_read_phy_dbg(hw, 28, & phy_val);
        phy_val = (unsigned int )phy_val & 65027U;
        phy_val = (u16 )((unsigned int )phy_val | 336U);
        alx_write_phy_dbg(hw, 28, (int )phy_val);
      } else {
      }
    } else {
    }
  } else {
    alx_read_phy_ext(hw, 7, 32794, & phy_val);
    alx_write_phy_ext(hw, 7, 32794, (int )phy_val & 65471);
    if ((int )adj_th && (int )hw->lnk_patch) {
      alx_write_phy_dbg(hw, 24, 746);
      alx_read_phy_dbg(hw, 28, & phy_val);
      phy_val = (unsigned int )phy_val & 65027U;
      phy_val = (u16 )((unsigned int )phy_val | 184U);
      alx_write_phy_dbg(hw, 28, (int )phy_val);
    } else {
    }
  }
  return;
}
}
bool alx_phy_configured(struct alx_hw *hw )
{
  u32 cfg ;
  u32 hw_cfg ;
  u16 tmp ;
  {
  cfg = ethadv_to_hw_cfg(hw, hw->adv_cfg);
  cfg = (cfg >> 21) & 255U;
  tmp = alx_get_phy_config(hw);
  hw_cfg = (u32 )tmp;
  if (hw_cfg == 0U) {
    return (0);
  } else {
  }
  return (cfg == hw_cfg);
}
}
int alx_read_phy_link(struct alx_hw *hw )
{
  struct pci_dev *pdev ;
  u16 bmsr ;
  u16 giga ;
  int err ;
  {
  pdev = hw->pdev;
  err = alx_read_phy_reg(hw, 1, & bmsr);
  if (err != 0) {
    return (err);
  } else {
  }
  err = alx_read_phy_reg(hw, 1, & bmsr);
  if (err != 0) {
    return (err);
  } else {
  }
  if (((int )bmsr & 4) == 0) {
    hw->link_speed = -1;
    hw->duplex = 255U;
    return (0);
  } else {
  }
  err = alx_read_phy_reg(hw, 17, & giga);
  if (err != 0) {
    return (err);
  } else {
  }
  if (((int )giga & 2048) == 0) {
    goto wrong_speed;
  } else {
  }
  switch ((int )giga & 49152) {
  case 32768:
  hw->link_speed = 1000;
  goto ldv_46139;
  case 16384:
  hw->link_speed = 100;
  goto ldv_46139;
  case 0:
  hw->link_speed = 10;
  goto ldv_46139;
  default: ;
  goto wrong_speed;
  }
  ldv_46139:
  hw->duplex = ((int )giga & 8192) != 0;
  return (0);
  wrong_speed:
  dev_err((struct device const *)(& pdev->dev), "invalid PHY speed/duplex: 0x%x\n",
          (int )giga);
  return (-22);
}
}
int alx_clear_phy_intr(struct alx_hw *hw )
{
  u16 isr ;
  int tmp ;
  {
  tmp = alx_read_phy_reg(hw, 19, & isr);
  return (tmp);
}
}
void alx_disable_rss(struct alx_hw *hw )
{
  u32 ctrl ;
  u32 tmp ;
  {
  tmp = alx_read_mem32(hw, 5536U);
  ctrl = tmp;
  ctrl = ctrl & 3758096383U;
  alx_write_mem32(hw, 5536U, ctrl);
  return;
}
}
void alx_configure_basic(struct alx_hw *hw )
{
  u32 val ;
  u32 raw_mtu ;
  u32 max_payload ;
  u16 val16 ;
  u8 chip_rev ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp = alx_hw_revision(hw);
  chip_rev = (u8 )tmp;
  alx_set_macaddr(hw, (u8 const *)(& hw->mac_addr));
  alx_write_mem32(hw, 6164U, 63U);
  if ((unsigned int )chip_rev > 1U) {
    alx_write_mem32(hw, 5236U, 1024U);
  } else {
  }
  alx_write_mem32(hw, 5572U, hw->smb_timer * 500U);
  val = alx_read_mem32(hw, 5120U);
  val = val | 3200U;
  alx_write_mem32(hw, 5120U, val);
  alx_write_mem32(hw, 5128U, (u32 )((int )hw->imt >> 1));
  alx_write_mem32(hw, 5640U, 20000U);
  alx_write_mem32(hw, 5576U, hw->ith_tpd);
  alx_write_mem32(hw, 5580U, (u32 )hw->imt);
  raw_mtu = (u32 )((int )hw->mtu + 14);
  alx_write_mem32(hw, 5276U, raw_mtu + 8U);
  if (raw_mtu > 1514U) {
    hw->rx_ctrl = hw->rx_ctrl & 2147483647U;
  } else {
  }
  if (raw_mtu + 8U <= 7167U) {
    val = (raw_mtu + 15U) >> 3;
  } else {
    val = 896U;
  }
  alx_write_mem32(hw, 5524U, val | 2048U);
  tmp___0 = pcie_get_readrq(hw->pdev);
  max_payload = (u32 )(tmp___0 >> 8);
  if (max_payload <= 1U) {
    pcie_set_readrq(hw->pdev, 512);
  } else {
  }
  val = 33554645U;
  alx_write_mem32(hw, 5520U, val);
  val = 2147485013U;
  alx_write_mem32(hw, 6460U, val);
  val = alx_read_mem32(hw, 5412U);
  val = (val & 4095U) << 3;
  if (val > 8192U) {
    val16 = 192U;
    val = (val - 3212U) >> 3;
  } else {
    val16 = 192U;
    val = (val - 1536U) >> 3;
  }
  alx_write_mem32(hw, 5544U, (u32 )((int )val16 << 16) | val);
  val = 545325244U;
  tmp___1 = alx_hw_giga(hw);
  if ((int )tmp___1) {
    val = val & 4294967292U;
    val = val | 3U;
  } else {
  }
  alx_write_mem32(hw, 5536U, val);
  val = alx_read_mem32(hw, 5568U);
  val = ((max_payload << 4) | (u32 )(((int )hw->dma_chnl + -1) << 26)) | 293892U;
  alx_write_mem32(hw, 5568U, val);
  val = 1677984772U;
  alx_write_mem32(hw, 6456U, val);
  return;
}
}
bool alx_get_phy_info(struct alx_hw *hw )
{
  u16 devs1 ;
  u16 devs2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = alx_read_phy_reg(hw, 2, (u16 *)(& hw->phy_id));
  if (tmp != 0) {
    return (0);
  } else {
    tmp___0 = alx_read_phy_reg(hw, 3, (u16 *)(& hw->phy_id) + 1UL);
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
  }
  tmp___1 = alx_read_phy_ext(hw, 3, 5, & devs1);
  if (tmp___1 != 0) {
    return (0);
  } else {
    tmp___2 = alx_read_phy_ext(hw, 3, 6, & devs2);
    if (tmp___2 != 0) {
      return (0);
    } else {
    }
  }
  hw->mdio.mmds = (u32 )((int )devs1 | ((int )devs2 << 16));
  return (1);
}
}
void alx_update_hw_stats(struct alx_hw *hw )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  u32 tmp___28 ;
  u32 tmp___29 ;
  u32 tmp___30 ;
  u32 tmp___31 ;
  u32 tmp___32 ;
  u32 tmp___33 ;
  u32 tmp___34 ;
  u32 tmp___35 ;
  u32 tmp___36 ;
  u32 tmp___37 ;
  u32 tmp___38 ;
  u32 tmp___39 ;
  u32 tmp___40 ;
  u32 tmp___41 ;
  u32 tmp___42 ;
  u32 tmp___43 ;
  u32 tmp___44 ;
  u32 tmp___45 ;
  u32 tmp___46 ;
  u32 tmp___47 ;
  u32 tmp___48 ;
  {
  tmp = alx_read_mem32(hw, 5888U);
  hw->stats.rx_ok = hw->stats.rx_ok + (u64 )tmp;
  tmp___0 = alx_read_mem32(hw, 5892U);
  hw->stats.rx_bcast = hw->stats.rx_bcast + (u64 )tmp___0;
  tmp___1 = alx_read_mem32(hw, 5896U);
  hw->stats.rx_mcast = hw->stats.rx_mcast + (u64 )tmp___1;
  tmp___2 = alx_read_mem32(hw, 5900U);
  hw->stats.rx_pause = hw->stats.rx_pause + (u64 )tmp___2;
  tmp___3 = alx_read_mem32(hw, 5904U);
  hw->stats.rx_ctrl = hw->stats.rx_ctrl + (u64 )tmp___3;
  tmp___4 = alx_read_mem32(hw, 5908U);
  hw->stats.rx_fcs_err = hw->stats.rx_fcs_err + (u64 )tmp___4;
  tmp___5 = alx_read_mem32(hw, 5912U);
  hw->stats.rx_len_err = hw->stats.rx_len_err + (u64 )tmp___5;
  tmp___6 = alx_read_mem32(hw, 5916U);
  hw->stats.rx_byte_cnt = hw->stats.rx_byte_cnt + (u64 )tmp___6;
  tmp___7 = alx_read_mem32(hw, 5920U);
  hw->stats.rx_runt = hw->stats.rx_runt + (u64 )tmp___7;
  tmp___8 = alx_read_mem32(hw, 5924U);
  hw->stats.rx_frag = hw->stats.rx_frag + (u64 )tmp___8;
  tmp___9 = alx_read_mem32(hw, 5928U);
  hw->stats.rx_sz_64B = hw->stats.rx_sz_64B + (u64 )tmp___9;
  tmp___10 = alx_read_mem32(hw, 5932U);
  hw->stats.rx_sz_127B = hw->stats.rx_sz_127B + (u64 )tmp___10;
  tmp___11 = alx_read_mem32(hw, 5936U);
  hw->stats.rx_sz_255B = hw->stats.rx_sz_255B + (u64 )tmp___11;
  tmp___12 = alx_read_mem32(hw, 5940U);
  hw->stats.rx_sz_511B = hw->stats.rx_sz_511B + (u64 )tmp___12;
  tmp___13 = alx_read_mem32(hw, 5944U);
  hw->stats.rx_sz_1023B = hw->stats.rx_sz_1023B + (u64 )tmp___13;
  tmp___14 = alx_read_mem32(hw, 5948U);
  hw->stats.rx_sz_1518B = hw->stats.rx_sz_1518B + (u64 )tmp___14;
  tmp___15 = alx_read_mem32(hw, 5952U);
  hw->stats.rx_sz_max = hw->stats.rx_sz_max + (u64 )tmp___15;
  tmp___16 = alx_read_mem32(hw, 5956U);
  hw->stats.rx_ov_sz = hw->stats.rx_ov_sz + (u64 )tmp___16;
  tmp___17 = alx_read_mem32(hw, 5960U);
  hw->stats.rx_ov_rxf = hw->stats.rx_ov_rxf + (u64 )tmp___17;
  tmp___18 = alx_read_mem32(hw, 5964U);
  hw->stats.rx_ov_rrd = hw->stats.rx_ov_rrd + (u64 )tmp___18;
  tmp___19 = alx_read_mem32(hw, 5968U);
  hw->stats.rx_align_err = hw->stats.rx_align_err + (u64 )tmp___19;
  tmp___20 = alx_read_mem32(hw, 5972U);
  hw->stats.rx_bc_byte_cnt = hw->stats.rx_bc_byte_cnt + (u64 )tmp___20;
  tmp___21 = alx_read_mem32(hw, 5976U);
  hw->stats.rx_mc_byte_cnt = hw->stats.rx_mc_byte_cnt + (u64 )tmp___21;
  tmp___22 = alx_read_mem32(hw, 5980U);
  hw->stats.rx_err_addr = hw->stats.rx_err_addr + (u64 )tmp___22;
  tmp___23 = alx_read_mem32(hw, 5984U);
  hw->stats.tx_ok = hw->stats.tx_ok + (u64 )tmp___23;
  tmp___24 = alx_read_mem32(hw, 5988U);
  hw->stats.tx_bcast = hw->stats.tx_bcast + (u64 )tmp___24;
  tmp___25 = alx_read_mem32(hw, 5992U);
  hw->stats.tx_mcast = hw->stats.tx_mcast + (u64 )tmp___25;
  tmp___26 = alx_read_mem32(hw, 5996U);
  hw->stats.tx_pause = hw->stats.tx_pause + (u64 )tmp___26;
  tmp___27 = alx_read_mem32(hw, 6000U);
  hw->stats.tx_exc_defer = hw->stats.tx_exc_defer + (u64 )tmp___27;
  tmp___28 = alx_read_mem32(hw, 6004U);
  hw->stats.tx_ctrl = hw->stats.tx_ctrl + (u64 )tmp___28;
  tmp___29 = alx_read_mem32(hw, 6008U);
  hw->stats.tx_defer = hw->stats.tx_defer + (u64 )tmp___29;
  tmp___30 = alx_read_mem32(hw, 6012U);
  hw->stats.tx_byte_cnt = hw->stats.tx_byte_cnt + (u64 )tmp___30;
  tmp___31 = alx_read_mem32(hw, 6016U);
  hw->stats.tx_sz_64B = hw->stats.tx_sz_64B + (u64 )tmp___31;
  tmp___32 = alx_read_mem32(hw, 6020U);
  hw->stats.tx_sz_127B = hw->stats.tx_sz_127B + (u64 )tmp___32;
  tmp___33 = alx_read_mem32(hw, 6024U);
  hw->stats.tx_sz_255B = hw->stats.tx_sz_255B + (u64 )tmp___33;
  tmp___34 = alx_read_mem32(hw, 6028U);
  hw->stats.tx_sz_511B = hw->stats.tx_sz_511B + (u64 )tmp___34;
  tmp___35 = alx_read_mem32(hw, 6032U);
  hw->stats.tx_sz_1023B = hw->stats.tx_sz_1023B + (u64 )tmp___35;
  tmp___36 = alx_read_mem32(hw, 6036U);
  hw->stats.tx_sz_1518B = hw->stats.tx_sz_1518B + (u64 )tmp___36;
  tmp___37 = alx_read_mem32(hw, 6040U);
  hw->stats.tx_sz_max = hw->stats.tx_sz_max + (u64 )tmp___37;
  tmp___38 = alx_read_mem32(hw, 6044U);
  hw->stats.tx_single_col = hw->stats.tx_single_col + (u64 )tmp___38;
  tmp___39 = alx_read_mem32(hw, 6048U);
  hw->stats.tx_multi_col = hw->stats.tx_multi_col + (u64 )tmp___39;
  tmp___40 = alx_read_mem32(hw, 6052U);
  hw->stats.tx_late_col = hw->stats.tx_late_col + (u64 )tmp___40;
  tmp___41 = alx_read_mem32(hw, 6056U);
  hw->stats.tx_abort_col = hw->stats.tx_abort_col + (u64 )tmp___41;
  tmp___42 = alx_read_mem32(hw, 6060U);
  hw->stats.tx_underrun = hw->stats.tx_underrun + (u64 )tmp___42;
  tmp___43 = alx_read_mem32(hw, 6064U);
  hw->stats.tx_trd_eop = hw->stats.tx_trd_eop + (u64 )tmp___43;
  tmp___44 = alx_read_mem32(hw, 6068U);
  hw->stats.tx_len_err = hw->stats.tx_len_err + (u64 )tmp___44;
  tmp___45 = alx_read_mem32(hw, 6072U);
  hw->stats.tx_trunc = hw->stats.tx_trunc + (u64 )tmp___45;
  tmp___46 = alx_read_mem32(hw, 6076U);
  hw->stats.tx_bc_byte_cnt = hw->stats.tx_bc_byte_cnt + (u64 )tmp___46;
  tmp___47 = alx_read_mem32(hw, 6080U);
  hw->stats.tx_mc_byte_cnt = hw->stats.tx_mc_byte_cnt + (u64 )tmp___47;
  tmp___48 = alx_read_mem32(hw, 6084U);
  hw->stats.update = hw->stats.update + (u64 )tmp___48;
  return;
}
}
bool ldv_queue_work_on_132(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_133(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_134(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_135(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_136(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_142(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_148(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_150(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_152(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_153(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_154(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_155(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_156(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_157(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_158(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
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
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
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
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
void dql_reset(struct dql *arg0) {
  return;
}
void dump_stack() {
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
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void iounmap(volatile void *arg0) {
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
int ldv_ndo_init_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_9() {
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
int ldv_probe_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_7() {
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
int __VERIFIER_nondet_int(void);
int ldv_shutdown_6() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_7() {
  return __VERIFIER_nondet_int();
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
int mdio_mii_ioctl(const struct mdio_if_info *arg0, struct mii_ioctl_data *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void napi_disable(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_update_features(struct net_device *arg0) {
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
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device_mem(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return (void *)external_alloc();
}
void pci_release_selected_regions(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_selected_regions(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_select_bars(struct pci_dev *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pcie_get_readrq(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_set_readrq(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
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
int __VERIFIER_nondet_int(void);
int rtnl_is_locked() {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
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
