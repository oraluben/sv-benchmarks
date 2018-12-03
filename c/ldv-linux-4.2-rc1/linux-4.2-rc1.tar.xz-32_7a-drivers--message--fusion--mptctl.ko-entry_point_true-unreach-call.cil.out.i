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
typedef unsigned short ushort;
typedef unsigned long ulong;
typedef __u32 u_int32_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
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
struct device;
struct net_device;
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
struct vm_area_struct;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
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
struct execute_work {
   struct work_struct work ;
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
struct acpi_device;
struct pci_sysdata {
   int domain ;
   int node ;
   struct acpi_device *companion ;
   void *iommu ;
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
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   struct attribute_group const **groups ;
   char const *nodename ;
   umode_t mode ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_221 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_221 __annonCompField59 ;
   unsigned long nr_segs ;
};
struct kiocb;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_236 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_235 {
   struct __anonstruct____missing_field_name_236 __annonCompField60 ;
};
struct lockref {
   union __anonunion____missing_field_name_235 __annonCompField61 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_238 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField62 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_237 __annonCompField63 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_239 {
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
   union __anonunion_d_u_239 d_u ;
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
struct __anonstruct____missing_field_name_243 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_242 {
   struct __anonstruct____missing_field_name_243 __annonCompField64 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_242 __annonCompField65 ;
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
union __anonunion____missing_field_name_246 {
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
   union __anonunion____missing_field_name_246 __annonCompField66 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct __anonstruct_kprojid_t_247 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_247 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_248 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_248 __annonCompField67 ;
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
union __anonunion____missing_field_name_251 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_252 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_251 __annonCompField68 ;
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
   union __anonunion____missing_field_name_252 __annonCompField69 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_253 __annonCompField70 ;
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
union __anonunion_f_u_254 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_254 f_u ;
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
struct __anonstruct_afs_256 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_255 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_256 afs ;
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
   union __anonunion_fl_u_255 fl_u ;
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
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct scsi_cmnd;
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
typedef int congested_fn(void * , int );
struct bdi_writeback_congested {
   unsigned long state ;
   atomic_t refcnt ;
   struct backing_dev_info *bdi ;
   int blkcg_id ;
   struct rb_node rb_node ;
};
union __anonunion____missing_field_name_279 {
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
   union __anonunion____missing_field_name_279 __annonCompField78 ;
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
union __anonunion____missing_field_name_280 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_281 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_280 __annonCompField79 ;
   union __anonunion____missing_field_name_281 __annonCompField80 ;
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
union __anonunion____missing_field_name_282 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_283 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_284 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_286 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_287 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_285 {
   struct __anonstruct_elv_286 elv ;
   struct __anonstruct_flush_287 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_282 __annonCompField81 ;
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
   union __anonunion____missing_field_name_283 __annonCompField82 ;
   union __anonunion____missing_field_name_284 __annonCompField83 ;
   union __anonunion____missing_field_name_285 __annonCompField84 ;
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
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct Scsi_Host;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int channel ;
   u64 lun ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char try_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned char prot_flags ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   int flags ;
   unsigned char tag ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_289 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_289 __annonCompField85 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
union __anonunion____missing_field_name_290 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   union __anonunion____missing_field_name_290 __annonCompField86 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
typedef unsigned char U8;
typedef unsigned short U16;
typedef u_int32_t U32;
struct _U64 {
   U32 Low ;
   U32 High ;
};
typedef struct _U64 U64;
union __anonunion_u_293 {
   U32 Address32 ;
   U64 Address64 ;
};
struct _SGE_SIMPLE_UNION {
   U32 FlagsLength ;
   union __anonunion_u_293 u ;
};
typedef struct _SGE_SIMPLE_UNION SGE_SIMPLE_UNION;
union __anonunion_u_294 {
   U32 Address32 ;
   U64 Address64 ;
};
struct _SGE_CHAIN_UNION {
   U16 Length ;
   U8 NextChainOffset ;
   U8 Flags ;
   union __anonunion_u_294 u ;
};
typedef struct _SGE_CHAIN_UNION SGE_CHAIN_UNION;
union __anonunion_u_295 {
   U32 TransactionContext32[1U] ;
   U32 TransactionContext64[2U] ;
   U32 TransactionContext96[3U] ;
   U32 TransactionContext128[4U] ;
};
struct _SGE_TRANSACTION_UNION {
   U8 Reserved ;
   U8 ContextSize ;
   U8 DetailsLength ;
   U8 Flags ;
   union __anonunion_u_295 u ;
   U32 TransactionDetails[1U] ;
};
typedef struct _SGE_TRANSACTION_UNION SGE_TRANSACTION_UNION;
union __anonunion_u_296 {
   SGE_SIMPLE_UNION Simple ;
   SGE_CHAIN_UNION Chain ;
};
struct _SGE_IO_UNION {
   union __anonunion_u_296 u ;
};
typedef struct _SGE_IO_UNION SGE_IO_UNION;
union __anonunion_u_298 {
   SGE_SIMPLE_UNION Simple ;
   SGE_CHAIN_UNION Chain ;
   SGE_TRANSACTION_UNION Transaction ;
};
struct _SGE_MPI_UNION {
   union __anonunion_u_298 u ;
};
typedef struct _SGE_MPI_UNION SGE_MPI_UNION;
struct _MSG_REQUEST_HEADER {
   U8 Reserved[2U] ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
};
typedef struct _MSG_REQUEST_HEADER MPIHeader_t;
struct _MSG_DEFAULT_REPLY {
   U8 Reserved[2U] ;
   U8 MsgLength ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
};
typedef struct _MSG_DEFAULT_REPLY MPIDefaultReply_t;
struct _MSG_IOC_INIT {
   U8 WhoInit ;
   U8 Reserved ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Flags ;
   U8 MaxDevices ;
   U8 MaxBuses ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 ReplyFrameSize ;
   U8 Reserved1[2U] ;
   U32 HostMfaHighAddr ;
   U32 SenseBufferHighAddr ;
   U32 ReplyFifoHostSignalingAddr ;
   SGE_SIMPLE_UNION HostPageBufferSGE ;
   U16 MsgVersion ;
   U16 HeaderVersion ;
};
typedef struct _MSG_IOC_INIT IOCInit_t;
struct _MPI_FW_VERSION_STRUCT {
   U8 Dev ;
   U8 Unit ;
   U8 Minor ;
   U8 Major ;
};
typedef struct _MPI_FW_VERSION_STRUCT MPI_FW_VERSION_STRUCT;
union _MPI_FW_VERSION {
   MPI_FW_VERSION_STRUCT Struct ;
   U32 Word ;
};
typedef union _MPI_FW_VERSION MPI_FW_VERSION;
struct _MSG_IOC_FACTS_REPLY {
   U16 MsgVersion ;
   U8 MsgLength ;
   U8 Function ;
   U16 HeaderVersion ;
   U8 IOCNumber ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 IOCExceptions ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U8 MaxChainDepth ;
   U8 WhoInit ;
   U8 BlockSize ;
   U8 Flags ;
   U16 ReplyQueueDepth ;
   U16 RequestFrameSize ;
   U16 Reserved_0101_FWVersion ;
   U16 ProductID ;
   U32 CurrentHostMfaHighAddr ;
   U16 GlobalCredits ;
   U8 NumberOfPorts ;
   U8 EventState ;
   U32 CurrentSenseBufferHighAddr ;
   U16 CurReplyFrameSize ;
   U8 MaxDevices ;
   U8 MaxBuses ;
   U32 FWImageSize ;
   U32 IOCCapabilities ;
   MPI_FW_VERSION FWVersion ;
   U16 HighPriorityQueueDepth ;
   U16 Reserved2 ;
   SGE_SIMPLE_UNION HostPageBufferSGE ;
   U32 ReplyFifoHostSignalingAddr ;
};
typedef struct _MSG_IOC_FACTS_REPLY IOCFactsReply_t;
struct _MSG_PORT_FACTS_REPLY {
   U16 Reserved ;
   U8 MsgLength ;
   U8 Function ;
   U16 Reserved1 ;
   U8 PortNumber ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 Reserved2 ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U8 Reserved3 ;
   U8 PortType ;
   U16 MaxDevices ;
   U16 PortSCSIID ;
   U16 ProtocolFlags ;
   U16 MaxPostedCmdBuffers ;
   U16 MaxPersistentIDs ;
   U16 MaxLanBuckets ;
   U8 MaxInitiators ;
   U8 Reserved4 ;
   U32 Reserved5 ;
};
typedef struct _MSG_PORT_FACTS_REPLY PortFactsReply_t;
struct _MSG_EVENT_NOTIFY_REPLY {
   U16 EventDataLength ;
   U8 MsgLength ;
   U8 Function ;
   U8 Reserved1[2U] ;
   U8 AckRequired ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 Event ;
   U32 EventContext ;
   U32 Data[1U] ;
};
typedef struct _MSG_EVENT_NOTIFY_REPLY EventNotificationReply_t;
struct _MSG_FW_DOWNLOAD {
   U8 ImageType ;
   U8 Reserved ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
   SGE_MPI_UNION SGL ;
};
typedef struct _MSG_FW_DOWNLOAD FWDownload_t;
struct _FWDownloadTCSGE {
   U8 Reserved ;
   U8 ContextSize ;
   U8 DetailsLength ;
   U8 Flags ;
   U32 Reserved_0100_Checksum ;
   U32 ImageOffset ;
   U32 ImageSize ;
};
typedef struct _FWDownloadTCSGE FWDownloadTCSGE_t;
struct _MSG_FW_DOWNLOAD_REPLY {
   U8 ImageType ;
   U8 Reserved ;
   U8 MsgLength ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 Reserved2 ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
};
typedef struct _MSG_FW_DOWNLOAD_REPLY *pFWDownloadReply_t;
struct _CONFIG_PAGE_HEADER {
   U8 PageVersion ;
   U8 PageLength ;
   U8 PageNumber ;
   U8 PageType ;
};
typedef struct _CONFIG_PAGE_HEADER CONFIG_PAGE_HEADER;
typedef struct _CONFIG_PAGE_HEADER ConfigPageHeader_t;
struct _CONFIG_EXTENDED_PAGE_HEADER {
   U8 PageVersion ;
   U8 Reserved1 ;
   U8 PageNumber ;
   U8 PageType ;
   U16 ExtPageLength ;
   U8 ExtPageType ;
   U8 Reserved2 ;
};
typedef struct _CONFIG_EXTENDED_PAGE_HEADER ConfigExtendedPageHeader_t;
struct _MSG_CONFIG {
   U8 Action ;
   U8 Reserved ;
   U8 ChainOffset ;
   U8 Function ;
   U16 ExtPageLength ;
   U8 ExtPageType ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[8U] ;
   CONFIG_PAGE_HEADER Header ;
   U32 PageAddress ;
   SGE_IO_UNION PageBufferSGE ;
};
typedef struct _MSG_CONFIG Config_t;
struct _MSG_CONFIG_REPLY {
   U8 Action ;
   U8 Reserved ;
   U8 MsgLength ;
   U8 Function ;
   U16 ExtPageLength ;
   U8 ExtPageType ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   CONFIG_PAGE_HEADER Header ;
};
typedef struct _MSG_CONFIG_REPLY ConfigReply_t;
struct _CONFIG_PAGE_MANUFACTURING_0 {
   CONFIG_PAGE_HEADER Header ;
   U8 ChipName[16U] ;
   U8 ChipRevision[8U] ;
   U8 BoardName[16U] ;
   U8 BoardAssembly[16U] ;
   U8 BoardTracerNumber[16U] ;
};
typedef struct _CONFIG_PAGE_MANUFACTURING_0 ManufacturingPage0_t;
struct _CONFIG_PAGE_IOC_2_RAID_VOL {
   U8 VolumeID ;
   U8 VolumeBus ;
   U8 VolumeIOC ;
   U8 VolumePageNumber ;
   U8 VolumeType ;
   U8 Flags ;
   U16 Reserved3 ;
};
typedef struct _CONFIG_PAGE_IOC_2_RAID_VOL CONFIG_PAGE_IOC_2_RAID_VOL;
struct _CONFIG_PAGE_IOC_2 {
   CONFIG_PAGE_HEADER Header ;
   U32 CapabilitiesFlags ;
   U8 NumActiveVolumes ;
   U8 MaxVolumes ;
   U8 NumActivePhysDisks ;
   U8 MaxPhysDisks ;
   CONFIG_PAGE_IOC_2_RAID_VOL RaidVolume[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_2 IOCPage2_t;
struct _IOC_3_PHYS_DISK {
   U8 PhysDiskID ;
   U8 PhysDiskBus ;
   U8 PhysDiskIOC ;
   U8 PhysDiskNum ;
};
typedef struct _IOC_3_PHYS_DISK IOC_3_PHYS_DISK;
struct _CONFIG_PAGE_IOC_3 {
   CONFIG_PAGE_HEADER Header ;
   U8 NumPhysDisks ;
   U8 Reserved1 ;
   U16 Reserved2 ;
   IOC_3_PHYS_DISK PhysDisk[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_3 IOCPage3_t;
struct _IOC_4_SEP {
   U8 SEPTargetID ;
   U8 SEPBus ;
   U16 Reserved ;
};
typedef struct _IOC_4_SEP IOC_4_SEP;
struct _CONFIG_PAGE_IOC_4 {
   CONFIG_PAGE_HEADER Header ;
   U8 ActiveSEP ;
   U8 MaxSEP ;
   U16 Reserved1 ;
   IOC_4_SEP SEP[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_4 IOCPage4_t;
struct _CONFIG_PAGE_SCSI_DEVICE_0 {
   CONFIG_PAGE_HEADER Header ;
   U32 NegotiatedParameters ;
   U32 Information ;
};
typedef struct _CONFIG_PAGE_SCSI_DEVICE_0 SCSIDevicePage0_t;
struct _CONFIG_PAGE_SCSI_DEVICE_3 {
   CONFIG_PAGE_HEADER Header ;
   U16 MsgRejectCount ;
   U16 PhaseErrorCount ;
   U16 ParityErrorCount ;
   U16 Reserved ;
};
typedef struct _CONFIG_PAGE_SCSI_DEVICE_3 SCSIDevicePage3_t;
struct _CONFIG_PAGE_FC_PORT_0 {
   CONFIG_PAGE_HEADER Header ;
   U32 Flags ;
   U8 MPIPortNumber ;
   U8 LinkType ;
   U8 PortState ;
   U8 Reserved ;
   U32 PortIdentifier ;
   U64 WWNN ;
   U64 WWPN ;
   U32 SupportedServiceClass ;
   U32 SupportedSpeeds ;
   U32 CurrentSpeed ;
   U32 MaxFrameSize ;
   U64 FabricWWNN ;
   U64 FabricWWPN ;
   U32 DiscoveredPortsCount ;
   U32 MaxInitiators ;
   U8 MaxAliasesSupported ;
   U8 MaxHardAliasesSupported ;
   U8 NumCurrentAliases ;
   U8 Reserved1 ;
};
typedef struct _CONFIG_PAGE_FC_PORT_0 FCPortPage0_t;
struct _CONFIG_PAGE_FC_PORT_1 {
   CONFIG_PAGE_HEADER Header ;
   U32 Flags ;
   U64 NoSEEPROMWWNN ;
   U64 NoSEEPROMWWPN ;
   U8 HardALPA ;
   U8 LinkConfig ;
   U8 TopologyConfig ;
   U8 AltConnector ;
   U8 NumRequestedAliases ;
   U8 RR_TOV ;
   U8 InitiatorDeviceTimeout ;
   U8 InitiatorIoPendTimeout ;
};
typedef struct _CONFIG_PAGE_FC_PORT_1 FCPortPage1_t;
struct _CONFIG_PAGE_LAN_0 {
   ConfigPageHeader_t Header ;
   U16 TxRxModes ;
   U16 Reserved ;
   U32 PacketPrePad ;
};
typedef struct _CONFIG_PAGE_LAN_0 LANPage0_t;
struct _CONFIG_PAGE_LAN_1 {
   ConfigPageHeader_t Header ;
   U16 Reserved ;
   U8 CurrentDeviceState ;
   U8 Reserved1 ;
   U32 MinPacketSize ;
   U32 MaxPacketSize ;
   U32 HardwareAddressLow ;
   U32 HardwareAddressHigh ;
   U32 MaxWireSpeedLow ;
   U32 MaxWireSpeedHigh ;
   U32 BucketsRemaining ;
   U32 MaxReplySize ;
   U32 NegWireSpeedLow ;
   U32 NegWireSpeedHigh ;
};
typedef struct _CONFIG_PAGE_LAN_1 LANPage1_t;
struct _MSG_SCSI_IO_REQUEST {
   U8 TargetID ;
   U8 Bus ;
   U8 ChainOffset ;
   U8 Function ;
   U8 CDBLength ;
   U8 SenseBufferLength ;
   U8 Reserved ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 LUN[8U] ;
   U32 Control ;
   U8 CDB[16U] ;
   U32 DataLength ;
   U32 SenseBufferLowAddr ;
   SGE_IO_UNION SGL ;
};
typedef struct _MSG_SCSI_IO_REQUEST SCSIIORequest_t;
struct _MSG_SCSI_IO_REPLY {
   U8 TargetID ;
   U8 Bus ;
   U8 MsgLength ;
   U8 Function ;
   U8 CDBLength ;
   U8 SenseBufferLength ;
   U8 Reserved ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 SCSIStatus ;
   U8 SCSIState ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 TransferCount ;
   U32 SenseCount ;
   U32 ResponseInfo ;
   U16 TaskTag ;
   U16 Reserved1 ;
};
typedef struct _MSG_SCSI_IO_REPLY SCSIIOReply_t;
struct _MSG_SCSI_TASK_MGMT {
   U8 TargetID ;
   U8 Bus ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Reserved ;
   U8 TaskType ;
   U8 Reserved1 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 LUN[8U] ;
   U32 Reserved2[7U] ;
   U32 TaskMsgContext ;
};
typedef struct _MSG_SCSI_TASK_MGMT SCSITaskMgmt_t;
struct _MSG_SCSI_TASK_MGMT_REPLY {
   U8 TargetID ;
   U8 Bus ;
   U8 MsgLength ;
   U8 Function ;
   U8 ResponseCode ;
   U8 TaskType ;
   U8 Reserved1 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 TerminationCount ;
};
typedef struct _MSG_SCSI_TASK_MGMT_REPLY SCSITaskMgmtReply_t;
struct _MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST {
   U8 Tool ;
   U8 Reserved ;
   U8 ChainOffset ;
   U8 Function ;
   U16 Reserved1 ;
   U8 Reserved2 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Flags ;
   U8 BusNum ;
   U16 Reserved3 ;
   U8 NumAddressBytes ;
   U8 Reserved4 ;
   U16 DataLength ;
   U8 DeviceAddr ;
   U8 Addr1 ;
   U8 Addr2 ;
   U8 Addr3 ;
   U32 Reserved5 ;
   SGE_SIMPLE_UNION SGL ;
};
typedef struct _MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST ToolboxIstwiReadWriteRequest_t;
enum ldv_29885 {
    MPTBASE_DRIVER = 0,
    MPTCTL_DRIVER = 1,
    MPTSPI_DRIVER = 2,
    MPTFC_DRIVER = 3,
    MPTSAS_DRIVER = 4,
    MPTLAN_DRIVER = 5,
    MPTSTM_DRIVER = 6,
    MPTUNKNOWN_DRIVER = 7
} ;
typedef enum ldv_29885 MPT_DRIVER_CLASS;
struct mpt_pci_driver {
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
};
struct __anonstruct_linkage_320 {
   struct list_head list ;
   u32 arg1 ;
   u32 pad ;
   void *argp1 ;
};
struct __anonstruct_fld_323 {
   u16 req_idx ;
   u8 cb_idx ;
   u8 rsvd ;
};
union __anonunion_msgctxu_322 {
   u32 MsgContext ;
   struct __anonstruct_fld_323 fld ;
};
struct __anonstruct_hwhdr_321 {
   u32 __hdr[2U] ;
   union __anonunion_msgctxu_322 msgctxu ;
};
union _MPT_FRAME_TRACKER {
   struct __anonstruct_linkage_320 linkage ;
   struct __anonstruct_hwhdr_321 hwhdr ;
};
typedef union _MPT_FRAME_TRACKER MPT_FRAME_TRACKER;
union __anonunion_u_324 {
   MPIHeader_t hdr ;
   SCSIIORequest_t scsireq ;
   SCSIIOReply_t sreply ;
   ConfigReply_t configreply ;
   MPIDefaultReply_t reply ;
   MPT_FRAME_TRACKER frame ;
};
struct _MPT_FRAME_HDR {
   union __anonunion_u_324 u ;
};
typedef struct _MPT_FRAME_HDR MPT_FRAME_HDR;
struct _SYSIF_REGS {
   u32 Doorbell ;
   u32 WriteSequence ;
   u32 Diagnostic ;
   u32 TestBase ;
   u32 DiagRwData ;
   u32 DiagRwAddress ;
   u32 Reserved1[6U] ;
   u32 IntStatus ;
   u32 IntMask ;
   u32 Reserved2[2U] ;
   u32 RequestFifo ;
   u32 ReplyFifo ;
   u32 RequestHiPriFifo ;
   u32 Reserved3 ;
   u32 HostIndex ;
   u32 Reserved4[15U] ;
   u32 Fubar ;
   u32 Reserved5[1050U] ;
   u32 Reset_1078 ;
};
typedef struct _SYSIF_REGS SYSIF_REGS;
struct _VirtTarget {
   struct scsi_target *starget ;
   u8 tflags ;
   u8 ioc_id ;
   u8 id ;
   u8 channel ;
   u8 minSyncFactor ;
   u8 maxOffset ;
   u8 maxWidth ;
   u8 negoFlags ;
   u8 raidVolume ;
   u8 type ;
   u8 deleted ;
   u8 inDMD ;
   u32 num_luns ;
};
typedef struct _VirtTarget VirtTarget;
struct _VirtDevice {
   VirtTarget *vtarget ;
   u8 configured_lun ;
   u64 lun ;
};
typedef struct _VirtDevice VirtDevice;
struct _MPT_MGMT {
   struct mutex mutex ;
   struct completion done ;
   u8 reply[128U] ;
   u8 sense[64U] ;
   u8 status ;
   int completion_code ;
   u32 msg_context ;
};
typedef struct _MPT_MGMT MPT_MGMT;
struct _mpt_ioctl_events {
   u32 event ;
   u32 eventContext ;
   u32 data[2U] ;
};
typedef struct _mpt_ioctl_events MPT_IOCTL_EVENTS;
struct _SpiCfgData {
   u32 PortFlags ;
   int *nvram ;
   IOCPage4_t *pIocPg4 ;
   dma_addr_t IocPg4_dma ;
   int IocPg4Sz ;
   u8 minSyncFactor ;
   u8 maxSyncOffset ;
   u8 maxBusWidth ;
   u8 busType ;
   u8 sdp1version ;
   u8 sdp1length ;
   u8 sdp0version ;
   u8 sdp0length ;
   u8 dvScheduled ;
   u8 noQas ;
   u8 Saf_Te ;
   u8 bus_reset ;
   u8 rsvd[1U] ;
};
typedef struct _SpiCfgData SpiCfgData;
struct _SasCfgData {
   u8 ptClear ;
};
typedef struct _SasCfgData SasCfgData;
struct _RaidCfgData {
   IOCPage2_t *pIocPg2 ;
   IOCPage3_t *pIocPg3 ;
   struct mutex inactive_list_mutex ;
   struct list_head inactive_list ;
};
typedef struct _RaidCfgData RaidCfgData;
struct __anonstruct_fc_port_page1_325 {
   FCPortPage1_t *data ;
   dma_addr_t dma ;
   int pg_sz ;
};
struct _FcCfgData {
   struct __anonstruct_fc_port_page1_325 fc_port_page1[2U] ;
};
typedef struct _FcCfgData FcCfgData;
struct _MPT_ADAPTER;
struct _MPT_SCSI_HOST {
   struct _MPT_ADAPTER *ioc ;
   ushort sel_timeout[255U] ;
   char *info_kbuf ;
   long last_queue_full ;
   u16 spi_pending ;
   struct list_head target_reset_list ;
};
typedef struct _MPT_SCSI_HOST MPT_SCSI_HOST;
struct mptsas_portinfo;
struct _MPT_ADAPTER {
   int id ;
   int pci_irq ;
   char name[32U] ;
   char const *prod_name ;
   char evStr[100U] ;
   char board_name[16U] ;
   char board_assembly[16U] ;
   char board_tracer[16U] ;
   u16 nvdata_version_persistent ;
   u16 nvdata_version_default ;
   int debug_level ;
   u8 io_missing_delay ;
   u16 device_missing_delay ;
   SYSIF_REGS *chip ;
   SYSIF_REGS *pio_chip ;
   u8 bus_type ;
   u32 mem_phys ;
   u32 pio_mem_phys ;
   int mem_size ;
   int number_of_buses ;
   int devices_per_bus ;
   int alloc_total ;
   u32 last_state ;
   int active ;
   u8 *alloc ;
   dma_addr_t alloc_dma ;
   u32 alloc_sz ;
   MPT_FRAME_HDR *reply_frames ;
   u32 reply_frames_low_dma ;
   int reply_depth ;
   int reply_sz ;
   int num_chain ;
   void (*add_sge)(void * , u32 , dma_addr_t ) ;
   void (*add_chain)(void * , u8 , u16 , dma_addr_t ) ;
   int *ReqToChain ;
   int *RequestNB ;
   int *ChainToChain ;
   u8 *ChainBuffer ;
   dma_addr_t ChainBufferDMA ;
   struct list_head FreeChainQ ;
   spinlock_t FreeChainQlock ;
   dma_addr_t req_frames_dma ;
   MPT_FRAME_HDR *req_frames ;
   u32 req_frames_low_dma ;
   int req_depth ;
   int req_sz ;
   spinlock_t FreeQlock ;
   struct list_head FreeQ ;
   u8 *sense_buf_pool ;
   dma_addr_t sense_buf_pool_dma ;
   u32 sense_buf_low_dma ;
   u8 *HostPageBuffer ;
   u32 HostPageBuffer_sz ;
   dma_addr_t HostPageBuffer_dma ;
   struct pci_dev *pcidev ;
   int bars ;
   int msi_enable ;
   u8 *memmap ;
   struct Scsi_Host *sh ;
   SpiCfgData spi_data ;
   RaidCfgData raid_data ;
   SasCfgData sas_data ;
   FcCfgData fc_data ;
   struct proc_dir_entry *ioc_dentry ;
   struct _MPT_ADAPTER *alt_ioc ;
   u32 biosVersion ;
   int eventTypes ;
   int eventContext ;
   int eventLogSize ;
   struct _mpt_ioctl_events *events ;
   u8 *cached_fw ;
   dma_addr_t cached_fw_dma ;
   int hs_reply_idx ;
   u32 pad0 ;
   u32 NB_for_64_byte_frame ;
   u32 hs_req[32U] ;
   u16 hs_reply[64U] ;
   IOCFactsReply_t facts ;
   PortFactsReply_t pfacts[2U] ;
   FCPortPage0_t fc_port_page0[2U] ;
   LANPage0_t lan_cnfg_page0 ;
   LANPage1_t lan_cnfg_page1 ;
   u8 ir_firmware ;
   int errata_flag_1064 ;
   int aen_event_read_flag ;
   u8 FirstWhoInit ;
   u8 upload_fw ;
   u8 NBShiftFactor ;
   u8 pad1[4U] ;
   u8 DoneCtx ;
   u8 TaskCtx ;
   u8 InternalCtx ;
   struct list_head list ;
   struct net_device *netdev ;
   struct list_head sas_topology ;
   struct mutex sas_topology_mutex ;
   struct workqueue_struct *fw_event_q ;
   struct list_head fw_event_list ;
   spinlock_t fw_event_lock ;
   u8 fw_events_off ;
   char fw_event_q_name[20U] ;
   struct mutex sas_discovery_mutex ;
   u8 sas_discovery_runtime ;
   u8 sas_discovery_ignore_events ;
   struct mptsas_portinfo *hba_port_info ;
   u64 hba_port_sas_addr ;
   u16 hba_port_num_phy ;
   struct list_head sas_device_info_list ;
   struct mutex sas_device_info_mutex ;
   u8 old_sas_discovery_protocal ;
   u8 sas_discovery_quiesce_io ;
   int sas_index ;
   MPT_MGMT sas_mgmt ;
   MPT_MGMT mptbase_cmds ;
   MPT_MGMT internal_cmds ;
   MPT_MGMT taskmgmt_cmds ;
   MPT_MGMT ioctl_cmds ;
   spinlock_t taskmgmt_lock ;
   int taskmgmt_in_progress ;
   u8 taskmgmt_quiesce_io ;
   u8 ioc_reset_in_progress ;
   u8 reset_status ;
   u8 wait_on_reset_completion ;
   void (*schedule_target_reset)(void * ) ;
   void (*schedule_dead_ioc_flush_running_cmds)(MPT_SCSI_HOST * ) ;
   struct work_struct sas_persist_task ;
   struct work_struct fc_setup_reset_work ;
   struct list_head fc_rports ;
   struct work_struct fc_lsc_work ;
   u8 fc_link_speed[2U] ;
   spinlock_t fc_rescan_work_lock ;
   struct work_struct fc_rescan_work ;
   char fc_rescan_work_q_name[20U] ;
   struct workqueue_struct *fc_rescan_work_q ;
   unsigned long hard_resets ;
   unsigned long soft_resets ;
   unsigned long timeouts ;
   struct scsi_cmnd **ScsiLookup ;
   spinlock_t scsi_lookup_lock ;
   u64 dma_mask ;
   u32 broadcast_aen_busy ;
   char reset_work_q_name[20U] ;
   struct workqueue_struct *reset_work_q ;
   struct delayed_work fault_reset_work ;
   u8 sg_addr_size ;
   u8 in_rescan ;
   u8 SGE_size ;
};
typedef struct _MPT_ADAPTER MPT_ADAPTER;
struct _mpt_sge {
   u32 FlagsLength ;
   dma_addr_t Address ;
};
typedef struct _mpt_sge MptSge_t;
union __anonunion_cfghdr_326 {
   ConfigExtendedPageHeader_t *ehdr ;
   ConfigPageHeader_t *hdr ;
};
struct _x_config_parms {
   union __anonunion_cfghdr_326 cfghdr ;
   dma_addr_t physAddr ;
   u32 pageAddr ;
   u16 status ;
   u8 action ;
   u8 dir ;
   u8 timeout ;
};
typedef struct _x_config_parms CONFIGPARMS;
struct mpt_fw_xfer {
   unsigned int iocnum ;
   unsigned int fwlen ;
   void *bufp ;
};
struct mpt_fw_xfer32 {
   unsigned int iocnum ;
   unsigned int fwlen ;
   u32 bufp ;
};
struct _mpt_ioctl_header {
   unsigned int iocnum ;
   unsigned int port ;
   int maxDataSize ;
};
typedef struct _mpt_ioctl_header mpt_ioctl_header;
struct mpt_ioctl_diag_reset {
   mpt_ioctl_header hdr ;
};
struct __anonstruct_bits_330 {
   unsigned char deviceNumber : 5 ;
   unsigned char functionNumber : 3 ;
   unsigned int busNumber : 24 ;
};
union __anonunion_u_329 {
   struct __anonstruct_bits_330 bits ;
   unsigned int asUlong ;
};
struct mpt_ioctl_pci_info2 {
   union __anonunion_u_329 u ;
   int segmentID ;
};
struct mpt_ioctl_iocinfo {
   mpt_ioctl_header hdr ;
   int adapterType ;
   int port ;
   int pciId ;
   int hwRev ;
   int subSystemDevice ;
   int subSystemVendor ;
   int numDevices ;
   int FWVersion ;
   int BIOSVersion ;
   char driverVersion[32U] ;
   char busChangeEvent ;
   char hostId ;
   char rsvd[2U] ;
   struct mpt_ioctl_pci_info2 pciInfo ;
};
struct mpt_ioctl_targetinfo {
   mpt_ioctl_header hdr ;
   int numDevices ;
   int targetInfo[1U] ;
};
struct mpt_ioctl_eventquery {
   mpt_ioctl_header hdr ;
   unsigned short eventEntries ;
   unsigned short reserved ;
   unsigned int eventTypes ;
};
struct mpt_ioctl_eventenable {
   mpt_ioctl_header hdr ;
   unsigned int eventTypes ;
};
struct mpt_ioctl_eventreport {
   mpt_ioctl_header hdr ;
   MPT_IOCTL_EVENTS eventData[1U] ;
};
struct mpt_ioctl_test {
   mpt_ioctl_header hdr ;
   u8 name[32U] ;
   int chip_type ;
   u8 product[12U] ;
};
struct mpt_ioctl_replace_fw {
   mpt_ioctl_header hdr ;
   int newImageSize ;
   u8 newImage[1U] ;
};
struct mpt_ioctl_command {
   mpt_ioctl_header hdr ;
   int timeout ;
   char *replyFrameBufPtr ;
   char *dataInBufPtr ;
   char *dataOutBufPtr ;
   char *senseDataPtr ;
   int maxReplyBytes ;
   int dataInSize ;
   int dataOutSize ;
   int maxSenseBytes ;
   int dataSgeOffset ;
   char MF[1U] ;
};
struct mpt_ioctl_command32 {
   mpt_ioctl_header hdr ;
   int timeout ;
   u32 replyFrameBufPtr ;
   u32 dataInBufPtr ;
   u32 dataOutBufPtr ;
   u32 senseDataPtr ;
   int maxReplyBytes ;
   int dataInSize ;
   int dataOutSize ;
   int maxSenseBytes ;
   int dataSgeOffset ;
   char MF[1U] ;
};
struct _hp_header {
   unsigned int iocnum ;
   unsigned int host ;
   unsigned int channel ;
   unsigned int id ;
   unsigned int lun ;
};
typedef struct _hp_header hp_header_t;
struct _hp_host_info {
   hp_header_t hdr ;
   u16 vendor ;
   u16 device ;
   u16 subsystem_vendor ;
   u16 subsystem_id ;
   u8 devfn ;
   u8 bus ;
   ushort host_no ;
   u8 fw_version[16U] ;
   u8 serial_number[24U] ;
   u32 ioc_status ;
   u32 bus_phys_width ;
   u32 base_io_addr ;
   u32 rsvd ;
   unsigned int hard_resets ;
   unsigned int soft_resets ;
   unsigned int timeouts ;
};
typedef struct _hp_host_info hp_host_info_t;
struct _hp_target_info {
   hp_header_t hdr ;
   u32 parity_errors ;
   u32 phase_errors ;
   u32 select_timeouts ;
   u32 message_rejects ;
   u32 negotiated_speed ;
   u8 negotiated_width ;
   u8 rsvd[7U] ;
};
typedef struct _hp_target_info hp_target_info_t;
struct buflist {
   u8 *kptr ;
   int len ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __might_fault(char const * , int ) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memdup_user(void const * , size_t ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_12(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
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
int ldv_mutex_lock_interruptible_13(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mpctl_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mpctl_mutex(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_mutex_of__MPT_MGMT(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of__MPT_MGMT(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of__MPT_MGMT(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of__MPT_MGMT(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField17.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
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
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_2 ;
struct file *mptctl_fops_group2 ;
int ref_cnt ;
void *mptctl_fops_group1 ;
int ldv_state_variable_1 ;
struct pci_dev *mptctl_driver_group0 ;
int ldv_state_variable_0 ;
void ldv_file_operations_2(void) ;
void ldv_initialize_mpt_pci_driver_1(void) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static int pci_domain_nr(struct pci_bus *bus )
{
  struct pci_sysdata *sd ;
  {
  sd = (struct pci_sysdata *)bus->sysdata;
  return (sd->domain);
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
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
extern int misc_register(struct miscdevice * ) ;
int ldv_misc_register_32(struct miscdevice *misc ) ;
extern int misc_deregister(struct miscdevice * ) ;
int ldv_misc_deregister_33(struct miscdevice *misc ) ;
int ldv_misc_deregister_34(struct miscdevice *misc ) ;
int ldv_misc_deregister_35(struct miscdevice *misc ) ;
extern int fasync_helper(int , struct file * , int , struct fasync_struct ** ) ;
extern void kill_fasync(struct fasync_struct ** , int , int ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
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
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 732);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    __copy_to_user_overflow();
  }
  return (n);
}
}
__inline static struct scsi_target *scsi_target(struct scsi_device *sdev )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)sdev->sdev_gendev.parent;
  return ((struct scsi_target *)__mptr + 0xffffffffffffffd8UL);
}
}
extern struct scsi_device *__scsi_iterate_devices(struct Scsi_Host * , struct scsi_device * ) ;
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern u8 mpt_register(int (*)(MPT_ADAPTER * , MPT_FRAME_HDR * , MPT_FRAME_HDR * ) ,
                       MPT_DRIVER_CLASS , char * ) ;
extern void mpt_deregister(u8 ) ;
extern int mpt_event_register(u8 , int (*)(MPT_ADAPTER * , EventNotificationReply_t * ) ) ;
extern void mpt_event_deregister(u8 ) ;
extern int mpt_reset_register(u8 , int (*)(MPT_ADAPTER * , int ) ) ;
extern void mpt_reset_deregister(u8 ) ;
extern int mpt_device_driver_register(struct mpt_pci_driver * , u8 ) ;
extern void mpt_device_driver_deregister(u8 ) ;
extern MPT_FRAME_HDR *mpt_get_msg_frame(u8 , MPT_ADAPTER * ) ;
extern void mpt_free_msg_frame(MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern void mpt_put_msg_frame(u8 , MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern void mpt_put_msg_frame_hi_pri(u8 , MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern int mpt_send_handshake_request(u8 , MPT_ADAPTER * , int , u32 * , int ) ;
extern int mpt_verify_adapter(int , MPT_ADAPTER ** ) ;
extern u32 mpt_GetIocState(MPT_ADAPTER * , int ) ;
extern int mpt_HardResetHandler(MPT_ADAPTER * , int ) ;
extern int mpt_Soft_Hard_ResetHandler(MPT_ADAPTER * , int ) ;
extern int mpt_config(MPT_ADAPTER * , CONFIGPARMS * ) ;
extern int mpt_alloc_fw_memory(MPT_ADAPTER * , int ) ;
extern void mpt_free_fw_memory(MPT_ADAPTER * ) ;
extern int mpt_set_taskmgmt_in_progress_flag(MPT_ADAPTER * ) ;
extern void mpt_clear_taskmgmt_in_progress_flag(MPT_ADAPTER * ) ;
extern void mpt_halt_firmware(MPT_ADAPTER * ) ;
extern struct list_head ioc_list ;
extern int mpt_fwfault_debug ;
static struct mutex mpctl_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mpctl_mutex.wait_lock",
                                                          0, 0UL}}}}, {& mpctl_mutex.wait_list,
                                                                       & mpctl_mutex.wait_list},
    0, (void *)(& mpctl_mutex), {0, {0, 0}, "mpctl_mutex", 0, 0UL}};
static u8 mptctl_id = 16U;
static u8 mptctl_taskmgmt_id = 16U;
static int mptctl_fw_download(unsigned long arg ) ;
static int mptctl_getiocinfo(unsigned long arg , unsigned int data_size ) ;
static int mptctl_gettargetinfo(unsigned long arg ) ;
static int mptctl_readtest(unsigned long arg ) ;
static int mptctl_mpt_command(unsigned long arg ) ;
static int mptctl_eventquery(unsigned long arg ) ;
static int mptctl_eventenable(unsigned long arg ) ;
static int mptctl_eventreport(unsigned long arg ) ;
static int mptctl_replace_fw(unsigned long arg ) ;
static int mptctl_do_reset(unsigned long arg ) ;
static int mptctl_hp_hostinfo(unsigned long arg , unsigned int data_size ) ;
static int mptctl_hp_targetinfo(unsigned long arg ) ;
static int mptctl_probe(struct pci_dev *pdev , struct pci_device_id const *id ) ;
static void mptctl_remove(struct pci_dev *pdev ) ;
static long compat_mpctl_ioctl(struct file *f , unsigned int cmd , unsigned long arg ) ;
static int mptctl_do_mpt_command(struct mpt_ioctl_command karg , void *mfPtr ) ;
static int mptctl_do_fw_download(int ioc , char *ufwbuf , size_t fwlen ) ;
static MptSge_t *kbuf_alloc_2_sgl(int bytes , u32 sgdir , int sge_offset , int *frags ,
                                  struct buflist **blp , dma_addr_t *sglbuf_dma ,
                                  MPT_ADAPTER *ioc ) ;
static void kfree_sgl(MptSge_t *sgl , dma_addr_t sgl_dma , struct buflist *buflist ,
                      MPT_ADAPTER *ioc ) ;
static int mptctl_ioc_reset(MPT_ADAPTER *ioc , int reset_phase ) ;
static int mptctl_event_process(MPT_ADAPTER *ioc , EventNotificationReply_t *pEvReply ) ;
static struct fasync_struct *async_queue = (struct fasync_struct *)0;
__inline static int mptctl_syscall_down(MPT_ADAPTER *ioc , int nonblock )
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  rc = 0;
  if (nonblock != 0) {
    tmp = ldv_mutex_trylock_12(& ioc->ioctl_cmds.mutex);
    if (tmp == 0) {
      rc = -11;
    } else {
    }
  } else {
    tmp___0 = ldv_mutex_lock_interruptible_13(& ioc->ioctl_cmds.mutex);
    if (tmp___0 != 0) {
      rc = -512;
    } else {
    }
  }
  return (rc);
}
}
static int mptctl_reply(MPT_ADAPTER *ioc , MPT_FRAME_HDR *req , MPT_FRAME_HDR *reply )
{
  char *sense_data ;
  int req_index ;
  int sz ;
  int _min1 ;
  int _min2 ;
  {
  if ((unsigned long )req == (unsigned long )((MPT_FRAME_HDR *)0)) {
    return (0);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: completing mpi function (0x%02X), req=%p, reply=%p\n",
           (char *)(& ioc->name), (int )req->u.hdr.Function, req, reply);
  } else {
  }
  if (ioc->ioctl_cmds.msg_context != req->u.hdr.MsgContext) {
    goto out_continuation;
  } else {
  }
  ioc->ioctl_cmds.status = (u8 )((unsigned int )ioc->ioctl_cmds.status | 2U);
  if ((unsigned long )reply == (unsigned long )((MPT_FRAME_HDR *)0)) {
    goto out;
  } else {
  }
  ioc->ioctl_cmds.status = (u8 )((unsigned int )ioc->ioctl_cmds.status | 1U);
  _min1 = ioc->reply_sz;
  _min2 = (int )reply->u.reply.MsgLength * 4;
  sz = _min1 < _min2 ? _min1 : _min2;
  memcpy((void *)(& ioc->ioctl_cmds.reply), (void const *)reply, (size_t )sz);
  if ((unsigned int )reply->u.reply.IOCStatus != 0U || reply->u.reply.IOCLogInfo != 0U) {
    if ((ioc->debug_level & 131072) != 0) {
      printk("\017mptctl: %s: iocstatus (0x%04X), loginfo (0x%08X)\n", (char *)(& ioc->name),
             (int )reply->u.reply.IOCStatus, reply->u.reply.IOCLogInfo);
    } else {
    }
  } else {
  }
  if ((unsigned int )req->u.hdr.Function == 0U || (unsigned int )req->u.hdr.Function == 22U) {
    if ((unsigned int )reply->u.sreply.SCSIStatus != 0U || (unsigned int )reply->u.sreply.SCSIState != 0U) {
      if ((ioc->debug_level & 131072) != 0) {
        printk("\017mptctl: %s: scsi_status (0x%02x), scsi_state (0x%02x), tag = (0x%04x), transfer_count (0x%08x)\n",
               (char *)(& ioc->name), (int )reply->u.sreply.SCSIStatus, (int )reply->u.sreply.SCSIState,
               (int )reply->u.sreply.TaskTag, reply->u.sreply.TransferCount);
      } else {
      }
    } else {
    }
    if ((int )reply->u.sreply.SCSIState & 1) {
      sz = (int )req->u.scsireq.SenseBufferLength;
      req_index = (int )req->u.frame.hwhdr.msgctxu.fld.req_idx;
      sense_data = (char *)ioc->sense_buf_pool + (unsigned long )(req_index * 64);
      memcpy((void *)(& ioc->ioctl_cmds.sense), (void const *)sense_data, (size_t )sz);
      ioc->ioctl_cmds.status = (u8 )((unsigned int )ioc->ioctl_cmds.status | 16U);
    } else {
    }
  } else {
  }
  out: ;
  if (((int )ioc->ioctl_cmds.status & 4) != 0) {
    if ((unsigned int )req->u.hdr.Function == 1U) {
      mpt_clear_taskmgmt_in_progress_flag(ioc);
      ioc->ioctl_cmds.status = (unsigned int )ioc->ioctl_cmds.status & 251U;
      complete(& ioc->ioctl_cmds.done);
      if ((unsigned int )ioc->bus_type == 2U) {
        (*(ioc->schedule_target_reset))((void *)ioc);
      } else {
      }
    } else {
      ioc->ioctl_cmds.status = (unsigned int )ioc->ioctl_cmds.status & 251U;
      complete(& ioc->ioctl_cmds.done);
    }
  } else {
  }
  out_continuation: ;
  if ((unsigned long )reply != (unsigned long )((MPT_FRAME_HDR *)0) && (int )((signed char )reply->u.reply.MsgFlags) < 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static int mptctl_taskmgmt_reply(MPT_ADAPTER *ioc , MPT_FRAME_HDR *mf , MPT_FRAME_HDR *mr )
{
  int _min1 ;
  int _min2 ;
  {
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    return (0);
  } else {
  }
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: TaskMgmt completed (mf=%p, mr=%p)\n", (char *)(& ioc->name),
           mf, mr);
  } else {
  }
  ioc->taskmgmt_cmds.status = (u8 )((unsigned int )ioc->taskmgmt_cmds.status | 2U);
  if ((unsigned long )mr == (unsigned long )((MPT_FRAME_HDR *)0)) {
    goto out;
  } else {
  }
  ioc->taskmgmt_cmds.status = (u8 )((unsigned int )ioc->taskmgmt_cmds.status | 1U);
  _min1 = 128;
  _min2 = (int )mr->u.reply.MsgLength * 4;
  memcpy((void *)(& ioc->taskmgmt_cmds.reply), (void const *)mr, (size_t )(_min1 < _min2 ? _min1 : _min2));
  out: ;
  if (((int )ioc->taskmgmt_cmds.status & 4) != 0) {
    mpt_clear_taskmgmt_in_progress_flag(ioc);
    ioc->taskmgmt_cmds.status = (unsigned int )ioc->taskmgmt_cmds.status & 251U;
    complete(& ioc->taskmgmt_cmds.done);
    if ((unsigned int )ioc->bus_type == 2U) {
      (*(ioc->schedule_target_reset))((void *)ioc);
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int mptctl_do_taskmgmt(MPT_ADAPTER *ioc , u8 tm_type , u8 bus_id , u8 target_id )
{
  MPT_FRAME_HDR *mf ;
  SCSITaskMgmt_t *pScsiTm ;
  SCSITaskMgmtReply_t *pScsiTmReply ;
  int ii ;
  int retval ;
  unsigned long timeout ;
  unsigned long time_count ;
  u16 iocstatus ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  ldv_mutex_lock_14(& ioc->taskmgmt_cmds.mutex);
  tmp = mpt_set_taskmgmt_in_progress_flag(ioc);
  if (tmp != 0) {
    ldv_mutex_unlock_15(& ioc->taskmgmt_cmds.mutex);
    return (-1);
  } else {
  }
  retval = 0;
  mf = mpt_get_msg_frame((int )mptctl_taskmgmt_id, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\fmptctl: %s: WARNING - TaskMgmt, no msg frames!!\n", (char *)(& ioc->name));
    } else {
    }
    mpt_clear_taskmgmt_in_progress_flag(ioc);
    retval = -12;
    goto tm_done;
  } else {
  }
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: TaskMgmt request (mf=%p)\n", (char *)(& ioc->name), mf);
  } else {
  }
  pScsiTm = (SCSITaskMgmt_t *)mf;
  memset((void *)pScsiTm, 0, 52UL);
  pScsiTm->Function = 1U;
  pScsiTm->TaskType = tm_type;
  if ((unsigned int )tm_type == 4U && (unsigned int )ioc->bus_type == 0U) {
    pScsiTm->MsgFlags = 4U;
  } else {
  }
  pScsiTm->TargetID = target_id;
  pScsiTm->Bus = bus_id;
  pScsiTm->ChainOffset = 0U;
  pScsiTm->Reserved = 0U;
  pScsiTm->Reserved1 = 0U;
  pScsiTm->TaskMsgContext = 0U;
  ii = 0;
  goto ldv_42278;
  ldv_42277:
  pScsiTm->LUN[ii] = 0U;
  ii = ii + 1;
  ldv_42278: ;
  if (ii <= 7) {
    goto ldv_42277;
  } else {
  }
  ii = 0;
  goto ldv_42281;
  ldv_42280:
  pScsiTm->Reserved2[ii] = 0U;
  ii = ii + 1;
  ldv_42281: ;
  if (ii <= 6) {
    goto ldv_42280;
  } else {
  }
  switch ((int )ioc->bus_type) {
  case 0:
  timeout = 40UL;
  goto ldv_42284;
  case 2:
  timeout = 30UL;
  goto ldv_42284;
  case 1: ;
  default:
  timeout = 10UL;
  goto ldv_42284;
  }
  ldv_42284: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: TaskMgmt type=%d timeout=%ld\n", (char *)(& ioc->name),
           (int )tm_type, timeout);
  } else {
  }
  ioc->taskmgmt_cmds.status = 4U;
  time_count = jiffies;
  if ((int )ioc->facts.IOCCapabilities & 1 && (unsigned int )ioc->facts.MsgVersion > 260U) {
    mpt_put_msg_frame_hi_pri((int )mptctl_taskmgmt_id, ioc, mf);
  } else {
    retval = mpt_send_handshake_request((int )mptctl_taskmgmt_id, ioc, 52, (u32 *)pScsiTm,
                                        1);
    if (retval != 0) {
      if ((ioc->debug_level & 128) != 0) {
        printk("\vmptctl: %s: OLD_ERROR - TaskMgmt send_handshake FAILED! (ioc %p, mf %p, rc=%d) \n",
               (char *)(& ioc->name), ioc, mf, retval);
      } else {
      }
      mpt_free_msg_frame(ioc, mf);
      mpt_clear_taskmgmt_in_progress_flag(ioc);
      goto tm_done;
    } else {
    }
  }
  tmp___0 = wait_for_completion_timeout(& ioc->taskmgmt_cmds.done, timeout * 250UL);
  ii = (int )tmp___0;
  if (((int )ioc->taskmgmt_cmds.status & 2) == 0) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptctl: %s: TaskMgmt failed\n", (char *)(& ioc->name));
    } else {
    }
    mpt_free_msg_frame(ioc, mf);
    mpt_clear_taskmgmt_in_progress_flag(ioc);
    if (((int )ioc->taskmgmt_cmds.status & 8) != 0) {
      retval = 0;
    } else {
      retval = -1;
    }
    goto tm_done;
  } else {
  }
  if (((int )ioc->taskmgmt_cmds.status & 1) == 0) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptctl: %s: TaskMgmt failed\n", (char *)(& ioc->name));
    } else {
    }
    retval = -1;
    goto tm_done;
  } else {
  }
  pScsiTmReply = (SCSITaskMgmtReply_t *)(& ioc->taskmgmt_cmds.reply);
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: TaskMgmt fw_channel = %d, fw_id = %d, task_type=0x%02X, iocstatus=0x%04X\n\tloginfo=0x%08X, response_code=0x%02X, term_cmnds=%d\n",
           (char *)(& ioc->name), (int )pScsiTmReply->Bus, (int )pScsiTmReply->TargetID,
           (int )tm_type, (int )pScsiTmReply->IOCStatus, pScsiTmReply->IOCLogInfo,
           (int )pScsiTmReply->ResponseCode, pScsiTmReply->TerminationCount);
  } else {
  }
  iocstatus = (unsigned int )pScsiTmReply->IOCStatus & 32767U;
  if (((unsigned int )iocstatus == 72U || (unsigned int )iocstatus == 75U) || (unsigned int )iocstatus == 0U) {
    retval = 0;
  } else {
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptctl: %s: TaskMgmt failed\n", (char *)(& ioc->name));
    } else {
    }
    retval = -1;
  }
  tm_done:
  ldv_mutex_unlock_16(& ioc->taskmgmt_cmds.mutex);
  ioc->taskmgmt_cmds.status = 0U;
  return (retval);
}
}
static void mptctl_timeout_expired(MPT_ADAPTER *ioc , MPT_FRAME_HDR *mf )
{
  unsigned long flags ;
  int ret_val ;
  SCSIIORequest_t *scsi_req ;
  u8 function ;
  raw_spinlock_t *tmp ;
  {
  ret_val = -1;
  scsi_req = (SCSIIORequest_t *)mf;
  function = mf->u.hdr.Function;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: : %s\n", (char *)(& ioc->name), "mptctl_timeout_expired");
  } else {
  }
  if (mpt_fwfault_debug != 0) {
    mpt_halt_firmware(ioc);
  } else {
  }
  tmp = spinlock_check(& ioc->taskmgmt_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
    spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
    ioc->ioctl_cmds.status = (unsigned int )ioc->ioctl_cmds.status & 251U;
    mpt_free_msg_frame(ioc, mf);
    return;
  } else {
  }
  spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
  ioc->ioctl_cmds.status = (unsigned int )ioc->ioctl_cmds.status & 251U;
  if ((unsigned int )ioc->bus_type == 2U) {
    if ((unsigned int )function == 0U) {
      ret_val = mptctl_do_taskmgmt(ioc, 3, (int )scsi_req->Bus, (int )scsi_req->TargetID);
    } else
    if ((unsigned int )function == 22U) {
      ret_val = mptctl_do_taskmgmt(ioc, 4, (int )scsi_req->Bus, 0);
    } else {
    }
    if (ret_val == 0) {
      return;
    } else {
    }
  } else {
    if ((unsigned int )function == 0U || (unsigned int )function == 22U) {
      ret_val = mptctl_do_taskmgmt(ioc, 4, (int )scsi_req->Bus, 0);
    } else {
    }
    if (ret_val == 0) {
      return;
    } else {
    }
  }
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: Calling Reset! \n", (char *)(& ioc->name));
  } else {
  }
  mpt_Soft_Hard_ResetHandler(ioc, 1);
  mpt_free_msg_frame(ioc, mf);
  return;
}
}
static int mptctl_ioc_reset(MPT_ADAPTER *ioc , int reset_phase )
{
  {
  switch (reset_phase) {
  case 2: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: %s: MPT_IOC_SETUP_RESET\n", (char *)(& ioc->name), "mptctl_ioc_reset");
  } else {
  }
  goto ldv_42306;
  case 0: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: %s: MPT_IOC_PRE_RESET\n", (char *)(& ioc->name), "mptctl_ioc_reset");
  } else {
  }
  goto ldv_42306;
  case 1: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptctl: %s: %s: MPT_IOC_POST_RESET\n", (char *)(& ioc->name), "mptctl_ioc_reset");
  } else {
  }
  if (((int )ioc->ioctl_cmds.status & 4) != 0) {
    ioc->ioctl_cmds.status = (u8 )((unsigned int )ioc->ioctl_cmds.status | 8U);
    complete(& ioc->ioctl_cmds.done);
  } else {
  }
  goto ldv_42306;
  default: ;
  goto ldv_42306;
  }
  ldv_42306: ;
  return (1);
}
}
static int mptctl_event_process(MPT_ADAPTER *ioc , EventNotificationReply_t *pEvReply )
{
  u8 event ;
  {
  event = (u8 )pEvReply->Event;
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: %s() called\n", (char *)(& ioc->name), "mptctl_event_process");
  } else {
  }
  if ((unsigned long )async_queue == (unsigned long )((struct fasync_struct *)0)) {
    return (1);
  } else {
  }
  if ((unsigned int )event == 33U) {
    ioc->aen_event_read_flag = 1;
    if ((ioc->debug_level & 131072) != 0) {
      printk("\017mptctl: %s: Raised SIGIO to application\n", (char *)(& ioc->name));
    } else {
    }
    if ((ioc->debug_level & 16) != 0) {
      printk("\017mptctl: %s: Raised SIGIO to application\n", (char *)(& ioc->name));
    } else {
    }
    kill_fasync(& async_queue, 29, 131073);
    return (1);
  } else {
  }
  if (ioc->aen_event_read_flag != 0) {
    return (1);
  } else {
  }
  if ((unsigned long )ioc->events != (unsigned long )((struct _mpt_ioctl_events *)0) && (ioc->eventTypes >> (int )event) & 1) {
    ioc->aen_event_read_flag = 1;
    if ((ioc->debug_level & 131072) != 0) {
      printk("\017mptctl: %s: Raised SIGIO to application\n", (char *)(& ioc->name));
    } else {
    }
    if ((ioc->debug_level & 16) != 0) {
      printk("\017mptctl: %s: Raised SIGIO to application\n", (char *)(& ioc->name));
    } else {
    }
    kill_fasync(& async_queue, 29, 131073);
  } else {
  }
  return (1);
}
}
static int mptctl_fasync(int fd , struct file *filep , int mode )
{
  MPT_ADAPTER *ioc ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ldv_mutex_lock_17(& mpctl_mutex);
  __mptr = (struct list_head const *)ioc_list.next;
  ioc = (MPT_ADAPTER *)__mptr + 0xfffffffffffff970UL;
  goto ldv_42328;
  ldv_42327:
  ioc->aen_event_read_flag = 0;
  __mptr___0 = (struct list_head const *)ioc->list.next;
  ioc = (MPT_ADAPTER *)__mptr___0 + 0xfffffffffffff970UL;
  ldv_42328: ;
  if ((unsigned long )(& ioc->list) != (unsigned long )(& ioc_list)) {
    goto ldv_42327;
  } else {
  }
  ret = fasync_helper(fd, filep, mode, & async_queue);
  ldv_mutex_unlock_18(& mpctl_mutex);
  return (ret);
}
}
static long __mptctl_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  mpt_ioctl_header *uhdr ;
  mpt_ioctl_header khdr ;
  int iocnum ;
  unsigned int iocnumX ;
  int nonblock ;
  int ret ;
  MPT_ADAPTER *iocp ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  uhdr = (mpt_ioctl_header *)arg;
  nonblock = (int )file->f_flags & 2048;
  iocp = (MPT_ADAPTER *)0;
  tmp = copy_from_user((void *)(& khdr), (void const *)uhdr, 12UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s::mptctl_ioctl() @%d - Unable to copy mpt_ioctl_header data @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           634, uhdr);
    return (-14L);
  } else {
  }
  ret = -6;
  iocnumX = khdr.iocnum & 255U;
  iocnum = mpt_verify_adapter((int )iocnumX, & iocp);
  if (iocnum < 0 || (unsigned long )iocp == (unsigned long )((MPT_ADAPTER *)0)) {
    return (-19L);
  } else {
  }
  if (iocp->active == 0) {
    printk("\017mptctl%s::mptctl_ioctl() @%d - Controller disabled.\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           649);
    return (-14L);
  } else {
  }
  if (((unsigned long )cmd & 3221291007UL) == 3221253393UL) {
    tmp___0 = mptctl_getiocinfo(arg, (cmd >> 16) & 16383U);
    return ((long )tmp___0);
  } else
  if (cmd == 3222564114U) {
    tmp___1 = mptctl_gettargetinfo(arg);
    return ((long )tmp___1);
  } else
  if (cmd == 3225185555U) {
    tmp___2 = mptctl_readtest(arg);
    return ((long )tmp___2);
  } else
  if (cmd == 3222564117U) {
    tmp___3 = mptctl_eventquery(arg);
    return ((long )tmp___3);
  } else
  if (cmd == 3222301974U) {
    tmp___4 = mptctl_eventenable(arg);
    return ((long )tmp___4);
  } else
  if (cmd == 3223088407U) {
    tmp___5 = mptctl_eventreport(arg);
    return ((long )tmp___5);
  } else
  if (cmd == 3222564121U) {
    tmp___6 = mptctl_replace_fw(arg);
    return ((long )tmp___6);
  } else {
  }
  ret = mptctl_syscall_down(iocp, nonblock);
  if (ret != 0) {
    return ((long )ret);
  } else {
  }
  if (cmd == 3222301967U) {
    ret = mptctl_fw_download(arg);
  } else
  if (cmd == 3225971988U) {
    ret = mptctl_mpt_command(arg);
  } else
  if (cmd == 3222039832U) {
    ret = mptctl_do_reset(arg);
  } else
  if (((unsigned long )cmd & 3221291007UL) == 2147506708UL) {
    ret = mptctl_hp_hostinfo(arg, (cmd >> 16) & 16383U);
  } else
  if (cmd == 2150652437U) {
    ret = mptctl_hp_targetinfo(arg);
  } else {
    ret = -22;
  }
  ldv_mutex_unlock_19(& iocp->ioctl_cmds.mutex);
  return ((long )ret);
}
}
static long mptctl_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  long ret ;
  {
  ldv_mutex_lock_20(& mpctl_mutex);
  ret = __mptctl_ioctl(file, cmd, arg);
  ldv_mutex_unlock_21(& mpctl_mutex);
  return (ret);
}
}
static int mptctl_do_reset(unsigned long arg )
{
  struct mpt_ioctl_diag_reset *urinfo ;
  struct mpt_ioctl_diag_reset krinfo ;
  MPT_ADAPTER *iocp ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  urinfo = (struct mpt_ioctl_diag_reset *)arg;
  tmp = copy_from_user((void *)(& krinfo), (void const *)urinfo, 12UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_do_reset - Unable to copy mpt_ioctl_diag_reset struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           717, urinfo);
    return (-14);
  } else {
  }
  tmp___0 = mpt_verify_adapter((int )krinfo.hdr.iocnum, & iocp);
  if (tmp___0 < 0) {
    printk("\017mptctl%s@%d::mptctl_do_reset - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           723, krinfo.hdr.iocnum);
    return (-19);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_do_reset called.\n", (char *)(& iocp->name));
  } else {
  }
  tmp___1 = mpt_HardResetHandler(iocp, 1);
  if (tmp___1 != 0) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_reset - reset failed.\n", (char *)(& iocp->name),
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           732);
    return (-1);
  } else {
  }
  return (0);
}
}
static int mptctl_fw_download(unsigned long arg )
{
  struct mpt_fw_xfer *ufwdl ;
  struct mpt_fw_xfer kfwdl ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  ufwdl = (struct mpt_fw_xfer *)arg;
  tmp = copy_from_user((void *)(& kfwdl), (void const *)ufwdl, 16UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::_ioctl_fwdl - Unable to copy mpt_fw_xfer struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           765, ufwdl);
    return (-14);
  } else {
  }
  tmp___0 = mptctl_do_fw_download((int )kfwdl.iocnum, (char *)kfwdl.bufp, (size_t )kfwdl.fwlen);
  return (tmp___0);
}
}
static int mptctl_do_fw_download(int ioc , char *ufwbuf , size_t fwlen )
{
  FWDownload_t *dlmsg ;
  MPT_FRAME_HDR *mf ;
  MPT_ADAPTER *iocp ;
  FWDownloadTCSGE_t *ptsge ;
  MptSge_t *sgl ;
  MptSge_t *sgIn ;
  char *sgOut ;
  struct buflist *buflist ;
  struct buflist *bl ;
  dma_addr_t sgl_dma ;
  int ret ;
  int numfrags ;
  int maxfrags ;
  int n ;
  u32 sgdir ;
  u32 nib ;
  int fw_bytes_copied ;
  int i ;
  int sge_offset ;
  u16 iocstat ;
  pFWDownloadReply_t ReplyMsg ;
  unsigned long timeleft ;
  int tmp ;
  U8 tmp___0 ;
  U8 tmp___1 ;
  unsigned long tmp___2 ;
  u32 tmp___3 ;
  {
  numfrags = 0;
  n = 0;
  fw_bytes_copied = 0;
  sge_offset = 0;
  ReplyMsg = (pFWDownloadReply_t )0;
  tmp = mpt_verify_adapter(ioc, & iocp);
  if (tmp < 0) {
    printk("\017mptctlioctl_fwdl - ioc%d not found!\n", ioc);
    return (-19);
  } else {
    mf = mpt_get_msg_frame((int )mptctl_id, iocp);
    if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
      return (-11);
    } else {
    }
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_do_fwdl called. mptctl_id = %xh.\n", (char *)(& iocp->name),
           (int )mptctl_id);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: DbG: kfwdl.bufp  = %p\n", (char *)(& iocp->name), ufwbuf);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: DbG: kfwdl.fwlen = %d\n", (char *)(& iocp->name), (int )fwlen);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: DbG: kfwdl.ioc   = %04xh\n", (char *)(& iocp->name), ioc);
  } else {
  }
  dlmsg = (FWDownload_t *)mf;
  ptsge = (FWDownloadTCSGE_t *)(& dlmsg->SGL);
  sgOut = (char *)ptsge + 1U;
  dlmsg->ImageType = 1U;
  dlmsg->Reserved = 0U;
  dlmsg->ChainOffset = 0U;
  dlmsg->Function = 9U;
  tmp___1 = 0U;
  dlmsg->Reserved1[2] = tmp___1;
  tmp___0 = tmp___1;
  dlmsg->Reserved1[1] = tmp___0;
  dlmsg->Reserved1[0] = tmp___0;
  if ((unsigned int )iocp->facts.MsgVersion > 260U) {
    dlmsg->MsgFlags = 1U;
  } else {
    dlmsg->MsgFlags = 0U;
  }
  ptsge->Reserved = 0U;
  ptsge->ContextSize = 0U;
  ptsge->DetailsLength = 12U;
  ptsge->Flags = 0U;
  ptsge->Reserved_0100_Checksum = 0U;
  ptsge->ImageOffset = 0U;
  ptsge->ImageSize = (unsigned int )fwlen;
  sgdir = 67108864U;
  sge_offset = 28;
  sgl = kbuf_alloc_2_sgl((int )fwlen, sgdir, sge_offset, & numfrags, & buflist, & sgl_dma,
                         iocp);
  if ((unsigned long )sgl == (unsigned long )((MptSge_t *)0)) {
    return (-12);
  } else {
  }
  maxfrags = (int )(((unsigned long )iocp->req_sz - 28UL) / (unsigned long )iocp->SGE_size);
  if (numfrags > maxfrags) {
    ret = -31;
    goto fwdl_out;
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: DbG: sgl buffer = %p, sgfrags = %d\n", (char *)(& iocp->name),
           sgl, numfrags);
  } else {
  }
  ret = -14;
  sgIn = sgl;
  bl = buflist;
  i = 0;
  goto ldv_42388;
  ldv_42387:
  nib = (sgIn->FlagsLength & 805306368U) >> 28;
  if (nib == 0U || nib == 3U) {
  } else
  if (sgIn->Address != 0ULL) {
    (*(iocp->add_sge))((void *)sgOut, sgIn->FlagsLength, sgIn->Address);
    n = n + 1;
    tmp___2 = copy_from_user((void *)bl->kptr, (void const *)ufwbuf + (unsigned long )fw_bytes_copied,
                             (unsigned long )bl->len);
    if (tmp___2 != 0UL) {
      printk("\vmptctl: %s: OLD_ERROR - %s@%d::_ioctl_fwdl - Unable to copy f/w buffer hunk#%d @ %p\n",
             (char *)(& iocp->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
             928, n, ufwbuf);
      goto fwdl_out;
    } else {
    }
    fw_bytes_copied = bl->len + fw_bytes_copied;
  } else {
  }
  sgIn = sgIn + 1;
  bl = bl + 1;
  sgOut = sgOut + (unsigned long )iocp->SGE_size;
  i = i + 1;
  ldv_42388: ;
  if (i < numfrags) {
    goto ldv_42387;
  } else {
  }
  ReplyMsg = (pFWDownloadReply_t )0;
  iocp->ioctl_cmds.msg_context = dlmsg->MsgContext;
  iocp->ioctl_cmds.status = 4U;
  mpt_put_msg_frame((int )mptctl_id, iocp, mf);
  retry_wait:
  timeleft = wait_for_completion_timeout(& iocp->ioctl_cmds.done, 15000UL);
  if (((int )iocp->ioctl_cmds.status & 2) == 0) {
    ret = -62;
    printk("\fmptctl: %s: WARNING - %s: failed\n", (char *)(& iocp->name), "mptctl_do_fw_download");
    if (((int )iocp->ioctl_cmds.status & 8) != 0) {
      mpt_free_msg_frame(iocp, mf);
      goto fwdl_out;
    } else {
    }
    if (timeleft == 0UL) {
      tmp___3 = mpt_GetIocState(iocp, 0);
      printk("\fmptctl: %s: WARNING - FW download timeout, doorbell=0x%08x\n", (char *)(& iocp->name),
             tmp___3);
      mptctl_timeout_expired(iocp, mf);
    } else {
      goto retry_wait;
    }
    goto fwdl_out;
  } else {
  }
  if (((int )iocp->ioctl_cmds.status & 1) == 0) {
    printk("\fmptctl: %s: WARNING - %s: failed\n", (char *)(& iocp->name), "mptctl_do_fw_download");
    mpt_free_msg_frame(iocp, mf);
    ret = -61;
    goto fwdl_out;
  } else {
  }
  if ((unsigned long )sgl != (unsigned long )((MptSge_t *)0)) {
    kfree_sgl(sgl, sgl_dma, buflist, iocp);
  } else {
  }
  ReplyMsg = (struct _MSG_FW_DOWNLOAD_REPLY *)(& iocp->ioctl_cmds.reply);
  iocstat = (unsigned int )ReplyMsg->IOCStatus & 32767U;
  if ((unsigned int )iocstat == 0U) {
    printk("\016mptctl: %s: F/W update successful!\n", (char *)(& iocp->name));
    return (0);
  } else
  if ((unsigned int )iocstat == 1U) {
    printk("\fmptctl: %s: WARNING - Hmmm...  F/W download not supported!?!\n", (char *)(& iocp->name));
    printk("\fmptctl: %s: WARNING - (time to go bang on somebodies door)\n", (char *)(& iocp->name));
    return (-56);
  } else
  if ((unsigned int )iocstat == 2U) {
    printk("\fmptctl: %s: WARNING - IOC_BUSY!\n", (char *)(& iocp->name));
    printk("\fmptctl: %s: WARNING - (try again later?)\n", (char *)(& iocp->name));
    return (-16);
  } else {
    printk("\fmptctl: %s: WARNING - ioctl_fwdl() returned [bad] status = %04xh\n",
           (char *)(& iocp->name), (int )iocstat);
    printk("\fmptctl: %s: WARNING - (bad VooDoo)\n", (char *)(& iocp->name));
    return (-42);
  }
  return (0);
  fwdl_out:
  iocp->ioctl_cmds.status = 0U;
  iocp->ioctl_cmds.msg_context = 0U;
  kfree_sgl(sgl, sgl_dma, buflist, iocp);
  return (ret);
}
}
static MptSge_t *kbuf_alloc_2_sgl(int bytes , u32 sgdir , int sge_offset , int *frags ,
                                  struct buflist **blp , dma_addr_t *sglbuf_dma ,
                                  MPT_ADAPTER *ioc )
{
  MptSge_t *sglbuf ;
  struct buflist *buflist ;
  MptSge_t *sgl ;
  int numfrags ;
  int fragcnt ;
  int alloc_sz ;
  int _min1 ;
  int _min2 ;
  int bytes_allocd ;
  int this_alloc ;
  dma_addr_t pa ;
  int i ;
  int buflist_ent ;
  int sg_spill ;
  int dir ;
  void *tmp ;
  void *tmp___0 ;
  int _min1___0 ;
  int _min2___0 ;
  void *tmp___1 ;
  dma_addr_t dma_addr ;
  dma_addr_t dma_addr___0 ;
  u8 *kptr ;
  int len ;
  {
  sglbuf = (MptSge_t *)0;
  buflist = (struct buflist *)0;
  numfrags = 0;
  fragcnt = 0;
  _min1 = bytes;
  _min2 = 131072;
  alloc_sz = _min1 < _min2 ? _min1 : _min2;
  bytes_allocd = 0;
  sg_spill = 9;
  *frags = 0;
  *blp = (struct buflist *)0;
  i = 74;
  tmp = kzalloc((size_t )i, 131280U);
  buflist = (struct buflist *)tmp;
  if ((unsigned long )buflist == (unsigned long )((struct buflist *)0)) {
    return ((MptSge_t *)0);
  } else {
  }
  buflist_ent = 0;
  tmp___0 = pci_alloc_consistent(ioc->pcidev, 592UL, sglbuf_dma);
  sglbuf = (MptSge_t *)tmp___0;
  if ((unsigned long )sglbuf == (unsigned long )((MptSge_t *)0)) {
    goto free_and_fail;
  } else {
  }
  if ((sgdir & 67108864U) != 0U) {
    dir = 1;
  } else {
    dir = 2;
  }
  sgl = sglbuf;
  sg_spill = (ioc->req_sz - sge_offset) / (int )ioc->SGE_size + -1;
  goto ldv_42421;
  ldv_42424:
  _min1___0 = alloc_sz;
  _min2___0 = bytes - bytes_allocd;
  this_alloc = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  (buflist + (unsigned long )buflist_ent)->len = this_alloc;
  tmp___1 = pci_alloc_consistent(ioc->pcidev, (size_t )this_alloc, & pa);
  (buflist + (unsigned long )buflist_ent)->kptr = (u8 *)tmp___1;
  if ((unsigned long )(buflist + (unsigned long )buflist_ent)->kptr == (unsigned long )((u8 *)0U)) {
    alloc_sz = alloc_sz / 2;
    if (alloc_sz == 0) {
      printk("\fmptctl: %s: WARNING - -SG: No can do - not enough memory!   :-(\n",
             (char *)(& ioc->name));
      printk("\fmptctl: %s: WARNING - -SG: (freeing %d frags)\n", (char *)(& ioc->name),
             numfrags);
      goto free_and_fail;
    } else {
    }
    goto ldv_42421;
  } else {
    bytes_allocd = bytes_allocd + this_alloc;
    sgl->FlagsLength = (sgdir | (u32 )this_alloc) | 268435456U;
    dma_addr = pci_map_single(ioc->pcidev, (void *)(buflist + (unsigned long )buflist_ent)->kptr,
                              (size_t )this_alloc, dir);
    sgl->Address = dma_addr;
    fragcnt = fragcnt + 1;
    numfrags = numfrags + 1;
    sgl = sgl + 1;
    buflist_ent = buflist_ent + 1;
  }
  if (bytes_allocd >= bytes) {
    goto ldv_42423;
  } else {
  }
  if (fragcnt == sg_spill) {
    printk("\fmptctl: %s: WARNING - -SG: No can do - Chain required!   :-(\n", (char *)(& ioc->name));
    printk("\fmptctl: %s: WARNING - (freeing %d frags)\n", (char *)(& ioc->name),
           numfrags);
    goto free_and_fail;
  } else {
  }
  if (numfrags * 8 > 592) {
    printk("\fmptctl: %s: WARNING - -SG: No can do - too many SG frags!   :-(\n",
           (char *)(& ioc->name));
    printk("\fmptctl: %s: WARNING - -SG: (freeing %d frags)\n", (char *)(& ioc->name),
           numfrags);
    goto free_and_fail;
  } else {
  }
  ldv_42421: ;
  if (bytes_allocd < bytes) {
    goto ldv_42424;
  } else {
  }
  ldv_42423:
  (sgl + 0xffffffffffffffffUL)->FlagsLength = (sgl + 0xffffffffffffffffUL)->FlagsLength | 3238002688U;
  *frags = numfrags;
  *blp = buflist;
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: -SG: kbuf_alloc_2_sgl() - %d SG frags generated!\n", (char *)(& ioc->name),
           numfrags);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: -SG: kbuf_alloc_2_sgl() - last (big) alloc_sz=%d\n", (char *)(& ioc->name),
           alloc_sz);
  } else {
  }
  return (sglbuf);
  free_and_fail: ;
  if ((unsigned long )sglbuf != (unsigned long )((MptSge_t *)0)) {
    i = 0;
    goto ldv_42430;
    ldv_42429: ;
    if ((sglbuf + (unsigned long )i)->FlagsLength >> 24 == 48U) {
      goto ldv_42428;
    } else {
    }
    dma_addr___0 = (sglbuf + (unsigned long )i)->Address;
    kptr = (buflist + (unsigned long )i)->kptr;
    len = (buflist + (unsigned long )i)->len;
    pci_free_consistent(ioc->pcidev, (size_t )len, (void *)kptr, dma_addr___0);
    ldv_42428:
    i = i + 1;
    ldv_42430: ;
    if (i < numfrags) {
      goto ldv_42429;
    } else {
    }
    pci_free_consistent(ioc->pcidev, 592UL, (void *)sglbuf, *sglbuf_dma);
  } else {
  }
  kfree((void const *)buflist);
  return ((MptSge_t *)0);
}
}
static void kfree_sgl(MptSge_t *sgl , dma_addr_t sgl_dma , struct buflist *buflist ,
                      MPT_ADAPTER *ioc )
{
  MptSge_t *sg ;
  struct buflist *bl ;
  u32 nib ;
  int dir ;
  int n ;
  dma_addr_t dma_addr ;
  void *kptr ;
  int len ;
  dma_addr_t dma_addr___0 ;
  void *kptr___0 ;
  int len___0 ;
  {
  sg = sgl;
  bl = buflist;
  n = 0;
  if ((sg->FlagsLength & 67108864U) != 0U) {
    dir = 1;
  } else {
    dir = 2;
  }
  nib = sg->FlagsLength >> 28;
  goto ldv_42447;
  ldv_42446: ;
  if (nib == 0U || nib == 3U) {
  } else
  if (sg->Address != 0ULL) {
    dma_addr = sg->Address;
    kptr = (void *)bl->kptr;
    len = bl->len;
    pci_unmap_single(ioc->pcidev, dma_addr, (size_t )len, dir);
    pci_free_consistent(ioc->pcidev, (size_t )len, kptr, dma_addr);
    n = n + 1;
  } else {
  }
  sg = sg + 1;
  bl = bl + 1;
  nib = sg->FlagsLength >> 28;
  ldv_42447: ;
  if ((nib & 4U) == 0U) {
    goto ldv_42446;
  } else {
  }
  if (sg->Address != 0ULL) {
    dma_addr___0 = sg->Address;
    kptr___0 = (void *)bl->kptr;
    len___0 = bl->len;
    pci_unmap_single(ioc->pcidev, dma_addr___0, (size_t )len___0, dir);
    pci_free_consistent(ioc->pcidev, (size_t )len___0, kptr___0, dma_addr___0);
    n = n + 1;
  } else {
  }
  pci_free_consistent(ioc->pcidev, 592UL, (void *)sgl, sgl_dma);
  kfree((void const *)buflist);
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: -SG: Free\'d 1 SGL buf + %d kbufs!\n", (char *)(& ioc->name),
           n);
  } else {
  }
  return;
}
}
static int mptctl_getiocinfo(unsigned long arg , unsigned int data_size )
{
  struct mpt_ioctl_iocinfo *uarg ;
  struct mpt_ioctl_iocinfo *karg ;
  MPT_ADAPTER *ioc ;
  struct pci_dev *pdev ;
  int iocnum ;
  unsigned int port ;
  int cim_rev ;
  struct scsi_device *sdev ;
  VirtDevice *vdevice ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  char tmp___3 ;
  unsigned long tmp___4 ;
  {
  uarg = (struct mpt_ioctl_iocinfo *)arg;
  if (data_size == 84U) {
    cim_rev = 0;
  } else
  if (data_size == 88U) {
    cim_rev = 1;
  } else
  if (data_size == 92U) {
    cim_rev = 2;
  } else
  if (data_size == 96U) {
    cim_rev = 0;
  } else {
    return (-14);
  }
  tmp = memdup_user((void const *)uarg, (size_t )data_size);
  karg = (struct mpt_ioctl_iocinfo *)tmp;
  tmp___2 = IS_ERR((void const *)karg);
  if ((int )tmp___2) {
    tmp___0 = PTR_ERR((void const *)karg);
    printk("\vmptctl%s@%d::mpt_ioctl_iocinfo() - memdup_user returned error [%ld]\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1267, tmp___0);
    tmp___1 = PTR_ERR((void const *)karg);
    return ((int )tmp___1);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg->hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_getiocinfo() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1274, iocnum);
    kfree((void const *)karg);
    return (-19);
  } else {
  }
  if ((unsigned int )karg->hdr.maxDataSize != data_size) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_getiocinfo - Structure size mismatch. Command not completed.\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1283);
    kfree((void const *)karg);
    return (-14);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_getiocinfo called.\n", (char *)(& ioc->name));
  } else {
  }
  if ((unsigned int )ioc->bus_type == 2U) {
    karg->adapterType = 3;
  } else
  if ((unsigned int )ioc->bus_type == 0U) {
    karg->adapterType = 1;
  } else {
    karg->adapterType = 0;
  }
  if (karg->hdr.port > 1U) {
    kfree((void const *)karg);
    return (-22);
  } else {
  }
  port = karg->hdr.port;
  karg->port = (int )port;
  pdev = ioc->pcidev;
  karg->pciId = (int )pdev->device;
  karg->hwRev = (int )pdev->revision;
  karg->subSystemDevice = (int )pdev->subsystem_device;
  karg->subSystemVendor = (int )pdev->subsystem_vendor;
  if (cim_rev == 1) {
    karg->pciInfo.u.bits.busNumber = (unsigned int )(pdev->bus)->number;
    karg->pciInfo.u.bits.deviceNumber = (unsigned int )((unsigned char )(pdev->devfn >> 3)) & 31U;
    karg->pciInfo.u.bits.functionNumber = (unsigned int )((unsigned char )pdev->devfn) & 7U;
  } else
  if (cim_rev == 2) {
    karg->pciInfo.u.bits.busNumber = (unsigned int )(pdev->bus)->number;
    karg->pciInfo.u.bits.deviceNumber = (unsigned int )((unsigned char )(pdev->devfn >> 3)) & 31U;
    karg->pciInfo.u.bits.functionNumber = (unsigned int )((unsigned char )pdev->devfn) & 7U;
    karg->pciInfo.segmentID = pci_domain_nr(pdev->bus);
  } else {
  }
  karg->numDevices = 0;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    sdev = __scsi_iterate_devices(ioc->sh, (struct scsi_device *)0);
    goto ldv_42467;
    ldv_42466:
    vdevice = (VirtDevice *)sdev->hostdata;
    if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) {
      goto ldv_42465;
    } else {
    }
    if (((int )(vdevice->vtarget)->tflags & 64) != 0) {
      goto ldv_42465;
    } else {
    }
    karg->numDevices = karg->numDevices + 1;
    ldv_42465:
    sdev = __scsi_iterate_devices(ioc->sh, sdev);
    ldv_42467: ;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      goto ldv_42466;
    } else {
    }
  } else {
  }
  karg->FWVersion = (int )ioc->facts.FWVersion.Word;
  karg->BIOSVersion = (int )ioc->biosVersion;
  strncpy((char *)(& karg->driverVersion), "@(#)mptlinux-3.04.20", 32UL);
  karg->driverVersion[31] = 0;
  karg->busChangeEvent = 0;
  karg->hostId = (char )ioc->pfacts[port].PortSCSIID;
  tmp___3 = 0;
  karg->rsvd[1] = tmp___3;
  karg->rsvd[0] = tmp___3;
  tmp___4 = copy_to_user((void *)arg, (void const *)karg, (unsigned long )data_size);
  if (tmp___4 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_getiocinfo - Unable to write out mpt_ioctl_iocinfo struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1364, uarg);
    kfree((void const *)karg);
    return (-14);
  } else {
  }
  kfree((void const *)karg);
  return (0);
}
}
static int mptctl_gettargetinfo(unsigned long arg )
{
  struct mpt_ioctl_targetinfo *uarg ;
  struct mpt_ioctl_targetinfo karg ;
  MPT_ADAPTER *ioc ;
  VirtDevice *vdevice ;
  char *pmem ;
  int *pdata ;
  int iocnum ;
  int numDevices ;
  int lun ;
  int maxWordsLeft ;
  int numBytes ;
  u8 port ;
  struct scsi_device *sdev ;
  unsigned long tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  uarg = (struct mpt_ioctl_targetinfo *)arg;
  numDevices = 0;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 20UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_gettargetinfo - Unable to read in mpt_ioctl_targetinfo struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1403, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_gettargetinfo() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1410, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_gettargetinfo called.\n", (char *)(& ioc->name));
  } else {
  }
  numBytes = (int )((unsigned int )karg.hdr.maxDataSize - 12U);
  maxWordsLeft = (int )((unsigned long )numBytes / 4UL);
  port = (u8 )karg.hdr.port;
  if (maxWordsLeft <= 0) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_gettargetinfo() - no memory available!\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1426);
    return (-12);
  } else {
  }
  tmp___0 = kzalloc((size_t )numBytes, 208U);
  pmem = (char *)tmp___0;
  if ((unsigned long )pmem == (unsigned long )((char *)0)) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_gettargetinfo() - no memory available!\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1447);
    return (-12);
  } else {
  }
  pdata = (int *)pmem;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    sdev = __scsi_iterate_devices(ioc->sh, (struct scsi_device *)0);
    goto ldv_42487;
    ldv_42486: ;
    if (maxWordsLeft == 0) {
      goto ldv_42485;
    } else {
    }
    vdevice = (VirtDevice *)sdev->hostdata;
    if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) {
      goto ldv_42485;
    } else {
    }
    if (((int )(vdevice->vtarget)->tflags & 64) != 0) {
      goto ldv_42485;
    } else {
    }
    lun = (unsigned int )(vdevice->vtarget)->raidVolume == 0U ? (int )vdevice->lun : 128;
    *pdata = (((int )((unsigned char )lun) << 16) + ((int )(vdevice->vtarget)->channel << 8)) + (int )(vdevice->vtarget)->id;
    pdata = pdata + 1;
    numDevices = numDevices + 1;
    maxWordsLeft = maxWordsLeft - 1;
    ldv_42485:
    sdev = __scsi_iterate_devices(ioc->sh, sdev);
    ldv_42487: ;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      goto ldv_42486;
    } else {
    }
  } else {
  }
  karg.numDevices = numDevices;
  tmp___1 = copy_to_user((void *)arg, (void const *)(& karg), 20UL);
  if (tmp___1 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_gettargetinfo - Unable to write out mpt_ioctl_targetinfo struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1480, uarg);
    kfree((void const *)pmem);
    return (-14);
  } else {
  }
  tmp___2 = copy_to_user((void *)(& uarg->targetInfo), (void const *)pmem, (unsigned long )numBytes);
  if (tmp___2 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_gettargetinfo - Unable to write out mpt_ioctl_targetinfo struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1490, pdata);
    kfree((void const *)pmem);
    return (-14);
  } else {
  }
  kfree((void const *)pmem);
  return (0);
}
}
static int mptctl_readtest(unsigned long arg )
{
  struct mpt_ioctl_test *uarg ;
  struct mpt_ioctl_test karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  uarg = (struct mpt_ioctl_test *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 60UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_readtest - Unable to read in mpt_ioctl_test struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1519, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_readtest() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1526, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_readtest called.\n", (char *)(& ioc->name));
  } else {
  }
  karg.chip_type = (int )(ioc->pcidev)->device;
  strncpy((char *)(& karg.name), (char const *)(& ioc->name), 32UL);
  karg.name[31] = 0U;
  strncpy((char *)(& karg.product), ioc->prod_name, 12UL);
  karg.product[11] = 0U;
  tmp___0 = copy_to_user((void *)arg, (void const *)(& karg), 60UL);
  if (tmp___0 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_readtest - Unable to write out mpt_ioctl_test struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1551, uarg);
    return (-14);
  } else {
  }
  return (0);
}
}
static int mptctl_eventquery(unsigned long arg )
{
  struct mpt_ioctl_eventquery *uarg ;
  struct mpt_ioctl_eventquery karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  uarg = (struct mpt_ioctl_eventquery *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 20UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_eventquery - Unable to read in mpt_ioctl_eventquery struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1580, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_eventquery() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1587, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_eventquery called.\n", (char *)(& ioc->name));
  } else {
  }
  karg.eventEntries = 50U;
  karg.eventTypes = (unsigned int )ioc->eventTypes;
  tmp___0 = copy_to_user((void *)arg, (void const *)(& karg), 20UL);
  if (tmp___0 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_eventquery - Unable to write out mpt_ioctl_eventquery struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1601, uarg);
    return (-14);
  } else {
  }
  return (0);
}
}
static int mptctl_eventenable(unsigned long arg )
{
  struct mpt_ioctl_eventenable *uarg ;
  struct mpt_ioctl_eventenable karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  unsigned long tmp ;
  int sz ;
  void *tmp___0 ;
  {
  uarg = (struct mpt_ioctl_eventenable *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 16UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_eventenable - Unable to read in mpt_ioctl_eventenable struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1619, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_eventenable() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1626, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_eventenable called.\n", (char *)(& ioc->name));
  } else {
  }
  if ((unsigned long )ioc->events == (unsigned long )((struct _mpt_ioctl_events *)0)) {
    sz = 800;
    tmp___0 = kzalloc((size_t )sz, 208U);
    ioc->events = (struct _mpt_ioctl_events *)tmp___0;
    if ((unsigned long )ioc->events == (unsigned long )((struct _mpt_ioctl_events *)0)) {
      printk("\vmptctl: %s: OLD_ERROR - : OLD_ERROR - Insufficient memory to add adapter!\n",
             (char *)(& ioc->name));
      return (-12);
    } else {
    }
    ioc->alloc_total = ioc->alloc_total + sz;
    ioc->eventContext = 0;
  } else {
  }
  ioc->eventTypes = (int )karg.eventTypes;
  return (0);
}
}
static int mptctl_eventreport(unsigned long arg )
{
  struct mpt_ioctl_eventreport *uarg ;
  struct mpt_ioctl_eventreport karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  int numBytes ;
  int maxEvents ;
  int max ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  uarg = (struct mpt_ioctl_eventreport *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 28UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_eventreport - Unable to read in mpt_ioctl_eventreport struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1668, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_eventreport() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1675, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_eventreport called.\n", (char *)(& ioc->name));
  } else {
  }
  numBytes = (int )((unsigned int )karg.hdr.maxDataSize - 12U);
  maxEvents = (int )((unsigned long )numBytes / 16UL);
  max = 50 < maxEvents ? 50 : maxEvents;
  if (max <= 0 || (unsigned long )ioc->events == (unsigned long )((struct _mpt_ioctl_events *)0)) {
    return (-61);
  } else {
  }
  ioc->aen_event_read_flag = 0;
  numBytes = (int )((unsigned int )max * 16U);
  tmp___0 = copy_to_user((void *)(& uarg->eventData), (void const *)ioc->events,
                         (unsigned long )numBytes);
  if (tmp___0 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_eventreport - Unable to write out mpt_ioctl_eventreport struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1702, ioc->events);
    return (-14);
  } else {
  }
  return (0);
}
}
static int mptctl_replace_fw(unsigned long arg )
{
  struct mpt_ioctl_replace_fw *uarg ;
  struct mpt_ioctl_replace_fw karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  int newFwSize ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  uarg = (struct mpt_ioctl_replace_fw *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 20UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_replace_fw - Unable to read in mpt_ioctl_replace_fw struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1722, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_replace_fw() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1729, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_replace_fw called.\n", (char *)(& ioc->name));
  } else {
  }
  if ((unsigned long )ioc->cached_fw == (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  mpt_free_fw_memory(ioc);
  newFwSize = (karg.newImageSize + 3) & -4;
  mpt_alloc_fw_memory(ioc, newFwSize);
  if ((unsigned long )ioc->cached_fw == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___0 = copy_from_user((void *)ioc->cached_fw, (void const *)(& uarg->newImage),
                           (unsigned long )newFwSize);
  if (tmp___0 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_replace_fw - Unable to read in mpt_ioctl_replace_fw image @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1755, uarg);
    mpt_free_fw_memory(ioc);
    return (-14);
  } else {
  }
  ioc->facts.FWImageSize = (U32 )newFwSize;
  return (0);
}
}
static int mptctl_mpt_command(unsigned long arg )
{
  struct mpt_ioctl_command *uarg ;
  struct mpt_ioctl_command karg ;
  MPT_ADAPTER *ioc ;
  int iocnum ;
  int rc ;
  unsigned long tmp ;
  {
  uarg = (struct mpt_ioctl_command *)arg;
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 72UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_mpt_command - Unable to read in mpt_ioctl_command struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1791, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_mpt_command() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1798, iocnum);
    return (-19);
  } else {
  }
  rc = mptctl_do_mpt_command(karg, (void *)(& uarg->MF));
  return (rc);
}
}
static int mptctl_do_mpt_command(struct mpt_ioctl_command karg , void *mfPtr )
{
  MPT_ADAPTER *ioc ;
  MPT_FRAME_HDR *mf ;
  MPIHeader_t *hdr ;
  char *psge ;
  struct buflist bufIn ;
  struct buflist bufOut ;
  dma_addr_t dma_addr_in ;
  dma_addr_t dma_addr_out ;
  int sgSize ;
  int iocnum ;
  int flagsLength ;
  int sz ;
  int rc ;
  int msgContext ;
  u16 req_idx ;
  ulong timeout ;
  unsigned long timeleft ;
  struct scsi_device *sdev ;
  unsigned long flags ;
  u8 function ;
  raw_spinlock_t *tmp ;
  unsigned long tmp___0 ;
  Config_t *config_frame ;
  SCSIIORequest_t *pScsiReq ;
  int qtag ;
  int scsidir ;
  int dataSize ;
  u32 id ;
  struct scsi_target *starget ;
  struct scsi_target *tmp___1 ;
  VirtTarget *vtarget ;
  SCSIIORequest_t *pScsiReq___0 ;
  int qtag___0 ;
  int scsidir___0 ;
  int dataSize___0 ;
  SCSITaskMgmt_t *pScsiTm ;
  IOCInit_t *pInit ;
  u32 high_addr ;
  u32 sense_high ;
  void *tmp___2 ;
  unsigned long tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  unsigned long tmp___7 ;
  int _min1___1 ;
  int _min2___1 ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  {
  mf = (MPT_FRAME_HDR *)0;
  sgSize = 0;
  rc = 0;
  bufOut.kptr = (u8 *)0U;
  bufIn.kptr = bufOut.kptr;
  bufOut.len = 0;
  bufIn.len = bufOut.len;
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_do_mpt_command() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1849, iocnum);
    return (-19);
  } else {
  }
  tmp = spinlock_check(& ioc->taskmgmt_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
    spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
    printk("\vmptctl%s@%d::mptctl_do_mpt_command - Busy with diagnostic reset\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1857);
    return (-16);
  } else {
  }
  spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
  sz = karg.dataSgeOffset * 4;
  if (karg.dataInSize > 0) {
    sz = (int )ioc->SGE_size + sz;
  } else {
  }
  if (karg.dataOutSize > 0) {
    sz = (int )ioc->SGE_size + sz;
  } else {
  }
  if (ioc->req_sz < sz) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Request frame too large (%d) maximum (%d)\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1873, sz, ioc->req_sz);
    return (-14);
  } else {
  }
  mf = mpt_get_msg_frame((int )mptctl_id, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    return (-11);
  } else {
  }
  hdr = (MPIHeader_t *)mf;
  msgContext = (int )hdr->MsgContext;
  req_idx = mf->u.frame.hwhdr.msgctxu.fld.req_idx;
  tmp___0 = copy_from_user((void *)mf, (void const *)mfPtr, (unsigned long )(karg.dataSgeOffset * 4));
  if (tmp___0 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Unable to read MF from mpt_ioctl_command struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           1893, mfPtr);
    function = 255U;
    rc = -14;
    goto done_free_mem;
  } else {
  }
  hdr->MsgContext = (unsigned int )msgContext;
  function = hdr->Function;
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: sending mpi function (0x%02X), req=%p\n", (char *)(& ioc->name),
           (int )hdr->Function, mf);
  } else {
  }
  switch ((int )function) {
  case 3: ;
  case 5:
  karg.dataInSize = 0;
  karg.dataOutSize = karg.dataInSize;
  goto ldv_42567;
  case 4:
  config_frame = (Config_t *)mf;
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: \ttype=0x%02x ext_type=0x%02x number=0x%02x action=0x%02x\n",
           (char *)(& ioc->name), (int )config_frame->Header.PageType, (int )config_frame->ExtPageType,
           (int )config_frame->Header.PageNumber, (int )config_frame->Action);
  } else {
  }
  goto ldv_42567;
  case 19: ;
  case 16: ;
  case 18: ;
  case 24: ;
  case 9: ;
  case 20: ;
  case 23: ;
  case 27: ;
  goto ldv_42567;
  case 0: ;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    pScsiReq = (SCSIIORequest_t *)mf;
    qtag = 1280;
    scsidir = 0;
    id = ioc->devices_per_bus != 0 ? (u32 )ioc->devices_per_bus : 256U;
    if ((u32 )pScsiReq->TargetID > id) {
      printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Target ID out of bounds. \n",
             (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
             1948);
      rc = -19;
      goto done_free_mem;
    } else {
    }
    if ((int )pScsiReq->Bus >= ioc->number_of_buses) {
      printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Target Bus out of bounds. \n",
             (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
             1956);
      rc = -19;
      goto done_free_mem;
    } else {
    }
    pScsiReq->MsgFlags = (unsigned int )pScsiReq->MsgFlags & 254U;
    pScsiReq->MsgFlags = (U8 )((int )((signed char )pScsiReq->MsgFlags) | ((unsigned int )ioc->sg_addr_size == 8U));
    if (karg.maxSenseBytes > 64) {
      pScsiReq->SenseBufferLength = 64U;
    } else {
      pScsiReq->SenseBufferLength = (U8 )karg.maxSenseBytes;
    }
    pScsiReq->SenseBufferLowAddr = ioc->sense_buf_low_dma + (u32 )((int )req_idx * 64);
    sdev = __scsi_iterate_devices(ioc->sh, (struct scsi_device *)0);
    goto ldv_42588;
    ldv_42587:
    tmp___1 = scsi_target(sdev);
    starget = tmp___1;
    vtarget = (VirtTarget *)starget->hostdata;
    if ((unsigned long )vtarget == (unsigned long )((VirtTarget *)0)) {
      goto ldv_42586;
    } else {
    }
    if (((int )pScsiReq->TargetID == (int )vtarget->id && (int )pScsiReq->Bus == (int )vtarget->channel) && ((int )vtarget->tflags & 8) != 0) {
      qtag = 0;
    } else {
    }
    ldv_42586:
    sdev = __scsi_iterate_devices(ioc->sh, sdev);
    ldv_42588: ;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      goto ldv_42587;
    } else {
    }
    if (karg.dataOutSize > 0) {
      scsidir = 16777216;
      dataSize = karg.dataOutSize;
    } else {
      scsidir = 33554432;
      dataSize = karg.dataInSize;
    }
    pScsiReq->Control = (unsigned int )(scsidir | qtag);
    pScsiReq->DataLength = (unsigned int )dataSize;
  } else {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - SCSI driver is not loaded. \n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2011);
    rc = -14;
    goto done_free_mem;
  }
  goto ldv_42567;
  case 26: ;
  goto ldv_42567;
  case 28: ;
  if ((unsigned long )ioc->sh == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - SCSI driver is not loaded. \n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2030);
    rc = -14;
    goto done_free_mem;
  } else {
  }
  goto ldv_42567;
  case 21: ;
  goto ldv_42567;
  case 22: ;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    pScsiReq___0 = (SCSIIORequest_t *)mf;
    qtag___0 = 0;
    scsidir___0 = 33554432;
    pScsiReq___0->MsgFlags = (unsigned int )pScsiReq___0->MsgFlags & 254U;
    pScsiReq___0->MsgFlags = (U8 )((int )((signed char )pScsiReq___0->MsgFlags) | ((unsigned int )ioc->sg_addr_size == 8U));
    if (karg.maxSenseBytes > 64) {
      pScsiReq___0->SenseBufferLength = 64U;
    } else {
      pScsiReq___0->SenseBufferLength = (U8 )karg.maxSenseBytes;
    }
    pScsiReq___0->SenseBufferLowAddr = ioc->sense_buf_low_dma + (u32 )((int )req_idx * 64);
    if (karg.dataOutSize > 0) {
      scsidir___0 = 16777216;
      dataSize___0 = karg.dataOutSize;
    } else {
      scsidir___0 = 33554432;
      dataSize___0 = karg.dataInSize;
    }
    pScsiReq___0->Control = (unsigned int )(scsidir___0 | qtag___0);
    pScsiReq___0->DataLength = (unsigned int )dataSize___0;
  } else {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - SCSI driver is not loaded. \n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2087);
    rc = -14;
    goto done_free_mem;
  }
  goto ldv_42567;
  case 1:
  pScsiTm = (SCSITaskMgmt_t *)mf;
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: \tTaskType=0x%x MsgFlags=0x%x TaskMsgContext=0x%x id=%d channel=%d\n",
           (char *)(& ioc->name), (int )pScsiTm->TaskType, pScsiTm->TaskMsgContext,
           (int )pScsiTm->MsgFlags, (int )pScsiTm->TargetID, (int )pScsiTm->Bus);
  } else {
  }
  goto ldv_42567;
  case 2:
  pInit = (IOCInit_t *)mf;
  high_addr = (unsigned int )(ioc->req_frames_dma >> 32);
  sense_high = (unsigned int )(ioc->sense_buf_pool_dma >> 32);
  if ((((((unsigned int )pInit->Flags != 0U || (int )pInit->MaxDevices != (int )ioc->facts.MaxDevices) || (int )pInit->MaxBuses != (int )ioc->facts.MaxBuses) || (int )pInit->ReplyFrameSize != (int )((unsigned short )ioc->reply_sz)) || pInit->HostMfaHighAddr != high_addr) || pInit->SenseBufferHighAddr != sense_high) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - IOC_INIT issued with 1 or more incorrect parameters. Rejected.\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2129);
    rc = -14;
    goto done_free_mem;
  } else {
  }
  goto ldv_42567;
  default:
  printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Illegal request (function 0x%x) \n",
         (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
         2162, (int )hdr->Function);
  rc = -14;
  goto done_free_mem;
  }
  ldv_42567:
  psge = (char *)mf + (unsigned long )karg.dataSgeOffset;
  flagsLength = 0;
  if (karg.dataOutSize > 0) {
    sgSize = sgSize + 1;
  } else {
  }
  if (karg.dataInSize > 0) {
    sgSize = sgSize + 1;
  } else {
  }
  if (sgSize > 0) {
    if (karg.dataOutSize > 0) {
      if (karg.dataInSize > 0) {
        flagsLength = 1409286144;
      } else {
        flagsLength = -721420288;
      }
      flagsLength = karg.dataOutSize | flagsLength;
      bufOut.len = karg.dataOutSize;
      tmp___2 = pci_alloc_consistent(ioc->pcidev, (size_t )bufOut.len, & dma_addr_out);
      bufOut.kptr = (u8 *)tmp___2;
      if ((unsigned long )bufOut.kptr == (unsigned long )((u8 *)0U)) {
        rc = -12;
        goto done_free_mem;
      } else {
        (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, dma_addr_out);
        psge = psge + (unsigned long )ioc->SGE_size;
        tmp___3 = copy_from_user((void *)bufOut.kptr, (void const *)karg.dataOutBufPtr,
                                 (unsigned long )bufOut.len);
        if (tmp___3 != 0UL) {
          printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Unable to read user data struct @ %p\n",
                 (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
                 2217, karg.dataOutBufPtr);
          rc = -14;
          goto done_free_mem;
        } else {
        }
      }
    } else {
    }
    if (karg.dataInSize > 0) {
      flagsLength = -788529152;
      flagsLength = karg.dataInSize | flagsLength;
      bufIn.len = karg.dataInSize;
      tmp___4 = pci_alloc_consistent(ioc->pcidev, (size_t )bufIn.len, & dma_addr_in);
      bufIn.kptr = (u8 *)tmp___4;
      if ((unsigned long )bufIn.kptr == (unsigned long )((u8 *)0U)) {
        rc = -12;
        goto done_free_mem;
      } else {
        (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, dma_addr_in);
      }
    } else {
    }
  } else {
    (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, 0xffffffffffffffffULL);
  }
  ioc->ioctl_cmds.msg_context = hdr->MsgContext;
  ioc->ioctl_cmds.status = 4U;
  if ((unsigned int )hdr->Function == 1U) {
    ldv_mutex_lock_22(& ioc->taskmgmt_cmds.mutex);
    tmp___5 = mpt_set_taskmgmt_in_progress_flag(ioc);
    if (tmp___5 != 0) {
      ldv_mutex_unlock_23(& ioc->taskmgmt_cmds.mutex);
      goto done_free_mem;
    } else {
    }
    if ((int )ioc->facts.IOCCapabilities & 1 && (unsigned int )ioc->facts.MsgVersion > 260U) {
      mpt_put_msg_frame_hi_pri((int )mptctl_id, ioc, mf);
    } else {
      rc = mpt_send_handshake_request((int )mptctl_id, ioc, 52, (u32 *)mf, 1);
      if (rc != 0) {
        if ((ioc->debug_level & 128) != 0) {
          printk("\vmptctl: %s: OLD_ERROR - send_handshake FAILED! (ioc %p, mf %p)\n",
                 (char *)(& ioc->name), ioc, mf);
        } else {
        }
        mpt_clear_taskmgmt_in_progress_flag(ioc);
        rc = -61;
        ldv_mutex_unlock_24(& ioc->taskmgmt_cmds.mutex);
        goto done_free_mem;
      } else {
      }
    }
  } else {
    mpt_put_msg_frame((int )mptctl_id, ioc, mf);
  }
  timeout = karg.timeout > 0 ? (ulong )karg.timeout : 10UL;
  retry_wait:
  timeleft = wait_for_completion_timeout(& ioc->ioctl_cmds.done, timeout * 250UL);
  if (((int )ioc->ioctl_cmds.status & 2) == 0) {
    rc = -62;
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptctl: %s: OLD_ERROR - %s: TIMED OUT!\n", (char *)(& ioc->name), "mptctl_do_mpt_command");
    } else {
    }
    if (((int )ioc->ioctl_cmds.status & 8) != 0) {
      if ((unsigned int )function == 1U) {
        ldv_mutex_unlock_25(& ioc->taskmgmt_cmds.mutex);
      } else {
      }
      goto done_free_mem;
    } else {
    }
    if (timeleft == 0UL) {
      tmp___6 = mpt_GetIocState(ioc, 0);
      printk("\fmptctl: %s: WARNING - mpt cmd timeout, doorbell=0x%08x function=0x%x\n",
             (char *)(& ioc->name), tmp___6, (int )function);
      if ((unsigned int )function == 1U) {
        ldv_mutex_unlock_26(& ioc->taskmgmt_cmds.mutex);
      } else {
      }
      mptctl_timeout_expired(ioc, mf);
      mf = (MPT_FRAME_HDR *)0;
    } else {
      goto retry_wait;
    }
    goto done_free_mem;
  } else {
  }
  if ((unsigned int )function == 1U) {
    ldv_mutex_unlock_27(& ioc->taskmgmt_cmds.mutex);
  } else {
  }
  mf = (MPT_FRAME_HDR *)0;
  if ((int )ioc->ioctl_cmds.status & 1) {
    if (karg.maxReplyBytes < ioc->reply_sz) {
      _min1 = karg.maxReplyBytes;
      _min2 = (int )ioc->ioctl_cmds.reply[2] * 4;
      sz = _min1 < _min2 ? _min1 : _min2;
    } else {
      _min1___0 = ioc->reply_sz;
      _min2___0 = (int )ioc->ioctl_cmds.reply[2] * 4;
      sz = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    }
    if (sz > 0) {
      tmp___7 = copy_to_user((void *)karg.replyFrameBufPtr, (void const *)(& ioc->ioctl_cmds.reply),
                             (unsigned long )sz);
      if (tmp___7 != 0UL) {
        printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Unable to write out reply frame %p\n",
               (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
               2330, karg.replyFrameBufPtr);
        rc = -61;
        goto done_free_mem;
      } else {
      }
    } else {
    }
  } else {
  }
  if (((int )ioc->ioctl_cmds.status & 16) != 0) {
    _min1___1 = karg.maxSenseBytes;
    _min2___1 = 64;
    sz = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
    if (sz > 0) {
      tmp___8 = copy_to_user((void *)karg.senseDataPtr, (void const *)(& ioc->ioctl_cmds.sense),
                             (unsigned long )sz);
      if (tmp___8 != 0UL) {
        printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Unable to write sense data to user %p\n",
               (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
               2346, karg.senseDataPtr);
        rc = -61;
        goto done_free_mem;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((((int )ioc->ioctl_cmds.status & 2) != 0 && karg.dataInSize > 0) && (unsigned long )bufIn.kptr != (unsigned long )((u8 *)0U)) {
    tmp___9 = copy_to_user((void *)karg.dataInBufPtr, (void const *)bufIn.kptr,
                           (unsigned long )karg.dataInSize);
    if (tmp___9 != 0UL) {
      printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_do_mpt_command - Unable to write data to user %p\n",
             (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
             2364, karg.dataInBufPtr);
      rc = -61;
    } else {
    }
  } else {
  }
  done_free_mem:
  ioc->ioctl_cmds.status = 0U;
  ioc->ioctl_cmds.msg_context = 0U;
  if ((unsigned long )bufOut.kptr != (unsigned long )((u8 *)0U)) {
    pci_free_consistent(ioc->pcidev, (size_t )bufOut.len, (void *)bufOut.kptr, dma_addr_out);
  } else {
  }
  if ((unsigned long )bufIn.kptr != (unsigned long )((u8 *)0U)) {
    pci_free_consistent(ioc->pcidev, (size_t )bufIn.len, (void *)bufIn.kptr, dma_addr_in);
  } else {
  }
  if ((unsigned long )mf != (unsigned long )((MPT_FRAME_HDR *)0)) {
    mpt_free_msg_frame(ioc, mf);
  } else {
  }
  return (rc);
}
}
static int mptctl_hp_hostinfo(unsigned long arg , unsigned int data_size )
{
  hp_host_info_t *uarg ;
  MPT_ADAPTER *ioc ;
  struct pci_dev *pdev ;
  char *pbuf ;
  dma_addr_t buf_dma ;
  hp_host_info_t karg ;
  CONFIGPARMS cfg ;
  ConfigPageHeader_t hdr ;
  int iocnum ;
  int rc ;
  int cim_rev ;
  ToolboxIstwiReadWriteRequest_t *IstwiRWRequest ;
  MPT_FRAME_HDR *mf ;
  unsigned long timeleft ;
  int retval ;
  u32 msgcontext ;
  unsigned long tmp ;
  void *tmp___0 ;
  ManufacturingPage0_t *pdata ;
  size_t tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  MPT_SCSI_HOST *hd ;
  void *tmp___5 ;
  void *tmp___6 ;
  u32 tmp___7 ;
  unsigned long tmp___8 ;
  {
  uarg = (hp_host_info_t *)arg;
  pbuf = (char *)0;
  mf = (MPT_FRAME_HDR *)0;
  if (data_size == 100U) {
    cim_rev = 1;
  } else
  if (data_size == 112U) {
    cim_rev = 0;
  } else {
    return (-14);
  }
  tmp = copy_from_user((void *)(& karg), (void const *)uarg, 100UL);
  if (tmp != 0UL) {
    printk("\vmptctl%s@%d::mptctl_hp_host_info - Unable to read in hp_host_info struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2438, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_hp_hostinfo() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2445, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: : mptctl_hp_hostinfo called.\n", (char *)(& ioc->name));
  } else {
  }
  pdev = ioc->pcidev;
  karg.vendor = pdev->vendor;
  karg.device = pdev->device;
  karg.subsystem_id = pdev->subsystem_device;
  karg.subsystem_vendor = pdev->subsystem_vendor;
  karg.devfn = (u8 )pdev->devfn;
  karg.bus = (pdev->bus)->number;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    karg.host_no = (ushort )(ioc->sh)->host_no;
  } else {
    karg.host_no = 65535U;
  }
  karg.fw_version[0] = (unsigned int )ioc->facts.FWVersion.Struct.Major > 9U ? (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Major / 10U)) + 48U : 48U;
  karg.fw_version[1] = (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Major % 10U)) + 48U;
  karg.fw_version[2] = 46U;
  karg.fw_version[3] = (unsigned int )ioc->facts.FWVersion.Struct.Minor > 9U ? (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Minor / 10U)) + 48U : 48U;
  karg.fw_version[4] = (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Minor % 10U)) + 48U;
  karg.fw_version[5] = 46U;
  karg.fw_version[6] = (unsigned int )ioc->facts.FWVersion.Struct.Unit > 9U ? (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Unit / 10U)) + 48U : 48U;
  karg.fw_version[7] = (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Unit % 10U)) + 48U;
  karg.fw_version[8] = 46U;
  karg.fw_version[9] = (unsigned int )ioc->facts.FWVersion.Struct.Dev > 9U ? (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Dev / 10U)) + 48U : 48U;
  karg.fw_version[10] = (unsigned int )((u8 )((unsigned int )ioc->facts.FWVersion.Struct.Dev % 10U)) + 48U;
  karg.fw_version[11] = 0U;
  hdr.PageVersion = 0U;
  hdr.PageLength = 0U;
  hdr.PageNumber = 0U;
  hdr.PageType = 9U;
  cfg.cfghdr.hdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = 0U;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 10U;
  strncpy((char *)(& karg.serial_number), " ", 24UL);
  tmp___3 = mpt_config(ioc, & cfg);
  if (tmp___3 == 0) {
    if ((unsigned int )(cfg.cfghdr.hdr)->PageLength != 0U) {
      cfg.action = 1U;
      tmp___0 = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4),
                                     & buf_dma);
      pbuf = (char *)tmp___0;
      if ((unsigned long )pbuf != (unsigned long )((char *)0)) {
        cfg.physAddr = buf_dma;
        tmp___2 = mpt_config(ioc, & cfg);
        if (tmp___2 == 0) {
          pdata = (ManufacturingPage0_t *)pbuf;
          tmp___1 = strlen((char const *)(& pdata->BoardTracerNumber));
          if (tmp___1 > 1UL) {
            strncpy((char *)(& karg.serial_number), (char const *)(& pdata->BoardTracerNumber),
                    24UL);
            karg.serial_number[23] = 0U;
          } else {
          }
        } else {
        }
        pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4), (void *)pbuf,
                            buf_dma);
        pbuf = (char *)0;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___4 = mpt_GetIocState(ioc, 1);
  rc = (int )tmp___4;
  switch (rc) {
  case 536870912:
  karg.ioc_status = 2U;
  goto ldv_42638;
  case 1073741824:
  karg.ioc_status = 3U;
  goto ldv_42638;
  case 0: ;
  case 268435456: ;
  default:
  karg.ioc_status = 1U;
  goto ldv_42638;
  }
  ldv_42638:
  karg.base_io_addr = (u32 )pdev->resource[0].start;
  if ((unsigned int )ioc->bus_type == 2U || (unsigned int )ioc->bus_type == 0U) {
    karg.bus_phys_width = 1U;
  } else {
    karg.bus_phys_width = 3U;
  }
  karg.hard_resets = 0U;
  karg.soft_resets = 0U;
  karg.timeouts = 0U;
  if ((unsigned long )ioc->sh != (unsigned long )((struct Scsi_Host *)0)) {
    tmp___5 = shost_priv(ioc->sh);
    hd = (MPT_SCSI_HOST *)tmp___5;
    if ((unsigned long )hd != (unsigned long )((MPT_SCSI_HOST *)0) && cim_rev == 1) {
      karg.hard_resets = (unsigned int )ioc->hard_resets;
      karg.soft_resets = (unsigned int )ioc->soft_resets;
      karg.timeouts = (unsigned int )ioc->timeouts;
    } else {
    }
  } else {
  }
  mf = mpt_get_msg_frame((int )mptctl_id, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\fmptctl: %s: WARNING - %s, no msg frames!!\n", (char *)(& ioc->name),
             "mptctl_hp_hostinfo");
    } else {
    }
    goto out;
  } else {
  }
  IstwiRWRequest = (ToolboxIstwiReadWriteRequest_t *)mf;
  msgcontext = IstwiRWRequest->MsgContext;
  memset((void *)IstwiRWRequest, 0, 40UL);
  IstwiRWRequest->MsgContext = msgcontext;
  IstwiRWRequest->Function = 23U;
  IstwiRWRequest->Tool = 3U;
  IstwiRWRequest->Flags = 1U;
  IstwiRWRequest->NumAddressBytes = 1U;
  IstwiRWRequest->DataLength = 4U;
  if ((int )pdev->devfn & 1) {
    IstwiRWRequest->DeviceAddr = 178U;
  } else {
    IstwiRWRequest->DeviceAddr = 176U;
  }
  tmp___6 = pci_alloc_consistent(ioc->pcidev, 4UL, & buf_dma);
  pbuf = (char *)tmp___6;
  if ((unsigned long )pbuf == (unsigned long )((char *)0)) {
    goto out;
  } else {
  }
  (*(ioc->add_sge))((void *)(& IstwiRWRequest->SGL), 3506438148U, buf_dma);
  retval = 0;
  ioc->ioctl_cmds.msg_context = IstwiRWRequest->MsgContext;
  ioc->ioctl_cmds.status = 4U;
  mpt_put_msg_frame((int )mptctl_id, ioc, mf);
  retry_wait:
  timeleft = wait_for_completion_timeout(& ioc->ioctl_cmds.done, 2500UL);
  if (((int )ioc->ioctl_cmds.status & 2) == 0) {
    retval = -62;
    printk("\fmptctl: %s: WARNING - %s: failed\n", (char *)(& ioc->name), "mptctl_hp_hostinfo");
    if (((int )ioc->ioctl_cmds.status & 8) != 0) {
      mpt_free_msg_frame(ioc, mf);
      goto out;
    } else {
    }
    if (timeleft == 0UL) {
      tmp___7 = mpt_GetIocState(ioc, 0);
      printk("\fmptctl: %s: WARNING - HOST INFO command timeout, doorbell=0x%08x\n",
             (char *)(& ioc->name), tmp___7);
      mptctl_timeout_expired(ioc, mf);
    } else {
      goto retry_wait;
    }
    goto out;
  } else {
  }
  if ((int )ioc->ioctl_cmds.status & 1) {
    karg.rsvd = *((u32 *)pbuf);
  } else {
  }
  out:
  ioc->ioctl_cmds.status = 0U;
  ioc->ioctl_cmds.msg_context = 0U;
  if ((unsigned long )pbuf != (unsigned long )((char *)0)) {
    pci_free_consistent(ioc->pcidev, 4UL, (void *)pbuf, buf_dma);
  } else {
  }
  tmp___8 = copy_to_user((void *)arg, (void const *)(& karg), 100UL);
  if (tmp___8 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_hpgethostinfo - Unable to write out hp_host_info @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2640, uarg);
    return (-14);
  } else {
  }
  return (0);
}
}
static int mptctl_hp_targetinfo(unsigned long arg )
{
  hp_target_info_t *uarg ;
  SCSIDevicePage0_t *pg0_alloc ;
  SCSIDevicePage3_t *pg3_alloc ;
  MPT_ADAPTER *ioc ;
  MPT_SCSI_HOST *hd ;
  hp_target_info_t karg ;
  int iocnum ;
  int data_sz ;
  dma_addr_t page_dma ;
  CONFIGPARMS cfg ;
  ConfigPageHeader_t hdr ;
  int tmp ;
  int np ;
  int rc ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  unsigned long tmp___5 ;
  {
  uarg = (hp_target_info_t *)arg;
  hd = (MPT_SCSI_HOST *)0;
  rc = 0;
  tmp___0 = copy_from_user((void *)(& karg), (void const *)uarg, 48UL);
  if (tmp___0 != 0UL) {
    printk("\vmptctl%s@%d::mptctl_hp_targetinfo - Unable to read in hp_host_targetinfo struct @ %p\n",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2678, uarg);
    return (-14);
  } else {
  }
  iocnum = mpt_verify_adapter((int )karg.hdr.iocnum, & ioc);
  if (iocnum < 0 || (unsigned long )ioc == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl%s::mptctl_hp_targetinfo() @%d - ioc%d not found!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2685, iocnum);
    return (-19);
  } else {
  }
  if ((ioc->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: mptctl_hp_targetinfo called.\n", (char *)(& ioc->name));
  } else {
  }
  if ((unsigned int )ioc->bus_type == 2U || (unsigned int )ioc->bus_type == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )ioc->spi_data.sdp0length == 0U || (unsigned long )ioc->sh == (unsigned long )((struct Scsi_Host *)0)) {
    return (0);
  } else {
  }
  if ((ioc->sh)->host_no != karg.hdr.host) {
    return (-19);
  } else {
  }
  data_sz = (int )ioc->spi_data.sdp0length * 4;
  tmp___1 = pci_alloc_consistent(ioc->pcidev, (size_t )data_sz, & page_dma);
  pg0_alloc = (SCSIDevicePage0_t *)tmp___1;
  if ((unsigned long )pg0_alloc != (unsigned long )((SCSIDevicePage0_t *)0)) {
    hdr.PageVersion = ioc->spi_data.sdp0version;
    hdr.PageLength = (U8 )data_sz;
    hdr.PageNumber = 0U;
    hdr.PageType = 4U;
    cfg.cfghdr.hdr = & hdr;
    cfg.action = 1U;
    cfg.dir = 0U;
    cfg.timeout = 0U;
    cfg.physAddr = page_dma;
    cfg.pageAddr = (karg.hdr.channel << 8) | karg.hdr.id;
    rc = mpt_config(ioc, & cfg);
    if (rc == 0) {
      np = (int )pg0_alloc->NegotiatedParameters;
      karg.negotiated_width = (np & 536870912) != 0 ? 3U : 2U;
      if ((np & 16711680) != 0) {
        tmp = (np & 65280) >> 8;
        if (tmp <= 8) {
          karg.negotiated_speed = 8U;
        } else
        if (tmp <= 9) {
          karg.negotiated_speed = 6U;
        } else
        if (tmp <= 10) {
          karg.negotiated_speed = 5U;
        } else
        if (tmp <= 12) {
          karg.negotiated_speed = 4U;
        } else
        if (tmp <= 37) {
          karg.negotiated_speed = 3U;
        } else {
          karg.negotiated_speed = 2U;
        }
      } else {
        karg.negotiated_speed = 2U;
      }
    } else {
    }
    pci_free_consistent(ioc->pcidev, (size_t )data_sz, (void *)pg0_alloc, page_dma);
  } else {
  }
  karg.message_rejects = 4294967295U;
  karg.phase_errors = 4294967295U;
  karg.parity_errors = 4294967295U;
  karg.select_timeouts = 4294967295U;
  hdr.PageVersion = 0U;
  hdr.PageLength = 0U;
  hdr.PageNumber = 3U;
  hdr.PageType = 4U;
  cfg.cfghdr.hdr = & hdr;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 0U;
  cfg.physAddr = 0xffffffffffffffffULL;
  tmp___3 = mpt_config(ioc, & cfg);
  if (tmp___3 == 0 && (unsigned int )(cfg.cfghdr.hdr)->PageLength != 0U) {
    cfg.action = 1U;
    data_sz = (int )(cfg.cfghdr.hdr)->PageLength * 4;
    tmp___2 = pci_alloc_consistent(ioc->pcidev, (size_t )data_sz, & page_dma);
    pg3_alloc = (SCSIDevicePage3_t *)tmp___2;
    if ((unsigned long )pg3_alloc != (unsigned long )((SCSIDevicePage3_t *)0)) {
      cfg.physAddr = page_dma;
      cfg.pageAddr = (karg.hdr.channel << 8) | karg.hdr.id;
      rc = mpt_config(ioc, & cfg);
      if (rc == 0) {
        karg.message_rejects = (unsigned int )pg3_alloc->MsgRejectCount;
        karg.phase_errors = (unsigned int )pg3_alloc->PhaseErrorCount;
        karg.parity_errors = (unsigned int )pg3_alloc->ParityErrorCount;
      } else {
      }
      pci_free_consistent(ioc->pcidev, (size_t )data_sz, (void *)pg3_alloc, page_dma);
    } else {
    }
  } else {
  }
  tmp___4 = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp___4;
  if ((unsigned long )hd != (unsigned long )((MPT_SCSI_HOST *)0)) {
    karg.select_timeouts = (u32 )hd->sel_timeout[karg.hdr.id];
  } else {
  }
  tmp___5 = copy_to_user((void *)arg, (void const *)(& karg), 48UL);
  if (tmp___5 != 0UL) {
    printk("\vmptctl: %s: OLD_ERROR - %s@%d::mptctl_hp_target_info - Unable to write out mpt_ioctl_targetinfo struct @ %p\n",
           (char *)(& ioc->name), (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/879/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptctl.c",
           2791, uarg);
    return (-14);
  } else {
  }
  return (0);
}
}
static struct file_operations const mptctl_fops =
     {& __this_module, & no_llseek, 0, 0, 0, 0, 0, 0, & mptctl_ioctl, & compat_mpctl_ioctl,
    0, 0, 0, 0, 0, 0, 0, & mptctl_fasync, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice mptctl_miscdev =
     {220, "mptctl", & mptctl_fops, {0, 0}, 0, 0, 0, 0, (unsigned short)0};
static int compat_mptfwxfer_ioctl(struct file *filp , unsigned int cmd , unsigned long arg )
{
  struct mpt_fw_xfer32 kfw32 ;
  struct mpt_fw_xfer kfw ;
  MPT_ADAPTER *iocp ;
  int iocnum ;
  int iocnumX ;
  int nonblock ;
  int ret ;
  unsigned long tmp ;
  {
  iocp = (MPT_ADAPTER *)0;
  nonblock = (int )filp->f_flags & 2048;
  tmp = copy_from_user((void *)(& kfw32), (void const *)arg, 12UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  iocnumX = (int )kfw32.iocnum & 255;
  iocnum = mpt_verify_adapter(iocnumX, & iocp);
  if (iocnum < 0 || (unsigned long )iocp == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl::compat_mptfwxfer_ioctl @%d - ioc%d not found!\n", 2840, iocnumX);
    return (-19);
  } else {
  }
  ret = mptctl_syscall_down(iocp, nonblock);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: compat_mptfwxfer_ioctl() called\n", (char *)(& iocp->name));
  } else {
  }
  kfw.iocnum = (unsigned int )iocnum;
  kfw.fwlen = kfw32.fwlen;
  kfw.bufp = compat_ptr(kfw32.bufp);
  ret = mptctl_do_fw_download((int )kfw.iocnum, (char *)kfw.bufp, (size_t )kfw.fwlen);
  ldv_mutex_unlock_28(& iocp->ioctl_cmds.mutex);
  return (ret);
}
}
static int compat_mpt_command(struct file *filp , unsigned int cmd , unsigned long arg )
{
  struct mpt_ioctl_command32 karg32 ;
  struct mpt_ioctl_command32 *uarg ;
  struct mpt_ioctl_command karg ;
  MPT_ADAPTER *iocp ;
  int iocnum ;
  int iocnumX ;
  int nonblock ;
  int ret ;
  unsigned long tmp ;
  {
  uarg = (struct mpt_ioctl_command32 *)arg;
  iocp = (MPT_ADAPTER *)0;
  nonblock = (int )filp->f_flags & 2048;
  tmp = copy_from_user((void *)(& karg32), (void const *)arg, 56UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  iocnumX = (int )karg32.hdr.iocnum & 255;
  iocnum = mpt_verify_adapter(iocnumX, & iocp);
  if (iocnum < 0 || (unsigned long )iocp == (unsigned long )((MPT_ADAPTER *)0)) {
    printk("\017mptctl::compat_mpt_command @%d - ioc%d not found!\n", 2880, iocnumX);
    return (-19);
  } else {
  }
  ret = mptctl_syscall_down(iocp, nonblock);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((iocp->debug_level & 131072) != 0) {
    printk("\017mptctl: %s: compat_mpt_command() called\n", (char *)(& iocp->name));
  } else {
  }
  karg.hdr.iocnum = karg32.hdr.iocnum;
  karg.hdr.port = karg32.hdr.port;
  karg.timeout = karg32.timeout;
  karg.maxReplyBytes = karg32.maxReplyBytes;
  karg.dataInSize = karg32.dataInSize;
  karg.dataOutSize = karg32.dataOutSize;
  karg.maxSenseBytes = karg32.maxSenseBytes;
  karg.dataSgeOffset = karg32.dataSgeOffset;
  karg.replyFrameBufPtr = (char *)((unsigned long )karg32.replyFrameBufPtr);
  karg.dataInBufPtr = (char *)((unsigned long )karg32.dataInBufPtr);
  karg.dataOutBufPtr = (char *)((unsigned long )karg32.dataOutBufPtr);
  karg.senseDataPtr = (char *)((unsigned long )karg32.senseDataPtr);
  ret = mptctl_do_mpt_command(karg, (void *)(& uarg->MF));
  ldv_mutex_unlock_29(& iocp->ioctl_cmds.mutex);
  return (ret);
}
}
static long compat_mpctl_ioctl(struct file *f , unsigned int cmd , unsigned long arg )
{
  long ret ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_mutex_lock_30(& mpctl_mutex);
  switch (cmd) {
  case 3227282705U: ;
  case 3226758417U: ;
  case 3227020561U: ;
  case 3222564114U: ;
  case 3222564117U: ;
  case 3222301974U: ;
  case 3223088407U: ;
  case 3222039832U: ;
  case 2154060308U: ;
  case 2150652437U: ;
  case 3225185555U:
  ret = __mptctl_ioctl(f, cmd, arg);
  goto ldv_42708;
  case 3224923412U:
  tmp = compat_mpt_command(f, cmd, arg);
  ret = (long )tmp;
  goto ldv_42708;
  case 3222039823U:
  tmp___0 = compat_mptfwxfer_ioctl(f, cmd, arg);
  ret = (long )tmp___0;
  goto ldv_42708;
  default:
  ret = -515L;
  goto ldv_42708;
  }
  ldv_42708:
  ldv_mutex_unlock_31(& mpctl_mutex);
  return (ret);
}
}
static int mptctl_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  MPT_ADAPTER *ioc ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = pci_get_drvdata(pdev);
  ioc = (MPT_ADAPTER *)tmp;
  __mutex_init(& ioc->ioctl_cmds.mutex, "&ioc->ioctl_cmds.mutex", & __key);
  init_completion(& ioc->ioctl_cmds.done);
  return (0);
}
}
static void mptctl_remove(struct pci_dev *pdev )
{
  {
  return;
}
}
static struct mpt_pci_driver mptctl_driver = {& mptctl_probe, & mptctl_remove};
static int mptctl_init(void)
{
  int err ;
  int where ;
  {
  where = 1;
  printk("\016%s %s\n", (char *)"Fusion MPT misc device (ioctl) driver", (char *)"3.04.20");
  mpt_device_driver_register(& mptctl_driver, 1);
  err = ldv_misc_register_32(& mptctl_miscdev);
  if (err < 0) {
    printk("\vmptctl: Can\'t register misc device [minor=%d].\n", 220);
    goto out_fail;
  } else {
  }
  printk("\016mptctl: Registered with Fusion MPT base driver\n");
  printk("\016mptctl: /dev/%s @ (major,minor=%d,%d)\n", mptctl_miscdev.name, 10, mptctl_miscdev.minor);
  where = where + 1;
  mptctl_id = mpt_register(& mptctl_reply, 1, (char *)"mptctl_reply");
  if ((unsigned int )mptctl_id == 0U || (unsigned int )mptctl_id > 15U) {
    printk("\vmptctl: OLD_ERROR: Failed to register with Fusion MPT base driver\n");
    ldv_misc_deregister_33(& mptctl_miscdev);
    err = -16;
    goto out_fail;
  } else {
  }
  mptctl_taskmgmt_id = mpt_register(& mptctl_taskmgmt_reply, 1, (char *)"mptctl_taskmgmt_reply");
  if ((unsigned int )mptctl_taskmgmt_id == 0U || (unsigned int )mptctl_taskmgmt_id > 15U) {
    printk("\vmptctl: OLD_ERROR: Failed to register with Fusion MPT base driver\n");
    mpt_deregister((int )mptctl_id);
    ldv_misc_deregister_34(& mptctl_miscdev);
    err = -16;
    goto out_fail;
  } else {
  }
  mpt_reset_register((int )mptctl_id, & mptctl_ioc_reset);
  mpt_event_register((int )mptctl_id, & mptctl_event_process);
  return (0);
  out_fail:
  mpt_device_driver_deregister(1);
  return (err);
}
}
static void mptctl_exit(void)
{
  {
  ldv_misc_deregister_35(& mptctl_miscdev);
  printk("\016mptctl: Deregistered /dev/%s @ (major,minor=%d,%d)\n", mptctl_miscdev.name,
         10, mptctl_miscdev.minor);
  mpt_event_deregister((int )mptctl_id);
  mpt_reset_deregister((int )mptctl_id);
  mpt_deregister((int )mptctl_taskmgmt_id);
  mpt_deregister((int )mptctl_id);
  mpt_device_driver_deregister(1);
  return;
}
}
extern int ldv_open_2(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_release_2(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_file_operations_2(void)
{
  void *tmp ;
  {
  mptctl_fops_group1 = ldv_init_zalloc(1000UL);
  tmp = ldv_init_zalloc(504UL);
  mptctl_fops_group2 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_mpt_pci_driver_1(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  mptctl_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  unsigned long ldvarg7 ;
  int ldvarg3 ;
  int ldvarg5 ;
  int ldvarg6 ;
  unsigned long ldvarg1 ;
  unsigned int ldvarg8 ;
  loff_t ldvarg4 ;
  unsigned int ldvarg2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_2 = 0;
  ldv_42800:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = mptctl_probe(mptctl_driver_group0, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_42780;
    case 1: ;
    if (ldv_state_variable_1 == 2) {
      mptctl_remove(mptctl_driver_group0);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_42780;
    default:
    ldv_stop();
    }
    ldv_42780: ;
  } else {
  }
  goto ldv_42783;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      mptctl_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_42787;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = mptctl_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_1 = 1;
        ldv_initialize_mpt_pci_driver_1();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_42787;
    default:
    ldv_stop();
    }
    ldv_42787: ;
  } else {
  }
  goto ldv_42783;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_2 == 2) {
      compat_mpctl_ioctl(mptctl_fops_group2, ldvarg8, ldvarg7);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_42792;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      mptctl_fasync(ldvarg5, mptctl_fops_group2, ldvarg6);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      mptctl_fasync(ldvarg5, mptctl_fops_group2, ldvarg6);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_42792;
    case 2: ;
    if (ldv_state_variable_2 == 2) {
      no_llseek(mptctl_fops_group2, ldvarg4, ldvarg3);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_42792;
    case 3: ;
    if (ldv_state_variable_2 == 2) {
      mptctl_ioctl(mptctl_fops_group2, ldvarg2, ldvarg1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_42792;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_2 = ldv_open_2();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_42792;
    case 5: ;
    if (ldv_state_variable_2 == 2) {
      ldv_release_2();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_42792;
    default:
    ldv_stop();
    }
    ldv_42792: ;
  } else {
  }
  goto ldv_42783;
  default:
  ldv_stop();
  }
  ldv_42783: ;
  goto ldv_42800;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
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
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_12(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of__MPT_MGMT(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_lock_interruptible_13(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex_of__MPT_MGMT(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mpctl_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mpctl_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mpctl_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mpctl_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mpctl_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mpctl_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_misc_register_32(struct miscdevice *misc )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_register(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  ldv_file_operations_2();
  return (ldv_func_res);
}
}
int ldv_misc_deregister_33(struct miscdevice *misc )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 0;
  return (ldv_func_res);
}
}
int ldv_misc_deregister_34(struct miscdevice *misc )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 0;
  return (ldv_func_res);
}
}
int ldv_misc_deregister_35(struct miscdevice *misc )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 0;
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
static int ldv_mutex_mpctl_mutex = 1;
int ldv_mutex_lock_interruptible_mpctl_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mpctl_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mpctl_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mpctl_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mpctl_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mpctl_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mpctl_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mpctl_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mpctl_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mpctl_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mpctl_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mpctl_mutex == 1) {
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
void ldv_mutex_unlock_mpctl_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mpctl_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mpctl_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_mpctl_mutex(void)
{
  {
  ldv_mutex_lock_mpctl_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mpctl_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mpctl_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mpctl_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mpctl_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mpctl_mutex(void)
{
  {
  ldv_mutex_unlock_mpctl_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of__MPT_MGMT = 1;
int ldv_mutex_lock_interruptible_mutex_of__MPT_MGMT(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of__MPT_MGMT = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of__MPT_MGMT(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of__MPT_MGMT = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of__MPT_MGMT(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of__MPT_MGMT = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of__MPT_MGMT(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of__MPT_MGMT = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of__MPT_MGMT(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of__MPT_MGMT = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of__MPT_MGMT(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of__MPT_MGMT == 1) {
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
void ldv_mutex_unlock_mutex_of__MPT_MGMT(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of__MPT_MGMT != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of__MPT_MGMT = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of__MPT_MGMT(void)
{
  {
  ldv_mutex_lock_mutex_of__MPT_MGMT((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of__MPT_MGMT(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of__MPT_MGMT((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of__MPT_MGMT(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of__MPT_MGMT((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of__MPT_MGMT(void)
{
  {
  ldv_mutex_unlock_mutex_of__MPT_MGMT((struct mutex *)0);
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
  if (ldv_mutex_mpctl_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of__MPT_MGMT != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct scsi_device *__scsi_iterate_devices(struct Scsi_Host *arg0, struct scsi_device *arg1) {
  return (struct scsi_device *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
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
int fasync_helper(int arg0, struct file *arg1, int arg2, struct fasync_struct **arg3) {
  return __VERIFIER_nondet_int();
}
void kill_fasync(struct fasync_struct **arg0, int arg1, int arg2) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_open_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *memdup_user(const void *arg0, size_t arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 mpt_GetIocState(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int mpt_HardResetHandler(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_Soft_Hard_ResetHandler(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_alloc_fw_memory(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void mpt_clear_taskmgmt_in_progress_flag(MPT_ADAPTER *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_config(MPT_ADAPTER *arg0, CONFIGPARMS *arg1) {
  return __VERIFIER_nondet_int();
}
void mpt_deregister(u8 arg0) {
  return;
}
void mpt_device_driver_deregister(u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_device_driver_register(struct mpt_pci_driver *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
void mpt_event_deregister(u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_event_register(u8 arg0, int (*arg1)(MPT_ADAPTER *, EventNotificationReply_t *)) {
  return __VERIFIER_nondet_int();
}
void mpt_free_fw_memory(MPT_ADAPTER *arg0) {
  return;
}
void mpt_free_msg_frame(MPT_ADAPTER *arg0, MPT_FRAME_HDR *arg1) {
  return;
}
void *external_alloc(void);
MPT_FRAME_HDR *mpt_get_msg_frame(u8 arg0, MPT_ADAPTER *arg1) {
  return (MPT_FRAME_HDR *)external_alloc();
}
void mpt_halt_firmware(MPT_ADAPTER *arg0) {
  return;
}
void mpt_put_msg_frame(u8 arg0, MPT_ADAPTER *arg1, MPT_FRAME_HDR *arg2) {
  return;
}
void mpt_put_msg_frame_hi_pri(u8 arg0, MPT_ADAPTER *arg1, MPT_FRAME_HDR *arg2) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 mpt_register(int (*arg0)(MPT_ADAPTER *, MPT_FRAME_HDR *, MPT_FRAME_HDR *), MPT_DRIVER_CLASS arg1, char *arg2) {
  return __VERIFIER_nondet_uchar();
}
void mpt_reset_deregister(u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_reset_register(u8 arg0, int (*arg1)(MPT_ADAPTER *, int)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_send_handshake_request(u8 arg0, MPT_ADAPTER *arg1, int arg2, u32 *arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_set_taskmgmt_in_progress_flag(MPT_ADAPTER *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_verify_adapter(int arg0, MPT_ADAPTER **arg1) {
  return __VERIFIER_nondet_int();
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
long __VERIFIER_nondet_long(void);
loff_t no_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
