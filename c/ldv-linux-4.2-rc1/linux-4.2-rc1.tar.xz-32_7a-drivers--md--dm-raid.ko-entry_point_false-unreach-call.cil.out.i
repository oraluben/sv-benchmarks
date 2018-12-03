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
typedef __u32 __le32;
typedef __u64 __le64;
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
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct file_operations;
struct completion;
struct lockdep_map;
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
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
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
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
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
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
};
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
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
struct vm_area_struct;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   unsigned int flags ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
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
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
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
   struct __anonstruct_shared_159 shared ;
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
typedef unsigned long cputime_t;
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
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
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
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
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
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
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
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
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
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
struct kernfs_root;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct dm_target;
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
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct device_type;
struct class;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
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
union __anonunion____missing_field_name_230 {
   struct bio_integrity_payload *bi_integrity ;
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
   atomic_t __bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_230 __annonCompField64 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct bdi_writeback;
struct export_operations;
struct hd_geometry;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct block_device_operations;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
typedef int congested_fn(void * , int );
struct bdi_writeback_congested {
   unsigned long state ;
   atomic_t refcnt ;
   struct backing_dev_info *bdi ;
   int blkcg_id ;
   struct rb_node rb_node ;
};
union __anonunion____missing_field_name_249 {
   struct work_struct release_work ;
   struct callback_head rcu ;
};
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long state ;
   unsigned long last_old_flush ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
   struct percpu_counter stat[4U] ;
   struct bdi_writeback_congested *congested ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   spinlock_t work_lock ;
   struct list_head work_list ;
   struct delayed_work dwork ;
   struct percpu_ref refcnt ;
   struct fprop_local_percpu memcg_completions ;
   struct cgroup_subsys_state *memcg_css ;
   struct cgroup_subsys_state *blkcg_css ;
   struct list_head memcg_node ;
   struct list_head blkcg_node ;
   union __anonunion____missing_field_name_249 __annonCompField76 ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   atomic_long_t tot_write_bandwidth ;
   struct bdi_writeback wb ;
   struct radix_tree_root cgwb_tree ;
   struct rb_root cgwb_congested_tree ;
   atomic_t usage_cnt ;
   wait_queue_head_t wb_waitq ;
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
union __anonunion____missing_field_name_250 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_251 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_250 __annonCompField77 ;
   union __anonunion____missing_field_name_251 __annonCompField78 ;
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
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
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
struct request;
struct bsg_job;
struct blkcg_gq;
struct blk_flush_queue;
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
union __anonunion____missing_field_name_252 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_253 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_254 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_256 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_257 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_255 {
   struct __anonstruct_elv_256 elv ;
   struct __anonstruct_flush_257 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_252 __annonCompField79 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   unsigned int cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_253 __annonCompField80 ;
   union __anonunion____missing_field_name_254 __annonCompField81 ;
   union __anonunion____missing_field_name_255 __annonCompField82 ;
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
typedef void elevator_registered_fn(struct request_queue * );
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
   elevator_registered_fn *elevator_registered_fn ;
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
   int alloc_policy ;
   int next_tag ;
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
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   atomic_t mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
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
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
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
   struct bdi_writeback *wb ;
   struct inode *inode ;
   int wb_id ;
   int wb_lcand_id ;
   int wb_tcand_id ;
   size_t wb_bytes ;
   size_t wb_lcand_bytes ;
   size_t wb_tcand_bytes ;
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
struct blkcg_policy_data;
struct blkcg {
   struct cgroup_subsys_state css ;
   spinlock_t lock ;
   struct radix_tree_root blkg_tree ;
   struct blkcg_gq *blkg_hint ;
   struct hlist_head blkg_list ;
   struct blkcg_policy_data *pd[2U] ;
   struct list_head cgwb_list ;
};
struct blkg_policy_data {
   struct blkcg_gq *blkg ;
   int plid ;
   struct list_head alloc_node ;
};
struct blkcg_policy_data {
   int plid ;
   struct list_head alloc_node ;
};
struct blkcg_gq {
   struct request_queue *q ;
   struct list_head q_node ;
   struct hlist_node blkcg_node ;
   struct blkcg *blkcg ;
   struct bdi_writeback_congested *wb_congested ;
   struct blkcg_gq *parent ;
   struct request_list rl ;
   atomic_t refcnt ;
   bool online ;
   struct blkg_policy_data *pd[2U] ;
   struct callback_head callback_head ;
};
struct mddev;
struct md_rdev;
struct badblocks {
   int count ;
   int unacked_exist ;
   int shift ;
   u64 *page ;
   int changed ;
   seqlock_t lock ;
   sector_t sector ;
   sector_t size ;
};
struct md_rdev {
   struct list_head same_set ;
   sector_t sectors ;
   struct mddev *mddev ;
   int last_events ;
   struct block_device *meta_bdev ;
   struct block_device *bdev ;
   struct page *sb_page ;
   struct page *bb_page ;
   int sb_loaded ;
   __u64 sb_events ;
   sector_t data_offset ;
   sector_t new_data_offset ;
   sector_t sb_start ;
   int sb_size ;
   int preferred_minor ;
   struct kobject kobj ;
   unsigned long flags ;
   wait_queue_head_t blocked_wait ;
   int desc_nr ;
   int raid_disk ;
   int new_raid_disk ;
   int saved_raid_disk ;
   sector_t recovery_offset ;
   atomic_t nr_pending ;
   atomic_t read_errors ;
   struct timespec last_read_error ;
   atomic_t corrected_errors ;
   struct work_struct del_work ;
   struct kernfs_node *sysfs_state ;
   struct badblocks badblocks ;
};
struct md_cluster_info;
struct md_personality;
struct md_thread;
struct bitmap;
struct __anonstruct_bitmap_info_265 {
   struct file *file ;
   loff_t offset ;
   unsigned long space ;
   loff_t default_offset ;
   unsigned long default_space ;
   struct mutex mutex ;
   unsigned long chunksize ;
   unsigned long daemon_sleep ;
   unsigned long max_write_behind ;
   int external ;
   int nodes ;
   char cluster_name[64U] ;
};
struct mddev {
   void *private ;
   struct md_personality *pers ;
   dev_t unit ;
   int md_minor ;
   struct list_head disks ;
   unsigned long flags ;
   int suspended ;
   atomic_t active_io ;
   int ro ;
   int sysfs_active ;
   int ready ;
   struct gendisk *gendisk ;
   struct kobject kobj ;
   int hold_active ;
   int major_version ;
   int minor_version ;
   int patch_version ;
   int persistent ;
   int external ;
   char metadata_type[17U] ;
   int chunk_sectors ;
   time_t ctime ;
   time_t utime ;
   int level ;
   int layout ;
   char clevel[16U] ;
   int raid_disks ;
   int max_disks ;
   sector_t dev_sectors ;
   sector_t array_sectors ;
   int external_size ;
   __u64 events ;
   int can_decrease_events ;
   char uuid[16U] ;
   sector_t reshape_position ;
   int delta_disks ;
   int new_level ;
   int new_layout ;
   int new_chunk_sectors ;
   int reshape_backwards ;
   struct md_thread *thread ;
   struct md_thread *sync_thread ;
   char *last_sync_action ;
   sector_t curr_resync ;
   sector_t curr_resync_completed ;
   unsigned long resync_mark ;
   sector_t resync_mark_cnt ;
   sector_t curr_mark_cnt ;
   sector_t resync_max_sectors ;
   atomic64_t resync_mismatches ;
   sector_t suspend_lo ;
   sector_t suspend_hi ;
   int sync_speed_min ;
   int sync_speed_max ;
   int parallel_resync ;
   int ok_start_degraded ;
   unsigned long recovery ;
   int recovery_disabled ;
   int in_sync ;
   struct mutex open_mutex ;
   struct mutex reconfig_mutex ;
   atomic_t active ;
   atomic_t openers ;
   int changed ;
   int degraded ;
   int merge_check_needed ;
   atomic_t recovery_active ;
   wait_queue_head_t recovery_wait ;
   sector_t recovery_cp ;
   sector_t resync_min ;
   sector_t resync_max ;
   struct kernfs_node *sysfs_state ;
   struct kernfs_node *sysfs_action ;
   struct work_struct del_work ;
   spinlock_t lock ;
   wait_queue_head_t sb_wait ;
   atomic_t pending_writes ;
   unsigned int safemode ;
   unsigned int safemode_delay ;
   struct timer_list safemode_timer ;
   atomic_t writes_pending ;
   struct request_queue *queue ;
   struct bitmap *bitmap ;
   struct __anonstruct_bitmap_info_265 bitmap_info ;
   atomic_t max_corr_read_errors ;
   struct list_head all_mddevs ;
   struct attribute_group *to_remove ;
   struct bio_set *bio_set ;
   struct bio *flush_bio ;
   atomic_t flush_pending ;
   struct work_struct flush_work ;
   struct work_struct event_work ;
   void (*sync_super)(struct mddev * , struct md_rdev * ) ;
   struct md_cluster_info *cluster_info ;
};
struct md_personality {
   char *name ;
   int level ;
   struct list_head list ;
   struct module *owner ;
   void (*make_request)(struct mddev * , struct bio * ) ;
   int (*run)(struct mddev * ) ;
   void (*free)(struct mddev * , void * ) ;
   void (*status)(struct seq_file * , struct mddev * ) ;
   void (*error_handler)(struct mddev * , struct md_rdev * ) ;
   int (*hot_add_disk)(struct mddev * , struct md_rdev * ) ;
   int (*hot_remove_disk)(struct mddev * , struct md_rdev * ) ;
   int (*spare_active)(struct mddev * ) ;
   sector_t (*sync_request)(struct mddev * , sector_t , int * ) ;
   int (*resize)(struct mddev * , sector_t ) ;
   sector_t (*size)(struct mddev * , sector_t , int ) ;
   int (*check_reshape)(struct mddev * ) ;
   int (*start_reshape)(struct mddev * ) ;
   void (*finish_reshape)(struct mddev * ) ;
   void (*quiesce)(struct mddev * , int ) ;
   void *(*takeover)(struct mddev * ) ;
   int (*congested)(struct mddev * , int ) ;
   int (*mergeable_bvec)(struct mddev * , struct bvec_merge_data * , struct bio_vec * ) ;
};
struct md_thread {
   void (*run)(struct md_thread * ) ;
   struct mddev *mddev ;
   wait_queue_head_t wqueue ;
   unsigned long flags ;
   struct task_struct *tsk ;
   unsigned long timeout ;
   void *private ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_266 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_266 __annonCompField83 ;
   unsigned long nr_segs ;
};
struct r5conf;
struct r5worker_group;
struct disk_info {
   struct md_rdev *rdev ;
   struct md_rdev *replacement ;
};
struct r5worker {
   struct work_struct work ;
   struct r5worker_group *group ;
   struct list_head temp_inactive_list[8U] ;
   bool working ;
};
struct r5worker_group {
   struct list_head handle_list ;
   struct r5conf *conf ;
   struct r5worker *workers ;
   int stripes_cnt ;
};
struct flex_array;
struct raid5_percpu {
   struct page *spare_page ;
   struct flex_array *scribble ;
};
struct r5conf {
   struct hlist_head *stripe_hashtbl ;
   spinlock_t hash_locks[8U] ;
   struct mddev *mddev ;
   int chunk_sectors ;
   int level ;
   int algorithm ;
   int rmw_level ;
   int max_degraded ;
   int raid_disks ;
   int max_nr_stripes ;
   int min_nr_stripes ;
   sector_t reshape_progress ;
   sector_t reshape_safe ;
   int previous_raid_disks ;
   int prev_chunk_sectors ;
   int prev_algo ;
   short generation ;
   seqcount_t gen_lock ;
   unsigned long reshape_checkpoint ;
   long long min_offset_diff ;
   struct list_head handle_list ;
   struct list_head hold_list ;
   struct list_head delayed_list ;
   struct list_head bitmap_list ;
   struct bio *retry_read_aligned ;
   struct bio *retry_read_aligned_list ;
   atomic_t preread_active_stripes ;
   atomic_t active_aligned_reads ;
   atomic_t pending_full_writes ;
   int bypass_count ;
   int bypass_threshold ;
   int skip_copy ;
   struct list_head *last_hold ;
   atomic_t reshape_stripes ;
   int active_name ;
   char cache_name[2U][32U] ;
   struct kmem_cache *slab_cache ;
   int seq_flush ;
   int seq_write ;
   int quiesce ;
   int fullsync ;
   int recovery_disabled ;
   struct raid5_percpu *percpu ;
   struct notifier_block cpu_notify ;
   atomic_t active_stripes ;
   struct list_head inactive_list[8U] ;
   atomic_t empty_inactive_list_nr ;
   struct llist_head released_stripes ;
   wait_queue_head_t wait_for_quiescent ;
   wait_queue_head_t wait_for_stripe[8U] ;
   wait_queue_head_t wait_for_overlap ;
   unsigned long cache_state ;
   struct shrinker shrinker ;
   int pool_size ;
   spinlock_t device_lock ;
   struct disk_info *disks ;
   struct md_thread *thread ;
   struct list_head temp_inactive_list[8U] ;
   struct r5worker_group *worker_groups ;
   int group_cnt ;
   int worker_cnt_per_group ;
};
struct bitmap_page {
   char *map ;
   unsigned char hijacked : 1 ;
   unsigned char pending : 1 ;
   unsigned int count : 30 ;
};
struct bitmap_counts {
   spinlock_t lock ;
   struct bitmap_page *bp ;
   unsigned long pages ;
   unsigned long missing_pages ;
   unsigned long chunkshift ;
   unsigned long chunks ;
};
struct bitmap_storage {
   struct file *file ;
   struct page *sb_page ;
   struct page **filemap ;
   unsigned long *filemap_attr ;
   unsigned long file_pages ;
   unsigned long bytes ;
};
struct bitmap {
   struct bitmap_counts counts ;
   struct mddev *mddev ;
   __u64 events_cleared ;
   int need_sync ;
   struct bitmap_storage storage ;
   unsigned long flags ;
   int allclean ;
   atomic_t behind_writes ;
   unsigned long behind_writes_used ;
   unsigned long daemon_lastrun ;
   unsigned long last_end_sync ;
   atomic_t pending_writes ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t overflow_wait ;
   wait_queue_head_t behind_wait ;
   struct kernfs_node *sysfs_can_clear ;
   int cluster_slot ;
};
struct dm_dev;
struct dm_table;
enum ldv_26601 {
    STATUSTYPE_INFO = 0,
    STATUSTYPE_TABLE = 1
} ;
typedef enum ldv_26601 status_type_t;
union map_info {
   void *ptr ;
};
struct dm_dev {
   struct block_device *bdev ;
   fmode_t mode ;
   char name[16U] ;
};
struct target_type {
   uint64_t features ;
   char const *name ;
   struct module *module ;
   unsigned int version[3U] ;
   int (*ctr)(struct dm_target * , unsigned int , char ** ) ;
   void (*dtr)(struct dm_target * ) ;
   int (*map)(struct dm_target * , struct bio * ) ;
   int (*map_rq)(struct dm_target * , struct request * , union map_info * ) ;
   int (*clone_and_map_rq)(struct dm_target * , struct request * , union map_info * ,
                           struct request ** ) ;
   void (*release_clone_rq)(struct request * ) ;
   int (*end_io)(struct dm_target * , struct bio * , int ) ;
   int (*rq_end_io)(struct dm_target * , struct request * , int , union map_info * ) ;
   void (*presuspend)(struct dm_target * ) ;
   void (*presuspend_undo)(struct dm_target * ) ;
   void (*postsuspend)(struct dm_target * ) ;
   int (*preresume)(struct dm_target * ) ;
   void (*resume)(struct dm_target * ) ;
   void (*status)(struct dm_target * , status_type_t , unsigned int , char * , unsigned int ) ;
   int (*message)(struct dm_target * , unsigned int , char ** ) ;
   int (*ioctl)(struct dm_target * , unsigned int , unsigned long ) ;
   int (*merge)(struct dm_target * , struct bvec_merge_data * , struct bio_vec * ,
                int ) ;
   int (*busy)(struct dm_target * ) ;
   int (*iterate_devices)(struct dm_target * , int (*)(struct dm_target * , struct dm_dev * ,
                                                       sector_t , sector_t , void * ) ,
                          void * ) ;
   void (*io_hints)(struct dm_target * , struct queue_limits * ) ;
   struct list_head list ;
};
struct dm_target {
   struct dm_table *table ;
   struct target_type *type ;
   sector_t begin ;
   sector_t len ;
   uint32_t max_io_len ;
   unsigned int num_flush_bios ;
   unsigned int num_discard_bios ;
   unsigned int num_write_same_bios ;
   unsigned int per_bio_data_size ;
   unsigned int (*num_write_bios)(struct dm_target * , struct bio * ) ;
   void *private ;
   char *error ;
   bool flush_supported ;
   bool discards_supported ;
   bool split_discard_bios ;
   bool discard_zeroes_data_unsupported ;
};
struct dm_target_callbacks {
   struct list_head list ;
   int (*congested_fn)(struct dm_target_callbacks * , int ) ;
};
struct raid_dev {
   struct dm_dev *meta_dev ;
   struct dm_dev *data_dev ;
   struct md_rdev rdev ;
};
struct raid_type;
struct raid_set {
   struct dm_target *ti ;
   uint32_t bitmap_loaded ;
   uint32_t ctr_flags ;
   struct mddev md ;
   struct raid_type *raid_type ;
   struct dm_target_callbacks callbacks ;
   struct raid_dev dev[0U] ;
};
struct raid_type {
   char const *name ;
   char const *descr ;
   unsigned int const parity_devs ;
   unsigned int const minimal_devs ;
   unsigned int const level ;
   unsigned int const algorithm ;
};
struct dm_raid_superblock {
   __le32 magic ;
   __le32 features ;
   __le32 num_devices ;
   __le32 array_position ;
   __le64 events ;
   __le64 failed_devices ;
   __le64 disk_recovery_offset ;
   __le64 array_resync_offset ;
   __le32 level ;
   __le32 layout ;
   __le32 stripe_sectors ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___6;
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
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 4*32+23)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6651:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int printk(char const * , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
extern int scnprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
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
extern void *memset(void * , int , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern int strcasecmp(char const * , char const * ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
__inline static long atomic64_read(atomic64_t const *v )
{
  long __var ;
  {
  __var = 0L;
  return ((long )*((long const volatile *)(& v->counter)));
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_20(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
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
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_17(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(struct mutex *lock ) ;
void ldv_mutex_lock_reconfig_mutex_of_mddev(struct mutex *lock ) ;
int ldv_mutex_trylock_reconfig_mutex_of_mddev(struct mutex *lock ) ;
extern void __init_work(struct work_struct * , int ) ;
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
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void kfree(void const * ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
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
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct work_struct *ldv_work_struct_1_2 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
int ldv_state_variable_0 ;
int ldv_work_1_1 ;
int ldv_state_variable_2 ;
int ref_cnt ;
struct dm_target *raid_target_group1 ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_work_1_2 ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_target_type_2(void) ;
void disable_work_1(struct work_struct *work ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void work_init_1(void) ;
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static struct request_queue *bdev_get_queue(struct block_device *bdev )
{
  {
  return ((bdev->bd_disk)->queue);
}
}
extern void blk_limits_io_min(struct queue_limits * , unsigned int ) ;
extern void blk_limits_io_opt(struct queue_limits * , unsigned int ) ;
__inline static unsigned short queue_logical_block_size(struct request_queue *q )
{
  int retval ;
  {
  retval = 512;
  if ((unsigned long )q != (unsigned long )((struct request_queue *)0) && (unsigned int )q->limits.logical_block_size != 0U) {
    retval = (int )q->limits.logical_block_size;
  } else {
  }
  return ((unsigned short )retval);
}
}
__inline static unsigned short bdev_logical_block_size(struct block_device *bdev )
{
  struct request_queue *tmp ;
  unsigned short tmp___0 ;
  {
  tmp = bdev_get_queue(bdev);
  tmp___0 = queue_logical_block_size(tmp);
  return (tmp___0);
}
}
__inline static void mddev_lock_nointr(struct mddev *mddev )
{
  {
  ldv_mutex_lock_18(& mddev->reconfig_mutex);
  return;
}
}
extern void mddev_unlock(struct mddev * ) ;
extern void md_wakeup_thread(struct md_thread * ) ;
extern void md_reap_sync_thread(struct mddev * ) ;
extern void md_error(struct mddev * , struct md_rdev * ) ;
extern int mddev_congested(struct mddev * , int ) ;
extern int sync_page_io(struct md_rdev * , sector_t , int , struct page * , int ,
                        bool ) ;
extern void mddev_init(struct mddev * ) ;
extern int md_run(struct mddev * ) ;
extern void md_stop(struct mddev * ) ;
extern void md_stop_writes(struct mddev * ) ;
extern int md_rdev_init(struct md_rdev * ) ;
extern void md_rdev_clear(struct md_rdev * ) ;
extern void mddev_suspend(struct mddev * ) ;
extern void mddev_resume(struct mddev * ) ;
extern int raid5_set_cache_size(struct mddev * , int ) ;
extern int bitmap_load(struct mddev * ) ;
extern int dm_get_device(struct dm_target * , char const * , fmode_t , struct dm_dev ** ) ;
extern void dm_put_device(struct dm_target * , struct dm_dev * ) ;
extern int dm_register_target(struct target_type * ) ;
extern void dm_unregister_target(struct target_type * ) ;
extern void dm_table_add_target_callbacks(struct dm_table * , struct dm_target_callbacks * ) ;
extern int dm_set_target_max_io_len(struct dm_target * , sector_t ) ;
extern fmode_t dm_table_get_mode(struct dm_table * ) ;
extern void dm_table_event(struct dm_table * ) ;
__inline static sector_t to_sector(unsigned long n )
{
  {
  return (n >> 9);
}
}
static bool devices_handle_discard_safely = 0;
static struct raid_type raid_types[11U] =
  { {"raid0", "RAID0 (striping)", 0U, 2U, 0U, 0U},
        {"raid1", "RAID1 (mirroring)", 0U, 2U, 1U, 0U},
        {"raid10", "RAID10 (striped mirrors)", 0U, 2U, 10U, 4294967295U},
        {"raid4", "RAID4 (dedicated parity disk)", 1U, 2U, 5U, 4U},
        {"raid5_la", "RAID5 (left asymmetric)", 1U, 2U, 5U, 0U},
        {"raid5_ra", "RAID5 (right asymmetric)", 1U, 2U, 5U, 1U},
        {"raid5_ls", "RAID5 (left symmetric)", 1U, 2U, 5U, 2U},
        {"raid5_rs", "RAID5 (right symmetric)", 1U, 2U, 5U, 3U},
        {"raid6_zr", "RAID6 (zero restart)", 2U, 4U, 6U, 8U},
        {"raid6_nr", "RAID6 (N restart)", 2U, 4U, 6U, 9U},
        {"raid6_nc", "RAID6 (N continue)", 2U, 4U, 6U, 10U}};
static char *raid10_md_layout_to_format(int layout )
{
  {
  if ((layout & 65536) != 0 && (layout & 131072) != 0) {
    return ((char *)"offset");
  } else {
  }
  if ((layout & 255) > 1) {
    return ((char *)"near");
  } else {
  }
  return ((char *)"far");
}
}
static unsigned int raid10_md_layout_to_copies(int layout )
{
  {
  if ((layout & 255) > 1) {
    return ((unsigned int )layout & 255U);
  } else {
  }
  return ((unsigned int )(layout >> 8) & 255U);
}
}
static int raid10_format_to_md_layout(char *format , unsigned int copies )
{
  unsigned int n ;
  unsigned int f ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  n = 1U;
  f = 1U;
  tmp = strcasecmp("near", (char const *)format);
  if (tmp == 0) {
    n = copies;
  } else {
    f = copies;
  }
  tmp___0 = strcasecmp("offset", (char const *)format);
  if (tmp___0 == 0) {
    return ((int )(((f << 8) | n) | 196608U));
  } else {
  }
  tmp___1 = strcasecmp("far", (char const *)format);
  if (tmp___1 == 0) {
    return ((int )(((f << 8) | n) | 131072U));
  } else {
  }
  return ((int )((f << 8) | n));
}
}
static struct raid_type *get_raid_type(char *name )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_35694;
  ldv_35693:
  tmp = strcmp(raid_types[i].name, (char const *)name);
  if (tmp == 0) {
    return ((struct raid_type *)(& raid_types) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_35694: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_35693;
  } else {
  }
  return ((struct raid_type *)0);
}
}
static struct raid_set *context_alloc(struct dm_target *ti , struct raid_type *raid_type ,
                                      unsigned int raid_devs )
{
  unsigned int i ;
  struct raid_set *rs ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  if ((unsigned int )raid_type->parity_devs >= raid_devs) {
    ti->error = (char *)"Insufficient number of devices";
    tmp = ERR_PTR(-22L);
    return ((struct raid_set *)tmp);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )raid_devs * 848UL + 2144UL, 208U);
  rs = (struct raid_set *)tmp___0;
  if ((unsigned long )rs == (unsigned long )((struct raid_set *)0)) {
    ti->error = (char *)"Cannot allocate raid context";
    tmp___1 = ERR_PTR(-12L);
    return ((struct raid_set *)tmp___1);
  } else {
  }
  mddev_init(& rs->md);
  rs->ti = ti;
  rs->raid_type = raid_type;
  rs->md.raid_disks = (int )raid_devs;
  rs->md.level = (int )raid_type->level;
  rs->md.new_level = rs->md.level;
  rs->md.layout = (int )raid_type->algorithm;
  rs->md.new_layout = rs->md.layout;
  rs->md.delta_disks = 0;
  rs->md.recovery_cp = 0UL;
  i = 0U;
  goto ldv_35704;
  ldv_35703:
  md_rdev_init(& rs->dev[i].rdev);
  i = i + 1U;
  ldv_35704: ;
  if (i < raid_devs) {
    goto ldv_35703;
  } else {
  }
  return (rs);
}
}
static void context_free(struct raid_set *rs )
{
  int i ;
  {
  i = 0;
  goto ldv_35711;
  ldv_35710: ;
  if ((unsigned long )rs->dev[i].meta_dev != (unsigned long )((struct dm_dev *)0)) {
    dm_put_device(rs->ti, rs->dev[i].meta_dev);
  } else {
  }
  md_rdev_clear(& rs->dev[i].rdev);
  if ((unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    dm_put_device(rs->ti, rs->dev[i].data_dev);
  } else {
  }
  i = i + 1;
  ldv_35711: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35710;
  } else {
  }
  kfree((void const *)rs);
  return;
}
}
static int dev_parms(struct raid_set *rs , char **argv )
{
  int i ;
  int rebuild ;
  int metadata_available ;
  int ret ;
  fmode_t tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  fmode_t tmp___3 ;
  int tmp___4 ;
  {
  rebuild = 0;
  metadata_available = 0;
  ret = 0;
  i = 0;
  goto ldv_35723;
  ldv_35722:
  rs->dev[i].rdev.raid_disk = i;
  rs->dev[i].meta_dev = (struct dm_dev *)0;
  rs->dev[i].data_dev = (struct dm_dev *)0;
  rs->dev[i].rdev.data_offset = 0UL;
  rs->dev[i].rdev.mddev = & rs->md;
  tmp___0 = strcmp((char const *)*argv, "-");
  if (tmp___0 != 0) {
    tmp = dm_table_get_mode((rs->ti)->table);
    ret = dm_get_device(rs->ti, (char const *)*argv, tmp, & rs->dev[i].meta_dev);
    (rs->ti)->error = (char *)"RAID metadata device lookup failure";
    if (ret != 0) {
      return (ret);
    } else {
    }
    rs->dev[i].rdev.sb_page = alloc_pages(208U, 0U);
    if ((unsigned long )rs->dev[i].rdev.sb_page == (unsigned long )((struct page *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  tmp___2 = strcmp((char const *)*(argv + 1UL), "-");
  if (tmp___2 == 0) {
    tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___1 == 0 && rs->dev[i].rdev.recovery_offset == 0UL) {
      (rs->ti)->error = (char *)"Drive designated for rebuild not specified";
      return (-22);
    } else {
    }
    (rs->ti)->error = (char *)"No data device supplied with metadata device";
    if ((unsigned long )rs->dev[i].meta_dev != (unsigned long )((struct dm_dev *)0)) {
      return (-22);
    } else {
    }
    goto ldv_35721;
  } else {
  }
  tmp___3 = dm_table_get_mode((rs->ti)->table);
  ret = dm_get_device(rs->ti, (char const *)*(argv + 1UL), tmp___3, & rs->dev[i].data_dev);
  if (ret != 0) {
    (rs->ti)->error = (char *)"RAID device lookup failure";
    return (ret);
  } else {
  }
  if ((unsigned long )rs->dev[i].meta_dev != (unsigned long )((struct dm_dev *)0)) {
    metadata_available = 1;
    rs->dev[i].rdev.meta_bdev = (rs->dev[i].meta_dev)->bdev;
  } else {
  }
  rs->dev[i].rdev.bdev = (rs->dev[i].data_dev)->bdev;
  list_add(& rs->dev[i].rdev.same_set, & rs->md.disks);
  tmp___4 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
  if (tmp___4 == 0) {
    rebuild = rebuild + 1;
  } else {
  }
  ldv_35721:
  i = i + 1;
  argv = argv + 2UL;
  ldv_35723: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35722;
  } else {
  }
  if (metadata_available != 0) {
    rs->md.external = 0;
    rs->md.persistent = 1;
    rs->md.major_version = 2;
  } else
  if (rebuild != 0 && rs->md.recovery_cp == 0UL) {
    printk("\vdevice-mapper: raid: Unable to rebuild drive while array is not in-sync\n");
    (rs->ti)->error = (char *)"RAID device lookup failure";
    return (-22);
  } else {
  }
  return (0);
}
}
static int validate_region_size(struct raid_set *rs , unsigned long region_size )
{
  unsigned long min_region_size ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  min_region_size = (rs->ti)->len / 2097152UL;
  if (region_size == 0UL) {
    if (min_region_size > 8192UL) {
      if (((min_region_size - 1UL) & min_region_size) != 0UL) {
        tmp = fls((int )region_size);
        region_size = (unsigned long )(1 << tmp);
      } else {
      }
      printk("\016device-mapper: raid: Choosing default region size of %lu sectors\n",
             region_size);
    } else {
      printk("\016device-mapper: raid: Choosing default region size of 4MiB\n");
      region_size = 8192UL;
    }
  } else {
    if ((rs->ti)->len < region_size) {
      (rs->ti)->error = (char *)"Supplied region size is too large";
      return (-22);
    } else {
    }
    if (region_size < min_region_size) {
      printk("\vdevice-mapper: raid: Supplied region_size (%lu sectors) below minimum (%lu)\n",
             region_size, min_region_size);
      (rs->ti)->error = (char *)"Supplied region size is too small";
      return (-22);
    } else {
    }
    tmp___0 = is_power_of_2(region_size);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      (rs->ti)->error = (char *)"Region size is not a power of 2";
      return (-22);
    } else {
    }
    if ((unsigned long )rs->md.chunk_sectors > region_size) {
      (rs->ti)->error = (char *)"Region size is smaller than the chunk size";
      return (-22);
    } else {
    }
  }
  rs->md.bitmap_info.chunksize = region_size << 9;
  return (0);
}
}
static int validate_raid_redundancy(struct raid_set *rs )
{
  unsigned int i ;
  unsigned int rebuild_cnt ;
  unsigned int rebuilds_per_group ;
  unsigned int copies ;
  unsigned int d ;
  unsigned int group_size ;
  unsigned int last_group_start ;
  int tmp ;
  int tmp___0 ;
  char *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  rebuild_cnt = 0U;
  rebuilds_per_group = 0U;
  i = 0U;
  goto ldv_35741;
  ldv_35740:
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
  if (tmp == 0 || (unsigned long )rs->dev[i].rdev.sb_page == (unsigned long )((struct page *)0)) {
    rebuild_cnt = rebuild_cnt + 1U;
  } else {
  }
  i = i + 1U;
  ldv_35741: ;
  if ((unsigned int )rs->md.raid_disks > i) {
    goto ldv_35740;
  } else {
  }
  switch ((rs->raid_type)->level) {
  case 1U: ;
  if ((unsigned int )rs->md.raid_disks <= rebuild_cnt) {
    goto too_many;
  } else {
  }
  goto ldv_35745;
  case 4U: ;
  case 5U: ;
  case 6U: ;
  if ((unsigned int )(rs->raid_type)->parity_devs < rebuild_cnt) {
    goto too_many;
  } else {
  }
  goto ldv_35745;
  case 10U:
  copies = raid10_md_layout_to_copies(rs->md.layout);
  if (rebuild_cnt < copies) {
    goto ldv_35745;
  } else {
  }
  tmp___1 = raid10_md_layout_to_format(rs->md.layout);
  tmp___2 = strcmp("near", (char const *)tmp___1);
  if (tmp___2 == 0) {
    i = 0U;
    goto ldv_35751;
    ldv_35750: ;
    if (i % copies == 0U) {
      rebuilds_per_group = 0U;
    } else {
    }
    d = i % (unsigned int )rs->md.raid_disks;
    if ((unsigned long )rs->dev[d].rdev.sb_page == (unsigned long )((struct page *)0)) {
      goto _L;
    } else {
      tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[d].rdev.flags));
      if (tmp___0 == 0) {
        _L:
        rebuilds_per_group = rebuilds_per_group + 1U;
        if (rebuilds_per_group >= copies) {
          goto too_many;
        } else {
        }
      } else {
      }
    }
    i = i + 1U;
    ldv_35751: ;
    if ((unsigned int )rs->md.raid_disks * copies > i) {
      goto ldv_35750;
    } else {
    }
    goto ldv_35745;
  } else {
  }
  group_size = (unsigned int )rs->md.raid_disks / copies;
  last_group_start = (unsigned int )rs->md.raid_disks / group_size - 1U;
  last_group_start = last_group_start * group_size;
  i = 0U;
  goto ldv_35754;
  ldv_35753: ;
  if (i % copies == 0U && i <= last_group_start) {
    rebuilds_per_group = 0U;
  } else {
  }
  if ((unsigned long )rs->dev[i].rdev.sb_page == (unsigned long )((struct page *)0)) {
    goto _L___0;
  } else {
    tmp___3 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___3 == 0) {
      _L___0:
      rebuilds_per_group = rebuilds_per_group + 1U;
      if (rebuilds_per_group >= copies) {
        goto too_many;
      } else {
      }
    } else {
    }
  }
  i = i + 1U;
  ldv_35754: ;
  if ((unsigned int )rs->md.raid_disks > i) {
    goto ldv_35753;
  } else {
  }
  goto ldv_35745;
  default: ;
  if (rebuild_cnt != 0U) {
    return (-22);
  } else {
  }
  }
  ldv_35745: ;
  return (0);
  too_many: ;
  return (-22);
}
}
static int parse_raid_params(struct raid_set *rs , char **argv , unsigned int num_raid_params )
{
  char *raid10_format ;
  unsigned int raid10_copies ;
  unsigned int i ;
  unsigned long value ;
  unsigned long region_size ;
  sector_t sectors_per_dev ;
  sector_t max_io_len ;
  char *key ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
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
  int _res ;
  int _res___0 ;
  {
  raid10_format = (char *)"near";
  raid10_copies = 2U;
  region_size = 0UL;
  sectors_per_dev = (rs->ti)->len;
  tmp___1 = kstrtoul((char const *)*argv, 10U, & value);
  if (tmp___1 < 0) {
    (rs->ti)->error = (char *)"Bad chunk size";
    return (-22);
  } else
  if ((unsigned int )(rs->raid_type)->level == 1U) {
    if (value != 0UL) {
      printk("\vdevice-mapper: raid: Ignoring chunk size parameter for RAID 1\n");
    } else {
    }
    value = 0UL;
  } else {
    tmp = is_power_of_2(value);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      (rs->ti)->error = (char *)"Chunk size must be a power of 2";
      return (-22);
    } else
    if (value <= 7UL) {
      (rs->ti)->error = (char *)"Chunk size value is too small";
      return (-22);
    } else {
    }
  }
  tmp___2 = (int )value;
  rs->md.chunk_sectors = tmp___2;
  rs->md.new_chunk_sectors = tmp___2;
  argv = argv + 1;
  num_raid_params = num_raid_params - 1U;
  i = 0U;
  goto ldv_35771;
  ldv_35770:
  set_bit(1L, (unsigned long volatile *)(& rs->dev[i].rdev.flags));
  rs->dev[i].rdev.recovery_offset = 0xffffffffffffffffUL;
  i = i + 1U;
  ldv_35771: ;
  if ((unsigned int )rs->md.raid_disks > i) {
    goto ldv_35770;
  } else {
  }
  i = 0U;
  goto ldv_35775;
  ldv_35774:
  tmp___3 = strcasecmp((char const *)*(argv + (unsigned long )i), "nosync");
  if (tmp___3 == 0) {
    rs->md.recovery_cp = 0xffffffffffffffffUL;
    rs->ctr_flags = rs->ctr_flags | 2U;
    goto ldv_35773;
  } else {
  }
  tmp___4 = strcasecmp((char const *)*(argv + (unsigned long )i), "sync");
  if (tmp___4 == 0) {
    rs->md.recovery_cp = 0UL;
    rs->ctr_flags = rs->ctr_flags | 1U;
    goto ldv_35773;
  } else {
  }
  if (i + 1U >= num_raid_params) {
    (rs->ti)->error = (char *)"Wrong number of raid parameters given";
    return (-22);
  } else {
  }
  tmp___5 = i;
  i = i + 1U;
  key = *(argv + (unsigned long )tmp___5);
  tmp___9 = strcasecmp((char const *)key, "raid10_format");
  if (tmp___9 == 0) {
    if ((unsigned int )(rs->raid_type)->level != 10U) {
      (rs->ti)->error = (char *)"\'raid10_format\' is an invalid parameter for this RAID type";
      return (-22);
    } else {
    }
    tmp___6 = strcmp("near", (char const *)*(argv + (unsigned long )i));
    if (tmp___6 != 0) {
      tmp___7 = strcmp("far", (char const *)*(argv + (unsigned long )i));
      if (tmp___7 != 0) {
        tmp___8 = strcmp("offset", (char const *)*(argv + (unsigned long )i));
        if (tmp___8 != 0) {
          (rs->ti)->error = (char *)"Invalid \'raid10_format\' value given";
          return (-22);
        } else {
        }
      } else {
      }
    } else {
    }
    raid10_format = *(argv + (unsigned long )i);
    rs->ctr_flags = rs->ctr_flags | 1024U;
    goto ldv_35773;
  } else {
  }
  tmp___10 = kstrtoul((char const *)*(argv + (unsigned long )i), 10U, & value);
  if (tmp___10 < 0) {
    (rs->ti)->error = (char *)"Bad numerical argument given in raid params";
    return (-22);
  } else {
  }
  tmp___20 = strcasecmp((char const *)key, "rebuild");
  if (tmp___20 == 0) {
    if ((unsigned long )rs->md.raid_disks <= value) {
      (rs->ti)->error = (char *)"Invalid rebuild index given";
      return (-22);
    } else {
    }
    clear_bit(1L, (unsigned long volatile *)(& rs->dev[value].rdev.flags));
    rs->dev[value].rdev.recovery_offset = 0UL;
    rs->ctr_flags = rs->ctr_flags | 4U;
  } else {
    tmp___19 = strcasecmp((char const *)key, "write_mostly");
    if (tmp___19 == 0) {
      if ((unsigned int )(rs->raid_type)->level != 1U) {
        (rs->ti)->error = (char *)"write_mostly option is only valid for RAID1";
        return (-22);
      } else {
      }
      if ((unsigned long )rs->md.raid_disks <= value) {
        (rs->ti)->error = (char *)"Invalid write_mostly drive index given";
        return (-22);
      } else {
      }
      set_bit(4L, (unsigned long volatile *)(& rs->dev[value].rdev.flags));
    } else {
      tmp___18 = strcasecmp((char const *)key, "max_write_behind");
      if (tmp___18 == 0) {
        if ((unsigned int )(rs->raid_type)->level != 1U) {
          (rs->ti)->error = (char *)"max_write_behind option is only valid for RAID1";
          return (-22);
        } else {
        }
        rs->ctr_flags = rs->ctr_flags | 64U;
        value = value / 2UL;
        if (value > 16383UL) {
          (rs->ti)->error = (char *)"Max write-behind limit out of range";
          return (-22);
        } else {
        }
        rs->md.bitmap_info.max_write_behind = value;
      } else {
        tmp___17 = strcasecmp((char const *)key, "daemon_sleep");
        if (tmp___17 == 0) {
          rs->ctr_flags = rs->ctr_flags | 8U;
          if (value == 0UL || (long )value < 0L) {
            (rs->ti)->error = (char *)"daemon sleep period out of range";
            return (-22);
          } else {
          }
          rs->md.bitmap_info.daemon_sleep = value;
        } else {
          tmp___16 = strcasecmp((char const *)key, "stripe_cache");
          if (tmp___16 == 0) {
            rs->ctr_flags = rs->ctr_flags | 128U;
            value = value / 2UL;
            if ((unsigned int )(rs->raid_type)->level != 5U && (unsigned int )(rs->raid_type)->level != 6U) {
              (rs->ti)->error = (char *)"Inappropriate argument: stripe_cache";
              return (-22);
            } else {
            }
            tmp___11 = raid5_set_cache_size(& rs->md, (int )value);
            if (tmp___11 != 0) {
              (rs->ti)->error = (char *)"Bad stripe_cache size";
              return (-22);
            } else {
            }
          } else {
            tmp___15 = strcasecmp((char const *)key, "min_recovery_rate");
            if (tmp___15 == 0) {
              rs->ctr_flags = rs->ctr_flags | 16U;
              if (value > 2147483647UL) {
                (rs->ti)->error = (char *)"min_recovery_rate out of range";
                return (-22);
              } else {
              }
              rs->md.sync_speed_min = (int )value;
            } else {
              tmp___14 = strcasecmp((char const *)key, "max_recovery_rate");
              if (tmp___14 == 0) {
                rs->ctr_flags = rs->ctr_flags | 32U;
                if (value > 2147483647UL) {
                  (rs->ti)->error = (char *)"max_recovery_rate out of range";
                  return (-22);
                } else {
                }
                rs->md.sync_speed_max = (int )value;
              } else {
                tmp___13 = strcasecmp((char const *)key, "region_size");
                if (tmp___13 == 0) {
                  rs->ctr_flags = rs->ctr_flags | 256U;
                  region_size = value;
                } else {
                  tmp___12 = strcasecmp((char const *)key, "raid10_copies");
                  if (tmp___12 == 0 && (unsigned int )(rs->raid_type)->level == 10U) {
                    if (value <= 1UL || value > 255UL) {
                      (rs->ti)->error = (char *)"Bad value for \'raid10_copies\'";
                      return (-22);
                    } else {
                    }
                    rs->ctr_flags = rs->ctr_flags | 512U;
                    raid10_copies = (unsigned int )value;
                  } else {
                    printk("\vdevice-mapper: raid: Unable to parse RAID parameter: %s\n",
                           key);
                    (rs->ti)->error = (char *)"Unable to parse RAID parameters";
                    return (-22);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  ldv_35773:
  i = i + 1U;
  ldv_35775: ;
  if (i < num_raid_params) {
    goto ldv_35774;
  } else {
  }
  tmp___21 = validate_region_size(rs, region_size);
  if (tmp___21 != 0) {
    return (-22);
  } else {
  }
  if (rs->md.chunk_sectors != 0) {
    max_io_len = (sector_t )rs->md.chunk_sectors;
  } else {
    max_io_len = region_size;
  }
  tmp___22 = dm_set_target_max_io_len(rs->ti, max_io_len);
  if (tmp___22 != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )(rs->raid_type)->level == 10U) {
    if ((unsigned int )rs->md.raid_disks < raid10_copies) {
      (rs->ti)->error = (char *)"Not enough devices to satisfy specification";
      return (-22);
    } else {
    }
    tmp___23 = strcmp("near", (char const *)raid10_format);
    if (tmp___23 != 0 && raid10_copies > 2U) {
      (rs->ti)->error = (char *)"Too many copies for given RAID10 format.";
      return (-22);
    } else {
    }
    sectors_per_dev = (rs->ti)->len * (sector_t )raid10_copies;
    _res = (int )(sectors_per_dev % (sector_t )rs->md.raid_disks);
    sectors_per_dev = sectors_per_dev / (sector_t )rs->md.raid_disks;
    rs->md.layout = raid10_format_to_md_layout(raid10_format, raid10_copies);
    rs->md.new_layout = rs->md.layout;
  } else
  if ((unsigned int )(rs->raid_type)->level == 0U || (unsigned int )(rs->raid_type)->level > 1U) {
    _res___0 = (int )(sectors_per_dev % (sector_t )((unsigned int )rs->md.raid_disks - (unsigned int )(rs->raid_type)->parity_devs));
    sectors_per_dev = sectors_per_dev / (sector_t )((unsigned int )rs->md.raid_disks - (unsigned int )(rs->raid_type)->parity_devs);
    if (_res___0 != 0) {
      (rs->ti)->error = (char *)"Target length not divisible by number of data devices";
      return (-22);
    } else {
    }
  } else {
  }
  rs->md.dev_sectors = sectors_per_dev;
  rs->md.persistent = 0;
  rs->md.external = 1;
  return (0);
}
}
static void do_table_event(struct work_struct *ws )
{
  struct raid_set *rs ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)ws;
  rs = (struct raid_set *)__mptr + 0xfffffffffffff820UL;
  dm_table_event((rs->ti)->table);
  return;
}
}
static int raid_is_congested(struct dm_target_callbacks *cb , int bits )
{
  struct raid_set *rs ;
  struct dm_target_callbacks const *__mptr ;
  int tmp ;
  {
  __mptr = (struct dm_target_callbacks const *)cb;
  rs = (struct raid_set *)__mptr + 0xfffffffffffff7b8UL;
  tmp = mddev_congested(& rs->md, bits);
  return (tmp);
}
}
static int read_disk_sb(struct md_rdev *rdev , int size )
{
  long tmp ;
  int tmp___0 ;
  {
  tmp = ldv__builtin_expect((unsigned long )rdev->sb_page == (unsigned long )((struct page *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/988/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-raid.c"),
                         "i" (791), "i" (12UL));
    ldv_35810: ;
    goto ldv_35810;
  } else {
  }
  if (rdev->sb_loaded != 0) {
    return (0);
  } else {
  }
  tmp___0 = sync_page_io(rdev, 0UL, size, rdev->sb_page, 0, 1);
  if (tmp___0 == 0) {
    printk("\vdevice-mapper: raid: Failed to read superblock of device at position %d\n",
           rdev->raid_disk);
    md_error(rdev->mddev, rdev);
    return (-22);
  } else {
  }
  rdev->sb_loaded = 1;
  return (0);
}
}
static void super_sync(struct mddev *mddev , struct md_rdev *rdev )
{
  int i ;
  uint64_t failed_devices ;
  struct dm_raid_superblock *sb ;
  struct raid_set *rs ;
  struct mddev const *__mptr ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct mddev const *)mddev;
  rs = (struct raid_set *)__mptr + 0xfffffffffffffff0UL;
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct dm_raid_superblock *)tmp;
  failed_devices = sb->failed_devices;
  i = 0;
  goto ldv_35822;
  ldv_35821: ;
  if ((unsigned long )rs->dev[i].data_dev == (unsigned long )((struct dm_dev *)0)) {
    failed_devices = (1ULL << i) | failed_devices;
  } else {
    tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___0 != 0) {
      failed_devices = (1ULL << i) | failed_devices;
    } else {
    }
  }
  i = i + 1;
  ldv_35822: ;
  if (mddev->raid_disks > i) {
    goto ldv_35821;
  } else {
  }
  memset((void *)sb + 1U, 0, (unsigned long )rdev->sb_size - 60UL);
  sb->magic = 1683123524U;
  sb->features = 0U;
  sb->num_devices = (unsigned int )mddev->raid_disks;
  sb->array_position = (unsigned int )rdev->raid_disk;
  sb->events = mddev->events;
  sb->failed_devices = failed_devices;
  sb->disk_recovery_offset = (unsigned long long )rdev->recovery_offset;
  sb->array_resync_offset = (unsigned long long )mddev->recovery_cp;
  sb->level = (unsigned int )mddev->level;
  sb->layout = (unsigned int )mddev->layout;
  sb->stripe_sectors = (unsigned int )mddev->chunk_sectors;
  return;
}
}
static int super_load(struct md_rdev *rdev , struct md_rdev *refdev )
{
  int ret ;
  struct dm_raid_superblock *sb ;
  struct dm_raid_superblock *refsb ;
  uint64_t events_sb ;
  uint64_t events_refsb ;
  unsigned short tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  rdev->sb_start = 0UL;
  tmp = bdev_logical_block_size(rdev->meta_bdev);
  rdev->sb_size = (int )tmp;
  if ((unsigned int )rdev->sb_size <= 59U || (unsigned int )rdev->sb_size > 4096U) {
    printk("\vdevice-mapper: raid: superblock size of a logical block is no longer valid\n");
    return (-22);
  } else {
  }
  ret = read_disk_sb(rdev, rdev->sb_size);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___0 = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct dm_raid_superblock *)tmp___0;
  if (sb->magic != 1683123524U) {
    super_sync(rdev->mddev, rdev);
    set_bit(10L, (unsigned long volatile *)(& rdev->flags));
    set_bit(0L, (unsigned long volatile *)(& (rdev->mddev)->flags));
    return ((unsigned long )refdev == (unsigned long )((struct md_rdev *)0));
  } else {
    tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___1 == 0 && rdev->recovery_offset == 0UL) {
      super_sync(rdev->mddev, rdev);
      set_bit(10L, (unsigned long volatile *)(& rdev->flags));
      set_bit(0L, (unsigned long volatile *)(& (rdev->mddev)->flags));
      return ((unsigned long )refdev == (unsigned long )((struct md_rdev *)0));
    } else {
    }
  }
  if ((unsigned long )refdev == (unsigned long )((struct md_rdev *)0)) {
    return (1);
  } else {
  }
  events_sb = sb->events;
  tmp___2 = lowmem_page_address((struct page const *)refdev->sb_page);
  refsb = (struct dm_raid_superblock *)tmp___2;
  events_refsb = refsb->events;
  return (events_sb > events_refsb);
}
}
static int super_init_validation(struct mddev *mddev , struct md_rdev *rdev )
{
  int role ;
  struct raid_set *rs ;
  struct mddev const *__mptr ;
  uint64_t events_sb ;
  uint64_t failed_devices ;
  struct dm_raid_superblock *sb ;
  uint32_t new_devs ;
  uint32_t rebuilds ;
  struct md_rdev *r ;
  struct dm_raid_superblock *sb2 ;
  void *tmp ;
  unsigned int tmp___0 ;
  char *tmp___1 ;
  unsigned int tmp___2 ;
  char *tmp___3 ;
  struct list_head const *__mptr___0 ;
  int tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  void *tmp___6 ;
  int tmp___7 ;
  struct list_head const *__mptr___3 ;
  {
  __mptr = (struct mddev const *)mddev;
  rs = (struct raid_set *)__mptr + 0xfffffffffffffff0UL;
  new_devs = 0U;
  rebuilds = 0U;
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct dm_raid_superblock *)tmp;
  events_sb = sb->events;
  failed_devices = sb->failed_devices;
  mddev->events = events_sb != 0ULL ? events_sb != 0ULL : 1ULL;
  if (sb->level != (__le32 )mddev->level) {
    printk("\vdevice-mapper: raid: Reshaping arrays not yet supported. (RAID level change)\n");
    return (-22);
  } else {
  }
  if (sb->layout != (__le32 )mddev->layout) {
    printk("\vdevice-mapper: raid: Reshaping arrays not yet supported. (RAID layout change)\n");
    printk("\vdevice-mapper: raid:   0x%X vs 0x%X\n", sb->layout, mddev->layout);
    tmp___0 = raid10_md_layout_to_copies((int )sb->layout);
    tmp___1 = raid10_md_layout_to_format((int )sb->layout);
    printk("\vdevice-mapper: raid:   Old layout: %s w/ %d copies\n", tmp___1, tmp___0);
    tmp___2 = raid10_md_layout_to_copies(mddev->layout);
    tmp___3 = raid10_md_layout_to_format(mddev->layout);
    printk("\vdevice-mapper: raid:   New layout: %s w/ %d copies\n", tmp___3, tmp___2);
    return (-22);
  } else {
  }
  if (sb->stripe_sectors != (__le32 )mddev->chunk_sectors) {
    printk("\vdevice-mapper: raid: Reshaping arrays not yet supported. (stripe sectors change)\n");
    return (-22);
  } else {
  }
  if ((unsigned int )(rs->raid_type)->level != 1U && sb->num_devices != (__le32 )mddev->raid_disks) {
    printk("\vdevice-mapper: raid: Reshaping arrays not yet supported. (device count change)\n");
    return (-22);
  } else {
  }
  if ((rs->ctr_flags & 3U) == 0U) {
    mddev->recovery_cp = (sector_t )sb->array_resync_offset;
  } else {
  }
  __mptr___0 = (struct list_head const *)mddev->disks.next;
  r = (struct md_rdev *)__mptr___0;
  goto ldv_35853;
  ldv_35852:
  tmp___5 = constant_test_bit(1L, (unsigned long const volatile *)(& r->flags));
  if (tmp___5 == 0) {
    printk("\016device-mapper: raid: Device %d specified for rebuild: Clearing superblock\n",
           r->raid_disk);
    rebuilds = rebuilds + 1U;
  } else {
    tmp___4 = constant_test_bit(10L, (unsigned long const volatile *)(& r->flags));
    if (tmp___4 != 0) {
      new_devs = new_devs + 1U;
    } else {
    }
  }
  __mptr___1 = (struct list_head const *)r->same_set.next;
  r = (struct md_rdev *)__mptr___1;
  ldv_35853: ;
  if ((unsigned long )(& r->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_35852;
  } else {
  }
  if (rebuilds == 0U) {
    if ((uint32_t )mddev->raid_disks == new_devs) {
      printk("\016device-mapper: raid: Superblocks created for new array\n");
      set_bit(3L, (unsigned long volatile *)(& mddev->flags));
    } else
    if (new_devs != 0U) {
      printk("\vdevice-mapper: raid: New device injected into existing array without \'rebuild\' parameter specified\n");
      return (-22);
    } else {
    }
  } else
  if (new_devs != 0U) {
    printk("\vdevice-mapper: raid: \'rebuild\' devices cannot be injected into an array with other first-time devices\n");
    return (-22);
  } else
  if (mddev->recovery_cp != 0xffffffffffffffffUL) {
    printk("\vdevice-mapper: raid: \'rebuild\' specified while array is not in-sync\n");
    return (-22);
  } else {
  }
  __mptr___2 = (struct list_head const *)mddev->disks.next;
  r = (struct md_rdev *)__mptr___2;
  goto ldv_35861;
  ldv_35860: ;
  if ((unsigned long )r->sb_page == (unsigned long )((struct page *)0)) {
    goto ldv_35859;
  } else {
  }
  tmp___6 = lowmem_page_address((struct page const *)r->sb_page);
  sb2 = (struct dm_raid_superblock *)tmp___6;
  sb2->failed_devices = 0ULL;
  tmp___7 = constant_test_bit(10L, (unsigned long const volatile *)(& r->flags));
  if (tmp___7 == 0 && r->raid_disk >= 0) {
    role = (int )sb2->array_position;
    if (r->raid_disk != role) {
      if ((unsigned int )(rs->raid_type)->level != 1U) {
        (rs->ti)->error = (char *)"Cannot change device positions in RAID array";
        return (-22);
      } else {
      }
      printk("\016device-mapper: raid: RAID1 device #%d now at position #%d\n", role,
             r->raid_disk);
    } else {
    }
    if (((uint64_t )(1 << role) & failed_devices) != 0ULL) {
      set_bit(0L, (unsigned long volatile *)(& r->flags));
    } else {
    }
  } else {
  }
  ldv_35859:
  __mptr___3 = (struct list_head const *)r->same_set.next;
  r = (struct md_rdev *)__mptr___3;
  ldv_35861: ;
  if ((unsigned long )(& r->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_35860;
  } else {
  }
  return (0);
}
}
static int super_validate(struct raid_set *rs , struct md_rdev *rdev )
{
  struct mddev *mddev ;
  struct dm_raid_superblock *sb ;
  void *tmp ;
  int tmp___0 ;
  sector_t tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  mddev = & rs->md;
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct dm_raid_superblock *)tmp;
  if (mddev->events == 0ULL) {
    tmp___0 = super_init_validation(mddev, rdev);
    if (tmp___0 != 0) {
      return (-22);
    } else {
    }
  } else {
  }
  if ((unsigned int )(rs->raid_type)->level != 0U) {
    tmp___1 = to_sector(4096UL);
    mddev->bitmap_info.offset = (loff_t )tmp___1;
  } else {
    mddev->bitmap_info.offset = 0LL;
  }
  (rdev->mddev)->bitmap_info.default_offset = mddev->bitmap_info.offset;
  tmp___2 = constant_test_bit(10L, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___2 == 0) {
    rdev->recovery_offset = (sector_t )sb->disk_recovery_offset;
    if (rdev->recovery_offset != 0xffffffffffffffffUL) {
      clear_bit(1L, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
  } else {
  }
  tmp___3 = constant_test_bit(0L, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___3 != 0) {
    clear_bit(0L, (unsigned long volatile *)(& rdev->flags));
    clear_bit(1L, (unsigned long volatile *)(& rdev->flags));
    rdev->saved_raid_disk = rdev->raid_disk;
    rdev->recovery_offset = 0UL;
  } else {
  }
  clear_bit(10L, (unsigned long volatile *)(& rdev->flags));
  return (0);
}
}
static int analyse_superblocks(struct dm_target *ti , struct raid_set *rs )
{
  int ret ;
  struct raid_dev *dev ;
  struct md_rdev *rdev ;
  struct md_rdev *tmp ;
  struct md_rdev *freshest ;
  struct mddev *mddev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  loff_t tmp___0 ;
  struct md_rdev const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___3 ;
  int tmp___3 ;
  struct list_head const *__mptr___4 ;
  {
  mddev = & rs->md;
  freshest = (struct md_rdev *)0;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  tmp = (struct md_rdev *)__mptr___0;
  goto ldv_35893;
  ldv_35892:
  tmp___0 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
  rdev->sectors = to_sector((unsigned long )tmp___0);
  if ((int )rs->ctr_flags & 1) {
    goto ldv_35885;
  } else {
  }
  if ((unsigned long )rdev->meta_bdev == (unsigned long )((struct block_device *)0)) {
    goto ldv_35885;
  } else {
  }
  ret = super_load(rdev, freshest);
  switch (ret) {
  case 1:
  freshest = rdev;
  goto ldv_35887;
  case 0: ;
  goto ldv_35887;
  default:
  __mptr___1 = (struct md_rdev const *)rdev;
  dev = (struct raid_dev *)__mptr___1 + 0xfffffffffffffff0UL;
  if ((unsigned long )dev->meta_dev != (unsigned long )((struct dm_dev *)0)) {
    dm_put_device(ti, dev->meta_dev);
  } else {
  }
  dev->meta_dev = (struct dm_dev *)0;
  rdev->meta_bdev = (struct block_device *)0;
  if ((unsigned long )rdev->sb_page != (unsigned long )((struct page *)0)) {
    put_page(rdev->sb_page);
  } else {
  }
  rdev->sb_page = (struct page *)0;
  rdev->sb_loaded = 0;
  if ((unsigned long )dev->data_dev != (unsigned long )((struct dm_dev *)0)) {
    dm_put_device(ti, dev->data_dev);
  } else {
  }
  dev->data_dev = (struct dm_dev *)0;
  rdev->bdev = (struct block_device *)0;
  list_del(& rdev->same_set);
  }
  ldv_35887: ;
  ldv_35885:
  rdev = tmp;
  __mptr___2 = (struct list_head const *)tmp->same_set.next;
  tmp = (struct md_rdev *)__mptr___2;
  ldv_35893: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_35892;
  } else {
  }
  if ((unsigned long )freshest == (unsigned long )((struct md_rdev *)0)) {
    return (0);
  } else {
  }
  tmp___1 = validate_raid_redundancy(rs);
  if (tmp___1 != 0) {
    (rs->ti)->error = (char *)"Insufficient redundancy to activate array";
    return (-22);
  } else {
  }
  ti->error = (char *)"Unable to assemble array: Invalid superblocks";
  tmp___2 = super_validate(rs, freshest);
  if (tmp___2 != 0) {
    return (-22);
  } else {
  }
  __mptr___3 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___3;
  goto ldv_35900;
  ldv_35899: ;
  if ((unsigned long )rdev != (unsigned long )freshest) {
    tmp___3 = super_validate(rs, rdev);
    if (tmp___3 != 0) {
      return (-22);
    } else {
    }
  } else {
  }
  __mptr___4 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___4;
  ldv_35900: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_35899;
  } else {
  }
  return (0);
}
}
static void configure_discard_support(struct dm_target *ti , struct raid_set *rs )
{
  int i ;
  bool raid456 ;
  struct request_queue *q ;
  int tmp ;
  {
  ti->discards_supported = 0;
  raid456 = (bool )((rs->md.level == 4 || rs->md.level == 5) || rs->md.level == 6);
  i = 0;
  goto ldv_35911;
  ldv_35910: ;
  if ((unsigned long )rs->dev[i].rdev.bdev == (unsigned long )((struct block_device *)0)) {
    goto ldv_35909;
  } else {
  }
  q = bdev_get_queue(rs->dev[i].rdev.bdev);
  if ((unsigned long )q == (unsigned long )((struct request_queue *)0)) {
    return;
  } else {
    tmp = constant_test_bit(14L, (unsigned long const volatile *)(& q->queue_flags));
    if (tmp == 0) {
      return;
    } else {
    }
  }
  if ((int )raid456) {
    if ((unsigned int )q->limits.discard_zeroes_data == 0U) {
      return;
    } else {
    }
    if (! devices_handle_discard_safely) {
      printk("\vdevice-mapper: raid: raid456 discard support disabled due to discard_zeroes_data uncertainty.\n");
      printk("\vdevice-mapper: raid: Set dm-raid.devices_handle_discard_safely=Y to override.\n");
      return;
    } else {
    }
  } else {
  }
  ldv_35909:
  i = i + 1;
  ldv_35911: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35910;
  } else {
  }
  ti->discards_supported = 1;
  ti->split_discard_bios = (bool )(rs->md.level == 1 || rs->md.level == 10);
  ti->num_discard_bios = 1U;
  return;
}
}
static int raid_ctr(struct dm_target *ti , unsigned int argc , char **argv )
{
  int ret ;
  struct raid_type *rt ;
  unsigned long num_raid_params ;
  unsigned long num_raid_devs ;
  struct raid_set *rs ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  rs = (struct raid_set *)0;
  if (argc <= 1U) {
    ti->error = (char *)"Too few arguments";
    return (-22);
  } else {
  }
  rt = get_raid_type(*argv);
  if ((unsigned long )rt == (unsigned long )((struct raid_type *)0)) {
    ti->error = (char *)"Unrecognised raid_type";
    return (-22);
  } else {
  }
  argc = argc - 1U;
  argv = argv + 1;
  tmp = kstrtoul((char const *)*argv, 10U, & num_raid_params);
  if (tmp < 0) {
    ti->error = (char *)"Cannot understand number of RAID parameters";
    return (-22);
  } else {
  }
  argc = argc - 1U;
  argv = argv + 1;
  if ((unsigned long )argc <= num_raid_params) {
    ti->error = (char *)"Arguments do not agree with counts given";
    return (-22);
  } else {
  }
  tmp___0 = kstrtoul((char const *)*(argv + num_raid_params), 10U, & num_raid_devs);
  if (tmp___0 < 0 || num_raid_devs > 253UL) {
    ti->error = (char *)"Cannot understand number of raid devices";
    return (-22);
  } else {
  }
  argc = (argc - (unsigned int )num_raid_params) - 1U;
  if ((unsigned long )argc != num_raid_devs * 2UL) {
    ti->error = (char *)"Supplied RAID devices does not match the count given";
    return (-22);
  } else {
  }
  rs = context_alloc(ti, rt, (unsigned int )num_raid_devs);
  tmp___2 = IS_ERR((void const *)rs);
  if ((int )tmp___2) {
    tmp___1 = PTR_ERR((void const *)rs);
    return ((int )tmp___1);
  } else {
  }
  ret = parse_raid_params(rs, argv, (unsigned int )num_raid_params);
  if (ret != 0) {
    goto bad;
  } else {
  }
  argv = argv + (num_raid_params + 1UL);
  ret = dev_parms(rs, argv);
  if (ret != 0) {
    goto bad;
  } else {
  }
  rs->md.sync_super = & super_sync;
  ret = analyse_superblocks(ti, rs);
  if (ret != 0) {
    goto bad;
  } else {
  }
  __init_work(& rs->md.event_work, 0);
  __constr_expr_0.counter = 137438953408L;
  rs->md.event_work.data = __constr_expr_0;
  lockdep_init_map(& rs->md.event_work.lockdep_map, "(&rs->md.event_work)", & __key,
                   0);
  INIT_LIST_HEAD(& rs->md.event_work.entry);
  rs->md.event_work.func = & do_table_event;
  ti->private = (void *)rs;
  ti->num_flush_bios = 1U;
  configure_discard_support(ti, rs);
  mddev_lock_nointr(& rs->md);
  ret = md_run(& rs->md);
  rs->md.in_sync = 0;
  mddev_unlock(& rs->md);
  if (ret != 0) {
    ti->error = (char *)"Fail to run raid array";
    goto bad;
  } else {
  }
  if (ti->len != rs->md.array_sectors) {
    ti->error = (char *)"Array size does not match requested target length";
    ret = -22;
    goto size_mismatch;
  } else {
  }
  rs->callbacks.congested_fn = & raid_is_congested;
  dm_table_add_target_callbacks(ti->table, & rs->callbacks);
  mddev_suspend(& rs->md);
  return (0);
  size_mismatch:
  md_stop(& rs->md);
  bad:
  context_free(rs);
  return (ret);
}
}
static void raid_dtr(struct dm_target *ti )
{
  struct raid_set *rs ;
  {
  rs = (struct raid_set *)ti->private;
  list_del_init(& rs->callbacks.list);
  md_stop(& rs->md);
  context_free(rs);
  return;
}
}
static int raid_map(struct dm_target *ti , struct bio *bio )
{
  struct raid_set *rs ;
  struct mddev *mddev ;
  {
  rs = (struct raid_set *)ti->private;
  mddev = & rs->md;
  (*((mddev->pers)->make_request))(mddev, bio);
  return (0);
}
}
static char const *decipher_sync_action(struct mddev *mddev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = constant_test_bit(9L, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp != 0) {
    return ("frozen");
  } else {
  }
  tmp___5 = constant_test_bit(0L, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___5 != 0) {
    goto _L;
  } else
  if (mddev->ro == 0) {
    tmp___6 = constant_test_bit(5L, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___6 != 0) {
      _L:
      tmp___0 = constant_test_bit(8L, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___0 != 0) {
        return ("reshape");
      } else {
      }
      tmp___3 = constant_test_bit(1L, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___3 != 0) {
        tmp___2 = constant_test_bit(6L, (unsigned long const volatile *)(& mddev->recovery));
        if (tmp___2 == 0) {
          return ("resync");
        } else {
          tmp___1 = constant_test_bit(7L, (unsigned long const volatile *)(& mddev->recovery));
          if (tmp___1 != 0) {
            return ("check");
          } else {
          }
        }
        return ("repair");
      } else {
      }
      tmp___4 = constant_test_bit(2L, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___4 != 0) {
        return ("recover");
      } else {
      }
    } else {
    }
  } else {
  }
  return ("idle");
}
}
static void raid_status(struct dm_target *ti , status_type_t type , unsigned int status_flags ,
                        char *result , unsigned int maxlen )
{
  struct raid_set *rs ;
  unsigned int raid_param_cnt ;
  unsigned int sz ;
  int i ;
  int array_in_sync ;
  sector_t sync ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned int tmp___13 ;
  char const *tmp___14 ;
  int tmp___15 ;
  unsigned int tmp___16 ;
  long tmp___18 ;
  unsigned long long tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  unsigned int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  unsigned int tmp___25 ;
  int tmp___26 ;
  unsigned int tmp___27 ;
  int tmp___28 ;
  unsigned int tmp___29 ;
  int tmp___30 ;
  unsigned int tmp___31 ;
  int tmp___32 ;
  unsigned int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  unsigned int tmp___36 ;
  int tmp___37 ;
  unsigned int tmp___38 ;
  int tmp___39 ;
  unsigned int tmp___40 ;
  int tmp___41 ;
  unsigned int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  unsigned int tmp___45 ;
  struct r5conf *conf ;
  int tmp___46 ;
  unsigned int tmp___47 ;
  int tmp___48 ;
  unsigned int tmp___49 ;
  unsigned int tmp___50 ;
  int tmp___51 ;
  unsigned int tmp___52 ;
  char *tmp___53 ;
  int tmp___54 ;
  unsigned int tmp___55 ;
  int tmp___56 ;
  unsigned int tmp___57 ;
  int tmp___58 ;
  unsigned int tmp___59 ;
  int tmp___60 ;
  unsigned int tmp___61 ;
  int tmp___62 ;
  unsigned int tmp___63 ;
  int tmp___64 ;
  unsigned int tmp___65 ;
  {
  rs = (struct raid_set *)ti->private;
  raid_param_cnt = 1U;
  sz = 0U;
  array_in_sync = 0;
  switch ((unsigned int )type) {
  case 0U: ;
  if (sz < maxlen) {
    tmp = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%s %d ",
                    (rs->raid_type)->name, rs->md.raid_disks);
    tmp___0 = (unsigned int )tmp;
  } else {
    tmp___0 = 0U;
  }
  sz = tmp___0 + sz;
  if ((unsigned int )(rs->raid_type)->level != 0U) {
    tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& rs->md.recovery));
    if (tmp___1 != 0) {
      sync = rs->md.curr_resync_completed;
    } else {
      sync = rs->md.recovery_cp;
    }
    if (rs->md.resync_max_sectors <= sync) {
      array_in_sync = 1;
      sync = rs->md.resync_max_sectors;
    } else {
      tmp___3 = constant_test_bit(6L, (unsigned long const volatile *)(& rs->md.recovery));
      if (tmp___3 != 0) {
        array_in_sync = 1;
      } else {
        i = 0;
        goto ldv_35955;
        ldv_35954:
        tmp___2 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
        if (tmp___2 == 0) {
          array_in_sync = 1;
        } else {
        }
        i = i + 1;
        ldv_35955: ;
        if (rs->md.raid_disks > i) {
          goto ldv_35954;
        } else {
        }
      }
    }
  } else {
    array_in_sync = 1;
    sync = rs->md.resync_max_sectors;
  }
  i = 0;
  goto ldv_35958;
  ldv_35957:
  tmp___11 = constant_test_bit(0L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
  if (tmp___11 != 0) {
    if (sz < maxlen) {
      tmp___4 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "D");
      tmp___5 = (unsigned int )tmp___4;
    } else {
      tmp___5 = 0U;
    }
    sz = tmp___5 + sz;
  } else
  if (array_in_sync == 0) {
    goto _L;
  } else {
    tmp___10 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___10 == 0) {
      _L:
      if (sz < maxlen) {
        tmp___6 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "a");
        tmp___7 = (unsigned int )tmp___6;
      } else {
        tmp___7 = 0U;
      }
      sz = tmp___7 + sz;
    } else {
      if (sz < maxlen) {
        tmp___8 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "A");
        tmp___9 = (unsigned int )tmp___8;
      } else {
        tmp___9 = 0U;
      }
      sz = tmp___9 + sz;
    }
  }
  i = i + 1;
  ldv_35958: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35957;
  } else {
  }
  if (sz < maxlen) {
    tmp___12 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %llu/%llu",
                         (unsigned long long )sync, (unsigned long long )rs->md.resync_max_sectors);
    tmp___13 = (unsigned int )tmp___12;
  } else {
    tmp___13 = 0U;
  }
  sz = tmp___13 + sz;
  if (sz < maxlen) {
    tmp___14 = decipher_sync_action(& rs->md);
    tmp___15 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %s",
                         tmp___14);
    tmp___16 = (unsigned int )tmp___15;
  } else {
    tmp___16 = 0U;
  }
  sz = tmp___16 + sz;
  if (sz < maxlen) {
    tmp___20 = strcmp((char const *)rs->md.last_sync_action, "check");
    if (tmp___20 == 0) {
      tmp___18 = atomic64_read((atomic64_t const *)(& rs->md.resync_mismatches));
      tmp___19 = (unsigned long long )tmp___18;
    } else {
      tmp___19 = 0ULL;
    }
    tmp___21 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %llu",
                         tmp___19);
    tmp___22 = (unsigned int )tmp___21;
  } else {
    tmp___22 = 0U;
  }
  sz = tmp___22 + sz;
  goto ldv_35960;
  case 1U:
  i = 0;
  goto ldv_35963;
  ldv_35962: ;
  if ((rs->ctr_flags & 4U) != 0U && (unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    tmp___23 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___23 == 0) {
      raid_param_cnt = raid_param_cnt + 2U;
    } else {
    }
  } else {
  }
  if ((unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    tmp___24 = constant_test_bit(4L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___24 != 0) {
      raid_param_cnt = raid_param_cnt + 2U;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35963: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35962;
  } else {
  }
  tmp___25 = __arch_hweight32(rs->ctr_flags & 4294967291U);
  raid_param_cnt = tmp___25 * 2U + raid_param_cnt;
  if ((rs->ctr_flags & 3U) != 0U) {
    raid_param_cnt = raid_param_cnt - 1U;
  } else {
  }
  if (sz < maxlen) {
    tmp___26 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%s %u %u",
                         (rs->raid_type)->name, raid_param_cnt, rs->md.chunk_sectors);
    tmp___27 = (unsigned int )tmp___26;
  } else {
    tmp___27 = 0U;
  }
  sz = tmp___27 + sz;
  if ((int )rs->ctr_flags & 1 && rs->md.recovery_cp == 0xffffffffffffffffUL) {
    if (sz < maxlen) {
      tmp___28 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " sync");
      tmp___29 = (unsigned int )tmp___28;
    } else {
      tmp___29 = 0U;
    }
    sz = tmp___29 + sz;
  } else {
  }
  if ((rs->ctr_flags & 2U) != 0U) {
    if (sz < maxlen) {
      tmp___30 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " nosync");
      tmp___31 = (unsigned int )tmp___30;
    } else {
      tmp___31 = 0U;
    }
    sz = tmp___31 + sz;
  } else {
  }
  i = 0;
  goto ldv_35966;
  ldv_35965: ;
  if ((rs->ctr_flags & 4U) != 0U && (unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    tmp___34 = constant_test_bit(1L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___34 == 0) {
      if (sz < maxlen) {
        tmp___32 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz),
                             " rebuild %u", i);
        tmp___33 = (unsigned int )tmp___32;
      } else {
        tmp___33 = 0U;
      }
      sz = tmp___33 + sz;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35966: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35965;
  } else {
  }
  if ((rs->ctr_flags & 8U) != 0U) {
    if (sz < maxlen) {
      tmp___35 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " daemon_sleep %lu",
                           rs->md.bitmap_info.daemon_sleep);
      tmp___36 = (unsigned int )tmp___35;
    } else {
      tmp___36 = 0U;
    }
    sz = tmp___36 + sz;
  } else {
  }
  if ((rs->ctr_flags & 16U) != 0U) {
    if (sz < maxlen) {
      tmp___37 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " min_recovery_rate %d",
                           rs->md.sync_speed_min);
      tmp___38 = (unsigned int )tmp___37;
    } else {
      tmp___38 = 0U;
    }
    sz = tmp___38 + sz;
  } else {
  }
  if ((rs->ctr_flags & 32U) != 0U) {
    if (sz < maxlen) {
      tmp___39 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " max_recovery_rate %d",
                           rs->md.sync_speed_max);
      tmp___40 = (unsigned int )tmp___39;
    } else {
      tmp___40 = 0U;
    }
    sz = tmp___40 + sz;
  } else {
  }
  i = 0;
  goto ldv_35969;
  ldv_35968: ;
  if ((unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    tmp___43 = constant_test_bit(4L, (unsigned long const volatile *)(& rs->dev[i].rdev.flags));
    if (tmp___43 != 0) {
      if (sz < maxlen) {
        tmp___41 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz),
                             " write_mostly %u", i);
        tmp___42 = (unsigned int )tmp___41;
      } else {
        tmp___42 = 0U;
      }
      sz = tmp___42 + sz;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35969: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35968;
  } else {
  }
  if ((rs->ctr_flags & 64U) != 0U) {
    if (sz < maxlen) {
      tmp___44 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " max_write_behind %lu",
                           rs->md.bitmap_info.max_write_behind);
      tmp___45 = (unsigned int )tmp___44;
    } else {
      tmp___45 = 0U;
    }
    sz = tmp___45 + sz;
  } else {
  }
  if ((rs->ctr_flags & 128U) != 0U) {
    conf = (struct r5conf *)rs->md.private;
    if (sz < maxlen) {
      tmp___46 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " stripe_cache %d",
                           (unsigned long )conf != (unsigned long )((struct r5conf *)0) ? conf->max_nr_stripes * 2 : 0);
      tmp___47 = (unsigned int )tmp___46;
    } else {
      tmp___47 = 0U;
    }
    sz = tmp___47 + sz;
  } else {
  }
  if ((rs->ctr_flags & 256U) != 0U) {
    if (sz < maxlen) {
      tmp___48 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " region_size %lu",
                           rs->md.bitmap_info.chunksize >> 9);
      tmp___49 = (unsigned int )tmp___48;
    } else {
      tmp___49 = 0U;
    }
    sz = tmp___49 + sz;
  } else {
  }
  if ((rs->ctr_flags & 512U) != 0U) {
    if (sz < maxlen) {
      tmp___50 = raid10_md_layout_to_copies(rs->md.layout);
      tmp___51 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " raid10_copies %u",
                           tmp___50);
      tmp___52 = (unsigned int )tmp___51;
    } else {
      tmp___52 = 0U;
    }
    sz = tmp___52 + sz;
  } else {
  }
  if ((rs->ctr_flags & 1024U) != 0U) {
    if (sz < maxlen) {
      tmp___53 = raid10_md_layout_to_format(rs->md.layout);
      tmp___54 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " raid10_format %s",
                           tmp___53);
      tmp___55 = (unsigned int )tmp___54;
    } else {
      tmp___55 = 0U;
    }
    sz = tmp___55 + sz;
  } else {
  }
  if (sz < maxlen) {
    tmp___56 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %d",
                         rs->md.raid_disks);
    tmp___57 = (unsigned int )tmp___56;
  } else {
    tmp___57 = 0U;
  }
  sz = tmp___57 + sz;
  i = 0;
  goto ldv_35973;
  ldv_35972: ;
  if ((unsigned long )rs->dev[i].meta_dev != (unsigned long )((struct dm_dev *)0)) {
    if (sz < maxlen) {
      tmp___58 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %s",
                           (char *)(& (rs->dev[i].meta_dev)->name));
      tmp___59 = (unsigned int )tmp___58;
    } else {
      tmp___59 = 0U;
    }
    sz = tmp___59 + sz;
  } else {
    if (sz < maxlen) {
      tmp___60 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " -");
      tmp___61 = (unsigned int )tmp___60;
    } else {
      tmp___61 = 0U;
    }
    sz = tmp___61 + sz;
  }
  if ((unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    if (sz < maxlen) {
      tmp___62 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %s",
                           (char *)(& (rs->dev[i].data_dev)->name));
      tmp___63 = (unsigned int )tmp___62;
    } else {
      tmp___63 = 0U;
    }
    sz = tmp___63 + sz;
  } else {
    if (sz < maxlen) {
      tmp___64 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " -");
      tmp___65 = (unsigned int )tmp___64;
    } else {
      tmp___65 = 0U;
    }
    sz = tmp___65 + sz;
  }
  i = i + 1;
  ldv_35973: ;
  if (rs->md.raid_disks > i) {
    goto ldv_35972;
  } else {
  }
  }
  ldv_35960: ;
  return;
}
}
static int raid_message(struct dm_target *ti , unsigned int argc , char **argv )
{
  struct raid_set *rs ;
  struct mddev *mddev ;
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
  {
  rs = (struct raid_set *)ti->private;
  mddev = & rs->md;
  tmp = strcasecmp((char const *)*argv, "reshape");
  if (tmp == 0) {
    printk("\vdevice-mapper: raid: Reshape not supported.\n");
    return (-22);
  } else {
  }
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                                                                                   sector_t ,
                                                                                                                                                                   int * ))0)) {
    return (-22);
  } else {
  }
  tmp___0 = strcasecmp((char const *)*argv, "frozen");
  if (tmp___0 == 0) {
    set_bit(9L, (unsigned long volatile *)(& mddev->recovery));
  } else {
    clear_bit(9L, (unsigned long volatile *)(& mddev->recovery));
  }
  tmp___7 = strcasecmp((char const *)*argv, "idle");
  if (tmp___7 == 0) {
    goto _L;
  } else {
    tmp___8 = strcasecmp((char const *)*argv, "frozen");
    if (tmp___8 == 0) {
      _L:
      if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
        set_bit(3L, (unsigned long volatile *)(& mddev->recovery));
        md_reap_sync_thread(mddev);
      } else {
      }
    } else {
      tmp___5 = constant_test_bit(0L, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___5 != 0) {
        return (-16);
      } else {
        tmp___6 = constant_test_bit(5L, (unsigned long const volatile *)(& mddev->recovery));
        if (tmp___6 != 0) {
          return (-16);
        } else {
          tmp___4 = strcasecmp((char const *)*argv, "resync");
          if (tmp___4 == 0) {
            set_bit(5L, (unsigned long volatile *)(& mddev->recovery));
          } else {
            tmp___3 = strcasecmp((char const *)*argv, "recover");
            if (tmp___3 == 0) {
              set_bit(2L, (unsigned long volatile *)(& mddev->recovery));
              set_bit(5L, (unsigned long volatile *)(& mddev->recovery));
            } else {
              tmp___2 = strcasecmp((char const *)*argv, "check");
              if (tmp___2 == 0) {
                set_bit(7L, (unsigned long volatile *)(& mddev->recovery));
              } else {
                tmp___1 = strcasecmp((char const *)*argv, "repair");
                if (tmp___1 != 0) {
                  return (-22);
                } else {
                }
              }
              set_bit(6L, (unsigned long volatile *)(& mddev->recovery));
              set_bit(1L, (unsigned long volatile *)(& mddev->recovery));
            }
          }
        }
      }
    }
  }
  if (mddev->ro == 2) {
    mddev->ro = 0;
    if (mddev->suspended == 0) {
      md_wakeup_thread(mddev->sync_thread);
    } else {
    }
  } else {
  }
  set_bit(5L, (unsigned long volatile *)(& mddev->recovery));
  if (mddev->suspended == 0) {
    md_wakeup_thread(mddev->thread);
  } else {
  }
  return (0);
}
}
static int raid_iterate_devices(struct dm_target *ti , int (*fn)(struct dm_target * ,
                                                                 struct dm_dev * ,
                                                                 sector_t , sector_t ,
                                                                 void * ) , void *data )
{
  struct raid_set *rs ;
  unsigned int i ;
  int ret ;
  {
  rs = (struct raid_set *)ti->private;
  ret = 0;
  i = 0U;
  goto ldv_35991;
  ldv_35990: ;
  if ((unsigned long )rs->dev[i].data_dev != (unsigned long )((struct dm_dev *)0)) {
    ret = (*fn)(ti, rs->dev[i].data_dev, 0UL, rs->md.dev_sectors, data);
  } else {
  }
  i = i + 1U;
  ldv_35991: ;
  if (ret == 0 && (unsigned int )rs->md.raid_disks > i) {
    goto ldv_35990;
  } else {
  }
  return (ret);
}
}
static void raid_io_hints(struct dm_target *ti , struct queue_limits *limits )
{
  struct raid_set *rs ;
  unsigned int chunk_size ;
  struct r5conf *conf ;
  {
  rs = (struct raid_set *)ti->private;
  chunk_size = (unsigned int )(rs->md.chunk_sectors << 9);
  conf = (struct r5conf *)rs->md.private;
  blk_limits_io_min(limits, chunk_size);
  blk_limits_io_opt(limits, (unsigned int )(conf->raid_disks - conf->max_degraded) * chunk_size);
  return;
}
}
static void raid_presuspend(struct dm_target *ti )
{
  struct raid_set *rs ;
  {
  rs = (struct raid_set *)ti->private;
  md_stop_writes(& rs->md);
  return;
}
}
static void raid_postsuspend(struct dm_target *ti )
{
  struct raid_set *rs ;
  {
  rs = (struct raid_set *)ti->private;
  mddev_suspend(& rs->md);
  return;
}
}
static void attempt_restore_of_faulty_devices(struct raid_set *rs )
{
  int i ;
  uint64_t failed_devices ;
  uint64_t cleared_failed_devices ;
  unsigned long flags ;
  struct dm_raid_superblock *sb ;
  struct md_rdev *r ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  void *tmp___3 ;
  struct list_head const *__mptr___0 ;
  {
  cleared_failed_devices = 0ULL;
  i = 0;
  goto ldv_36019;
  ldv_36018:
  r = & rs->dev[i].rdev;
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& r->flags));
  if (tmp___1 != 0 && (unsigned long )r->sb_page != (unsigned long )((struct page *)0)) {
    tmp___2 = sync_page_io(r, 0UL, r->sb_size, r->sb_page, 0, 1);
    if (tmp___2 != 0) {
      printk("\016device-mapper: raid: Faulty %s device #%d has readable super block.  Attempting to revive it.\n",
             (rs->raid_type)->name, i);
      if (r->raid_disk >= 0) {
        tmp = (*(((r->mddev)->pers)->hot_remove_disk))(r->mddev, r);
        if (tmp != 0) {
          goto ldv_36017;
        } else {
        }
      } else {
      }
      r->raid_disk = i;
      r->saved_raid_disk = i;
      flags = r->flags;
      clear_bit(0L, (unsigned long volatile *)(& r->flags));
      clear_bit(7L, (unsigned long volatile *)(& r->flags));
      clear_bit(1L, (unsigned long volatile *)(& r->flags));
      tmp___0 = (*(((r->mddev)->pers)->hot_add_disk))(r->mddev, r);
      if (tmp___0 != 0) {
        r->raid_disk = -1;
        r->saved_raid_disk = -1;
        r->flags = flags;
      } else {
        r->recovery_offset = 0UL;
        cleared_failed_devices = (uint64_t )(1 << i) | cleared_failed_devices;
      }
    } else {
    }
  } else {
  }
  ldv_36017:
  i = i + 1;
  ldv_36019: ;
  if (rs->md.raid_disks > i) {
    goto ldv_36018;
  } else {
  }
  if (cleared_failed_devices != 0ULL) {
    __mptr = (struct list_head const *)rs->md.disks.next;
    r = (struct md_rdev *)__mptr;
    goto ldv_36026;
    ldv_36025:
    tmp___3 = lowmem_page_address((struct page const *)r->sb_page);
    sb = (struct dm_raid_superblock *)tmp___3;
    failed_devices = sb->failed_devices;
    failed_devices = ~ cleared_failed_devices & failed_devices;
    sb->failed_devices = failed_devices;
    __mptr___0 = (struct list_head const *)r->same_set.next;
    r = (struct md_rdev *)__mptr___0;
    ldv_36026: ;
    if ((unsigned long )(& r->same_set) != (unsigned long )(& rs->md.disks)) {
      goto ldv_36025;
    } else {
    }
  } else {
  }
  return;
}
}
static void raid_resume(struct dm_target *ti )
{
  struct raid_set *rs ;
  {
  rs = (struct raid_set *)ti->private;
  if ((unsigned int )(rs->raid_type)->level != 0U) {
    set_bit(0L, (unsigned long volatile *)(& rs->md.flags));
    if (rs->bitmap_loaded == 0U) {
      bitmap_load(& rs->md);
      rs->bitmap_loaded = 1U;
    } else {
      attempt_restore_of_faulty_devices(rs);
    }
    clear_bit(9L, (unsigned long volatile *)(& rs->md.recovery));
  } else {
  }
  mddev_resume(& rs->md);
  return;
}
}
static int raid_merge(struct dm_target *ti , struct bvec_merge_data *bvm , struct bio_vec *biovec ,
                      int max_size )
{
  struct raid_set *rs ;
  struct md_personality *pers ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  {
  rs = (struct raid_set *)ti->private;
  pers = rs->md.pers;
  if ((unsigned long )pers != (unsigned long )((struct md_personality *)0) && (unsigned long )pers->mergeable_bvec != (unsigned long )((int (*)(struct mddev * ,
                                                                                                                                                struct bvec_merge_data * ,
                                                                                                                                                struct bio_vec * ))0)) {
    _min1 = max_size;
    tmp = (*(pers->mergeable_bvec))(& rs->md, bvm, biovec);
    _min2 = tmp;
    return (_min1 < _min2 ? _min1 : _min2);
  } else {
  }
  return (rs->md.chunk_sectors);
}
}
static struct target_type raid_target =
     {0ULL, "raid", & __this_module, {1U, 7U, 0U}, & raid_ctr, & raid_dtr, & raid_map,
    0, 0, 0, 0, 0, & raid_presuspend, 0, & raid_postsuspend, 0, & raid_resume, & raid_status,
    & raid_message, 0, & raid_merge, 0, & raid_iterate_devices, & raid_io_hints, {0,
                                                                                  0}};
static int dm_raid_init(void)
{
  int tmp ;
  {
  printk("\016device-mapper: raid: Loading target version %u.%u.%u\n", raid_target.version[0],
         raid_target.version[1], raid_target.version[2]);
  tmp = dm_register_target(& raid_target);
  return (tmp);
}
}
static void dm_raid_exit(void)
{
  {
  dm_unregister_target(& raid_target);
  return;
}
}
extern int ldv_preresume_2(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
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
    do_table_event(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_36105;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    do_table_event(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_36105;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    do_table_event(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_36105;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    do_table_event(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_36105;
  default:
  ldv_stop();
  }
  ldv_36105: ;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    do_table_event(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    do_table_event(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    do_table_event(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    do_table_event(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_target_type_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(88UL);
  raid_target_group1 = (struct dm_target *)tmp;
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
int main(void)
{
  void *ldvarg11 ;
  void *tmp ;
  struct queue_limits *ldvarg7 ;
  void *tmp___0 ;
  unsigned int ldvarg3 ;
  char *ldvarg0 ;
  void *tmp___1 ;
  int (*ldvarg12)(struct dm_target * , struct dm_dev * , sector_t , sector_t , void * ) ;
  unsigned int ldvarg5 ;
  struct bio *ldvarg6 ;
  void *tmp___2 ;
  int ldvarg8 ;
  unsigned int ldvarg1 ;
  unsigned int ldvarg14 ;
  char **ldvarg4 ;
  void *tmp___3 ;
  char **ldvarg13 ;
  void *tmp___4 ;
  struct bvec_merge_data *ldvarg10 ;
  void *tmp___5 ;
  struct bio_vec *ldvarg9 ;
  void *tmp___6 ;
  status_type_t ldvarg2 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg11 = tmp;
  tmp___0 = ldv_init_zalloc(80UL);
  ldvarg7 = (struct queue_limits *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg0 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(136UL);
  ldvarg6 = (struct bio *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg4 = (char **)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg13 = (char **)tmp___4;
  tmp___5 = ldv_init_zalloc(32UL);
  ldvarg10 = (struct bvec_merge_data *)tmp___5;
  tmp___6 = ldv_init_zalloc(16UL);
  ldvarg9 = (struct bio_vec *)tmp___6;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_2 = 0;
  ldv_36186:
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_36163;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      dm_raid_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_36167;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = dm_raid_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_target_type_2();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_36167;
    default:
    ldv_stop();
    }
    ldv_36167: ;
  } else {
  }
  goto ldv_36163;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_2 = raid_ctr(raid_target_group1, ldvarg14, ldvarg13);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36172;
    case 1: ;
    if (ldv_state_variable_2 == 4) {
      raid_dtr(raid_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_dtr(raid_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_dtr(raid_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_dtr(raid_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36172;
    case 2: ;
    if (ldv_state_variable_2 == 4) {
      raid_iterate_devices(raid_target_group1, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      raid_iterate_devices(raid_target_group1, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_iterate_devices(raid_target_group1, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_iterate_devices(raid_target_group1, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_iterate_devices(raid_target_group1, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 3: ;
    if (ldv_state_variable_2 == 4) {
      raid_merge(raid_target_group1, ldvarg10, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      raid_merge(raid_target_group1, ldvarg10, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_merge(raid_target_group1, ldvarg10, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_merge(raid_target_group1, ldvarg10, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_merge(raid_target_group1, ldvarg10, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 4: ;
    if (ldv_state_variable_2 == 4) {
      raid_io_hints(raid_target_group1, ldvarg7);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      raid_io_hints(raid_target_group1, ldvarg7);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_io_hints(raid_target_group1, ldvarg7);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_io_hints(raid_target_group1, ldvarg7);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_io_hints(raid_target_group1, ldvarg7);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 5: ;
    if (ldv_state_variable_2 == 4) {
      raid_map(raid_target_group1, ldvarg6);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_map(raid_target_group1, ldvarg6);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_map(raid_target_group1, ldvarg6);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_map(raid_target_group1, ldvarg6);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 6: ;
    if (ldv_state_variable_2 == 4) {
      raid_message(raid_target_group1, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      raid_message(raid_target_group1, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_message(raid_target_group1, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_message(raid_target_group1, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_message(raid_target_group1, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 7: ;
    if (ldv_state_variable_2 == 3) {
      raid_postsuspend(raid_target_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    goto ldv_36172;
    case 8: ;
    if (ldv_state_variable_2 == 4) {
      raid_status(raid_target_group1, ldvarg2, ldvarg1, ldvarg0, ldvarg3);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      raid_status(raid_target_group1, ldvarg2, ldvarg1, ldvarg0, ldvarg3);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      raid_status(raid_target_group1, ldvarg2, ldvarg1, ldvarg0, ldvarg3);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      raid_status(raid_target_group1, ldvarg2, ldvarg1, ldvarg0, ldvarg3);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      raid_status(raid_target_group1, ldvarg2, ldvarg1, ldvarg0, ldvarg3);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_36172;
    case 9: ;
    if (ldv_state_variable_2 == 2) {
      raid_presuspend(raid_target_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_36172;
    case 10: ;
    if (ldv_state_variable_2 == 5) {
      raid_resume(raid_target_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36172;
    case 11: ;
    if (ldv_state_variable_2 == 4) {
      ldv_retval_1 = ldv_preresume_2();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_2 = 5;
      } else {
      }
    } else {
    }
    goto ldv_36172;
    default:
    ldv_stop();
    }
    ldv_36172: ;
  } else {
  }
  goto ldv_36163;
  default:
  ldv_stop();
  }
  ldv_36163: ;
  goto ldv_36186;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
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
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_17(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_reconfig_mutex_of_mddev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_20(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_reconfig_mutex_of_mddev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
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
static int ldv_mutex_i_mutex_of_inode = 1;
int ldv_mutex_lock_interruptible_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 1;
  return;
}
}
void ldv_usb_lock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_i_mutex_of_inode(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_i_mutex_of_inode((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_i_mutex_of_inode(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_unlock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_reconfig_mutex_of_mddev = 1;
int ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_reconfig_mutex_of_mddev = 2;
  return;
}
}
int ldv_mutex_trylock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_reconfig_mutex_of_mddev(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_reconfig_mutex_of_mddev != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_reconfig_mutex_of_mddev = 1;
  return;
}
}
void ldv_usb_lock_device_reconfig_mutex_of_mddev(void)
{
  {
  ldv_mutex_lock_reconfig_mutex_of_mddev((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_reconfig_mutex_of_mddev(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_reconfig_mutex_of_mddev((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_reconfig_mutex_of_mddev(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_reconfig_mutex_of_mddev((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_reconfig_mutex_of_mddev(void)
{
  {
  ldv_mutex_unlock_reconfig_mutex_of_mddev((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_reconfig_mutex_of_mddev != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *external_alloc(void);
void *__kmalloc(size_t arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int bitmap_load(struct mddev *arg0) {
  return __VERIFIER_nondet_int();
}
void blk_limits_io_min(struct queue_limits *arg0, unsigned int arg1) {
  return;
}
void blk_limits_io_opt(struct queue_limits *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_get_device(struct dm_target *arg0, const char *arg1, fmode_t arg2, struct dm_dev **arg3) {
  return __VERIFIER_nondet_int();
}
void dm_put_device(struct dm_target *arg0, struct dm_dev *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_register_target(struct target_type *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dm_set_target_max_io_len(struct dm_target *arg0, sector_t arg1) {
  return __VERIFIER_nondet_int();
}
void dm_table_add_target_callbacks(struct dm_table *arg0, struct dm_target_callbacks *arg1) {
  return;
}
void dm_table_event(struct dm_table *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
fmode_t dm_table_get_mode(struct dm_table *arg0) {
  return __VERIFIER_nondet_uint();
}
void dm_unregister_target(struct target_type *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_preresume_2() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void md_error(struct mddev *arg0, struct md_rdev *arg1) {
  return;
}
void md_rdev_clear(struct md_rdev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int md_rdev_init(struct md_rdev *arg0) {
  return __VERIFIER_nondet_int();
}
void md_reap_sync_thread(struct mddev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int md_run(struct mddev *arg0) {
  return __VERIFIER_nondet_int();
}
void md_stop(struct mddev *arg0) {
  return;
}
void md_stop_writes(struct mddev *arg0) {
  return;
}
void md_wakeup_thread(struct md_thread *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mddev_congested(struct mddev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void mddev_init(struct mddev *arg0) {
  return;
}
void mddev_resume(struct mddev *arg0) {
  return;
}
void mddev_suspend(struct mddev *arg0) {
  return;
}
void mddev_unlock(struct mddev *arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
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
int raid5_set_cache_size(struct mddev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int strcasecmp(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sync_page_io(struct md_rdev *arg0, sector_t arg1, int arg2, struct page *arg3, int arg4, bool arg5) {
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
