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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct file_operations;
struct completion;
struct atomic_notifier_head;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct atomic_notifier_head {
   spinlock_t lock ;
   struct notifier_block *head ;
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
union __anonunion___u_193 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_195 {
   struct list_head *__val ;
   char __c[1U] ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_220 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct____missing_field_name_220 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_219 __annonCompField59 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_222 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_221 {
   struct __anonstruct____missing_field_name_222 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_221 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_223 {
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
   union __anonunion_d_u_223 d_u ;
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
struct __anonstruct____missing_field_name_227 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_226 __annonCompField63 ;
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
struct bdi_writeback;
struct export_operations;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_231 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_231 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_232 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_232 __annonCompField65 ;
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
struct writeback_control;
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
union __anonunion____missing_field_name_235 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_236 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_237 {
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
   union __anonunion____missing_field_name_235 __annonCompField66 ;
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
   union __anonunion____missing_field_name_236 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
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
union __anonunion_f_u_238 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_238 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_240 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_239 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_240 afs ;
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
   union __anonunion_fl_u_239 fl_u ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct ipmi_addr {
   int addr_type ;
   short channel ;
   char data[32U] ;
};
struct ipmi_system_interface_addr {
   int addr_type ;
   short channel ;
   unsigned char lun ;
};
struct ipmi_ipmb_addr {
   int addr_type ;
   short channel ;
   unsigned char slave_addr ;
   unsigned char lun ;
};
struct ipmi_lan_addr {
   int addr_type ;
   short channel ;
   unsigned char privilege ;
   unsigned char session_handle ;
   unsigned char remote_SWID ;
   unsigned char local_SWID ;
   unsigned char lun ;
};
struct kernel_ipmi_msg {
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned short data_len ;
   unsigned char *data ;
};
struct proc_dir_entry;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
typedef void *acpi_handle;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct platform_device;
struct ipmi_user;
typedef struct ipmi_user *ipmi_user_t;
struct ipmi_recv_msg {
   struct list_head link ;
   int recv_type ;
   ipmi_user_t user ;
   struct ipmi_addr addr ;
   long msgid ;
   struct kernel_ipmi_msg msg ;
   void *user_msg_data ;
   void (*done)(struct ipmi_recv_msg * ) ;
   unsigned char msg_data[272U] ;
};
struct ipmi_user_hndl {
   void (*ipmi_recv_hndl)(struct ipmi_recv_msg * , void * ) ;
   void (*ipmi_watchdog_pretimeout)(void * ) ;
};
struct ipmi_smi_watcher {
   struct list_head link ;
   struct module *owner ;
   void (*new_smi)(int , struct device * ) ;
   void (*smi_gone)(int ) ;
};
enum ipmi_addr_src {
    SI_INVALID = 0,
    SI_HOTMOD = 1,
    SI_HARDCODED = 2,
    SI_SPMI = 3,
    SI_ACPI = 4,
    SI_SMBIOS = 5,
    SI_PCI = 6,
    SI_DEVICETREE = 7,
    SI_DEFAULT = 8
} ;
struct __anonstruct_acpi_info_255 {
   acpi_handle acpi_handle ;
};
union ipmi_smi_info_union {
   struct __anonstruct_acpi_info_255 acpi_info ;
};
struct ipmi_smi_info {
   enum ipmi_addr_src addr_src ;
   struct device *dev ;
   union ipmi_smi_info_union addr_info ;
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
   char *driver_override ;
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
struct ipmi_smi;
typedef struct ipmi_smi *ipmi_smi_t;
struct ipmi_smi_msg {
   struct list_head link ;
   long msgid ;
   void *user_data ;
   int data_size ;
   unsigned char data[272U] ;
   int rsp_size ;
   unsigned char rsp[272U] ;
   void (*done)(struct ipmi_smi_msg * ) ;
};
struct ipmi_smi_handlers {
   struct module *owner ;
   int (*start_processing)(void * , ipmi_smi_t ) ;
   int (*get_smi_info)(void * , struct ipmi_smi_info * ) ;
   void (*sender)(void * , struct ipmi_smi_msg * ) ;
   void (*request_events)(void * ) ;
   void (*set_need_watch)(void * , bool ) ;
   void (*set_run_to_completion)(void * , bool ) ;
   void (*poll)(void * ) ;
   void (*set_maintenance_mode)(void * , bool ) ;
   int (*inc_usecount)(void * ) ;
   void (*dec_usecount)(void * ) ;
};
struct ipmi_device_id {
   unsigned char device_id ;
   unsigned char device_revision ;
   unsigned char firmware_revision_1 ;
   unsigned char firmware_revision_2 ;
   unsigned char ipmi_version ;
   unsigned char additional_device_support ;
   unsigned int manufacturer_id ;
   unsigned int product_id ;
   unsigned char aux_firmware_revision[4U] ;
   unsigned char aux_firmware_revision_set : 1 ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct ipmi_user {
   struct list_head link ;
   bool valid ;
   struct kref refcount ;
   struct ipmi_user_hndl *handler ;
   void *handler_data ;
   ipmi_smi_t intf ;
   bool gets_events ;
};
struct cmd_rcvr {
   struct list_head link ;
   ipmi_user_t user ;
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned int chans ;
   struct cmd_rcvr *next ;
};
struct seq_table {
   unsigned char inuse : 1 ;
   unsigned char broadcast : 1 ;
   unsigned long timeout ;
   unsigned long orig_timeout ;
   unsigned int retries_left ;
   long seqid ;
   struct ipmi_recv_msg *recv_msg ;
};
struct ipmi_channel {
   unsigned char medium ;
   unsigned char protocol ;
   unsigned char address ;
   unsigned char lun ;
};
struct ipmi_proc_entry {
   char *name ;
   struct ipmi_proc_entry *next ;
};
struct bmc_device {
   struct platform_device pdev ;
   struct ipmi_device_id id ;
   unsigned char guid[16U] ;
   int guid_set ;
   char name[16U] ;
   struct kref usecount ;
};
struct ipmi_smi {
   int intf_num ;
   struct kref refcount ;
   bool in_shutdown ;
   struct list_head link ;
   struct list_head users ;
   unsigned char ipmi_version_major ;
   unsigned char ipmi_version_minor ;
   wait_queue_head_t waitq ;
   struct bmc_device *bmc ;
   char *my_dev_name ;
   struct ipmi_smi_handlers *handlers ;
   void *send_info ;
   struct mutex proc_entry_lock ;
   struct ipmi_proc_entry *proc_entries ;
   struct device *si_dev ;
   spinlock_t seq_lock ;
   struct seq_table seq_table[64U] ;
   int curr_seq ;
   spinlock_t waiting_rcv_msgs_lock ;
   struct list_head waiting_rcv_msgs ;
   atomic_t watchdog_pretimeouts_to_deliver ;
   struct tasklet_struct recv_tasklet ;
   spinlock_t xmit_msgs_lock ;
   struct list_head xmit_msgs ;
   struct ipmi_smi_msg *curr_msg ;
   struct list_head hp_xmit_msgs ;
   struct mutex cmd_rcvrs_mutex ;
   struct list_head cmd_rcvrs ;
   spinlock_t events_lock ;
   struct list_head waiting_events ;
   unsigned int waiting_events_count ;
   char delivering_events ;
   char event_msg_printed ;
   atomic_t event_waiters ;
   unsigned int ticks_to_req_ev ;
   int last_needs_timer ;
   unsigned char event_receiver ;
   unsigned char event_receiver_lun ;
   unsigned char local_sel_device ;
   unsigned char local_event_generator ;
   int maintenance_mode ;
   bool maintenance_mode_enable ;
   int auto_maintenance_timeout ;
   spinlock_t maintenance_mode_lock ;
   void (*null_user_handler)(ipmi_smi_t , struct ipmi_recv_msg * ) ;
   int curr_channel ;
   struct ipmi_channel channels[16U] ;
   struct proc_dir_entry *proc_dir ;
   char proc_dir_name[10U] ;
   atomic_t stats[28U] ;
   int run_to_completion ;
};
struct watcher_entry {
   int intf_num ;
   ipmi_smi_t intf ;
   struct list_head link ;
};
union __anonunion___u_265 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_267 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_269 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_271 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_273 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_275 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_277 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_279 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_281 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_283 {
   struct list_head *__val ;
   char __c[1U] ;
};
struct prod_dev_id {
   unsigned int product_id ;
   unsigned char device_id ;
};
union __anonunion___u_285 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_287 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_289 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_291 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_293 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_295 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_297 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_299 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_301 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_303 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_305 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_307 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_309 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_311 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_313 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_315 {
   struct list_head *__val ;
   char __c[1U] ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
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
__inline static void __write_once_size(void volatile *p , void *res , int size )
{
  {
  switch (size) {
  case 1:
  *((__u8 volatile *)p) = *((__u8 *)res);
  goto ldv_891;
  case 2:
  *((__u16 volatile *)p) = *((__u16 *)res);
  goto ldv_891;
  case 4:
  *((__u32 volatile *)p) = *((__u32 *)res);
  goto ldv_891;
  case 8:
  *((__u64 volatile *)p) = *((__u64 *)res);
  goto ldv_891;
  default:
  __asm__ volatile ("": : : "memory");
  memcpy((void *)p, (void const *)res, (unsigned long )size);
  __asm__ volatile ("": : : "memory");
  }
  ldv_891: ;
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
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern struct atomic_notifier_head panic_notifier_list ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
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
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
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
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void __cmpxchg_wrong_size(void) ;
extern void __xadd_wrong_size(void) ;
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
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  default:
  __xadd_wrong_size();
  }
  ldv_5659: ;
  return (__ret + i);
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
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5708:
  tmp = ldv__builtin_expect(c == u, 0L);
  if (tmp != 0L) {
    goto ldv_5707;
  } else {
  }
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5707;
  } else {
  }
  c = old;
  goto ldv_5708;
  ldv_5707: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  tmp = __atomic_add_unless(v, a, u);
  return (tmp != u);
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
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
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
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern void synchronize_sched(void) ;
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
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
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
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.pprev != (unsigned long )((struct hlist_node ** )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_11(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_12(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_13(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_14(struct timer_list *ldv_func_arg1 ) ;
extern int atomic_notifier_chain_register(struct atomic_notifier_head * , struct notifier_block * ) ;
extern int atomic_notifier_chain_unregister(struct atomic_notifier_head * , struct notifier_block * ) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
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
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
bool ldv_try_module_get_5(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_7(struct module *ldv_func_arg1 ) ;
void ldv_module_put_6(struct module *ldv_func_arg1 ) ;
void ldv_module_put_8(struct module *ldv_func_arg1 ) ;
void ldv_module_put_9(struct module *ldv_func_arg1 ) ;
void ldv_module_put_10(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
__inline static void INIT_LIST_HEAD_RCU(struct list_head *list )
{
  union __anonunion___u_193 __u ;
  union __anonunion___u_195 __u___0 ;
  {
  __u.__val = list;
  __write_once_size((void volatile *)(& list->next), (void *)(& __u.__c), 8);
  __u___0.__val = list;
  __write_once_size((void volatile *)(& list->prev), (void *)(& __u___0.__c), 8);
  return;
}
}
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head, head->next);
  return;
}
}
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
extern void __compiletime_assert_235(void) ;
__inline static void list_splice_init_rcu(struct list_head *list , struct list_head *head ,
                                          void (*sync)(void) )
{
  struct list_head *first ;
  struct list_head *last ;
  struct list_head *at ;
  int tmp ;
  bool __cond ;
  struct list_head *__var ;
  {
  first = list->next;
  last = list->prev;
  at = head->next;
  tmp = list_empty((struct list_head const *)list);
  if (tmp != 0) {
    return;
  } else {
  }
  INIT_LIST_HEAD_RCU(list);
  (*sync)();
  last->next = at;
  __cond = 0;
  if ((int )__cond) {
    __compiletime_assert_235();
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __var = (struct list_head *)0;
  *((struct list_head * volatile *)(& head->next)) = first;
  first->prev = head;
  at->prev = last;
  return;
}
}
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
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
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
int ldv_state_variable_10 ;
struct timer_list *ldv_timer_list_1_1 ;
int ldv_state_variable_6 ;
struct timer_list *ldv_timer_list_1_0 ;
struct file *smi_stats_proc_ops_group2 ;
struct inode *smi_ipmb_proc_ops_group1 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
int ldv_timer_1_1 ;
struct timer_list *ldv_timer_list_1_2 ;
int ldv_state_variable_12 ;
struct inode *smi_version_proc_ops_group1 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_1_0 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
struct file *smi_ipmb_proc_ops_group2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
struct file *smi_version_proc_ops_group2 ;
int ldv_state_variable_7 ;
struct inode *smi_stats_proc_ops_group1 ;
int ldv_state_variable_4 ;
void timer_init_1(void) ;
void ldv_file_operations_16(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void ldv_file_operations_15(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(void) ;
void ldv_file_operations_14(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void proc_remove(struct proc_dir_entry * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern struct device *driver_find_device(struct device_driver * , struct device * ,
                                         void * , int (*)(struct device * , void * ) ) ;
__inline static struct device *kobj_to_dev(struct kobject *kobj )
{
  struct kobject const *__mptr ;
  {
  __mptr = (struct kobject const *)kobj;
  return ((struct device *)__mptr + 0xfffffffffffffff0UL);
}
}
extern void put_device(struct device * ) ;
extern void _dev_info(struct device const * , char const * , ...) ;
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg ) ;
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user ) ;
int ipmi_destroy_user(ipmi_user_t user ) ;
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor ) ;
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address ) ;
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN ) ;
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms ) ;
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority ) ;
void ipmi_poll_interface(ipmi_user_t user ) ;
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans ) ;
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans ) ;
int ipmi_get_maintenance_mode(ipmi_user_t user ) ;
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode ) ;
int ipmi_set_gets_events(ipmi_user_t user , bool val ) ;
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher ) ;
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher ) ;
unsigned int ipmi_addr_length(int addr_type ) ;
int ipmi_validate_addr(struct ipmi_addr *addr , int len ) ;
char const *ipmi_addr_src_to_str(enum ipmi_addr_src src ) ;
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data ) ;
extern int platform_device_register(struct platform_device * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct bus_type platform_bus_type ;
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , unsigned char slave_addr ) ;
int ipmi_unregister_smi(ipmi_smi_t intf ) ;
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg ) ;
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf ) ;
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void) ;
__inline static void ipmi_free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  (*(msg->done))(msg);
  return;
}
}
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data ) ;
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
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void) ;
static int ipmi_init_msghandler(void) ;
static void smi_recv_tasklet(unsigned long val ) ;
static void handle_new_recv_msgs(ipmi_smi_t intf ) ;
static void need_waiter(ipmi_smi_t intf ) ;
static int handle_one_recv_msg(ipmi_smi_t intf , struct ipmi_smi_msg *msg ) ;
static int initialized ;
static struct proc_dir_entry *proc_ipmi_root ;
static struct platform_driver ipmidriver =
     {0, 0, 0, 0, 0, {"ipmi", & platform_bus_type, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0}, 0, (_Bool)0};
static struct mutex ipmidriver_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ipmidriver_mutex.wait_lock",
                                                          0, 0UL}}}}, {& ipmidriver_mutex.wait_list,
                                                                       & ipmidriver_mutex.wait_list},
    0, (void *)(& ipmidriver_mutex), {0, {0, 0}, "ipmidriver_mutex", 0, 0UL}};
static struct list_head ipmi_interfaces = {& ipmi_interfaces, & ipmi_interfaces};
static struct mutex ipmi_interfaces_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ipmi_interfaces_mutex.wait_lock",
                                                          0, 0UL}}}}, {& ipmi_interfaces_mutex.wait_list,
                                                                       & ipmi_interfaces_mutex.wait_list},
    0, (void *)(& ipmi_interfaces_mutex), {0, {0, 0}, "ipmi_interfaces_mutex", 0,
                                           0UL}};
static struct list_head smi_watchers = {& smi_watchers, & smi_watchers};
static struct mutex smi_watchers_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "smi_watchers_mutex.wait_lock",
                                                          0, 0UL}}}}, {& smi_watchers_mutex.wait_list,
                                                                       & smi_watchers_mutex.wait_list},
    0, (void *)(& smi_watchers_mutex), {0, {0, 0}, "smi_watchers_mutex", 0, 0UL}};
static char *addr_src_to_str[9U] =
  { (char *)"invalid", (char *)"hotmod", (char *)"hardcoded", (char *)"SPMI",
        (char *)"ACPI", (char *)"SMBIOS", (char *)"PCI", (char *)"device-tree",
        (char *)"default"};
char const *ipmi_addr_src_to_str(enum ipmi_addr_src src )
{
  {
  if ((unsigned int )src > 8U) {
    src = 0;
  } else {
  }
  return ((char const *)addr_src_to_str[(unsigned int )src]);
}
}
static char const __kstrtab_ipmi_addr_src_to_str[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'd', 'd',
        'r', '_', 's', 'r',
        'c', '_', 't', 'o',
        '_', 's', 't', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_addr_src_to_str ;
struct kernel_symbol const __ksymtab_ipmi_addr_src_to_str = {(unsigned long )(& ipmi_addr_src_to_str), (char const *)(& __kstrtab_ipmi_addr_src_to_str)};
static int is_lan_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 4);
}
}
static int is_ipmb_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 1);
}
}
static int is_ipmb_bcast_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 65);
}
}
static void free_recv_msg_list(struct list_head *q )
{
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_31509;
  ldv_31508:
  list_del(& msg->link);
  ipmi_free_recv_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  ldv_31509: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_31508;
  } else {
  }
  return;
}
}
static void free_smi_msg_list(struct list_head *q )
{
  struct ipmi_smi_msg *msg ;
  struct ipmi_smi_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_smi_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___0;
  goto ldv_31523;
  ldv_31522:
  list_del(& msg->link);
  ipmi_free_smi_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___1;
  ldv_31523: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_31522;
  } else {
  }
  return;
}
}
static void clean_up_interface_data(ipmi_smi_t intf )
{
  int i ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvr2 ;
  struct list_head list ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tasklet_kill(& intf->recv_tasklet);
  free_smi_msg_list(& intf->waiting_rcv_msgs);
  free_recv_msg_list(& intf->waiting_events);
  mutex_lock_nested(& intf->cmd_rcvrs_mutex, 0U);
  INIT_LIST_HEAD(& list);
  list_splice_init_rcu(& intf->cmd_rcvrs, & list, & synchronize_rcu);
  mutex_unlock(& intf->cmd_rcvrs_mutex);
  __mptr = (struct list_head const *)list.next;
  rcvr = (struct cmd_rcvr *)__mptr;
  __mptr___0 = (struct list_head const *)rcvr->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___0;
  goto ldv_31539;
  ldv_31538:
  kfree((void const *)rcvr);
  rcvr = rcvr2;
  __mptr___1 = (struct list_head const *)rcvr2->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___1;
  ldv_31539: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& list)) {
    goto ldv_31538;
  } else {
  }
  i = 0;
  goto ldv_31542;
  ldv_31541: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )intf->seq_table[i].recv_msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
  } else {
  }
  i = i + 1;
  ldv_31542: ;
  if (i <= 63) {
    goto ldv_31541;
  } else {
  }
  return;
}
}
static void intf_free(struct kref *ref )
{
  ipmi_smi_t intf ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffffcUL;
  clean_up_interface_data(intf);
  kfree((void const *)intf);
  return;
}
}
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher )
{
  ipmi_smi_t intf ;
  struct list_head to_deliver ;
  struct watcher_entry *e ;
  struct watcher_entry *e2 ;
  struct list_head const *__mptr ;
  void *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  to_deliver.next = & to_deliver;
  to_deliver.prev = & to_deliver;
  mutex_lock_nested(& smi_watchers_mutex, 0U);
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  __mptr = (struct list_head const *)ipmi_interfaces.next;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_31568;
  ldv_31567: ;
  if (intf->intf_num == -1) {
    goto ldv_31565;
  } else {
  }
  tmp = kmalloc(32UL, 208U);
  e = (struct watcher_entry *)tmp;
  if ((unsigned long )e == (unsigned long )((struct watcher_entry *)0)) {
    goto out_err;
  } else {
  }
  kref_get(& intf->refcount);
  e->intf = intf;
  e->intf_num = intf->intf_num;
  list_add_tail(& e->link, & to_deliver);
  ldv_31565:
  __mptr___0 = (struct list_head const *)intf->link.next;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_31568: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_31567;
  } else {
  }
  list_add(& watcher->link, & smi_watchers);
  mutex_unlock(& ipmi_interfaces_mutex);
  __mptr___1 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___1 + 0xfffffffffffffff0UL;
  __mptr___2 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___2 + 0xfffffffffffffff0UL;
  goto ldv_31577;
  ldv_31576:
  list_del(& e->link);
  (*(watcher->new_smi))(e->intf_num, (e->intf)->si_dev);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___3 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___3 + 0xfffffffffffffff0UL;
  ldv_31577: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_31576;
  } else {
  }
  mutex_unlock(& smi_watchers_mutex);
  return (0);
  out_err:
  mutex_unlock(& ipmi_interfaces_mutex);
  mutex_unlock(& smi_watchers_mutex);
  __mptr___4 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___4 + 0xfffffffffffffff0UL;
  __mptr___5 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___5 + 0xfffffffffffffff0UL;
  goto ldv_31586;
  ldv_31585:
  list_del(& e->link);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___6 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___6 + 0xfffffffffffffff0UL;
  ldv_31586: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_31585;
  } else {
  }
  return (-12);
}
}
static char const __kstrtab_ipmi_smi_watcher_register[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'e', 'r',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_register ;
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_register = {(unsigned long )(& ipmi_smi_watcher_register), (char const *)(& __kstrtab_ipmi_smi_watcher_register)};
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher )
{
  {
  mutex_lock_nested(& smi_watchers_mutex, 0U);
  list_del(& watcher->link);
  mutex_unlock(& smi_watchers_mutex);
  return (0);
}
}
static char const __kstrtab_ipmi_smi_watcher_unregister[28U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'e', 'r',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_unregister ;
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_unregister = {(unsigned long )(& ipmi_smi_watcher_unregister), (char const *)(& __kstrtab_ipmi_smi_watcher_unregister)};
static void call_smi_watchers(int i , struct device *dev )
{
  struct ipmi_smi_watcher *w ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr;
  goto ldv_31615;
  ldv_31614:
  tmp = ldv_try_module_get_5(w->owner);
  if ((int )tmp) {
    (*(w->new_smi))(i, dev);
    ldv_module_put_6(w->owner);
  } else {
  }
  __mptr___0 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___0;
  ldv_31615: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_31614;
  } else {
  }
  return;
}
}
static int ipmi_addr_equal(struct ipmi_addr *addr1 , struct ipmi_addr *addr2 )
{
  struct ipmi_system_interface_addr *smi_addr1 ;
  struct ipmi_system_interface_addr *smi_addr2 ;
  struct ipmi_ipmb_addr *ipmb_addr1 ;
  struct ipmi_ipmb_addr *ipmb_addr2 ;
  int tmp ;
  int tmp___0 ;
  struct ipmi_lan_addr *lan_addr1 ;
  struct ipmi_lan_addr *lan_addr2 ;
  int tmp___1 ;
  {
  if (addr1->addr_type != addr2->addr_type) {
    return (0);
  } else {
  }
  if ((int )addr1->channel != (int )addr2->channel) {
    return (0);
  } else {
  }
  if (addr1->addr_type == 12) {
    smi_addr1 = (struct ipmi_system_interface_addr *)addr1;
    smi_addr2 = (struct ipmi_system_interface_addr *)addr2;
    return ((int )smi_addr1->lun == (int )smi_addr2->lun);
  } else {
  }
  tmp = is_ipmb_addr(addr1);
  if (tmp != 0) {
    ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
    ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
    return ((int )ipmb_addr1->slave_addr == (int )ipmb_addr2->slave_addr && (int )ipmb_addr1->lun == (int )ipmb_addr2->lun);
  } else {
    tmp___0 = is_ipmb_bcast_addr(addr1);
    if (tmp___0 != 0) {
      ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
      ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
      return ((int )ipmb_addr1->slave_addr == (int )ipmb_addr2->slave_addr && (int )ipmb_addr1->lun == (int )ipmb_addr2->lun);
    } else {
    }
  }
  tmp___1 = is_lan_addr(addr1);
  if (tmp___1 != 0) {
    lan_addr1 = (struct ipmi_lan_addr *)addr1;
    lan_addr2 = (struct ipmi_lan_addr *)addr2;
    return ((((int )lan_addr1->remote_SWID == (int )lan_addr2->remote_SWID && (int )lan_addr1->local_SWID == (int )lan_addr2->local_SWID) && (int )lan_addr1->session_handle == (int )lan_addr2->session_handle) && (int )lan_addr1->lun == (int )lan_addr2->lun);
  } else {
  }
  return (1);
}
}
int ipmi_validate_addr(struct ipmi_addr *addr , int len )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )len <= 7U) {
    return (-22);
  } else {
  }
  if (addr->addr_type == 12) {
    if ((int )addr->channel != 15) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  if (((int )addr->channel == 15 || (int )addr->channel > 15) || (int )addr->channel < 0) {
    return (-22);
  } else {
  }
  tmp = is_ipmb_addr(addr);
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = is_ipmb_bcast_addr(addr);
    if (tmp___0 != 0) {
      _L:
      if ((unsigned int )len <= 7U) {
        return (-22);
      } else {
      }
      return (0);
    } else {
    }
  }
  tmp___1 = is_lan_addr(addr);
  if (tmp___1 != 0) {
    if ((unsigned int )len <= 11U) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  return (-22);
}
}
static char const __kstrtab_ipmi_validate_addr[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'v', 'a', 'l',
        'i', 'd', 'a', 't',
        'e', '_', 'a', 'd',
        'd', 'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_validate_addr ;
struct kernel_symbol const __ksymtab_ipmi_validate_addr = {(unsigned long )(& ipmi_validate_addr), (char const *)(& __kstrtab_ipmi_validate_addr)};
unsigned int ipmi_addr_length(int addr_type )
{
  {
  if (addr_type == 12) {
    return (8U);
  } else {
  }
  if (addr_type == 1 || addr_type == 65) {
    return (8U);
  } else {
  }
  if (addr_type == 4) {
    return (12U);
  } else {
  }
  return (0U);
}
}
static char const __kstrtab_ipmi_addr_length[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'd', 'd',
        'r', '_', 'l', 'e',
        'n', 'g', 't', 'h',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_addr_length ;
struct kernel_symbol const __ksymtab_ipmi_addr_length = {(unsigned long )(& ipmi_addr_length), (char const *)(& __kstrtab_ipmi_addr_length)};
static void deliver_response(struct ipmi_recv_msg *msg )
{
  ipmi_smi_t intf ;
  ipmi_user_t user ;
  {
  if ((unsigned long )msg->user == (unsigned long )((ipmi_user_t )0)) {
    intf = (ipmi_smi_t )msg->user_msg_data;
    if ((unsigned long )intf->null_user_handler != (unsigned long )((void (*)(ipmi_smi_t ,
                                                                              struct ipmi_recv_msg * ))0)) {
      (*(intf->null_user_handler))(intf, msg);
      atomic_inc((atomic_t *)(& intf->stats) + 2UL);
    } else {
      atomic_inc((atomic_t *)(& intf->stats) + 3UL);
    }
    ipmi_free_recv_msg(msg);
  } else {
    user = msg->user;
    (*((user->handler)->ipmi_recv_hndl))(msg, user->handler_data);
  }
  return;
}
}
static void deliver_err_response(struct ipmi_recv_msg *msg , int err )
{
  {
  msg->recv_type = 1;
  msg->msg_data[0] = (unsigned char )err;
  msg->msg.netfn = (unsigned int )msg->msg.netfn | 1U;
  msg->msg.data_len = 1U;
  msg->msg.data = (unsigned char *)(& msg->msg_data);
  deliver_response(msg);
  return;
}
}
static int intf_next_seq(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg , unsigned long timeout ,
                         int retries , int broadcast , unsigned char *seq , long *seqid )
{
  int rv ;
  unsigned int i ;
  {
  rv = 0;
  i = (unsigned int )intf->curr_seq;
  goto ldv_31671;
  ldv_31670: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    goto ldv_31669;
  } else {
  }
  i = (i + 1U) & 63U;
  ldv_31671: ;
  if (((i + 1U) & 63U) != (unsigned int )intf->curr_seq) {
    goto ldv_31670;
  } else {
  }
  ldv_31669: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    intf->seq_table[i].recv_msg = recv_msg;
    intf->seq_table[i].timeout = 60000UL;
    intf->seq_table[i].orig_timeout = timeout;
    intf->seq_table[i].retries_left = (unsigned int )retries;
    intf->seq_table[i].broadcast = (unsigned char )broadcast;
    intf->seq_table[i].inuse = 1U;
    intf->seq_table[i].seqid = (intf->seq_table[i].seqid + 1L) & 4194303L;
    *seq = (unsigned char )i;
    *seqid = intf->seq_table[i].seqid;
    intf->curr_seq = (int )(i + 1U) & 63;
    need_waiter(intf);
  } else {
    rv = -11;
  }
  return (rv);
}
}
static int intf_find_seq(ipmi_smi_t intf , unsigned char seq , short channel , unsigned char cmd ,
                         unsigned char netfn , struct ipmi_addr *addr , struct ipmi_recv_msg **recv_msg )
{
  int rv ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ipmi_recv_msg *msg ;
  int tmp___0 ;
  {
  rv = -19;
  if ((unsigned int )seq > 63U) {
    return (-22);
  } else {
  }
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U) {
    msg = intf->seq_table[(int )seq].recv_msg;
    if (((int )msg->addr.channel == (int )channel && (int )msg->msg.cmd == (int )cmd) && (int )msg->msg.netfn == (int )netfn) {
      tmp___0 = ipmi_addr_equal(addr, & msg->addr);
      if (tmp___0 != 0) {
        *recv_msg = msg;
        intf->seq_table[(int )seq].inuse = 0U;
        rv = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  return (rv);
}
}
static int intf_start_seq_timer(ipmi_smi_t intf , long msgid )
{
  int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  raw_spinlock_t *tmp ;
  struct seq_table *ent ;
  {
  rv = -19;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->timeout = ent->orig_timeout;
    rv = 0;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  return (rv);
}
}
static int intf_err_seq(ipmi_smi_t intf , long msgid , unsigned int err )
{
  int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  struct ipmi_recv_msg *msg ;
  raw_spinlock_t *tmp ;
  struct seq_table *ent ;
  {
  rv = -19;
  msg = (struct ipmi_recv_msg *)0;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->inuse = 0U;
    msg = ent->recv_msg;
    rv = 0;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  if ((unsigned long )msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    deliver_err_response(msg, (int )err);
  } else {
  }
  return (rv);
}
}
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user )
{
  unsigned long flags ;
  ipmi_user_t new_user ;
  int rv ;
  ipmi_smi_t intf ;
  void *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_265 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_267 __u___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  int tmp___5 ;
  {
  rv = 0;
  if ((unsigned long )handler == (unsigned long )((struct ipmi_user_hndl *)0)) {
    return (-22);
  } else {
  }
  if (initialized == 0) {
    rv = ipmi_init_msghandler();
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  tmp = kmalloc(56UL, 208U);
  new_user = (ipmi_user_t )tmp;
  if ((unsigned long )new_user == (unsigned long )((ipmi_user_t )0)) {
    return (-12);
  } else {
  }
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_31753;
  ldv_31752: ;
  if ((unsigned int )intf->intf_num == if_num) {
    goto found;
  } else {
  }
  __ptr___0 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_31753: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_31752;
  } else {
  }
  rv = -22;
  goto out_kfree;
  found:
  kref_get(& intf->refcount);
  kref_init(& new_user->refcount);
  new_user->handler = handler;
  new_user->handler_data = handler_data;
  new_user->intf = intf;
  new_user->gets_events = 0;
  tmp___2 = ldv_try_module_get_7((intf->handlers)->owner);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    rv = -19;
    goto out_kref;
  } else {
  }
  if ((unsigned long )(intf->handlers)->inc_usecount != (unsigned long )((int (*)(void * ))0)) {
    rv = (*((intf->handlers)->inc_usecount))(intf->send_info);
    if (rv != 0) {
      ldv_module_put_8((intf->handlers)->owner);
      goto out_kref;
    } else {
    }
  } else {
  }
  mutex_unlock(& ipmi_interfaces_mutex);
  new_user->valid = 1;
  tmp___4 = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  list_add_rcu(& new_user->link, & intf->users);
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  if ((unsigned long )handler->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
    tmp___5 = atomic_add_return(1, & intf->event_waiters);
    if (tmp___5 == 1) {
      need_waiter(intf);
    } else {
    }
  } else {
  }
  *user = new_user;
  return (0);
  out_kref:
  kref_put(& intf->refcount, & intf_free);
  out_kfree:
  mutex_unlock(& ipmi_interfaces_mutex);
  kfree((void const *)new_user);
  return (rv);
}
}
static char const __kstrtab_ipmi_create_user[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'c', 'r', 'e',
        'a', 't', 'e', '_',
        'u', 's', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_create_user ;
struct kernel_symbol const __ksymtab_ipmi_create_user = {(unsigned long )(& ipmi_create_user), (char const *)(& __kstrtab_ipmi_create_user)};
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data )
{
  int rv ;
  ipmi_smi_t intf ;
  struct ipmi_smi_handlers *handlers ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_269 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_271 __u___0 ;
  int tmp___0 ;
  {
  rv = 0;
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_31807;
  ldv_31806: ;
  if (intf->intf_num == if_num) {
    goto found;
  } else {
  }
  __ptr___0 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_31807: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_31806;
  } else {
  }
  rv = -22;
  mutex_unlock(& ipmi_interfaces_mutex);
  return (rv);
  found:
  handlers = intf->handlers;
  rv = -38;
  if ((unsigned long )handlers->get_smi_info != (unsigned long )((int (*)(void * ,
                                                                          struct ipmi_smi_info * ))0)) {
    rv = (*(handlers->get_smi_info))(intf->send_info, data);
  } else {
  }
  mutex_unlock(& ipmi_interfaces_mutex);
  return (rv);
}
}
static char const __kstrtab_ipmi_get_smi_info[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 's', 'm', 'i',
        '_', 'i', 'n', 'f',
        'o', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_smi_info ;
struct kernel_symbol const __ksymtab_ipmi_get_smi_info = {(unsigned long )(& ipmi_get_smi_info), (char const *)(& __kstrtab_ipmi_get_smi_info)};
static void free_user(struct kref *ref )
{
  ipmi_user_t user ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  user = (struct ipmi_user *)__mptr + 0xffffffffffffffecUL;
  kfree((void const *)user);
  return;
}
}
int ipmi_destroy_user(ipmi_user_t user )
{
  ipmi_smi_t intf ;
  int i ;
  unsigned long flags ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  raw_spinlock_t *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_273 __u ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_275 __u___0 ;
  int tmp___1 ;
  {
  intf = user->intf;
  rcvrs = (struct cmd_rcvr *)0;
  user->valid = 0;
  if ((unsigned long )(user->handler)->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
    atomic_dec(& intf->event_waiters);
  } else {
  }
  if ((int )user->gets_events) {
    atomic_dec(& intf->event_waiters);
  } else {
  }
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_del_rcu(& user->link);
  i = 0;
  goto ldv_31835;
  ldv_31834: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )(intf->seq_table[i].recv_msg)->user == (unsigned long )user) {
    intf->seq_table[i].inuse = 0U;
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
  } else {
  }
  i = i + 1;
  ldv_31835: ;
  if (i <= 63) {
    goto ldv_31834;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  mutex_lock_nested(& intf->cmd_rcvrs_mutex, 0U);
  __ptr = intf->cmd_rcvrs.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_31866;
  ldv_31865: ;
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    list_del_rcu(& rcvr->link);
    rcvr->next = rcvrs;
    rcvrs = rcvr;
  } else {
  }
  __ptr___0 = rcvr->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_31866: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_31865;
  } else {
  }
  mutex_unlock(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  goto ldv_31869;
  ldv_31868:
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  ldv_31869: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_31868;
  } else {
  }
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  if ((unsigned long )intf->handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
    ldv_module_put_9((intf->handlers)->owner);
    if ((unsigned long )(intf->handlers)->dec_usecount != (unsigned long )((void (*)(void * ))0)) {
      (*((intf->handlers)->dec_usecount))(intf->send_info);
    } else {
    }
  } else {
  }
  mutex_unlock(& ipmi_interfaces_mutex);
  kref_put(& intf->refcount, & intf_free);
  kref_put(& user->refcount, & free_user);
  return (0);
}
}
static char const __kstrtab_ipmi_destroy_user[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'd', 'e', 's',
        't', 'r', 'o', 'y',
        '_', 'u', 's', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_destroy_user ;
struct kernel_symbol const __ksymtab_ipmi_destroy_user = {(unsigned long )(& ipmi_destroy_user), (char const *)(& __kstrtab_ipmi_destroy_user)};
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor )
{
  {
  *major = (user->intf)->ipmi_version_major;
  *minor = (user->intf)->ipmi_version_minor;
  return;
}
}
static char const __kstrtab_ipmi_get_version[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'v', 'e', 'r',
        's', 'i', 'o', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_version ;
struct kernel_symbol const __ksymtab_ipmi_get_version = {(unsigned long )(& ipmi_get_version), (char const *)(& __kstrtab_ipmi_get_version)};
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].address = address;
  return (0);
}
}
static char const __kstrtab_ipmi_set_my_address[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'y', '_',
        'a', 'd', 'd', 'r',
        'e', 's', 's', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_my_address ;
struct kernel_symbol const __ksymtab_ipmi_set_my_address = {(unsigned long )(& ipmi_set_my_address), (char const *)(& __kstrtab_ipmi_set_my_address)};
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].address;
  return (0);
}
}
static char const __kstrtab_ipmi_get_my_address[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'y', '_',
        'a', 'd', 'd', 'r',
        'e', 's', 's', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_my_address ;
struct kernel_symbol const __ksymtab_ipmi_get_my_address = {(unsigned long )(& ipmi_get_my_address), (char const *)(& __kstrtab_ipmi_get_my_address)};
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].lun = (unsigned int )LUN & 3U;
  return (0);
}
}
static char const __kstrtab_ipmi_set_my_LUN[16U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'y', '_',
        'L', 'U', 'N', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_my_LUN ;
struct kernel_symbol const __ksymtab_ipmi_set_my_LUN = {(unsigned long )(& ipmi_set_my_LUN), (char const *)(& __kstrtab_ipmi_set_my_LUN)};
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].lun;
  return (0);
}
}
static char const __kstrtab_ipmi_get_my_LUN[16U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'y', '_',
        'L', 'U', 'N', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_my_LUN ;
struct kernel_symbol const __ksymtab_ipmi_get_my_LUN = {(unsigned long )(& ipmi_get_my_LUN), (char const *)(& __kstrtab_ipmi_get_my_LUN)};
int ipmi_get_maintenance_mode(ipmi_user_t user )
{
  int mode ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& (user->intf)->maintenance_mode_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  mode = (user->intf)->maintenance_mode;
  spin_unlock_irqrestore(& (user->intf)->maintenance_mode_lock, flags);
  return (mode);
}
}
static char const __kstrtab_ipmi_get_maintenance_mode[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'a', 'i',
        'n', 't', 'e', 'n',
        'a', 'n', 'c', 'e',
        '_', 'm', 'o', 'd',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_maintenance_mode ;
struct kernel_symbol const __ksymtab_ipmi_get_maintenance_mode = {(unsigned long )(& ipmi_get_maintenance_mode), (char const *)(& __kstrtab_ipmi_get_maintenance_mode)};
static void maintenance_mode_update(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->set_maintenance_mode != (unsigned long )((void (*)(void * ,
                                                                                           bool ))0)) {
    (*((intf->handlers)->set_maintenance_mode))(intf->send_info, (int )intf->maintenance_mode_enable);
  } else {
  }
  return;
}
}
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode )
{
  int rv ;
  unsigned long flags ;
  ipmi_smi_t intf ;
  raw_spinlock_t *tmp ;
  {
  rv = 0;
  intf = user->intf;
  tmp = spinlock_check(& intf->maintenance_mode_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (intf->maintenance_mode != mode) {
    switch (mode) {
    case 0:
    intf->maintenance_mode_enable = intf->auto_maintenance_timeout > 0;
    goto ldv_31977;
    case 1:
    intf->maintenance_mode_enable = 0;
    goto ldv_31977;
    case 2:
    intf->maintenance_mode_enable = 1;
    goto ldv_31977;
    default:
    rv = -22;
    goto out_unlock;
    }
    ldv_31977:
    intf->maintenance_mode = mode;
    maintenance_mode_update(intf);
  } else {
  }
  out_unlock:
  spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
  return (rv);
}
}
static char const __kstrtab_ipmi_set_maintenance_mode[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'a', 'i',
        'n', 't', 'e', 'n',
        'a', 'n', 'c', 'e',
        '_', 'm', 'o', 'd',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_maintenance_mode ;
struct kernel_symbol const __ksymtab_ipmi_set_maintenance_mode = {(unsigned long )(& ipmi_set_maintenance_mode), (char const *)(& __kstrtab_ipmi_set_maintenance_mode)};
int ipmi_set_gets_events(ipmi_user_t user , bool val )
{
  unsigned long flags ;
  ipmi_smi_t intf ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head msgs ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  {
  intf = user->intf;
  INIT_LIST_HEAD(& msgs);
  tmp = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((int )user->gets_events == (int )val) {
    goto out;
  } else {
  }
  user->gets_events = val;
  if ((int )val) {
    tmp___0 = atomic_add_return(1, & intf->event_waiters);
    if (tmp___0 == 1) {
      need_waiter(intf);
    } else {
    }
  } else {
    atomic_dec(& intf->event_waiters);
  }
  if ((int )((signed char )intf->delivering_events) != 0) {
    goto out;
  } else {
  }
  goto ldv_32025;
  ldv_32024:
  __mptr = (struct list_head const *)intf->waiting_events.next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_32010;
  ldv_32009:
  list_move_tail(& msg->link, & msgs);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  ldv_32010: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& intf->waiting_events)) {
    goto ldv_32009;
  } else {
  }
  intf->waiting_events_count = 0U;
  if ((int )((signed char )intf->event_msg_printed) != 0) {
    printk("\fIPMI message handler: Event queue no longer full\n");
    intf->event_msg_printed = 0;
  } else {
  }
  intf->delivering_events = 1;
  spin_unlock_irqrestore(& intf->events_lock, flags);
  __mptr___2 = (struct list_head const *)msgs.next;
  msg = (struct ipmi_recv_msg *)__mptr___2;
  __mptr___3 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___3;
  goto ldv_32019;
  ldv_32018:
  msg->user = user;
  kref_get(& user->refcount);
  deliver_response(msg);
  msg = msg2;
  __mptr___4 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___4;
  ldv_32019: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& msgs)) {
    goto ldv_32018;
  } else {
  }
  tmp___1 = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  intf->delivering_events = 0;
  ldv_32025: ;
  if ((int )user->gets_events) {
    tmp___2 = list_empty((struct list_head const *)(& intf->waiting_events));
    if (tmp___2 == 0) {
      goto ldv_32024;
    } else {
      goto ldv_32026;
    }
  } else {
  }
  ldv_32026: ;
  out:
  spin_unlock_irqrestore(& intf->events_lock, flags);
  return (0);
}
}
static char const __kstrtab_ipmi_set_gets_events[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'g', 'e', 't',
        's', '_', 'e', 'v',
        'e', 'n', 't', 's',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_gets_events ;
struct kernel_symbol const __ksymtab_ipmi_set_gets_events = {(unsigned long )(& ipmi_set_gets_events), (char const *)(& __kstrtab_ipmi_set_gets_events)};
static struct cmd_rcvr *find_cmd_rcvr(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                      unsigned char chan )
{
  struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_277 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_279 __u___0 ;
  int tmp___0 ;
  {
  __ptr = intf->cmd_rcvrs.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_32071;
  ldv_32070: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & (unsigned int )(1 << (int )chan)) != 0U) {
    return (rcvr);
  } else {
  }
  __ptr___0 = rcvr->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_32071: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_32070;
  } else {
  }
  return ((struct cmd_rcvr *)0);
}
}
static int is_cmd_rcvr_exclusive(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                 unsigned int chans )
{
  struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_281 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_283 __u___0 ;
  int tmp___0 ;
  {
  __ptr = intf->cmd_rcvrs.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_32109;
  ldv_32108: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & chans) != 0U) {
    return (0);
  } else {
  }
  __ptr___0 = rcvr->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_32109: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_32108;
  } else {
  }
  return (1);
}
}
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans )
{
  ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  int rv ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  intf = user->intf;
  rv = 0;
  tmp = kmalloc(40UL, 208U);
  rcvr = (struct cmd_rcvr *)tmp;
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    return (-12);
  } else {
  }
  rcvr->cmd = cmd;
  rcvr->netfn = netfn;
  rcvr->chans = chans;
  rcvr->user = user;
  mutex_lock_nested(& intf->cmd_rcvrs_mutex, 0U);
  tmp___0 = is_cmd_rcvr_exclusive(intf, (int )netfn, (int )cmd, chans);
  if (tmp___0 == 0) {
    rv = -16;
    goto out_unlock;
  } else {
  }
  tmp___1 = atomic_add_return(1, & intf->event_waiters);
  if (tmp___1 == 1) {
    need_waiter(intf);
  } else {
  }
  list_add_rcu(& rcvr->link, & intf->cmd_rcvrs);
  out_unlock:
  mutex_unlock(& intf->cmd_rcvrs_mutex);
  if (rv != 0) {
    kfree((void const *)rcvr);
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_register_for_cmd[22U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'f', 'o',
        'r', '_', 'c', 'm',
        'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_register_for_cmd ;
struct kernel_symbol const __ksymtab_ipmi_register_for_cmd = {(unsigned long )(& ipmi_register_for_cmd), (char const *)(& __kstrtab_ipmi_register_for_cmd)};
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans )
{
  ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  int i ;
  int rv ;
  {
  intf = user->intf;
  rcvrs = (struct cmd_rcvr *)0;
  rv = -2;
  mutex_lock_nested(& intf->cmd_rcvrs_mutex, 0U);
  i = 0;
  goto ldv_32144;
  ldv_32143: ;
  if (((unsigned int )(1 << i) & chans) == 0U) {
    goto ldv_32142;
  } else {
  }
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )((unsigned char )i));
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_32142;
  } else {
  }
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    rv = 0;
    rcvr->chans = rcvr->chans & ~ chans;
    if (rcvr->chans == 0U) {
      list_del_rcu(& rcvr->link);
      rcvr->next = rcvrs;
      rcvrs = rcvr;
    } else {
    }
  } else {
  }
  ldv_32142:
  i = i + 1;
  ldv_32144: ;
  if (i <= 15) {
    goto ldv_32143;
  } else {
  }
  mutex_unlock(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  goto ldv_32147;
  ldv_32146:
  atomic_dec(& intf->event_waiters);
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  ldv_32147: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_32146;
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_unregister_for_cmd[24U] =
  { 'i', 'p', 'm', 'i',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'f', 'o', 'r', '_',
        'c', 'm', 'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_unregister_for_cmd ;
struct kernel_symbol const __ksymtab_ipmi_unregister_for_cmd = {(unsigned long )(& ipmi_unregister_for_cmd), (char const *)(& __kstrtab_ipmi_unregister_for_cmd)};
static unsigned char ipmb_checksum(unsigned char *data , int size )
{
  unsigned char csum ;
  {
  csum = 0U;
  goto ldv_32165;
  ldv_32164:
  csum = (int )*data + (int )csum;
  size = size - 1;
  data = data + 1;
  ldv_32165: ;
  if (size > 0) {
    goto ldv_32164;
  } else {
  }
  return (- ((int )csum));
}
}
__inline static void format_ipmb_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                     struct ipmi_ipmb_addr *ipmb_addr , long msgid ,
                                     unsigned char ipmb_seq , int broadcast , unsigned char source_address ,
                                     unsigned char source_lun )
{
  int i ;
  {
  i = broadcast;
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )ipmb_addr->channel;
  if (broadcast != 0) {
    smi_msg->data[3] = 0U;
  } else {
  }
  smi_msg->data[i + 3] = ipmb_addr->slave_addr;
  smi_msg->data[i + 4] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )ipmb_addr->lun) & 3));
  smi_msg->data[i + 5] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 3UL),
                                       2);
  smi_msg->data[i + 6] = source_address;
  smi_msg->data[i + 7] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[i + 8] = msg->cmd;
  if ((unsigned int )msg->data_len != 0U) {
    memcpy((void *)(& smi_msg->data) + ((unsigned long )i + 9UL), (void const *)msg->data,
             (size_t )msg->data_len);
  } else {
  }
  smi_msg->data_size = (int )msg->data_len + 9;
  smi_msg->data[smi_msg->data_size + i] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 6UL),
                                                        smi_msg->data_size + -6);
  smi_msg->data_size = smi_msg->data_size + (i + 1);
  smi_msg->msgid = msgid;
  return;
}
}
__inline static void format_lan_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                    struct ipmi_lan_addr *lan_addr , long msgid ,
                                    unsigned char ipmb_seq , unsigned char source_lun )
{
  {
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )lan_addr->channel;
  smi_msg->data[3] = lan_addr->session_handle;
  smi_msg->data[4] = lan_addr->remote_SWID;
  smi_msg->data[5] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )lan_addr->lun) & 3));
  smi_msg->data[6] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 4UL, 2);
  smi_msg->data[7] = lan_addr->local_SWID;
  smi_msg->data[8] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[9] = msg->cmd;
  if ((unsigned int )msg->data_len != 0U) {
    memcpy((void *)(& smi_msg->data) + 10U, (void const *)msg->data, (size_t )msg->data_len);
  } else {
  }
  smi_msg->data_size = (int )msg->data_len + 10;
  smi_msg->data[smi_msg->data_size] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 7UL,
                                                    smi_msg->data_size + -7);
  smi_msg->data_size = smi_msg->data_size + 1;
  smi_msg->msgid = msgid;
  return;
}
}
static struct ipmi_smi_msg *smi_add_send_msg(ipmi_smi_t intf , struct ipmi_smi_msg *smi_msg ,
                                             int priority )
{
  {
  if ((unsigned long )intf->curr_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    if (priority > 0) {
      list_add_tail(& smi_msg->link, & intf->hp_xmit_msgs);
    } else {
      list_add_tail(& smi_msg->link, & intf->xmit_msgs);
    }
    smi_msg = (struct ipmi_smi_msg *)0;
  } else {
    intf->curr_msg = smi_msg;
  }
  return (smi_msg);
}
}
static void smi_send(ipmi_smi_t intf , struct ipmi_smi_handlers *handlers , struct ipmi_smi_msg *smi_msg ,
                     int priority )
{
  int run_to_completion ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  run_to_completion = intf->run_to_completion;
  if (run_to_completion != 0) {
    smi_msg = smi_add_send_msg(intf, smi_msg, priority);
  } else {
    tmp = spinlock_check(& intf->xmit_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp);
    smi_msg = smi_add_send_msg(intf, smi_msg, priority);
    spin_unlock_irqrestore(& intf->xmit_msgs_lock, flags);
  }
  if ((unsigned long )smi_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    (*(handlers->sender))(intf->send_info, smi_msg);
  } else {
  }
  return;
}
}
static int i_ipmi_request(ipmi_user_t user , ipmi_smi_t intf , struct ipmi_addr *addr ,
                          long msgid , struct kernel_ipmi_msg *msg , void *user_msg_data ,
                          void *supplied_smi , struct ipmi_recv_msg *supplied_recv ,
                          int priority , unsigned char source_address , unsigned char source_lun ,
                          int retries , unsigned int retry_time_ms )
{
  int rv ;
  struct ipmi_smi_msg *smi_msg ;
  struct ipmi_recv_msg *recv_msg ;
  unsigned long flags ;
  struct ipmi_system_interface_addr *smi_addr ;
  raw_spinlock_t *tmp ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  unsigned char ipmb_seq ;
  long seqid ;
  int broadcast ;
  raw_spinlock_t *tmp___0 ;
  struct ipmi_lan_addr *lan_addr ;
  unsigned char ipmb_seq___0 ;
  long seqid___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  rv = 0;
  if ((unsigned long )supplied_recv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    recv_msg = supplied_recv;
  } else {
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      return (-12);
    } else {
    }
  }
  recv_msg->user_msg_data = user_msg_data;
  if ((unsigned long )supplied_smi != (unsigned long )((void *)0)) {
    smi_msg = (struct ipmi_smi_msg *)supplied_smi;
  } else {
    smi_msg = ipmi_alloc_smi_msg();
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      ipmi_free_recv_msg(recv_msg);
      return (-12);
    } else {
    }
  }
  rcu_read_lock();
  if ((int )intf->in_shutdown) {
    rv = -19;
    goto out_err;
  } else {
  }
  recv_msg->user = user;
  if ((unsigned long )user != (unsigned long )((ipmi_user_t )0)) {
    kref_get(& user->refcount);
  } else {
  }
  recv_msg->msgid = msgid;
  recv_msg->msg = *msg;
  if (addr->addr_type == 12) {
    if ((int )msg->netfn & 1) {
      rv = -22;
      goto out_err;
    } else {
    }
    smi_addr = (struct ipmi_system_interface_addr *)addr;
    if ((unsigned int )smi_addr->lun > 3U) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      goto out_err;
    } else {
    }
    memcpy((void *)(& recv_msg->addr), (void const *)smi_addr, 8UL);
    if ((unsigned int )msg->netfn == 6U && (((unsigned int )msg->cmd == 52U || (unsigned int )msg->cmd == 51U) || (unsigned int )msg->cmd == 53U)) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      goto out_err;
    } else {
    }
    if (((unsigned int )msg->netfn == 6U && ((unsigned int )msg->cmd == 2U || (unsigned int )msg->cmd == 3U)) || (unsigned int )msg->netfn == 8U) {
      tmp = spinlock_check(& intf->maintenance_mode_lock);
      flags = _raw_spin_lock_irqsave(tmp);
      intf->auto_maintenance_timeout = 30000;
      if (intf->maintenance_mode == 0 && ! intf->maintenance_mode_enable) {
        intf->maintenance_mode_enable = 1;
        maintenance_mode_update(intf);
      } else {
      }
      spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
    } else {
    }
    if ((int )msg->data_len + 2 > 272) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -90;
      goto out_err;
    } else {
    }
    smi_msg->data[0] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )smi_addr->lun) & 3));
    smi_msg->data[1] = msg->cmd;
    smi_msg->msgid = msgid;
    smi_msg->user_data = (void *)recv_msg;
    if ((unsigned int )msg->data_len != 0U) {
      memcpy((void *)(& smi_msg->data) + 2U, (void const *)msg->data, (size_t )msg->data_len);
    } else {
    }
    smi_msg->data_size = (int )msg->data_len + 2;
    atomic_inc((atomic_t *)(& intf->stats) + 1UL);
  } else {
    tmp___3 = is_ipmb_addr(addr);
    if (tmp___3 != 0) {
      goto _L;
    } else {
      tmp___4 = is_ipmb_bcast_addr(addr);
      if (tmp___4 != 0) {
        _L:
        broadcast = 0;
        if ((int )addr->channel > 15) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        if ((unsigned int )intf->channels[(int )addr->channel].medium != 1U) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        if (retries < 0) {
          if (addr->addr_type == 65) {
            retries = 0;
          } else {
            retries = 4;
          }
        } else {
        }
        if (addr->addr_type == 65) {
          addr->addr_type = 1;
          broadcast = 1;
        } else {
        }
        if (retry_time_ms == 0U) {
          retry_time_ms = 1000U;
        } else {
        }
        if (((int )msg->data_len + 10) + broadcast > 272) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -90;
          goto out_err;
        } else {
        }
        ipmb_addr = (struct ipmi_ipmb_addr *)addr;
        if ((unsigned int )ipmb_addr->lun > 3U) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        memcpy((void *)(& recv_msg->addr), (void const *)ipmb_addr, 8UL);
        if ((int )recv_msg->msg.netfn & 1) {
          atomic_inc((atomic_t *)(& intf->stats) + 9UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, msgid, (int )((unsigned char )msgid),
                          broadcast, (int )source_address, (int )source_lun);
          smi_msg->user_data = (void *)recv_msg;
        } else {
          tmp___0 = spinlock_check(& intf->seq_lock);
          flags = _raw_spin_lock_irqsave(tmp___0);
          rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                             broadcast, & ipmb_seq, & seqid);
          if (rv != 0) {
            spin_unlock_irqrestore(& intf->seq_lock, flags);
            goto out_err;
          } else {
          }
          atomic_inc((atomic_t *)(& intf->stats) + 4UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, (long )((int )ipmb_seq << 26) | (seqid & 67108863L),
                          (int )ipmb_seq, broadcast, (int )source_address, (int )source_lun);
          memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                   (size_t )smi_msg->data_size);
          recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
          recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
          spin_unlock_irqrestore(& intf->seq_lock, flags);
        }
      } else {
        tmp___2 = is_lan_addr(addr);
        if (tmp___2 != 0) {
          if ((int )addr->channel > 15) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          if ((unsigned int )intf->channels[(int )addr->channel].medium != 4U && (unsigned int )intf->channels[(int )addr->channel].medium != 5U) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          retries = 4;
          if (retry_time_ms == 0U) {
            retry_time_ms = 1000U;
          } else {
          }
          if ((int )msg->data_len + 12 > 272) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -90;
            goto out_err;
          } else {
          }
          lan_addr = (struct ipmi_lan_addr *)addr;
          if ((unsigned int )lan_addr->lun > 3U) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          memcpy((void *)(& recv_msg->addr), (void const *)lan_addr, 12UL);
          if ((int )recv_msg->msg.netfn & 1) {
            atomic_inc((atomic_t *)(& intf->stats) + 17UL);
            format_lan_msg(smi_msg, msg, lan_addr, msgid, (int )((unsigned char )msgid),
                           (int )source_lun);
            smi_msg->user_data = (void *)recv_msg;
          } else {
            tmp___1 = spinlock_check(& intf->seq_lock);
            flags = _raw_spin_lock_irqsave(tmp___1);
            rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                               0, & ipmb_seq___0, & seqid___0);
            if (rv != 0) {
              spin_unlock_irqrestore(& intf->seq_lock, flags);
              goto out_err;
            } else {
            }
            atomic_inc((atomic_t *)(& intf->stats) + 13UL);
            format_lan_msg(smi_msg, msg, lan_addr, (long )((int )ipmb_seq___0 << 26) | (seqid___0 & 67108863L),
                           (int )ipmb_seq___0, (int )source_lun);
            memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                     (size_t )smi_msg->data_size);
            recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
            recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
            spin_unlock_irqrestore(& intf->seq_lock, flags);
          }
        } else {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        }
      }
    }
  }
  smi_send(intf, intf->handlers, smi_msg, priority);
  rcu_read_unlock();
  return (0);
  out_err:
  rcu_read_unlock();
  ipmi_free_smi_msg(smi_msg);
  ipmi_free_recv_msg(recv_msg);
  return (rv);
}
}
static int check_addr(ipmi_smi_t intf , struct ipmi_addr *addr , unsigned char *saddr ,
                      unsigned char *lun )
{
  {
  if ((int )addr->channel > 15) {
    return (-22);
  } else {
  }
  *lun = intf->channels[(int )addr->channel].lun;
  *saddr = intf->channels[(int )addr->channel].address;
  return (0);
}
}
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms )
{
  unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  saddr = 0U;
  lun = 0U;
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  rv = check_addr(user->intf, addr, & saddr, & lun);
  if (rv != 0) {
    return (rv);
  } else {
  }
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, (void *)0,
                       (struct ipmi_recv_msg *)0, priority, (int )saddr, (int )lun,
                       retries, retry_time_ms);
  return (tmp);
}
}
static char const __kstrtab_ipmi_request_settime[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'q',
        'u', 'e', 's', 't',
        '_', 's', 'e', 't',
        't', 'i', 'm', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_request_settime ;
struct kernel_symbol const __ksymtab_ipmi_request_settime = {(unsigned long )(& ipmi_request_settime), (char const *)(& __kstrtab_ipmi_request_settime)};
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority )
{
  unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  saddr = 0U;
  lun = 0U;
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  rv = check_addr(user->intf, addr, & saddr, & lun);
  if (rv != 0) {
    return (rv);
  } else {
  }
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, supplied_smi,
                       supplied_recv, priority, (int )saddr, (int )lun, -1, 0U);
  return (tmp);
}
}
static char const __kstrtab_ipmi_request_supply_msgs[25U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'q',
        'u', 'e', 's', 't',
        '_', 's', 'u', 'p',
        'p', 'l', 'y', '_',
        'm', 's', 'g', 's',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_request_supply_msgs ;
struct kernel_symbol const __ksymtab_ipmi_request_supply_msgs = {(unsigned long )(& ipmi_request_supply_msgs), (char const *)(& __kstrtab_ipmi_request_supply_msgs)};
static int smi_ipmb_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
  int i ;
  {
  intf = (ipmi_smi_t )m->private;
  seq_printf(m, "%x", (int )intf->channels[0].address);
  i = 1;
  goto ldv_32306;
  ldv_32305:
  seq_printf(m, " %x", (int )intf->channels[i].address);
  i = i + 1;
  ldv_32306: ;
  if (i <= 15) {
    goto ldv_32305;
  } else {
  }
  seq_putc(m, 10);
  return (0);
}
}
static int smi_ipmb_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_ipmb_proc_show, tmp);
  return (tmp___0);
}
}
static struct file_operations const smi_ipmb_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_ipmb_proc_open, 0,
    & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_version_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
  {
  intf = (ipmi_smi_t )m->private;
  seq_printf(m, "%u.%u\n", (int )(intf->bmc)->id.ipmi_version & 15, (int )(intf->bmc)->id.ipmi_version >> 4);
  return (0);
}
}
static int smi_version_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_version_proc_show, tmp);
  return (tmp___0);
}
}
static struct file_operations const smi_version_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_version_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_stats_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
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
  {
  intf = (ipmi_smi_t )m->private;
  tmp = atomic_read((atomic_t const *)(& intf->stats));
  seq_printf(m, "sent_invalid_commands:       %u\n", (unsigned int )tmp);
  tmp___0 = atomic_read((atomic_t const *)(& intf->stats) + 1U);
  seq_printf(m, "sent_local_commands:         %u\n", (unsigned int )tmp___0);
  tmp___1 = atomic_read((atomic_t const *)(& intf->stats) + 2U);
  seq_printf(m, "handled_local_responses:     %u\n", (unsigned int )tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& intf->stats) + 3U);
  seq_printf(m, "unhandled_local_responses:   %u\n", (unsigned int )tmp___2);
  tmp___3 = atomic_read((atomic_t const *)(& intf->stats) + 4U);
  seq_printf(m, "sent_ipmb_commands:          %u\n", (unsigned int )tmp___3);
  tmp___4 = atomic_read((atomic_t const *)(& intf->stats) + 5U);
  seq_printf(m, "sent_ipmb_command_errs:      %u\n", (unsigned int )tmp___4);
  tmp___5 = atomic_read((atomic_t const *)(& intf->stats) + 6U);
  seq_printf(m, "retransmitted_ipmb_commands: %u\n", (unsigned int )tmp___5);
  tmp___6 = atomic_read((atomic_t const *)(& intf->stats) + 7U);
  seq_printf(m, "timed_out_ipmb_commands:     %u\n", (unsigned int )tmp___6);
  tmp___7 = atomic_read((atomic_t const *)(& intf->stats) + 8U);
  seq_printf(m, "timed_out_ipmb_broadcasts:   %u\n", (unsigned int )tmp___7);
  tmp___8 = atomic_read((atomic_t const *)(& intf->stats) + 9U);
  seq_printf(m, "sent_ipmb_responses:         %u\n", (unsigned int )tmp___8);
  tmp___9 = atomic_read((atomic_t const *)(& intf->stats) + 10U);
  seq_printf(m, "handled_ipmb_responses:      %u\n", (unsigned int )tmp___9);
  tmp___10 = atomic_read((atomic_t const *)(& intf->stats) + 11U);
  seq_printf(m, "invalid_ipmb_responses:      %u\n", (unsigned int )tmp___10);
  tmp___11 = atomic_read((atomic_t const *)(& intf->stats) + 12U);
  seq_printf(m, "unhandled_ipmb_responses:    %u\n", (unsigned int )tmp___11);
  tmp___12 = atomic_read((atomic_t const *)(& intf->stats) + 13U);
  seq_printf(m, "sent_lan_commands:           %u\n", (unsigned int )tmp___12);
  tmp___13 = atomic_read((atomic_t const *)(& intf->stats) + 14U);
  seq_printf(m, "sent_lan_command_errs:       %u\n", (unsigned int )tmp___13);
  tmp___14 = atomic_read((atomic_t const *)(& intf->stats) + 15U);
  seq_printf(m, "retransmitted_lan_commands:  %u\n", (unsigned int )tmp___14);
  tmp___15 = atomic_read((atomic_t const *)(& intf->stats) + 16U);
  seq_printf(m, "timed_out_lan_commands:      %u\n", (unsigned int )tmp___15);
  tmp___16 = atomic_read((atomic_t const *)(& intf->stats) + 17U);
  seq_printf(m, "sent_lan_responses:          %u\n", (unsigned int )tmp___16);
  tmp___17 = atomic_read((atomic_t const *)(& intf->stats) + 18U);
  seq_printf(m, "handled_lan_responses:       %u\n", (unsigned int )tmp___17);
  tmp___18 = atomic_read((atomic_t const *)(& intf->stats) + 19U);
  seq_printf(m, "invalid_lan_responses:       %u\n", (unsigned int )tmp___18);
  tmp___19 = atomic_read((atomic_t const *)(& intf->stats) + 20U);
  seq_printf(m, "unhandled_lan_responses:     %u\n", (unsigned int )tmp___19);
  tmp___20 = atomic_read((atomic_t const *)(& intf->stats) + 21U);
  seq_printf(m, "handled_commands:            %u\n", (unsigned int )tmp___20);
  tmp___21 = atomic_read((atomic_t const *)(& intf->stats) + 22U);
  seq_printf(m, "invalid_commands:            %u\n", (unsigned int )tmp___21);
  tmp___22 = atomic_read((atomic_t const *)(& intf->stats) + 23U);
  seq_printf(m, "unhandled_commands:          %u\n", (unsigned int )tmp___22);
  tmp___23 = atomic_read((atomic_t const *)(& intf->stats) + 24U);
  seq_printf(m, "invalid_events:              %u\n", (unsigned int )tmp___23);
  tmp___24 = atomic_read((atomic_t const *)(& intf->stats) + 25U);
  seq_printf(m, "events:                      %u\n", (unsigned int )tmp___24);
  tmp___25 = atomic_read((atomic_t const *)(& intf->stats) + 27U);
  seq_printf(m, "failed rexmit LAN msgs:      %u\n", (unsigned int )tmp___25);
  tmp___26 = atomic_read((atomic_t const *)(& intf->stats) + 26U);
  seq_printf(m, "failed rexmit IPMB msgs:     %u\n", (unsigned int )tmp___26);
  return (0);
}
}
static int smi_stats_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_stats_proc_show, tmp);
  return (tmp___0);
}
}
static struct file_operations const smi_stats_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_stats_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data )
{
  int rv ;
  struct proc_dir_entry *file ;
  struct ipmi_proc_entry *entry ;
  void *tmp ;
  {
  rv = 0;
  tmp = kmalloc(16UL, 208U);
  entry = (struct ipmi_proc_entry *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct ipmi_proc_entry *)0)) {
    return (-12);
  } else {
  }
  entry->name = kstrdup((char const *)name, 208U);
  if ((unsigned long )entry->name == (unsigned long )((char *)0)) {
    kfree((void const *)entry);
    return (-12);
  } else {
  }
  file = proc_create_data((char const *)name, 0, smi->proc_dir, proc_ops, data);
  if ((unsigned long )file == (unsigned long )((struct proc_dir_entry *)0)) {
    kfree((void const *)entry->name);
    kfree((void const *)entry);
    rv = -12;
  } else {
    mutex_lock_nested(& smi->proc_entry_lock, 0U);
    entry->next = smi->proc_entries;
    smi->proc_entries = entry;
    mutex_unlock(& smi->proc_entry_lock);
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_smi_add_proc_entry[24U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'a', 'd', 'd',
        '_', 'p', 'r', 'o',
        'c', '_', 'e', 'n',
        't', 'r', 'y', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_add_proc_entry ;
struct kernel_symbol const __ksymtab_ipmi_smi_add_proc_entry = {(unsigned long )(& ipmi_smi_add_proc_entry), (char const *)(& __kstrtab_ipmi_smi_add_proc_entry)};
static int add_proc_entries(ipmi_smi_t smi , int num )
{
  int rv ;
  {
  rv = 0;
  sprintf((char *)(& smi->proc_dir_name), "%d", num);
  smi->proc_dir = proc_mkdir((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  if ((unsigned long )smi->proc_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    rv = -12;
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"stats", & smi_stats_proc_ops, (void *)smi);
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"ipmb", & smi_ipmb_proc_ops, (void *)smi);
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"version", & smi_version_proc_ops, (void *)smi);
  } else {
  }
  return (rv);
}
}
static void remove_proc_entries(ipmi_smi_t smi )
{
  struct ipmi_proc_entry *entry ;
  {
  mutex_lock_nested(& smi->proc_entry_lock, 0U);
  goto ldv_32362;
  ldv_32361:
  entry = smi->proc_entries;
  smi->proc_entries = entry->next;
  remove_proc_entry((char const *)entry->name, smi->proc_dir);
  kfree((void const *)entry->name);
  kfree((void const *)entry);
  ldv_32362: ;
  if ((unsigned long )smi->proc_entries != (unsigned long )((struct ipmi_proc_entry *)0)) {
    goto ldv_32361;
  } else {
  }
  mutex_unlock(& smi->proc_entry_lock);
  remove_proc_entry((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  return;
}
}
static int __find_bmc_guid(struct device *dev , void *data )
{
  unsigned char *id ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  id = (unsigned char *)data;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = memcmp((void const *)(& bmc->guid), (void const *)id, 16UL);
  return (tmp == 0);
}
}
static struct bmc_device *ipmi_find_bmc_guid(struct device_driver *drv , unsigned char *guid )
{
  struct device *dev ;
  struct device const *__mptr ;
  {
  dev = driver_find_device(drv, (struct device *)0, (void *)guid, & __find_bmc_guid);
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    __mptr = (struct device const *)dev;
    return ((struct bmc_device *)__mptr + 0xfffffffffffffff0UL);
  } else {
    return ((struct bmc_device *)0);
  }
}
}
static int __find_bmc_prod_dev_id(struct device *dev , void *data )
{
  struct prod_dev_id *id ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  {
  id = (struct prod_dev_id *)data;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  return (bmc->id.product_id == id->product_id && (int )bmc->id.device_id == (int )id->device_id);
}
}
static struct bmc_device *ipmi_find_bmc_prod_dev_id(struct device_driver *drv , unsigned int product_id ,
                                                    unsigned char device_id )
{
  struct prod_dev_id id ;
  struct device *dev ;
  struct device const *__mptr ;
  {
  id.product_id = product_id;
  id.device_id = device_id;
  dev = driver_find_device(drv, (struct device *)0, (void *)(& id), & __find_bmc_prod_dev_id);
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    __mptr = (struct device const *)dev;
    return ((struct bmc_device *)__mptr + 0xfffffffffffffff0UL);
  } else {
    return ((struct bmc_device *)0);
  }
}
}
static ssize_t device_id_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_id);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_device_id = {{"device_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & device_id_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0};
static ssize_t provides_device_sdrs_show(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_revision >> 7);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_provides_device_sdrs = {{"provides_device_sdrs", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & provides_device_sdrs_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t revision_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u\n", (int )bmc->id.device_revision & 15);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_revision = {{"revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & revision_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static ssize_t firmware_revision_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u.%x\n", (int )bmc->id.firmware_revision_1, (int )bmc->id.firmware_revision_2);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_firmware_revision = {{"firmware_revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & firmware_revision_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static ssize_t ipmi_version_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u.%u\n", (int )bmc->id.ipmi_version & 15, (int )bmc->id.ipmi_version >> 4);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_ipmi_version = {{"ipmi_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipmi_version_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                      char const * , size_t ))0};
static ssize_t add_dev_support_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "0x%02x\n", (int )bmc->id.additional_device_support);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_additional_device_support = {{"additional_device_support", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & add_dev_support_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t manufacturer_id_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "0x%6.6x\n", bmc->id.manufacturer_id);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_manufacturer_id = {{"manufacturer_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & manufacturer_id_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char const * , size_t ))0};
static ssize_t product_id_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "0x%4.4x\n", bmc->id.product_id);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_product_id = {{"product_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & product_id_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0};
static ssize_t aux_firmware_rev_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 21UL, "0x%02x 0x%02x 0x%02x 0x%02x\n", (int )bmc->id.aux_firmware_revision[3],
                 (int )bmc->id.aux_firmware_revision[2], (int )bmc->id.aux_firmware_revision[1],
                 (int )bmc->id.aux_firmware_revision[0]);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_aux_firmware_revision = {{"aux_firmware_revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & aux_firmware_rev_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t guid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 100UL, "%Lx%Lx\n", (long long )bmc->guid[0], (long long )bmc->guid[8]);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_guid = {{"guid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & guid_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct attribute *bmc_dev_attrs[11U] =
  { & dev_attr_device_id.attr, & dev_attr_provides_device_sdrs.attr, & dev_attr_revision.attr, & dev_attr_firmware_revision.attr,
        & dev_attr_ipmi_version.attr, & dev_attr_additional_device_support.attr, & dev_attr_manufacturer_id.attr, & dev_attr_product_id.attr,
        & dev_attr_aux_firmware_revision.attr, & dev_attr_guid.attr, (struct attribute *)0};
static umode_t bmc_dev_attr_is_visible(struct kobject *kobj , struct attribute *attr ,
                                       int idx )
{
  struct device *dev ;
  struct device *tmp ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  umode_t mode ;
  {
  tmp = kobj_to_dev(kobj);
  dev = tmp;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  mode = attr->mode;
  if ((unsigned long )attr == (unsigned long )(& dev_attr_aux_firmware_revision.attr)) {
    return ((unsigned int )*((unsigned char *)bmc + 1492UL) != 0U ? mode : 0U);
  } else {
  }
  if ((unsigned long )attr == (unsigned long )(& dev_attr_guid.attr)) {
    return (bmc->guid_set != 0 ? mode : 0U);
  } else {
  }
  return (mode);
}
}
static struct attribute_group bmc_dev_attr_group = {0, & bmc_dev_attr_is_visible, (struct attribute **)(& bmc_dev_attrs), 0};
static struct attribute_group const *bmc_dev_attr_groups[2U] = { (struct attribute_group const *)(& bmc_dev_attr_group), (struct attribute_group const *)0};
static struct device_type bmc_device_type = {0, (struct attribute_group const **)(& bmc_dev_attr_groups), 0, 0, 0, 0};
static void release_bmc_device(struct device *dev )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  kfree((void const *)((struct bmc_device *)__mptr + 0xfffffffffffffff0UL));
  return;
}
}
static void cleanup_bmc_device(struct kref *ref )
{
  struct bmc_device *bmc ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffa04UL;
  platform_device_unregister(& bmc->pdev);
  return;
}
}
static void ipmi_bmc_unregister(ipmi_smi_t intf )
{
  struct bmc_device *bmc ;
  {
  bmc = intf->bmc;
  sysfs_remove_link(& (intf->si_dev)->kobj, "bmc");
  if ((unsigned long )intf->my_dev_name != (unsigned long )((char *)0)) {
    sysfs_remove_link(& bmc->pdev.dev.kobj, (char const *)intf->my_dev_name);
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = (char *)0;
  } else {
  }
  mutex_lock_nested(& ipmidriver_mutex, 0U);
  kref_put(& bmc->usecount, & cleanup_bmc_device);
  intf->bmc = (struct bmc_device *)0;
  mutex_unlock(& ipmidriver_mutex);
  return;
}
}
static int ipmi_bmc_register(ipmi_smi_t intf , int ifnum )
{
  int rv ;
  struct bmc_device *bmc ;
  struct bmc_device *old_bmc ;
  unsigned char orig_dev_id ;
  int warn_printed ;
  struct bmc_device *tmp ;
  {
  bmc = intf->bmc;
  mutex_lock_nested(& ipmidriver_mutex, 0U);
  if (bmc->guid_set != 0) {
    old_bmc = ipmi_find_bmc_guid(& ipmidriver.driver, (unsigned char *)(& bmc->guid));
  } else {
    old_bmc = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
  }
  if ((unsigned long )old_bmc != (unsigned long )((struct bmc_device *)0)) {
    kfree((void const *)bmc);
    intf->bmc = old_bmc;
    bmc = old_bmc;
    kref_get(& bmc->usecount);
    mutex_unlock(& ipmidriver_mutex);
    printk("\016ipmi: interfacing existing BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
           bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
  } else {
    orig_dev_id = bmc->id.device_id;
    warn_printed = 0;
    snprintf((char *)(& bmc->name), 16UL, "ipmi_bmc.%4.4x", bmc->id.product_id);
    bmc->pdev.name = (char const *)(& bmc->name);
    goto ldv_32649;
    ldv_32648: ;
    if (warn_printed == 0) {
      printk("\fIPMI message handler: This machine has two different BMCs with the same product id and device id.  This is an error in the firmware, but incrementing the device id to work around the problem. Prod ID = 0x%x, Dev ID = 0x%x\n",
             bmc->id.product_id, (int )bmc->id.device_id);
      warn_printed = 1;
    } else {
    }
    bmc->id.device_id = (unsigned char )((int )bmc->id.device_id + 1);
    if ((int )bmc->id.device_id == (int )orig_dev_id) {
      printk("\vIPMI message handler: Out of device ids!\n");
      goto ldv_32647;
    } else {
    }
    ldv_32649:
    tmp = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
    if ((unsigned long )tmp != (unsigned long )((struct bmc_device *)0)) {
      goto ldv_32648;
    } else {
    }
    ldv_32647:
    bmc->pdev.dev.driver = & ipmidriver.driver;
    bmc->pdev.id = (int )bmc->id.device_id;
    bmc->pdev.dev.release = & release_bmc_device;
    bmc->pdev.dev.type = (struct device_type const *)(& bmc_device_type);
    kref_init(& bmc->usecount);
    rv = platform_device_register(& bmc->pdev);
    mutex_unlock(& ipmidriver_mutex);
    if (rv != 0) {
      put_device(& bmc->pdev.dev);
      printk("\vipmi_msghandler: Unable to register bmc device: %d\n", rv);
      return (rv);
    } else {
    }
    _dev_info((struct device const *)intf->si_dev, "Found new BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
              bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
  }
  rv = sysfs_create_link(& (intf->si_dev)->kobj, & bmc->pdev.dev.kobj, "bmc");
  if (rv != 0) {
    printk("\vipmi_msghandler: Unable to create bmc symlink: %d\n", rv);
    goto out_err;
  } else {
  }
  intf->my_dev_name = kasprintf(208U, "ipmi%d", ifnum);
  if ((unsigned long )intf->my_dev_name == (unsigned long )((char *)0)) {
    rv = -12;
    printk("\vipmi_msghandler: allocate link from BMC: %d\n", rv);
    goto out_err;
  } else {
  }
  rv = sysfs_create_link(& bmc->pdev.dev.kobj, & (intf->si_dev)->kobj, (char const *)intf->my_dev_name);
  if (rv != 0) {
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = (char *)0;
    printk("\vipmi_msghandler: Unable to create symlink to bmc: %d\n", rv);
    goto out_err;
  } else {
  }
  return (0);
  out_err:
  ipmi_bmc_unregister(intf);
  return (rv);
}
}
static int send_guid_cmd(ipmi_smi_t intf , int chan )
{
  struct kernel_ipmi_msg msg ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 8U;
  msg.data = (unsigned char *)0U;
  msg.data_len = 0U;
  tmp = i_ipmi_request((ipmi_user_t )0, intf, (struct ipmi_addr *)(& si), 0L, & msg,
                       (void *)intf, (void *)0, (struct ipmi_recv_msg *)0, 0, (int )intf->channels[0].address,
                       (int )intf->channels[0].lun, -1, 0U);
  return (tmp);
}
}
static void guid_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if ((msg->addr.addr_type != 12 || (unsigned int )msg->msg.netfn != 7U) || (unsigned int )msg->msg.cmd != 8U) {
    return;
  } else {
  }
  if ((unsigned int )*(msg->msg.data) != 0U) {
    (intf->bmc)->guid_set = 0;
    goto out;
  } else {
  }
  if ((unsigned int )msg->msg.data_len <= 16U) {
    (intf->bmc)->guid_set = 0;
    printk("\fIPMI message handler: guid_handler: The GUID response from the BMC was too short, it was %d but should have been 17.  Assuming GUID is not available.\n",
           (int )msg->msg.data_len);
    goto out;
  } else {
  }
  memcpy((void *)(& (intf->bmc)->guid), (void const *)msg->msg.data, 16UL);
  (intf->bmc)->guid_set = 1;
  out:
  __wake_up(& intf->waitq, 3U, 1, (void *)0);
  return;
}
}
static void get_guid(ipmi_smi_t intf )
{
  int rv ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  (intf->bmc)->guid_set = 2;
  intf->null_user_handler = & guid_handler;
  rv = send_guid_cmd(intf, 0);
  if (rv != 0) {
    (intf->bmc)->guid_set = 0;
  } else {
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9508/dscv_tempdir/dscv/ri/08_1a/drivers/char/ipmi/ipmi_msghandler.c",
                2642, 0);
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_32666;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_32672:
  tmp = prepare_to_wait_event(& intf->waitq, & __wait, 2);
  __int = tmp;
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_32671;
  } else {
  }
  schedule();
  goto ldv_32672;
  ldv_32671:
  finish_wait(& intf->waitq, & __wait);
  ldv_32666:
  intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  return;
}
}
static int send_channel_info_cmd(ipmi_smi_t intf , int chan )
{
  struct kernel_ipmi_msg msg ;
  unsigned char data[1U] ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 66U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 1U;
  data[0] = (unsigned char )chan;
  tmp = i_ipmi_request((ipmi_user_t )0, intf, (struct ipmi_addr *)(& si), 0L, & msg,
                       (void *)intf, (void *)0, (struct ipmi_recv_msg *)0, 0, (int )intf->channels[0].address,
                       (int )intf->channels[0].lun, -1, 0U);
  return (tmp);
}
}
static void channel_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  int rv ;
  int chan ;
  {
  rv = 0;
  if ((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 7U) && (unsigned int )msg->msg.cmd == 66U) {
    if ((unsigned int )*(msg->msg.data) != 0U) {
      if ((unsigned int )*(msg->msg.data) == 193U) {
        intf->channels[0].medium = 1U;
        intf->channels[0].protocol = 1U;
        intf->curr_channel = 16;
        __wake_up(& intf->waitq, 3U, 1, (void *)0);
        goto out;
      } else {
      }
      goto next_channel;
    } else {
    }
    if ((unsigned int )msg->msg.data_len <= 3U) {
      goto next_channel;
    } else {
    }
    chan = intf->curr_channel;
    intf->channels[chan].medium = (unsigned int )*(msg->msg.data + 2UL) & 127U;
    intf->channels[chan].protocol = (unsigned int )*(msg->msg.data + 3UL) & 31U;
    next_channel:
    intf->curr_channel = intf->curr_channel + 1;
    if (intf->curr_channel > 15) {
      __wake_up(& intf->waitq, 3U, 1, (void *)0);
    } else {
      rv = send_channel_info_cmd(intf, intf->curr_channel);
    }
    if (rv != 0) {
      printk("\fIPMI message handler: Error sending channel information for channel %d: %d\n",
             intf->curr_channel, rv);
      intf->curr_channel = 16;
      __wake_up(& intf->waitq, 3U, 1, (void *)0);
    } else {
    }
  } else {
  }
  out: ;
  return;
}
}
static void ipmi_poll(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->poll != (unsigned long )((void (*)(void * ))0)) {
    (*((intf->handlers)->poll))(intf->send_info);
  } else {
  }
  handle_new_recv_msgs(intf);
  return;
}
}
void ipmi_poll_interface(ipmi_user_t user )
{
  {
  ipmi_poll(user->intf);
  return;
}
}
static char const __kstrtab_ipmi_poll_interface[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'p', 'o', 'l',
        'l', '_', 'i', 'n',
        't', 'e', 'r', 'f',
        'a', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_poll_interface ;
struct kernel_symbol const __ksymtab_ipmi_poll_interface = {(unsigned long )(& ipmi_poll_interface), (char const *)(& __kstrtab_ipmi_poll_interface)};
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , unsigned char slave_addr )
{
  int i ;
  int j ;
  int rv ;
  ipmi_smi_t intf ;
  ipmi_smi_t tintf ;
  struct list_head *link ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_285 __u ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_287 __u___0 ;
  int tmp___2 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___3 ;
  {
  if (initialized == 0) {
    rv = ipmi_init_msghandler();
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  tmp = kzalloc(4344UL, 208U);
  intf = (ipmi_smi_t )tmp;
  if ((unsigned long )intf == (unsigned long )((ipmi_smi_t )0)) {
    return (-12);
  } else {
  }
  intf->ipmi_version_major = (unsigned int )device_id->ipmi_version & 15U;
  intf->ipmi_version_minor = (int )device_id->ipmi_version >> 4;
  tmp___0 = kzalloc(1536UL, 208U);
  intf->bmc = (struct bmc_device *)tmp___0;
  if ((unsigned long )intf->bmc == (unsigned long )((struct bmc_device *)0)) {
    kfree((void const *)intf);
    return (-12);
  } else {
  }
  intf->intf_num = -1;
  kref_init(& intf->refcount);
  (intf->bmc)->id = *device_id;
  intf->si_dev = si_dev;
  j = 0;
  goto ldv_32716;
  ldv_32715:
  intf->channels[j].address = 32U;
  intf->channels[j].lun = 2U;
  j = j + 1;
  ldv_32716: ;
  if (j <= 15) {
    goto ldv_32715;
  } else {
  }
  if ((unsigned int )slave_addr != 0U) {
    intf->channels[0].address = slave_addr;
  } else {
  }
  INIT_LIST_HEAD(& intf->users);
  intf->handlers = handlers;
  intf->send_info = send_info;
  spinlock_check(& intf->seq_lock);
  __raw_spin_lock_init(& intf->seq_lock.__annonCompField18.rlock, "&(&intf->seq_lock)->rlock",
                       & __key);
  j = 0;
  goto ldv_32720;
  ldv_32719:
  intf->seq_table[j].inuse = 0U;
  intf->seq_table[j].seqid = 0L;
  j = j + 1;
  ldv_32720: ;
  if (j <= 63) {
    goto ldv_32719;
  } else {
  }
  intf->curr_seq = 0;
  __mutex_init(& intf->proc_entry_lock, "&intf->proc_entry_lock", & __key___0);
  spinlock_check(& intf->waiting_rcv_msgs_lock);
  __raw_spin_lock_init(& intf->waiting_rcv_msgs_lock.__annonCompField18.rlock, "&(&intf->waiting_rcv_msgs_lock)->rlock",
                       & __key___1);
  INIT_LIST_HEAD(& intf->waiting_rcv_msgs);
  tasklet_init(& intf->recv_tasklet, & smi_recv_tasklet, (unsigned long )intf);
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 0);
  spinlock_check(& intf->xmit_msgs_lock);
  __raw_spin_lock_init(& intf->xmit_msgs_lock.__annonCompField18.rlock, "&(&intf->xmit_msgs_lock)->rlock",
                       & __key___2);
  INIT_LIST_HEAD(& intf->xmit_msgs);
  INIT_LIST_HEAD(& intf->hp_xmit_msgs);
  spinlock_check(& intf->events_lock);
  __raw_spin_lock_init(& intf->events_lock.__annonCompField18.rlock, "&(&intf->events_lock)->rlock",
                       & __key___3);
  atomic_set(& intf->event_waiters, 0);
  intf->ticks_to_req_ev = 1U;
  INIT_LIST_HEAD(& intf->waiting_events);
  intf->waiting_events_count = 0U;
  __mutex_init(& intf->cmd_rcvrs_mutex, "&intf->cmd_rcvrs_mutex", & __key___4);
  spinlock_check(& intf->maintenance_mode_lock);
  __raw_spin_lock_init(& intf->maintenance_mode_lock.__annonCompField18.rlock, "&(&intf->maintenance_mode_lock)->rlock",
                       & __key___5);
  INIT_LIST_HEAD(& intf->cmd_rcvrs);
  __init_waitqueue_head(& intf->waitq, "&intf->waitq", & __key___6);
  i = 0;
  goto ldv_32730;
  ldv_32729:
  atomic_set((atomic_t *)(& intf->stats) + (unsigned long )i, 0);
  i = i + 1;
  ldv_32730: ;
  if (i <= 27) {
    goto ldv_32729;
  } else {
  }
  intf->proc_dir = (struct proc_dir_entry *)0;
  mutex_lock_nested(& smi_watchers_mutex, 0U);
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  i = 0;
  link = & ipmi_interfaces;
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  tintf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_32762;
  ldv_32761: ;
  if (tintf->intf_num != i) {
    link = & tintf->link;
    goto ldv_32760;
  } else {
  }
  i = i + 1;
  __ptr___0 = tintf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  tintf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_32762: ;
  if ((unsigned long )(& tintf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_32761;
  } else {
  }
  ldv_32760: ;
  if (i == 0) {
    list_add_rcu(& intf->link, & ipmi_interfaces);
  } else {
    list_add_tail_rcu(& intf->link, link);
  }
  rv = (*(handlers->start_processing))(send_info, intf);
  if (rv != 0) {
    goto out;
  } else {
  }
  get_guid(intf);
  if ((unsigned int )intf->ipmi_version_major > 1U || ((unsigned int )intf->ipmi_version_major == 1U && (unsigned int )intf->ipmi_version_minor > 4U)) {
    intf->null_user_handler = & channel_handler;
    intf->curr_channel = 0;
    rv = send_channel_info_cmd(intf, 0);
    if (rv != 0) {
      printk("\fIPMI message handler: Error sending channel information for channel 0, %d\n",
             rv);
      goto out;
    } else {
    }
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9508/dscv_tempdir/dscv/ri/08_1a/drivers/char/ipmi/ipmi_msghandler.c",
                  2878, 0);
    if (intf->curr_channel > 15) {
      goto ldv_32764;
    } else {
    }
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_32770:
    tmp___3 = prepare_to_wait_event(& intf->waitq, & __wait, 2);
    __int = tmp___3;
    if (intf->curr_channel > 15) {
      goto ldv_32769;
    } else {
    }
    schedule();
    goto ldv_32770;
    ldv_32769:
    finish_wait(& intf->waitq, & __wait);
    ldv_32764:
    intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  } else {
    intf->channels[0].medium = 1U;
    intf->channels[0].protocol = 1U;
    intf->curr_channel = 16;
  }
  if (rv == 0) {
    rv = add_proc_entries(intf, i);
  } else {
  }
  rv = ipmi_bmc_register(intf, i);
  out: ;
  if (rv != 0) {
    if ((unsigned long )intf->proc_dir != (unsigned long )((struct proc_dir_entry *)0)) {
      remove_proc_entries(intf);
    } else {
    }
    intf->handlers = (struct ipmi_smi_handlers *)0;
    list_del_rcu(& intf->link);
    mutex_unlock(& ipmi_interfaces_mutex);
    mutex_unlock(& smi_watchers_mutex);
    synchronize_rcu();
    kref_put(& intf->refcount, & intf_free);
  } else {
    __asm__ volatile ("": : : "memory");
    intf->intf_num = i;
    mutex_unlock(& ipmi_interfaces_mutex);
    call_smi_watchers(i, intf->si_dev);
    mutex_unlock(& smi_watchers_mutex);
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_register_smi[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 's', 'm',
        'i', '\000'};
struct kernel_symbol const __ksymtab_ipmi_register_smi ;
struct kernel_symbol const __ksymtab_ipmi_register_smi = {(unsigned long )(& ipmi_register_smi), (char const *)(& __kstrtab_ipmi_register_smi)};
static void deliver_smi_err_response(ipmi_smi_t intf , struct ipmi_smi_msg *msg ,
                                     unsigned char err )
{
  {
  msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
  msg->rsp[1] = msg->data[1];
  msg->rsp[2] = err;
  msg->rsp_size = 3;
  handle_one_recv_msg(intf, msg);
  return;
}
}
static void cleanup_smi_msgs(ipmi_smi_t intf )
{
  int i ;
  struct seq_table *ent ;
  struct ipmi_smi_msg *msg ;
  struct list_head *entry ;
  struct list_head tmplist ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  INIT_LIST_HEAD(& tmplist);
  list_splice_tail(& intf->hp_xmit_msgs, & tmplist);
  list_splice_tail(& intf->xmit_msgs, & tmplist);
  goto ldv_32797;
  ldv_32796:
  schedule_timeout(1L);
  ldv_32797: ;
  if ((unsigned long )intf->curr_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    tmp = list_empty((struct list_head const *)(& intf->waiting_rcv_msgs));
    if (tmp == 0) {
      goto ldv_32796;
    } else {
      goto ldv_32798;
    }
  } else {
  }
  ldv_32798: ;
  goto ldv_32802;
  ldv_32801:
  entry = tmplist.next;
  list_del(entry);
  __mptr = (struct list_head const *)entry;
  msg = (struct ipmi_smi_msg *)__mptr;
  deliver_smi_err_response(intf, msg, 255);
  ldv_32802:
  tmp___0 = list_empty((struct list_head const *)(& tmplist));
  if (tmp___0 == 0) {
    goto ldv_32801;
  } else {
  }
  i = 0;
  goto ldv_32806;
  ldv_32805:
  ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    goto ldv_32804;
  } else {
  }
  deliver_err_response(ent->recv_msg, 255);
  ldv_32804:
  i = i + 1;
  ldv_32806: ;
  if (i <= 63) {
    goto ldv_32805;
  } else {
  }
  return;
}
}
int ipmi_unregister_smi(ipmi_smi_t intf )
{
  struct ipmi_smi_watcher *w ;
  int intf_num ;
  ipmi_user_t user ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_289 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_291 __u___0 ;
  int tmp___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  intf_num = intf->intf_num;
  ipmi_bmc_unregister(intf);
  mutex_lock_nested(& smi_watchers_mutex, 0U);
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  intf->intf_num = -1;
  intf->in_shutdown = 1;
  list_del_rcu(& intf->link);
  mutex_unlock(& ipmi_interfaces_mutex);
  synchronize_rcu();
  cleanup_smi_msgs(intf);
  mutex_lock_nested(& ipmi_interfaces_mutex, 0U);
  rcu_read_lock();
  __ptr = intf->users.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  user = (struct ipmi_user *)__mptr;
  goto ldv_32843;
  ldv_32842:
  ldv_module_put_10((intf->handlers)->owner);
  if ((unsigned long )(intf->handlers)->dec_usecount != (unsigned long )((void (*)(void * ))0)) {
    (*((intf->handlers)->dec_usecount))(intf->send_info);
  } else {
  }
  __ptr___0 = user->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  user = (struct ipmi_user *)__mptr___0;
  ldv_32843: ;
  if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
    goto ldv_32842;
  } else {
  }
  rcu_read_unlock();
  intf->handlers = (struct ipmi_smi_handlers *)0;
  mutex_unlock(& ipmi_interfaces_mutex);
  remove_proc_entries(intf);
  __mptr___1 = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr___1;
  goto ldv_32850;
  ldv_32849:
  (*(w->smi_gone))(intf_num);
  __mptr___2 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___2;
  ldv_32850: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_32849;
  } else {
  }
  mutex_unlock(& smi_watchers_mutex);
  kref_put(& intf->refcount, & intf_free);
  return (0);
}
}
static char const __kstrtab_ipmi_unregister_smi[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        's', 'm', 'i', '\000'};
struct kernel_symbol const __ksymtab_ipmi_unregister_smi ;
struct kernel_symbol const __ksymtab_ipmi_unregister_smi = {(unsigned long )(& ipmi_unregister_smi), (char const *)(& __kstrtab_ipmi_unregister_smi)};
static int handle_ipmb_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_ipmb_addr ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  {
  if (msg->rsp_size <= 10) {
    atomic_inc((atomic_t *)(& intf->stats) + 11UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  ipmb_addr.addr_type = 1;
  ipmb_addr.slave_addr = msg->rsp[6];
  ipmb_addr.channel = (int )((short )msg->rsp[3]) & 15;
  ipmb_addr.lun = (unsigned int )msg->rsp[7] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[7] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[8],
                      ((int )msg->rsp[4] >> 2) & 254, (struct ipmi_addr *)(& ipmb_addr),
                      & recv_msg);
  if (tmp != 0) {
    atomic_inc((atomic_t *)(& intf->stats) + 12UL);
    return (0);
  } else {
  }
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U, (size_t )(msg->rsp_size + -9));
  recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 10UL);
  deliver_response(recv_msg);
  return (0);
}
}
static int handle_ipmb_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 9) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[4] >> 2;
  cmd = msg->rsp[8];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = (ipmi_user_t )0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    msg->data[0] = 24U;
    msg->data[1] = 52U;
    msg->data[2] = msg->rsp[3];
    msg->data[3] = msg->rsp[6];
    msg->data[4] = (unsigned char )((int )((signed char )(((int )netfn + 1) << 2)) | ((int )((signed char )msg->rsp[7]) & 3));
    msg->data[5] = ipmb_checksum((unsigned char *)(& msg->data) + 3UL, 2);
    msg->data[6] = intf->channels[(int )msg->rsp[3] & 15].address;
    msg->data[7] = (unsigned char )(((int )((signed char )msg->rsp[7]) & -4) | ((int )((signed char )msg->rsp[4]) & 3));
    msg->data[8] = msg->rsp[8];
    msg->data[9] = 193U;
    msg->data[10] = ipmb_checksum((unsigned char *)(& msg->data) + 6UL, 4);
    msg->data_size = 11;
    rcu_read_lock();
    if (! intf->in_shutdown) {
      smi_send(intf, intf->handlers, msg, 0);
      rv = -1;
    } else {
    }
    rcu_read_unlock();
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      ipmb_addr = (struct ipmi_ipmb_addr *)(& recv_msg->addr);
      ipmb_addr->addr_type = 1;
      ipmb_addr->slave_addr = msg->rsp[6];
      ipmb_addr->lun = (unsigned int )msg->rsp[7] & 3U;
      ipmb_addr->channel = (int )((short )msg->rsp[3]) & 15;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[7] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
      recv_msg->msg.cmd = msg->rsp[8];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U,
               (size_t )(msg->rsp_size + -10));
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static int handle_lan_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_lan_addr lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  {
  if (msg->rsp_size <= 12) {
    atomic_inc((atomic_t *)(& intf->stats) + 19UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  lan_addr.addr_type = 4;
  lan_addr.session_handle = msg->rsp[4];
  lan_addr.remote_SWID = msg->rsp[8];
  lan_addr.local_SWID = msg->rsp[5];
  lan_addr.channel = (int )((short )msg->rsp[3]) & 15;
  lan_addr.privilege = (int )msg->rsp[3] >> 4;
  lan_addr.lun = (unsigned int )msg->rsp[9] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[9] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[10],
                      ((int )msg->rsp[6] >> 2) & 254, (struct ipmi_addr *)(& lan_addr),
                      & recv_msg);
  if (tmp != 0) {
    atomic_inc((atomic_t *)(& intf->stats) + 20UL);
    return (0);
  } else {
  }
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U, (size_t )(msg->rsp_size + -11));
  recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 18UL);
  deliver_response(recv_msg);
  return (0);
}
}
static int handle_lan_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_lan_addr *lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 11) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[6] >> 2;
  cmd = msg->rsp[10];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = (ipmi_user_t )0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      lan_addr = (struct ipmi_lan_addr *)(& recv_msg->addr);
      lan_addr->addr_type = 4;
      lan_addr->session_handle = msg->rsp[4];
      lan_addr->remote_SWID = msg->rsp[8];
      lan_addr->local_SWID = msg->rsp[5];
      lan_addr->lun = (unsigned int )msg->rsp[9] & 3U;
      lan_addr->channel = (int )((short )msg->rsp[3]) & 15;
      lan_addr->privilege = (int )msg->rsp[3] >> 4;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[9] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
      recv_msg->msg.cmd = msg->rsp[10];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U,
               (size_t )(msg->rsp_size + -12));
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static int handle_oem_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_system_interface_addr *smi_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 3) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[0] >> 2;
  cmd = msg->rsp[1];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = (ipmi_user_t )0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
      smi_addr->addr_type = 12;
      smi_addr->channel = 15;
      smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
      recv_msg->user = user;
      recv_msg->user_msg_data = (void *)0;
      recv_msg->recv_type = 5;
      recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
      recv_msg->msg.cmd = msg->rsp[1];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65532U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 4U,
               (size_t )(msg->rsp_size + -4));
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static void copy_event_into_recv_msg(struct ipmi_recv_msg *recv_msg , struct ipmi_smi_msg *msg )
{
  struct ipmi_system_interface_addr *smi_addr ;
  {
  recv_msg->msgid = 0L;
  smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
  smi_addr->addr_type = 12;
  smi_addr->channel = 15;
  smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
  recv_msg->recv_type = 2;
  recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
  recv_msg->msg.cmd = msg->rsp[1];
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 3U, (size_t )(msg->rsp_size + -3));
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65533U;
  return;
}
}
static int handle_read_event_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_recv_msg *recv_msg ;
  struct ipmi_recv_msg *recv_msg2 ;
  struct list_head msgs ;
  ipmi_user_t user ;
  int rv ;
  int deliver_count ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_293 __u ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___3 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_295 __u___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  rv = 0;
  deliver_count = 0;
  if (msg->rsp_size <= 18) {
    atomic_inc((atomic_t *)(& intf->stats) + 24UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  INIT_LIST_HEAD(& msgs);
  tmp = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  atomic_inc((atomic_t *)(& intf->stats) + 25UL);
  rcu_read_lock();
  __ptr = intf->users.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  user = (struct ipmi_user *)__mptr;
  goto ldv_32966;
  ldv_32965: ;
  if (! user->gets_events) {
    goto ldv_32954;
  } else {
  }
  recv_msg = ipmi_alloc_recv_msg();
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    rcu_read_unlock();
    __mptr___0 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___0;
    __mptr___1 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___1;
    goto ldv_32962;
    ldv_32961:
    list_del(& recv_msg->link);
    ipmi_free_recv_msg(recv_msg);
    recv_msg = recv_msg2;
    __mptr___2 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___2;
    ldv_32962: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_32961;
    } else {
    }
    rv = 1;
    goto out;
  } else {
  }
  deliver_count = deliver_count + 1;
  copy_event_into_recv_msg(recv_msg, msg);
  recv_msg->user = user;
  kref_get(& user->refcount);
  list_add_tail(& recv_msg->link, & msgs);
  ldv_32954:
  __ptr___0 = user->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___3 = (struct list_head const *)________p1___0;
  user = (struct ipmi_user *)__mptr___3;
  ldv_32966: ;
  if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
    goto ldv_32965;
  } else {
  }
  rcu_read_unlock();
  if (deliver_count != 0) {
    __mptr___4 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___4;
    __mptr___5 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___5;
    goto ldv_32975;
    ldv_32974:
    list_del(& recv_msg->link);
    deliver_response(recv_msg);
    recv_msg = recv_msg2;
    __mptr___6 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___6;
    ldv_32975: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_32974;
    } else {
    }
  } else
  if (intf->waiting_events_count <= 24U) {
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      goto out;
    } else {
    }
    copy_event_into_recv_msg(recv_msg, msg);
    list_add_tail(& recv_msg->link, & intf->waiting_events);
    intf->waiting_events_count = intf->waiting_events_count + 1U;
  } else
  if ((int )((signed char )intf->event_msg_printed) == 0) {
    printk("\fIPMI message handler: Event queue full, discarding incoming events\n");
    intf->event_msg_printed = 1;
  } else {
  }
  out:
  spin_unlock_irqrestore(& intf->events_lock, flags);
  return (rv);
}
}
static int handle_bmc_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_recv_msg *recv_msg ;
  struct ipmi_user *user ;
  struct ipmi_system_interface_addr *smi_addr ;
  {
  recv_msg = (struct ipmi_recv_msg *)msg->user_data;
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    printk("\fIPMI message received with no owner. This\ncould be because of a malformed message, or\nbecause of a hardware error.  Contact your\nhardware vender for assistance\n");
    return (0);
  } else {
  }
  user = recv_msg->user;
  if ((unsigned long )user != (unsigned long )((struct ipmi_user *)0) && ! user->valid) {
    atomic_inc((atomic_t *)(& intf->stats) + 3UL);
    ipmi_free_recv_msg(recv_msg);
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 2UL);
    recv_msg->recv_type = 1;
    recv_msg->msgid = msg->msgid;
    smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
    smi_addr->addr_type = 12;
    smi_addr->channel = 15;
    smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
    recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
    recv_msg->msg.cmd = msg->rsp[1];
    memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 2U, (size_t )(msg->rsp_size + -2));
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65534U;
    deliver_response(recv_msg);
  }
  return (0);
}
}
static int handle_one_recv_msg(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  int requeue ;
  int chan ;
  struct ipmi_recv_msg *recv_msg ;
  {
  if (msg->rsp_size <= 1) {
    printk("\fIPMI message handler: BMC returned to small a message for netfn %x cmd %x, got %d bytes\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           msg->rsp_size);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
  } else
  if ((unsigned int )((int )msg->rsp[0] >> 2) != ((unsigned int )((int )msg->data[0] >> 2) | 1U) || (int )msg->rsp[1] != (int )msg->data[1]) {
    printk("\fIPMI message handler: BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           (int )msg->rsp[0] >> 2, (int )msg->rsp[1]);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
  } else {
  }
  if (((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 52U) && (unsigned long )msg->user_data != (unsigned long )((void *)0)) {
    recv_msg = (struct ipmi_recv_msg *)msg->user_data;
    requeue = 0;
    if (msg->rsp_size <= 1) {
      goto out;
    } else {
    }
    chan = (int )msg->data[2] & 15;
    if (chan > 15) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg->user == (unsigned long )((ipmi_user_t )0) || ! (recv_msg->user)->valid) {
      goto out;
    } else {
    }
    recv_msg->recv_type = 4;
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = 1U;
    recv_msg->msg_data[0] = msg->rsp[2];
    deliver_response(recv_msg);
  } else
  if ((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 51U) {
    chan = (int )msg->rsp[3] & 15;
    if (chan > 15) {
      requeue = 0;
      goto out;
    } else {
    }
    if (intf->curr_channel <= 15) {
      requeue = 0;
      goto out;
    } else {
    }
    switch ((int )intf->channels[chan].medium) {
    case 1: ;
    if (((int )msg->rsp[4] & 4) != 0) {
      requeue = handle_ipmb_get_msg_rsp(intf, msg);
    } else {
      requeue = handle_ipmb_get_msg_cmd(intf, msg);
    }
    goto ldv_32993;
    case 4: ;
    case 5: ;
    if (((int )msg->rsp[6] & 4) != 0) {
      requeue = handle_lan_get_msg_rsp(intf, msg);
    } else {
      requeue = handle_lan_get_msg_cmd(intf, msg);
    }
    goto ldv_32993;
    default: ;
    if ((unsigned int )intf->channels[chan].medium > 95U && (int )((signed char )intf->channels[chan].medium) >= 0) {
      requeue = handle_oem_get_msg_cmd(intf, msg);
    } else {
      requeue = 0;
    }
    }
    ldv_32993: ;
  } else
  if ((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 53U) {
    requeue = handle_read_event_rsp(intf, msg);
  } else {
    requeue = handle_bmc_rsp(intf, msg);
  }
  out: ;
  return (requeue);
}
}
static void handle_new_recv_msgs(ipmi_smi_t intf )
{
  struct ipmi_smi_msg *smi_msg ;
  unsigned long flags ;
  int rv ;
  int run_to_completion ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  ipmi_user_t user ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_297 __u ;
  int tmp___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_299 __u___0 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  flags = 0UL;
  run_to_completion = intf->run_to_completion;
  if (run_to_completion == 0) {
    tmp = spinlock_check(& intf->waiting_rcv_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  goto ldv_33014;
  ldv_33013:
  __mptr = (struct list_head const *)intf->waiting_rcv_msgs.next;
  smi_msg = (struct ipmi_smi_msg *)__mptr;
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->waiting_rcv_msgs_lock, flags);
  } else {
  }
  rv = handle_one_recv_msg(intf, smi_msg);
  if (run_to_completion == 0) {
    tmp___0 = spinlock_check(& intf->waiting_rcv_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
  } else {
  }
  if (rv > 0) {
    goto ldv_33012;
  } else {
    list_del(& smi_msg->link);
    if (rv == 0) {
      ipmi_free_smi_msg(smi_msg);
    } else {
    }
  }
  ldv_33014:
  tmp___1 = list_empty((struct list_head const *)(& intf->waiting_rcv_msgs));
  if (tmp___1 == 0) {
    goto ldv_33013;
  } else {
  }
  ldv_33012: ;
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->waiting_rcv_msgs_lock, flags);
  } else {
  }
  tmp___4 = atomic_add_unless(& intf->watchdog_pretimeouts_to_deliver, -1, 0);
  if (tmp___4 != 0) {
    rcu_read_lock();
    __ptr = intf->users.next;
    __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
    _________p1 = __u.__val;
    ________p1 = _________p1;
    tmp___2 = debug_lockdep_rcu_enabled();
    __mptr___0 = (struct list_head const *)________p1;
    user = (struct ipmi_user *)__mptr___0;
    goto ldv_33045;
    ldv_33044: ;
    if ((unsigned long )(user->handler)->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
      (*((user->handler)->ipmi_watchdog_pretimeout))(user->handler_data);
    } else {
    }
    __ptr___0 = user->link.next;
    __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                     8);
    _________p1___0 = __u___0.__val;
    ________p1___0 = _________p1___0;
    tmp___3 = debug_lockdep_rcu_enabled();
    __mptr___1 = (struct list_head const *)________p1___0;
    user = (struct ipmi_user *)__mptr___1;
    ldv_33045: ;
    if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
      goto ldv_33044;
    } else {
    }
    rcu_read_unlock();
  } else {
  }
  return;
}
}
static void smi_recv_tasklet(unsigned long val )
{
  unsigned long flags ;
  ipmi_smi_t intf ;
  int run_to_completion ;
  struct ipmi_smi_msg *newmsg ;
  raw_spinlock_t *tmp ;
  struct list_head *entry ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  {
  flags = 0UL;
  intf = (struct ipmi_smi *)val;
  run_to_completion = intf->run_to_completion;
  newmsg = (struct ipmi_smi_msg *)0;
  if (run_to_completion == 0) {
    tmp = spinlock_check(& intf->xmit_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  if ((unsigned long )intf->curr_msg == (unsigned long )((struct ipmi_smi_msg *)0) && ! intf->in_shutdown) {
    entry = (struct list_head *)0;
    tmp___1 = list_empty((struct list_head const *)(& intf->hp_xmit_msgs));
    if (tmp___1 == 0) {
      entry = intf->hp_xmit_msgs.next;
    } else {
      tmp___0 = list_empty((struct list_head const *)(& intf->xmit_msgs));
      if (tmp___0 == 0) {
        entry = intf->xmit_msgs.next;
      } else {
      }
    }
    if ((unsigned long )entry != (unsigned long )((struct list_head *)0)) {
      list_del(entry);
      __mptr = (struct list_head const *)entry;
      newmsg = (struct ipmi_smi_msg *)__mptr;
      intf->curr_msg = newmsg;
    } else {
    }
  } else {
  }
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->xmit_msgs_lock, flags);
  } else {
  }
  if ((unsigned long )newmsg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    (*((intf->handlers)->sender))(intf->send_info, newmsg);
  } else {
  }
  handle_new_recv_msgs(intf);
  return;
}
}
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  unsigned long flags ;
  int run_to_completion ;
  int chan ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  flags = 0UL;
  run_to_completion = intf->run_to_completion;
  if (((msg->data_size > 1 && (unsigned int )msg->data[0] == 24U) && (unsigned int )msg->data[1] == 52U) && (unsigned long )msg->user_data == (unsigned long )((void *)0)) {
    if ((int )intf->in_shutdown) {
      goto free_msg;
    } else {
    }
    if (((((msg->rsp_size > 2 && (unsigned int )msg->rsp[2] != 0U) && (unsigned int )msg->rsp[2] != 192U) && (unsigned int )msg->rsp[2] != 129U) && (unsigned int )msg->rsp[2] != 130U) && (unsigned int )msg->rsp[2] != 131U) {
      chan = (int )msg->rsp[3] & 15;
      if (chan > 15) {
      } else
      if ((unsigned int )intf->channels[chan].medium == 4U || (unsigned int )intf->channels[chan].medium == 5U) {
        atomic_inc((atomic_t *)(& intf->stats) + 14UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 5UL);
      }
      intf_err_seq(intf, msg->msgid, (unsigned int )msg->rsp[2]);
    } else {
      intf_start_seq_timer(intf, msg->msgid);
    }
    free_msg:
    ipmi_free_smi_msg(msg);
  } else {
    if (run_to_completion == 0) {
      tmp = spinlock_check(& intf->waiting_rcv_msgs_lock);
      flags = _raw_spin_lock_irqsave(tmp);
    } else {
    }
    list_add_tail(& msg->link, & intf->waiting_rcv_msgs);
    if (run_to_completion == 0) {
      spin_unlock_irqrestore(& intf->waiting_rcv_msgs_lock, flags);
    } else {
    }
  }
  if (run_to_completion == 0) {
    tmp___0 = spinlock_check(& intf->xmit_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
  } else {
  }
  if ((unsigned long )intf->curr_msg == (unsigned long )msg) {
    intf->curr_msg = (struct ipmi_smi_msg *)0;
  } else {
  }
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->xmit_msgs_lock, flags);
  } else {
  }
  if (run_to_completion != 0) {
    smi_recv_tasklet((unsigned long )intf);
  } else {
    tasklet_schedule(& intf->recv_tasklet);
  }
  return;
}
}
static char const __kstrtab_ipmi_smi_msg_received[22U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'm', 's', 'g',
        '_', 'r', 'e', 'c',
        'e', 'i', 'v', 'e',
        'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_msg_received ;
struct kernel_symbol const __ksymtab_ipmi_smi_msg_received = {(unsigned long )(& ipmi_smi_msg_received), (char const *)(& __kstrtab_ipmi_smi_msg_received)};
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf )
{
  {
  if ((int )intf->in_shutdown) {
    return;
  } else {
  }
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 1);
  tasklet_schedule(& intf->recv_tasklet);
  return;
}
}
static char const __kstrtab_ipmi_smi_watchdog_pretimeout[29U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'd', 'o',
        'g', '_', 'p', 'r',
        'e', 't', 'i', 'm',
        'e', 'o', 'u', 't',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watchdog_pretimeout ;
struct kernel_symbol const __ksymtab_ipmi_smi_watchdog_pretimeout = {(unsigned long )(& ipmi_smi_watchdog_pretimeout), (char const *)(& __kstrtab_ipmi_smi_watchdog_pretimeout)};
static struct ipmi_smi_msg *smi_from_recv_msg(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg ,
                                              unsigned char seq , long seqid )
{
  struct ipmi_smi_msg *smi_msg ;
  struct ipmi_smi_msg *tmp ;
  {
  tmp = ipmi_alloc_smi_msg();
  smi_msg = tmp;
  if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
    return ((struct ipmi_smi_msg *)0);
  } else {
  }
  memmove((void *)(& smi_msg->data), (void const *)recv_msg->msg.data, (size_t )recv_msg->msg.data_len);
  smi_msg->data_size = (int )recv_msg->msg.data_len;
  smi_msg->msgid = (long )((int )seq << 26) | (seqid & 67108863L);
  return (smi_msg);
}
}
static void check_msg_timeout(ipmi_smi_t intf , struct seq_table *ent , struct list_head *timeouts ,
                              long timeout_period , int slot , unsigned long *flags ,
                              unsigned int *waiting_msgs )
{
  struct ipmi_recv_msg *msg ;
  struct ipmi_smi_handlers *handlers ;
  int tmp ;
  struct ipmi_smi_msg *smi_msg ;
  int tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  if ((int )intf->in_shutdown) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    return;
  } else {
  }
  ent->timeout = ent->timeout - (unsigned long )timeout_period;
  if (ent->timeout != 0UL) {
    *waiting_msgs = *waiting_msgs + 1U;
    return;
  } else {
  }
  if (ent->retries_left == 0U) {
    ent->inuse = 0U;
    msg = ent->recv_msg;
    list_add_tail(& msg->link, timeouts);
    if ((unsigned int )*((unsigned char *)ent + 0UL) != 0U) {
      atomic_inc((atomic_t *)(& intf->stats) + 8UL);
    } else {
      tmp = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 16UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 7UL);
      }
    }
  } else {
    *waiting_msgs = *waiting_msgs + 1U;
    ent->timeout = 60000UL;
    ent->retries_left = ent->retries_left - 1U;
    smi_msg = smi_from_recv_msg(intf, ent->recv_msg, (int )((unsigned char )slot),
                                ent->seqid);
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      tmp___0 = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp___0 != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 27UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 26UL);
      }
      return;
    } else {
    }
    spin_unlock_irqrestore(& intf->seq_lock, *flags);
    handlers = intf->handlers;
    if ((unsigned long )handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
      tmp___1 = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp___1 != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 15UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 6UL);
      }
      smi_send(intf, intf->handlers, smi_msg, 0);
    } else {
      ipmi_free_smi_msg(smi_msg);
    }
    tmp___2 = spinlock_check(& intf->seq_lock);
    *flags = _raw_spin_lock_irqsave(tmp___2);
  }
  return;
}
}
static unsigned int ipmi_timeout_handler(ipmi_smi_t intf , long timeout_period )
{
  struct list_head timeouts ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  unsigned long flags ;
  int i ;
  unsigned int waiting_msgs ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  raw_spinlock_t *tmp___0 ;
  {
  waiting_msgs = 0U;
  INIT_LIST_HEAD(& timeouts);
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_33128;
  ldv_33127:
  check_msg_timeout(intf, (struct seq_table *)(& intf->seq_table) + (unsigned long )i,
                    & timeouts, timeout_period, i, & flags, & waiting_msgs);
  i = i + 1;
  ldv_33128: ;
  if (i <= 63) {
    goto ldv_33127;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  __mptr = (struct list_head const *)timeouts.next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_33137;
  ldv_33136:
  deliver_err_response(msg, 195);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  ldv_33137: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& timeouts)) {
    goto ldv_33136;
  } else {
  }
  if (intf->auto_maintenance_timeout > 0) {
    tmp___0 = spinlock_check(& intf->maintenance_mode_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    if (intf->auto_maintenance_timeout > 0) {
      intf->auto_maintenance_timeout = (int )((unsigned int )intf->auto_maintenance_timeout - (unsigned int )timeout_period);
      if (intf->maintenance_mode == 0 && intf->auto_maintenance_timeout <= 0) {
        intf->maintenance_mode_enable = 0;
        maintenance_mode_update(intf);
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
  } else {
  }
  tasklet_schedule(& intf->recv_tasklet);
  return (waiting_msgs);
}
}
static void ipmi_request_event(ipmi_smi_t intf )
{
  {
  if ((int )intf->maintenance_mode_enable) {
    return;
  } else {
  }
  if (! intf->in_shutdown) {
    (*((intf->handlers)->request_events))(intf->send_info);
  } else {
  }
  return;
}
}
static struct timer_list ipmi_timer ;
static atomic_t stop_operation ;
static void ipmi_timeout(unsigned long data )
{
  ipmi_smi_t intf ;
  int nt ;
  int tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_301 __u ;
  int tmp___0 ;
  int lnt ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_303 __u___0 ;
  int tmp___3 ;
  {
  nt = 0;
  tmp = atomic_read((atomic_t const *)(& stop_operation));
  if (tmp != 0) {
    return;
  } else {
  }
  rcu_read_lock();
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_33182;
  ldv_33181:
  lnt = 0;
  tmp___1 = atomic_read((atomic_t const *)(& intf->event_waiters));
  if (tmp___1 != 0) {
    intf->ticks_to_req_ev = intf->ticks_to_req_ev - 1U;
    if (intf->ticks_to_req_ev == 0U) {
      ipmi_request_event(intf);
      intf->ticks_to_req_ev = 1U;
    } else {
    }
    lnt = lnt + 1;
  } else {
  }
  tmp___2 = ipmi_timeout_handler(intf, 1000L);
  lnt = (int )(tmp___2 + (unsigned int )lnt);
  lnt = lnt != 0;
  if (intf->last_needs_timer != lnt && (unsigned long )(intf->handlers)->set_need_watch != (unsigned long )((void (*)(void * ,
                                                                                                                      bool ))0)) {
    (*((intf->handlers)->set_need_watch))(intf->send_info, lnt != 0);
  } else {
  }
  intf->last_needs_timer = lnt;
  nt = nt + lnt;
  __ptr___0 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___3 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_33182: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_33181;
  } else {
  }
  rcu_read_unlock();
  if (nt != 0) {
    ldv_mod_timer_11(& ipmi_timer, (unsigned long )jiffies + 250UL);
  } else {
  }
  return;
}
}
static void need_waiter(ipmi_smi_t intf )
{
  int tmp ;
  {
  tmp = timer_pending((struct timer_list const *)(& ipmi_timer));
  if (tmp == 0) {
    ldv_mod_timer_12(& ipmi_timer, (unsigned long )jiffies + 250UL);
  } else {
  }
  return;
}
}
static atomic_t smi_msg_inuse_count = {0};
static atomic_t recv_msg_inuse_count = {0};
static void free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  atomic_dec(& smi_msg_inuse_count);
  kfree((void const *)msg);
  return;
}
}
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
{
  struct ipmi_smi_msg *rv ;
  void *tmp ;
  {
  tmp = kmalloc(592UL, 32U);
  rv = (struct ipmi_smi_msg *)tmp;
  if ((unsigned long )rv != (unsigned long )((struct ipmi_smi_msg *)0)) {
    rv->done = & free_smi_msg;
    rv->user_data = (void *)0;
    atomic_inc(& smi_msg_inuse_count);
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_alloc_smi_msg[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'l', 'l',
        'o', 'c', '_', 's',
        'm', 'i', '_', 'm',
        's', 'g', '\000'};
struct kernel_symbol const __ksymtab_ipmi_alloc_smi_msg ;
struct kernel_symbol const __ksymtab_ipmi_alloc_smi_msg = {(unsigned long )(& ipmi_alloc_smi_msg), (char const *)(& __kstrtab_ipmi_alloc_smi_msg)};
static void free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  atomic_dec(& recv_msg_inuse_count);
  kfree((void const *)msg);
  return;
}
}
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
{
  struct ipmi_recv_msg *rv ;
  void *tmp ;
  {
  tmp = kmalloc(384UL, 32U);
  rv = (struct ipmi_recv_msg *)tmp;
  if ((unsigned long )rv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    rv->user = (ipmi_user_t )0;
    rv->done = & free_recv_msg;
    atomic_inc(& recv_msg_inuse_count);
  } else {
  }
  return (rv);
}
}
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  if ((unsigned long )msg->user != (unsigned long )((ipmi_user_t )0)) {
    kref_put(& (msg->user)->refcount, & free_user);
  } else {
  }
  (*(msg->done))(msg);
  return;
}
}
static char const __kstrtab_ipmi_free_recv_msg[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'f', 'r', 'e',
        'e', '_', 'r', 'e',
        'c', 'v', '_', 'm',
        's', 'g', '\000'};
struct kernel_symbol const __ksymtab_ipmi_free_recv_msg ;
struct kernel_symbol const __ksymtab_ipmi_free_recv_msg = {(unsigned long )(& ipmi_free_recv_msg), (char const *)(& __kstrtab_ipmi_free_recv_msg)};
static atomic_t panic_done_count = {0};
static void dummy_smi_done_handler(struct ipmi_smi_msg *msg )
{
  {
  atomic_dec(& panic_done_count);
  return;
}
}
static void dummy_recv_done_handler(struct ipmi_recv_msg *msg )
{
  {
  atomic_dec(& panic_done_count);
  return;
}
}
static void ipmi_panic_request_and_wait(ipmi_smi_t intf , struct ipmi_addr *addr ,
                                        struct kernel_ipmi_msg *msg )
{
  struct ipmi_smi_msg smi_msg ;
  struct ipmi_recv_msg recv_msg ;
  int rv ;
  int tmp ;
  {
  smi_msg.done = & dummy_smi_done_handler;
  recv_msg.done = & dummy_recv_done_handler;
  atomic_add(2, & panic_done_count);
  rv = i_ipmi_request((ipmi_user_t )0, intf, addr, 0L, msg, (void *)intf, (void *)(& smi_msg),
                      & recv_msg, 0, (int )intf->channels[0].address, (int )intf->channels[0].lun,
                      0, 1U);
  if (rv != 0) {
    atomic_sub(2, & panic_done_count);
  } else {
  }
  goto ldv_33235;
  ldv_33234:
  ipmi_poll(intf);
  ldv_33235:
  tmp = atomic_read((atomic_t const *)(& panic_done_count));
  if (tmp != 0) {
    goto ldv_33234;
  } else {
  }
  return;
}
}
static void event_receiver_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if (((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 5U) && (unsigned int )msg->msg.cmd == 1U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->event_receiver = *(msg->msg.data + 1UL);
    intf->event_receiver_lun = (unsigned int )*(msg->msg.data + 2UL) & 3U;
  } else {
  }
  return;
}
}
static void device_id_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if (((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 7U) && (unsigned int )msg->msg.cmd == 1U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->local_sel_device = (unsigned int )((int )*(msg->msg.data + 6UL) >> 2) & 1U;
    intf->local_event_generator = (unsigned int )((int )*(msg->msg.data + 6UL) >> 5) & 1U;
  } else {
  }
  return;
}
}
static void send_panic_events(char *str )
{
  struct kernel_ipmi_msg msg ;
  ipmi_smi_t intf ;
  unsigned char data[16U] ;
  struct ipmi_system_interface_addr *si ;
  struct ipmi_addr addr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_305 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_307 __u___0 ;
  int tmp___0 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  union __anonunion___u_309 __u___1 ;
  int tmp___1 ;
  char *p ;
  struct ipmi_ipmb_addr *ipmb ;
  int j ;
  int size ;
  size_t tmp___2 ;
  int tmp___3 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  union __anonunion___u_311 __u___2 ;
  int tmp___4 ;
  {
  si = (struct ipmi_system_interface_addr *)(& addr);
  si->addr_type = 12;
  si->channel = 15;
  si->lun = 0U;
  msg.netfn = 4U;
  msg.cmd = 2U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 8U;
  data[0] = 65U;
  data[1] = 3U;
  data[2] = 32U;
  data[4] = 111U;
  data[5] = 161U;
  if ((unsigned long )str != (unsigned long )((char *)0)) {
    data[3] = (unsigned char )*str;
    data[6] = (unsigned char )*(str + 1UL);
    data[7] = (unsigned char )*(str + 2UL);
  } else {
  }
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_33283;
  ldv_33282: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_33281;
  } else {
  }
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  ldv_33281:
  __ptr___0 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_33283: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_33282;
  } else {
  }
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  __ptr___1 = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr___1), (void *)(& __u___1.__c),
                   8);
  _________p1___1 = __u___1.__val;
  ________p1___1 = _________p1___1;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___1 = (struct list_head const *)________p1___1;
  intf = (struct ipmi_smi *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_33322;
  ldv_33321:
  p = str;
  if (intf->intf_num == -1) {
    goto ldv_33316;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  intf->local_sel_device = 0U;
  intf->local_event_generator = 0U;
  intf->event_receiver = 0U;
  msg.netfn = 6U;
  msg.cmd = 1U;
  msg.data = (unsigned char *)0U;
  msg.data_len = 0U;
  intf->null_user_handler = & device_id_fetcher;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  if ((unsigned int )intf->local_event_generator != 0U) {
    msg.netfn = 4U;
    msg.cmd = 1U;
    msg.data = (unsigned char *)0U;
    msg.data_len = 0U;
    intf->null_user_handler = & event_receiver_fetcher;
    ipmi_panic_request_and_wait(intf, & addr, & msg);
  } else {
  }
  intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  if ((((int )intf->event_receiver & 1) == 0 && (unsigned int )intf->event_receiver != 0U) && (int )intf->event_receiver != (int )intf->channels[0].address) {
    ipmb = (struct ipmi_ipmb_addr *)(& addr);
    ipmb->addr_type = 1;
    ipmb->channel = 0;
    ipmb->lun = intf->event_receiver_lun;
    ipmb->slave_addr = intf->event_receiver;
  } else
  if ((unsigned int )intf->local_sel_device != 0U) {
    si = (struct ipmi_system_interface_addr *)(& addr);
    si->addr_type = 12;
    si->channel = 15;
    si->lun = 0U;
  } else {
    goto ldv_33316;
  }
  msg.netfn = 10U;
  msg.cmd = 68U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 16U;
  j = 0;
  goto ldv_33319;
  ldv_33318:
  tmp___2 = strlen((char const *)p);
  size = (int )tmp___2;
  if (size > 11) {
    size = 11;
  } else {
  }
  data[0] = 0U;
  data[1] = 0U;
  data[2] = 240U;
  data[3] = intf->channels[0].address;
  tmp___3 = j;
  j = j + 1;
  data[4] = (unsigned char )tmp___3;
  strncpy((char *)(& data) + 5U, (char const *)p, 11UL);
  p = p + (unsigned long )size;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  ldv_33319: ;
  if ((int )((signed char )*p) != 0) {
    goto ldv_33318;
  } else {
  }
  ldv_33316:
  __ptr___2 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___2), (void *)(& __u___2.__c),
                   8);
  _________p1___2 = __u___2.__val;
  ________p1___2 = _________p1___2;
  tmp___4 = debug_lockdep_rcu_enabled();
  __mptr___2 = (struct list_head const *)________p1___2;
  intf = (struct ipmi_smi *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_33322: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_33321;
  } else {
  }
  return;
}
}
static int has_panicked ;
static int panic_event(struct notifier_block *this , unsigned long event , void *ptr )
{
  ipmi_smi_t intf ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_313 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_315 __u___0 ;
  int tmp___0 ;
  {
  if (has_panicked != 0) {
    return (0);
  } else {
  }
  has_panicked = 1;
  __ptr = ipmi_interfaces.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_33361;
  ldv_33360: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_33359;
  } else {
  }
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  ldv_33359:
  __ptr___0 = intf->link.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_33361: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_33360;
  } else {
  }
  send_panic_events((char *)ptr);
  return (0);
}
}
static struct notifier_block panic_block = {& panic_event, (struct notifier_block *)0, 200};
static int ipmi_init_msghandler(void)
{
  int rv ;
  {
  if (initialized != 0) {
    return (0);
  } else {
  }
  rv = driver_register(& ipmidriver.driver);
  if (rv != 0) {
    printk("\vIPMI message handler: Could not register IPMI driver\n");
    return (rv);
  } else {
  }
  printk("\016ipmi message handler version 39.2\n");
  proc_ipmi_root = proc_mkdir("ipmi", (struct proc_dir_entry *)0);
  if ((unsigned long )proc_ipmi_root == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\vIPMI message handler: Unable to create IPMI proc dir");
    driver_unregister(& ipmidriver.driver);
    return (-12);
  } else {
  }
  reg_timer_1(& ipmi_timer, & ipmi_timeout, 0UL);
  ldv_mod_timer_13(& ipmi_timer, (unsigned long )jiffies + 250UL);
  atomic_notifier_chain_register(& panic_notifier_list, & panic_block);
  initialized = 1;
  return (0);
}
}
static int ipmi_init_msghandler_mod(void)
{
  {
  ipmi_init_msghandler();
  return (0);
}
}
static void cleanup_ipmi(void)
{
  int count ;
  {
  if (initialized == 0) {
    return;
  } else {
  }
  atomic_notifier_chain_unregister(& panic_notifier_list, & panic_block);
  atomic_inc(& stop_operation);
  ldv_del_timer_sync_14(& ipmi_timer);
  proc_remove(proc_ipmi_root);
  driver_unregister(& ipmidriver.driver);
  initialized = 0;
  count = atomic_read((atomic_t const *)(& smi_msg_inuse_count));
  if (count != 0) {
    printk("\fIPMI message handler: SMI message count %d at exit\n", count);
  } else {
  }
  count = atomic_read((atomic_t const *)(& recv_msg_inuse_count));
  if (count != 0) {
    printk("\fIPMI message handler: recv message count %d at exit\n", count);
  } else {
  }
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
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
void ldv_file_operations_16(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  smi_ipmb_proc_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  smi_ipmb_proc_ops_group2 = (struct file *)tmp___0;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& ipmi_timeout)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
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
void ldv_file_operations_15(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  smi_version_proc_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  smi_version_proc_ops_group2 = (struct file *)tmp___0;
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
  goto ldv_33430;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_33430;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_33430;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_33430;
  default:
  ldv_stop();
  }
  ldv_33430: ;
  return;
}
}
void ldv_file_operations_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  smi_stats_proc_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  smi_stats_proc_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  ipmi_timeout(timer->data);
  LDV_IN_INTERRUPT = 1;
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
  unsigned long ldvarg8 ;
  void *ldvarg7 ;
  void *tmp___5 ;
  struct notifier_block *ldvarg6 ;
  void *tmp___6 ;
  loff_t *ldvarg11 ;
  void *tmp___7 ;
  char *ldvarg13 ;
  void *tmp___8 ;
  loff_t ldvarg10 ;
  size_t ldvarg12 ;
  int ldvarg9 ;
  struct device *ldvarg14 ;
  void *tmp___9 ;
  struct device_attribute *ldvarg16 ;
  void *tmp___10 ;
  char *ldvarg15 ;
  void *tmp___11 ;
  char *ldvarg18 ;
  void *tmp___12 ;
  struct device *ldvarg17 ;
  void *tmp___13 ;
  struct device_attribute *ldvarg19 ;
  void *tmp___14 ;
  int ldvarg21 ;
  struct kobject *ldvarg20 ;
  void *tmp___15 ;
  struct attribute *ldvarg22 ;
  void *tmp___16 ;
  char *ldvarg24 ;
  void *tmp___17 ;
  struct device_attribute *ldvarg25 ;
  void *tmp___18 ;
  struct device *ldvarg23 ;
  void *tmp___19 ;
  char *ldvarg27 ;
  void *tmp___20 ;
  struct device *ldvarg26 ;
  void *tmp___21 ;
  struct device_attribute *ldvarg28 ;
  void *tmp___22 ;
  size_t ldvarg32 ;
  loff_t *ldvarg31 ;
  void *tmp___23 ;
  int ldvarg29 ;
  char *ldvarg33 ;
  void *tmp___24 ;
  loff_t ldvarg30 ;
  size_t ldvarg37 ;
  loff_t ldvarg35 ;
  loff_t *ldvarg36 ;
  void *tmp___25 ;
  char *ldvarg38 ;
  void *tmp___26 ;
  int ldvarg34 ;
  struct device *ldvarg39 ;
  void *tmp___27 ;
  struct device_attribute *ldvarg41 ;
  void *tmp___28 ;
  char *ldvarg40 ;
  void *tmp___29 ;
  char *ldvarg43 ;
  void *tmp___30 ;
  struct device *ldvarg42 ;
  void *tmp___31 ;
  struct device_attribute *ldvarg44 ;
  void *tmp___32 ;
  struct device *ldvarg45 ;
  void *tmp___33 ;
  struct device_attribute *ldvarg47 ;
  void *tmp___34 ;
  char *ldvarg46 ;
  void *tmp___35 ;
  struct device *ldvarg48 ;
  void *tmp___36 ;
  char *ldvarg49 ;
  void *tmp___37 ;
  struct device_attribute *ldvarg50 ;
  void *tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
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
  ldvarg7 = tmp___5;
  tmp___6 = ldv_init_zalloc(24UL);
  ldvarg6 = (struct notifier_block *)tmp___6;
  tmp___7 = ldv_init_zalloc(8UL);
  ldvarg11 = (loff_t *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1416UL);
  ldvarg14 = (struct device *)tmp___9;
  tmp___10 = ldv_init_zalloc(48UL);
  ldvarg16 = (struct device_attribute *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(1416UL);
  ldvarg17 = (struct device *)tmp___13;
  tmp___14 = ldv_init_zalloc(48UL);
  ldvarg19 = (struct device_attribute *)tmp___14;
  tmp___15 = ldv_init_zalloc(296UL);
  ldvarg20 = (struct kobject *)tmp___15;
  tmp___16 = ldv_init_zalloc(32UL);
  ldvarg22 = (struct attribute *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(48UL);
  ldvarg25 = (struct device_attribute *)tmp___18;
  tmp___19 = ldv_init_zalloc(1416UL);
  ldvarg23 = (struct device *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1416UL);
  ldvarg26 = (struct device *)tmp___21;
  tmp___22 = ldv_init_zalloc(48UL);
  ldvarg28 = (struct device_attribute *)tmp___22;
  tmp___23 = ldv_init_zalloc(8UL);
  ldvarg31 = (loff_t *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(8UL);
  ldvarg36 = (loff_t *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg38 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1416UL);
  ldvarg39 = (struct device *)tmp___27;
  tmp___28 = ldv_init_zalloc(48UL);
  ldvarg41 = (struct device_attribute *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg40 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp___30;
  tmp___31 = ldv_init_zalloc(1416UL);
  ldvarg42 = (struct device *)tmp___31;
  tmp___32 = ldv_init_zalloc(48UL);
  ldvarg44 = (struct device_attribute *)tmp___32;
  tmp___33 = ldv_init_zalloc(1416UL);
  ldvarg45 = (struct device *)tmp___33;
  tmp___34 = ldv_init_zalloc(48UL);
  ldvarg47 = (struct device_attribute *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(1416UL);
  ldvarg48 = (struct device *)tmp___36;
  tmp___37 = ldv_init_zalloc(1UL);
  ldvarg49 = (char *)tmp___37;
  tmp___38 = ldv_init_zalloc(48UL);
  ldvarg50 = (struct device_attribute *)tmp___38;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  ldv_memset((void *)(& ldvarg29), 0, 4UL);
  ldv_memset((void *)(& ldvarg30), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 8UL);
  ldv_memset((void *)(& ldvarg35), 0, 8UL);
  ldv_memset((void *)(& ldvarg34), 0, 4UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_33606:
  tmp___39 = __VERIFIER_nondet_int();
  switch (tmp___39) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      revision_show(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_33530;
    default:
    ldv_stop();
    }
    ldv_33530: ;
  } else {
  }
  goto ldv_33532;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    tmp___41 = __VERIFIER_nondet_int();
    switch (tmp___41) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      manufacturer_id_show(ldvarg3, ldvarg5, ldvarg4);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_33535;
    default:
    ldv_stop();
    }
    ldv_33535: ;
  } else {
  }
  goto ldv_33532;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    tmp___42 = __VERIFIER_nondet_int();
    switch (tmp___42) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      panic_event(ldvarg6, ldvarg8, ldvarg7);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_33539;
    default:
    ldv_stop();
    }
    ldv_33539: ;
  } else {
  }
  goto ldv_33532;
  case 3: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_33532;
  case 4: ;
  if (ldv_state_variable_0 != 0) {
    tmp___43 = __VERIFIER_nondet_int();
    switch (tmp___43) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      cleanup_ipmi();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33545;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = ipmi_init_msghandler_mod();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_file_operations_16();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_14 = 1;
        ldv_file_operations_14();
        ldv_state_variable_15 = 1;
        ldv_file_operations_15();
        ldv_state_variable_2 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_11 = 1;
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33545;
    default:
    ldv_stop();
    }
    ldv_33545: ;
  } else {
  }
  goto ldv_33532;
  case 5: ;
  if (ldv_state_variable_16 != 0) {
    tmp___44 = __VERIFIER_nondet_int();
    switch (tmp___44) {
    case 0: ;
    if (ldv_state_variable_16 == 2) {
      single_release(smi_ipmb_proc_ops_group1, smi_ipmb_proc_ops_group2);
      ldv_state_variable_16 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33550;
    case 1: ;
    if (ldv_state_variable_16 == 2) {
      seq_read(smi_ipmb_proc_ops_group2, ldvarg13, ldvarg12, ldvarg11);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_33550;
    case 2: ;
    if (ldv_state_variable_16 == 2) {
      seq_lseek(smi_ipmb_proc_ops_group2, ldvarg10, ldvarg9);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_33550;
    case 3: ;
    if (ldv_state_variable_16 == 1) {
      ldv_retval_1 = smi_ipmb_proc_open(smi_ipmb_proc_ops_group1, smi_ipmb_proc_ops_group2);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_16 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33550;
    default:
    ldv_stop();
    }
    ldv_33550: ;
  } else {
  }
  goto ldv_33532;
  case 6: ;
  if (ldv_state_variable_13 != 0) {
    tmp___45 = __VERIFIER_nondet_int();
    switch (tmp___45) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      device_id_show(ldvarg14, ldvarg16, ldvarg15);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_33557;
    default:
    ldv_stop();
    }
    ldv_33557: ;
  } else {
  }
  goto ldv_33532;
  case 7: ;
  if (ldv_state_variable_6 != 0) {
    tmp___46 = __VERIFIER_nondet_int();
    switch (tmp___46) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      product_id_show(ldvarg17, ldvarg19, ldvarg18);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_33561;
    default:
    ldv_stop();
    }
    ldv_33561: ;
  } else {
  }
  goto ldv_33532;
  case 8: ;
  if (ldv_state_variable_3 != 0) {
    tmp___47 = __VERIFIER_nondet_int();
    switch (tmp___47) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      bmc_dev_attr_is_visible(ldvarg20, ldvarg22, ldvarg21);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_33565;
    default:
    ldv_stop();
    }
    ldv_33565: ;
  } else {
  }
  goto ldv_33532;
  case 9: ;
  if (ldv_state_variable_9 != 0) {
    tmp___48 = __VERIFIER_nondet_int();
    switch (tmp___48) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      ipmi_version_show(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_33569;
    default:
    ldv_stop();
    }
    ldv_33569: ;
  } else {
  }
  goto ldv_33532;
  case 10: ;
  if (ldv_state_variable_12 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      provides_device_sdrs_show(ldvarg26, ldvarg28, ldvarg27);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_33573;
    default:
    ldv_stop();
    }
    ldv_33573: ;
  } else {
  }
  goto ldv_33532;
  case 11: ;
  if (ldv_state_variable_14 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_14 == 2) {
      single_release(smi_stats_proc_ops_group1, smi_stats_proc_ops_group2);
      ldv_state_variable_14 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33577;
    case 1: ;
    if (ldv_state_variable_14 == 2) {
      seq_read(smi_stats_proc_ops_group2, ldvarg33, ldvarg32, ldvarg31);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_33577;
    case 2: ;
    if (ldv_state_variable_14 == 2) {
      seq_lseek(smi_stats_proc_ops_group2, ldvarg30, ldvarg29);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_33577;
    case 3: ;
    if (ldv_state_variable_14 == 1) {
      ldv_retval_2 = smi_stats_proc_open(smi_stats_proc_ops_group1, smi_stats_proc_ops_group2);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_14 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33577;
    default:
    ldv_stop();
    }
    ldv_33577: ;
  } else {
  }
  goto ldv_33532;
  case 12: ;
  if (ldv_state_variable_15 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_15 == 2) {
      single_release(smi_version_proc_ops_group1, smi_version_proc_ops_group2);
      ldv_state_variable_15 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33584;
    case 1: ;
    if (ldv_state_variable_15 == 2) {
      seq_read(smi_version_proc_ops_group2, ldvarg38, ldvarg37, ldvarg36);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_33584;
    case 2: ;
    if (ldv_state_variable_15 == 2) {
      seq_lseek(smi_version_proc_ops_group2, ldvarg35, ldvarg34);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_33584;
    case 3: ;
    if (ldv_state_variable_15 == 1) {
      ldv_retval_3 = smi_version_proc_open(smi_version_proc_ops_group1, smi_version_proc_ops_group2);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_15 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33584;
    default:
    ldv_stop();
    }
    ldv_33584: ;
  } else {
  }
  goto ldv_33532;
  case 13: ;
  if (ldv_state_variable_8 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      add_dev_support_show(ldvarg39, ldvarg41, ldvarg40);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33591;
    default:
    ldv_stop();
    }
    ldv_33591: ;
  } else {
  }
  goto ldv_33532;
  case 14: ;
  if (ldv_state_variable_4 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      guid_show(ldvarg42, ldvarg44, ldvarg43);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33595;
    default:
    ldv_stop();
    }
    ldv_33595: ;
  } else {
  }
  goto ldv_33532;
  case 15: ;
  if (ldv_state_variable_10 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      firmware_revision_show(ldvarg45, ldvarg47, ldvarg46);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_33599;
    default:
    ldv_stop();
    }
    ldv_33599: ;
  } else {
  }
  goto ldv_33532;
  case 16: ;
  if (ldv_state_variable_5 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      aux_firmware_rev_show(ldvarg48, ldvarg50, ldvarg49);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33603;
    default:
    ldv_stop();
    }
    ldv_33603: ;
  } else {
  }
  goto ldv_33532;
  default:
  ldv_stop();
  }
  ldv_33532: ;
  goto ldv_33606;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_try_module_get_5(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_6(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_7(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_8(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_9(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_10(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
int ldv_mod_timer_11(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_12(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_13(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_14(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
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
void *PDE_DATA(const struct inode *arg0) {
  return (void *)external_alloc();
}
void __compiletime_assert_235() {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_register(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_unregister(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct device *driver_find_device(struct device_driver *arg0, struct device *arg1, void *arg2, int (*arg3)(struct device *, void *)) {
  return (struct device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void *external_alloc(void);
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  return (char *)external_alloc();
}
void *external_alloc(void);
char *kstrdup(const char *arg0, gfp_t arg1) {
  return (char *)external_alloc();
}
void ldv_initialize() {
  return;
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
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_device_register(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
void *external_alloc(void);
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return (struct proc_dir_entry *)external_alloc();
}
void proc_remove(struct proc_dir_entry *arg0) {
  return;
}
void put_device(struct device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
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
void synchronize_sched() {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
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
