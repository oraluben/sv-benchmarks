extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
typedef unsigned char __u8;
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
typedef unsigned long irq_hw_number_t;
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
struct va_format {
   char const *fmt ;
   va_list *va ;
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
struct __anonstruct_mm_segment_t_33 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_33 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
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
struct device_attribute;
struct ssb_device;
struct ieee80211_hw;
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
struct irq_desc;
enum ldv_17672 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_17672 socket_state;
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
struct irq_data;
struct msi_msg;
enum irqchip_irq_state;
enum irqchip_irq_state;
struct msi_desc;
struct irq_domain;
struct irq_common_data {
   unsigned int state_use_accessors ;
};
struct irq_chip;
struct irq_data {
   u32 mask ;
   unsigned int irq ;
   unsigned long hwirq ;
   unsigned int node ;
   struct irq_common_data *common ;
   struct irq_chip *chip ;
   struct irq_domain *domain ;
   struct irq_data *parent_data ;
   void *handler_data ;
   void *chip_data ;
   struct msi_desc *msi_desc ;
   cpumask_var_t affinity ;
};
struct irq_chip {
   char const *name ;
   unsigned int (*irq_startup)(struct irq_data * ) ;
   void (*irq_shutdown)(struct irq_data * ) ;
   void (*irq_enable)(struct irq_data * ) ;
   void (*irq_disable)(struct irq_data * ) ;
   void (*irq_ack)(struct irq_data * ) ;
   void (*irq_mask)(struct irq_data * ) ;
   void (*irq_mask_ack)(struct irq_data * ) ;
   void (*irq_unmask)(struct irq_data * ) ;
   void (*irq_eoi)(struct irq_data * ) ;
   int (*irq_set_affinity)(struct irq_data * , struct cpumask const * , bool ) ;
   int (*irq_retrigger)(struct irq_data * ) ;
   int (*irq_set_type)(struct irq_data * , unsigned int ) ;
   int (*irq_set_wake)(struct irq_data * , unsigned int ) ;
   void (*irq_bus_lock)(struct irq_data * ) ;
   void (*irq_bus_sync_unlock)(struct irq_data * ) ;
   void (*irq_cpu_online)(struct irq_data * ) ;
   void (*irq_cpu_offline)(struct irq_data * ) ;
   void (*irq_suspend)(struct irq_data * ) ;
   void (*irq_resume)(struct irq_data * ) ;
   void (*irq_pm_shutdown)(struct irq_data * ) ;
   void (*irq_calc_mask)(struct irq_data * ) ;
   void (*irq_print_chip)(struct irq_data * , struct seq_file * ) ;
   int (*irq_request_resources)(struct irq_data * ) ;
   void (*irq_release_resources)(struct irq_data * ) ;
   void (*irq_compose_msi_msg)(struct irq_data * , struct msi_msg * ) ;
   void (*irq_write_msi_msg)(struct irq_data * , struct msi_msg * ) ;
   int (*irq_get_irqchip_state)(struct irq_data * , enum irqchip_irq_state , bool * ) ;
   int (*irq_set_irqchip_state)(struct irq_data * , enum irqchip_irq_state , bool ) ;
   int (*irq_set_vcpu_affinity)(struct irq_data * , void * ) ;
   unsigned long flags ;
};
struct irq_affinity_notify;
struct irqaction;
struct irq_desc {
   struct irq_common_data irq_common_data ;
   struct irq_data irq_data ;
   unsigned int *kstat_irqs ;
   void (*handle_irq)(unsigned int , struct irq_desc * ) ;
   struct irqaction *action ;
   unsigned int status_use_accessors ;
   unsigned int core_internal_state__do_not_mess_with_it ;
   unsigned int depth ;
   unsigned int wake_depth ;
   unsigned int irq_count ;
   unsigned long last_unhandled ;
   unsigned int irqs_unhandled ;
   atomic_t threads_handled ;
   int threads_handled_last ;
   raw_spinlock_t lock ;
   struct cpumask *percpu_enabled ;
   struct cpumask const *affinity_hint ;
   struct irq_affinity_notify *affinity_notify ;
   cpumask_var_t pending_mask ;
   unsigned long threads_oneshot ;
   atomic_t threads_active ;
   wait_queue_head_t wait_for_threads ;
   unsigned int nr_actions ;
   unsigned int no_suspend_depth ;
   unsigned int cond_suspend_depth ;
   unsigned int force_resume_depth ;
   struct proc_dir_entry *dir ;
   int parent_irq ;
   struct module *owner ;
   char const *name ;
};
struct irq_chip_regs {
   unsigned long enable ;
   unsigned long disable ;
   unsigned long mask ;
   unsigned long ack ;
   unsigned long eoi ;
   unsigned long type ;
   unsigned long polarity ;
};
struct irq_chip_type {
   struct irq_chip chip ;
   struct irq_chip_regs regs ;
   void (*handler)(unsigned int , struct irq_desc * ) ;
   u32 type ;
   u32 mask_cache_priv ;
   u32 *mask_cache ;
};
struct irq_chip_generic {
   raw_spinlock_t lock ;
   void *reg_base ;
   u32 (*reg_readl)(void * ) ;
   void (*reg_writel)(u32 , void * ) ;
   unsigned int irq_base ;
   unsigned int irq_cnt ;
   u32 mask_cache ;
   u32 type_cache ;
   u32 polarity_cache ;
   u32 wake_enabled ;
   u32 wake_active ;
   unsigned int num_ct ;
   void *private ;
   unsigned long installed ;
   unsigned long unused ;
   struct irq_domain *domain ;
   struct list_head list ;
   struct irq_chip_type chip_types[0U] ;
};
enum irq_gc_flags {
    IRQ_GC_INIT_MASK_CACHE = 1,
    IRQ_GC_INIT_NESTED_LOCK = 2,
    IRQ_GC_MASK_CACHE_PER_TYPE = 4,
    IRQ_GC_NO_MASK = 8,
    IRQ_GC_BE_IO = 16
} ;
struct irq_domain_chip_generic {
   unsigned int irqs_per_chip ;
   unsigned int num_chips ;
   unsigned int irq_flags_to_clear ;
   unsigned int irq_flags_to_set ;
   enum irq_gc_flags gc_flags ;
   struct irq_chip_generic *gc[0U] ;
};
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   void *dev_id ;
   void *percpu_dev_id ;
   struct irqaction *next ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned int irq ;
   unsigned int flags ;
   unsigned long thread_flags ;
   unsigned long thread_mask ;
   char const *name ;
   struct proc_dir_entry *dir ;
};
struct irq_affinity_notify {
   unsigned int irq ;
   struct kref kref ;
   struct work_struct work ;
   void (*notify)(struct irq_affinity_notify * , cpumask_t const * ) ;
   void (*release)(struct kref * ) ;
};
enum irqchip_irq_state {
    IRQCHIP_STATE_PENDING = 0,
    IRQCHIP_STATE_ACTIVE = 1,
    IRQCHIP_STATE_MASKED = 2,
    IRQCHIP_STATE_LINE_LEVEL = 3
} ;
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
struct ssb_device_id {
   __u16 vendor ;
   __u16 coreid ;
   __u8 revision ;
   __u8 __pad ;
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
struct of_phandle_args {
   struct device_node *np ;
   int args_count ;
   uint32_t args[16U] ;
};
enum ldv_27790 {
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
typedef enum ldv_27790 phy_interface_t;
enum ldv_27844 {
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
   enum ldv_27844 state ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
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
union __anonunion____missing_field_name_335 {
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
   union __anonunion____missing_field_name_335 __annonCompField95 ;
};
struct hwrng {
   char const *name ;
   int (*init)(struct hwrng * ) ;
   void (*cleanup)(struct hwrng * ) ;
   int (*data_present)(struct hwrng * , int ) ;
   int (*data_read)(struct hwrng * , u32 * ) ;
   int (*read)(struct hwrng * , void * , size_t , bool ) ;
   unsigned long priv ;
   unsigned short quality ;
   struct list_head list ;
   struct kref ref ;
   struct completion cleanup_done ;
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
union __anonunion____missing_field_name_336 {
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
   union __anonunion____missing_field_name_336 __annonCompField96 ;
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
struct irq_domain_ops {
   int (*match)(struct irq_domain * , struct device_node * ) ;
   int (*map)(struct irq_domain * , unsigned int , irq_hw_number_t ) ;
   void (*unmap)(struct irq_domain * , unsigned int ) ;
   int (*xlate)(struct irq_domain * , struct device_node * , u32 const * , unsigned int ,
                unsigned long * , unsigned int * ) ;
   int (*alloc)(struct irq_domain * , unsigned int , unsigned int , void * ) ;
   void (*free)(struct irq_domain * , unsigned int , unsigned int ) ;
   void (*activate)(struct irq_domain * , struct irq_data * ) ;
   void (*deactivate)(struct irq_domain * , struct irq_data * ) ;
};
struct irq_domain {
   struct list_head link ;
   char const *name ;
   struct irq_domain_ops const *ops ;
   void *host_data ;
   unsigned int flags ;
   struct device_node *of_node ;
   struct irq_domain_chip_generic *gc ;
   struct irq_domain *parent ;
   irq_hw_number_t hwirq_max ;
   unsigned int revmap_direct_max_irq ;
   unsigned int revmap_size ;
   struct radix_tree_root revmap_tree ;
   unsigned int linear_revmap[] ;
};
struct gpio_chip;
struct gpio_desc;
struct gpio_chip {
   char const *label ;
   struct device *dev ;
   struct device *cdev ;
   struct module *owner ;
   struct list_head list ;
   int (*request)(struct gpio_chip * , unsigned int ) ;
   void (*free)(struct gpio_chip * , unsigned int ) ;
   int (*get_direction)(struct gpio_chip * , unsigned int ) ;
   int (*direction_input)(struct gpio_chip * , unsigned int ) ;
   int (*direction_output)(struct gpio_chip * , unsigned int , int ) ;
   int (*get)(struct gpio_chip * , unsigned int ) ;
   void (*set)(struct gpio_chip * , unsigned int , int ) ;
   void (*set_multiple)(struct gpio_chip * , unsigned long * , unsigned long * ) ;
   int (*set_debounce)(struct gpio_chip * , unsigned int , unsigned int ) ;
   int (*to_irq)(struct gpio_chip * , unsigned int ) ;
   void (*dbg_show)(struct seq_file * , struct gpio_chip * ) ;
   int base ;
   u16 ngpio ;
   struct gpio_desc *desc ;
   char const * const *names ;
   bool can_sleep ;
   bool irq_not_threaded ;
   struct irq_chip *irqchip ;
   struct irq_domain *irqdomain ;
   unsigned int irq_base ;
   void (*irq_handler)(unsigned int , struct irq_desc * ) ;
   unsigned int irq_default_type ;
   int irq_parent ;
   struct device_node *of_node ;
   int of_gpio_n_cells ;
   int (*of_xlate)(struct gpio_chip * , struct of_phandle_args const * , u32 * ) ;
   struct list_head pin_ranges ;
};
struct pcmcia_device;
struct ssb_bus;
struct ssb_driver;
struct ssb_sprom_core_pwr_info {
   u8 itssi_2g ;
   u8 itssi_5g ;
   u8 maxpwr_2g ;
   u8 maxpwr_5gl ;
   u8 maxpwr_5g ;
   u8 maxpwr_5gh ;
   u16 pa_2g[4U] ;
   u16 pa_5gl[4U] ;
   u16 pa_5g[4U] ;
   u16 pa_5gh[4U] ;
};
struct __anonstruct_antenna_gain_337 {
   s8 a0 ;
   s8 a1 ;
   s8 a2 ;
   s8 a3 ;
};
struct __anonstruct_ghz2_339 {
   u8 tssipos ;
   u8 extpa_gain ;
   u8 pdet_range ;
   u8 tr_iso ;
   u8 antswlut ;
};
struct __anonstruct_ghz5_340 {
   u8 tssipos ;
   u8 extpa_gain ;
   u8 pdet_range ;
   u8 tr_iso ;
   u8 antswlut ;
};
struct __anonstruct_fem_338 {
   struct __anonstruct_ghz2_339 ghz2 ;
   struct __anonstruct_ghz5_340 ghz5 ;
};
struct ssb_sprom {
   u8 revision ;
   u8 il0mac[6U] ;
   u8 et0mac[6U] ;
   u8 et1mac[6U] ;
   u8 et2mac[6U] ;
   u8 et0phyaddr ;
   u8 et1phyaddr ;
   u8 et2phyaddr ;
   u8 et0mdcport ;
   u8 et1mdcport ;
   u8 et2mdcport ;
   u16 dev_id ;
   u16 board_rev ;
   u16 board_num ;
   u16 board_type ;
   u8 country_code ;
   char alpha2[2U] ;
   u8 leddc_on_time ;
   u8 leddc_off_time ;
   u8 ant_available_a ;
   u8 ant_available_bg ;
   u16 pa0b0 ;
   u16 pa0b1 ;
   u16 pa0b2 ;
   u16 pa1b0 ;
   u16 pa1b1 ;
   u16 pa1b2 ;
   u16 pa1lob0 ;
   u16 pa1lob1 ;
   u16 pa1lob2 ;
   u16 pa1hib0 ;
   u16 pa1hib1 ;
   u16 pa1hib2 ;
   u8 gpio0 ;
   u8 gpio1 ;
   u8 gpio2 ;
   u8 gpio3 ;
   u8 maxpwr_bg ;
   u8 maxpwr_al ;
   u8 maxpwr_a ;
   u8 maxpwr_ah ;
   u8 itssi_a ;
   u8 itssi_bg ;
   u8 tri2g ;
   u8 tri5gl ;
   u8 tri5g ;
   u8 tri5gh ;
   u8 txpid2g[4U] ;
   u8 txpid5gl[4U] ;
   u8 txpid5g[4U] ;
   u8 txpid5gh[4U] ;
   s8 rxpo2g ;
   s8 rxpo5g ;
   u8 rssisav2g ;
   u8 rssismc2g ;
   u8 rssismf2g ;
   u8 bxa2g ;
   u8 rssisav5g ;
   u8 rssismc5g ;
   u8 rssismf5g ;
   u8 bxa5g ;
   u16 cck2gpo ;
   u32 ofdm2gpo ;
   u32 ofdm5glpo ;
   u32 ofdm5gpo ;
   u32 ofdm5ghpo ;
   u32 boardflags ;
   u32 boardflags2 ;
   u32 boardflags3 ;
   u16 boardflags_lo ;
   u16 boardflags_hi ;
   u16 boardflags2_lo ;
   u16 boardflags2_hi ;
   struct ssb_sprom_core_pwr_info core_pwr_info[4U] ;
   struct __anonstruct_antenna_gain_337 antenna_gain ;
   struct __anonstruct_fem_338 fem ;
   u16 mcs2gpo[8U] ;
   u16 mcs5gpo[8U] ;
   u16 mcs5glpo[8U] ;
   u16 mcs5ghpo[8U] ;
   u8 opo ;
   u8 rxgainerr2ga[3U] ;
   u8 rxgainerr5gla[3U] ;
   u8 rxgainerr5gma[3U] ;
   u8 rxgainerr5gha[3U] ;
   u8 rxgainerr5gua[3U] ;
   u8 noiselvl2ga[3U] ;
   u8 noiselvl5gla[3U] ;
   u8 noiselvl5gma[3U] ;
   u8 noiselvl5gha[3U] ;
   u8 noiselvl5gua[3U] ;
   u8 regrev ;
   u8 txchain ;
   u8 rxchain ;
   u8 antswitch ;
   u16 cddpo ;
   u16 stbcpo ;
   u16 bw40po ;
   u16 bwduppo ;
   u8 tempthresh ;
   u8 tempoffset ;
   u16 rawtempsense ;
   u8 measpower ;
   u8 tempsense_slope ;
   u8 tempcorrx ;
   u8 tempsense_option ;
   u8 freqoffset_corr ;
   u8 iqcal_swp_dis ;
   u8 hw_iqcal_en ;
   u8 elna2g ;
   u8 elna5g ;
   u8 phycal_tempdelta ;
   u8 temps_period ;
   u8 temps_hysteresis ;
   u8 measpower1 ;
   u8 measpower2 ;
   u8 pcieingress_war ;
   u16 cckbw202gpo ;
   u16 cckbw20ul2gpo ;
   u32 legofdmbw202gpo ;
   u32 legofdmbw20ul2gpo ;
   u32 legofdmbw205glpo ;
   u32 legofdmbw20ul5glpo ;
   u32 legofdmbw205gmpo ;
   u32 legofdmbw20ul5gmpo ;
   u32 legofdmbw205ghpo ;
   u32 legofdmbw20ul5ghpo ;
   u32 mcsbw202gpo ;
   u32 mcsbw20ul2gpo ;
   u32 mcsbw402gpo ;
   u32 mcsbw205glpo ;
   u32 mcsbw20ul5glpo ;
   u32 mcsbw405glpo ;
   u32 mcsbw205gmpo ;
   u32 mcsbw20ul5gmpo ;
   u32 mcsbw405gmpo ;
   u32 mcsbw205ghpo ;
   u32 mcsbw20ul5ghpo ;
   u32 mcsbw405ghpo ;
   u16 mcs32po ;
   u16 legofdm40duppo ;
   u8 sar2g ;
   u8 sar5g ;
};
struct ssb_boardinfo {
   u16 vendor ;
   u16 type ;
};
struct ssb_bus_ops {
   u8 (*read8)(struct ssb_device * , u16 ) ;
   u16 (*read16)(struct ssb_device * , u16 ) ;
   u32 (*read32)(struct ssb_device * , u16 ) ;
   void (*write8)(struct ssb_device * , u16 , u8 ) ;
   void (*write16)(struct ssb_device * , u16 , u16 ) ;
   void (*write32)(struct ssb_device * , u16 , u32 ) ;
   void (*block_read)(struct ssb_device * , void * , size_t , u16 , u8 ) ;
   void (*block_write)(struct ssb_device * , void const * , size_t , u16 , u8 ) ;
};
struct ssb_device {
   struct ssb_bus_ops const *ops ;
   struct device *dev ;
   struct device *dma_dev ;
   struct ssb_bus *bus ;
   struct ssb_device_id id ;
   u8 core_index ;
   unsigned int irq ;
   void *drvdata ;
   void *devtypedata ;
};
struct ssb_driver {
   char const *name ;
   struct ssb_device_id const *id_table ;
   int (*probe)(struct ssb_device * , struct ssb_device_id const * ) ;
   void (*remove)(struct ssb_device * ) ;
   int (*suspend)(struct ssb_device * , pm_message_t ) ;
   int (*resume)(struct ssb_device * ) ;
   void (*shutdown)(struct ssb_device * ) ;
   struct device_driver drv ;
};
enum ssb_bustype {
    SSB_BUSTYPE_SSB = 0,
    SSB_BUSTYPE_PCI = 1,
    SSB_BUSTYPE_PCMCIA = 2,
    SSB_BUSTYPE_SDIO = 3
} ;
struct ssb_chipcommon_pmu {
   u8 rev ;
   u32 crystalfreq ;
};
struct ssb_chipcommon {
   struct ssb_device *dev ;
   u32 capabilities ;
   u32 status ;
   u16 fast_pwrup_delay ;
   spinlock_t gpio_lock ;
   struct ssb_chipcommon_pmu pmu ;
   u32 ticks_per_ms ;
   u32 max_timer_ms ;
};
struct ssb_mipscore {
};
struct ssb_extif {
};
struct ssb_pcicore {
   struct ssb_device *dev ;
   unsigned char setup_done : 1 ;
   unsigned char hostmode : 1 ;
   unsigned char cardbusmode : 1 ;
};
union __anonunion____missing_field_name_341 {
   u8 mapped_pcmcia_seg ;
   u32 sdio_sbaddr ;
};
struct sdio_func;
union __anonunion____missing_field_name_342 {
   struct pci_dev *host_pci ;
   struct pcmcia_device *host_pcmcia ;
   struct sdio_func *host_sdio ;
};
struct ssb_bus {
   void *mmio ;
   struct ssb_bus_ops const *ops ;
   struct ssb_device *mapped_device ;
   union __anonunion____missing_field_name_341 __annonCompField97 ;
   spinlock_t bar_lock ;
   enum ssb_bustype bustype ;
   union __anonunion____missing_field_name_342 __annonCompField98 ;
   unsigned int quirks ;
   struct mutex sprom_mutex ;
   u16 chip_id ;
   u8 chip_rev ;
   u16 sprom_offset ;
   u16 sprom_size ;
   u8 chip_package ;
   struct ssb_device devices[16U] ;
   u8 nr_devices ;
   unsigned int busnumber ;
   struct ssb_chipcommon chipco ;
   struct ssb_pcicore pcicore ;
   struct ssb_mipscore mipscore ;
   struct ssb_extif extif ;
   struct ssb_boardinfo boardinfo ;
   struct ssb_sprom sprom ;
   bool has_cardbus_slot ;
   struct gpio_chip gpio ;
   struct irq_domain *irq_domain ;
   struct list_head list ;
};
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
};
struct ieee80211_msrment_ie {
   u8 token ;
   u8 mode ;
   u8 type ;
   u8 request[0U] ;
};
struct ieee80211_ext_chansw_ie {
   u8 mode ;
   u8 new_operating_class ;
   u8 new_ch_num ;
   u8 count ;
};
struct ieee80211_tpc_report_ie {
   u8 tx_power ;
   u8 link_margin ;
};
struct __anonstruct_auth_344 {
   __le16 auth_alg ;
   __le16 auth_transaction ;
   __le16 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_deauth_345 {
   __le16 reason_code ;
};
struct __anonstruct_assoc_req_346 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 variable[0U] ;
};
struct __anonstruct_assoc_resp_347 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_resp_348 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_req_349 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 current_ap[6U] ;
   u8 variable[0U] ;
};
struct __anonstruct_disassoc_350 {
   __le16 reason_code ;
};
struct __anonstruct_beacon_351 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_probe_req_352 {
   u8 variable[0U] ;
};
struct __anonstruct_probe_resp_353 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_wme_action_356 {
   u8 action_code ;
   u8 dialog_token ;
   u8 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_chan_switch_357 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_ext_chan_switch_358 {
   u8 action_code ;
   struct ieee80211_ext_chansw_ie data ;
   u8 variable[0U] ;
};
struct __anonstruct_measurement_359 {
   u8 action_code ;
   u8 dialog_token ;
   u8 element_id ;
   u8 length ;
   struct ieee80211_msrment_ie msr_elem ;
};
struct __anonstruct_addba_req_360 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capab ;
   __le16 timeout ;
   __le16 start_seq_num ;
};
struct __anonstruct_addba_resp_361 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 status ;
   __le16 capab ;
   __le16 timeout ;
};
struct __anonstruct_delba_362 {
   u8 action_code ;
   __le16 params ;
   __le16 reason_code ;
};
struct __anonstruct_self_prot_363 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_mesh_action_364 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_sa_query_365 {
   u8 action ;
   u8 trans_id[2U] ;
};
struct __anonstruct_ht_smps_366 {
   u8 action ;
   u8 smps_control ;
};
struct __anonstruct_ht_notify_cw_367 {
   u8 action_code ;
   u8 chanwidth ;
};
struct __anonstruct_tdls_discover_resp_368 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capability ;
   u8 variable[0U] ;
};
struct __anonstruct_vht_opmode_notif_369 {
   u8 action_code ;
   u8 operating_mode ;
};
struct __anonstruct_tpc_report_370 {
   u8 action_code ;
   u8 dialog_token ;
   u8 tpc_elem_id ;
   u8 tpc_elem_length ;
   struct ieee80211_tpc_report_ie tpc ;
};
union __anonunion_u_355 {
   struct __anonstruct_wme_action_356 wme_action ;
   struct __anonstruct_chan_switch_357 chan_switch ;
   struct __anonstruct_ext_chan_switch_358 ext_chan_switch ;
   struct __anonstruct_measurement_359 measurement ;
   struct __anonstruct_addba_req_360 addba_req ;
   struct __anonstruct_addba_resp_361 addba_resp ;
   struct __anonstruct_delba_362 delba ;
   struct __anonstruct_self_prot_363 self_prot ;
   struct __anonstruct_mesh_action_364 mesh_action ;
   struct __anonstruct_sa_query_365 sa_query ;
   struct __anonstruct_ht_smps_366 ht_smps ;
   struct __anonstruct_ht_notify_cw_367 ht_notify_cw ;
   struct __anonstruct_tdls_discover_resp_368 tdls_discover_resp ;
   struct __anonstruct_vht_opmode_notif_369 vht_opmode_notif ;
   struct __anonstruct_tpc_report_370 tpc_report ;
};
struct __anonstruct_action_354 {
   u8 category ;
   union __anonunion_u_355 u ;
};
union __anonunion_u_343 {
   struct __anonstruct_auth_344 auth ;
   struct __anonstruct_deauth_345 deauth ;
   struct __anonstruct_assoc_req_346 assoc_req ;
   struct __anonstruct_assoc_resp_347 assoc_resp ;
   struct __anonstruct_reassoc_resp_348 reassoc_resp ;
   struct __anonstruct_reassoc_req_349 reassoc_req ;
   struct __anonstruct_disassoc_350 disassoc ;
   struct __anonstruct_beacon_351 beacon ;
   struct __anonstruct_probe_req_352 probe_req ;
   struct __anonstruct_probe_resp_353 probe_resp ;
   struct __anonstruct_action_354 action ;
};
struct ieee80211_mgmt {
   __le16 frame_control ;
   __le16 duration ;
   u8 da[6U] ;
   u8 sa[6U] ;
   u8 bssid[6U] ;
   __le16 seq_ctrl ;
   union __anonunion_u_343 u ;
};
struct ieee80211_p2p_noa_desc {
   u8 count ;
   __le32 duration ;
   __le32 interval ;
   __le32 start_time ;
};
struct ieee80211_p2p_noa_attr {
   u8 index ;
   u8 oppps_ctwindow ;
   struct ieee80211_p2p_noa_desc desc[4U] ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
};
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NL80211_IFTYPE_OCB = 11,
    NUM_NL80211_IFTYPES = 12,
    NL80211_IFTYPE_MAX = 11
} ;
struct nl80211_sta_flag_update {
   __u32 mask ;
   __u32 set ;
};
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1,
    NL80211_USER_REG_HINT_INDOOR = 2
} ;
enum nl80211_mesh_power_mode {
    NL80211_MESH_POWER_UNKNOWN = 0,
    NL80211_MESH_POWER_ACTIVE = 1,
    NL80211_MESH_POWER_LIGHT_SLEEP = 2,
    NL80211_MESH_POWER_DEEP_SLEEP = 3,
    __NL80211_MESH_POWER_AFTER_LAST = 4,
    NL80211_MESH_POWER_MAX = 3
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
enum nl80211_txrate_gi {
    NL80211_TXRATE_DEFAULT_GI = 0,
    NL80211_TXRATE_FORCE_SGI = 1,
    NL80211_TXRATE_FORCE_LGI = 2
} ;
enum nl80211_tx_power_setting {
    NL80211_TX_POWER_AUTOMATIC = 0,
    NL80211_TX_POWER_LIMITED = 1,
    NL80211_TX_POWER_FIXED = 2
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
   u32 dfs_cac_ms ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[3U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
   unsigned int dfs_cac_ms ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 time ;
   u64 time_busy ;
   u64 time_ext_busy ;
   u64 time_rx ;
   u64 time_tx ;
   u64 time_scan ;
   u32 filled ;
   s8 noise ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
struct rate_info {
   u8 flags ;
   u8 mcs ;
   u16 legacy ;
   u8 nss ;
   u8 bw ;
};
struct sta_bss_parameters {
   u8 flags ;
   u8 dtim_period ;
   u16 beacon_interval ;
};
struct cfg80211_tid_stats {
   u32 filled ;
   u64 rx_msdu ;
   u64 tx_msdu ;
   u64 tx_msdu_retries ;
   u64 tx_msdu_failed ;
};
struct station_info {
   u32 filled ;
   u32 connected_time ;
   u32 inactive_time ;
   u64 rx_bytes ;
   u64 tx_bytes ;
   u16 llid ;
   u16 plid ;
   u8 plink_state ;
   s8 signal ;
   s8 signal_avg ;
   u8 chains ;
   s8 chain_signal[4U] ;
   s8 chain_signal_avg[4U] ;
   struct rate_info txrate ;
   struct rate_info rxrate ;
   u32 rx_packets ;
   u32 tx_packets ;
   u32 tx_retries ;
   u32 tx_failed ;
   u32 rx_dropped_misc ;
   struct sta_bss_parameters bss_param ;
   struct nl80211_sta_flag_update sta_flags ;
   int generation ;
   u8 const *assoc_req_ies ;
   size_t assoc_req_ies_len ;
   u32 beacon_loss_count ;
   s64 t_offset ;
   enum nl80211_mesh_power_mode local_pm ;
   enum nl80211_mesh_power_mode peer_pm ;
   enum nl80211_mesh_power_mode nonpeer_pm ;
   u32 expected_throughput ;
   u64 rx_beacon ;
   u8 rx_beacon_signal_avg ;
   struct cfg80211_tid_stats pertid[17U] ;
};
struct cfg80211_ssid {
   u8 ssid[32U] ;
   u8 ssid_len ;
};
struct cfg80211_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   u32 rates[3U] ;
   struct wireless_dev *wdev ;
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
   s32 rssi_thold ;
};
struct cfg80211_sched_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u32 interval ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   struct cfg80211_match_set *match_sets ;
   int n_match_sets ;
   s32 min_rssi_thold ;
   u32 delay ;
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct callback_head callback_head ;
   u32 owner_nlportid ;
   struct ieee80211_channel *channels[0U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 const *ssid ;
   u8 const *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 const *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   struct ieee80211_channel *channel_hint ;
   u8 const *bssid ;
   u8 const *bssid_hint ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct __anonstruct_control_382 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
   enum nl80211_txrate_gi gi ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_382 control[3U] ;
};
struct cfg80211_pkt_pattern {
   u8 const *mask ;
   u8 const *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
   struct cfg80211_sched_scan_request *nd_config ;
};
struct cfg80211_gtk_rekey_data {
   u8 const *kek ;
   u8 const *kck ;
   u8 const *replay_ctr ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
   u8 radar_detect_regions ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   int max_nd_match_sets ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u8 ext_features[1U] ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   possible_net_t _net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   u16 max_ap_assoc_sta ;
   u8 max_num_csa_counters ;
   u8 max_adj_channel_rssi_comp ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_383 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 const *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct cfg80211_chan_def chandef ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   unsigned int cac_time_ms ;
   u32 owner_nlportid ;
   struct __anonstruct_wext_383 wext ;
};
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
};
struct ieee80211_low_level_stats {
   unsigned int dot11ACKFailureCount ;
   unsigned int dot11RTSFailureCount ;
   unsigned int dot11FCSErrorCount ;
   unsigned int dot11RTSSuccessCount ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
enum ieee80211_chanctx_switch_mode {
    CHANCTX_SWMODE_REASSIGN_VIF = 0,
    CHANCTX_SWMODE_SWAP_CONTEXTS = 1
} ;
struct ieee80211_vif;
struct ieee80211_vif_chanctx_switch {
   struct ieee80211_vif *vif ;
   struct ieee80211_chanctx_conf *old_ctx ;
   struct ieee80211_chanctx_conf *new_ctx ;
};
enum ieee80211_event_type {
    RSSI_EVENT = 0,
    MLME_EVENT = 1,
    BAR_RX_EVENT = 2,
    BA_FRAME_TIMEOUT = 3
} ;
enum ieee80211_rssi_event_data {
    RSSI_EVENT_HIGH = 0,
    RSSI_EVENT_LOW = 1
} ;
struct ieee80211_rssi_event {
   enum ieee80211_rssi_event_data data ;
};
enum ieee80211_mlme_event_data {
    AUTH_EVENT = 0,
    ASSOC_EVENT = 1,
    DEAUTH_RX_EVENT = 2,
    DEAUTH_TX_EVENT = 3
} ;
enum ieee80211_mlme_event_status {
    MLME_SUCCESS = 0,
    MLME_DENIED = 1,
    MLME_TIMEOUT = 2
} ;
struct ieee80211_mlme_event {
   enum ieee80211_mlme_event_data data ;
   enum ieee80211_mlme_event_status status ;
   u16 reason ;
};
struct ieee80211_sta;
struct ieee80211_ba_event {
   struct ieee80211_sta *sta ;
   u16 tid ;
   u16 ssn ;
};
union __anonunion_u_384 {
   struct ieee80211_rssi_event rssi ;
   struct ieee80211_mlme_event mlme ;
   struct ieee80211_ba_event ba ;
};
struct ieee80211_event {
   enum ieee80211_event_type type ;
   union __anonunion_u_384 u ;
};
struct ieee80211_bss_conf {
   u8 const *bssid ;
   bool assoc ;
   bool ibss_joined ;
   bool ibss_creator ;
   u16 aid ;
   bool use_cts_prot ;
   bool use_short_preamble ;
   bool use_short_slot ;
   bool enable_beacon ;
   u8 dtim_period ;
   u16 beacon_int ;
   u16 assoc_capability ;
   u64 sync_tsf ;
   u32 sync_device_ts ;
   u8 sync_dtim_count ;
   u32 basic_rates ;
   struct ieee80211_rate *beacon_rate ;
   int mcast_rate[3U] ;
   u16 ht_operation_mode ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   struct cfg80211_chan_def chandef ;
   __be32 arp_addr_list[4U] ;
   int arp_addr_cnt ;
   bool qos ;
   bool idle ;
   bool ps ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   bool hidden_ssid ;
   int txpower ;
   enum nl80211_tx_power_setting txpower_type ;
   struct ieee80211_p2p_noa_attr p2p_noa_attr ;
};
struct ieee80211_tx_rate {
   s8 idx ;
   unsigned char count : 5 ;
   unsigned short flags : 11 ;
};
struct __anonstruct____missing_field_name_388 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   unsigned char use_rts : 1 ;
   unsigned char use_cts_prot : 1 ;
   unsigned char short_preamble : 1 ;
   unsigned char skip_table : 1 ;
};
union __anonunion____missing_field_name_387 {
   struct __anonstruct____missing_field_name_388 __annonCompField100 ;
   unsigned long jiffies ;
};
struct ieee80211_key_conf;
struct __anonstruct_control_386 {
   union __anonunion____missing_field_name_387 __annonCompField101 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_ack_389 {
   u64 cookie ;
};
struct __anonstruct_status_390 {
   struct ieee80211_tx_rate rates[4U] ;
   s32 ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
   u16 tx_time ;
   void *status_driver_data[2U] ;
};
struct __anonstruct____missing_field_name_391 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion____missing_field_name_385 {
   struct __anonstruct_control_386 control ;
   struct __anonstruct_ack_389 ack ;
   struct __anonstruct_status_390 status ;
   struct __anonstruct____missing_field_name_391 __annonCompField102 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion____missing_field_name_385 __annonCompField103 ;
};
struct ieee80211_scan_ies {
   u8 const *ies[3U] ;
   size_t len[3U] ;
   u8 const *common_ies ;
   size_t common_ie_len ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_conf {
   u32 flags ;
   int power_level ;
   int dynamic_ps_timeout ;
   int max_sleep_period ;
   u16 listen_interval ;
   u8 ps_dtim_period ;
   u8 long_frame_max_tx_count ;
   u8 short_frame_max_tx_count ;
   struct cfg80211_chan_def chandef ;
   bool radar_enabled ;
   enum ieee80211_smps_mode smps_mode ;
};
struct ieee80211_channel_switch {
   u64 timestamp ;
   u32 device_timestamp ;
   bool block_tx ;
   struct cfg80211_chan_def chandef ;
   u8 count ;
};
struct ieee80211_txq;
struct ieee80211_vif {
   enum nl80211_iftype type ;
   struct ieee80211_bss_conf bss_conf ;
   u8 addr[6U] ;
   bool p2p ;
   bool csa_active ;
   u8 cab_queue ;
   u8 hw_queue[4U] ;
   struct ieee80211_txq *txq ;
   struct ieee80211_chanctx_conf *chanctx_conf ;
   u32 driver_flags ;
   struct dentry *debugfs_dir ;
   u8 drv_priv[0U] ;
};
struct ieee80211_key_conf {
   atomic64_t tx_pn ;
   u32 cipher ;
   u8 icv_len ;
   u8 iv_len ;
   u8 hw_key_idx ;
   u8 flags ;
   s8 keyidx ;
   u8 keylen ;
   u8 key[0U] ;
};
struct __anonstruct_tkip_393 {
   u32 iv32 ;
   u16 iv16 ;
};
struct __anonstruct_ccmp_394 {
   u8 pn[6U] ;
};
struct __anonstruct_aes_cmac_395 {
   u8 pn[6U] ;
};
struct __anonstruct_aes_gmac_396 {
   u8 pn[6U] ;
};
struct __anonstruct_gcmp_397 {
   u8 pn[6U] ;
};
struct __anonstruct_hw_398 {
   u8 seq[16U] ;
   u8 seq_len ;
};
union __anonunion____missing_field_name_392 {
   struct __anonstruct_tkip_393 tkip ;
   struct __anonstruct_ccmp_394 ccmp ;
   struct __anonstruct_aes_cmac_395 aes_cmac ;
   struct __anonstruct_aes_gmac_396 aes_gmac ;
   struct __anonstruct_gcmp_397 gcmp ;
   struct __anonstruct_hw_398 hw ;
};
struct ieee80211_key_seq {
   union __anonunion____missing_field_name_392 __annonCompField104 ;
};
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
enum set_key_cmd {
    SET_KEY = 0,
    DISABLE_KEY = 1
} ;
enum ieee80211_sta_state {
    IEEE80211_STA_NOTEXIST = 0,
    IEEE80211_STA_NONE = 1,
    IEEE80211_STA_AUTH = 2,
    IEEE80211_STA_ASSOC = 3,
    IEEE80211_STA_AUTHORIZED = 4
} ;
enum ieee80211_sta_rx_bandwidth {
    IEEE80211_STA_RX_BW_20 = 0,
    IEEE80211_STA_RX_BW_40 = 1,
    IEEE80211_STA_RX_BW_80 = 2,
    IEEE80211_STA_RX_BW_160 = 3
} ;
struct __anonstruct_rate_399 {
   s8 idx ;
   u8 count ;
   u8 count_cts ;
   u8 count_rts ;
   u16 flags ;
};
struct ieee80211_sta_rates {
   struct callback_head callback_head ;
   struct __anonstruct_rate_399 rate[4U] ;
};
struct ieee80211_sta {
   u32 supp_rates[3U] ;
   u8 addr[6U] ;
   u16 aid ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
   bool wme ;
   u8 uapsd_queues ;
   u8 max_sp ;
   u8 rx_nss ;
   enum ieee80211_sta_rx_bandwidth bandwidth ;
   enum ieee80211_smps_mode smps_mode ;
   struct ieee80211_sta_rates *rates ;
   bool tdls ;
   bool tdls_initiator ;
   bool mfp ;
   struct ieee80211_txq *txq[16U] ;
   u8 drv_priv[0U] ;
};
enum sta_notify_cmd {
    STA_NOTIFY_SLEEP = 0,
    STA_NOTIFY_AWAKE = 1
} ;
struct ieee80211_tx_control {
   struct ieee80211_sta *sta ;
};
struct ieee80211_txq {
   struct ieee80211_vif *vif ;
   struct ieee80211_sta *sta ;
   u8 tid ;
   u8 ac ;
   u8 drv_priv[0U] ;
};
enum ieee80211_hw_flags {
    IEEE80211_HW_HAS_RATE_CONTROL = 0,
    IEEE80211_HW_RX_INCLUDES_FCS = 1,
    IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = 2,
    IEEE80211_HW_SIGNAL_UNSPEC = 3,
    IEEE80211_HW_SIGNAL_DBM = 4,
    IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC = 5,
    IEEE80211_HW_SPECTRUM_MGMT = 6,
    IEEE80211_HW_AMPDU_AGGREGATION = 7,
    IEEE80211_HW_SUPPORTS_PS = 8,
    IEEE80211_HW_PS_NULLFUNC_STACK = 9,
    IEEE80211_HW_SUPPORTS_DYNAMIC_PS = 10,
    IEEE80211_HW_MFP_CAPABLE = 11,
    IEEE80211_HW_WANT_MONITOR_VIF = 12,
    IEEE80211_HW_NO_AUTO_VIF = 13,
    IEEE80211_HW_SW_CRYPTO_CONTROL = 14,
    IEEE80211_HW_SUPPORT_FAST_XMIT = 15,
    IEEE80211_HW_REPORTS_TX_ACK_STATUS = 16,
    IEEE80211_HW_CONNECTION_MONITOR = 17,
    IEEE80211_HW_QUEUE_CONTROL = 18,
    IEEE80211_HW_SUPPORTS_PER_STA_GTK = 19,
    IEEE80211_HW_AP_LINK_PS = 20,
    IEEE80211_HW_TX_AMPDU_SETUP_IN_HW = 21,
    IEEE80211_HW_SUPPORTS_RC_TABLE = 22,
    IEEE80211_HW_P2P_DEV_ADDR_FOR_INTF = 23,
    IEEE80211_HW_TIMING_BEACON_ONLY = 24,
    IEEE80211_HW_SUPPORTS_HT_CCK_RATES = 25,
    IEEE80211_HW_CHANCTX_STA_CSA = 26,
    IEEE80211_HW_SUPPORTS_CLONED_SKBS = 27,
    IEEE80211_HW_SINGLE_SCAN_ON_ALL_BANDS = 28,
    NUM_IEEE80211_HW_FLAGS = 29
} ;
struct ieee80211_hw {
   struct ieee80211_conf conf ;
   struct wiphy *wiphy ;
   char const *rate_control_algorithm ;
   void *priv ;
   unsigned long flags[1U] ;
   unsigned int extra_tx_headroom ;
   unsigned int extra_beacon_tailroom ;
   int vif_data_size ;
   int sta_data_size ;
   int chanctx_data_size ;
   int txq_data_size ;
   u16 queues ;
   u16 max_listen_interval ;
   s8 max_signal ;
   u8 max_rates ;
   u8 max_report_rates ;
   u8 max_rate_tries ;
   u8 max_rx_aggregation_subframes ;
   u8 max_tx_aggregation_subframes ;
   u8 offchannel_tx_hw_queue ;
   u8 radiotap_mcs_details ;
   u16 radiotap_vht_details ;
   netdev_features_t netdev_features ;
   u8 uapsd_queues ;
   u8 uapsd_max_sp_len ;
   u8 n_cipher_schemes ;
   struct ieee80211_cipher_scheme const *cipher_schemes ;
   int txq_ac_max_pending ;
};
struct ieee80211_scan_request {
   struct ieee80211_scan_ies ies ;
   struct cfg80211_scan_request req ;
};
struct ieee80211_tdls_ch_sw_params {
   struct ieee80211_sta *sta ;
   struct cfg80211_chan_def *chandef ;
   u8 action_code ;
   u32 status ;
   u32 timestamp ;
   u16 switch_time ;
   u16 switch_timeout ;
   struct sk_buff *tmpl_skb ;
   u32 ch_sw_tm_ie ;
};
enum ieee80211_ampdu_mlme_action {
    IEEE80211_AMPDU_RX_START = 0,
    IEEE80211_AMPDU_RX_STOP = 1,
    IEEE80211_AMPDU_TX_START = 2,
    IEEE80211_AMPDU_TX_STOP_CONT = 3,
    IEEE80211_AMPDU_TX_STOP_FLUSH = 4,
    IEEE80211_AMPDU_TX_STOP_FLUSH_CONT = 5,
    IEEE80211_AMPDU_TX_OPERATIONAL = 6
} ;
enum ieee80211_frame_release_type {
    IEEE80211_FRAME_RELEASE_PSPOLL = 0,
    IEEE80211_FRAME_RELEASE_UAPSD = 1
} ;
enum ieee80211_roc_type {
    IEEE80211_ROC_TYPE_NORMAL = 0,
    IEEE80211_ROC_TYPE_MGMT_TX = 1
} ;
enum ieee80211_reconfig_type {
    IEEE80211_RECONFIG_TYPE_RESTART = 0,
    IEEE80211_RECONFIG_TYPE_SUSPEND = 1
} ;
struct ieee80211_ops {
   void (*tx)(struct ieee80211_hw * , struct ieee80211_tx_control * , struct sk_buff * ) ;
   int (*start)(struct ieee80211_hw * ) ;
   void (*stop)(struct ieee80211_hw * ) ;
   int (*suspend)(struct ieee80211_hw * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct ieee80211_hw * ) ;
   void (*set_wakeup)(struct ieee80211_hw * , bool ) ;
   int (*add_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*change_interface)(struct ieee80211_hw * , struct ieee80211_vif * , enum nl80211_iftype ,
                           bool ) ;
   void (*remove_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*config)(struct ieee80211_hw * , u32 ) ;
   void (*bss_info_changed)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_bss_conf * ,
                            u32 ) ;
   int (*start_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*stop_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u64 (*prepare_multicast)(struct ieee80211_hw * , struct netdev_hw_addr_list * ) ;
   void (*configure_filter)(struct ieee80211_hw * , unsigned int , unsigned int * ,
                            u64 ) ;
   int (*set_tim)(struct ieee80211_hw * , struct ieee80211_sta * , bool ) ;
   int (*set_key)(struct ieee80211_hw * , enum set_key_cmd , struct ieee80211_vif * ,
                  struct ieee80211_sta * , struct ieee80211_key_conf * ) ;
   void (*update_tkip_key)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_key_conf * ,
                           struct ieee80211_sta * , u32 , u16 * ) ;
   void (*set_rekey_data)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_gtk_rekey_data * ) ;
   void (*set_default_unicast_key)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   int ) ;
   int (*hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_scan_request * ) ;
   void (*cancel_hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*sched_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_sched_scan_request * ,
                           struct ieee80211_scan_ies * ) ;
   int (*sched_scan_stop)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*sw_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , u8 const * ) ;
   void (*sw_scan_complete)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*get_stats)(struct ieee80211_hw * , struct ieee80211_low_level_stats * ) ;
   void (*get_key_seq)(struct ieee80211_hw * , struct ieee80211_key_conf * , struct ieee80211_key_seq * ) ;
   int (*set_frag_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*set_rts_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*sta_add)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   int (*sta_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_add_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                           struct dentry * ) ;
   void (*sta_remove_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              struct dentry * ) ;
   void (*sta_notify)(struct ieee80211_hw * , struct ieee80211_vif * , enum sta_notify_cmd ,
                      struct ieee80211_sta * ) ;
   int (*sta_state)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                    enum ieee80211_sta_state , enum ieee80211_sta_state ) ;
   void (*sta_pre_rcu_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_rc_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                         u32 ) ;
   void (*sta_rate_tbl_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_statistics)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                          struct station_info * ) ;
   int (*conf_tx)(struct ieee80211_hw * , struct ieee80211_vif * , u16 , struct ieee80211_tx_queue_params const * ) ;
   u64 (*get_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*set_tsf)(struct ieee80211_hw * , struct ieee80211_vif * , u64 ) ;
   void (*reset_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*tx_last_beacon)(struct ieee80211_hw * ) ;
   int (*ampdu_action)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_ampdu_mlme_action ,
                       struct ieee80211_sta * , u16 , u16 * , u8 ) ;
   int (*get_survey)(struct ieee80211_hw * , int , struct survey_info * ) ;
   void (*rfkill_poll)(struct ieee80211_hw * ) ;
   void (*set_coverage_class)(struct ieee80211_hw * , s16 ) ;
   int (*testmode_cmd)(struct ieee80211_hw * , struct ieee80211_vif * , void * , int ) ;
   int (*testmode_dump)(struct ieee80211_hw * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   void (*flush)(struct ieee80211_hw * , struct ieee80211_vif * , u32 , bool ) ;
   void (*channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel_switch * ) ;
   int (*set_antenna)(struct ieee80211_hw * , u32 , u32 ) ;
   int (*get_antenna)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*remain_on_channel)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel * ,
                            int , enum ieee80211_roc_type ) ;
   int (*cancel_remain_on_channel)(struct ieee80211_hw * ) ;
   int (*set_ringparam)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_ringparam)(struct ieee80211_hw * , u32 * , u32 * , u32 * , u32 * ) ;
   bool (*tx_frames_pending)(struct ieee80211_hw * ) ;
   int (*set_bitrate_mask)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_bitrate_mask const * ) ;
   void (*event_callback)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_event const * ) ;
   void (*allow_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                 u16 , int , enum ieee80211_frame_release_type ,
                                 bool ) ;
   void (*release_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                   u16 , int , enum ieee80211_frame_release_type ,
                                   bool ) ;
   int (*get_et_sset_count)(struct ieee80211_hw * , struct ieee80211_vif * , int ) ;
   void (*get_et_stats)(struct ieee80211_hw * , struct ieee80211_vif * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct ieee80211_hw * , struct ieee80211_vif * , u32 ,
                          u8 * ) ;
   void (*mgd_prepare_tx)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*mgd_protect_tdls_discover)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*add_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*remove_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*change_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ,
                          u32 ) ;
   int (*assign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*unassign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   int (*switch_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif_chanctx_switch * ,
                             int , enum ieee80211_chanctx_switch_mode ) ;
   void (*reconfig_complete)(struct ieee80211_hw * , enum ieee80211_reconfig_type ) ;
   void (*ipv6_addr_change)(struct ieee80211_hw * , struct ieee80211_vif * , struct inet6_dev * ) ;
   void (*channel_switch_beacon)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                 struct cfg80211_chan_def * ) ;
   int (*pre_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel_switch * ) ;
   int (*post_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*join_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*leave_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u32 (*get_expected_throughput)(struct ieee80211_sta * ) ;
   int (*get_txpower)(struct ieee80211_hw * , struct ieee80211_vif * , int * ) ;
   int (*tdls_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              u8 , struct cfg80211_chan_def * , struct sk_buff * ,
                              u32 ) ;
   void (*tdls_cancel_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                      struct ieee80211_sta * ) ;
   void (*tdls_recv_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                    struct ieee80211_tdls_ch_sw_params * ) ;
   void (*wake_tx_queue)(struct ieee80211_hw * , struct ieee80211_txq * ) ;
};
struct b43legacy_wldev;
struct b43legacy_txstatus;
enum b43legacy_dyndbg {
    B43legacy_DBG_XMITPOWER = 0,
    B43legacy_DBG_DMAOVERFLOW = 1,
    B43legacy_DBG_DMAVERBOSE = 2,
    B43legacy_DBG_PWORK_FAST = 3,
    B43legacy_DBG_PWORK_STOP = 4,
    __B43legacy_NR_DYNDBG = 5
} ;
struct b43legacy_txstatus_log {
   struct b43legacy_txstatus *log ;
   int end ;
   spinlock_t lock ;
};
struct b43legacy_dfs_file {
   struct dentry *dentry ;
   char *buffer ;
   size_t data_len ;
};
struct b43legacy_dfsentry {
   struct b43legacy_wldev *dev ;
   struct dentry *subdir ;
   struct b43legacy_dfs_file file_tsf ;
   struct b43legacy_dfs_file file_ucode_regs ;
   struct b43legacy_dfs_file file_shm ;
   struct b43legacy_dfs_file file_txstat ;
   struct b43legacy_dfs_file file_txpower_g ;
   struct b43legacy_dfs_file file_restart ;
   struct b43legacy_dfs_file file_loctls ;
   struct b43legacy_txstatus_log txstatlog ;
   u32 dyn_debug[5U] ;
   struct dentry *dyn_debug_dentries[5U] ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct b43legacy_led {
   struct b43legacy_wldev *dev ;
   struct led_classdev led_dev ;
   u8 index ;
   bool activelow ;
   char name[32U] ;
};
struct b43legacy_dmaring;
struct b43legacy_pioqueue;
struct b43legacy_fw_header {
   u8 type ;
   u8 ver ;
   u8 __padding[2U] ;
   __be32 size ;
};
union __anonunion_data_401 {
   __be16 d16 ;
   __be32 d32 ;
};
struct b43legacy_iv {
   __be16 offset_size ;
   union __anonunion_data_401 data ;
};
struct b43legacy_lopair {
   s8 low ;
   s8 high ;
   unsigned char used : 1 ;
};
struct __anonstruct_radio_off_context_402 {
   bool valid ;
   u16 rfover ;
   u16 rfoverval ;
};
struct b43legacy_txpower_lo_control;
struct __anonstruct____missing_field_name_403 {
   u16 rfatt ;
   u16 bbatt ;
   u16 txctl1 ;
   u16 txctl2 ;
};
struct __anonstruct____missing_field_name_404 {
   u16 txpwr_offset ;
};
struct b43legacy_phy {
   u8 possible_phymodes ;
   bool gmode ;
   u8 analog ;
   u8 type ;
   u8 rev ;
   u16 antenna_diversity ;
   u16 savedpctlreg ;
   u16 radio_manuf ;
   u16 radio_ver ;
   unsigned char calibrated : 1 ;
   u8 radio_rev ;
   bool dyn_tssi_tbl ;
   bool aci_enable ;
   bool aci_wlan_automatic ;
   bool aci_hw_rssi ;
   bool radio_on ;
   struct __anonstruct_radio_off_context_402 radio_off_context ;
   u16 minlowsig[2U] ;
   u16 minlowsigpos[2U] ;
   struct b43legacy_lopair *_lo_pairs ;
   s8 const *tssi2dbm ;
   s8 idle_tssi ;
   int tgt_idle_tssi ;
   int cur_idle_tssi ;
   struct b43legacy_txpower_lo_control *lo_control ;
   s16 max_lb_gain ;
   s16 trsw_rx_gain ;
   s16 lna_lod_gain ;
   s16 lna_gain ;
   s16 pga_gain ;
   u8 power_level ;
   u16 loopback_gain[2U] ;
   struct __anonstruct____missing_field_name_403 __annonCompField105 ;
   struct __anonstruct____missing_field_name_404 __annonCompField106 ;
   int interfmode ;
   u32 interfstack[26U] ;
   s16 nrssi[2U] ;
   s32 nrssislope ;
   s8 nrssi_lt[64U] ;
   u8 channel ;
   u16 lofcal ;
   u16 initval ;
   atomic_t txerr_cnt ;
   bool manual_txpower_control ;
   bool phy_locked ;
};
struct b43legacy_dma {
   struct b43legacy_dmaring *tx_ring0 ;
   struct b43legacy_dmaring *tx_ring1 ;
   struct b43legacy_dmaring *tx_ring2 ;
   struct b43legacy_dmaring *tx_ring3 ;
   struct b43legacy_dmaring *tx_ring4 ;
   struct b43legacy_dmaring *tx_ring5 ;
   struct b43legacy_dmaring *rx_ring0 ;
   struct b43legacy_dmaring *rx_ring3 ;
   u32 translation ;
};
struct b43legacy_pio {
   struct b43legacy_pioqueue *queue0 ;
   struct b43legacy_pioqueue *queue1 ;
   struct b43legacy_pioqueue *queue2 ;
   struct b43legacy_pioqueue *queue3 ;
};
struct b43legacy_noise_calculation {
   u8 channel_at_start ;
   bool calculation_running ;
   u8 nr_samples ;
   s8 samples[8U][4U] ;
};
struct b43legacy_stats {
   u8 link_noise ;
   unsigned long last_tx ;
   unsigned long last_rx ;
};
struct b43legacy_key {
   void *keyconf ;
   bool enabled ;
   u8 algorithm ;
};
struct b43legacy_qos_params {
   struct ieee80211_tx_queue_params p ;
};
struct b43legacy_wl {
   struct b43legacy_wldev *current_dev ;
   struct ieee80211_hw *hw ;
   spinlock_t irq_lock ;
   struct mutex mutex ;
   spinlock_t leds_lock ;
   struct work_struct firmware_load ;
   struct ieee80211_vif *vif ;
   u8 mac_addr[6U] ;
   u8 bssid[6U] ;
   int if_type ;
   bool operating ;
   unsigned int filter_flags ;
   struct ieee80211_low_level_stats ieee_stats ;
   struct hwrng rng ;
   u8 rng_initialized ;
   char rng_name[31U] ;
   struct list_head devlist ;
   u8 nr_devs ;
   bool radiotap_enabled ;
   bool radio_enabled ;
   struct sk_buff *current_beacon ;
   bool beacon0_uploaded ;
   bool beacon1_uploaded ;
   bool beacon_templates_virgin ;
   struct work_struct beacon_update_trigger ;
   struct b43legacy_qos_params qos_params[4U] ;
   struct work_struct tx_work ;
   struct sk_buff_head tx_queue[4U] ;
   bool tx_queue_stopped[4U] ;
};
struct b43legacy_firmware {
   struct firmware const *ucode ;
   struct firmware const *pcm ;
   struct firmware const *initvals ;
   struct firmware const *initvals_band ;
   u16 rev ;
   u16 patch ;
};
union __anonunion____missing_field_name_405 {
   struct b43legacy_dma dma ;
   struct b43legacy_pio pio ;
};
struct b43legacy_wldev {
   struct ssb_device *dev ;
   struct b43legacy_wl *wl ;
   atomic_t __init_status ;
   int suspend_init_status ;
   bool __using_pio ;
   bool bad_frames_preempt ;
   bool dfq_valid ;
   bool short_preamble ;
   bool radio_hw_enable ;
   struct b43legacy_phy phy ;
   union __anonunion____missing_field_name_405 __annonCompField107 ;
   struct b43legacy_stats stats ;
   struct b43legacy_led led_tx ;
   struct b43legacy_led led_rx ;
   struct b43legacy_led led_assoc ;
   struct b43legacy_led led_radio ;
   u32 irq_reason ;
   u32 dma_reason[6U] ;
   u32 irq_mask ;
   struct b43legacy_noise_calculation noisecalc ;
   int mac_suspended ;
   struct tasklet_struct isr_tasklet ;
   struct delayed_work periodic_work ;
   unsigned int periodic_state ;
   struct work_struct restart_work ;
   u16 ktp ;
   u8 max_nr_keys ;
   struct b43legacy_key key[58U] ;
   struct b43legacy_firmware fw ;
   struct firmware const *fwp ;
   struct completion fw_load_complete ;
   struct list_head list ;
   struct b43legacy_dfsentry *dfsentry ;
};
struct b43legacy_dmadesc_meta {
   struct sk_buff *skb ;
   dma_addr_t dmaaddr ;
   bool is_last_fragment ;
};
enum b43legacy_dmatype {
    B43legacy_DMA_30BIT = 30,
    B43legacy_DMA_32BIT = 32
} ;
struct b43legacy_dmaring {
   void *descbase ;
   struct b43legacy_dmadesc_meta *meta ;
   u8 *txhdr_cache ;
   dma_addr_t dmabase ;
   int nr_slots ;
   int used_slots ;
   int current_slot ;
   u32 frameoffset ;
   u16 rx_buffersize ;
   u16 mmio_base ;
   int index ;
   bool tx ;
   enum b43legacy_dmatype type ;
   bool stopped ;
   u8 queue_prio ;
   struct b43legacy_wldev *dev ;
   int max_used_slots ;
   unsigned long last_injected_overflow ;
};
struct b43legacy_pio_txpacket {
   struct b43legacy_pioqueue *queue ;
   struct sk_buff *skb ;
   struct list_head list ;
};
struct b43legacy_pioqueue {
   struct b43legacy_wldev *dev ;
   u16 mmio_base ;
   bool tx_suspended ;
   bool tx_frozen ;
   bool need_workarounds ;
   u16 tx_devq_size ;
   u16 tx_devq_used ;
   u8 tx_devq_packets ;
   struct list_head txfree ;
   unsigned int nr_txfree ;
   struct list_head txqueue ;
   struct list_head txrunning ;
   struct tasklet_struct txtask ;
   struct b43legacy_pio_txpacket tx_packets_cache[256U] ;
};
union __anonunion____missing_field_name_406 {
   __le32 data ;
   __u8 raw[4U] ;
};
struct b43legacy_plcp_hdr4 {
   union __anonunion____missing_field_name_406 __annonCompField108 ;
};
struct b43legacy_txstatus {
   u16 cookie ;
   u16 seq ;
   u8 phy_stat ;
   u8 frame_count ;
   u8 rts_count ;
   u8 supp_reason ;
   u8 pm_indicated ;
   u8 intermediate ;
   u8 for_ampdu ;
   u8 acked ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef struct ieee80211_hw *ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
struct __ssb_dev_wrapper {
   struct device dev ;
   struct ssb_device *sdev ;
};
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
struct ieee80211_rts {
   __le16 frame_control ;
   __le16 duration ;
   u8 ra[6U] ;
   u8 ta[6U] ;
};
struct ieee80211_cts {
   __le16 frame_control ;
   __le16 duration ;
   u8 ra[6U] ;
};
struct ieee80211_rx_status;
struct ieee80211_rx_status {
   u64 mactime ;
   u32 device_timestamp ;
   u32 ampdu_reference ;
   u32 flag ;
   u16 freq ;
   u8 vht_flag ;
   u8 rate_idx ;
   u8 vht_nss ;
   u8 rx_flags ;
   u8 band ;
   u8 antenna ;
   s8 signal ;
   u8 chains ;
   s8 chain_signal[4U] ;
   u8 ampdu_delimiter_crc ;
};
union __anonunion____missing_field_name_403 {
   __le32 data ;
   __u8 raw[6U] ;
};
struct b43legacy_plcp_hdr6 {
   union __anonunion____missing_field_name_403 __annonCompField109 ;
};
struct b43legacy_txhdr_fw3 {
   __le32 mac_ctl ;
   __le16 mac_frame_ctl ;
   __le16 tx_fes_time_norm ;
   __le16 phy_ctl ;
   __u8 iv[16U] ;
   __u8 tx_receiver[6U] ;
   __le16 tx_fes_time_fb ;
   struct b43legacy_plcp_hdr4 rts_plcp_fb ;
   __le16 rts_dur_fb ;
   struct b43legacy_plcp_hdr4 plcp_fb ;
   __le16 dur_fb ;
   u8 __p4dding36[2U] ;
   __le16 cookie ;
   __le16 unknown_scb_stuff ;
   struct b43legacy_plcp_hdr6 rts_plcp ;
   __u8 rts_frame[18U] ;
   struct b43legacy_plcp_hdr6 plcp ;
};
struct b43legacy_hwtxstatus {
   u8 __p4dding118[4U] ;
   __le16 cookie ;
   u8 flags ;
   u8 count ;
   u8 __p4dding122[2U] ;
   __le16 seq ;
   u8 phy_stat ;
   u8 __p4dding125[1U] ;
};
struct b43legacy_rxhdr_fw3 {
   __le16 frame_len ;
   u8 __p4dding132[2U] ;
   __le16 phy_status0 ;
   __u8 jssi ;
   __u8 sig_qual ;
   u8 __p4dding136[2U] ;
   __le16 phy_status3 ;
   __le16 mac_status ;
   __le16 mac_time ;
   __le16 channel ;
};
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
enum b43legacy_led_behaviour {
    B43legacy_LED_OFF = 0,
    B43legacy_LED_ON = 1,
    B43legacy_LED_ACTIVITY = 2,
    B43legacy_LED_RADIO_ALL = 3,
    B43legacy_LED_RADIO_A = 4,
    B43legacy_LED_RADIO_B = 5,
    B43legacy_LED_MODE_BG = 6,
    B43legacy_LED_TRANSFER = 7,
    B43legacy_LED_APTRANSFER = 8,
    B43legacy_LED_WEIRD = 9,
    B43legacy_LED_ASSOC = 10,
    B43legacy_LED_INACTIVE = 11
} ;
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
struct b43legacy_debugfs_fops {
   ssize_t (*read)(struct b43legacy_wldev * , char * , size_t ) ;
   int (*write)(struct b43legacy_wldev * , char const * , size_t ) ;
   struct file_operations fops ;
   size_t file_struct_offset ;
   bool take_irqlock ;
};
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
struct b43legacy_dmadesc32 {
   __le32 control ;
   __le32 address ;
};
enum hrtimer_restart;
enum irqchip_irq_state;
enum irqchip_irq_state;
union txhdr_union {
   struct b43legacy_txhdr_fw3 txhdr_fw3 ;
};
void ldv__builtin_va_end(__builtin_va_list * ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
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
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(*p);
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{
  __u32 tmp ;
  {
  tmp = __swab32p(p);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  default:
  __bad_percpu_size();
  }
  ldv_3129: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
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
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
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
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern unsigned long round_jiffies_relative(unsigned long ) ;
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
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_11(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_14(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_17(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_18(struct work_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_10(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
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
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_6_3 ;
struct device_attribute *dev_attr_interference_group0 ;
struct work_struct *ldv_work_struct_5_2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct work_struct *ldv_work_struct_5_3 ;
struct device *dev_attr_shortpreamble_group1 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
int ldv_work_3_2 ;
int ldv_state_variable_14 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct file *fops_ucode_regs_group0 ;
struct device_attribute *dev_attr_shortpreamble_group0 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
int ldv_work_6_0 ;
struct work_struct *ldv_work_struct_2_2 ;
struct work_struct *ldv_work_struct_6_1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
struct ssb_device *b43legacy_ssb_driver_group0 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_work_5_3 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_work_6_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
struct work_struct *ldv_work_struct_6_2 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
int ldv_work_5_0 ;
int ldv_work_5_1 ;
int ldv_work_2_0 ;
struct device *dev_attr_interference_group1 ;
struct work_struct *ldv_work_struct_4_2 ;
int ldv_work_6_3 ;
void *ldv_irq_data_1_2 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
struct file *fops_restart_group0 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_6_0 ;
int ldv_irq_1_1 = 0;
struct work_struct *ldv_work_struct_5_0 ;
struct file *fops_shm_group0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_irq_line_1_3 ;
struct ieee80211_hw *b43legacy_hw_ops_group0 ;
struct file *fops_tsf_group0 ;
int ldv_work_5_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct work_struct *ldv_work_struct_4_1 ;
struct file *fops_txstat_group0 ;
int ldv_work_6_2 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void ldv_initialize_device_attribute_12(void) ;
void activate_work_5(struct work_struct *work , int state ) ;
void work_init_3(void) ;
void ldv_initialize_ssb_driver_14(void) ;
void activate_work_4(struct work_struct *work , int state ) ;
void call_and_disable_all_5(int state ) ;
void ldv_initialize_device_attribute_13(void) ;
void invoke_work_6(void) ;
void work_init_2(void) ;
void call_and_disable_all_2(int state ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void disable_work_6(struct work_struct *work ) ;
void work_init_6(void) ;
void work_init_5(void) ;
void ldv_initialize_ieee80211_ops_15(void) ;
void call_and_disable_all_4(int state ) ;
void choose_interrupt_1(void) ;
void invoke_work_5(void) ;
void ldv_initialize_b43legacy_debugfs_fops_9(void) ;
void disable_work_5(struct work_struct *work ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void ldv_initialize_b43legacy_debugfs_fops_11(void) ;
void disable_work_3(struct work_struct *work ) ;
void ldv_initialize_b43legacy_debugfs_fops_7(void) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_4(struct work_struct *work ) ;
void call_and_disable_all_6(int state ) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void invoke_work_4(void) ;
void call_and_disable_work_5(struct work_struct *work ) ;
void call_and_disable_all_3(int state ) ;
void ldv_initialize_b43legacy_debugfs_fops_8(void) ;
void call_and_disable_work_6(struct work_struct *work ) ;
void call_and_disable_work_4(struct work_struct *work ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
void ldv_initialize_b43legacy_debugfs_fops_10(void) ;
void activate_work_6(struct work_struct *work , int state ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern int net_ratelimit(void) ;
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
extern void consume_skb(struct sk_buff * ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
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
extern void skb_queue_head(struct sk_buff_head * , struct sk_buff * ) ;
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
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
__inline static int ldv_request_irq_13(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_12(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
__inline static u32 get_unaligned_be32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __be32_to_cpup((__be32 const *)p);
  return (tmp);
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
__inline static void eth_zero_addr(u8 *addr )
{
  {
  memset((void *)addr, 0, 6UL);
  return;
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern int request_firmware_nowait(struct module * , bool , char const * , struct device * ,
                                   gfp_t , void * , void (*)(struct firmware const * ,
                                                              void * ) ) ;
extern void release_firmware(struct firmware const * ) ;
extern int hwrng_register(struct hwrng * ) ;
extern void hwrng_unregister(struct hwrng * ) ;
__inline static void ssb_set_drvdata(struct ssb_device *dev , void *data )
{
  {
  dev->drvdata = data;
  return;
}
}
__inline static void *ssb_get_drvdata(struct ssb_device *dev )
{
  {
  return (dev->drvdata);
}
}
extern void ssb_set_devtypedata(struct ssb_device * , void * ) ;
__inline static void *ssb_get_devtypedata(struct ssb_device *dev )
{
  {
  return (dev->devtypedata);
}
}
extern int __ssb_driver_register(struct ssb_driver * , struct module * ) ;
extern void ssb_driver_unregister(struct ssb_driver * ) ;
extern int ssb_pcicore_dev_irqvecs_enable(struct ssb_pcicore * , struct ssb_device * ) ;
extern int ssb_device_is_enabled(struct ssb_device * ) ;
extern void ssb_device_enable(struct ssb_device * , u32 ) ;
extern void ssb_device_disable(struct ssb_device * , u32 ) ;
__inline static u16 ssb_read16(struct ssb_device *dev , u16 offset )
{
  u16 tmp ;
  {
  tmp = (*((dev->ops)->read16))(dev, (int )offset);
  return (tmp);
}
}
__inline static u32 ssb_read32(struct ssb_device *dev , u16 offset )
{
  u32 tmp ;
  {
  tmp = (*((dev->ops)->read32))(dev, (int )offset);
  return (tmp);
}
}
__inline static void ssb_write16(struct ssb_device *dev , u16 offset , u16 value )
{
  {
  (*((dev->ops)->write16))(dev, (int )offset, (int )value);
  return;
}
}
__inline static void ssb_write32(struct ssb_device *dev , u16 offset , u32 value )
{
  {
  (*((dev->ops)->write32))(dev, (int )offset, value);
  return;
}
}
extern int ssb_bus_may_powerdown(struct ssb_bus * ) ;
extern int ssb_bus_powerup(struct ssb_bus * , bool ) ;
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
__inline static char const *wiphy_name(struct wiphy const *wiphy )
{
  char const *tmp ;
  {
  tmp = dev_name(& wiphy->dev);
  return (tmp);
}
}
extern struct ieee80211_rate *ieee80211_get_response_rate(struct ieee80211_supported_band * ,
                                                          u32 , int ) ;
extern void wiphy_rfkill_start_polling(struct wiphy * ) ;
__inline static struct ieee80211_tx_info *IEEE80211_SKB_CB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_tx_info *)(& skb->cb));
}
}
__inline static void _ieee80211_hw_set(struct ieee80211_hw *hw , enum ieee80211_hw_flags flg )
{
  {
  return;
}
}
__inline static void SET_IEEE80211_DEV(struct ieee80211_hw *hw , struct device *dev )
{
  {
  set_wiphy_dev(hw->wiphy, dev);
  return;
}
}
__inline static void SET_IEEE80211_PERM_ADDR(struct ieee80211_hw *hw , u8 *addr )
{
  {
  memmove((void *)(& (hw->wiphy)->perm_addr), (void const *)addr, 6UL);
  return;
}
}
__inline static struct ieee80211_rate *ieee80211_get_tx_rate(struct ieee80211_hw const *hw ,
                                                             struct ieee80211_tx_info const *c )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (int )((signed char )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rates[0].idx) < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 2151);
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
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rates[0].idx);
}
}
extern struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t , struct ieee80211_ops const * ,
                                                  char const * ) ;
__inline static struct ieee80211_hw *ieee80211_alloc_hw(size_t priv_data_len , struct ieee80211_ops const *ops )
{
  struct ieee80211_hw *tmp ;
  {
  tmp = ieee80211_alloc_hw_nm(priv_data_len, ops, (char const *)0);
  return (tmp);
}
}
__inline static struct ieee80211_hw *ldv_ieee80211_alloc_hw_16(size_t priv_data_len ,
                                                               struct ieee80211_ops const *ops ) ;
extern int ieee80211_register_hw(struct ieee80211_hw * ) ;
extern void ieee80211_unregister_hw(struct ieee80211_hw * ) ;
extern void ieee80211_free_hw(struct ieee80211_hw * ) ;
void ldv_ieee80211_free_hw_15(struct ieee80211_hw *ldv_func_arg1 ) ;
extern struct sk_buff *ieee80211_beacon_get_tim(struct ieee80211_hw * , struct ieee80211_vif * ,
                                                u16 * , u16 * ) ;
__inline static struct sk_buff *ieee80211_beacon_get(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct sk_buff *tmp ;
  {
  tmp = ieee80211_beacon_get_tim(hw, vif, (u16 *)0U, (u16 *)0U);
  return (tmp);
}
}
extern __le16 ieee80211_generic_frame_duration(struct ieee80211_hw * , struct ieee80211_vif * ,
                                               enum ieee80211_band , size_t , struct ieee80211_rate * ) ;
extern void ieee80211_stop_queue(struct ieee80211_hw * , int ) ;
extern void ieee80211_wake_queues(struct ieee80211_hw * ) ;
extern void ieee80211_queue_work(struct ieee80211_hw * , struct work_struct * ) ;
extern void ieee80211_queue_delayed_work(struct ieee80211_hw * , struct delayed_work * ,
                                         unsigned long ) ;
int b43legacy_debug(struct b43legacy_wldev *dev , enum b43legacy_dyndbg feature ) ;
void b43legacy_debugfs_init(void) ;
void b43legacy_debugfs_exit(void) ;
void b43legacy_debugfs_add_device(struct b43legacy_wldev *dev ) ;
void b43legacy_debugfs_remove_device(struct b43legacy_wldev *dev ) ;
void b43legacy_leds_init(struct b43legacy_wldev *dev ) ;
void b43legacy_leds_exit(struct b43legacy_wldev *dev ) ;
void b43legacy_rfkill_poll(struct ieee80211_hw *hw ) ;
int b43legacy_phy_init_tssi2dbm_table(struct b43legacy_wldev *dev ) ;
int b43legacy_phy_init(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_set_antenna_diversity(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_calibrate(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_lo_g_measure(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_xmitpower(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_lo_mark_all_unused(struct b43legacy_wldev *dev ) ;
void b43legacy_power_saving_ctl_bits(struct b43legacy_wldev *dev , int bit25 , int bit26 ) ;
__inline static struct b43legacy_wl *hw_to_b43legacy_wl(struct ieee80211_hw *hw )
{
  {
  return ((struct b43legacy_wl *)hw->priv);
}
}
__inline static int b43legacy_using_pio(struct b43legacy_wldev *dev )
{
  {
  return ((int )dev->__using_pio);
}
}
__inline static int b43legacy_is_mode(struct b43legacy_wl *wl , int type )
{
  {
  return ((int )wl->operating && wl->if_type == type);
}
}
__inline static u16 b43legacy_read16(struct b43legacy_wldev *dev , u16 offset )
{
  u16 tmp ;
  {
  tmp = ssb_read16(dev->dev, (int )offset);
  return (tmp);
}
}
__inline static void b43legacy_write16(struct b43legacy_wldev *dev , u16 offset ,
                                       u16 value )
{
  {
  ssb_write16(dev->dev, (int )offset, (int )value);
  return;
}
}
__inline static u32 b43legacy_read32(struct b43legacy_wldev *dev , u16 offset )
{
  u32 tmp ;
  {
  tmp = ssb_read32(dev->dev, (int )offset);
  return (tmp);
}
}
__inline static void b43legacy_write32(struct b43legacy_wldev *dev , u16 offset ,
                                       u32 value )
{
  {
  ssb_write32(dev->dev, (int )offset, value);
  return;
}
}
void b43legacyinfo(struct b43legacy_wl *wl , char const *fmt , ...) ;
void b43legacyerr(struct b43legacy_wl *wl , char const *fmt , ...) ;
void b43legacywarn(struct b43legacy_wl *wl , char const *fmt , ...) ;
void b43legacydbg(struct b43legacy_wl *wl , char const *fmt , ...) ;
__inline static int b43legacy_is_cck_rate(int rate )
{
  {
  return (((rate == 2 || rate == 4) || rate == 11) || rate == 22);
}
}
void b43legacy_tsf_read(struct b43legacy_wldev *dev , u64 *tsf ) ;
void b43legacy_tsf_write(struct b43legacy_wldev *dev , u64 tsf ) ;
u32 b43legacy_shm_read32(struct b43legacy_wldev *dev , u16 routing , u16 offset ) ;
u16 b43legacy_shm_read16(struct b43legacy_wldev *dev , u16 routing , u16 offset ) ;
void b43legacy_shm_write32(struct b43legacy_wldev *dev , u16 routing , u16 offset ,
                           u32 value ) ;
void b43legacy_shm_write16(struct b43legacy_wldev *dev , u16 routing , u16 offset ,
                           u16 value ) ;
u32 b43legacy_hf_read(struct b43legacy_wldev *dev ) ;
void b43legacy_hf_write(struct b43legacy_wldev *dev , u32 value ) ;
void b43legacy_dummy_transmission(struct b43legacy_wldev *dev ) ;
void b43legacy_wireless_core_reset(struct b43legacy_wldev *dev , u32 flags ) ;
void b43legacy_mac_suspend(struct b43legacy_wldev *dev ) ;
void b43legacy_mac_enable(struct b43legacy_wldev *dev ) ;
void b43legacy_controller_restart(struct b43legacy_wldev *dev , char const *reason ) ;
int b43legacy_dma_init(struct b43legacy_wldev *dev ) ;
void b43legacy_dma_free(struct b43legacy_wldev *dev ) ;
int b43legacy_dma_tx(struct b43legacy_wldev *dev , struct sk_buff *skb ) ;
void b43legacy_dma_rx(struct b43legacy_dmaring *ring ) ;
int b43legacy_pio_init(struct b43legacy_wldev *dev ) ;
void b43legacy_pio_free(struct b43legacy_wldev *dev ) ;
int b43legacy_pio_tx(struct b43legacy_wldev *dev , struct sk_buff *skb ) ;
void b43legacy_pio_rx(struct b43legacy_pioqueue *queue ) ;
u8 b43legacy_plcp_get_ratecode_cck(u8 const bitrate ) ;
u8 b43legacy_plcp_get_ratecode_ofdm(u8 const bitrate ) ;
void b43legacy_generate_plcp_hdr(struct b43legacy_plcp_hdr4 *plcp , u16 const octets ,
                                 u8 const bitrate ) ;
void b43legacy_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status ) ;
void b43legacy_qos_init(struct b43legacy_wldev *dev ) ;
void b43legacy_radio_write16(struct b43legacy_wldev *dev , u16 offset , u16 val ) ;
void b43legacy_radio_turn_on(struct b43legacy_wldev *dev ) ;
void b43legacy_radio_turn_off(struct b43legacy_wldev *dev , bool force ) ;
int b43legacy_radio_selectchannel(struct b43legacy_wldev *dev , u8 channel , int synthetic_pu_workaround ) ;
u16 b43legacy_default_baseband_attenuation(struct b43legacy_wldev *dev ) ;
u16 b43legacy_default_radio_attenuation(struct b43legacy_wldev *dev ) ;
u16 b43legacy_default_txctl1(struct b43legacy_wldev *dev ) ;
int b43legacy_radio_set_interference_mitigation(struct b43legacy_wldev *dev , int mode ) ;
void b43legacy_calc_nrssi_slope(struct b43legacy_wldev *dev ) ;
static int modparam_pio ;
static int modparam_bad_frames_preempt ;
static char modparam_fwpostfix[16U] ;
static struct ssb_device_id const b43legacy_ssb_tbl[3U] = { {16963U, 2066U, 2U, (unsigned char)0},
        {16963U, 2066U, 4U, (unsigned char)0}};
struct ssb_device_id const __mod_ssb__b43legacy_ssb_tbl_device_table[3U] ;
static struct ieee80211_rate __b43legacy_ratetable[12U] =
  { {0U, 10U, 2U, (unsigned short)0},
        {1U, 20U, 4U, (unsigned short)0},
        {1U, 55U, 11U, (unsigned short)0},
        {1U, 110U, 22U, (unsigned short)0},
        {0U, 60U, 12U, (unsigned short)0},
        {0U, 90U, 18U, (unsigned short)0},
        {0U, 120U, 24U, (unsigned short)0},
        {0U, 180U, 36U, (unsigned short)0},
        {0U, 240U, 48U, (unsigned short)0},
        {0U, 360U, 72U, (unsigned short)0},
        {0U, 480U, 96U, (unsigned short)0},
        {0U, 540U, 108U, (unsigned short)0}};
static struct ieee80211_channel b43legacy_bg_chantable[14U] =
  { {0, 2412U, 1U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2417U, 2U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2422U, 3U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2427U, 4U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2432U, 5U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2437U, 6U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2442U, 7U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2447U, 8U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2452U, 9U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2457U, 10U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2462U, 11U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2467U, 12U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2472U, 13U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2484U, 14U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U}};
static struct ieee80211_supported_band b43legacy_band_2GHz_BPHY = {(struct ieee80211_channel *)(& b43legacy_bg_chantable), (struct ieee80211_rate *)(& __b43legacy_ratetable),
    0, 14, 4, {(unsigned short)0, (_Bool)0, (unsigned char)0, (unsigned char)0, {{(unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0},
                                                                                 (unsigned short)0,
                                                                                 (unsigned char)0,
                                                                                 {(unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0}}},
    {(_Bool)0, 0U, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0}}};
static struct ieee80211_supported_band b43legacy_band_2GHz_GPHY = {(struct ieee80211_channel *)(& b43legacy_bg_chantable), (struct ieee80211_rate *)(& __b43legacy_ratetable),
    0, 14, 12, {(unsigned short)0, (_Bool)0, (unsigned char)0, (unsigned char)0, {{(unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0},
                                                                                  (unsigned short)0,
                                                                                  (unsigned char)0,
                                                                                  {(unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0}}},
    {(_Bool)0, 0U, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0}}};
static void b43legacy_wireless_core_exit(struct b43legacy_wldev *dev ) ;
static int b43legacy_wireless_core_init(struct b43legacy_wldev *dev ) ;
static void b43legacy_wireless_core_stop(struct b43legacy_wldev *dev ) ;
static int b43legacy_wireless_core_start(struct b43legacy_wldev *dev ) ;
static int b43legacy_ratelimit(struct b43legacy_wl *wl )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )wl == (unsigned long )((struct b43legacy_wl *)0) || (unsigned long )wl->current_dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    return (1);
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& (wl->current_dev)->__init_status));
  if (tmp <= 1) {
    return (1);
  } else {
  }
  tmp___0 = net_ratelimit();
  return (tmp___0);
}
}
void b43legacyinfo(struct b43legacy_wl *wl , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = b43legacy_ratelimit(wl);
  if (tmp == 0) {
    return;
  } else {
  }
  ldv__builtin_va_start((va_list *)(& args));
  vaf.fmt = fmt;
  vaf.va = & args;
  if ((unsigned long )wl != (unsigned long )((struct b43legacy_wl *)0) && (unsigned long )wl->hw != (unsigned long )((struct ieee80211_hw *)0)) {
    tmp___0 = wiphy_name((struct wiphy const *)(wl->hw)->wiphy);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = "wlan";
  }
  printk("\016b43legacy-%s: %pV", tmp___1, & vaf);
  ldv__builtin_va_end((va_list *)(& args));
  return;
}
}
void b43legacyerr(struct b43legacy_wl *wl , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = b43legacy_ratelimit(wl);
  if (tmp == 0) {
    return;
  } else {
  }
  ldv__builtin_va_start((va_list *)(& args));
  vaf.fmt = fmt;
  vaf.va = & args;
  if ((unsigned long )wl != (unsigned long )((struct b43legacy_wl *)0) && (unsigned long )wl->hw != (unsigned long )((struct ieee80211_hw *)0)) {
    tmp___0 = wiphy_name((struct wiphy const *)(wl->hw)->wiphy);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = "wlan";
  }
  printk("\vb43legacy-%s OLD_ERROR: %pV", tmp___1, & vaf);
  ldv__builtin_va_end((va_list *)(& args));
  return;
}
}
void b43legacywarn(struct b43legacy_wl *wl , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = b43legacy_ratelimit(wl);
  if (tmp == 0) {
    return;
  } else {
  }
  ldv__builtin_va_start((va_list *)(& args));
  vaf.fmt = fmt;
  vaf.va = & args;
  if ((unsigned long )wl != (unsigned long )((struct b43legacy_wl *)0) && (unsigned long )wl->hw != (unsigned long )((struct ieee80211_hw *)0)) {
    tmp___0 = wiphy_name((struct wiphy const *)(wl->hw)->wiphy);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = "wlan";
  }
  printk("\fb43legacy-%s warning: %pV", tmp___1, & vaf);
  ldv__builtin_va_end((va_list *)(& args));
  return;
}
}
void b43legacydbg(struct b43legacy_wl *wl , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  ldv__builtin_va_start((va_list *)(& args));
  vaf.fmt = fmt;
  vaf.va = & args;
  if ((unsigned long )wl != (unsigned long )((struct b43legacy_wl *)0) && (unsigned long )wl->hw != (unsigned long )((struct ieee80211_hw *)0)) {
    tmp = wiphy_name((struct wiphy const *)(wl->hw)->wiphy);
    tmp___0 = tmp;
  } else {
    tmp___0 = "wlan";
  }
  printk("\017b43legacy-%s debug: %pV", tmp___0, & vaf);
  ldv__builtin_va_end((va_list *)(& args));
  return;
}
}
static void b43legacy_ram_write(struct b43legacy_wldev *dev , u16 offset , u32 val )
{
  u32 status ;
  int __ret_warn_on ;
  long tmp ;
  __u32 tmp___0 ;
  {
  __ret_warn_on = ((unsigned int )offset & 3U) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       260);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  status = b43legacy_read32(dev, 288);
  if ((status & 65536U) != 0U) {
    tmp___0 = __fswab32(val);
    val = tmp___0;
  } else {
  }
  b43legacy_write32(dev, 304, (u32 )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_write32(dev, 308, val);
  return;
}
}
__inline static void b43legacy_shm_control_word(struct b43legacy_wldev *dev , u16 routing ,
                                                u16 offset )
{
  u32 control ;
  {
  control = (u32 )routing;
  control = control << 16;
  control = (u32 )offset | control;
  b43legacy_write32(dev, 352, control);
  return;
}
}
u32 b43legacy_shm_read32(struct b43legacy_wldev *dev , u16 routing , u16 offset )
{
  u32 ret ;
  int __ret_warn_on ;
  long tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  if ((unsigned int )routing == 1U) {
    __ret_warn_on = (int )offset & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                         291);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (((int )offset & 3) != 0) {
      b43legacy_shm_control_word(dev, (int )routing, (int )offset >> 2);
      tmp___0 = b43legacy_read16(dev, 358);
      ret = (u32 )tmp___0;
      ret = ret << 16;
      b43legacy_shm_control_word(dev, (int )routing, (int )((unsigned int )((u16 )((int )offset >> 2)) + 1U));
      tmp___1 = b43legacy_read16(dev, 356);
      ret = (u32 )tmp___1 | ret;
      return (ret);
    } else {
    }
    offset = (u16 )((int )offset >> 2);
  } else {
  }
  b43legacy_shm_control_word(dev, (int )routing, (int )offset);
  ret = b43legacy_read32(dev, 356);
  return (ret);
}
}
u16 b43legacy_shm_read16(struct b43legacy_wldev *dev , u16 routing , u16 offset )
{
  u16 ret ;
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned int )routing == 1U) {
    __ret_warn_on = (int )offset & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                         318);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (((int )offset & 3) != 0) {
      b43legacy_shm_control_word(dev, (int )routing, (int )offset >> 2);
      ret = b43legacy_read16(dev, 358);
      return (ret);
    } else {
    }
    offset = (u16 )((int )offset >> 2);
  } else {
  }
  b43legacy_shm_control_word(dev, (int )routing, (int )offset);
  ret = b43legacy_read16(dev, 356);
  return (ret);
}
}
void b43legacy_shm_write32(struct b43legacy_wldev *dev , u16 routing , u16 offset ,
                           u32 value )
{
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned int )routing == 1U) {
    __ret_warn_on = (int )offset & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                         340);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (((int )offset & 3) != 0) {
      b43legacy_shm_control_word(dev, (int )routing, (int )offset >> 2);
      __asm__ volatile ("": : : "memory");
      b43legacy_write16(dev, 358, (int )((u16 )(value >> 16)));
      __asm__ volatile ("": : : "memory");
      b43legacy_shm_control_word(dev, (int )routing, (int )((unsigned int )((u16 )((int )offset >> 2)) + 1U));
      __asm__ volatile ("": : : "memory");
      b43legacy_write16(dev, 356, (int )((u16 )value));
      return;
    } else {
    }
    offset = (u16 )((int )offset >> 2);
  } else {
  }
  b43legacy_shm_control_word(dev, (int )routing, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_write32(dev, 356, value);
  return;
}
}
void b43legacy_shm_write16(struct b43legacy_wldev *dev , u16 routing , u16 offset ,
                           u16 value )
{
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned int )routing == 1U) {
    __ret_warn_on = (int )offset & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                         367);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (((int )offset & 3) != 0) {
      b43legacy_shm_control_word(dev, (int )routing, (int )offset >> 2);
      __asm__ volatile ("": : : "memory");
      b43legacy_write16(dev, 358, (int )value);
      return;
    } else {
    }
    offset = (u16 )((int )offset >> 2);
  } else {
  }
  b43legacy_shm_control_word(dev, (int )routing, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_write16(dev, 356, (int )value);
  return;
}
}
u32 b43legacy_hf_read(struct b43legacy_wldev *dev )
{
  u32 ret ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = b43legacy_shm_read16(dev, 1, 96);
  ret = (u32 )tmp;
  ret = ret << 16;
  tmp___0 = b43legacy_shm_read16(dev, 1, 94);
  ret = (u32 )tmp___0 | ret;
  return (ret);
}
}
void b43legacy_hf_write(struct b43legacy_wldev *dev , u32 value )
{
  {
  b43legacy_shm_write16(dev, 1, 94, (int )((u16 )value));
  b43legacy_shm_write16(dev, 1, 96, (int )((u16 )(value >> 16)));
  return;
}
}
void b43legacy_tsf_read(struct b43legacy_wldev *dev , u64 *tsf )
{
  u32 low ;
  u32 high ;
  u32 high2 ;
  long tmp ;
  u64 tmp___0 ;
  u16 v0 ;
  u16 v1 ;
  u16 v2 ;
  u16 v3 ;
  u16 test1 ;
  u16 test2 ;
  u16 test3 ;
  {
  if ((unsigned int )(dev->dev)->id.revision > 2U) {
    ldv_55365:
    high = b43legacy_read32(dev, 388);
    low = b43legacy_read32(dev, 384);
    high2 = b43legacy_read32(dev, 388);
    tmp = ldv__builtin_expect(high != high2, 0L);
    if (tmp != 0L) {
      goto ldv_55365;
    } else {
    }
    *tsf = (u64 )high;
    *tsf = *tsf << 32;
    *tsf = *tsf | (u64 )low;
  } else {
    ldv_55375:
    v3 = b43legacy_read16(dev, 1592);
    v2 = b43legacy_read16(dev, 1590);
    v1 = b43legacy_read16(dev, 1588);
    v0 = b43legacy_read16(dev, 1586);
    test3 = b43legacy_read16(dev, 1592);
    test2 = b43legacy_read16(dev, 1590);
    test1 = b43legacy_read16(dev, 1588);
    if (((int )v3 != (int )test3 || (int )v2 != (int )test2) || (int )v1 != (int )test1) {
      goto ldv_55375;
    } else {
    }
    *tsf = (u64 )v3;
    *tsf = *tsf << 48;
    tmp___0 = (u64 )v2;
    tmp___0 = tmp___0 << 32;
    *tsf = *tsf | tmp___0;
    tmp___0 = (u64 )v1;
    tmp___0 = tmp___0 << 16;
    *tsf = *tsf | tmp___0;
    *tsf = *tsf | (u64 )v0;
  }
  return;
}
}
static void b43legacy_time_lock(struct b43legacy_wldev *dev )
{
  u32 status ;
  {
  status = b43legacy_read32(dev, 288);
  status = status | 268435456U;
  b43legacy_write32(dev, 288, status);
  __asm__ volatile ("": : : "memory");
  return;
}
}
static void b43legacy_time_unlock(struct b43legacy_wldev *dev )
{
  u32 status ;
  {
  status = b43legacy_read32(dev, 288);
  status = status & 4026531839U;
  b43legacy_write32(dev, 288, status);
  return;
}
}
static void b43legacy_tsf_write_locked(struct b43legacy_wldev *dev , u64 tsf )
{
  u32 lo ;
  u32 hi ;
  u16 v0 ;
  u16 v1 ;
  u16 v2 ;
  u16 v3 ;
  {
  if ((unsigned int )(dev->dev)->id.revision > 2U) {
    lo = (u32 )tsf;
    hi = (u32 )(tsf >> 32);
    b43legacy_write32(dev, 384, 0U);
    __asm__ volatile ("": : : "memory");
    b43legacy_write32(dev, 388, hi);
    __asm__ volatile ("": : : "memory");
    b43legacy_write32(dev, 384, lo);
  } else {
    v0 = (u16 )tsf;
    v1 = (u16 )((tsf & 4294901760ULL) >> 16);
    v2 = (u16 )((tsf & 281470681743360ULL) >> 32);
    v3 = (u16 )(tsf >> 48);
    b43legacy_write16(dev, 1586, 0);
    __asm__ volatile ("": : : "memory");
    b43legacy_write16(dev, 1592, (int )v3);
    __asm__ volatile ("": : : "memory");
    b43legacy_write16(dev, 1590, (int )v2);
    __asm__ volatile ("": : : "memory");
    b43legacy_write16(dev, 1588, (int )v1);
    __asm__ volatile ("": : : "memory");
    b43legacy_write16(dev, 1586, (int )v0);
  }
  return;
}
}
void b43legacy_tsf_write(struct b43legacy_wldev *dev , u64 tsf )
{
  {
  b43legacy_time_lock(dev);
  b43legacy_tsf_write_locked(dev, tsf);
  b43legacy_time_unlock(dev);
  return;
}
}
static void b43legacy_macfilter_set(struct b43legacy_wldev *dev , u16 offset , u8 const *mac )
{
  u8 zero_addr[6U] ;
  unsigned int tmp ;
  u16 data ;
  {
  zero_addr[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 6U) {
      break;
    } else {
    }
    zero_addr[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  if ((unsigned long )mac == (unsigned long )((u8 const *)0U)) {
    mac = (u8 const *)(& zero_addr);
  } else {
  }
  offset = (u16 )((unsigned int )offset | 32U);
  b43legacy_write16(dev, 1056, (int )offset);
  data = (u16 )*mac;
  data = (u16 )((int )((short )((int )*(mac + 1UL) << 8)) | (int )((short )data));
  b43legacy_write16(dev, 1058, (int )data);
  data = (u16 )*(mac + 2UL);
  data = (u16 )((int )((short )((int )*(mac + 3UL) << 8)) | (int )((short )data));
  b43legacy_write16(dev, 1058, (int )data);
  data = (u16 )*(mac + 4UL);
  data = (u16 )((int )((short )((int )*(mac + 5UL) << 8)) | (int )((short )data));
  b43legacy_write16(dev, 1058, (int )data);
  return;
}
}
static void b43legacy_write_mac_bssid_templates(struct b43legacy_wldev *dev )
{
  u8 zero_addr[6U] ;
  unsigned int tmp ;
  u8 const *mac ;
  u8 const *bssid ;
  u8 mac_bssid[12U] ;
  int i ;
  u32 tmp___0 ;
  {
  zero_addr[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 6U) {
      break;
    } else {
    }
    zero_addr[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  mac = (u8 const *)(& (dev->wl)->mac_addr);
  bssid = (u8 const *)(& (dev->wl)->bssid);
  if ((unsigned long )bssid == (unsigned long )((u8 const *)0U)) {
    bssid = (u8 const *)(& zero_addr);
  } else {
  }
  if ((unsigned long )mac == (unsigned long )((u8 const *)0U)) {
    mac = (u8 const *)(& zero_addr);
  } else {
  }
  b43legacy_macfilter_set(dev, 3, bssid);
  memcpy((void *)(& mac_bssid), (void const *)mac, 6UL);
  memcpy((void *)(& mac_bssid) + 6U, (void const *)bssid, 6UL);
  i = 0;
  goto ldv_55418;
  ldv_55417:
  tmp___0 = (unsigned int )mac_bssid[i];
  tmp___0 = ((unsigned int )mac_bssid[i + 1] << 8) | tmp___0;
  tmp___0 = ((unsigned int )mac_bssid[i + 2] << 16) | tmp___0;
  tmp___0 = ((unsigned int )mac_bssid[i + 3] << 24) | tmp___0;
  b43legacy_ram_write(dev, (int )((unsigned int )((u16 )i) + 32U), tmp___0);
  b43legacy_ram_write(dev, (int )((unsigned int )((u16 )i) + 120U), tmp___0);
  b43legacy_ram_write(dev, (int )((unsigned int )((u16 )i) + 1144U), tmp___0);
  i = (int )((unsigned int )i + 4U);
  ldv_55418: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_55417;
  } else {
  }
  return;
}
}
static void b43legacy_upload_card_macaddress(struct b43legacy_wldev *dev )
{
  {
  b43legacy_write_mac_bssid_templates(dev);
  b43legacy_macfilter_set(dev, 0, (u8 const *)(& (dev->wl)->mac_addr));
  return;
}
}
static void b43legacy_set_slot_time(struct b43legacy_wldev *dev , u16 slot_time )
{
  {
  if ((unsigned int )dev->phy.type != 2U) {
    return;
  } else {
  }
  b43legacy_write16(dev, 1668, (int )((unsigned int )slot_time + 510U));
  b43legacy_shm_write16(dev, 1, 16, (int )slot_time);
  return;
}
}
static void b43legacy_short_slot_timing_enable(struct b43legacy_wldev *dev )
{
  {
  b43legacy_set_slot_time(dev, 9);
  return;
}
}
static void b43legacy_short_slot_timing_disable(struct b43legacy_wldev *dev )
{
  {
  b43legacy_set_slot_time(dev, 20);
  return;
}
}
static void b43legacy_synchronize_irq(struct b43legacy_wldev *dev )
{
  {
  synchronize_irq((dev->dev)->irq);
  tasklet_kill(& dev->isr_tasklet);
  return;
}
}
void b43legacy_dummy_transmission(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  unsigned int i ;
  unsigned int max_loop ;
  u16 value ;
  u32 buffer[5U] ;
  long tmp ;
  long tmp___0 ;
  {
  phy = & dev->phy;
  buffer[0] = 0U;
  buffer[1] = 13893632U;
  buffer[2] = 0U;
  buffer[3] = 16777216U;
  buffer[4] = 0U;
  switch ((int )phy->type) {
  case 1: ;
  case 2:
  max_loop = 250U;
  buffer[0] = 754798U;
  goto ldv_55446;
  default:
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                           "i" (645), "i" (12UL));
      ldv_55448: ;
      goto ldv_55448;
    } else {
    }
  } else {
  }
  return;
  }
  ldv_55446:
  i = 0U;
  goto ldv_55450;
  ldv_55449:
  b43legacy_ram_write(dev, (int )((unsigned int )((u16 )i) * 4U), buffer[i]);
  i = i + 1U;
  ldv_55450: ;
  if (i <= 4U) {
    goto ldv_55449;
  } else {
  }
  b43legacy_read32(dev, 288);
  b43legacy_write16(dev, 1384, 0);
  b43legacy_write16(dev, 1984, 0);
  b43legacy_write16(dev, 1292, 0);
  b43legacy_write16(dev, 1288, 0);
  b43legacy_write16(dev, 1290, 0);
  b43legacy_write16(dev, 1356, 0);
  b43legacy_write16(dev, 1386, 20);
  b43legacy_write16(dev, 1384, 2086);
  b43legacy_write16(dev, 1280, 0);
  b43legacy_write16(dev, 1282, 48);
  if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev <= 5U) {
    b43legacy_radio_write16(dev, 81, 23);
  } else {
  }
  i = 0U;
  goto ldv_55454;
  ldv_55453:
  value = b43legacy_read16(dev, 1294);
  if (((int )value & 128) != 0) {
    goto ldv_55452;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_55454: ;
  if (i < max_loop) {
    goto ldv_55453;
  } else {
  }
  ldv_55452:
  i = 0U;
  goto ldv_55457;
  ldv_55456:
  value = b43legacy_read16(dev, 1294);
  if (((int )value & 1024) != 0) {
    goto ldv_55455;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_55457: ;
  if (i <= 9U) {
    goto ldv_55456;
  } else {
  }
  ldv_55455:
  i = 0U;
  goto ldv_55460;
  ldv_55459:
  value = b43legacy_read16(dev, 1680);
  if (((int )value & 256) == 0) {
    goto ldv_55458;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_55460: ;
  if (i <= 9U) {
    goto ldv_55459;
  } else {
  }
  ldv_55458: ;
  if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev <= 5U) {
    b43legacy_radio_write16(dev, 81, 55);
  } else {
  }
  return;
}
}
static void b43legacy_switch_analog(struct b43legacy_wldev *dev , int on )
{
  {
  b43legacy_write16(dev, 998, on != 0 ? 0 : 244);
  return;
}
}
void b43legacy_wireless_core_reset(struct b43legacy_wldev *dev , u32 flags )
{
  u32 tmslow ;
  u32 macctl ;
  {
  flags = flags | 262144U;
  flags = flags | 524288U;
  ssb_device_enable(dev->dev, flags);
  msleep(2U);
  tmslow = ssb_read32(dev->dev, 3992);
  tmslow = tmslow | 131072U;
  tmslow = tmslow & 4294443007U;
  ssb_write32(dev->dev, 3992, tmslow);
  ssb_read32(dev->dev, 3992);
  msleep(1U);
  tmslow = tmslow & 4294836223U;
  ssb_write32(dev->dev, 3992, tmslow);
  ssb_read32(dev->dev, 3992);
  msleep(1U);
  b43legacy_switch_analog(dev, 1);
  macctl = b43legacy_read32(dev, 288);
  macctl = macctl & 2147483647U;
  if ((flags & 536870912U) != 0U) {
    macctl = macctl | 2147483648U;
    dev->phy.gmode = 1;
  } else {
    dev->phy.gmode = 0;
  }
  macctl = macctl | 1024U;
  b43legacy_write32(dev, 288, macctl);
  return;
}
}
static void handle_irq_transmit_status(struct b43legacy_wldev *dev )
{
  u32 v0 ;
  u32 v1 ;
  u16 tmp ;
  struct b43legacy_txstatus stat ;
  {
  ldv_55479:
  v0 = b43legacy_read32(dev, 368);
  if ((v0 & 1U) == 0U) {
    goto ldv_55478;
  } else {
  }
  v1 = b43legacy_read32(dev, 372);
  stat.cookie = (u16 )(v0 >> 16);
  stat.seq = (u16 )v1;
  stat.phy_stat = (u8 )((v1 & 16711680U) >> 16);
  tmp = (u16 )v0;
  stat.frame_count = (u8 )((int )tmp >> 12);
  stat.rts_count = (u8 )(((int )tmp & 3840) >> 8);
  stat.supp_reason = (u8 )(((int )tmp & 28) >> 2);
  stat.pm_indicated = ((int )tmp & 128) != 0;
  stat.intermediate = ((int )tmp & 64) != 0;
  stat.for_ampdu = ((int )tmp & 32) != 0;
  stat.acked = ((int )tmp & 2) != 0;
  b43legacy_handle_txstatus(dev, (struct b43legacy_txstatus const *)(& stat));
  goto ldv_55479;
  ldv_55478: ;
  return;
}
}
static void drain_txstatus_queue(struct b43legacy_wldev *dev )
{
  u32 dummy ;
  {
  if ((unsigned int )(dev->dev)->id.revision <= 4U) {
    return;
  } else {
  }
  ldv_55485:
  dummy = b43legacy_read32(dev, 368);
  if ((dummy & 1U) == 0U) {
    goto ldv_55484;
  } else {
  }
  dummy = b43legacy_read32(dev, 372);
  goto ldv_55485;
  ldv_55484: ;
  return;
}
}
static u32 b43legacy_jssi_read(struct b43legacy_wldev *dev )
{
  u32 val ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  val = 0U;
  tmp = b43legacy_shm_read16(dev, 1, 1034);
  val = (u32 )tmp;
  val = val << 16;
  tmp___0 = b43legacy_shm_read16(dev, 1, 1032);
  val = (u32 )tmp___0 | val;
  return (val);
}
}
static void b43legacy_jssi_write(struct b43legacy_wldev *dev , u32 jssi )
{
  {
  b43legacy_shm_write16(dev, 1, 1032, (int )((u16 )jssi));
  b43legacy_shm_write16(dev, 1, 1034, (int )((u16 )(jssi >> 16)));
  return;
}
}
static void b43legacy_generate_noise_sample(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  b43legacy_jssi_write(dev, 2139062143U);
  tmp = b43legacy_read32(dev, 292);
  b43legacy_write32(dev, 292, tmp | 16U);
  __ret_warn_on = (int )dev->noisecalc.channel_at_start != (int )dev->phy.channel;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       804);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return;
}
}
static void b43legacy_calculate_link_quality(struct b43legacy_wldev *dev )
{
  {
  if ((int )dev->noisecalc.calculation_running) {
    return;
  } else {
  }
  dev->noisecalc.channel_at_start = dev->phy.channel;
  dev->noisecalc.calculation_running = 1;
  dev->noisecalc.nr_samples = 0U;
  b43legacy_generate_noise_sample(dev);
  return;
}
}
static void handle_irq_noise(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 tmp ;
  u8 noise[4U] ;
  u8 i ;
  u8 j ;
  s32 average ;
  int __ret_warn_on ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  u8 __min1 ;
  u8 __max1 ;
  u8 __max2 ;
  u8 __min2 ;
  u8 __min1___0 ;
  u8 __max1___0 ;
  u8 __max2___0 ;
  u8 __min2___0 ;
  u8 __min1___1 ;
  u8 __max1___1 ;
  u8 __max2___1 ;
  u8 __min2___1 ;
  u8 __min1___2 ;
  u8 __max1___2 ;
  u8 __max2___2 ;
  u8 __min2___2 ;
  {
  phy = & dev->phy;
  __ret_warn_on = ! dev->noisecalc.calculation_running;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       831);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((int )dev->noisecalc.channel_at_start != (int )phy->channel) {
    goto drop_calculation;
  } else {
  }
  *((__le32 *)(& noise)) = b43legacy_jssi_read(dev);
  if ((((unsigned int )noise[0] == 127U || (unsigned int )noise[1] == 127U) || (unsigned int )noise[2] == 127U) || (unsigned int )noise[3] == 127U) {
    goto generate_new;
  } else {
  }
  __ret_warn_on___0 = (unsigned int )dev->noisecalc.nr_samples > 7U;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       840);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  i = dev->noisecalc.nr_samples;
  __max1 = noise[0];
  __max2 = 0U;
  __min1 = (u8 )((int )__max1 > (int )__max2 ? __max1 : __max2);
  __min2 = 63U;
  noise[0] = (u8 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  __max1___0 = noise[1];
  __max2___0 = 0U;
  __min1___0 = (u8 )((int )__max1___0 > (int )__max2___0 ? __max1___0 : __max2___0);
  __min2___0 = 63U;
  noise[1] = (u8 )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0);
  __max1___1 = noise[2];
  __max2___1 = 0U;
  __min1___1 = (u8 )((int )__max1___1 > (int )__max2___1 ? __max1___1 : __max2___1);
  __min2___1 = 63U;
  noise[2] = (u8 )((int )__min1___1 < (int )__min2___1 ? __min1___1 : __min2___1);
  __max1___2 = noise[3];
  __max2___2 = 0U;
  __min1___2 = (u8 )((int )__max1___2 > (int )__max2___2 ? __max1___2 : __max2___2);
  __min2___2 = 63U;
  noise[3] = (u8 )((int )__min1___2 < (int )__min2___2 ? __min1___2 : __min2___2);
  dev->noisecalc.samples[(int )i][0] = phy->nrssi_lt[(int )noise[0]];
  dev->noisecalc.samples[(int )i][1] = phy->nrssi_lt[(int )noise[1]];
  dev->noisecalc.samples[(int )i][2] = phy->nrssi_lt[(int )noise[2]];
  dev->noisecalc.samples[(int )i][3] = phy->nrssi_lt[(int )noise[3]];
  dev->noisecalc.nr_samples = (u8 )((int )dev->noisecalc.nr_samples + 1);
  if ((unsigned int )dev->noisecalc.nr_samples == 8U) {
    average = 0;
    i = 0U;
    goto ldv_55553;
    ldv_55552:
    j = 0U;
    goto ldv_55550;
    ldv_55549:
    average = (int )dev->noisecalc.samples[(int )i][(int )j] + average;
    j = (u8 )((int )j + 1);
    ldv_55550: ;
    if ((unsigned int )j <= 3U) {
      goto ldv_55549;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_55553: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_55552;
    } else {
    }
    average = average / 32;
    average = average * 125;
    average = average + 64;
    average = average / 128;
    tmp = b43legacy_shm_read16(dev, 1, 1036);
    tmp = (unsigned int )((u16 )((unsigned int )tmp / 128U)) & 31U;
    if ((unsigned int )tmp > 7U) {
      average = average + 2;
    } else {
      average = average + -25;
    }
    if ((unsigned int )tmp == 8U) {
      average = average + -72;
    } else {
      average = average + -48;
    }
    dev->stats.link_noise = (u8 )average;
    drop_calculation:
    dev->noisecalc.calculation_running = 0;
    return;
  } else {
  }
  generate_new:
  b43legacy_generate_noise_sample(dev);
  return;
}
}
static void handle_irq_tbtt_indication(struct b43legacy_wldev *dev )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = b43legacy_is_mode(dev->wl, 3);
  if (tmp != 0) {
  } else {
    b43legacy_power_saving_ctl_bits(dev, -1, -1);
  }
  tmp___0 = b43legacy_is_mode(dev->wl, 1);
  if (tmp___0 != 0) {
    dev->dfq_valid = 1;
  } else {
  }
  return;
}
}
static void handle_irq_atim_end(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  {
  if ((int )dev->dfq_valid) {
    tmp = b43legacy_read32(dev, 292);
    b43legacy_write32(dev, 292, tmp | 4U);
    dev->dfq_valid = 0;
  } else {
  }
  return;
}
}
static void handle_irq_pmq(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  {
  ldv_55566:
  tmp = b43legacy_read32(dev, 320);
  if ((tmp & 8U) == 0U) {
    goto ldv_55565;
  } else {
  }
  goto ldv_55566;
  ldv_55565:
  b43legacy_write16(dev, 320, 2);
  return;
}
}
static void b43legacy_write_template_common(struct b43legacy_wldev *dev , u8 const *data ,
                                            u16 size , u16 ram_offset , u16 shm_size_offset ,
                                            u8 rate )
{
  u32 i ;
  u32 tmp ;
  struct b43legacy_plcp_hdr4 plcp ;
  {
  plcp.__annonCompField108.data = 0U;
  b43legacy_generate_plcp_hdr(& plcp, (int )((unsigned int )((u16 const )size) + 4U),
                              (int )rate);
  b43legacy_ram_write(dev, (int )ram_offset, plcp.__annonCompField108.data);
  ram_offset = (unsigned int )ram_offset + 4U;
  tmp = (unsigned int )*data << 16;
  tmp = ((unsigned int )*(data + 1UL) << 24) | tmp;
  b43legacy_ram_write(dev, (int )ram_offset, tmp);
  ram_offset = (unsigned int )ram_offset + 4U;
  i = 2U;
  goto ldv_55579;
  ldv_55578:
  tmp = (unsigned int )*(data + (unsigned long )i);
  if (i + 1U < (u32 )size) {
    tmp = ((unsigned int )*(data + (unsigned long )(i + 1U)) << 8) | tmp;
  } else {
  }
  if (i + 2U < (u32 )size) {
    tmp = ((unsigned int )*(data + (unsigned long )(i + 2U)) << 16) | tmp;
  } else {
  }
  if (i + 3U < (u32 )size) {
    tmp = ((unsigned int )*(data + (unsigned long )(i + 3U)) << 24) | tmp;
  } else {
  }
  b43legacy_ram_write(dev, (int )((unsigned int )((int )((u16 )i) + (int )ram_offset) - 2U),
                      tmp);
  i = i + 4U;
  ldv_55579: ;
  if ((u32 )size > i) {
    goto ldv_55578;
  } else {
  }
  b43legacy_shm_write16(dev, 1, (int )shm_size_offset, (int )((unsigned int )size + 6U));
  return;
}
}
static u16 b43legacy_antenna_to_phyctl(int antenna )
{
  {
  switch (antenna) {
  case 0: ;
  return (0U);
  case 1: ;
  return (256U);
  }
  return (768U);
}
}
static void b43legacy_write_beacon_template(struct b43legacy_wldev *dev , u16 ram_offset ,
                                            u16 shm_size_offset )
{
  unsigned int i ;
  unsigned int len ;
  unsigned int variable_len ;
  struct ieee80211_mgmt const *bcn ;
  u8 const *ie ;
  bool tim_found ;
  unsigned int rate ;
  u16 ctl ;
  int antenna ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  size_t __min1 ;
  size_t __min2 ;
  struct ieee80211_rate *tmp___0 ;
  u16 tmp___1 ;
  uint8_t ie_id ;
  uint8_t ie_len ;
  u16 tim_position ;
  u16 dtim_period ;
  {
  tim_found = 0;
  tmp = IEEE80211_SKB_CB((dev->wl)->current_beacon);
  info = tmp;
  bcn = (struct ieee80211_mgmt const *)((dev->wl)->current_beacon)->data;
  __min1 = (size_t )((dev->wl)->current_beacon)->len;
  __min2 = 506UL;
  len = (unsigned int )(__min1 < __min2 ? __min1 : __min2);
  tmp___0 = ieee80211_get_tx_rate((struct ieee80211_hw const *)(dev->wl)->hw, (struct ieee80211_tx_info const *)info);
  rate = (unsigned int )tmp___0->hw_value;
  b43legacy_write_template_common(dev, (u8 const *)bcn, (int )((u16 )len), (int )ram_offset,
                                  (int )shm_size_offset, (int )((u8 )rate));
  antenna = 3;
  tmp___1 = b43legacy_antenna_to_phyctl(antenna);
  antenna = (int )tmp___1;
  ctl = b43legacy_shm_read16(dev, 1, 84);
  ctl = (unsigned int )ctl & 65519U;
  ctl = (unsigned int )ctl & 64575U;
  ctl = (unsigned int )ctl & 65532U;
  ctl = (u16 )((int )((short )antenna) | (int )((short )ctl));
  ctl = ctl;
  b43legacy_shm_write16(dev, 1, 84, (int )ctl);
  ie = (u8 const *)(& bcn->u.beacon.variable);
  variable_len = len - 36U;
  i = 0U;
  goto ldv_55610;
  ldv_55609:
  ie_id = *(ie + (unsigned long )i);
  ie_len = *(ie + (unsigned long )(i + 1U));
  if ((unsigned int )ie_id == 5U) {
    if (((unsigned int )ie_len + i) + 2U > variable_len) {
      goto ldv_55608;
    } else {
    }
    if ((unsigned int )ie_len <= 3U) {
      goto ldv_55608;
    } else {
    }
    tim_found = 1;
    tim_position = 6U;
    tim_position = (unsigned int )tim_position + 36U;
    tim_position = (int )((u16 )i) + (int )tim_position;
    dtim_period = (u16 )*(ie + (unsigned long )(i + 3U));
    b43legacy_shm_write16(dev, 1, 30, (int )tim_position);
    b43legacy_shm_write16(dev, 1, 18, (int )dtim_period);
    goto ldv_55608;
  } else {
  }
  i = ((unsigned int )ie_len + i) + 2U;
  ldv_55610: ;
  if (variable_len - 2U > i) {
    goto ldv_55609;
  } else {
  }
  ldv_55608: ;
  if (! tim_found) {
    b43legacywarn(dev->wl, "Did not find a valid TIM IE in the beacon template packet. AP or IBSS operation may be broken.\n");
  } else {
    b43legacydbg(dev->wl, "Updated beacon template\n");
  }
  return;
}
}
static void b43legacy_write_probe_resp_plcp(struct b43legacy_wldev *dev , u16 shm_offset ,
                                            u16 size , struct ieee80211_rate *rate )
{
  struct b43legacy_plcp_hdr4 plcp ;
  u32 tmp ;
  __le16 dur ;
  {
  plcp.__annonCompField108.data = 0U;
  b43legacy_generate_plcp_hdr(& plcp, (int )((unsigned int )((u16 const )size) + 4U),
                              (int )((u8 const )rate->hw_value));
  dur = ieee80211_generic_frame_duration((dev->wl)->hw, (dev->wl)->vif, 0, (size_t )size,
                                         rate);
  tmp = plcp.__annonCompField108.data;
  b43legacy_shm_write16(dev, 1, (int )shm_offset, (int )((u16 )tmp));
  b43legacy_shm_write16(dev, 1, (int )((unsigned int )shm_offset + 2U), (int )((u16 )(tmp >> 16)));
  b43legacy_shm_write16(dev, 1, (int )((unsigned int )shm_offset + 6U), (int )dur);
  return;
}
}
static u8 const *b43legacy_generate_probe_resp(struct b43legacy_wldev *dev , u16 *dest_size ,
                                                 struct ieee80211_rate *rate )
{
  u8 const *src_data ;
  u8 *dest_data ;
  u16 src_size ;
  u16 elem_size ;
  u16 src_pos ;
  u16 dest_pos ;
  __le16 dur ;
  struct ieee80211_hdr *hdr ;
  size_t ie_start ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  {
  src_size = (u16 )((dev->wl)->current_beacon)->len;
  src_data = (u8 const *)((dev->wl)->current_beacon)->data;
  ie_start = 36UL;
  __ret_warn_on = ie_start != 36UL;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1095);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (size_t )src_size < ie_start;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1097);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    return ((u8 const *)0U);
  } else {
  }
  tmp___2 = kmalloc((size_t )src_size, 32U);
  dest_data = (u8 *)tmp___2;
  tmp___3 = ldv__builtin_expect((unsigned long )dest_data == (unsigned long )((u8 *)0U),
                             0L);
  if (tmp___3 != 0L) {
    return ((u8 const *)0U);
  } else {
  }
  memcpy((void *)dest_data, (void const *)src_data, ie_start);
  src_pos = (u16 )ie_start;
  dest_pos = (u16 )ie_start;
  goto ldv_55640;
  ldv_55639:
  elem_size = (unsigned int )((u16 )*(src_data + ((unsigned long )src_pos + 1UL))) + 2U;
  if ((unsigned int )((unsigned char )*(src_data + (unsigned long )src_pos)) == 5U) {
    goto ldv_55638;
  } else {
  }
  memcpy((void *)dest_data + (unsigned long )dest_pos, (void const *)src_data + (unsigned long )src_pos,
           (size_t )elem_size);
  dest_pos = (int )dest_pos + (int )elem_size;
  ldv_55638:
  src_pos = (int )src_pos + (int )elem_size;
  ldv_55640: ;
  if ((int )src_pos < (int )src_size + -2) {
    goto ldv_55639;
  } else {
  }
  *dest_size = dest_pos;
  hdr = (struct ieee80211_hdr *)dest_data;
  hdr->frame_control = 80U;
  dur = ieee80211_generic_frame_duration((dev->wl)->hw, (dev->wl)->vif, 0, (size_t )*dest_size,
                                         rate);
  hdr->duration_id = dur;
  return ((u8 const *)dest_data);
}
}
static void b43legacy_write_probe_resp_template(struct b43legacy_wldev *dev , u16 ram_offset ,
                                                u16 shm_size_offset , struct ieee80211_rate *rate )
{
  u8 const *probe_resp_data ;
  u16 size ;
  long tmp ;
  size_t __min1 ;
  size_t __min2 ;
  {
  size = (u16 )((dev->wl)->current_beacon)->len;
  probe_resp_data = b43legacy_generate_probe_resp(dev, & size, rate);
  tmp = ldv__builtin_expect((unsigned long )probe_resp_data == (unsigned long )((u8 const *)0U),
                         0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  b43legacy_write_probe_resp_plcp(dev, 794, (int )size, (struct ieee80211_rate *)(& __b43legacy_ratetable));
  b43legacy_write_probe_resp_plcp(dev, 812, (int )size, (struct ieee80211_rate *)(& __b43legacy_ratetable) + 1UL);
  b43legacy_write_probe_resp_plcp(dev, 830, (int )size, (struct ieee80211_rate *)(& __b43legacy_ratetable) + 2UL);
  b43legacy_write_probe_resp_plcp(dev, 848, (int )size, (struct ieee80211_rate *)(& __b43legacy_ratetable) + 3UL);
  __min1 = (size_t )size;
  __min2 = 506UL;
  size = (u16 )(__min1 < __min2 ? __min1 : __min2);
  b43legacy_write_template_common(dev, probe_resp_data, (int )size, (int )ram_offset,
                                  (int )shm_size_offset, (int )((u8 )rate->hw_value));
  kfree((void const *)probe_resp_data);
  return;
}
}
static void b43legacy_upload_beacon0(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  {
  wl = dev->wl;
  if ((int )wl->beacon0_uploaded) {
    return;
  } else {
  }
  b43legacy_write_beacon_template(dev, 104, 24);
  b43legacy_write_probe_resp_template(dev, 616, 74, (struct ieee80211_rate *)(& __b43legacy_ratetable) + 3UL);
  wl->beacon0_uploaded = 1;
  return;
}
}
static void b43legacy_upload_beacon1(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  {
  wl = dev->wl;
  if ((int )wl->beacon1_uploaded) {
    return;
  } else {
  }
  b43legacy_write_beacon_template(dev, 1128, 26);
  wl->beacon1_uploaded = 1;
  return;
}
}
static void handle_irq_beacon(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  u32 cmd ;
  u32 beacon0_valid ;
  u32 beacon1_valid ;
  int tmp ;
  long tmp___0 ;
  {
  wl = dev->wl;
  tmp = b43legacy_is_mode(wl, 3);
  if (tmp == 0) {
    return;
  } else {
  }
  dev->irq_mask = dev->irq_mask & 4294967293U;
  cmd = b43legacy_read32(dev, 292);
  beacon0_valid = cmd & 1U;
  beacon1_valid = cmd & 2U;
  if (beacon0_valid != 0U && beacon1_valid != 0U) {
    b43legacy_write32(dev, 296, 2U);
    dev->irq_mask = dev->irq_mask | 2U;
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )wl->beacon_templates_virgin, 0L);
  if (tmp___0 != 0L) {
    wl->beacon_templates_virgin = 0;
    b43legacy_upload_beacon0(dev);
    b43legacy_upload_beacon1(dev);
    cmd = b43legacy_read32(dev, 292);
    cmd = cmd | 1U;
    b43legacy_write32(dev, 292, cmd);
  } else
  if (beacon0_valid == 0U) {
    b43legacy_upload_beacon0(dev);
    cmd = b43legacy_read32(dev, 292);
    cmd = cmd | 1U;
    b43legacy_write32(dev, 292, cmd);
  } else
  if (beacon1_valid == 0U) {
    b43legacy_upload_beacon1(dev);
    cmd = b43legacy_read32(dev, 292);
    cmd = cmd | 2U;
    b43legacy_write32(dev, 292, cmd);
  } else {
  }
  return;
}
}
static void b43legacy_beacon_update_trigger_work(struct work_struct *work )
{
  struct b43legacy_wl *wl ;
  struct work_struct const *__mptr ;
  struct b43legacy_wldev *dev ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  wl = (struct b43legacy_wl *)__mptr + 0xfffffffffffffd40UL;
  mutex_lock_nested(& wl->mutex, 0U);
  dev = wl->current_dev;
  if ((unsigned long )dev != (unsigned long )((struct b43legacy_wldev *)0)) {
    tmp = atomic_read((atomic_t const *)(& dev->__init_status));
    if (tmp > 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  if (tmp___1 != 0L) {
    spin_lock_irq(& wl->irq_lock);
    handle_irq_beacon(dev);
    b43legacy_write32(dev, 300, dev->irq_mask);
    __asm__ volatile ("": : : "memory");
    spin_unlock_irq(& wl->irq_lock);
  } else {
  }
  mutex_unlock(& wl->mutex);
  return;
}
}
static void b43legacy_update_templates(struct b43legacy_wl *wl )
{
  struct sk_buff *beacon ;
  long tmp ;
  {
  beacon = ieee80211_beacon_get(wl->hw, wl->vif);
  tmp = ldv__builtin_expect((unsigned long )beacon == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  if ((unsigned long )wl->current_beacon != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(wl->current_beacon);
  } else {
  }
  wl->current_beacon = beacon;
  wl->beacon0_uploaded = 0;
  wl->beacon1_uploaded = 0;
  ieee80211_queue_work(wl->hw, & wl->beacon_update_trigger);
  return;
}
}
static void b43legacy_set_beacon_int(struct b43legacy_wldev *dev , u16 beacon_int )
{
  {
  b43legacy_time_lock(dev);
  if ((unsigned int )(dev->dev)->id.revision > 2U) {
    b43legacy_write32(dev, 392, (u32 )((int )beacon_int << 16));
    b43legacy_write32(dev, 396, (u32 )((int )beacon_int << 10));
  } else {
    b43legacy_write16(dev, 1542, (int )beacon_int >> 6);
    b43legacy_write16(dev, 1552, (int )beacon_int);
  }
  b43legacy_time_unlock(dev);
  b43legacydbg(dev->wl, "Set beacon interval to %u\n", (int )beacon_int);
  return;
}
}
static void handle_irq_ucode_debug(struct b43legacy_wldev *dev )
{
  {
  return;
}
}
static void b43legacy_interrupt_tasklet(struct b43legacy_wldev *dev )
{
  u32 reason ;
  u32 dma_reason[6U] ;
  u32 merged_dma_reason ;
  int i ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int __ret_warn_on___0 ;
  long tmp___9 ;
  int __ret_warn_on___1 ;
  long tmp___10 ;
  int tmp___11 ;
  int __ret_warn_on___2 ;
  long tmp___12 ;
  int __ret_warn_on___3 ;
  long tmp___13 ;
  {
  merged_dma_reason = 0U;
  tmp = spinlock_check(& (dev->wl)->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  __ret_warn_on = tmp___0 <= 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1318);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  reason = dev->irq_reason;
  i = 0;
  goto ldv_55704;
  ldv_55703:
  dma_reason[i] = dev->dma_reason[i];
  merged_dma_reason = dma_reason[i] | merged_dma_reason;
  i = i + 1;
  ldv_55704: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_55703;
  } else {
  }
  tmp___2 = ldv__builtin_expect((reason & 512U) != 0U, 0L);
  if (tmp___2 != 0L) {
    b43legacyerr(dev->wl, "MAC transmission error\n");
  } else {
  }
  tmp___5 = ldv__builtin_expect((reason & 2048U) != 0U, 0L);
  if (tmp___5 != 0L) {
    b43legacyerr(dev->wl, "PHY transmission error\n");
    __asm__ volatile ("lfence": : : "memory");
    tmp___3 = atomic_dec_and_test(& dev->phy.txerr_cnt);
    tmp___4 = ldv__builtin_expect(tmp___3 != 0, 0L);
    if (tmp___4 != 0L) {
      b43legacyerr(dev->wl, "Too many PHY TX errors, restarting the controller\n");
      b43legacy_controller_restart(dev, "PHY TX errors");
    } else {
    }
  } else {
  }
  tmp___6 = ldv__builtin_expect((merged_dma_reason & 64512U) != 0U, 0L);
  if (tmp___6 != 0L) {
    if ((merged_dma_reason & 56320U) != 0U) {
      b43legacyerr(dev->wl, "Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\n",
                   dma_reason[0], dma_reason[1], dma_reason[2], dma_reason[3], dma_reason[4],
                   dma_reason[5]);
      b43legacy_controller_restart(dev, "DMA error");
      __asm__ volatile ("": : : "memory");
      spin_unlock_irqrestore(& (dev->wl)->irq_lock, flags);
      return;
    } else {
    }
    if ((merged_dma_reason & 8192U) != 0U) {
      b43legacyerr(dev->wl, "DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\n",
                   dma_reason[0], dma_reason[1], dma_reason[2], dma_reason[3], dma_reason[4],
                   dma_reason[5]);
    } else {
    }
  } else {
  }
  tmp___7 = ldv__builtin_expect((reason & 134217728U) != 0U, 0L);
  if (tmp___7 != 0L) {
    handle_irq_ucode_debug(dev);
  } else {
  }
  if ((reason & 4U) != 0U) {
    handle_irq_tbtt_indication(dev);
  } else {
  }
  if ((reason & 32U) != 0U) {
    handle_irq_atim_end(dev);
  } else {
  }
  if ((reason & 2U) != 0U) {
    handle_irq_beacon(dev);
  } else {
  }
  if ((reason & 64U) != 0U) {
    handle_irq_pmq(dev);
  } else {
  }
  if ((reason & 262144U) != 0U) {
    handle_irq_noise(dev);
  } else {
  }
  if ((dma_reason[0] & 65536U) != 0U) {
    tmp___8 = b43legacy_using_pio(dev);
    if (tmp___8 != 0) {
      b43legacy_pio_rx(dev->__annonCompField107.pio.queue0);
    } else {
      b43legacy_dma_rx(dev->__annonCompField107.dma.rx_ring0);
    }
  } else {
  }
  __ret_warn_on___0 = (dma_reason[1] & 65536U) != 0U;
  tmp___9 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___9 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1384);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  __ret_warn_on___1 = (dma_reason[2] & 65536U) != 0U;
  tmp___10 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___10 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1385);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if ((dma_reason[3] & 65536U) != 0U) {
    tmp___11 = b43legacy_using_pio(dev);
    if (tmp___11 != 0) {
      b43legacy_pio_rx(dev->__annonCompField107.pio.queue3);
    } else {
      b43legacy_dma_rx(dev->__annonCompField107.dma.rx_ring3);
    }
  } else {
  }
  __ret_warn_on___2 = (dma_reason[4] & 65536U) != 0U;
  tmp___12 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___12 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1392);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  __ret_warn_on___3 = (dma_reason[5] & 65536U) != 0U;
  tmp___13 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___13 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1393);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if ((reason & 536870912U) != 0U) {
    handle_irq_transmit_status(dev);
  } else {
  }
  b43legacy_write32(dev, 300, dev->irq_mask);
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& (dev->wl)->irq_lock, flags);
  return;
}
}
static void pio_irq_workaround(struct b43legacy_wldev *dev , u16 base , int queueidx )
{
  u16 rxctl ;
  {
  rxctl = b43legacy_read16(dev, (int )((unsigned int )base + 8U));
  if ((int )rxctl & 1) {
    dev->dma_reason[queueidx] = dev->dma_reason[queueidx] | 65536U;
  } else {
    dev->dma_reason[queueidx] = dev->dma_reason[queueidx] & 4294901759U;
  }
  return;
}
}
static void b43legacy_interrupt_ack(struct b43legacy_wldev *dev , u32 reason )
{
  int tmp ;
  {
  tmp = b43legacy_using_pio(dev);
  if ((tmp != 0 && (unsigned int )(dev->dev)->id.revision <= 2U) && (reason & 256U) == 0U) {
    pio_irq_workaround(dev, 768, 0);
    pio_irq_workaround(dev, 784, 1);
    pio_irq_workaround(dev, 800, 2);
    pio_irq_workaround(dev, 816, 3);
  } else {
  }
  b43legacy_write32(dev, 296, reason);
  b43legacy_write32(dev, 32, dev->dma_reason[0]);
  b43legacy_write32(dev, 40, dev->dma_reason[1]);
  b43legacy_write32(dev, 48, dev->dma_reason[2]);
  b43legacy_write32(dev, 56, dev->dma_reason[3]);
  b43legacy_write32(dev, 64, dev->dma_reason[4]);
  b43legacy_write32(dev, 72, dev->dma_reason[5]);
  return;
}
}
static irqreturn_t b43legacy_interrupt_handler(int irq , void *dev_id )
{
  irqreturn_t ret ;
  struct b43legacy_wldev *dev ;
  u32 reason ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  {
  ret = 0;
  dev = (struct b43legacy_wldev *)dev_id;
  __ret_warn_on = (unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1450);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  spin_lock(& (dev->wl)->irq_lock);
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  tmp___1 = ldv__builtin_expect(tmp___0 <= 1, 0L);
  if (tmp___1 != 0L) {
    goto out;
  } else {
  }
  reason = b43legacy_read32(dev, 296);
  if (reason == 4294967295U) {
    goto out;
  } else {
  }
  ret = 1;
  reason = dev->irq_mask & reason;
  if (reason == 0U) {
    goto out;
  } else {
  }
  tmp___2 = b43legacy_read32(dev, 32);
  dev->dma_reason[0] = tmp___2 & 121856U;
  tmp___3 = b43legacy_read32(dev, 40);
  dev->dma_reason[1] = tmp___3 & 56320U;
  tmp___4 = b43legacy_read32(dev, 48);
  dev->dma_reason[2] = tmp___4 & 56320U;
  tmp___5 = b43legacy_read32(dev, 56);
  dev->dma_reason[3] = tmp___5 & 121856U;
  tmp___6 = b43legacy_read32(dev, 64);
  dev->dma_reason[4] = tmp___6 & 56320U;
  tmp___7 = b43legacy_read32(dev, 72);
  dev->dma_reason[5] = tmp___7 & 56320U;
  b43legacy_interrupt_ack(dev, reason);
  b43legacy_write32(dev, 300, 0U);
  dev->irq_reason = reason;
  tasklet_schedule(& dev->isr_tasklet);
  out:
  __asm__ volatile ("": : : "memory");
  spin_unlock(& (dev->wl)->irq_lock);
  return (ret);
}
}
static void b43legacy_release_firmware(struct b43legacy_wldev *dev )
{
  {
  release_firmware(dev->fw.ucode);
  dev->fw.ucode = (struct firmware const *)0;
  release_firmware(dev->fw.pcm);
  dev->fw.pcm = (struct firmware const *)0;
  release_firmware(dev->fw.initvals);
  dev->fw.initvals = (struct firmware const *)0;
  release_firmware(dev->fw.initvals_band);
  dev->fw.initvals_band = (struct firmware const *)0;
  return;
}
}
static void b43legacy_print_fw_helptext(struct b43legacy_wl *wl )
{
  {
  b43legacyerr(wl, "You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware (version 3).\n");
  return;
}
}
static void b43legacy_fw_cb(struct firmware const *firmware , void *context )
{
  struct b43legacy_wldev *dev ;
  {
  dev = (struct b43legacy_wldev *)context;
  dev->fwp = firmware;
  complete(& dev->fw_load_complete);
  return;
}
}
static int do_request_fw(struct b43legacy_wldev *dev , char const *name , struct firmware const **fw ,
                         bool async )
{
  char path[48U] ;
  struct b43legacy_fw_header *hdr ;
  u32 size ;
  int err ;
  __u32 tmp ;
  {
  if ((unsigned long )name == (unsigned long )((char const *)0)) {
    return (0);
  } else {
  }
  snprintf((char *)(& path), 48UL, "b43legacy%s/%s.fw", (char *)(& modparam_fwpostfix),
           name);
  b43legacyinfo(dev->wl, "Loading firmware %s\n", (char *)(& path));
  if ((int )async) {
    init_completion(& dev->fw_load_complete);
    err = request_firmware_nowait(& __this_module, 1, (char const *)(& path), (dev->dev)->dev,
                                  208U, (void *)dev, & b43legacy_fw_cb);
    if (err != 0) {
      b43legacyerr(dev->wl, "Unable to load firmware\n");
      return (err);
    } else {
    }
    wait_for_completion(& dev->fw_load_complete);
    if ((unsigned long )dev->fwp == (unsigned long )((struct firmware const *)0)) {
      err = -22;
    } else {
    }
    *fw = dev->fwp;
  } else {
    err = request_firmware(fw, (char const *)(& path), (dev->dev)->dev);
  }
  if (err != 0) {
    b43legacyerr(dev->wl, "Firmware file \"%s\" not found or load failed.\n", (char *)(& path));
    return (err);
  } else {
  }
  if ((unsigned long )(*fw)->size <= 7UL) {
    goto err_format;
  } else {
  }
  hdr = (struct b43legacy_fw_header *)(*fw)->data;
  switch ((int )hdr->type) {
  case 117: ;
  case 112:
  tmp = __fswab32(hdr->size);
  size = tmp;
  if ((unsigned long )size != (unsigned long )(*fw)->size - 8UL) {
    goto err_format;
  } else {
  }
  case 105: ;
  if ((unsigned int )hdr->ver != 1U) {
    goto err_format;
  } else {
  }
  goto ldv_55761;
  default: ;
  goto err_format;
  }
  ldv_55761: ;
  return (err);
  err_format:
  b43legacyerr(dev->wl, "Firmware file \"%s\" format error.\n", (char *)(& path));
  return (-71);
}
}
static int b43legacy_one_core_attach(struct ssb_device *dev , struct b43legacy_wl *wl ) ;
static void b43legacy_one_core_detach(struct ssb_device *dev ) ;
static void b43legacy_request_firmware(struct work_struct *work )
{
  struct b43legacy_wl *wl ;
  struct work_struct const *__mptr ;
  struct b43legacy_wldev *dev ;
  struct b43legacy_firmware *fw ;
  u8 rev ;
  char const *filename ;
  int err ;
  {
  __mptr = (struct work_struct const *)work;
  wl = (struct b43legacy_wl *)__mptr + 0xfffffffffffffec0UL;
  dev = wl->current_dev;
  fw = & dev->fw;
  rev = (dev->dev)->id.revision;
  if ((unsigned long )fw->ucode == (unsigned long )((struct firmware const *)0)) {
    if ((unsigned int )rev == 2U) {
      filename = "ucode2";
    } else
    if ((unsigned int )rev == 4U) {
      filename = "ucode4";
    } else {
      filename = "ucode5";
    }
    err = do_request_fw(dev, filename, & fw->ucode, 1);
    if (err != 0) {
      goto err_load;
    } else {
    }
  } else {
  }
  if ((unsigned long )fw->pcm == (unsigned long )((struct firmware const *)0)) {
    if ((unsigned int )rev <= 4U) {
      filename = "pcm4";
    } else {
      filename = "pcm5";
    }
    err = do_request_fw(dev, filename, & fw->pcm, 0);
    if (err != 0) {
      goto err_load;
    } else {
    }
  } else {
  }
  if ((unsigned long )fw->initvals == (unsigned long )((struct firmware const *)0)) {
    switch ((int )dev->phy.type) {
    case 1: ;
    case 2: ;
    if ((unsigned int )rev > 4U && (unsigned int )rev <= 10U) {
      filename = "b0g0initvals5";
    } else
    if ((unsigned int )rev == 2U || (unsigned int )rev == 4U) {
      filename = "b0g0initvals2";
    } else {
      goto err_no_initvals;
    }
    goto ldv_55783;
    default: ;
    goto err_no_initvals;
    }
    ldv_55783:
    err = do_request_fw(dev, filename, & fw->initvals, 0);
    if (err != 0) {
      goto err_load;
    } else {
    }
  } else {
  }
  if ((unsigned long )fw->initvals_band == (unsigned long )((struct firmware const *)0)) {
    switch ((int )dev->phy.type) {
    case 1: ;
    case 2: ;
    if ((unsigned int )rev > 4U && (unsigned int )rev <= 10U) {
      filename = "b0g0bsinitvals5";
    } else
    if ((unsigned int )rev > 10U) {
      filename = (char const *)0;
    } else
    if ((unsigned int )rev == 2U || (unsigned int )rev == 4U) {
      filename = (char const *)0;
    } else {
      goto err_no_initvals;
    }
    goto ldv_55787;
    default: ;
    goto err_no_initvals;
    }
    ldv_55787:
    err = do_request_fw(dev, filename, & fw->initvals_band, 0);
    if (err != 0) {
      goto err_load;
    } else {
    }
  } else {
  }
  err = ieee80211_register_hw(wl->hw);
  if (err != 0) {
    goto err_one_core_detach;
  } else {
  }
  return;
  err_one_core_detach:
  b43legacy_one_core_detach(dev->dev);
  goto error;
  err_load:
  b43legacy_print_fw_helptext(dev->wl);
  goto error;
  err_no_initvals:
  err = -19;
  b43legacyerr(dev->wl, "No Initial Values firmware file for PHY %u, core rev %u\n",
               (int )dev->phy.type, (int )rev);
  goto error;
  error:
  b43legacy_release_firmware(dev);
  return;
}
}
static int b43legacy_upload_microcode(struct b43legacy_wldev *dev )
{
  struct wiphy *wiphy ;
  size_t hdr_len ;
  __be32 const *data ;
  unsigned int i ;
  unsigned int len ;
  u16 fwrev ;
  u16 fwpatch ;
  u16 fwdate ;
  u16 fwtime ;
  u32 tmp ;
  u32 macctl ;
  int err ;
  int __ret_warn_on ;
  long tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  {
  wiphy = ((dev->wl)->hw)->wiphy;
  hdr_len = 8UL;
  err = 0;
  macctl = b43legacy_read32(dev, 288);
  __ret_warn_on = (macctl & 2U) != 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1699);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  macctl = macctl | 4U;
  b43legacy_write32(dev, 288, macctl);
  i = 0U;
  goto ldv_55809;
  ldv_55808:
  b43legacy_shm_write16(dev, 2, (int )((u16 )i), 0);
  i = i + 1U;
  ldv_55809: ;
  if (i <= 63U) {
    goto ldv_55808;
  } else {
  }
  i = 0U;
  goto ldv_55812;
  ldv_55811:
  b43legacy_shm_write16(dev, 1, (int )((u16 )i), 0);
  i = i + 2U;
  ldv_55812: ;
  if (i <= 4095U) {
    goto ldv_55811;
  } else {
  }
  data = (__be32 const *)((dev->fw.ucode)->data + hdr_len);
  len = (unsigned int )(((unsigned long )(dev->fw.ucode)->size - hdr_len) / 4UL);
  b43legacy_shm_control_word(dev, 768, 0);
  i = 0U;
  goto ldv_55815;
  ldv_55814:
  tmp___1 = __fswab32(*(data + (unsigned long )i));
  b43legacy_write32(dev, 356, tmp___1);
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_55815: ;
  if (i < len) {
    goto ldv_55814;
  } else {
  }
  if ((unsigned long )dev->fw.pcm != (unsigned long )((struct firmware const *)0)) {
    data = (__be32 const *)((dev->fw.pcm)->data + hdr_len);
    len = (unsigned int )(((unsigned long )(dev->fw.pcm)->size - hdr_len) / 4UL);
    b43legacy_shm_control_word(dev, 4, 490);
    b43legacy_write32(dev, 356, 16384U);
    b43legacy_shm_control_word(dev, 4, 491);
    i = 0U;
    goto ldv_55818;
    ldv_55817:
    tmp___2 = __fswab32(*(data + (unsigned long )i));
    b43legacy_write32(dev, 356, tmp___2);
    __const_udelay(42950UL);
    i = i + 1U;
    ldv_55818: ;
    if (i < len) {
      goto ldv_55817;
    } else {
    }
  } else {
  }
  b43legacy_write32(dev, 296, 4294967295U);
  macctl = b43legacy_read32(dev, 288);
  macctl = macctl & 4294967291U;
  macctl = macctl | 2U;
  b43legacy_write32(dev, 288, macctl);
  i = 0U;
  ldv_55822:
  tmp = b43legacy_read32(dev, 296);
  if (tmp == 1U) {
    goto ldv_55820;
  } else {
  }
  i = i + 1U;
  if (i > 19U) {
    b43legacyerr(dev->wl, "Microcode not responding\n");
    b43legacy_print_fw_helptext(dev->wl);
    err = -19;
    goto error;
  } else {
  }
  msleep_interruptible(50U);
  tmp___3 = get_current();
  tmp___4 = signal_pending(tmp___3);
  if (tmp___4 != 0) {
    err = -4;
    goto error;
  } else {
  }
  goto ldv_55822;
  ldv_55820:
  b43legacy_read32(dev, 296);
  fwrev = b43legacy_shm_read16(dev, 1, 0);
  fwpatch = b43legacy_shm_read16(dev, 1, 2);
  fwdate = b43legacy_shm_read16(dev, 1, 4);
  fwtime = b43legacy_shm_read16(dev, 1, 6);
  if ((unsigned int )fwrev > 296U) {
    b43legacyerr(dev->wl, "YOU ARE TRYING TO LOAD V4 FIRMWARE. Only firmware from binary drivers version 3.x is supported. You must change your firmware files.\n");
    b43legacy_print_fw_helptext(dev->wl);
    err = -95;
    goto error;
  } else {
  }
  b43legacyinfo(dev->wl, "Loading firmware version 0x%X, patch level %u (20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\n",
                (int )fwrev, (int )fwpatch, ((int )fwdate >> 12) & 15, ((int )fwdate >> 8) & 15,
                (int )fwdate & 255, ((int )fwtime >> 11) & 31, ((int )fwtime >> 5) & 63,
                (int )fwtime & 31);
  dev->fw.rev = fwrev;
  dev->fw.patch = fwpatch;
  snprintf((char *)(& wiphy->fw_version), 32UL, "%u.%u", (int )dev->fw.rev, (int )dev->fw.patch);
  wiphy->hw_version = (u32 )(dev->dev)->id.coreid;
  return (0);
  error:
  macctl = b43legacy_read32(dev, 288);
  macctl = macctl & 4294967293U;
  macctl = macctl | 4U;
  b43legacy_write32(dev, 288, macctl);
  return (err);
}
}
static int b43legacy_write_initvals(struct b43legacy_wldev *dev , struct b43legacy_iv const *ivals ,
                                    size_t count , size_t array_size )
{
  struct b43legacy_iv const *iv ;
  u16 offset ;
  size_t i ;
  bool bit32 ;
  __u16 tmp ;
  u32 value ;
  u16 value___0 ;
  __u16 tmp___0 ;
  {
  iv = ivals;
  i = 0UL;
  goto ldv_55837;
  ldv_55836: ;
  if (array_size <= 1UL) {
    goto err_format;
  } else {
  }
  array_size = array_size - 2UL;
  tmp = __fswab16((int )iv->offset_size);
  offset = tmp;
  bit32 = (int )((short )offset) < 0;
  offset = (unsigned int )offset & 32767U;
  if ((unsigned int )offset > 4095U) {
    goto err_format;
  } else {
  }
  if ((int )bit32) {
    if (array_size <= 3UL) {
      goto err_format;
    } else {
    }
    array_size = array_size - 4UL;
    value = get_unaligned_be32((void const *)(& iv->data.d32));
    b43legacy_write32(dev, (int )offset, value);
    iv = iv + 6U;
  } else {
    if (array_size <= 1UL) {
      goto err_format;
    } else {
    }
    array_size = array_size - 2UL;
    tmp___0 = __fswab16((int )iv->data.d16);
    value___0 = tmp___0;
    b43legacy_write16(dev, (int )offset, (int )value___0);
    iv = iv + 4U;
  }
  i = i + 1UL;
  ldv_55837: ;
  if (i < count) {
    goto ldv_55836;
  } else {
  }
  if (array_size != 0UL) {
    goto err_format;
  } else {
  }
  return (0);
  err_format:
  b43legacyerr(dev->wl, "Initial Values Firmware file-format error.\n");
  b43legacy_print_fw_helptext(dev->wl);
  return (-71);
}
}
static int b43legacy_upload_initvals(struct b43legacy_wldev *dev )
{
  size_t hdr_len ;
  struct b43legacy_fw_header const *hdr ;
  struct b43legacy_firmware *fw ;
  struct b43legacy_iv const *ivals ;
  size_t count ;
  int err ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  hdr_len = 8UL;
  fw = & dev->fw;
  hdr = (struct b43legacy_fw_header const *)(fw->initvals)->data;
  ivals = (struct b43legacy_iv const *)((fw->initvals)->data + hdr_len);
  tmp = __fswab32(hdr->size);
  count = (size_t )tmp;
  err = b43legacy_write_initvals(dev, ivals, count, (unsigned long )(fw->initvals)->size - hdr_len);
  if (err != 0) {
    goto out;
  } else {
  }
  if ((unsigned long )fw->initvals_band != (unsigned long )((struct firmware const *)0)) {
    hdr = (struct b43legacy_fw_header const *)(fw->initvals_band)->data;
    ivals = (struct b43legacy_iv const *)((fw->initvals_band)->data + hdr_len);
    tmp___0 = __fswab32(hdr->size);
    count = (size_t )tmp___0;
    err = b43legacy_write_initvals(dev, ivals, count, (unsigned long )(fw->initvals_band)->size - hdr_len);
    if (err != 0) {
      goto out;
    } else {
    }
  } else {
  }
  out: ;
  return (err);
}
}
static int b43legacy_gpio_init(struct b43legacy_wldev *dev )
{
  struct ssb_bus *bus ;
  struct ssb_device *gpiodev ;
  struct ssb_device *pcidev ;
  u32 mask ;
  u32 set ;
  u32 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u32 tmp___2 ;
  {
  bus = (dev->dev)->bus;
  pcidev = (struct ssb_device *)0;
  tmp = b43legacy_read32(dev, 288);
  b43legacy_write32(dev, 288, tmp & 4294918143U);
  tmp___0 = b43legacy_read16(dev, 1182);
  b43legacy_write16(dev, 1182, (int )((unsigned int )tmp___0 | 15U));
  mask = 31U;
  set = 15U;
  if ((unsigned int )((dev->dev)->bus)->chip_id == 17153U) {
    mask = mask | 96U;
    set = set | 96U;
  } else {
  }
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 2) != 0) {
    tmp___1 = b43legacy_read16(dev, 1182);
    b43legacy_write16(dev, 1182, (int )((unsigned int )tmp___1 | 512U));
    mask = mask | 512U;
    set = set | 512U;
  } else {
  }
  if ((unsigned int )(dev->dev)->id.revision > 1U) {
    mask = mask | 16U;
  } else {
  }
  pcidev = bus->pcicore.dev;
  gpiodev = (unsigned long )bus->chipco.dev != (unsigned long )((struct ssb_device *)0) ? (unsigned long )bus->chipco.dev != (unsigned long )((struct ssb_device *)0) : pcidev;
  if ((unsigned long )gpiodev == (unsigned long )((struct ssb_device *)0)) {
    return (0);
  } else {
  }
  tmp___2 = ssb_read32(gpiodev, 108);
  ssb_write32(gpiodev, 108, (tmp___2 & ~ mask) | set);
  return (0);
}
}
static void b43legacy_gpio_cleanup(struct b43legacy_wldev *dev )
{
  struct ssb_bus *bus ;
  struct ssb_device *gpiodev ;
  struct ssb_device *pcidev ;
  {
  bus = (dev->dev)->bus;
  pcidev = (struct ssb_device *)0;
  pcidev = bus->pcicore.dev;
  gpiodev = (unsigned long )bus->chipco.dev != (unsigned long )((struct ssb_device *)0) ? (unsigned long )bus->chipco.dev != (unsigned long )((struct ssb_device *)0) : pcidev;
  if ((unsigned long )gpiodev == (unsigned long )((struct ssb_device *)0)) {
    return;
  } else {
  }
  ssb_write32(gpiodev, 108, 0U);
  return;
}
}
void b43legacy_mac_enable(struct b43legacy_wldev *dev )
{
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  u32 tmp___2 ;
  {
  dev->mac_suspended = dev->mac_suspended - 1;
  __ret_warn_on = dev->mac_suspended < 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1972);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on___0 = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       1973);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (dev->mac_suspended == 0) {
    tmp___2 = b43legacy_read32(dev, 288);
    b43legacy_write32(dev, 288, tmp___2 | 1U);
    b43legacy_write32(dev, 296, 1U);
    b43legacy_read32(dev, 288);
    b43legacy_read32(dev, 296);
    b43legacy_power_saving_ctl_bits(dev, -1, -1);
    spin_lock_irq(& (dev->wl)->irq_lock);
    b43legacy_write32(dev, 300, dev->irq_mask);
    spin_unlock_irq(& (dev->wl)->irq_lock);
  } else {
  }
  return;
}
}
void b43legacy_mac_suspend(struct b43legacy_wldev *dev )
{
  int i ;
  u32 tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  u32 tmp___3 ;
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                2000, 0);
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2001);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = dev->mac_suspended < 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2002);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (dev->mac_suspended == 0) {
    spin_lock_irq(& (dev->wl)->irq_lock);
    b43legacy_write32(dev, 300, 0U);
    spin_unlock_irq(& (dev->wl)->irq_lock);
    b43legacy_synchronize_irq(dev);
    b43legacy_power_saving_ctl_bits(dev, -1, 1);
    tmp___3 = b43legacy_read32(dev, 288);
    b43legacy_write32(dev, 288, tmp___3 & 4294967294U);
    b43legacy_read32(dev, 296);
    i = 40;
    goto ldv_55899;
    ldv_55898:
    tmp = b43legacy_read32(dev, 296);
    if ((int )tmp & 1) {
      goto out;
    } else {
    }
    msleep(1U);
    i = i - 1;
    ldv_55899: ;
    if (i != 0) {
      goto ldv_55898;
    } else {
    }
    b43legacyerr(dev->wl, "MAC suspend failed\n");
  } else {
  }
  out:
  dev->mac_suspended = dev->mac_suspended + 1;
  return;
}
}
static void b43legacy_adjust_opmode(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  u32 ctl ;
  u16 cfp_pretbtt ;
  int tmp ;
  int tmp___0 ;
  {
  wl = dev->wl;
  ctl = b43legacy_read32(dev, 288);
  ctl = ctl & 4294705151U;
  ctl = ctl & 4290772991U;
  ctl = ctl & 4292870143U;
  ctl = ctl & 4286578687U;
  ctl = ctl & 4278190079U;
  ctl = ctl & 4293918719U;
  ctl = ctl | 131072U;
  tmp___0 = b43legacy_is_mode(wl, 3);
  if (tmp___0 != 0) {
    ctl = ctl | 262144U;
  } else {
    tmp = b43legacy_is_mode(wl, 1);
    if (tmp != 0) {
      ctl = ctl & 4294836223U;
    } else {
    }
  }
  if ((wl->filter_flags & 32U) != 0U) {
    ctl = ctl | 4194304U;
  } else {
  }
  if ((wl->filter_flags & 4U) != 0U) {
    ctl = ctl | 8388608U;
  } else {
  }
  if ((wl->filter_flags & 8U) != 0U) {
    ctl = ctl | 2097152U;
  } else {
  }
  if ((wl->filter_flags & 16U) != 0U) {
    ctl = ctl | 1048576U;
  } else {
  }
  if ((unsigned int )(dev->dev)->id.revision <= 4U) {
    ctl = ctl | 16777216U;
  } else {
  }
  b43legacy_write32(dev, 288, ctl);
  cfp_pretbtt = 2U;
  if ((ctl & 131072U) != 0U && (ctl & 262144U) == 0U) {
    if ((unsigned int )((dev->dev)->bus)->chip_id == 17158U && (unsigned int )((dev->dev)->bus)->chip_rev == 3U) {
      cfp_pretbtt = 100U;
    } else {
      cfp_pretbtt = 50U;
    }
  } else {
  }
  b43legacy_write16(dev, 1554, (int )cfp_pretbtt);
  return;
}
}
static void b43legacy_rate_memory_write(struct b43legacy_wldev *dev , u16 rate , int is_ofdm )
{
  u16 offset ;
  u8 tmp ;
  u8 tmp___0 ;
  u16 tmp___1 ;
  {
  if (is_ofdm != 0) {
    offset = 1152U;
    tmp = b43legacy_plcp_get_ratecode_ofdm((int )((u8 const )rate));
    offset = ((unsigned int )((u16 )tmp) & 15U) * 2U + (unsigned int )offset;
  } else {
    offset = 1216U;
    tmp___0 = b43legacy_plcp_get_ratecode_cck((int )((u8 const )rate));
    offset = ((unsigned int )((u16 )tmp___0) & 15U) * 2U + (unsigned int )offset;
  }
  tmp___1 = b43legacy_shm_read16(dev, 1, (int )offset);
  b43legacy_shm_write16(dev, 1, (int )((unsigned int )offset + 32U), (int )tmp___1);
  return;
}
}
static void b43legacy_rate_memory_init(struct b43legacy_wldev *dev )
{
  long tmp ;
  long tmp___0 ;
  {
  switch ((int )dev->phy.type) {
  case 2:
  b43legacy_rate_memory_write(dev, 12, 1);
  b43legacy_rate_memory_write(dev, 24, 1);
  b43legacy_rate_memory_write(dev, 36, 1);
  b43legacy_rate_memory_write(dev, 48, 1);
  b43legacy_rate_memory_write(dev, 72, 1);
  b43legacy_rate_memory_write(dev, 96, 1);
  b43legacy_rate_memory_write(dev, 108, 1);
  case 1:
  b43legacy_rate_memory_write(dev, 2, 0);
  b43legacy_rate_memory_write(dev, 4, 0);
  b43legacy_rate_memory_write(dev, 11, 0);
  b43legacy_rate_memory_write(dev, 22, 0);
  goto ldv_55918;
  default:
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                           "i" (2118), "i" (12UL));
      ldv_55920: ;
      goto ldv_55920;
    } else {
    }
  } else {
  }
  }
  ldv_55918: ;
  return;
}
}
static void b43legacy_mgmtframe_txantenna(struct b43legacy_wldev *dev , int antenna )
{
  u16 ant ;
  u16 tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ant = 0U;
  switch (antenna) {
  case 0:
  ant = ant;
  goto ldv_55928;
  case 1:
  ant = (u16 )((unsigned int )ant | 256U);
  goto ldv_55928;
  case 3:
  ant = (u16 )((unsigned int )ant | 768U);
  goto ldv_55928;
  default:
  tmp___1 = ldv__builtin_expect(1L, 0L);
  if (tmp___1 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___0 = ldv__builtin_expect(1L, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                           "i" (2140), "i" (12UL));
      ldv_55932: ;
      goto ldv_55932;
    } else {
    }
  } else {
  }
  }
  ldv_55928:
  tmp = b43legacy_shm_read16(dev, 1, 84);
  tmp = (u16 )(((int )((short )tmp) & -961) | (int )((short )ant));
  b43legacy_shm_write16(dev, 1, 84, (int )tmp);
  tmp = b43legacy_shm_read16(dev, 1, 34);
  tmp = (u16 )(((int )((short )tmp) & -961) | (int )((short )ant));
  b43legacy_shm_write16(dev, 1, 34, (int )tmp);
  tmp = b43legacy_shm_read16(dev, 1, 392);
  tmp = (u16 )(((int )((short )tmp) & -961) | (int )((short )ant));
  b43legacy_shm_write16(dev, 1, 392, (int )tmp);
  return;
}
}
static void b43legacy_chip_exit(struct b43legacy_wldev *dev )
{
  {
  b43legacy_radio_turn_off(dev, 1);
  b43legacy_gpio_cleanup(dev);
  return;
}
}
static int b43legacy_chip_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  int err ;
  int tmp ;
  u32 value32 ;
  u32 macctl ;
  u16 value16 ;
  int tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  phy = & dev->phy;
  macctl = 1280U;
  if ((int )dev->phy.gmode) {
    macctl = macctl | 2147483648U;
  } else {
  }
  macctl = macctl | 131072U;
  b43legacy_write32(dev, 288, macctl);
  err = b43legacy_upload_microcode(dev);
  if (err != 0) {
    goto out;
  } else {
  }
  err = b43legacy_gpio_init(dev);
  if (err != 0) {
    goto out;
  } else {
  }
  err = b43legacy_upload_initvals(dev);
  if (err != 0) {
    goto err_gpio_clean;
  } else {
  }
  b43legacy_radio_turn_on(dev);
  b43legacy_write16(dev, 998, 0);
  err = b43legacy_phy_init(dev);
  if (err != 0) {
    goto err_radio_off;
  } else {
  }
  tmp = phy->interfmode;
  phy->interfmode = 0;
  b43legacy_radio_set_interference_mitigation(dev, tmp);
  b43legacy_phy_set_antenna_diversity(dev);
  b43legacy_mgmtframe_txantenna(dev, 3);
  if ((unsigned int )phy->type == 1U) {
    value16 = b43legacy_read16(dev, 94);
    value16 = (u16 )((unsigned int )value16 | 4U);
    b43legacy_write16(dev, 94, (int )value16);
  } else {
  }
  b43legacy_write32(dev, 256, 16777216U);
  if ((unsigned int )(dev->dev)->id.revision <= 4U) {
    b43legacy_write32(dev, 268, 16777216U);
  } else {
  }
  value32 = b43legacy_read32(dev, 288);
  value32 = value32 & 4294836223U;
  b43legacy_write32(dev, 288, value32);
  value32 = b43legacy_read32(dev, 288);
  value32 = value32 | 131072U;
  b43legacy_write32(dev, 288, value32);
  tmp___0 = b43legacy_using_pio(dev);
  if (tmp___0 != 0) {
    b43legacy_write32(dev, 528, 256U);
    b43legacy_write32(dev, 560, 256U);
    b43legacy_write32(dev, 592, 256U);
    b43legacy_write32(dev, 624, 256U);
    b43legacy_shm_write16(dev, 1, 52, 0);
  } else {
  }
  b43legacy_shm_write16(dev, 1, 116, 0);
  b43legacy_adjust_opmode(dev);
  if ((unsigned int )(dev->dev)->id.revision <= 2U) {
    b43legacy_write16(dev, 1550, 0);
    b43legacy_write16(dev, 1552, 32768);
    b43legacy_write16(dev, 1540, 0);
    b43legacy_write16(dev, 1542, 512);
  } else {
    b43legacy_write32(dev, 392, 2147483648U);
    b43legacy_write32(dev, 396, 33554432U);
  }
  b43legacy_write32(dev, 296, 16384U);
  b43legacy_write32(dev, 36, 121856U);
  b43legacy_write32(dev, 44, 56320U);
  b43legacy_write32(dev, 52, 56320U);
  b43legacy_write32(dev, 60, 121856U);
  b43legacy_write32(dev, 68, 56320U);
  b43legacy_write32(dev, 76, 56320U);
  value32 = ssb_read32(dev->dev, 3992);
  value32 = value32 | 1048576U;
  ssb_write32(dev->dev, 3992, value32);
  b43legacy_write16(dev, 1704, (int )((dev->dev)->bus)->chipco.fast_pwrup_delay);
  atomic_set(& phy->txerr_cnt, 1000);
  __ret_warn_on = err != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2277);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  b43legacydbg(dev->wl, "Chip initialized\n");
  out: ;
  return (err);
  err_radio_off:
  b43legacy_radio_turn_off(dev, 1);
  err_gpio_clean:
  b43legacy_gpio_cleanup(dev);
  goto out;
}
}
static void b43legacy_periodic_every120sec(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->type != 2U || (unsigned int )phy->rev <= 1U) {
    return;
  } else {
  }
  b43legacy_mac_suspend(dev);
  b43legacy_phy_lo_g_measure(dev);
  b43legacy_mac_enable(dev);
  return;
}
}
static void b43legacy_periodic_every60sec(struct b43legacy_wldev *dev )
{
  {
  b43legacy_phy_lo_mark_all_unused(dev);
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) != 0) {
    b43legacy_mac_suspend(dev);
    b43legacy_calc_nrssi_slope(dev);
    b43legacy_mac_enable(dev);
  } else {
  }
  return;
}
}
static void b43legacy_periodic_every30sec(struct b43legacy_wldev *dev )
{
  {
  b43legacy_calculate_link_quality(dev);
  return;
}
}
static void b43legacy_periodic_every15sec(struct b43legacy_wldev *dev )
{
  {
  b43legacy_phy_xmitpower(dev);
  atomic_set(& dev->phy.txerr_cnt, 1000);
  __asm__ volatile ("sfence": : : "memory");
  return;
}
}
static void do_periodic_work(struct b43legacy_wldev *dev )
{
  unsigned int state ;
  {
  state = dev->periodic_state;
  if ((state & 7U) == 0U) {
    b43legacy_periodic_every120sec(dev);
  } else {
  }
  if ((state & 3U) == 0U) {
    b43legacy_periodic_every60sec(dev);
  } else {
  }
  if ((state & 1U) == 0U) {
    b43legacy_periodic_every30sec(dev);
  } else {
  }
  b43legacy_periodic_every15sec(dev);
  return;
}
}
static void b43legacy_periodic_work_handler(struct work_struct *work )
{
  struct b43legacy_wldev *dev ;
  struct work_struct const *__mptr ;
  struct b43legacy_wl *wl ;
  unsigned long delay ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct b43legacy_wldev *)__mptr + 0xfffffffffffff220UL;
  wl = dev->wl;
  mutex_lock_nested(& wl->mutex, 0U);
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  tmp___0 = ldv__builtin_expect(tmp != 2, 0L);
  if (tmp___0 != 0L) {
    goto out;
  } else {
  }
  tmp___1 = b43legacy_debug(dev, 4);
  if (tmp___1 != 0) {
    goto out_requeue;
  } else {
  }
  do_periodic_work(dev);
  dev->periodic_state = dev->periodic_state + 1U;
  out_requeue:
  tmp___2 = b43legacy_debug(dev, 3);
  if (tmp___2 != 0) {
    delay = msecs_to_jiffies(50U);
  } else {
    delay = round_jiffies_relative(3750UL);
  }
  ieee80211_queue_delayed_work(wl->hw, & dev->periodic_work, delay);
  out:
  mutex_unlock(& wl->mutex);
  return;
}
}
static void b43legacy_periodic_tasks_setup(struct b43legacy_wldev *dev )
{
  struct delayed_work *work ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  work = & dev->periodic_work;
  dev->periodic_state = 0U;
  __init_work(& work->work, 0);
  __constr_expr_0.counter = 137438953408L;
  work->work.data = __constr_expr_0;
  lockdep_init_map(& work->work.lockdep_map, "(&(work)->work)", & __key, 0);
  INIT_LIST_HEAD(& work->work.entry);
  work->work.func = & b43legacy_periodic_work_handler;
  init_timer_key(& work->timer, 2097152U, "(&(work)->timer)", & __key___0);
  work->timer.function = & delayed_work_timer_fn;
  work->timer.data = (unsigned long )work;
  ieee80211_queue_delayed_work((dev->wl)->hw, work, 0UL);
  return;
}
}
static int b43legacy_validate_chipaccess(struct b43legacy_wldev *dev )
{
  u32 value ;
  u32 shm_backup ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  shm_backup = b43legacy_shm_read32(dev, 1, 0);
  b43legacy_shm_write32(dev, 1, 0, 2857719210U);
  tmp = b43legacy_shm_read32(dev, 1, 0);
  if (tmp != 2857719210U) {
    goto error;
  } else {
  }
  b43legacy_shm_write32(dev, 1, 0, 1437248085U);
  tmp___0 = b43legacy_shm_read32(dev, 1, 0);
  if (tmp___0 != 1437248085U) {
    goto error;
  } else {
  }
  b43legacy_shm_write32(dev, 1, 0, shm_backup);
  value = b43legacy_read32(dev, 288);
  if ((value | 2147483648U) != 2147484672U) {
    goto error;
  } else {
  }
  value = b43legacy_read32(dev, 296);
  if (value != 0U) {
    goto error;
  } else {
  }
  return (0);
  error:
  b43legacyerr(dev->wl, "Failed to validate the chipaccess\n");
  return (-19);
}
}
static void b43legacy_security_init(struct b43legacy_wldev *dev )
{
  int __ret_warn_on ;
  long tmp ;
  {
  dev->max_nr_keys = (unsigned int )(dev->dev)->id.revision > 4U ? 58U : 20U;
  __ret_warn_on = (unsigned int )dev->max_nr_keys > 58U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2415);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dev->ktp = b43legacy_shm_read16(dev, 1, 86);
  dev->ktp = (unsigned int )dev->ktp * 2U;
  if ((unsigned int )(dev->dev)->id.revision > 4U) {
    b43legacy_write16(dev, 1084, (int )((unsigned int )((u16 )dev->max_nr_keys) + 65528U));
  } else {
  }
  return;
}
}
static int b43legacy_rng_read(struct hwrng *rng , u32 *data )
{
  struct b43legacy_wl *wl ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  u16 tmp___0 ;
  {
  wl = (struct b43legacy_wl *)rng->priv;
  tmp = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = b43legacy_read16(wl->current_dev, 1626);
  *data = (u32 )tmp___0;
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  return (2);
}
}
static void b43legacy_rng_exit(struct b43legacy_wl *wl )
{
  {
  if ((unsigned int )wl->rng_initialized != 0U) {
    hwrng_unregister(& wl->rng);
  } else {
  }
  return;
}
}
static int b43legacy_rng_init(struct b43legacy_wl *wl )
{
  int err ;
  char const *tmp ;
  {
  err = 0;
  tmp = wiphy_name((struct wiphy const *)(wl->hw)->wiphy);
  snprintf((char *)(& wl->rng_name), 31UL, "%s_%s", (char *)"b43legacy", tmp);
  wl->rng.name = (char const *)(& wl->rng_name);
  wl->rng.data_read = & b43legacy_rng_read;
  wl->rng.priv = (unsigned long )wl;
  wl->rng_initialized = 1U;
  err = hwrng_register(& wl->rng);
  if (err != 0) {
    wl->rng_initialized = 0U;
    b43legacyerr(wl, "Failed to register the random number generator (%d)\n", err);
  } else {
  }
  return (err);
}
}
static void b43legacy_tx_work(struct work_struct *work )
{
  struct b43legacy_wl *wl ;
  struct work_struct const *__mptr ;
  struct b43legacy_wldev *dev ;
  struct sk_buff *skb ;
  int queue_num ;
  int err ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  {
  __mptr = (struct work_struct const *)work;
  wl = (struct b43legacy_wl *)__mptr + 0xfffffffffffffcc8UL;
  err = 0;
  mutex_lock_nested(& wl->mutex, 0U);
  dev = wl->current_dev;
  if ((unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    tmp___0 = 1;
  } else {
    tmp = atomic_read((atomic_t const *)(& dev->__init_status));
    if (tmp <= 1) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    mutex_unlock(& wl->mutex);
    return;
  } else {
  }
  queue_num = 0;
  goto ldv_56029;
  ldv_56028: ;
  goto ldv_56027;
  ldv_56026:
  skb = skb_dequeue((struct sk_buff_head *)(& wl->tx_queue) + (unsigned long )queue_num);
  tmp___2 = b43legacy_using_pio(dev);
  if (tmp___2 != 0) {
    err = b43legacy_pio_tx(dev, skb);
  } else {
    err = b43legacy_dma_tx(dev, skb);
  }
  if (err == -28) {
    wl->tx_queue_stopped[queue_num] = 1;
    ieee80211_stop_queue(wl->hw, queue_num);
    skb_queue_head((struct sk_buff_head *)(& wl->tx_queue) + (unsigned long )queue_num,
                   skb);
    goto ldv_56025;
  } else {
  }
  tmp___3 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___3 != 0L) {
    consume_skb(skb);
  } else {
  }
  err = 0;
  ldv_56027:
  tmp___4 = skb_queue_len((struct sk_buff_head const *)(& wl->tx_queue) + (unsigned long )queue_num);
  if (tmp___4 != 0U) {
    goto ldv_56026;
  } else {
  }
  ldv_56025: ;
  if (err == 0) {
    wl->tx_queue_stopped[queue_num] = 0;
  } else {
  }
  queue_num = queue_num + 1;
  ldv_56029: ;
  if (queue_num <= 3) {
    goto ldv_56028;
  } else {
  }
  mutex_unlock(& wl->mutex);
  return;
}
}
static void b43legacy_op_tx(struct ieee80211_hw *hw , struct ieee80211_tx_control *control ,
                            struct sk_buff *skb )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  long tmp___0 ;
  int __ret_warn_on ;
  unsigned char *tmp___1 ;
  long tmp___2 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  tmp___0 = ldv__builtin_expect(skb->len <= 9U, 0L);
  if (tmp___0 != 0L) {
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  __ret_warn_on = (unsigned int )((struct skb_shared_info *)tmp___1)->nr_frags != 0U;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2528);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  skb_queue_tail((struct sk_buff_head *)(& wl->tx_queue) + (unsigned long )skb->queue_mapping,
                 skb);
  if (! wl->tx_queue_stopped[(int )skb->queue_mapping]) {
    ieee80211_queue_work(wl->hw, & wl->tx_work);
  } else {
    ieee80211_stop_queue(wl->hw, (int )skb->queue_mapping);
  }
  return;
}
}
static int b43legacy_op_conf_tx(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                u16 queue , struct ieee80211_tx_queue_params const *params )
{
  {
  return (0);
}
}
static int b43legacy_op_get_stats(struct ieee80211_hw *hw , struct ieee80211_low_level_stats *stats )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  tmp___0 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  memcpy((void *)stats, (void const *)(& wl->ieee_stats), 16UL);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  return (0);
}
}
static char const *phymode_to_string(unsigned int phymode )
{
  long tmp ;
  long tmp___0 ;
  {
  switch (phymode) {
  case 2U: ;
  return ("B");
  case 4U: ;
  return ("G");
  default:
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                           "i" (2565), "i" (12UL));
      ldv_56060: ;
      goto ldv_56060;
    } else {
    }
  } else {
  }
  }
  return ("");
}
}
static int find_wldev_for_phymode(struct b43legacy_wl *wl , unsigned int phymode ,
                                  struct b43legacy_wldev **dev , bool *gmode )
{
  struct b43legacy_wldev *d ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)wl->devlist.next;
  d = (struct b43legacy_wldev *)__mptr + 0xffffffffffffecb0UL;
  goto ldv_56073;
  ldv_56072: ;
  if (((unsigned int )d->phy.possible_phymodes & phymode) != 0U) {
    *gmode = 1;
    *dev = d;
    return (0);
  } else {
  }
  __mptr___0 = (struct list_head const *)d->list.next;
  d = (struct b43legacy_wldev *)__mptr___0 + 0xffffffffffffecb0UL;
  ldv_56073: ;
  if ((unsigned long )(& d->list) != (unsigned long )(& wl->devlist)) {
    goto ldv_56072;
  } else {
  }
  return (-3);
}
}
static void b43legacy_put_phy_into_reset(struct b43legacy_wldev *dev )
{
  struct ssb_device *sdev ;
  u32 tmslow ;
  {
  sdev = dev->dev;
  tmslow = ssb_read32(sdev, 3992);
  tmslow = tmslow & 3758096383U;
  tmslow = tmslow | 524288U;
  tmslow = tmslow | 131072U;
  ssb_write32(sdev, 3992, tmslow);
  msleep(1U);
  tmslow = ssb_read32(sdev, 3992);
  tmslow = tmslow & 4294836223U;
  tmslow = tmslow | 524288U;
  ssb_write32(sdev, 3992, tmslow);
  msleep(1U);
  return;
}
}
static int b43legacy_switch_phymode(struct b43legacy_wl *wl , unsigned int new_mode )
{
  struct b43legacy_wldev *up_dev ;
  struct b43legacy_wldev *down_dev ;
  int err ;
  bool gmode ;
  int prev_status ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int __ret_warn_on ;
  int tmp___3 ;
  long tmp___4 ;
  {
  up_dev = up_dev;
  gmode = 0;
  err = find_wldev_for_phymode(wl, new_mode, & up_dev, & gmode);
  if (err != 0) {
    tmp = phymode_to_string(new_mode);
    b43legacyerr(wl, "Could not find a device for %s-PHY mode\n", tmp);
    return (err);
  } else {
  }
  if ((unsigned long )wl->current_dev == (unsigned long )up_dev && (int )(wl->current_dev)->phy.gmode == (int )gmode) {
    return (0);
  } else {
  }
  tmp___0 = phymode_to_string(new_mode);
  b43legacydbg(wl, "Reconfiguring PHYmode to %s-PHY\n", tmp___0);
  down_dev = wl->current_dev;
  prev_status = atomic_read((atomic_t const *)(& down_dev->__init_status));
  if (prev_status > 1) {
    b43legacy_wireless_core_stop(down_dev);
  } else {
  }
  if (prev_status > 0) {
    b43legacy_wireless_core_exit(down_dev);
  } else {
  }
  if ((unsigned long )down_dev != (unsigned long )up_dev) {
    b43legacy_put_phy_into_reset(down_dev);
  } else {
  }
  up_dev->phy.gmode = gmode;
  if (prev_status > 0) {
    err = b43legacy_wireless_core_init(up_dev);
    if (err != 0) {
      tmp___1 = phymode_to_string(new_mode);
      b43legacyerr(wl, "Fatal: Could not initialize device for newly selected %s-PHY mode\n",
                   tmp___1);
      goto init_failure;
    } else {
    }
  } else {
  }
  if (prev_status > 1) {
    err = b43legacy_wireless_core_start(up_dev);
    if (err != 0) {
      tmp___2 = phymode_to_string(new_mode);
      b43legacyerr(wl, "Fatal: Could not start device for newly selected %s-PHY mode\n",
                   tmp___2);
      b43legacy_wireless_core_exit(up_dev);
      goto init_failure;
    } else {
    }
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& up_dev->__init_status));
  __ret_warn_on = tmp___3 != prev_status;
  tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2667);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  b43legacy_shm_write32(up_dev, 1, 62, 0U);
  wl->current_dev = up_dev;
  return (0);
  init_failure:
  wl->current_dev = (struct b43legacy_wldev *)0;
  return (err);
}
}
static void b43legacy_set_retry_limits(struct b43legacy_wldev *dev , unsigned int short_retry ,
                                       unsigned int long_retry )
{
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  _min1 = short_retry;
  _min2 = 15U;
  short_retry = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = long_retry;
  _min2___0 = 15U;
  long_retry = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  b43legacy_shm_write16(dev, 2, 6, (int )((u16 )short_retry));
  b43legacy_shm_write16(dev, 2, 7, (int )((u16 )long_retry));
  return;
}
}
static int b43legacy_op_dev_config(struct ieee80211_hw *hw , u32 changed )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  struct b43legacy_phy *phy ;
  struct ieee80211_conf *conf ;
  unsigned long flags ;
  unsigned int new_phymode ;
  int antenna_tx ;
  int err ;
  int __ret_warn_on ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  conf = & hw->conf;
  new_phymode = 65535U;
  err = 0;
  antenna_tx = 3;
  mutex_lock_nested(& wl->mutex, 0U);
  dev = wl->current_dev;
  phy = & dev->phy;
  if ((changed & 128U) != 0U) {
    b43legacy_set_retry_limits(dev, (unsigned int )conf->short_frame_max_tx_count,
                               (unsigned int )conf->long_frame_max_tx_count);
  } else {
  }
  changed = changed & 4294967167U;
  if (changed == 0U) {
    goto out_unlock_mutex;
  } else {
  }
  switch ((unsigned int )(conf->chandef.chan)->band) {
  case 0U: ;
  if ((unsigned int )phy->type == 1U) {
    new_phymode = 2U;
  } else {
    new_phymode = 4U;
  }
  goto ldv_56117;
  default:
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2729);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_56117:
  err = b43legacy_switch_phymode(wl, new_phymode);
  if (err != 0) {
    goto out_unlock_mutex;
  } else {
  }
  tmp___1 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___2 <= 1) {
    spin_unlock_irqrestore(& wl->irq_lock, flags);
    goto out_unlock_mutex;
  } else {
  }
  b43legacy_write32(dev, 300, 0U);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  b43legacy_synchronize_irq(dev);
  if ((int )(conf->chandef.chan)->hw_value != (int )((unsigned short )phy->channel)) {
    b43legacy_radio_selectchannel(dev, (int )((u8 )(conf->chandef.chan)->hw_value),
                                  0);
  } else {
  }
  (dev->wl)->radiotap_enabled = ((int )conf->flags & 1) != 0;
  if (conf->power_level != 0) {
    if (conf->power_level != (int )phy->power_level) {
      phy->power_level = (u8 )conf->power_level;
      b43legacy_phy_xmitpower(dev);
    } else {
    }
  } else {
  }
  b43legacy_mgmtframe_txantenna(dev, antenna_tx);
  if ((int )wl->radio_enabled != (int )phy->radio_on) {
    if ((int )wl->radio_enabled) {
      b43legacy_radio_turn_on(dev);
      b43legacyinfo(dev->wl, "Radio turned on by software\n");
      if (! dev->radio_hw_enable) {
        b43legacyinfo(dev->wl, "The hardware RF-kill button still turns the radio physically off. Press the button to turn it on.\n");
      } else {
      }
    } else {
      b43legacy_radio_turn_off(dev, 0);
      b43legacyinfo(dev->wl, "Radio turned off by software\n");
    }
  } else {
  }
  tmp___3 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  b43legacy_write32(dev, 300, dev->irq_mask);
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  out_unlock_mutex:
  mutex_unlock(& wl->mutex);
  return (err);
}
}
static void b43legacy_update_basic_rates(struct b43legacy_wldev *dev , u32 brates )
{
  struct ieee80211_supported_band *sband ;
  struct ieee80211_rate *rate ;
  int i ;
  u16 basic ;
  u16 direct ;
  u16 offset ;
  u16 basic_offset ;
  u16 rateptr ;
  u8 tmp ;
  u8 tmp___0 ;
  int tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  int tmp___4 ;
  {
  sband = (((dev->wl)->hw)->wiphy)->bands[0];
  i = 0;
  goto ldv_56140;
  ldv_56139:
  rate = sband->bitrates + (unsigned long )i;
  tmp___1 = b43legacy_is_cck_rate((int )rate->hw_value);
  if (tmp___1 != 0) {
    direct = 1216U;
    basic = 1248U;
    tmp = b43legacy_plcp_get_ratecode_cck((int )((u8 const )rate->hw_value));
    offset = (u16 )tmp;
    offset = (unsigned int )offset & 15U;
  } else {
    direct = 1152U;
    basic = 1184U;
    tmp___0 = b43legacy_plcp_get_ratecode_ofdm((int )((u8 const )rate->hw_value));
    offset = (u16 )tmp___0;
    offset = (unsigned int )offset & 15U;
  }
  rate = ieee80211_get_response_rate(sband, brates, (int )rate->bitrate);
  tmp___4 = b43legacy_is_cck_rate((int )rate->hw_value);
  if (tmp___4 != 0) {
    tmp___2 = b43legacy_plcp_get_ratecode_cck((int )((u8 const )rate->hw_value));
    basic_offset = (u16 )tmp___2;
    basic_offset = (unsigned int )basic_offset & 15U;
  } else {
    tmp___3 = b43legacy_plcp_get_ratecode_ofdm((int )((u8 const )rate->hw_value));
    basic_offset = (u16 )tmp___3;
    basic_offset = (unsigned int )basic_offset & 15U;
  }
  rateptr = b43legacy_shm_read16(dev, 1, (int )((unsigned int )basic_offset * 2U + (unsigned int )direct));
  b43legacy_shm_write16(dev, 1, (int )((unsigned int )offset * 2U + (unsigned int )basic),
                        (int )rateptr);
  i = i + 1;
  ldv_56140: ;
  if (sband->n_bitrates > i) {
    goto ldv_56139;
  } else {
  }
  return;
}
}
static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                          struct ieee80211_bss_conf *conf , u32 changed )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  unsigned long flags ;
  int __ret_warn_on ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  mutex_lock_nested(& wl->mutex, 0U);
  __ret_warn_on = (unsigned long )wl->vif != (unsigned long )vif;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2847);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dev = wl->current_dev;
  tmp___1 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___2 <= 1) {
    spin_unlock_irqrestore(& wl->irq_lock, flags);
    goto out_unlock_mutex;
  } else {
  }
  b43legacy_write32(dev, 300, 0U);
  if ((changed & 128U) != 0U) {
    b43legacy_synchronize_irq(dev);
    if ((unsigned long )conf->bssid != (unsigned long )((u8 const *)0U)) {
      memcpy((void *)(& wl->bssid), (void const *)conf->bssid, 6UL);
    } else {
      eth_zero_addr((u8 *)(& wl->bssid));
    }
  } else {
  }
  tmp___5 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___5 > 0) {
    if ((changed & 256U) != 0U) {
      tmp___3 = b43legacy_is_mode(wl, 3);
      if (tmp___3 != 0) {
        b43legacy_update_templates(wl);
      } else {
        tmp___4 = b43legacy_is_mode(wl, 1);
        if (tmp___4 != 0) {
          b43legacy_update_templates(wl);
        } else {
        }
      }
    } else {
    }
    if ((changed & 128U) != 0U) {
      b43legacy_write_mac_bssid_templates(dev);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  b43legacy_mac_suspend(dev);
  if ((changed & 64U) != 0U) {
    tmp___6 = b43legacy_is_mode(wl, 3);
    if (tmp___6 != 0) {
      b43legacy_set_beacon_int(dev, (int )conf->beacon_int);
    } else {
      tmp___7 = b43legacy_is_mode(wl, 1);
      if (tmp___7 != 0) {
        b43legacy_set_beacon_int(dev, (int )conf->beacon_int);
      } else {
      }
    }
  } else {
  }
  if ((changed & 32U) != 0U) {
    b43legacy_update_basic_rates(dev, conf->basic_rates);
  } else {
  }
  if ((changed & 8U) != 0U) {
    if ((int )conf->use_short_slot) {
      b43legacy_short_slot_timing_enable(dev);
    } else {
      b43legacy_short_slot_timing_disable(dev);
    }
  } else {
  }
  b43legacy_mac_enable(dev);
  tmp___8 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___8);
  b43legacy_write32(dev, 300, dev->irq_mask);
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  out_unlock_mutex:
  mutex_unlock(& wl->mutex);
  return;
}
}
static void b43legacy_op_configure_filter(struct ieee80211_hw *hw , unsigned int changed ,
                                          unsigned int *fflags , u64 multicast )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  if ((unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    *fflags = 0U;
    return;
  } else {
  }
  tmp___0 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  *fflags = *fflags & 126U;
  changed = changed & 126U;
  wl->filter_flags = *fflags;
  if (changed != 0U) {
    tmp___1 = atomic_read((atomic_t const *)(& dev->__init_status));
    if (tmp___1 > 0) {
      b43legacy_adjust_opmode(dev);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  return;
}
}
static void b43legacy_wireless_core_stop(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  unsigned long flags ;
  int queue_num ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  struct sk_buff *tmp___1 ;
  __u32 tmp___2 ;
  {
  wl = dev->wl;
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp <= 1) {
    return;
  } else {
  }
  tmp___0 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  b43legacy_write32(dev, 300, 0U);
  b43legacy_read32(dev, 300);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  b43legacy_synchronize_irq(dev);
  atomic_set(& dev->__init_status, 1);
  __asm__ volatile ("": : : "memory");
  mutex_unlock(& wl->mutex);
  ldv_cancel_delayed_work_sync_10(& dev->periodic_work);
  ldv_cancel_work_sync_11(& wl->tx_work);
  mutex_lock_nested(& wl->mutex, 0U);
  queue_num = 0;
  goto ldv_56185;
  ldv_56184: ;
  goto ldv_56182;
  ldv_56181:
  tmp___1 = skb_dequeue((struct sk_buff_head *)(& wl->tx_queue) + (unsigned long )queue_num);
  consume_skb(tmp___1);
  ldv_56182:
  tmp___2 = skb_queue_len((struct sk_buff_head const *)(& wl->tx_queue) + (unsigned long )queue_num);
  if (tmp___2 != 0U) {
    goto ldv_56181;
  } else {
  }
  queue_num = queue_num + 1;
  ldv_56185: ;
  if (queue_num <= 3) {
    goto ldv_56184;
  } else {
  }
  b43legacy_mac_suspend(dev);
  ldv_free_irq_12((dev->dev)->irq, (void *)dev);
  b43legacydbg(wl, "Wireless interface stopped\n");
  return;
}
}
static int b43legacy_wireless_core_start(struct b43legacy_wldev *dev )
{
  int err ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  __ret_warn_on = tmp != 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       2988);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  drain_txstatus_queue(dev);
  err = ldv_request_irq_13((dev->dev)->irq, & b43legacy_interrupt_handler, 128UL,
                           "b43legacy", (void *)dev);
  if (err != 0) {
    b43legacyerr(dev->wl, "Cannot request IRQ-%d\n", (dev->dev)->irq);
    goto out;
  } else {
  }
  ieee80211_wake_queues((dev->wl)->hw);
  atomic_set(& dev->__init_status, 2);
  __asm__ volatile ("": : : "memory");
  b43legacy_mac_enable(dev);
  b43legacy_write32(dev, 300, dev->irq_mask);
  b43legacy_periodic_tasks_setup(dev);
  b43legacydbg(dev->wl, "Wireless interface started\n");
  out: ;
  return (err);
}
}
static int b43legacy_phy_versioning(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u32 tmp ;
  u8 analog_type ;
  u8 phy_type ;
  u8 phy_rev ;
  u16 radio_manuf ;
  u16 radio_ver ;
  u16 radio_rev ;
  int unsupported ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  phy = & dev->phy;
  unsupported = 0;
  tmp___0 = b43legacy_read16(dev, 992);
  tmp = (u32 )tmp___0;
  analog_type = (u8 )((tmp & 61440U) >> 12);
  phy_type = (u8 )((tmp & 3840U) >> 8);
  phy_rev = (u8 )tmp;
  switch ((int )phy_type) {
  case 1: ;
  if ((((unsigned int )phy_rev != 2U && (unsigned int )phy_rev != 4U) && (unsigned int )phy_rev != 6U) && (unsigned int )phy_rev != 7U) {
    unsupported = 1;
  } else {
  }
  goto ldv_56207;
  case 2: ;
  if ((unsigned int )phy_rev > 8U) {
    unsupported = 1;
  } else {
  }
  goto ldv_56207;
  default:
  unsupported = 1;
  }
  ldv_56207: ;
  if (unsupported != 0) {
    b43legacyerr(dev->wl, "FOUND UNSUPPORTED PHY (Analog %u, Type %u, Revision %u)\n",
                 (int )analog_type, (int )phy_type, (int )phy_rev);
    return (-95);
  } else {
  }
  b43legacydbg(dev->wl, "Found PHY: Analog %u, Type %u, Revision %u\n", (int )analog_type,
               (int )phy_type, (int )phy_rev);
  if ((unsigned int )((dev->dev)->bus)->chip_id == 17175U) {
    if ((unsigned int )((dev->dev)->bus)->chip_rev == 0U) {
      tmp = 839188863U;
    } else
    if ((unsigned int )((dev->dev)->bus)->chip_rev == 1U) {
      tmp = 1107624319U;
    } else {
      tmp = 1376059775U;
    }
  } else {
    b43legacy_write16(dev, 1014, 1);
    tmp___1 = b43legacy_read16(dev, 1016);
    tmp = (u32 )tmp___1;
    tmp = tmp << 16;
    b43legacy_write16(dev, 1014, 1);
    tmp___2 = b43legacy_read16(dev, 1018);
    tmp = (u32 )tmp___2 | tmp;
  }
  radio_manuf = (unsigned int )((u16 )tmp) & 4095U;
  radio_ver = (u16 )((tmp & 268431360U) >> 12);
  radio_rev = (u16 )(tmp >> 28);
  switch ((int )phy_type) {
  case 1: ;
  if (((int )radio_ver & 65520) != 8272) {
    unsupported = 1;
  } else {
  }
  goto ldv_56211;
  case 2: ;
  if ((unsigned int )radio_ver != 8272U) {
    unsupported = 1;
  } else {
  }
  goto ldv_56211;
  default:
  tmp___4 = ldv__builtin_expect(1L, 0L);
  if (tmp___4 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___3 = ldv__builtin_expect(1L, 0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                           "i" (3086), "i" (12UL));
      ldv_56214: ;
      goto ldv_56214;
    } else {
    }
  } else {
  }
  }
  ldv_56211: ;
  if (unsupported != 0) {
    b43legacyerr(dev->wl, "FOUND UNSUPPORTED RADIO (Manuf 0x%X, Version 0x%X, Revision %u)\n",
                 (int )radio_manuf, (int )radio_ver, (int )radio_rev);
    return (-95);
  } else {
  }
  b43legacydbg(dev->wl, "Found Radio: Manuf 0x%X, Version 0x%X, Revision %u\n", (int )radio_manuf,
               (int )radio_ver, (int )radio_rev);
  phy->radio_manuf = radio_manuf;
  phy->radio_ver = radio_ver;
  phy->radio_rev = (u8 )radio_rev;
  phy->analog = analog_type;
  phy->type = phy_type;
  phy->rev = phy_rev;
  return (0);
}
}
static void setup_struct_phy_for_init(struct b43legacy_wldev *dev , struct b43legacy_phy *phy )
{
  struct b43legacy_lopair *lo ;
  int i ;
  {
  memset((void *)(& phy->minlowsig), 255, 4UL);
  memset((void *)(& phy->minlowsigpos), 0, 4UL);
  dev->radio_hw_enable = 1;
  phy->savedpctlreg = 65535U;
  phy->aci_enable = 0;
  phy->aci_wlan_automatic = 0;
  phy->aci_hw_rssi = 0;
  lo = phy->_lo_pairs;
  if ((unsigned long )lo != (unsigned long )((struct b43legacy_lopair *)0)) {
    memset((void *)lo, 0, 168UL);
  } else {
  }
  phy->max_lb_gain = 0;
  phy->trsw_rx_gain = 0;
  phy->__annonCompField105.bbatt = b43legacy_default_baseband_attenuation(dev);
  phy->__annonCompField105.rfatt = b43legacy_default_radio_attenuation(dev);
  phy->__annonCompField105.txctl1 = b43legacy_default_txctl1(dev);
  phy->__annonCompField106.txpwr_offset = 0U;
  phy->nrssislope = 0;
  i = 0;
  goto ldv_56224;
  ldv_56223:
  phy->nrssi[i] = -1000;
  i = i + 1;
  ldv_56224: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_56223;
  } else {
  }
  i = 0;
  goto ldv_56229;
  ldv_56228:
  phy->nrssi_lt[i] = (s8 )i;
  i = i + 1;
  ldv_56229: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_56228;
  } else {
  }
  phy->lofcal = 65535U;
  phy->initval = 65535U;
  phy->interfmode = 0;
  phy->channel = 255U;
  return;
}
}
static void setup_struct_wldev_for_init(struct b43legacy_wldev *dev )
{
  {
  dev->dfq_valid = 0;
  memset((void *)(& dev->stats), 0, 24UL);
  setup_struct_phy_for_init(dev, & dev->phy);
  dev->irq_reason = 0U;
  memset((void *)(& dev->dma_reason), 0, 24UL);
  dev->irq_mask = 939887205U;
  dev->mac_suspended = 1;
  memset((void *)(& dev->noisecalc), 0, 35UL);
  return;
}
}
static void b43legacy_set_synth_pu_delay(struct b43legacy_wldev *dev , bool idle )
{
  u16 pu_delay ;
  int tmp ;
  u16 _max1 ;
  unsigned short _max2 ;
  {
  pu_delay = 1050U;
  tmp = b43legacy_is_mode(dev->wl, 1);
  if (tmp != 0 || (int )idle) {
    pu_delay = 500U;
  } else {
  }
  if ((unsigned int )dev->phy.radio_ver == 8272U && (unsigned int )dev->phy.radio_rev == 8U) {
    _max1 = pu_delay;
    _max2 = 2400U;
    pu_delay = (u16 )((int )_max1 > (int )_max2 ? (int )_max1 : (int )_max2);
  } else {
  }
  b43legacy_shm_write16(dev, 1, 148, (int )pu_delay);
  return;
}
}
static void b43legacy_set_pretbtt(struct b43legacy_wldev *dev )
{
  u16 pretbtt ;
  int tmp ;
  {
  tmp = b43legacy_is_mode(dev->wl, 1);
  if (tmp != 0) {
    pretbtt = 2U;
  } else {
    pretbtt = 250U;
  }
  b43legacy_shm_write16(dev, 1, 150, (int )pretbtt);
  b43legacy_write16(dev, 1554, (int )pretbtt);
  return;
}
}
static void b43legacy_wireless_core_exit(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u32 macctl ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  phy = & dev->phy;
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  __ret_warn_on = tmp > 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3210);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___1 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___1 != 1) {
    return;
  } else {
  }
  atomic_set(& dev->__init_status, 0);
  __asm__ volatile ("": : : "memory");
  macctl = b43legacy_read32(dev, 288);
  macctl = macctl & 4294967293U;
  macctl = macctl | 4U;
  b43legacy_write32(dev, 288, macctl);
  b43legacy_leds_exit(dev);
  b43legacy_rng_exit(dev->wl);
  b43legacy_pio_free(dev);
  b43legacy_dma_free(dev);
  b43legacy_chip_exit(dev);
  b43legacy_radio_turn_off(dev, 1);
  b43legacy_switch_analog(dev, 0);
  if ((int )phy->dyn_tssi_tbl) {
    kfree((void const *)phy->tssi2dbm);
  } else {
  }
  kfree((void const *)phy->lo_control);
  phy->lo_control = (struct b43legacy_txpower_lo_control *)0;
  if ((unsigned long )(dev->wl)->current_beacon != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any((dev->wl)->current_beacon);
    (dev->wl)->current_beacon = (struct sk_buff *)0;
  } else {
  }
  ssb_device_disable(dev->dev, 0U);
  ssb_bus_may_powerdown((dev->dev)->bus);
  return;
}
}
static void prepare_phy_data_for_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  int i ;
  {
  phy = & dev->phy;
  phy->__annonCompField105.bbatt = b43legacy_default_baseband_attenuation(dev);
  phy->__annonCompField105.rfatt = b43legacy_default_radio_attenuation(dev);
  phy->__annonCompField105.txctl1 = b43legacy_default_txctl1(dev);
  phy->__annonCompField105.txctl2 = 65535U;
  phy->__annonCompField106.txpwr_offset = 0U;
  phy->nrssislope = 0;
  i = 0;
  goto ldv_56261;
  ldv_56260:
  phy->nrssi[i] = -1000;
  i = i + 1;
  ldv_56261: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_56260;
  } else {
  }
  i = 0;
  goto ldv_56266;
  ldv_56265:
  phy->nrssi_lt[i] = (s8 )i;
  i = i + 1;
  ldv_56266: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_56265;
  } else {
  }
  phy->lofcal = 65535U;
  phy->initval = 65535U;
  phy->aci_enable = 0;
  phy->aci_wlan_automatic = 0;
  phy->aci_hw_rssi = 0;
  phy->antenna_diversity = 65535U;
  memset((void *)(& phy->minlowsig), 255, 4UL);
  memset((void *)(& phy->minlowsigpos), 0, 4UL);
  phy->calibrated = 0U;
  if ((unsigned long )phy->_lo_pairs != (unsigned long )((struct b43legacy_lopair *)0)) {
    memset((void *)phy->_lo_pairs, 0, 168UL);
  } else {
  }
  memset((void *)(& phy->loopback_gain), 0, 4UL);
  return;
}
}
static int b43legacy_wireless_core_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  struct ssb_bus *bus ;
  struct b43legacy_phy *phy ;
  struct ssb_sprom *sprom ;
  int err ;
  u32 hf ;
  u32 tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int __ret_warn_on___0 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  wl = dev->wl;
  bus = (dev->dev)->bus;
  phy = & dev->phy;
  sprom = & ((dev->dev)->bus)->sprom;
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3291);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  err = ssb_bus_powerup(bus, 0);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___2 = ssb_device_is_enabled(dev->dev);
  if (tmp___2 == 0) {
    tmp = (int )phy->gmode ? 536870912U : 0U;
    b43legacy_wireless_core_reset(dev, tmp);
  } else {
  }
  if ((unsigned int )phy->type == 1U || (unsigned int )phy->type == 2U) {
    tmp___3 = kzalloc(168UL, 208U);
    phy->_lo_pairs = (struct b43legacy_lopair *)tmp___3;
    if ((unsigned long )phy->_lo_pairs == (unsigned long )((struct b43legacy_lopair *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  setup_struct_wldev_for_init(dev);
  err = b43legacy_phy_init_tssi2dbm_table(dev);
  if (err != 0) {
    goto err_kfree_lo_control;
  } else {
  }
  ssb_pcicore_dev_irqvecs_enable(& bus->pcicore, dev->dev);
  prepare_phy_data_for_init(dev);
  b43legacy_phy_calibrate(dev);
  err = b43legacy_chip_init(dev);
  if (err != 0) {
    goto err_kfree_tssitbl;
  } else {
  }
  b43legacy_shm_write16(dev, 1, 22, (int )(dev->dev)->id.revision);
  hf = b43legacy_hf_read(dev);
  if ((unsigned int )phy->type == 2U) {
    hf = hf | 2U;
    if ((unsigned int )phy->rev == 1U) {
      hf = hf | 32U;
    } else {
    }
    if (((int )sprom->boardflags_lo & 2) != 0) {
      hf = hf | 64U;
    } else {
    }
  } else
  if ((unsigned int )phy->type == 1U) {
    hf = hf | 2U;
    if ((unsigned int )phy->rev > 1U && (unsigned int )phy->radio_ver == 8272U) {
      hf = hf & 4294967263U;
    } else {
    }
  } else {
  }
  b43legacy_hf_write(dev, hf);
  b43legacy_set_retry_limits(dev, 7U, 4U);
  b43legacy_shm_write16(dev, 1, 68, 3);
  b43legacy_shm_write16(dev, 1, 70, 2);
  b43legacy_shm_write16(dev, 1, 116, 1);
  b43legacy_rate_memory_init(dev);
  if ((unsigned int )phy->type == 1U) {
    b43legacy_shm_write16(dev, 2, 3, 31);
  } else {
    b43legacy_shm_write16(dev, 2, 3, 15);
  }
  b43legacy_shm_write16(dev, 2, 4, 1023);
  ldv_56283:
  tmp___4 = b43legacy_using_pio(dev);
  if (tmp___4 != 0) {
    err = b43legacy_pio_init(dev);
  } else {
    err = b43legacy_dma_init(dev);
    if (err == 0) {
      b43legacy_qos_init(dev);
    } else {
    }
  }
  if (err == -11) {
    goto ldv_56283;
  } else {
  }
  if (err != 0) {
    goto err_chip_exit;
  } else {
  }
  b43legacy_set_synth_pu_delay(dev, 1);
  ssb_bus_powerup(bus, 1);
  b43legacy_upload_card_macaddress(dev);
  b43legacy_security_init(dev);
  b43legacy_rng_init(wl);
  ieee80211_wake_queues((dev->wl)->hw);
  atomic_set(& dev->__init_status, 1);
  __asm__ volatile ("": : : "memory");
  b43legacy_leds_init(dev);
  out: ;
  return (err);
  err_chip_exit:
  b43legacy_chip_exit(dev);
  err_kfree_tssitbl: ;
  if ((int )phy->dyn_tssi_tbl) {
    kfree((void const *)phy->tssi2dbm);
  } else {
  }
  err_kfree_lo_control:
  kfree((void const *)phy->lo_control);
  phy->lo_control = (struct b43legacy_txpower_lo_control *)0;
  ssb_bus_may_powerdown(bus);
  tmp___5 = atomic_read((atomic_t const *)(& dev->__init_status));
  __ret_warn_on___0 = tmp___5 != 0;
  tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___6 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3404);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  return (err);
}
}
static int b43legacy_op_add_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  unsigned long flags ;
  int err ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  err = -95;
  if ((((unsigned int )vif->type != 3U && (unsigned int )vif->type != 2U) && (unsigned int )vif->type != 5U) && (unsigned int )vif->type != 1U) {
    return (-95);
  } else {
  }
  mutex_lock_nested(& wl->mutex, 0U);
  if ((int )wl->operating) {
    goto out_mutex_unlock;
  } else {
  }
  b43legacydbg(wl, "Adding Interface type %d\n", (unsigned int )vif->type);
  dev = wl->current_dev;
  wl->operating = 1;
  wl->vif = vif;
  wl->if_type = (int )vif->type;
  memcpy((void *)(& wl->mac_addr), (void const *)(& vif->addr), 6UL);
  tmp___0 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  b43legacy_adjust_opmode(dev);
  b43legacy_set_pretbtt(dev);
  b43legacy_set_synth_pu_delay(dev, 0);
  b43legacy_upload_card_macaddress(dev);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  err = 0;
  out_mutex_unlock:
  mutex_unlock(& wl->mutex);
  return (err);
}
}
static void b43legacy_op_remove_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  unsigned long flags ;
  int __ret_warn_on ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  b43legacydbg(wl, "Removing Interface type %d\n", (unsigned int )vif->type);
  mutex_lock_nested(& wl->mutex, 0U);
  __ret_warn_on = ! wl->operating;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3461);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (unsigned long )wl->vif != (unsigned long )vif;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3462);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  wl->vif = (struct ieee80211_vif *)0;
  wl->operating = 0;
  tmp___2 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  b43legacy_adjust_opmode(dev);
  eth_zero_addr((u8 *)(& wl->mac_addr));
  b43legacy_upload_card_macaddress(dev);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  mutex_unlock(& wl->mutex);
  return;
}
}
static int b43legacy_op_start(struct ieee80211_hw *hw )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  int did_init ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  did_init = 0;
  err = 0;
  eth_zero_addr((u8 *)(& wl->bssid));
  eth_zero_addr((u8 *)(& wl->mac_addr));
  wl->filter_flags = 0U;
  wl->beacon0_uploaded = 0;
  wl->beacon1_uploaded = 0;
  wl->beacon_templates_virgin = 1;
  wl->radio_enabled = 1;
  mutex_lock_nested(& wl->mutex, 0U);
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___0 <= 0) {
    err = b43legacy_wireless_core_init(dev);
    if (err != 0) {
      goto out_mutex_unlock;
    } else {
    }
    did_init = 1;
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___1 <= 1) {
    err = b43legacy_wireless_core_start(dev);
    if (err != 0) {
      if (did_init != 0) {
        b43legacy_wireless_core_exit(dev);
      } else {
      }
      goto out_mutex_unlock;
    } else {
    }
  } else {
  }
  wiphy_rfkill_start_polling(hw->wiphy);
  out_mutex_unlock:
  mutex_unlock(& wl->mutex);
  return (err);
}
}
static void b43legacy_op_stop(struct ieee80211_hw *hw )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  int tmp___0 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  ldv_cancel_work_sync_14(& wl->beacon_update_trigger);
  mutex_lock_nested(& wl->mutex, 0U);
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___0 > 1) {
    b43legacy_wireless_core_stop(dev);
  } else {
  }
  b43legacy_wireless_core_exit(dev);
  wl->radio_enabled = 0;
  mutex_unlock(& wl->mutex);
  return;
}
}
static int b43legacy_op_beacon_set_tim(struct ieee80211_hw *hw , struct ieee80211_sta *sta ,
                                       bool set )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  tmp___0 = spinlock_check(& wl->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  b43legacy_update_templates(wl);
  spin_unlock_irqrestore(& wl->irq_lock, flags);
  return (0);
}
}
static int b43legacy_op_get_survey(struct ieee80211_hw *hw , int idx , struct survey_info *survey )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  struct ieee80211_conf *conf ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  conf = & hw->conf;
  if (idx != 0) {
    return (-2);
  } else {
  }
  survey->channel = conf->chandef.chan;
  survey->filled = 1U;
  survey->noise = (s8 )dev->stats.link_noise;
  return (0);
}
}
static struct ieee80211_ops const b43legacy_hw_ops =
     {& b43legacy_op_tx, & b43legacy_op_start, & b43legacy_op_stop, 0, 0, 0, & b43legacy_op_add_interface,
    0, & b43legacy_op_remove_interface, & b43legacy_op_dev_config, & b43legacy_op_bss_info_changed,
    0, 0, 0, & b43legacy_op_configure_filter, & b43legacy_op_beacon_set_tim, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & b43legacy_op_get_stats, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & b43legacy_op_conf_tx, 0, 0, 0, 0, 0, & b43legacy_op_get_survey, & b43legacy_rfkill_poll,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void b43legacy_chip_reset(struct work_struct *work )
{
  struct b43legacy_wldev *dev ;
  struct work_struct const *__mptr ;
  struct b43legacy_wl *wl ;
  int err ;
  int prev_status ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct b43legacy_wldev *)__mptr + 0xfffffffffffff138UL;
  wl = dev->wl;
  err = 0;
  mutex_lock_nested(& wl->mutex, 0U);
  prev_status = atomic_read((atomic_t const *)(& dev->__init_status));
  if (prev_status > 1) {
    b43legacy_wireless_core_stop(dev);
  } else {
  }
  if (prev_status > 0) {
    b43legacy_wireless_core_exit(dev);
  } else {
  }
  if (prev_status > 0) {
    err = b43legacy_wireless_core_init(dev);
    if (err != 0) {
      goto out;
    } else {
    }
  } else {
  }
  if (prev_status > 1) {
    err = b43legacy_wireless_core_start(dev);
    if (err != 0) {
      b43legacy_wireless_core_exit(dev);
      goto out;
    } else {
    }
  } else {
  }
  out: ;
  if (err != 0) {
    wl->current_dev = (struct b43legacy_wldev *)0;
  } else {
  }
  mutex_unlock(& wl->mutex);
  if (err != 0) {
    b43legacyerr(wl, "Controller restart FAILED\n");
  } else {
    b43legacyinfo(wl, "Controller restarted\n");
  }
  return;
}
}
static int b43legacy_setup_modes(struct b43legacy_wldev *dev , int have_bphy , int have_gphy )
{
  struct ieee80211_hw *hw ;
  struct b43legacy_phy *phy ;
  {
  hw = (dev->wl)->hw;
  phy = & dev->phy;
  phy->possible_phymodes = 0U;
  if (have_bphy != 0) {
    (hw->wiphy)->bands[0] = & b43legacy_band_2GHz_BPHY;
    phy->possible_phymodes = (u8 )((unsigned int )phy->possible_phymodes | 2U);
  } else {
  }
  if (have_gphy != 0) {
    (hw->wiphy)->bands[0] = & b43legacy_band_2GHz_GPHY;
    phy->possible_phymodes = (u8 )((unsigned int )phy->possible_phymodes | 4U);
  } else {
  }
  return (0);
}
}
static void b43legacy_wireless_core_detach(struct b43legacy_wldev *dev )
{
  {
  b43legacy_release_firmware(dev);
  return;
}
}
static int b43legacy_wireless_core_attach(struct b43legacy_wldev *dev )
{
  struct b43legacy_wl *wl ;
  struct ssb_bus *bus ;
  struct pci_dev *pdev ;
  int err ;
  int have_bphy ;
  int have_gphy ;
  u32 tmp ;
  u32 tmshigh ;
  long tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  wl = dev->wl;
  bus = (dev->dev)->bus;
  pdev = (unsigned int )bus->bustype == 1U ? bus->__annonCompField98.host_pci : (struct pci_dev *)0;
  have_bphy = 0;
  have_gphy = 0;
  err = ssb_bus_powerup(bus, 0);
  if (err != 0) {
    b43legacyerr(wl, "Bus powerup failed\n");
    goto out;
  } else {
  }
  if ((unsigned int )(dev->dev)->id.revision > 4U) {
    tmshigh = ssb_read32(dev->dev, 3996);
    have_gphy = (tmshigh & 65536U) != 0U;
    if (have_gphy == 0) {
      have_bphy = 1;
    } else {
    }
  } else
  if ((unsigned int )(dev->dev)->id.revision == 4U) {
    have_gphy = 1;
  } else {
    have_bphy = 1;
  }
  dev->phy.gmode = (bool )(have_gphy != 0 || have_bphy != 0);
  dev->phy.radio_on = 1;
  tmp = (int )dev->phy.gmode ? 536870912U : 0U;
  b43legacy_wireless_core_reset(dev, tmp);
  err = b43legacy_phy_versioning(dev);
  if (err != 0) {
    goto err_powerdown;
  } else {
  }
  if ((unsigned long )pdev == (unsigned long )((struct pci_dev *)0) || (((unsigned int )pdev->device != 17170U && (unsigned int )pdev->device != 17177U) && (unsigned int )pdev->device != 17188U)) {
    have_bphy = 0;
    have_gphy = 0;
    switch ((int )dev->phy.type) {
    case 1:
    have_bphy = 1;
    goto ldv_56380;
    case 2:
    have_gphy = 1;
    goto ldv_56380;
    default:
    tmp___1 = ldv__builtin_expect(1L, 0L);
    if (tmp___1 != 0L) {
      printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
      tmp___0 = ldv__builtin_expect(1L, 0L);
      if (tmp___0 != 0L) {
        __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c"),
                             "i" (3713), "i" (12UL));
        ldv_56383: ;
        goto ldv_56383;
      } else {
      }
    } else {
    }
    }
    ldv_56380: ;
  } else {
  }
  dev->phy.gmode = (bool )(have_gphy != 0 || have_bphy != 0);
  tmp = (int )dev->phy.gmode ? 536870912U : 0U;
  b43legacy_wireless_core_reset(dev, tmp);
  err = b43legacy_validate_chipaccess(dev);
  if (err != 0) {
    goto err_powerdown;
  } else {
  }
  err = b43legacy_setup_modes(dev, have_bphy, have_gphy);
  if (err != 0) {
    goto err_powerdown;
  } else {
  }
  if ((unsigned long )wl->current_dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    wl->current_dev = dev;
  } else {
  }
  __init_work(& dev->restart_work, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->restart_work.data = __constr_expr_0;
  lockdep_init_map(& dev->restart_work.lockdep_map, "(&dev->restart_work)", & __key,
                   0);
  INIT_LIST_HEAD(& dev->restart_work.entry);
  dev->restart_work.func = & b43legacy_chip_reset;
  b43legacy_radio_turn_off(dev, 1);
  b43legacy_switch_analog(dev, 0);
  ssb_device_disable(dev->dev, 0U);
  ssb_bus_may_powerdown(bus);
  out: ;
  return (err);
  err_powerdown:
  ssb_bus_may_powerdown(bus);
  return (err);
}
}
static void b43legacy_one_core_detach(struct ssb_device *dev )
{
  struct b43legacy_wldev *wldev ;
  struct b43legacy_wl *wl ;
  void *tmp ;
  {
  tmp = ssb_get_drvdata(dev);
  wldev = (struct b43legacy_wldev *)tmp;
  wl = wldev->wl;
  b43legacy_debugfs_remove_device(wldev);
  b43legacy_wireless_core_detach(wldev);
  list_del(& wldev->list);
  wl->nr_devs = (u8 )((int )wl->nr_devs - 1);
  ssb_set_drvdata(dev, (void *)0);
  kfree((void const *)wldev);
  return;
}
}
static int b43legacy_one_core_attach(struct ssb_device *dev , struct b43legacy_wl *wl )
{
  struct b43legacy_wldev *wldev ;
  int err ;
  void *tmp ;
  {
  err = -12;
  tmp = kzalloc(4968UL, 208U);
  wldev = (struct b43legacy_wldev *)tmp;
  if ((unsigned long )wldev == (unsigned long )((struct b43legacy_wldev *)0)) {
    goto out;
  } else {
  }
  wldev->dev = dev;
  wldev->wl = wl;
  atomic_set(& wldev->__init_status, 0);
  __asm__ volatile ("": : : "memory");
  wldev->bad_frames_preempt = modparam_bad_frames_preempt != 0;
  tasklet_init(& wldev->isr_tasklet, (void (*)(unsigned long ))(& b43legacy_interrupt_tasklet),
               (unsigned long )wldev);
  if (modparam_pio != 0) {
    wldev->__using_pio = 1;
  } else {
  }
  INIT_LIST_HEAD(& wldev->list);
  err = b43legacy_wireless_core_attach(wldev);
  if (err != 0) {
    goto err_kfree_wldev;
  } else {
  }
  list_add(& wldev->list, & wl->devlist);
  wl->nr_devs = (u8 )((int )wl->nr_devs + 1);
  ssb_set_drvdata(dev, (void *)wldev);
  b43legacy_debugfs_add_device(wldev);
  out: ;
  return (err);
  err_kfree_wldev:
  kfree((void const *)wldev);
  return (err);
}
}
static void b43legacy_sprom_fixup(struct ssb_bus *bus )
{
  {
  if (((unsigned int )bus->boardinfo.vendor == 4203U && (unsigned int )bus->boardinfo.type == 78U) && (unsigned int )bus->sprom.board_rev > 64U) {
    bus->sprom.boardflags_lo = (u16 )((unsigned int )bus->sprom.boardflags_lo | 2U);
  } else {
  }
  return;
}
}
static void b43legacy_wireless_exit(struct ssb_device *dev , struct b43legacy_wl *wl )
{
  struct ieee80211_hw *hw ;
  {
  hw = wl->hw;
  ssb_set_devtypedata(dev, (void *)0);
  ldv_ieee80211_free_hw_15(hw);
  return;
}
}
static int b43legacy_wireless_init(struct ssb_device *dev )
{
  struct ssb_sprom *sprom ;
  struct ieee80211_hw *hw ;
  struct b43legacy_wl *wl ;
  int err ;
  int queue_num ;
  bool tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_1 ;
  {
  sprom = & (dev->bus)->sprom;
  err = -12;
  b43legacy_sprom_fixup(dev->bus);
  hw = ldv_ieee80211_alloc_hw_16(1296UL, & b43legacy_hw_ops);
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    b43legacyerr((struct b43legacy_wl *)0, "Could not allocate ieee80211 device\n");
    goto out;
  } else {
  }
  _ieee80211_hw_set(hw, 1);
  _ieee80211_hw_set(hw, 4);
  (hw->wiphy)->interface_modes = 46U;
  hw->queues = 1U;
  hw->max_rates = 2U;
  SET_IEEE80211_DEV(hw, dev->dev);
  tmp = is_valid_ether_addr((u8 const *)(& sprom->et1mac));
  if ((int )tmp) {
    SET_IEEE80211_PERM_ADDR(hw, (u8 *)(& sprom->et1mac));
  } else {
    SET_IEEE80211_PERM_ADDR(hw, (u8 *)(& sprom->il0mac));
  }
  wl = hw_to_b43legacy_wl(hw);
  memset((void *)wl, 0, 1296UL);
  wl->hw = hw;
  spinlock_check(& wl->irq_lock);
  __raw_spin_lock_init(& wl->irq_lock.__annonCompField18.rlock, "&(&wl->irq_lock)->rlock",
                       & __key);
  spinlock_check(& wl->leds_lock);
  __raw_spin_lock_init(& wl->leds_lock.__annonCompField18.rlock, "&(&wl->leds_lock)->rlock",
                       & __key___0);
  __mutex_init(& wl->mutex, "&wl->mutex", & __key___1);
  INIT_LIST_HEAD(& wl->devlist);
  __init_work(& wl->beacon_update_trigger, 0);
  __constr_expr_0.counter = 137438953408L;
  wl->beacon_update_trigger.data = __constr_expr_0;
  lockdep_init_map(& wl->beacon_update_trigger.lockdep_map, "(&wl->beacon_update_trigger)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& wl->beacon_update_trigger.entry);
  wl->beacon_update_trigger.func = & b43legacy_beacon_update_trigger_work;
  __init_work(& wl->tx_work, 0);
  __constr_expr_1.counter = 137438953408L;
  wl->tx_work.data = __constr_expr_1;
  lockdep_init_map(& wl->tx_work.lockdep_map, "(&wl->tx_work)", & __key___3, 0);
  INIT_LIST_HEAD(& wl->tx_work.entry);
  wl->tx_work.func = & b43legacy_tx_work;
  queue_num = 0;
  goto ldv_56425;
  ldv_56424:
  skb_queue_head_init((struct sk_buff_head *)(& wl->tx_queue) + (unsigned long )queue_num);
  wl->tx_queue_stopped[queue_num] = 0;
  queue_num = queue_num + 1;
  ldv_56425: ;
  if (queue_num <= 3) {
    goto ldv_56424;
  } else {
  }
  ssb_set_devtypedata(dev, (void *)wl);
  b43legacyinfo(wl, "Broadcom %04X WLAN found (core revision %u)\n", (int )(dev->bus)->chip_id,
                (int )dev->id.revision);
  err = 0;
  out: ;
  return (err);
}
}
static int b43legacy_probe(struct ssb_device *dev , struct ssb_device_id const *id )
{
  struct b43legacy_wl *wl ;
  int err ;
  int first ;
  void *tmp ;
  void *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  first = 0;
  tmp = ssb_get_devtypedata(dev);
  wl = (struct b43legacy_wl *)tmp;
  if ((unsigned long )wl == (unsigned long )((struct b43legacy_wl *)0)) {
    first = 1;
    err = b43legacy_wireless_init(dev);
    if (err != 0) {
      goto out;
    } else {
    }
    tmp___0 = ssb_get_devtypedata(dev);
    wl = (struct b43legacy_wl *)tmp___0;
    __ret_warn_on = (unsigned long )wl == (unsigned long )((struct b43legacy_wl *)0);
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                         3891);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  err = b43legacy_one_core_attach(dev, wl);
  if (err != 0) {
    goto err_wireless_exit;
  } else {
  }
  __init_work(& wl->firmware_load, 0);
  __constr_expr_0.counter = 137438953408L;
  wl->firmware_load.data = __constr_expr_0;
  lockdep_init_map(& wl->firmware_load.lockdep_map, "(&wl->firmware_load)", & __key,
                   0);
  INIT_LIST_HEAD(& wl->firmware_load.entry);
  wl->firmware_load.func = & b43legacy_request_firmware;
  schedule_work(& wl->firmware_load);
  out: ;
  return (err);
  err_wireless_exit: ;
  if (first != 0) {
    b43legacy_wireless_exit(dev, wl);
  } else {
  }
  return (err);
}
}
static void b43legacy_remove(struct ssb_device *dev )
{
  struct b43legacy_wl *wl ;
  void *tmp ;
  struct b43legacy_wldev *wldev ;
  void *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = ssb_get_devtypedata(dev);
  wl = (struct b43legacy_wl *)tmp;
  tmp___0 = ssb_get_drvdata(dev);
  wldev = (struct b43legacy_wldev *)tmp___0;
  ldv_cancel_work_sync_17(& wldev->restart_work);
  ldv_cancel_work_sync_18(& wl->firmware_load);
  complete(& wldev->fw_load_complete);
  __ret_warn_on = (unsigned long )wl == (unsigned long )((struct b43legacy_wl *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/main.c",
                       3921);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )wldev->fw.ucode == (unsigned long )((struct firmware const *)0)) {
    return;
  } else {
  }
  if ((unsigned long )wl->current_dev == (unsigned long )wldev) {
    ieee80211_unregister_hw(wl->hw);
  } else {
  }
  b43legacy_one_core_detach(dev);
  tmp___2 = list_empty((struct list_head const *)(& wl->devlist));
  if (tmp___2 != 0) {
    b43legacy_wireless_exit(dev, wl);
  } else {
  }
  return;
}
}
void b43legacy_controller_restart(struct b43legacy_wldev *dev , char const *reason )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp <= 0) {
    return;
  } else {
  }
  b43legacyinfo(dev->wl, "Controller RESET (%s) ...\n", reason);
  ieee80211_queue_work((dev->wl)->hw, & dev->restart_work);
  return;
}
}
static int b43legacy_suspend(struct ssb_device *dev , pm_message_t state )
{
  struct b43legacy_wldev *wldev ;
  void *tmp ;
  struct b43legacy_wl *wl ;
  {
  tmp = ssb_get_drvdata(dev);
  wldev = (struct b43legacy_wldev *)tmp;
  wl = wldev->wl;
  b43legacydbg(wl, "Suspending...\n");
  mutex_lock_nested(& wl->mutex, 0U);
  wldev->suspend_init_status = atomic_read((atomic_t const *)(& wldev->__init_status));
  if (wldev->suspend_init_status > 1) {
    b43legacy_wireless_core_stop(wldev);
  } else {
  }
  if (wldev->suspend_init_status > 0) {
    b43legacy_wireless_core_exit(wldev);
  } else {
  }
  mutex_unlock(& wl->mutex);
  b43legacydbg(wl, "Device suspended.\n");
  return (0);
}
}
static int b43legacy_resume(struct ssb_device *dev )
{
  struct b43legacy_wldev *wldev ;
  void *tmp ;
  struct b43legacy_wl *wl ;
  int err ;
  {
  tmp = ssb_get_drvdata(dev);
  wldev = (struct b43legacy_wldev *)tmp;
  wl = wldev->wl;
  err = 0;
  b43legacydbg(wl, "Resuming...\n");
  mutex_lock_nested(& wl->mutex, 0U);
  if (wldev->suspend_init_status > 0) {
    err = b43legacy_wireless_core_init(wldev);
    if (err != 0) {
      b43legacyerr(wl, "Resume failed at core init\n");
      goto out;
    } else {
    }
  } else {
  }
  if (wldev->suspend_init_status > 1) {
    err = b43legacy_wireless_core_start(wldev);
    if (err != 0) {
      b43legacy_wireless_core_exit(wldev);
      b43legacyerr(wl, "Resume failed at core start\n");
      goto out;
    } else {
    }
  } else {
  }
  b43legacydbg(wl, "Device resumed.\n");
  out:
  mutex_unlock(& wl->mutex);
  return (err);
}
}
static struct ssb_driver b43legacy_ssb_driver =
     {"b43legacy", (struct ssb_device_id const *)(& b43legacy_ssb_tbl), & b43legacy_probe,
    & b43legacy_remove, & b43legacy_suspend, & b43legacy_resume, 0, {0, 0, 0, 0, (_Bool)0,
                                                                     0, 0, 0, 0, 0,
                                                                     0, 0, 0, 0, 0,
                                                                     0}};
static void b43legacy_print_driverinfo(void)
{
  char const *feat_pci ;
  char const *feat_leds ;
  char const *feat_pio ;
  char const *feat_dma ;
  {
  feat_pci = "";
  feat_leds = "";
  feat_pio = "";
  feat_dma = "";
  feat_pci = "P";
  feat_leds = "L";
  feat_pio = "I";
  feat_dma = "D";
  printk("\016Broadcom 43xx-legacy driver loaded [ Features: %s%s%s%s ]\n", feat_pci,
         feat_leds, feat_pio, feat_dma);
  return;
}
}
static int b43legacy_init(void)
{
  int err ;
  {
  b43legacy_debugfs_init();
  err = __ssb_driver_register(& b43legacy_ssb_driver, & __this_module);
  if (err != 0) {
    goto err_dfs_exit;
  } else {
  }
  b43legacy_print_driverinfo();
  return (err);
  err_dfs_exit:
  b43legacy_debugfs_exit();
  return (err);
}
}
static void b43legacy_exit(void)
{
  {
  ssb_driver_unregister(& b43legacy_ssb_driver);
  b43legacy_debugfs_exit();
  return;
}
}
int ldv_retval_5 ;
int ldv_retval_4 ;
int ldv_retval_6 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
int ldv_retval_7 ;
void activate_work_5(struct work_struct *work , int state )
{
  {
  if (ldv_work_5_0 == 0) {
    ldv_work_struct_5_0 = work;
    ldv_work_5_0 = state;
    return;
  } else {
  }
  if (ldv_work_5_1 == 0) {
    ldv_work_struct_5_1 = work;
    ldv_work_5_1 = state;
    return;
  } else {
  }
  if (ldv_work_5_2 == 0) {
    ldv_work_struct_5_2 = work;
    ldv_work_5_2 = state;
    return;
  } else {
  }
  if (ldv_work_5_3 == 0) {
    ldv_work_struct_5_3 = work;
    ldv_work_5_3 = state;
    return;
  } else {
  }
  return;
}
}
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
void ldv_initialize_ssb_driver_14(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(64UL);
  b43legacy_ssb_driver_group0 = (struct ssb_device *)tmp;
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
void call_and_disable_all_5(int state )
{
  {
  if (ldv_work_5_0 == state) {
    call_and_disable_work_5(ldv_work_struct_5_0);
  } else {
  }
  if (ldv_work_5_1 == state) {
    call_and_disable_work_5(ldv_work_struct_5_1);
  } else {
  }
  if (ldv_work_5_2 == state) {
    call_and_disable_work_5(ldv_work_struct_5_2);
  } else {
  }
  if (ldv_work_5_3 == state) {
    call_and_disable_work_5(ldv_work_struct_5_3);
  } else {
  }
  return;
}
}
void invoke_work_6(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_6_0 == 2 || ldv_work_6_0 == 3) {
    ldv_work_6_0 = 4;
    b43legacy_request_firmware(ldv_work_struct_6_0);
    ldv_work_6_0 = 1;
  } else {
  }
  goto ldv_56522;
  case 1: ;
  if (ldv_work_6_1 == 2 || ldv_work_6_1 == 3) {
    ldv_work_6_1 = 4;
    b43legacy_request_firmware(ldv_work_struct_6_0);
    ldv_work_6_1 = 1;
  } else {
  }
  goto ldv_56522;
  case 2: ;
  if (ldv_work_6_2 == 2 || ldv_work_6_2 == 3) {
    ldv_work_6_2 = 4;
    b43legacy_request_firmware(ldv_work_struct_6_0);
    ldv_work_6_2 = 1;
  } else {
  }
  goto ldv_56522;
  case 3: ;
  if (ldv_work_6_3 == 2 || ldv_work_6_3 == 3) {
    ldv_work_6_3 = 4;
    b43legacy_request_firmware(ldv_work_struct_6_0);
    ldv_work_6_3 = 1;
  } else {
  }
  goto ldv_56522;
  default:
  ldv_stop();
  }
  ldv_56522: ;
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
  if ((unsigned long )handler == (unsigned long )(& b43legacy_interrupt_handler)) {
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
void disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 3 || ldv_work_6_0 == 2) && (unsigned long )ldv_work_struct_6_0 == (unsigned long )work) {
    ldv_work_6_0 = 1;
  } else {
  }
  if ((ldv_work_6_1 == 3 || ldv_work_6_1 == 2) && (unsigned long )ldv_work_struct_6_1 == (unsigned long )work) {
    ldv_work_6_1 = 1;
  } else {
  }
  if ((ldv_work_6_2 == 3 || ldv_work_6_2 == 2) && (unsigned long )ldv_work_struct_6_2 == (unsigned long )work) {
    ldv_work_6_2 = 1;
  } else {
  }
  if ((ldv_work_6_3 == 3 || ldv_work_6_3 == 2) && (unsigned long )ldv_work_struct_6_3 == (unsigned long )work) {
    ldv_work_6_3 = 1;
  } else {
  }
  return;
}
}
void work_init_6(void)
{
  {
  ldv_work_6_0 = 0;
  ldv_work_6_1 = 0;
  ldv_work_6_2 = 0;
  ldv_work_6_3 = 0;
  return;
}
}
void work_init_5(void)
{
  {
  ldv_work_5_0 = 0;
  ldv_work_5_1 = 0;
  ldv_work_5_2 = 0;
  ldv_work_5_3 = 0;
  return;
}
}
void ldv_initialize_ieee80211_ops_15(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(160UL);
  b43legacy_hw_ops_group0 = (struct ieee80211_hw *)tmp;
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
  goto ldv_56565;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_56565;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_56565;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_56565;
  default:
  ldv_stop();
  }
  ldv_56565: ;
  return;
}
}
void invoke_work_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_5_0 == 2 || ldv_work_5_0 == 3) {
    ldv_work_5_0 = 4;
    b43legacy_tx_work(ldv_work_struct_5_0);
    ldv_work_5_0 = 1;
  } else {
  }
  goto ldv_56576;
  case 1: ;
  if (ldv_work_5_1 == 2 || ldv_work_5_1 == 3) {
    ldv_work_5_1 = 4;
    b43legacy_tx_work(ldv_work_struct_5_0);
    ldv_work_5_1 = 1;
  } else {
  }
  goto ldv_56576;
  case 2: ;
  if (ldv_work_5_2 == 2 || ldv_work_5_2 == 3) {
    ldv_work_5_2 = 4;
    b43legacy_tx_work(ldv_work_struct_5_0);
    ldv_work_5_2 = 1;
  } else {
  }
  goto ldv_56576;
  case 3: ;
  if (ldv_work_5_3 == 2 || ldv_work_5_3 == 3) {
    ldv_work_5_3 = 4;
    b43legacy_tx_work(ldv_work_struct_5_0);
    ldv_work_5_3 = 1;
  } else {
  }
  goto ldv_56576;
  default:
  ldv_stop();
  }
  ldv_56576: ;
  return;
}
}
void disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 3 || ldv_work_5_0 == 2) && (unsigned long )ldv_work_struct_5_0 == (unsigned long )work) {
    ldv_work_5_0 = 1;
  } else {
  }
  if ((ldv_work_5_1 == 3 || ldv_work_5_1 == 2) && (unsigned long )ldv_work_struct_5_1 == (unsigned long )work) {
    ldv_work_5_1 = 1;
  } else {
  }
  if ((ldv_work_5_2 == 3 || ldv_work_5_2 == 2) && (unsigned long )ldv_work_struct_5_2 == (unsigned long )work) {
    ldv_work_5_2 = 1;
  } else {
  }
  if ((ldv_work_5_3 == 3 || ldv_work_5_3 == 2) && (unsigned long )ldv_work_struct_5_3 == (unsigned long )work) {
    ldv_work_5_3 = 1;
  } else {
  }
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    b43legacy_chip_reset(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    b43legacy_chip_reset(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    b43legacy_chip_reset(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    b43legacy_chip_reset(work);
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
void call_and_disable_all_6(int state )
{
  {
  if (ldv_work_6_0 == state) {
    call_and_disable_work_6(ldv_work_struct_6_0);
  } else {
  }
  if (ldv_work_6_1 == state) {
    call_and_disable_work_6(ldv_work_struct_6_1);
  } else {
  }
  if (ldv_work_6_2 == state) {
    call_and_disable_work_6(ldv_work_struct_6_2);
  } else {
  }
  if (ldv_work_6_3 == state) {
    call_and_disable_work_6(ldv_work_struct_6_3);
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
    b43legacy_chip_reset(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_56610;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    b43legacy_chip_reset(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_56610;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    b43legacy_chip_reset(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_56610;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    b43legacy_chip_reset(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_56610;
  default:
  ldv_stop();
  }
  ldv_56610: ;
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
      irq_retval = b43legacy_interrupt_handler(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_56626;
    default:
    ldv_stop();
    }
    ldv_56626: ;
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
    b43legacy_beacon_update_trigger_work(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_56640;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    b43legacy_beacon_update_trigger_work(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_56640;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    b43legacy_beacon_update_trigger_work(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_56640;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    b43legacy_beacon_update_trigger_work(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_56640;
  default:
  ldv_stop();
  }
  ldv_56640: ;
  return;
}
}
void call_and_disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 2 || ldv_work_5_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_0) {
    b43legacy_tx_work(work);
    ldv_work_5_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_1 == 2 || ldv_work_5_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_1) {
    b43legacy_tx_work(work);
    ldv_work_5_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_2 == 2 || ldv_work_5_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_2) {
    b43legacy_tx_work(work);
    ldv_work_5_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_3 == 2 || ldv_work_5_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_3) {
    b43legacy_tx_work(work);
    ldv_work_5_3 = 1;
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
void call_and_disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 2 || ldv_work_6_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_0) {
    b43legacy_request_firmware(work);
    ldv_work_6_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_1 == 2 || ldv_work_6_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_1) {
    b43legacy_request_firmware(work);
    ldv_work_6_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_2 == 2 || ldv_work_6_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_2) {
    b43legacy_request_firmware(work);
    ldv_work_6_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_3 == 2 || ldv_work_6_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_3) {
    b43legacy_request_firmware(work);
    ldv_work_6_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    b43legacy_beacon_update_trigger_work(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    b43legacy_beacon_update_trigger_work(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    b43legacy_beacon_update_trigger_work(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    b43legacy_beacon_update_trigger_work(work);
    ldv_work_4_3 = 1;
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
    b43legacy_periodic_work_handler(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    b43legacy_periodic_work_handler(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    b43legacy_periodic_work_handler(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    b43legacy_periodic_work_handler(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
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
    b43legacy_periodic_work_handler(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_56674;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    b43legacy_periodic_work_handler(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_56674;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    b43legacy_periodic_work_handler(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_56674;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    b43legacy_periodic_work_handler(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_56674;
  default:
  ldv_stop();
  }
  ldv_56674: ;
  return;
}
}
void activate_work_6(struct work_struct *work , int state )
{
  {
  if (ldv_work_6_0 == 0) {
    ldv_work_struct_6_0 = work;
    ldv_work_6_0 = state;
    return;
  } else {
  }
  if (ldv_work_6_1 == 0) {
    ldv_work_struct_6_1 = work;
    ldv_work_6_1 = state;
    return;
  } else {
  }
  if (ldv_work_6_2 == 0) {
    ldv_work_struct_6_2 = work;
    ldv_work_6_2 = state;
    return;
  } else {
  }
  if (ldv_work_6_3 == 0) {
    ldv_work_struct_6_3 = work;
    ldv_work_6_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_main_exported_13(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_9(void) ;
int main(void)
{
  struct ssb_device_id *ldvarg34 ;
  void *tmp ;
  pm_message_t ldvarg33 ;
  u16 ldvarg39 ;
  unsigned int *ldvarg51 ;
  void *tmp___0 ;
  struct ieee80211_vif *ldvarg41 ;
  void *tmp___1 ;
  struct ieee80211_sta *ldvarg43 ;
  void *tmp___2 ;
  bool ldvarg42 ;
  int ldvarg49 ;
  u64 ldvarg50 ;
  struct ieee80211_vif *ldvarg46 ;
  void *tmp___3 ;
  struct ieee80211_tx_control *ldvarg37 ;
  void *tmp___4 ;
  u32 ldvarg53 ;
  struct sk_buff *ldvarg36 ;
  void *tmp___5 ;
  struct ieee80211_vif *ldvarg40 ;
  void *tmp___6 ;
  u32 ldvarg44 ;
  struct ieee80211_bss_conf *ldvarg45 ;
  void *tmp___7 ;
  struct ieee80211_vif *ldvarg35 ;
  void *tmp___8 ;
  struct ieee80211_tx_queue_params *ldvarg38 ;
  void *tmp___9 ;
  struct survey_info *ldvarg48 ;
  void *tmp___10 ;
  unsigned int ldvarg52 ;
  struct ieee80211_low_level_stats *ldvarg47 ;
  void *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  tmp = ldv_init_zalloc(6UL);
  ldvarg34 = (struct ssb_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(4UL);
  ldvarg51 = (unsigned int *)tmp___0;
  tmp___1 = ldv_init_zalloc(296UL);
  ldvarg41 = (struct ieee80211_vif *)tmp___1;
  tmp___2 = ldv_init_zalloc(216UL);
  ldvarg43 = (struct ieee80211_sta *)tmp___2;
  tmp___3 = ldv_init_zalloc(296UL);
  ldvarg46 = (struct ieee80211_vif *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg37 = (struct ieee80211_tx_control *)tmp___4;
  tmp___5 = ldv_init_zalloc(232UL);
  ldvarg36 = (struct sk_buff *)tmp___5;
  tmp___6 = ldv_init_zalloc(296UL);
  ldvarg40 = (struct ieee80211_vif *)tmp___6;
  tmp___7 = ldv_init_zalloc(240UL);
  ldvarg45 = (struct ieee80211_bss_conf *)tmp___7;
  tmp___8 = ldv_init_zalloc(296UL);
  ldvarg35 = (struct ieee80211_vif *)tmp___8;
  tmp___9 = ldv_init_zalloc(10UL);
  ldvarg38 = (struct ieee80211_tx_queue_params *)tmp___9;
  tmp___10 = ldv_init_zalloc(64UL);
  ldvarg48 = (struct survey_info *)tmp___10;
  tmp___11 = ldv_init_zalloc(16UL);
  ldvarg47 = (struct ieee80211_low_level_stats *)tmp___11;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg33), 0, 4UL);
  ldv_memset((void *)(& ldvarg39), 0, 2UL);
  ldv_memset((void *)(& ldvarg42), 0, 1UL);
  ldv_memset((void *)(& ldvarg49), 0, 4UL);
  ldv_memset((void *)(& ldvarg50), 0, 8UL);
  ldv_memset((void *)(& ldvarg53), 0, 4UL);
  ldv_memset((void *)(& ldvarg44), 0, 4UL);
  ldv_memset((void *)(& ldvarg52), 0, 4UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_13 = 0;
  work_init_6();
  ldv_state_variable_6 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  work_init_4();
  ldv_state_variable_4 = 1;
  ldv_state_variable_10 = 0;
  work_init_5();
  ldv_state_variable_5 = 1;
  ldv_56771:
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_56728;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_56728;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_56728;
  case 3: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_56728;
  case 4: ;
  if (ldv_state_variable_0 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      b43legacy_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_56735;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = b43legacy_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_13 = 1;
        ldv_initialize_device_attribute_13();
        ldv_state_variable_10 = 1;
        ldv_initialize_b43legacy_debugfs_fops_10();
        ldv_state_variable_8 = 1;
        ldv_initialize_b43legacy_debugfs_fops_8();
        ldv_state_variable_14 = 1;
        ldv_initialize_ssb_driver_14();
        ldv_state_variable_12 = 1;
        ldv_initialize_device_attribute_12();
        ldv_state_variable_9 = 1;
        ldv_initialize_b43legacy_debugfs_fops_9();
        ldv_state_variable_7 = 1;
        ldv_initialize_b43legacy_debugfs_fops_7();
        ldv_state_variable_11 = 1;
        ldv_initialize_b43legacy_debugfs_fops_11();
      } else {
      }
    } else {
    }
    goto ldv_56735;
    default:
    ldv_stop();
    }
    ldv_56735: ;
  } else {
  }
  goto ldv_56728;
  case 5: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_56728;
  case 6: ;
  if (ldv_state_variable_6 != 0) {
    invoke_work_6();
  } else {
  }
  goto ldv_56728;
  case 7: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_56728;
  case 8: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_56728;
  case 9: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_56728;
  case 10: ;
  if (ldv_state_variable_14 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      ldv_retval_6 = b43legacy_probe(b43legacy_ssb_driver_group0, (struct ssb_device_id const *)ldvarg34);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_14 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_56745;
    case 1: ;
    if (ldv_state_variable_14 == 2) {
      ldv_retval_5 = b43legacy_suspend(b43legacy_ssb_driver_group0, ldvarg33);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_14 = 3;
      } else {
      }
    } else {
    }
    goto ldv_56745;
    case 2: ;
    if (ldv_state_variable_14 == 3) {
      b43legacy_remove(b43legacy_ssb_driver_group0);
      ldv_state_variable_14 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      b43legacy_remove(b43legacy_ssb_driver_group0);
      ldv_state_variable_14 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_56745;
    case 3: ;
    if (ldv_state_variable_14 == 3) {
      ldv_retval_4 = b43legacy_resume(b43legacy_ssb_driver_group0);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_14 = 2;
      } else {
      }
    } else {
    }
    goto ldv_56745;
    default:
    ldv_stop();
    }
    ldv_56745: ;
  } else {
  }
  goto ldv_56728;
  case 11: ;
  if (ldv_state_variable_15 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      ldv_retval_7 = b43legacy_op_start(b43legacy_hw_ops_group0);
      if (ldv_retval_7 == 0) {
        ldv_state_variable_15 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_56752;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_dev_config(b43legacy_hw_ops_group0, ldvarg53);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_dev_config(b43legacy_hw_ops_group0, ldvarg53);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 2: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_configure_filter(b43legacy_hw_ops_group0, ldvarg52, ldvarg51, ldvarg50);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_configure_filter(b43legacy_hw_ops_group0, ldvarg52, ldvarg51, ldvarg50);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 3: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_get_survey(b43legacy_hw_ops_group0, ldvarg49, ldvarg48);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_get_survey(b43legacy_hw_ops_group0, ldvarg49, ldvarg48);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 4: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_get_stats(b43legacy_hw_ops_group0, ldvarg47);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_get_stats(b43legacy_hw_ops_group0, ldvarg47);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 5: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_bss_info_changed(b43legacy_hw_ops_group0, ldvarg46, ldvarg45, ldvarg44);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_bss_info_changed(b43legacy_hw_ops_group0, ldvarg46, ldvarg45, ldvarg44);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 6: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_beacon_set_tim(b43legacy_hw_ops_group0, ldvarg43, (int )ldvarg42);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_beacon_set_tim(b43legacy_hw_ops_group0, ldvarg43, (int )ldvarg42);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 7: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_rfkill_poll(b43legacy_hw_ops_group0);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_rfkill_poll(b43legacy_hw_ops_group0);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 8: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_add_interface(b43legacy_hw_ops_group0, ldvarg41);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_add_interface(b43legacy_hw_ops_group0, ldvarg41);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 9: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_conf_tx(b43legacy_hw_ops_group0, ldvarg40, (int )ldvarg39, (struct ieee80211_tx_queue_params const *)ldvarg38);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_conf_tx(b43legacy_hw_ops_group0, ldvarg40, (int )ldvarg39, (struct ieee80211_tx_queue_params const *)ldvarg38);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 10: ;
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_stop(b43legacy_hw_ops_group0);
      ldv_state_variable_15 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_56752;
    case 11: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_tx(b43legacy_hw_ops_group0, ldvarg37, ldvarg36);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_tx(b43legacy_hw_ops_group0, ldvarg37, ldvarg36);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    case 12: ;
    if (ldv_state_variable_15 == 1) {
      b43legacy_op_remove_interface(b43legacy_hw_ops_group0, ldvarg35);
      ldv_state_variable_15 = 1;
    } else {
    }
    if (ldv_state_variable_15 == 2) {
      b43legacy_op_remove_interface(b43legacy_hw_ops_group0, ldvarg35);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56752;
    default:
    ldv_stop();
    }
    ldv_56752: ;
  } else {
  }
  goto ldv_56728;
  case 12: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_56728;
  case 13: ;
  if (ldv_state_variable_4 != 0) {
    invoke_work_4();
  } else {
  }
  goto ldv_56728;
  case 14: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_56728;
  case 15: ;
  if (ldv_state_variable_5 != 0) {
    invoke_work_5();
  } else {
  }
  goto ldv_56728;
  default:
  ldv_stop();
  }
  ldv_56728: ;
  goto ldv_56771;
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
  activate_work_2(ldv_func_arg3, 2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
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
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_10(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_11(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_12(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_13(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_14(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_ieee80211_free_hw_15(struct ieee80211_hw *ldv_func_arg1 )
{
  {
  ieee80211_free_hw(ldv_func_arg1);
  if ((unsigned long )b43legacy_hw_ops_group0 == (unsigned long )ldv_func_arg1) {
    ldv_state_variable_15 = 0;
  } else {
  }
  return;
}
}
__inline static struct ieee80211_hw *ldv_ieee80211_alloc_hw_16(size_t priv_data_len ,
                                                               struct ieee80211_ops const *ops )
{
  ldv_func_ret_type___7 ldv_func_res ;
  struct ieee80211_hw *tmp ;
  {
  tmp = ieee80211_alloc_hw(priv_data_len, ops);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___7 )0)) {
    ldv_state_variable_15 = 1;
    ldv_initialize_ieee80211_ops_15();
    b43legacy_hw_ops_group0 = ldv_func_res;
  } else {
  }
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_17(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_18(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_39(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_38(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_41(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_40(struct workqueue_struct *ldv_func_arg1 ) ;
u16 b43legacy_phy_read(struct b43legacy_wldev *dev , u16 offset ) ;
void b43legacy_phy_write(struct b43legacy_wldev *dev , u16 offset , u16 val ) ;
u32 const b43legacy_ilt_rotor[53U] ;
u32 const b43legacy_ilt_retard[53U] ;
u16 const b43legacy_ilt_finefreqa[256U] ;
u16 const b43legacy_ilt_finefreqg[256U] ;
u16 const b43legacy_ilt_noisea2[8U] ;
u16 const b43legacy_ilt_noisea3[8U] ;
u16 const b43legacy_ilt_noiseg1[8U] ;
u16 const b43legacy_ilt_noiseg2[8U] ;
u16 const b43legacy_ilt_noisescaleg1[27U] ;
u16 const b43legacy_ilt_noisescaleg2[27U] ;
u16 const b43legacy_ilt_noisescaleg3[27U] ;
u16 const b43legacy_ilt_sigmasqr1[53U] ;
u16 const b43legacy_ilt_sigmasqr2[53U] ;
void b43legacy_ilt_write(struct b43legacy_wldev *dev , u16 offset , u16 val ) ;
void b43legacy_ilt_write32(struct b43legacy_wldev *dev , u16 offset , u32 val ) ;
u16 b43legacy_ilt_read(struct b43legacy_wldev *dev , u16 offset ) ;
u32 const b43legacy_ilt_rotor[53U] =
  { 4273553405U, 4274405373U, 4275191805U, 4276043773U,
        4276895742U, 4277682174U, 4278534142U, 4279320574U,
        4280172542U, 4280958975U, 4281810943U, 4282662911U,
        4283449343U, 4284301311U, 4285087743U, 4285939711U,
        4286726144U, 4287578112U, 4288364544U, 4289216512U,
        4290068480U, 4290854912U, 4291706880U, 4292493312U,
        4293345280U, 4294131712U, 16384U, 868352U,
        1654784U, 2506752U, 3293184U, 4145152U,
        4931584U, 5783552U, 6635520U, 7421952U,
        8273920U, 9060351U, 9912319U, 10698751U,
        11550719U, 12337151U, 13189119U, 14041087U,
        14827518U, 15679486U, 16465918U, 17317886U,
        18104318U, 18956285U, 19808253U, 20594685U,
        21446653U};
u32 const b43legacy_ilt_retard[53U] =
  { 3683896199U, 3597061988U, 3523072856U, 3450263590U,
        3392724383U, 3341410996U, 3295275150U, 3261787691U,
        3235837036U, 3228826210U, 3223126229U, 3228960579U,
        3243642142U, 3269792617U, 3303872767U, 3349946071U,
        3408405426U, 3472500953U, 3539348799U, 3619369367U,
        3706008936U, 3791534197U, 3889249077U, 3982900533U,
        4087037636U, 4186849191U, 16384U, 108150695U,
        207961796U, 312098101U, 405748533U, 503462005U,
        588985704U, 675623319U, 755641663U, 822487257U,
        886580146U, 945037015U, 991107327U, 1025184617U,
        1051331870U, 1066010435U, 1071841493U, 1066269282U,
        1059255404U, 1033301547U, 999811214U, 953672372U,
        902356383U, 844814374U, 772002648U, 698011492U,
        611175303U};
u16 const b43legacy_ilt_finefreqa[256U] =
  { 130U, 130U, 258U, 386U,
        514U, 642U, 770U, 898U,
        1026U, 1154U, 1282U, 1410U,
        1506U, 1634U, 1762U, 1890U,
        2018U, 2114U, 2242U, 2370U,
        2498U, 2594U, 2722U, 2818U,
        2946U, 3042U, 3170U, 3266U,
        3394U, 3490U, 3586U, 3682U,
        3810U, 3906U, 4002U, 4098U,
        4194U, 4290U, 4386U, 4482U,
        4578U, 4674U, 4770U, 4834U,
        4930U, 5026U, 5122U, 5186U,
        5282U, 5346U, 5442U, 5506U,
        5602U, 5666U, 5730U, 5825U,
        5889U, 5953U, 6017U, 6113U,
        6177U, 6241U, 6305U, 6369U,
        6433U, 6497U, 6561U, 6625U,
        6689U, 6753U, 6817U, 6849U,
        6913U, 6977U, 7041U, 7073U,
        7137U, 7201U, 7233U, 7297U,
        7329U, 7393U, 7425U, 7489U,
        7521U, 7585U, 7617U, 7681U,
        7713U, 7777U, 7809U, 7841U,
        7905U, 7937U, 7969U, 8001U,
        8065U, 8097U, 8129U, 8161U,
        8193U, 8257U, 8289U, 8321U,
        8353U, 8385U, 8417U, 8449U,
        8481U, 8513U, 8545U, 8577U,
        8609U, 8641U, 8673U, 8705U,
        8737U, 8769U, 8801U, 8833U,
        8865U, 8897U, 8897U, 8929U,
        8961U, 8993U, 9025U, 9057U,
        9057U, 9089U, 9121U, 9153U,
        9185U, 9185U, 9217U, 9249U,
        9281U, 9281U, 9313U, 9345U,
        9345U, 9377U, 9409U, 9409U,
        9441U, 9473U, 9473U, 9505U,
        9537U, 9537U, 9569U, 9569U,
        9601U, 9633U, 9633U, 9665U,
        9665U, 9697U, 9729U, 9729U,
        9761U, 9761U, 9793U, 9793U,
        9825U, 9825U, 9857U, 9857U,
        9889U, 9889U, 9921U, 9921U,
        9953U, 9953U, 9985U, 9985U,
        10017U, 10017U, 10048U, 10048U,
        10080U, 10080U, 10112U, 10112U,
        10112U, 10144U, 10144U, 10176U,
        10176U, 10208U, 10208U, 10208U,
        10240U, 10240U, 10272U, 10272U,
        10272U, 10304U, 10304U, 10304U,
        10336U, 10336U, 10368U, 10368U,
        10368U, 10400U, 10400U, 10400U,
        10432U, 10432U, 10432U, 10464U,
        10464U, 10464U, 10496U, 10496U,
        10496U, 10528U, 10528U, 10528U,
        10560U, 10560U, 10560U, 10592U,
        10592U, 10592U, 10592U, 10624U,
        10624U, 10624U, 10656U, 10656U,
        10656U, 10656U, 10688U, 10688U,
        10688U, 10720U, 10720U, 10720U,
        10720U, 10752U, 10752U, 10752U,
        10752U, 10784U, 10784U, 10784U,
        10784U, 10816U, 10816U, 10816U,
        10816U, 10848U, 10848U, 10848U};
u16 const b43legacy_ilt_finefreqg[256U] =
  { 137U, 745U, 1033U, 1257U,
        1449U, 1641U, 1801U, 1929U,
        2089U, 2217U, 2345U, 2441U,
        2569U, 2665U, 2761U, 2857U,
        2985U, 3049U, 3145U, 3241U,
        3337U, 3433U, 3497U, 3593U,
        3689U, 3753U, 3849U, 3913U,
        4009U, 4073U, 4137U, 4233U,
        4297U, 4361U, 4457U, 4521U,
        4585U, 4649U, 4745U, 4809U,
        4873U, 4937U, 5001U, 5065U,
        5129U, 5193U, 5289U, 5353U,
        5417U, 5481U, 5545U, 5609U,
        5673U, 5737U, 5801U, 5864U,
        5928U, 5992U, 6056U, 6120U,
        6184U, 6248U, 6312U, 6376U,
        6440U, 6504U, 6568U, 6632U,
        6696U, 6760U, 6824U, 6888U,
        6952U, 7016U, 7080U, 7144U,
        7208U, 7272U, 7336U, 7400U,
        7464U, 7528U, 7624U, 7688U,
        7752U, 7816U, 7880U, 7944U,
        8008U, 8072U, 8168U, 8232U,
        8296U, 8360U, 8456U, 8520U,
        8584U, 8648U, 8744U, 8808U,
        8904U, 8968U, 9032U, 9128U,
        9192U, 9288U, 9384U, 9448U,
        9544U, 9640U, 9736U, 9832U,
        9928U, 10024U, 10119U, 10215U,
        10311U, 10439U, 10567U, 10663U,
        10791U, 10951U, 11079U, 11239U,
        11431U, 11623U, 11847U, 12135U,
        12871U, 13606U, 13894U, 14118U,
        14342U, 14502U, 14662U, 14822U,
        14950U, 15078U, 15206U, 15302U,
        15429U, 15525U, 15621U, 15749U,
        15845U, 15941U, 16037U, 16101U,
        16197U, 16293U, 16389U, 16453U,
        16549U, 16613U, 16709U, 16773U,
        16869U, 16933U, 16997U, 17093U,
        17157U, 17221U, 17317U, 17381U,
        17444U, 17508U, 17604U, 17668U,
        17732U, 17796U, 17860U, 17924U,
        17988U, 18084U, 18148U, 18212U,
        18276U, 18340U, 18404U, 18468U,
        18532U, 18596U, 18660U, 18724U,
        18788U, 18852U, 18916U, 18980U,
        19044U, 19108U, 19172U, 19235U,
        19299U, 19363U, 19427U, 19491U,
        19555U, 19619U, 19683U, 19747U,
        19811U, 19875U, 19939U, 20003U,
        20067U, 20131U, 20195U, 20259U,
        20323U, 20419U, 20483U, 20547U,
        20611U, 20675U, 20739U, 20803U,
        20867U, 20962U, 21026U, 21090U,
        21154U, 21218U, 21314U, 21378U,
        21442U, 21506U, 21602U, 21666U,
        21762U, 21826U, 21922U, 21986U,
        22082U, 22146U, 22242U, 22306U,
        22402U, 22497U, 22593U, 22689U,
        22785U, 22881U, 22977U, 23073U,
        23201U, 23297U, 23425U, 23521U,
        23649U, 23809U, 23936U, 24096U,
        24288U, 24480U, 24704U, 25024U};
u16 const b43legacy_ilt_noisea2[8U] =
  { 1U, 1U, 1U, 65534U,
        65534U, 16383U, 4096U, 915U};
u16 const b43legacy_ilt_noisea3[8U] =
  { 19532U, 19532U, 19532U, 11574U,
        19532U, 19532U, 19532U, 11574U};
u16 const b43legacy_ilt_noiseg1[8U] =
  { 316U, 501U, 794U, 1585U,
        1U, 1U, 1U, 1U};
u16 const b43legacy_ilt_noiseg2[8U] =
  { 21636U, 15424U, 0U, 0U,
        0U, 0U, 0U, 0U};
u16 const b43legacy_ilt_noisescaleg1[27U] =
  { 27767U, 20834U, 15168U, 13109U,
        12077U, 10794U, 9511U, 7969U,
        6685U, 5913U, 5654U, 5140U,
        5140U, 5120U, 5140U, 5652U,
        5910U, 6681U, 7965U, 9505U,
        10791U, 12074U, 13101U, 15157U,
        20800U, 27746U, 119U};
u16 const b43legacy_ilt_noisescaleg2[27U] =
  { 55517U, 52180U, 48320U, 46775U,
        45744U, 44461U, 42921U, 40865U,
        38555U, 37269U, 36751U, 35466U,
        35466U, 35328U, 35466U, 36746U,
        37263U, 38549U, 40859U, 42913U,
        44457U, 45741U, 46768U, 48311U,
        52160U, 55508U, 221U};
u16 const b43legacy_ilt_noisescaleg3[27U] =
  { 42148U, 42148U, 42148U, 42148U,
        42148U, 42148U, 42148U, 42148U,
        42148U, 42148U, 42148U, 42148U,
        42148U, 41984U, 42148U, 42148U,
        42148U, 42148U, 42148U, 42148U,
        42148U, 42148U, 42148U, 42148U,
        42148U, 42148U, 164U};
u16 const b43legacy_ilt_sigmasqr1[53U] =
  { 122U, 117U, 113U, 108U,
        103U, 99U, 94U, 89U,
        84U, 80U, 75U, 70U,
        66U, 61U, 61U, 61U,
        61U, 61U, 61U, 61U,
        61U, 61U, 61U, 61U,
        61U, 61U, 0U, 61U,
        61U, 61U, 61U, 61U,
        61U, 61U, 61U, 61U,
        61U, 61U, 61U, 61U,
        66U, 70U, 75U, 80U,
        84U, 89U, 94U, 99U,
        103U, 108U, 113U, 117U,
        122U};
u16 const b43legacy_ilt_sigmasqr2[53U] =
  { 222U, 220U, 218U, 216U,
        214U, 212U, 210U, 207U,
        205U, 202U, 199U, 196U,
        193U, 190U, 190U, 190U,
        190U, 190U, 190U, 190U,
        190U, 190U, 190U, 190U,
        190U, 190U, 0U, 190U,
        190U, 190U, 190U, 190U,
        190U, 190U, 190U, 190U,
        190U, 190U, 190U, 190U,
        193U, 196U, 199U, 202U,
        205U, 207U, 210U, 212U,
        214U, 216U, 218U, 220U,
        222U};
void b43legacy_ilt_write(struct b43legacy_wldev *dev , u16 offset , u16 val )
{
  {
  b43legacy_phy_write(dev, 1138, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_phy_write(dev, 1139, (int )val);
  return;
}
}
void b43legacy_ilt_write32(struct b43legacy_wldev *dev , u16 offset , u32 val )
{
  {
  b43legacy_phy_write(dev, 1138, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_phy_write(dev, 1140, (int )((u16 )(val >> 16)));
  b43legacy_phy_write(dev, 1139, (int )((u16 )val));
  return;
}
}
u16 b43legacy_ilt_read(struct b43legacy_wldev *dev , u16 offset )
{
  u16 tmp ;
  {
  b43legacy_phy_write(dev, 1138, (int )offset);
  tmp = b43legacy_phy_read(dev, 1139);
  return (tmp);
}
}
bool ldv_queue_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_38(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_39(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_40(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_41(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void dump_stack(void) ;
extern void ___might_sleep(char const * , int , int ) ;
__inline static unsigned long arch_local_save_flags___0(void)
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
  f = arch_local_save_flags___0();
  arch_local_irq_disable();
  return (f);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  default:
  __bad_percpu_size();
  }
  ldv_6002: ;
  return (pfo_ret__ & 2147483647);
}
}
bool ldv_queue_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_55(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 ) ;
extern int _cond_resched(void) ;
void b43legacy_phy_lock(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_unlock(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev ) ;
void b43legacy_phy_lo_adjust(struct b43legacy_wldev *dev , int fixed ) ;
void b43legacy_phy_set_baseband_attenuation(struct b43legacy_wldev *dev , u16 bbatt ) ;
__inline static bool is_bcm_board_vendor(struct b43legacy_wldev *dev )
{
  {
  return ((unsigned int )((dev->dev)->bus)->boardinfo.vendor == 5348U);
}
}
__inline static struct b43legacy_lopair *b43legacy_get_lopair(struct b43legacy_phy *phy ,
                                                              u16 radio_attenuation ,
                                                              u16 baseband_attenuation )
{
  {
  return (phy->_lo_pairs + (unsigned long )((int )radio_attenuation + (int )((unsigned int )baseband_attenuation / 2U) * 14));
}
}
void b43legacy_radio_lock(struct b43legacy_wldev *dev ) ;
void b43legacy_radio_unlock(struct b43legacy_wldev *dev ) ;
u16 b43legacy_radio_read16(struct b43legacy_wldev *dev , u16 offset ) ;
u16 b43legacy_radio_init2050(struct b43legacy_wldev *dev ) ;
void b43legacy_radio_set_txpower_bg(struct b43legacy_wldev *dev , u16 baseband_attenuation ,
                                    u16 radio_attenuation , u16 txpower ) ;
void b43legacy_radio_clear_tssi(struct b43legacy_wldev *dev ) ;
void b43legacy_calc_nrssi_threshold(struct b43legacy_wldev *dev ) ;
void b43legacy_nrssi_hw_write(struct b43legacy_wldev *dev , u16 offset , s16 val ) ;
void b43legacy_nrssi_hw_update(struct b43legacy_wldev *dev , u16 val ) ;
static s8 const b43legacy_tssi2dbm_b_table[64U] =
  { 77, 76, 75, 74,
        74, 73, 72, 71,
        71, 70, 69, 69,
        68, 67, 66, 66,
        65, 64, 63, 62,
        61, 60, 59, 58,
        57, 56, 55, 54,
        53, 52, 50, 49,
        48, 47, 45, 44,
        43, 41, 40, 38,
        37, 35, 33, 31,
        29, 26, 23, 20,
        16, 12, 6, 0,
        -7, -7, -7, -7,
        -7, -7, -7, -7,
        -7, -7, -7, -7};
static s8 const b43legacy_tssi2dbm_g_table[64U] =
  { 77, 77, 77, 76,
        76, 76, 75, 75,
        74, 74, 73, 73,
        73, 72, 72, 71,
        71, 70, 70, 69,
        68, 68, 67, 67,
        66, 65, 65, 64,
        63, 63, 62, 61,
        60, 59, 58, 57,
        56, 55, 54, 53,
        52, 50, 49, 47,
        45, 43, 40, 37,
        33, 28, 22, 14,
        5, -7, -20, -20,
        -20, -20, -20, -20,
        -20, -20, -20, -20};
static void b43legacy_phy_initg(struct b43legacy_wldev *dev ) ;
__inline static void b43legacy_voluntary_preempt(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long _flags ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  unsigned long _flags___0 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  {
  tmp___5 = preempt_count();
  if (tmp___5 != 0) {
    tmp___9 = 1;
  } else {
    tmp___6 = preempt_count();
    if (((unsigned long )tmp___6 & 983040UL) != 0UL) {
      tmp___9 = 1;
    } else {
      tmp___7 = preempt_count();
      if (((unsigned long )tmp___7 & 2096896UL) != 0UL) {
        tmp___9 = 1;
      } else {
        _flags___0 = arch_local_save_flags___0();
        tmp___8 = arch_irqs_disabled_flags(_flags___0);
        if (tmp___8 != 0) {
          tmp___9 = 1;
        } else {
          tmp___9 = 0;
        }
      }
    }
  }
  tmp___10 = ldv__builtin_expect((long )tmp___9, 0L);
  if (tmp___10 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"!(!in_atomic() && !in_irq() && !in_interrupt() && !irqs_disabled())");
    tmp = preempt_count();
    if (tmp != 0) {
      tmp___3 = 1;
    } else {
      tmp___0 = preempt_count();
      if (((unsigned long )tmp___0 & 983040UL) != 0UL) {
        tmp___3 = 1;
      } else {
        tmp___1 = preempt_count();
        if (((unsigned long )tmp___1 & 2096896UL) != 0UL) {
          tmp___3 = 1;
        } else {
          _flags = arch_local_save_flags___0();
          tmp___2 = arch_irqs_disabled_flags(_flags);
          if (tmp___2 != 0) {
            tmp___3 = 1;
          } else {
            tmp___3 = 0;
          }
        }
      }
    }
    tmp___4 = ldv__builtin_expect((long )tmp___3, 0L);
    if (tmp___4 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c"),
                           "i" (90), "i" (12UL));
      ldv_53101: ;
      goto ldv_53101;
    } else {
    }
  } else {
  }
  ___might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                 92, 0);
  _cond_resched();
  return;
}
}
void b43legacy_phy_lock(struct b43legacy_wldev *dev )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (int )dev->phy.phy_locked;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       101);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dev->phy.phy_locked = 1;
  if ((unsigned int )(dev->dev)->id.revision <= 2U) {
    b43legacy_mac_suspend(dev);
  } else {
    tmp___0 = b43legacy_is_mode(dev->wl, 3);
    if (tmp___0 == 0) {
      b43legacy_power_saving_ctl_bits(dev, -1, 1);
    } else {
    }
  }
  return;
}
}
void b43legacy_phy_unlock(struct b43legacy_wldev *dev )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = ! dev->phy.phy_locked;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       116);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dev->phy.phy_locked = 0;
  if ((unsigned int )(dev->dev)->id.revision <= 2U) {
    b43legacy_mac_enable(dev);
  } else {
    tmp___0 = b43legacy_is_mode(dev->wl, 3);
    if (tmp___0 == 0) {
      b43legacy_power_saving_ctl_bits(dev, -1, -1);
    } else {
    }
  }
  return;
}
}
u16 b43legacy_phy_read(struct b43legacy_wldev *dev , u16 offset )
{
  u16 tmp ;
  {
  b43legacy_write16(dev, 1020, (int )offset);
  tmp = b43legacy_read16(dev, 1022);
  return (tmp);
}
}
void b43legacy_phy_write(struct b43legacy_wldev *dev , u16 offset , u16 val )
{
  {
  b43legacy_write16(dev, 1020, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_write16(dev, 1022, (int )val);
  return;
}
}
void b43legacy_phy_calibrate(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  {
  phy = & dev->phy;
  b43legacy_read32(dev, 288);
  if ((unsigned int )*((unsigned char *)phy + 14UL) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )phy->type == 2U && (unsigned int )phy->rev == 1U) {
    b43legacy_wireless_core_reset(dev, 0U);
    b43legacy_phy_initg(dev);
    b43legacy_wireless_core_reset(dev, 536870912U);
  } else {
  }
  phy->calibrated = 1U;
  return;
}
}
static void b43legacy_phy_init_pctl(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 saved_batt ;
  u16 saved_ratt ;
  u16 saved_txctl1 ;
  int must_reset_txpower ;
  long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  {
  phy = & dev->phy;
  saved_batt = 0U;
  saved_ratt = 0U;
  saved_txctl1 = 0U;
  must_reset_txpower = 0;
  tmp___0 = ldv__builtin_expect((long )((unsigned int )phy->type != 1U && (unsigned int )phy->type != 2U),
                             0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"!(phy->type == B43legacy_PHYTYPE_B || phy->type == B43legacy_PHYTYPE_G)");
    tmp = ldv__builtin_expect((long )((unsigned int )phy->type != 1U && (unsigned int )phy->type != 2U),
                           0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c"),
                           "i" (168), "i" (12UL));
      ldv_53134: ;
      goto ldv_53134;
    } else {
    }
  } else {
  }
  tmp___1 = is_bcm_board_vendor(dev);
  if ((int )tmp___1 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) {
    return;
  } else {
  }
  b43legacy_phy_write(dev, 40, 32792);
  tmp___2 = b43legacy_read16(dev, 998);
  b43legacy_write16(dev, 998, (int )tmp___2 & 65503);
  if ((unsigned int )phy->type == 2U) {
    if (! phy->gmode) {
      return;
    } else {
    }
    b43legacy_phy_write(dev, 1146, 49425);
  } else {
  }
  if ((unsigned int )phy->savedpctlreg != 65535U) {
    return;
  } else {
  }
  if ((int )phy->manual_txpower_control) {
    return;
  } else {
  }
  if (((unsigned int )phy->type == 1U && (unsigned int )phy->rev > 1U) && (unsigned int )phy->radio_ver == 8272U) {
    tmp___3 = b43legacy_radio_read16(dev, 118);
    b43legacy_radio_write16(dev, 118, (int )((unsigned int )tmp___3 | 132U));
  } else {
    saved_batt = phy->__annonCompField105.bbatt;
    saved_ratt = phy->__annonCompField105.rfatt;
    saved_txctl1 = phy->__annonCompField105.txctl1;
    b43legacy_radio_set_txpower_bg(dev, 11, 9, 0);
    must_reset_txpower = 1;
  }
  b43legacy_dummy_transmission(dev);
  phy->savedpctlreg = b43legacy_phy_read(dev, 41);
  if (must_reset_txpower != 0) {
    b43legacy_radio_set_txpower_bg(dev, (int )saved_batt, (int )saved_ratt, (int )saved_txctl1);
  } else {
    tmp___4 = b43legacy_radio_read16(dev, 118);
    b43legacy_radio_write16(dev, 118, (int )tmp___4 & 65403);
  }
  b43legacy_radio_clear_tssi(dev);
  return;
}
}
static void b43legacy_phy_agcsetup(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 offset ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  {
  phy = & dev->phy;
  offset = 0U;
  if ((unsigned int )phy->rev == 1U) {
    offset = 19456U;
  } else {
  }
  b43legacy_ilt_write(dev, (int )offset, 254);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 1U), 13);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 2U), 19);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 3U), 25);
  if ((unsigned int )phy->rev == 1U) {
    b43legacy_ilt_write(dev, 6144, 10000);
    b43legacy_ilt_write(dev, 6145, 39811);
    b43legacy_ilt_write(dev, 6146, 39811);
    b43legacy_ilt_write(dev, 6147, 3981);
    b43legacy_phy_write(dev, 1109, 4);
  } else {
  }
  tmp = b43legacy_phy_read(dev, 1189);
  b43legacy_phy_write(dev, 1189, (int )((u16 )(((int )((short )tmp) & 255) | 22272)));
  tmp___0 = b43legacy_phy_read(dev, 1050);
  b43legacy_phy_write(dev, 1050, (int )((u16 )(((int )((short )tmp___0) & -128) | 15)));
  tmp___1 = b43legacy_phy_read(dev, 1050);
  b43legacy_phy_write(dev, 1050, (int )((u16 )(((int )((short )tmp___1) & -16257) | 11136)));
  tmp___2 = b43legacy_phy_read(dev, 1164);
  b43legacy_phy_write(dev, 1164, (int )((u16 )(((int )((short )tmp___2) & -3841) | 768)));
  tmp___3 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___3 | 8U));
  tmp___4 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___4) & -16) | 8)));
  tmp___5 = b43legacy_phy_read(dev, 1185);
  b43legacy_phy_write(dev, 1185, (int )((u16 )(((int )((short )tmp___5) & -3841) | 1536)));
  tmp___6 = b43legacy_phy_read(dev, 1186);
  b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___6) & -3841) | 1792)));
  tmp___7 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___7) & -3841) | 256)));
  if ((unsigned int )phy->rev == 1U) {
    tmp___8 = b43legacy_phy_read(dev, 1186);
    b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___8) & -16) | 7)));
  } else {
  }
  tmp___9 = b43legacy_phy_read(dev, 1160);
  b43legacy_phy_write(dev, 1160, (int )((u16 )(((int )((short )tmp___9) & -256) | 28)));
  tmp___10 = b43legacy_phy_read(dev, 1160);
  b43legacy_phy_write(dev, 1160, (int )((u16 )(((int )((short )tmp___10) & -16129) | 512)));
  tmp___11 = b43legacy_phy_read(dev, 1174);
  b43legacy_phy_write(dev, 1174, (int )((u16 )(((int )((short )tmp___11) & -256) | 28)));
  tmp___12 = b43legacy_phy_read(dev, 1161);
  b43legacy_phy_write(dev, 1161, (int )((u16 )(((int )((short )tmp___12) & -256) | 32)));
  tmp___13 = b43legacy_phy_read(dev, 1161);
  b43legacy_phy_write(dev, 1161, (int )((u16 )(((int )((short )tmp___13) & -16129) | 512)));
  tmp___14 = b43legacy_phy_read(dev, 1154);
  b43legacy_phy_write(dev, 1154, (int )((u16 )(((int )((short )tmp___14) & -256) | 46)));
  tmp___15 = b43legacy_phy_read(dev, 1174);
  b43legacy_phy_write(dev, 1174, (int )((u16 )(((int )((short )tmp___15) & 255) | 6656)));
  tmp___16 = b43legacy_phy_read(dev, 1153);
  b43legacy_phy_write(dev, 1153, (int )((u16 )(((int )((short )tmp___16) & -256) | 40)));
  tmp___17 = b43legacy_phy_read(dev, 1153);
  b43legacy_phy_write(dev, 1153, (int )((u16 )(((int )((short )tmp___17) & 255) | 11264)));
  if ((unsigned int )phy->rev == 1U) {
    b43legacy_phy_write(dev, 1072, 2347);
    tmp___18 = b43legacy_phy_read(dev, 1051);
    b43legacy_phy_write(dev, 1051, (int )((u16 )(((int )((short )tmp___18) & -31) | 2)));
  } else {
    tmp___19 = b43legacy_phy_read(dev, 1051);
    b43legacy_phy_write(dev, 1051, (int )tmp___19 & 65505);
    b43legacy_phy_write(dev, 1055, 10362);
    tmp___20 = b43legacy_phy_read(dev, 1056);
    b43legacy_phy_write(dev, 1056, (int )((u16 )(((int )((short )tmp___20) & -16) | 4)));
  }
  if ((unsigned int )phy->rev > 2U) {
    b43legacy_phy_write(dev, 1058, 10362);
    tmp___21 = b43legacy_phy_read(dev, 1056);
    b43legacy_phy_write(dev, 1056, (int )((u16 )(((int )((short )tmp___21) & 4095) | 12288)));
  } else {
  }
  tmp___22 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___22) & -32640) | 30836)));
  b43legacy_phy_write(dev, 1166, 7168);
  if ((unsigned int )phy->rev == 1U) {
    tmp___23 = b43legacy_phy_read(dev, 1195);
    b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___23) & -3841) | 1536)));
    b43legacy_phy_write(dev, 1163, 94);
    tmp___24 = b43legacy_phy_read(dev, 1164);
    b43legacy_phy_write(dev, 1164, (int )((u16 )(((int )((short )tmp___24) & -256) | 30)));
    b43legacy_phy_write(dev, 1165, 2);
  } else {
  }
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 2048U), 0);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 2049U), 7);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 2050U), 16);
  b43legacy_ilt_write(dev, (int )((unsigned int )offset + 2051U), 28);
  if ((unsigned int )phy->rev > 5U) {
    tmp___25 = b43legacy_phy_read(dev, 1062);
    b43legacy_phy_write(dev, 1062, (int )tmp___25 & 65532);
    tmp___26 = b43legacy_phy_read(dev, 1062);
    b43legacy_phy_write(dev, 1062, (int )tmp___26 & 61439);
  } else {
  }
  return;
}
}
static void b43legacy_phy_setupg(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 i ;
  long tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  bool tmp___4 ;
  bool tmp___5 ;
  {
  phy = & dev->phy;
  tmp___0 = ldv__builtin_expect((unsigned int )phy->type != 2U, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"phy->type != B43legacy_PHYTYPE_G");
    tmp = ldv__builtin_expect((unsigned int )phy->type != 2U, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c"),
                           "i" (339), "i" (12UL));
      ldv_53145: ;
      goto ldv_53145;
    } else {
    }
  } else {
  }
  if ((unsigned int )phy->rev == 1U) {
    b43legacy_phy_write(dev, 1030, 20249);
    tmp___1 = b43legacy_phy_read(dev, 1065);
    b43legacy_phy_write(dev, 1065, (int )((u16 )(((int )((short )tmp___1) & -961) | 832)));
    b43legacy_phy_write(dev, 1068, 90);
    b43legacy_phy_write(dev, 1063, 26);
    i = 0U;
    goto ldv_53147;
    ldv_53146:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 22528U), (int )b43legacy_ilt_finefreqg[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53147: ;
    if ((unsigned int )i <= 255U) {
      goto ldv_53146;
    } else {
    }
    i = 0U;
    goto ldv_53150;
    ldv_53149:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 6144U), (int )b43legacy_ilt_noiseg1[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53150: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_53149;
    } else {
    }
    i = 0U;
    goto ldv_53153;
    ldv_53152:
    b43legacy_ilt_write32(dev, (int )((unsigned int )i + 8192U), b43legacy_ilt_rotor[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53153: ;
    if ((unsigned int )i <= 52U) {
      goto ldv_53152;
    } else {
    }
  } else {
    b43legacy_nrssi_hw_write(dev, 47768, 30292);
    if ((unsigned int )phy->rev == 2U) {
      b43legacy_phy_write(dev, 1216, 6241);
      b43legacy_phy_write(dev, 1217, 625);
    } else
    if ((unsigned int )phy->rev > 2U) {
      b43legacy_phy_write(dev, 1216, 152);
      b43legacy_phy_write(dev, 1217, 112);
      b43legacy_phy_write(dev, 1225, 128);
    } else {
    }
    tmp___2 = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___2 | 2048U));
    i = 0U;
    goto ldv_53156;
    ldv_53155:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 16384U), (int )i);
    i = (u16 )((int )i + 1);
    ldv_53156: ;
    if ((unsigned int )i <= 63U) {
      goto ldv_53155;
    } else {
    }
    i = 0U;
    goto ldv_53159;
    ldv_53158:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 6144U), (int )b43legacy_ilt_noiseg2[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53159: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_53158;
    } else {
    }
  }
  if ((unsigned int )phy->rev <= 2U) {
    i = 0U;
    goto ldv_53162;
    ldv_53161:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 5120U), (int )b43legacy_ilt_noisescaleg1[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53162: ;
    if ((unsigned int )i <= 26U) {
      goto ldv_53161;
    } else {
    }
  } else
  if ((unsigned int )phy->rev > 6U) {
    tmp___3 = b43legacy_phy_read(dev, 1097);
    if (((int )tmp___3 & 512) != 0) {
      i = 0U;
      goto ldv_53165;
      ldv_53164:
      b43legacy_ilt_write(dev, (int )((unsigned int )i + 5120U), (int )b43legacy_ilt_noisescaleg3[(int )i]);
      i = (u16 )((int )i + 1);
      ldv_53165: ;
      if ((unsigned int )i <= 26U) {
        goto ldv_53164;
      } else {
      }
    } else {
      goto _L;
    }
  } else {
    _L:
    i = 0U;
    goto ldv_53168;
    ldv_53167:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 5120U), (int )b43legacy_ilt_noisescaleg2[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53168: ;
    if ((unsigned int )i <= 26U) {
      goto ldv_53167;
    } else {
    }
  }
  if ((unsigned int )phy->rev == 2U) {
    i = 0U;
    goto ldv_53171;
    ldv_53170:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 20480U), (int )b43legacy_ilt_sigmasqr1[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53171: ;
    if ((unsigned int )i <= 52U) {
      goto ldv_53170;
    } else {
    }
  } else
  if ((unsigned int )phy->rev > 2U && (unsigned int )phy->rev <= 8U) {
    i = 0U;
    goto ldv_53174;
    ldv_53173:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 20480U), (int )b43legacy_ilt_sigmasqr2[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53174: ;
    if ((unsigned int )i <= 52U) {
      goto ldv_53173;
    } else {
    }
  } else {
  }
  if ((unsigned int )phy->rev == 1U) {
    i = 0U;
    goto ldv_53177;
    ldv_53176:
    b43legacy_ilt_write32(dev, (int )((unsigned int )i + 9216U), b43legacy_ilt_retard[(int )i]);
    i = (u16 )((int )i + 1);
    ldv_53177: ;
    if ((unsigned int )i <= 52U) {
      goto ldv_53176;
    } else {
    }
    i = 4U;
    goto ldv_53180;
    ldv_53179:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 21504U), 32);
    i = (u16 )((int )i + 1);
    ldv_53180: ;
    if ((unsigned int )i <= 19U) {
      goto ldv_53179;
    } else {
    }
    b43legacy_phy_agcsetup(dev);
    tmp___4 = is_bcm_board_vendor(dev);
    if (((int )tmp___4 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) && (unsigned int )((dev->dev)->bus)->sprom.board_rev == 23U) {
      return;
    } else {
    }
    b43legacy_ilt_write(dev, 20481, 2);
    b43legacy_ilt_write(dev, 20482, 1);
  } else {
    i = 0U;
    goto ldv_53183;
    ldv_53182:
    b43legacy_ilt_write(dev, (int )((unsigned int )i + 4096U), 2080);
    i = (u16 )((int )i + 1);
    ldv_53183: ;
    if ((unsigned int )i <= 32U) {
      goto ldv_53182;
    } else {
    }
    b43legacy_phy_agcsetup(dev);
    b43legacy_phy_read(dev, 1024);
    b43legacy_phy_write(dev, 1027, 4096);
    b43legacy_ilt_write(dev, 15362, 15);
    b43legacy_ilt_write(dev, 15363, 20);
    tmp___5 = is_bcm_board_vendor(dev);
    if (((int )tmp___5 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) && (unsigned int )((dev->dev)->bus)->sprom.board_rev == 23U) {
      return;
    } else {
    }
    b43legacy_ilt_write(dev, 1025, 2);
    b43legacy_ilt_write(dev, 1026, 1);
  }
  return;
}
}
static void b43legacy_phy_inita(struct b43legacy_wldev *dev )
{
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                439, 0);
  b43legacy_phy_setupg(dev);
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 2) != 0) {
    b43legacy_phy_write(dev, 1134, 975);
  } else {
  }
  return;
}
}
static void b43legacy_phy_initb2(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 offset ;
  int val ;
  {
  phy = & dev->phy;
  b43legacy_write16(dev, 1004, 16162);
  b43legacy_phy_write(dev, 32, 12316);
  b43legacy_phy_write(dev, 38, 0);
  b43legacy_phy_write(dev, 48, 198);
  b43legacy_phy_write(dev, 136, 15872);
  val = 15421;
  offset = 137U;
  goto ldv_53195;
  ldv_53194:
  b43legacy_phy_write(dev, (int )offset, (int )((u16 )val));
  val = val + -514;
  offset = (u16 )((int )offset + 1);
  ldv_53195: ;
  if ((unsigned int )offset <= 166U) {
    goto ldv_53194;
  } else {
  }
  b43legacy_phy_write(dev, 996, 12288);
  b43legacy_radio_selectchannel(dev, (int )phy->channel, 0);
  if ((unsigned int )phy->radio_ver != 8272U) {
    b43legacy_radio_write16(dev, 117, 128);
    b43legacy_radio_write16(dev, 121, 129);
  } else {
  }
  b43legacy_radio_write16(dev, 80, 32);
  b43legacy_radio_write16(dev, 80, 35);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_radio_write16(dev, 80, 32);
    b43legacy_radio_write16(dev, 90, 112);
    b43legacy_radio_write16(dev, 91, 123);
    b43legacy_radio_write16(dev, 92, 176);
    b43legacy_radio_write16(dev, 122, 15);
    b43legacy_phy_write(dev, 56, 1655);
    b43legacy_radio_init2050(dev);
  } else {
  }
  b43legacy_phy_write(dev, 20, 128);
  b43legacy_phy_write(dev, 50, 202);
  b43legacy_phy_write(dev, 50, 204);
  b43legacy_phy_write(dev, 53, 1986);
  b43legacy_phy_lo_b_measure(dev);
  b43legacy_phy_write(dev, 38, 52224);
  if ((unsigned int )phy->radio_ver != 8272U) {
    b43legacy_phy_write(dev, 38, 52736);
  } else {
  }
  b43legacy_write16(dev, 1012, 4096);
  b43legacy_phy_write(dev, 42, 34979);
  if ((unsigned int )phy->radio_ver != 8272U) {
    b43legacy_phy_write(dev, 42, 35010);
  } else {
  }
  b43legacy_radio_set_txpower_bg(dev, 65535, 65535, 65535);
  b43legacy_phy_init_pctl(dev);
  return;
}
}
static void b43legacy_phy_initb4(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 offset ;
  u16 val ;
  {
  phy = & dev->phy;
  b43legacy_write16(dev, 1004, 16162);
  b43legacy_phy_write(dev, 32, 12316);
  b43legacy_phy_write(dev, 38, 0);
  b43legacy_phy_write(dev, 48, 198);
  b43legacy_phy_write(dev, 136, 15872);
  val = 15421U;
  offset = 137U;
  goto ldv_53204;
  ldv_53203:
  b43legacy_phy_write(dev, (int )offset, (int )val);
  val = (unsigned int )val + 65022U;
  offset = (u16 )((int )offset + 1);
  ldv_53204: ;
  if ((unsigned int )offset <= 166U) {
    goto ldv_53203;
  } else {
  }
  b43legacy_phy_write(dev, 996, 12288);
  b43legacy_radio_selectchannel(dev, (int )phy->channel, 0);
  if ((unsigned int )phy->radio_ver != 8272U) {
    b43legacy_radio_write16(dev, 117, 128);
    b43legacy_radio_write16(dev, 121, 129);
  } else {
  }
  b43legacy_radio_write16(dev, 80, 32);
  b43legacy_radio_write16(dev, 80, 35);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_radio_write16(dev, 80, 32);
    b43legacy_radio_write16(dev, 90, 112);
    b43legacy_radio_write16(dev, 91, 123);
    b43legacy_radio_write16(dev, 92, 176);
    b43legacy_radio_write16(dev, 122, 15);
    b43legacy_phy_write(dev, 56, 1655);
    b43legacy_radio_init2050(dev);
  } else {
  }
  b43legacy_phy_write(dev, 20, 128);
  b43legacy_phy_write(dev, 50, 202);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_phy_write(dev, 50, 224);
  } else {
  }
  b43legacy_phy_write(dev, 53, 1986);
  b43legacy_phy_lo_b_measure(dev);
  b43legacy_phy_write(dev, 38, 52224);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_phy_write(dev, 38, 52736);
  } else {
  }
  b43legacy_write16(dev, 1012, 4352);
  b43legacy_phy_write(dev, 42, 34979);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_phy_write(dev, 42, 35010);
  } else {
  }
  b43legacy_radio_set_txpower_bg(dev, 65535, 65535, 65535);
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) != 0) {
    b43legacy_calc_nrssi_slope(dev);
    b43legacy_calc_nrssi_threshold(dev);
  } else {
  }
  b43legacy_phy_init_pctl(dev);
  return;
}
}
static void b43legacy_phy_initb5(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 offset ;
  u16 value ;
  u8 old_channel ;
  u16 tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->analog == 1U) {
    tmp = b43legacy_radio_read16(dev, 122);
    b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp | 80U));
  } else {
  }
  tmp___0 = is_bcm_board_vendor(dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 && (unsigned int )((dev->dev)->bus)->boardinfo.type != 1046U) {
    value = 8480U;
    offset = 168U;
    goto ldv_53214;
    ldv_53213:
    b43legacy_phy_write(dev, (int )offset, (int )value);
    value = (unsigned int )value + 514U;
    offset = (u16 )((int )offset + 1);
    ldv_53214: ;
    if ((unsigned int )offset <= 198U) {
      goto ldv_53213;
    } else {
    }
  } else {
  }
  tmp___2 = b43legacy_phy_read(dev, 53);
  b43legacy_phy_write(dev, 53, (int )((u16 )(((int )((short )tmp___2) & -3841) | 1792)));
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_phy_write(dev, 56, 1639);
  } else {
  }
  if ((int )phy->gmode) {
    if ((unsigned int )phy->radio_ver == 8272U) {
      tmp___3 = b43legacy_radio_read16(dev, 122);
      b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___3 | 32U));
      tmp___4 = b43legacy_radio_read16(dev, 81);
      b43legacy_radio_write16(dev, 81, (int )((unsigned int )tmp___4 | 4U));
    } else {
    }
    b43legacy_write16(dev, 994, 0);
    tmp___5 = b43legacy_phy_read(dev, 2050);
    b43legacy_phy_write(dev, 2050, (int )((unsigned int )tmp___5 | 256U));
    tmp___6 = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___6 | 8192U));
    b43legacy_phy_write(dev, 28, 6250);
    tmp___7 = b43legacy_phy_read(dev, 19);
    b43legacy_phy_write(dev, 19, (int )((u16 )(((int )((short )tmp___7) & 255) | 6400)));
    tmp___8 = b43legacy_phy_read(dev, 53);
    b43legacy_phy_write(dev, 53, (int )((u16 )(((int )((short )tmp___8) & -128) | 100)));
    tmp___9 = b43legacy_phy_read(dev, 93);
    b43legacy_phy_write(dev, 93, (int )((u16 )(((int )((short )tmp___9) & -128) | 10)));
    b43legacy_phy_write(dev, 91, 0);
    b43legacy_phy_write(dev, 92, 0);
  } else {
  }
  if ((int )dev->bad_frames_preempt) {
    tmp___10 = b43legacy_phy_read(dev, 1025);
    b43legacy_phy_write(dev, 1025, (int )((unsigned int )tmp___10 | 4096U));
  } else {
  }
  if ((unsigned int )phy->analog == 1U) {
    b43legacy_phy_write(dev, 38, 52736);
    b43legacy_phy_write(dev, 33, 14179);
    b43legacy_phy_write(dev, 34, 7107);
    b43legacy_phy_write(dev, 35, 1785);
    b43legacy_phy_write(dev, 36, 894);
  } else {
    b43legacy_phy_write(dev, 38, 52224);
  }
  b43legacy_phy_write(dev, 48, 198);
  b43legacy_write16(dev, 1004, 16162);
  if ((unsigned int )phy->analog == 1U) {
    b43legacy_phy_write(dev, 32, 15900);
  } else {
    b43legacy_phy_write(dev, 32, 12316);
  }
  if ((unsigned int )phy->analog == 0U) {
    b43legacy_write16(dev, 996, 12288);
  } else {
  }
  old_channel = (unsigned int )phy->channel != 255U ? phy->channel : 1U;
  b43legacy_radio_selectchannel(dev, 7, 0);
  if ((unsigned int )phy->radio_ver != 8272U) {
    b43legacy_radio_write16(dev, 117, 128);
    b43legacy_radio_write16(dev, 121, 129);
  } else {
  }
  b43legacy_radio_write16(dev, 80, 32);
  b43legacy_radio_write16(dev, 80, 35);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_radio_write16(dev, 80, 32);
    b43legacy_radio_write16(dev, 90, 112);
  } else {
  }
  b43legacy_radio_write16(dev, 91, 123);
  b43legacy_radio_write16(dev, 92, 176);
  tmp___11 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___11 | 7U));
  b43legacy_radio_selectchannel(dev, (int )old_channel, 0);
  b43legacy_phy_write(dev, 20, 128);
  b43legacy_phy_write(dev, 50, 202);
  b43legacy_phy_write(dev, 42, 34979);
  b43legacy_radio_set_txpower_bg(dev, 65535, 65535, 65535);
  if ((unsigned int )phy->radio_ver == 8272U) {
    b43legacy_radio_write16(dev, 93, 13);
  } else {
  }
  tmp___12 = b43legacy_read16(dev, 996);
  b43legacy_write16(dev, 996, (int )((u16 )(((int )((short )tmp___12) & -64) | 4)));
  return;
}
}
static void b43legacy_phy_initb6(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 offset ;
  u16 val ;
  u8 old_channel ;
  u16 tmp ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  {
  phy = & dev->phy;
  b43legacy_phy_write(dev, 62, 33146);
  tmp = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp | 88U));
  if ((unsigned int )phy->radio_rev == 4U || (unsigned int )phy->radio_rev == 5U) {
    b43legacy_radio_write16(dev, 81, 55);
    b43legacy_radio_write16(dev, 82, 112);
    b43legacy_radio_write16(dev, 83, 179);
    b43legacy_radio_write16(dev, 84, 155);
    b43legacy_radio_write16(dev, 90, 136);
    b43legacy_radio_write16(dev, 91, 136);
    b43legacy_radio_write16(dev, 93, 136);
    b43legacy_radio_write16(dev, 94, 136);
    b43legacy_radio_write16(dev, 125, 136);
    tmp___0 = b43legacy_shm_read32(dev, 1, 94);
    b43legacy_shm_write32(dev, 1, 94, tmp___0 | 512U);
  } else {
  }
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_radio_write16(dev, 81, 0);
    b43legacy_radio_write16(dev, 82, 64);
    b43legacy_radio_write16(dev, 83, 183);
    b43legacy_radio_write16(dev, 84, 152);
    b43legacy_radio_write16(dev, 90, 136);
    b43legacy_radio_write16(dev, 91, 107);
    b43legacy_radio_write16(dev, 92, 15);
    if ((int )((short )((dev->dev)->bus)->sprom.boardflags_lo) < 0) {
      b43legacy_radio_write16(dev, 93, 250);
      b43legacy_radio_write16(dev, 94, 216);
    } else {
      b43legacy_radio_write16(dev, 93, 245);
      b43legacy_radio_write16(dev, 94, 184);
    }
    b43legacy_radio_write16(dev, 115, 3);
    b43legacy_radio_write16(dev, 125, 168);
    b43legacy_radio_write16(dev, 124, 1);
    b43legacy_radio_write16(dev, 126, 8);
  } else {
  }
  val = 7711U;
  offset = 136U;
  goto ldv_53224;
  ldv_53223:
  b43legacy_phy_write(dev, (int )offset, (int )val);
  val = (unsigned int )val + 65022U;
  offset = (u16 )((int )offset + 1);
  ldv_53224: ;
  if ((unsigned int )offset <= 151U) {
    goto ldv_53223;
  } else {
  }
  val = 15935U;
  offset = 152U;
  goto ldv_53227;
  ldv_53226:
  b43legacy_phy_write(dev, (int )offset, (int )val);
  val = (unsigned int )val + 65022U;
  offset = (u16 )((int )offset + 1);
  ldv_53227: ;
  if ((unsigned int )offset <= 167U) {
    goto ldv_53226;
  } else {
  }
  val = 8480U;
  offset = 168U;
  goto ldv_53230;
  ldv_53229:
  b43legacy_phy_write(dev, (int )offset, (int )val & 16191);
  val = (unsigned int )val + 514U;
  offset = (u16 )((int )offset + 1);
  ldv_53230: ;
  if ((unsigned int )offset <= 199U) {
    goto ldv_53229;
  } else {
  }
  if ((unsigned int )phy->type == 2U) {
    tmp___1 = b43legacy_radio_read16(dev, 122);
    b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___1 | 32U));
    tmp___2 = b43legacy_radio_read16(dev, 81);
    b43legacy_radio_write16(dev, 81, (int )((unsigned int )tmp___2 | 4U));
    tmp___3 = b43legacy_phy_read(dev, 2050);
    b43legacy_phy_write(dev, 2050, (int )((unsigned int )tmp___3 | 256U));
    tmp___4 = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___4 | 8192U));
    b43legacy_phy_write(dev, 91, 0);
    b43legacy_phy_write(dev, 92, 0);
  } else {
  }
  old_channel = phy->channel;
  if ((unsigned int )old_channel > 7U) {
    b43legacy_radio_selectchannel(dev, 1, 0);
  } else {
    b43legacy_radio_selectchannel(dev, 13, 0);
  }
  b43legacy_radio_write16(dev, 80, 32);
  b43legacy_radio_write16(dev, 80, 35);
  __const_udelay(171800UL);
  if ((unsigned int )phy->radio_rev <= 5U || (unsigned int )phy->radio_rev == 8U) {
    tmp___5 = b43legacy_radio_read16(dev, 124);
    b43legacy_radio_write16(dev, 124, (int )((unsigned int )tmp___5 | 2U));
    b43legacy_radio_write16(dev, 80, 32);
  } else {
  }
  if ((unsigned int )phy->radio_rev <= 2U) {
    b43legacy_radio_write16(dev, 80, 32);
    b43legacy_radio_write16(dev, 90, 112);
    b43legacy_radio_write16(dev, 91, 123);
    b43legacy_radio_write16(dev, 92, 176);
  } else {
  }
  tmp___6 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((u16 )(((int )((short )tmp___6) & 255) | 7)));
  b43legacy_radio_selectchannel(dev, (int )old_channel, 0);
  b43legacy_phy_write(dev, 20, 512);
  if ((unsigned int )phy->radio_rev > 5U) {
    b43legacy_phy_write(dev, 42, 35010);
  } else {
    b43legacy_phy_write(dev, 42, 35520);
  }
  b43legacy_phy_write(dev, 56, 1640);
  b43legacy_radio_set_txpower_bg(dev, 65535, 65535, 65535);
  if ((unsigned int )phy->radio_rev == 4U || (unsigned int )phy->radio_rev == 5U) {
    tmp___7 = b43legacy_phy_read(dev, 93);
    b43legacy_phy_write(dev, 93, (int )((u16 )(((int )((short )tmp___7) & -128) | 3)));
  } else {
  }
  if ((unsigned int )phy->radio_rev <= 2U) {
    b43legacy_radio_write16(dev, 93, 13);
  } else {
  }
  if ((unsigned int )phy->analog == 4U) {
    b43legacy_write16(dev, 996, 9);
    tmp___8 = b43legacy_phy_read(dev, 97);
    b43legacy_phy_write(dev, 97, (int )tmp___8 & 4095);
  } else {
    tmp___9 = b43legacy_phy_read(dev, 2);
    b43legacy_phy_write(dev, 2, (int )((u16 )(((int )((short )tmp___9) & -64) | 4)));
  }
  if ((unsigned int )phy->type == 2U) {
    b43legacy_write16(dev, 998, 0);
  } else {
  }
  if ((unsigned int )phy->type == 1U) {
    b43legacy_write16(dev, 998, 33088);
    b43legacy_phy_write(dev, 22, 1040);
    b43legacy_phy_write(dev, 23, 2080);
    b43legacy_phy_write(dev, 98, 7);
    b43legacy_radio_init2050(dev);
    b43legacy_phy_lo_g_measure(dev);
    if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) != 0) {
      b43legacy_calc_nrssi_slope(dev);
      b43legacy_calc_nrssi_threshold(dev);
    } else {
    }
    b43legacy_phy_init_pctl(dev);
  } else {
  }
  return;
}
}
static void b43legacy_calc_loopback_gain(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 backup_phy[15U] ;
  unsigned int tmp ;
  u16 backup_radio[3U] ;
  u16 backup_bband ;
  u16 i ;
  u16 loop1_cnt ;
  u16 loop1_done ;
  u16 loop1_omitted ;
  u16 loop2_done ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  u16 tmp___27 ;
  u16 tmp___28 ;
  u16 tmp___29 ;
  u16 tmp___30 ;
  u16 tmp___31 ;
  u16 tmp___32 ;
  u16 tmp___33 ;
  u16 tmp___34 ;
  {
  phy = & dev->phy;
  backup_phy[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 15U) {
      break;
    } else {
    }
    backup_phy[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  backup_phy[0] = b43legacy_phy_read(dev, 1065);
  backup_phy[1] = b43legacy_phy_read(dev, 1);
  backup_phy[2] = b43legacy_phy_read(dev, 2065);
  backup_phy[3] = b43legacy_phy_read(dev, 2066);
  if ((unsigned int )phy->rev != 1U) {
    backup_phy[4] = b43legacy_phy_read(dev, 2068);
    backup_phy[5] = b43legacy_phy_read(dev, 2069);
  } else {
  }
  backup_phy[6] = b43legacy_phy_read(dev, 90);
  backup_phy[7] = b43legacy_phy_read(dev, 89);
  backup_phy[8] = b43legacy_phy_read(dev, 88);
  backup_phy[9] = b43legacy_phy_read(dev, 10);
  backup_phy[10] = b43legacy_phy_read(dev, 3);
  backup_phy[11] = b43legacy_phy_read(dev, 2063);
  backup_phy[12] = b43legacy_phy_read(dev, 2064);
  backup_phy[13] = b43legacy_phy_read(dev, 43);
  backup_phy[14] = b43legacy_phy_read(dev, 21);
  b43legacy_phy_read(dev, 45);
  backup_bband = phy->__annonCompField105.bbatt;
  backup_radio[0] = b43legacy_radio_read16(dev, 82);
  backup_radio[1] = b43legacy_radio_read16(dev, 67);
  backup_radio[2] = b43legacy_radio_read16(dev, 122);
  tmp___0 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )tmp___0 & 16383);
  tmp___1 = b43legacy_phy_read(dev, 1);
  b43legacy_phy_write(dev, 1, (int )tmp___1 & 32768);
  tmp___2 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___2 | 2U));
  tmp___3 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )tmp___3 & 65533);
  tmp___4 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___4 | 1U));
  tmp___5 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )tmp___5 & 65534);
  if ((unsigned int )phy->rev != 1U) {
    tmp___6 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___6 | 1U));
    tmp___7 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___7 & 65534);
    tmp___8 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___8 | 2U));
    tmp___9 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___9 & 65533);
  } else {
  }
  tmp___10 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___10 | 12U));
  tmp___11 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )((unsigned int )tmp___11 | 12U));
  tmp___12 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___12 | 48U));
  tmp___13 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___13) & -49) | 16)));
  b43legacy_phy_write(dev, 90, 1920);
  b43legacy_phy_write(dev, 89, 51216);
  b43legacy_phy_write(dev, 88, 13);
  if ((unsigned int )phy->analog == 0U) {
    b43legacy_phy_write(dev, 3, 290);
  } else {
    tmp___14 = b43legacy_phy_read(dev, 10);
    b43legacy_phy_write(dev, 10, (int )((unsigned int )tmp___14 | 8192U));
  }
  if ((unsigned int )phy->rev != 1U) {
    tmp___15 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___15 | 4U));
    tmp___16 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___16 & 65531);
  } else {
  }
  tmp___17 = b43legacy_phy_read(dev, 3);
  b43legacy_phy_write(dev, 3, (int )((u16 )(((int )((short )tmp___17) & -97) | 64)));
  if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev == 2U) {
    b43legacy_radio_write16(dev, 82, 0);
    tmp___18 = b43legacy_radio_read16(dev, 67);
    b43legacy_radio_write16(dev, 67, (int )((u16 )(((int )((short )tmp___18) & -16) | 9)));
    loop1_cnt = 9U;
  } else
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_radio_write16(dev, 67, 15);
    loop1_cnt = 15U;
  } else {
    loop1_cnt = 0U;
  }
  b43legacy_phy_set_baseband_attenuation(dev, 11);
  if ((unsigned int )phy->rev > 2U) {
    b43legacy_phy_write(dev, 2063, 49184);
  } else {
    b43legacy_phy_write(dev, 2063, 32800);
  }
  b43legacy_phy_write(dev, 2064, 0);
  tmp___19 = b43legacy_phy_read(dev, 43);
  b43legacy_phy_write(dev, 43, (int )((u16 )(((int )((short )tmp___19) & -64) | 1)));
  tmp___20 = b43legacy_phy_read(dev, 43);
  b43legacy_phy_write(dev, 43, (int )((u16 )(((int )((short )tmp___20) & -16129) | 2048)));
  tmp___21 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___21 | 256U));
  tmp___22 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )tmp___22 & 53247);
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 4096) != 0) {
    if ((unsigned int )phy->rev > 6U) {
      tmp___23 = b43legacy_phy_read(dev, 2065);
      b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___23 | 2048U));
      tmp___24 = b43legacy_phy_read(dev, 2066);
      b43legacy_phy_write(dev, 2066, (int )((unsigned int )tmp___24 | 32768U));
    } else {
    }
  } else {
  }
  tmp___25 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )tmp___25 & 247);
  i = 0U;
  goto ldv_53246;
  ldv_53245:
  b43legacy_radio_write16(dev, 67, (int )loop1_cnt);
  tmp___26 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___26) & -3841) | (int )((short )((int )i << 8)))));
  tmp___27 = b43legacy_phy_read(dev, 21);
  b43legacy_phy_write(dev, 21, (int )((u16 )(((int )((short )tmp___27) & 4095) | -24576)));
  tmp___28 = b43legacy_phy_read(dev, 21);
  b43legacy_phy_write(dev, 21, (int )((unsigned int )tmp___28 | 61440U));
  __const_udelay(85900UL);
  tmp___29 = b43legacy_phy_read(dev, 45);
  if ((unsigned int )tmp___29 > 3579U) {
    goto ldv_53244;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53246: ;
  if ((int )i < (int )loop1_cnt) {
    goto ldv_53245;
  } else {
  }
  ldv_53244:
  loop1_done = i;
  loop1_omitted = (int )loop1_cnt - (int )loop1_done;
  loop2_done = 0U;
  if ((unsigned int )loop1_done > 7U) {
    tmp___30 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )tmp___30 | 48U));
    i = (unsigned int )loop1_done + 65528U;
    goto ldv_53249;
    ldv_53248:
    tmp___31 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___31) & -3841) | (int )((short )((int )i << 8)))));
    tmp___32 = b43legacy_phy_read(dev, 21);
    b43legacy_phy_write(dev, 21, (int )((u16 )(((int )((short )tmp___32) & 4095) | -24576)));
    tmp___33 = b43legacy_phy_read(dev, 21);
    b43legacy_phy_write(dev, 21, (int )((unsigned int )tmp___33 | 61440U));
    __const_udelay(85900UL);
    tmp___34 = b43legacy_phy_read(dev, 45);
    if ((unsigned int )tmp___34 > 3579U) {
      goto ldv_53247;
    } else {
    }
    i = (u16 )((int )i + 1);
    ldv_53249: ;
    if ((unsigned int )i <= 15U) {
      goto ldv_53248;
    } else {
    }
    ldv_53247: ;
  } else {
  }
  if ((unsigned int )phy->rev != 1U) {
    b43legacy_phy_write(dev, 2068, (int )backup_phy[4]);
    b43legacy_phy_write(dev, 2069, (int )backup_phy[5]);
  } else {
  }
  b43legacy_phy_write(dev, 90, (int )backup_phy[6]);
  b43legacy_phy_write(dev, 89, (int )backup_phy[7]);
  b43legacy_phy_write(dev, 88, (int )backup_phy[8]);
  b43legacy_phy_write(dev, 10, (int )backup_phy[9]);
  b43legacy_phy_write(dev, 3, (int )backup_phy[10]);
  b43legacy_phy_write(dev, 2063, (int )backup_phy[11]);
  b43legacy_phy_write(dev, 2064, (int )backup_phy[12]);
  b43legacy_phy_write(dev, 43, (int )backup_phy[13]);
  b43legacy_phy_write(dev, 21, (int )backup_phy[14]);
  b43legacy_phy_set_baseband_attenuation(dev, (int )backup_bband);
  b43legacy_radio_write16(dev, 82, (int )backup_radio[0]);
  b43legacy_radio_write16(dev, 67, (int )backup_radio[1]);
  b43legacy_radio_write16(dev, 122, (int )backup_radio[2]);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )backup_phy[2] | 3U));
  __const_udelay(42950UL);
  b43legacy_phy_write(dev, 2065, (int )backup_phy[2]);
  b43legacy_phy_write(dev, 2066, (int )backup_phy[3]);
  b43legacy_phy_write(dev, 1065, (int )backup_phy[0]);
  b43legacy_phy_write(dev, 1, (int )backup_phy[1]);
  phy->loopback_gain[0] = ((unsigned int )loop1_done * 6U + (unsigned int )loop1_omitted * 65532U) + 65525U;
  phy->loopback_gain[1] = (unsigned int )loop2_done * 65530U + 48U;
  return;
}
}
static void b43legacy_phy_initg(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  int __ret_warn_on ;
  long tmp___6 ;
  int __ret_warn_on___0 ;
  long tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->rev == 1U) {
    b43legacy_phy_initb5(dev);
  } else {
    b43legacy_phy_initb6(dev);
  }
  if ((unsigned int )phy->rev > 1U && (int )phy->gmode) {
    b43legacy_phy_inita(dev);
  } else {
  }
  if ((unsigned int )phy->rev > 1U) {
    b43legacy_phy_write(dev, 2068, 0);
    b43legacy_phy_write(dev, 2069, 0);
  } else {
  }
  if ((unsigned int )phy->rev == 2U) {
    b43legacy_phy_write(dev, 2065, 0);
    b43legacy_phy_write(dev, 21, 192);
  } else {
  }
  if ((unsigned int )phy->rev > 5U) {
    b43legacy_phy_write(dev, 2065, 1024);
    b43legacy_phy_write(dev, 21, 192);
  } else {
  }
  if ((int )phy->gmode) {
    tmp___0 = b43legacy_phy_read(dev, 1024);
    tmp = (unsigned int )tmp___0 & 255U;
    if ((unsigned int )tmp == 3U) {
      b43legacy_phy_write(dev, 1218, 6166);
      b43legacy_phy_write(dev, 1219, 34310);
    } else {
    }
    if ((unsigned int )tmp == 4U || (unsigned int )tmp == 5U) {
      b43legacy_phy_write(dev, 1218, 6166);
      b43legacy_phy_write(dev, 1219, 32774);
      tmp___1 = b43legacy_phy_read(dev, 1228);
      b43legacy_phy_write(dev, 1228, (int )((u16 )(((int )((short )tmp___1) & 255) | 7936)));
    } else {
    }
    if ((unsigned int )phy->rev > 1U) {
      b43legacy_phy_write(dev, 1150, 120);
    } else {
    }
  } else {
  }
  if ((unsigned int )phy->radio_rev == 8U) {
    tmp___2 = b43legacy_phy_read(dev, 2049);
    b43legacy_phy_write(dev, 2049, (int )((unsigned int )tmp___2 | 128U));
    tmp___3 = b43legacy_phy_read(dev, 1086);
    b43legacy_phy_write(dev, 1086, (int )((unsigned int )tmp___3 | 4U));
  } else {
  }
  if ((unsigned int )phy->rev > 1U && (int )phy->gmode) {
    b43legacy_calc_loopback_gain(dev);
  } else {
  }
  if ((unsigned int )phy->radio_rev != 8U) {
    if ((unsigned int )phy->initval == 65535U) {
      phy->initval = b43legacy_radio_init2050(dev);
    } else {
      b43legacy_radio_write16(dev, 120, (int )phy->initval);
    }
  } else {
  }
  if ((unsigned int )phy->__annonCompField105.txctl2 == 65535U) {
    b43legacy_phy_lo_g_measure(dev);
  } else {
    if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev == 8U) {
      b43legacy_radio_write16(dev, 82, (int )((u16 )((int )((short )((int )phy->__annonCompField105.txctl1 << 4)) | (int )((short )phy->__annonCompField105.txctl2))));
    } else {
      tmp___4 = b43legacy_radio_read16(dev, 82);
      b43legacy_radio_write16(dev, 82, (int )((u16 )(((int )((short )tmp___4) & -16) | (int )((short )phy->__annonCompField105.txctl1))));
    }
    if ((unsigned int )phy->rev > 5U) {
      tmp___5 = b43legacy_phy_read(dev, 54);
      b43legacy_phy_write(dev, 54, (int )((u16 )(((int )((short )tmp___5) & 4095) | (int )((short )((int )phy->__annonCompField105.txctl2 << 12)))));
    } else {
    }
    if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 2) != 0) {
      b43legacy_phy_write(dev, 46, 32885);
    } else {
      b43legacy_phy_write(dev, 46, 32895);
    }
    if ((unsigned int )phy->rev <= 1U) {
      b43legacy_phy_write(dev, 47, 257);
    } else {
      b43legacy_phy_write(dev, 47, 514);
    }
  }
  if ((int )phy->gmode) {
    b43legacy_phy_lo_adjust(dev, 0);
    b43legacy_phy_write(dev, 2063, 32888);
  } else {
  }
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) == 0) {
    b43legacy_nrssi_hw_update(dev, 65535);
    b43legacy_calc_nrssi_threshold(dev);
  } else
  if ((int )phy->gmode || (unsigned int )phy->rev > 1U) {
    if ((int )phy->nrssi[0] == -1000) {
      __ret_warn_on = (int )phy->nrssi[1] != -1000;
      tmp___6 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___6 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                           1105);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      b43legacy_calc_nrssi_slope(dev);
    } else {
      __ret_warn_on___0 = (int )phy->nrssi[1] == -1000;
      tmp___7 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___7 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                           1108);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      b43legacy_calc_nrssi_threshold(dev);
    }
  } else {
  }
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_phy_write(dev, 2053, 12848);
  } else {
  }
  b43legacy_phy_init_pctl(dev);
  if ((unsigned int )((dev->dev)->bus)->chip_id == 17158U && (unsigned int )((dev->dev)->bus)->chip_package == 2U) {
    tmp___8 = b43legacy_phy_read(dev, 1065);
    b43legacy_phy_write(dev, 1065, (int )tmp___8 & 49151);
    tmp___9 = b43legacy_phy_read(dev, 1219);
    b43legacy_phy_write(dev, 1219, (int )tmp___9 & 32767);
  } else {
  }
  return;
}
}
static u16 b43legacy_phy_lo_b_r15_loop(struct b43legacy_wldev *dev )
{
  int i ;
  u16 ret ;
  unsigned long flags ;
  u16 tmp ;
  int tmp___0 ;
  {
  ret = 0U;
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  i = 0;
  goto ldv_53269;
  ldv_53268:
  b43legacy_phy_write(dev, 21, 44960);
  __const_udelay(4295UL);
  b43legacy_phy_write(dev, 21, 61344);
  __const_udelay(42950UL);
  b43legacy_phy_write(dev, 21, 65440);
  __const_udelay(171800UL);
  tmp = b43legacy_phy_read(dev, 44);
  ret = (int )tmp + (int )ret;
  i = i + 1;
  ldv_53269: ;
  if (i <= 9) {
    goto ldv_53268;
  } else {
  }
  tmp___0 = arch_irqs_disabled_flags(flags);
  if (tmp___0 != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  b43legacy_voluntary_preempt();
  return (ret);
}
}
void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 regstack[12U] ;
  unsigned int tmp ;
  u16 mls ;
  u16 fval ;
  int i ;
  int j ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  {
  phy = & dev->phy;
  regstack[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 12U) {
      break;
    } else {
    }
    regstack[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  regstack[0] = b43legacy_phy_read(dev, 21);
  tmp___0 = b43legacy_radio_read16(dev, 82);
  regstack[1] = (unsigned int )tmp___0 & 65520U;
  if ((unsigned int )phy->radio_ver == 8275U) {
    regstack[2] = b43legacy_phy_read(dev, 10);
    regstack[3] = b43legacy_phy_read(dev, 42);
    regstack[4] = b43legacy_phy_read(dev, 53);
    regstack[5] = b43legacy_phy_read(dev, 3);
    regstack[6] = b43legacy_phy_read(dev, 1);
    regstack[7] = b43legacy_phy_read(dev, 48);
    regstack[8] = b43legacy_radio_read16(dev, 67);
    regstack[9] = b43legacy_radio_read16(dev, 122);
    regstack[10] = b43legacy_read16(dev, 1004);
    tmp___1 = b43legacy_radio_read16(dev, 82);
    regstack[11] = (unsigned int )tmp___1 & 240U;
    b43legacy_phy_write(dev, 48, 255);
    b43legacy_write16(dev, 1004, 16191);
    b43legacy_phy_write(dev, 53, (int )regstack[4] & 65407);
    b43legacy_radio_write16(dev, 122, (int )regstack[9] & 65520);
  } else {
  }
  b43legacy_phy_write(dev, 21, 45056);
  b43legacy_phy_write(dev, 43, 4);
  if ((unsigned int )phy->radio_ver == 8275U) {
    b43legacy_phy_write(dev, 43, 515);
    b43legacy_phy_write(dev, 42, 2211);
  } else {
  }
  phy->minlowsig[0] = 65535U;
  i = 0;
  goto ldv_53291;
  ldv_53290:
  b43legacy_radio_write16(dev, 82, (int )((u16 )((int )((short )regstack[1]) | (int )((short )i))));
  b43legacy_phy_lo_b_r15_loop(dev);
  i = i + 1;
  ldv_53291: ;
  if (i <= 3) {
    goto ldv_53290;
  } else {
  }
  i = 0;
  goto ldv_53294;
  ldv_53293:
  b43legacy_radio_write16(dev, 82, (int )((u16 )((int )((short )regstack[1]) | (int )((short )i))));
  tmp___2 = b43legacy_phy_lo_b_r15_loop(dev);
  mls = (u16 )((unsigned int )tmp___2 / 10U);
  if ((int )phy->minlowsig[0] > (int )mls) {
    phy->minlowsig[0] = mls;
    phy->minlowsigpos[0] = (u16 )i;
  } else {
  }
  i = i + 1;
  ldv_53294: ;
  if (i <= 9) {
    goto ldv_53293;
  } else {
  }
  b43legacy_radio_write16(dev, 82, (int )regstack[1] | (int )phy->minlowsigpos[0]);
  phy->minlowsig[1] = 65535U;
  i = -4;
  goto ldv_53300;
  ldv_53299:
  j = -4;
  goto ldv_53297;
  ldv_53296: ;
  if (j < 0) {
    fval = ((unsigned int )((u16 )i) * 256U + (unsigned int )((u16 )j)) + 256U;
  } else {
    fval = (unsigned int )((u16 )i) * 256U + (unsigned int )((u16 )j);
  }
  b43legacy_phy_write(dev, 47, (int )fval);
  tmp___3 = b43legacy_phy_lo_b_r15_loop(dev);
  mls = (u16 )((unsigned int )tmp___3 / 10U);
  if ((int )phy->minlowsig[1] > (int )mls) {
    phy->minlowsig[1] = mls;
    phy->minlowsigpos[1] = fval;
  } else {
  }
  j = j + 2;
  ldv_53297: ;
  if (j <= 4) {
    goto ldv_53296;
  } else {
  }
  i = i + 2;
  ldv_53300: ;
  if (i <= 4) {
    goto ldv_53299;
  } else {
  }
  phy->minlowsigpos[1] = (unsigned int )phy->minlowsigpos[1] + 257U;
  b43legacy_phy_write(dev, 47, (int )phy->minlowsigpos[1]);
  if ((unsigned int )phy->radio_ver == 8275U) {
    b43legacy_phy_write(dev, 10, (int )regstack[2]);
    b43legacy_phy_write(dev, 42, (int )regstack[3]);
    b43legacy_phy_write(dev, 53, (int )regstack[4]);
    b43legacy_phy_write(dev, 3, (int )regstack[5]);
    b43legacy_phy_write(dev, 1, (int )regstack[6]);
    b43legacy_phy_write(dev, 48, (int )regstack[7]);
    b43legacy_radio_write16(dev, 67, (int )regstack[8]);
    b43legacy_radio_write16(dev, 122, (int )regstack[9]);
    tmp___4 = b43legacy_radio_read16(dev, 82);
    b43legacy_radio_write16(dev, 82, (int )((u16 )(((int )((short )tmp___4) & 15) | (int )((short )regstack[11]))));
    b43legacy_write16(dev, 1004, (int )regstack[10]);
  } else {
  }
  b43legacy_phy_write(dev, 21, (int )regstack[0]);
  return;
}
}
__inline static u16 b43legacy_phy_lo_g_deviation_subval(struct b43legacy_wldev *dev ,
                                                        u16 control )
{
  struct b43legacy_phy *phy ;
  u16 ret ;
  unsigned long flags ;
  int tmp ;
  {
  phy = & dev->phy;
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 21, 58112);
    control = (int )control << 8U;
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )control | 176U));
    __const_udelay(21475UL);
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )control | 178U));
    __const_udelay(8590UL);
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )control | 179U));
    __const_udelay(17180UL);
    b43legacy_phy_write(dev, 21, 62208);
    __const_udelay(34360UL);
  } else {
    b43legacy_phy_write(dev, 21, (int )((unsigned int )control | 61344U));
    __const_udelay(8590UL);
    b43legacy_phy_write(dev, 21, (int )((unsigned int )control | 61408U));
    __const_udelay(17180UL);
    b43legacy_phy_write(dev, 21, (int )((unsigned int )control | 65504U));
    __const_udelay(34360UL);
  }
  ret = b43legacy_phy_read(dev, 45);
  tmp = arch_irqs_disabled_flags(flags);
  if (tmp != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  b43legacy_voluntary_preempt();
  return (ret);
}
}
static u32 b43legacy_phy_lo_g_singledeviation(struct b43legacy_wldev *dev , u16 control )
{
  int i ;
  u32 ret ;
  u16 tmp ;
  {
  ret = 0U;
  i = 0;
  goto ldv_53329;
  ldv_53328:
  tmp = b43legacy_phy_lo_g_deviation_subval(dev, (int )control);
  ret = (u32 )tmp + ret;
  i = i + 1;
  ldv_53329: ;
  if (i <= 7) {
    goto ldv_53328;
  } else {
  }
  return (ret);
}
}
__inline static void b43legacy_lo_write(struct b43legacy_wldev *dev , struct b43legacy_lopair *pair )
{
  u16 value ;
  {
  value = (u16 )((unsigned char )pair->low);
  value = (u16 )((int )((short )((int )((unsigned char )pair->high) << 8)) | (int )((short )value));
  if ((((int )pair->low < -8 || (int )pair->low > 8) || (int )pair->high < -8) || (int )pair->high > 8) {
    b43legacydbg(dev->wl, "WARNING: Writing invalid LOpair (low: %d, high: %d)\n",
                 (int )pair->low, (int )pair->high);
    dump_stack();
  } else {
  }
  b43legacy_phy_write(dev, 2064, (int )value);
  return;
}
}
__inline static struct b43legacy_lopair *b43legacy_find_lopair(struct b43legacy_wldev *dev ,
                                                               u16 bbatt , u16 rfatt ,
                                                               u16 tx )
{
  u8 dict[10U] ;
  struct b43legacy_phy *phy ;
  int __ret_warn_on ;
  long tmp ;
  struct b43legacy_lopair *tmp___0 ;
  struct b43legacy_lopair *tmp___1 ;
  {
  dict[0] = 11U;
  dict[1] = 10U;
  dict[2] = 11U;
  dict[3] = 12U;
  dict[4] = 13U;
  dict[5] = 12U;
  dict[6] = 13U;
  dict[7] = 12U;
  dict[8] = 13U;
  dict[9] = 12U;
  phy = & dev->phy;
  if ((unsigned int )bbatt > 6U) {
    bbatt = 6U;
  } else {
  }
  __ret_warn_on = (unsigned int )rfatt > 9U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       1323);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned int )tx == 3U) {
    tmp___0 = b43legacy_get_lopair(phy, (int )rfatt, (int )bbatt);
    return (tmp___0);
  } else {
  }
  tmp___1 = b43legacy_get_lopair(phy, (int )dict[(int )rfatt], (int )bbatt);
  return (tmp___1);
}
}
__inline static struct b43legacy_lopair *b43legacy_current_lopair(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  struct b43legacy_lopair *tmp ;
  {
  phy = & dev->phy;
  tmp = b43legacy_find_lopair(dev, (int )phy->__annonCompField105.bbatt, (int )phy->__annonCompField105.rfatt,
                              (int )phy->__annonCompField105.txctl1);
  return (tmp);
}
}
void b43legacy_phy_lo_adjust(struct b43legacy_wldev *dev , int fixed )
{
  struct b43legacy_lopair *pair ;
  {
  if (fixed != 0) {
    pair = b43legacy_find_lopair(dev, 2, 3, 0);
  } else {
    pair = b43legacy_current_lopair(dev);
  }
  b43legacy_lo_write(dev, pair);
  return;
}
}
static void b43legacy_phy_lo_g_measure_txctl2(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 txctl2 ;
  u16 i ;
  u32 smallest ;
  u32 tmp ;
  {
  phy = & dev->phy;
  txctl2 = 0U;
  b43legacy_radio_write16(dev, 82, 0);
  __const_udelay(42950UL);
  smallest = b43legacy_phy_lo_g_singledeviation(dev, 0);
  i = 0U;
  goto ldv_53364;
  ldv_53363:
  b43legacy_radio_write16(dev, 82, (int )i);
  __const_udelay(42950UL);
  tmp = b43legacy_phy_lo_g_singledeviation(dev, 0);
  if (tmp < smallest) {
    smallest = tmp;
    txctl2 = i;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53364: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_53363;
  } else {
  }
  phy->__annonCompField105.txctl2 = txctl2;
  return;
}
}
static void b43legacy_phy_lo_g_state(struct b43legacy_wldev *dev , struct b43legacy_lopair const *in_pair ,
                                     struct b43legacy_lopair *out_pair , u16 r27 )
{
  struct b43legacy_lopair transitions[8U] ;
  struct b43legacy_lopair lowest_transition ;
  struct b43legacy_lopair tmp_pair ;
  struct b43legacy_lopair transition ;
  int i ;
  int state ;
  int found_lower ;
  int j ;
  int begin ;
  int end ;
  u32 lowest_deviation ;
  u32 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  long ret ;
  int __x___0 ;
  long ret___0 ;
  int __x___2 ;
  int tmp___2 ;
  {
  transitions[0].low = 1;
  transitions[0].high = 1;
  transitions[0].used = (unsigned char)0;
  transitions[1].low = 0;
  transitions[1].high = 1;
  transitions[1].used = (unsigned char)0;
  transitions[2].low = -1;
  transitions[2].high = 1;
  transitions[2].used = (unsigned char)0;
  transitions[3].low = -1;
  transitions[3].high = 0;
  transitions[3].used = (unsigned char)0;
  transitions[4].low = -1;
  transitions[4].high = -1;
  transitions[4].used = (unsigned char)0;
  transitions[5].low = 0;
  transitions[5].high = -1;
  transitions[5].used = (unsigned char)0;
  transitions[6].low = 1;
  transitions[6].high = -1;
  transitions[6].used = (unsigned char)0;
  transitions[7].low = 1;
  transitions[7].high = 0;
  transitions[7].used = (unsigned char)0;
  lowest_transition.low = in_pair->low;
  lowest_transition.high = in_pair->high;
  lowest_transition.used = (unsigned char)0;
  i = 12;
  state = 0;
  b43legacy_lo_write(dev, & lowest_transition);
  lowest_deviation = b43legacy_phy_lo_g_singledeviation(dev, (int )r27);
  ldv_53398:
  found_lower = 0;
  __ret_warn_on = state < 0 || state > 8;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       1413);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (state == 0) {
    begin = 1;
    end = 8;
  } else
  if (((unsigned int )state & 1U) == 0U) {
    begin = state + -1;
    end = state + 1;
  } else {
    begin = state + -2;
    end = state + 2;
  }
  if (begin <= 0) {
    begin = begin + 8;
  } else {
  }
  if (end > 8) {
    end = end + -8;
  } else {
  }
  j = begin;
  tmp_pair.high = lowest_transition.high;
  tmp_pair.low = lowest_transition.low;
  ldv_53397:
  __ret_warn_on___0 = j <= 0 || j > 8;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       1433);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  transition.high = (s8 )((int )((unsigned char )tmp_pair.high) + (int )((unsigned char )transitions[j + -1].high));
  transition.low = (s8 )((int )((unsigned char )tmp_pair.low) + (int )((unsigned char )transitions[j + -1].low));
  __x___0 = (int )transition.low;
  ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  if (ret <= 8L) {
    __x___2 = (int )transition.high;
    ret___0 = (long )(__x___2 < 0 ? - __x___2 : __x___2);
    if (ret___0 <= 8L) {
      b43legacy_lo_write(dev, & transition);
      tmp = b43legacy_phy_lo_g_singledeviation(dev, (int )r27);
      if (tmp < lowest_deviation) {
        lowest_deviation = tmp;
        state = j;
        found_lower = 1;
        lowest_transition.high = transition.high;
        lowest_transition.low = transition.low;
      } else {
      }
    } else {
    }
  } else {
  }
  if (j == end) {
    goto ldv_53396;
  } else {
  }
  if (j == 8) {
    j = 1;
  } else {
    j = j + 1;
  }
  goto ldv_53397;
  ldv_53396:
  tmp___2 = i;
  i = i - 1;
  if (tmp___2 != 0 && found_lower != 0) {
    goto ldv_53398;
  } else {
  }
  out_pair->high = lowest_transition.high;
  out_pair->low = lowest_transition.low;
  return;
}
}
void b43legacy_phy_set_baseband_attenuation(struct b43legacy_wldev *dev , u16 bbatt )
{
  struct b43legacy_phy *phy ;
  u16 value ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->analog == 0U) {
    tmp = b43legacy_read16(dev, 998);
    value = (unsigned int )tmp & 65520U;
    value = (u16 )(((int )((short )bbatt) & 15) | (int )((short )value));
    b43legacy_write16(dev, 998, (int )value);
    return;
  } else {
  }
  if ((unsigned int )phy->analog > 1U) {
    tmp___0 = b43legacy_phy_read(dev, 96);
    value = (unsigned int )tmp___0 & 65475U;
    value = (u16 )(((int )((short )((int )bbatt << 2)) & 60) | (int )((short )value));
  } else {
    tmp___1 = b43legacy_phy_read(dev, 96);
    value = (unsigned int )tmp___1 & 65415U;
    value = (u16 )(((int )((short )((int )bbatt << 3)) & 120) | (int )((short )value));
  }
  b43legacy_phy_write(dev, 96, (int )value);
  return;
}
}
void b43legacy_phy_lo_g_measure(struct b43legacy_wldev *dev )
{
  u8 pairorder[10U] ;
  int is_initializing ;
  int tmp ;
  struct b43legacy_phy *phy ;
  u16 h ;
  u16 i ;
  u16 oldi ;
  u16 j ;
  struct b43legacy_lopair control ;
  struct b43legacy_lopair *tmp_control ;
  u16 tmp___0 ;
  u16 regstack[16U] ;
  unsigned int tmp___1 ;
  u8 oldchannel ;
  u8 r27 ;
  u16 r31 ;
  u16 tmp___2 ;
  {
  pairorder[0] = 3U;
  pairorder[1] = 1U;
  pairorder[2] = 5U;
  pairorder[3] = 7U;
  pairorder[4] = 9U;
  pairorder[5] = 2U;
  pairorder[6] = 0U;
  pairorder[7] = 4U;
  pairorder[8] = 6U;
  pairorder[9] = 8U;
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  is_initializing = tmp <= 1;
  phy = & dev->phy;
  oldi = 0U;
  regstack[0] = 0U;
  tmp___1 = 1U;
  while (1) {
    if (tmp___1 >= 16U) {
      break;
    } else {
    }
    regstack[tmp___1] = (unsigned short)0;
    tmp___1 = tmp___1 + 1U;
  }
  r27 = 0U;
  oldchannel = phy->channel;
  if ((int )phy->gmode) {
    regstack[0] = b43legacy_phy_read(dev, 1065);
    regstack[1] = b43legacy_phy_read(dev, 2050);
    b43legacy_phy_write(dev, 1065, (int )regstack[0] & 32767);
    b43legacy_phy_write(dev, 2050, (int )regstack[1] & 65532);
  } else {
  }
  regstack[3] = b43legacy_read16(dev, 994);
  b43legacy_write16(dev, 994, (int )((unsigned int )regstack[3] | 32768U));
  regstack[4] = b43legacy_read16(dev, 1012);
  regstack[5] = b43legacy_phy_read(dev, 21);
  regstack[6] = b43legacy_phy_read(dev, 42);
  regstack[7] = b43legacy_phy_read(dev, 53);
  regstack[8] = b43legacy_phy_read(dev, 96);
  regstack[9] = b43legacy_radio_read16(dev, 67);
  regstack[10] = b43legacy_radio_read16(dev, 122);
  regstack[11] = b43legacy_radio_read16(dev, 82);
  if ((int )phy->gmode) {
    regstack[12] = b43legacy_phy_read(dev, 2065);
    regstack[13] = b43legacy_phy_read(dev, 2066);
    regstack[14] = b43legacy_phy_read(dev, 2068);
    regstack[15] = b43legacy_phy_read(dev, 2069);
  } else {
  }
  b43legacy_radio_selectchannel(dev, 6, 0);
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 1065, (int )regstack[0] & 32767);
    b43legacy_phy_write(dev, 2050, (int )regstack[1] & 65532);
    b43legacy_dummy_transmission(dev);
  } else {
  }
  b43legacy_radio_write16(dev, 67, 6);
  b43legacy_phy_set_baseband_attenuation(dev, 2);
  b43legacy_write16(dev, 1012, 0);
  b43legacy_phy_write(dev, 46, 127);
  b43legacy_phy_write(dev, 2063, 120);
  b43legacy_phy_write(dev, 53, (int )regstack[7] & 65407);
  b43legacy_radio_write16(dev, 122, (int )regstack[10] & 65520);
  b43legacy_phy_write(dev, 43, 515);
  b43legacy_phy_write(dev, 42, 2211);
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )regstack[14] | 3U));
    b43legacy_phy_write(dev, 2069, (int )regstack[15] & 65532);
    b43legacy_phy_write(dev, 2065, 435);
    b43legacy_phy_write(dev, 2066, 178);
  } else {
  }
  if (is_initializing != 0) {
    b43legacy_phy_lo_g_measure_txctl2(dev);
  } else {
  }
  b43legacy_phy_write(dev, 2063, 32888);
  control.low = 0;
  control.high = 0;
  h = 0U;
  goto ldv_53428;
  ldv_53427:
  i = (u16 )pairorder[(int )h];
  if (is_initializing != 0) {
    if ((unsigned int )i == 3U) {
      control.low = 0;
      control.high = 0;
    } else
    if (((int )i & 1 && (int )oldi & 1) || (((unsigned int )i & 1U) == 0U && ((unsigned int )oldi & 1U) == 0U)) {
      tmp_control = b43legacy_get_lopair(phy, (int )oldi, 0);
      memcpy((void *)(& control), (void const *)tmp_control, 3UL);
    } else {
      tmp_control = b43legacy_get_lopair(phy, 3, 0);
      memcpy((void *)(& control), (void const *)tmp_control, 3UL);
    }
  } else {
  }
  j = 0U;
  goto ldv_53425;
  ldv_53424: ;
  if (is_initializing != 0) {
    tmp___0 = (unsigned int )i * 2U + (unsigned int )j;
    r27 = 0U;
    r31 = 0U;
    if ((unsigned int )tmp___0 > 14U) {
      r31 = 1U;
      if ((unsigned int )tmp___0 > 17U) {
        r27 = 1U;
      } else {
      }
      if ((unsigned int )tmp___0 > 19U) {
        r27 = 2U;
      } else {
      }
    } else {
    }
  } else {
    tmp_control = b43legacy_get_lopair(phy, (int )i, (int )((unsigned int )j * 2U));
    if ((unsigned int )*((unsigned char *)tmp_control + 2UL) == 0U) {
      goto ldv_53423;
    } else {
    }
    memcpy((void *)(& control), (void const *)tmp_control, 3UL);
    r27 = 3U;
    r31 = 0U;
  }
  b43legacy_radio_write16(dev, 67, (int )i);
  b43legacy_radio_write16(dev, 82, (int )phy->__annonCompField105.txctl2);
  __const_udelay(42950UL);
  b43legacy_voluntary_preempt();
  b43legacy_phy_set_baseband_attenuation(dev, (int )((unsigned int )j * 2U));
  tmp___0 = (unsigned int )regstack[10] & 65520U;
  if ((unsigned int )r31 != 0U) {
    tmp___0 = (u16 )((unsigned int )tmp___0 | 8U);
  } else {
  }
  b43legacy_radio_write16(dev, 122, (int )tmp___0);
  tmp_control = b43legacy_get_lopair(phy, (int )i, (int )((unsigned int )j * 2U));
  b43legacy_phy_lo_g_state(dev, (struct b43legacy_lopair const *)(& control), tmp_control,
                           (int )r27);
  ldv_53423:
  j = (u16 )((int )j + 1);
  ldv_53425: ;
  if ((unsigned int )j <= 3U) {
    goto ldv_53424;
  } else {
  }
  oldi = i;
  h = (u16 )((int )h + 1);
  ldv_53428: ;
  if ((unsigned int )h <= 9U) {
    goto ldv_53427;
  } else {
  }
  i = 10U;
  goto ldv_53435;
  ldv_53434:
  j = 0U;
  goto ldv_53432;
  ldv_53431: ;
  if (is_initializing != 0) {
    tmp_control = b43legacy_get_lopair(phy, (int )((unsigned int )i + 65527U), (int )((unsigned int )j * 2U));
    memcpy((void *)(& control), (void const *)tmp_control, 3UL);
    tmp___0 = ((unsigned int )((u16 )((int )i + -9)) * 2U + (unsigned int )j) + 65531U;
    r27 = 0U;
    r31 = 0U;
    if ((unsigned int )tmp___0 > 14U) {
      r31 = 1U;
      if ((unsigned int )tmp___0 > 17U) {
        r27 = 1U;
      } else {
      }
      if ((unsigned int )tmp___0 > 19U) {
        r27 = 2U;
      } else {
      }
    } else {
    }
  } else {
    tmp_control = b43legacy_get_lopair(phy, (int )((unsigned int )i + 65527U), (int )((unsigned int )j * 2U));
    if ((unsigned int )*((unsigned char *)tmp_control + 2UL) == 0U) {
      goto ldv_53430;
    } else {
    }
    memcpy((void *)(& control), (void const *)tmp_control, 3UL);
    r27 = 3U;
    r31 = 0U;
  }
  b43legacy_radio_write16(dev, 67, (int )((unsigned int )i + 65527U));
  b43legacy_radio_write16(dev, 82, (int )((unsigned int )phy->__annonCompField105.txctl2 | 48U));
  __const_udelay(42950UL);
  b43legacy_voluntary_preempt();
  b43legacy_phy_set_baseband_attenuation(dev, (int )((unsigned int )j * 2U));
  tmp___0 = (unsigned int )regstack[10] & 65520U;
  if ((unsigned int )r31 != 0U) {
    tmp___0 = (u16 )((unsigned int )tmp___0 | 8U);
  } else {
  }
  b43legacy_radio_write16(dev, 122, (int )tmp___0);
  tmp_control = b43legacy_get_lopair(phy, (int )i, (int )((unsigned int )j * 2U));
  b43legacy_phy_lo_g_state(dev, (struct b43legacy_lopair const *)(& control), tmp_control,
                           (int )r27);
  ldv_53430:
  j = (u16 )((int )j + 1);
  ldv_53432: ;
  if ((unsigned int )j <= 3U) {
    goto ldv_53431;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53435: ;
  if ((unsigned int )i <= 13U) {
    goto ldv_53434;
  } else {
  }
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 21, 58112);
    b43legacy_phy_write(dev, 2066, (int )((u16 )((int )((short )((int )r27 << 8)) | 160)));
    __const_udelay(21475UL);
    b43legacy_phy_write(dev, 2066, (int )((u16 )((int )((short )((int )r27 << 8)) | 162)));
    __const_udelay(8590UL);
    b43legacy_phy_write(dev, 2066, (int )((u16 )((int )((short )((int )r27 << 8)) | 163)));
    b43legacy_voluntary_preempt();
  } else {
    b43legacy_phy_write(dev, 21, (int )((unsigned int )((u16 )r27) | 61344U));
  }
  b43legacy_phy_lo_adjust(dev, is_initializing);
  b43legacy_phy_write(dev, 46, 32895);
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 47, 514);
  } else {
    b43legacy_phy_write(dev, 47, 257);
  }
  b43legacy_write16(dev, 1012, (int )regstack[4]);
  b43legacy_phy_write(dev, 21, (int )regstack[5]);
  b43legacy_phy_write(dev, 42, (int )regstack[6]);
  b43legacy_phy_write(dev, 53, (int )regstack[7]);
  b43legacy_phy_write(dev, 96, (int )regstack[8]);
  b43legacy_radio_write16(dev, 67, (int )regstack[9]);
  b43legacy_radio_write16(dev, 122, (int )regstack[10]);
  regstack[11] = (unsigned int )regstack[11] & 240U;
  tmp___2 = b43legacy_radio_read16(dev, 82);
  regstack[11] = (u16 )((int )((short )regstack[11]) | ((int )((short )tmp___2) & 15));
  b43legacy_radio_write16(dev, 82, (int )regstack[11]);
  b43legacy_write16(dev, 994, (int )regstack[3]);
  if ((int )phy->gmode) {
    b43legacy_phy_write(dev, 2065, (int )regstack[12]);
    b43legacy_phy_write(dev, 2066, (int )regstack[13]);
    b43legacy_phy_write(dev, 2068, (int )regstack[14]);
    b43legacy_phy_write(dev, 2069, (int )regstack[15]);
    b43legacy_phy_write(dev, 1065, (int )regstack[0]);
    b43legacy_phy_write(dev, 2050, (int )regstack[1]);
  } else {
  }
  b43legacy_radio_selectchannel(dev, (int )oldchannel, 1);
  i = 0U;
  goto ldv_53438;
  ldv_53437:
  tmp_control = phy->_lo_pairs + (unsigned long )i;
  if ((((int )tmp_control->low < -8 || (int )tmp_control->low > 8) || (int )tmp_control->high < -8) || (int )tmp_control->high > 8) {
    b43legacywarn(dev->wl, "WARNING: Invalid LOpair (low: %d, high: %d, index: %d)\n",
                  (int )tmp_control->low, (int )tmp_control->high, (int )i);
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53438: ;
  if ((unsigned int )i <= 55U) {
    goto ldv_53437;
  } else {
  }
  return;
}
}
static void b43legacy_phy_lo_mark_current_used(struct b43legacy_wldev *dev )
{
  struct b43legacy_lopair *pair ;
  {
  pair = b43legacy_current_lopair(dev);
  pair->used = 1U;
  return;
}
}
void b43legacy_phy_lo_mark_all_unused(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  struct b43legacy_lopair *pair ;
  int i ;
  {
  phy = & dev->phy;
  i = 0;
  goto ldv_53451;
  ldv_53450:
  pair = phy->_lo_pairs + (unsigned long )i;
  pair->used = 0U;
  i = i + 1;
  ldv_53451: ;
  if (i <= 55) {
    goto ldv_53450;
  } else {
  }
  return;
}
}
static s8 b43legacy_phy_estimate_power_out(struct b43legacy_wldev *dev , s8 tssi )
{
  struct b43legacy_phy *phy ;
  s8 dbm ;
  s32 tmp ;
  s32 __min1 ;
  s32 __max1 ;
  s32 __max2 ;
  s32 __min2 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  phy = & dev->phy;
  dbm = 0;
  tmp = (s32 )phy->idle_tssi;
  tmp = (int )tssi + tmp;
  tmp = tmp - (int )phy->savedpctlreg;
  switch ((int )phy->type) {
  case 1: ;
  case 2:
  __max1 = tmp;
  __max2 = 0;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 63;
  tmp = __min1 < __min2 ? __min1 : __min2;
  dbm = *(phy->tssi2dbm + (unsigned long )tmp);
  goto ldv_53468;
  default:
  tmp___1 = ldv__builtin_expect(1L, 0L);
  if (tmp___1 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___0 = ldv__builtin_expect(1L, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c"),
                           "i" (1769), "i" (12UL));
      ldv_53470: ;
      goto ldv_53470;
    } else {
    }
  } else {
  }
  }
  ldv_53468: ;
  return (dbm);
}
}
void b43legacy_phy_xmitpower(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 tmp ;
  u16 txpower ;
  s8 v0 ;
  s8 v1 ;
  s8 v2 ;
  s8 v3 ;
  s8 average ;
  int max_pwr ;
  s16 desired_pwr ;
  s16 estimated_pwr ;
  s16 pwr_adjust ;
  s16 radio_att_delta ;
  s16 baseband_att_delta ;
  s16 radio_attenuation ;
  s16 baseband_attenuation ;
  bool tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u16 tmp___3 ;
  s8 tmp___4 ;
  long tmp___5 ;
  int _min1 ;
  int _min2 ;
  int __min1 ;
  int __max1 ;
  int __max2 ;
  int __min2 ;
  int tmp___6 ;
  s16 __min1___0 ;
  s16 __max1___0 ;
  s16 __max2___0 ;
  s16 __min2___0 ;
  s16 __min1___1 ;
  s16 __max1___1 ;
  s16 __max2___1 ;
  s16 __min2___1 ;
  s16 __min1___2 ;
  s16 __max1___2 ;
  s16 __max2___2 ;
  s16 __min2___2 ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->savedpctlreg == 65535U) {
    return;
  } else {
  }
  if ((unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) {
    tmp___0 = is_bcm_board_vendor(dev);
    if ((int )tmp___0) {
      return;
    } else {
    }
  } else {
  }
  if ((int )phy->manual_txpower_control) {
    return;
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )((unsigned int )phy->type != 1U && (unsigned int )phy->type != 2U),
                             0L);
  if (tmp___2 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"!(phy->type == B43legacy_PHYTYPE_B || phy->type == B43legacy_PHYTYPE_G)");
    tmp___1 = ldv__builtin_expect((long )((unsigned int )phy->type != 1U && (unsigned int )phy->type != 2U),
                               0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c"),
                           "i" (1806), "i" (12UL));
      ldv_53490: ;
      goto ldv_53490;
    } else {
    }
  } else {
  }
  tmp = b43legacy_shm_read16(dev, 1, 88);
  v0 = (signed char )tmp;
  v1 = (signed char )((int )tmp >> 8);
  tmp = b43legacy_shm_read16(dev, 1, 90);
  v2 = (signed char )tmp;
  v3 = (signed char )((int )tmp >> 8);
  tmp = 0U;
  if ((((int )v0 == 127 || (int )v1 == 127) || (int )v2 == 127) || (int )v3 == 127) {
    tmp = b43legacy_shm_read16(dev, 1, 112);
    v0 = (signed char )tmp;
    v1 = (signed char )((int )tmp >> 8);
    tmp = b43legacy_shm_read16(dev, 1, 114);
    v2 = (signed char )tmp;
    v3 = (signed char )((int )tmp >> 8);
    if ((((int )v0 == 127 || (int )v1 == 127) || (int )v2 == 127) || (int )v3 == 127) {
      return;
    } else {
    }
    v0 = (int )((s8 )((unsigned int )((unsigned char )v0) + 32U)) & 63;
    v1 = (int )((s8 )((unsigned int )((unsigned char )v1) + 32U)) & 63;
    v2 = (int )((s8 )((unsigned int )((unsigned char )v2) + 32U)) & 63;
    v3 = (int )((s8 )((unsigned int )((unsigned char )v3) + 32U)) & 63;
    tmp = 1U;
  } else {
  }
  b43legacy_radio_clear_tssi(dev);
  average = (s8 )((((((int )v0 + (int )v1) + (int )v2) + (int )v3) + 2) / 4);
  if ((unsigned int )tmp != 0U) {
    tmp___3 = b43legacy_shm_read16(dev, 1, 94);
    if (((int )tmp___3 & 8) != 0) {
      average = (s8 )((unsigned int )((unsigned char )average) + 243U);
    } else {
    }
  } else {
  }
  tmp___4 = b43legacy_phy_estimate_power_out(dev, (int )average);
  estimated_pwr = (s16 )tmp___4;
  max_pwr = (int )((dev->dev)->bus)->sprom.maxpwr_bg;
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 2) != 0 && (unsigned int )phy->type == 2U) {
    max_pwr = max_pwr + -3;
  } else {
  }
  tmp___5 = ldv__builtin_expect(max_pwr <= 0, 0L);
  if (tmp___5 != 0L) {
    b43legacywarn(dev->wl, "Invalid max-TX-power value in SPROM.\n");
    max_pwr = 74;
    ((dev->dev)->bus)->sprom.maxpwr_bg = (u8 )max_pwr;
  } else {
  }
  _min1 = 74 - (int )((dev->dev)->bus)->sprom.antenna_gain.a0;
  _min2 = max_pwr;
  max_pwr = _min1 < _min2 ? _min1 : _min2;
  __max1 = (int )phy->power_level << 2;
  __max2 = 0;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = max_pwr;
  desired_pwr = (s16 )(__min1 < __min2 ? __min1 : __min2);
  tmp___6 = b43legacy_debug(dev, 0);
  if (tmp___6 != 0) {
    b43legacydbg(dev->wl, "Current TX power output: %u.%u dBm, Desired TX power output: %u.%u dBm\n",
                 (int )estimated_pwr / 4, (((int )estimated_pwr & 3) * 100) / 4, (int )desired_pwr / 4,
                 (((int )desired_pwr & 3) * 100) / 4);
  } else {
  }
  pwr_adjust = (s16 )(((int )desired_pwr - (int )estimated_pwr) / 2);
  radio_att_delta = (s16 )((-7 - (int )pwr_adjust) >> 3);
  baseband_att_delta = (s16 )((unsigned int )((unsigned short )radio_att_delta) * 65532U - (unsigned int )((unsigned short )((int )pwr_adjust >> 1)));
  if ((int )radio_att_delta == 0 && (int )baseband_att_delta == 0) {
    b43legacy_phy_lo_mark_current_used(dev);
    return;
  } else {
  }
  baseband_attenuation = (s16 )phy->__annonCompField105.bbatt;
  baseband_attenuation = (s16 )((int )((unsigned short )baseband_attenuation) + (int )((unsigned short )baseband_att_delta));
  radio_attenuation = (s16 )phy->__annonCompField105.rfatt;
  radio_attenuation = (s16 )((int )((unsigned short )radio_attenuation) + (int )((unsigned short )radio_att_delta));
  if ((int )radio_attenuation < 0) {
    baseband_attenuation = (s16 )((unsigned int )((unsigned short )radio_attenuation) * 4U + (unsigned int )((unsigned short )baseband_attenuation));
    radio_attenuation = 0;
  } else
  if ((int )radio_attenuation > 9) {
    baseband_attenuation = (s16 )((unsigned int )((unsigned short )((int )radio_attenuation + -9)) * 4U + (unsigned int )((unsigned short )baseband_attenuation));
    radio_attenuation = 9;
  } else {
    goto ldv_53501;
    ldv_53500:
    baseband_attenuation = (s16 )((unsigned int )((unsigned short )baseband_attenuation) + 4U);
    radio_attenuation = (s16 )((int )radio_attenuation - 1);
    ldv_53501: ;
    if ((int )baseband_attenuation < 0 && (int )radio_attenuation > 0) {
      goto ldv_53500;
    } else {
    }
    goto ldv_53504;
    ldv_53503:
    baseband_attenuation = (s16 )((unsigned int )((unsigned short )baseband_attenuation) + 65532U);
    radio_attenuation = (s16 )((int )radio_attenuation + 1);
    ldv_53504: ;
    if ((int )baseband_attenuation > 11 && (int )radio_attenuation <= 8) {
      goto ldv_53503;
    } else {
    }
  }
  __max1___0 = baseband_attenuation;
  __max2___0 = 0;
  __min1___0 = (s16 )((int )__max1___0 > (int )__max2___0 ? __max1___0 : __max2___0);
  __min2___0 = 11;
  baseband_attenuation = (s16 )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0);
  txpower = phy->__annonCompField105.txctl1;
  if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev == 2U) {
    if ((int )radio_attenuation <= 1) {
      if ((unsigned int )txpower == 0U) {
        txpower = 3U;
        radio_attenuation = (s16 )((unsigned int )((unsigned short )radio_attenuation) + 2U);
        baseband_attenuation = (s16 )((unsigned int )((unsigned short )baseband_attenuation) + 2U);
      } else
      if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 2) != 0) {
        baseband_attenuation = (s16 )((unsigned int )((unsigned short )((int )radio_attenuation + -2)) * 4U + (unsigned int )((unsigned short )baseband_attenuation));
        radio_attenuation = 2;
      } else {
      }
    } else
    if ((int )radio_attenuation > 4 && (unsigned int )txpower != 0U) {
      txpower = 0U;
      if ((int )baseband_attenuation <= 2) {
        radio_attenuation = (s16 )((unsigned int )((unsigned short )radio_attenuation) + 65533U);
        baseband_attenuation = (s16 )((unsigned int )((unsigned short )baseband_attenuation) + 2U);
      } else {
        radio_attenuation = (s16 )((unsigned int )((unsigned short )radio_attenuation) + 65534U);
        baseband_attenuation = (s16 )((unsigned int )((unsigned short )baseband_attenuation) + 65534U);
      }
    } else {
    }
  } else {
  }
  phy->__annonCompField105.txctl1 = txpower;
  __max1___1 = baseband_attenuation;
  __max2___1 = 0;
  __min1___1 = (s16 )((int )__max1___1 > (int )__max2___1 ? __max1___1 : __max2___1);
  __min2___1 = 11;
  baseband_attenuation = (s16 )((int )__min1___1 < (int )__min2___1 ? __min1___1 : __min2___1);
  __max1___2 = radio_attenuation;
  __max2___2 = 0;
  __min1___2 = (s16 )((int )__max1___2 > (int )__max2___2 ? __max1___2 : __max2___2);
  __min2___2 = 9;
  radio_attenuation = (s16 )((int )__min1___2 < (int )__min2___2 ? __min1___2 : __min2___2);
  phy->__annonCompField105.rfatt = (u16 )radio_attenuation;
  phy->__annonCompField105.bbatt = (u16 )baseband_attenuation;
  b43legacy_phy_lock(dev);
  b43legacy_radio_lock(dev);
  b43legacy_radio_set_txpower_bg(dev, (int )((u16 )baseband_attenuation), (int )((u16 )radio_attenuation),
                                 (int )txpower);
  b43legacy_phy_lo_mark_current_used(dev);
  b43legacy_radio_unlock(dev);
  b43legacy_phy_unlock(dev);
  return;
}
}
__inline static s32 b43legacy_tssi2dbm_ad(s32 num , s32 den )
{
  {
  if (num < 0) {
    return (num / den);
  } else {
    return ((den / 2 + num) / den);
  }
}
}
__inline static s8 b43legacy_tssi2dbm_entry(s8 *entry , u8 index , s16 pab0 , s16 pab1 ,
                                            s16 pab2 )
{
  s32 m1 ;
  s32 m2 ;
  s32 f ;
  s32 q ;
  s32 delta ;
  s8 i ;
  s32 _max1 ;
  s32 tmp ;
  int _max2 ;
  s32 tmp___0 ;
  long ret ;
  int __x___0 ;
  s32 __min1 ;
  s32 __max1 ;
  s32 tmp___1 ;
  s32 __max2 ;
  s32 __min2 ;
  {
  f = 256;
  i = 0;
  m1 = b43legacy_tssi2dbm_ad((int )pab0 * 16 + (int )index * (int )pab1, 32);
  tmp = b43legacy_tssi2dbm_ad((int )index * (int )pab2 + 32768, 256);
  _max1 = tmp;
  _max2 = 1;
  m2 = _max1 > _max2 ? _max1 : _max2;
  ldv_53548: ;
  if ((int )i > 15) {
    return (-22);
  } else {
  }
  tmp___0 = b43legacy_tssi2dbm_ad(m2 * f, 16);
  q = b43legacy_tssi2dbm_ad((4096 - tmp___0) * f, 2048);
  __x___0 = q - f;
  ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  delta = (s32 )ret;
  f = q;
  i = (s8 )((int )i + 1);
  if (delta > 1) {
    goto ldv_53548;
  } else {
  }
  tmp___1 = b43legacy_tssi2dbm_ad(m1 * f, 8192);
  __max1 = tmp___1;
  __max2 = -127;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 128;
  *(entry + (unsigned long )index) = (s8 )(__min1 < __min2 ? __min1 : __min2);
  return (0);
}
}
int b43legacy_phy_init_tssi2dbm_table(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  s16 pab0 ;
  s16 pab1 ;
  s16 pab2 ;
  u8 idx ;
  s8 *dyn_tssi2dbm ;
  int __ret_warn_on ;
  long tmp ;
  void *tmp___0 ;
  s8 tmp___1 ;
  {
  phy = & dev->phy;
  __ret_warn_on = (unsigned int )phy->type != 1U && (unsigned int )phy->type != 2U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       2004);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  pab0 = (short )((dev->dev)->bus)->sprom.pa0b0;
  pab1 = (short )((dev->dev)->bus)->sprom.pa0b1;
  pab2 = (short )((dev->dev)->bus)->sprom.pa0b2;
  if ((unsigned int )((dev->dev)->bus)->chip_id == 17153U && (unsigned int )phy->radio_ver != 8272U) {
    phy->idle_tssi = 52;
    phy->tssi2dbm = (s8 const *)(& b43legacy_tssi2dbm_b_table);
    return (0);
  } else {
  }
  if ((((((int )pab0 != 0 && (int )pab1 != 0) && (int )pab2 != 0) && (int )pab0 != -1) && (int )pab1 != -1) && (int )pab2 != -1) {
    if ((unsigned int )((dev->dev)->bus)->sprom.itssi_bg != 0U && (unsigned int )((dev->dev)->bus)->sprom.itssi_bg != 255U) {
      phy->idle_tssi = (signed char )((dev->dev)->bus)->sprom.itssi_bg;
    } else {
      phy->idle_tssi = 62;
    }
    tmp___0 = kmalloc(64UL, 208U);
    dyn_tssi2dbm = (s8 *)tmp___0;
    if ((unsigned long )dyn_tssi2dbm == (unsigned long )((s8 *)0)) {
      b43legacyerr(dev->wl, "Could not allocate memory for tssi2dbm table\n");
      return (-12);
    } else {
    }
    idx = 0U;
    goto ldv_53568;
    ldv_53567:
    tmp___1 = b43legacy_tssi2dbm_entry(dyn_tssi2dbm, (int )idx, (int )pab0, (int )pab1,
                                       (int )pab2);
    if ((int )tmp___1 != 0) {
      phy->tssi2dbm = (s8 const *)0;
      b43legacyerr(dev->wl, "Could not generate tssi2dBm table\n");
      kfree((void const *)dyn_tssi2dbm);
      return (-19);
    } else {
    }
    idx = (u8 )((int )idx + 1);
    ldv_53568: ;
    if ((unsigned int )idx <= 63U) {
      goto ldv_53567;
    } else {
    }
    phy->tssi2dbm = (s8 const *)dyn_tssi2dbm;
    phy->dyn_tssi_tbl = 1;
  } else {
    switch ((int )phy->type) {
    case 1:
    phy->idle_tssi = 52;
    phy->tssi2dbm = (s8 const *)(& b43legacy_tssi2dbm_b_table);
    goto ldv_53571;
    case 2:
    phy->idle_tssi = 52;
    phy->tssi2dbm = (s8 const *)(& b43legacy_tssi2dbm_g_table);
    goto ldv_53571;
    }
    ldv_53571: ;
  }
  return (0);
}
}
int b43legacy_phy_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  int err ;
  {
  phy = & dev->phy;
  err = -19;
  switch ((int )phy->type) {
  case 1: ;
  switch ((int )phy->rev) {
  case 2:
  b43legacy_phy_initb2(dev);
  err = 0;
  goto ldv_53580;
  case 4:
  b43legacy_phy_initb4(dev);
  err = 0;
  goto ldv_53580;
  case 5:
  b43legacy_phy_initb5(dev);
  err = 0;
  goto ldv_53580;
  case 6:
  b43legacy_phy_initb6(dev);
  err = 0;
  goto ldv_53580;
  }
  ldv_53580: ;
  goto ldv_53584;
  case 2:
  b43legacy_phy_initg(dev);
  err = 0;
  goto ldv_53584;
  }
  ldv_53584: ;
  if (err != 0) {
    b43legacyerr(dev->wl, "Unknown PHYTYPE found\n");
  } else {
  }
  return (err);
}
}
void b43legacy_phy_set_antenna_diversity(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 antennadiv ;
  u16 offset ;
  u16 value ;
  u32 ucodeflags ;
  int __ret_warn_on ;
  long tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  int __ret_warn_on___0 ;
  long tmp___11 ;
  {
  phy = & dev->phy;
  antennadiv = phy->antenna_diversity;
  if ((unsigned int )antennadiv == 65535U) {
    antennadiv = 3U;
  } else {
  }
  __ret_warn_on = (unsigned int )antennadiv > 3U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       2107);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ucodeflags = b43legacy_shm_read32(dev, 1, 94);
  b43legacy_shm_write32(dev, 1, 94, ucodeflags & 4294967294U);
  switch ((int )phy->type) {
  case 2:
  offset = 1024U;
  if ((unsigned int )antennadiv == 2U) {
    value = 384U;
  } else {
    value = (int )antennadiv << 7U;
  }
  tmp___0 = b43legacy_phy_read(dev, (int )((unsigned int )offset + 1U));
  b43legacy_phy_write(dev, (int )((unsigned int )offset + 1U), (int )((u16 )(((int )((short )tmp___0) & 32383) | (int )((short )value))));
  if ((unsigned int )antennadiv > 1U) {
    if ((unsigned int )antennadiv == 2U) {
      value = (int )antennadiv << 7U;
    } else {
      value = 0U;
    }
    tmp___1 = b43legacy_phy_read(dev, (int )((unsigned int )offset + 43U));
    b43legacy_phy_write(dev, (int )((unsigned int )offset + 43U), (int )((u16 )(((int )((short )tmp___1) & -257) | (int )((short )value))));
  } else {
  }
  if ((unsigned int )phy->type == 2U) {
    if ((unsigned int )antennadiv > 1U) {
      tmp___2 = b43legacy_phy_read(dev, 1164);
      b43legacy_phy_write(dev, 1164, (int )((unsigned int )tmp___2 | 8192U));
    } else {
      tmp___3 = b43legacy_phy_read(dev, 1164);
      b43legacy_phy_write(dev, 1164, (int )tmp___3 & 57343);
    }
    if ((unsigned int )phy->rev > 1U) {
      tmp___4 = b43legacy_phy_read(dev, 1121);
      b43legacy_phy_write(dev, 1121, (int )((unsigned int )tmp___4 | 16U));
      tmp___5 = b43legacy_phy_read(dev, 1197);
      b43legacy_phy_write(dev, 1197, (int )((u16 )(((int )((short )tmp___5) & 255) | 21)));
      if ((unsigned int )phy->rev == 2U) {
        b43legacy_phy_write(dev, 1063, 8);
      } else {
        tmp___6 = b43legacy_phy_read(dev, 1063);
        b43legacy_phy_write(dev, 1063, (int )((u16 )(((int )((short )tmp___6) & 255) | 8)));
      }
    } else
    if ((unsigned int )phy->rev > 5U) {
      b43legacy_phy_write(dev, 1179, 220);
    } else {
    }
  } else
  if ((unsigned int )phy->rev <= 2U) {
    tmp___7 = b43legacy_phy_read(dev, 43);
    b43legacy_phy_write(dev, 43, (int )((u16 )(((int )((short )tmp___7) & 255) | 36)));
  } else {
    tmp___8 = b43legacy_phy_read(dev, 97);
    b43legacy_phy_write(dev, 97, (int )((unsigned int )tmp___8 | 16U));
    if ((unsigned int )phy->rev == 3U) {
      b43legacy_phy_write(dev, 147, 29);
      b43legacy_phy_write(dev, 39, 8);
    } else {
      b43legacy_phy_write(dev, 147, 58);
      tmp___9 = b43legacy_phy_read(dev, 39);
      b43legacy_phy_write(dev, 39, (int )((u16 )(((int )((short )tmp___9) & 255) | 8)));
    }
  }
  goto ldv_53597;
  case 1: ;
  if ((unsigned int )(dev->dev)->id.revision == 2U) {
    value = 384U;
  } else {
    value = (int )antennadiv << 7U;
  }
  tmp___10 = b43legacy_phy_read(dev, 994);
  b43legacy_phy_write(dev, 994, (int )((u16 )(((int )((short )tmp___10) & -385) | (int )((short )value))));
  goto ldv_53597;
  default:
  __ret_warn_on___0 = 1;
  tmp___11 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___11 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/phy.c",
                       2199);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  }
  ldv_53597: ;
  if ((unsigned int )antennadiv > 1U) {
    ucodeflags = b43legacy_shm_read32(dev, 1, 94);
    b43legacy_shm_write32(dev, 1, 94, ucodeflags | 1U);
  } else {
  }
  phy->antenna_diversity = antennadiv;
  return;
}
}
void b43legacy_power_saving_ctl_bits(struct b43legacy_wldev *dev , int bit25 , int bit26 )
{
  int i ;
  u32 status ;
  u32 tmp ;
  {
  bit25 = 0;
  bit26 = 1;
  status = b43legacy_read32(dev, 288);
  if (bit25 != 0) {
    status = status | 33554432U;
  } else {
    status = status & 4261412863U;
  }
  if (bit26 != 0) {
    status = status | 67108864U;
  } else {
    status = status & 4227858431U;
  }
  b43legacy_write32(dev, 288, status);
  if (bit26 != 0 && (unsigned int )(dev->dev)->id.revision > 4U) {
    i = 0;
    goto ldv_53611;
    ldv_53610:
    tmp = b43legacy_shm_read32(dev, 1, 64);
    if (tmp != 4U) {
      goto ldv_53609;
    } else {
    }
    __const_udelay(42950UL);
    i = i + 1;
    ldv_53611: ;
    if (i <= 99) {
      goto ldv_53610;
    } else {
    }
    ldv_53609: ;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_55(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_66(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_68(struct workqueue_struct *ldv_func_arg1 ) ;
void b43legacy_radio_set_txpower_a(struct b43legacy_wldev *dev , u16 txpower ) ;
void b43legacy_radio_set_txantenna(struct b43legacy_wldev *dev , u32 val ) ;
u8 b43legacy_radio_aci_detect(struct b43legacy_wldev *dev , u8 channel ) ;
u8 b43legacy_radio_aci_scan(struct b43legacy_wldev *dev ) ;
s16 b43legacy_nrssi_hw_read(struct b43legacy_wldev *dev , u16 offset ) ;
void b43legacy_nrssi_mem_update(struct b43legacy_wldev *dev ) ;
u16 b43legacy_radio_calibrationvalue(struct b43legacy_wldev *dev ) ;
static u16 const rcc_table[16U] =
  { 2U, 3U, 1U, 15U,
        6U, 7U, 5U, 15U,
        10U, 11U, 9U, 15U,
        14U, 15U, 13U, 15U};
static u16 flip_4bit(u16 value )
{
  u16 flipped ;
  long tmp ;
  long tmp___0 ;
  {
  flipped = 0U;
  tmp___0 = ldv__builtin_expect(((int )value & -16) != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"!((value & ~0x000F) == 0x0000)");
    tmp = ldv__builtin_expect(((int )value & -16) != 0, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (56), "i" (12UL));
      ldv_53081: ;
      goto ldv_53081;
    } else {
    }
  } else {
  }
  flipped = (u16 )((int )((short )(((int )value & 1) << 3)) | (int )((short )flipped));
  flipped = (u16 )((int )((short )(((int )value & 2) << 1)) | (int )((short )flipped));
  flipped = (u16 )((int )((short )(((int )value & 4) >> 1)) | (int )((short )flipped));
  flipped = (u16 )((int )((short )(((int )value & 8) >> 3)) | (int )((short )flipped));
  return (flipped);
}
}
__inline static u16 channel2freq_bg(u8 channel )
{
  u16 frequencies_bg[14U] ;
  long tmp ;
  {
  frequencies_bg[0] = 12U;
  frequencies_bg[1] = 17U;
  frequencies_bg[2] = 22U;
  frequencies_bg[3] = 27U;
  frequencies_bg[4] = 32U;
  frequencies_bg[5] = 37U;
  frequencies_bg[6] = 42U;
  frequencies_bg[7] = 47U;
  frequencies_bg[8] = 52U;
  frequencies_bg[9] = 57U;
  frequencies_bg[10] = 62U;
  frequencies_bg[11] = 67U;
  frequencies_bg[12] = 72U;
  frequencies_bg[13] = 84U;
  tmp = ldv__builtin_expect((long )((unsigned int )channel == 0U || (unsigned int )channel > 14U),
                         0L);
  if (tmp != 0L) {
    printk("\016b43legacy: Channel %d is out of range\n", (int )channel);
    dump_stack();
    return (2412U);
  } else {
  }
  return (frequencies_bg[(int )channel + -1]);
}
}
void b43legacy_radio_lock(struct b43legacy_wldev *dev )
{
  u32 status ;
  int __ret_warn_on ;
  long tmp ;
  {
  status = b43legacy_read32(dev, 288);
  __ret_warn_on = (status & 524288U) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       95);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  status = status | 524288U;
  b43legacy_write32(dev, 288, status);
  __asm__ volatile ("": : : "memory");
  __const_udelay(42950UL);
  return;
}
}
void b43legacy_radio_unlock(struct b43legacy_wldev *dev )
{
  u32 status ;
  int __ret_warn_on ;
  long tmp ;
  {
  b43legacy_read16(dev, 992);
  status = b43legacy_read32(dev, 288);
  __ret_warn_on = (status & 524288U) == 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       108);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  status = status & 4294443007U;
  b43legacy_write32(dev, 288, status);
  __asm__ volatile ("": : : "memory");
  return;
}
}
u16 b43legacy_radio_read16(struct b43legacy_wldev *dev , u16 offset )
{
  struct b43legacy_phy *phy ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  u16 tmp___2 ;
  {
  phy = & dev->phy;
  switch ((int )phy->type) {
  case 1: ;
  if ((unsigned int )phy->radio_ver == 8275U) {
    if ((unsigned int )offset <= 111U) {
      offset = (unsigned int )offset + 128U;
    } else
    if ((unsigned int )offset <= 127U) {
      offset = (unsigned int )offset + 112U;
    } else {
    }
  } else
  if ((unsigned int )phy->radio_ver == 8272U) {
    offset = (u16 )((unsigned int )offset | 128U);
  } else {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                         128);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  goto ldv_53106;
  case 2:
  offset = (u16 )((unsigned int )offset | 128U);
  goto ldv_53106;
  default:
  tmp___1 = ldv__builtin_expect(1L, 0L);
  if (tmp___1 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___0 = ldv__builtin_expect(1L, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (134), "i" (12UL));
      ldv_53109: ;
      goto ldv_53109;
    } else {
    }
  } else {
  }
  }
  ldv_53106:
  b43legacy_write16(dev, 1014, (int )offset);
  tmp___2 = b43legacy_read16(dev, 1018);
  return (tmp___2);
}
}
void b43legacy_radio_write16(struct b43legacy_wldev *dev , u16 offset , u16 val )
{
  {
  b43legacy_write16(dev, 1014, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_write16(dev, 1018, (int )val);
  return;
}
}
static void b43legacy_set_all_gains(struct b43legacy_wldev *dev , s16 first , s16 second ,
                                    s16 third )
{
  struct b43legacy_phy *phy ;
  u16 i ;
  u16 start ;
  u16 end ;
  u16 offset ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  phy = & dev->phy;
  start = 8U;
  end = 24U;
  offset = 1024U;
  if ((unsigned int )phy->rev <= 1U) {
    offset = 20480U;
    start = 16U;
    end = 32U;
  } else {
  }
  i = 0U;
  goto ldv_53128;
  ldv_53127:
  b43legacy_ilt_write(dev, (int )offset + (int )i, (int )((u16 )first));
  i = (u16 )((int )i + 1);
  ldv_53128: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_53127;
  } else {
  }
  i = start;
  goto ldv_53131;
  ldv_53130:
  b43legacy_ilt_write(dev, (int )offset + (int )i, (int )((u16 )second));
  i = (u16 )((int )i + 1);
  ldv_53131: ;
  if ((int )i < (int )end) {
    goto ldv_53130;
  } else {
  }
  if ((int )third != -1) {
    tmp = (u16 )((int )((short )((int )((unsigned short )third) << 14)) | (int )((short )((int )((unsigned short )third) << 6)));
    tmp___0 = b43legacy_phy_read(dev, 1184);
    b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___0) & -16449) | (int )((short )tmp))));
    tmp___1 = b43legacy_phy_read(dev, 1185);
    b43legacy_phy_write(dev, 1185, (int )((u16 )(((int )((short )tmp___1) & -16449) | (int )((short )tmp))));
    tmp___2 = b43legacy_phy_read(dev, 1186);
    b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___2) & -16449) | (int )((short )tmp))));
  } else {
  }
  b43legacy_dummy_transmission(dev);
  return;
}
}
static void b43legacy_set_original_gains(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 i ;
  u16 tmp ;
  u16 offset ;
  u16 start ;
  u16 end ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  phy = & dev->phy;
  offset = 1024U;
  start = 8U;
  end = 24U;
  if ((unsigned int )phy->rev <= 1U) {
    offset = 20480U;
    start = 16U;
    end = 32U;
  } else {
  }
  i = 0U;
  goto ldv_53143;
  ldv_53142:
  tmp = (unsigned int )i & 65532U;
  tmp = (u16 )((int )((short )(((int )i & 1) << 1)) | (int )((short )tmp));
  tmp = (u16 )((int )((short )(((int )i & 2) >> 1)) | (int )((short )tmp));
  b43legacy_ilt_write(dev, (int )offset + (int )i, (int )tmp);
  i = (u16 )((int )i + 1);
  ldv_53143: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_53142;
  } else {
  }
  i = start;
  goto ldv_53146;
  ldv_53145:
  b43legacy_ilt_write(dev, (int )offset + (int )i, (int )i - (int )start);
  i = (u16 )((int )i + 1);
  ldv_53146: ;
  if ((int )i < (int )end) {
    goto ldv_53145;
  } else {
  }
  tmp___0 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((unsigned int )tmp___0 | 16448U));
  tmp___1 = b43legacy_phy_read(dev, 1185);
  b43legacy_phy_write(dev, 1185, (int )((unsigned int )tmp___1 | 16448U));
  tmp___2 = b43legacy_phy_read(dev, 1186);
  b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___2) & -16449) | 16384)));
  b43legacy_dummy_transmission(dev);
  return;
}
}
static void b43legacy_synth_pu_workaround(struct b43legacy_wldev *dev , u8 channel )
{
  struct b43legacy_phy *phy ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  phy = & dev->phy;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                229, 0);
  if ((unsigned int )phy->radio_ver != 8272U || (unsigned int )phy->radio_rev > 5U) {
    return;
  } else {
  }
  if ((unsigned int )channel <= 10U) {
    tmp = channel2freq_bg((int )((unsigned int )channel + 4U));
    b43legacy_write16(dev, 1008, (int )tmp);
  } else {
    tmp___0 = channel2freq_bg((int )channel);
    b43legacy_write16(dev, 1008, (int )tmp___0);
  }
  msleep(1U);
  tmp___1 = channel2freq_bg((int )channel);
  b43legacy_write16(dev, 1008, (int )tmp___1);
  return;
}
}
u8 b43legacy_radio_aci_detect(struct b43legacy_wldev *dev , u8 channel )
{
  struct b43legacy_phy *phy ;
  u8 ret ;
  u16 saved ;
  u16 rssi ;
  u16 temp ;
  int i ;
  int j ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  phy = & dev->phy;
  ret = 0U;
  j = 0;
  saved = b43legacy_phy_read(dev, 1027);
  b43legacy_radio_selectchannel(dev, (int )channel, 0);
  b43legacy_phy_write(dev, 1027, (int )((u16 )(((int )((short )saved) & -8) | 5)));
  if ((int )phy->aci_hw_rssi) {
    tmp = b43legacy_phy_read(dev, 1162);
    rssi = (unsigned int )tmp & 63U;
  } else {
    rssi = (unsigned int )saved & 63U;
  }
  if ((unsigned int )rssi > 32U) {
    rssi = (unsigned int )rssi + 65472U;
  } else {
  }
  i = 0;
  goto ldv_53165;
  ldv_53164:
  tmp___0 = b43legacy_phy_read(dev, 1151);
  temp = (unsigned int )((u16 )((int )tmp___0 >> 8)) & 63U;
  if ((unsigned int )temp > 32U) {
    temp = (unsigned int )temp + 65472U;
  } else {
  }
  if ((int )temp < (int )rssi) {
    j = j + 1;
  } else {
  }
  if (j > 19) {
    ret = 1U;
  } else {
  }
  i = i + 1;
  ldv_53165: ;
  if (i <= 99) {
    goto ldv_53164;
  } else {
  }
  b43legacy_phy_write(dev, 1027, (int )saved);
  return (ret);
}
}
u8 b43legacy_radio_aci_scan(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u8 ret[13U] ;
  unsigned int channel ;
  unsigned int i ;
  unsigned int j ;
  unsigned int start ;
  unsigned int end ;
  u16 tmp ;
  u16 tmp___0 ;
  long ret___0 ;
  int __x___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  {
  phy = & dev->phy;
  channel = (unsigned int )phy->channel;
  if ((unsigned int )phy->type != 2U || (unsigned int )phy->rev == 0U) {
    return (0U);
  } else {
  }
  b43legacy_phy_lock(dev);
  b43legacy_radio_lock(dev);
  tmp = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )tmp & 65532);
  tmp___0 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )tmp___0 & 32767);
  b43legacy_set_all_gains(dev, 3, 8, 1);
  start = channel != 5U ? channel - 5U : 1U;
  end = 13U < channel + 5U ? 13U : channel + 5U;
  i = start;
  goto ldv_53182;
  ldv_53181:
  __x___0 = (int )(channel - i);
  ret___0 = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  if (ret___0 > 2L) {
    ret[i - 1U] = b43legacy_radio_aci_detect(dev, (int )((u8 )i));
  } else {
  }
  i = i + 1U;
  ldv_53182: ;
  if (i <= end) {
    goto ldv_53181;
  } else {
  }
  b43legacy_radio_selectchannel(dev, (int )((u8 )channel), 0);
  tmp___1 = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )((unsigned int )tmp___1 | 3U));
  tmp___2 = b43legacy_phy_read(dev, 1027);
  b43legacy_phy_write(dev, 1027, (int )tmp___2 & 65528);
  tmp___3 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )((unsigned int )tmp___3 | 32768U));
  b43legacy_set_original_gains(dev);
  i = 0U;
  goto ldv_53189;
  ldv_53188: ;
  if ((unsigned int )ret[i] == 0U) {
    goto ldv_53184;
  } else {
  }
  end = 13U < i + 5U ? 13U : i + 5U;
  j = i;
  goto ldv_53186;
  ldv_53185:
  ret[j] = 1U;
  j = j + 1U;
  ldv_53186: ;
  if (j < end) {
    goto ldv_53185;
  } else {
  }
  ldv_53184:
  i = i + 1U;
  ldv_53189: ;
  if (i <= 12U) {
    goto ldv_53188;
  } else {
  }
  b43legacy_radio_unlock(dev);
  b43legacy_phy_unlock(dev);
  return (ret[channel - 1U]);
}
}
void b43legacy_nrssi_hw_write(struct b43legacy_wldev *dev , u16 offset , s16 val )
{
  {
  b43legacy_phy_write(dev, 2051, (int )offset);
  __asm__ volatile ("": : : "memory");
  b43legacy_phy_write(dev, 2052, (int )((unsigned short )val));
  return;
}
}
s16 b43legacy_nrssi_hw_read(struct b43legacy_wldev *dev , u16 offset )
{
  u16 val ;
  {
  b43legacy_phy_write(dev, 2051, (int )offset);
  val = b43legacy_phy_read(dev, 2052);
  return ((s16 )val);
}
}
void b43legacy_nrssi_hw_update(struct b43legacy_wldev *dev , u16 val )
{
  u16 i ;
  s16 tmp ;
  s16 __min1 ;
  s16 __max1 ;
  s16 __max2 ;
  s16 __min2 ;
  {
  i = 0U;
  goto ldv_53214;
  ldv_53213:
  tmp = b43legacy_nrssi_hw_read(dev, (int )i);
  tmp = (s16 )((int )((unsigned short )tmp) - (int )val);
  __max1 = tmp;
  __max2 = -32;
  __min1 = (s16 )((int )__max1 > (int )__max2 ? __max1 : __max2);
  __min2 = 31;
  tmp = (s16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  b43legacy_nrssi_hw_write(dev, (int )i, (int )tmp);
  i = (u16 )((int )i + 1);
  ldv_53214: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_53213;
  } else {
  }
  return;
}
}
void b43legacy_nrssi_mem_update(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  s16 i ;
  s16 delta ;
  s32 tmp ;
  s32 __min1 ;
  s32 __max1 ;
  s32 __max2 ;
  s32 __min2 ;
  {
  phy = & dev->phy;
  delta = (s16 )(31U - (unsigned int )((unsigned short )phy->nrssi[0]));
  i = 0;
  goto ldv_53230;
  ldv_53229:
  tmp = ((int )i - (int )delta) * phy->nrssislope;
  tmp = tmp / 65536;
  tmp = tmp + 58;
  __max1 = tmp;
  __max2 = 0;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 63;
  tmp = __min1 < __min2 ? __min1 : __min2;
  phy->nrssi_lt[(int )i] = (s8 )tmp;
  i = (s16 )((int )i + 1);
  ldv_53230: ;
  if ((int )i <= 63) {
    goto ldv_53229;
  } else {
  }
  return;
}
}
static void b43legacy_calc_nrssi_offset(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 backup[20U] ;
  unsigned int tmp ;
  s16 v47F ;
  u16 i ;
  u16 saved ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  u16 tmp___27 ;
  u16 tmp___28 ;
  u16 tmp___29 ;
  {
  phy = & dev->phy;
  backup[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 20U) {
      break;
    } else {
    }
    backup[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  saved = 65535U;
  backup[0] = b43legacy_phy_read(dev, 1);
  backup[1] = b43legacy_phy_read(dev, 2065);
  backup[2] = b43legacy_phy_read(dev, 2066);
  backup[3] = b43legacy_phy_read(dev, 2068);
  backup[4] = b43legacy_phy_read(dev, 2069);
  backup[5] = b43legacy_phy_read(dev, 90);
  backup[6] = b43legacy_phy_read(dev, 89);
  backup[7] = b43legacy_phy_read(dev, 88);
  backup[8] = b43legacy_phy_read(dev, 10);
  backup[9] = b43legacy_phy_read(dev, 3);
  backup[10] = b43legacy_radio_read16(dev, 122);
  backup[11] = b43legacy_radio_read16(dev, 67);
  tmp___0 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )tmp___0 & 32767);
  tmp___1 = b43legacy_phy_read(dev, 1);
  b43legacy_phy_write(dev, 1, (int )((u16 )(((int )((short )tmp___1) & 16383) | 16384)));
  tmp___2 = b43legacy_phy_read(dev, 2065);
  b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___2 | 12U));
  tmp___3 = b43legacy_phy_read(dev, 2066);
  b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___3) & -13) | 4)));
  tmp___4 = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )tmp___4 & 65532);
  if ((unsigned int )phy->rev > 5U) {
    backup[12] = b43legacy_phy_read(dev, 46);
    backup[13] = b43legacy_phy_read(dev, 47);
    backup[14] = b43legacy_phy_read(dev, 2063);
    backup[15] = b43legacy_phy_read(dev, 2064);
    backup[16] = b43legacy_phy_read(dev, 2049);
    backup[17] = b43legacy_phy_read(dev, 96);
    backup[18] = b43legacy_phy_read(dev, 20);
    backup[19] = b43legacy_phy_read(dev, 1144);
    b43legacy_phy_write(dev, 46, 0);
    b43legacy_phy_write(dev, 47, 0);
    b43legacy_phy_write(dev, 2063, 0);
    b43legacy_phy_write(dev, 2064, 0);
    tmp___5 = b43legacy_phy_read(dev, 1144);
    b43legacy_phy_write(dev, 1144, (int )((unsigned int )tmp___5 | 256U));
    tmp___6 = b43legacy_phy_read(dev, 2049);
    b43legacy_phy_write(dev, 2049, (int )((unsigned int )tmp___6 | 64U));
    tmp___7 = b43legacy_phy_read(dev, 96);
    b43legacy_phy_write(dev, 96, (int )((unsigned int )tmp___7 | 64U));
    tmp___8 = b43legacy_phy_read(dev, 20);
    b43legacy_phy_write(dev, 20, (int )((unsigned int )tmp___8 | 512U));
  } else {
  }
  tmp___9 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___9 | 112U));
  tmp___10 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___10 | 128U));
  __const_udelay(128850UL);
  tmp___11 = b43legacy_phy_read(dev, 1151);
  v47F = (int )((short )((int )tmp___11 >> 8)) & 63;
  if ((int )v47F > 31) {
    v47F = (s16 )((unsigned int )((unsigned short )v47F) + 65472U);
  } else {
  }
  if ((int )v47F == 31) {
    i = 7U;
    goto ldv_53241;
    ldv_53240:
    b43legacy_radio_write16(dev, 123, (int )i);
    __const_udelay(85900UL);
    tmp___12 = b43legacy_phy_read(dev, 1151);
    v47F = (int )((short )((int )tmp___12 >> 8)) & 63;
    if ((int )v47F > 31) {
      v47F = (s16 )((unsigned int )((unsigned short )v47F) + 65472U);
    } else {
    }
    if ((int )v47F <= 30 && (unsigned int )saved == 65535U) {
      saved = i;
    } else {
    }
    i = (u16 )((int )i - 1);
    ldv_53241: ;
    if ((unsigned int )i > 3U) {
      goto ldv_53240;
    } else {
    }
    if ((unsigned int )saved == 65535U) {
      saved = 4U;
    } else {
    }
  } else {
    tmp___13 = b43legacy_radio_read16(dev, 122);
    b43legacy_radio_write16(dev, 122, (int )tmp___13 & 127);
    tmp___14 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___14 | 1U));
    tmp___15 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___15 & 65534);
    tmp___16 = b43legacy_phy_read(dev, 2065);
    b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___16 | 12U));
    tmp___17 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )tmp___17 | 12U));
    tmp___18 = b43legacy_phy_read(dev, 2065);
    b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___18 | 48U));
    tmp___19 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((unsigned int )tmp___19 | 48U));
    b43legacy_phy_write(dev, 90, 1152);
    b43legacy_phy_write(dev, 89, 2064);
    b43legacy_phy_write(dev, 88, 13);
    if ((unsigned int )phy->analog == 0U) {
      b43legacy_phy_write(dev, 3, 290);
    } else {
      tmp___20 = b43legacy_phy_read(dev, 10);
      b43legacy_phy_write(dev, 10, (int )((unsigned int )tmp___20 | 8192U));
    }
    tmp___21 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___21 | 4U));
    tmp___22 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___22 & 65531);
    tmp___23 = b43legacy_phy_read(dev, 3);
    b43legacy_phy_write(dev, 3, (int )((u16 )(((int )((short )tmp___23) & -97) | 64)));
    tmp___24 = b43legacy_radio_read16(dev, 122);
    b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___24 | 15U));
    b43legacy_set_all_gains(dev, 3, 0, 1);
    tmp___25 = b43legacy_radio_read16(dev, 67);
    b43legacy_radio_write16(dev, 67, (int )((u16 )(((int )((short )tmp___25) & 255) | 15)));
    __const_udelay(128850UL);
    tmp___26 = b43legacy_phy_read(dev, 1151);
    v47F = (int )((short )((int )tmp___26 >> 8)) & 63;
    if ((int )v47F > 31) {
      v47F = (s16 )((unsigned int )((unsigned short )v47F) + 65472U);
    } else {
    }
    if ((int )v47F == -32) {
      i = 0U;
      goto ldv_53244;
      ldv_53243:
      b43legacy_radio_write16(dev, 123, (int )i);
      __const_udelay(85900UL);
      tmp___27 = b43legacy_phy_read(dev, 1151);
      v47F = (int )((short )((int )tmp___27 >> 8)) & 63;
      if ((int )v47F > 31) {
        v47F = (s16 )((unsigned int )((unsigned short )v47F) + 65472U);
      } else {
      }
      if ((int )v47F >= -30 && (unsigned int )saved == 65535U) {
        saved = i;
      } else {
      }
      i = (u16 )((int )i + 1);
      ldv_53244: ;
      if ((unsigned int )i <= 3U) {
        goto ldv_53243;
      } else {
      }
      if ((unsigned int )saved == 65535U) {
        saved = 3U;
      } else {
      }
    } else {
      saved = 0U;
    }
  }
  b43legacy_radio_write16(dev, 123, (int )saved);
  if ((unsigned int )phy->rev > 5U) {
    b43legacy_phy_write(dev, 46, (int )backup[12]);
    b43legacy_phy_write(dev, 47, (int )backup[13]);
    b43legacy_phy_write(dev, 2063, (int )backup[14]);
    b43legacy_phy_write(dev, 2064, (int )backup[15]);
  } else {
  }
  b43legacy_phy_write(dev, 2068, (int )backup[3]);
  b43legacy_phy_write(dev, 2069, (int )backup[4]);
  b43legacy_phy_write(dev, 90, (int )backup[5]);
  b43legacy_phy_write(dev, 89, (int )backup[6]);
  b43legacy_phy_write(dev, 88, (int )backup[7]);
  b43legacy_phy_write(dev, 10, (int )backup[8]);
  b43legacy_phy_write(dev, 3, (int )backup[9]);
  b43legacy_radio_write16(dev, 67, (int )backup[11]);
  b43legacy_radio_write16(dev, 122, (int )backup[10]);
  tmp___28 = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )((unsigned int )tmp___28 | 3U));
  tmp___29 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )((unsigned int )tmp___29 | 32768U));
  b43legacy_set_original_gains(dev);
  if ((unsigned int )phy->rev > 5U) {
    b43legacy_phy_write(dev, 2049, (int )backup[16]);
    b43legacy_phy_write(dev, 96, (int )backup[17]);
    b43legacy_phy_write(dev, 20, (int )backup[18]);
    b43legacy_phy_write(dev, 1144, (int )backup[19]);
  } else {
  }
  b43legacy_phy_write(dev, 1, (int )backup[0]);
  b43legacy_phy_write(dev, 2066, (int )backup[2]);
  b43legacy_phy_write(dev, 2065, (int )backup[1]);
  return;
}
}
void b43legacy_calc_nrssi_slope(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 backup[18U] ;
  unsigned int tmp ;
  u16 tmp___0 ;
  s16 nrssi0 ;
  s16 nrssi1 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  u16 tmp___27 ;
  u16 tmp___28 ;
  u16 tmp___29 ;
  u16 tmp___30 ;
  u16 tmp___31 ;
  u16 tmp___32 ;
  u16 tmp___33 ;
  u16 tmp___34 ;
  long tmp___35 ;
  long tmp___36 ;
  {
  phy = & dev->phy;
  backup[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 18U) {
      break;
    } else {
    }
    backup[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  switch ((int )phy->type) {
  case 1:
  backup[0] = b43legacy_radio_read16(dev, 122);
  backup[1] = b43legacy_radio_read16(dev, 82);
  backup[2] = b43legacy_radio_read16(dev, 67);
  backup[3] = b43legacy_phy_read(dev, 48);
  backup[4] = b43legacy_phy_read(dev, 38);
  backup[5] = b43legacy_phy_read(dev, 21);
  backup[6] = b43legacy_phy_read(dev, 42);
  backup[7] = b43legacy_phy_read(dev, 32);
  backup[8] = b43legacy_phy_read(dev, 90);
  backup[9] = b43legacy_phy_read(dev, 89);
  backup[10] = b43legacy_phy_read(dev, 88);
  backup[11] = b43legacy_read16(dev, 994);
  backup[12] = b43legacy_read16(dev, 998);
  backup[13] = b43legacy_read16(dev, 1012);
  tmp___0 = b43legacy_radio_read16(dev, 122);
  tmp___0 = (u16 )(((unsigned int )phy->rev > 4U ? 127 : 15) & (int )((short )tmp___0));
  b43legacy_radio_write16(dev, 122, (int )tmp___0);
  b43legacy_phy_write(dev, 48, 255);
  b43legacy_write16(dev, 1004, 32639);
  b43legacy_phy_write(dev, 38, 0);
  tmp___1 = b43legacy_phy_read(dev, 21);
  b43legacy_phy_write(dev, 21, (int )((unsigned int )tmp___1 | 32U));
  b43legacy_phy_write(dev, 42, 2211);
  tmp___2 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___2 | 128U));
  tmp___3 = b43legacy_phy_read(dev, 39);
  nrssi0 = (short )tmp___3;
  tmp___4 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )tmp___4 & 127);
  if ((unsigned int )phy->analog > 1U) {
    b43legacy_write16(dev, 998, 64);
  } else
  if ((unsigned int )phy->analog == 0U) {
    b43legacy_write16(dev, 998, 290);
  } else {
    tmp___5 = b43legacy_read16(dev, 1012);
    b43legacy_write16(dev, 1012, (int )tmp___5 & 8192);
  }
  b43legacy_phy_write(dev, 32, 16191);
  b43legacy_phy_write(dev, 21, 62256);
  b43legacy_radio_write16(dev, 90, 96);
  tmp___6 = b43legacy_radio_read16(dev, 67);
  b43legacy_radio_write16(dev, 67, (int )tmp___6 & 240);
  b43legacy_phy_write(dev, 90, 1152);
  b43legacy_phy_write(dev, 89, 2064);
  b43legacy_phy_write(dev, 88, 13);
  __const_udelay(85900UL);
  tmp___7 = b43legacy_phy_read(dev, 39);
  nrssi1 = (short )tmp___7;
  b43legacy_phy_write(dev, 48, (int )backup[3]);
  b43legacy_radio_write16(dev, 122, (int )backup[0]);
  b43legacy_write16(dev, 994, (int )backup[11]);
  b43legacy_phy_write(dev, 38, (int )backup[4]);
  b43legacy_phy_write(dev, 21, (int )backup[5]);
  b43legacy_phy_write(dev, 42, (int )backup[6]);
  b43legacy_synth_pu_workaround(dev, (int )phy->channel);
  if ((unsigned int )phy->analog != 0U) {
    b43legacy_write16(dev, 1012, (int )backup[13]);
  } else {
  }
  b43legacy_phy_write(dev, 32, (int )backup[7]);
  b43legacy_phy_write(dev, 90, (int )backup[8]);
  b43legacy_phy_write(dev, 89, (int )backup[9]);
  b43legacy_phy_write(dev, 88, (int )backup[10]);
  b43legacy_radio_write16(dev, 82, (int )backup[1]);
  b43legacy_radio_write16(dev, 67, (int )backup[2]);
  if ((int )nrssi0 == (int )nrssi1) {
    phy->nrssislope = 65536;
  } else {
    phy->nrssislope = 4194304 / ((int )nrssi0 - (int )nrssi1);
  }
  if ((int )nrssi0 < -3) {
    phy->nrssi[0] = nrssi0;
    phy->nrssi[1] = nrssi1;
  } else {
  }
  goto ldv_53255;
  case 2: ;
  if ((unsigned int )phy->radio_rev > 8U) {
    return;
  } else {
  }
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_calc_nrssi_offset(dev);
  } else {
  }
  tmp___8 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )tmp___8 & 32767);
  tmp___9 = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )tmp___9 & 65532);
  backup[7] = b43legacy_read16(dev, 994);
  tmp___10 = b43legacy_read16(dev, 994);
  b43legacy_write16(dev, 994, (int )((unsigned int )tmp___10 | 32768U));
  backup[0] = b43legacy_radio_read16(dev, 122);
  backup[1] = b43legacy_radio_read16(dev, 82);
  backup[2] = b43legacy_radio_read16(dev, 67);
  backup[3] = b43legacy_phy_read(dev, 21);
  backup[4] = b43legacy_phy_read(dev, 90);
  backup[5] = b43legacy_phy_read(dev, 89);
  backup[6] = b43legacy_phy_read(dev, 88);
  backup[8] = b43legacy_read16(dev, 998);
  backup[9] = b43legacy_read16(dev, 1012);
  if ((unsigned int )phy->rev > 2U) {
    backup[10] = b43legacy_phy_read(dev, 46);
    backup[11] = b43legacy_phy_read(dev, 47);
    backup[12] = b43legacy_phy_read(dev, 2063);
    backup[13] = b43legacy_phy_read(dev, 2064);
    backup[14] = b43legacy_phy_read(dev, 2049);
    backup[15] = b43legacy_phy_read(dev, 96);
    backup[16] = b43legacy_phy_read(dev, 20);
    backup[17] = b43legacy_phy_read(dev, 1144);
    b43legacy_phy_write(dev, 46, 0);
    b43legacy_phy_write(dev, 2064, 0);
    switch ((int )phy->rev) {
    case 4: ;
    case 6: ;
    case 7:
    tmp___11 = b43legacy_phy_read(dev, 1144);
    b43legacy_phy_write(dev, 1144, (int )((unsigned int )tmp___11 | 256U));
    tmp___12 = b43legacy_phy_read(dev, 2049);
    b43legacy_phy_write(dev, 2049, (int )((unsigned int )tmp___12 | 64U));
    goto ldv_53260;
    case 3: ;
    case 5:
    tmp___13 = b43legacy_phy_read(dev, 2049);
    b43legacy_phy_write(dev, 2049, (int )tmp___13 & 65471);
    goto ldv_53260;
    }
    ldv_53260:
    tmp___14 = b43legacy_phy_read(dev, 96);
    b43legacy_phy_write(dev, 96, (int )((unsigned int )tmp___14 | 64U));
    tmp___15 = b43legacy_phy_read(dev, 20);
    b43legacy_phy_write(dev, 20, (int )((unsigned int )tmp___15 | 512U));
  } else {
  }
  tmp___16 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___16 | 112U));
  b43legacy_set_all_gains(dev, 0, 8, 0);
  tmp___17 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )tmp___17 & 247);
  if ((unsigned int )phy->rev > 1U) {
    tmp___18 = b43legacy_phy_read(dev, 2065);
    b43legacy_phy_write(dev, 2065, (int )((unsigned int )tmp___18 | 48U));
    tmp___19 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___19) & -49) | 16)));
  } else {
  }
  tmp___20 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___20 | 128U));
  __const_udelay(85900UL);
  tmp___21 = b43legacy_phy_read(dev, 1151);
  nrssi0 = (int )((short )((int )tmp___21 >> 8)) & 63;
  if ((int )nrssi0 > 31) {
    nrssi0 = (s16 )((unsigned int )((unsigned short )nrssi0) + 65472U);
  } else {
  }
  tmp___22 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )tmp___22 & 127);
  if ((unsigned int )phy->analog > 1U) {
    tmp___23 = b43legacy_phy_read(dev, 3);
    b43legacy_phy_write(dev, 3, (int )((u16 )(((int )((short )tmp___23) & -97) | 64)));
  } else {
  }
  tmp___24 = b43legacy_read16(dev, 1012);
  b43legacy_write16(dev, 1012, (int )((unsigned int )tmp___24 | 8192U));
  tmp___25 = b43legacy_radio_read16(dev, 122);
  b43legacy_radio_write16(dev, 122, (int )((unsigned int )tmp___25 | 15U));
  b43legacy_phy_write(dev, 21, 62256);
  if ((unsigned int )phy->rev > 1U) {
    tmp___26 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )((u16 )(((int )((short )tmp___26) & -49) | 32)));
    tmp___27 = b43legacy_phy_read(dev, 2065);
    b43legacy_phy_write(dev, 2065, (int )((u16 )(((int )((short )tmp___27) & -49) | 32)));
  } else {
  }
  b43legacy_set_all_gains(dev, 3, 0, 1);
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_radio_write16(dev, 67, 31);
  } else {
    tmp___28 = b43legacy_radio_read16(dev, 82);
    tmp___0 = (unsigned int )tmp___28 & 65295U;
    b43legacy_radio_write16(dev, 82, (int )((unsigned int )tmp___0 | 96U));
    tmp___29 = b43legacy_radio_read16(dev, 67);
    tmp___0 = (unsigned int )tmp___29 & 65520U;
    b43legacy_radio_write16(dev, 67, (int )((unsigned int )tmp___0 | 9U));
  }
  b43legacy_phy_write(dev, 90, 1152);
  b43legacy_phy_write(dev, 89, 2064);
  b43legacy_phy_write(dev, 88, 13);
  __const_udelay(85900UL);
  tmp___30 = b43legacy_phy_read(dev, 1151);
  nrssi1 = (int )((short )((int )tmp___30 >> 8)) & 63;
  if ((int )nrssi1 > 31) {
    nrssi1 = (s16 )((unsigned int )((unsigned short )nrssi1) + 65472U);
  } else {
  }
  if ((int )nrssi0 == (int )nrssi1) {
    phy->nrssislope = 65536;
  } else {
    phy->nrssislope = 4194304 / ((int )nrssi0 - (int )nrssi1);
  }
  if ((int )nrssi0 >= -4) {
    phy->nrssi[0] = nrssi1;
    phy->nrssi[1] = nrssi0;
  } else {
  }
  if ((unsigned int )phy->rev > 2U) {
    b43legacy_phy_write(dev, 46, (int )backup[10]);
    b43legacy_phy_write(dev, 47, (int )backup[11]);
    b43legacy_phy_write(dev, 2063, (int )backup[12]);
    b43legacy_phy_write(dev, 2064, (int )backup[13]);
  } else {
  }
  if ((unsigned int )phy->rev > 1U) {
    tmp___31 = b43legacy_phy_read(dev, 2066);
    b43legacy_phy_write(dev, 2066, (int )tmp___31 & 65487);
    tmp___32 = b43legacy_phy_read(dev, 2065);
    b43legacy_phy_write(dev, 2065, (int )tmp___32 & 65487);
  } else {
  }
  b43legacy_radio_write16(dev, 122, (int )backup[0]);
  b43legacy_radio_write16(dev, 82, (int )backup[1]);
  b43legacy_radio_write16(dev, 67, (int )backup[2]);
  b43legacy_write16(dev, 994, (int )backup[7]);
  b43legacy_write16(dev, 998, (int )backup[8]);
  b43legacy_write16(dev, 1012, (int )backup[9]);
  b43legacy_phy_write(dev, 21, (int )backup[3]);
  b43legacy_phy_write(dev, 90, (int )backup[4]);
  b43legacy_phy_write(dev, 89, (int )backup[5]);
  b43legacy_phy_write(dev, 88, (int )backup[6]);
  b43legacy_synth_pu_workaround(dev, (int )phy->channel);
  tmp___33 = b43legacy_phy_read(dev, 2050);
  b43legacy_phy_write(dev, 2050, (int )((unsigned int )tmp___33 | 3U));
  b43legacy_set_original_gains(dev);
  tmp___34 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )((unsigned int )tmp___34 | 32768U));
  if ((unsigned int )phy->rev > 2U) {
    b43legacy_phy_write(dev, 2049, (int )backup[14]);
    b43legacy_phy_write(dev, 96, (int )backup[15]);
    b43legacy_phy_write(dev, 20, (int )backup[16]);
    b43legacy_phy_write(dev, 1144, (int )backup[17]);
  } else {
  }
  b43legacy_nrssi_mem_update(dev);
  b43legacy_calc_nrssi_threshold(dev);
  goto ldv_53255;
  default:
  tmp___36 = ldv__builtin_expect(1L, 0L);
  if (tmp___36 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___35 = ldv__builtin_expect(1L, 0L);
    if (tmp___35 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (814), "i" (12UL));
      ldv_53264: ;
      goto ldv_53264;
    } else {
    }
  } else {
  }
  }
  ldv_53255: ;
  return;
}
}
void b43legacy_calc_nrssi_threshold(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  s32 threshold ;
  s32 a ;
  s32 b ;
  s16 tmp16 ;
  u16 tmp_u16 ;
  s32 __min1 ;
  s32 __max1 ;
  s32 __max2 ;
  s32 __min2 ;
  u16 tmp ;
  u16 tmp___0 ;
  s32 __min1___0 ;
  s32 __max1___0 ;
  s32 __max2___0 ;
  s32 __min2___0 ;
  s32 __min1___1 ;
  s32 __max1___1 ;
  s32 __max2___1 ;
  s32 __min2___1 ;
  u16 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  phy = & dev->phy;
  switch ((int )phy->type) {
  case 1: ;
  if ((unsigned int )phy->radio_ver != 8272U) {
    return;
  } else {
  }
  if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) == 0) {
    return;
  } else {
  }
  if ((unsigned int )phy->radio_rev > 5U) {
    threshold = ((int )phy->nrssi[1] - (int )phy->nrssi[0]) * 32;
    threshold = ((int )phy->nrssi[0] + 1) * 20 + threshold;
    threshold = threshold / 40;
  } else {
    threshold = (int )phy->nrssi[1] + -5;
  }
  __max1 = threshold;
  __max2 = 0;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 62;
  threshold = __min1 < __min2 ? __min1 : __min2;
  b43legacy_phy_read(dev, 32);
  b43legacy_phy_write(dev, 32, (int )((u16 )((int )((short )((int )((unsigned short )threshold) << 8)) | 28)));
  if ((unsigned int )phy->radio_rev > 5U) {
    b43legacy_phy_write(dev, 135, 3597);
    b43legacy_phy_write(dev, 134, 3083);
    b43legacy_phy_write(dev, 133, 2569);
    b43legacy_phy_write(dev, 132, 2056);
    b43legacy_phy_write(dev, 131, 2056);
    b43legacy_phy_write(dev, 130, 1540);
    b43legacy_phy_write(dev, 129, 770);
    b43legacy_phy_write(dev, 128, 256);
  } else {
  }
  goto ldv_53281;
  case 2: ;
  if (! phy->gmode || ((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) == 0) {
    tmp16 = b43legacy_nrssi_hw_read(dev, 32);
    if ((int )tmp16 > 31) {
      tmp16 = (s16 )((unsigned int )((unsigned short )tmp16) + 65472U);
    } else {
    }
    if ((int )tmp16 <= 2) {
      tmp = b43legacy_phy_read(dev, 1162);
      b43legacy_phy_write(dev, 1162, (int )((u16 )(((int )((short )tmp) & -4096) | 2539)));
    } else {
      tmp___0 = b43legacy_phy_read(dev, 1162);
      b43legacy_phy_write(dev, 1162, (int )((u16 )(((int )((short )tmp___0) & -4096) | 2797)));
    }
  } else {
    if (phy->interfmode == 1) {
      a = 14;
      b = 10;
    } else
    if (! phy->aci_wlan_automatic && (int )phy->aci_enable) {
      a = 19;
      b = 18;
    } else {
      a = 14;
      b = 17;
    }
    a = ((int )phy->nrssi[1] - (int )phy->nrssi[0]) * a;
    a = ((int )phy->nrssi[0] << 6) + a;
    if (a <= 31) {
      a = a + 31;
    } else {
      a = a + 32;
    }
    a = a >> 6;
    __max1___0 = a;
    __max2___0 = -31;
    __min1___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
    __min2___0 = 31;
    a = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
    b = ((int )phy->nrssi[1] - (int )phy->nrssi[0]) * b;
    b = ((int )phy->nrssi[0] << 6) + b;
    if (b <= 31) {
      b = b + 31;
    } else {
      b = b + 32;
    }
    b = b >> 6;
    __max1___1 = b;
    __max2___1 = -31;
    __min1___1 = __max1___1 > __max2___1 ? __max1___1 : __max2___1;
    __min2___1 = 31;
    b = __min1___1 < __min2___1 ? __min1___1 : __min2___1;
    tmp___1 = b43legacy_phy_read(dev, 1162);
    tmp_u16 = (unsigned int )tmp___1 & 61440U;
    tmp_u16 = ((unsigned int )((u16 )b) & 63U) | (unsigned int )tmp_u16;
    tmp_u16 = (((unsigned int )((u16 )a) & 63U) << 6U) | (unsigned int )tmp_u16;
    b43legacy_phy_write(dev, 1162, (int )tmp_u16);
  }
  goto ldv_53281;
  default:
  tmp___3 = ldv__builtin_expect(1L, 0L);
  if (tmp___3 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___2 = ldv__builtin_expect(1L, 0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (913), "i" (12UL));
      ldv_53296: ;
      goto ldv_53296;
    } else {
    }
  } else {
  }
  }
  ldv_53281: ;
  return;
}
}
static void _stack_save(u32 *_stackptr , size_t *stackidx , u8 id , u16 offset , u16 value )
{
  u32 *stackptr ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int __ret_warn_on___1 ;
  long tmp___1 ;
  {
  stackptr = _stackptr + *stackidx;
  __ret_warn_on = ((int )offset & 57344) != 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       926);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = ((int )id & 248) != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       927);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  *stackptr = (u32 )offset;
  *stackptr = *stackptr | ((unsigned int )id << 13);
  *stackptr = *stackptr | ((unsigned int )value << 16);
  *stackidx = *stackidx + 1UL;
  __ret_warn_on___1 = *stackidx > 25UL;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       932);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  return;
}
}
static u16 _stack_restore(u32 *stackptr , u8 id , u16 offset )
{
  size_t i ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_on = ((int )offset & 57344) != 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       940);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = ((int )id & 248) != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       941);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  i = 0UL;
  goto ldv_53323;
  ldv_53322: ;
  if ((*stackptr & 8191U) != (u32 )offset) {
    goto ldv_53321;
  } else {
  }
  if ((*stackptr & 28672U) >> 13 != (u32 )id) {
    goto ldv_53321;
  } else {
  }
  return ((u16 )(*stackptr >> 16));
  ldv_53321:
  i = i + 1UL;
  stackptr = stackptr + 1;
  ldv_53323: ;
  if (i <= 25UL) {
    goto ldv_53322;
  } else {
  }
  tmp___2 = ldv__builtin_expect(1L, 0L);
  if (tmp___2 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___1 = ldv__builtin_expect(1L, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (949), "i" (12UL));
      ldv_53325: ;
      goto ldv_53325;
    } else {
    }
  } else {
  }
  return (0U);
}
}
static void b43legacy_radio_interference_mitigation_enable(struct b43legacy_wldev *dev ,
                                                           int mode )
{
  struct b43legacy_phy *phy ;
  u16 tmp ;
  u16 flipped ;
  u32 tmp32 ;
  size_t stackidx ;
  u32 *stack ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  u16 tmp___27 ;
  u16 tmp___28 ;
  u16 tmp___29 ;
  u16 tmp___30 ;
  u16 tmp___31 ;
  u16 tmp___32 ;
  u16 tmp___33 ;
  u16 tmp___34 ;
  u16 tmp___35 ;
  u16 tmp___36 ;
  u16 tmp___37 ;
  u16 tmp___38 ;
  u16 tmp___39 ;
  u16 tmp___40 ;
  u16 tmp___41 ;
  u16 tmp___42 ;
  u16 tmp___43 ;
  u16 tmp___44 ;
  u16 tmp___45 ;
  u16 tmp___46 ;
  u16 tmp___47 ;
  u16 tmp___48 ;
  u16 tmp___49 ;
  u16 tmp___50 ;
  u16 tmp___51 ;
  u16 tmp___52 ;
  u16 tmp___53 ;
  u16 tmp___54 ;
  u16 tmp___55 ;
  u16 tmp___56 ;
  u16 tmp___57 ;
  u16 tmp___58 ;
  u16 tmp___59 ;
  u16 tmp___60 ;
  u16 tmp___61 ;
  u16 tmp___62 ;
  u16 tmp___63 ;
  u16 tmp___64 ;
  u16 tmp___65 ;
  u16 tmp___66 ;
  u16 tmp___67 ;
  u16 tmp___68 ;
  u16 tmp___69 ;
  u16 tmp___70 ;
  u16 tmp___71 ;
  u16 tmp___72 ;
  u16 tmp___73 ;
  u16 tmp___74 ;
  u16 tmp___75 ;
  u16 tmp___76 ;
  u16 tmp___77 ;
  u16 tmp___78 ;
  long tmp___79 ;
  long tmp___80 ;
  {
  phy = & dev->phy;
  stackidx = 0UL;
  stack = (u32 *)(& phy->interfstack);
  switch (mode) {
  case 1: ;
  if ((unsigned int )phy->rev != 1U) {
    tmp___0 = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___0 | 2048U));
    tmp___1 = b43legacy_phy_read(dev, 1065);
    b43legacy_phy_write(dev, 1065, (int )tmp___1 & 49151);
    goto ldv_53337;
  } else {
  }
  tmp___2 = b43legacy_radio_read16(dev, 120);
  _stack_save(stack, & stackidx, 2, 120, (int )tmp___2);
  tmp___3 = b43legacy_radio_read16(dev, 120);
  tmp = (unsigned int )tmp___3 & 30U;
  flipped = flip_4bit((int )tmp);
  if ((unsigned int )flipped <= 9U && (unsigned int )flipped > 7U) {
    flipped = 7U;
  } else
  if ((unsigned int )flipped > 9U) {
    flipped = (unsigned int )flipped + 65533U;
  } else {
  }
  flipped = flip_4bit((int )flipped);
  flipped = (u16 )((int )((short )((int )flipped << 1)) | 32);
  b43legacy_radio_write16(dev, 120, (int )flipped);
  b43legacy_calc_nrssi_threshold(dev);
  tmp___4 = b43legacy_phy_read(dev, 1030);
  _stack_save(stack, & stackidx, 1, 1030, (int )tmp___4);
  b43legacy_phy_write(dev, 1030, 32296);
  tmp___5 = b43legacy_phy_read(dev, 1067);
  b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___5 | 2048U));
  tmp___6 = b43legacy_phy_read(dev, 1025);
  b43legacy_phy_write(dev, 1025, (int )((unsigned int )tmp___6 | 4096U));
  tmp___7 = b43legacy_phy_read(dev, 1184);
  _stack_save(stack, & stackidx, 1, 1184, (int )tmp___7);
  tmp___8 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___8) & -16192) | 8)));
  tmp___9 = b43legacy_phy_read(dev, 1185);
  _stack_save(stack, & stackidx, 1, 1185, (int )tmp___9);
  tmp___10 = b43legacy_phy_read(dev, 1185);
  b43legacy_phy_write(dev, 1185, (int )((u16 )(((int )((short )tmp___10) & -16192) | 1541)));
  tmp___11 = b43legacy_phy_read(dev, 1186);
  _stack_save(stack, & stackidx, 1, 1186, (int )tmp___11);
  tmp___12 = b43legacy_phy_read(dev, 1186);
  b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___12) & -16192) | 516)));
  tmp___13 = b43legacy_phy_read(dev, 1192);
  _stack_save(stack, & stackidx, 1, 1192, (int )tmp___13);
  tmp___14 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___14) & -16192) | 2051)));
  tmp___15 = b43legacy_phy_read(dev, 1195);
  _stack_save(stack, & stackidx, 1, 1195, (int )tmp___15);
  tmp___16 = b43legacy_phy_read(dev, 1195);
  b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___16) & -16192) | 1541)));
  tmp___17 = b43legacy_phy_read(dev, 1191);
  _stack_save(stack, & stackidx, 1, 1191, (int )tmp___17);
  b43legacy_phy_write(dev, 1191, 2);
  tmp___18 = b43legacy_phy_read(dev, 1187);
  _stack_save(stack, & stackidx, 1, 1187, (int )tmp___18);
  b43legacy_phy_write(dev, 1187, 10362);
  tmp___19 = b43legacy_phy_read(dev, 1193);
  _stack_save(stack, & stackidx, 1, 1193, (int )tmp___19);
  b43legacy_phy_write(dev, 1193, 8231);
  tmp___20 = b43legacy_phy_read(dev, 1171);
  _stack_save(stack, & stackidx, 1, 1171, (int )tmp___20);
  b43legacy_phy_write(dev, 1171, 13045);
  tmp___21 = b43legacy_phy_read(dev, 1194);
  _stack_save(stack, & stackidx, 1, 1194, (int )tmp___21);
  b43legacy_phy_write(dev, 1194, 8231);
  tmp___22 = b43legacy_phy_read(dev, 1196);
  _stack_save(stack, & stackidx, 1, 1196, (int )tmp___22);
  b43legacy_phy_write(dev, 1196, 13045);
  goto ldv_53337;
  case 2:
  tmp___23 = b43legacy_phy_read(dev, 51);
  if (((int )tmp___23 & 2048) != 0) {
    goto ldv_53337;
  } else {
  }
  phy->aci_enable = 1;
  tmp___24 = b43legacy_phy_read(dev, 1025);
  _stack_save(stack, & stackidx, 1, 1025, (int )tmp___24);
  tmp___25 = b43legacy_phy_read(dev, 1065);
  _stack_save(stack, & stackidx, 1, 1065, (int )tmp___25);
  if ((unsigned int )phy->rev <= 1U) {
    tmp___26 = b43legacy_phy_read(dev, 1030);
    _stack_save(stack, & stackidx, 1, 1030, (int )tmp___26);
  } else {
    tmp___27 = b43legacy_phy_read(dev, 1216);
    _stack_save(stack, & stackidx, 1, 1216, (int )tmp___27);
    tmp___28 = b43legacy_phy_read(dev, 1217);
    _stack_save(stack, & stackidx, 1, 1217, (int )tmp___28);
  }
  tmp___29 = b43legacy_phy_read(dev, 51);
  _stack_save(stack, & stackidx, 1, 51, (int )tmp___29);
  tmp___30 = b43legacy_phy_read(dev, 1191);
  _stack_save(stack, & stackidx, 1, 1191, (int )tmp___30);
  tmp___31 = b43legacy_phy_read(dev, 1187);
  _stack_save(stack, & stackidx, 1, 1187, (int )tmp___31);
  tmp___32 = b43legacy_phy_read(dev, 1193);
  _stack_save(stack, & stackidx, 1, 1193, (int )tmp___32);
  tmp___33 = b43legacy_phy_read(dev, 1194);
  _stack_save(stack, & stackidx, 1, 1194, (int )tmp___33);
  tmp___34 = b43legacy_phy_read(dev, 1196);
  _stack_save(stack, & stackidx, 1, 1196, (int )tmp___34);
  tmp___35 = b43legacy_phy_read(dev, 1171);
  _stack_save(stack, & stackidx, 1, 1171, (int )tmp___35);
  tmp___36 = b43legacy_phy_read(dev, 1185);
  _stack_save(stack, & stackidx, 1, 1185, (int )tmp___36);
  tmp___37 = b43legacy_phy_read(dev, 1184);
  _stack_save(stack, & stackidx, 1, 1184, (int )tmp___37);
  tmp___38 = b43legacy_phy_read(dev, 1186);
  _stack_save(stack, & stackidx, 1, 1186, (int )tmp___38);
  tmp___39 = b43legacy_phy_read(dev, 1162);
  _stack_save(stack, & stackidx, 1, 1162, (int )tmp___39);
  tmp___40 = b43legacy_phy_read(dev, 1192);
  _stack_save(stack, & stackidx, 1, 1192, (int )tmp___40);
  tmp___41 = b43legacy_phy_read(dev, 1195);
  _stack_save(stack, & stackidx, 1, 1195, (int )tmp___41);
  if ((unsigned int )phy->rev == 2U) {
    tmp___42 = b43legacy_phy_read(dev, 1197);
    _stack_save(stack, & stackidx, 1, 1197, (int )tmp___42);
    tmp___43 = b43legacy_phy_read(dev, 1198);
    _stack_save(stack, & stackidx, 1, 1198, (int )tmp___43);
  } else
  if ((unsigned int )phy->rev > 2U) {
    tmp___44 = b43legacy_phy_read(dev, 1197);
    _stack_save(stack, & stackidx, 1, 1197, (int )tmp___44);
    tmp___45 = b43legacy_phy_read(dev, 1045);
    _stack_save(stack, & stackidx, 1, 1045, (int )tmp___45);
    tmp___46 = b43legacy_phy_read(dev, 1046);
    _stack_save(stack, & stackidx, 1, 1046, (int )tmp___46);
    tmp___47 = b43legacy_phy_read(dev, 1047);
    _stack_save(stack, & stackidx, 1, 1047, (int )tmp___47);
    tmp___48 = b43legacy_ilt_read(dev, 6658);
    _stack_save(stack, & stackidx, 3, 6658, (int )tmp___48);
    tmp___49 = b43legacy_ilt_read(dev, 6659);
    _stack_save(stack, & stackidx, 3, 6659, (int )tmp___49);
  } else {
  }
  tmp___50 = b43legacy_phy_read(dev, 1067);
  _stack_save(stack, & stackidx, 1, 1067, (int )tmp___50);
  tmp___51 = b43legacy_phy_read(dev, 1164);
  _stack_save(stack, & stackidx, 1, 1164, (int )tmp___51);
  tmp___52 = b43legacy_phy_read(dev, 1025);
  b43legacy_phy_write(dev, 1025, (int )tmp___52 & 61439);
  tmp___53 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )((u16 )(((int )((short )tmp___53) & -4) | 2)));
  b43legacy_phy_write(dev, 51, 2048);
  b43legacy_phy_write(dev, 1187, 8231);
  b43legacy_phy_write(dev, 1193, 7336);
  b43legacy_phy_write(dev, 1171, 10362);
  b43legacy_phy_write(dev, 1194, 7336);
  b43legacy_phy_write(dev, 1196, 10362);
  tmp___54 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___54) & -64) | 26)));
  b43legacy_phy_write(dev, 1191, 13);
  if ((unsigned int )phy->rev <= 1U) {
    b43legacy_phy_write(dev, 1030, 65293);
  } else
  if ((unsigned int )phy->rev == 2U) {
    b43legacy_phy_write(dev, 1216, 65535);
    b43legacy_phy_write(dev, 1217, 169);
  } else {
    b43legacy_phy_write(dev, 1216, 193);
    b43legacy_phy_write(dev, 1217, 89);
  }
  tmp___55 = b43legacy_phy_read(dev, 1185);
  b43legacy_phy_write(dev, 1185, (int )((u16 )(((int )((short )tmp___55) & -16129) | 6144)));
  tmp___56 = b43legacy_phy_read(dev, 1185);
  b43legacy_phy_write(dev, 1185, (int )((u16 )(((int )((short )tmp___56) & -64) | 21)));
  tmp___57 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___57) & -12289) | 4096)));
  tmp___58 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___58) & -3841) | 2560)));
  tmp___59 = b43legacy_phy_read(dev, 1195);
  b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___59) & -12289) | 4096)));
  tmp___60 = b43legacy_phy_read(dev, 1195);
  b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___60) & -3841) | 2048)));
  tmp___61 = b43legacy_phy_read(dev, 1195);
  b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___61) & -49) | 16)));
  tmp___62 = b43legacy_phy_read(dev, 1195);
  b43legacy_phy_write(dev, 1195, (int )((u16 )(((int )((short )tmp___62) & -16) | 5)));
  tmp___63 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___63) & -49) | 16)));
  tmp___64 = b43legacy_phy_read(dev, 1192);
  b43legacy_phy_write(dev, 1192, (int )((u16 )(((int )((short )tmp___64) & -16) | 6)));
  tmp___65 = b43legacy_phy_read(dev, 1186);
  b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___65) & -3841) | 2048)));
  tmp___66 = b43legacy_phy_read(dev, 1184);
  b43legacy_phy_write(dev, 1184, (int )((u16 )(((int )((short )tmp___66) & -3841) | 1280)));
  tmp___67 = b43legacy_phy_read(dev, 1186);
  b43legacy_phy_write(dev, 1186, (int )((u16 )(((int )((short )tmp___67) & -16) | 11)));
  if ((unsigned int )phy->rev > 2U) {
    tmp___68 = b43legacy_phy_read(dev, 1162);
    b43legacy_phy_write(dev, 1162, (int )tmp___68 & 32767);
    tmp___69 = b43legacy_phy_read(dev, 1045);
    b43legacy_phy_write(dev, 1045, (int )((u16 )(((int )((short )tmp___69) & -32768) | 14040)));
    tmp___70 = b43legacy_phy_read(dev, 1046);
    b43legacy_phy_write(dev, 1046, (int )((u16 )(((int )((short )tmp___70) & -32768) | 14040)));
    tmp___71 = b43legacy_phy_read(dev, 1047);
    b43legacy_phy_write(dev, 1047, (int )((u16 )(((int )((short )tmp___71) & -512) | 365)));
  } else {
    tmp___72 = b43legacy_phy_read(dev, 1162);
    b43legacy_phy_write(dev, 1162, (int )((unsigned int )tmp___72 | 4096U));
    tmp___73 = b43legacy_phy_read(dev, 1162);
    b43legacy_phy_write(dev, 1162, (int )((u16 )(((int )((short )tmp___73) & -24577) | 8192)));
    tmp32 = b43legacy_shm_read32(dev, 1, 94);
    if ((tmp32 & 2048U) == 0U) {
      tmp32 = tmp32 | 2048U;
      b43legacy_shm_write32(dev, 1, 94, tmp32);
    } else {
    }
  }
  if ((unsigned int )phy->rev > 1U) {
    tmp___74 = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )((unsigned int )tmp___74 | 2048U));
  } else {
  }
  tmp___75 = b43legacy_phy_read(dev, 1164);
  b43legacy_phy_write(dev, 1164, (int )((u16 )(((int )((short )tmp___75) & -3841) | 512)));
  if ((unsigned int )phy->rev == 2U) {
    tmp___76 = b43legacy_phy_read(dev, 1198);
    b43legacy_phy_write(dev, 1198, (int )((u16 )(((int )((short )tmp___76) & -256) | 127)));
    tmp___77 = b43legacy_phy_read(dev, 1197);
    b43legacy_phy_write(dev, 1197, (int )((u16 )(((int )((short )tmp___77) & 255) | 4864)));
  } else
  if ((unsigned int )phy->rev > 5U) {
    b43legacy_ilt_write(dev, 6659, 127);
    b43legacy_ilt_write(dev, 6658, 127);
    tmp___78 = b43legacy_phy_read(dev, 1197);
    b43legacy_phy_write(dev, 1197, (int )tmp___78 & 255);
  } else {
  }
  b43legacy_calc_nrssi_slope(dev);
  goto ldv_53337;
  default:
  tmp___80 = ldv__builtin_expect(1L, 0L);
  if (tmp___80 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___79 = ldv__builtin_expect(1L, 0L);
    if (tmp___79 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (1230), "i" (12UL));
      ldv_53340: ;
      goto ldv_53340;
    } else {
    }
  } else {
  }
  }
  ldv_53337: ;
  return;
}
}
static void b43legacy_radio_interference_mitigation_disable(struct b43legacy_wldev *dev ,
                                                            int mode )
{
  struct b43legacy_phy *phy ;
  u32 tmp32 ;
  u32 *stack ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  u16 tmp___27 ;
  u16 tmp___28 ;
  u16 tmp___29 ;
  u16 tmp___30 ;
  u16 tmp___31 ;
  u16 tmp___32 ;
  u16 tmp___33 ;
  u16 tmp___34 ;
  u16 tmp___35 ;
  u16 tmp___36 ;
  u16 tmp___37 ;
  u16 tmp___38 ;
  u16 tmp___39 ;
  u16 tmp___40 ;
  u16 tmp___41 ;
  u16 tmp___42 ;
  u16 tmp___43 ;
  u16 tmp___44 ;
  u16 tmp___45 ;
  long tmp___46 ;
  long tmp___47 ;
  {
  phy = & dev->phy;
  stack = (u32 *)(& phy->interfstack);
  switch (mode) {
  case 1: ;
  if ((unsigned int )phy->rev != 1U) {
    tmp = b43legacy_phy_read(dev, 1067);
    b43legacy_phy_write(dev, 1067, (int )tmp & 63487);
    tmp___0 = b43legacy_phy_read(dev, 1065);
    b43legacy_phy_write(dev, 1065, (int )((unsigned int )tmp___0 | 16384U));
    goto ldv_53349;
  } else {
  }
  tmp___1 = _stack_restore(stack, 1, 120);
  b43legacy_phy_write(dev, 120, (int )tmp___1);
  b43legacy_calc_nrssi_threshold(dev);
  tmp___2 = _stack_restore(stack, 1, 1030);
  b43legacy_phy_write(dev, 1030, (int )tmp___2);
  tmp___3 = b43legacy_phy_read(dev, 1067);
  b43legacy_phy_write(dev, 1067, (int )tmp___3 & 63487);
  if (! dev->bad_frames_preempt) {
    tmp___4 = b43legacy_phy_read(dev, 1025);
    b43legacy_phy_write(dev, 1025, (int )tmp___4 & 63487);
  } else {
  }
  tmp___5 = b43legacy_phy_read(dev, 1065);
  b43legacy_phy_write(dev, 1065, (int )((unsigned int )tmp___5 | 16384U));
  tmp___6 = _stack_restore(stack, 1, 1184);
  b43legacy_phy_write(dev, 1184, (int )tmp___6);
  tmp___7 = _stack_restore(stack, 1, 1185);
  b43legacy_phy_write(dev, 1185, (int )tmp___7);
  tmp___8 = _stack_restore(stack, 1, 1186);
  b43legacy_phy_write(dev, 1186, (int )tmp___8);
  tmp___9 = _stack_restore(stack, 1, 1192);
  b43legacy_phy_write(dev, 1192, (int )tmp___9);
  tmp___10 = _stack_restore(stack, 1, 1195);
  b43legacy_phy_write(dev, 1195, (int )tmp___10);
  tmp___11 = _stack_restore(stack, 1, 1191);
  b43legacy_phy_write(dev, 1191, (int )tmp___11);
  tmp___12 = _stack_restore(stack, 1, 1187);
  b43legacy_phy_write(dev, 1187, (int )tmp___12);
  tmp___13 = _stack_restore(stack, 1, 1193);
  b43legacy_phy_write(dev, 1193, (int )tmp___13);
  tmp___14 = _stack_restore(stack, 1, 1171);
  b43legacy_phy_write(dev, 1171, (int )tmp___14);
  tmp___15 = _stack_restore(stack, 1, 1194);
  b43legacy_phy_write(dev, 1194, (int )tmp___15);
  tmp___16 = _stack_restore(stack, 1, 1196);
  b43legacy_phy_write(dev, 1196, (int )tmp___16);
  goto ldv_53349;
  case 2:
  tmp___17 = b43legacy_phy_read(dev, 51);
  if (((int )tmp___17 & 2048) == 0) {
    goto ldv_53349;
  } else {
  }
  phy->aci_enable = 0;
  tmp___18 = _stack_restore(stack, 1, 1025);
  b43legacy_phy_write(dev, 1025, (int )tmp___18);
  tmp___19 = _stack_restore(stack, 1, 1065);
  b43legacy_phy_write(dev, 1065, (int )tmp___19);
  tmp___20 = _stack_restore(stack, 1, 51);
  b43legacy_phy_write(dev, 51, (int )tmp___20);
  tmp___21 = _stack_restore(stack, 1, 1187);
  b43legacy_phy_write(dev, 1187, (int )tmp___21);
  tmp___22 = _stack_restore(stack, 1, 1193);
  b43legacy_phy_write(dev, 1193, (int )tmp___22);
  tmp___23 = _stack_restore(stack, 1, 1171);
  b43legacy_phy_write(dev, 1171, (int )tmp___23);
  tmp___24 = _stack_restore(stack, 1, 1194);
  b43legacy_phy_write(dev, 1194, (int )tmp___24);
  tmp___25 = _stack_restore(stack, 1, 1196);
  b43legacy_phy_write(dev, 1196, (int )tmp___25);
  tmp___26 = _stack_restore(stack, 1, 1184);
  b43legacy_phy_write(dev, 1184, (int )tmp___26);
  tmp___27 = _stack_restore(stack, 1, 1191);
  b43legacy_phy_write(dev, 1191, (int )tmp___27);
  if ((unsigned int )phy->rev > 1U) {
    tmp___28 = _stack_restore(stack, 1, 1216);
    b43legacy_phy_write(dev, 1216, (int )tmp___28);
    tmp___29 = _stack_restore(stack, 1, 1217);
    b43legacy_phy_write(dev, 1217, (int )tmp___29);
  } else {
    tmp___30 = _stack_restore(stack, 1, 1030);
    b43legacy_phy_write(dev, 1030, (int )tmp___30);
  }
  tmp___31 = _stack_restore(stack, 1, 1185);
  b43legacy_phy_write(dev, 1185, (int )tmp___31);
  tmp___32 = _stack_restore(stack, 1, 1195);
  b43legacy_phy_write(dev, 1195, (int )tmp___32);
  tmp___33 = _stack_restore(stack, 1, 1192);
  b43legacy_phy_write(dev, 1192, (int )tmp___33);
  if ((unsigned int )phy->rev == 2U) {
    tmp___34 = _stack_restore(stack, 1, 1197);
    b43legacy_phy_write(dev, 1197, (int )tmp___34);
    tmp___35 = _stack_restore(stack, 1, 1198);
    b43legacy_phy_write(dev, 1198, (int )tmp___35);
  } else
  if ((unsigned int )phy->rev > 2U) {
    tmp___36 = _stack_restore(stack, 1, 1197);
    b43legacy_phy_write(dev, 1197, (int )tmp___36);
    tmp___37 = _stack_restore(stack, 1, 1045);
    b43legacy_phy_write(dev, 1045, (int )tmp___37);
    tmp___38 = _stack_restore(stack, 1, 1046);
    b43legacy_phy_write(dev, 1046, (int )tmp___38);
    tmp___39 = _stack_restore(stack, 1, 1047);
    b43legacy_phy_write(dev, 1047, (int )tmp___39);
    tmp___40 = _stack_restore(stack, 3, 6658);
    b43legacy_ilt_write(dev, 6658, (int )tmp___40);
    tmp___41 = _stack_restore(stack, 3, 6659);
    b43legacy_ilt_write(dev, 6659, (int )tmp___41);
  } else {
  }
  tmp___42 = _stack_restore(stack, 1, 1186);
  b43legacy_phy_write(dev, 1186, (int )tmp___42);
  tmp___43 = _stack_restore(stack, 1, 1192);
  b43legacy_phy_write(dev, 1192, (int )tmp___43);
  tmp___44 = _stack_restore(stack, 1, 1067);
  b43legacy_phy_write(dev, 1067, (int )tmp___44);
  tmp___45 = _stack_restore(stack, 1, 1164);
  b43legacy_phy_write(dev, 1164, (int )tmp___45);
  tmp32 = b43legacy_shm_read32(dev, 1, 94);
  if ((tmp32 & 2048U) != 0U) {
    tmp32 = tmp32 & 4294965247U;
    b43legacy_shm_write32(dev, 1, 94, tmp32);
  } else {
  }
  b43legacy_calc_nrssi_slope(dev);
  goto ldv_53349;
  default:
  tmp___47 = ldv__builtin_expect(1L, 0L);
  if (tmp___47 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___46 = ldv__builtin_expect(1L, 0L);
    if (tmp___46 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (1328), "i" (12UL));
      ldv_53352: ;
      goto ldv_53352;
    } else {
    }
  } else {
  }
  }
  ldv_53349: ;
  return;
}
}
int b43legacy_radio_set_interference_mitigation(struct b43legacy_wldev *dev , int mode )
{
  struct b43legacy_phy *phy ;
  int currentmode ;
  {
  phy = & dev->phy;
  if (((unsigned int )phy->type != 2U || (unsigned int )phy->rev == 0U) || ! phy->gmode) {
    return (-19);
  } else {
  }
  phy->aci_wlan_automatic = 0;
  switch (mode) {
  case 3:
  phy->aci_wlan_automatic = 1;
  if ((int )phy->aci_enable) {
    mode = 2;
  } else {
    mode = 0;
  }
  goto ldv_53360;
  case 0: ;
  case 1: ;
  case 2: ;
  goto ldv_53360;
  default: ;
  return (-22);
  }
  ldv_53360:
  currentmode = phy->interfmode;
  if (currentmode == mode) {
    return (0);
  } else {
  }
  if (currentmode != 0) {
    b43legacy_radio_interference_mitigation_disable(dev, currentmode);
  } else {
  }
  if (mode == 0) {
    phy->aci_enable = 0;
    phy->aci_hw_rssi = 0;
  } else {
    b43legacy_radio_interference_mitigation_enable(dev, mode);
  }
  phy->interfmode = mode;
  return (0);
}
}
u16 b43legacy_radio_calibrationvalue(struct b43legacy_wldev *dev )
{
  u16 reg ;
  u16 index ;
  u16 ret ;
  {
  reg = b43legacy_radio_read16(dev, 96);
  index = (u16 )(((int )reg & 30) >> 1);
  ret = (int )((u16 )rcc_table[(int )index]) << 1U;
  ret = (u16 )(((int )((short )reg) & 1) | (int )((short )ret));
  ret = (u16 )((unsigned int )ret | 32U);
  return (ret);
}
}
static u16 b43legacy_get_812_value(struct b43legacy_wldev *dev , u8 lpd )
{
  struct b43legacy_phy *phy ;
  u16 loop_or ;
  u16 adj_loopback_gain ;
  u8 loop ;
  u16 extern_lna_control ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u16 tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  phy = & dev->phy;
  loop_or = 0U;
  adj_loopback_gain = phy->loopback_gain[0];
  if (! phy->gmode) {
    return (0U);
  } else {
  }
  if ((unsigned int )phy->rev <= 1U && ! phy->gmode) {
    if ((unsigned int )phy->rev <= 6U || ((int )((dev->dev)->bus)->sprom.boardflags_lo & 4096) == 0) {
      switch ((int )lpd) {
      case 3: ;
      return (4018U);
      case 1: ;
      return (178U);
      case 5: ;
      return (12466U);
      case 4: ;
      return (12467U);
      default:
      tmp___0 = ldv__builtin_expect(1L, 0L);
      if (tmp___0 != 0L) {
        printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
        tmp = ldv__builtin_expect(1L, 0L);
        if (tmp != 0L) {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                               "i" (1422), "i" (12UL));
          ldv_53385: ;
          goto ldv_53385;
        } else {
        }
      } else {
      }
      }
    } else {
      switch ((int )lpd) {
      case 3: ;
      return (36786U);
      case 1: ;
      return (32946U);
      case 5: ;
      return (8370U);
      case 4: ;
      return (8371U);
      default:
      tmp___2 = ldv__builtin_expect(1L, 0L);
      if (tmp___2 != 0L) {
        printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
        tmp___1 = ldv__builtin_expect(1L, 0L);
        if (tmp___1 != 0L) {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                               "i" (1435), "i" (12UL));
          ldv_53391: ;
          goto ldv_53391;
        } else {
        }
      } else {
      }
      }
    }
  } else {
    if ((unsigned int )phy->radio_rev == 8U) {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 62U;
    } else {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 38U;
    }
    if ((unsigned int )adj_loopback_gain > 69U) {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 65466U;
      extern_lna_control = 12288U;
    } else
    if ((unsigned int )adj_loopback_gain > 57U) {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 65478U;
      extern_lna_control = 8192U;
    } else
    if ((unsigned int )adj_loopback_gain > 45U) {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 65490U;
      extern_lna_control = 4096U;
    } else {
      adj_loopback_gain = (unsigned int )adj_loopback_gain + 65520U;
      extern_lna_control = 0U;
    }
    loop = 0U;
    goto ldv_53395;
    ldv_53394:
    tmp___3 = (unsigned int )((u16 )loop) * 65530U + (unsigned int )adj_loopback_gain;
    if ((unsigned int )tmp___3 <= 5U) {
      goto ldv_53393;
    } else {
    }
    loop = (u8 )((int )loop + 1);
    ldv_53395: ;
    if ((unsigned int )loop <= 15U) {
      goto ldv_53394;
    } else {
    }
    ldv_53393:
    loop_or = (u16 )((int )((short )((int )loop << 8)) | (int )((short )extern_lna_control));
    if ((unsigned int )phy->rev > 6U && ((int )((dev->dev)->bus)->sprom.boardflags_lo & 4096) != 0) {
      if ((unsigned int )extern_lna_control != 0U) {
        loop_or = (u16 )((unsigned int )loop_or | 32768U);
      } else {
      }
      switch ((int )lpd) {
      case 3: ;
      return (36754U);
      case 1: ;
      return ((u16 )((unsigned int )loop_or | 32914U));
      case 5: ;
      return ((u16 )((unsigned int )loop_or | 8338U));
      case 4: ;
      return ((u16 )((unsigned int )loop_or | 8339U));
      default:
      tmp___5 = ldv__builtin_expect(1L, 0L);
      if (tmp___5 != 0L) {
        printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
        tmp___4 = ldv__builtin_expect(1L, 0L);
        if (tmp___4 != 0L) {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                               "i" (1477), "i" (12UL));
          ldv_53401: ;
          goto ldv_53401;
        } else {
        }
      } else {
      }
      }
    } else {
      switch ((int )lpd) {
      case 3: ;
      return (3986U);
      case 1: ;
      case 5: ;
      return ((u16 )((unsigned int )loop_or | 146U));
      case 4: ;
      return ((u16 )((unsigned int )loop_or | 147U));
      default:
      tmp___7 = ldv__builtin_expect(1L, 0L);
      if (tmp___7 != 0L) {
        printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
        tmp___6 = ldv__builtin_expect(1L, 0L);
        if (tmp___6 != 0L) {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                               "i" (1489), "i" (12UL));
          ldv_53407: ;
          goto ldv_53407;
        } else {
        }
      } else {
      }
      }
    }
  }
  return (0U);
}
}
u16 b43legacy_radio_init2050(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 backup[21U] ;
  unsigned int tmp ;
  u16 ret ;
  u16 i ;
  u16 j ;
  u32 tmp1 ;
  u32 tmp2 ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  u16 tmp___14 ;
  u16 tmp___15 ;
  u16 tmp___16 ;
  u16 tmp___17 ;
  u16 tmp___18 ;
  u16 tmp___19 ;
  u16 tmp___20 ;
  u16 tmp___21 ;
  u16 tmp___22 ;
  u16 tmp___23 ;
  u16 tmp___24 ;
  {
  phy = & dev->phy;
  backup[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 21U) {
      break;
    } else {
    }
    backup[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  tmp1 = 0U;
  tmp2 = 0U;
  backup[0] = b43legacy_radio_read16(dev, 67);
  backup[14] = b43legacy_radio_read16(dev, 81);
  backup[15] = b43legacy_radio_read16(dev, 82);
  backup[1] = b43legacy_phy_read(dev, 21);
  backup[16] = b43legacy_phy_read(dev, 90);
  backup[17] = b43legacy_phy_read(dev, 89);
  backup[18] = b43legacy_phy_read(dev, 88);
  if ((unsigned int )phy->type == 1U) {
    backup[2] = b43legacy_phy_read(dev, 48);
    backup[3] = b43legacy_read16(dev, 1004);
    b43legacy_phy_write(dev, 48, 255);
    b43legacy_write16(dev, 1004, 16191);
  } else
  if ((int )phy->gmode) {
    backup[4] = b43legacy_phy_read(dev, 2065);
    backup[5] = b43legacy_phy_read(dev, 2066);
    backup[6] = b43legacy_phy_read(dev, 2068);
    backup[7] = b43legacy_phy_read(dev, 2069);
    backup[8] = b43legacy_phy_read(dev, 1065);
    backup[9] = b43legacy_phy_read(dev, 2050);
    tmp___0 = b43legacy_phy_read(dev, 2068);
    b43legacy_phy_write(dev, 2068, (int )((unsigned int )tmp___0 | 3U));
    tmp___1 = b43legacy_phy_read(dev, 2069);
    b43legacy_phy_write(dev, 2069, (int )tmp___1 & 65532);
    tmp___2 = b43legacy_phy_read(dev, 1065);
    b43legacy_phy_write(dev, 1065, (int )tmp___2 & 32767);
    tmp___3 = b43legacy_phy_read(dev, 2050);
    b43legacy_phy_write(dev, 2050, (int )tmp___3 & 65532);
    if ((unsigned int )phy->rev > 1U) {
      backup[19] = b43legacy_phy_read(dev, 2063);
      backup[20] = b43legacy_phy_read(dev, 2064);
      if ((unsigned int )phy->rev > 2U) {
        b43legacy_phy_write(dev, 2063, 49184);
      } else {
        b43legacy_phy_write(dev, 2063, 32800);
      }
      b43legacy_phy_write(dev, 2064, 0);
    } else {
    }
    tmp___4 = b43legacy_get_812_value(dev, 3);
    b43legacy_phy_write(dev, 2066, (int )tmp___4);
    if ((unsigned int )phy->rev <= 6U || ((int )((dev->dev)->bus)->sprom.boardflags_lo & 4096) == 0) {
      b43legacy_phy_write(dev, 2065, 435);
    } else {
      b43legacy_phy_write(dev, 2065, 2483);
    }
  } else {
  }
  tmp___5 = b43legacy_read16(dev, 994);
  b43legacy_write16(dev, 994, (int )((unsigned int )tmp___5 | 32768U));
  backup[10] = b43legacy_phy_read(dev, 53);
  tmp___6 = b43legacy_phy_read(dev, 53);
  b43legacy_phy_write(dev, 53, (int )tmp___6 & 65407);
  backup[11] = b43legacy_read16(dev, 998);
  backup[12] = b43legacy_read16(dev, 1012);
  if ((unsigned int )phy->analog == 0U) {
    b43legacy_write16(dev, 998, 290);
  } else {
    if ((unsigned int )phy->analog > 1U) {
      tmp___7 = b43legacy_phy_read(dev, 3);
      b43legacy_phy_write(dev, 3, (int )((unsigned int )tmp___7 | 64U));
    } else {
    }
    tmp___8 = b43legacy_read16(dev, 1012);
    b43legacy_write16(dev, 1012, (int )((unsigned int )tmp___8 | 8192U));
  }
  ret = b43legacy_radio_calibrationvalue(dev);
  if ((unsigned int )phy->type == 1U) {
    b43legacy_radio_write16(dev, 120, 38);
  } else {
  }
  if ((int )phy->gmode) {
    tmp___9 = b43legacy_get_812_value(dev, 3);
    b43legacy_phy_write(dev, 2066, (int )tmp___9);
  } else {
  }
  b43legacy_phy_write(dev, 21, 49071);
  b43legacy_phy_write(dev, 43, 5123);
  if ((int )phy->gmode) {
    tmp___10 = b43legacy_get_812_value(dev, 1);
    b43legacy_phy_write(dev, 2066, (int )tmp___10);
  } else {
  }
  b43legacy_phy_write(dev, 21, 49056);
  tmp___11 = b43legacy_radio_read16(dev, 81);
  b43legacy_radio_write16(dev, 81, (int )((unsigned int )tmp___11 | 4U));
  if ((unsigned int )phy->radio_rev == 8U) {
    b43legacy_radio_write16(dev, 67, 31);
  } else {
    b43legacy_radio_write16(dev, 82, 0);
    tmp___12 = b43legacy_radio_read16(dev, 67);
    b43legacy_radio_write16(dev, 67, (int )((u16 )(((int )((short )tmp___12) & -16) | 9)));
  }
  b43legacy_phy_write(dev, 88, 0);
  i = 0U;
  goto ldv_53419;
  ldv_53418:
  b43legacy_phy_write(dev, 90, 1152);
  b43legacy_phy_write(dev, 89, 51216);
  b43legacy_phy_write(dev, 88, 13);
  if ((int )phy->gmode) {
    tmp___13 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___13);
  } else {
  }
  b43legacy_phy_write(dev, 21, 44976);
  __const_udelay(42950UL);
  if ((int )phy->gmode) {
    tmp___14 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___14);
  } else {
  }
  b43legacy_phy_write(dev, 21, 61360);
  __const_udelay(42950UL);
  if ((int )phy->gmode) {
    tmp___15 = b43legacy_get_812_value(dev, 4);
    b43legacy_phy_write(dev, 2066, (int )tmp___15);
  } else {
  }
  b43legacy_phy_write(dev, 21, 65520);
  __const_udelay(85900UL);
  tmp___16 = b43legacy_phy_read(dev, 45);
  tmp1 = (u32 )tmp___16 + tmp1;
  b43legacy_phy_write(dev, 88, 0);
  if ((int )phy->gmode) {
    tmp___17 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___17);
  } else {
  }
  b43legacy_phy_write(dev, 21, 44976);
  i = (u16 )((int )i + 1);
  ldv_53419: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_53418;
  } else {
  }
  tmp1 = tmp1 + 1U;
  tmp1 = tmp1 >> 9;
  __const_udelay(42950UL);
  b43legacy_phy_write(dev, 88, 0);
  i = 0U;
  goto ldv_53426;
  ldv_53425:
  tmp___18 = flip_4bit((int )i);
  b43legacy_radio_write16(dev, 120, (int )((u16 )((int )((short )((int )tmp___18 << 1)) | 32)));
  backup[13] = b43legacy_radio_read16(dev, 120);
  __const_udelay(42950UL);
  j = 0U;
  goto ldv_53422;
  ldv_53421:
  b43legacy_phy_write(dev, 90, 3456);
  b43legacy_phy_write(dev, 89, 51216);
  b43legacy_phy_write(dev, 88, 13);
  if ((int )phy->gmode) {
    tmp___19 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___19);
  } else {
  }
  b43legacy_phy_write(dev, 21, 44976);
  __const_udelay(42950UL);
  if ((int )phy->gmode) {
    tmp___20 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___20);
  } else {
  }
  b43legacy_phy_write(dev, 21, 61360);
  __const_udelay(42950UL);
  if ((int )phy->gmode) {
    tmp___21 = b43legacy_get_812_value(dev, 4);
    b43legacy_phy_write(dev, 2066, (int )tmp___21);
  } else {
  }
  b43legacy_phy_write(dev, 21, 65520);
  __const_udelay(42950UL);
  tmp___22 = b43legacy_phy_read(dev, 45);
  tmp2 = (u32 )tmp___22 + tmp2;
  b43legacy_phy_write(dev, 88, 0);
  if ((int )phy->gmode) {
    tmp___23 = b43legacy_get_812_value(dev, 5);
    b43legacy_phy_write(dev, 2066, (int )tmp___23);
  } else {
  }
  b43legacy_phy_write(dev, 21, 44976);
  j = (u16 )((int )j + 1);
  ldv_53422: ;
  if ((unsigned int )j <= 15U) {
    goto ldv_53421;
  } else {
  }
  tmp2 = tmp2 + 1U;
  tmp2 = tmp2 >> 8;
  if (tmp1 < tmp2) {
    goto ldv_53424;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_53426: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_53425;
  } else {
  }
  ldv_53424:
  b43legacy_phy_write(dev, 21, (int )backup[1]);
  b43legacy_radio_write16(dev, 81, (int )backup[14]);
  b43legacy_radio_write16(dev, 82, (int )backup[15]);
  b43legacy_radio_write16(dev, 67, (int )backup[0]);
  b43legacy_phy_write(dev, 90, (int )backup[16]);
  b43legacy_phy_write(dev, 89, (int )backup[17]);
  b43legacy_phy_write(dev, 88, (int )backup[18]);
  b43legacy_write16(dev, 998, (int )backup[11]);
  if ((unsigned int )phy->analog != 0U) {
    b43legacy_write16(dev, 1012, (int )backup[12]);
  } else {
  }
  b43legacy_phy_write(dev, 53, (int )backup[10]);
  b43legacy_radio_selectchannel(dev, (int )phy->channel, 1);
  if ((unsigned int )phy->type == 1U) {
    b43legacy_phy_write(dev, 48, (int )backup[2]);
    b43legacy_write16(dev, 1004, (int )backup[3]);
  } else
  if ((int )phy->gmode) {
    tmp___24 = b43legacy_read16(dev, 994);
    b43legacy_write16(dev, 994, (int )tmp___24 & 32767);
    b43legacy_phy_write(dev, 2065, (int )backup[4]);
    b43legacy_phy_write(dev, 2066, (int )backup[5]);
    b43legacy_phy_write(dev, 2068, (int )backup[6]);
    b43legacy_phy_write(dev, 2069, (int )backup[7]);
    b43legacy_phy_write(dev, 1065, (int )backup[8]);
    b43legacy_phy_write(dev, 2050, (int )backup[9]);
    if ((unsigned int )phy->rev > 1U) {
      b43legacy_phy_write(dev, 2063, (int )backup[19]);
      b43legacy_phy_write(dev, 2064, (int )backup[20]);
    } else {
    }
  } else {
  }
  if ((unsigned int )i > 14U) {
    ret = backup[13];
  } else {
  }
  return (ret);
}
}
int b43legacy_radio_selectchannel(struct b43legacy_wldev *dev , u8 channel , int synthetic_pu_workaround )
{
  struct b43legacy_phy *phy ;
  int __ret_warn_on ;
  long tmp ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  {
  phy = & dev->phy;
  if ((unsigned int )channel == 255U) {
    switch ((int )phy->type) {
    case 1: ;
    case 2:
    channel = 6U;
    goto ldv_53439;
    default:
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                         1759);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    ldv_53439: ;
  } else {
  }
  if (synthetic_pu_workaround != 0) {
    b43legacy_synth_pu_workaround(dev, (int )channel);
  } else {
  }
  tmp___0 = channel2freq_bg((int )channel);
  b43legacy_write16(dev, 1008, (int )tmp___0);
  if ((unsigned int )channel == 14U) {
    if ((unsigned int )((dev->dev)->bus)->sprom.country_code == 5U) {
      tmp___1 = b43legacy_shm_read32(dev, 1, 94);
      b43legacy_shm_write32(dev, 1, 94, tmp___1 & 4294967167U);
    } else {
      tmp___2 = b43legacy_shm_read32(dev, 1, 94);
      b43legacy_shm_write32(dev, 1, 94, tmp___2 | 128U);
    }
    tmp___3 = b43legacy_read16(dev, 1012);
    b43legacy_write16(dev, 1012, (int )((unsigned int )tmp___3 | 2048U));
  } else {
    tmp___4 = b43legacy_read16(dev, 1012);
    b43legacy_write16(dev, 1012, (int )tmp___4 & 63423);
  }
  phy->channel = channel;
  msleep(8U);
  return (0);
}
}
void b43legacy_radio_set_txantenna(struct b43legacy_wldev *dev , u32 val )
{
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  val = val << 8;
  tmp___0 = b43legacy_shm_read16(dev, 1, 34);
  tmp = (unsigned int )tmp___0 & 64767U;
  b43legacy_shm_write16(dev, 1, 34, (int )((u16 )val) | (int )tmp);
  tmp___1 = b43legacy_shm_read16(dev, 1, 936);
  tmp = (unsigned int )tmp___1 & 64767U;
  b43legacy_shm_write16(dev, 1, 936, (int )((u16 )val) | (int )tmp);
  tmp___2 = b43legacy_shm_read16(dev, 1, 84);
  tmp = (unsigned int )tmp___2 & 64767U;
  b43legacy_shm_write16(dev, 1, 84, (int )((u16 )val) | (int )tmp);
  return;
}
}
static u16 b43legacy_get_txgain_base_band(u16 txpower )
{
  u16 ret ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned int )txpower > 63U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       1819);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned int )txpower > 53U) {
    ret = 2U;
  } else
  if ((unsigned int )txpower > 48U) {
    ret = 4U;
  } else
  if ((unsigned int )txpower > 43U) {
    ret = 5U;
  } else {
    ret = 6U;
  }
  return (ret);
}
}
static u16 b43legacy_get_txgain_freq_power_amp(u16 txpower )
{
  u16 ret ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned int )txpower > 63U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       1838);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned int )txpower > 31U) {
    ret = 0U;
  } else
  if ((unsigned int )txpower > 24U) {
    ret = 1U;
  } else
  if ((unsigned int )txpower > 19U) {
    ret = 2U;
  } else
  if ((unsigned int )txpower > 11U) {
    ret = 3U;
  } else {
    ret = 4U;
  }
  return (ret);
}
}
static u16 b43legacy_get_txgain_dac(u16 txpower )
{
  u16 ret ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned int )txpower > 63U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       1859);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned int )txpower > 53U) {
    ret = (unsigned int )txpower + 65483U;
  } else
  if ((unsigned int )txpower > 48U) {
    ret = (unsigned int )txpower + 65494U;
  } else
  if ((unsigned int )txpower > 43U) {
    ret = (unsigned int )txpower + 65499U;
  } else
  if ((unsigned int )txpower > 31U) {
    ret = (unsigned int )txpower + 65504U;
  } else
  if ((unsigned int )txpower > 24U) {
    ret = (unsigned int )txpower + 65516U;
  } else
  if ((unsigned int )txpower > 19U) {
    ret = (unsigned int )txpower + 65523U;
  } else
  if ((unsigned int )txpower > 11U) {
    ret = (unsigned int )txpower + 65528U;
  } else {
    ret = txpower;
  }
  return (ret);
}
}
void b43legacy_radio_set_txpower_a(struct b43legacy_wldev *dev , u16 txpower )
{
  struct b43legacy_phy *phy ;
  u16 pamp ;
  u16 base ;
  u16 dac ;
  u16 ilt ;
  u16 __min1 ;
  u16 __max1 ;
  u16 __max2 ;
  u16 __min2 ;
  {
  phy = & dev->phy;
  __max1 = txpower;
  __max2 = 0U;
  __min1 = (u16 )((int )__max1 > (int )__max2 ? __max1 : __max2);
  __min2 = 63U;
  txpower = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  pamp = b43legacy_get_txgain_freq_power_amp((int )txpower);
  pamp = (int )pamp << 5U;
  pamp = (unsigned int )pamp & 224U;
  b43legacy_phy_write(dev, 25, (int )pamp);
  base = b43legacy_get_txgain_base_band((int )txpower);
  base = (unsigned int )base & 15U;
  b43legacy_phy_write(dev, 23, (int )((unsigned int )base | 32U));
  ilt = b43legacy_ilt_read(dev, 12289);
  ilt = (unsigned int )ilt & 7U;
  dac = b43legacy_get_txgain_dac((int )txpower);
  dac = (int )dac << 3U;
  dac = (u16 )((int )dac | (int )ilt);
  b43legacy_ilt_write(dev, 12289, (int )dac);
  phy->__annonCompField106.txpwr_offset = txpower;
  return;
}
}
void b43legacy_radio_set_txpower_bg(struct b43legacy_wldev *dev , u16 baseband_attenuation ,
                                    u16 radio_attenuation , u16 txpower )
{
  struct b43legacy_phy *phy ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int __ret_warn_on___1 ;
  long tmp___1 ;
  int __ret_warn_on___2 ;
  long tmp___2 ;
  u16 tmp___3 ;
  {
  phy = & dev->phy;
  if ((unsigned int )baseband_attenuation == 65535U) {
    baseband_attenuation = phy->__annonCompField105.bbatt;
  } else {
  }
  if ((unsigned int )radio_attenuation == 65535U) {
    radio_attenuation = phy->__annonCompField105.rfatt;
  } else {
  }
  if ((unsigned int )txpower == 65535U) {
    txpower = phy->__annonCompField105.txctl1;
  } else {
  }
  phy->__annonCompField105.bbatt = baseband_attenuation;
  phy->__annonCompField105.rfatt = radio_attenuation;
  phy->__annonCompField105.txctl1 = txpower;
  __ret_warn_on = (unsigned int )baseband_attenuation > 11U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       1931);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned int )phy->radio_rev <= 5U) {
    __ret_warn_on___0 = (unsigned int )radio_attenuation > 9U;
    tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                         1933);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  } else {
    __ret_warn_on___1 = (unsigned int )radio_attenuation > 31U;
    tmp___1 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                         1935);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  }
  __ret_warn_on___2 = (unsigned int )txpower > 7U;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       1936);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  b43legacy_phy_set_baseband_attenuation(dev, (int )baseband_attenuation);
  b43legacy_radio_write16(dev, 67, (int )radio_attenuation);
  b43legacy_shm_write16(dev, 1, 100, (int )radio_attenuation);
  if ((unsigned int )phy->radio_ver == 8272U) {
    tmp___3 = b43legacy_radio_read16(dev, 82);
    b43legacy_radio_write16(dev, 82, (int )((u16 )(((int )((short )tmp___3) & -113) | ((int )((short )((int )txpower << 4)) & 112))));
  } else {
  }
  if ((unsigned int )phy->type == 2U) {
    b43legacy_phy_lo_adjust(dev, 0);
  } else {
  }
  return;
}
}
u16 b43legacy_default_baseband_attenuation(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->radio_ver == 8272U && (unsigned int )phy->radio_rev <= 5U) {
    return (0U);
  } else {
  }
  return (2U);
}
}
u16 b43legacy_default_radio_attenuation(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  u16 att ;
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  phy = & dev->phy;
  att = 65535U;
  switch ((int )phy->radio_ver) {
  case 8275: ;
  switch ((int )phy->radio_rev) {
  case 1:
  att = 6U;
  goto ldv_53507;
  }
  ldv_53507: ;
  goto ldv_53508;
  case 8272: ;
  switch ((int )phy->radio_rev) {
  case 0:
  att = 5U;
  goto ldv_53511;
  case 1: ;
  if ((unsigned int )phy->type == 2U) {
    tmp___0 = is_bcm_board_vendor(dev);
    if (((int )tmp___0 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1057U) && (unsigned int )((dev->dev)->bus)->sprom.board_rev > 29U) {
      att = 3U;
    } else {
      tmp = is_bcm_board_vendor(dev);
      if ((int )tmp && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) {
        att = 3U;
      } else {
        att = 1U;
      }
    }
  } else {
    tmp___1 = is_bcm_board_vendor(dev);
    if (((int )tmp___1 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1057U) && (unsigned int )((dev->dev)->bus)->sprom.board_rev > 29U) {
      att = 7U;
    } else {
      att = 6U;
    }
  }
  goto ldv_53511;
  case 2: ;
  if ((unsigned int )phy->type == 2U) {
    tmp___3 = is_bcm_board_vendor(dev);
    if (((int )tmp___3 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1057U) && (unsigned int )((dev->dev)->bus)->sprom.board_rev > 29U) {
      att = 3U;
    } else {
      tmp___2 = is_bcm_board_vendor(dev);
      if ((int )tmp___2 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1046U) {
        att = 5U;
      } else
      if ((unsigned int )((dev->dev)->bus)->chip_id == 17184U) {
        att = 4U;
      } else {
        att = 3U;
      }
    }
  } else {
    att = 6U;
  }
  goto ldv_53511;
  case 3:
  att = 5U;
  goto ldv_53511;
  case 4: ;
  case 5:
  att = 1U;
  goto ldv_53511;
  case 6: ;
  case 7:
  att = 5U;
  goto ldv_53511;
  case 8:
  att = 26U;
  goto ldv_53511;
  case 9: ;
  default:
  att = 5U;
  }
  ldv_53511: ;
  }
  ldv_53508:
  tmp___4 = is_bcm_board_vendor(dev);
  if ((int )tmp___4 && (unsigned int )((dev->dev)->bus)->boardinfo.type == 1057U) {
    if ((unsigned int )((dev->dev)->bus)->sprom.board_rev <= 66U) {
      att = 2U;
    } else
    if ((unsigned int )((dev->dev)->bus)->sprom.board_rev <= 80U) {
      att = 3U;
    } else {
    }
  } else {
  }
  if ((unsigned int )att == 65535U) {
    att = 5U;
  } else {
  }
  return (att);
}
}
u16 b43legacy_default_txctl1(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  {
  phy = & dev->phy;
  if ((unsigned int )phy->radio_ver != 8272U) {
    return (0U);
  } else {
  }
  if ((unsigned int )phy->radio_rev == 1U) {
    return (3U);
  } else {
  }
  if ((unsigned int )phy->radio_rev <= 5U) {
    return (2U);
  } else {
  }
  if ((unsigned int )phy->radio_rev == 8U) {
    return (1U);
  } else {
  }
  return (0U);
}
}
void b43legacy_radio_turn_on(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  int err ;
  u8 channel ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  phy = & dev->phy;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                2068, 0);
  if ((int )phy->radio_on) {
    return;
  } else {
  }
  switch ((int )phy->type) {
  case 1: ;
  case 2:
  b43legacy_phy_write(dev, 21, 32768);
  b43legacy_phy_write(dev, 21, 52224);
  b43legacy_phy_write(dev, 21, (int )phy->gmode ? 192 : 0);
  if ((int )phy->radio_off_context.valid) {
    b43legacy_phy_write(dev, 2065, (int )phy->radio_off_context.rfover);
    b43legacy_phy_write(dev, 2066, (int )phy->radio_off_context.rfoverval);
    phy->radio_off_context.valid = 0;
  } else {
  }
  channel = phy->channel;
  err = b43legacy_radio_selectchannel(dev, 6, 1);
  tmp = b43legacy_radio_selectchannel(dev, (int )channel, 0);
  err = tmp | err;
  __ret_warn_on = err != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c",
                       2092);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_53536;
  default:
  tmp___2 = ldv__builtin_expect(1L, 0L);
  if (tmp___2 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp___1 = ldv__builtin_expect(1L, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/radio.c"),
                           "i" (2095), "i" (12UL));
      ldv_53538: ;
      goto ldv_53538;
    } else {
    }
  } else {
  }
  }
  ldv_53536:
  phy->radio_on = 1;
  return;
}
}
void b43legacy_radio_turn_off(struct b43legacy_wldev *dev , bool force )
{
  struct b43legacy_phy *phy ;
  u16 rfover ;
  u16 rfoverval ;
  {
  phy = & dev->phy;
  if (! phy->radio_on && ! force) {
    return;
  } else {
  }
  if ((unsigned int )phy->type == 2U && (unsigned int )(dev->dev)->id.revision > 4U) {
    rfover = b43legacy_phy_read(dev, 2065);
    rfoverval = b43legacy_phy_read(dev, 2066);
    if (! force) {
      phy->radio_off_context.rfover = rfover;
      phy->radio_off_context.rfoverval = rfoverval;
      phy->radio_off_context.valid = 1;
    } else {
    }
    b43legacy_phy_write(dev, 2065, (int )((unsigned int )rfover | 140U));
    b43legacy_phy_write(dev, 2066, (int )rfoverval & 65395);
  } else {
    b43legacy_phy_write(dev, 21, 43520);
  }
  phy->radio_on = 0;
  b43legacydbg(dev->wl, "Radio initialized\n");
  return;
}
}
void b43legacy_radio_clear_tssi(struct b43legacy_wldev *dev )
{
  struct b43legacy_phy *phy ;
  {
  phy = & dev->phy;
  switch ((int )phy->type) {
  case 1: ;
  case 2:
  b43legacy_shm_write16(dev, 1, 88, 32639);
  b43legacy_shm_write16(dev, 1, 90, 32639);
  b43legacy_shm_write16(dev, 1, 112, 32639);
  b43legacy_shm_write16(dev, 1, 114, 32639);
  goto ldv_53552;
  }
  ldv_53552: ;
  return;
}
}
bool ldv_queue_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_66(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_68(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern long simple_strtol(char const * , char ** , unsigned int ) ;
extern int memcmp(void const * , void const * , size_t ) ;
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_80(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool capable(int ) ;
int b43legacy_sysfs_register(struct b43legacy_wldev *wldev ) ;
void b43legacy_sysfs_unregister(struct b43legacy_wldev *wldev ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
__inline static struct ssb_device *dev_to_ssb_dev(struct device *dev )
{
  struct __ssb_dev_wrapper *wrap ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  wrap = (struct __ssb_dev_wrapper *)__mptr;
  return (wrap->sdev);
}
}
__inline static struct b43legacy_wldev *dev_to_b43legacy_wldev(struct device *dev )
{
  struct ssb_device *ssb_dev ;
  struct ssb_device *tmp ;
  void *tmp___0 ;
  {
  tmp = dev_to_ssb_dev(dev);
  ssb_dev = tmp;
  tmp___0 = ssb_get_drvdata(ssb_dev);
  return ((struct b43legacy_wldev *)tmp___0);
}
}
static int get_integer(char const *buf , size_t count )
{
  char tmp[11U] ;
  unsigned int tmp___0 ;
  int ret ;
  size_t __min1 ;
  size_t __min2 ;
  long tmp___1 ;
  {
  tmp[0] = 0;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 11U) {
      break;
    } else {
    }
    tmp[tmp___0] = (char)0;
    tmp___0 = tmp___0 + 1U;
  }
  ret = -22;
  if (count == 0UL) {
    goto out;
  } else {
  }
  __min1 = count;
  __min2 = 10UL;
  count = __min1 < __min2 ? __min1 : __min2;
  memcpy((void *)(& tmp), (void const *)buf, count);
  tmp___1 = simple_strtol((char const *)(& tmp), (char **)0, 10U);
  ret = (int )tmp___1;
  out: ;
  return (ret);
}
}
static int get_boolean(char const *buf , size_t count )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  if (count != 0UL) {
    if ((int )((signed char )*buf) == 49) {
      return (1);
    } else {
    }
    if ((int )((signed char )*buf) == 48) {
      return (0);
    } else {
    }
    if (count > 3UL) {
      tmp = memcmp((void const *)buf, (void const *)"true", 4UL);
      if (tmp == 0) {
        return (1);
      } else {
      }
    } else {
    }
    if (count > 4UL) {
      tmp___0 = memcmp((void const *)buf, (void const *)"false", 5UL);
      if (tmp___0 == 0) {
        return (0);
      } else {
      }
    } else {
    }
    if (count > 2UL) {
      tmp___1 = memcmp((void const *)buf, (void const *)"yes", 3UL);
      if (tmp___1 == 0) {
        return (1);
      } else {
      }
    } else {
    }
    if (count > 1UL) {
      tmp___2 = memcmp((void const *)buf, (void const *)"no", 2UL);
      if (tmp___2 == 0) {
        return (0);
      } else {
      }
    } else {
    }
    if (count > 1UL) {
      tmp___3 = memcmp((void const *)buf, (void const *)"on", 2UL);
      if (tmp___3 == 0) {
        return (1);
      } else {
      }
    } else {
    }
    if (count > 2UL) {
      tmp___4 = memcmp((void const *)buf, (void const *)"off", 3UL);
      if (tmp___4 == 0) {
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22);
}
}
static ssize_t b43legacy_attr_interfmode_show(struct device *dev , struct device_attribute *attr ,
                                              char *buf )
{
  struct b43legacy_wldev *wldev ;
  struct b43legacy_wldev *tmp ;
  ssize_t count ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int __ret_warn_on ;
  long tmp___5 ;
  {
  tmp = dev_to_b43legacy_wldev(dev);
  wldev = tmp;
  count = 0L;
  tmp___0 = capable(12);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-1L);
  } else {
  }
  mutex_lock_nested(& (wldev->wl)->mutex, 0U);
  switch (wldev->phy.interfmode) {
  case 0:
  tmp___2 = snprintf(buf, 4096UL, "0 (No Interference Mitigation)\n");
  count = (ssize_t )tmp___2;
  goto ldv_53078;
  case 1:
  tmp___3 = snprintf(buf, 4096UL, "1 (Non-WLAN Interference Mitigation)\n");
  count = (ssize_t )tmp___3;
  goto ldv_53078;
  case 2:
  tmp___4 = snprintf(buf, 4096UL, "2 (WLAN Interference Mitigation)\n");
  count = (ssize_t )tmp___4;
  goto ldv_53078;
  default:
  __ret_warn_on = 1;
  tmp___5 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___5 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/sysfs.c",
                       101);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_53078:
  mutex_unlock(& (wldev->wl)->mutex);
  return (count);
}
}
static ssize_t b43legacy_attr_interfmode_store(struct device *dev , struct device_attribute *attr ,
                                               char const *buf , size_t count )
{
  struct b43legacy_wldev *wldev ;
  struct b43legacy_wldev *tmp ;
  unsigned long flags ;
  int err ;
  int mode ;
  bool tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  tmp = dev_to_b43legacy_wldev(dev);
  wldev = tmp;
  tmp___0 = capable(12);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-1L);
  } else {
  }
  mode = get_integer(buf, count);
  switch (mode) {
  case 0:
  mode = 0;
  goto ldv_53095;
  case 1:
  mode = 1;
  goto ldv_53095;
  case 2:
  mode = 2;
  goto ldv_53095;
  case 3:
  mode = 3;
  goto ldv_53095;
  default: ;
  return (-22L);
  }
  ldv_53095:
  mutex_lock_nested(& (wldev->wl)->mutex, 0U);
  tmp___2 = spinlock_check(& (wldev->wl)->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  err = b43legacy_radio_set_interference_mitigation(wldev, mode);
  if (err != 0) {
    b43legacyerr(wldev->wl, "Interference Mitigation not supported by device\n");
  } else {
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& (wldev->wl)->irq_lock, flags);
  mutex_unlock(& (wldev->wl)->mutex);
  return ((ssize_t )(err != 0 ? (size_t )err : count));
}
}
static struct device_attribute dev_attr_interference = {{"interference", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & b43legacy_attr_interfmode_show, & b43legacy_attr_interfmode_store};
static ssize_t b43legacy_attr_preamble_show(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  struct b43legacy_wldev *wldev ;
  struct b43legacy_wldev *tmp ;
  ssize_t count ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = dev_to_b43legacy_wldev(dev);
  wldev = tmp;
  tmp___0 = capable(12);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-1L);
  } else {
  }
  mutex_lock_nested(& (wldev->wl)->mutex, 0U);
  if ((int )wldev->short_preamble) {
    tmp___2 = snprintf(buf, 4096UL, "1 (Short Preamble enabled)\n");
    count = (ssize_t )tmp___2;
  } else {
    tmp___3 = snprintf(buf, 4096UL, "0 (Short Preamble disabled)\n");
    count = (ssize_t )tmp___3;
  }
  mutex_unlock(& (wldev->wl)->mutex);
  return (count);
}
}
static ssize_t b43legacy_attr_preamble_store(struct device *dev , struct device_attribute *attr ,
                                             char const *buf , size_t count )
{
  struct b43legacy_wldev *wldev ;
  struct b43legacy_wldev *tmp ;
  unsigned long flags ;
  int value ;
  bool tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  tmp = dev_to_b43legacy_wldev(dev);
  wldev = tmp;
  tmp___0 = capable(12);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-1L);
  } else {
  }
  value = get_boolean(buf, count);
  if (value < 0) {
    return ((ssize_t )value);
  } else {
  }
  mutex_lock_nested(& (wldev->wl)->mutex, 0U);
  tmp___2 = spinlock_check(& (wldev->wl)->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  wldev->short_preamble = value != 0;
  spin_unlock_irqrestore(& (wldev->wl)->irq_lock, flags);
  mutex_unlock(& (wldev->wl)->mutex);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_shortpreamble = {{"shortpreamble", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & b43legacy_attr_preamble_show, & b43legacy_attr_preamble_store};
int b43legacy_sysfs_register(struct b43legacy_wldev *wldev )
{
  struct device *dev ;
  int err ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  dev = (wldev->dev)->dev;
  tmp = atomic_read((atomic_t const *)(& wldev->__init_status));
  __ret_warn_on = tmp != 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/sysfs.c",
                       216);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  err = device_create_file(dev, (struct device_attribute const *)(& dev_attr_interference));
  if (err != 0) {
    goto out;
  } else {
  }
  err = device_create_file(dev, (struct device_attribute const *)(& dev_attr_shortpreamble));
  if (err != 0) {
    goto err_remove_interfmode;
  } else {
  }
  out: ;
  return (err);
  err_remove_interfmode:
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_interference));
  goto out;
}
}
void b43legacy_sysfs_unregister(struct b43legacy_wldev *wldev )
{
  struct device *dev ;
  {
  dev = (wldev->dev)->dev;
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_shortpreamble));
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_interference));
  return;
}
}
void ldv_initialize_device_attribute_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_shortpreamble_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_shortpreamble_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_interference_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_interference_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_main_exported_13(void)
{
  size_t ldvarg19 ;
  char *ldvarg20 ;
  void *tmp ;
  char *ldvarg18 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    b43legacy_attr_interfmode_store(dev_attr_interference_group1, dev_attr_interference_group0,
                                    (char const *)ldvarg20, ldvarg19);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_53174;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    b43legacy_attr_interfmode_show(dev_attr_interference_group1, dev_attr_interference_group0,
                                   ldvarg18);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_53174;
  default:
  ldv_stop();
  }
  ldv_53174: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  char *ldvarg30 ;
  void *tmp ;
  size_t ldvarg31 ;
  char *ldvarg32 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg31), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    b43legacy_attr_preamble_store(dev_attr_shortpreamble_group1, dev_attr_shortpreamble_group0,
                                  (char const *)ldvarg32, ldvarg31);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53184;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    b43legacy_attr_preamble_show(dev_attr_shortpreamble_group1, dev_attr_shortpreamble_group0,
                                 ldvarg30);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53184;
  default:
  ldv_stop();
  }
  ldv_53184: ;
  return;
}
}
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_80(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_94(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_97(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_96(struct workqueue_struct *ldv_func_arg1 ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
extern void skb_trim(struct sk_buff * , unsigned int ) ;
__inline static int ieee80211_has_protected(__le16 fc )
{
  {
  return (((int )fc & 16384) != 0);
}
}
__inline static int ieee80211_is_beacon(__le16 fc )
{
  {
  return (((int )fc & 252) == 128);
}
}
extern unsigned int ieee80211_hdrlen(__le16 ) ;
__inline static struct ieee80211_rx_status *IEEE80211_SKB_RXCB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_rx_status *)(& skb->cb));
}
}
__inline static struct ieee80211_rate *ieee80211_get_rts_cts_rate(struct ieee80211_hw const *hw ,
                                                                  struct ieee80211_tx_info const *c )
{
  {
  if ((int )((signed char )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rts_cts_rate_idx) < 0) {
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rts_cts_rate_idx);
}
}
__inline static struct ieee80211_rate *ieee80211_get_alt_retry_rate(struct ieee80211_hw const *hw ,
                                                                    struct ieee80211_tx_info const *c ,
                                                                    int idx )
{
  {
  if ((int )((signed char )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rates[idx + 1].idx) < 0) {
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->__annonCompField103.control.__annonCompField101.__annonCompField100.rates[idx + 1].idx);
}
}
extern void ieee80211_rx_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_rts_get(struct ieee80211_hw * , struct ieee80211_vif * , void const * ,
                              size_t , struct ieee80211_tx_info const * , struct ieee80211_rts * ) ;
extern void ieee80211_ctstoself_get(struct ieee80211_hw * , struct ieee80211_vif * ,
                                    void const * , size_t , struct ieee80211_tx_info const * ,
                                    struct ieee80211_cts * ) ;
void b43legacy_debugfs_log_txstat(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status ) ;
__inline static int b43legacy_is_ofdm_rate(int rate )
{
  int tmp ;
  {
  tmp = b43legacy_is_cck_rate(rate);
  return (tmp == 0);
}
}
int b43legacy_generate_txhdr(struct b43legacy_wldev *dev , u8 *txhdr , unsigned char const *fragment_data ,
                             unsigned int fragment_len , struct ieee80211_tx_info *info ,
                             u16 cookie ) ;
void b43legacy_rx(struct b43legacy_wldev *dev , struct sk_buff *skb , void const *_rxhdr ) ;
void b43legacy_handle_hwtxstatus(struct b43legacy_wldev *dev , struct b43legacy_hwtxstatus const *hw ) ;
void b43legacy_tx_suspend(struct b43legacy_wldev *dev ) ;
void b43legacy_tx_resume(struct b43legacy_wldev *dev ) ;
__inline static int b43legacy_new_kidx_api(struct b43legacy_wldev *dev )
{
  {
  return ((unsigned int )dev->fw.rev > 350U);
}
}
__inline static u8 b43legacy_kidx_to_fw(struct b43legacy_wldev *dev , u8 raw_kidx )
{
  u8 firmware_kidx ;
  int tmp ;
  {
  tmp = b43legacy_new_kidx_api(dev);
  if (tmp != 0) {
    firmware_kidx = raw_kidx;
  } else
  if ((unsigned int )raw_kidx > 3U) {
    firmware_kidx = (unsigned int )raw_kidx + 252U;
  } else {
    firmware_kidx = raw_kidx;
  }
  return (firmware_kidx);
}
}
__inline static u8 b43legacy_kidx_to_raw(struct b43legacy_wldev *dev , u8 firmware_kidx )
{
  u8 raw_kidx ;
  int tmp ;
  {
  tmp = b43legacy_new_kidx_api(dev);
  if (tmp != 0) {
    raw_kidx = firmware_kidx;
  } else {
    raw_kidx = (unsigned int )firmware_kidx + 4U;
  }
  return (raw_kidx);
}
}
void b43legacy_dma_tx_suspend(struct b43legacy_wldev *dev ) ;
void b43legacy_dma_tx_resume(struct b43legacy_wldev *dev ) ;
void b43legacy_dma_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status ) ;
void b43legacy_pio_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status ) ;
void b43legacy_pio_freeze_txqueues(struct b43legacy_wldev *dev ) ;
void b43legacy_pio_thaw_txqueues(struct b43legacy_wldev *dev ) ;
static u8 b43legacy_plcp_get_bitrate_idx_cck(struct b43legacy_plcp_hdr6 *plcp )
{
  long tmp ;
  long tmp___0 ;
  {
  switch ((int )plcp->__annonCompField109.raw[0]) {
  case 10: ;
  return (0U);
  case 20: ;
  return (1U);
  case 55: ;
  return (2U);
  case 110: ;
  return (3U);
  }
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c"),
                           "i" (52), "i" (12UL));
      ldv_54856: ;
      goto ldv_54856;
    } else {
    }
  } else {
  }
  return (255U);
}
}
static u8 b43legacy_plcp_get_bitrate_idx_ofdm(struct b43legacy_plcp_hdr6 *plcp , bool aphy )
{
  int base ;
  long tmp ;
  long tmp___0 ;
  {
  base = (int )aphy ? 0 : 4;
  switch ((int )plcp->__annonCompField109.raw[0] & 15) {
  case 11: ;
  return ((u8 )base);
  case 15: ;
  return ((unsigned int )((u8 )base) + 1U);
  case 10: ;
  return ((unsigned int )((u8 )base) + 2U);
  case 14: ;
  return ((unsigned int )((u8 )base) + 3U);
  case 9: ;
  return ((unsigned int )((u8 )base) + 4U);
  case 13: ;
  return ((unsigned int )((u8 )base) + 5U);
  case 8: ;
  return ((unsigned int )((u8 )base) + 6U);
  case 12: ;
  return ((unsigned int )((u8 )base) + 7U);
  }
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c"),
                           "i" (80), "i" (12UL));
      ldv_54870: ;
      goto ldv_54870;
    } else {
    }
  } else {
  }
  return (255U);
}
}
u8 b43legacy_plcp_get_ratecode_cck(u8 const bitrate )
{
  long tmp ;
  long tmp___0 ;
  {
  switch ((int )bitrate) {
  case 2: ;
  return (10U);
  case 4: ;
  return (20U);
  case 11: ;
  return (55U);
  case 22: ;
  return (110U);
  }
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c"),
                           "i" (96), "i" (12UL));
      ldv_54878: ;
      goto ldv_54878;
    } else {
    }
  } else {
  }
  return (0U);
}
}
u8 b43legacy_plcp_get_ratecode_ofdm(u8 const bitrate )
{
  long tmp ;
  long tmp___0 ;
  {
  switch ((int )bitrate) {
  case 12: ;
  return (11U);
  case 18: ;
  return (15U);
  case 24: ;
  return (10U);
  case 36: ;
  return (14U);
  case 48: ;
  return (9U);
  case 72: ;
  return (13U);
  case 96: ;
  return (8U);
  case 108: ;
  return (12U);
  }
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c"),
                           "i" (120), "i" (12UL));
      ldv_54890: ;
      goto ldv_54890;
    } else {
    }
  } else {
  }
  return (0U);
}
}
void b43legacy_generate_plcp_hdr(struct b43legacy_plcp_hdr4 *plcp , u16 const octets ,
                                 u8 const bitrate )
{
  __le32 *data ;
  __u8 *raw ;
  u16 d ;
  u8 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  u32 plen ;
  int tmp___1 ;
  {
  data = & plcp->__annonCompField108.data;
  raw = (__u8 *)(& plcp->__annonCompField108.raw);
  tmp___1 = b43legacy_is_ofdm_rate((int )bitrate);
  if (tmp___1 != 0) {
    tmp = b43legacy_plcp_get_ratecode_ofdm((int )bitrate);
    d = (u16 )tmp;
    __ret_warn_on = ((int )octets & 61440) != 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c",
                         134);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    d = (u16 )((int )((short )((int )octets << 5)) | (int )((short )d));
    *data = (unsigned int )d;
  } else {
    plen = (u32 )(((int )octets * 16) / (int )bitrate);
    if (((int )octets * 16) % (int )bitrate > 0) {
      plen = plen + 1U;
      if ((unsigned int )((unsigned char )bitrate) == 22U && ((int )octets * 8) % 11 <= 3) {
        *(raw + 1UL) = 132U;
      } else {
        *(raw + 1UL) = 4U;
      }
    } else {
      *(raw + 1UL) = 4U;
    }
    *data = *data | (plen << 16);
    *raw = b43legacy_plcp_get_ratecode_cck((int )bitrate);
  }
  return;
}
}
static u8 b43legacy_calc_fallback_rate(u8 bitrate )
{
  long tmp ;
  long tmp___0 ;
  {
  switch ((int )bitrate) {
  case 2: ;
  return (2U);
  case 4: ;
  return (2U);
  case 11: ;
  return (4U);
  case 22: ;
  return (11U);
  case 12: ;
  return (11U);
  case 18: ;
  return (12U);
  case 24: ;
  return (18U);
  case 36: ;
  return (24U);
  case 48: ;
  return (36U);
  case 72: ;
  return (48U);
  case 96: ;
  return (72U);
  case 108: ;
  return (96U);
  }
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    printk("\016b43legacy: Test (%s) failed\n", (char *)"1");
    tmp = ldv__builtin_expect(1L, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c"),
                           "i" (183), "i" (12UL));
      ldv_54917: ;
      goto ldv_54917;
    } else {
    }
  } else {
  }
  return (0U);
}
}
static int generate_txhdr_fw3(struct b43legacy_wldev *dev , struct b43legacy_txhdr_fw3 *txhdr ,
                              unsigned char const *fragment_data , unsigned int fragment_len ,
                              struct ieee80211_tx_info *info , u16 cookie )
{
  struct ieee80211_hdr const *wlhdr ;
  int use_encryption ;
  u8 rate ;
  struct ieee80211_rate *rate_fb ;
  int rate_ofdm ;
  int rate_fb_ofdm ;
  unsigned int plcp_fragment_len ;
  u32 mac_ctl ;
  u16 phy_ctl ;
  struct ieee80211_rate *tx_rate ;
  struct ieee80211_tx_rate *rates ;
  struct ieee80211_rate *tmp ;
  u8 key_idx ;
  struct b43legacy_key *key ;
  int wlhdr_len ;
  size_t iv_len ;
  int __ret_warn_on ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  size_t __min1 ;
  size_t __min2 ;
  unsigned int len ;
  struct ieee80211_hdr *hdr ;
  int rts_rate ;
  int rts_rate_fb ;
  int rts_rate_fb_ofdm ;
  struct ieee80211_rate *tmp___2 ;
  u8 tmp___3 ;
  {
  use_encryption = (unsigned long )info->__annonCompField103.control.hw_key != (unsigned long )((struct ieee80211_key_conf *)0);
  mac_ctl = 0U;
  phy_ctl = 0U;
  wlhdr = (struct ieee80211_hdr const *)fragment_data;
  memset((void *)txhdr, 0, 82UL);
  tx_rate = ieee80211_get_tx_rate((struct ieee80211_hw const *)(dev->wl)->hw, (struct ieee80211_tx_info const *)info);
  rate = (u8 )tx_rate->hw_value;
  rate_ofdm = b43legacy_is_ofdm_rate((int )rate);
  tmp = ieee80211_get_alt_retry_rate((struct ieee80211_hw const *)(dev->wl)->hw,
                                     (struct ieee80211_tx_info const *)info, 0);
  rate_fb = (unsigned long )tmp != (unsigned long )((struct ieee80211_rate *)0) ? (unsigned long )tmp != (unsigned long )((struct ieee80211_rate *)0) : tx_rate;
  rate_fb_ofdm = b43legacy_is_ofdm_rate((int )rate_fb->hw_value);
  txhdr->mac_frame_ctl = wlhdr->frame_control;
  memcpy((void *)(& txhdr->tx_receiver), (void const *)(& wlhdr->addr1), 6UL);
  if (((int )rate_fb->hw_value == (int )((unsigned short )rate) || (int )((short )wlhdr->duration_id) < 0) || (unsigned int )((unsigned short )wlhdr->duration_id) == 0U) {
    txhdr->dur_fb = wlhdr->duration_id;
  } else {
    txhdr->dur_fb = ieee80211_generic_frame_duration((dev->wl)->hw, info->__annonCompField103.control.vif,
                                                     (enum ieee80211_band )info->band,
                                                     (size_t )fragment_len, rate_fb);
  }
  plcp_fragment_len = fragment_len + 4U;
  if (use_encryption != 0) {
    key_idx = (info->__annonCompField103.control.hw_key)->hw_key_idx;
    __ret_warn_on = (int )dev->max_nr_keys <= (int )key_idx;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c",
                         243);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    key = (struct b43legacy_key *)(& dev->key) + (unsigned long )key_idx;
    if ((int )key->enabled) {
      plcp_fragment_len = (unsigned int )(info->__annonCompField103.control.hw_key)->icv_len + plcp_fragment_len;
      key_idx = b43legacy_kidx_to_fw(dev, (int )key_idx);
      mac_ctl = ((u32 )((int )key_idx << 20) & 267386880U) | mac_ctl;
      mac_ctl = ((u32 )((int )key->algorithm << 16) & 458752U) | mac_ctl;
      tmp___1 = ieee80211_hdrlen((int )wlhdr->frame_control);
      wlhdr_len = (int )tmp___1;
      __min1 = (size_t )(info->__annonCompField103.control.hw_key)->iv_len;
      __min2 = 16UL;
      iv_len = __min1 < __min2 ? __min1 : __min2;
      memcpy((void *)(& txhdr->iv), (void const *)wlhdr + (unsigned long )wlhdr_len,
               iv_len);
    } else {
      return (-126);
    }
  } else {
  }
  b43legacy_generate_plcp_hdr((struct b43legacy_plcp_hdr4 *)(& txhdr->plcp), (int )((u16 const )plcp_fragment_len),
                              (int )rate);
  b43legacy_generate_plcp_hdr(& txhdr->plcp_fb, (int )((u16 const )plcp_fragment_len),
                              (int )((u8 const )rate_fb->hw_value));
  if (rate_ofdm != 0) {
    phy_ctl = (u16 )((unsigned int )phy_ctl | 1U);
  } else {
  }
  if (((int )info->__annonCompField103.control.__annonCompField101.__annonCompField100.rates[0].flags & 4) != 0) {
    phy_ctl = (u16 )((unsigned int )phy_ctl | 16U);
  } else {
  }
  phy_ctl = (u16 )((unsigned int )phy_ctl | 768U);
  rates = (struct ieee80211_tx_rate *)(& info->__annonCompField103.control.__annonCompField101.__annonCompField100.rates);
  if ((info->flags & 4U) == 0U) {
    mac_ctl = mac_ctl | 1U;
  } else {
  }
  if ((info->flags & 2U) != 0U) {
    mac_ctl = mac_ctl | 16U;
  } else {
  }
  if ((info->flags & 16U) != 0U) {
    mac_ctl = mac_ctl | 8U;
  } else {
  }
  if (rate_fb_ofdm != 0) {
    mac_ctl = mac_ctl | 256U;
  } else {
  }
  if ((int )rates->flags & 1 || (int )rates->count <= (int )((dev->wl)->hw)->conf.long_frame_max_tx_count) {
    rates->count = ((dev->wl)->hw)->conf.long_frame_max_tx_count;
    mac_ctl = mac_ctl | 2U;
  } else {
    rates->count = ((dev->wl)->hw)->conf.short_frame_max_tx_count;
  }
  if ((int )rates->flags & 1 || ((int )rates->flags & 2) != 0) {
    tmp___2 = ieee80211_get_rts_cts_rate((struct ieee80211_hw const *)(dev->wl)->hw,
                                         (struct ieee80211_tx_info const *)info);
    rts_rate = (int )tmp___2->hw_value;
    tmp___3 = b43legacy_calc_fallback_rate((int )((u8 )rts_rate));
    rts_rate_fb = (int )tmp___3;
    rts_rate_fb_ofdm = b43legacy_is_ofdm_rate(rts_rate_fb);
    if (rts_rate_fb_ofdm != 0) {
      mac_ctl = mac_ctl | 512U;
    } else {
    }
    if (((int )rates->flags & 2) != 0) {
      ieee80211_ctstoself_get((dev->wl)->hw, info->__annonCompField103.control.vif,
                              (void const *)fragment_data, (size_t )fragment_len,
                              (struct ieee80211_tx_info const *)info, (struct ieee80211_cts *)(& txhdr->rts_frame));
      mac_ctl = mac_ctl | 1024U;
      len = 10U;
    } else {
      ieee80211_rts_get((dev->wl)->hw, info->__annonCompField103.control.vif, (void const *)fragment_data,
                        (size_t )fragment_len, (struct ieee80211_tx_info const *)info,
                        (struct ieee80211_rts *)(& txhdr->rts_frame));
      mac_ctl = mac_ctl | 4U;
      len = 16U;
    }
    len = len + 4U;
    b43legacy_generate_plcp_hdr((struct b43legacy_plcp_hdr4 *)(& txhdr->rts_plcp),
                                (int )((u16 const )len), (int )((u8 const )rts_rate));
    b43legacy_generate_plcp_hdr(& txhdr->rts_plcp_fb, (int )((u16 const )len), (int )((u8 const )rts_rate_fb));
    hdr = (struct ieee80211_hdr *)(& txhdr->rts_frame);
    txhdr->rts_dur_fb = hdr->duration_id;
  } else {
  }
  txhdr->cookie = cookie;
  txhdr->mac_ctl = mac_ctl;
  txhdr->phy_ctl = phy_ctl;
  return (0);
}
}
int b43legacy_generate_txhdr(struct b43legacy_wldev *dev , u8 *txhdr , unsigned char const *fragment_data ,
                             unsigned int fragment_len , struct ieee80211_tx_info *info ,
                             u16 cookie )
{
  int tmp ;
  {
  tmp = generate_txhdr_fw3(dev, (struct b43legacy_txhdr_fw3 *)txhdr, fragment_data,
                           fragment_len, info, (int )cookie);
  return (tmp);
}
}
static s8 b43legacy_rssi_postprocess(struct b43legacy_wldev *dev , u8 in_rssi , int ofdm ,
                                     int adjust_2053 , int adjust_2050 )
{
  struct b43legacy_phy *phy ;
  s32 tmp ;
  {
  phy = & dev->phy;
  switch ((int )phy->radio_ver) {
  case 8272: ;
  if (ofdm != 0) {
    tmp = (s32 )in_rssi;
    if (tmp > 127) {
      tmp = tmp + -256;
    } else {
    }
    tmp = tmp * 73;
    tmp = tmp / 64;
    if (adjust_2050 != 0) {
      tmp = tmp + 25;
    } else {
      tmp = tmp + -3;
    }
  } else {
    if (((int )((dev->dev)->bus)->sprom.boardflags_lo & 8) != 0) {
      if ((unsigned int )in_rssi > 63U) {
        in_rssi = 63U;
      } else {
      }
      tmp = (s32 )phy->nrssi_lt[(int )in_rssi];
      tmp = 31 - tmp;
      tmp = tmp * -131;
      tmp = tmp / 128;
      tmp = tmp + -57;
    } else {
      tmp = (s32 )in_rssi;
      tmp = 31 - tmp;
      tmp = tmp * -149;
      tmp = tmp / 128;
      tmp = tmp + -68;
    }
    if ((unsigned int )phy->type == 2U && adjust_2050 != 0) {
      tmp = tmp + 25;
    } else {
    }
  }
  goto ldv_54971;
  case 8288: ;
  if ((int )((signed char )in_rssi) < 0) {
    tmp = (int )in_rssi + -256;
  } else {
    tmp = (s32 )in_rssi;
  }
  goto ldv_54971;
  default:
  tmp = (s32 )in_rssi;
  tmp = tmp + -11;
  tmp = tmp * 103;
  tmp = tmp / 64;
  if (adjust_2053 != 0) {
    tmp = tmp + -109;
  } else {
    tmp = tmp + -83;
  }
  }
  ldv_54971: ;
  return ((s8 )tmp);
}
}
void b43legacy_rx(struct b43legacy_wldev *dev , struct sk_buff *skb , void const *_rxhdr )
{
  struct ieee80211_rx_status status ;
  struct b43legacy_plcp_hdr6 *plcp ;
  struct ieee80211_hdr *wlhdr ;
  struct b43legacy_rxhdr_fw3 const *rxhdr ;
  __le16 fctl ;
  u16 phystat0 ;
  u16 phystat3 ;
  u16 chanstat ;
  u16 mactime ;
  u32 macstat ;
  u16 chanid ;
  u8 jssi ;
  int padding ;
  long tmp ;
  long tmp___0 ;
  unsigned int keyidx ;
  int wlhdr_len ;
  int iv_len ;
  int icv_len ;
  u8 tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  int __ret_warn_on___0 ;
  int tmp___3 ;
  long tmp___4 ;
  unsigned int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  u16 low_mactime_now ;
  int tmp___8 ;
  struct ieee80211_rx_status *tmp___9 ;
  {
  rxhdr = (struct b43legacy_rxhdr_fw3 const *)_rxhdr;
  memset((void *)(& status), 0, 40UL);
  phystat0 = rxhdr->phy_status0;
  phystat3 = rxhdr->phy_status3;
  jssi = rxhdr->jssi;
  macstat = (u32 )rxhdr->mac_status;
  mactime = rxhdr->mac_time;
  chanstat = rxhdr->channel;
  if ((int )macstat & 1) {
    (dev->wl)->ieee_stats.dot11FCSErrorCount = (dev->wl)->ieee_stats.dot11FCSErrorCount + 1U;
  } else {
  }
  padding = (macstat & 4U) != 0U ? 2 : 0;
  tmp = ldv__builtin_expect((unsigned long )skb->len < (unsigned long )padding + 6UL,
                         0L);
  if (tmp != 0L) {
    b43legacydbg(dev->wl, "RX: Packet size underrun (1)\n");
    goto drop;
  } else {
  }
  plcp = (struct b43legacy_plcp_hdr6 *)skb->data + (unsigned long )padding;
  skb_pull(skb, (unsigned int )padding + 6U);
  tmp___0 = ldv__builtin_expect(skb->len <= 13U, 0L);
  if (tmp___0 != 0L) {
    b43legacydbg(dev->wl, "RX: Packet size underrun (2)\n");
    goto drop;
  } else {
  }
  wlhdr = (struct ieee80211_hdr *)skb->data;
  fctl = wlhdr->frame_control;
  if ((macstat & 8U) != 0U && (macstat & 16U) == 0U) {
    keyidx = (macstat & 2016U) >> 5;
    tmp___1 = b43legacy_kidx_to_raw(dev, (int )((u8 )keyidx));
    keyidx = (unsigned int )tmp___1;
    __ret_warn_on = (unsigned int )dev->max_nr_keys <= keyidx;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c",
                         492);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if ((unsigned int )dev->key[keyidx].algorithm != 0U) {
      tmp___3 = ieee80211_has_protected((int )fctl);
      __ret_warn_on___0 = tmp___3 == 0;
      tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___4 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/xmit.c",
                           496);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      fctl = (unsigned int )fctl & 49151U;
      wlhdr->frame_control = fctl;
      tmp___5 = ieee80211_hdrlen((int )fctl);
      wlhdr_len = (int )tmp___5;
      tmp___6 = ldv__builtin_expect(skb->len < (unsigned int )(wlhdr_len + 3), 0L);
      if (tmp___6 != 0L) {
        b43legacydbg(dev->wl, "RX: Packet size underrun3\n");
        goto drop;
      } else {
      }
      if (((int )*(skb->data + ((unsigned long )wlhdr_len + 3UL)) & 32) != 0) {
        iv_len = 8;
        icv_len = 8;
      } else {
        iv_len = 4;
        icv_len = 4;
      }
      tmp___7 = ldv__builtin_expect(skb->len < (unsigned int )((wlhdr_len + iv_len) + icv_len),
                                 0L);
      if (tmp___7 != 0L) {
        b43legacydbg(dev->wl, "RX: Packet size underrun4\n");
        goto drop;
      } else {
      }
      memmove((void *)skb->data + (unsigned long )iv_len, (void const *)skb->data,
                (size_t )wlhdr_len);
      skb_pull(skb, (unsigned int )iv_len);
      skb_trim(skb, skb->len - (unsigned int )icv_len);
      status.flag = status.flag | 2U;
    } else {
    }
  } else {
  }
  status.signal = b43legacy_rssi_postprocess(dev, (int )jssi, (int )phystat0 & 1,
                                             (int )phystat0 & 16384, (int )phystat3 & 1024);
  if ((int )phystat0 & 1) {
    status.rate_idx = b43legacy_plcp_get_bitrate_idx_ofdm(plcp, 0);
  } else {
    status.rate_idx = b43legacy_plcp_get_bitrate_idx_cck(plcp);
  }
  status.antenna = ((int )phystat0 & 32) != 0;
  tmp___8 = ieee80211_is_beacon((int )fctl);
  if (tmp___8 != 0 || (int )(dev->wl)->radiotap_enabled) {
    b43legacy_tsf_read(dev, & status.mactime);
    low_mactime_now = (u16 )status.mactime;
    status.mactime = status.mactime & 0xffffffffffff0000ULL;
    status.mactime = status.mactime + (u64 )mactime;
    if ((int )low_mactime_now <= (int )mactime) {
      status.mactime = status.mactime - 65536ULL;
    } else {
    }
    status.flag = status.flag | 128U;
  } else {
  }
  chanid = (u16 )(((int )chanstat & 1020) >> 2);
  switch ((int )chanstat & 3) {
  case 1: ;
  case 2:
  status.band = 0U;
  status.freq = (unsigned int )chanid + 2400U;
  goto ldv_55004;
  default:
  b43legacywarn(dev->wl, "Unexpected value for chanstat (0x%X)\n", (int )chanstat);
  }
  ldv_55004:
  tmp___9 = IEEE80211_SKB_RXCB(skb);
  memcpy((void *)tmp___9, (void const *)(& status), 40UL);
  ieee80211_rx_irqsafe((dev->wl)->hw, skb);
  return;
  drop:
  b43legacydbg(dev->wl, "RX: Packet dropped\n");
  dev_kfree_skb_any(skb);
  return;
}
}
void b43legacy_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status )
{
  int tmp ;
  {
  b43legacy_debugfs_log_txstat(dev, status);
  if ((unsigned int )((unsigned char )status->intermediate) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )((unsigned char )status->for_ampdu) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )((unsigned char )status->acked) == 0U) {
    (dev->wl)->ieee_stats.dot11ACKFailureCount = (dev->wl)->ieee_stats.dot11ACKFailureCount + 1U;
  } else {
  }
  if ((unsigned int )((unsigned char )status->rts_count) != 0U) {
    if ((unsigned int )((unsigned char )status->rts_count) == 15U) {
      (dev->wl)->ieee_stats.dot11RTSFailureCount = (dev->wl)->ieee_stats.dot11RTSFailureCount + 1U;
    } else {
      (dev->wl)->ieee_stats.dot11RTSSuccessCount = (dev->wl)->ieee_stats.dot11RTSSuccessCount + 1U;
    }
  } else {
  }
  tmp = b43legacy_using_pio(dev);
  if (tmp != 0) {
    b43legacy_pio_handle_txstatus(dev, status);
  } else {
    b43legacy_dma_handle_txstatus(dev, status);
  }
  return;
}
}
void b43legacy_handle_hwtxstatus(struct b43legacy_wldev *dev , struct b43legacy_hwtxstatus const *hw )
{
  struct b43legacy_txstatus status ;
  u8 tmp ;
  {
  status.cookie = hw->cookie;
  status.seq = hw->seq;
  status.phy_stat = hw->phy_stat;
  tmp = hw->count;
  status.frame_count = (u8 )((int )tmp >> 4);
  status.rts_count = (unsigned int )tmp & 15U;
  tmp = (int )((u8 )hw->flags) << 1U;
  status.supp_reason = (u8 )(((int )tmp & 28) >> 2);
  status.pm_indicated = (int )((signed char )tmp) < 0;
  status.intermediate = ((int )tmp & 64) != 0;
  status.for_ampdu = ((int )tmp & 32) != 0;
  status.acked = ((int )tmp & 2) != 0;
  b43legacy_handle_txstatus(dev, (struct b43legacy_txstatus const *)(& status));
  return;
}
}
void b43legacy_tx_suspend(struct b43legacy_wldev *dev )
{
  int tmp ;
  {
  tmp = b43legacy_using_pio(dev);
  if (tmp != 0) {
    b43legacy_pio_freeze_txqueues(dev);
  } else {
    b43legacy_dma_tx_suspend(dev);
  }
  return;
}
}
void b43legacy_tx_resume(struct b43legacy_wldev *dev )
{
  int tmp ;
  {
  tmp = b43legacy_using_pio(dev);
  if (tmp != 0) {
    b43legacy_pio_thaw_txqueues(dev);
  } else {
    b43legacy_dma_tx_resume(dev);
  }
  return;
}
}
void b43legacy_qos_init(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  u16 tmp___0 ;
  {
  return;
  tmp = b43legacy_hf_read(dev);
  b43legacy_hf_write(dev, tmp | 256U);
  tmp___0 = b43legacy_read16(dev, 1672);
  b43legacy_write16(dev, 1672, (int )((unsigned int )tmp___0 | 4U));
}
}
bool ldv_queue_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_94(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_96(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_97(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_110(struct workqueue_struct *ldv_func_arg1 ) ;
extern void wiphy_rfkill_set_hw_state(struct wiphy * , bool ) ;
bool b43legacy_is_hw_radio_enabled(struct b43legacy_wldev *dev ) ;
bool b43legacy_is_hw_radio_enabled(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  int tmp___0 ;
  u16 tmp___1 ;
  {
  if ((unsigned int )(dev->dev)->id.revision > 2U) {
    tmp = b43legacy_read32(dev, 344);
    if ((tmp & 65536U) == 0U) {
      return (1);
    } else {
    }
  } else {
    tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
    if (tmp___0 <= 1) {
      return (1);
    } else {
    }
    tmp___1 = b43legacy_read16(dev, 1178);
    if (((int )tmp___1 & 16) != 0) {
      return (1);
    } else {
    }
  }
  return (0);
}
}
void b43legacy_rfkill_poll(struct ieee80211_hw *hw )
{
  struct b43legacy_wl *wl ;
  struct b43legacy_wl *tmp ;
  struct b43legacy_wldev *dev ;
  struct ssb_bus *bus ;
  bool enabled ;
  bool brought_up ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  tmp = hw_to_b43legacy_wl(hw);
  wl = tmp;
  dev = wl->current_dev;
  bus = (dev->dev)->bus;
  brought_up = 0;
  mutex_lock_nested(& wl->mutex, 0U);
  tmp___1 = atomic_read((atomic_t const *)(& dev->__init_status));
  tmp___2 = ldv__builtin_expect(tmp___1 <= 0, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = ssb_bus_powerup(bus, 0);
    if (tmp___0 != 0) {
      mutex_unlock(& wl->mutex);
      return;
    } else {
    }
    ssb_device_enable(dev->dev, 0U);
    brought_up = 1;
  } else {
  }
  enabled = b43legacy_is_hw_radio_enabled(dev);
  tmp___3 = ldv__builtin_expect((int )dev->radio_hw_enable != (int )enabled, 0L);
  if (tmp___3 != 0L) {
    dev->radio_hw_enable = enabled;
    b43legacyinfo(wl, "Radio hardware status changed to %s\n", (int )enabled ? (char *)"ENABLED" : (char *)"DISABLED");
    wiphy_rfkill_set_hw_state(hw->wiphy, (int )((bool )(! ((int )enabled != 0))));
    if ((int )dev->phy.radio_on != (int )enabled) {
      if ((int )enabled) {
        b43legacy_radio_turn_on(dev);
      } else {
        b43legacy_radio_turn_off(dev, 0);
      }
    } else {
    }
  } else {
  }
  if ((int )brought_up) {
    ssb_device_disable(dev->dev, 0U);
    ssb_bus_may_powerdown(bus);
  } else {
  }
  mutex_unlock(& wl->mutex);
  return;
}
}
bool ldv_queue_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_110(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
bool ldv_queue_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_124(struct workqueue_struct *ldv_func_arg1 ) ;
extern char const *__ieee80211_get_tx_led_name(struct ieee80211_hw * ) ;
extern char const *__ieee80211_get_rx_led_name(struct ieee80211_hw * ) ;
extern char const *__ieee80211_get_assoc_led_name(struct ieee80211_hw * ) ;
extern char const *__ieee80211_get_radio_led_name(struct ieee80211_hw * ) ;
__inline static char const *ieee80211_get_tx_led_name(struct ieee80211_hw *hw )
{
  char const *tmp ;
  {
  tmp = __ieee80211_get_tx_led_name(hw);
  return (tmp);
}
}
__inline static char const *ieee80211_get_rx_led_name(struct ieee80211_hw *hw )
{
  char const *tmp ;
  {
  tmp = __ieee80211_get_rx_led_name(hw);
  return (tmp);
}
}
__inline static char const *ieee80211_get_assoc_led_name(struct ieee80211_hw *hw )
{
  char const *tmp ;
  {
  tmp = __ieee80211_get_assoc_led_name(hw);
  return (tmp);
}
}
__inline static char const *ieee80211_get_radio_led_name(struct ieee80211_hw *hw )
{
  char const *tmp ;
  {
  tmp = __ieee80211_get_radio_led_name(hw);
  return (tmp);
}
}
extern int led_classdev_register(struct device * , struct led_classdev * ) ;
extern void led_classdev_unregister(struct led_classdev * ) ;
static void b43legacy_led_turn_on(struct b43legacy_wldev *dev , u8 led_index , bool activelow )
{
  struct b43legacy_wl *wl ;
  unsigned long flags ;
  u16 ctl ;
  raw_spinlock_t *tmp ;
  {
  wl = dev->wl;
  tmp = spinlock_check(& wl->leds_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ctl = b43legacy_read16(dev, 1180);
  if ((int )activelow) {
    ctl = (u16 )(~ ((int )((short )(1 << (int )led_index))) & (int )((short )ctl));
  } else {
    ctl = (u16 )((int )((short )(1 << (int )led_index)) | (int )((short )ctl));
  }
  b43legacy_write16(dev, 1180, (int )ctl);
  spin_unlock_irqrestore(& wl->leds_lock, flags);
  return;
}
}
static void b43legacy_led_turn_off(struct b43legacy_wldev *dev , u8 led_index , bool activelow )
{
  struct b43legacy_wl *wl ;
  unsigned long flags ;
  u16 ctl ;
  raw_spinlock_t *tmp ;
  {
  wl = dev->wl;
  tmp = spinlock_check(& wl->leds_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ctl = b43legacy_read16(dev, 1180);
  if ((int )activelow) {
    ctl = (u16 )((int )((short )(1 << (int )led_index)) | (int )((short )ctl));
  } else {
    ctl = (u16 )(~ ((int )((short )(1 << (int )led_index))) & (int )((short )ctl));
  }
  b43legacy_write16(dev, 1180, (int )ctl);
  spin_unlock_irqrestore(& wl->leds_lock, flags);
  return;
}
}
static void b43legacy_led_brightness_set(struct led_classdev *led_dev , enum led_brightness brightness )
{
  struct b43legacy_led *led ;
  struct led_classdev const *__mptr ;
  struct b43legacy_wldev *dev ;
  bool radio_enabled ;
  {
  __mptr = (struct led_classdev const *)led_dev;
  led = (struct b43legacy_led *)__mptr + 0xfffffffffffffff8UL;
  dev = led->dev;
  radio_enabled = (bool )((int )dev->phy.radio_on && (int )dev->radio_hw_enable);
  if ((unsigned int )brightness == 0U || ! radio_enabled) {
    b43legacy_led_turn_off(dev, (int )led->index, (int )led->activelow);
  } else {
    b43legacy_led_turn_on(dev, (int )led->index, (int )led->activelow);
  }
  return;
}
}
static int b43legacy_register_led(struct b43legacy_wldev *dev , struct b43legacy_led *led ,
                                  char const *name , char const *default_trigger ,
                                  u8 led_index , bool activelow )
{
  int err ;
  {
  b43legacy_led_turn_off(dev, (int )led_index, (int )activelow);
  if ((unsigned long )led->dev != (unsigned long )((struct b43legacy_wldev *)0)) {
    return (-17);
  } else {
  }
  if ((unsigned long )default_trigger == (unsigned long )((char const *)0)) {
    return (-22);
  } else {
  }
  led->dev = dev;
  led->index = led_index;
  led->activelow = activelow;
  strncpy((char *)(& led->name), name, 32UL);
  led->led_dev.name = (char const *)(& led->name);
  led->led_dev.default_trigger = default_trigger;
  led->led_dev.brightness_set = & b43legacy_led_brightness_set;
  err = led_classdev_register((dev->dev)->dev, & led->led_dev);
  if (err != 0) {
    b43legacywarn(dev->wl, "LEDs: Failed to register %s\n", name);
    led->dev = (struct b43legacy_wldev *)0;
    return (err);
  } else {
  }
  return (0);
}
}
static void b43legacy_unregister_led(struct b43legacy_led *led )
{
  {
  if ((unsigned long )led->dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    return;
  } else {
  }
  led_classdev_unregister(& led->led_dev);
  b43legacy_led_turn_off(led->dev, (int )led->index, (int )led->activelow);
  led->dev = (struct b43legacy_wldev *)0;
  return;
}
}
static void b43legacy_map_led(struct b43legacy_wldev *dev , u8 led_index , enum b43legacy_led_behaviour behaviour ,
                              bool activelow )
{
  struct ieee80211_hw *hw ;
  char name[32U] ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  bool tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  {
  hw = (dev->wl)->hw;
  switch ((unsigned int )behaviour) {
  case 11U: ;
  goto ldv_52974;
  case 0U:
  b43legacy_led_turn_off(dev, (int )led_index, (int )activelow);
  goto ldv_52974;
  case 1U:
  b43legacy_led_turn_on(dev, (int )led_index, (int )activelow);
  goto ldv_52974;
  case 2U: ;
  case 7U: ;
  case 8U:
  tmp = wiphy_name((struct wiphy const *)hw->wiphy);
  snprintf((char *)(& name), 32UL, "b43legacy-%s::tx", tmp);
  tmp___0 = ieee80211_get_tx_led_name(hw);
  b43legacy_register_led(dev, & dev->led_tx, (char const *)(& name), tmp___0, (int )led_index,
                         (int )activelow);
  tmp___1 = wiphy_name((struct wiphy const *)hw->wiphy);
  snprintf((char *)(& name), 32UL, "b43legacy-%s::rx", tmp___1);
  tmp___2 = ieee80211_get_rx_led_name(hw);
  b43legacy_register_led(dev, & dev->led_rx, (char const *)(& name), tmp___2, (int )led_index,
                         (int )activelow);
  goto ldv_52974;
  case 3U: ;
  case 4U: ;
  case 5U: ;
  case 6U:
  tmp___3 = wiphy_name((struct wiphy const *)hw->wiphy);
  snprintf((char *)(& name), 32UL, "b43legacy-%s::radio", tmp___3);
  tmp___4 = ieee80211_get_radio_led_name(hw);
  b43legacy_register_led(dev, & dev->led_radio, (char const *)(& name), tmp___4,
                         (int )led_index, (int )activelow);
  if ((int )dev->phy.radio_on) {
    tmp___5 = b43legacy_is_hw_radio_enabled(dev);
    if ((int )tmp___5) {
      b43legacy_led_turn_on(dev, (int )led_index, (int )activelow);
    } else {
    }
  } else {
  }
  goto ldv_52974;
  case 9U: ;
  case 10U:
  tmp___6 = wiphy_name((struct wiphy const *)hw->wiphy);
  snprintf((char *)(& name), 32UL, "b43legacy-%s::assoc", tmp___6);
  tmp___7 = ieee80211_get_assoc_led_name(hw);
  b43legacy_register_led(dev, & dev->led_assoc, (char const *)(& name), tmp___7,
                         (int )led_index, (int )activelow);
  goto ldv_52974;
  default:
  b43legacywarn(dev->wl, "LEDs: Unknown behaviour 0x%02X\n", (unsigned int )behaviour);
  goto ldv_52974;
  }
  ldv_52974: ;
  return;
}
}
void b43legacy_leds_init(struct b43legacy_wldev *dev )
{
  struct ssb_bus *bus ;
  u8 sprom[4U] ;
  int i ;
  enum b43legacy_led_behaviour behaviour ;
  bool activelow ;
  int __ret_warn_on ;
  long tmp ;
  {
  bus = (dev->dev)->bus;
  sprom[0] = bus->sprom.gpio0;
  sprom[1] = bus->sprom.gpio1;
  sprom[2] = bus->sprom.gpio2;
  sprom[3] = bus->sprom.gpio3;
  i = 0;
  goto ldv_53004;
  ldv_53003: ;
  if ((unsigned int )sprom[i] == 255U) {
    activelow = 0;
    switch (i) {
    case 0:
    behaviour = 2;
    activelow = 1;
    if ((unsigned int )bus->boardinfo.vendor == 3601U) {
      behaviour = 3;
    } else {
    }
    goto ldv_52996;
    case 1:
    behaviour = 5;
    if ((unsigned int )bus->boardinfo.vendor == 4163U) {
      behaviour = 10;
    } else {
    }
    goto ldv_52996;
    case 2:
    behaviour = 4;
    goto ldv_52996;
    case 3:
    behaviour = 0;
    goto ldv_52996;
    default:
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/leds.c",
                         226);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
    }
    ldv_52996: ;
  } else {
    behaviour = (enum b43legacy_led_behaviour )((int )sprom[i] & 127);
    activelow = (int )((signed char )sprom[i]) < 0;
  }
  b43legacy_map_led(dev, (int )((u8 )i), behaviour, (int )activelow);
  i = i + 1;
  ldv_53004: ;
  if (i <= 3) {
    goto ldv_53003;
  } else {
  }
  return;
}
}
void b43legacy_leds_exit(struct b43legacy_wldev *dev )
{
  {
  b43legacy_unregister_led(& dev->led_tx);
  b43legacy_unregister_led(& dev->led_rx);
  b43legacy_unregister_led(& dev->led_assoc);
  b43legacy_unregister_led(& dev->led_radio);
  return;
}
}
bool ldv_queue_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_124(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern void __might_fault(char const * , int ) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
__inline static unsigned long arch_local_save_flags___1(void)
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
__inline static void *ERR_PTR(long error ) ;
__inline static bool IS_ERR(void const *ptr ) ;
bool ldv_queue_work_on_135(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_137(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_136(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_139(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_138(struct workqueue_struct *ldv_func_arg1 ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern unsigned long get_zeroed_page(gfp_t ) ;
extern void free_pages(unsigned long , unsigned int ) ;
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
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern struct dentry *debugfs_create_bool(char const * , umode_t , struct dentry * ,
                                          u32 * ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
static struct dentry *rootdir ;
__inline static struct b43legacy_dfs_file *fops_to_dfs_file(struct b43legacy_wldev *dev ,
                                                            struct b43legacy_debugfs_fops const *dfops )
{
  void *p ;
  {
  p = (void *)dev->dfsentry;
  p = p + dfops->file_struct_offset;
  return ((struct b43legacy_dfs_file *)p);
}
}
static ssize_t tsf_read_file(struct b43legacy_wldev *dev , char *buf , size_t bufsize )
{
  ssize_t count ;
  u64 tsf ;
  int tmp ;
  {
  count = 0L;
  b43legacy_tsf_read(dev, & tsf);
  if ((unsigned long )count != bufsize) {
    tmp = snprintf(buf + (unsigned long )count, bufsize - (unsigned long )count, "0x%08x%08x\n",
                   (unsigned int )(tsf >> 32), (unsigned int )tsf);
    count = (ssize_t )tmp + count;
  } else {
    printk("\vb43legacy: fappend overflow\n");
  }
  return (count);
}
}
static int tsf_write_file(struct b43legacy_wldev *dev , char const *buf , size_t count )
{
  u64 tsf ;
  int tmp ;
  {
  tmp = sscanf(buf, "%llu", & tsf);
  if (tmp != 1) {
    return (-22);
  } else {
  }
  b43legacy_tsf_write(dev, tsf);
  return (0);
}
}
static ssize_t ucode_regs_read_file(struct b43legacy_wldev *dev , char *buf , size_t bufsize )
{
  ssize_t count ;
  int i ;
  u16 tmp ;
  int tmp___0 ;
  {
  count = 0L;
  i = 0;
  goto ldv_53246;
  ldv_53245: ;
  if ((unsigned long )count != bufsize) {
    tmp = b43legacy_shm_read16(dev, 2, (int )((u16 )i));
    tmp___0 = snprintf(buf + (unsigned long )count, bufsize - (unsigned long )count,
                       "r%d = 0x%04x\n", i, (int )tmp);
    count = (ssize_t )tmp___0 + count;
  } else {
    printk("\vb43legacy: fappend overflow\n");
  }
  i = i + 1;
  ldv_53246: ;
  if (i <= 63) {
    goto ldv_53245;
  } else {
  }
  return (count);
}
}
static ssize_t shm_read_file(struct b43legacy_wldev *dev , char *buf , size_t bufsize )
{
  ssize_t count ;
  int i ;
  u16 tmp ;
  __le16 *le16buf ;
  {
  count = 0L;
  le16buf = (__le16 *)buf;
  i = 0;
  goto ldv_53259;
  ldv_53258: ;
  if (bufsize <= 1UL) {
    goto ldv_53257;
  } else {
  }
  tmp = b43legacy_shm_read16(dev, 1, (int )((unsigned int )((u16 )i) * 2U));
  *(le16buf + (unsigned long )i) = tmp;
  count = (ssize_t )((unsigned long )count + 2UL);
  bufsize = bufsize - 2UL;
  i = i + 1;
  ldv_53259: ;
  if (i <= 4095) {
    goto ldv_53258;
  } else {
  }
  ldv_53257: ;
  return (count);
}
}
static ssize_t txstat_read_file(struct b43legacy_wldev *dev , char *buf , size_t bufsize )
{
  struct b43legacy_txstatus_log *log ;
  ssize_t count ;
  unsigned long flags ;
  int i ;
  int idx ;
  struct b43legacy_txstatus *stat ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  log = & (dev->dfsentry)->txstatlog;
  count = 0L;
  tmp = spinlock_check(& log->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (log->end < 0) {
    if ((unsigned long )count != bufsize) {
      tmp___0 = snprintf(buf + (unsigned long )count, bufsize - (unsigned long )count,
                         "Nothing transmitted, yet\n");
      count = (ssize_t )tmp___0 + count;
    } else {
      printk("\vb43legacy: fappend overflow\n");
    }
    goto out_unlock;
  } else {
  }
  if ((unsigned long )count != bufsize) {
    tmp___1 = snprintf(buf + (unsigned long )count, bufsize - (unsigned long )count,
                       "b43legacy TX status reports:\n\nindex | cookie | seq | phy_stat | frame_count | rts_count | supp_reason | pm_indicated | intermediate | for_ampdu | acked\n---\n");
    count = (ssize_t )tmp___1 + count;
  } else {
    printk("\vb43legacy: fappend overflow\n");
  }
  i = log->end + 1;
  idx = 0;
  ldv_53276: ;
  if (i == 100) {
    i = 0;
  } else {
  }
  stat = log->log + (unsigned long )i;
  if ((unsigned int )stat->cookie != 0U) {
    if ((unsigned long )count != bufsize) {
      tmp___2 = snprintf(buf + (unsigned long )count, bufsize - (unsigned long )count,
                         "%03d | 0x%04X | 0x%04X | 0x%02X | 0x%X | 0x%X | %u | %u | %u | %u | %u\n",
                         idx, (int )stat->cookie, (int )stat->seq, (int )stat->phy_stat,
                         (int )stat->frame_count, (int )stat->rts_count, (int )stat->supp_reason,
                         (int )stat->pm_indicated, (int )stat->intermediate, (int )stat->for_ampdu,
                         (int )stat->acked);
      count = (ssize_t )tmp___2 + count;
    } else {
      printk("\vb43legacy: fappend overflow\n");
    }
    idx = idx + 1;
  } else {
  }
  if (log->end == i) {
    goto ldv_53275;
  } else {
  }
  i = i + 1;
  goto ldv_53276;
  ldv_53275: ;
  out_unlock:
  spin_unlock_irqrestore(& log->lock, flags);
  return (count);
}
}
static int restart_write_file(struct b43legacy_wldev *dev , char const *buf , size_t count )
{
  int err ;
  {
  err = 0;
  if (count != 0UL && (int )((signed char )*buf) == 49) {
    b43legacy_controller_restart(dev, "manually restarted");
  } else {
    err = -22;
  }
  return (err);
}
}
static ssize_t b43legacy_debugfs_read(struct file *file , char *userbuf , size_t count ,
                                      loff_t *ppos )
{
  struct b43legacy_wldev *dev ;
  struct b43legacy_debugfs_fops *dfops ;
  struct b43legacy_dfs_file *dfile ;
  ssize_t ret ;
  char *buf ;
  size_t bufsize ;
  size_t buforder ;
  int tmp ;
  int err ;
  int tmp___0 ;
  struct file_operations const *__mptr ;
  unsigned long tmp___1 ;
  {
  ret = ret;
  bufsize = 16384UL;
  tmp = __get_order(bufsize);
  buforder = (size_t const )tmp;
  err = 0;
  if (count == 0UL) {
    return (0L);
  } else {
  }
  dev = (struct b43legacy_wldev *)file->private_data;
  if ((unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    return (-19L);
  } else {
  }
  mutex_lock_nested(& (dev->wl)->mutex, 0U);
  tmp___0 = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp___0 <= 0) {
    err = -19;
    goto out_unlock;
  } else {
  }
  __mptr = file->f_op;
  dfops = (struct b43legacy_debugfs_fops *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned long )dfops->read == (unsigned long )((ssize_t (*)(struct b43legacy_wldev * ,
                                                                   char * , size_t ))0)) {
    err = -38;
    goto out_unlock;
  } else {
  }
  dfile = fops_to_dfs_file(dev, (struct b43legacy_debugfs_fops const *)dfops);
  if ((unsigned long )dfile->buffer == (unsigned long )((char *)0)) {
    tmp___1 = __get_free_pages(208U, (unsigned int )buforder);
    buf = (char *)tmp___1;
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      err = -12;
      goto out_unlock;
    } else {
    }
    memset((void *)buf, 0, bufsize);
    if ((int )dfops->take_irqlock) {
      spin_lock_irq(& (dev->wl)->irq_lock);
      ret = (*(dfops->read))(dev, buf, bufsize);
      spin_unlock_irq(& (dev->wl)->irq_lock);
    } else {
      ret = (*(dfops->read))(dev, buf, bufsize);
    }
    if (ret <= 0L) {
      free_pages((unsigned long )buf, (unsigned int )buforder);
      err = (int )ret;
      goto out_unlock;
    } else {
    }
    dfile->data_len = (size_t )ret;
    dfile->buffer = buf;
  } else {
  }
  ret = simple_read_from_buffer((void *)userbuf, count, ppos, (void const *)dfile->buffer,
                                dfile->data_len);
  if ((unsigned long long )*ppos >= (unsigned long long )dfile->data_len) {
    free_pages((unsigned long )dfile->buffer, (unsigned int )buforder);
    dfile->buffer = (char *)0;
    dfile->data_len = 0UL;
  } else {
  }
  out_unlock:
  mutex_unlock(& (dev->wl)->mutex);
  return (err != 0 ? (ssize_t )err : ret);
}
}
static ssize_t b43legacy_debugfs_write(struct file *file , char const *userbuf ,
                                       size_t count , loff_t *ppos )
{
  struct b43legacy_wldev *dev ;
  struct b43legacy_debugfs_fops *dfops ;
  char *buf ;
  int err ;
  int tmp ;
  struct file_operations const *__mptr ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  err = 0;
  if (count == 0UL) {
    return (0L);
  } else {
  }
  if (count > 4096UL) {
    return (-7L);
  } else {
  }
  dev = (struct b43legacy_wldev *)file->private_data;
  if ((unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    return (-19L);
  } else {
  }
  mutex_lock_nested(& (dev->wl)->mutex, 0U);
  tmp = atomic_read((atomic_t const *)(& dev->__init_status));
  if (tmp <= 0) {
    err = -19;
    goto out_unlock;
  } else {
  }
  __mptr = file->f_op;
  dfops = (struct b43legacy_debugfs_fops *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned long )dfops->write == (unsigned long )((int (*)(struct b43legacy_wldev * ,
                                                                char const * , size_t ))0)) {
    err = -38;
    goto out_unlock;
  } else {
  }
  tmp___0 = get_zeroed_page(208U);
  buf = (char *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    err = -12;
    goto out_unlock;
  } else {
  }
  tmp___1 = copy_from_user((void *)buf, (void const *)userbuf, count);
  if (tmp___1 != 0UL) {
    err = -14;
    goto out_freepage;
  } else {
  }
  if ((int )dfops->take_irqlock) {
    spin_lock_irq(& (dev->wl)->irq_lock);
    err = (*(dfops->write))(dev, (char const *)buf, count);
    spin_unlock_irq(& (dev->wl)->irq_lock);
  } else {
    err = (*(dfops->write))(dev, (char const *)buf, count);
  }
  if (err != 0) {
  } else {
  }
  out_freepage:
  free_pages((unsigned long )buf, 0U);
  out_unlock:
  mutex_unlock(& (dev->wl)->mutex);
  return ((ssize_t )(err != 0 ? (size_t )err : count));
}
}
static struct b43legacy_debugfs_fops fops_tsf = {& tsf_read_file, & tsf_write_file, {0, & generic_file_llseek, & b43legacy_debugfs_read,
                                        & b43legacy_debugfs_write, 0, 0, 0, 0, 0,
                                        0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0,
                                        0, 0, 0, 0, 0, 0, 0, 0, 0}, 16UL, 1};
static struct b43legacy_debugfs_fops fops_ucode_regs = {& ucode_regs_read_file, (int (*)(struct b43legacy_wldev * , char const * , size_t ))0,
    {0, & generic_file_llseek, & b43legacy_debugfs_read, & b43legacy_debugfs_write,
     0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0}, 40UL, 1};
static struct b43legacy_debugfs_fops fops_shm = {& shm_read_file, (int (*)(struct b43legacy_wldev * , char const * , size_t ))0,
    {0, & generic_file_llseek, & b43legacy_debugfs_read, & b43legacy_debugfs_write,
     0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0}, 64UL, 1};
static struct b43legacy_debugfs_fops fops_txstat = {& txstat_read_file, (int (*)(struct b43legacy_wldev * , char const * , size_t ))0,
    {0, & generic_file_llseek, & b43legacy_debugfs_read, & b43legacy_debugfs_write,
     0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0}, 88UL, 0};
static struct b43legacy_debugfs_fops fops_restart = {(ssize_t (*)(struct b43legacy_wldev * , char * , size_t ))0, & restart_write_file,
    {0, & generic_file_llseek, & b43legacy_debugfs_read, & b43legacy_debugfs_write,
     0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0}, 136UL, 1};
int b43legacy_debug(struct b43legacy_wldev *dev , enum b43legacy_dyndbg feature )
{
  {
  return ((unsigned long )dev->dfsentry != (unsigned long )((struct b43legacy_dfsentry *)0) && (dev->dfsentry)->dyn_debug[(unsigned int )feature] != 0U);
}
}
static void b43legacy_remove_dynamic_debug(struct b43legacy_wldev *dev )
{
  struct b43legacy_dfsentry *e ;
  int i ;
  {
  e = dev->dfsentry;
  i = 0;
  goto ldv_53329;
  ldv_53328:
  debugfs_remove(e->dyn_debug_dentries[i]);
  i = i + 1;
  ldv_53329: ;
  if (i <= 4) {
    goto ldv_53328;
  } else {
  }
  return;
}
}
static void b43legacy_add_dynamic_debug(struct b43legacy_wldev *dev )
{
  struct b43legacy_dfsentry *e ;
  struct dentry *d ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  {
  e = dev->dfsentry;
  e->dyn_debug[0] = 0U;
  d = debugfs_create_bool("debug_xmitpower", 384, e->subdir, (u32 *)(& e->dyn_debug));
  tmp = IS_ERR((void const *)d);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    e->dyn_debug_dentries[0] = d;
  } else {
  }
  e->dyn_debug[1] = 0U;
  d = debugfs_create_bool("debug_dmaoverflow", 384, e->subdir, (u32 *)(& e->dyn_debug) + 1UL);
  tmp___1 = IS_ERR((void const *)d);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    e->dyn_debug_dentries[1] = d;
  } else {
  }
  e->dyn_debug[2] = 0U;
  d = debugfs_create_bool("debug_dmaverbose", 384, e->subdir, (u32 *)(& e->dyn_debug) + 2UL);
  tmp___3 = IS_ERR((void const *)d);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    e->dyn_debug_dentries[2] = d;
  } else {
  }
  e->dyn_debug[3] = 0U;
  d = debugfs_create_bool("debug_pwork_fast", 384, e->subdir, (u32 *)(& e->dyn_debug) + 3UL);
  tmp___5 = IS_ERR((void const *)d);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    e->dyn_debug_dentries[3] = d;
  } else {
  }
  e->dyn_debug[4] = 0U;
  d = debugfs_create_bool("debug_pwork_stop", 384, e->subdir, (u32 *)(& e->dyn_debug) + 4UL);
  tmp___7 = IS_ERR((void const *)d);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    e->dyn_debug_dentries[4] = d;
  } else {
  }
  return;
}
}
void b43legacy_debugfs_add_device(struct b43legacy_wldev *dev )
{
  struct b43legacy_dfsentry *e ;
  struct b43legacy_txstatus_log *log ;
  char devdir[16U] ;
  int __ret_warn_on ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  char const *tmp___2 ;
  void *tmp___3 ;
  bool tmp___4 ;
  struct dentry *d ;
  bool tmp___5 ;
  int tmp___6 ;
  struct dentry *d___0 ;
  bool tmp___7 ;
  int tmp___8 ;
  struct dentry *d___1 ;
  bool tmp___9 ;
  int tmp___10 ;
  struct dentry *d___2 ;
  bool tmp___11 ;
  int tmp___12 ;
  struct dentry *d___3 ;
  bool tmp___13 ;
  int tmp___14 ;
  {
  __ret_warn_on = (unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/debugfs.c",
                       387);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = kzalloc(336UL, 208U);
  e = (struct b43legacy_dfsentry *)tmp___0;
  if ((unsigned long )e == (unsigned long )((struct b43legacy_dfsentry *)0)) {
    b43legacyerr(dev->wl, "debugfs: add device OOM\n");
    return;
  } else {
  }
  e->dev = dev;
  log = & e->txstatlog;
  tmp___1 = kcalloc(100UL, 12UL, 208U);
  log->log = (struct b43legacy_txstatus *)tmp___1;
  if ((unsigned long )log->log == (unsigned long )((struct b43legacy_txstatus *)0)) {
    b43legacyerr(dev->wl, "debugfs: add device txstatus OOM\n");
    kfree((void const *)e);
    return;
  } else {
  }
  log->end = -1;
  spinlock_check(& log->lock);
  __raw_spin_lock_init(& log->lock.__annonCompField18.rlock, "&(&log->lock)->rlock",
                       & __key);
  dev->dfsentry = e;
  tmp___2 = wiphy_name((struct wiphy const *)((dev->wl)->hw)->wiphy);
  snprintf((char *)(& devdir), 16UL, "%s", tmp___2);
  e->subdir = debugfs_create_dir((char const *)(& devdir), rootdir);
  if ((unsigned long )e->subdir == (unsigned long )((struct dentry *)0)) {
    goto _L;
  } else {
    tmp___4 = IS_ERR((void const *)e->subdir);
    if ((int )tmp___4) {
      _L:
      tmp___3 = ERR_PTR(-19L);
      if ((unsigned long )((void *)e->subdir) == (unsigned long )tmp___3) {
        b43legacydbg(dev->wl, "DebugFS (CONFIG_DEBUG_FS) not enabled in kernel config\n");
      } else {
        b43legacyerr(dev->wl, "debugfs: cannot create %s directory\n", (char *)(& devdir));
      }
      dev->dfsentry = (struct b43legacy_dfsentry *)0;
      kfree((void const *)log->log);
      kfree((void const *)e);
      return;
    } else {
    }
  }
  d = debugfs_create_file("tsf", 384, e->subdir, (void *)dev, (struct file_operations const *)(& fops_tsf.fops));
  e->file_tsf.dentry = (struct dentry *)0;
  tmp___5 = IS_ERR((void const *)d);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    e->file_tsf.dentry = d;
  } else {
  }
  d___0 = debugfs_create_file("ucode_regs", 256, e->subdir, (void *)dev, (struct file_operations const *)(& fops_ucode_regs.fops));
  e->file_ucode_regs.dentry = (struct dentry *)0;
  tmp___7 = IS_ERR((void const *)d___0);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    e->file_ucode_regs.dentry = d___0;
  } else {
  }
  d___1 = debugfs_create_file("shm", 256, e->subdir, (void *)dev, (struct file_operations const *)(& fops_shm.fops));
  e->file_shm.dentry = (struct dentry *)0;
  tmp___9 = IS_ERR((void const *)d___1);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    e->file_shm.dentry = d___1;
  } else {
  }
  d___2 = debugfs_create_file("txstat", 256, e->subdir, (void *)dev, (struct file_operations const *)(& fops_txstat.fops));
  e->file_txstat.dentry = (struct dentry *)0;
  tmp___11 = IS_ERR((void const *)d___2);
  if (tmp___11) {
    tmp___12 = 0;
  } else {
    tmp___12 = 1;
  }
  if (tmp___12) {
    e->file_txstat.dentry = d___2;
  } else {
  }
  d___3 = debugfs_create_file("restart", 128, e->subdir, (void *)dev, (struct file_operations const *)(& fops_restart.fops));
  e->file_restart.dentry = (struct dentry *)0;
  tmp___13 = IS_ERR((void const *)d___3);
  if (tmp___13) {
    tmp___14 = 0;
  } else {
    tmp___14 = 1;
  }
  if (tmp___14) {
    e->file_restart.dentry = d___3;
  } else {
  }
  b43legacy_add_dynamic_debug(dev);
  return;
}
}
void b43legacy_debugfs_remove_device(struct b43legacy_wldev *dev )
{
  struct b43legacy_dfsentry *e ;
  {
  if ((unsigned long )dev == (unsigned long )((struct b43legacy_wldev *)0)) {
    return;
  } else {
  }
  e = dev->dfsentry;
  if ((unsigned long )e == (unsigned long )((struct b43legacy_dfsentry *)0)) {
    return;
  } else {
  }
  b43legacy_remove_dynamic_debug(dev);
  debugfs_remove(e->file_tsf.dentry);
  debugfs_remove(e->file_ucode_regs.dentry);
  debugfs_remove(e->file_shm.dentry);
  debugfs_remove(e->file_txstat.dentry);
  debugfs_remove(e->file_restart.dentry);
  debugfs_remove(e->subdir);
  kfree((void const *)e->txstatlog.log);
  kfree((void const *)e);
  return;
}
}
void b43legacy_debugfs_log_txstat(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status )
{
  struct b43legacy_dfsentry *e ;
  struct b43legacy_txstatus_log *log ;
  struct b43legacy_txstatus *cur ;
  int i ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp ;
  long tmp___0 ;
  {
  e = dev->dfsentry;
  if ((unsigned long )e == (unsigned long )((struct b43legacy_dfsentry *)0)) {
    return;
  } else {
  }
  log = & e->txstatlog;
  _flags = arch_local_save_flags___1();
  tmp = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/debugfs.c",
                       479);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  spin_lock(& log->lock);
  i = log->end + 1;
  if (i == 100) {
    i = 0;
  } else {
  }
  log->end = i;
  cur = log->log + (unsigned long )i;
  memcpy((void *)cur, (void const *)status, 12UL);
  spin_unlock(& log->lock);
  return;
}
}
void b43legacy_debugfs_init(void)
{
  bool tmp ;
  {
  rootdir = debugfs_create_dir("b43legacy", (struct dentry *)0);
  tmp = IS_ERR((void const *)rootdir);
  if ((int )tmp) {
    rootdir = (struct dentry *)0;
  } else {
  }
  return;
}
}
void b43legacy_debugfs_exit(void)
{
  {
  debugfs_remove(rootdir);
  return;
}
}
extern int ldv_release_11(void) ;
extern int ldv_release_9(void) ;
int ldv_retval_9 ;
extern int ldv_release_8(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
int ldv_retval_8 ;
extern int ldv_release_7(void) ;
extern int ldv_release_10(void) ;
int ldv_retval_3 ;
void ldv_initialize_b43legacy_debugfs_fops_9(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  fops_shm_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_b43legacy_debugfs_fops_11(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  fops_tsf_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_b43legacy_debugfs_fops_7(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  fops_restart_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_b43legacy_debugfs_fops_8(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  fops_txstat_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_b43legacy_debugfs_fops_10(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  fops_ucode_regs_group0 = (struct file *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  loff_t ldvarg55 ;
  size_t ldvarg61 ;
  size_t ldvarg58 ;
  int ldvarg54 ;
  loff_t *ldvarg57 ;
  void *tmp ;
  char *ldvarg62 ;
  void *tmp___0 ;
  struct inode *ldvarg56 ;
  void *tmp___1 ;
  char *ldvarg59 ;
  void *tmp___2 ;
  loff_t *ldvarg60 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg57 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg62 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1000UL);
  ldvarg56 = (struct inode *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg60 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg55), 0, 8UL);
  ldv_memset((void *)(& ldvarg61), 0, 8UL);
  ldv_memset((void *)(& ldvarg58), 0, 8UL);
  ldv_memset((void *)(& ldvarg54), 0, 4UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_8 == 2) {
    b43legacy_debugfs_write(fops_txstat_group0, (char const *)ldvarg62, ldvarg61,
                            ldvarg60);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_53422;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    b43legacy_debugfs_read(fops_txstat_group0, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_53422;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_8 = simple_open(ldvarg56, fops_txstat_group0);
    if (ldv_retval_8 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53422;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    generic_file_llseek(fops_txstat_group0, ldvarg55, ldvarg54);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    generic_file_llseek(fops_txstat_group0, ldvarg55, ldvarg54);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_53422;
  case 4: ;
  if (ldv_state_variable_8 == 2) {
    ldv_release_8();
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53422;
  default:
  ldv_stop();
  }
  ldv_53422: ;
  return;
}
}
void ldv_main_exported_11(void)
{
  struct inode *ldvarg2 ;
  void *tmp ;
  size_t ldvarg4 ;
  loff_t ldvarg1 ;
  char *ldvarg8 ;
  void *tmp___0 ;
  loff_t *ldvarg6 ;
  void *tmp___1 ;
  char *ldvarg5 ;
  void *tmp___2 ;
  int ldvarg0 ;
  loff_t *ldvarg3 ;
  void *tmp___3 ;
  size_t ldvarg7 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  ldvarg2 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg6 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg3 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_11 == 2) {
    b43legacy_debugfs_write(fops_tsf_group0, (char const *)ldvarg8, ldvarg7, ldvarg6);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_53441;
  case 1: ;
  if (ldv_state_variable_11 == 2) {
    b43legacy_debugfs_read(fops_tsf_group0, ldvarg5, ldvarg4, ldvarg3);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_53441;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    ldv_retval_0 = simple_open(ldvarg2, fops_tsf_group0);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53441;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    generic_file_llseek(fops_tsf_group0, ldvarg1, ldvarg0);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    generic_file_llseek(fops_tsf_group0, ldvarg1, ldvarg0);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_53441;
  case 4: ;
  if (ldv_state_variable_11 == 2) {
    ldv_release_11();
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53441;
  default:
  ldv_stop();
  }
  ldv_53441: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  int ldvarg9 ;
  loff_t ldvarg10 ;
  size_t ldvarg13 ;
  char *ldvarg14 ;
  void *tmp ;
  char *ldvarg17 ;
  void *tmp___0 ;
  loff_t *ldvarg15 ;
  void *tmp___1 ;
  size_t ldvarg16 ;
  loff_t *ldvarg12 ;
  void *tmp___2 ;
  struct inode *ldvarg11 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg15 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg12 = (loff_t *)tmp___2;
  tmp___3 = ldv_init_zalloc(1000UL);
  ldvarg11 = (struct inode *)tmp___3;
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_7 == 2) {
    b43legacy_debugfs_write(fops_restart_group0, (char const *)ldvarg17, ldvarg16,
                            ldvarg15);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_53460;
  case 1: ;
  if (ldv_state_variable_7 == 2) {
    b43legacy_debugfs_read(fops_restart_group0, ldvarg14, ldvarg13, ldvarg12);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_53460;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_1 = simple_open(ldvarg11, fops_restart_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53460;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    generic_file_llseek(fops_restart_group0, ldvarg10, ldvarg9);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    generic_file_llseek(fops_restart_group0, ldvarg10, ldvarg9);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_53460;
  case 4: ;
  if (ldv_state_variable_7 == 2) {
    ldv_release_7();
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53460;
  default:
  ldv_stop();
  }
  ldv_53460: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  loff_t *ldvarg66 ;
  void *tmp ;
  loff_t ldvarg64 ;
  struct inode *ldvarg65 ;
  void *tmp___0 ;
  loff_t *ldvarg69 ;
  void *tmp___1 ;
  char *ldvarg68 ;
  void *tmp___2 ;
  char *ldvarg71 ;
  void *tmp___3 ;
  size_t ldvarg67 ;
  size_t ldvarg70 ;
  int ldvarg63 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg66 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1000UL);
  ldvarg65 = (struct inode *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg69 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg68 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___3;
  ldv_memset((void *)(& ldvarg64), 0, 8UL);
  ldv_memset((void *)(& ldvarg67), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  ldv_memset((void *)(& ldvarg63), 0, 4UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_10 == 2) {
    b43legacy_debugfs_write(fops_ucode_regs_group0, (char const *)ldvarg71, ldvarg70,
                            ldvarg69);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_53479;
  case 1: ;
  if (ldv_state_variable_10 == 2) {
    b43legacy_debugfs_read(fops_ucode_regs_group0, ldvarg68, ldvarg67, ldvarg66);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_53479;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_9 = simple_open(ldvarg65, fops_ucode_regs_group0);
    if (ldv_retval_9 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53479;
  case 3: ;
  if (ldv_state_variable_10 == 1) {
    generic_file_llseek(fops_ucode_regs_group0, ldvarg64, ldvarg63);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    generic_file_llseek(fops_ucode_regs_group0, ldvarg64, ldvarg63);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_53479;
  case 4: ;
  if (ldv_state_variable_10 == 2) {
    ldv_release_10();
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53479;
  default:
  ldv_stop();
  }
  ldv_53479: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  size_t ldvarg28 ;
  loff_t ldvarg22 ;
  char *ldvarg29 ;
  void *tmp ;
  size_t ldvarg25 ;
  int ldvarg21 ;
  struct inode *ldvarg23 ;
  void *tmp___0 ;
  char *ldvarg26 ;
  void *tmp___1 ;
  loff_t *ldvarg27 ;
  void *tmp___2 ;
  loff_t *ldvarg24 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1000UL);
  ldvarg23 = (struct inode *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg27 = (loff_t *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg24 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg22), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_9 == 2) {
    b43legacy_debugfs_write(fops_shm_group0, (char const *)ldvarg29, ldvarg28, ldvarg27);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_53498;
  case 1: ;
  if (ldv_state_variable_9 == 2) {
    b43legacy_debugfs_read(fops_shm_group0, ldvarg26, ldvarg25, ldvarg24);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_53498;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_3 = simple_open(ldvarg23, fops_shm_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53498;
  case 3: ;
  if (ldv_state_variable_9 == 1) {
    generic_file_llseek(fops_shm_group0, ldvarg22, ldvarg21);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    generic_file_llseek(fops_shm_group0, ldvarg22, ldvarg21);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_53498;
  case 4: ;
  if (ldv_state_variable_9 == 2) {
    ldv_release_9();
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53498;
  default:
  ldv_stop();
  }
  ldv_53498: ;
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  tmp = ldv_err_ptr(error);
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
bool ldv_queue_work_on_135(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_136(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_137(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_138(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_139(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern unsigned long volatile jiffies ;
bool ldv_queue_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_150(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_152(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
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
    ldv_32978: ;
    goto ldv_32978;
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
    ldv_32987: ;
    goto ldv_32987;
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
    ldv_33038: ;
    goto ldv_33038;
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
    ldv_33046: ;
    goto ldv_33046;
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
                                          gfp_t flag )
{
  void *ret ;
  void *tmp ;
  {
  tmp = dma_alloc_attrs(dev, size, dma_handle, flag | 32768U, (struct dma_attrs *)0);
  ret = tmp;
  return (ret);
}
}
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  return (tmp);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__dev_alloc_skb(unsigned int length , gfp_t gfp_mask )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb((struct net_device *)0, length, gfp_mask);
  return (tmp);
}
}
__inline static void skb_set_queue_mapping(struct sk_buff *skb , u16 queue_mapping )
{
  {
  skb->queue_mapping = queue_mapping;
  return;
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
extern u32 ssb_dma_translation(struct ssb_device * ) ;
__inline static void ieee80211_tx_info_clear_status(struct ieee80211_tx_info *info )
{
  int i ;
  {
  i = 0;
  goto ldv_51098;
  ldv_51097:
  info->__annonCompField103.status.rates[i].count = 0U;
  i = i + 1;
  ldv_51098: ;
  if (i <= 3) {
    goto ldv_51097;
  } else {
  }
  memset((void *)(& info->__annonCompField103.status.ampdu_ack_len), 0, 24UL);
  return;
}
}
extern void ieee80211_tx_status_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_wake_queue(struct ieee80211_hw * , int ) ;
__inline static u32 b43legacy_dma_read(struct b43legacy_dmaring *ring , u16 offset )
{
  u32 tmp ;
  {
  tmp = b43legacy_read32(ring->dev, (int )ring->mmio_base + (int )offset);
  return (tmp);
}
}
__inline static void b43legacy_dma_write(struct b43legacy_dmaring *ring , u16 offset ,
                                         u32 value )
{
  {
  b43legacy_write32(ring->dev, (int )ring->mmio_base + (int )offset, value);
  return;
}
}
static struct b43legacy_dmadesc32 *op32_idx2desc(struct b43legacy_dmaring *ring ,
                                                 int slot , struct b43legacy_dmadesc_meta **meta )
{
  struct b43legacy_dmadesc32 *desc ;
  {
  *meta = ring->meta + (unsigned long )slot;
  desc = (struct b43legacy_dmadesc32 *)ring->descbase;
  desc = desc + (unsigned long )slot;
  return (desc);
}
}
static void op32_fill_descriptor(struct b43legacy_dmaring *ring , struct b43legacy_dmadesc32 *desc ,
                                 dma_addr_t dmaaddr , u16 bufsize , int start , int end ,
                                 int irq )
{
  struct b43legacy_dmadesc32 *descbase ;
  int slot ;
  u32 ctl ;
  u32 addr ;
  u32 addrext ;
  int __ret_warn_on ;
  long tmp ;
  {
  descbase = (struct b43legacy_dmadesc32 *)ring->descbase;
  slot = (int )(((long )desc - (long )descbase) / 8L);
  __ret_warn_on = slot < 0 || ring->nr_slots <= slot;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       70);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  addr = (unsigned int )dmaaddr & 1073741823U;
  addrext = (unsigned int )dmaaddr >> 30;
  addr = (ring->dev)->__annonCompField107.dma.translation | addr;
  ctl = ((u32 )bufsize - ring->frameoffset) & 8191U;
  if (ring->nr_slots + -1 == slot) {
    ctl = ctl | 268435456U;
  } else {
  }
  if (start != 0) {
    ctl = ctl | 2147483648U;
  } else {
  }
  if (end != 0) {
    ctl = ctl | 1073741824U;
  } else {
  }
  if (irq != 0) {
    ctl = ctl | 536870912U;
  } else {
  }
  ctl = ((addrext << 16) & 196608U) | ctl;
  desc->control = ctl;
  desc->address = addr;
  return;
}
}
static void op32_poke_tx(struct b43legacy_dmaring *ring , int slot )
{
  {
  b43legacy_dma_write(ring, 8, (unsigned int )((unsigned long )slot) * 8U);
  return;
}
}
static void op32_tx_suspend(struct b43legacy_dmaring *ring )
{
  u32 tmp ;
  {
  tmp = b43legacy_dma_read(ring, 0);
  b43legacy_dma_write(ring, 0, tmp | 2U);
  return;
}
}
static void op32_tx_resume(struct b43legacy_dmaring *ring )
{
  u32 tmp ;
  {
  tmp = b43legacy_dma_read(ring, 0);
  b43legacy_dma_write(ring, 0, tmp & 4294967293U);
  return;
}
}
static int op32_get_current_rxslot(struct b43legacy_dmaring *ring )
{
  u32 val ;
  {
  val = b43legacy_dma_read(ring, 28);
  val = val & 4095U;
  return ((int )(val / 8U));
}
}
static void op32_set_current_rxslot(struct b43legacy_dmaring *ring , int slot )
{
  {
  b43legacy_dma_write(ring, 24, (unsigned int )((unsigned long )slot) * 8U);
  return;
}
}
__inline static int free_slots(struct b43legacy_dmaring *ring )
{
  {
  return (ring->nr_slots - ring->used_slots);
}
}
__inline static int next_slot(struct b43legacy_dmaring *ring , int slot )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = slot < -1 || ring->nr_slots + -1 < slot;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       137);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (ring->nr_slots + -1 == slot) {
    return (0);
  } else {
  }
  return (slot + 1);
}
}
static void update_max_used_slots(struct b43legacy_dmaring *ring , int current_used_slots )
{
  int tmp ;
  {
  if (ring->max_used_slots >= current_used_slots) {
    return;
  } else {
  }
  ring->max_used_slots = current_used_slots;
  tmp = b43legacy_debug(ring->dev, 2);
  if (tmp != 0) {
    b43legacydbg((ring->dev)->wl, "max_used_slots increased to %d on %s ring %d\n",
                 ring->max_used_slots, (int )ring->tx ? (char *)"TX" : (char *)"RX",
                 ring->index);
  } else {
  }
  return;
}
}
__inline static int request_slot(struct b43legacy_dmaring *ring )
{
  int slot ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int __ret_warn_on___1 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_on = ! ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       178);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (int )ring->stopped;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       179);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  tmp___1 = free_slots(ring);
  __ret_warn_on___1 = tmp___1 == 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       180);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  slot = next_slot(ring, ring->current_slot);
  ring->current_slot = slot;
  ring->used_slots = ring->used_slots + 1;
  update_max_used_slots(ring, ring->used_slots);
  return (slot);
}
}
static struct b43legacy_dmaring *priority_to_txring(struct b43legacy_wldev *dev ,
                                                    int queue_priority )
{
  struct b43legacy_dmaring *ring ;
  int __ret_warn_on ;
  long tmp ;
  {
  return (dev->__annonCompField107.dma.tx_ring1);
  switch (queue_priority) {
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       204);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  case 0:
  ring = dev->__annonCompField107.dma.tx_ring3;
  goto ldv_54879;
  case 1:
  ring = dev->__annonCompField107.dma.tx_ring2;
  goto ldv_54879;
  case 2:
  ring = dev->__annonCompField107.dma.tx_ring1;
  goto ldv_54879;
  case 3:
  ring = dev->__annonCompField107.dma.tx_ring0;
  goto ldv_54879;
  case 4:
  ring = dev->__annonCompField107.dma.tx_ring4;
  goto ldv_54879;
  case 5:
  ring = dev->__annonCompField107.dma.tx_ring5;
  goto ldv_54879;
  }
  ldv_54879: ;
  return (ring);
}
}
static u16 b43legacy_dmacontroller_base(enum b43legacy_dmatype type , int controller_idx )
{
  u16 map32[6U] ;
  int __ret_warn_on ;
  long tmp ;
  {
  map32[0] = 512U;
  map32[1] = 544U;
  map32[2] = 576U;
  map32[3] = 608U;
  map32[4] = 640U;
  map32[5] = 672U;
  __ret_warn_on = controller_idx < 0 || (unsigned int )controller_idx > 5U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       255);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (map32[controller_idx]);
}
}
__inline static dma_addr_t map_descbuffer(struct b43legacy_dmaring *ring , unsigned char *buf ,
                                          size_t len , int tx )
{
  dma_addr_t dmaaddr ;
  {
  if (tx != 0) {
    dmaaddr = dma_map_single_attrs(((ring->dev)->dev)->dma_dev, (void *)buf, len,
                                   1, (struct dma_attrs *)0);
  } else {
    dmaaddr = dma_map_single_attrs(((ring->dev)->dev)->dma_dev, (void *)buf, len,
                                   2, (struct dma_attrs *)0);
  }
  return (dmaaddr);
}
}
__inline static void unmap_descbuffer(struct b43legacy_dmaring *ring , dma_addr_t addr ,
                                      size_t len , int tx )
{
  {
  if (tx != 0) {
    dma_unmap_single_attrs(((ring->dev)->dev)->dma_dev, addr, len, 1, (struct dma_attrs *)0);
  } else {
    dma_unmap_single_attrs(((ring->dev)->dev)->dma_dev, addr, len, 2, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static void sync_descbuffer_for_cpu(struct b43legacy_dmaring *ring , dma_addr_t addr ,
                                             size_t len )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (int )ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       300);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dma_sync_single_for_cpu(((ring->dev)->dev)->dma_dev, addr, len, 2);
  return;
}
}
__inline static void sync_descbuffer_for_device(struct b43legacy_dmaring *ring , dma_addr_t addr ,
                                                size_t len )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (int )ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       311);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  dma_sync_single_for_device(((ring->dev)->dev)->dma_dev, addr, len, 2);
  return;
}
}
__inline static void free_descriptor_buffer(struct b43legacy_dmaring *ring , struct b43legacy_dmadesc_meta *meta ,
                                            int irq_context )
{
  {
  if ((unsigned long )meta->skb != (unsigned long )((struct sk_buff *)0)) {
    if (irq_context != 0) {
      dev_kfree_skb_irq(meta->skb);
    } else {
      consume_skb(meta->skb);
    }
    meta->skb = (struct sk_buff *)0;
  } else {
  }
  return;
}
}
static int alloc_ringmemory(struct b43legacy_dmaring *ring )
{
  {
  ring->descbase = dma_zalloc_coherent(((ring->dev)->dev)->dma_dev, 4096UL, & ring->dmabase,
                                       208U);
  if ((unsigned long )ring->descbase == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void free_ringmemory(struct b43legacy_dmaring *ring )
{
  {
  dma_free_attrs(((ring->dev)->dev)->dma_dev, 4096UL, ring->descbase, ring->dmabase,
                 (struct dma_attrs *)0);
  return;
}
}
static int b43legacy_dmacontroller_rx_reset(struct b43legacy_wldev *dev , u16 mmio_base ,
                                            enum b43legacy_dmatype type )
{
  int i ;
  u32 value ;
  u16 offset ;
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                358, 0);
  offset = 16U;
  b43legacy_write32(dev, (int )mmio_base + (int )offset, 0U);
  i = 0;
  goto ldv_54946;
  ldv_54945:
  offset = 28U;
  value = b43legacy_read32(dev, (int )mmio_base + (int )offset);
  value = value & 61440U;
  if (value == 0U) {
    i = -1;
    goto ldv_54944;
  } else {
  }
  msleep(1U);
  i = i + 1;
  ldv_54946: ;
  if (i <= 9) {
    goto ldv_54945;
  } else {
  }
  ldv_54944: ;
  if (i != -1) {
    b43legacyerr(dev->wl, "DMA RX reset timed out\n");
    return (-19);
  } else {
  }
  return (0);
}
}
static int b43legacy_dmacontroller_tx_reset(struct b43legacy_wldev *dev , u16 mmio_base ,
                                            enum b43legacy_dmatype type )
{
  int i ;
  u32 value ;
  u16 offset ;
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                389, 0);
  i = 0;
  goto ldv_54957;
  ldv_54956:
  offset = 12U;
  value = b43legacy_read32(dev, (int )mmio_base + (int )offset);
  value = value & 61440U;
  if ((value == 0U || value == 8192U) || value == 12288U) {
    goto ldv_54955;
  } else {
  }
  msleep(1U);
  i = i + 1;
  ldv_54957: ;
  if (i <= 9) {
    goto ldv_54956;
  } else {
  }
  ldv_54955:
  offset = 0U;
  b43legacy_write32(dev, (int )mmio_base + (int )offset, 0U);
  i = 0;
  goto ldv_54960;
  ldv_54959:
  offset = 12U;
  value = b43legacy_read32(dev, (int )mmio_base + (int )offset);
  value = value & 61440U;
  if (value == 0U) {
    i = -1;
    goto ldv_54958;
  } else {
  }
  msleep(1U);
  i = i + 1;
  ldv_54960: ;
  if (i <= 9) {
    goto ldv_54959;
  } else {
  }
  ldv_54958: ;
  if (i != -1) {
    b43legacyerr(dev->wl, "DMA TX reset timed out\n");
    return (-19);
  } else {
  }
  msleep(1U);
  return (0);
}
}
static bool b43legacy_dma_mapping_error(struct b43legacy_dmaring *ring , dma_addr_t addr ,
                                        size_t buffersize , bool dma_to_device )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = dma_mapping_error(((ring->dev)->dev)->dma_dev, addr);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  switch ((unsigned int )ring->type) {
  case 30U: ;
  if (addr + (unsigned long long )buffersize > 1073741824ULL) {
    goto address_error;
  } else {
  }
  goto ldv_54969;
  case 32U: ;
  if (addr + (unsigned long long )buffersize > 4294967296ULL) {
    goto address_error;
  } else {
  }
  goto ldv_54969;
  }
  ldv_54969: ;
  return (0);
  address_error:
  unmap_descbuffer(ring, addr, buffersize, (int )dma_to_device);
  return (1);
}
}
static int setup_rx_descbuffer(struct b43legacy_dmaring *ring , struct b43legacy_dmadesc32 *desc ,
                               struct b43legacy_dmadesc_meta *meta , gfp_t gfp_flags )
{
  struct b43legacy_rxhdr_fw3 *rxhdr ;
  struct b43legacy_hwtxstatus *txstat ;
  dma_addr_t dmaaddr ;
  struct sk_buff *skb ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  __ret_warn_on = (int )ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       463);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  skb = __dev_alloc_skb((unsigned int )ring->rx_buffersize, gfp_flags);
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    return (-12);
  } else {
  }
  dmaaddr = map_descbuffer(ring, skb->data, (size_t )ring->rx_buffersize, 0);
  tmp___2 = b43legacy_dma_mapping_error(ring, dmaaddr, (size_t )ring->rx_buffersize,
                                        0);
  if ((int )tmp___2) {
    gfp_flags = gfp_flags | 1U;
    dev_kfree_skb_any(skb);
    skb = __dev_alloc_skb((unsigned int )ring->rx_buffersize, gfp_flags);
    tmp___1 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (-12);
    } else {
    }
    dmaaddr = map_descbuffer(ring, skb->data, (size_t )ring->rx_buffersize, 0);
  } else {
  }
  tmp___3 = b43legacy_dma_mapping_error(ring, dmaaddr, (size_t )ring->rx_buffersize,
                                        0);
  if ((int )tmp___3) {
    dev_kfree_skb_any(skb);
    return (-5);
  } else {
  }
  meta->skb = skb;
  meta->dmaaddr = dmaaddr;
  op32_fill_descriptor(ring, desc, dmaaddr, (int )ring->rx_buffersize, 0, 0, 0);
  rxhdr = (struct b43legacy_rxhdr_fw3 *)skb->data;
  rxhdr->frame_len = 0U;
  txstat = (struct b43legacy_hwtxstatus *)skb->data;
  txstat->cookie = 0U;
  return (0);
}
}
static int alloc_initial_descbuffers(struct b43legacy_dmaring *ring )
{
  int i ;
  int err ;
  struct b43legacy_dmadesc32 *desc ;
  struct b43legacy_dmadesc_meta *meta ;
  {
  err = -12;
  i = 0;
  goto ldv_54992;
  ldv_54991:
  desc = op32_idx2desc(ring, i, & meta);
  err = setup_rx_descbuffer(ring, desc, meta, 208U);
  if (err != 0) {
    b43legacyerr((ring->dev)->wl, "Failed to allocate initial descbuffers\n");
    goto err_unwind;
  } else {
  }
  i = i + 1;
  ldv_54992: ;
  if (ring->nr_slots > i) {
    goto ldv_54991;
  } else {
  }
  __asm__ volatile ("mfence": : : "memory");
  ring->used_slots = ring->nr_slots;
  err = 0;
  out: ;
  return (err);
  err_unwind:
  i = i - 1;
  goto ldv_54996;
  ldv_54995:
  desc = op32_idx2desc(ring, i, & meta);
  unmap_descbuffer(ring, meta->dmaaddr, (size_t )ring->rx_buffersize, 0);
  consume_skb(meta->skb);
  i = i - 1;
  ldv_54996: ;
  if (i >= 0) {
    goto ldv_54995;
  } else {
  }
  goto out;
}
}
static int dmacontroller_setup(struct b43legacy_dmaring *ring )
{
  int err ;
  u32 value ;
  u32 addrext ;
  u32 trans ;
  u32 ringbase ;
  {
  err = 0;
  trans = (ring->dev)->__annonCompField107.dma.translation;
  ringbase = (unsigned int )ring->dmabase;
  if ((int )ring->tx) {
    addrext = ringbase >> 30;
    value = 1U;
    value = ((addrext << 16) & 196608U) | value;
    b43legacy_dma_write(ring, 0, value);
    b43legacy_dma_write(ring, 4, (ringbase & 1073741823U) | trans);
  } else {
    err = alloc_initial_descbuffers(ring);
    if (err != 0) {
      goto out;
    } else {
    }
    addrext = ringbase >> 30;
    value = ring->frameoffset << 1;
    value = value | 1U;
    value = ((addrext << 16) & 196608U) | value;
    b43legacy_dma_write(ring, 16, value);
    b43legacy_dma_write(ring, 20, (ringbase & 1073741823U) | trans);
    b43legacy_dma_write(ring, 24, 200U);
  }
  out: ;
  return (err);
}
}
static void dmacontroller_cleanup(struct b43legacy_dmaring *ring )
{
  {
  if ((int )ring->tx) {
    b43legacy_dmacontroller_tx_reset(ring->dev, (int )ring->mmio_base, ring->type);
    b43legacy_dma_write(ring, 4, 0U);
  } else {
    b43legacy_dmacontroller_rx_reset(ring->dev, (int )ring->mmio_base, ring->type);
    b43legacy_dma_write(ring, 20, 0U);
  }
  return;
}
}
static void free_all_descbuffers(struct b43legacy_dmaring *ring )
{
  struct b43legacy_dmadesc_meta *meta ;
  int i ;
  int __ret_warn_on ;
  long tmp ;
  {
  if (ring->used_slots == 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_55019;
  ldv_55018:
  op32_idx2desc(ring, i, & meta);
  if ((unsigned long )meta->skb == (unsigned long )((struct sk_buff *)0)) {
    __ret_warn_on = ! ring->tx;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                         606);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    goto ldv_55017;
  } else {
  }
  if ((int )ring->tx) {
    unmap_descbuffer(ring, meta->dmaaddr, (size_t )(meta->skb)->len, 1);
  } else {
    unmap_descbuffer(ring, meta->dmaaddr, (size_t )ring->rx_buffersize, 0);
  }
  free_descriptor_buffer(ring, meta, 0);
  ldv_55017:
  i = i + 1;
  ldv_55019: ;
  if (ring->nr_slots > i) {
    goto ldv_55018;
  } else {
  }
  return;
}
}
static u64 supported_dma_mask(struct b43legacy_wldev *dev )
{
  u32 tmp ;
  u16 mmio_base ;
  {
  mmio_base = b43legacy_dmacontroller_base(0, 0);
  b43legacy_write32(dev, (int )mmio_base, 196608U);
  tmp = b43legacy_read32(dev, (int )mmio_base);
  if ((tmp & 196608U) != 0U) {
    return (4294967295ULL);
  } else {
  }
  return (1073741823ULL);
}
}
static enum b43legacy_dmatype dma_mask_to_engine_type(u64 dmamask )
{
  int __ret_warn_on ;
  long tmp ;
  {
  if (dmamask == 1073741823ULL) {
    return (30);
  } else {
  }
  if (dmamask == 4294967295ULL) {
    return (32);
  } else {
  }
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       642);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (30);
}
}
static struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev ,
                                                         int controller_index , int for_tx ,
                                                         enum b43legacy_dmatype type )
{
  struct b43legacy_dmaring *ring ;
  int err ;
  int nr_slots ;
  dma_addr_t dma_test ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  int __ret_warn_on ;
  long tmp___5 ;
  {
  tmp = kzalloc(96UL, 208U);
  ring = (struct b43legacy_dmaring *)tmp;
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto out;
  } else {
  }
  ring->type = type;
  ring->dev = dev;
  nr_slots = 64;
  if (for_tx != 0) {
    nr_slots = 128;
  } else {
  }
  tmp___0 = kcalloc((size_t )nr_slots, 24UL, 208U);
  ring->meta = (struct b43legacy_dmadesc_meta *)tmp___0;
  if ((unsigned long )ring->meta == (unsigned long )((struct b43legacy_dmadesc_meta *)0)) {
    goto err_kfree_ring;
  } else {
  }
  if (for_tx != 0) {
    tmp___1 = kcalloc((size_t )nr_slots, 82UL, 208U);
    ring->txhdr_cache = (u8 *)tmp___1;
    if ((unsigned long )ring->txhdr_cache == (unsigned long )((u8 *)0U)) {
      goto err_kfree_meta;
    } else {
    }
    dma_test = dma_map_single_attrs((dev->dev)->dma_dev, (void *)ring->txhdr_cache,
                                    82UL, 1, (struct dma_attrs *)0);
    tmp___4 = b43legacy_dma_mapping_error(ring, dma_test, 82UL, 1);
    if ((int )tmp___4) {
      kfree((void const *)ring->txhdr_cache);
      tmp___2 = kcalloc((size_t )nr_slots, 82UL, 209U);
      ring->txhdr_cache = (u8 *)tmp___2;
      if ((unsigned long )ring->txhdr_cache == (unsigned long )((u8 *)0U)) {
        goto err_kfree_meta;
      } else {
      }
      dma_test = dma_map_single_attrs((dev->dev)->dma_dev, (void *)ring->txhdr_cache,
                                      82UL, 1, (struct dma_attrs *)0);
      tmp___3 = b43legacy_dma_mapping_error(ring, dma_test, 82UL, 1);
      if ((int )tmp___3) {
        goto err_kfree_txhdr_cache;
      } else {
      }
    } else {
    }
    dma_unmap_single_attrs((dev->dev)->dma_dev, dma_test, 82UL, 1, (struct dma_attrs *)0);
  } else {
  }
  ring->nr_slots = nr_slots;
  ring->mmio_base = b43legacy_dmacontroller_base(type, controller_index);
  ring->index = controller_index;
  if (for_tx != 0) {
    ring->tx = 1;
    ring->current_slot = -1;
  } else
  if (ring->index == 0) {
    ring->rx_buffersize = 2404U;
    ring->frameoffset = 30U;
  } else
  if (ring->index == 3) {
    ring->rx_buffersize = 16U;
    ring->frameoffset = 0U;
  } else {
    __ret_warn_on = 1;
    tmp___5 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___5 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                         723);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ring->last_injected_overflow = jiffies;
  err = alloc_ringmemory(ring);
  if (err != 0) {
    goto err_kfree_txhdr_cache;
  } else {
  }
  err = dmacontroller_setup(ring);
  if (err != 0) {
    goto err_free_ringmemory;
  } else {
  }
  out: ;
  return (ring);
  err_free_ringmemory:
  free_ringmemory(ring);
  err_kfree_txhdr_cache:
  kfree((void const *)ring->txhdr_cache);
  err_kfree_meta:
  kfree((void const *)ring->meta);
  err_kfree_ring:
  kfree((void const *)ring);
  ring = (struct b43legacy_dmaring *)0;
  goto out;
}
}
static void b43legacy_destroy_dmaring(struct b43legacy_dmaring *ring )
{
  {
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    return;
  } else {
  }
  b43legacydbg((ring->dev)->wl, "DMA-%u 0x%04X (%s) max used slots: %d/%d\n", (unsigned int )ring->type,
               (int )ring->mmio_base, (int )ring->tx ? (char *)"TX" : (char *)"RX",
               ring->max_used_slots, ring->nr_slots);
  dmacontroller_cleanup(ring);
  free_all_descbuffers(ring);
  free_ringmemory(ring);
  kfree((void const *)ring->txhdr_cache);
  kfree((void const *)ring->meta);
  kfree((void const *)ring);
  return;
}
}
void b43legacy_dma_free(struct b43legacy_wldev *dev )
{
  struct b43legacy_dma *dma ;
  int tmp ;
  {
  tmp = b43legacy_using_pio(dev);
  if (tmp != 0) {
    return;
  } else {
  }
  dma = & dev->__annonCompField107.dma;
  b43legacy_destroy_dmaring(dma->rx_ring3);
  dma->rx_ring3 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->rx_ring0);
  dma->rx_ring0 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring5);
  dma->tx_ring5 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring4);
  dma->tx_ring4 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring3);
  dma->tx_ring3 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring2);
  dma->tx_ring2 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring1);
  dma->tx_ring1 = (struct b43legacy_dmaring *)0;
  b43legacy_destroy_dmaring(dma->tx_ring0);
  dma->tx_ring0 = (struct b43legacy_dmaring *)0;
  return;
}
}
static int b43legacy_dma_set_mask(struct b43legacy_wldev *dev , u64 mask )
{
  u64 orig_mask ;
  bool fallback ;
  int err ;
  enum b43legacy_dmatype tmp ;
  enum b43legacy_dmatype tmp___0 ;
  enum b43legacy_dmatype tmp___1 ;
  {
  orig_mask = mask;
  fallback = 0;
  ldv_55064:
  err = dma_set_mask_and_coherent((dev->dev)->dma_dev, mask);
  if (err == 0) {
    goto ldv_55062;
  } else {
  }
  if (mask == 0xffffffffffffffffULL) {
    mask = 4294967295ULL;
    fallback = 1;
    goto ldv_55063;
  } else {
  }
  if (mask == 4294967295ULL) {
    mask = 1073741823ULL;
    fallback = 1;
    goto ldv_55063;
  } else {
  }
  tmp = dma_mask_to_engine_type(orig_mask);
  b43legacyerr(dev->wl, "The machine/kernel does not support the required %u-bit DMA mask\n",
               (unsigned int )tmp);
  return (-95);
  ldv_55063: ;
  goto ldv_55064;
  ldv_55062: ;
  if ((int )fallback) {
    tmp___0 = dma_mask_to_engine_type(mask);
    tmp___1 = dma_mask_to_engine_type(orig_mask);
    b43legacyinfo(dev->wl, "DMA mask fallback from %u-bit to %u-bit\n", (unsigned int )tmp___1,
                  (unsigned int )tmp___0);
  } else {
  }
  return (0);
}
}
int b43legacy_dma_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_dma *dma ;
  struct b43legacy_dmaring *ring ;
  int err ;
  u64 dmamask ;
  enum b43legacy_dmatype type ;
  {
  dma = & dev->__annonCompField107.dma;
  dmamask = supported_dma_mask(dev);
  type = dma_mask_to_engine_type(dmamask);
  err = b43legacy_dma_set_mask(dev, dmamask);
  if (err != 0) {
    b43legacywarn(dev->wl, "DMA for this device not supported. Falling back to PIO\n");
    dev->__using_pio = 1;
    return (-11);
  } else {
  }
  dma->translation = ssb_dma_translation(dev->dev);
  err = -12;
  ring = b43legacy_setup_dmaring(dev, 0, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto out;
  } else {
  }
  dma->tx_ring0 = ring;
  ring = b43legacy_setup_dmaring(dev, 1, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx0;
  } else {
  }
  dma->tx_ring1 = ring;
  ring = b43legacy_setup_dmaring(dev, 2, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx1;
  } else {
  }
  dma->tx_ring2 = ring;
  ring = b43legacy_setup_dmaring(dev, 3, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx2;
  } else {
  }
  dma->tx_ring3 = ring;
  ring = b43legacy_setup_dmaring(dev, 4, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx3;
  } else {
  }
  dma->tx_ring4 = ring;
  ring = b43legacy_setup_dmaring(dev, 5, 1, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx4;
  } else {
  }
  dma->tx_ring5 = ring;
  ring = b43legacy_setup_dmaring(dev, 0, 0, type);
  if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
    goto err_destroy_tx5;
  } else {
  }
  dma->rx_ring0 = ring;
  if ((unsigned int )(dev->dev)->id.revision <= 4U) {
    ring = b43legacy_setup_dmaring(dev, 3, 0, type);
    if ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0)) {
      goto err_destroy_rx0;
    } else {
    }
    dma->rx_ring3 = ring;
  } else {
  }
  b43legacydbg(dev->wl, "%u-bit DMA initialized\n", (unsigned int )type);
  err = 0;
  out: ;
  return (err);
  err_destroy_rx0:
  b43legacy_destroy_dmaring(dma->rx_ring0);
  dma->rx_ring0 = (struct b43legacy_dmaring *)0;
  err_destroy_tx5:
  b43legacy_destroy_dmaring(dma->tx_ring5);
  dma->tx_ring5 = (struct b43legacy_dmaring *)0;
  err_destroy_tx4:
  b43legacy_destroy_dmaring(dma->tx_ring4);
  dma->tx_ring4 = (struct b43legacy_dmaring *)0;
  err_destroy_tx3:
  b43legacy_destroy_dmaring(dma->tx_ring3);
  dma->tx_ring3 = (struct b43legacy_dmaring *)0;
  err_destroy_tx2:
  b43legacy_destroy_dmaring(dma->tx_ring2);
  dma->tx_ring2 = (struct b43legacy_dmaring *)0;
  err_destroy_tx1:
  b43legacy_destroy_dmaring(dma->tx_ring1);
  dma->tx_ring1 = (struct b43legacy_dmaring *)0;
  err_destroy_tx0:
  b43legacy_destroy_dmaring(dma->tx_ring0);
  dma->tx_ring0 = (struct b43legacy_dmaring *)0;
  goto out;
}
}
static u16 generate_cookie(struct b43legacy_dmaring *ring , int slot )
{
  u16 cookie ;
  int __ret_warn_on ;
  long tmp ;
  {
  cookie = 4096U;
  switch (ring->index) {
  case 0:
  cookie = 40960U;
  goto ldv_55087;
  case 1:
  cookie = 45056U;
  goto ldv_55087;
  case 2:
  cookie = 49152U;
  goto ldv_55087;
  case 3:
  cookie = 53248U;
  goto ldv_55087;
  case 4:
  cookie = 57344U;
  goto ldv_55087;
  case 5:
  cookie = 61440U;
  goto ldv_55087;
  }
  ldv_55087:
  __ret_warn_on = ((int )((unsigned short )slot) & 61440) != 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       968);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  cookie = (u16 )((int )((unsigned short )slot) | (int )cookie);
  return (cookie);
}
}
static struct b43legacy_dmaring *parse_cookie(struct b43legacy_wldev *dev , u16 cookie ,
                                              int *slot )
{
  struct b43legacy_dma *dma ;
  struct b43legacy_dmaring *ring ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  {
  dma = & dev->__annonCompField107.dma;
  ring = (struct b43legacy_dmaring *)0;
  switch ((int )cookie & 61440) {
  case 40960:
  ring = dma->tx_ring0;
  goto ldv_55103;
  case 45056:
  ring = dma->tx_ring1;
  goto ldv_55103;
  case 49152:
  ring = dma->tx_ring2;
  goto ldv_55103;
  case 53248:
  ring = dma->tx_ring3;
  goto ldv_55103;
  case 57344:
  ring = dma->tx_ring4;
  goto ldv_55103;
  case 61440:
  ring = dma->tx_ring5;
  goto ldv_55103;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1002);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_55103:
  *slot = (int )cookie & 4095;
  __ret_warn_on___0 = ((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0) || *slot < 0) || *slot >= ring->nr_slots;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1005);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  return (ring);
}
}
static int dma_tx_fragment(struct b43legacy_dmaring *ring , struct sk_buff **in_skb )
{
  struct sk_buff *skb ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  u8 *header ;
  int slot ;
  int old_top_slot ;
  int old_used_slots ;
  int err ;
  struct b43legacy_dmadesc32 *desc ;
  struct b43legacy_dmadesc_meta *meta ;
  struct b43legacy_dmadesc_meta *meta_hdr ;
  struct sk_buff *bounce_skb ;
  int __ret_warn_on ;
  unsigned char *tmp___0 ;
  long tmp___1 ;
  u16 tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  unsigned char *tmp___5 ;
  u16 tmp___6 ;
  bool tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  {
  skb = *in_skb;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  __ret_warn_on = (unsigned int )((struct skb_shared_info *)tmp___0)->nr_frags != 0U;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1024);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  old_top_slot = ring->current_slot;
  old_used_slots = ring->used_slots;
  slot = request_slot(ring);
  desc = op32_idx2desc(ring, slot, & meta_hdr);
  memset((void *)meta_hdr, 0, 24UL);
  header = ring->txhdr_cache + (unsigned long )slot * 82UL;
  tmp___2 = generate_cookie(ring, slot);
  err = b43legacy_generate_txhdr(ring->dev, header, (unsigned char const *)skb->data,
                                 skb->len, info, (int )tmp___2);
  tmp___3 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___3 != 0L) {
    ring->current_slot = old_top_slot;
    ring->used_slots = old_used_slots;
    return (err);
  } else {
  }
  meta_hdr->dmaaddr = map_descbuffer(ring, header, 82UL, 1);
  tmp___4 = b43legacy_dma_mapping_error(ring, meta_hdr->dmaaddr, 82UL, 1);
  if ((int )tmp___4) {
    ring->current_slot = old_top_slot;
    ring->used_slots = old_used_slots;
    return (-5);
  } else {
  }
  op32_fill_descriptor(ring, desc, meta_hdr->dmaaddr, 82, 1, 0, 0);
  slot = request_slot(ring);
  desc = op32_idx2desc(ring, slot, & meta);
  memset((void *)meta, 0, 24UL);
  meta->skb = skb;
  meta->is_last_fragment = 1;
  meta->dmaaddr = map_descbuffer(ring, skb->data, (size_t )skb->len, 1);
  tmp___8 = b43legacy_dma_mapping_error(ring, meta->dmaaddr, (size_t )skb->len, 1);
  if ((int )tmp___8) {
    bounce_skb = alloc_skb(skb->len, 33U);
    if ((unsigned long )bounce_skb == (unsigned long )((struct sk_buff *)0)) {
      ring->current_slot = old_top_slot;
      ring->used_slots = old_used_slots;
      err = -12;
      goto out_unmap_hdr;
    } else {
    }
    tmp___5 = skb_put(bounce_skb, skb->len);
    memcpy((void *)tmp___5, (void const *)skb->data, (size_t )skb->len);
    memcpy((void *)(& bounce_skb->cb), (void const *)(& skb->cb), 48UL);
    bounce_skb->dev = skb->dev;
    tmp___6 = skb_get_queue_mapping((struct sk_buff const *)skb);
    skb_set_queue_mapping(bounce_skb, (int )tmp___6);
    info = IEEE80211_SKB_CB(bounce_skb);
    dev_kfree_skb_any(skb);
    skb = bounce_skb;
    *in_skb = bounce_skb;
    meta->skb = skb;
    meta->dmaaddr = map_descbuffer(ring, skb->data, (size_t )skb->len, 1);
    tmp___7 = b43legacy_dma_mapping_error(ring, meta->dmaaddr, (size_t )skb->len,
                                          1);
    if ((int )tmp___7) {
      ring->current_slot = old_top_slot;
      ring->used_slots = old_used_slots;
      err = -5;
      goto out_free_bounce;
    } else {
    }
  } else {
  }
  op32_fill_descriptor(ring, desc, meta->dmaaddr, (int )((u16 )skb->len), 0, 1, 1);
  __asm__ volatile ("sfence": : : "memory");
  tmp___9 = next_slot(ring, slot);
  op32_poke_tx(ring, tmp___9);
  return (0);
  out_free_bounce:
  dev_kfree_skb_any(skb);
  out_unmap_hdr:
  unmap_descbuffer(ring, meta_hdr->dmaaddr, 82UL, 1);
  return (err);
}
}
__inline static int should_inject_overflow(struct b43legacy_dmaring *ring )
{
  unsigned long next_overflow ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = b43legacy_debug(ring->dev, 1);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    next_overflow = ring->last_injected_overflow + 250UL;
    if ((long )(next_overflow - (unsigned long )jiffies) < 0L) {
      ring->last_injected_overflow = jiffies;
      b43legacydbg((ring->dev)->wl, "Injecting TX ring overflow on DMA controller %d\n",
                   ring->index);
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int b43legacy_dma_tx(struct b43legacy_wldev *dev , struct sk_buff *skb )
{
  struct b43legacy_dmaring *ring ;
  int err ;
  u16 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int __ret_warn_on___0 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  unsigned int skb_mapping ;
  u16 tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  err = 0;
  tmp = skb_get_queue_mapping((struct sk_buff const *)skb);
  ring = priority_to_txring(dev, (int )tmp);
  __ret_warn_on = ! ring->tx;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1140);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___2 = ldv__builtin_expect((long )ring->stopped, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = b43legacy_debug(dev, 2);
    if (tmp___1 != 0) {
      b43legacyerr(dev->wl, "Packet after queue stopped\n");
    } else {
    }
    return (-28);
  } else {
  }
  tmp___3 = free_slots(ring);
  __ret_warn_on___0 = tmp___3 <= 1;
  tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1152);
  } else {
  }
  tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  tmp___6 = ldv__builtin_expect(tmp___5 != 0L, 0L);
  if (tmp___6 != 0L) {
    b43legacyerr(dev->wl, "DMA queue overflow\n");
    return (-28);
  } else {
  }
  err = dma_tx_fragment(ring, & skb);
  tmp___7 = ldv__builtin_expect(err == -126, 0L);
  if (tmp___7 != 0L) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  tmp___8 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___8 != 0L) {
    b43legacyerr(dev->wl, "DMA tx mapping failure\n");
    return (err);
  } else {
  }
  tmp___11 = free_slots(ring);
  if (tmp___11 <= 1) {
    goto _L;
  } else {
    tmp___12 = should_inject_overflow(ring);
    if (tmp___12 != 0) {
      _L:
      tmp___9 = skb_get_queue_mapping((struct sk_buff const *)skb);
      skb_mapping = (unsigned int )tmp___9;
      ieee80211_stop_queue((dev->wl)->hw, (int )skb_mapping);
      (dev->wl)->tx_queue_stopped[skb_mapping] = 1;
      ring->stopped = 1;
      tmp___10 = b43legacy_debug(dev, 2);
      if (tmp___10 != 0) {
        b43legacydbg(dev->wl, "Stopped TX ring %d\n", ring->index);
      } else {
      }
    } else {
    }
  }
  return (err);
}
}
void b43legacy_dma_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status )
{
  struct b43legacy_dmaring *ring ;
  struct b43legacy_dmadesc_meta *meta ;
  int retry_limit ;
  int slot ;
  int firstused ;
  long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  struct ieee80211_tx_info *info ;
  long tmp___3 ;
  int __ret_warn_on___1 ;
  long tmp___4 ;
  int __ret_warn_on___2 ;
  int tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  {
  ring = parse_cookie(dev, (int )status->cookie, & slot);
  tmp = ldv__builtin_expect((unsigned long )ring == (unsigned long )((struct b43legacy_dmaring *)0),
                         0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  __ret_warn_on = ! ring->tx;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1198);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  firstused = (ring->current_slot - ring->used_slots) + 1;
  if (firstused < 0) {
    firstused = ring->nr_slots + firstused;
  } else {
  }
  tmp___1 = ldv__builtin_expect(slot != firstused, 0L);
  if (tmp___1 != 0L) {
    b43legacydbg(dev->wl, "Out of order TX status report on DMA ring %d. Expected %d, but got %d\n",
                 ring->index, firstused, slot);
    return;
  } else {
  }
  ldv_55172:
  __ret_warn_on___0 = slot < 0 || ring->nr_slots <= slot;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1217);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  op32_idx2desc(ring, slot, & meta);
  if ((unsigned long )meta->skb != (unsigned long )((struct sk_buff *)0)) {
    unmap_descbuffer(ring, meta->dmaaddr, (size_t )(meta->skb)->len, 1);
  } else {
    unmap_descbuffer(ring, meta->dmaaddr, 82UL, 1);
  }
  if ((int )meta->is_last_fragment) {
    tmp___3 = ldv__builtin_expect((unsigned long )meta->skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c"),
                           "i" (1230), "i" (12UL));
      ldv_55168: ;
      goto ldv_55168;
    } else {
    }
    info = IEEE80211_SKB_CB(meta->skb);
    retry_limit = (int )info->__annonCompField103.status.rates[0].count;
    ieee80211_tx_info_clear_status(info);
    if ((unsigned int )((unsigned char )status->acked) != 0U) {
      info->flags = info->flags | 512U;
    } else {
    }
    if ((int )((unsigned char )status->rts_count) > (int )((dev->wl)->hw)->conf.short_frame_max_tx_count) {
      info->__annonCompField103.status.rates[0].count = 0U;
      info->__annonCompField103.status.rates[1].count = (unsigned char )status->frame_count;
    } else
    if ((int )status->frame_count > retry_limit) {
      info->__annonCompField103.status.rates[0].count = (unsigned char )retry_limit;
      info->__annonCompField103.status.rates[1].count = (unsigned char )((int )((unsigned char )status->frame_count) - (int )((unsigned char )retry_limit));
    } else {
      info->__annonCompField103.status.rates[0].count = (unsigned char )status->frame_count;
      info->__annonCompField103.status.rates[1].idx = -1;
    }
    ieee80211_tx_status_irqsafe((dev->wl)->hw, meta->skb);
    meta->skb = (struct sk_buff *)0;
  } else {
    __ret_warn_on___1 = (unsigned long )meta->skb != (unsigned long )((struct sk_buff *)0);
    tmp___4 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___4 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                         1275);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  }
  ring->used_slots = ring->used_slots - 1;
  if ((int )meta->is_last_fragment) {
    goto ldv_55171;
  } else {
  }
  slot = next_slot(ring, slot);
  goto ldv_55172;
  ldv_55171:
  dev->stats.last_tx = jiffies;
  if ((int )ring->stopped) {
    tmp___5 = free_slots(ring);
    __ret_warn_on___2 = tmp___5 <= 1;
    tmp___6 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
    if (tmp___6 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                         1287);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
    ring->stopped = 0;
  } else {
  }
  if ((int )(dev->wl)->tx_queue_stopped[(int )ring->queue_prio]) {
    (dev->wl)->tx_queue_stopped[(int )ring->queue_prio] = 0;
  } else {
    ieee80211_wake_queue((dev->wl)->hw, (int )ring->queue_prio);
    tmp___7 = b43legacy_debug(dev, 2);
    if (tmp___7 != 0) {
      b43legacydbg(dev->wl, "Woke up TX ring %d\n", ring->index);
    } else {
    }
  }
  ieee80211_queue_work((dev->wl)->hw, & (dev->wl)->tx_work);
  return;
}
}
static void dma_rx(struct b43legacy_dmaring *ring , int *slot )
{
  struct b43legacy_dmadesc32 *desc ;
  struct b43legacy_dmadesc_meta *meta ;
  struct b43legacy_rxhdr_fw3 *rxhdr ;
  struct sk_buff *skb ;
  u16 len ;
  int err ;
  dma_addr_t dmaaddr ;
  struct b43legacy_hwtxstatus *hw ;
  int i ;
  int i___0 ;
  int tmp ;
  long tmp___0 ;
  int cnt ;
  s32 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  desc = op32_idx2desc(ring, *slot, & meta);
  sync_descbuffer_for_cpu(ring, meta->dmaaddr, (size_t )ring->rx_buffersize);
  skb = meta->skb;
  if (ring->index == 3) {
    hw = (struct b43legacy_hwtxstatus *)skb->data;
    i = 0;
    goto ldv_55190;
    ldv_55189: ;
    if (i > 100) {
      goto ldv_55188;
    } else {
    }
    i = i + 1;
    __const_udelay(8590UL);
    __asm__ volatile ("": : : "memory");
    ldv_55190: ;
    if ((unsigned int )hw->cookie == 0U) {
      goto ldv_55189;
    } else {
    }
    ldv_55188:
    b43legacy_handle_hwtxstatus(ring->dev, (struct b43legacy_hwtxstatus const *)hw);
    sync_descbuffer_for_device(ring, meta->dmaaddr, (size_t )ring->rx_buffersize);
    return;
  } else {
  }
  rxhdr = (struct b43legacy_rxhdr_fw3 *)skb->data;
  len = rxhdr->frame_len;
  if ((unsigned int )len == 0U) {
    i___0 = 0;
    ldv_55192:
    __const_udelay(8590UL);
    __asm__ volatile ("": : : "memory");
    len = rxhdr->frame_len;
    if ((unsigned int )len == 0U) {
      tmp = i___0;
      i___0 = i___0 + 1;
      if (tmp <= 4) {
        goto ldv_55192;
      } else {
        goto ldv_55193;
      }
    } else {
    }
    ldv_55193:
    tmp___0 = ldv__builtin_expect((unsigned int )len == 0U, 0L);
    if (tmp___0 != 0L) {
      sync_descbuffer_for_device(ring, meta->dmaaddr, (size_t )ring->rx_buffersize);
      goto drop;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect((int )ring->rx_buffersize < (int )len, 0L);
  if (tmp___2 != 0L) {
    cnt = 0;
    tmp___1 = (s32 )len;
    ldv_55198:
    desc = op32_idx2desc(ring, *slot, & meta);
    sync_descbuffer_for_device(ring, meta->dmaaddr, (size_t )ring->rx_buffersize);
    *slot = next_slot(ring, *slot);
    cnt = cnt + 1;
    tmp___1 = tmp___1 - (int )ring->rx_buffersize;
    if (tmp___1 <= 0) {
      goto ldv_55197;
    } else {
    }
    goto ldv_55198;
    ldv_55197:
    b43legacyerr((ring->dev)->wl, "DMA RX buffer too small (len: %u, buffer: %u, nr-dropped: %d)\n",
                 (int )len, (int )ring->rx_buffersize, cnt);
    goto drop;
  } else {
  }
  dmaaddr = meta->dmaaddr;
  err = setup_rx_descbuffer(ring, desc, meta, 32U);
  tmp___3 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___3 != 0L) {
    b43legacydbg((ring->dev)->wl, "DMA RX: setup_rx_descbuffer() failed\n");
    sync_descbuffer_for_device(ring, dmaaddr, (size_t )ring->rx_buffersize);
    goto drop;
  } else {
  }
  unmap_descbuffer(ring, dmaaddr, (size_t )ring->rx_buffersize, 0);
  skb_put(skb, (u32 )len + ring->frameoffset);
  skb_pull(skb, ring->frameoffset);
  b43legacy_rx(ring->dev, skb, (void const *)rxhdr);
  drop: ;
  return;
}
}
void b43legacy_dma_rx(struct b43legacy_dmaring *ring )
{
  int slot ;
  int current_slot ;
  int used_slots ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  {
  used_slots = 0;
  __ret_warn_on = (int )ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1409);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  current_slot = op32_get_current_rxslot(ring);
  __ret_warn_on___0 = current_slot < 0 || ring->nr_slots <= current_slot;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1412);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  slot = ring->current_slot;
  goto ldv_55210;
  ldv_55209:
  dma_rx(ring, & slot);
  used_slots = used_slots + 1;
  update_max_used_slots(ring, used_slots);
  slot = next_slot(ring, slot);
  ldv_55210: ;
  if (slot != current_slot) {
    goto ldv_55209;
  } else {
  }
  op32_set_current_rxslot(ring, slot);
  ring->current_slot = slot;
  return;
}
}
static void b43legacy_dma_tx_suspend_ring(struct b43legacy_dmaring *ring )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = ! ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1425);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  op32_tx_suspend(ring);
  return;
}
}
static void b43legacy_dma_tx_resume_ring(struct b43legacy_dmaring *ring )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = ! ring->tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/dma.c",
                       1431);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  op32_tx_resume(ring);
  return;
}
}
void b43legacy_dma_tx_suspend(struct b43legacy_wldev *dev )
{
  {
  b43legacy_power_saving_ctl_bits(dev, -1, 1);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring0);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring1);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring2);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring3);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring4);
  b43legacy_dma_tx_suspend_ring(dev->__annonCompField107.dma.tx_ring5);
  return;
}
}
void b43legacy_dma_tx_resume(struct b43legacy_wldev *dev )
{
  {
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring5);
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring4);
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring3);
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring2);
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring1);
  b43legacy_dma_tx_resume_ring(dev->__annonCompField107.dma.tx_ring0);
  b43legacy_power_saving_ctl_bits(dev, -1, -1);
  return;
}
}
bool ldv_queue_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_150(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_152(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_move(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add(list, head);
  return;
}
}
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_164(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_166(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  return (tmp);
}
}
__inline static u16 b43legacy_pio_read(struct b43legacy_pioqueue *queue , u16 offset )
{
  u16 tmp ;
  {
  tmp = b43legacy_read16(queue->dev, (int )queue->mmio_base + (int )offset);
  return (tmp);
}
}
__inline static void b43legacy_pio_write(struct b43legacy_pioqueue *queue , u16 offset ,
                                         u16 value )
{
  {
  b43legacy_write16(queue->dev, (int )queue->mmio_base + (int )offset, (int )value);
  __asm__ volatile ("": : : "memory");
  return;
}
}
void b43legacy_pio_tx_suspend(struct b43legacy_pioqueue *queue ) ;
void b43legacy_pio_tx_resume(struct b43legacy_pioqueue *queue ) ;
static void tx_start(struct b43legacy_pioqueue *queue )
{
  {
  b43legacy_pio_write(queue, 0, 8);
  return;
}
}
static void tx_octet(struct b43legacy_pioqueue *queue , u8 octet )
{
  {
  if ((int )queue->need_workarounds) {
    b43legacy_pio_write(queue, 2, (int )octet);
    b43legacy_pio_write(queue, 0, 1);
  } else {
    b43legacy_pio_write(queue, 0, 1);
    b43legacy_pio_write(queue, 2, (int )octet);
  }
  return;
}
}
static u16 tx_get_next_word(u8 const *txhdr , u8 const *packet , size_t txhdr_size ,
                            unsigned int *pos )
{
  u8 const *source ;
  unsigned int i ;
  u16 ret ;
  {
  i = *pos;
  if ((size_t )i < txhdr_size) {
    source = txhdr;
  } else {
    source = packet;
    i = i - (unsigned int )txhdr_size;
  }
  ret = *((__le16 *)source + (unsigned long )i);
  *pos = *pos + 2U;
  return (ret);
}
}
static void tx_data(struct b43legacy_pioqueue *queue , u8 *txhdr , u8 const *packet ,
                    unsigned int octets )
{
  u16 data ;
  unsigned int i ;
  {
  i = 0U;
  if ((int )queue->need_workarounds) {
    data = tx_get_next_word((u8 const *)txhdr, packet, 82UL, & i);
    b43legacy_pio_write(queue, 2, (int )data);
  } else {
  }
  b43legacy_pio_write(queue, 0, 3);
  goto ldv_53178;
  ldv_53177:
  data = tx_get_next_word((u8 const *)txhdr, packet, 82UL, & i);
  b43legacy_pio_write(queue, 2, (int )data);
  ldv_53178: ;
  if (octets - 1U > i) {
    goto ldv_53177;
  } else {
  }
  if ((int )octets & 1) {
    tx_octet(queue, (int )*(packet + ((unsigned long )octets + 0xffffffffffffffadUL)));
  } else {
  }
  return;
}
}
static void tx_complete(struct b43legacy_pioqueue *queue , struct sk_buff *skb )
{
  {
  if ((int )queue->need_workarounds) {
    b43legacy_pio_write(queue, 2, (int )*(skb->data + (unsigned long )(skb->len - 1U)));
    b43legacy_pio_write(queue, 0, 5);
  } else {
    b43legacy_pio_write(queue, 0, 4);
  }
  return;
}
}
static u16 generate_cookie___0(struct b43legacy_pioqueue *queue , struct b43legacy_pio_txpacket *packet )
{
  u16 cookie ;
  int packetindex ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  {
  cookie = 0U;
  switch ((int )queue->mmio_base) {
  case 768: ;
  goto ldv_53191;
  case 784:
  cookie = 4096U;
  goto ldv_53191;
  case 800:
  cookie = 8192U;
  goto ldv_53191;
  case 816:
  cookie = 12288U;
  goto ldv_53191;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       139);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_53191:
  packetindex = (int )(((long )packet - (long )(& (packet->queue)->tx_packets_cache)) / 32L);
  __ret_warn_on___0 = ((int )((unsigned short )packetindex) & 61440) != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       142);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  cookie = (u16 )((int )((unsigned short )packetindex) | (int )cookie);
  return (cookie);
}
}
static struct b43legacy_pioqueue *parse_cookie___0(struct b43legacy_wldev *dev , u16 cookie ,
                                                   struct b43legacy_pio_txpacket **packet )
{
  struct b43legacy_pio *pio ;
  struct b43legacy_pioqueue *queue ;
  int packetindex ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  {
  pio = & dev->__annonCompField107.pio;
  queue = (struct b43legacy_pioqueue *)0;
  switch ((int )cookie & 61440) {
  case 0:
  queue = pio->queue0;
  goto ldv_53209;
  case 4096:
  queue = pio->queue1;
  goto ldv_53209;
  case 8192:
  queue = pio->queue2;
  goto ldv_53209;
  case 12288:
  queue = pio->queue3;
  goto ldv_53209;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       171);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_53209:
  packetindex = (int )cookie & 4095;
  __ret_warn_on___0 = packetindex < 0 || packetindex > 255;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       175);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  *packet = (struct b43legacy_pio_txpacket *)(& queue->tx_packets_cache) + (unsigned long )packetindex;
  return (queue);
}
}
static int pio_tx_write_fragment(struct b43legacy_pioqueue *queue , struct sk_buff *skb ,
                                 struct b43legacy_pio_txpacket *packet , size_t txhdr_size )
{
  union txhdr_union txhdr_data ;
  u8 *txhdr ;
  unsigned int octets ;
  int err ;
  int __ret_warn_on ;
  unsigned char *tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  struct ieee80211_tx_info *tmp___2 ;
  {
  txhdr = (u8 *)0U;
  txhdr = (u8 *)(& txhdr_data.txhdr_fw3);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  __ret_warn_on = (unsigned int )((struct skb_shared_info *)tmp)->nr_frags != 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       197);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___1 = generate_cookie___0(queue, packet);
  tmp___2 = IEEE80211_SKB_CB(skb);
  err = b43legacy_generate_txhdr(queue->dev, txhdr, (unsigned char const *)skb->data,
                                 skb->len, tmp___2, (int )tmp___1);
  if (err != 0) {
    return (err);
  } else {
  }
  tx_start(queue);
  octets = skb->len + (unsigned int )txhdr_size;
  if ((int )queue->need_workarounds) {
    octets = octets - 1U;
  } else {
  }
  tx_data(queue, txhdr, (u8 const *)skb->data, octets);
  tx_complete(queue, skb);
  return (0);
}
}
static void free_txpacket(struct b43legacy_pio_txpacket *packet , int irq_context )
{
  struct b43legacy_pioqueue *queue ;
  {
  queue = packet->queue;
  if ((unsigned long )packet->skb != (unsigned long )((struct sk_buff *)0)) {
    if (irq_context != 0) {
      dev_kfree_skb_irq(packet->skb);
    } else {
      consume_skb(packet->skb);
    }
  } else {
  }
  list_move(& packet->list, & queue->txfree);
  queue->nr_txfree = queue->nr_txfree + 1U;
  return;
}
}
static int pio_tx_packet(struct b43legacy_pio_txpacket *packet )
{
  struct b43legacy_pioqueue *queue ;
  struct sk_buff *skb ;
  u16 octets ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  queue = packet->queue;
  skb = packet->skb;
  octets = (unsigned int )((u16 )skb->len) + 82U;
  if ((int )queue->tx_devq_size < (int )octets) {
    b43legacywarn((queue->dev)->wl, "PIO queue too small. Dropping packet.\n");
    free_txpacket(packet, 1);
    return (0);
  } else {
  }
  __ret_warn_on = (unsigned int )queue->tx_devq_packets > 31U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       246);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (int )queue->tx_devq_used > (int )queue->tx_devq_size;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       247);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if ((unsigned int )queue->tx_devq_packets == 31U) {
    return (-16);
  } else {
  }
  if ((int )queue->tx_devq_used + (int )octets > (int )queue->tx_devq_size) {
    return (-16);
  } else {
  }
  err = pio_tx_write_fragment(queue, skb, packet, 82UL);
  tmp___1 = ldv__builtin_expect(err == -126, 0L);
  if (tmp___1 != 0L) {
    free_txpacket(packet, 1);
    return (0);
  } else {
  }
  queue->tx_devq_packets = (u8 )((int )queue->tx_devq_packets + 1);
  queue->tx_devq_used = (int )queue->tx_devq_used + (int )octets;
  list_move_tail(& packet->list, & queue->txrunning);
  return (0);
}
}
static void tx_tasklet(unsigned long d )
{
  struct b43legacy_pioqueue *queue ;
  struct b43legacy_wldev *dev ;
  unsigned long flags ;
  struct b43legacy_pio_txpacket *packet ;
  struct b43legacy_pio_txpacket *tmp_packet ;
  int err ;
  u16 txctl ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  queue = (struct b43legacy_pioqueue *)d;
  dev = queue->dev;
  tmp = spinlock_check(& (dev->wl)->irq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((int )queue->tx_frozen) {
    goto out_unlock;
  } else {
  }
  txctl = b43legacy_pio_read(queue, 0);
  if (((int )txctl & 128) != 0) {
    goto out_unlock;
  } else {
  }
  __mptr = (struct list_head const *)queue->txqueue.next;
  packet = (struct b43legacy_pio_txpacket *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_53270;
  ldv_53269:
  err = pio_tx_packet(packet);
  if (err != 0) {
    goto ldv_53268;
  } else {
  }
  packet = tmp_packet;
  __mptr___1 = (struct list_head const *)tmp_packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_53270: ;
  if ((unsigned long )(& packet->list) != (unsigned long )(& queue->txqueue)) {
    goto ldv_53269;
  } else {
  }
  ldv_53268: ;
  out_unlock:
  spin_unlock_irqrestore(& (dev->wl)->irq_lock, flags);
  return;
}
}
static void setup_txqueues(struct b43legacy_pioqueue *queue )
{
  struct b43legacy_pio_txpacket *packet ;
  int i ;
  {
  queue->nr_txfree = 256U;
  i = 0;
  goto ldv_53277;
  ldv_53276:
  packet = (struct b43legacy_pio_txpacket *)(& queue->tx_packets_cache) + (unsigned long )i;
  packet->queue = queue;
  INIT_LIST_HEAD(& packet->list);
  list_add(& packet->list, & queue->txfree);
  i = i + 1;
  ldv_53277: ;
  if (i <= 255) {
    goto ldv_53276;
  } else {
  }
  return;
}
}
static struct b43legacy_pioqueue *b43legacy_setup_pioqueue(struct b43legacy_wldev *dev ,
                                                           u16 pio_mmio_base )
{
  struct b43legacy_pioqueue *queue ;
  u32 value ;
  u16 qsize ;
  void *tmp ;
  {
  tmp = kzalloc(8312UL, 208U);
  queue = (struct b43legacy_pioqueue *)tmp;
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    goto out;
  } else {
  }
  queue->dev = dev;
  queue->mmio_base = pio_mmio_base;
  queue->need_workarounds = (unsigned int )(dev->dev)->id.revision <= 2U;
  INIT_LIST_HEAD(& queue->txfree);
  INIT_LIST_HEAD(& queue->txqueue);
  INIT_LIST_HEAD(& queue->txrunning);
  tasklet_init(& queue->txtask, & tx_tasklet, (unsigned long )queue);
  value = b43legacy_read32(dev, 288);
  value = value & 4294901759U;
  b43legacy_write32(dev, 288, value);
  qsize = b43legacy_read16(dev, (int )((unsigned int )queue->mmio_base + 4U));
  if ((unsigned int )qsize == 0U) {
    b43legacyerr(dev->wl, "This card does not support PIO operation mode. Please use DMA mode (module parameter pio=0).\n");
    goto err_freequeue;
  } else {
  }
  if ((unsigned int )qsize <= 80U) {
    b43legacyerr(dev->wl, "PIO tx device-queue too small (%u)\n", (int )qsize);
    goto err_freequeue;
  } else {
  }
  qsize = (unsigned int )qsize + 65456U;
  queue->tx_devq_size = qsize;
  setup_txqueues(queue);
  out: ;
  return (queue);
  err_freequeue:
  kfree((void const *)queue);
  queue = (struct b43legacy_pioqueue *)0;
  goto out;
}
}
static void cancel_transfers(struct b43legacy_pioqueue *queue )
{
  struct b43legacy_pio_txpacket *packet ;
  struct b43legacy_pio_txpacket *tmp_packet ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  tasklet_kill(& queue->txtask);
  __mptr = (struct list_head const *)queue->txrunning.next;
  packet = (struct b43legacy_pio_txpacket *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_53300;
  ldv_53299:
  free_txpacket(packet, 0);
  packet = tmp_packet;
  __mptr___1 = (struct list_head const *)tmp_packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_53300: ;
  if ((unsigned long )(& packet->list) != (unsigned long )(& queue->txrunning)) {
    goto ldv_53299;
  } else {
  }
  __mptr___2 = (struct list_head const *)queue->txqueue.next;
  packet = (struct b43legacy_pio_txpacket *)__mptr___2 + 0xfffffffffffffff0UL;
  __mptr___3 = (struct list_head const *)packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___3 + 0xfffffffffffffff0UL;
  goto ldv_53309;
  ldv_53308:
  free_txpacket(packet, 0);
  packet = tmp_packet;
  __mptr___4 = (struct list_head const *)tmp_packet->list.next;
  tmp_packet = (struct b43legacy_pio_txpacket *)__mptr___4 + 0xfffffffffffffff0UL;
  ldv_53309: ;
  if ((unsigned long )(& packet->list) != (unsigned long )(& queue->txqueue)) {
    goto ldv_53308;
  } else {
  }
  return;
}
}
static void b43legacy_destroy_pioqueue(struct b43legacy_pioqueue *queue )
{
  {
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    return;
  } else {
  }
  cancel_transfers(queue);
  kfree((void const *)queue);
  return;
}
}
void b43legacy_pio_free(struct b43legacy_wldev *dev )
{
  struct b43legacy_pio *pio ;
  int tmp ;
  {
  tmp = b43legacy_using_pio(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  pio = & dev->__annonCompField107.pio;
  b43legacy_destroy_pioqueue(pio->queue3);
  pio->queue3 = (struct b43legacy_pioqueue *)0;
  b43legacy_destroy_pioqueue(pio->queue2);
  pio->queue2 = (struct b43legacy_pioqueue *)0;
  b43legacy_destroy_pioqueue(pio->queue1);
  pio->queue1 = (struct b43legacy_pioqueue *)0;
  b43legacy_destroy_pioqueue(pio->queue0);
  pio->queue0 = (struct b43legacy_pioqueue *)0;
  return;
}
}
int b43legacy_pio_init(struct b43legacy_wldev *dev )
{
  struct b43legacy_pio *pio ;
  struct b43legacy_pioqueue *queue ;
  int err ;
  {
  pio = & dev->__annonCompField107.pio;
  err = -12;
  queue = b43legacy_setup_pioqueue(dev, 768);
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    goto out;
  } else {
  }
  pio->queue0 = queue;
  queue = b43legacy_setup_pioqueue(dev, 784);
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    goto err_destroy0;
  } else {
  }
  pio->queue1 = queue;
  queue = b43legacy_setup_pioqueue(dev, 800);
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    goto err_destroy1;
  } else {
  }
  pio->queue2 = queue;
  queue = b43legacy_setup_pioqueue(dev, 816);
  if ((unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0)) {
    goto err_destroy2;
  } else {
  }
  pio->queue3 = queue;
  if ((unsigned int )(dev->dev)->id.revision <= 2U) {
    dev->irq_mask = dev->irq_mask | 256U;
  } else {
  }
  b43legacydbg(dev->wl, "PIO initialized\n");
  err = 0;
  out: ;
  return (err);
  err_destroy2:
  b43legacy_destroy_pioqueue(pio->queue2);
  pio->queue2 = (struct b43legacy_pioqueue *)0;
  err_destroy1:
  b43legacy_destroy_pioqueue(pio->queue1);
  pio->queue1 = (struct b43legacy_pioqueue *)0;
  err_destroy0:
  b43legacy_destroy_pioqueue(pio->queue0);
  pio->queue0 = (struct b43legacy_pioqueue *)0;
  goto out;
}
}
int b43legacy_pio_tx(struct b43legacy_wldev *dev , struct sk_buff *skb )
{
  struct b43legacy_pioqueue *queue ;
  struct b43legacy_pio_txpacket *packet ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  int tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  int __ret_warn_on___1 ;
  long tmp___2 ;
  {
  queue = dev->__annonCompField107.pio.queue1;
  __ret_warn_on = (int )queue->tx_suspended;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       472);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = list_empty((struct list_head const *)(& queue->txfree));
  __ret_warn_on___0 = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       473);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  __mptr = (struct list_head const *)queue->txfree.next;
  packet = (struct b43legacy_pio_txpacket *)__mptr + 0xfffffffffffffff0UL;
  packet->skb = skb;
  list_move_tail(& packet->list, & queue->txqueue);
  queue->nr_txfree = queue->nr_txfree - 1U;
  __ret_warn_on___1 = queue->nr_txfree > 255U;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       481);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  tasklet_schedule(& queue->txtask);
  return (0);
}
}
void b43legacy_pio_handle_txstatus(struct b43legacy_wldev *dev , struct b43legacy_txstatus const *status )
{
  struct b43legacy_pioqueue *queue ;
  struct b43legacy_pio_txpacket *packet ;
  struct ieee80211_tx_info *info ;
  int retry_limit ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  queue = parse_cookie___0(dev, (int )status->cookie, & packet);
  __ret_warn_on = (unsigned long )queue == (unsigned long )((struct b43legacy_pioqueue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       497);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )packet->skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  queue->tx_devq_packets = (u8 )((int )queue->tx_devq_packets - 1);
  queue->tx_devq_used = (unsigned int )((int )queue->tx_devq_used - (int )((u16 )(packet->skb)->len)) - 82U;
  info = IEEE80211_SKB_CB(packet->skb);
  retry_limit = (int )info->__annonCompField103.status.rates[0].count;
  ieee80211_tx_info_clear_status(info);
  if ((unsigned int )((unsigned char )status->acked) != 0U) {
    info->flags = info->flags | 512U;
  } else {
  }
  if ((int )((unsigned char )status->rts_count) > (int )((dev->wl)->hw)->conf.short_frame_max_tx_count) {
    info->__annonCompField103.status.rates[0].count = 0U;
    info->__annonCompField103.status.rates[1].count = (unsigned char )status->frame_count;
  } else
  if ((int )status->frame_count > retry_limit) {
    info->__annonCompField103.status.rates[0].count = (unsigned char )retry_limit;
    info->__annonCompField103.status.rates[1].count = (unsigned char )((int )((unsigned char )status->frame_count) - (int )((unsigned char )retry_limit));
  } else {
    info->__annonCompField103.status.rates[0].count = (unsigned char )status->frame_count;
    info->__annonCompField103.status.rates[1].idx = -1;
  }
  ieee80211_tx_status_irqsafe((dev->wl)->hw, packet->skb);
  packet->skb = (struct sk_buff *)0;
  free_txpacket(packet, 1);
  tmp___0 = list_empty((struct list_head const *)(& queue->txqueue));
  if (tmp___0 == 0) {
    tasklet_schedule(& queue->txtask);
  } else {
  }
  return;
}
}
static void pio_rx_error(struct b43legacy_pioqueue *queue , int clear_buffers , char const *error )
{
  int i ;
  int __ret_warn_on ;
  long tmp ;
  {
  b43legacyerr((queue->dev)->wl, "PIO RX error: %s\n", error);
  b43legacy_pio_write(queue, 8, 2);
  if (clear_buffers != 0) {
    __ret_warn_on = (unsigned int )queue->mmio_base != 768U;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                         559);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    i = 0;
    goto ldv_53361;
    ldv_53360:
    b43legacy_pio_read(queue, 10);
    i = i + 1;
    ldv_53361: ;
    if (i <= 14) {
      goto ldv_53360;
    } else {
    }
  } else {
  }
  return;
}
}
void b43legacy_pio_rx(struct b43legacy_pioqueue *queue )
{
  __le16 preamble[21U] ;
  unsigned int tmp ;
  struct b43legacy_rxhdr_fw3 *rxhdr ;
  u16 tmp___0 ;
  u16 len ;
  u16 macstat ;
  int i ;
  int preamble_readwords ;
  struct sk_buff *skb ;
  long tmp___1 ;
  long tmp___2 ;
  struct b43legacy_hwtxstatus *hw ;
  long tmp___3 ;
  {
  preamble[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 21U) {
      break;
    } else {
    }
    preamble[tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  tmp___0 = b43legacy_pio_read(queue, 8);
  if (((int )tmp___0 & 1) == 0) {
    return;
  } else {
  }
  b43legacy_pio_write(queue, 8, 1);
  i = 0;
  goto ldv_53376;
  ldv_53375:
  tmp___0 = b43legacy_pio_read(queue, 8);
  if (((int )tmp___0 & 2) != 0) {
    goto data_ready;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_53376: ;
  if (i <= 9) {
    goto ldv_53375;
  } else {
  }
  b43legacydbg((queue->dev)->wl, "PIO RX timed out\n");
  return;
  data_ready:
  len = b43legacy_pio_read(queue, 10);
  tmp___1 = ldv__builtin_expect((unsigned int )len > 1792U, 0L);
  if (tmp___1 != 0L) {
    pio_rx_error(queue, 0, "len > 0x700");
    return;
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )((unsigned int )len == 0U && (unsigned int )queue->mmio_base != 816U),
                             0L);
  if (tmp___2 != 0L) {
    pio_rx_error(queue, 0, "len == 0");
    return;
  } else {
  }
  preamble[0] = len;
  if ((unsigned int )queue->mmio_base == 816U) {
    preamble_readwords = 7;
  } else {
    preamble_readwords = 9;
  }
  i = 0;
  goto ldv_53379;
  ldv_53378:
  tmp___0 = b43legacy_pio_read(queue, 10);
  preamble[i + 1] = tmp___0;
  i = i + 1;
  ldv_53379: ;
  if (i < preamble_readwords) {
    goto ldv_53378;
  } else {
  }
  rxhdr = (struct b43legacy_rxhdr_fw3 *)(& preamble);
  macstat = rxhdr->mac_status;
  if ((int )macstat & 1) {
    pio_rx_error(queue, (unsigned int )queue->mmio_base == 768U, "Frame FCS error");
    return;
  } else {
  }
  if ((unsigned int )queue->mmio_base == 816U) {
    hw = (struct b43legacy_hwtxstatus *)(& preamble) + 1U;
    b43legacy_handle_hwtxstatus(queue->dev, (struct b43legacy_hwtxstatus const *)hw);
    return;
  } else {
  }
  skb = dev_alloc_skb((unsigned int )len);
  tmp___3 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___3 != 0L) {
    pio_rx_error(queue, 1, "OOM");
    return;
  } else {
  }
  skb_put(skb, (unsigned int )len);
  i = 0;
  goto ldv_53383;
  ldv_53382:
  tmp___0 = b43legacy_pio_read(queue, 10);
  *((__le16 *)skb->data + (unsigned long )i) = tmp___0;
  i = i + 2;
  ldv_53383: ;
  if ((int )len + -1 > i) {
    goto ldv_53382;
  } else {
  }
  if ((int )len & 1) {
    tmp___0 = b43legacy_pio_read(queue, 10);
    *(skb->data + ((unsigned long )len + 0xffffffffffffffffUL)) = (unsigned char )tmp___0;
  } else {
  }
  b43legacy_rx(queue->dev, skb, (void const *)rxhdr);
  return;
}
}
void b43legacy_pio_tx_suspend(struct b43legacy_pioqueue *queue )
{
  u16 tmp ;
  {
  b43legacy_power_saving_ctl_bits(queue->dev, -1, 1);
  tmp = b43legacy_pio_read(queue, 0);
  b43legacy_pio_write(queue, 0, (int )((unsigned int )tmp | 128U));
  return;
}
}
void b43legacy_pio_tx_resume(struct b43legacy_pioqueue *queue )
{
  u16 tmp ;
  {
  tmp = b43legacy_pio_read(queue, 0);
  b43legacy_pio_write(queue, 0, (int )tmp & 65407);
  b43legacy_power_saving_ctl_bits(queue->dev, -1, -1);
  tasklet_schedule(& queue->txtask);
  return;
}
}
void b43legacy_pio_freeze_txqueues(struct b43legacy_wldev *dev )
{
  struct b43legacy_pio *pio ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = b43legacy_using_pio(dev);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       669);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  pio = & dev->__annonCompField107.pio;
  (pio->queue0)->tx_frozen = 1;
  (pio->queue1)->tx_frozen = 1;
  (pio->queue2)->tx_frozen = 1;
  (pio->queue3)->tx_frozen = 1;
  return;
}
}
void b43legacy_pio_thaw_txqueues(struct b43legacy_wldev *dev )
{
  struct b43legacy_pio *pio ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = b43legacy_using_pio(dev);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12310/dscv_tempdir/dscv/ri/08_1a/drivers/net/wireless/b43legacy/pio.c",
                       681);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  pio = & dev->__annonCompField107.pio;
  (pio->queue0)->tx_frozen = 0;
  (pio->queue1)->tx_frozen = 0;
  (pio->queue2)->tx_frozen = 0;
  (pio->queue3)->tx_frozen = 0;
  tmp___1 = list_empty((struct list_head const *)(& (pio->queue0)->txqueue));
  if (tmp___1 == 0) {
    tasklet_schedule(& (pio->queue0)->txtask);
  } else {
  }
  tmp___2 = list_empty((struct list_head const *)(& (pio->queue1)->txqueue));
  if (tmp___2 == 0) {
    tasklet_schedule(& (pio->queue1)->txtask);
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& (pio->queue2)->txqueue));
  if (tmp___3 == 0) {
    tasklet_schedule(& (pio->queue2)->txtask);
  } else {
  }
  tmp___4 = list_empty((struct list_head const *)(& (pio->queue3)->txqueue));
  if (tmp___4 == 0) {
    tasklet_schedule(& (pio->queue3)->txtask);
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_164(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_166(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
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
void ___might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
const char *__ieee80211_get_assoc_led_name(struct ieee80211_hw *arg0) {
  return (const char *)external_alloc();
}
void *external_alloc(void);
const char *__ieee80211_get_radio_led_name(struct ieee80211_hw *arg0) {
  return (const char *)external_alloc();
}
void *external_alloc(void);
const char *__ieee80211_get_rx_led_name(struct ieee80211_hw *arg0) {
  return (const char *)external_alloc();
}
void *external_alloc(void);
const char *__ieee80211_get_tx_led_name(struct ieee80211_hw *arg0) {
  return (const char *)external_alloc();
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
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
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ssb_driver_register(struct ssb_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
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
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
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
struct dentry *debugfs_create_bool(const char *arg0, umode_t arg1, struct dentry *arg2, u32 *arg3) {
  return (struct dentry *)external_alloc();
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
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
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
void dump_stack() {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t generic_file_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_zeroed_page(gfp_t arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int hwrng_register(struct hwrng *arg0) {
  return __VERIFIER_nondet_int();
}
void hwrng_unregister(struct hwrng *arg0) {
  return;
}
void *external_alloc(void);
struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t arg0, const struct ieee80211_ops *arg1, const char *arg2) {
  return (struct ieee80211_hw *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *ieee80211_beacon_get_tim(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, u16 *arg2, u16 *arg3) {
  return (struct sk_buff *)external_alloc();
}
void ieee80211_ctstoself_get(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, const void *arg2, size_t arg3, const struct ieee80211_tx_info *arg4, struct ieee80211_cts *arg5) {
  return;
}
void ieee80211_free_hw(struct ieee80211_hw *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__le16 ieee80211_generic_frame_duration(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, enum ieee80211_band arg2, size_t arg3, struct ieee80211_rate *arg4) {
  return __VERIFIER_nondet_ushort();
}
void *external_alloc(void);
struct ieee80211_rate *ieee80211_get_response_rate(struct ieee80211_supported_band *arg0, u32 arg1, int arg2) {
  return (struct ieee80211_rate *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ieee80211_hdrlen(__le16 arg0) {
  return __VERIFIER_nondet_uint();
}
void ieee80211_queue_delayed_work(struct ieee80211_hw *arg0, struct delayed_work *arg1, unsigned long arg2) {
  return;
}
void ieee80211_queue_work(struct ieee80211_hw *arg0, struct work_struct *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_register_hw(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_int();
}
void ieee80211_rts_get(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, const void *arg2, size_t arg3, const struct ieee80211_tx_info *arg4, struct ieee80211_rts *arg5) {
  return;
}
void ieee80211_rx_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_stop_queue(struct ieee80211_hw *arg0, int arg1) {
  return;
}
void ieee80211_tx_status_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_unregister_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_wake_queue(struct ieee80211_hw *arg0, int arg1) {
  return;
}
void ieee80211_wake_queues(struct ieee80211_hw *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_11() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int led_classdev_register(struct device *arg0, struct led_classdev *arg1) {
  return __VERIFIER_nondet_int();
}
void led_classdev_unregister(struct led_classdev *arg0) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
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
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_firmware_nowait(struct module *arg0, bool arg1, const char *arg2, struct device *arg3, gfp_t arg4, void *arg5, void (*arg6)(const struct firmware *, void *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies_relative(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int simple_strtol(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
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
void skb_queue_head(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_bus_may_powerdown(struct ssb_bus *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ssb_bus_powerup(struct ssb_bus *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void ssb_device_disable(struct ssb_device *arg0, u32 arg1) {
  return;
}
void ssb_device_enable(struct ssb_device *arg0, u32 arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_device_is_enabled(struct ssb_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ssb_dma_translation(struct ssb_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void ssb_driver_unregister(struct ssb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ssb_pcicore_dev_irqvecs_enable(struct ssb_pcicore *arg0, struct ssb_device *arg1) {
  return __VERIFIER_nondet_int();
}
void ssb_set_devtypedata(struct ssb_device *arg0, void *arg1) {
  return;
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wiphy_rfkill_set_hw_state(struct wiphy *arg0, bool arg1) {
  return;
}
void wiphy_rfkill_start_polling(struct wiphy *arg0) {
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
