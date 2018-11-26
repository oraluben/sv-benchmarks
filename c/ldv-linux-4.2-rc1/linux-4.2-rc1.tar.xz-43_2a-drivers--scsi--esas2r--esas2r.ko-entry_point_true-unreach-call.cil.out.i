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
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   unsigned int flags ;
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
struct Scsi_Host;
struct scsi_device;
struct scsi_cmnd;
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
struct proc_dir_entry;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_224 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_223 {
   struct __anonstruct____missing_field_name_224 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_223 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_226 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct____missing_field_name_226 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_225 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_227 {
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
   union __anonunion_d_u_227 d_u ;
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
struct __anonstruct____missing_field_name_231 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_230 __annonCompField64 ;
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
union __anonunion____missing_field_name_234 {
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
   union __anonunion____missing_field_name_234 __annonCompField65 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct __anonstruct_kprojid_t_235 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_235 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_236 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_236 __annonCompField66 ;
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
union __anonunion____missing_field_name_239 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_240 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_241 {
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
   union __anonunion____missing_field_name_239 __annonCompField67 ;
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
   union __anonunion____missing_field_name_240 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_241 __annonCompField69 ;
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
union __anonunion_f_u_242 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_242 f_u ;
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
struct __anonstruct_afs_244 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_243 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_244 afs ;
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
   union __anonunion_fl_u_243 fl_u ;
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
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_253 __annonCompField77 ;
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
union __anonunion____missing_field_name_254 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_255 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
   union __anonunion____missing_field_name_255 __annonCompField79 ;
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
struct blk_trace;
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
union __anonunion____missing_field_name_256 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_257 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_258 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_260 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_261 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_259 {
   struct __anonstruct_elv_260 elv ;
   struct __anonstruct_flush_261 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_256 __annonCompField80 ;
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
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   union __anonunion____missing_field_name_258 __annonCompField82 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
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
   struct blk_trace *blk_trace ;
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
struct __anonstruct____missing_field_name_263 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_263 __annonCompField84 ;
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
struct scsi_target;
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
union __anonunion____missing_field_name_264 {
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
   union __anonunion____missing_field_name_264 __annonCompField85 ;
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
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
enum hrtimer_restart;
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
struct pci_bus;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
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
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct atto_dev_addr {
   u64 dev_port ;
   u64 hba_port ;
   u8 lun ;
   u8 flags ;
   u8 link_speed ;
   u8 pad[1U] ;
};
struct atto_vda_sge {
   u32 length ;
   u64 address ;
};
union __anonunion____missing_field_name_267 {
   u8 dev_status ;
   u8 op_ctrl ;
};
union __anonunion____missing_field_name_268 {
   u16 target_id ;
   u16 features_mask ;
};
struct atto_vda_devinfo {
   struct atto_dev_addr dev_addr ;
   u8 vendor_id[8U] ;
   u8 product_id[16U] ;
   u8 revision[4U] ;
   u64 capacity ;
   u32 block_size ;
   u8 dev_type ;
   union __anonunion____missing_field_name_267 __annonCompField86 ;
   u8 member_state ;
   u8 operation ;
   u8 op_status ;
   u8 progress ;
   u16 ses_dev_index ;
   u8 serial_no[32U] ;
   union __anonunion____missing_field_name_268 __annonCompField87 ;
   u16 lun ;
   u16 features ;
   u8 ses_element_id ;
   u8 link_speed ;
   u16 phys_target_id ;
   u8 reserved[2U] ;
};
union __anonunion____missing_field_name_270 {
   u8 status ;
   u8 op_ctrl ;
};
union __anonunion____missing_field_name_271 {
   u16 members[32U] ;
   u16 features_mask ;
};
struct atto_vda_grp_info {
   u8 grp_index ;
   char grp_name[15U] ;
   u64 capacity ;
   u32 block_size ;
   u32 interleave ;
   u8 type ;
   union __anonunion____missing_field_name_270 __annonCompField89 ;
   u8 rebuild_state ;
   u8 span_depth ;
   u8 progress ;
   u8 mirror_width ;
   u8 stripe_width ;
   u8 member_cnt ;
   union __anonunion____missing_field_name_271 __annonCompField90 ;
   u16 features ;
   u8 prefetch ;
   u8 op_status ;
   u8 over_provision ;
   u8 reserved[3U] ;
};
struct atto_vdapart_info {
   u8 part_no ;
   char grp_name[15U] ;
   u64 part_size ;
   u64 start_lba ;
   u32 block_size ;
   u16 target_id ;
   u8 LUN ;
   char serial_no[41U] ;
   u8 features ;
   u8 reserved[7U] ;
};
struct atto_vda_dh_info {
   u8 req_type ;
   u8 req_qual ;
   u8 num_smart_attribs ;
   u8 status ;
   u32 med_defect_cnt ;
   u32 info_exc_cnt ;
   u8 smart_status ;
   u8 reserved[35U] ;
   struct atto_vda_sge sge[1U] ;
};
struct atto_vda_metrics_info {
   u8 data_version ;
   u8 metrics_action ;
   u8 test_action ;
   u8 num_dev_indexes ;
   u16 dev_indexes[32U] ;
   u8 reserved[12U] ;
   struct atto_vda_sge sge[1U] ;
};
struct atto_vda_schedule_info {
   u8 schedule_type ;
   u8 operation ;
   u8 hour ;
   u8 minute ;
   u8 day ;
   u8 progress ;
   u8 event_type ;
   u8 recurrences ;
   u32 id ;
   char grp_name[15U] ;
   u8 reserved[85U] ;
};
struct atto_vda_n_vcache_info {
   u8 super_cap_status ;
   u8 nvcache_module_status ;
   u8 protection_mode ;
   u8 reserved[109U] ;
};
struct atto_vda_buzzer_info {
   u8 status ;
   u8 reserved[3U] ;
   u32 duration ;
   u8 reserved2[104U] ;
};
struct atto_vda_ae_hdr {
   u8 bylength ;
   u8 byflags ;
   u8 byversion ;
   u8 bytype ;
};
struct atto_vda_ae_lu_tgt_lun {
   u16 wtarget_id ;
   u8 bylun ;
   u8 byreserved ;
};
struct atto_vda_ae_lu_tgt_lun_raid {
   u16 wtarget_id ;
   u8 bylun ;
   u8 byreserved ;
   u32 dwinterleave ;
   u32 dwblock_size ;
};
union __anonunion_id_272 {
   struct atto_vda_ae_lu_tgt_lun tgtlun ;
   struct atto_vda_ae_lu_tgt_lun_raid tgtlun_raid ;
};
struct atto_vda_ae_lu {
   struct atto_vda_ae_hdr hdr ;
   u32 dwevent ;
   u8 bystate ;
   u8 byreserved ;
   u16 wphys_target_id ;
   union __anonunion_id_272 id ;
};
struct atto_vda_date_and_time {
   u8 flags ;
   u8 seconds ;
   u8 minutes ;
   u8 hours ;
   u8 day ;
   u8 month ;
   u16 year ;
};
struct atto_vda_cfg_init {
   struct atto_vda_date_and_time date_time ;
   u32 sgl_page_size ;
   u32 vda_version ;
   u32 fw_version ;
   u32 fw_build ;
   u32 fw_release ;
   u32 epoch_time ;
   u32 ioctl_tunnel ;
   u32 num_targets_backend ;
   u8 reserved[72U] ;
};
struct atto_physical_region_description {
   u64 address ;
   u32 ctl_len ;
};
struct __anonstruct____missing_field_name_274 {
   u64 ppsense_buf ;
   u16 target_id ;
   u8 iblk_cnt_prd ;
   u8 reserved ;
};
union __anonunion____missing_field_name_273 {
   struct __anonstruct____missing_field_name_274 __annonCompField91 ;
   struct atto_physical_region_description sense_buff_prd ;
};
union __anonunion_u_275 {
   struct atto_vda_sge sge[1U] ;
   u32 abort_handle ;
   u32 dwords[245U] ;
   struct atto_physical_region_description prd[1U] ;
};
struct atto_vda_scsi_req {
   u32 length ;
   u8 function ;
   u8 sense_len ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   u32 flags ;
   u8 cdb[16U] ;
   union __anonunion____missing_field_name_273 __annonCompField92 ;
   union __anonunion_u_275 u ;
};
struct __anonstruct_file_277 {
   char file_name[16U] ;
   struct atto_vda_sge sge[1U] ;
};
union __anonunion_data_276 {
   struct __anonstruct_file_277 file ;
   struct atto_vda_sge sge[1U] ;
   struct atto_physical_region_description prde[2U] ;
};
struct atto_vda_flash_req {
   u32 length ;
   u8 function ;
   u8 sub_func ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   u32 flash_addr ;
   u8 checksum ;
   u8 rsvd[3U] ;
   union __anonunion_data_276 data ;
};
struct atto_vda_diag_req {
   u32 length ;
   u8 function ;
   u8 sub_func ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   u32 rsvd ;
   u64 local_addr ;
   struct atto_vda_sge sge[1U] ;
};
union __anonunion____missing_field_name_278 {
   struct atto_vda_sge sge[1U] ;
   struct atto_physical_region_description prde[1U] ;
};
struct atto_vda_ae_req {
   u32 length ;
   u8 function ;
   u8 reserved1 ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   union __anonunion____missing_field_name_278 __annonCompField93 ;
};
struct atto_vda_cli_req {
   u32 length ;
   u8 function ;
   u8 reserved1 ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   u32 cmd_rsp_len ;
   struct atto_vda_sge sge[1U] ;
};
union __anonunion____missing_field_name_279 {
   struct atto_vda_sge reserved_sge ;
   struct atto_physical_region_description reserved_prde ;
};
struct __anonstruct_csmi_281 {
   u32 ctrl_code ;
   u16 target_id ;
   u8 lun ;
   u8 reserved ;
};
union __anonunion____missing_field_name_280 {
   struct __anonstruct_csmi_281 csmi ;
};
union __anonunion____missing_field_name_282 {
   struct atto_vda_sge sge[1U] ;
   struct atto_physical_region_description prde[1U] ;
};
struct atto_vda_ioctl_req {
   u32 length ;
   u8 function ;
   u8 sub_func ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   union __anonunion____missing_field_name_279 __annonCompField94 ;
   union __anonunion____missing_field_name_280 __annonCompField95 ;
   union __anonunion____missing_field_name_282 __annonCompField96 ;
};
union __anonunion_data_283 {
   u8 bytes[116U] ;
   struct atto_vda_cfg_init init ;
   struct atto_vda_sge sge ;
   struct atto_physical_region_description prde ;
};
struct atto_vda_cfg_req {
   u32 length ;
   u8 function ;
   u8 sub_func ;
   u8 rsvd1 ;
   u8 sg_list_offset ;
   u32 handle ;
   union __anonunion_data_283 data ;
};
union __anonunion____missing_field_name_284 {
   struct atto_vda_sge sge[2U] ;
   struct atto_physical_region_description prde[2U] ;
};
struct atto_vda_mgmt_req {
   u32 length ;
   u8 function ;
   u8 mgt_func ;
   u8 chain_offset ;
   u8 sg_list_offset ;
   u32 handle ;
   u8 scan_generation ;
   u8 payld_sglst_offset ;
   u16 dev_index ;
   u32 payld_length ;
   u32 pad ;
   union __anonunion____missing_field_name_284 __annonCompField97 ;
   struct atto_vda_sge payld_sge[1U] ;
};
union atto_vda_req {
   struct atto_vda_scsi_req scsi ;
   struct atto_vda_flash_req flash ;
   struct atto_vda_diag_req diag ;
   struct atto_vda_ae_req ae ;
   struct atto_vda_cli_req cli ;
   struct atto_vda_ioctl_req ioctl ;
   struct atto_vda_cfg_req cfg ;
   struct atto_vda_mgmt_req mgt ;
   u8 bytes[1024U] ;
};
struct atto_vda_scsi_rsp {
   u8 scsi_stat ;
   u8 sense_len ;
   u8 rsvd[2U] ;
   u32 residual_length ;
};
struct atto_vda_flash_rsp {
   u32 file_size ;
};
struct atto_vda_ae_rsp {
   u32 length ;
};
struct atto_vda_cli_rsp {
   u32 cmd_rsp_len ;
};
struct __anonstruct_csmi_286 {
   u32 csmi_status ;
   u16 target_id ;
   u8 lun ;
   u8 reserved ;
};
union __anonunion____missing_field_name_285 {
   struct __anonstruct_csmi_286 csmi ;
};
struct atto_vda_ioctl_rsp {
   union __anonunion____missing_field_name_285 __annonCompField98 ;
};
struct atto_vda_cfg_rsp {
   u16 vda_version ;
   u16 fw_release ;
   u32 fw_build ;
};
struct atto_vda_mgmt_rsp {
   u32 length ;
   u16 dev_index ;
   u8 scan_generation ;
};
union atto_vda_func_rsp {
   struct atto_vda_scsi_rsp scsi_rsp ;
   struct atto_vda_flash_rsp flash_rsp ;
   struct atto_vda_ae_rsp ae_rsp ;
   struct atto_vda_cli_rsp cli_rsp ;
   struct atto_vda_ioctl_rsp ioctl_rsp ;
   struct atto_vda_cfg_rsp cfg_rsp ;
   struct atto_vda_mgmt_rsp mgt_rsp ;
   u32 dwords[2U] ;
};
struct atto_vda_ae_data {
   u8 event_data[256U] ;
};
union __anonunion_data_287 {
   u8 bytes[112U] ;
   struct atto_vda_devinfo dev_info ;
   struct atto_vda_grp_info grp_info ;
   struct atto_vdapart_info part_info ;
   struct atto_vda_dh_info dev_health_info ;
   struct atto_vda_metrics_info metrics_info ;
   struct atto_vda_schedule_info sched_info ;
   struct atto_vda_n_vcache_info nvcache_info ;
   struct atto_vda_buzzer_info buzzer_info ;
};
struct atto_vda_mgmt_data {
   union __anonunion_data_287 data ;
};
union atto_vda_rsp_data {
   struct atto_vda_ae_data ae_data ;
   struct atto_vda_mgmt_data mgt_data ;
   u8 sense_data[252U] ;
   u8 bytes[256U] ;
};
struct __anonstruct_pci_292 {
   u16 vendor_id ;
   u16 device_id ;
   u16 ss_vendor_id ;
   u16 ss_device_id ;
   u8 class_code[3U] ;
   u8 rev_id ;
   u8 bus_num ;
   u8 dev_num ;
   u8 func_num ;
   u8 link_width_max ;
   u8 link_width_curr ;
   u8 link_speed_max ;
   u8 link_speed_curr ;
   u8 interrupt_mode ;
   u8 msi_vector_cnt ;
   u8 reserved[19U] ;
};
struct atto_hba_get_adapter_info {
   struct __anonstruct_pci_292 pci ;
   u8 adap_type ;
   u8 adap_flags ;
   u8 num_ports ;
   u8 num_phys ;
   u8 drvr_rev_major ;
   u8 drvr_rev_minor ;
   u8 drvr_revsub_minor ;
   u8 drvr_rev_build ;
   char drvr_rev_ascii[16U] ;
   char drvr_name[32U] ;
   char firmware_rev[16U] ;
   char flash_rev[16U] ;
   char model_name_short[16U] ;
   char model_name[32U] ;
   u32 num_targets ;
   u32 num_targsper_bus ;
   u32 num_lunsper_targ ;
   u8 num_busses ;
   u8 num_connectors ;
   u8 adap_flags2 ;
   u8 num_temp_sensors ;
   u32 num_targets_backend ;
   u32 tunnel_flags ;
   u8 reserved3[312U] ;
};
struct atto_hba_get_adapter_address {
   u8 addr_type ;
   u8 port_id ;
   u16 addr_len ;
   u8 address[256U] ;
};
struct atto_hba_trace {
   u8 trace_func ;
   u8 trace_type ;
   u8 reserved[2U] ;
   u32 current_offset ;
   u32 total_length ;
   u32 trace_mask ;
   u8 reserved2[48U] ;
};
struct atto_hba_scsi_pass_thru {
   u8 cdb[32U] ;
   u8 cdb_length ;
   u8 req_status ;
   u8 scsi_status ;
   u8 sense_length ;
   u32 flags ;
   u32 timeout ;
   u32 target_id ;
   u8 lun[8U] ;
   u32 residual_length ;
   u8 sense_data[252U] ;
   u8 reserved[40U] ;
};
struct atto_hba_get_device_address {
   u8 addr_type ;
   u8 reserved ;
   u16 addr_len ;
   u32 target_id ;
   u8 address[256U] ;
};
struct __anonstruct____missing_field_name_295 {
   u8 temp_sensor ;
   u8 temp_state ;
   short temp_value ;
   short temp_lower_lim ;
   short temp_upper_lim ;
   char temp_desc[32U] ;
   u8 reserved2[20U] ;
};
union __anonunion____missing_field_name_294 {
   struct __anonstruct____missing_field_name_295 __annonCompField104 ;
};
struct atto_hba_adap_ctrl {
   u8 adap_func ;
   u8 adap_state ;
   u8 reserved[2U] ;
   union __anonunion____missing_field_name_294 __annonCompField105 ;
};
struct atto_hba_sas_device_info {
   u8 phy_id[16U] ;
   u32 exp_target_id ;
   u32 sas_port_mask ;
   u8 sas_level ;
   u8 slot_num ;
   u8 dev_type ;
   u8 ini_flags ;
   u8 tgt_flags ;
   u8 link_rate ;
   u8 loc_flags ;
   u8 pm_port ;
   u8 reserved[96U] ;
};
union atto_hba_device_info {
   struct atto_hba_sas_device_info sas_dev_info ;
};
struct atto_hba_get_device_info {
   u32 target_id ;
   u8 info_type ;
   u8 reserved[11U] ;
   union atto_hba_device_info dev_info ;
};
union __anonunion_data_296 {
   u8 byte[1U] ;
   struct atto_hba_get_adapter_info get_adap_info ;
   struct atto_hba_get_adapter_address get_adap_addr ;
   struct atto_hba_scsi_pass_thru scsi_pass_thru ;
   struct atto_hba_get_device_address get_dev_addr ;
   struct atto_hba_adap_ctrl adap_ctrl ;
   struct atto_hba_get_device_info get_dev_info ;
   struct atto_hba_trace trace ;
};
struct atto_ioctl {
   u8 version ;
   u8 function ;
   u8 status ;
   u8 flags ;
   u32 data_length ;
   u8 reserved2[56U] ;
   union __anonunion_data_296 data ;
};
struct esas2r_adapter;
struct esas2r_sg_context;
struct esas2r_request;
struct esas2r_component_header {
   u8 img_type ;
   u8 status ;
   u8 pad[2U] ;
   u32 version ;
   u32 length ;
   u32 image_offset ;
};
struct esas2r_flash_img {
   u8 fi_version ;
   u8 status ;
   u8 adap_typ ;
   u8 action ;
   u32 length ;
   u16 checksum ;
   u16 driver_error ;
   u16 flags ;
   u16 num_comps ;
   u8 rel_version[16U] ;
   struct esas2r_component_header cmp_hdr[6U] ;
   u8 scratch_buf[2048U] ;
};
struct esas2r_sas_nvram {
   u8 signature[4U] ;
   u8 version ;
   u8 checksum ;
   u8 max_lun_for_target ;
   u8 pci_latency ;
   u8 options1 ;
   u8 options2 ;
   u8 int_coalescing ;
   u8 cmd_throttle ;
   u8 dev_wait_time ;
   u8 dev_wait_count ;
   u8 spin_up_delay ;
   u8 ssp_align_rate ;
   u8 sas_addr[8U] ;
   u8 phy_speed[16U] ;
   u8 phy_mux[16U] ;
   u8 phy_flags[16U] ;
   u8 sort_type ;
   u8 dpm_reqcmd_lmt ;
   u8 dpm_stndby_time ;
   u8 dpm_active_time ;
   u8 phy_target_id[16U] ;
   u8 virt_ses_mode ;
   u8 read_write_mode ;
   u8 link_down_to ;
   u8 reserved[161U] ;
};
struct __anonstruct_a64_307 {
   struct atto_vda_sge *curr ;
   struct atto_vda_sge *last ;
   struct atto_vda_sge *limit ;
   struct atto_vda_sge *chain ;
};
struct __anonstruct_prd_308 {
   struct atto_physical_region_description *curr ;
   struct atto_physical_region_description *chain ;
   u32 sgl_max_cnt ;
   u32 sge_cnt ;
};
union __anonunion_sge_306 {
   struct __anonstruct_a64_307 a64 ;
   struct __anonstruct_prd_308 prd ;
};
struct esas2r_sg_context {
   struct esas2r_adapter *adapter ;
   struct esas2r_request *first_req ;
   u32 length ;
   u8 *cur_offset ;
   u32 (*get_phys_addr)(struct esas2r_sg_context * , u64 * ) ;
   union __anonunion_sge_306 sge ;
   struct scatterlist *cur_sgel ;
   u8 *exp_offset ;
   int num_sgel ;
   int sgel_count ;
};
struct esas2r_target {
   u8 flags ;
   u8 new_target_state ;
   u8 target_state ;
   u8 buffered_target_state ;
   u32 block_size ;
   u32 inter_block ;
   u32 inter_byte ;
   u16 virt_targ_id ;
   u16 phys_targ_id ;
   u8 identifier_len ;
   u64 sas_addr ;
   u8 identifier[60U] ;
   struct atto_vda_ae_lu lu_event ;
};
struct esas2r_mem_desc;
union __anonunion____missing_field_name_309 {
   void *data_buf ;
   union atto_vda_rsp_data *vda_rsp_data ;
};
union __anonunion____missing_field_name_310 {
   struct scsi_cmnd *cmd ;
   u8 *task_management_status_ptr ;
};
struct esas2r_request {
   struct list_head comp_list ;
   struct list_head req_list ;
   union atto_vda_req *vrq ;
   struct esas2r_mem_desc *vrq_md ;
   union __anonunion____missing_field_name_309 __annonCompField106 ;
   u8 *sense_buf ;
   struct list_head sg_table_head ;
   struct esas2r_mem_desc *sg_table ;
   u32 timeout ;
   u16 target_id ;
   u8 req_type ;
   u8 sense_len ;
   union atto_vda_func_rsp func_rsp ;
   void (*comp_cb)(struct esas2r_adapter * , struct esas2r_request * ) ;
   void (*interrupt_cb)(struct esas2r_adapter * , struct esas2r_request * ) ;
   void *interrupt_cx ;
   u8 flags ;
   u8 req_stat ;
   u16 vda_req_sz ;
   u64 lba ;
   void (*aux_req_cb)(struct esas2r_adapter * , struct esas2r_request * ) ;
   void *aux_req_cx ;
   u32 blk_len ;
   u32 max_blk_len ;
   union __anonunion____missing_field_name_310 __annonCompField107 ;
};
struct esas2r_flash_context {
   struct esas2r_flash_img *fi ;
   void (*interrupt_cb)(struct esas2r_adapter * , struct esas2r_request * ) ;
   u8 *sgc_offset ;
   u8 *scratch ;
   u32 fi_hdr_len ;
   u8 task ;
   u8 func ;
   u16 num_comps ;
   u32 cmp_len ;
   u32 flsh_addr ;
   u32 curr_len ;
   u8 comp_typ ;
   struct esas2r_sg_context sgc ;
};
struct esas2r_disc_context {
   u8 disc_evt ;
   u8 state ;
   u16 flags ;
   u32 interleave ;
   u32 block_size ;
   u16 dev_ix ;
   u8 part_num ;
   u8 raid_grp_ix ;
   char raid_grp_name[16U] ;
   struct esas2r_target *curr_targ ;
   u16 curr_virt_id ;
   u16 curr_phys_id ;
   u8 scan_gen ;
   u8 dev_addr_type ;
   u64 sas_addr ;
};
struct esas2r_mem_desc {
   struct list_head next_desc ;
   void *virt_addr ;
   u64 phys_addr ;
   void *pad ;
   void *esas2r_data ;
   u32 esas2r_param ;
   u32 size ;
};
enum state {
    FW_INVALID_ST = 0,
    FW_STATUS_ST = 1,
    FW_COMMAND_ST = 2
} ;
struct esas2r_firmware {
   enum state state ;
   struct esas2r_flash_img header ;
   u8 *data ;
   u64 phys ;
   int orig_len ;
   void *header_buff ;
   u64 header_buff_phys ;
};
union __anonunion____missing_field_name_311 {
   u16 prev_dev_cnt ;
   u32 heartbeat_time ;
};
struct esas2r_adapter {
   struct esas2r_target targetdb[256U] ;
   struct esas2r_target *targetdb_end ;
   unsigned char *regs ;
   unsigned char *data_window ;
   long flags ;
   long flags2 ;
   atomic_t disable_cnt ;
   atomic_t dis_ints_cnt ;
   u32 int_stat ;
   u32 int_mask ;
   u32 volatile *outbound_copy ;
   struct list_head avail_request ;
   spinlock_t request_lock ;
   spinlock_t sg_list_lock ;
   spinlock_t queue_lock ;
   spinlock_t mem_lock ;
   struct list_head free_sg_list_head ;
   struct esas2r_mem_desc *sg_list_mds ;
   struct list_head active_list ;
   struct list_head defer_list ;
   struct esas2r_request **req_table ;
   union __anonunion____missing_field_name_311 __annonCompField108 ;
   u32 chip_uptime ;
   u64 uncached_phys ;
   u8 *uncached ;
   struct esas2r_sas_nvram *nvram ;
   struct esas2r_request general_req ;
   u8 init_msg ;
   u16 cmd_ref_no ;
   u32 fw_version ;
   u32 fw_build ;
   u32 chip_init_time ;
   u32 last_tick_time ;
   u32 window_base ;
   bool (*build_sgl)(struct esas2r_adapter * , struct esas2r_sg_context * ) ;
   struct esas2r_request *first_ae_req ;
   u32 list_size ;
   u32 last_write ;
   u32 last_read ;
   u16 max_vdareq_size ;
   u16 disc_wait_cnt ;
   struct esas2r_mem_desc inbound_list_md ;
   struct esas2r_mem_desc outbound_list_md ;
   struct esas2r_disc_context disc_ctx ;
   u8 *disc_buffer ;
   u32 disc_start_time ;
   u32 disc_wait_time ;
   u32 flash_ver ;
   char flash_rev[16U] ;
   char fw_rev[16U] ;
   char image_type[16U] ;
   struct esas2r_flash_context flash_context ;
   u32 num_targets_backend ;
   u32 ioctl_tunnel ;
   struct tasklet_struct tasklet ;
   struct pci_dev *pcid ;
   struct Scsi_Host *host ;
   unsigned int index ;
   char name[32U] ;
   struct timer_list timer ;
   struct esas2r_firmware firmware ;
   wait_queue_head_t nvram_waiter ;
   int nvram_command_done ;
   wait_queue_head_t fm_api_waiter ;
   int fm_api_command_done ;
   wait_queue_head_t vda_waiter ;
   int vda_command_done ;
   u8 *vda_buffer ;
   u64 ppvda_buffer ;
   wait_queue_head_t fs_api_waiter ;
   int fs_api_command_done ;
   u64 ppfs_api_buffer ;
   u8 *fs_api_buffer ;
   u32 fs_api_buffer_size ;
   wait_queue_head_t buffered_ioctl_waiter ;
   int buffered_ioctl_done ;
   int uncached_size ;
   struct workqueue_struct *fw_event_q ;
   struct list_head fw_event_list ;
   spinlock_t fw_event_lock ;
   u8 fw_events_off ;
   char fw_event_q_name[20U] ;
   int intr_mode ;
   struct esas2r_sg_context fm_api_sgc ;
   u8 *save_offset ;
   struct list_head vrq_mds_head ;
   struct esas2r_mem_desc *vrq_mds ;
   int num_vrqs ;
   struct semaphore fm_api_semaphore ;
   struct semaphore fs_api_semaphore ;
   struct semaphore nvram_semaphore ;
   struct atto_ioctl *local_atto_ioctl ;
   u8 fw_coredump_buff[524288U] ;
   unsigned char sysfs_fw_created : 1 ;
   unsigned char sysfs_fs_created : 1 ;
   unsigned char sysfs_vda_created : 1 ;
   unsigned char sysfs_hw_created : 1 ;
   unsigned char sysfs_live_nvram_created : 1 ;
   unsigned char sysfs_default_nvram_created : 1 ;
};
enum hrtimer_restart;
struct esas2r_boot_header {
   char signature[4U] ;
   u16 vendor_id ;
   u16 device_id ;
   u16 VPD ;
   u16 struct_length ;
   u8 struct_revision ;
   u8 class_code[3U] ;
   u16 image_length ;
   u16 code_revision ;
   u8 code_type ;
   u8 indicator ;
   u8 reserved[2U] ;
};
struct esas2r_boot_image {
   u16 signature ;
   u8 reserved[22U] ;
   u16 header_offset ;
   u16 pnp_offset ;
};
struct esas2r_pc_image {
   u16 signature ;
   u8 length ;
   u8 main[3U] ;
   u8 checksum ;
   u16 image_end ;
   u16 min_size ;
   u8 rom_flags ;
   u8 reserved[12U] ;
   u16 header_offset ;
   u16 pnp_offset ;
   struct esas2r_boot_header boot_image ;
};
struct esas2r_efi_image {
   u16 signature ;
   u16 length ;
   u32 efi_signature ;
   u16 image_type ;
   u16 machine_type ;
   u16 compression ;
   u8 reserved[8U] ;
   u16 efi_offset ;
   u16 header_offset ;
   u16 reserved2 ;
   struct esas2r_boot_header boot_image ;
};
struct esas2r_ioctlfs_command {
   u8 command ;
   u8 checksum ;
   u8 reserved[2U] ;
   u32 flash_addr ;
   u32 length ;
   u32 image_offset ;
};
struct esas2r_ioctl_fs {
   u8 version ;
   u8 status ;
   u8 driver_error ;
   u8 adap_type ;
   u8 driver_ver ;
   u8 reserved[11U] ;
   struct esas2r_ioctlfs_command command ;
   u8 data[1U] ;
};
typedef __kernel_long_t __kernel_suseconds_t;
typedef __u64 uint64_t;
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct esas2r_inbound_list_source_entry {
   u64 address ;
   u32 length ;
   u32 reserved ;
};
typedef int ldv_func_ret_type___7;
enum hrtimer_restart;
struct atto_vda_ae_raid {
   struct atto_vda_ae_hdr hdr ;
   u32 dwflags ;
   u8 bygroup_state ;
   u8 byrebuild_state ;
   u8 byrebuild_progress ;
   u8 op_status ;
   char acname[15U] ;
   u8 byreserved ;
   u8 byreserved2[100U] ;
};
struct atto_vda_ae_disk {
   struct atto_vda_ae_hdr hdr ;
};
struct atto_vda_ae_log {
   struct atto_vda_ae_hdr hdr ;
   char aclog_ascii[64U] ;
};
struct atto_vda_ae_timestamp_log {
   struct atto_vda_ae_hdr hdr ;
   u32 dwtimestamp ;
   char aclog_ascii[56U] ;
};
struct atto_vda_ae_nvc {
   struct atto_vda_ae_hdr hdr ;
};
struct atto_vda_ae_dev {
   struct atto_vda_ae_hdr hdr ;
   struct atto_dev_addr devaddr ;
};
union atto_vda_ae {
   struct atto_vda_ae_hdr hdr ;
   struct atto_vda_ae_disk disk ;
   struct atto_vda_ae_lu lu ;
   struct atto_vda_ae_raid raid ;
   struct atto_vda_ae_log log ;
   struct atto_vda_ae_timestamp_log tslog ;
   struct atto_vda_ae_nvc nvcache ;
   struct atto_vda_ae_dev dev ;
};
struct atto_vda_ob_rsp {
   u32 handle ;
   u8 req_stat ;
   u8 rsvd[3U] ;
   union atto_vda_func_rsp func_rsp ;
};
enum fw_event_type {
    fw_event_null = 0,
    fw_event_lun_change = 1,
    fw_event_present = 2,
    fw_event_not_present = 3,
    fw_event_vda_ae = 4
} ;
enum hrtimer_restart;
struct tss_struct;
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long SYSENTER_stack[64U] ;
};
struct __anonstruct_mm_segment_t_33 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_33 mm_segment_t;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct __large_struct {
   unsigned long buf[100U] ;
};
struct scsi_lun {
   __u8 scsi_lun[8U] ;
};
struct atto_dev_addr2 {
   u64 dev_port ;
   u64 hba_port ;
   u8 lun ;
   u8 flags ;
   u8 link_speed ;
   u8 pad[5U] ;
};
union __anonunion____missing_field_name_269 {
   u16 target_id ;
   u16 features_mask ;
};
struct atto_vda_devinfo2 {
   struct atto_dev_addr dev_addr ;
   u8 vendor_id[8U] ;
   u8 product_id[16U] ;
   u8 revision[4U] ;
   u64 capacity ;
   u32 block_size ;
   u8 dev_type ;
   u8 dev_status ;
   u8 member_state ;
   u8 operation ;
   u8 op_status ;
   u8 progress ;
   u16 ses_dev_index ;
   u8 serial_no[32U] ;
   union __anonunion____missing_field_name_269 __annonCompField88 ;
   u16 lun ;
   u16 features ;
   u8 ses_element_id ;
   u8 link_speed ;
   u16 phys_target_id ;
   u8 reserved[2U] ;
   u8 version ;
   u8 reserved2[3U] ;
   u32 ss_curr_errors ;
   u64 ss_curr_scanned ;
   u32 ss_curr_recvrd ;
   u32 ss_scan_length ;
   u32 ss_total_errors ;
   u32 ss_total_recvrd ;
   u32 ss_num_scans ;
   char grp_name[15U] ;
   u8 reserved3[4U] ;
   u8 num_dev_addr ;
   struct atto_dev_addr2 dev_addr_list[8U] ;
};
struct atto_vda_adapter_info {
   u8 version ;
   u8 reserved ;
   short utc_offset ;
   u32 utc_time ;
   u32 features ;
   u32 valid_features ;
   char active_config[33U] ;
   u8 temp_count ;
   u8 fan_count ;
   u8 reserved3[61U] ;
};
struct atto_vda_temp_info {
   u8 temp_index ;
   u8 max_op_temp ;
   u8 min_op_temp ;
   u8 op_temp_warn ;
   u8 temperature ;
   u8 type ;
   u8 reserved[106U] ;
};
struct atto_vda_fan_info {
   u8 fan_index ;
   u8 status ;
   u16 crit_pvdafaninfothreshold ;
   u16 warn_threshold ;
   u16 speed ;
   u8 reserved[104U] ;
};
struct atto_express_ioctl_header {
   u8 signature[8U] ;
   u8 return_code ;
   u8 channel ;
   u8 retries ;
   u8 pad[5U] ;
};
struct atto_firmware_rw_request {
   u8 function ;
   u8 img_type ;
   u8 pad[2U] ;
   u32 img_offset ;
   u32 img_size ;
   u8 image[524288U] ;
};
struct atto_param_rw_request {
   u16 code ;
   char data_buffer[512U] ;
};
struct atto_channel_list {
   u32 num_channels ;
   u8 channel[256U] ;
};
struct atto_channel_info {
   u8 major_rev ;
   u8 minor_rev ;
   u8 IRQ ;
   u8 revision_id ;
   u8 pci_bus ;
   u8 pci_dev_func ;
   u8 core_rev ;
   u8 host_no ;
   u16 device_id ;
   u16 vendor_id ;
   u16 ven_dev_id ;
   u8 pad[3U] ;
   u32 hbaapi_rev ;
};
struct atto_csmi_get_driver_info {
   char name[81U] ;
   char description[81U] ;
   u16 major_rev ;
   u16 minor_rev ;
   u16 build_rev ;
   u16 release_rev ;
   u16 csmi_major_rev ;
   u16 csmi_minor_rev ;
};
struct atto_csmi_get_pci_bus_addr {
   u8 bus_num ;
   u8 device_num ;
   u8 function_num ;
   u8 reserved ;
};
struct __anonstruct____missing_field_name_288 {
   u32 base_memaddr_lo ;
   u32 base_memaddr_hi ;
};
union __anonunion____missing_field_name_289 {
   struct atto_csmi_get_pci_bus_addr pci_addr ;
   u8 reserved[32U] ;
};
struct atto_csmi_get_cntlr_cfg {
   u32 base_io_addr ;
   struct __anonstruct____missing_field_name_288 __annonCompField99 ;
   u32 board_id ;
   u16 slot_num ;
   u8 cntlr_class ;
   u8 io_bus_type ;
   union __anonunion____missing_field_name_289 __annonCompField100 ;
   char serial_num[81U] ;
   u16 major_rev ;
   u16 minor_rev ;
   u16 build_rev ;
   u16 release_rev ;
   u16 bios_major_rev ;
   u16 bios_minor_rev ;
   u16 bios_build_rev ;
   u16 bios_release_rev ;
   u32 cntlr_flags ;
   u16 rrom_major_rev ;
   u16 rrom_minor_rev ;
   u16 rrom_build_rev ;
   u16 rrom_release_rev ;
   u16 rrom_biosmajor_rev ;
   u16 rrom_biosminor_rev ;
   u16 rrom_biosbuild_rev ;
   u16 rrom_biosrelease_rev ;
   u8 reserved2[7U] ;
};
struct atto_csmi_get_cntlr_sts {
   u32 status ;
   u32 offline_reason ;
   u8 reserved[28U] ;
};
struct atto_csmi_fw_download {
   u32 buffer_len ;
   u32 download_flags ;
   u8 reserved[32U] ;
   u16 status ;
   u16 severity ;
};
struct atto_csmi_get_raid_info {
   u32 num_raid_sets ;
   u32 max_drivesper_set ;
   u8 reserved[92U] ;
};
struct atto_csmi_raid_drives {
   char model[40U] ;
   char firmware[8U] ;
   char serial_num[40U] ;
   u8 sas_addr[8U] ;
   u8 lun[8U] ;
   u8 drive_sts ;
   u8 drive_usage ;
   u8 reserved[30U] ;
};
struct atto_csmi_get_raid_cfg {
   u32 raid_set_index ;
   u32 capacity ;
   u32 stripe_size ;
   u8 raid_type ;
   u8 status ;
   u8 information ;
   u8 drive_cnt ;
   u8 reserved[20U] ;
   struct atto_csmi_raid_drives drives[1U] ;
};
struct atto_csmi_phy_entity {
   u8 ident_frame[28U] ;
   u8 port_id ;
   u8 neg_link_rate ;
   u8 min_link_rate ;
   u8 max_link_rate ;
   u8 phy_change_cnt ;
   u8 auto_discover ;
   u8 reserved[2U] ;
   u8 attach_ident_frame[28U] ;
};
struct atto_csmi_get_phy_info {
   u8 number_of_phys ;
   u8 reserved[3U] ;
   struct atto_csmi_phy_entity phy[32U] ;
};
struct atto_csmi_set_phy_info {
   u8 phy_id ;
   u8 neg_link_rate ;
   u8 prog_minlink_rate ;
   u8 prog_maxlink_rate ;
   u8 signal_class ;
   u8 reserved[3U] ;
};
struct atto_csmi_get_link_errors {
   u8 phy_id ;
   u8 reset_cnts ;
   u8 reserved[2U] ;
   u32 inv_dw_cnt ;
   u32 disp_err_cnt ;
   u32 loss_ofdw_sync_cnt ;
   u32 phy_reseterr_cnt ;
   u32 crc_err_cnt ;
};
struct atto_csmi_smp_passthru {
   u8 phy_id ;
   u8 port_id ;
   u8 conn_rate ;
   u8 reserved ;
   u8 dest_sas_addr[8U] ;
   u32 req_len ;
   u8 smp_req[1020U] ;
   u8 conn_sts ;
   u8 reserved2[3U] ;
   u32 rsp_len ;
   u8 smp_rsp[1020U] ;
};
struct atto_csmi_ssp_passthru_sts {
   u8 conn_sts ;
   u8 reserved[3U] ;
   u8 data_present ;
   u8 status ;
   u16 rsp_length ;
   u8 rsp[256U] ;
   u32 data_bytes ;
};
struct atto_csmi_ssp_passthru {
   u8 phy_id ;
   u8 port_id ;
   u8 conn_rate ;
   u8 reserved ;
   u8 dest_sas_addr[8U] ;
   u8 lun[8U] ;
   u8 cdb_len ;
   u8 add_cdb_len ;
   u8 reserved2[2U] ;
   u8 cdb[16U] ;
   u32 flags ;
   u8 add_cdb[24U] ;
   u32 data_len ;
   struct atto_csmi_ssp_passthru_sts sts ;
};
struct atto_csmi_stp_passthru_sts {
   u8 conn_sts ;
   u8 reserved[3U] ;
   u8 sts_fis[20U] ;
   u32 scr[16U] ;
   u32 data_bytes ;
};
struct atto_csmi_stp_passthru {
   u8 phy_id ;
   u8 port_id ;
   u8 conn_rate ;
   u8 reserved ;
   u8 dest_sas_addr[8U] ;
   u8 reserved2[4U] ;
   u8 command_fis[20U] ;
   u32 flags ;
   u32 data_len ;
   struct atto_csmi_stp_passthru_sts sts ;
};
struct atto_csmi_get_sata_sig {
   u8 phy_id ;
   u8 reserved[3U] ;
   u8 reg_dth_fis[20U] ;
};
struct atto_csmi_get_scsi_addr {
   u8 sas_addr[8U] ;
   u8 sas_lun[8U] ;
   u8 host_index ;
   u8 path_id ;
   u8 target_id ;
   u8 lun ;
};
struct atto_csmi_get_dev_addr {
   u8 host_index ;
   u8 path_id ;
   u8 target_id ;
   u8 lun ;
   u8 sas_addr[8U] ;
   u8 sas_lun[8U] ;
};
struct atto_csmi_task_mgmt {
   u8 host_index ;
   u8 path_id ;
   u8 target_id ;
   u8 lun ;
   u32 flags ;
   u32 queue_tag ;
   u32 reserved ;
   u8 task_mgt_func ;
   u8 reserved2[7U] ;
   u32 information ;
   struct atto_csmi_ssp_passthru_sts sts ;
};
struct atto_csmi_get_conn_info {
   u32 pinout ;
   u8 connector[16U] ;
   u8 location ;
   u8 reserved[15U] ;
};
struct atto_csmi_character {
   u8 type_flags ;
   u8 value ;
};
struct atto_csmi_pc_ctrl {
   u8 type ;
   u8 rate ;
   u8 reserved[6U] ;
   u32 vendor_unique[8U] ;
   u32 tx_flags ;
   signed char tx_amplitude ;
   signed char tx_preemphasis ;
   signed char tx_slew_rate ;
   signed char tx_reserved[13U] ;
   u8 tx_vendor_unique[64U] ;
   u32 rx_flags ;
   signed char rx_threshold ;
   signed char rx_equalization_gain ;
   signed char rx_reserved[14U] ;
   u8 rx_vendor_unique[64U] ;
   u32 pattern_flags ;
   u8 fixed_pattern ;
   u8 user_pattern_len ;
   u8 pattern_reserved[6U] ;
   struct atto_csmi_character user_pattern_buffer[16U] ;
};
struct atto_csmi_phy_ctrl {
   u32 function ;
   u8 phy_id ;
   u16 len_of_cntl ;
   u8 num_of_cntls ;
   u8 reserved[4U] ;
   u32 link_flags ;
   u8 spinup_rate ;
   u8 link_reserved[7U] ;
   u32 vendor_unique[8U] ;
   struct atto_csmi_pc_ctrl control[1U] ;
};
union atto_ioctl_csmi {
   struct atto_csmi_get_driver_info drvr_info ;
   struct atto_csmi_get_cntlr_cfg cntlr_cfg ;
   struct atto_csmi_get_cntlr_sts cntlr_sts ;
   struct atto_csmi_fw_download fw_dwnld ;
   struct atto_csmi_get_raid_info raid_info ;
   struct atto_csmi_get_raid_cfg raid_cfg ;
   struct atto_csmi_get_phy_info get_phy_info ;
   struct atto_csmi_set_phy_info set_phy_info ;
   struct atto_csmi_get_link_errors link_errs ;
   struct atto_csmi_smp_passthru smp_pass_thru ;
   struct atto_csmi_ssp_passthru ssp_pass_thru ;
   struct atto_csmi_stp_passthru stp_pass_thru ;
   struct atto_csmi_task_mgmt tsk_mgt ;
   struct atto_csmi_get_sata_sig sata_sig ;
   struct atto_csmi_get_scsi_addr scsi_addr ;
   struct atto_csmi_get_dev_addr dev_addr ;
   struct atto_csmi_get_conn_info conn_info[32U] ;
   struct atto_csmi_phy_ctrl phy_ctrl ;
};
struct atto_csmi {
   u32 control_code ;
   u32 status ;
   union atto_ioctl_csmi data ;
};
struct __anonstruct____missing_field_name_291 {
   u64 node_name ;
   u64 port_name ;
};
union __anonunion____missing_field_name_290 {
   struct __anonstruct____missing_field_name_291 __annonCompField101 ;
   u64 sas_addr ;
};
struct atto_module_info {
   void *adapter ;
   void *pci_dev ;
   void *scsi_host ;
   unsigned short host_no ;
   union __anonunion____missing_field_name_290 __annonCompField102 ;
};
struct atto_ioctl_vda_scsi_cmd {
   u8 cdb[16U] ;
   u32 flags ;
   u32 data_length ;
   u32 residual_length ;
   u16 target_id ;
   u8 sense_len ;
   u8 scsi_stat ;
   u8 reserved[8U] ;
   u8 sense_data[80U] ;
};
struct __anonstruct_info_298 {
   u32 flash_size ;
   u32 page_size ;
   u8 prod_info[32U] ;
};
struct __anonstruct_file_299 {
   char file_name[16U] ;
   u32 file_size ;
};
union __anonunion_data_297 {
   struct __anonstruct_info_298 info ;
   struct __anonstruct_file_299 file ;
};
struct atto_ioctl_vda_flash_cmd {
   u32 flash_addr ;
   u32 data_length ;
   u8 sub_func ;
   u8 reserved[15U] ;
   union __anonunion_data_297 data ;
};
struct atto_ioctl_vda_diag_cmd {
   u64 local_addr ;
   u32 data_length ;
   u8 sub_func ;
   u8 flags ;
   u8 reserved[3U] ;
};
struct atto_ioctl_vda_cli_cmd {
   u32 cmd_rsp_len ;
};
struct atto_ioctl_vda_smp_cmd {
   u64 dest ;
   u32 cmd_rsp_len ;
};
union __anonunion_data_300 {
   u8 bytes[112U] ;
   struct atto_vda_cfg_init init ;
};
struct atto_ioctl_vda_cfg_cmd {
   u32 data_length ;
   u8 cfg_func ;
   u8 reserved[11U] ;
   union __anonunion_data_300 data ;
};
union __anonunion_data_301 {
   u8 bytes[112U] ;
   struct atto_vda_devinfo dev_info ;
   struct atto_vda_grp_info grp_info ;
   struct atto_vdapart_info part_info ;
   struct atto_vda_dh_info dh_info ;
   struct atto_vda_metrics_info metrics_info ;
   struct atto_vda_schedule_info sched_info ;
   struct atto_vda_n_vcache_info nvcache_info ;
   struct atto_vda_buzzer_info buzzer_info ;
   struct atto_vda_adapter_info adapter_info ;
   struct atto_vda_temp_info temp_info ;
   struct atto_vda_fan_info fan_info ;
};
struct atto_ioctl_vda_mgt_cmd {
   u8 mgt_func ;
   u8 scan_generation ;
   u16 dev_index ;
   u32 data_length ;
   u8 reserved[8U] ;
   union __anonunion_data_301 data ;
};
struct atto_ioctl_vda_gsv_cmd {
   u8 rsp_len ;
   u8 reserved[7U] ;
   u8 version_info[1U] ;
};
union __anonunion_cmd_302 {
   struct atto_ioctl_vda_scsi_cmd scsi ;
   struct atto_ioctl_vda_flash_cmd flash ;
   struct atto_ioctl_vda_diag_cmd diag ;
   struct atto_ioctl_vda_cli_cmd cli ;
   struct atto_ioctl_vda_smp_cmd smp ;
   struct atto_ioctl_vda_cfg_cmd cfg ;
   struct atto_ioctl_vda_mgt_cmd mgt ;
   struct atto_ioctl_vda_gsv_cmd gsv ;
   u8 cmd_info[256U] ;
};
union __anonunion_data_303 {
   u8 data[1U] ;
   struct atto_vda_devinfo2 dev_info2 ;
};
struct atto_ioctl_vda {
   u8 version ;
   u8 function ;
   u8 status ;
   u8 vda_status ;
   u32 data_length ;
   u8 reserved[8U] ;
   union __anonunion_cmd_302 cmd ;
   union __anonunion_data_303 data ;
};
union __anonunion_data_304 {
   u8 byte[1U] ;
   u32 dword[1U] ;
};
struct atto_ioctl_smp {
   u8 version ;
   u8 function ;
   u8 status ;
   u8 smp_status ;
   u16 target_id ;
   u8 phy_id ;
   u8 dev_index ;
   u64 smp_sas_addr ;
   u64 targ_sas_addr ;
   u32 req_length ;
   u32 rsp_length ;
   u8 flags ;
   u8 reserved[31U] ;
   union __anonunion_data_304 data ;
};
union __anonunion_data_305 {
   struct atto_firmware_rw_request fwrw ;
   struct atto_param_rw_request prw ;
   struct atto_channel_list chanlist ;
   struct atto_channel_info chaninfo ;
   struct atto_ioctl ioctl_hba ;
   struct atto_module_info modinfo ;
   struct atto_ioctl_vda ioctl_vda ;
   struct atto_ioctl_smp ioctl_smp ;
   struct atto_csmi csmi ;
};
struct atto_express_ioctl {
   struct atto_express_ioctl_header header ;
   union __anonunion_data_305 data ;
};
struct esas2r_buffered_ioctl {
   struct esas2r_adapter *a ;
   void *ioctl ;
   u32 length ;
   u32 control_code ;
   u32 offset ;
   int (*callback)(struct esas2r_adapter * , struct esas2r_request * , struct esas2r_sg_context * ,
                   void * ) ;
   void *context ;
   void (*done_callback)(struct esas2r_adapter * , struct esas2r_request * , void * ) ;
   void *done_context ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef unsigned int uint;
enum hrtimer_restart;
struct esas2r_vda_ae {
   u32 signature ;
   u8 bus_number ;
   u8 devfn ;
   u8 pad[2U] ;
   union atto_vda_ae vda_ae ;
};
struct esas2r_fw_event_work {
   struct list_head list ;
   struct delayed_work work ;
   struct esas2r_adapter *a ;
   enum fw_event_type type ;
   u8 data[136U] ;
};
typedef struct Scsi_Host *ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef bool ldv_func_ret_type___11;
void ldv__builtin_va_end(__builtin_va_list * ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int vsnprintf(char * , size_t , char const * , va_list * ) ;
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
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_5 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_state_2 = 0;
void call_and_disable_all_1(int state ) ;
void ldv_initialize_scsi_host_template_5(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
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
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
int esas2r_log(long const level , char const *format , ...) ;
int esas2r_log_dev(long const level , struct device const *dev , char const *format
                   , ...) ;
int esas2r_log_hexdump(long const level , void const *buf , size_t len ) ;
static long event_log_level = 2L;
static char event_buffer[1024U] ;
static spinlock_t event_buffer_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "event_buffer_lock",
                                                    0, 0UL}}}};
static char const *translate_esas2r_event_level_to_kernel(long const level )
{
  {
  switch (level) {
  case 1L: ;
  return ("\n");
  case 2L: ;
  return ("\f");
  case 3L: ;
  return ("\016");
  case 4L: ;
  case 5L: ;
  default: ;
  return ("\017");
  }
}
}
static int esas2r_log_master(long const level , struct device const *dev , char const *format ,
                             va_list *args )
{
  unsigned long flags ;
  int retval ;
  char *buffer ;
  size_t buflen ;
  char const *fmt_nodev ;
  char const *fmt_dev ;
  char const *slevel ;
  char const *tmp ;
  char const *tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  {
  if ((long )level <= event_log_level) {
    flags = 0UL;
    retval = 0;
    buffer = (char *)(& event_buffer);
    buflen = 1024UL;
    fmt_nodev = "%s%s: ";
    fmt_dev = "%s%s [%s, %s, %s]";
    tmp = translate_esas2r_event_level_to_kernel(level);
    slevel = tmp;
    ldv_spin_lock();
    if ((unsigned long )buffer == (unsigned long )((char *)0)) {
      spin_unlock_irqrestore(& event_buffer_lock, flags);
      return (-1);
    } else {
    }
    memset((void *)buffer, 0, buflen);
    if ((unsigned long )dev == (unsigned long )((struct device const *)0)) {
      snprintf(buffer, buflen, fmt_nodev, slevel, (char *)"esas2r");
    } else {
      tmp___0 = dev_name(dev);
      snprintf(buffer, buflen, fmt_dev, slevel, (char *)"esas2r", (unsigned long )dev->driver != (unsigned long )((struct device_driver * )0) ? (dev->driver)->name : "unknown",
               (unsigned long )dev->bus != (unsigned long )((struct bus_type * )0) ? (dev->bus)->name : "unknown",
               tmp___0);
    }
    tmp___1 = strlen((char const *)(& event_buffer));
    buffer = buffer + tmp___1;
    tmp___2 = strlen((char const *)(& event_buffer));
    buflen = buflen - tmp___2;
    retval = vsnprintf(buffer, buflen, format, args);
    if (retval < 0) {
      spin_unlock_irqrestore(& event_buffer_lock, flags);
      return (-1);
    } else {
    }
    printk("%s\n", (char *)(& event_buffer));
    spin_unlock_irqrestore(& event_buffer_lock, flags);
  } else {
  }
  return (0);
}
}
int esas2r_log(long const level , char const *format , ...)
{
  int retval ;
  va_list args ;
  {
  retval = 0;
  ldv__builtin_va_start((va_list *)(& args));
  retval = esas2r_log_master(level, (struct device const *)0, format, (va_list *)(& args));
  ldv__builtin_va_end((va_list *)(& args));
  return (retval);
}
}
int esas2r_log_dev(long const level , struct device const *dev , char const *format
                   , ...)
{
  int retval ;
  va_list args ;
  {
  retval = 0;
  ldv__builtin_va_start((va_list *)(& args));
  retval = esas2r_log_master(level, dev, format, (va_list *)(& args));
  ldv__builtin_va_end((va_list *)(& args));
  return (retval);
}
}
int esas2r_log_hexdump(long const level , void const *buf , size_t len )
{
  char const *tmp ;
  {
  if ((long )level <= event_log_level) {
    tmp = translate_esas2r_event_level_to_kernel(level);
    print_hex_dump(tmp, "", 2, 16, 1, buf, len, 1);
  } else {
  }
  return (1);
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
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
__inline static void list_splice_tail_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head->prev, head);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
bool ldv_queue_work_on_50(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_60(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv_scsi_add_host_with_dma_64(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
void esas2r_complete_request_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_build_mgt_req(struct esas2r_adapter *a , struct esas2r_request *rq , u8 sub_func ,
                          u8 scan_gen , u16 dev_index , u32 length , void *data ) ;
void esas2r_build_ioctl_req(struct esas2r_adapter *a , struct esas2r_request *rq ,
                            u32 length , u8 sub_func ) ;
void esas2r_wait_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_start_vda_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_polled_interrupt(struct esas2r_adapter *a ) ;
struct esas2r_target *esas2r_targ_db_add_raid(struct esas2r_adapter *a , struct esas2r_disc_context *dc ) ;
struct esas2r_target *esas2r_targ_db_add_pthru(struct esas2r_adapter *a , struct esas2r_disc_context *dc ,
                                               u8 *ident , u8 ident_len ) ;
void esas2r_targ_db_remove(struct esas2r_adapter *a , struct esas2r_target *t ) ;
struct esas2r_target *esas2r_targ_db_find_by_virt_id(struct esas2r_adapter *a , u16 virt_id ) ;
u16 esas2r_targ_db_get_tgt_cnt(struct esas2r_adapter *a ) ;
void esas2r_disc_initialize(struct esas2r_adapter *a ) ;
void esas2r_disc_start_waiting(struct esas2r_adapter *a ) ;
void esas2r_disc_check_for_work(struct esas2r_adapter *a ) ;
void esas2r_disc_check_complete(struct esas2r_adapter *a ) ;
void esas2r_disc_queue_event(struct esas2r_adapter *a , u8 disc_evt ) ;
bool esas2r_disc_start_port(struct esas2r_adapter *a ) ;
void esas2r_disc_local_start_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
__inline static void esas2r_sgc_init(struct esas2r_sg_context *sgc , struct esas2r_adapter *a ,
                                     struct esas2r_request *rq , struct atto_vda_sge *first )
{
  struct atto_vda_sge *tmp ;
  struct atto_vda_sge *tmp___0 ;
  {
  sgc->adapter = a;
  sgc->first_req = rq;
  sgc->sge.a64.limit = (struct atto_vda_sge *)rq->vrq + 116U;
  if ((unsigned long )first != (unsigned long )((struct atto_vda_sge *)0)) {
    tmp = first;
    sgc->sge.a64.curr = tmp;
    sgc->sge.a64.last = tmp;
    (rq->vrq)->scsi.sg_list_offset = (int )((unsigned char )((long )first)) - (int )((unsigned char )((long )rq->vrq));
  } else {
    tmp___0 = (struct atto_vda_sge *)(& (rq->vrq)->scsi.u.sge);
    sgc->sge.a64.curr = tmp___0;
    sgc->sge.a64.last = tmp___0;
    (rq->vrq)->scsi.sg_list_offset = 44U;
  }
  sgc->sge.a64.chain = (struct atto_vda_sge *)0;
  return;
}
}
__inline static void esas2r_rq_init_request(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  union atto_vda_req *vrq ;
  u16 tmp ;
  {
  vrq = rq->vrq;
  INIT_LIST_HEAD(& rq->sg_table_head);
  rq->__annonCompField106.data_buf = (void *)vrq + 1U;
  rq->interrupt_cb = (void (*)(struct esas2r_adapter * , struct esas2r_request * ))0;
  rq->comp_cb = & esas2r_complete_request_cb;
  rq->flags = 0U;
  rq->timeout = 0U;
  rq->req_stat = 254U;
  rq->req_type = 1U;
  rq->func_rsp.dwords[0] = 0U;
  rq->func_rsp.dwords[1] = 0U;
  rq->vda_req_sz = 0U;
  *(a->req_table + (unsigned long )((unsigned short )vrq->scsi.handle)) = rq;
  tmp = a->cmd_ref_no;
  a->cmd_ref_no = (u16 )((int )a->cmd_ref_no + 1);
  vrq->scsi.handle = (u32 )(((int )tmp << 16) | (int )((unsigned short )vrq->scsi.handle));
  vrq->scsi.function = 0U;
  vrq->scsi.sense_len = 252U;
  vrq->scsi.sg_list_offset = 0U;
  vrq->scsi.chain_offset = 0U;
  vrq->scsi.flags = 0U;
  vrq->scsi.__annonCompField92.__annonCompField91.reserved = 0U;
  vrq->scsi.__annonCompField92.__annonCompField91.ppsense_buf = (rq->vrq_md)->phys_addr + 1024ULL;
  return;
}
}
__inline static void esas2r_rq_free_sg_lists(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  unsigned long flags ;
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& rq->sg_table_head));
  if (tmp != 0) {
    return;
  } else {
  }
  ldv_spin_lock();
  list_splice_tail_init(& rq->sg_table_head, & a->free_sg_list_head);
  spin_unlock_irqrestore(& a->sg_list_lock, flags);
  return;
}
}
__inline static void esas2r_rq_destroy_request(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  {
  esas2r_rq_free_sg_lists(rq, a);
  *(a->req_table + (unsigned long )((unsigned short )(rq->vrq)->scsi.handle)) = (struct esas2r_request *)0;
  rq->__annonCompField106.data_buf = (void *)0;
  return;
}
}
__inline static bool esas2r_build_sg_list(struct esas2r_adapter *a , struct esas2r_request *rq ,
                                          struct esas2r_sg_context *sgc )
{
  long tmp ;
  bool tmp___0 ;
  {
  tmp = ldv__builtin_expect((rq->vrq)->scsi.length == 0U, 0L);
  if (tmp != 0L) {
    return (1);
  } else {
  }
  tmp___0 = (*(a->build_sgl))(a, sgc);
  return (tmp___0);
}
}
__inline static void esas2r_disable_heartbeat(struct esas2r_adapter *a )
{
  {
  clear_bit(17L, (unsigned long volatile *)(& a->flags));
  clear_bit(16L, (unsigned long volatile *)(& a->flags));
  return;
}
}
__inline static void esas2r_local_reset_adapter(struct esas2r_adapter *a )
{
  {
  esas2r_disable_heartbeat(a);
  set_bit(1L, (unsigned long volatile *)(& a->flags));
  set_bit(2L, (unsigned long volatile *)(& a->flags));
  set_bit(14L, (unsigned long volatile *)(& a->flags));
  return;
}
}
__inline static u16 esas2r_targ_get_id(struct esas2r_target *t , struct esas2r_adapter *a )
{
  {
  return ((u16 )(((long )t - (long )(& a->targetdb)) / 120L));
}
}
static void esas2r_disc_abort(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_continue(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_fix_curr_requests(struct esas2r_adapter *a ) ;
static u32 esas2r_disc_get_phys_addr(struct esas2r_sg_context *sgc , u64 *addr ) ;
static bool esas2r_disc_start_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_block_dev_scan(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_block_dev_scan_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_dev_add(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_dev_remove(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_part_info(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_part_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_passthru_dev_info(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_passthru_dev_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_passthru_dev_addr(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_passthru_dev_addr_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static bool esas2r_disc_raid_grp_info(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
static void esas2r_disc_raid_grp_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_disc_initialize(struct esas2r_adapter *a )
{
  struct esas2r_sas_nvram *nvr ;
  int tmp ;
  int tmp___0 ;
  {
  nvr = a->nvram;
  clear_bit(22L, (unsigned long volatile *)(& a->flags));
  clear_bit(1L, (unsigned long volatile *)(& a->flags2));
  clear_bit(2L, (unsigned long volatile *)(& a->flags2));
  a->disc_start_time = jiffies_to_msecs(jiffies);
  a->disc_wait_time = (u32 )((int )nvr->dev_wait_time * 1000);
  a->disc_wait_cnt = (u16 )nvr->dev_wait_count;
  if ((unsigned int )a->disc_wait_cnt > 256U) {
    a->disc_wait_cnt = 256U;
  } else {
  }
  a->general_req.interrupt_cx = (void *)0;
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 != 0) {
      _L:
      if ((unsigned int )a->__annonCompField108.prev_dev_cnt == 0U) {
        a->disc_wait_time = 0U;
      } else {
        a->disc_wait_cnt = a->__annonCompField108.prev_dev_cnt;
        if (a->disc_wait_time <= 14999U) {
          a->disc_wait_time = 15000U;
        } else {
        }
      }
    } else {
    }
  }
  if (a->disc_wait_time == 0U) {
    esas2r_disc_check_complete(a);
  } else {
  }
  return;
}
}
void esas2r_disc_start_waiting(struct esas2r_adapter *a )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  if ((unsigned int )a->disc_ctx.disc_evt != 0U) {
    esas2r_disc_start_port(a);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
void esas2r_disc_check_for_work(struct esas2r_adapter *a )
{
  struct esas2r_request *rq ;
  {
  rq = & a->general_req;
  esas2r_polled_interrupt(a);
  esas2r_disc_start_waiting(a);
  if ((unsigned long )rq->interrupt_cx == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  if ((unsigned int )rq->req_stat == 255U && rq->timeout <= 4294967293U) {
    esas2r_wait_request(a, rq);
    if ((unsigned int )rq->req_stat == 5U) {
      esas2r_disc_abort(a, rq);
      esas2r_local_reset_adapter(a);
      return;
    } else {
    }
  } else {
  }
  if ((unsigned int )rq->req_stat == 254U || (unsigned int )rq->req_stat == 255U) {
    return;
  } else {
  }
  esas2r_disc_continue(a, rq);
  return;
}
}
void esas2r_disc_check_complete(struct esas2r_adapter *a )
{
  unsigned long flags ;
  u32 currtime ;
  unsigned int tmp ;
  u32 time ;
  int tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  if (a->disc_wait_time != 0U) {
    tmp = jiffies_to_msecs(jiffies);
    currtime = tmp;
    time = currtime - a->disc_start_time;
    if (a->disc_wait_time > time) {
      tmp___1 = esas2r_targ_db_get_tgt_cnt(a);
      if ((int )tmp___1 < (int )a->disc_wait_cnt || (unsigned int )a->disc_wait_cnt == 0U) {
        if (time > 2999U) {
          tmp___0 = test_and_set_bit(1L, (unsigned long volatile *)(& a->flags2));
          if (tmp___0 == 0) {
            ldv_spin_lock();
            esas2r_disc_queue_event(a, 2);
            spin_unlock_irqrestore(& a->mem_lock, flags);
          } else {
          }
        } else {
        }
        return;
      } else {
      }
    } else {
    }
    tmp___2 = test_and_set_bit(2L, (unsigned long volatile *)(& a->flags2));
    if (tmp___2 == 0) {
      a->disc_wait_time = time + 3000U;
    } else {
    }
    tmp___3 = test_and_set_bit(1L, (unsigned long volatile *)(& a->flags2));
    if (tmp___3 == 0) {
      ldv_spin_lock();
      esas2r_disc_queue_event(a, 2);
      spin_unlock_irqrestore(& a->mem_lock, flags);
      return;
    } else {
    }
    if (a->disc_wait_time > time) {
      return;
    } else {
    }
  } else {
    tmp___4 = test_and_set_bit(1L, (unsigned long volatile *)(& a->flags2));
    if (tmp___4 == 0) {
      ldv_spin_lock();
      esas2r_disc_queue_event(a, 2);
      spin_unlock_irqrestore(& a->mem_lock, flags);
    } else {
    }
  }
  a->disc_wait_time = 0U;
  tmp___5 = constant_test_bit(25L, (unsigned long const volatile *)(& a->flags));
  if (tmp___5 != 0) {
    tmp___6 = constant_test_bit(22L, (unsigned long const volatile *)(& a->flags));
    if (tmp___6 != 0) {
    } else {
      esas2r_disc_fix_curr_requests(a);
      clear_bit(14L, (unsigned long volatile *)(& a->flags));
      set_bit(0L, (unsigned long volatile *)(& a->flags));
    }
  } else {
    esas2r_disc_fix_curr_requests(a);
    clear_bit(14L, (unsigned long volatile *)(& a->flags));
    set_bit(0L, (unsigned long volatile *)(& a->flags));
  }
  return;
}
}
void esas2r_disc_queue_event(struct esas2r_adapter *a , u8 disc_evt )
{
  struct esas2r_disc_context *dc ;
  int tmp ;
  int tmp___0 ;
  {
  dc = & a->disc_ctx;
  dc->disc_evt = (u8 )((int )dc->disc_evt | (int )disc_evt);
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    tmp___0 = constant_test_bit(25L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      esas2r_disc_start_port(a);
    } else {
    }
  } else {
  }
  return;
}
}
bool esas2r_disc_start_port(struct esas2r_adapter *a )
{
  struct esas2r_request *rq ;
  struct esas2r_disc_context *dc ;
  bool ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  rq = & a->general_req;
  dc = & a->disc_ctx;
  tmp = constant_test_bit(22L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  if ((unsigned int )dc->disc_evt != 0U) {
    tmp___0 = constant_test_bit(25L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 != 0 && a->disc_wait_time == 0U) {
      return (0);
    } else {
    }
  } else {
    set_bit(0L, (unsigned long volatile *)(& a->flags));
    return (0);
  }
  set_bit(22L, (unsigned long volatile *)(& a->flags));
  dc->flags = 0U;
  tmp___1 = constant_test_bit(25L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 != 0) {
    dc->flags = (u16 )((unsigned int )dc->flags | 32768U);
  } else {
  }
  rq->interrupt_cx = (void *)dc;
  rq->req_stat = 0U;
  if (((int )dc->disc_evt & 2) != 0) {
    dc->disc_evt = (unsigned int )dc->disc_evt & 253U;
    dc->flags = (u16 )((unsigned int )dc->flags | 2U);
    dc->state = 2U;
  } else
  if ((int )dc->disc_evt & 1) {
    dc->disc_evt = (unsigned int )dc->disc_evt & 254U;
    dc->flags = (u16 )((unsigned int )dc->flags | 1U);
    dc->state = 0U;
  } else {
  }
  tmp___2 = constant_test_bit(25L, (unsigned long const volatile *)(& a->flags));
  if (tmp___2 == 0) {
    ret = esas2r_disc_continue(a, rq);
  } else {
    ret = 1;
  }
  return (ret);
}
}
static bool esas2r_disc_continue(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  int tmp ;
  bool tmp___0 ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  goto ldv_39188;
  ldv_39187:
  rslt = 0;
  switch ((int )dc->state) {
  case 0:
  rslt = esas2r_disc_dev_remove(a, rq);
  goto ldv_39178;
  case 1:
  rslt = esas2r_disc_dev_add(a, rq);
  goto ldv_39178;
  case 2:
  rslt = esas2r_disc_block_dev_scan(a, rq);
  goto ldv_39178;
  case 3:
  rslt = esas2r_disc_raid_grp_info(a, rq);
  goto ldv_39178;
  case 4:
  rslt = esas2r_disc_part_info(a, rq);
  goto ldv_39178;
  case 5:
  rslt = esas2r_disc_passthru_dev_info(a, rq);
  goto ldv_39178;
  case 6:
  rslt = esas2r_disc_passthru_dev_addr(a, rq);
  goto ldv_39178;
  case 255:
  dc->flags = (unsigned int )dc->flags & 65532U;
  goto ldv_39178;
  default:
  dc->state = 255U;
  goto ldv_39178;
  }
  ldv_39178: ;
  if ((int )rslt) {
    return (1);
  } else {
  }
  ldv_39188: ;
  if (((int )dc->flags & 3) != 0) {
    goto ldv_39187;
  } else {
  }
  rq->interrupt_cx = (void *)0;
  tmp = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    esas2r_disc_fix_curr_requests(a);
  } else {
  }
  clear_bit(22L, (unsigned long volatile *)(& a->flags));
  tmp___0 = esas2r_disc_start_port(a);
  return (tmp___0);
}
}
static bool esas2r_disc_start_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  {
  if (rq->timeout <= 4999U) {
    rq->timeout = 5000U;
  } else {
  }
  rq->req_type = 2U;
  ldv_spin_lock();
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    tmp___0 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      esas2r_disc_local_start_request(a, rq);
    } else {
      list_add_tail(& rq->req_list, & a->defer_list);
    }
  } else {
    list_add_tail(& rq->req_list, & a->defer_list);
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  return (1);
}
}
void esas2r_disc_local_start_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  list_add_tail(& rq->req_list, & a->active_list);
  esas2r_start_vda_request(a, rq);
  return;
}
}
static void esas2r_disc_abort(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  dc->state = 255U;
  return;
}
}
static bool esas2r_disc_block_dev_scan(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  esas2r_rq_init_request(rq, a);
  esas2r_build_mgt_req(a, rq, 0, 0, 0, 0U, (void *)0);
  rq->comp_cb = & esas2r_disc_block_dev_scan_cb;
  rq->timeout = 30000U;
  rq->interrupt_cx = (void *)dc;
  rslt = esas2r_disc_start_request(a, rq);
  return (rslt);
}
}
static void esas2r_disc_block_dev_scan_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  unsigned long flags ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  ldv_spin_lock();
  if ((unsigned int )rq->req_stat == 0U) {
    dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
  } else {
  }
  dc->state = 3U;
  dc->raid_grp_ix = 0U;
  esas2r_rq_destroy_request(rq, a);
  if ((int )((short )dc->flags) >= 0) {
    esas2r_disc_continue(a, rq);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
static bool esas2r_disc_raid_grp_info(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  struct atto_vda_grp_info *grpinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  if ((unsigned int )dc->raid_grp_ix > 31U) {
    dc->state = 255U;
    return (0);
  } else {
  }
  esas2r_rq_init_request(rq, a);
  grpinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.grp_info;
  memset((void *)grpinfo, 0, 112UL);
  esas2r_build_mgt_req(a, rq, 16, (int )dc->scan_gen, 0, 112U, (void *)0);
  grpinfo->grp_index = dc->raid_grp_ix;
  rq->comp_cb = & esas2r_disc_raid_grp_info_cb;
  rq->interrupt_cx = (void *)dc;
  rslt = esas2r_disc_start_request(a, rq);
  return (rslt);
}
}
static void esas2r_disc_raid_grp_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  unsigned long flags ;
  struct atto_vda_grp_info *grpinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  ldv_spin_lock();
  if ((unsigned int )rq->req_stat == 133U) {
    dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
    dc->raid_grp_ix = 0U;
    goto done;
  } else {
  }
  if ((unsigned int )rq->req_stat == 0U) {
    grpinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.grp_info;
    if ((unsigned int )grpinfo->__annonCompField89.status != 3U && (unsigned int )grpinfo->__annonCompField89.status != 4U) {
      dc->raid_grp_ix = (u8 )((int )dc->raid_grp_ix + 1);
    } else {
      memcpy((void *)(& dc->raid_grp_name), (void const *)(& grpinfo->grp_name),
               15UL);
      dc->interleave = grpinfo->interleave;
      dc->block_size = grpinfo->block_size;
      dc->state = 4U;
      dc->part_num = 0U;
    }
  } else {
    if ((unsigned int )rq->req_stat != 136U) {
      esas2r_log(2L, "A request for RAID group info failed - returned with %x", (int )rq->req_stat);
    } else {
    }
    dc->dev_ix = 0U;
    dc->state = 5U;
  }
  done:
  esas2r_rq_destroy_request(rq, a);
  if ((int )((short )dc->flags) >= 0) {
    esas2r_disc_continue(a, rq);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
static bool esas2r_disc_part_info(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  struct atto_vdapart_info *partinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  if ((int )((signed char )dc->part_num) < 0) {
    dc->state = 3U;
    dc->raid_grp_ix = (u8 )((int )dc->raid_grp_ix + 1);
    return (0);
  } else {
  }
  esas2r_rq_init_request(rq, a);
  partinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.part_info;
  memset((void *)partinfo, 0, 88UL);
  esas2r_build_mgt_req(a, rq, 48, (int )dc->scan_gen, 0, 88U, (void *)0);
  partinfo->part_no = dc->part_num;
  memcpy((void *)(& partinfo->grp_name), (void const *)(& dc->raid_grp_name),
           15UL);
  rq->comp_cb = & esas2r_disc_part_info_cb;
  rq->interrupt_cx = (void *)dc;
  rslt = esas2r_disc_start_request(a, rq);
  return (rslt);
}
}
static void esas2r_disc_part_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  unsigned long flags ;
  struct atto_vdapart_info *partinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  ldv_spin_lock();
  if ((unsigned int )rq->req_stat == 133U) {
    dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
    dc->raid_grp_ix = 0U;
    dc->state = 3U;
  } else
  if ((unsigned int )rq->req_stat == 0U) {
    partinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.part_info;
    dc->part_num = partinfo->part_no;
    dc->curr_virt_id = partinfo->target_id;
    esas2r_targ_db_add_raid(a, dc);
    dc->part_num = (u8 )((int )dc->part_num + 1);
  } else {
    if ((unsigned int )rq->req_stat != 152U) {
      esas2r_log(2L, "A request for RAID group partition info failed - status:%d",
                 (int )rq->req_stat);
    } else {
    }
    dc->state = 3U;
    dc->raid_grp_ix = (u8 )((int )dc->raid_grp_ix + 1);
  }
  esas2r_rq_destroy_request(rq, a);
  if ((int )((short )dc->flags) >= 0) {
    esas2r_disc_continue(a, rq);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
static bool esas2r_disc_passthru_dev_info(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  struct atto_vda_devinfo *devinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  esas2r_rq_init_request(rq, a);
  devinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.dev_info;
  memset((void *)devinfo, 0, 112UL);
  esas2r_build_mgt_req(a, rq, 5, (int )dc->scan_gen, (int )dc->dev_ix, 112U, (void *)0);
  rq->comp_cb = & esas2r_disc_passthru_dev_info_cb;
  rq->interrupt_cx = (void *)dc;
  rslt = esas2r_disc_start_request(a, rq);
  return (rslt);
}
}
static void esas2r_disc_passthru_dev_info_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  unsigned long flags ;
  struct atto_vda_devinfo *devinfo ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  ldv_spin_lock();
  if ((unsigned int )rq->req_stat == 133U) {
    dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
    dc->dev_ix = 0U;
    dc->state = 5U;
  } else
  if ((unsigned int )rq->req_stat == 0U) {
    devinfo = & (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.dev_info;
    dc->dev_ix = rq->func_rsp.mgt_rsp.dev_index;
    dc->curr_virt_id = devinfo->__annonCompField87.target_id;
    if (((int )devinfo->features & 8) != 0) {
      dc->curr_phys_id = devinfo->phys_target_id;
      dc->dev_addr_type = 0U;
      dc->state = 6U;
    } else {
      dc->dev_ix = (u16 )((int )dc->dev_ix + 1);
    }
  } else {
    if ((unsigned int )rq->req_stat != 129U) {
      esas2r_log(2L, "A request for device information failed - status:%d", (int )rq->req_stat);
    } else {
    }
    dc->state = 255U;
  }
  esas2r_rq_destroy_request(rq, a);
  if ((int )((short )dc->flags) >= 0) {
    esas2r_disc_continue(a, rq);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
static bool esas2r_disc_passthru_dev_addr(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  bool rslt ;
  struct atto_ioctl *hi ;
  struct esas2r_sg_context sgc ;
  bool tmp ;
  int tmp___0 ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  esas2r_rq_init_request(rq, a);
  sgc.cur_offset = (u8 *)0U;
  sgc.get_phys_addr = & esas2r_disc_get_phys_addr;
  sgc.length = 328U;
  esas2r_sgc_init(& sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->ioctl.__annonCompField96.sge));
  esas2r_build_ioctl_req(a, rq, sgc.length, 0);
  tmp = esas2r_build_sg_list(a, rq, & sgc);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    esas2r_rq_destroy_request(rq, a);
    return (0);
  } else {
  }
  rq->comp_cb = & esas2r_disc_passthru_dev_addr_cb;
  rq->interrupt_cx = (void *)dc;
  hi = (struct atto_ioctl *)a->disc_buffer;
  memset((void *)a->disc_buffer, 0, 512UL);
  hi->version = 0U;
  hi->function = 5U;
  hi->flags = 1U;
  hi->data.get_dev_addr.target_id = (unsigned int )dc->curr_phys_id;
  hi->data.get_dev_addr.addr_type = dc->dev_addr_type;
  rslt = esas2r_disc_start_request(a, rq);
  return (rslt);
}
}
static void esas2r_disc_passthru_dev_addr_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  struct esas2r_target *t ;
  unsigned long flags ;
  struct atto_ioctl *hi ;
  u16 addrlen ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  t = (struct esas2r_target *)0;
  ldv_spin_lock();
  hi = (struct atto_ioctl *)a->disc_buffer;
  if ((unsigned int )rq->req_stat == 0U && (unsigned int )hi->status == 0U) {
    addrlen = hi->data.get_dev_addr.addr_len;
    if ((unsigned int )dc->dev_addr_type == 0U) {
      if ((unsigned int )addrlen == 8U) {
        memcpy((void *)(& dc->sas_addr), (void const *)(& hi->data.get_dev_addr.address),
                 (size_t )addrlen);
      } else {
        memset((void *)(& dc->sas_addr), 0, 8UL);
      }
      dc->dev_addr_type = 4U;
      goto next_dev_addr;
    } else
    if ((unsigned int )((unsigned char )((int )addrlen >> 8)) == 0U) {
      t = esas2r_targ_db_add_pthru(a, dc, (u8 *)(& hi->data.get_dev_addr.address),
                                   (int )((unsigned char )hi->data.get_dev_addr.addr_len));
      if ((unsigned long )t != (unsigned long )((struct esas2r_target *)0)) {
        memcpy((void *)(& t->sas_addr), (void const *)(& dc->sas_addr), 8UL);
      } else {
      }
    } else {
      esas2r_log(2L, "an error occurred retrieving the back end data (%s:%d)", "esas2r_disc_passthru_dev_addr_cb",
                 993);
    }
  } else {
    esas2r_log(2L, "an error occurred retrieving the back end data - rq->req_stat:%d hi->status:%d",
               (int )rq->req_stat, (int )hi->status);
  }
  if (((int )dc->flags & 2) != 0) {
    dc->dev_ix = (u16 )((int )dc->dev_ix + 1);
    dc->state = 5U;
  } else
  if ((int )dc->flags & 1) {
    dc->curr_targ = dc->curr_targ + 1;
    dc->state = 1U;
  } else {
  }
  next_dev_addr:
  esas2r_rq_destroy_request(rq, a);
  if ((int )((short )dc->flags) >= 0) {
    esas2r_disc_continue(a, rq);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
static u32 esas2r_disc_get_phys_addr(struct esas2r_sg_context *sgc , u64 *addr )
{
  struct esas2r_adapter *a ;
  {
  a = sgc->adapter;
  *addr = a->uncached_phys + (unsigned long long )((long )a->disc_buffer - (long )a->uncached);
  return (sgc->length);
}
}
static bool esas2r_disc_dev_remove(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  struct esas2r_target *t ;
  struct esas2r_target *t2 ;
  u16 tmp ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39292;
  ldv_39291: ;
  if ((unsigned int )t->new_target_state != 0U) {
    goto ldv_39290;
  } else {
  }
  t->new_target_state = 255U;
  tmp = esas2r_targ_get_id(t, a);
  t2 = esas2r_targ_db_find_by_virt_id(a, (int )tmp);
  if ((unsigned long )t2 != (unsigned long )((struct esas2r_target *)0)) {
    esas2r_targ_db_remove(a, t2);
  } else {
  }
  ldv_39290:
  t = t + 1;
  ldv_39292: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39291;
  } else {
  }
  dc->state = 1U;
  dc->curr_targ = (struct esas2r_target *)(& a->targetdb);
  return (0);
}
}
static bool esas2r_disc_dev_add(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_disc_context *dc ;
  struct esas2r_target *t ;
  struct atto_vda_ae_lu *luevt ;
  {
  dc = (struct esas2r_disc_context *)rq->interrupt_cx;
  t = dc->curr_targ;
  if ((unsigned long )a->targetdb_end <= (unsigned long )t) {
    dc->state = 255U;
  } else
  if ((unsigned int )t->new_target_state == 5U) {
    luevt = & t->lu_event;
    t->new_target_state = 255U;
    dc->curr_virt_id = esas2r_targ_get_id(t, a);
    if ((unsigned int )luevt->hdr.bylength > 23U && (luevt->dwevent & 268435456U) == 0U) {
      dc->block_size = luevt->id.tgtlun_raid.dwblock_size;
      dc->interleave = luevt->id.tgtlun_raid.dwinterleave;
    } else {
      dc->block_size = 0U;
      dc->interleave = 0U;
    }
    if ((luevt->dwevent & 268435456U) != 0U) {
      if ((luevt->dwevent & 536870912U) != 0U) {
        dc->state = 6U;
        dc->dev_addr_type = 0U;
        dc->curr_phys_id = luevt->wphys_target_id;
      } else {
        esas2r_log(2L, "luevt->dwevent does not have the VDAAE_LU_PHYS_ID bit set (%s:%d)",
                   "esas2r_disc_dev_add", 1127);
      }
    } else {
      dc->raid_grp_name[0] = 0;
      esas2r_targ_db_add_raid(a, dc);
    }
  } else {
  }
  if ((unsigned int )dc->state == 1U) {
    dc->curr_targ = dc->curr_targ + 1;
  } else {
  }
  return (0);
}
}
static void esas2r_disc_fix_curr_requests(struct esas2r_adapter *a )
{
  unsigned long flags ;
  struct esas2r_target *t ;
  struct esas2r_request *rq ;
  struct list_head *element ;
  struct list_head const *__mptr ;
  {
  ldv_spin_lock();
  element = a->defer_list.next;
  goto ldv_39312;
  ldv_39311:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned int )(rq->vrq)->scsi.function == 0U) {
    t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )rq->target_id;
    if ((unsigned int )t->target_state == 5U) {
      (rq->vrq)->scsi.__annonCompField92.__annonCompField91.target_id = t->virt_targ_id;
    } else {
      rq->req_stat = 3U;
    }
  } else {
  }
  element = element->next;
  ldv_39312: ;
  if ((unsigned long )(& a->defer_list) != (unsigned long )element) {
    goto ldv_39311;
  } else {
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  return;
}
}
bool ldv_queue_work_on_50(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_60(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_64(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int sprintf(char * , char const * , ...) ;
extern char *strcpy(char * , char const * ) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  default:
  __xadd_wrong_size();
  }
  ldv_5763: ;
  return (__ret + i);
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
bool ldv_queue_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_87(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_86(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 ) ;
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
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern long schedule_timeout_interruptible(long ) ;
void *ldv_kmem_cache_alloc_95(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
int ldv_scsi_add_host_with_dma_99(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
bool esas2r_nvram_write(struct esas2r_adapter *a , struct esas2r_request *rq , struct esas2r_sas_nvram *nvram ) ;
void esas2r_nvram_get_defaults(struct esas2r_adapter *a , struct esas2r_sas_nvram *nvram ) ;
void esas2r_start_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_build_flash_req(struct esas2r_adapter *a , struct esas2r_request *rq ,
                            u8 sub_func , u8 cksum , u32 addr , u32 length ) ;
u32 esas2r_map_data_window(struct esas2r_adapter *a , u32 addr_lo ) ;
bool esas2r_process_fs_ioctl(struct esas2r_adapter *a , struct esas2r_ioctl_fs *fs ,
                             struct esas2r_request *rq , struct esas2r_sg_context *sgc ) ;
bool esas2r_read_flash_block(struct esas2r_adapter *a , void *to , u32 from , u32 size ) ;
bool esas2r_fm_api(struct esas2r_adapter *a , struct esas2r_flash_img *fi , struct esas2r_request *rq ,
                   struct esas2r_sg_context *sgc ) ;
bool esas2r_read_flash_rev(struct esas2r_adapter *a ) ;
bool esas2r_read_image_type(struct esas2r_adapter *a ) ;
bool esas2r_nvram_read_direct(struct esas2r_adapter *a ) ;
bool esas2r_nvram_validate(struct esas2r_adapter *a ) ;
void esas2r_nvram_set_defaults(struct esas2r_adapter *a ) ;
bool esas2r_print_flash_rev(struct esas2r_adapter *a ) ;
__inline static void esas2r_rq_free_sg_lists___0(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  unsigned long flags ;
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& rq->sg_table_head));
  if (tmp != 0) {
    return;
  } else {
  }
  ldv_spin_lock();
  list_splice_tail_init(& rq->sg_table_head, & a->free_sg_list_head);
  spin_unlock_irqrestore(& a->sg_list_lock, flags);
  return;
}
}
__inline static void esas2r_disable_chip_interrupts(struct esas2r_adapter *a )
{
  int tmp ;
  {
  tmp = atomic_add_return(1, & a->dis_ints_cnt);
  if (tmp == 1) {
    writel(0U, (void volatile *)a->regs + 66060U);
  } else {
  }
  return;
}
}
__inline static void esas2r_enable_chip_interrupts(struct esas2r_adapter *a )
{
  int tmp ;
  {
  tmp = atomic_sub_return(1, & a->dis_ints_cnt);
  if (tmp == 0) {
    writel(4112U, (void volatile *)a->regs + 66060U);
  } else {
  }
  return;
}
}
__inline static void esas2r_enable_heartbeat(struct esas2r_adapter *a )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      if (((int )(a->nvram)->options2 & 16) != 0) {
        set_bit(17L, (unsigned long volatile *)(& a->flags));
      } else {
        clear_bit(17L, (unsigned long volatile *)(& a->flags));
      }
    } else {
      clear_bit(17L, (unsigned long volatile *)(& a->flags));
    }
  } else {
    clear_bit(17L, (unsigned long volatile *)(& a->flags));
  }
  return;
}
}
static struct esas2r_sas_nvram default_sas_nvram =
     {{69U, 83U, 65U, 83U}, 0U, 0U, 31U, 248U, 1U, 81U, 0U, 0U, 3U, 1U, 0U, 0U, {80U,
                                                                               1U,
                                                                               8U,
                                                                               96U,
                                                                               0U,
                                                                               0U,
                                                                               0U,
                                                                               0U},
    {0U}, {0U}, {0U}, 0U, 3U, 3U, 0U, {0U}, 0U, 0U, 0U, {0U}};
static u8 cmd_to_fls_func[6U] = { 255U, 1U, 0U, 2U,
        3U, 4U};
static u8 esas2r_calc_byte_xor_cksum(u8 *addr , u32 len , u8 seed )
{
  u32 cksum ;
  u8 *p ;
  u32 tmp ;
  {
  cksum = (u32 )seed;
  p = (u8 *)(& cksum);
  goto ldv_39103;
  ldv_39102: ;
  if (((unsigned long )addr & 3UL) == 0UL) {
    goto ldv_39101;
  } else {
  }
  cksum = (u32 )*addr ^ cksum;
  addr = addr + 1;
  len = len - 1U;
  ldv_39103: ;
  if (len != 0U) {
    goto ldv_39102;
  } else {
  }
  ldv_39101: ;
  goto ldv_39105;
  ldv_39104:
  cksum = *((u32 *)addr) ^ cksum;
  addr = addr + 4UL;
  len = len - 4U;
  ldv_39105: ;
  if (len > 3U) {
    goto ldv_39104;
  } else {
  }
  goto ldv_39108;
  ldv_39107:
  cksum = (u32 )*addr ^ cksum;
  addr = addr + 1;
  ldv_39108:
  tmp = len;
  len = len - 1U;
  if (tmp != 0U) {
    goto ldv_39107;
  } else {
  }
  return ((u8 )((((int )*p ^ (int )*(p + 1UL)) ^ (int )*(p + 2UL)) ^ (int )*(p + 3UL)));
}
}
static u8 esas2r_calc_byte_cksum(void *addr , u32 len , u8 seed )
{
  u8 *p ;
  u8 cksum ;
  u32 tmp ;
  {
  p = (u8 *)addr;
  cksum = seed;
  goto ldv_39118;
  ldv_39117:
  cksum = (int )*(p + (unsigned long )len) + (int )cksum;
  ldv_39118:
  tmp = len;
  len = len - 1U;
  if (tmp != 0U) {
    goto ldv_39117;
  } else {
  }
  return (cksum);
}
}
static void esas2r_fmapi_callback(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct atto_vda_flash_req *vrq ;
  struct esas2r_flash_context *fc ;
  {
  vrq = & (rq->vrq)->flash;
  fc = (struct esas2r_flash_context *)rq->interrupt_cx;
  if ((unsigned int )rq->req_stat == 0U) {
    switch ((int )vrq->sub_func) {
    case 0: ;
    if ((unsigned long )fc->sgc.cur_offset == (unsigned long )((u8 *)0U)) {
      goto commit;
    } else {
    }
    vrq->sub_func = 2U;
    rq->req_stat = 254U;
    goto ldv_39128;
    case 2: ;
    commit:
    vrq->sub_func = 3U;
    rq->req_stat = 254U;
    rq->interrupt_cb = fc->interrupt_cb;
    goto ldv_39128;
    default: ;
    goto ldv_39128;
    }
    ldv_39128: ;
  } else {
  }
  if ((unsigned int )rq->req_stat != 254U) {
    (*(fc->interrupt_cb))(a, rq);
  } else {
  }
  return;
}
}
static void build_flash_msg(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_flash_context *fc ;
  struct esas2r_sg_context *sgc ;
  u8 cksum ;
  bool tmp ;
  int tmp___0 ;
  {
  fc = (struct esas2r_flash_context *)rq->interrupt_cx;
  sgc = & fc->sgc;
  cksum = 0U;
  if ((unsigned int )fc->func == 0U) {
    if ((unsigned long )sgc->cur_offset != (unsigned long )((u8 *)0U)) {
      cksum = esas2r_calc_byte_xor_cksum(sgc->cur_offset, sgc->length, 0);
    } else {
    }
    rq->interrupt_cb = & esas2r_fmapi_callback;
  } else {
    rq->interrupt_cb = fc->interrupt_cb;
  }
  esas2r_build_flash_req(a, rq, (int )fc->func, (int )cksum, fc->flsh_addr, sgc->length);
  esas2r_rq_free_sg_lists___0(rq, a);
  fc->curr_len = fc->sgc.length;
  if ((unsigned long )sgc->cur_offset != (unsigned long )((u8 *)0U)) {
    esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->flash.data.sge));
    tmp = esas2r_build_sg_list(a, rq, sgc);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      rq->req_stat = 2U;
      return;
    } else {
    }
  } else {
    fc->sgc.length = 0U;
  }
  fc->flsh_addr = fc->flsh_addr + fc->curr_len;
  return;
}
}
static bool load_image(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  int tmp ;
  {
  rq->req_stat = 254U;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
  } else {
    build_flash_msg(a, rq);
  }
  return ((unsigned int )rq->req_stat == 254U);
}
}
static void fix_bios(struct esas2r_adapter *a , struct esas2r_flash_img *fi )
{
  struct esas2r_component_header *ch ;
  struct esas2r_pc_image *pi ;
  struct esas2r_boot_header *bh ;
  u8 *pnp_header_bytes ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 2UL;
  pi = (struct esas2r_pc_image *)fi + (unsigned long )ch->image_offset;
  bh = (struct esas2r_boot_header *)pi + (unsigned long )pi->header_offset;
  bh->device_id = (a->pcid)->device;
  if ((unsigned int )pi->pnp_offset != 0U) {
    pnp_header_bytes = (u8 *)pi + (unsigned long )pi->pnp_offset;
    *((u32 *)pnp_header_bytes + 10U) = (unsigned int )(a->pcid)->subsystem_vendor | ((unsigned int )(a->pcid)->subsystem_device << 16);
    tmp = esas2r_calc_byte_cksum((void *)pnp_header_bytes, 32U, 0);
    *(pnp_header_bytes + 9UL) = (int )*(pnp_header_bytes + 9UL) - (int )tmp;
  } else {
  }
  tmp___0 = esas2r_calc_byte_cksum((void *)pi, ch->length, 0);
  pi->checksum = (int )pi->checksum - (int )tmp___0;
  return;
}
}
static void fix_efi(struct esas2r_adapter *a , struct esas2r_flash_img *fi )
{
  struct esas2r_component_header *ch ;
  u32 len ;
  u32 offset ;
  struct esas2r_efi_image *ei ;
  struct esas2r_boot_header *bh ;
  u32 thislen ;
  {
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 5UL;
  len = ch->length;
  offset = ch->image_offset;
  goto ldv_39162;
  ldv_39161:
  ei = (struct esas2r_efi_image *)fi + (unsigned long )offset;
  bh = (struct esas2r_boot_header *)ei + (unsigned long )ei->header_offset;
  bh->device_id = (a->pcid)->device;
  thislen = (unsigned int )bh->image_length * 512U;
  if (thislen > len) {
    goto ldv_39160;
  } else {
  }
  len = len - thislen;
  offset = offset + thislen;
  ldv_39162: ;
  if (len != 0U) {
    goto ldv_39161;
  } else {
  }
  ldv_39160: ;
  return;
}
}
static bool complete_fmapi_req(struct esas2r_adapter *a , struct esas2r_request *rq ,
                               u8 fi_stat )
{
  struct esas2r_flash_context *fc ;
  struct esas2r_flash_img *fi ;
  {
  fc = (struct esas2r_flash_context *)rq->interrupt_cx;
  fi = fc->fi;
  fi->status = fi_stat;
  fi->driver_error = (u16 )rq->req_stat;
  rq->interrupt_cb = (void (*)(struct esas2r_adapter * , struct esas2r_request * ))0;
  rq->req_stat = 0U;
  if ((unsigned int )fi_stat != 8U) {
    memset((void *)fc->scratch, 0, 2048UL);
  } else {
  }
  esas2r_enable_heartbeat(a);
  clear_bit(8L, (unsigned long volatile *)(& a->flags));
  return (0);
}
}
static void fw_download_proc(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_flash_context *fc ;
  struct esas2r_flash_img *fi ;
  struct esas2r_component_header *ch ;
  u32 len ;
  u8 *p ;
  u8 *q ;
  u8 *tmp ;
  u8 *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  fc = (struct esas2r_flash_context *)rq->interrupt_cx;
  fi = fc->fi;
  if ((unsigned int )rq->req_stat != 0U) {
    goto error;
  } else {
  }
  if ((unsigned int )fc->func == 1U && fc->cmp_len != 0U) {
    ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + (unsigned long )fc->comp_typ;
    p = fc->scratch;
    q = (u8 *)fi + (((unsigned long )ch->image_offset + (unsigned long )ch->length) - (unsigned long )fc->cmp_len);
    len = fc->curr_len;
    goto ldv_39182;
    ldv_39181:
    tmp = p;
    p = p + 1;
    tmp___0 = q;
    q = q + 1;
    if ((int )*tmp != (int )*tmp___0) {
      goto error;
    } else {
    }
    len = len - 1U;
    ldv_39182: ;
    if (len != 0U) {
      goto ldv_39181;
    } else {
    }
    fc->cmp_len = fc->cmp_len - fc->curr_len;
    if (fc->cmp_len > 2048U) {
      fc->sgc.length = 2048U;
    } else {
      fc->sgc.length = fc->cmp_len;
    }
    fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )((long )fc->scratch - (long )fi);
  } else {
  }
  goto ldv_39199;
  ldv_39198:
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + (unsigned long )fc->comp_typ;
  switch ((int )fc->task) {
  case 0:
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 2UL;
  if (ch->length == 0U) {
    goto no_bios;
  } else {
  }
  fc->task = 1U;
  fc->func = 0U;
  fc->comp_typ = 2U;
  fc->flsh_addr = 7340032U;
  fc->sgc.length = ch->length;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )ch->image_offset;
  goto ldv_39186;
  case 1:
  fc->task = 2U;
  fc->func = 1U;
  fc->flsh_addr = 7340032U;
  fc->cmp_len = ch->length;
  fc->sgc.length = 2048U;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )((long )fc->scratch - (long )fi);
  goto ldv_39186;
  case 2: ;
  no_bios:
  ch->status = 1U;
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 3UL;
  if (ch->length == 0U) {
    goto no_mac;
  } else {
  }
  fc->task = 3U;
  fc->func = 0U;
  fc->comp_typ = 3U;
  fc->flsh_addr = fi->cmp_hdr[2].length + 7340032U;
  fc->sgc.length = ch->length;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )ch->image_offset;
  goto ldv_39186;
  case 3:
  fc->task = 4U;
  fc->func = 1U;
  fc->flsh_addr = fc->flsh_addr - ch->length;
  fc->cmp_len = ch->length;
  fc->sgc.length = 2048U;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )((long )fc->scratch - (long )fi);
  goto ldv_39186;
  case 4: ;
  no_mac:
  ch->status = 1U;
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 5UL;
  if (ch->length == 0U) {
    goto no_efi;
  } else {
  }
  fc->task = 5U;
  fc->func = 0U;
  fc->comp_typ = 5U;
  fc->flsh_addr = (fi->cmp_hdr[2].length + fi->cmp_hdr[3].length) + 7340032U;
  fc->sgc.length = ch->length;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )ch->image_offset;
  goto ldv_39186;
  case 5:
  fc->task = 6U;
  fc->func = 1U;
  fc->flsh_addr = fc->flsh_addr - ch->length;
  fc->cmp_len = ch->length;
  fc->sgc.length = 2048U;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )((long )fc->scratch - (long )fi);
  goto ldv_39186;
  case 6: ;
  no_efi:
  ch->status = 1U;
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 4UL;
  if (ch->length == 0U) {
    goto no_cfg;
  } else {
  }
  fc->task = 7U;
  fc->func = 0U;
  fc->comp_typ = 4U;
  fc->flsh_addr = 8126464U - ch->length;
  fc->sgc.length = ch->length;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )ch->image_offset;
  goto ldv_39186;
  case 7:
  fc->task = 8U;
  fc->func = 1U;
  fc->flsh_addr = 8126464U - ch->length;
  fc->cmp_len = ch->length;
  fc->sgc.length = 2048U;
  fc->sgc.cur_offset = fc->sgc_offset + (unsigned long )((long )fc->scratch - (long )fi);
  goto ldv_39186;
  case 8: ;
  no_cfg:
  ch->status = 1U;
  tmp___1 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 != 0) {
    esas2r_local_reset_adapter(a);
  } else {
  }
  a->flash_ver = fi->cmp_hdr[2].version;
  esas2r_print_flash_rev(a);
  memcpy((void *)(& a->image_type), (void const *)(& fi->rel_version), 16UL);
  complete_fmapi_req(a, rq, 0);
  return;
  }
  ldv_39186: ;
  if ((unsigned int )fc->func == 1U && fc->sgc.length > fc->cmp_len) {
    fc->sgc.length = fc->cmp_len;
  } else {
  }
  ldv_39199: ;
  if (fc->sgc.length == 0U) {
    goto ldv_39198;
  } else {
  }
  tmp___2 = load_image(a, rq);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    error: ;
    if ((int )((unsigned short )fc->comp_typ) < (int )fi->num_comps) {
      ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + (unsigned long )fc->comp_typ;
      ch->status = 0U;
    } else {
    }
    complete_fmapi_req(a, rq, 1);
  } else {
  }
  return;
}
}
static u8 get_fi_adap_type(struct esas2r_adapter *a )
{
  u8 type ;
  {
  switch ((int )(a->pcid)->device) {
  case 44:
  type = 11U;
  goto ldv_39206;
  case 73: ;
  case 102: ;
  case 103: ;
  case 104:
  type = 15U;
  goto ldv_39206;
  default:
  type = 255U;
  goto ldv_39206;
  }
  ldv_39206: ;
  return (type);
}
}
static u32 chk_cfg(u8 *cfg , u32 length , u32 *flash_ver )
{
  u16 *pw ;
  u32 sz ;
  u32 len ;
  u16 type ;
  u16 size ;
  u16 *tmp ;
  u16 *tmp___0 ;
  {
  pw = (u16 *)cfg + 0xffffffffffffffffUL;
  sz = 0U;
  len = length;
  if (len == 0U) {
    len = 2048U;
  } else {
  }
  if ((unsigned long )flash_ver != (unsigned long )((u32 *)0U)) {
    *flash_ver = 0U;
  } else {
  }
  ldv_39223:
  tmp = pw;
  pw = pw - 1;
  type = *tmp;
  tmp___0 = pw;
  pw = pw - 1;
  size = *tmp___0;
  if (((unsigned int )type != 43520U && (unsigned int )type != 43522U) && (unsigned int )type != 43524U) {
    goto ldv_39222;
  } else {
  }
  if ((unsigned int )type == 43524U && (unsigned long )flash_ver != (unsigned long )((u32 *)0U)) {
    *flash_ver = *((u32 *)pw + 0xffffffffffffffffUL);
  } else {
  }
  sz = ((u32 )size + sz) + 4U;
  pw = pw + - ((unsigned long )((unsigned int )size / 2U));
  if ((unsigned long )sz > (unsigned long )len - 4UL) {
    goto ldv_39222;
  } else {
  }
  goto ldv_39223;
  ldv_39222: ;
  if (length != 0U && sz != length) {
    return (0U);
  } else {
  }
  return (sz);
}
}
static u8 chk_boot(u8 *boot_img , u32 length )
{
  struct esas2r_boot_image *bi ;
  u16 hdroffset ;
  struct esas2r_boot_header *bh ;
  {
  bi = (struct esas2r_boot_image *)boot_img;
  hdroffset = bi->header_offset;
  if (((((unsigned int )bi->signature != 43605U || (unsigned int )hdroffset > 65512U) || ((int )hdroffset & 3) != 0) || (unsigned int )hdroffset <= 27U) || (unsigned long )hdroffset + 24UL > (unsigned long )length) {
    return (255U);
  } else {
  }
  bh = (struct esas2r_boot_header *)bi + (unsigned long )hdroffset;
  if (((((((((int )((signed char )bh->signature[0]) != 80 || (int )((signed char )bh->signature[1]) != 67) || (int )((signed char )bh->signature[2]) != 73) || (int )((signed char )bh->signature[3]) != 82) || (unsigned int )bh->struct_length <= 23U) || (unsigned int )bh->class_code[2] != 1U) || (unsigned int )bh->class_code[1] != 4U) || (unsigned int )bh->class_code[0] != 0U) || (((unsigned int )bh->code_type != 0U && (unsigned int )bh->code_type != 1U) && (unsigned int )bh->code_type != 3U)) {
    return (255U);
  } else {
  }
  return (bh->code_type);
}
}
static u16 calc_fi_checksum(struct esas2r_flash_context *fc )
{
  struct esas2r_flash_img *fi ;
  u16 cksum ;
  u32 len ;
  u16 *pw ;
  {
  fi = fc->fi;
  len = (fi->length - fc->fi_hdr_len) / 2U;
  pw = (u16 *)fi + (unsigned long )fc->fi_hdr_len;
  cksum = 0U;
  goto ldv_39239;
  ldv_39238:
  cksum = (int )*pw + (int )cksum;
  len = len - 1U;
  pw = pw + 1;
  ldv_39239: ;
  if (len != 0U) {
    goto ldv_39238;
  } else {
  }
  return (cksum);
}
}
static bool verify_fi(struct esas2r_adapter *a , struct esas2r_flash_context *fc )
{
  struct esas2r_flash_img *fi ;
  u8 type ;
  bool imgerr ;
  u16 i ;
  u32 len ;
  struct esas2r_component_header *ch ;
  bool cmperr ;
  u8 tmp ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  {
  fi = fc->fi;
  len = fi->length;
  if ((int )len & 1 || fc->fi_hdr_len > len) {
    fi->status = 6U;
    return (0);
  } else {
  }
  type = get_fi_adap_type(a);
  if ((unsigned int )type == 255U || (int )fi->adap_typ != (int )type) {
    fi->status = 3U;
    return (0);
  } else {
  }
  imgerr = 0;
  i = 0U;
  len = 0U;
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr);
  goto ldv_39266;
  ldv_39265:
  cmperr = 0;
  if ((int )((unsigned short )ch->img_type) != (int )i) {
    imgerr = 1;
    ch->status = 3U;
    goto ldv_39252;
  } else {
  }
  switch ((int )ch->img_type) {
  case 2:
  type = 0U;
  goto ldv_39254;
  case 3:
  type = 1U;
  goto ldv_39254;
  case 5:
  type = 3U;
  goto ldv_39254;
  }
  ldv_39254: ;
  switch ((int )ch->img_type) {
  case 0: ;
  case 1: ;
  goto ldv_39259;
  case 2: ;
  case 3: ;
  case 5: ;
  if ((ch->length & 511U) != 0U) {
    cmperr = 1;
  } else {
  }
  if (ch->length == 0U) {
    goto ldv_39259;
  } else {
  }
  tmp = chk_boot((u8 *)fi + (unsigned long )ch->image_offset, ch->length);
  if ((int )tmp != (int )type) {
    cmperr = 1;
  } else {
  }
  goto ldv_39259;
  case 4: ;
  if (ch->length == 0U) {
    cmperr = 1;
    goto ldv_39259;
  } else {
  }
  tmp___0 = chk_cfg((u8 *)fi + ((unsigned long )ch->image_offset + (unsigned long )ch->length),
                    ch->length, (u32 *)0U);
  if (tmp___0 == 0U) {
    cmperr = 1;
  } else {
  }
  goto ldv_39259;
  default:
  fi->status = 7U;
  return (0);
  }
  ldv_39259: ;
  if ((int )cmperr) {
    imgerr = 1;
    ch->status = 3U;
  } else {
    ch->status = 255U;
    len = ch->length + len;
  }
  ldv_39252:
  i = (u16 )((int )i + 1);
  ch = ch + 1;
  ldv_39266: ;
  if ((int )fi->num_comps > (int )i) {
    goto ldv_39265;
  } else {
  }
  if ((int )imgerr) {
    fi->status = 11U;
    return (0);
  } else {
  }
  if (fi->length - fc->fi_hdr_len != len) {
    fi->status = 6U;
    return (0);
  } else {
  }
  tmp___1 = calc_fi_checksum(fc);
  if ((int )fi->checksum != (int )tmp___1) {
    fi->status = 5U;
    return (0);
  } else {
  }
  return (1);
}
}
static void esas2r_complete_fs_ioctl(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_ioctl_fs *fs ;
  {
  fs = (struct esas2r_ioctl_fs *)rq->interrupt_cx;
  if ((unsigned int )(rq->vrq)->flash.sub_func == 3U) {
    esas2r_enable_heartbeat(a);
  } else {
  }
  fs->driver_error = rq->req_stat;
  if ((unsigned int )fs->driver_error == 0U) {
    fs->status = 0U;
  } else {
    fs->status = 1U;
  }
  return;
}
}
bool esas2r_process_fs_ioctl(struct esas2r_adapter *a , struct esas2r_ioctl_fs *fs ,
                             struct esas2r_request *rq , struct esas2r_sg_context *sgc )
{
  u8 cmdcnt ;
  struct esas2r_ioctlfs_command *fsc ;
  u8 func ;
  u32 datalen ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  cmdcnt = 6U;
  fsc = & fs->command;
  func = 0U;
  fs->status = 1U;
  fs->driver_error = 254U;
  if ((unsigned int )fs->version != 0U) {
    fs->status = 2U;
    return (0);
  } else {
  }
  if ((int )fsc->command >= (int )cmdcnt) {
    fs->status = 4U;
    return (0);
  } else {
  }
  func = cmd_to_fls_func[(int )fsc->command];
  if ((unsigned int )func == 255U) {
    fs->status = 4U;
    return (0);
  } else {
  }
  if ((unsigned int )fsc->command != 5U) {
    if (((((unsigned int )(a->pcid)->device != 73U || (unsigned int )fs->adap_type != 3U) && ((unsigned int )(a->pcid)->device != 102U || (unsigned int )fs->adap_type != 4U)) && ((unsigned int )(a->pcid)->device != 103U || (unsigned int )fs->adap_type != 5U)) && ((unsigned int )(a->pcid)->device != 104U || (unsigned int )fs->adap_type != 6U)) {
      fs->status = 6U;
      return (0);
    } else {
    }
    if ((unsigned int )fs->driver_ver > 2U) {
      fs->status = 7U;
      return (0);
    } else {
    }
  } else {
  }
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    fs->status = 11U;
    return (0);
  } else {
  }
  rq->interrupt_cb = & esas2r_complete_fs_ioctl;
  rq->interrupt_cx = (void *)fs;
  datalen = fsc->length;
  esas2r_build_flash_req(a, rq, (int )func, (int )fsc->checksum, fsc->flash_addr,
                         datalen);
  if ((unsigned int )func == 2U || (unsigned int )func == 1U) {
    if (datalen == 0U) {
      fs->status = 4U;
      return (0);
    } else {
    }
    esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->flash.data.sge));
    sgc->length = datalen;
    tmp___0 = esas2r_build_sg_list(a, rq, sgc);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      fs->status = 3U;
      return (0);
    } else {
    }
  } else {
  }
  if ((unsigned int )func == 3U) {
    esas2r_disable_heartbeat(a);
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
}
}
static bool esas2r_flash_access(struct esas2r_adapter *a , u32 function )
{
  u32 starttime ;
  u32 timeout ;
  u32 intstat ;
  u32 doorbell ;
  int tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  unsigned int tmp___2 ;
  {
  if (function == 32U) {
    esas2r_disable_chip_interrupts(a);
  } else {
  }
  writel(function, (void volatile *)a->regs + 66656U);
  starttime = jiffies_to_msecs(jiffies);
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    timeout = 40000U;
  } else {
    tmp___0 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 != 0) {
      timeout = 40000U;
    } else {
      timeout = 5000U;
    }
  }
  ldv_39294:
  intstat = readl((void const volatile *)a->regs + 66048U);
  if ((intstat & 4096U) != 0U) {
    doorbell = readl((void const volatile *)a->regs + 66688U);
    writel(doorbell, (void volatile *)a->regs + 66688U);
    if ((doorbell & function) != 0U) {
      goto ldv_39293;
    } else {
    }
  } else {
  }
  tmp___1 = msecs_to_jiffies(100U);
  schedule_timeout_interruptible((long )tmp___1);
  tmp___2 = jiffies_to_msecs(jiffies);
  if (tmp___2 - starttime > timeout) {
    if (function == 32U) {
      writel(64U, (void volatile *)a->regs + 66656U);
      esas2r_enable_chip_interrupts(a);
    } else {
    }
    return (0);
  } else {
  }
  goto ldv_39294;
  ldv_39293: ;
  if (function == 64U) {
    esas2r_enable_chip_interrupts(a);
  } else {
  }
  return (1);
}
}
bool esas2r_read_flash_block(struct esas2r_adapter *a , void *to , u32 from , u32 size )
{
  u8 *end ;
  bool tmp ;
  int tmp___0 ;
  u32 len ;
  u32 offset ;
  u32 iatvr ;
  int tmp___1 ;
  u8 *tmp___2 ;
  u32 tmp___3 ;
  {
  end = (u8 *)to;
  tmp = esas2r_flash_access(a, 32U);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  goto ldv_39309;
  ldv_39308:
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___1 != 0) {
    iatvr = (from & 4294836224U) + 3959422976U;
  } else {
    iatvr = (from & 4294836224U) + 4227858432U;
  }
  esas2r_map_data_window(a, iatvr);
  offset = from & 131071U;
  len = size;
  if (131072U - offset < len) {
    len = 131072U - offset;
  } else {
  }
  from = from + len;
  size = size - len;
  goto ldv_39306;
  ldv_39305:
  tmp___2 = end;
  end = end + 1;
  *tmp___2 = readb((void const volatile *)a->data_window + (unsigned long )offset);
  offset = offset + 1U;
  ldv_39306:
  tmp___3 = len;
  len = len - 1U;
  if (tmp___3 != 0U) {
    goto ldv_39305;
  } else {
  }
  ldv_39309: ;
  if (size != 0U) {
    goto ldv_39308;
  } else {
  }
  esas2r_flash_access(a, 64U);
  return (1);
}
}
bool esas2r_read_flash_rev(struct esas2r_adapter *a )
{
  u8 bytes[256U] ;
  u16 *pw ;
  u16 *pwstart ;
  u16 type ;
  u16 size ;
  u32 sz ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  sz = 256U;
  pw = (u16 *)(& bytes) + (unsigned long )sz;
  pwstart = (u16 *)(& bytes) + 2UL;
  tmp = esas2r_read_flash_block(a, (void *)(& bytes), 8126464U - sz, sz);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto invalid_rev;
  } else {
  }
  goto ldv_39321;
  ldv_39323:
  pw = pw - 1;
  type = *pw;
  pw = pw - 1;
  size = *pw;
  pw = pw + - ((unsigned long )((unsigned int )size / 2U));
  if (((unsigned int )type == 43520U || (unsigned int )type == 43522U) || (unsigned long )pw < (unsigned long )pwstart) {
    goto ldv_39321;
  } else {
  }
  if ((unsigned int )type == 43524U) {
    a->flash_ver = *((u32 *)pw);
  } else {
  }
  goto ldv_39322;
  ldv_39321: ;
  if ((unsigned long )pw >= (unsigned long )pwstart) {
    goto ldv_39323;
  } else {
  }
  ldv_39322: ;
  invalid_rev:
  tmp___1 = esas2r_print_flash_rev(a);
  return (tmp___1);
}
}
bool esas2r_print_flash_rev(struct esas2r_adapter *a )
{
  u16 year ;
  u8 day ;
  u8 month ;
  {
  year = (unsigned short )a->flash_ver;
  day = (unsigned char )(a->flash_ver >> 16);
  month = (unsigned char )((int )((unsigned short )(a->flash_ver >> 16)) >> 8);
  if ((((((unsigned int )day == 0U || (unsigned int )month == 0U) || (unsigned int )day > 31U) || (unsigned int )month > 12U) || (unsigned int )year <= 2005U) || (unsigned int )year > 9999U) {
    strcpy((char *)(& a->flash_rev), "not found");
    a->flash_ver = 0U;
    return (0);
  } else {
  }
  sprintf((char *)(& a->flash_rev), "%02d/%02d/%04d", (int )month, (int )day, (int )year);
  return (1);
}
}
bool esas2r_read_image_type(struct esas2r_adapter *a )
{
  u8 bytes[256U] ;
  struct esas2r_boot_image *bi ;
  struct esas2r_boot_header *bh ;
  u32 sz ;
  u32 len ;
  u32 offset ;
  bool tmp ;
  int tmp___0 ;
  struct esas2r_efi_image *ei ;
  u32 thislen ;
  {
  sz = 256U;
  len = 786432U;
  offset = 0U;
  ldv_39348:
  tmp = esas2r_read_flash_block(a, (void *)(& bytes), offset + 7340032U, sz);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto invalid_rev;
  } else {
  }
  bi = (struct esas2r_boot_image *)(& bytes);
  bh = (struct esas2r_boot_header *)bi + (unsigned long )bi->header_offset;
  if ((unsigned int )bi->signature != 43605U) {
    goto invalid_rev;
  } else {
  }
  if ((unsigned int )bh->code_type == 0U) {
    strcpy((char *)(& a->image_type), "BIOS");
    return (1);
  } else
  if ((unsigned int )bh->code_type == 3U) {
    ei = (struct esas2r_efi_image *)(& bytes);
    switch ((int )ei->machine_type) {
    case 332:
    strcpy((char *)(& a->image_type), "EFI 32-bit");
    return (1);
    case 512:
    strcpy((char *)(& a->image_type), "EFI itanium");
    return (1);
    case 34404:
    strcpy((char *)(& a->image_type), "EFI 64-bit");
    return (1);
    case 3772:
    strcpy((char *)(& a->image_type), "EFI EBC");
    return (1);
    default: ;
    goto invalid_rev;
    }
  } else {
    thislen = (unsigned int )bh->image_length * 512U;
    if ((thislen == 0U || thislen + offset > len) || (unsigned int )bh->indicator == 128U) {
      goto ldv_39347;
    } else {
    }
    offset = offset + thislen;
  }
  goto ldv_39348;
  ldv_39347: ;
  invalid_rev:
  strcpy((char *)(& a->image_type), "no boot images");
  return (0);
}
}
bool esas2r_nvram_read_direct(struct esas2r_adapter *a )
{
  bool result ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = down_interruptible(& a->nvram_semaphore);
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = esas2r_read_flash_block(a, (void *)a->nvram, 8126464U, 256U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  result = esas2r_nvram_validate(a);
  up(& a->nvram_semaphore);
  return (result);
}
}
static void esas2r_nvram_callback(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct atto_vda_flash_req *vrq ;
  {
  vrq = & (rq->vrq)->flash;
  if ((unsigned int )rq->req_stat == 0U) {
    switch ((int )vrq->sub_func) {
    case 0:
    vrq->sub_func = 2U;
    rq->req_stat = 254U;
    goto ldv_39359;
    case 2:
    vrq->sub_func = 3U;
    rq->req_stat = 254U;
    goto ldv_39359;
    case 1:
    esas2r_nvram_validate(a);
    goto ldv_39359;
    case 3: ;
    default: ;
    goto ldv_39359;
    }
    ldv_39359: ;
  } else {
  }
  if ((unsigned int )rq->req_stat != 254U) {
    if ((unsigned int )rq->req_stat == 0U) {
      set_bit(12L, (unsigned long volatile *)(& a->flags));
    } else {
      clear_bit(12L, (unsigned long volatile *)(& a->flags));
    }
    esas2r_enable_heartbeat(a);
    up(& a->nvram_semaphore);
  } else {
  }
  return;
}
}
bool esas2r_nvram_write(struct esas2r_adapter *a , struct esas2r_request *rq , struct esas2r_sas_nvram *nvram )
{
  struct esas2r_sas_nvram *n ;
  u8 sas_address_bytes[8U] ;
  u32 *sas_address_dwords ;
  struct atto_vda_flash_req *vrq ;
  int tmp ;
  int tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  int tmp___3 ;
  {
  n = nvram;
  sas_address_dwords = (u32 *)(& sas_address_bytes);
  vrq = & (rq->vrq)->flash;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = down_interruptible(& a->nvram_semaphore);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  if ((unsigned long )n == (unsigned long )((struct esas2r_sas_nvram *)0)) {
    n = a->nvram;
  } else {
  }
  if ((unsigned int )n->version != 0U) {
    up(& a->nvram_semaphore);
    return (0);
  } else {
  }
  memcpy((void *)(& sas_address_bytes), (void const *)(& n->sas_addr), 8UL);
  if (((((unsigned int )sas_address_bytes[0] != 80U || (unsigned int )sas_address_bytes[1] != 1U) || (unsigned int )sas_address_bytes[2] != 8U) || ((int )sas_address_bytes[3] & 240) != 96) || (((u32 )sas_address_bytes[3] & 15U) | *(sas_address_dwords + 1UL)) == 0U) {
    up(& a->nvram_semaphore);
    return (0);
  } else {
  }
  if ((unsigned int )n->spin_up_delay > 20U) {
    n->spin_up_delay = 20U;
  } else {
  }
  n->version = 0U;
  tmp___1 = esas2r_calc_byte_cksum((void *)n, 256U, 90);
  n->checksum = (int )n->checksum - (int )tmp___1;
  memcpy((void *)a->nvram, (void const *)n, 256UL);
  n = a->nvram;
  esas2r_disable_heartbeat(a);
  tmp___2 = esas2r_calc_byte_xor_cksum((u8 *)n, 256U, 0);
  esas2r_build_flash_req(a, rq, 0, (int )tmp___2, 8126464U, 256U);
  tmp___3 = constant_test_bit(24L, (unsigned long const volatile *)(& a->flags));
  if (tmp___3 != 0) {
    vrq->data.sge[0].length = 16777472U;
    vrq->data.sge[0].address = a->uncached_phys + (unsigned long long )((long )n - (long )a->uncached);
  } else {
    vrq->data.prde[0].ctl_len = 256U;
    vrq->data.prde[0].address = a->uncached_phys + (unsigned long long )((long )n - (long )a->uncached);
  }
  rq->interrupt_cb = & esas2r_nvram_callback;
  esas2r_start_request(a, rq);
  return (1);
}
}
bool esas2r_nvram_validate(struct esas2r_adapter *a )
{
  struct esas2r_sas_nvram *n ;
  bool rslt ;
  u8 tmp ;
  {
  n = a->nvram;
  rslt = 0;
  if ((((unsigned int )n->signature[0] != 69U || (unsigned int )n->signature[1] != 83U) || (unsigned int )n->signature[2] != 65U) || (unsigned int )n->signature[3] != 83U) {
  } else {
    tmp = esas2r_calc_byte_cksum((void *)n, 256U, 90);
    if ((unsigned int )tmp != 0U) {
    } else
    if ((unsigned int )n->version != 0U) {
    } else {
      set_bit(12L, (unsigned long volatile *)(& a->flags));
      rslt = 1;
    }
  }
  if (! rslt) {
    esas2r_nvram_set_defaults(a);
  } else {
  }
  return (rslt);
}
}
void esas2r_nvram_set_defaults(struct esas2r_adapter *a )
{
  struct esas2r_sas_nvram *n ;
  u32 time ;
  unsigned int tmp ;
  {
  n = a->nvram;
  tmp = jiffies_to_msecs(jiffies);
  time = tmp;
  clear_bit(12L, (unsigned long volatile *)(& a->flags));
  *n = default_sas_nvram;
  n->sas_addr[3] = (u8 )((unsigned int )n->sas_addr[3] | 15U);
  n->sas_addr[4] = (unsigned char )((int )((unsigned short )time) >> 8);
  n->sas_addr[5] = (unsigned char )time;
  n->sas_addr[6] = ((a->pcid)->bus)->number;
  n->sas_addr[7] = (u8 )(a->pcid)->devfn;
  return;
}
}
void esas2r_nvram_get_defaults(struct esas2r_adapter *a , struct esas2r_sas_nvram *nvram )
{
  u8 sas_addr[8U] ;
  {
  memcpy((void *)(& sas_addr), (void const *)(& (a->nvram)->sas_addr), 8UL);
  *nvram = default_sas_nvram;
  memcpy((void *)(& nvram->sas_addr), (void const *)(& sas_addr), 8UL);
  return;
}
}
bool esas2r_fm_api(struct esas2r_adapter *a , struct esas2r_flash_img *fi , struct esas2r_request *rq ,
                   struct esas2r_sg_context *sgc )
{
  struct esas2r_flash_context *fc ;
  u8 j ;
  struct esas2r_component_header *ch ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  u8 tmp___11 ;
  bool tmp___12 ;
  bool tmp___13 ;
  bool tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  {
  fc = & a->flash_context;
  tmp = test_and_set_bit(8L, (unsigned long volatile *)(& a->flags));
  if (tmp != 0) {
    fi->status = 9U;
    return (0);
  } else {
  }
  memcpy((void *)(& fc->sgc), (void const *)sgc, 96UL);
  sgc = & fc->sgc;
  fc->fi = fi;
  fc->sgc_offset = sgc->cur_offset;
  rq->req_stat = 0U;
  rq->interrupt_cx = (void *)fc;
  switch ((int )fi->fi_version) {
  case 1:
  fc->scratch = (u8 *)(& fi->scratch_buf);
  fc->num_comps = 6U;
  fc->fi_hdr_len = 2176U;
  goto ldv_39398;
  default:
  tmp___0 = complete_fmapi_req(a, rq, 8);
  return (tmp___0);
  }
  ldv_39398:
  tmp___2 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___2 != 0) {
    tmp___1 = complete_fmapi_req(a, rq, 15);
    return (tmp___1);
  } else {
  }
  switch ((int )fi->action) {
  case 0:
  tmp___4 = verify_fi(a, fc);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    tmp___3 = complete_fmapi_req(a, rq, (int )fi->status);
    return (tmp___3);
  } else {
  }
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 2UL;
  if (ch->length != 0U) {
    fix_bios(a, fi);
  } else {
  }
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr) + 5UL;
  if (ch->length != 0U) {
    fix_efi(a, fi);
  } else {
  }
  fi->checksum = calc_fi_checksum(fc);
  esas2r_disable_heartbeat(a);
  fc->task = 0U;
  fc->func = 0U;
  fc->comp_typ = 4U;
  fc->flsh_addr = 7340032U;
  fc->sgc.length = 786432U;
  fc->sgc.cur_offset = (u8 *)0U;
  fc->interrupt_cb = & fw_download_proc;
  goto ldv_39401;
  case 2:
  fi->adap_typ = get_fi_adap_type(a);
  fi->flags = 0U;
  fi->num_comps = fc->num_comps;
  fi->length = fc->fi_hdr_len;
  memcpy((void *)(& fi->rel_version), (void const *)(& a->image_type), 16UL);
  j = 0U;
  ch = (struct esas2r_component_header *)(& fi->cmp_hdr);
  goto ldv_39404;
  ldv_39403:
  ch->img_type = j;
  ch->status = 255U;
  ch->length = 0U;
  ch->version = 4294967295U;
  ch->image_offset = 0U;
  ch->pad[0] = 0U;
  ch->pad[1] = 0U;
  j = (u8 )((int )j + 1);
  ch = ch + 1;
  ldv_39404: ;
  if ((int )((unsigned short )j) < (int )fi->num_comps) {
    goto ldv_39403;
  } else {
  }
  if (a->flash_ver != 0U) {
    tmp___8 = a->flash_ver;
    fi->cmp_hdr[4].version = tmp___8;
    tmp___7 = tmp___8;
    fi->cmp_hdr[5].version = tmp___7;
    tmp___6 = tmp___7;
    fi->cmp_hdr[3].version = tmp___6;
    fi->cmp_hdr[2].version = tmp___6;
    tmp___11 = 1U;
    fi->cmp_hdr[4].status = tmp___11;
    tmp___10 = tmp___11;
    fi->cmp_hdr[5].status = tmp___10;
    tmp___9 = tmp___10;
    fi->cmp_hdr[3].status = tmp___9;
    fi->cmp_hdr[2].status = tmp___9;
    tmp___12 = complete_fmapi_req(a, rq, 0);
    return (tmp___12);
  } else {
  }
  case 1: ;
  default:
  tmp___13 = complete_fmapi_req(a, rq, 4);
  return (tmp___13);
  }
  ldv_39401:
  tmp___15 = load_image(a, rq);
  if (tmp___15) {
    tmp___16 = 0;
  } else {
    tmp___16 = 1;
  }
  if (tmp___16) {
    tmp___14 = complete_fmapi_req(a, rq, 1);
    return (tmp___14);
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
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
  activate_work_1(ldv_func_arg3, 2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
int ldv_scsi_add_host_with_dma_99(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
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
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void do_gettimeofday(struct timeval * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_135(struct timer_list *ldv_func_arg1 ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_136(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_120(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_123(struct workqueue_struct *ldv_func_arg1 ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern void sysfs_remove_bin_file(struct kobject * , struct bin_attribute const * ) ;
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_130(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
extern void __const_udelay(unsigned long ) ;
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
extern int pci_find_capability(struct pci_dev * , int ) ;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  return (tmp);
}
}
extern int pci_request_region(struct pci_dev * , int , char const * ) ;
extern void pci_release_region(struct pci_dev * , int ) ;
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
extern u64 dma_get_required_mask(struct device * ) ;
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
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.val.counter = 0;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = (void *)-1;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  return;
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
extern void free_irq(unsigned int , void * ) ;
extern void __tasklet_hi_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_hi_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_hi_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
int ldv_scsi_add_host_with_dma_134(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_137(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
struct esas2r_adapter *esas2r_adapters[32U] ;
u8 *esas2r_buffered_ioctl ;
dma_addr_t esas2r_buffered_ioctl_addr ;
u32 esas2r_buffered_ioctl_size ;
struct pci_dev *esas2r_buffered_ioctl_pcid ;
int sgl_page_size ;
int num_sg_lists ;
int num_requests ;
int num_ae_requests ;
int interrupt_mode ;
int esas2r_init_adapter(struct Scsi_Host *host , struct pci_dev *pcid , int index ) ;
int esas2r_cleanup(struct Scsi_Host *host ) ;
void esas2r_adapter_tasklet(unsigned long context ) ;
irqreturn_t esas2r_interrupt(int irq , void *dev_id ) ;
irqreturn_t esas2r_msi_interrupt(int irq , void *dev_id ) ;
void esas2r_kickoff_timer(struct esas2r_adapter *a ) ;
int esas2r_suspend(struct pci_dev *pdev , pm_message_t state ) ;
int esas2r_resume(struct pci_dev *pdev ) ;
void esas2r_fw_event_off(struct esas2r_adapter *a ) ;
void esas2r_kill_adapter(int i ) ;
u32 esas2r_get_uncached_size(struct esas2r_adapter *a ) ;
bool esas2r_init_adapter_struct(struct esas2r_adapter *a , void **uncached_area ) ;
bool esas2r_check_adapter(struct esas2r_adapter *a ) ;
bool esas2r_init_adapter_hw(struct esas2r_adapter *a , bool init_poll ) ;
void esas2r_do_tasklet_tasks(struct esas2r_adapter *a ) ;
void esas2r_do_deferred_processes(struct esas2r_adapter *a ) ;
void esas2r_reset_adapter(struct esas2r_adapter *a ) ;
void esas2r_timer_tick(struct esas2r_adapter *a ) ;
char const *esas2r_get_model_name(struct esas2r_adapter *a ) ;
char const *esas2r_get_model_name_short(struct esas2r_adapter *a ) ;
void esas2r_build_ae_req(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_build_cfg_req(struct esas2r_adapter *a , struct esas2r_request *rq , u8 sub_func ,
                          u32 length , void *data ) ;
void esas2r_power_down(struct esas2r_adapter *a ) ;
bool esas2r_power_up(struct esas2r_adapter *a , bool init_poll ) ;
bool esas2r_read_mem_block(struct esas2r_adapter *a , void *to , u32 from , u32 size ) ;
void esas2r_force_interrupt(struct esas2r_adapter *a ) ;
void esas2r_process_adapter_reset(struct esas2r_adapter *a ) ;
void esas2r_dummy_complete(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_ae_complete(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_send_reset_ae(struct esas2r_adapter *a , bool pwr_mgt ) ;
bool esas2r_init_msgs(struct esas2r_adapter *a ) ;
bool esas2r_is_adapter_present(struct esas2r_adapter *a ) ;
void esas2r_reset_chip(struct esas2r_adapter *a ) ;
bool esas2r_build_sg_list_sge(struct esas2r_adapter *a , struct esas2r_sg_context *sgc ) ;
bool esas2r_build_sg_list_prd(struct esas2r_adapter *a , struct esas2r_sg_context *sgc ) ;
void esas2r_targ_db_initialize(struct esas2r_adapter *a ) ;
void esas2r_targ_db_remove_all(struct esas2r_adapter *a , bool notify ) ;
void esas2r_targ_db_report_changes(struct esas2r_adapter *a ) ;
bool esas2r_set_degraded_mode(struct esas2r_adapter *a , char *error_str ) ;
__inline static void esas2r_rq_free_sg_lists___1(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  unsigned long flags ;
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& rq->sg_table_head));
  if (tmp != 0) {
    return;
  } else {
  }
  ldv_spin_lock();
  list_splice_tail_init(& rq->sg_table_head, & a->free_sg_list_head);
  spin_unlock_irqrestore(& a->sg_list_lock, flags);
  return;
}
}
__inline static void esas2r_rq_destroy_request___0(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  {
  esas2r_rq_free_sg_lists___1(rq, a);
  *(a->req_table + (unsigned long )((unsigned short )(rq->vrq)->scsi.handle)) = (struct esas2r_request *)0;
  rq->__annonCompField106.data_buf = (void *)0;
  return;
}
}
__inline static bool esas2r_is_tasklet_pending(struct esas2r_adapter *a )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = constant_test_bit(4L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    tmp___4 = 1;
  } else {
    tmp___0 = constant_test_bit(6L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 != 0) {
      tmp___4 = 1;
    } else {
      tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
      if (tmp___1 != 0) {
        tmp___4 = 1;
      } else {
        tmp___2 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
        if (tmp___2 != 0) {
          tmp___4 = 1;
        } else {
          tmp___3 = constant_test_bit(0L, (unsigned long const volatile *)(& a->flags));
          if (tmp___3 != 0) {
            tmp___4 = 1;
          } else {
            tmp___4 = 0;
          }
        }
      }
    }
  }
  return ((bool )tmp___4);
}
}
__inline static void esas2r_schedule_tasklet(struct esas2r_adapter *a )
{
  int tmp ;
  {
  tmp = test_and_set_bit(15L, (unsigned long volatile *)(& a->flags));
  if (tmp == 0) {
    tasklet_hi_schedule(& a->tasklet);
  } else {
  }
  return;
}
}
__inline static void esas2r_start_ae_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  unsigned long flags ;
  {
  esas2r_build_ae_req(a, rq);
  ldv_spin_lock();
  esas2r_start_vda_request(a, rq);
  spin_unlock_irqrestore(& a->queue_lock, flags);
  return;
}
}
struct bin_attribute bin_attr_fw ;
struct bin_attribute bin_attr_fs ;
struct bin_attribute bin_attr_vda ;
struct bin_attribute bin_attr_hw ;
struct bin_attribute bin_attr_live_nvram ;
struct bin_attribute bin_attr_default_nvram ;
static bool esas2r_initmem_alloc(struct esas2r_adapter *a , struct esas2r_mem_desc *mem_desc ,
                                 u32 align )
{
  {
  mem_desc->esas2r_param = mem_desc->size + align;
  mem_desc->virt_addr = (void *)0;
  mem_desc->phys_addr = 0ULL;
  mem_desc->esas2r_data = dma_alloc_attrs(& (a->pcid)->dev, (unsigned long )mem_desc->esas2r_param,
                                          & mem_desc->phys_addr, 208U, (struct dma_attrs *)0);
  if ((unsigned long )mem_desc->esas2r_data == (unsigned long )((void *)0)) {
    esas2r_log(1L, "failed to allocate %lu bytes of consistent memory!", (unsigned long )mem_desc->esas2r_param);
    return (0);
  } else {
  }
  mem_desc->virt_addr = (void *)((((unsigned long )mem_desc->esas2r_data + (unsigned long )align) - 1UL) & - ((unsigned long )align));
  mem_desc->phys_addr = ((mem_desc->phys_addr + (unsigned long long )align) - 1ULL) & - ((unsigned long long )align);
  memset(mem_desc->virt_addr, 0, (size_t )mem_desc->size);
  return (1);
}
}
static void esas2r_initmem_free(struct esas2r_adapter *a , struct esas2r_mem_desc *mem_desc )
{
  int unalign ;
  {
  if ((unsigned long )mem_desc->virt_addr == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  if (mem_desc->phys_addr != 0ULL) {
    unalign = (int )((unsigned int )((long )mem_desc->virt_addr) - (unsigned int )((long )mem_desc->esas2r_data));
    dma_free_attrs(& (a->pcid)->dev, (unsigned long )mem_desc->esas2r_param, mem_desc->esas2r_data,
                   mem_desc->phys_addr - (u64 )unalign, (struct dma_attrs *)0);
  } else {
    kfree((void const *)mem_desc->esas2r_data);
  }
  mem_desc->virt_addr = (void *)0;
  return;
}
}
static bool alloc_vda_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_mem_desc *memdesc ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = kzalloc(56UL, 208U);
  memdesc = (struct esas2r_mem_desc *)tmp;
  if ((unsigned long )memdesc == (unsigned long )((struct esas2r_mem_desc *)0)) {
    return (0);
  } else {
  }
  memdesc->size = 1280U;
  tmp___0 = esas2r_initmem_alloc(a, memdesc, 256U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    kfree((void const *)memdesc);
    return (0);
  } else {
  }
  a->num_vrqs = a->num_vrqs + 1;
  list_add(& memdesc->next_desc, & a->vrq_mds_head);
  rq->vrq_md = memdesc;
  rq->vrq = (union atto_vda_req *)memdesc->virt_addr;
  (rq->vrq)->scsi.handle = (u32 )a->num_vrqs;
  return (1);
}
}
static void esas2r_unmap_regions(struct esas2r_adapter *a )
{
  {
  if ((unsigned long )a->regs != (unsigned long )((unsigned char *)0U)) {
    iounmap((void volatile *)a->regs);
  } else {
  }
  a->regs = (unsigned char *)0U;
  pci_release_region(a->pcid, 2);
  if ((unsigned long )a->data_window != (unsigned long )((unsigned char *)0U)) {
    iounmap((void volatile *)a->data_window);
  } else {
  }
  a->data_window = (unsigned char *)0U;
  pci_release_region(a->pcid, 0);
  return;
}
}
static int esas2r_map_regions(struct esas2r_adapter *a )
{
  int error ;
  void *tmp ;
  void *tmp___0 ;
  {
  a->regs = (unsigned char *)0U;
  a->data_window = (unsigned char *)0U;
  error = pci_request_region(a->pcid, 2, (char const *)(& a->name));
  if (error != 0) {
    esas2r_log(1L, "pci_request_region(2) failed, error %d", error);
    return (error);
  } else {
  }
  tmp = ioremap((a->pcid)->resource[2].start, (a->pcid)->resource[2].start != 0ULL || (a->pcid)->resource[2].end != (a->pcid)->resource[2].start ? (unsigned long )(((a->pcid)->resource[2].end - (a->pcid)->resource[2].start) + 1ULL) : 0UL);
  a->regs = (unsigned char *)tmp;
  if ((unsigned long )a->regs == (unsigned long )((unsigned char *)0U)) {
    esas2r_log(1L, "ioremap failed for regs mem region\n");
    pci_release_region(a->pcid, 2);
    return (-14);
  } else {
  }
  error = pci_request_region(a->pcid, 0, (char const *)(& a->name));
  if (error != 0) {
    esas2r_log(1L, "pci_request_region(2) failed, error %d", error);
    esas2r_unmap_regions(a);
    return (error);
  } else {
  }
  tmp___0 = ioremap((a->pcid)->resource[0].start, (a->pcid)->resource[0].start != 0ULL || (a->pcid)->resource[0].end != (a->pcid)->resource[0].start ? (unsigned long )(((a->pcid)->resource[0].end - (a->pcid)->resource[0].start) + 1ULL) : 0UL);
  a->data_window = (unsigned char *)tmp___0;
  if ((unsigned long )a->data_window == (unsigned long )((unsigned char *)0U)) {
    esas2r_log(1L, "ioremap failed for data_window mem region\n");
    esas2r_unmap_regions(a);
    return (-14);
  } else {
  }
  return (0);
}
}
static void esas2r_setup_interrupts(struct esas2r_adapter *a , int intr_mode )
{
  int i ;
  {
  switch (intr_mode) {
  case 0: ;
  use_legacy_interrupts:
  a->intr_mode = 0;
  goto ldv_39133;
  case 1:
  i = pci_enable_msi_exact(a->pcid, 1);
  if (i != 0) {
    esas2r_log(2L, "failed to enable MSI for adapter %d, falling back to legacy interrupts (err=%d)",
               a->index, i);
    goto use_legacy_interrupts;
  } else {
  }
  a->intr_mode = 1;
  set_bit(12L, (unsigned long volatile *)(& a->flags2));
  goto ldv_39133;
  default:
  esas2r_log(2L, "unknown interrupt_mode %d requested, falling back to legacy interrupt",
             interrupt_mode);
  goto use_legacy_interrupts;
  }
  ldv_39133: ;
  return;
}
}
static void esas2r_claim_interrupts(struct esas2r_adapter *a )
{
  unsigned long flags ;
  int tmp ;
  {
  flags = 0UL;
  if (a->intr_mode == 0) {
    flags = flags | 128UL;
  } else {
  }
  esas2r_log(3L, "esas2r_claim_interrupts irq=%d (%p, %s, %x)", (a->pcid)->irq, a,
             (char *)(& a->name), flags);
  tmp = request_irq((a->pcid)->irq, a->intr_mode == 0 ? & esas2r_interrupt : & esas2r_msi_interrupt,
                    flags, (char const *)(& a->name), (void *)a);
  if (tmp != 0) {
    esas2r_log(1L, "unable to request IRQ %02X", (a->pcid)->irq);
    return;
  } else {
  }
  set_bit(11L, (unsigned long volatile *)(& a->flags2));
  esas2r_log(3L, "claimed IRQ %d flags: 0x%lx", (a->pcid)->irq, flags);
  return;
}
}
int esas2r_init_adapter(struct Scsi_Host *host , struct pci_dev *pcid , int index )
{
  struct esas2r_adapter *a ;
  u64 bus_addr ;
  int i ;
  void *next_uncached ;
  struct esas2r_request *first_request ;
  struct esas2r_request *last_request ;
  uint64_t required_mask ;
  u64 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___6 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  void *tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  bool tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  bus_addr = 0ULL;
  if (index > 31) {
    esas2r_log(1L, "tried to init invalid adapter index %u!", index);
    return (0);
  } else {
  }
  if ((unsigned long )esas2r_adapters[index] != (unsigned long )((struct esas2r_adapter *)0)) {
    esas2r_log(1L, "tried to init existing adapter index %u!", index);
    return (0);
  } else {
  }
  a = (struct esas2r_adapter *)(& host->hostdata);
  memset((void *)a, 0, 559640UL);
  a->pcid = pcid;
  a->host = host;
  tmp = dma_get_required_mask(& pcid->dev);
  required_mask = tmp;
  if (required_mask > 4294967295ULL) {
    tmp___2 = pci_set_dma_mask(pcid, 0xffffffffffffffffULL);
    if (tmp___2 == 0) {
      tmp___3 = pci_set_consistent_dma_mask(pcid, 0xffffffffffffffffULL);
      if (tmp___3 == 0) {
        esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "64-bit PCI addressing enabled\n");
      } else {
        goto _L___0;
      }
    } else {
      goto _L___0;
    }
  } else {
    _L___0:
    tmp___0 = pci_set_dma_mask(pcid, 4294967295ULL);
    if (tmp___0 == 0) {
      tmp___1 = pci_set_consistent_dma_mask(pcid, 4294967295ULL);
      if (tmp___1 == 0) {
        esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "32-bit PCI addressing enabled\n");
      } else {
        esas2r_log(1L, "failed to set DMA mask");
        esas2r_kill_adapter(index);
        return (0);
      }
    } else {
      esas2r_log(1L, "failed to set DMA mask");
      esas2r_kill_adapter(index);
      return (0);
    }
  }
  esas2r_adapters[index] = a;
  sprintf((char *)(& a->name), "esas2r_%02d", index);
  spinlock_check(& a->request_lock);
  __raw_spin_lock_init(& a->request_lock.__annonCompField18.rlock, "&(&a->request_lock)->rlock",
                       & __key);
  spinlock_check(& a->fw_event_lock);
  __raw_spin_lock_init(& a->fw_event_lock.__annonCompField18.rlock, "&(&a->fw_event_lock)->rlock",
                       & __key___0);
  sema_init(& a->fm_api_semaphore, 1);
  sema_init(& a->fs_api_semaphore, 1);
  sema_init(& a->nvram_semaphore, 1);
  esas2r_fw_event_off(a);
  snprintf((char *)(& a->fw_event_q_name), 20UL, "esas2r/%d", a->index);
  __lock_name = "\"%s\"a->fw_event_q_name";
  tmp___6 = __alloc_workqueue_key("%s", 131082U, 1, & __key___1, __lock_name, (char *)(& a->fw_event_q_name));
  a->fw_event_q = tmp___6;
  __init_waitqueue_head(& a->buffered_ioctl_waiter, "&a->buffered_ioctl_waiter", & __key___2);
  __init_waitqueue_head(& a->nvram_waiter, "&a->nvram_waiter", & __key___3);
  __init_waitqueue_head(& a->fm_api_waiter, "&a->fm_api_waiter", & __key___4);
  __init_waitqueue_head(& a->fs_api_waiter, "&a->fs_api_waiter", & __key___5);
  __init_waitqueue_head(& a->vda_waiter, "&a->vda_waiter", & __key___6);
  INIT_LIST_HEAD(& a->general_req.req_list);
  INIT_LIST_HEAD(& a->active_list);
  INIT_LIST_HEAD(& a->defer_list);
  INIT_LIST_HEAD(& a->free_sg_list_head);
  INIT_LIST_HEAD(& a->avail_request);
  INIT_LIST_HEAD(& a->vrq_mds_head);
  INIT_LIST_HEAD(& a->fw_event_list);
  first_request = (struct esas2r_request *)a + 1U;
  last_request = first_request;
  i = 1;
  goto ldv_39163;
  ldv_39162:
  INIT_LIST_HEAD(& last_request->req_list);
  list_add_tail(& last_request->comp_list, & a->avail_request);
  tmp___7 = alloc_vda_req(a, last_request);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    esas2r_log(1L, "failed to allocate a VDA request!");
    esas2r_kill_adapter(index);
    return (0);
  } else {
  }
  last_request = last_request + 1;
  i = i + 1;
  ldv_39163: ;
  if (i < num_requests) {
    goto ldv_39162;
  } else {
  }
  tmp___9 = esas2r_map_regions(a);
  if (tmp___9 != 0) {
    esas2r_log(1L, "could not map PCI regions!");
    esas2r_kill_adapter(index);
    return (0);
  } else {
  }
  a->index = (unsigned int )index;
  atomic_inc(& a->dis_ints_cnt);
  atomic_inc(& a->disable_cnt);
  set_bit(2L, (unsigned long volatile *)(& a->flags));
  set_bit(14L, (unsigned long volatile *)(& a->flags));
  set_bit(20L, (unsigned long volatile *)(& a->flags));
  set_bit(24L, (unsigned long volatile *)(& a->flags));
  a->init_msg = 1U;
  a->max_vdareq_size = 128U;
  a->build_sgl = & esas2r_build_sg_list_sge;
  esas2r_setup_interrupts(a, interrupt_mode);
  tmp___10 = esas2r_get_uncached_size(a);
  a->uncached_size = (int )tmp___10;
  tmp___11 = dma_alloc_attrs(& pcid->dev, (unsigned long )a->uncached_size, & bus_addr,
                             208U, (struct dma_attrs *)0);
  a->uncached = (u8 *)tmp___11;
  if ((unsigned long )a->uncached == (unsigned long )((u8 *)0U)) {
    esas2r_log(1L, "failed to allocate %d bytes of consistent memory!", a->uncached_size);
    esas2r_kill_adapter(index);
    return (0);
  } else {
  }
  a->uncached_phys = bus_addr;
  memset((void *)a->uncached, 0, (size_t )a->uncached_size);
  next_uncached = (void *)a->uncached;
  tmp___12 = esas2r_init_adapter_struct(a, & next_uncached);
  if (tmp___12) {
    tmp___13 = 0;
  } else {
    tmp___13 = 1;
  }
  if (tmp___13) {
    esas2r_log(1L, "failed to initialize adapter structure (2)!");
    esas2r_kill_adapter(index);
    return (0);
  } else {
  }
  tasklet_init(& a->tasklet, & esas2r_adapter_tasklet, (unsigned long )a);
  esas2r_disable_chip_interrupts(a);
  esas2r_check_adapter(a);
  tmp___14 = esas2r_init_adapter_hw(a, 1);
  if (tmp___14) {
    tmp___15 = 0;
  } else {
    tmp___15 = 1;
  }
  if (tmp___15) {
    esas2r_log(1L, "failed to initialize hardware!");
  } else {
  }
  esas2r_claim_interrupts(a);
  tmp___16 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___16 != 0) {
    esas2r_enable_chip_interrupts(a);
  } else {
  }
  set_bit(8L, (unsigned long volatile *)(& a->flags2));
  tmp___17 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___17 == 0) {
    esas2r_kickoff_timer(a);
  } else {
  }
  return (1);
}
}
static void esas2r_adapter_power_down(struct esas2r_adapter *a , int power_management )
{
  struct esas2r_mem_desc *memdesc ;
  struct esas2r_mem_desc *next ;
  unsigned long __ms ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  tmp___0 = constant_test_bit(8L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___0 != 0) {
    tmp___1 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
    if (tmp___1 == 0) {
      if (power_management == 0) {
        ldv_del_timer_sync_135(& a->timer);
        tasklet_kill(& a->tasklet);
      } else {
      }
      esas2r_power_down(a);
      __ms = 500UL;
      goto ldv_39173;
      ldv_39172:
      __const_udelay(4295000UL);
      ldv_39173:
      tmp = __ms;
      __ms = __ms - 1UL;
      if (tmp != 0UL) {
        goto ldv_39172;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_fw));
    a->sysfs_fw_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_fs));
    a->sysfs_fs_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_vda));
    a->sysfs_vda_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_hw));
    a->sysfs_hw_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_live_nvram));
    a->sysfs_live_nvram_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)a + 559632UL) != 0U) {
    sysfs_remove_bin_file(& (a->host)->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_default_nvram));
    a->sysfs_default_nvram_created = 0U;
  } else {
  }
  tmp___2 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___2 != 0) {
    esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "free_irq(%d) called",
                   (a->pcid)->irq);
    free_irq((a->pcid)->irq, (void *)a);
    clear_bit(11L, (unsigned long volatile *)(& a->flags2));
  } else {
  }
  tmp___3 = constant_test_bit(12L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___3 != 0) {
    pci_disable_msi(a->pcid);
    clear_bit(12L, (unsigned long volatile *)(& a->flags2));
  } else {
  }
  if ((unsigned long )a->inbound_list_md.virt_addr != (unsigned long )((void *)0)) {
    esas2r_initmem_free(a, & a->inbound_list_md);
  } else {
  }
  if ((unsigned long )a->outbound_list_md.virt_addr != (unsigned long )((void *)0)) {
    esas2r_initmem_free(a, & a->outbound_list_md);
  } else {
  }
  __mptr = (struct list_head const *)a->free_sg_list_head.next;
  memdesc = (struct esas2r_mem_desc *)__mptr;
  __mptr___0 = (struct list_head const *)memdesc->next_desc.next;
  next = (struct esas2r_mem_desc *)__mptr___0;
  goto ldv_39182;
  ldv_39181:
  esas2r_initmem_free(a, memdesc);
  memdesc = next;
  __mptr___1 = (struct list_head const *)next->next_desc.next;
  next = (struct esas2r_mem_desc *)__mptr___1;
  ldv_39182: ;
  if ((unsigned long )(& memdesc->next_desc) != (unsigned long )(& a->free_sg_list_head)) {
    goto ldv_39181;
  } else {
  }
  __mptr___2 = (struct list_head const *)a->vrq_mds_head.next;
  memdesc = (struct esas2r_mem_desc *)__mptr___2;
  __mptr___3 = (struct list_head const *)memdesc->next_desc.next;
  next = (struct esas2r_mem_desc *)__mptr___3;
  goto ldv_39191;
  ldv_39190:
  esas2r_initmem_free(a, memdesc);
  list_del(& memdesc->next_desc);
  kfree((void const *)memdesc);
  memdesc = next;
  __mptr___4 = (struct list_head const *)next->next_desc.next;
  next = (struct esas2r_mem_desc *)__mptr___4;
  ldv_39191: ;
  if ((unsigned long )(& memdesc->next_desc) != (unsigned long )(& a->vrq_mds_head)) {
    goto ldv_39190;
  } else {
  }
  kfree((void const *)a->first_ae_req);
  a->first_ae_req = (struct esas2r_request *)0;
  kfree((void const *)a->sg_list_mds);
  a->sg_list_mds = (struct esas2r_mem_desc *)0;
  kfree((void const *)a->req_table);
  a->req_table = (struct esas2r_request **)0;
  if ((unsigned long )a->regs != (unsigned long )((unsigned char *)0U)) {
    esas2r_unmap_regions(a);
    a->regs = (unsigned char *)0U;
    a->data_window = (unsigned char *)0U;
  } else {
  }
  return;
}
}
void esas2r_kill_adapter(int i )
{
  struct esas2r_adapter *a ;
  unsigned long flags ;
  struct workqueue_struct *wq ;
  int tmp ;
  {
  a = esas2r_adapters[i];
  if ((unsigned long )a != (unsigned long )((struct esas2r_adapter *)0)) {
    esas2r_fw_event_off(a);
    esas2r_adapter_power_down(a, 0);
    if ((unsigned long )esas2r_buffered_ioctl != (unsigned long )((u8 *)0U) && (unsigned long )a->pcid == (unsigned long )esas2r_buffered_ioctl_pcid) {
      dma_free_attrs(& (a->pcid)->dev, (unsigned long )esas2r_buffered_ioctl_size,
                     (void *)esas2r_buffered_ioctl, esas2r_buffered_ioctl_addr, (struct dma_attrs *)0);
      esas2r_buffered_ioctl = (u8 *)0U;
    } else {
    }
    if ((unsigned long )a->vda_buffer != (unsigned long )((u8 *)0U)) {
      dma_free_attrs(& (a->pcid)->dev, 262416UL, (void *)a->vda_buffer, a->ppvda_buffer,
                     (struct dma_attrs *)0);
      a->vda_buffer = (u8 *)0U;
    } else {
    }
    if ((unsigned long )a->fs_api_buffer != (unsigned long )((u8 *)0U)) {
      dma_free_attrs(& (a->pcid)->dev, (unsigned long )a->fs_api_buffer_size, (void *)a->fs_api_buffer,
                     a->ppfs_api_buffer, (struct dma_attrs *)0);
      a->fs_api_buffer = (u8 *)0U;
    } else {
    }
    kfree((void const *)a->local_atto_ioctl);
    a->local_atto_ioctl = (struct atto_ioctl *)0;
    ldv_spin_lock();
    wq = a->fw_event_q;
    a->fw_event_q = (struct workqueue_struct *)0;
    spin_unlock_irqrestore(& a->fw_event_lock, flags);
    if ((unsigned long )wq != (unsigned long )((struct workqueue_struct *)0)) {
      ldv_destroy_workqueue_136(wq);
    } else {
    }
    if ((unsigned long )a->uncached != (unsigned long )((u8 *)0U)) {
      dma_free_attrs(& (a->pcid)->dev, (unsigned long )a->uncached_size, (void *)a->uncached,
                     a->uncached_phys, (struct dma_attrs *)0);
      a->uncached = (u8 *)0U;
    } else {
    }
    esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "pci_disable_device() called.  msix_enabled: %d msi_enabled: %d irq: %d pin: %d",
                   (int )(a->pcid)->msix_enabled, (int )(a->pcid)->msi_enabled, (a->pcid)->irq,
                   (int )(a->pcid)->pin);
    esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "before pci_disable_device() enable_cnt: %d",
                   (a->pcid)->enable_cnt.counter);
    pci_disable_device(a->pcid);
    esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "after pci_disable_device() enable_cnt: %d",
                   (a->pcid)->enable_cnt.counter);
    esas2r_log_dev(3L, (struct device const *)(& (a->pcid)->dev), "pci_set_drv_data(%p, NULL) called",
                   a->pcid);
    pci_set_drvdata(a->pcid, (void *)0);
    esas2r_adapters[i] = (struct esas2r_adapter *)0;
    tmp = constant_test_bit(8L, (unsigned long const volatile *)(& a->flags2));
    if (tmp != 0) {
      clear_bit(8L, (unsigned long volatile *)(& a->flags2));
      set_bit(13L, (unsigned long volatile *)(& a->flags));
      esas2r_log_dev(3L, (struct device const *)(& (a->host)->shost_gendev), "scsi_remove_host() called");
      ldv_scsi_remove_host_137(a->host);
      esas2r_log_dev(3L, (struct device const *)(& (a->host)->shost_gendev), "scsi_host_put() called");
      scsi_host_put(a->host);
    } else {
    }
  } else {
  }
  return;
}
}
int esas2r_cleanup(struct Scsi_Host *host )
{
  struct esas2r_adapter *a ;
  int index ;
  int i ;
  {
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    i = 0;
    goto ldv_39206;
    ldv_39205:
    esas2r_kill_adapter(i);
    i = i + 1;
    ldv_39206: ;
    if (i <= 31) {
      goto ldv_39205;
    } else {
    }
    return (-1);
  } else {
  }
  a = (struct esas2r_adapter *)(& host->hostdata);
  index = (int )a->index;
  esas2r_kill_adapter(index);
  return (index);
}
}
int esas2r_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct Scsi_Host *host ;
  void *tmp ;
  u32 device_state ;
  struct esas2r_adapter *a ;
  pci_power_t tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  a = (struct esas2r_adapter *)(& host->hostdata);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "suspending adapter()");
  if ((unsigned long )a == (unsigned long )((struct esas2r_adapter *)0)) {
    return (-19);
  } else {
  }
  esas2r_adapter_power_down(a, 1);
  tmp___0 = pci_choose_state(pdev, state);
  device_state = (u32 )tmp___0;
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_save_state() called");
  pci_save_state(pdev);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_disable_device() called");
  pci_disable_device(pdev);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_set_power_state() called");
  pci_set_power_state(pdev, (pci_power_t )device_state);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "esas2r_suspend(): 0");
  return (0);
}
}
int esas2r_resume(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  struct esas2r_adapter *a ;
  int rez ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  a = (struct esas2r_adapter *)(& host->hostdata);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "resuming adapter()");
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_set_power_state(PCI_D0) called");
  pci_set_power_state(pdev, 0);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_enable_wake(PCI_D0, 0) called");
  pci_enable_wake(pdev, 0, 0);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_restore_state() called");
  pci_restore_state(pdev);
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "pci_enable_device() called");
  rez = pci_enable_device(pdev);
  pci_set_master(pdev);
  if ((unsigned long )a == (unsigned long )((struct esas2r_adapter *)0)) {
    rez = -19;
    goto error_exit;
  } else {
  }
  tmp___0 = esas2r_map_regions(a);
  if (tmp___0 != 0) {
    esas2r_log(1L, "could not re-map PCI regions!");
    rez = -12;
    goto error_exit;
  } else {
  }
  esas2r_setup_interrupts(a, a->intr_mode);
  esas2r_disable_chip_interrupts(a);
  tmp___1 = esas2r_power_up(a, 1);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    rez = -12;
    goto error_exit;
  } else {
  }
  esas2r_claim_interrupts(a);
  tmp___3 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___3 != 0) {
    esas2r_enable_chip_interrupts(a);
    esas2r_kickoff_timer(a);
  } else {
    esas2r_log(1L, "could not re-claim IRQ!");
    rez = -12;
    goto error_exit;
  }
  error_exit:
  esas2r_log_dev(1L, (struct device const *)(& pdev->dev), "esas2r_resume(): %d",
                 rez);
  return (rez);
}
}
bool esas2r_set_degraded_mode(struct esas2r_adapter *a , char *error_str )
{
  {
  set_bit(13L, (unsigned long volatile *)(& a->flags));
  esas2r_log(1L, "setting adapter to degraded mode: %s\n", error_str);
  return (0);
}
}
u32 esas2r_get_uncached_size(struct esas2r_adapter *a )
{
  {
  return ((((u32 )((int )((unsigned short )sgl_page_size) * num_sg_lists) + (((u32 )((unsigned long )((num_requests + num_ae_requests) + 3)) * 16U + 7U) & 4294967288U)) + (((u32 )((unsigned long )((num_requests + num_ae_requests) + 3)) * 16U + 7U) & 4294967288U)) + 1040U);
}
}
static void esas2r_init_pci_cfg_space(struct esas2r_adapter *a )
{
  int pcie_cap_reg ;
  u16 devcontrol ;
  {
  pcie_cap_reg = pci_find_capability(a->pcid, 16);
  if (pcie_cap_reg != 0) {
    pci_read_config_word((struct pci_dev const *)a->pcid, pcie_cap_reg + 8, & devcontrol);
    if (((int )devcontrol & 28672) > 8192) {
      esas2r_log(3L, "max read request size > 512B");
      devcontrol = (unsigned int )devcontrol & 36863U;
      devcontrol = (u16 )((unsigned int )devcontrol | 8192U);
      pci_write_config_word((struct pci_dev const *)a->pcid, pcie_cap_reg + 8, (int )devcontrol);
    } else {
    }
  } else {
  }
  return;
}
}
bool esas2r_init_adapter_struct(struct esas2r_adapter *a , void **uncached_area )
{
  u32 i ;
  u8 *high ;
  struct esas2r_inbound_list_source_entry *element ;
  struct esas2r_request *rq ;
  struct esas2r_mem_desc *sgl ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  spinlock_check(& a->sg_list_lock);
  __raw_spin_lock_init(& a->sg_list_lock.__annonCompField18.rlock, "&(&a->sg_list_lock)->rlock",
                       & __key);
  spinlock_check(& a->mem_lock);
  __raw_spin_lock_init(& a->mem_lock.__annonCompField18.rlock, "&(&a->mem_lock)->rlock",
                       & __key___0);
  spinlock_check(& a->queue_lock);
  __raw_spin_lock_init(& a->queue_lock.__annonCompField18.rlock, "&(&a->queue_lock)->rlock",
                       & __key___1);
  a->targetdb_end = (struct esas2r_target *)(& a->targetdb) + 256UL;
  tmp = alloc_vda_req(a, & a->general_req);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  tmp___1 = kzalloc((unsigned long )num_ae_requests * 176UL, 208U);
  a->first_ae_req = (struct esas2r_request *)tmp___1;
  if ((unsigned long )a->first_ae_req == (unsigned long )((struct esas2r_request *)0)) {
    esas2r_log(1L, "failed to allocate memory for asynchronous events");
    return (0);
  } else {
  }
  tmp___2 = kzalloc((unsigned long )num_sg_lists * 56UL, 208U);
  a->sg_list_mds = (struct esas2r_mem_desc *)tmp___2;
  if ((unsigned long )a->sg_list_mds == (unsigned long )((struct esas2r_mem_desc *)0)) {
    esas2r_log(1L, "failed to allocate memory for s/g list descriptors");
    return (0);
  } else {
  }
  tmp___3 = kzalloc((unsigned long )((num_requests + num_ae_requests) + 1) * 8UL,
                    208U);
  a->req_table = (struct esas2r_request **)tmp___3;
  if ((unsigned long )a->req_table == (unsigned long )((struct esas2r_request **)0)) {
    esas2r_log(1L, "failed to allocate memory for the request table");
    return (0);
  } else {
  }
  esas2r_init_pci_cfg_space(a);
  if ((unsigned int )(a->pcid)->subsystem_vendor == 4476U && ((int )(a->pcid)->subsystem_device & 16384) != 0) {
    a->flags2 = a->flags2 | 7L;
  } else {
  }
  tmp___4 = constant_test_bit(7L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___4 != 0) {
    a->flags2 = a->flags2;
  } else {
  }
  if ((unsigned int )(a->pcid)->subsystem_device == 16488U) {
    a->flags2 = a->flags2 | 6L;
  } else {
  }
  high = (u8 *)*uncached_area;
  i = 0U;
  sgl = a->sg_list_mds;
  goto ldv_39248;
  ldv_39247:
  sgl->size = (u32 )sgl_page_size;
  list_add_tail(& sgl->next_desc, & a->free_sg_list_head);
  tmp___5 = esas2r_initmem_alloc(a, sgl, 16U);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    if (i <= 7U) {
      return (0);
    } else {
    }
    goto ldv_39246;
  } else {
  }
  i = i + 1U;
  sgl = sgl + 1;
  ldv_39248: ;
  if ((u32 )num_sg_lists > i) {
    goto ldv_39247;
  } else {
  }
  ldv_39246:
  a->list_size = (u32 )(num_requests + 2);
  a->inbound_list_md.size = a->list_size * 16U;
  tmp___7 = esas2r_initmem_alloc(a, & a->inbound_list_md, 16U);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    return (0);
  } else {
  }
  a->outbound_list_md.size = a->list_size * 16U;
  tmp___9 = esas2r_initmem_alloc(a, & a->outbound_list_md, 16U);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    return (0);
  } else {
  }
  a->nvram = (struct esas2r_sas_nvram *)high;
  high = high + 256UL;
  a->disc_buffer = high;
  high = high + 512UL;
  high = (u8 *)(((unsigned long )high + 7UL) & 0xfffffffffffffff8UL);
  a->outbound_copy = (u32 volatile *)high;
  high = high + 4UL;
  tmp___11 = constant_test_bit(12L, (unsigned long const volatile *)(& a->flags));
  if (tmp___11 == 0) {
    esas2r_nvram_set_defaults(a);
  } else {
  }
  *uncached_area = (void *)high;
  tmp___14 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
  if (tmp___14 != 0) {
    memset((void *)a->req_table, 0, (unsigned long )((num_requests + num_ae_requests) + 1) * 8UL);
    esas2r_targ_db_initialize(a);
    element = (struct esas2r_inbound_list_source_entry *)a->inbound_list_md.virt_addr;
    i = 0U;
    goto ldv_39250;
    ldv_39249:
    element->address = 0ULL;
    element->reserved = 0U;
    element->length = 256U;
    element = element + 1;
    i = i + 1U;
    ldv_39250: ;
    if (a->list_size > i) {
      goto ldv_39249;
    } else {
    }
    rq = a->first_ae_req;
    i = 0U;
    goto ldv_39253;
    ldv_39252:
    INIT_LIST_HEAD(& rq->req_list);
    tmp___12 = alloc_vda_req(a, rq);
    if (tmp___12) {
      tmp___13 = 0;
    } else {
      tmp___13 = 1;
    }
    if (tmp___13) {
      return (0);
    } else {
    }
    esas2r_rq_init_request(rq, a);
    rq->comp_cb = & esas2r_ae_complete;
    rq = rq + 1;
    i = i + 1U;
    ldv_39253: ;
    if ((u32 )num_ae_requests > i) {
      goto ldv_39252;
    } else {
    }
  } else {
  }
  return (1);
}
}
bool esas2r_check_adapter(struct esas2r_adapter *a )
{
  u32 starttime ;
  u32 doorbell ;
  u64 ppaddr ;
  u32 dw ;
  int tmp ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  u32 ver ;
  bool tmp___2 ;
  unsigned long tmp___3 ;
  bool tmp___4 ;
  unsigned int tmp___5 ;
  unsigned long tmp___6 ;
  unsigned int tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  unsigned long tmp___10 ;
  bool tmp___11 ;
  unsigned int tmp___12 ;
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    goto skip_chip_reset;
  } else {
  }
  writel(0U, (void volatile *)a->regs + 66060U);
  readl((void const volatile *)a->regs + 66060U);
  starttime = jiffies_to_msecs(jiffies);
  ldv_39265:
  esas2r_force_interrupt(a);
  doorbell = readl((void const volatile *)a->regs + 66688U);
  if (doorbell == 4294967295U) {
    tmp___1 = jiffies_to_msecs(jiffies);
    if (tmp___1 - starttime > 2000U) {
      tmp___0 = esas2r_set_degraded_mode(a, (char *)"unable to access registers");
      return (tmp___0);
    } else {
    }
  } else
  if ((doorbell & 128U) != 0U) {
    ver = doorbell & 458752U;
    writel(doorbell, (void volatile *)a->regs + 66688U);
    if (ver == 0U) {
      set_bit(24L, (unsigned long volatile *)(& a->flags));
      a->max_vdareq_size = 128U;
      a->build_sgl = & esas2r_build_sg_list_sge;
    } else
    if (ver == 65536U) {
      clear_bit(24L, (unsigned long volatile *)(& a->flags));
      a->max_vdareq_size = 1024U;
      a->build_sgl = & esas2r_build_sg_list_prd;
    } else {
      tmp___2 = esas2r_set_degraded_mode(a, (char *)"unknown firmware version");
      return (tmp___2);
    }
    goto ldv_39264;
  } else {
  }
  tmp___3 = msecs_to_jiffies(100U);
  schedule_timeout_interruptible((long )tmp___3);
  tmp___5 = jiffies_to_msecs(jiffies);
  if (tmp___5 - starttime > 180000U) {
    tmp___4 = esas2r_set_degraded_mode(a, (char *)"firmware start has timed out");
    return (tmp___4);
  } else {
  }
  goto ldv_39265;
  ldv_39264:
  writel(16U, (void volatile *)a->regs + 66656U);
  starttime = jiffies_to_msecs(jiffies);
  ldv_39267:
  doorbell = readl((void const volatile *)a->regs + 66688U);
  if ((doorbell & 16U) != 0U) {
    writel(doorbell, (void volatile *)a->regs + 66688U);
    goto ldv_39266;
  } else {
  }
  tmp___6 = msecs_to_jiffies(50U);
  schedule_timeout_interruptible((long )tmp___6);
  tmp___7 = jiffies_to_msecs(jiffies);
  if (tmp___7 - starttime > 3000U) {
    goto ldv_39266;
  } else {
  }
  goto ldv_39267;
  ldv_39266: ;
  skip_chip_reset:
  dw = readl((void const volatile *)a->regs + 16428U);
  dw = dw & 4294967294U;
  writel(dw, (void volatile *)a->regs + 16428U);
  dw = readl((void const volatile *)a->regs + 16508U);
  dw = dw & 4294967294U;
  writel(dw, (void volatile *)a->regs + 16508U);
  ppaddr = a->inbound_list_md.phys_addr;
  writel((unsigned int )ppaddr, (void volatile *)a->regs + 16384U);
  writel((unsigned int )(ppaddr >> 32ULL), (void volatile *)a->regs + 16388U);
  ppaddr = a->outbound_list_md.phys_addr;
  writel((unsigned int )ppaddr, (void volatile *)a->regs + 16464U);
  writel((unsigned int )(ppaddr >> 32ULL), (void volatile *)a->regs + 16468U);
  ppaddr = a->uncached_phys + (unsigned long long )((long )a->outbound_copy - (long )a->uncached);
  writel((unsigned int )ppaddr, (void volatile *)a->regs + 16472U);
  writel((unsigned int )(ppaddr >> 32ULL), (void volatile *)a->regs + 16476U);
  tmp___9 = a->list_size - 1U;
  a->last_read = tmp___9;
  tmp___8 = tmp___9;
  a->last_write = tmp___8;
  *(a->outbound_copy) = tmp___8;
  set_bit(23L, (unsigned long volatile *)(& a->flags));
  writel(a->last_write | 16384U, (void volatile *)a->regs + 16408U);
  writel(a->last_write | 16384U, (void volatile *)a->regs + 16492U);
  writel(a->last_write | 16384U, (void volatile *)a->regs + 16412U);
  writel(a->last_write | 16384U, (void volatile *)a->regs + 16488U);
  dw = readl((void const volatile *)a->regs + 16424U);
  dw = dw & 4294963440U;
  writel(dw | 512U, (void volatile *)a->regs + 16424U);
  dw = readl((void const volatile *)a->regs + 16504U);
  dw = dw & 4294963440U;
  writel(dw | 512U, (void volatile *)a->regs + 16504U);
  dw = readl((void const volatile *)a->regs + 16428U);
  dw = dw & 2147548943U;
  dw = ((a->list_size << 16) | dw) | 32800U;
  writel(dw, (void volatile *)a->regs + 16428U);
  dw = readl((void const volatile *)a->regs + 16508U);
  dw = dw & 2147548943U;
  dw = ((a->list_size << 16) | dw) | 32U;
  writel(dw, (void volatile *)a->regs + 16508U);
  writel(256U, (void volatile *)a->regs + 66656U);
  starttime = jiffies_to_msecs(jiffies);
  ldv_39269:
  doorbell = readl((void const volatile *)a->regs + 66688U);
  if ((doorbell & 256U) != 0U) {
    writel(doorbell, (void volatile *)a->regs + 66688U);
    goto ldv_39268;
  } else {
  }
  tmp___10 = msecs_to_jiffies(100U);
  schedule_timeout_interruptible((long )tmp___10);
  tmp___12 = jiffies_to_msecs(jiffies);
  if (tmp___12 - starttime > 3000U) {
    tmp___11 = esas2r_set_degraded_mode(a, (char *)"timeout waiting for communication list init");
    return (tmp___11);
  } else {
  }
  goto ldv_39269;
  ldv_39268:
  doorbell = readl((void const volatile *)a->regs + 66660U);
  if ((doorbell & 512U) != 0U) {
    set_bit(5L, (unsigned long volatile *)(& a->flags2));
  } else {
    clear_bit(5L, (unsigned long volatile *)(& a->flags2));
  }
  writel(1U, (void volatile *)a->regs + 16524U);
  writel(16253951U, (void volatile *)a->regs + 66692U);
  return (1);
}
}
static bool esas2r_format_init_msg(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  u32 msg ;
  struct atto_vda_cfg_init *ci ;
  struct timeval now ;
  u32 major ;
  u32 minor ;
  u16 fw_release ;
  int tmp ;
  __u32 tmp___0 ;
  {
  msg = (u32 )a->init_msg;
  a->init_msg = 0U;
  switch (msg) {
  case 1U: ;
  case 4U:
  do_gettimeofday(& now);
  esas2r_build_cfg_req(a, rq, 0, 0U, (void *)0);
  ci = & (rq->vrq)->cfg.data.init;
  ci->sgl_page_size = (unsigned int )sgl_page_size;
  ci->epoch_time = (unsigned int )now.tv_sec;
  rq->flags = (u8 )((unsigned int )rq->flags | 8U);
  a->init_msg = 2U;
  goto ldv_39279;
  case 2U: ;
  if ((unsigned int )rq->req_stat == 0U) {
    a->fw_version = (u32 )rq->func_rsp.cfg_rsp.vda_version;
    a->fw_build = rq->func_rsp.cfg_rsp.fw_build;
    fw_release = rq->func_rsp.cfg_rsp.fw_release;
    major = (u32 )((unsigned char )fw_release);
    minor = (u32 )((unsigned char )((int )fw_release >> 8));
    a->fw_version = a->fw_version + ((major << 16) + (minor << 24));
  } else {
  }
  tmp = constant_test_bit(7L, (unsigned long const volatile *)(& a->flags2));
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = __fswab32(a->fw_version);
    if (tmp___0 > 5392130U) {
      _L:
      esas2r_build_cfg_req(a, rq, 2, 112U, (void *)0);
      (rq->vrq)->cfg.sg_list_offset = 12U;
      (rq->vrq)->cfg.data.prde.ctl_len = 112U;
      (rq->vrq)->cfg.data.prde.address = (rq->vrq_md)->phys_addr + 1024ULL;
      rq->flags = (u8 )((unsigned int )rq->flags | 8U);
      a->init_msg = 3U;
      goto ldv_39279;
    } else {
    }
  }
  case 3U: ;
  if (msg == 3U) {
    ci = (struct atto_vda_cfg_init *)rq->__annonCompField106.data_buf;
    if ((unsigned int )rq->req_stat == 0U) {
      a->num_targets_backend = ci->num_targets_backend;
      a->ioctl_tunnel = ci->ioctl_tunnel;
    } else {
    }
  } else {
  }
  default:
  rq->req_stat = 0U;
  return (0);
  }
  ldv_39279: ;
  return (1);
}
}
bool esas2r_init_msgs(struct esas2r_adapter *a )
{
  bool success ;
  struct esas2r_request *rq ;
  unsigned long flags ;
  bool tmp ;
  {
  success = 1;
  rq = & a->general_req;
  esas2r_rq_init_request(rq, a);
  rq->comp_cb = & esas2r_dummy_complete;
  if ((unsigned int )a->init_msg == 0U) {
    a->init_msg = 4U;
  } else {
  }
  goto ldv_39294;
  ldv_39296:
  tmp = esas2r_format_init_msg(a, rq);
  if ((int )tmp) {
    ldv_39293:
    ldv_spin_lock();
    esas2r_start_vda_request(a, rq);
    spin_unlock_irqrestore(& a->queue_lock, flags);
    esas2r_wait_request(a, rq);
    if ((unsigned int )rq->req_stat != 254U) {
      goto ldv_39292;
    } else {
    }
    goto ldv_39293;
    ldv_39292: ;
  } else {
  }
  if ((unsigned int )rq->req_stat == 0U || (((int )rq->flags & 8) != 0 && (unsigned int )rq->req_stat != 5U)) {
    goto ldv_39294;
  } else {
  }
  esas2r_log(1L, "init message %x failed (%x, %x)", (int )a->init_msg, (int )rq->req_stat,
             (int )rq->flags);
  a->init_msg = 1U;
  success = 0;
  goto ldv_39295;
  ldv_39294: ;
  if ((unsigned int )a->init_msg != 0U) {
    goto ldv_39296;
  } else {
  }
  ldv_39295:
  esas2r_rq_destroy_request___0(rq, a);
  return (success);
}
}
bool esas2r_init_adapter_hw(struct esas2r_adapter *a , bool init_poll )
{
  bool rslt ;
  struct esas2r_request *rq ;
  u32 i ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 currtime ;
  u32 nexttick ;
  u32 deltatime ;
  int tmp___7 ;
  unsigned long tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  bool tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  rslt = 0;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    goto exit;
  } else {
  }
  tmp___2 = constant_test_bit(12L, (unsigned long const volatile *)(& a->flags));
  if (tmp___2 == 0) {
    tmp___0 = esas2r_nvram_read_direct(a);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      esas2r_log(2L, "invalid/missing NVRAM parameters");
    } else {
    }
  } else {
  }
  tmp___3 = esas2r_init_msgs(a);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    esas2r_set_degraded_mode(a, (char *)"init messages failed");
    goto exit;
  } else {
  }
  clear_bit(13L, (unsigned long volatile *)(& a->flags));
  clear_bit(2L, (unsigned long volatile *)(& a->flags));
  i = 0U;
  rq = a->first_ae_req;
  goto ldv_39306;
  ldv_39305:
  esas2r_start_ae_request(a, rq);
  i = i + 1U;
  rq = rq + 1;
  ldv_39306: ;
  if ((u32 )num_ae_requests > i) {
    goto ldv_39305;
  } else {
  }
  if ((int )((signed char )a->flash_rev[0]) == 0) {
    esas2r_read_flash_rev(a);
  } else {
  }
  if ((int )((signed char )a->image_type[0]) == 0) {
    esas2r_read_image_type(a);
  } else {
  }
  if (a->fw_version == 0U) {
    a->fw_rev[0] = 0;
  } else {
    sprintf((char *)(& a->fw_rev), "%1d.%02d", (int )((unsigned char )(a->fw_version >> 16)),
            (int )((unsigned char )((int )((unsigned short )(a->fw_version >> 16)) >> 8)));
  }
  tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
  if (tmp___5 != 0) {
    tmp___6 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___6 != 0) {
      esas2r_enable_chip_interrupts(a);
      return (1);
    } else {
    }
  } else {
  }
  esas2r_disc_initialize(a);
  if ((int )init_poll) {
    currtime = a->disc_start_time;
    nexttick = 100U;
    set_bit(15L, (unsigned long volatile *)(& a->flags));
    set_bit(25L, (unsigned long volatile *)(& a->flags));
    tmp___7 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___7 != 0) {
      atomic_dec(& a->disable_cnt);
    } else {
    }
    goto ldv_39312;
    ldv_39311:
    tmp___8 = msecs_to_jiffies(100U);
    schedule_timeout_interruptible((long )tmp___8);
    tmp___9 = jiffies_to_msecs(jiffies);
    deltatime = tmp___9 - currtime;
    currtime = currtime + deltatime;
    tmp___10 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___10 == 0) {
      esas2r_disc_check_for_work(a);
    } else {
    }
    if (nexttick <= deltatime) {
      nexttick = nexttick + 100U;
      esas2r_timer_tick(a);
    } else {
    }
    if (nexttick > deltatime) {
      nexttick = nexttick - deltatime;
    } else {
    }
    tmp___11 = esas2r_is_tasklet_pending(a);
    if ((int )tmp___11) {
      esas2r_do_tasklet_tasks(a);
    } else {
    }
    ldv_39312:
    tmp___12 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
    if (tmp___12 != 0) {
      goto ldv_39311;
    } else {
    }
    tmp___13 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___13 != 0) {
      atomic_inc(& a->disable_cnt);
    } else {
    }
    clear_bit(25L, (unsigned long volatile *)(& a->flags));
    clear_bit(15L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  esas2r_targ_db_report_changes(a);
  esas2r_disc_start_waiting(a);
  a->int_mask = 4112U;
  esas2r_enable_chip_interrupts(a);
  esas2r_enable_heartbeat(a);
  rslt = 1;
  exit:
  tmp___16 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
  if (tmp___16 != 0) {
    tmp___17 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___17 != 0) {
      if (! rslt) {
        clear_bit(2L, (unsigned long volatile *)(& a->flags));
      } else {
      }
    } else {
      goto _L;
    }
  } else {
    _L:
    if (! rslt) {
      clear_bit(2L, (unsigned long volatile *)(& a->flags));
      clear_bit(14L, (unsigned long volatile *)(& a->flags));
    } else {
    }
    tmp___15 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___15 != 0) {
      clear_bit(20L, (unsigned long volatile *)(& a->flags));
      tmp___14 = atomic_sub_return(1, & a->disable_cnt);
      if (tmp___14 == 0) {
        esas2r_do_deferred_processes(a);
      } else {
      }
    } else {
    }
  }
  return (rslt);
}
}
void esas2r_reset_adapter(struct esas2r_adapter *a )
{
  {
  set_bit(9L, (unsigned long volatile *)(& a->flags));
  esas2r_local_reset_adapter(a);
  esas2r_schedule_tasklet(a);
  return;
}
}
void esas2r_reset_chip(struct esas2r_adapter *a )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  {
  tmp = esas2r_is_adapter_present(a);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  tmp___1 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___1 != 0) {
    tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& a->flags2));
    if (tmp___2 == 0) {
      esas2r_read_mem_block(a, (void *)(& a->fw_coredump_buff), 4094164992U, 524288U);
      set_bit(4L, (unsigned long volatile *)(& a->flags2));
    } else {
    }
  } else {
  }
  clear_bit(3L, (unsigned long volatile *)(& a->flags2));
  if ((unsigned int )(a->pcid)->revision == 178U) {
    writel(2147483648U, (void volatile *)a->regs + 65840U);
  } else {
    writel(32U, (void volatile *)a->regs + 65800U);
  }
  __ms = 10UL;
  goto ldv_39322;
  ldv_39321:
  __const_udelay(4295000UL);
  ldv_39322:
  tmp___3 = __ms;
  __ms = __ms - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_39321;
  } else {
  }
  return;
}
}
static void esas2r_power_down_notify_firmware(struct esas2r_adapter *a )
{
  u32 starttime ;
  u32 doorbell ;
  unsigned long tmp ;
  unsigned int tmp___0 ;
  {
  writel(512U, (void volatile *)a->regs + 66656U);
  starttime = jiffies_to_msecs(jiffies);
  ldv_39330:
  doorbell = readl((void const volatile *)a->regs + 66688U);
  if ((doorbell & 512U) != 0U) {
    writel(doorbell, (void volatile *)a->regs + 66688U);
    goto ldv_39329;
  } else {
  }
  tmp = msecs_to_jiffies(100U);
  schedule_timeout_interruptible((long )tmp);
  tmp___0 = jiffies_to_msecs(jiffies);
  if (tmp___0 - starttime > 30000U) {
    goto ldv_39329;
  } else {
  }
  goto ldv_39330;
  ldv_39329: ;
  return;
}
}
void esas2r_power_down(struct esas2r_adapter *a )
{
  u32 starttime ;
  u32 doorbell ;
  unsigned long tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  set_bit(11L, (unsigned long volatile *)(& a->flags));
  set_bit(21L, (unsigned long volatile *)(& a->flags));
  tmp___2 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___2 == 0) {
    esas2r_disable_chip_interrupts(a);
    esas2r_disable_heartbeat(a);
    writel(16U, (void volatile *)a->regs + 66656U);
    starttime = jiffies_to_msecs(jiffies);
    ldv_39337:
    doorbell = readl((void const volatile *)a->regs + 66688U);
    if ((doorbell & 16U) != 0U) {
      writel(doorbell, (void volatile *)a->regs + 66688U);
      goto ldv_39336;
    } else {
    }
    tmp = msecs_to_jiffies(100U);
    schedule_timeout_interruptible((long )tmp);
    tmp___0 = jiffies_to_msecs(jiffies);
    if (tmp___0 - starttime > 3000U) {
      goto ldv_39336;
    } else {
    }
    goto ldv_39337;
    ldv_39336:
    tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& a->flags2));
    if (tmp___1 != 0) {
      esas2r_power_down_notify_firmware(a);
    } else {
    }
  } else {
  }
  set_bit(9L, (unsigned long volatile *)(& a->flags));
  set_bit(14L, (unsigned long volatile *)(& a->flags));
  set_bit(2L, (unsigned long volatile *)(& a->flags));
  esas2r_process_adapter_reset(a);
  a->__annonCompField108.prev_dev_cnt = esas2r_targ_db_get_tgt_cnt(a);
  esas2r_targ_db_remove_all(a, 0);
  return;
}
}
bool esas2r_power_up(struct esas2r_adapter *a , bool init_poll )
{
  bool ret ;
  bool tmp ;
  int tmp___0 ;
  {
  clear_bit(21L, (unsigned long volatile *)(& a->flags));
  esas2r_init_pci_cfg_space(a);
  set_bit(20L, (unsigned long volatile *)(& a->flags));
  atomic_inc(& a->disable_cnt);
  ret = esas2r_check_adapter(a);
  tmp = esas2r_init_adapter_hw(a, (int )init_poll);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    ret = 0;
  } else {
  }
  esas2r_send_reset_ae(a, 1);
  clear_bit(11L, (unsigned long volatile *)(& a->flags));
  return (ret);
}
}
bool esas2r_is_adapter_present(struct esas2r_adapter *a )
{
  int tmp ;
  unsigned int tmp___0 ;
  {
  tmp = constant_test_bit(18L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = readl((void const volatile *)a->regs + 66688U);
  if (tmp___0 == 4294967295U) {
    set_bit(18L, (unsigned long volatile *)(& a->flags));
    return (0);
  } else {
  }
  return (1);
}
}
char const *esas2r_get_model_name(struct esas2r_adapter *a )
{
  {
  switch ((int )(a->pcid)->subsystem_device) {
  case 73: ;
  return ("ATTO ExpressSAS R680");
  case 74: ;
  return ("ATTO ExpressSAS R608");
  case 75: ;
  return ("ATTO ExpressSAS R60F");
  case 76: ;
  return ("ATTO ExpressSAS R6F0");
  case 77: ;
  return ("ATTO ExpressSAS R644");
  case 78: ;
  return ("ATTO ExpressSAS R648");
  case 16486: ;
  return ("ATTO ThunderStream SC 3808D");
  case 16487: ;
  return ("ATTO ThunderStream SC 3808E");
  case 16488: ;
  return ("ATTO ThunderLink SH 1068");
  }
  return ("ATTO SAS Controller");
}
}
char const *esas2r_get_model_name_short(struct esas2r_adapter *a )
{
  {
  switch ((int )(a->pcid)->subsystem_device) {
  case 73: ;
  return ("R680");
  case 74: ;
  return ("R608");
  case 75: ;
  return ("R60F");
  case 76: ;
  return ("R6F0");
  case 77: ;
  return ("R644");
  case 78: ;
  return ("R648");
  case 16486: ;
  return ("SC 3808D");
  case 16487: ;
  return ("SC 3808E");
  case 16488: ;
  return ("SH 1068");
  }
  return ("unknown");
}
}
bool ldv_queue_work_on_120(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_122(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_123(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_130(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
int ldv_scsi_add_host_with_dma_134(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_135(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_136(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_scsi_remove_host_137(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_5 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
bool ldv_queue_work_on_161(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_162(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_164(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_171(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv_scsi_add_host_with_dma_175(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
extern void scsi_report_bus_reset(struct Scsi_Host * , int ) ;
void esas2r_target_state_changed(struct esas2r_adapter *a , u16 targ_id , u8 state ) ;
void esas2r_adapter_interrupt(struct esas2r_adapter *a ) ;
void esas2r_local_start_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_complete_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
void esas2r_nuxi_ae_data(union atto_vda_ae *ae ) ;
void esas2r_log_request_failure(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
bool esas2r_ioreq_aborted(struct esas2r_adapter *a , struct esas2r_request *rq , u8 status ) ;
void esas2r_queue_fw_event(struct esas2r_adapter *a , enum fw_event_type type , void *data ,
                           int data_sz ) ;
__inline static bool esas2r_adapter_interrupt_pending(struct esas2r_adapter *a )
{
  u32 intstat ;
  {
  if (a->int_mask == 0U) {
    return (0);
  } else {
  }
  intstat = readl((void const volatile *)a->regs + 66048U);
  if ((a->int_mask & intstat) == 0U) {
    return (0);
  } else {
  }
  esas2r_disable_chip_interrupts(a);
  a->int_stat = intstat;
  a->int_mask = 0U;
  return (1);
}
}
__inline static void esas2r_start_ae_request___0(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  unsigned long flags ;
  {
  esas2r_build_ae_req(a, rq);
  ldv_spin_lock();
  esas2r_start_vda_request(a, rq);
  spin_unlock_irqrestore(& a->queue_lock, flags);
  return;
}
}
__inline static void esas2r_comp_list_drain(struct esas2r_adapter *a , struct list_head *comp_list )
{
  struct esas2r_request *rq ;
  struct list_head *element ;
  struct list_head *next ;
  struct list_head const *__mptr ;
  {
  element = comp_list->next;
  next = element->next;
  goto ldv_39084;
  ldv_39083:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr;
  list_del_init(element);
  esas2r_complete_request(a, rq);
  element = next;
  next = element->next;
  ldv_39084: ;
  if ((unsigned long )element != (unsigned long )comp_list) {
    goto ldv_39083;
  } else {
  }
  return;
}
}
static void esas2r_doorbell_interrupt(struct esas2r_adapter *a , u32 doorbell ) ;
static void esas2r_get_outbound_responses(struct esas2r_adapter *a ) ;
static void esas2r_process_bus_reset(struct esas2r_adapter *a ) ;
void esas2r_polled_interrupt(struct esas2r_adapter *a )
{
  u32 intstat ;
  u32 doorbell ;
  int tmp ;
  {
  esas2r_disable_chip_interrupts(a);
  intstat = readl((void const volatile *)a->regs + 66048U);
  if ((intstat & 16U) != 0U) {
    writel(1U, (void volatile *)a->regs + 16520U);
    readl((void const volatile *)a->regs + 16520U);
    esas2r_get_outbound_responses(a);
  } else {
  }
  if ((intstat & 4096U) != 0U) {
    doorbell = readl((void const volatile *)a->regs + 66688U);
    if (doorbell != 0U) {
      esas2r_doorbell_interrupt(a, doorbell);
    } else {
    }
  } else {
  }
  esas2r_enable_chip_interrupts(a);
  tmp = atomic_read((atomic_t const *)(& a->disable_cnt));
  if (tmp == 0) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  return;
}
}
irqreturn_t esas2r_interrupt(int irq , void *dev_id )
{
  struct esas2r_adapter *a ;
  bool tmp ;
  int tmp___0 ;
  {
  a = (struct esas2r_adapter *)dev_id;
  tmp = esas2r_adapter_interrupt_pending(a);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  set_bit(9L, (unsigned long volatile *)(& a->flags2));
  esas2r_schedule_tasklet(a);
  return (1);
}
}
void esas2r_adapter_interrupt(struct esas2r_adapter *a )
{
  u32 doorbell ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = ldv__builtin_expect((a->int_stat & 16U) != 0U, 1L);
  if (tmp != 0L) {
    writel(1U, (void volatile *)a->regs + 16520U);
    readl((void const volatile *)a->regs + 16520U);
    esas2r_get_outbound_responses(a);
  } else {
  }
  tmp___0 = ldv__builtin_expect((a->int_stat & 4096U) != 0U, 0L);
  if (tmp___0 != 0L) {
    doorbell = readl((void const volatile *)a->regs + 66688U);
    if (doorbell != 0U) {
      esas2r_doorbell_interrupt(a, doorbell);
    } else {
    }
  } else {
  }
  a->int_mask = 4112U;
  esas2r_enable_chip_interrupts(a);
  tmp___1 = atomic_read((atomic_t const *)(& a->disable_cnt));
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 1L);
  if (tmp___2 != 0L) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  return;
}
}
irqreturn_t esas2r_msi_interrupt(int irq , void *dev_id )
{
  struct esas2r_adapter *a ;
  u32 intstat ;
  u32 doorbell ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  a = (struct esas2r_adapter *)dev_id;
  intstat = readl((void const volatile *)a->regs + 66048U);
  tmp = ldv__builtin_expect((intstat & 16U) != 0U, 1L);
  if (tmp != 0L) {
    writel(1U, (void volatile *)a->regs + 16520U);
    readl((void const volatile *)a->regs + 16520U);
    esas2r_get_outbound_responses(a);
  } else {
  }
  tmp___0 = ldv__builtin_expect((intstat & 4096U) != 0U, 0L);
  if (tmp___0 != 0L) {
    doorbell = readl((void const volatile *)a->regs + 66688U);
    if (doorbell != 0U) {
      esas2r_doorbell_interrupt(a, doorbell);
    } else {
    }
  } else {
  }
  esas2r_disable_chip_interrupts(a);
  esas2r_enable_chip_interrupts(a);
  tmp___1 = atomic_read((atomic_t const *)(& a->disable_cnt));
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 1L);
  if (tmp___2 != 0L) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  esas2r_do_tasklet_tasks(a);
  return (1);
}
}
static void esas2r_handle_outbound_rsp_err(struct esas2r_adapter *a , struct esas2r_request *rq ,
                                           struct atto_vda_ob_rsp *rsp )
{
  u8 scsistatus ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )rq->req_stat != 0U, 0L);
  if (tmp != 0L) {
    memcpy((void *)(& rq->func_rsp), (void const *)(& rsp->func_rsp), 8UL);
    if ((unsigned int )rq->req_stat == 10U) {
      if (rq->timeout > 4294967293U) {
        rq->req_stat = 5U;
      } else {
      }
    } else
    if ((unsigned int )rq->req_stat == 8U) {
      scsistatus = rq->func_rsp.scsi_rsp.scsi_stat;
      if ((((unsigned int )scsistatus == 0U || (unsigned int )scsistatus == 4U) || (unsigned int )scsistatus == 16U) || (unsigned int )scsistatus == 20U) {
        rq->req_stat = 0U;
        rq->func_rsp.scsi_rsp.scsi_stat = 0U;
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void esas2r_get_outbound_responses(struct esas2r_adapter *a )
{
  struct atto_vda_ob_rsp *rsp ;
  u32 rspput_ptr ;
  u32 rspget_ptr ;
  struct esas2r_request *rq ;
  u32 handle ;
  unsigned long flags ;
  struct list_head comp_list ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  comp_list.next = & comp_list;
  comp_list.prev = & comp_list;
  ldv_spin_lock();
  rspput_ptr = (unsigned int )*(a->outbound_copy) & 16383U;
  rspget_ptr = a->last_read;
  tmp = ldv__builtin_expect(rspget_ptr == rspput_ptr, 0L);
  if (tmp != 0L) {
    spin_unlock_irqrestore(& a->queue_lock, flags);
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(a->list_size <= rspput_ptr, 0L);
  if (tmp___0 != 0L) {
    spin_unlock_irqrestore(& a->queue_lock, flags);
    esas2r_local_reset_adapter(a);
    return;
  } else {
  }
  ldv_39137:
  rspget_ptr = rspget_ptr + 1U;
  if (a->list_size <= rspget_ptr) {
    rspget_ptr = 0U;
  } else {
  }
  rsp = (struct atto_vda_ob_rsp *)a->outbound_list_md.virt_addr + (unsigned long )rspget_ptr;
  handle = rsp->handle;
  tmp___1 = ldv__builtin_expect((long )((unsigned int )((unsigned short )handle) == 0U || (int )((unsigned short )handle) > (num_requests + num_ae_requests) + 1),
                             0L);
  if (tmp___1 != 0L) {
    goto ldv_39136;
  } else {
  }
  rq = *(a->req_table + (unsigned long )((unsigned short )handle));
  tmp___2 = ldv__builtin_expect((long )((unsigned long )rq == (unsigned long )((struct esas2r_request *)0) || (rq->vrq)->scsi.handle != handle),
                             0L);
  if (tmp___2 != 0L) {
    goto ldv_39136;
  } else {
  }
  list_del(& rq->req_list);
  rq->req_stat = rsp->req_stat;
  tmp___3 = ldv__builtin_expect((unsigned int )(rq->vrq)->scsi.function == 0U, 1L);
  if (tmp___3 != 0L) {
    esas2r_handle_outbound_rsp_err(a, rq, rsp);
  } else {
    memcpy((void *)(& rq->func_rsp), (void const *)(& rsp->func_rsp), 8UL);
  }
  list_add_tail(& rq->comp_list, & comp_list);
  ldv_39136: ;
  if (rspget_ptr != rspput_ptr) {
    goto ldv_39137;
  } else {
  }
  a->last_read = rspget_ptr;
  spin_unlock_irqrestore(& a->queue_lock, flags);
  esas2r_comp_list_drain(a, & comp_list);
  return;
}
}
void esas2r_do_deferred_processes(struct esas2r_adapter *a )
{
  int startreqs ;
  struct esas2r_request *rq ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  struct list_head comp_list ;
  struct list_head *element ;
  struct list_head *next ;
  struct list_head const *__mptr ;
  int tmp___3 ;
  int tmp___4 ;
  {
  startreqs = 2;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    startreqs = 0;
  } else {
    tmp___1 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
    if (tmp___1 != 0) {
      startreqs = 0;
    } else {
      tmp = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
      if (tmp != 0) {
        startreqs = 1;
      } else {
      }
    }
  }
  atomic_inc(& a->disable_cnt);
  tmp___2 = esas2r_is_tasklet_pending(a);
  if ((int )tmp___2) {
    esas2r_schedule_tasklet(a);
    startreqs = 0;
  } else {
  }
  if (startreqs != 0) {
    tmp___4 = list_empty((struct list_head const *)(& a->defer_list));
    if (tmp___4 == 0) {
      comp_list.next = & comp_list;
      comp_list.prev = & comp_list;
      ldv_spin_lock();
      element = a->defer_list.next;
      next = element->next;
      goto ldv_39152;
      ldv_39151:
      __mptr = (struct list_head const *)element;
      rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
      if ((unsigned int )rq->req_stat != 254U) {
        list_del(element);
        list_add_tail(& rq->comp_list, & comp_list);
      } else
      if ((unsigned int )rq->req_type == 2U) {
        list_del(element);
        esas2r_disc_local_start_request(a, rq);
      } else
      if (startreqs == 2) {
        list_del(element);
        esas2r_local_start_request(a, rq);
        tmp___3 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
        if (tmp___3 != 0) {
          goto ldv_39150;
        } else {
        }
      } else {
      }
      element = next;
      next = element->next;
      ldv_39152: ;
      if ((unsigned long )(& a->defer_list) != (unsigned long )element) {
        goto ldv_39151;
      } else {
      }
      ldv_39150:
      spin_unlock_irqrestore(& a->queue_lock, flags);
      esas2r_comp_list_drain(a, & comp_list);
    } else {
    }
  } else {
  }
  atomic_dec(& a->disable_cnt);
  return;
}
}
void esas2r_process_adapter_reset(struct esas2r_adapter *a )
{
  struct esas2r_request *rq ;
  unsigned long flags ;
  struct esas2r_disc_context *dc ;
  struct list_head comp_list ;
  struct list_head *element ;
  u32 tmp ;
  u32 tmp___0 ;
  struct list_head const *__mptr ;
  bool tmp___1 ;
  {
  rq = & a->general_req;
  comp_list.next = & comp_list;
  comp_list.prev = & comp_list;
  ldv_spin_lock();
  if ((unsigned long )rq->interrupt_cx != (unsigned long )((void *)0)) {
    dc = (struct esas2r_disc_context *)rq->interrupt_cx;
    dc->disc_evt = 0U;
    clear_bit(22L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  rq->interrupt_cx = (void *)0;
  rq->interrupt_cb = (void (*)(struct esas2r_adapter * , struct esas2r_request * ))0;
  rq->comp_cb = & esas2r_dummy_complete;
  tmp___0 = a->list_size - 1U;
  a->last_read = tmp___0;
  tmp = tmp___0;
  a->last_write = tmp;
  *(a->outbound_copy) = tmp;
  set_bit(23L, (unsigned long volatile *)(& a->flags));
  element = a->defer_list.next;
  goto ldv_39164;
  ldv_39163:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned int )rq->req_stat == 255U) {
    tmp___1 = esas2r_ioreq_aborted(a, rq, 10);
    if ((int )tmp___1) {
      list_add_tail(& rq->comp_list, & comp_list);
    } else {
    }
  } else {
  }
  element = element->next;
  ldv_39164: ;
  if ((unsigned long )(& a->defer_list) != (unsigned long )element) {
    goto ldv_39163;
  } else {
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  esas2r_comp_list_drain(a, & comp_list);
  esas2r_process_bus_reset(a);
  return;
}
}
static void esas2r_process_bus_reset(struct esas2r_adapter *a )
{
  struct esas2r_request *rq ;
  struct list_head *element ;
  unsigned long flags ;
  struct list_head comp_list ;
  struct list_head const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  {
  comp_list.next = & comp_list;
  comp_list.prev = & comp_list;
  ldv_spin_lock();
  element = a->defer_list.next;
  goto ldv_39176;
  ldv_39175:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
  tmp = esas2r_ioreq_aborted(a, rq, 10);
  if ((int )tmp) {
    list_add_tail(& rq->comp_list, & comp_list);
  } else {
  }
  element = element->next;
  ldv_39176: ;
  if ((unsigned long )(& a->defer_list) != (unsigned long )element) {
    goto ldv_39175;
  } else {
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  esas2r_comp_list_drain(a, & comp_list);
  tmp___0 = atomic_read((atomic_t const *)(& a->disable_cnt));
  if (tmp___0 == 0) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  clear_bit(9L, (unsigned long volatile *)(& a->flags));
  return;
}
}
static void esas2r_chip_rst_needed_during_tasklet(struct esas2r_adapter *a )
{
  bool alrdyrst ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  clear_bit(1L, (unsigned long volatile *)(& a->flags));
  clear_bit(4L, (unsigned long volatile *)(& a->flags));
  clear_bit(6L, (unsigned long volatile *)(& a->flags));
  clear_bit(5L, (unsigned long volatile *)(& a->flags));
  tmp___3 = esas2r_is_adapter_present(a);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4 || a->chip_uptime > 59999U) {
    set_bit(13L, (unsigned long volatile *)(& a->flags));
    set_bit(7L, (unsigned long volatile *)(& a->flags));
    clear_bit(2L, (unsigned long volatile *)(& a->flags));
    clear_bit(14L, (unsigned long volatile *)(& a->flags));
    esas2r_disable_chip_interrupts(a);
    a->int_mask = 0U;
    esas2r_process_adapter_reset(a);
    esas2r_log(1L, "Adapter disabled because of hardware failure");
  } else {
    tmp = test_and_set_bit(19L, (unsigned long volatile *)(& a->flags));
    alrdyrst = tmp != 0;
    if (! alrdyrst) {
      esas2r_disable_chip_interrupts(a);
    } else {
    }
    tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 != 0) {
      tmp___1 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
      if (tmp___1 == 0) {
        if (! alrdyrst) {
        } else {
          esas2r_reset_chip(a);
        }
      } else {
        esas2r_reset_chip(a);
      }
    } else {
      esas2r_reset_chip(a);
    }
    a->chip_uptime = a->chip_uptime + 20000U;
    a->chip_init_time = jiffies_to_msecs(jiffies);
    tmp___2 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags));
    if (tmp___2 == 0) {
      esas2r_process_adapter_reset(a);
      if (! alrdyrst) {
        a->__annonCompField108.prev_dev_cnt = esas2r_targ_db_get_tgt_cnt(a);
        esas2r_targ_db_remove_all(a, 0);
      } else {
      }
    } else {
    }
    a->int_mask = 0U;
  }
  return;
}
}
static void esas2r_handle_chip_rst_during_tasklet(struct esas2r_adapter *a )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  goto ldv_39187;
  ldv_39186:
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      esas2r_disable_chip_interrupts(a);
    } else {
    }
  } else {
  }
  esas2r_check_adapter(a);
  esas2r_init_adapter_hw(a, 0);
  tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 != 0) {
    goto ldv_39185;
  } else {
  }
  tmp___4 = constant_test_bit(11L, (unsigned long const volatile *)(& a->flags));
  if (tmp___4 != 0) {
    tmp___2 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___2 != 0) {
      esas2r_log(1L, "The firmware was reset during a normal power-up sequence");
    } else {
      clear_bit(11L, (unsigned long volatile *)(& a->flags));
      esas2r_send_reset_ae(a, 1);
    }
  } else {
    tmp___3 = constant_test_bit(20L, (unsigned long const volatile *)(& a->flags));
    if (tmp___3 != 0) {
    } else {
      esas2r_send_reset_ae(a, 0);
    }
    esas2r_log(1L, "Recovering from a chip reset while the chip was online");
  }
  clear_bit(19L, (unsigned long volatile *)(& a->flags));
  esas2r_enable_chip_interrupts(a);
  clear_bit(3L, (unsigned long volatile *)(& a->flags));
  ldv_39187:
  tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
  if (tmp___5 != 0) {
    goto ldv_39186;
  } else {
  }
  ldv_39185: ;
  return;
}
}
void esas2r_do_tasklet_tasks(struct esas2r_adapter *a )
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
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    goto _L;
  } else {
    tmp___1 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
    if (tmp___1 != 0) {
      _L:
      tmp = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
      if (tmp != 0) {
        esas2r_chip_rst_needed_during_tasklet(a);
      } else {
      }
      esas2r_handle_chip_rst_during_tasklet(a);
    } else {
    }
  }
  tmp___3 = constant_test_bit(4L, (unsigned long const volatile *)(& a->flags));
  if (tmp___3 != 0) {
    clear_bit(4L, (unsigned long volatile *)(& a->flags));
    tmp___2 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
    if (tmp___2 != 0) {
      set_bit(6L, (unsigned long volatile *)(& a->flags));
    } else {
      writel(2U, (void volatile *)a->regs + 66656U);
    }
  } else {
  }
  tmp___4 = constant_test_bit(6L, (unsigned long const volatile *)(& a->flags));
  if (tmp___4 != 0) {
    esas2r_process_bus_reset(a);
    esas2r_log_dev(2L, (struct device const *)(& (a->host)->shost_gendev), "scsi_report_bus_reset() called");
    scsi_report_bus_reset(a->host, 0);
    clear_bit(6L, (unsigned long volatile *)(& a->flags));
    clear_bit(5L, (unsigned long volatile *)(& a->flags));
    esas2r_log(2L, "Bus reset complete");
  } else {
  }
  tmp___5 = constant_test_bit(0L, (unsigned long const volatile *)(& a->flags));
  if (tmp___5 != 0) {
    clear_bit(0L, (unsigned long volatile *)(& a->flags));
    esas2r_targ_db_report_changes(a);
  } else {
  }
  tmp___6 = atomic_read((atomic_t const *)(& a->disable_cnt));
  if (tmp___6 == 0) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  return;
}
}
static void esas2r_doorbell_interrupt(struct esas2r_adapter *a , u32 doorbell )
{
  {
  writel(doorbell, (void volatile *)a->regs + 66688U);
  if ((doorbell & 2U) != 0U) {
    set_bit(6L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  if ((doorbell & 128U) != 0U) {
    clear_bit(16L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  if ((doorbell & 15728640U) != 0U) {
    esas2r_log(1L, "The firmware has panicked");
  } else {
  }
  if ((doorbell & 524288U) != 0U) {
    set_bit(3L, (unsigned long volatile *)(& a->flags2));
    esas2r_local_reset_adapter(a);
  } else {
  }
  return;
}
}
void esas2r_force_interrupt(struct esas2r_adapter *a )
{
  {
  writel(65664U, (void volatile *)a->regs + 66656U);
  return;
}
}
static void esas2r_lun_event(struct esas2r_adapter *a , union atto_vda_ae *ae , u16 target ,
                             u32 length )
{
  struct esas2r_target *t ;
  u32 cplen ;
  unsigned long flags ;
  {
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )target;
  cplen = length;
  if (cplen > 24U) {
    cplen = 24U;
  } else {
  }
  ldv_spin_lock();
  t->new_target_state = 255U;
  if ((ae->lu.dwevent & 2U) != 0U) {
    t->new_target_state = 0U;
  } else {
    switch ((int )ae->lu.bystate) {
    case 1: ;
    case 2: ;
    case 6: ;
    case 5:
    t->new_target_state = 0U;
    goto ldv_39211;
    case 3: ;
    case 4:
    t->new_target_state = 5U;
    goto ldv_39211;
    }
    ldv_39211: ;
  }
  if ((unsigned int )t->new_target_state != 255U) {
    memcpy((void *)(& t->lu_event), (void const *)(& ae->lu), (size_t )cplen);
    esas2r_disc_queue_event(a, 1);
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return;
}
}
void esas2r_ae_complete(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  union atto_vda_ae *ae ;
  u32 length ;
  union atto_vda_ae *last ;
  u16 target ;
  {
  ae = (union atto_vda_ae *)(& (rq->__annonCompField106.vda_rsp_data)->ae_data.event_data);
  length = rq->func_rsp.ae_rsp.length;
  last = (union atto_vda_ae *)(& (rq->__annonCompField106.vda_rsp_data)->ae_data.event_data) + (unsigned long )length;
  if ((length > 256U || (length & 3U) != 0U) || length == 0U) {
    esas2r_log(2L, "The AE request response length (%p) is too long: %d", rq, length);
    last = ae;
  } else {
  }
  goto ldv_39229;
  ldv_39228:
  length = (u32 )ae->hdr.bylength;
  if (((unsigned int )((long )last) - (unsigned int )((long )ae) < length || (length & 3U) != 0U) || length == 0U) {
    esas2r_log(1L, "the async event length is invalid (%p): %d", ae, length);
    goto ldv_39222;
  } else {
  }
  esas2r_nuxi_ae_data(ae);
  esas2r_queue_fw_event(a, 4, (void *)ae, 128);
  switch ((int )ae->hdr.bytype) {
  case 1: ;
  if ((ae->raid.dwflags & 27U) != 0U) {
    esas2r_log(3L, "RAID event received - name:%s rebuild_state:%d group_state:%d",
               (char *)(& ae->raid.acname), (int )ae->raid.byrebuild_state, (int )ae->raid.bygroup_state);
  } else {
  }
  goto ldv_39224;
  case 2:
  esas2r_log(3L, "LUN event received: event:%d target_id:%d LUN:%d state:%d", ae->lu.dwevent,
             (int )ae->lu.id.tgtlun.wtarget_id, (int )ae->lu.id.tgtlun.bylun, (int )ae->lu.bystate);
  target = ae->lu.id.tgtlun.wtarget_id;
  if ((unsigned int )target <= 255U) {
    esas2r_lun_event(a, ae, (int )target, length);
  } else {
  }
  goto ldv_39224;
  case 3:
  esas2r_log(3L, "Disk event received");
  goto ldv_39224;
  default: ;
  goto ldv_39224;
  }
  ldv_39224:
  ae = ae + (unsigned long )length;
  ldv_39229: ;
  if ((unsigned long )ae < (unsigned long )last) {
    goto ldv_39228;
  } else {
  }
  ldv_39222:
  esas2r_start_ae_request___0(a, rq);
  return;
}
}
void esas2r_send_reset_ae(struct esas2r_adapter *a , bool pwr_mgt )
{
  struct atto_vda_ae_hdr ae ;
  {
  if ((int )pwr_mgt) {
    ae.bytype = 13U;
  } else {
    ae.bytype = 4U;
  }
  ae.byversion = 0U;
  ae.byflags = 0U;
  ae.bylength = 4U;
  esas2r_queue_fw_event(a, 4, (void *)(& ae), 128);
  return;
}
}
void esas2r_dummy_complete(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  return;
}
}
static void esas2r_check_req_rsp_sense(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  u8 snslen ;
  u8 snslen2 ;
  u8 *s ;
  {
  snslen2 = rq->func_rsp.scsi_rsp.sense_len;
  snslen = snslen2;
  if ((int )rq->sense_len < (int )snslen) {
    snslen = rq->sense_len;
  } else {
  }
  if ((unsigned int )snslen != 0U) {
    if ((unsigned long )rq->sense_buf != (unsigned long )((u8 *)0U)) {
      memcpy((void *)rq->sense_buf, (void const *)rq->__annonCompField106.data_buf,
               (size_t )snslen);
    } else {
      rq->sense_buf = (u8 *)rq->__annonCompField106.data_buf;
    }
    if ((unsigned int )snslen2 > 12U) {
      s = (u8 *)rq->__annonCompField106.data_buf;
      if ((unsigned int )*(s + 12UL) == 63U && (unsigned int )*(s + 13UL) == 14U) {
        esas2r_target_state_changed(a, (int )rq->target_id, 6);
      } else {
      }
    } else {
    }
  } else {
  }
  rq->sense_len = snslen;
  return;
}
}
void esas2r_complete_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )(rq->vrq)->scsi.function == 1U && (unsigned int )(rq->vrq)->flash.sub_func == 3U) {
    clear_bit(10L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  if ((unsigned long )rq->interrupt_cb != (unsigned long )((void (*)(struct esas2r_adapter * ,
                                                                     struct esas2r_request * ))0)) {
    (*(rq->interrupt_cb))(a, rq);
    if ((unsigned int )rq->req_stat == 254U) {
      esas2r_start_request(a, rq);
      return;
    } else {
    }
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )(rq->vrq)->scsi.function == 0U, 1L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect((unsigned int )rq->req_stat != 0U, 0L);
    if (tmp___0 != 0L) {
      esas2r_check_req_rsp_sense(a, rq);
      esas2r_log_request_failure(a, rq);
    } else {
    }
  } else {
  }
  (*(rq->comp_cb))(a, rq);
  return;
}
}
bool ldv_queue_work_on_161(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_162(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_164(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_171(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_175(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
bool ldv_queue_work_on_196(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_198(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_197(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_199(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_206(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv_scsi_add_host_with_dma_210(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
bool esas2r_send_task_mgmt(struct esas2r_adapter *a , struct esas2r_request *rqaux ,
                           u8 task_mgt_func ) ;
void esas2r_reset_bus(struct esas2r_adapter *a ) ;
__inline static struct esas2r_mem_desc *esas2r_alloc_sgl(struct esas2r_adapter *a )
{
  unsigned long flags ;
  struct list_head *sgl ;
  struct esas2r_mem_desc *result ;
  struct list_head const *__mptr ;
  int tmp ;
  long tmp___0 ;
  {
  result = (struct esas2r_mem_desc *)0;
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& a->free_sg_list_head));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    sgl = a->free_sg_list_head.next;
    __mptr = (struct list_head const *)sgl;
    result = (struct esas2r_mem_desc *)__mptr;
    list_del_init(sgl);
  } else {
  }
  spin_unlock_irqrestore(& a->sg_list_lock, flags);
  return (result);
}
}
void esas2r_start_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_target *t ;
  struct esas2r_request *startrq ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  {
  t = (struct esas2r_target *)0;
  startrq = rq;
  tmp___4 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___4 != 0) {
    tmp___6 = 1;
  } else {
    tmp___5 = constant_test_bit(21L, (unsigned long const volatile *)(& a->flags));
    if (tmp___5 != 0) {
      tmp___6 = 1;
    } else {
      tmp___6 = 0;
    }
  }
  tmp___7 = ldv__builtin_expect((long )tmp___6, 0L);
  if (tmp___7 != 0L) {
    if ((unsigned int )(rq->vrq)->scsi.function == 0U) {
      rq->req_stat = 112U;
    } else {
      rq->req_stat = 251U;
    }
  } else {
    tmp___3 = ldv__builtin_expect((unsigned int )(rq->vrq)->scsi.function == 0U, 1L);
    if (tmp___3 != 0L) {
      t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )rq->target_id;
      tmp___2 = ldv__builtin_expect((long )((unsigned long )a->targetdb_end <= (unsigned long )t || ((int )t->flags & 2) == 0),
                                 0L);
      if (tmp___2 != 0L) {
        rq->req_stat = 3U;
      } else {
        (rq->vrq)->scsi.__annonCompField92.__annonCompField91.target_id = t->virt_targ_id;
        if ((unsigned int )t->target_state != 5U) {
          tmp = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
          if (tmp == 0) {
            tmp___0 = 1;
          } else {
            tmp___0 = 0;
          }
        } else {
          tmp___0 = 0;
        }
        tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
        if (tmp___1 != 0L) {
          rq->req_stat = 3U;
        } else {
        }
      }
    } else {
    }
  }
  tmp___8 = ldv__builtin_expect((unsigned int )rq->req_stat != 254U, 0L);
  if (tmp___8 != 0L) {
    esas2r_complete_request(a, rq);
    return;
  } else {
  }
  ldv_spin_lock();
  tmp___9 = list_empty((struct list_head const *)(& a->defer_list));
  if (tmp___9 != 0) {
    tmp___10 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___10 == 0) {
      tmp___11 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
      if (tmp___11 == 0) {
        tmp___12 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
        if (tmp___12 == 0) {
          tmp___13 = 1;
        } else {
          tmp___13 = 0;
        }
      } else {
        tmp___13 = 0;
      }
    } else {
      tmp___13 = 0;
    }
  } else {
    tmp___13 = 0;
  }
  tmp___14 = ldv__builtin_expect((long )tmp___13, 1L);
  if (tmp___14 != 0L) {
    esas2r_local_start_request(a, startrq);
  } else {
    list_add_tail(& startrq->req_list, & a->defer_list);
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  return;
}
}
void esas2r_local_start_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((unsigned int )(rq->vrq)->scsi.function == 1U && (unsigned int )(rq->vrq)->flash.sub_func == 3U),
                         0L);
  if (tmp != 0L) {
    set_bit(10L, (unsigned long volatile *)(& a->flags));
  } else {
  }
  list_add_tail(& rq->req_list, & a->active_list);
  esas2r_start_vda_request(a, rq);
  return;
}
}
void esas2r_start_vda_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct esas2r_inbound_list_source_entry *element ;
  u32 dw ;
  int tmp ;
  int tmp___0 ;
  {
  rq->req_stat = 255U;
  a->last_write = a->last_write + 1U;
  if (a->last_write >= a->list_size) {
    a->last_write = 0U;
    tmp = constant_test_bit(23L, (unsigned long const volatile *)(& a->flags));
    if (tmp != 0) {
      clear_bit(23L, (unsigned long volatile *)(& a->flags));
    } else {
      set_bit(23L, (unsigned long volatile *)(& a->flags));
    }
  } else {
  }
  element = (struct esas2r_inbound_list_source_entry *)a->inbound_list_md.virt_addr + (unsigned long )a->last_write;
  if ((unsigned int )rq->vda_req_sz == 0U) {
    rq->vda_req_sz = (unsigned int )a->max_vdareq_size / 4U;
  } else {
  }
  element->address = (rq->vrq_md)->phys_addr;
  element->length = (unsigned int )rq->vda_req_sz;
  dw = a->last_write;
  tmp___0 = constant_test_bit(23L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    dw = dw | 16384U;
  } else {
  }
  writel(dw, (void volatile *)a->regs + 16408U);
  return;
}
}
bool esas2r_build_sg_list_sge(struct esas2r_adapter *a , struct esas2r_sg_context *sgc )
{
  struct esas2r_request *rq ;
  union atto_vda_req *vrq ;
  u32 rem ;
  u64 addr ;
  u32 len ;
  long tmp ;
  long tmp___0 ;
  u8 sgelen ;
  struct esas2r_mem_desc *sgl ;
  long tmp___1 ;
  long tmp___2 ;
  u16 reqsize ;
  {
  rq = sgc->first_req;
  vrq = rq->vrq;
  goto ldv_39122;
  ldv_39121:
  rem = 0U;
  len = (*(sgc->get_phys_addr))(sgc, & addr);
  tmp = ldv__builtin_expect(len == 0U, 0L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  tmp___0 = ldv__builtin_expect(sgc->length < len, 0L);
  if (tmp___0 != 0L) {
    len = sgc->length;
  } else {
  }
  another_entry: ;
  if (len > 4190208U) {
    rem = len - 4190208U;
    len = 4190208U;
  } else {
  }
  tmp___2 = ldv__builtin_expect((unsigned long )sgc->sge.a64.curr > (unsigned long )sgc->sge.a64.limit,
                             0L);
  if (tmp___2 != 0L) {
    sgl = esas2r_alloc_sgl(a);
    tmp___1 = ldv__builtin_expect((unsigned long )sgl == (unsigned long )((struct esas2r_mem_desc *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (0);
    } else {
    }
    sgelen = (int )((unsigned char )((long )sgc->sge.a64.curr)) - (int )((unsigned char )((long )sgc->sge.a64.last));
    memcpy(sgl->virt_addr, (void const *)sgc->sge.a64.last, (size_t )sgelen);
    sgc->sge.a64.curr = (struct atto_vda_sge *)sgl->virt_addr + (unsigned long )sgelen;
    sgc->sge.a64.limit = (struct atto_vda_sge *)sgl->virt_addr + ((unsigned long )sgl_page_size + 0xfffffffffffffff4UL);
    (sgc->sge.a64.last)->length = 2214592512U;
    (sgc->sge.a64.last)->address = sgl->phys_addr;
    if ((unsigned long )sgc->sge.a64.chain != (unsigned long )((struct atto_vda_sge *)0)) {
      (sgc->sge.a64.chain)->length = (sgc->sge.a64.chain)->length | (((unsigned int )((long )((u8 *)sgc->sge.a64.last + 1U)) - (unsigned int )((long )(rq->sg_table)->virt_addr)) + 786432U);
    } else {
      vrq->scsi.chain_offset = (int )((unsigned char )((long )sgc->sge.a64.last)) - (int )((unsigned char )((long )vrq));
      rq->vda_req_sz = (u16 )(((unsigned long )vrq->scsi.chain_offset + 15UL) / 4UL);
    }
    sgc->sge.a64.chain = sgc->sge.a64.last;
    list_add(& sgl->next_desc, & rq->sg_table_head);
  } else {
  }
  sgc->sge.a64.last = sgc->sge.a64.curr;
  (sgc->sge.a64.curr)->length = len | 67108864U;
  (sgc->sge.a64.curr)->address = (u64 )((unsigned int )addr);
  sgc->sge.a64.curr = sgc->sge.a64.curr + 1;
  sgc->cur_offset = sgc->cur_offset + (unsigned long )len;
  sgc->length = sgc->length - len;
  if (rem != 0U) {
    addr = (u64 )len + addr;
    len = rem;
    rem = 0U;
    goto another_entry;
  } else {
  }
  ldv_39122: ;
  if (sgc->length != 0U) {
    goto ldv_39121;
  } else {
  }
  (sgc->sge.a64.last)->length = (sgc->sge.a64.last)->length | 16777216U;
  if ((unsigned long )sgc->sge.a64.chain != (unsigned long )((struct atto_vda_sge *)0)) {
    (sgc->sge.a64.chain)->length = (sgc->sge.a64.chain)->length | ((unsigned int )((long )sgc->sge.a64.curr) - (unsigned int )((long )(rq->sg_table)->virt_addr));
  } else {
    reqsize = (u16 )(((unsigned long )((int )((unsigned short )((long )sgc->sge.a64.last)) - (int )((unsigned short )((long )vrq))) + 15UL) / 4UL);
    if ((int )rq->vda_req_sz < (int )reqsize) {
      rq->vda_req_sz = reqsize;
    } else {
    }
  }
  return (1);
}
}
static bool esas2r_build_prd_iblk(struct esas2r_adapter *a , struct esas2r_sg_context *sgc )
{
  struct esas2r_request *rq ;
  u64 addr ;
  u32 len ;
  struct esas2r_mem_desc *sgl ;
  u32 numchain ;
  u32 rem ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  rq = sgc->first_req;
  numchain = 1U;
  rem = 0U;
  goto ldv_39138;
  ldv_39137:
  len = (*(sgc->get_phys_addr))(sgc, & addr);
  tmp = ldv__builtin_expect(len == 0U, 0L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  tmp___0 = ldv__builtin_expect(sgc->length < len, 0L);
  if (tmp___0 != 0L) {
    len = sgc->length;
  } else {
  }
  another_entry: ;
  if (len > 4190208U) {
    rem = len - 4190208U;
    len = 4190208U;
  } else {
  }
  if (sgc->sge.prd.sge_cnt == 0U) {
    if (sgc->length == len) {
      (sgc->sge.prd.curr)->ctl_len = len;
      (sgc->sge.prd.curr)->address = addr;
      sgc->cur_offset = sgc->cur_offset + (unsigned long )len;
      sgc->length = sgc->length - len;
      numchain = 0U;
      goto ldv_39136;
    } else {
    }
    if ((unsigned long )sgc->sge.prd.chain != (unsigned long )((struct atto_physical_region_description *)0)) {
      (sgc->sge.prd.chain)->ctl_len = (sgc->sge.prd.chain)->ctl_len | sgc->sge.prd.sgl_max_cnt;
    } else {
    }
    sgl = esas2r_alloc_sgl(a);
    tmp___1 = ldv__builtin_expect((unsigned long )sgl == (unsigned long )((struct esas2r_mem_desc *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (0);
    } else {
    }
    list_add(& sgl->next_desc, & rq->sg_table_head);
    sgc->sge.prd.chain = sgc->sge.prd.curr;
    (sgc->sge.prd.chain)->ctl_len = 16777216U;
    (sgc->sge.prd.chain)->address = sgl->phys_addr;
    sgc->sge.prd.curr = (struct atto_physical_region_description *)sgl->virt_addr;
    sgc->sge.prd.sge_cnt = sgc->sge.prd.sgl_max_cnt - 1U;
  } else {
  }
  sgc->sge.prd.sge_cnt = sgc->sge.prd.sge_cnt - 1U;
  (sgc->sge.prd.curr)->ctl_len = len;
  (sgc->sge.prd.curr)->address = addr;
  sgc->sge.prd.curr = sgc->sge.prd.curr + 1;
  sgc->cur_offset = sgc->cur_offset + (unsigned long )len;
  sgc->length = sgc->length - len;
  if (rem != 0U) {
    addr = (u64 )len + addr;
    len = rem;
    rem = 0U;
    goto another_entry;
  } else {
  }
  ldv_39138: ;
  if (sgc->length != 0U) {
    goto ldv_39137;
  } else {
  }
  ldv_39136:
  tmp___2 = list_empty((struct list_head const *)(& rq->sg_table_head));
  if (tmp___2 == 0) {
    if ((unsigned long )sgc->sge.prd.chain != (unsigned long )((struct atto_physical_region_description *)0)) {
      (sgc->sge.prd.chain)->ctl_len = (sgc->sge.prd.chain)->ctl_len | ((sgc->sge.prd.sgl_max_cnt - sgc->sge.prd.sge_cnt) - numchain);
    } else {
    }
  } else {
  }
  return (1);
}
}
bool esas2r_build_sg_list_prd(struct esas2r_adapter *a , struct esas2r_sg_context *sgc )
{
  struct esas2r_request *rq ;
  u32 len ;
  struct esas2r_target *t ;
  u8 is_i_o ;
  u16 reqsize ;
  struct atto_physical_region_description *curr_iblk_chn ;
  u8 *cdb ;
  u32 lbalo ;
  u32 startlba ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  rq = sgc->first_req;
  len = sgc->length;
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )rq->target_id;
  is_i_o = 0U;
  cdb = (u8 *)(& (rq->vrq)->scsi.cdb);
  if (((unsigned int )(rq->vrq)->scsi.function == 0U && (unsigned int )t->target_state == 5U) && ((int )t->flags & 1) == 0) {
    lbalo = 0U;
    switch ((int )(rq->vrq)->scsi.cdb[0]) {
    case 136: ;
    case 138:
    lbalo = (unsigned int )((unsigned short )((int )((short )*(cdb + 9UL)) | (int )((short )((int )*(cdb + 8UL) << 8)))) | ((unsigned int )((unsigned short )((int )((short )*(cdb + 7UL)) | (int )((short )((int )*(cdb + 6UL) << 8)))) << 16);
    is_i_o = 1U;
    goto ldv_39153;
    case 168: ;
    case 170: ;
    case 40: ;
    case 42:
    lbalo = (unsigned int )((unsigned short )((int )((short )*(cdb + 5UL)) | (int )((short )((int )*(cdb + 4UL) << 8)))) | ((unsigned int )((unsigned short )((int )((short )*(cdb + 3UL)) | (int )((short )((int )*(cdb + 2UL) << 8)))) << 16);
    is_i_o = 1U;
    goto ldv_39153;
    case 8: ;
    case 10:
    lbalo = (unsigned int )((unsigned short )((int )((short )*(cdb + 3UL)) | (int )((short )((int )*(cdb + 2UL) << 8)))) | (((unsigned int )*(cdb + 1UL) & 31U) << 16);
    is_i_o = 1U;
    goto ldv_39153;
    default: ;
    goto ldv_39153;
    }
    ldv_39153: ;
    if ((unsigned int )is_i_o != 0U) {
      (rq->vrq)->scsi.__annonCompField92.__annonCompField91.iblk_cnt_prd = 0U;
      startlba = t->inter_block - ((t->inter_block - 1U) & lbalo);
      sgc->length = t->block_size * startlba;
      if (((t->inter_block - 1U) & lbalo) == 0U) {
        rq->flags = (u8 )((unsigned int )rq->flags | 4U);
      } else {
      }
      if (sgc->length > len) {
        sgc->length = len;
      } else {
      }
    } else {
      sgc->length = len;
    }
  } else {
    sgc->length = len;
  }
  curr_iblk_chn = (struct atto_physical_region_description *)sgc->sge.a64.curr;
  sgc->sge.prd.sgl_max_cnt = (u32 )((unsigned long )sgl_page_size / 12UL);
  goto ldv_39163;
  ldv_39162:
  sgc->sge.prd.sge_cnt = 0U;
  sgc->sge.prd.chain = (struct atto_physical_region_description *)0;
  sgc->sge.prd.curr = curr_iblk_chn;
  len = len - sgc->length;
  tmp = esas2r_build_prd_iblk(a, sgc);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  curr_iblk_chn = curr_iblk_chn + 1;
  if ((unsigned int )is_i_o != 0U) {
    (rq->vrq)->scsi.__annonCompField92.__annonCompField91.iblk_cnt_prd = (u8 )((int )(rq->vrq)->scsi.__annonCompField92.__annonCompField91.iblk_cnt_prd + 1);
    if (t->inter_byte < len) {
      sgc->length = t->inter_byte;
    } else {
      sgc->length = len;
    }
  } else {
  }
  ldv_39163: ;
  if (len != 0U) {
    goto ldv_39162;
  } else {
  }
  reqsize = (u16 )((unsigned int )((int )((unsigned short )((long )curr_iblk_chn)) - (int )((unsigned short )((long )rq->vrq))) / 4U);
  if ((int )rq->vda_req_sz < (int )reqsize) {
    rq->vda_req_sz = reqsize;
  } else {
  }
  return (1);
}
}
static void esas2r_handle_pending_reset(struct esas2r_adapter *a , u32 currtime )
{
  u32 delta ;
  u32 doorbell ;
  u32 ver ;
  {
  delta = currtime - a->chip_init_time;
  if (delta <= 2000U) {
  } else
  if (delta > 179999U) {
    esas2r_local_reset_adapter(a);
  } else {
    doorbell = readl((void const volatile *)a->regs + 66688U);
    if (doorbell == 4294967295U || (doorbell & 128U) == 0U) {
      esas2r_force_interrupt(a);
    } else {
      ver = doorbell & 458752U;
      writel(doorbell, (void volatile *)a->regs + 66688U);
      if (ver == 0U) {
        set_bit(3L, (unsigned long volatile *)(& a->flags));
        set_bit(24L, (unsigned long volatile *)(& a->flags));
        a->max_vdareq_size = 128U;
        a->build_sgl = & esas2r_build_sg_list_sge;
      } else
      if (ver == 65536U) {
        set_bit(3L, (unsigned long volatile *)(& a->flags));
        clear_bit(24L, (unsigned long volatile *)(& a->flags));
        a->max_vdareq_size = 1024U;
        a->build_sgl = & esas2r_build_sg_list_prd;
      } else {
        esas2r_local_reset_adapter(a);
      }
    }
  }
  return;
}
}
void esas2r_timer_tick(struct esas2r_adapter *a )
{
  u32 currtime ;
  unsigned int tmp ;
  u32 deltatime ;
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
  tmp = jiffies_to_msecs(jiffies);
  currtime = tmp;
  deltatime = currtime - a->last_tick_time;
  a->last_tick_time = currtime;
  if (a->chip_uptime != 0U) {
    tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      tmp___1 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
      if (tmp___1 == 0) {
        if (a->chip_uptime <= deltatime) {
          a->chip_uptime = 0U;
        } else {
          a->chip_uptime = a->chip_uptime - deltatime;
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___7 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
  if (tmp___7 != 0) {
    tmp___2 = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
    if (tmp___2 == 0) {
      tmp___3 = constant_test_bit(3L, (unsigned long const volatile *)(& a->flags));
      if (tmp___3 == 0) {
        esas2r_handle_pending_reset(a, currtime);
      } else {
      }
    } else {
    }
  } else {
    tmp___4 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
    if (tmp___4 != 0) {
      esas2r_disc_check_complete(a);
    } else {
    }
    tmp___6 = constant_test_bit(17L, (unsigned long const volatile *)(& a->flags));
    if (tmp___6 != 0) {
      tmp___5 = constant_test_bit(16L, (unsigned long const volatile *)(& a->flags));
      if (tmp___5 != 0) {
        if (currtime - a->__annonCompField108.heartbeat_time > 2999U) {
          clear_bit(16L, (unsigned long volatile *)(& a->flags));
          esas2r_log(1L, "heartbeat failed");
          esas2r_local_reset_adapter(a);
        } else {
        }
      } else {
        set_bit(16L, (unsigned long volatile *)(& a->flags));
        a->__annonCompField108.heartbeat_time = currtime;
        esas2r_force_interrupt(a);
      }
    } else {
    }
  }
  tmp___8 = atomic_read((atomic_t const *)(& a->disable_cnt));
  if (tmp___8 == 0) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  return;
}
}
bool esas2r_send_task_mgmt(struct esas2r_adapter *a , struct esas2r_request *rqaux ,
                           u8 task_mgt_func )
{
  u16 targetid ;
  u8 lun ;
  bool ret ;
  struct esas2r_request *rq ;
  struct list_head *next ;
  struct list_head *element ;
  unsigned long flags ;
  struct list_head comp_list ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  targetid = rqaux->target_id;
  lun = (unsigned char )(rqaux->vrq)->scsi.flags;
  ret = 0;
  comp_list.next = & comp_list;
  comp_list.prev = & comp_list;
  ldv_spin_lock();
  element = a->defer_list.next;
  next = element->next;
  goto ldv_39193;
  ldv_39192:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
  if (((unsigned int )(rq->vrq)->scsi.function == 0U && (int )rq->target_id == (int )targetid) && ((int )((unsigned char )(rq->vrq)->scsi.flags) == (int )lun || (unsigned int )task_mgt_func == 32U)) {
    if ((unsigned int )rq->req_stat == 254U) {
      tmp = esas2r_ioreq_aborted(a, rq, 10);
      if ((int )tmp) {
        list_add_tail(& rq->comp_list, & comp_list);
      } else {
      }
    } else {
    }
  } else {
  }
  element = next;
  next = element->next;
  ldv_39193: ;
  if ((unsigned long )(& a->defer_list) != (unsigned long )element) {
    goto ldv_39192;
  } else {
  }
  rqaux->sense_len = 0U;
  (rqaux->vrq)->scsi.length = 0U;
  rqaux->target_id = targetid;
  (rqaux->vrq)->scsi.flags = (rqaux->vrq)->scsi.flags | (u32 )lun;
  memset((void *)(& (rqaux->vrq)->scsi.cdb), 0, 16UL);
  (rqaux->vrq)->scsi.flags = (rqaux->vrq)->scsi.flags;
  tmp___0 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    rqaux->req_stat = 0U;
    element = a->active_list.next;
    next = element->next;
    goto ldv_39198;
    ldv_39197:
    __mptr___0 = (struct list_head const *)element;
    rq = (struct esas2r_request *)__mptr___0 + 0xfffffffffffffff0UL;
    if (((unsigned int )(rq->vrq)->scsi.function == 0U && (int )rq->target_id == (int )targetid) && ((int )((unsigned char )(rq->vrq)->scsi.flags) == (int )lun || (unsigned int )task_mgt_func == 32U)) {
      rqaux->req_stat = 2U;
    } else {
    }
    element = next;
    next = element->next;
    ldv_39198: ;
    if ((unsigned long )(& a->active_list) != (unsigned long )element) {
      goto ldv_39197;
    } else {
    }
    ret = 1;
  } else {
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  tmp___1 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 == 0) {
    esas2r_start_request(a, rqaux);
  } else {
  }
  esas2r_comp_list_drain(a, & comp_list);
  tmp___2 = atomic_read((atomic_t const *)(& a->disable_cnt));
  if (tmp___2 == 0) {
    esas2r_do_deferred_processes(a);
  } else {
  }
  return (ret);
}
}
void esas2r_reset_bus(struct esas2r_adapter *a )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  esas2r_log(3L, "performing a bus reset");
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp == 0) {
    tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___0 == 0) {
      tmp___1 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
      if (tmp___1 == 0) {
        set_bit(4L, (unsigned long volatile *)(& a->flags));
        set_bit(5L, (unsigned long volatile *)(& a->flags));
        set_bit(9L, (unsigned long volatile *)(& a->flags));
        esas2r_schedule_tasklet(a);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
bool esas2r_ioreq_aborted(struct esas2r_adapter *a , struct esas2r_request *rq , u8 status )
{
  {
  list_del_init(& rq->req_list);
  if (rq->timeout > 4294967293U) {
    rq->req_stat = 2U;
    return (1);
  } else {
  }
  rq->req_stat = status;
  return (1);
}
}
bool ldv_queue_work_on_196(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_197(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_198(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_199(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_206(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_210(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __might_fault(char const * , int ) ;
extern void __bad_percpu_size(void) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern struct tss_struct cpu_tss ;
__inline static unsigned long current_top_of_stack(void)
{
  u64 pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  default:
  __bad_percpu_size();
  }
  ldv_5541: ;
  return ((unsigned long )pfo_ret__);
}
}
__inline static struct thread_info *current_thread_info(void)
{
  unsigned long tmp ;
  {
  tmp = current_top_of_stack();
  return ((struct thread_info *)(tmp - 32768UL));
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
bool ldv_queue_work_on_231(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_233(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_232(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_234(struct workqueue_struct *ldv_func_arg1 ) ;
extern void schedule(void) ;
void *ldv_kmem_cache_alloc_241(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
}
}
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) - (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) - (6652f-6642f))))) - (662b-661b)), 0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 3*32+16)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n .long 661b - .\n .long 6642f - .\n .word ( 9*32+ 9)\n .byte 663b-661b\n .byte 6652f-6642f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\tcall %P5\n6651:\n\t6642:\n\tcall %P6\n6652:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
__inline static int __copy_from_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  __might_fault("./arch/x86/include/asm/uaccess_64.h", 97);
  tmp = __copy_from_user_nocheck(dst, src, size);
  return (tmp);
}
}
__inline static int __copy_to_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xcb\n6651:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 9*32+20)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0x0f,0x01,0xca\n6651:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  __might_fault("./arch/x86/include/asm/uaccess_64.h", 147);
  tmp = __copy_to_user_nocheck(dst, src, size);
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_245(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
u8 *esas2r_buffered_ioctl ;
dma_addr_t esas2r_buffered_ioctl_addr ;
u32 esas2r_buffered_ioctl_size ;
struct pci_dev *esas2r_buffered_ioctl_pcid ;
int esas2r_write_params(struct esas2r_adapter *a , struct esas2r_request *rq , struct esas2r_sas_nvram *data ) ;
int esas2r_ioctl_handler(void *hostdata , int cmd , void *arg ) ;
int esas2r_ioctl(struct scsi_device *sd , int cmd , void *arg ) ;
u8 handle_hba_ioctl(struct esas2r_adapter *a , struct atto_ioctl *ioctl_hba ) ;
int esas2r_read_fw(struct esas2r_adapter *a , char *buf , long off , int count ) ;
int esas2r_write_fw(struct esas2r_adapter *a , char const *buf , long off , int count ) ;
int esas2r_read_vda(struct esas2r_adapter *a , char *buf , long off , int count ) ;
int esas2r_write_vda(struct esas2r_adapter *a , char const *buf , long off , int count ) ;
int esas2r_read_fs(struct esas2r_adapter *a , char *buf , long off , int count ) ;
int esas2r_write_fs(struct esas2r_adapter *a , char const *buf , long off , int count ) ;
void esas2r_free_request(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
struct esas2r_request *esas2r_alloc_request(struct esas2r_adapter *a ) ;
struct esas2r_target *esas2r_targ_db_find_by_sas_addr(struct esas2r_adapter *a , u64 *sas_addr ) ;
u16 esas2r_targ_db_find_next_present(struct esas2r_adapter *a , u16 target_id ) ;
bool esas2r_process_vda_ioctl(struct esas2r_adapter *a , struct atto_ioctl_vda *vi ,
                              struct esas2r_request *rq , struct esas2r_sg_context *sgc ) ;
static struct semaphore buffered_ioctl_semaphore = {{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "(buffered_ioctl_semaphore).lock",
                                                   0, 0UL}}, 1U, {& buffered_ioctl_semaphore.wait_list,
                                                                  & buffered_ioctl_semaphore.wait_list}};
static void complete_fm_api_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  a->fm_api_command_done = 1;
  __wake_up(& a->fm_api_waiter, 1U, 1, (void *)0);
  return;
}
}
static u32 get_physaddr_fm_api(struct esas2r_sg_context *sgc , u64 *addr )
{
  struct esas2r_adapter *a ;
  int offset ;
  {
  a = sgc->adapter;
  offset = (int )((unsigned int )((long )sgc->cur_offset) - (unsigned int )((long )a->save_offset));
  *addr = a->firmware.phys + (u64 )offset;
  return ((u32 )(a->firmware.orig_len - offset));
}
}
static u32 get_physaddr_fm_api_header(struct esas2r_sg_context *sgc , u64 *addr )
{
  struct esas2r_adapter *a ;
  int offset ;
  {
  a = sgc->adapter;
  offset = (int )((unsigned int )((long )sgc->cur_offset) - (unsigned int )((long )a->save_offset));
  *addr = a->firmware.header_buff_phys + (u64 )offset;
  return (2176U - (u32 )offset);
}
}
static void do_fm_api(struct esas2r_adapter *a , struct esas2r_flash_img *fi )
{
  struct esas2r_request *rq ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___2 ;
  {
  tmp = down_interruptible(& a->fm_api_semaphore);
  if (tmp != 0) {
    fi->status = 9U;
    return;
  } else {
  }
  rq = esas2r_alloc_request(a);
  if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
    fi->status = 9U;
    goto free_sem;
  } else {
  }
  if ((unsigned long )(& a->firmware.header) == (unsigned long )fi) {
    a->firmware.header_buff = dma_alloc_attrs(& (a->pcid)->dev, 2176UL, & a->firmware.header_buff_phys,
                                              208U, (struct dma_attrs *)0);
    if ((unsigned long )a->firmware.header_buff == (unsigned long )((void *)0)) {
      fi->status = 9U;
      goto free_req;
    } else {
    }
    memcpy(a->firmware.header_buff, (void const *)fi, 2176UL);
    a->save_offset = (u8 *)a->firmware.header_buff;
    a->fm_api_sgc.get_phys_addr = & get_physaddr_fm_api_header;
  } else {
    a->save_offset = (u8 *)fi;
    a->fm_api_sgc.get_phys_addr = & get_physaddr_fm_api;
  }
  rq->comp_cb = & complete_fm_api_req;
  a->fm_api_command_done = 0;
  a->fm_api_sgc.cur_offset = a->save_offset;
  tmp___0 = esas2r_fm_api(a, (struct esas2r_flash_img *)a->save_offset, rq, & a->fm_api_sgc);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    goto all_done;
  } else {
  }
  goto ldv_39151;
  ldv_39150:
  __ret = 0;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3322/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/esas2r/esas2r_ioctl.c",
                162, 0);
  if (a->fm_api_command_done == 0) {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_39147:
    tmp___2 = prepare_to_wait_event(& a->fm_api_waiter, & __wait, 1);
    __int = tmp___2;
    if (a->fm_api_command_done != 0) {
      goto ldv_39146;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_39146;
    } else {
    }
    schedule();
    goto ldv_39147;
    ldv_39146:
    finish_wait(& a->fm_api_waiter, & __wait);
    __ret = (int )__ret___0;
  } else {
  }
  ldv_39151: ;
  if (a->fm_api_command_done == 0) {
    goto ldv_39150;
  } else {
  }
  all_done: ;
  if ((unsigned long )(& a->firmware.header) == (unsigned long )fi) {
    memcpy((void *)fi, (void const *)a->firmware.header_buff, 2176UL);
    dma_free_attrs(& (a->pcid)->dev, 2176UL, a->firmware.header_buff, a->firmware.header_buff_phys,
                   (struct dma_attrs *)0);
  } else {
  }
  free_req:
  esas2r_free_request(a, rq);
  free_sem:
  up(& a->fm_api_semaphore);
  return;
}
}
static void complete_nvr_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  a->nvram_command_done = 1;
  __wake_up(& a->nvram_waiter, 1U, 1, (void *)0);
  return;
}
}
static u32 get_physaddr_buffered_ioctl(struct esas2r_sg_context *sgc , u64 *addr )
{
  int offset ;
  {
  offset = (int )((unsigned int )((long )sgc->cur_offset) - (unsigned int )((long )esas2r_buffered_ioctl));
  *addr = (dma_addr_t )offset + esas2r_buffered_ioctl_addr;
  return (esas2r_buffered_ioctl_size - (u32 )offset);
}
}
static void complete_buffered_ioctl_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  a->buffered_ioctl_done = 1;
  __wake_up(& a->buffered_ioctl_waiter, 1U, 1, (void *)0);
  return;
}
}
static u8 handle_buffered_ioctl(struct esas2r_buffered_ioctl *bi )
{
  struct esas2r_adapter *a ;
  struct esas2r_request *rq ;
  struct esas2r_sg_context sgc ;
  u8 result ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___2 ;
  {
  a = bi->a;
  result = 0U;
  tmp = down_interruptible(& buffered_ioctl_semaphore);
  if (tmp != 0) {
    return (108U);
  } else {
  }
  if ((unsigned long )esas2r_buffered_ioctl != (unsigned long )((u8 *)0U)) {
    if (bi->length > esas2r_buffered_ioctl_size) {
      dma_free_attrs(& (a->pcid)->dev, (unsigned long )esas2r_buffered_ioctl_size,
                     (void *)esas2r_buffered_ioctl, esas2r_buffered_ioctl_addr, (struct dma_attrs *)0);
      goto allocate_buffer;
    } else {
    }
  } else {
    allocate_buffer:
    esas2r_buffered_ioctl_size = bi->length;
    esas2r_buffered_ioctl_pcid = a->pcid;
    tmp___0 = dma_alloc_attrs(& (a->pcid)->dev, (unsigned long )esas2r_buffered_ioctl_size,
                              & esas2r_buffered_ioctl_addr, 208U, (struct dma_attrs *)0);
    esas2r_buffered_ioctl = (u8 *)tmp___0;
  }
  if ((unsigned long )esas2r_buffered_ioctl == (unsigned long )((u8 *)0U)) {
    esas2r_log(1L, "could not allocate %d bytes of consistent memory for a buffered ioctl!",
               bi->length);
    result = 108U;
    goto exit_cleanly;
  } else {
  }
  memcpy((void *)esas2r_buffered_ioctl, (void const *)bi->ioctl, (size_t )bi->length);
  rq = esas2r_alloc_request(a);
  if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
    esas2r_log(1L, "could not allocate an internal request");
    result = 108U;
    goto exit_cleanly;
  } else {
  }
  a->buffered_ioctl_done = 0;
  rq->comp_cb = & complete_buffered_ioctl_req;
  sgc.cur_offset = esas2r_buffered_ioctl + (unsigned long )bi->offset;
  sgc.get_phys_addr = & get_physaddr_buffered_ioctl;
  sgc.length = esas2r_buffered_ioctl_size;
  tmp___1 = (*(bi->callback))(a, rq, & sgc, bi->context);
  if (tmp___1 == 0) {
    a->buffered_ioctl_done = 0;
    goto free_andexit_cleanly;
  } else {
  }
  goto ldv_39186;
  ldv_39185:
  __ret = 0;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3322/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/esas2r/esas2r_ioctl.c",
                276, 0);
  if (a->buffered_ioctl_done == 0) {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_39182:
    tmp___2 = prepare_to_wait_event(& a->buffered_ioctl_waiter, & __wait, 1);
    __int = tmp___2;
    if (a->buffered_ioctl_done != 0) {
      goto ldv_39181;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_39181;
    } else {
    }
    schedule();
    goto ldv_39182;
    ldv_39181:
    finish_wait(& a->buffered_ioctl_waiter, & __wait);
    __ret = (int )__ret___0;
  } else {
  }
  ldv_39186: ;
  if (a->buffered_ioctl_done == 0) {
    goto ldv_39185;
  } else {
  }
  free_andexit_cleanly: ;
  if ((unsigned int )result == 0U && (unsigned long )bi->done_callback != (unsigned long )((void (*)(struct esas2r_adapter * ,
                                                                                                     struct esas2r_request * ,
                                                                                                     void * ))0)) {
    (*(bi->done_callback))(a, rq, bi->done_context);
  } else {
  }
  esas2r_free_request(a, rq);
  exit_cleanly: ;
  if ((unsigned int )result == 0U) {
    memcpy(bi->ioctl, (void const *)esas2r_buffered_ioctl, (size_t )bi->length);
  } else {
  }
  up(& buffered_ioctl_semaphore);
  return (result);
}
}
static int smp_ioctl_callback(struct esas2r_adapter *a , struct esas2r_request *rq ,
                              struct esas2r_sg_context *sgc , void *context )
{
  struct atto_ioctl_smp *si ;
  bool tmp ;
  int tmp___0 ;
  {
  si = (struct atto_ioctl_smp *)esas2r_buffered_ioctl;
  esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->ioctl.__annonCompField96.sge));
  esas2r_build_ioctl_req(a, rq, sgc->length, 2);
  tmp = esas2r_build_sg_list(a, rq, sgc);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    si->status = 3U;
    return (0);
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
}
}
static u8 handle_smp_ioctl(struct esas2r_adapter *a , struct atto_ioctl_smp *si )
{
  struct esas2r_buffered_ioctl bi ;
  u8 tmp ;
  {
  memset((void *)(& bi), 0, 64UL);
  bi.a = a;
  bi.ioctl = (void *)si;
  bi.length = (si->req_length + si->rsp_length) + 68U;
  bi.offset = 0U;
  bi.callback = & smp_ioctl_callback;
  tmp = handle_buffered_ioctl(& bi);
  return (tmp);
}
}
static void esas2r_csmi_ioctl_tunnel_comp_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  rq->target_id = rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.target_id;
  (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | (u32 )rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.lun;
  (*(rq->aux_req_cb))(a, rq);
  return;
}
}
static bool csmi_ioctl_tunnel(struct esas2r_adapter *a , union atto_ioctl_csmi *ci ,
                              struct esas2r_request *rq , struct esas2r_sg_context *sgc ,
                              u32 ctrl_code , u16 target_id )
{
  struct atto_vda_ioctl_req *ioctl ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  ioctl = & (rq->vrq)->ioctl;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->ioctl.__annonCompField96.sge));
  esas2r_build_ioctl_req(a, rq, sgc->length, 1);
  ioctl->__annonCompField95.csmi.ctrl_code = ctrl_code;
  ioctl->__annonCompField95.csmi.target_id = target_id;
  ioctl->__annonCompField95.csmi.lun = (unsigned char )(rq->vrq)->scsi.flags;
  rq->aux_req_cx = (void *)ci;
  rq->aux_req_cb = rq->comp_cb;
  rq->comp_cb = & esas2r_csmi_ioctl_tunnel_comp_cb;
  tmp___0 = esas2r_build_sg_list(a, rq, sgc);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
}
}
static bool check_lun(struct scsi_lun lun )
{
  bool result ;
  {
  result = (bool )(((((((unsigned int )lun.scsi_lun[7] == 0U && (unsigned int )lun.scsi_lun[6] == 0U) && (unsigned int )lun.scsi_lun[5] == 0U) && (unsigned int )lun.scsi_lun[4] == 0U) && (unsigned int )lun.scsi_lun[3] == 0U) && (unsigned int )lun.scsi_lun[2] == 0U) && (unsigned int )lun.scsi_lun[0] == 0U);
  return (result);
}
}
static int csmi_ioctl_callback(struct esas2r_adapter *a , struct esas2r_request *rq ,
                               struct esas2r_sg_context *sgc , void *context )
{
  struct atto_csmi *ci ;
  union atto_ioctl_csmi *ioctl_csmi ;
  u8 path ;
  u8 tid ;
  u8 lun ;
  u32 sts ;
  struct esas2r_target *t ;
  unsigned long flags ;
  struct atto_csmi_get_dev_addr *gda ;
  struct atto_csmi_task_mgmt *tm ;
  struct atto_csmi_get_driver_info *gdi ;
  char const *tmp ;
  struct atto_csmi_get_cntlr_cfg *gcc ;
  int tmp___0 ;
  struct atto_csmi_get_cntlr_sts *gcs ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct atto_csmi_get_scsi_addr *gsa ;
  struct scsi_lun lun___0 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct atto_csmi_get_dev_addr *gda___0 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  ci = (struct atto_csmi *)context;
  ioctl_csmi = (union atto_ioctl_csmi *)esas2r_buffered_ioctl;
  path = 0U;
  tid = 0U;
  lun = 0U;
  sts = 0U;
  if (ci->control_code == 28U) {
    gda = & ci->data.dev_addr;
    path = gda->path_id;
    tid = gda->target_id;
    lun = gda->lun;
  } else
  if (ci->control_code == 29U) {
    tm = & ci->data.tsk_mgt;
    path = tm->path_id;
    tid = tm->target_id;
    lun = tm->lun;
  } else {
  }
  if ((unsigned int )path != 0U) {
    rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.csmi_status = 3U;
    return (0);
  } else {
  }
  rq->target_id = (u16 )tid;
  (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | (u32 )lun;
  switch (ci->control_code) {
  case 1U:
  gdi = & ioctl_csmi->drvr_info;
  tmp = esas2r_get_model_name(a);
  strcpy((char *)(& gdi->description), tmp);
  gdi->csmi_major_rev = 0U;
  gdi->csmi_minor_rev = 81U;
  goto ldv_39235;
  case 2U:
  gcc = & ioctl_csmi->cntlr_cfg;
  gcc->base_io_addr = 0U;
  pci_read_config_dword((struct pci_dev const *)a->pcid, 24, & gcc->__annonCompField99.base_memaddr_lo);
  pci_read_config_dword((struct pci_dev const *)a->pcid, 28, & gcc->__annonCompField99.base_memaddr_hi);
  gcc->board_id = (unsigned int )(a->pcid)->subsystem_device | ((unsigned int )(a->pcid)->subsystem_vendor << 16);
  gcc->slot_num = 65535U;
  gcc->cntlr_class = 5U;
  gcc->io_bus_type = 3U;
  gcc->__annonCompField100.pci_addr.bus_num = ((a->pcid)->bus)->number;
  gcc->__annonCompField100.pci_addr.device_num = (unsigned int )((u8 )((a->pcid)->devfn >> 3)) & 31U;
  gcc->__annonCompField100.pci_addr.function_num = (unsigned int )((u8 )(a->pcid)->devfn) & 7U;
  memset((void *)(& gcc->serial_num), 0, 81UL);
  gcc->major_rev = (u16 )((unsigned char )a->fw_version);
  gcc->minor_rev = (u16 )((unsigned char )((int )((unsigned short )a->fw_version) >> 8));
  gcc->build_rev = (u16 )((unsigned char )(a->fw_version >> 16));
  gcc->release_rev = (u16 )((unsigned char )((int )((unsigned short )(a->fw_version >> 16)) >> 8));
  gcc->bios_major_rev = (u16 )((unsigned char )((int )((unsigned short )(a->flash_ver >> 16)) >> 8));
  gcc->bios_minor_rev = (u16 )((unsigned char )(a->flash_ver >> 16));
  gcc->bios_build_rev = (unsigned short )a->flash_ver;
  tmp___0 = constant_test_bit(6L, (unsigned long const volatile *)(& a->flags2));
  if (tmp___0 != 0) {
    gcc->cntlr_flags = 5U;
  } else {
    gcc->cntlr_flags = 10U;
  }
  gcc->rrom_major_rev = 0U;
  gcc->rrom_minor_rev = 0U;
  gcc->rrom_build_rev = 0U;
  gcc->rrom_release_rev = 0U;
  gcc->rrom_biosmajor_rev = 0U;
  gcc->rrom_biosminor_rev = 0U;
  gcc->rrom_biosbuild_rev = 0U;
  gcc->rrom_biosrelease_rev = 0U;
  goto ldv_39235;
  case 3U:
  gcs = & ioctl_csmi->cntlr_sts;
  tmp___1 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 != 0) {
    gcs->status = 2U;
  } else {
    gcs->status = 1U;
  }
  gcs->offline_reason = 0U;
  goto ldv_39235;
  case 4U: ;
  case 10U: ;
  case 11U:
  sts = 2U;
  goto ldv_39235;
  case 23U: ;
  case 24U: ;
  case 25U: ;
  case 20U: ;
  case 21U: ;
  case 22U: ;
  case 26U: ;
  case 30U: ;
  case 60U:
  tmp___2 = csmi_ioctl_tunnel(a, ioctl_csmi, rq, sgc, ci->control_code, 65535);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    sts = 1U;
    goto ldv_39235;
  } else {
  }
  return (1);
  case 27U:
  gsa = & ioctl_csmi->scsi_addr;
  memcpy((void *)(& lun___0), (void const *)(& gsa->sas_lun), 8UL);
  tmp___4 = check_lun(lun___0);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    sts = 2013U;
    goto ldv_39235;
  } else {
  }
  ldv_spin_lock();
  t = esas2r_targ_db_find_by_sas_addr(a, (u64 *)(& gsa->sas_addr));
  spin_unlock_irqrestore(& a->mem_lock, flags);
  if ((unsigned long )t == (unsigned long )((struct esas2r_target *)0)) {
    sts = 2013U;
    goto ldv_39235;
  } else {
  }
  gsa->host_index = 255U;
  gsa->lun = gsa->sas_lun[1];
  rq->target_id = esas2r_targ_get_id(t, a);
  goto ldv_39235;
  case 28U:
  gda___0 = & ioctl_csmi->dev_addr;
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )rq->target_id;
  if (((unsigned long )a->targetdb_end <= (unsigned long )t || (unsigned int )t->target_state != 5U) || t->sas_addr == 0ULL) {
    sts = 2014U;
    goto ldv_39235;
  } else {
  }
  *((u64 *)(& gda___0->sas_addr)) = t->sas_addr;
  memset((void *)(& gda___0->sas_lun), 0, 8UL);
  gda___0->sas_lun[1] = (unsigned char )(rq->vrq)->scsi.flags;
  goto ldv_39235;
  case 29U:
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )rq->target_id;
  if (((unsigned long )a->targetdb_end <= (unsigned long )t || (unsigned int )t->target_state != 5U) || ((int )t->flags & 1) == 0) {
    sts = 2014U;
    goto ldv_39235;
  } else {
  }
  tmp___6 = csmi_ioctl_tunnel(a, ioctl_csmi, rq, sgc, ci->control_code, (int )t->phys_targ_id);
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    sts = 1U;
    goto ldv_39235;
  } else {
  }
  return (1);
  default:
  sts = 2U;
  goto ldv_39235;
  }
  ldv_39235:
  rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.csmi_status = sts;
  return (0);
}
}
static void csmi_ioctl_done_callback(struct esas2r_adapter *a , struct esas2r_request *rq ,
                                     void *context )
{
  struct atto_csmi *ci ;
  union atto_ioctl_csmi *ioctl_csmi ;
  struct atto_csmi_get_driver_info *gdi ;
  struct atto_csmi_get_scsi_addr *gsa ;
  {
  ci = (struct atto_csmi *)context;
  ioctl_csmi = (union atto_ioctl_csmi *)esas2r_buffered_ioctl;
  switch (ci->control_code) {
  case 1U:
  gdi = & ioctl_csmi->drvr_info;
  strcpy((char *)(& gdi->name), "1.00");
  gdi->major_rev = 1U;
  gdi->minor_rev = 0U;
  gdi->build_rev = 0U;
  gdi->release_rev = 0U;
  goto ldv_39268;
  case 27U:
  gsa = & ioctl_csmi->scsi_addr;
  if (rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.csmi_status == 0U) {
    gsa->target_id = (u8 )rq->target_id;
    gsa->path_id = 0U;
  } else {
  }
  goto ldv_39268;
  }
  ldv_39268:
  ci->status = rq->func_rsp.ioctl_rsp.__annonCompField98.csmi.csmi_status;
  return;
}
}
static u8 handle_csmi_ioctl(struct esas2r_adapter *a , struct atto_csmi *ci )
{
  struct esas2r_buffered_ioctl bi ;
  u8 tmp ;
  {
  memset((void *)(& bi), 0, 64UL);
  bi.a = a;
  bi.ioctl = (void *)(& ci->data);
  bi.length = 2064U;
  bi.offset = 0U;
  bi.callback = & csmi_ioctl_callback;
  bi.context = (void *)ci;
  bi.done_callback = & csmi_ioctl_done_callback;
  bi.done_context = (void *)ci;
  tmp = handle_buffered_ioctl(& bi);
  return (tmp);
}
}
static bool hba_ioctl_tunnel(struct esas2r_adapter *a , struct atto_ioctl *hi , struct esas2r_request *rq ,
                             struct esas2r_sg_context *sgc )
{
  bool tmp ;
  int tmp___0 ;
  {
  esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->ioctl.__annonCompField96.sge));
  esas2r_build_ioctl_req(a, rq, sgc->length, 0);
  tmp = esas2r_build_sg_list(a, rq, sgc);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    hi->status = 3U;
    return (0);
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
}
}
static void scsi_passthru_comp_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct atto_ioctl *hi ;
  struct atto_hba_scsi_pass_thru *spt ;
  u8 sts ;
  u16 tmp ;
  {
  hi = (struct atto_ioctl *)rq->aux_req_cx;
  spt = & hi->data.scsi_pass_thru;
  sts = 1U;
  spt->scsi_status = rq->func_rsp.scsi_rsp.scsi_stat;
  spt->sense_length = rq->sense_len;
  spt->residual_length = rq->func_rsp.scsi_rsp.residual_length;
  switch ((int )rq->req_stat) {
  case 0: ;
  case 8:
  sts = 0U;
  goto ldv_39291;
  case 7:
  sts = 3U;
  goto ldv_39291;
  case 6:
  sts = 2U;
  goto ldv_39291;
  case 3: ;
  case 112:
  sts = 4U;
  goto ldv_39291;
  case 4:
  sts = 5U;
  goto ldv_39291;
  case 5:
  sts = 6U;
  goto ldv_39291;
  case 251:
  sts = 10U;
  goto ldv_39291;
  case 2:
  sts = 9U;
  goto ldv_39291;
  case 10:
  sts = 8U;
  goto ldv_39291;
  case 13:
  sts = 7U;
  goto ldv_39291;
  }
  ldv_39291:
  spt->req_status = sts;
  tmp = esas2r_targ_db_find_next_present(a, (int )((unsigned short )spt->target_id));
  spt->target_id = (u32 )tmp;
  (*(rq->aux_req_cb))(a, rq);
  return;
}
}
static int hba_ioctl_callback(struct esas2r_adapter *a , struct esas2r_request *rq ,
                              struct esas2r_sg_context *sgc , void *context )
{
  struct atto_ioctl *hi ;
  u8 *class_code ;
  struct atto_hba_get_adapter_info *gai ;
  int pcie_cap_reg ;
  u16 stat ;
  u32 caps ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  struct atto_hba_get_adapter_address *gaa ;
  bool tmp___3 ;
  struct atto_hba_trace *trc ;
  bool tmp___4 ;
  u32 len ;
  u32 offset ;
  u32 total_len ;
  int tmp___5 ;
  int tmp___6 ;
  struct atto_hba_scsi_pass_thru *spt ;
  struct scsi_lun lun ;
  bool tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  struct atto_hba_get_device_address *gda ;
  struct esas2r_target *t ;
  bool tmp___12 ;
  u16 tmp___13 ;
  bool tmp___14 ;
  struct atto_hba_adap_ctrl *ac ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  struct atto_hba_get_device_info *gdi ;
  struct esas2r_target *t___0 ;
  bool tmp___20 ;
  u16 tmp___21 ;
  {
  hi = (struct atto_ioctl *)esas2r_buffered_ioctl;
  hi->status = 0U;
  switch ((int )hi->function) {
  case 0:
  class_code = (u8 *)(& (a->pcid)->class);
  gai = & hi->data.get_adap_info;
  if ((int )hi->flags & 1) {
    hi->status = 5U;
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
    goto ldv_39313;
  } else {
  }
  memset((void *)gai, 0, 512UL);
  gai->pci.vendor_id = (a->pcid)->vendor;
  gai->pci.device_id = (a->pcid)->device;
  gai->pci.ss_vendor_id = (a->pcid)->subsystem_vendor;
  gai->pci.ss_device_id = (a->pcid)->subsystem_device;
  gai->pci.class_code[0] = *class_code;
  gai->pci.class_code[1] = *(class_code + 1UL);
  gai->pci.class_code[2] = *(class_code + 2UL);
  gai->pci.rev_id = (a->pcid)->revision;
  gai->pci.bus_num = ((a->pcid)->bus)->number;
  gai->pci.dev_num = (unsigned int )((u8 )((a->pcid)->devfn >> 3)) & 31U;
  gai->pci.func_num = (unsigned int )((u8 )(a->pcid)->devfn) & 7U;
  pcie_cap_reg = pci_find_capability(a->pcid, 16);
  if (pcie_cap_reg != 0) {
    pci_read_config_word((struct pci_dev const *)a->pcid, pcie_cap_reg + 18, & stat);
    pci_read_config_dword((struct pci_dev const *)a->pcid, pcie_cap_reg + 12, & caps);
    gai->pci.link_speed_curr = (unsigned int )((unsigned char )stat) & 15U;
    gai->pci.link_speed_max = (unsigned int )((unsigned char )caps) & 15U;
    gai->pci.link_width_curr = (unsigned char )(((int )stat & 1008) >> 4);
    gai->pci.link_width_max = (unsigned char )((caps & 1008U) >> 4);
  } else {
  }
  gai->pci.msi_vector_cnt = 1U;
  if ((unsigned int )*((unsigned char *)a->pcid + 2530UL) != 0U) {
    gai->pci.interrupt_mode = 3U;
  } else
  if ((unsigned int )*((unsigned char *)a->pcid + 2530UL) != 0U) {
    gai->pci.interrupt_mode = 2U;
  } else {
    gai->pci.interrupt_mode = 1U;
  }
  gai->adap_type = 2U;
  tmp = constant_test_bit(6L, (unsigned long const volatile *)(& a->flags2));
  if (tmp != 0) {
    gai->adap_type = 10U;
  } else {
  }
  tmp___0 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    gai->adap_flags = (u8 )((unsigned int )gai->adap_flags | 1U);
  } else {
  }
  gai->adap_flags = (u8 )((unsigned int )gai->adap_flags | 6U);
  if ((((unsigned int )(a->pcid)->subsystem_device == 75U || (unsigned int )(a->pcid)->subsystem_device == 74U) || (unsigned int )(a->pcid)->subsystem_device == 77U) || (unsigned int )(a->pcid)->subsystem_device == 16487U) {
    gai->adap_flags = (u8 )((unsigned int )gai->adap_flags | 64U);
  } else {
  }
  gai->num_ports = 8U;
  gai->num_phys = 8U;
  strcpy((char *)(& gai->firmware_rev), (char const *)(& a->fw_rev));
  strcpy((char *)(& gai->flash_rev), (char const *)(& a->flash_rev));
  tmp___1 = esas2r_get_model_name_short(a);
  strcpy((char *)(& gai->model_name_short), tmp___1);
  tmp___2 = esas2r_get_model_name(a);
  strcpy((char *)(& gai->model_name), tmp___2);
  gai->num_targets = 256U;
  gai->num_busses = 1U;
  gai->num_targsper_bus = gai->num_targets;
  gai->num_lunsper_targ = 256U;
  if ((unsigned int )(a->pcid)->subsystem_device == 76U || (unsigned int )(a->pcid)->subsystem_device == 75U) {
    gai->num_connectors = 4U;
  } else {
    gai->num_connectors = 2U;
  }
  gai->adap_flags2 = (u8 )((unsigned int )gai->adap_flags2 | 8U);
  gai->num_targets_backend = a->num_targets_backend;
  gai->tunnel_flags = a->ioctl_tunnel & 127U;
  goto ldv_39313;
  case 1:
  gaa = & hi->data.get_adap_addr;
  if ((int )hi->flags & 1) {
    hi->status = 5U;
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
  } else
  if ((unsigned int )gaa->addr_type == 0U || (unsigned int )gaa->addr_type == 1U) {
    if ((unsigned int )gaa->addr_type == 0U && (unsigned int )gaa->port_id > 7U) {
      hi->status = 10U;
    } else {
      memcpy((void *)(& gaa->address), (void const *)(& (a->nvram)->sas_addr),
               8UL);
      gaa->addr_len = 8U;
    }
  } else {
    hi->status = 8U;
  }
  goto ldv_39313;
  case 2: ;
  if ((int )hi->flags & 1) {
    tmp___3 = hba_ioctl_tunnel(a, hi, rq, sgc);
    if ((int )tmp___3) {
      return (1);
    } else {
    }
    goto ldv_39313;
  } else {
  }
  hi->status = 5U;
  goto ldv_39313;
  case 3:
  trc = & hi->data.trace;
  if ((int )hi->flags & 1) {
    tmp___4 = hba_ioctl_tunnel(a, hi, rq, sgc);
    if ((int )tmp___4) {
      return (1);
    } else {
    }
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version > 1U) {
    hi->status = 2U;
    hi->version = 1U;
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )trc->trace_type == 1U && (unsigned int )hi->version != 0U) {
    if ((unsigned int )trc->trace_func == 4U) {
      len = hi->data_length;
      offset = trc->current_offset;
      total_len = 524288U;
      tmp___5 = constant_test_bit(4L, (unsigned long const volatile *)(& a->flags2));
      if (tmp___5 == 0) {
        total_len = 0U;
      } else {
      }
      if (len > total_len) {
        len = total_len;
      } else {
      }
      if ((offset >= total_len || offset + len > total_len) || len == 0U) {
        hi->status = 8U;
        goto ldv_39313;
      } else {
      }
      memcpy((void *)trc + 1U, (void const *)(& a->fw_coredump_buff) + (unsigned long )offset,
               (size_t )len);
      hi->data_length = len;
    } else
    if ((unsigned int )trc->trace_func == 5U) {
      memset((void *)(& a->fw_coredump_buff), 0, 524288UL);
      clear_bit(4L, (unsigned long volatile *)(& a->flags2));
    } else
    if ((unsigned int )trc->trace_func != 0U) {
      hi->status = 5U;
      goto ldv_39313;
    } else {
    }
    trc->trace_mask = 0U;
    trc->current_offset = 0U;
    trc->total_length = 524288U;
    tmp___6 = constant_test_bit(4L, (unsigned long const volatile *)(& a->flags2));
    if (tmp___6 == 0) {
      trc->total_length = 0U;
    } else {
    }
  } else {
    hi->status = 5U;
  }
  goto ldv_39313;
  case 4:
  spt = & hi->data.scsi_pass_thru;
  memcpy((void *)(& lun), (void const *)(& spt->lun), 8UL);
  if ((int )hi->flags & 1) {
    tmp___7 = hba_ioctl_tunnel(a, hi, rq, sgc);
    if ((int )tmp___7) {
      return (1);
    } else {
    }
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
    goto ldv_39313;
  } else {
  }
  if (spt->target_id > 255U) {
    hi->status = 8U;
    goto ldv_39313;
  } else {
    tmp___8 = check_lun(lun);
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    if (tmp___9) {
      hi->status = 8U;
      goto ldv_39313;
    } else {
    }
  }
  esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)0);
  sgc->length = hi->data_length;
  sgc->cur_offset = sgc->cur_offset + 416UL;
  rq->target_id = (unsigned short )spt->target_id;
  (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | (u32 )spt->lun[1];
  memcpy((void *)(& (rq->vrq)->scsi.cdb), (void const *)(& spt->cdb), 16UL);
  (rq->vrq)->scsi.length = hi->data_length;
  rq->sense_len = spt->sense_length;
  rq->sense_buf = (u8 *)(& spt->sense_data);
  rq->aux_req_cx = (void *)hi;
  rq->aux_req_cb = rq->comp_cb;
  rq->comp_cb = & scsi_passthru_comp_cb;
  if ((int )spt->flags & 1) {
    (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 33554432U;
  } else
  if ((spt->flags & 2U) != 0U) {
    (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 16777216U;
  } else
  if (sgc->length != 0U) {
    hi->status = 8U;
    goto ldv_39313;
  } else {
  }
  if ((spt->flags & 16U) != 0U) {
    (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 512U;
  } else
  if ((spt->flags & 8U) != 0U) {
    (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 256U;
  } else {
  }
  tmp___10 = esas2r_build_sg_list(a, rq, sgc);
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    hi->status = 3U;
    goto ldv_39313;
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
  case 5:
  gda = & hi->data.get_dev_addr;
  if ((int )hi->flags & 1) {
    tmp___12 = hba_ioctl_tunnel(a, hi, rq, sgc);
    if ((int )tmp___12) {
      return (1);
    } else {
    }
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
    goto ldv_39313;
  } else {
  }
  if (gda->target_id > 255U) {
    hi->status = 8U;
    goto ldv_39313;
  } else {
  }
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )((unsigned short )gda->target_id);
  if ((unsigned int )t->target_state != 5U) {
    hi->status = 1U;
  } else
  if ((unsigned int )gda->addr_type == 0U) {
    if (t->sas_addr == 0ULL) {
      hi->status = 5U;
    } else {
      *((u64 *)(& gda->address)) = t->sas_addr;
      gda->addr_len = 8U;
    }
  } else
  if ((unsigned int )gda->addr_type == 1U) {
    hi->status = 10U;
  } else {
    hi->status = 8U;
  }
  tmp___13 = esas2r_targ_db_find_next_present(a, (int )((unsigned short )gda->target_id));
  gda->target_id = (u32 )tmp___13;
  goto ldv_39313;
  case 6: ;
  case 12:
  tmp___14 = hba_ioctl_tunnel(a, hi, rq, sgc);
  if ((int )tmp___14) {
    return (1);
  } else {
  }
  goto ldv_39313;
  case 14:
  ac = & hi->data.adap_ctrl;
  if ((int )hi->flags & 1) {
    hi->status = 5U;
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )ac->adap_func == 0U) {
    esas2r_reset_adapter(a);
  } else
  if ((unsigned int )ac->adap_func != 1U) {
    hi->status = 5U;
    goto ldv_39313;
  } else {
  }
  tmp___19 = constant_test_bit(1L, (unsigned long const volatile *)(& a->flags));
  if (tmp___19 != 0) {
    ac->adap_state = 2U;
  } else {
    tmp___18 = constant_test_bit(2L, (unsigned long const volatile *)(& a->flags));
    if (tmp___18 != 0) {
      ac->adap_state = 3U;
    } else {
      tmp___17 = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
      if (tmp___17 != 0) {
        ac->adap_state = 4U;
      } else {
        tmp___16 = constant_test_bit(7L, (unsigned long const volatile *)(& a->flags));
        if (tmp___16 != 0) {
          ac->adap_state = 6U;
        } else {
          tmp___15 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
          if (tmp___15 != 0) {
            ac->adap_state = 5U;
          } else {
            ac->adap_state = 1U;
          }
        }
      }
    }
  }
  goto ldv_39313;
  case 15:
  gdi = & hi->data.get_dev_info;
  if ((int )hi->flags & 1) {
    tmp___20 = hba_ioctl_tunnel(a, hi, rq, sgc);
    if ((int )tmp___20) {
      return (1);
    } else {
    }
    goto ldv_39313;
  } else {
  }
  if ((unsigned int )hi->version != 0U) {
    hi->status = 2U;
    hi->version = 0U;
    goto ldv_39313;
  } else {
  }
  if (gdi->target_id > 255U) {
    hi->status = 8U;
    goto ldv_39313;
  } else {
  }
  t___0 = (struct esas2r_target *)(& a->targetdb) + (unsigned long )((unsigned short )gdi->target_id);
  tmp___21 = esas2r_targ_db_find_next_present(a, (int )((unsigned short )gdi->target_id));
  gdi->target_id = (u32 )tmp___21;
  if ((unsigned int )t___0->target_state != 5U) {
    hi->status = 1U;
    goto ldv_39313;
  } else {
  }
  hi->status = 5U;
  goto ldv_39313;
  default:
  hi->status = 4U;
  goto ldv_39313;
  }
  ldv_39313: ;
  return (0);
}
}
static void hba_ioctl_done_callback(struct esas2r_adapter *a , struct esas2r_request *rq ,
                                    void *context )
{
  struct atto_ioctl *ioctl_hba ;
  struct atto_hba_get_adapter_info *gai ;
  {
  ioctl_hba = (struct atto_ioctl *)esas2r_buffered_ioctl;
  if ((unsigned int )ioctl_hba->function == 0U) {
    gai = & ioctl_hba->data.get_adap_info;
    gai->drvr_rev_major = 1U;
    gai->drvr_rev_minor = 0U;
    strcpy((char *)(& gai->drvr_rev_ascii), "1.00");
    strcpy((char *)(& gai->drvr_name), "esas2r");
    gai->num_busses = 1U;
    gai->num_targsper_bus = 256U;
    gai->num_lunsper_targ = 1U;
  } else {
  }
  return;
}
}
u8 handle_hba_ioctl(struct esas2r_adapter *a , struct atto_ioctl *ioctl_hba )
{
  struct esas2r_buffered_ioctl bi ;
  u8 tmp ;
  {
  memset((void *)(& bi), 0, 64UL);
  bi.a = a;
  bi.ioctl = (void *)ioctl_hba;
  bi.length = ioctl_hba->data_length + 576U;
  bi.callback = & hba_ioctl_callback;
  bi.context = (void *)0;
  bi.done_callback = & hba_ioctl_done_callback;
  bi.done_context = (void *)0;
  bi.offset = 0U;
  tmp = handle_buffered_ioctl(& bi);
  return (tmp);
}
}
int esas2r_write_params(struct esas2r_adapter *a , struct esas2r_request *rq , struct esas2r_sas_nvram *data )
{
  int result ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool tmp___0 ;
  {
  result = 0;
  a->nvram_command_done = 0;
  rq->comp_cb = & complete_nvr_req;
  tmp___0 = esas2r_nvram_write(a, rq, data);
  if ((int )tmp___0) {
    goto ldv_39366;
    ldv_39365:
    __ret = 0;
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3322/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/esas2r/esas2r_ioctl.c",
                  1265, 0);
    if (a->nvram_command_done == 0) {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_39362:
      tmp = prepare_to_wait_event(& a->nvram_waiter, & __wait, 1);
      __int = tmp;
      if (a->nvram_command_done != 0) {
        goto ldv_39361;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_39361;
      } else {
      }
      schedule();
      goto ldv_39362;
      ldv_39361:
      finish_wait(& a->nvram_waiter, & __wait);
      __ret = (int )__ret___0;
    } else {
    }
    ldv_39366: ;
    if (a->nvram_command_done == 0) {
      goto ldv_39365;
    } else {
    }
    if ((unsigned int )rq->req_stat == 0U) {
      result = 1;
    } else {
    }
  } else {
  }
  return (result);
}
}
int esas2r_ioctl_handler(void *hostdata , int cmd , void *arg )
{
  struct atto_express_ioctl *ioctl ;
  struct esas2r_adapter *a ;
  struct esas2r_request *rq ;
  u16 code ;
  int err ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int i ;
  int k ;
  int tmp___5 ;
  {
  ioctl = (struct atto_express_ioctl *)0;
  esas2r_log(4L, "ioctl (%p, %x, %p)", hostdata, cmd, arg);
  if (((unsigned long )arg == (unsigned long )((void *)0) || cmd <= 17663) || cmd > 17679) {
    return (-524);
  } else {
  }
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )arg, 524320UL, tmp->addr_limit.seg);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 == 0L) {
    esas2r_log(2L, "ioctl_handler access_ok failed for cmd %d, address %p", cmd, arg);
    return (-14);
  } else {
  }
  tmp___3 = kzalloc(524320UL, 208U);
  ioctl = (struct atto_express_ioctl *)tmp___3;
  if ((unsigned long )ioctl == (unsigned long )((struct atto_express_ioctl *)0)) {
    esas2r_log(2L, "ioctl_handler kzalloc failed for %d bytes", 524320UL);
    return (-12);
  } else {
  }
  err = __copy_from_user((void *)ioctl, (void const *)arg, 524320U);
  if (err != 0) {
    esas2r_log(2L, "copy_from_user didn\'t copy everything (err %d, cmd %d)", err,
               cmd);
    kfree((void const *)ioctl);
    return (-14);
  } else {
  }
  tmp___4 = memcmp((void const *)(& ioctl->header.signature), (void const *)"Express",
                   8UL);
  if (tmp___4 != 0) {
    esas2r_log(2L, "invalid signature");
    kfree((void const *)ioctl);
    return (-524);
  } else {
  }
  ioctl->header.return_code = 0U;
  err = 0;
  if (cmd == 17668) {
    i = 0;
    k = 0;
    ioctl->data.chanlist.num_channels = 0U;
    goto ldv_39382;
    ldv_39381: ;
    if ((unsigned long )esas2r_adapters[i] != (unsigned long )((struct esas2r_adapter *)0)) {
      ioctl->data.chanlist.num_channels = ioctl->data.chanlist.num_channels + 1U;
      ioctl->data.chanlist.channel[k] = (u8 )i;
      k = k + 1;
    } else {
    }
    i = i + 1;
    ldv_39382: ;
    if (i <= 31) {
      goto ldv_39381;
    } else {
    }
    goto ioctl_done;
  } else {
  }
  if ((unsigned int )ioctl->header.channel == 255U) {
    a = (struct esas2r_adapter *)hostdata;
  } else {
    a = esas2r_adapters[(int )ioctl->header.channel];
    if ((unsigned int )ioctl->header.channel > 31U || (unsigned long )a == (unsigned long )((struct esas2r_adapter *)0)) {
      ioctl->header.return_code = 104U;
      esas2r_log(2L, "bad channel value");
      kfree((void const *)ioctl);
      return (-524);
    } else {
    }
  }
  switch (cmd) {
  case 17664: ;
  if ((unsigned int )ioctl->data.fwrw.img_type == 5U) {
    err = esas2r_write_fw(a, (char const *)(& ioctl->data.fwrw.image), 0L, 524320);
    if (err >= 0) {
      err = esas2r_read_fw(a, (char *)(& ioctl->data.fwrw.image), 0L, 524320);
    } else {
    }
  } else
  if ((unsigned int )ioctl->data.fwrw.img_type == 6U) {
    err = esas2r_write_fs(a, (char const *)(& ioctl->data.fwrw.image), 0L, 524320);
    if (err >= 0) {
      err = esas2r_read_fs(a, (char *)(& ioctl->data.fwrw.image), 0L, 524320);
    } else {
    }
  } else {
    ioctl->header.return_code = 107U;
  }
  goto ldv_39386;
  case 17665:
  memcpy((void *)(& ioctl->data.prw.data_buffer), (void const *)a->nvram, 256UL);
  ioctl->data.prw.code = 1U;
  goto ldv_39386;
  case 17666:
  rq = esas2r_alloc_request(a);
  if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
    kfree((void const *)ioctl);
    esas2r_log(2L, "could not allocate an internal request");
    return (-12);
  } else {
  }
  tmp___5 = esas2r_write_params(a, rq, (struct esas2r_sas_nvram *)(& ioctl->data.prw.data_buffer));
  code = (u16 )tmp___5;
  ioctl->data.prw.code = code;
  esas2r_free_request(a, rq);
  goto ldv_39386;
  case 17670:
  esas2r_nvram_get_defaults(a, (struct esas2r_sas_nvram *)(& ioctl->data.prw.data_buffer));
  ioctl->data.prw.code = 1U;
  goto ldv_39386;
  case 17669:
  ioctl->data.chaninfo.major_rev = 1U;
  ioctl->data.chaninfo.minor_rev = 0U;
  ioctl->data.chaninfo.IRQ = (u8 )(a->pcid)->irq;
  ioctl->data.chaninfo.device_id = (a->pcid)->device;
  ioctl->data.chaninfo.vendor_id = (a->pcid)->vendor;
  ioctl->data.chaninfo.ven_dev_id = (a->pcid)->subsystem_device;
  ioctl->data.chaninfo.revision_id = (a->pcid)->revision;
  ioctl->data.chaninfo.pci_bus = ((a->pcid)->bus)->number;
  ioctl->data.chaninfo.pci_dev_func = (u8 )(a->pcid)->devfn;
  ioctl->data.chaninfo.core_rev = 0U;
  ioctl->data.chaninfo.host_no = (u8 )(a->host)->host_no;
  ioctl->data.chaninfo.hbaapi_rev = 0U;
  goto ldv_39386;
  case 17674:
  ioctl->header.return_code = handle_smp_ioctl(a, & ioctl->data.ioctl_smp);
  goto ldv_39386;
  case 17675:
  ioctl->header.return_code = handle_csmi_ioctl(a, & ioctl->data.csmi);
  goto ldv_39386;
  case 17676:
  ioctl->header.return_code = handle_hba_ioctl(a, & ioctl->data.ioctl_hba);
  goto ldv_39386;
  case 17677:
  err = esas2r_write_vda(a, (char const *)(& ioctl->data.ioctl_vda), 0L, (int )(ioctl->data.ioctl_vda.data_length + 632U));
  if (err >= 0) {
    err = esas2r_read_vda(a, (char *)(& ioctl->data.ioctl_vda), 0L, (int )(ioctl->data.ioctl_vda.data_length + 632U));
  } else {
  }
  goto ldv_39386;
  case 17679:
  ioctl->data.modinfo.adapter = (void *)a;
  ioctl->data.modinfo.pci_dev = (void *)a->pcid;
  ioctl->data.modinfo.scsi_host = (void *)a->host;
  ioctl->data.modinfo.host_no = (unsigned short )(a->host)->host_no;
  goto ldv_39386;
  default:
  ioctl->header.return_code = 101U;
  }
  ldv_39386: ;
  ioctl_done: ;
  if (err < 0) {
    esas2r_log(2L, "err %d on ioctl cmd %d", err, cmd);
    switch (err) {
    case -12: ;
    case -16:
    ioctl->header.return_code = 108U;
    goto ldv_39399;
    case -38: ;
    case -22:
    ioctl->header.return_code = 110U;
    goto ldv_39399;
    default:
    ioctl->header.return_code = 109U;
    goto ldv_39399;
    }
    ldv_39399: ;
  } else {
  }
  err = __copy_to_user(arg, (void const *)ioctl, 524320U);
  if (err != 0) {
    esas2r_log(2L, "ioctl_handler copy_to_user didn\'t copy everything (err %d, cmd %d)",
               err, cmd);
    kfree((void const *)ioctl);
    return (-14);
  } else {
  }
  kfree((void const *)ioctl);
  return (0);
}
}
int esas2r_ioctl(struct scsi_device *sd , int cmd , void *arg )
{
  int tmp ;
  {
  tmp = esas2r_ioctl_handler((void *)(& (sd->host)->hostdata), cmd, arg);
  return (tmp);
}
}
static void free_fw_buffers(struct esas2r_adapter *a )
{
  {
  if ((unsigned long )a->firmware.data != (unsigned long )((u8 *)0U)) {
    dma_free_attrs(& (a->pcid)->dev, (unsigned long )a->firmware.orig_len, (void *)a->firmware.data,
                   a->firmware.phys, (struct dma_attrs *)0);
    a->firmware.data = (u8 *)0U;
  } else {
  }
  return;
}
}
static int allocate_fw_buffers(struct esas2r_adapter *a , u32 length )
{
  void *tmp ;
  {
  free_fw_buffers(a);
  a->firmware.orig_len = (int )length;
  tmp = dma_alloc_attrs(& (a->pcid)->dev, (unsigned long )length, & a->firmware.phys,
                        208U, (struct dma_attrs *)0);
  a->firmware.data = (u8 *)tmp;
  if ((unsigned long )a->firmware.data == (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  return (1);
}
}
int esas2r_read_fw(struct esas2r_adapter *a , char *buf , long off , int count )
{
  int size ;
  int __min1 ;
  int __min2 ;
  u32 length ;
  int tmp ;
  int size___0 ;
  int _min1 ;
  int _min2 ;
  {
  if ((unsigned int )a->firmware.state == 1U) {
    __min1 = count;
    __min2 = 2176;
    size = __min1 < __min2 ? __min1 : __min2;
    memcpy((void *)buf, (void const *)(& a->firmware.header), (size_t )size);
    return (size);
  } else {
  }
  if ((unsigned int )a->firmware.state == 2U) {
    length = a->firmware.header.length;
    if (off == 0L) {
      if ((unsigned int )a->firmware.header.action == 1U) {
        tmp = allocate_fw_buffers(a, length);
        if (tmp == 0) {
          return (-12);
        } else {
        }
        memcpy((void *)a->firmware.data, (void const *)(& a->firmware.header),
                 2176UL);
        do_fm_api(a, (struct esas2r_flash_img *)a->firmware.data);
      } else
      if ((unsigned int )a->firmware.header.action == 2U) {
        _min1 = count;
        _min2 = 2176;
        size___0 = _min1 < _min2 ? _min1 : _min2;
        do_fm_api(a, & a->firmware.header);
        memcpy((void *)buf, (void const *)(& a->firmware.header), (size_t )size___0);
        return (size___0);
      } else {
        return (-38);
      }
    } else {
    }
    if ((long )count + off > (long )length) {
      count = (int )(length - (unsigned int )off);
    } else {
    }
    if (count < 0) {
      return (0);
    } else {
    }
    if ((unsigned long )a->firmware.data == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
    memcpy((void *)buf, (void const *)a->firmware.data + (unsigned long )off,
             (size_t )count);
    if ((long )length <= (long )count + off) {
      free_fw_buffers(a);
    } else {
    }
    return (count);
  } else {
  }
  return (-22);
}
}
int esas2r_write_fw(struct esas2r_adapter *a , char const *buf , long off , int count )
{
  u32 length ;
  struct esas2r_flash_img *header ;
  int min_size ;
  int tmp ;
  {
  if (off == 0L) {
    header = (struct esas2r_flash_img *)buf;
    min_size = 2160;
    a->firmware.state = 0;
    if (count <= 3 || (unsigned int )header->fi_version > 1U) {
      return (-22);
    } else {
    }
    if ((unsigned int )header->fi_version == 1U) {
      min_size = 2176;
    } else {
    }
    if (count < min_size) {
      return (-22);
    } else {
    }
    length = header->length;
    if (length > 1048576U) {
      return (-22);
    } else {
    }
    if ((unsigned int )header->action == 0U) {
      tmp = allocate_fw_buffers(a, length);
      if (tmp == 0) {
        return (-12);
      } else {
      }
      memcpy((void *)(& a->firmware.header), (void const *)buf, 2176UL);
    } else
    if ((unsigned int )header->action == 1U || (unsigned int )header->action == 2U) {
      memcpy((void *)(& a->firmware.header), (void const *)buf, 2176UL);
      a->firmware.state = 2;
      return (count);
    } else {
      return (-38);
    }
  } else {
    length = a->firmware.header.length;
  }
  if ((long )count + off > (long )length) {
    count = (int )(length - (unsigned int )off);
  } else {
  }
  if (count > 0) {
    if ((unsigned int )a->firmware.header.action == 1U) {
      return (count);
    } else {
    }
    if ((unsigned long )a->firmware.data == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
    memcpy((void *)a->firmware.data + (unsigned long )off, (void const *)buf,
             (size_t )count);
    if ((long )length == (long )count + off) {
      do_fm_api(a, (struct esas2r_flash_img *)a->firmware.data);
      memcpy((void *)(& a->firmware.header), (void const *)a->firmware.data, 2176UL);
      a->firmware.state = 1;
      free_fw_buffers(a);
    } else {
    }
  } else {
  }
  return (count);
}
}
static void vda_complete_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  a->vda_command_done = 1;
  __wake_up(& a->vda_waiter, 1U, 1, (void *)0);
  return;
}
}
static u32 get_physaddr_vda(struct esas2r_sg_context *sgc , u64 *addr )
{
  struct esas2r_adapter *a ;
  int offset ;
  {
  a = sgc->adapter;
  offset = (int )((unsigned int )((long )sgc->cur_offset) - (unsigned int )((long )a->vda_buffer));
  *addr = a->ppvda_buffer + (u64 )offset;
  return (262416U - (u32 )offset);
}
}
int esas2r_read_vda(struct esas2r_adapter *a , char *buf , long off , int count )
{
  struct esas2r_request *rq ;
  struct atto_ioctl_vda *vi ;
  struct esas2r_sg_context sgc ;
  bool wait_for_completion___0 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  {
  if ((unsigned long )a->vda_buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  if (off == 0L) {
    vi = (struct atto_ioctl_vda *)a->vda_buffer;
    rq = esas2r_alloc_request(a);
    if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
      return (-16);
    } else {
    }
    rq->comp_cb = & vda_complete_req;
    sgc.first_req = rq;
    sgc.adapter = a;
    sgc.cur_offset = a->vda_buffer + 272UL;
    sgc.get_phys_addr = & get_physaddr_vda;
    a->vda_command_done = 0;
    wait_for_completion___0 = esas2r_process_vda_ioctl(a, vi, rq, & sgc);
    if ((int )wait_for_completion___0) {
      goto ldv_39469;
      ldv_39468:
      __ret = 0;
      __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3322/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/esas2r/esas2r_ioctl.c",
                    1891, 0);
      if (a->vda_command_done == 0) {
        __ret___0 = 0L;
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        ldv_39465:
        tmp = prepare_to_wait_event(& a->vda_waiter, & __wait, 1);
        __int = tmp;
        if (a->vda_command_done != 0) {
          goto ldv_39464;
        } else {
        }
        if (__int != 0L) {
          __ret___0 = __int;
          goto ldv_39464;
        } else {
        }
        schedule();
        goto ldv_39465;
        ldv_39464:
        finish_wait(& a->vda_waiter, & __wait);
        __ret = (int )__ret___0;
      } else {
      }
      ldv_39469: ;
      if (a->vda_command_done == 0) {
        goto ldv_39468;
      } else {
      }
    } else {
    }
    esas2r_free_request(a, rq);
  } else {
  }
  if ((unsigned long )off > 262416UL) {
    return (0);
  } else {
  }
  if ((unsigned long )((long )count + off) > 262416UL) {
    count = (int )(262416U - (unsigned int )off);
  } else {
  }
  if (count < 0) {
    return (0);
  } else {
  }
  memcpy((void *)buf, (void const *)a->vda_buffer + (unsigned long )off, (size_t )count);
  return (count);
}
}
int esas2r_write_vda(struct esas2r_adapter *a , char const *buf , long off , int count )
{
  dma_addr_t dma_addr ;
  void *tmp ;
  {
  if ((unsigned long )a->vda_buffer == (unsigned long )((u8 *)0U)) {
    tmp = dma_alloc_attrs(& (a->pcid)->dev, 262416UL, & dma_addr, 208U, (struct dma_attrs *)0);
    a->vda_buffer = (u8 *)tmp;
    a->ppvda_buffer = dma_addr;
  } else {
  }
  if ((unsigned long )a->vda_buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  if ((unsigned long )off > 262416UL) {
    return (0);
  } else {
  }
  if ((unsigned long )((long )count + off) > 262416UL) {
    count = (int )(262416U - (unsigned int )off);
  } else {
  }
  if (count <= 0) {
    return (0);
  } else {
  }
  memcpy((void *)a->vda_buffer + (unsigned long )off, (void const *)buf, (size_t )count);
  return (count);
}
}
static void fs_api_complete_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  a->fs_api_command_done = 1;
  __wake_up(& a->fs_api_waiter, 1U, 1, (void *)0);
  return;
}
}
static u32 get_physaddr_fs_api(struct esas2r_sg_context *sgc , u64 *addr )
{
  struct esas2r_adapter *a ;
  struct esas2r_ioctl_fs *fs ;
  u32 offset ;
  {
  a = sgc->adapter;
  fs = (struct esas2r_ioctl_fs *)a->fs_api_buffer;
  offset = (u32 )((long )sgc->cur_offset) - (u32 )((long )fs);
  *addr = a->ppfs_api_buffer + (u64 )offset;
  return (a->fs_api_buffer_size - offset);
}
}
int esas2r_read_fs(struct esas2r_adapter *a , char *buf , long off , int count )
{
  struct esas2r_request *rq ;
  struct esas2r_sg_context sgc ;
  struct esas2r_ioctl_fs *fs ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___2 ;
  {
  if ((unsigned long )a->fs_api_buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  if (off == 0L) {
    fs = (struct esas2r_ioctl_fs *)a->fs_api_buffer;
    tmp = down_interruptible(& a->fs_api_semaphore);
    if (tmp != 0) {
      busy:
      fs->status = 3U;
      return (-16);
    } else {
    }
    rq = esas2r_alloc_request(a);
    if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
      up(& a->fs_api_semaphore);
      goto busy;
    } else {
    }
    rq->comp_cb = & fs_api_complete_req;
    sgc.cur_offset = (u8 *)(& fs->data);
    sgc.get_phys_addr = & get_physaddr_fs_api;
    a->fs_api_command_done = 0;
    tmp___0 = esas2r_process_fs_ioctl(a, fs, rq, & sgc);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      if ((unsigned int )fs->status == 3U) {
        count = -16;
      } else {
      }
      goto dont_wait;
    } else {
    }
    goto ldv_39510;
    ldv_39509:
    __ret = 0;
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3322/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/esas2r/esas2r_ioctl.c",
                  2023, 0);
    if (a->fs_api_command_done == 0) {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_39506:
      tmp___2 = prepare_to_wait_event(& a->fs_api_waiter, & __wait, 1);
      __int = tmp___2;
      if (a->fs_api_command_done != 0) {
        goto ldv_39505;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_39505;
      } else {
      }
      schedule();
      goto ldv_39506;
      ldv_39505:
      finish_wait(& a->fs_api_waiter, & __wait);
      __ret = (int )__ret___0;
    } else {
    }
    ldv_39510: ;
    if (a->fs_api_command_done == 0) {
      goto ldv_39509;
    } else {
    }
    dont_wait:
    up(& a->fs_api_semaphore);
    esas2r_free_request(a, rq);
    if (count < 0) {
      return (count);
    } else {
    }
  } else {
  }
  if ((long )a->fs_api_buffer_size < off) {
    return (0);
  } else {
  }
  if ((long )count + off > (long )a->fs_api_buffer_size) {
    count = (int )(a->fs_api_buffer_size - (unsigned int )off);
  } else {
  }
  if (count < 0) {
    return (0);
  } else {
  }
  memcpy((void *)buf, (void const *)a->fs_api_buffer + (unsigned long )off, (size_t )count);
  return (count);
}
}
int esas2r_write_fs(struct esas2r_adapter *a , char const *buf , long off , int count )
{
  struct esas2r_ioctl_fs *fs ;
  u32 length ;
  void *tmp ;
  {
  if (off == 0L) {
    fs = (struct esas2r_ioctl_fs *)buf;
    length = fs->command.length + 32U;
    if ((unsigned int )fs->command.command == 2U) {
      length = 32U;
    } else {
    }
    if ((unsigned int )count <= 31U) {
      return (-22);
    } else {
    }
    if ((unsigned long )a->fs_api_buffer != (unsigned long )((u8 *)0U)) {
      if (a->fs_api_buffer_size < length) {
        dma_free_attrs(& (a->pcid)->dev, (unsigned long )a->fs_api_buffer_size, (void *)a->fs_api_buffer,
                       a->ppfs_api_buffer, (struct dma_attrs *)0);
        goto re_allocate_buffer;
      } else {
      }
    } else {
      re_allocate_buffer:
      a->fs_api_buffer_size = length;
      tmp = dma_alloc_attrs(& (a->pcid)->dev, (unsigned long )a->fs_api_buffer_size,
                            & a->ppfs_api_buffer, 208U, (struct dma_attrs *)0);
      a->fs_api_buffer = (u8 *)tmp;
    }
  } else {
  }
  if ((unsigned long )a->fs_api_buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  if ((long )a->fs_api_buffer_size < off) {
    return (0);
  } else {
  }
  if ((long )count + off > (long )a->fs_api_buffer_size) {
    count = (int )(a->fs_api_buffer_size - (unsigned int )off);
  } else {
  }
  if (count <= 0) {
    return (0);
  } else {
  }
  memcpy((void *)a->fs_api_buffer + (unsigned long )off, (void const *)buf, (size_t )count);
  return (count);
}
}
bool ldv_queue_work_on_231(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_232(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_233(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_234(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_241(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_245(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
bool ldv_queue_work_on_266(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_268(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_267(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_270(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_269(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_276(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv_scsi_add_host_with_dma_280(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
struct esas2r_target *esas2r_targ_db_find_by_ident(struct esas2r_adapter *a , void *identifier ,
                                                   u8 ident_len ) ;
void esas2r_targ_db_initialize(struct esas2r_adapter *a )
{
  struct esas2r_target *t ;
  {
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39097;
  ldv_39096:
  memset((void *)t, 0, 120UL);
  t->target_state = 0U;
  t->buffered_target_state = 0U;
  t->new_target_state = 255U;
  t = t + 1;
  ldv_39097: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39096;
  } else {
  }
  return;
}
}
void esas2r_targ_db_remove_all(struct esas2r_adapter *a , bool notify )
{
  struct esas2r_target *t ;
  unsigned long flags ;
  u16 tmp ;
  {
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39107;
  ldv_39106: ;
  if ((unsigned int )t->target_state != 5U) {
    goto ldv_39105;
  } else {
  }
  ldv_spin_lock();
  esas2r_targ_db_remove(a, t);
  spin_unlock_irqrestore(& a->mem_lock, flags);
  if ((int )notify) {
    tmp = esas2r_targ_get_id(t, a);
    esas2r_target_state_changed(a, (int )tmp, 0);
  } else {
  }
  ldv_39105:
  t = t + 1;
  ldv_39107: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39106;
  } else {
  }
  return;
}
}
void esas2r_targ_db_report_changes(struct esas2r_adapter *a )
{
  struct esas2r_target *t ;
  unsigned long flags ;
  int tmp ;
  u8 state ;
  u8 tmp___0 ;
  u16 tmp___1 ;
  {
  tmp = constant_test_bit(14L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return;
  } else {
  }
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39116;
  ldv_39115:
  state = 255U;
  ldv_spin_lock();
  if ((int )t->buffered_target_state != (int )t->target_state) {
    tmp___0 = t->target_state;
    t->buffered_target_state = tmp___0;
    state = tmp___0;
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  if ((unsigned int )state != 255U) {
    tmp___1 = esas2r_targ_get_id(t, a);
    esas2r_target_state_changed(a, (int )tmp___1, (int )state);
  } else {
  }
  t = t + 1;
  ldv_39116: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39115;
  } else {
  }
  return;
}
}
struct esas2r_target *esas2r_targ_db_add_raid(struct esas2r_adapter *a , struct esas2r_disc_context *dc )
{
  struct esas2r_target *t ;
  {
  if ((unsigned int )dc->curr_virt_id > 255U) {
    return ((struct esas2r_target *)0);
  } else {
  }
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )dc->curr_virt_id;
  if ((unsigned int )t->target_state == 5U) {
    return ((struct esas2r_target *)0);
  } else {
  }
  if (dc->interleave == 0U || dc->block_size == 0U) {
    return ((struct esas2r_target *)0);
  } else {
  }
  t->block_size = dc->block_size;
  t->inter_byte = dc->interleave;
  t->inter_block = dc->interleave / dc->block_size;
  t->virt_targ_id = dc->curr_virt_id;
  t->phys_targ_id = 65535U;
  t->flags = (unsigned int )t->flags & 254U;
  t->flags = (u8 )((unsigned int )t->flags | 2U);
  t->identifier_len = 0U;
  t->target_state = 5U;
  return (t);
}
}
struct esas2r_target *esas2r_targ_db_add_pthru(struct esas2r_adapter *a , struct esas2r_disc_context *dc ,
                                               u8 *ident , u8 ident_len )
{
  struct esas2r_target *t ;
  {
  if ((unsigned int )dc->curr_virt_id > 255U) {
    return ((struct esas2r_target *)0);
  } else {
  }
  t = esas2r_targ_db_find_by_ident(a, (void *)ident, (int )ident_len);
  if ((unsigned long )t == (unsigned long )((struct esas2r_target *)0)) {
    t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )dc->curr_virt_id;
    if ((unsigned int )ident_len > 60U || (unsigned int )t->target_state == 5U) {
      return ((struct esas2r_target *)0);
    } else {
    }
  } else {
  }
  t->block_size = 0U;
  t->inter_byte = 0U;
  t->inter_block = 0U;
  t->virt_targ_id = dc->curr_virt_id;
  t->phys_targ_id = dc->curr_phys_id;
  t->identifier_len = ident_len;
  memcpy((void *)(& t->identifier), (void const *)ident, (size_t )ident_len);
  t->flags = (u8 )((unsigned int )t->flags | 3U);
  t->target_state = 5U;
  return (t);
}
}
void esas2r_targ_db_remove(struct esas2r_adapter *a , struct esas2r_target *t )
{
  {
  t->target_state = 0U;
  return;
}
}
struct esas2r_target *esas2r_targ_db_find_by_sas_addr(struct esas2r_adapter *a , u64 *sas_addr )
{
  struct esas2r_target *t ;
  {
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39140;
  ldv_39139: ;
  if (t->sas_addr == *sas_addr) {
    return (t);
  } else {
  }
  t = t + 1;
  ldv_39140: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39139;
  } else {
  }
  return ((struct esas2r_target *)0);
}
}
struct esas2r_target *esas2r_targ_db_find_by_ident(struct esas2r_adapter *a , void *identifier ,
                                                   u8 ident_len )
{
  struct esas2r_target *t ;
  int tmp ;
  {
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39149;
  ldv_39148: ;
  if ((int )t->identifier_len == (int )ident_len) {
    tmp = memcmp((void const *)(& t->identifier), (void const *)identifier, (size_t )ident_len);
    if (tmp == 0) {
      return (t);
    } else {
    }
  } else {
  }
  t = t + 1;
  ldv_39149: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39148;
  } else {
  }
  return ((struct esas2r_target *)0);
}
}
u16 esas2r_targ_db_find_next_present(struct esas2r_adapter *a , u16 target_id )
{
  u16 id ;
  struct esas2r_target *t ;
  {
  id = (unsigned int )target_id + 1U;
  goto ldv_39159;
  ldv_39158:
  t = (struct esas2r_target *)(& a->targetdb) + (unsigned long )id;
  if ((unsigned int )t->target_state == 5U) {
    goto ldv_39157;
  } else {
  }
  id = (u16 )((int )id + 1);
  ldv_39159: ;
  if ((unsigned int )id <= 255U) {
    goto ldv_39158;
  } else {
  }
  ldv_39157: ;
  return (id);
}
}
struct esas2r_target *esas2r_targ_db_find_by_virt_id(struct esas2r_adapter *a , u16 virt_id )
{
  struct esas2r_target *t ;
  {
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39167;
  ldv_39166: ;
  if ((unsigned int )t->target_state != 5U) {
    goto ldv_39165;
  } else {
  }
  if ((int )t->virt_targ_id == (int )virt_id) {
    return (t);
  } else {
  }
  ldv_39165:
  t = t + 1;
  ldv_39167: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39166;
  } else {
  }
  return ((struct esas2r_target *)0);
}
}
u16 esas2r_targ_db_get_tgt_cnt(struct esas2r_adapter *a )
{
  u16 devcnt ;
  struct esas2r_target *t ;
  unsigned long flags ;
  {
  devcnt = 0U;
  ldv_spin_lock();
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39176;
  ldv_39175: ;
  if ((unsigned int )t->target_state == 5U) {
    devcnt = (u16 )((int )devcnt + 1);
  } else {
  }
  t = t + 1;
  ldv_39176: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39175;
  } else {
  }
  spin_unlock_irqrestore(& a->mem_lock, flags);
  return (devcnt);
}
}
bool ldv_queue_work_on_266(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_267(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_268(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_269(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_270(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_276(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_280(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_301(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_303(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_302(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_305(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_304(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_311(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ldv_scsi_add_host_with_dma_315(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
void esas2r_build_cli_req(struct esas2r_adapter *a , struct esas2r_request *rq , u32 length ,
                          u32 cmd_rsp_len ) ;
void esas2r_nuxi_mgt_data(u8 function , void *data ) ;
void esas2r_nuxi_cfg_data(u8 function , void *data ) ;
static u8 esas2r_vdaioctl_versions[9U] =
  { 255U, 0U, 255U, 255U,
        0U, 255U, 0U, 0U,
        0U};
static void clear_vda_request(struct esas2r_request *rq ) ;
static void esas2r_complete_vda_ioctl(struct esas2r_adapter *a , struct esas2r_request *rq ) ;
bool esas2r_process_vda_ioctl(struct esas2r_adapter *a , struct atto_ioctl_vda *vi ,
                              struct esas2r_request *rq , struct esas2r_sg_context *sgc )
{
  u32 datalen ;
  struct atto_vda_sge *firstsg ;
  u8 vercnt ;
  int tmp ;
  u8 *cmdcurr_offset ;
  u32 payldlen ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  datalen = 0U;
  firstsg = (struct atto_vda_sge *)0;
  vercnt = 9U;
  vi->status = 0U;
  vi->vda_status = 254U;
  if ((int )vi->function >= (int )vercnt) {
    vi->status = 4U;
    return (0);
  } else {
  }
  if ((int )vi->version > (int )esas2r_vdaioctl_versions[(int )vi->function]) {
    vi->status = 2U;
    return (0);
  } else {
  }
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    vi->status = 11U;
    return (0);
  } else {
  }
  if ((unsigned int )vi->function != 0U) {
    clear_vda_request(rq);
  } else {
  }
  (rq->vrq)->scsi.function = vi->function;
  rq->interrupt_cb = & esas2r_complete_vda_ioctl;
  rq->interrupt_cx = (void *)vi;
  switch ((int )vi->function) {
  case 1: ;
  if (((unsigned int )vi->cmd.flash.sub_func != 6U && (unsigned int )vi->cmd.flash.sub_func != 7U) && (unsigned int )vi->cmd.flash.sub_func != 8U) {
    vi->status = 4U;
    return (0);
  } else {
  }
  if ((unsigned int )vi->cmd.flash.sub_func != 8U) {
    datalen = vi->data_length;
  } else {
  }
  (rq->vrq)->flash.length = datalen;
  (rq->vrq)->flash.sub_func = vi->cmd.flash.sub_func;
  memcpy((void *)(& (rq->vrq)->flash.data.file.file_name), (void const *)(& vi->cmd.flash.data.file.file_name),
           16UL);
  firstsg = (struct atto_vda_sge *)(& (rq->vrq)->flash.data.file.sge);
  goto ldv_39110;
  case 4:
  datalen = vi->data_length;
  (rq->vrq)->cli.cmd_rsp_len = vi->cmd.cli.cmd_rsp_len;
  (rq->vrq)->cli.length = datalen;
  firstsg = (struct atto_vda_sge *)(& (rq->vrq)->cli.sge);
  goto ldv_39110;
  case 7:
  cmdcurr_offset = sgc->cur_offset + 0xffffffffffffff10UL;
  if (vi->data_length != 0U) {
    payldlen = 0U;
    if ((unsigned int )vi->cmd.mgt.mgt_func == 8U || (unsigned int )vi->cmd.mgt.mgt_func == 9U) {
      (rq->vrq)->mgt.payld_sglst_offset = 48U;
      payldlen = vi->data_length;
      datalen = vi->cmd.mgt.data_length;
    } else
    if ((unsigned int )vi->cmd.mgt.mgt_func == 10U || (unsigned int )vi->cmd.mgt.mgt_func == 12U) {
      datalen = vi->data_length;
      cmdcurr_offset = sgc->cur_offset;
    } else {
      vi->status = 8U;
      return (0);
    }
    (rq->vrq)->mgt.length = datalen;
    if (payldlen != 0U) {
      (rq->vrq)->mgt.payld_length = payldlen;
      esas2r_sgc_init(sgc, a, rq, (struct atto_vda_sge *)(& (rq->vrq)->mgt.payld_sge));
      sgc->length = payldlen;
      tmp___0 = esas2r_build_sg_list(a, rq, sgc);
      if (tmp___0) {
        tmp___1 = 0;
      } else {
        tmp___1 = 1;
      }
      if (tmp___1) {
        vi->status = 3U;
        return (0);
      } else {
      }
    } else {
    }
  } else {
    datalen = vi->cmd.mgt.data_length;
    (rq->vrq)->mgt.length = datalen;
  }
  firstsg = (struct atto_vda_sge *)(& (rq->vrq)->mgt.__annonCompField97.sge);
  sgc->cur_offset = cmdcurr_offset;
  (rq->vrq)->mgt.mgt_func = vi->cmd.mgt.mgt_func;
  (rq->vrq)->mgt.scan_generation = vi->cmd.mgt.scan_generation;
  (rq->vrq)->mgt.dev_index = vi->cmd.mgt.dev_index;
  esas2r_nuxi_mgt_data((int )(rq->vrq)->mgt.mgt_func, (void *)(& vi->cmd.mgt.data));
  goto ldv_39110;
  case 6: ;
  if (vi->data_length != 0U || vi->cmd.cfg.data_length == 0U) {
    vi->status = 8U;
    return (0);
  } else {
  }
  if ((unsigned int )vi->cmd.cfg.cfg_func == 0U) {
    vi->status = 4U;
    return (0);
  } else {
  }
  (rq->vrq)->cfg.sub_func = vi->cmd.cfg.cfg_func;
  (rq->vrq)->cfg.length = vi->cmd.cfg.data_length;
  if ((unsigned int )vi->cmd.cfg.cfg_func == 1U) {
    memcpy((void *)(& (rq->vrq)->cfg.data), (void const *)(& vi->cmd.cfg.data),
             (size_t )vi->cmd.cfg.data_length);
    esas2r_nuxi_cfg_data((int )(rq->vrq)->cfg.sub_func, (void *)(& (rq->vrq)->cfg.data));
  } else {
    vi->status = 4U;
    return (0);
  }
  goto ldv_39110;
  case 8:
  vi->cmd.gsv.rsp_len = vercnt;
  memcpy((void *)(& vi->cmd.gsv.version_info), (void const *)(& esas2r_vdaioctl_versions),
           (size_t )vercnt);
  vi->vda_status = 0U;
  goto ldv_39110;
  default:
  vi->status = 4U;
  return (0);
  }
  ldv_39110: ;
  if (datalen != 0U) {
    esas2r_sgc_init(sgc, a, rq, firstsg);
    sgc->length = datalen;
    tmp___2 = esas2r_build_sg_list(a, rq, sgc);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      vi->status = 3U;
      return (0);
    } else {
    }
  } else {
  }
  esas2r_start_request(a, rq);
  return (1);
}
}
static void esas2r_complete_vda_ioctl(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct atto_ioctl_vda *vi ;
  struct atto_ioctl_vda_cfg_cmd *cfg ;
  struct atto_vda_cfg_rsp *rsp ;
  char buf[5U] ;
  {
  vi = (struct atto_ioctl_vda *)rq->interrupt_cx;
  vi->vda_status = rq->req_stat;
  switch ((int )vi->function) {
  case 1: ;
  if ((unsigned int )vi->cmd.flash.sub_func == 8U || (unsigned int )vi->cmd.flash.sub_func == 6U) {
    vi->cmd.flash.data.file.file_size = rq->func_rsp.flash_rsp.file_size;
  } else {
  }
  goto ldv_39124;
  case 7:
  vi->cmd.mgt.scan_generation = rq->func_rsp.mgt_rsp.scan_generation;
  vi->cmd.mgt.dev_index = rq->func_rsp.mgt_rsp.dev_index;
  if (vi->data_length == 0U) {
    vi->cmd.mgt.data_length = rq->func_rsp.mgt_rsp.length;
  } else {
  }
  esas2r_nuxi_mgt_data((int )(rq->vrq)->mgt.mgt_func, (void *)(& vi->cmd.mgt.data));
  goto ldv_39124;
  case 6: ;
  if ((unsigned int )vi->cmd.cfg.cfg_func == 1U) {
    cfg = & vi->cmd.cfg;
    rsp = & rq->func_rsp.cfg_rsp;
    cfg->data_length = 112U;
    cfg->data.init.vda_version = (unsigned int )rsp->vda_version;
    cfg->data.init.fw_build = rsp->fw_build;
    snprintf((char *)(& buf), 5UL, "%1.1u.%2.2u", (int )((unsigned char )rsp->fw_release),
             (int )((unsigned char )((int )rsp->fw_release >> 8)));
    memcpy((void *)(& cfg->data.init.fw_release), (void const *)(& buf), 4UL);
    if ((unsigned int )((unsigned char )cfg->data.init.fw_build) == 65U) {
      cfg->data.init.fw_version = cfg->data.init.fw_build;
    } else {
      cfg->data.init.fw_version = cfg->data.init.fw_release;
    }
  } else {
    esas2r_nuxi_cfg_data((int )(rq->vrq)->cfg.sub_func, (void *)(& vi->cmd.cfg.data));
  }
  goto ldv_39124;
  case 4:
  vi->cmd.cli.cmd_rsp_len = rq->func_rsp.cli_rsp.cmd_rsp_len;
  goto ldv_39124;
  default: ;
  goto ldv_39124;
  }
  ldv_39124: ;
  return;
}
}
void esas2r_build_flash_req(struct esas2r_adapter *a , struct esas2r_request *rq ,
                            u8 sub_func , u8 cksum , u32 addr , u32 length )
{
  struct atto_vda_flash_req *vrq ;
  {
  vrq = & (rq->vrq)->flash;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 1U;
  if (((unsigned int )sub_func == 0U || (unsigned int )sub_func == 2U) || (unsigned int )sub_func == 1U) {
    vrq->sg_list_offset = 20U;
  } else {
  }
  vrq->length = length;
  vrq->flash_addr = addr;
  vrq->checksum = cksum;
  vrq->sub_func = sub_func;
  return;
}
}
void esas2r_build_mgt_req(struct esas2r_adapter *a , struct esas2r_request *rq , u8 sub_func ,
                          u8 scan_gen , u16 dev_index , u32 length , void *data )
{
  struct atto_vda_mgmt_req *vrq ;
  int tmp ;
  {
  vrq = & (rq->vrq)->mgt;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 7U;
  vrq->mgt_func = sub_func;
  vrq->scan_generation = scan_gen;
  vrq->dev_index = dev_index;
  vrq->length = length;
  if (vrq->length != 0U) {
    tmp = constant_test_bit(24L, (unsigned long const volatile *)(& a->flags));
    if (tmp != 0) {
      vrq->sg_list_offset = 24U;
      vrq->__annonCompField97.sge[0].length = length | 16777216U;
      vrq->__annonCompField97.sge[0].address = (rq->vrq_md)->phys_addr + 1024ULL;
    } else {
      vrq->sg_list_offset = 24U;
      vrq->__annonCompField97.prde[0].ctl_len = length;
      vrq->__annonCompField97.prde[0].address = (rq->vrq_md)->phys_addr + 1024ULL;
    }
  } else {
  }
  if ((unsigned long )data != (unsigned long )((void *)0)) {
    esas2r_nuxi_mgt_data((int )sub_func, data);
    memcpy((void *)(& (rq->__annonCompField106.vda_rsp_data)->mgt_data.data.bytes),
             (void const *)data, (size_t )length);
  } else {
  }
  return;
}
}
void esas2r_build_ae_req(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  struct atto_vda_ae_req *vrq ;
  int tmp ;
  {
  vrq = & (rq->vrq)->ae;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 3U;
  vrq->length = 256U;
  tmp = constant_test_bit(24L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    vrq->sg_list_offset = 12U;
    vrq->__annonCompField93.sge[0].length = vrq->length | 16777216U;
    vrq->__annonCompField93.sge[0].address = (rq->vrq_md)->phys_addr + 1024ULL;
  } else {
    vrq->sg_list_offset = 12U;
    vrq->__annonCompField93.prde[0].ctl_len = vrq->length;
    vrq->__annonCompField93.prde[0].address = (rq->vrq_md)->phys_addr + 1024ULL;
  }
  return;
}
}
void esas2r_build_cli_req(struct esas2r_adapter *a , struct esas2r_request *rq , u32 length ,
                          u32 cmd_rsp_len )
{
  struct atto_vda_cli_req *vrq ;
  {
  vrq = & (rq->vrq)->cli;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 4U;
  vrq->length = length;
  vrq->cmd_rsp_len = cmd_rsp_len;
  vrq->sg_list_offset = 16U;
  return;
}
}
void esas2r_build_ioctl_req(struct esas2r_adapter *a , struct esas2r_request *rq ,
                            u32 length , u8 sub_func )
{
  struct atto_vda_ioctl_req *vrq ;
  {
  vrq = & (rq->vrq)->ioctl;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 5U;
  vrq->length = length;
  vrq->sub_func = sub_func;
  vrq->sg_list_offset = 32U;
  return;
}
}
void esas2r_build_cfg_req(struct esas2r_adapter *a , struct esas2r_request *rq , u8 sub_func ,
                          u32 length , void *data )
{
  struct atto_vda_cfg_req *vrq ;
  {
  vrq = & (rq->vrq)->cfg;
  clear_vda_request(rq);
  (rq->vrq)->scsi.function = 6U;
  vrq->sub_func = sub_func;
  vrq->length = length;
  if ((unsigned long )data != (unsigned long )((void *)0)) {
    esas2r_nuxi_cfg_data((int )sub_func, data);
    memcpy((void *)(& vrq->data), (void const *)data, (size_t )length);
  } else {
  }
  return;
}
}
static void clear_vda_request(struct esas2r_request *rq )
{
  u32 handle ;
  {
  handle = (rq->vrq)->scsi.handle;
  memset((void *)rq->vrq, 0, 1024UL);
  (rq->vrq)->scsi.handle = handle;
  rq->req_stat = 254U;
  memset(rq->__annonCompField106.data_buf, 0, 256UL);
  INIT_LIST_HEAD(& rq->req_list);
  return;
}
}
bool ldv_queue_work_on_301(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_302(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_303(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_304(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_305(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_311(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_315(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
extern void __bad_size_call_parameter(void) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void add_timer(struct timer_list * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
bool ldv_queue_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_338(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_337(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_358(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_339(struct workqueue_struct *ldv_func_arg1 ) ;
extern int cpu_number ;
extern int sysfs_create_bin_file(struct kobject * , struct bin_attribute const * ) ;
void *ldv_kmem_cache_alloc_346(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int ldv_state_variable_8 ;
struct kobject *bin_attr_hw_group0 ;
int pci_counter ;
struct work_struct *ldv_work_struct_1_3 ;
struct kobject *bin_attr_fs_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_1_1 ;
struct bin_attribute *bin_attr_live_nvram_group2 ;
struct Scsi_Host *driver_template_group1 ;
struct file *bin_attr_hw_group1 ;
void *esas2r_proc_fops_group1 ;
struct scsi_device *driver_template_group2 ;
int ldv_state_variable_9 ;
int ref_cnt ;
struct bin_attribute *bin_attr_hw_group2 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
struct file *bin_attr_fs_group1 ;
struct file *esas2r_proc_fops_group2 ;
int ldv_work_1_3 ;
struct file *bin_attr_live_nvram_group1 ;
int ldv_state_variable_6 ;
int ldv_state_variable_2 ;
struct bin_attribute *bin_attr_vda_group2 ;
struct file *bin_attr_vda_group1 ;
struct bin_attribute *bin_attr_fw_group2 ;
struct kobject *bin_attr_vda_group0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
struct kobject *bin_attr_live_nvram_group0 ;
struct kobject *bin_attr_fw_group0 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ldv_work_1_0 ;
struct file *bin_attr_fw_group1 ;
struct scsi_cmnd *driver_template_group0 ;
int ldv_state_variable_4 ;
struct bin_attribute *bin_attr_fs_group2 ;
struct pci_dev *esas2r_pci_driver_group1 ;
void ldv_initialize_bin_attribute_10(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_bin_attribute_9(void) ;
void ldv_pci_driver_4(void) ;
void ldv_initialize_bin_attribute_7(void) ;
void ldv_file_operations_3(void) ;
void disable_work_1(struct work_struct *work ) ;
void ldv_initialize_bin_attribute_8(void) ;
void work_init_1(void) ;
void invoke_work_1(void) ;
void ldv_initialize_bin_attribute_11(void) ;
extern void msleep(unsigned int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_352(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_353(struct pci_driver *ldv_func_arg1 ) ;
void ldv_pci_unregister_driver_355(struct pci_driver *ldv_func_arg1 ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int register_chrdev(unsigned int major , char const *name , struct file_operations const *fops )
{
  int tmp ;
  {
  tmp = __register_chrdev(major, 0U, 256U, name, fops);
  return (tmp);
}
}
__inline static int ldv_register_chrdev_357(unsigned int major , char const *name ,
                                            struct file_operations const *fops ) ;
__inline static void unregister_chrdev(unsigned int major , char const *name )
{
  {
  __unregister_chrdev(major, 0U, 256U, name);
  return;
}
}
__inline static void ldv_unregister_chrdev_354(unsigned int major , char const *name ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_351(struct scsi_host_template *sht , int privsize ) ;
int ldv_scsi_add_host_with_dma_350(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_350(host, dev, dev);
  return (tmp);
}
}
extern void scsi_unregister(struct Scsi_Host * ) ;
void ldv_scsi_unregister_356(struct Scsi_Host *shost ) ;
extern int scsi_add_device(struct Scsi_Host * , uint , uint , u64 ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern struct scsi_device *scsi_device_lookup(struct Scsi_Host * , uint , uint ,
                                              u64 ) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
extern int scsi_device_set_state(struct scsi_device * , enum scsi_device_state ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.length);
}
}
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
struct esas2r_adapter *esas2r_adapters[32U] ;
int cmd_per_lun ;
int can_queue ;
int esas2r_max_sectors ;
int sg_tablesize ;
int esas2r_release(struct Scsi_Host *sh ) ;
char const *esas2r_info(struct Scsi_Host *sh ) ;
int esas2r_queuecommand(struct Scsi_Host *host , struct scsi_cmnd *cmd ) ;
int esas2r_show_info(struct seq_file *m , struct Scsi_Host *sh ) ;
long esas2r_proc_ioctl(struct file *fp , unsigned int cmd , unsigned long arg ) ;
int esas2r_eh_abort(struct scsi_cmnd *cmd ) ;
int esas2r_device_reset(struct scsi_cmnd *cmd ) ;
int esas2r_host_reset(struct scsi_cmnd *cmd ) ;
int esas2r_bus_reset(struct scsi_cmnd *cmd ) ;
int esas2r_target_reset(struct scsi_cmnd *cmd ) ;
void esas2r_fw_event_on(struct esas2r_adapter *a ) ;
int esas2r_req_status_to_error(u8 req_stat ) ;
__inline static void esas2r_rq_free_sg_lists___2(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  unsigned long flags ;
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& rq->sg_table_head));
  if (tmp != 0) {
    return;
  } else {
  }
  ldv_spin_lock();
  list_splice_tail_init(& rq->sg_table_head, & a->free_sg_list_head);
  spin_unlock_irqrestore(& a->sg_list_lock, flags);
  return;
}
}
__inline static void esas2r_rq_destroy_request___1(struct esas2r_request *rq , struct esas2r_adapter *a )
{
  {
  esas2r_rq_free_sg_lists___2(rq, a);
  *(a->req_table + (unsigned long )((unsigned short )(rq->vrq)->scsi.handle)) = (struct esas2r_request *)0;
  rq->__annonCompField106.data_buf = (void *)0;
  return;
}
}
static int found_adapters ;
static struct esas2r_adapter *esas2r_adapter_from_kobj(struct kobject *kobj )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct Scsi_Host *host ;
  struct device const *__mptr___0 ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct device const *)dev;
  host = (struct Scsi_Host *)__mptr___0 + 0xfffffffffffff6c0UL;
  return ((struct esas2r_adapter *)(& host->hostdata));
}
}
static ssize_t read_fw(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                       char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  tmp___0 = esas2r_read_fw(a, buf, (long )off, (int )count);
  return ((ssize_t )tmp___0);
}
}
static ssize_t write_fw(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                        char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  tmp___0 = esas2r_write_fw(a, (char const *)buf, (long )off, (int )count);
  return ((ssize_t )tmp___0);
}
}
static ssize_t read_fs(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                       char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  tmp___0 = esas2r_read_fs(a, buf, (long )off, (int )count);
  return ((ssize_t )tmp___0);
}
}
static ssize_t write_fs(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                        char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int length ;
  unsigned long _min1 ;
  size_t _min2 ;
  int result ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  _min1 = 36UL;
  _min2 = count;
  length = (int )(_min1 < _min2 ? _min1 : _min2);
  result = 0;
  result = esas2r_write_fs(a, (char const *)buf, (long )off, (int )count);
  if (result < 0) {
    result = 0;
  } else {
  }
  return ((ssize_t )length);
}
}
static ssize_t read_vda(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                        char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  tmp___0 = esas2r_read_vda(a, buf, (long )off, (int )count);
  return ((ssize_t )tmp___0);
}
}
static ssize_t write_vda(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                         char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  tmp___0 = esas2r_write_vda(a, (char const *)buf, (long )off, (int )count);
  return ((ssize_t )tmp___0);
}
}
static ssize_t read_live_nvram(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                               char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int length ;
  size_t __min1 ;
  size_t __min2 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  __min1 = 256UL;
  __min2 = 4096UL;
  length = (int )(__min1 < __min2 ? __min1 : __min2);
  memcpy((void *)buf, (void const *)a->nvram, (size_t )length);
  return ((ssize_t )length);
}
}
static ssize_t write_live_nvram(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                                char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  struct esas2r_request *rq ;
  int result ;
  int tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  result = -14;
  rq = esas2r_alloc_request(a);
  if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
    return (-12L);
  } else {
  }
  tmp___0 = esas2r_write_params(a, rq, (struct esas2r_sas_nvram *)buf);
  if (tmp___0 != 0) {
    result = (int )count;
  } else {
  }
  esas2r_free_request(a, rq);
  return ((ssize_t )result);
}
}
static ssize_t read_default_nvram(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                                  char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  esas2r_nvram_get_defaults(a, (struct esas2r_sas_nvram *)buf);
  return (256L);
}
}
static ssize_t read_hw(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                       char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int length ;
  size_t __min1 ;
  size_t __min2 ;
  u8 tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  __min1 = 576UL;
  __min2 = 4096UL;
  length = (int )(__min1 < __min2 ? __min1 : __min2);
  if ((unsigned long )a->local_atto_ioctl == (unsigned long )((struct atto_ioctl *)0)) {
    return (-12L);
  } else {
  }
  tmp___0 = handle_hba_ioctl(a, a->local_atto_ioctl);
  if ((unsigned int )tmp___0 != 0U) {
    return (-12L);
  } else {
  }
  memcpy((void *)buf, (void const *)a->local_atto_ioctl, (size_t )length);
  return ((ssize_t )length);
}
}
static ssize_t write_hw(struct file *file , struct kobject *kobj , struct bin_attribute *attr ,
                        char *buf , loff_t off , size_t count )
{
  struct esas2r_adapter *a ;
  struct esas2r_adapter *tmp ;
  int length ;
  unsigned long _min1 ;
  size_t _min2 ;
  void *tmp___0 ;
  {
  tmp = esas2r_adapter_from_kobj(kobj);
  a = tmp;
  _min1 = 576UL;
  _min2 = count;
  length = (int )(_min1 < _min2 ? _min1 : _min2);
  if ((unsigned long )a->local_atto_ioctl == (unsigned long )((struct atto_ioctl *)0)) {
    tmp___0 = kzalloc(576UL, 208U);
    a->local_atto_ioctl = (struct atto_ioctl *)tmp___0;
    if ((unsigned long )a->local_atto_ioctl == (unsigned long )((struct atto_ioctl *)0)) {
      esas2r_log(2L, "write_hw kzalloc failed for %d bytes", 576UL);
      return (-12L);
    } else {
    }
  } else {
  }
  memset((void *)a->local_atto_ioctl, 0, 576UL);
  memcpy((void *)a->local_atto_ioctl, (void const *)buf, (size_t )length);
  return ((ssize_t )length);
}
}
struct bin_attribute bin_attr_fw = {{"fw", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & read_fw,
    & write_fw, 0};
struct bin_attribute bin_attr_fs = {{"fs", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & read_fs,
    & write_fs, 0};
struct bin_attribute bin_attr_vda = {{"vda", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & read_vda,
    & write_vda, 0};
struct bin_attribute bin_attr_hw = {{"hw", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & read_hw,
    & write_hw, 0};
struct bin_attribute bin_attr_live_nvram = {{"live_nvram", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0UL, 0, & read_live_nvram, & write_live_nvram, 0};
struct bin_attribute bin_attr_default_nvram = {{"default_nvram", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0UL, 0, & read_default_nvram, (ssize_t (*)(struct file * , struct kobject * ,
                                               struct bin_attribute * , char * , loff_t ,
                                               size_t ))0, 0};
static struct scsi_host_template driver_template =
     {& __this_module, "ATTO ExpressSAS 6GB RAID Adapter", 0, & esas2r_release, & esas2r_info,
    & esas2r_ioctl, 0, & esas2r_queuecommand, & esas2r_eh_abort, & esas2r_device_reset,
    & esas2r_target_reset, & esas2r_bus_reset, & esas2r_host_reset, 0, 0, 0, 0, 0,
    0, 0, & scsi_change_queue_depth, 0, 0, & esas2r_show_info, 0, 0, 0, "esas2r",
    0, 128, -1, 128U, (unsigned short)0, 65535U, 0UL, 64, 0U, 0, 1U, (unsigned char)0,
    (unsigned char)0, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    0U, 0, 0, {0, 0}, 0ULL, 0U, 0, (_Bool)0};
int sgl_page_size = 512;
int num_sg_lists = 1024;
int sg_tablesize = 128;
int num_requests = 256;
int num_ae_requests = 4;
int cmd_per_lun = 64;
int can_queue = 128;
int esas2r_max_sectors = 65535;
int interrupt_mode = 1;
static struct pci_device_id esas2r_pci_table[7U] = { {4476U, 73U, 4476U, 73U, 0U, 0U, 0UL},
        {4476U, 73U, 4476U, 74U, 0U, 0U, 0UL},
        {4476U, 73U, 4476U, 75U, 0U, 0U, 0UL},
        {4476U, 73U, 4476U, 76U, 0U, 0U, 0UL},
        {4476U, 73U, 4476U, 77U, 0U, 0U, 0UL},
        {4476U, 73U, 4476U, 78U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__esas2r_pci_table_device_table[7U] ;
static int esas2r_probe(struct pci_dev *pcid , struct pci_device_id const *id ) ;
static void esas2r_remove(struct pci_dev *pdev ) ;
static struct pci_driver esas2r_pci_driver =
     {{0, 0}, "esas2r", (struct pci_device_id const *)(& esas2r_pci_table), & esas2r_probe,
    & esas2r_remove, & esas2r_suspend, 0, 0, & esas2r_resume, 0, 0, 0, {0, 0, 0, 0,
                                                                        (_Bool)0,
                                                                        0, 0, 0, 0,
                                                                        0, 0, 0, 0,
                                                                        0, 0, 0},
    {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int esas2r_probe(struct pci_dev *pcid , struct pci_device_id const *id )
{
  struct Scsi_Host *host ;
  struct esas2r_adapter *a ;
  int err ;
  size_t host_alloc_size ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  host = (struct Scsi_Host *)0;
  host_alloc_size = (unsigned long )(num_requests + 1) * 176UL + 559640UL;
  esas2r_log_dev(4L, (struct device const *)(& pcid->dev), "esas2r_probe() 0x%02x 0x%02x 0x%02x 0x%02x",
                 (int )pcid->vendor, (int )pcid->device, (int )pcid->subsystem_vendor,
                 (int )pcid->subsystem_device);
  esas2r_log_dev(3L, (struct device const *)(& pcid->dev), "before pci_enable_device() enable_cnt: %d",
                 pcid->enable_cnt.counter);
  err = pci_enable_device(pcid);
  if (err != 0) {
    esas2r_log_dev(1L, (struct device const *)(& pcid->dev), "pci_enable_device() FAIL (%d)",
                   err);
    return (-19);
  } else {
  }
  esas2r_log_dev(3L, (struct device const *)(& pcid->dev), "pci_enable_device() OK");
  esas2r_log_dev(3L, (struct device const *)(& pcid->dev), "after pci_enable_device() enable_cnt: %d",
                 pcid->enable_cnt.counter);
  host = ldv_scsi_host_alloc_351(& driver_template, (int )host_alloc_size);
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    esas2r_log(1L, "scsi_host_alloc() FAIL");
    return (-19);
  } else {
  }
  memset((void *)(& host->hostdata), 0, host_alloc_size);
  a = (struct esas2r_adapter *)(& host->hostdata);
  esas2r_log(3L, "scsi_host_alloc() OK host: %p", host);
  host->max_id = 256U;
  host->max_lun = 255ULL;
  host->max_cmd_len = 16U;
  host->can_queue = can_queue;
  host->cmd_per_lun = (short )cmd_per_lun;
  host->this_id = (int )(host->max_id + 1U);
  host->max_channel = 0U;
  host->unique_id = (unsigned int )found_adapters;
  host->sg_tablesize = (unsigned short )sg_tablesize;
  host->max_sectors = (unsigned int )esas2r_max_sectors;
  esas2r_log(3L, "pci_set_master() called");
  pci_set_master(pcid);
  tmp = esas2r_init_adapter(host, pcid, found_adapters);
  if (tmp == 0) {
    esas2r_log(1L, "unable to initialize device at PCI bus %x:%x", (int )(pcid->bus)->number,
               pcid->devfn);
    esas2r_log_dev(3L, (struct device const *)(& host->shost_gendev), "scsi_host_put() called");
    scsi_host_put(host);
    return (0);
  } else {
  }
  esas2r_log(3L, "pci_set_drvdata(%p, %p) called", pcid, (unsigned long *)(& host->hostdata));
  pci_set_drvdata(pcid, (void *)host);
  esas2r_log(3L, "scsi_add_host() called");
  err = scsi_add_host(host, & pcid->dev);
  if (err != 0) {
    esas2r_log(1L, "scsi_add_host returned %d", err);
    esas2r_log_dev(1L, (struct device const *)(& host->shost_gendev), "scsi_add_host() FAIL");
    esas2r_log_dev(3L, (struct device const *)(& host->shost_gendev), "scsi_host_put() called");
    scsi_host_put(host);
    esas2r_log_dev(3L, (struct device const *)(& host->shost_gendev), "pci_set_drvdata(%p, NULL) called",
                   pcid);
    pci_set_drvdata(pcid, (void *)0);
    return (-19);
  } else {
  }
  esas2r_fw_event_on(a);
  esas2r_log_dev(3L, (struct device const *)(& host->shost_gendev), "scsi_scan_host() called");
  scsi_scan_host(host);
  tmp___0 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_fw));
  if (tmp___0 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: fw");
  } else {
    a->sysfs_fw_created = 1U;
  }
  tmp___1 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_fs));
  if (tmp___1 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: fs");
  } else {
    a->sysfs_fs_created = 1U;
  }
  tmp___2 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_vda));
  if (tmp___2 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: vda");
  } else {
    a->sysfs_vda_created = 1U;
  }
  tmp___3 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_hw));
  if (tmp___3 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: hw");
  } else {
    a->sysfs_hw_created = 1U;
  }
  tmp___4 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_live_nvram));
  if (tmp___4 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: live_nvram");
  } else {
    a->sysfs_live_nvram_created = 1U;
  }
  tmp___5 = sysfs_create_bin_file(& host->shost_dev.kobj, (struct bin_attribute const *)(& bin_attr_default_nvram));
  if (tmp___5 != 0) {
    esas2r_log_dev(2L, (struct device const *)(& host->shost_gendev), "Failed to create sysfs binary file: default_nvram");
  } else {
    a->sysfs_default_nvram_created = 1U;
  }
  found_adapters = found_adapters + 1;
  return (0);
}
}
static void esas2r_remove(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  int index ;
  void *tmp ;
  {
  if ((unsigned long )pdev == (unsigned long )((struct pci_dev *)0)) {
    esas2r_log(2L, "esas2r_remove pdev==NULL");
    return;
  } else {
  }
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    return;
  } else {
  }
  esas2r_log_dev(3L, (struct device const *)(& pdev->dev), "esas2r_remove(%p) called; host:%p",
                 pdev, host);
  index = esas2r_cleanup(host);
  if (index < 0) {
    esas2r_log_dev(2L, (struct device const *)(& pdev->dev), "unknown host in %s",
                   "esas2r_remove");
  } else {
  }
  found_adapters = found_adapters - 1;
  if (found_adapters == 0) {
    esas2r_cleanup((struct Scsi_Host *)0);
  } else {
  }
  return;
}
}
static int esas2r_init(void)
{
  int i ;
  int tmp ;
  {
  esas2r_log(3L, "%s called", "esas2r_init");
  if (can_queue <= 0) {
    esas2r_log(2L, "warning: can_queue must be at least 1, value forced.");
    can_queue = 1;
  } else
  if (can_queue > 2048) {
    esas2r_log(2L, "warning: can_queue must be no larger than 2048, value forced.");
    can_queue = 2048;
  } else {
  }
  if (cmd_per_lun <= 0) {
    esas2r_log(2L, "warning: cmd_per_lun must be at least 1, value forced.");
    cmd_per_lun = 1;
  } else
  if (cmd_per_lun > 2048) {
    esas2r_log(2L, "warning: cmd_per_lun must be no larger than 2048, value forced.");
    cmd_per_lun = 2048;
  } else {
  }
  if (sg_tablesize <= 31) {
    esas2r_log(2L, "warning: sg_tablesize must be at least 32, value forced.");
    sg_tablesize = 32;
  } else {
  }
  if (esas2r_max_sectors <= 0) {
    esas2r_log(2L, "warning: esas2r_max_sectors must be at least 1, value forced.");
    esas2r_max_sectors = 1;
  } else
  if (esas2r_max_sectors > 65535) {
    esas2r_log(2L, "warning: esas2r_max_sectors must be no larger than 0xffff, value forced.");
    esas2r_max_sectors = 65535;
  } else {
  }
  sgl_page_size = sgl_page_size & -16;
  if (sgl_page_size <= 63) {
    sgl_page_size = 64;
  } else
  if (sgl_page_size > 1024) {
    sgl_page_size = 1024;
  } else {
  }
  if (num_sg_lists <= 7) {
    num_sg_lists = 8;
  } else
  if (num_sg_lists > 2048) {
    num_sg_lists = 2048;
  } else {
  }
  if (num_requests <= 3) {
    num_requests = 4;
  } else
  if (num_requests > 256) {
    num_requests = 256;
  } else {
  }
  if (num_ae_requests <= 1) {
    num_ae_requests = 2;
  } else
  if (num_ae_requests > 8) {
    num_ae_requests = 8;
  } else {
  }
  i = 0;
  goto ldv_39497;
  ldv_39496:
  esas2r_adapters[i] = (struct esas2r_adapter *)0;
  i = i + 1;
  ldv_39497: ;
  if (i <= 31) {
    goto ldv_39496;
  } else {
  }
  driver_template.module = & __this_module;
  tmp = ldv___pci_register_driver_352(& esas2r_pci_driver, & __this_module, "esas2r");
  if (tmp != 0) {
    esas2r_log(1L, "pci_register_driver FAILED");
  } else {
    esas2r_log(3L, "pci_register_driver() OK");
  }
  if (found_adapters == 0) {
    ldv_pci_unregister_driver_353(& esas2r_pci_driver);
    esas2r_cleanup((struct Scsi_Host *)0);
    esas2r_log(1L, "driver will not be loaded because no ATTO %s devices were found",
               (char *)"esas2r");
    return (-1);
  } else {
    esas2r_log(3L, "found %d adapters", found_adapters);
  }
  return (0);
}
}
static struct file_operations const esas2r_proc_fops =
     {0, 0, 0, 0, 0, 0, 0, 0, & esas2r_proc_ioctl, & esas2r_proc_ioctl, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct Scsi_Host *esas2r_proc_host ;
static int esas2r_proc_major ;
long esas2r_proc_ioctl(struct file *fp , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  {
  tmp = esas2r_ioctl_handler((void *)(& esas2r_proc_host->hostdata), (int )cmd, (void *)arg);
  return ((long )tmp);
}
}
static void esas2r_exit(void)
{
  {
  esas2r_log(3L, "%s called", "esas2r_exit");
  if (esas2r_proc_major > 0) {
    esas2r_log(3L, "unregister proc");
    remove_proc_entry("ATTONode", (esas2r_proc_host->hostt)->proc_dir);
    ldv_unregister_chrdev_354((unsigned int )esas2r_proc_major, "esas2r");
    esas2r_proc_major = 0;
  } else {
  }
  esas2r_log(3L, "pci_unregister_driver() called");
  ldv_pci_unregister_driver_355(& esas2r_pci_driver);
  return;
}
}
int esas2r_show_info(struct seq_file *m , struct Scsi_Host *sh )
{
  struct esas2r_adapter *a ;
  struct esas2r_target *t ;
  int dev_count ;
  char const *tmp ;
  {
  a = (struct esas2r_adapter *)(& sh->hostdata);
  dev_count = 0;
  esas2r_log(4L, "esas2r_show_info (%p,%d)", m, sh->host_no);
  seq_printf(m, "ATTO ExpressSAS 6GB RAID Adapter\nDriver version: 1.00\nFlash version: %s\nFirmware version: %s\nCopyright 2001-2013\nhttp://www.attotech.com\n\n",
             (char *)(& a->flash_rev), (int )((signed char )a->fw_rev[0]) != 0 ? (char *)(& a->fw_rev) : (char *)"(none)");
  tmp = esas2r_get_model_name(a);
  seq_printf(m, "Adapter information:\n--------------------\nModel: %s\nSAS address: %02X%02X%02X%02X:%02X%02X%02X%02X\n",
             tmp, (int )(a->nvram)->sas_addr[0], (int )(a->nvram)->sas_addr[1], (int )(a->nvram)->sas_addr[2],
             (int )(a->nvram)->sas_addr[3], (int )(a->nvram)->sas_addr[4], (int )(a->nvram)->sas_addr[5],
             (int )(a->nvram)->sas_addr[6], (int )(a->nvram)->sas_addr[7]);
  seq_puts(m, "\nDiscovered devices:\n\n   #  Target ID\n---------------\n");
  t = (struct esas2r_target *)(& a->targetdb);
  goto ldv_39519;
  ldv_39518: ;
  if ((unsigned int )t->buffered_target_state == 5U) {
    dev_count = dev_count + 1;
    seq_printf(m, " %3d   %3d\n", dev_count, (int )((unsigned short )(((long )t - (long )(& a->targetdb)) / 120L)));
  } else {
  }
  t = t + 1;
  ldv_39519: ;
  if ((unsigned long )a->targetdb_end > (unsigned long )t) {
    goto ldv_39518;
  } else {
  }
  if (dev_count == 0) {
    seq_puts(m, "none\n");
  } else {
  }
  seq_putc(m, 10);
  return (0);
}
}
int esas2r_release(struct Scsi_Host *sh )
{
  {
  esas2r_log_dev(3L, (struct device const *)(& sh->shost_gendev), "esas2r_release() called");
  esas2r_cleanup(sh);
  if (sh->irq != 0U) {
    free_irq(sh->irq, (void *)0);
  } else {
  }
  ldv_scsi_unregister_356(sh);
  return (0);
}
}
char const *esas2r_info(struct Scsi_Host *sh )
{
  struct esas2r_adapter *a ;
  char esas2r_info_str[512U] ;
  struct proc_dir_entry *pde ;
  {
  a = (struct esas2r_adapter *)(& sh->hostdata);
  esas2r_log_dev(3L, (struct device const *)(& sh->shost_gendev), "esas2r_info() called");
  if (esas2r_proc_major <= 0) {
    esas2r_proc_host = sh;
    esas2r_proc_major = ldv_register_chrdev_357(0U, "esas2r", & esas2r_proc_fops);
    esas2r_log_dev(4L, (struct device const *)(& sh->shost_gendev), "register_chrdev (major %d)",
                   esas2r_proc_major);
    if (esas2r_proc_major > 0) {
      pde = proc_create("ATTONode", 0, (sh->hostt)->proc_dir, & esas2r_proc_fops);
      if ((unsigned long )pde == (unsigned long )((struct proc_dir_entry *)0)) {
        esas2r_log_dev(2L, (struct device const *)(& sh->shost_gendev), "failed to create_proc_entry");
        esas2r_proc_major = -1;
      } else {
      }
    } else {
    }
  } else {
  }
  sprintf((char *)(& esas2r_info_str), "ATTO ExpressSAS 6GB RAID Adapter (bus 0x%02X, device 0x%02X, IRQ 0x%02X) driver version: 1.00  firmware version: %s\n",
          (int )((a->pcid)->bus)->number, (a->pcid)->devfn, (a->pcid)->irq, (int )((signed char )a->fw_rev[0]) != 0 ? (char *)(& a->fw_rev) : (char *)"(none)");
  return ((char const *)(& esas2r_info_str));
}
}
static u32 get_physaddr_from_sgc(struct esas2r_sg_context *sgc , u64 *addr )
{
  u32 len ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )sgc->cur_offset == (unsigned long )sgc->exp_offset,
                         1L);
  if (tmp != 0L) {
    if (sgc->sgel_count < sgc->num_sgel) {
      if ((unsigned long )sgc->exp_offset != (unsigned long )((u8 *)0U)) {
        sgc->cur_sgel = sg_next(sgc->cur_sgel);
        sgc->sgel_count = sgc->sgel_count + 1;
      } else {
      }
      len = (sgc->cur_sgel)->dma_length;
      *addr = (sgc->cur_sgel)->dma_address;
      sgc->exp_offset = sgc->exp_offset + (unsigned long )len;
    } else {
      len = 0U;
    }
  } else
  if ((unsigned long )sgc->cur_offset < (unsigned long )sgc->exp_offset) {
    len = (sgc->cur_sgel)->dma_length;
    *addr = (sgc->cur_sgel)->dma_address;
    sgc->exp_offset = sgc->exp_offset + - ((unsigned long )len);
    *addr = *addr + (unsigned long long )((long )sgc->cur_offset - (long )sgc->exp_offset);
    sgc->exp_offset = sgc->exp_offset + (unsigned long )len;
    len = (unsigned int )((long )sgc->exp_offset) - (unsigned int )((long )sgc->cur_offset);
  } else {
    len = 0U;
  }
  return (len);
}
}
int esas2r_queuecommand(struct Scsi_Host *host , struct scsi_cmnd *cmd )
{
  struct esas2r_adapter *a ;
  struct esas2r_request *rq ;
  struct esas2r_sg_context sgc ;
  unsigned int bufflen ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  a = (struct esas2r_adapter *)(& ((cmd->device)->host)->hostdata);
  cmd->result = 0;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    cmd->result = 65536;
    (*(cmd->scsi_done))(cmd);
    return (0);
  } else {
  }
  rq = esas2r_alloc_request(a);
  tmp___1 = ldv__builtin_expect((unsigned long )rq == (unsigned long )((struct esas2r_request *)0),
                             0L);
  if (tmp___1 != 0L) {
    return (4181);
  } else {
  }
  rq->__annonCompField107.cmd = cmd;
  bufflen = scsi_bufflen(cmd);
  tmp___2 = ldv__builtin_expect(bufflen != 0U, 1L);
  if (tmp___2 != 0L) {
    if ((unsigned int )cmd->sc_data_direction == 1U) {
      (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 16777216U;
    } else
    if ((unsigned int )cmd->sc_data_direction == 2U) {
      (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | 33554432U;
    } else {
    }
  } else {
  }
  memcpy((void *)(& (rq->vrq)->scsi.cdb), (void const *)cmd->cmnd, (size_t )cmd->cmd_len);
  (rq->vrq)->scsi.length = bufflen;
  rq->target_id = (u16 )(cmd->device)->id;
  (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | (u32 )(cmd->device)->lun;
  rq->sense_buf = cmd->sense_buffer;
  rq->sense_len = 96U;
  esas2r_sgc_init(& sgc, a, rq, (struct atto_vda_sge *)0);
  sgc.length = bufflen;
  sgc.cur_offset = (u8 *)0U;
  sgc.cur_sgel = scsi_sglist(cmd);
  sgc.exp_offset = (u8 *)0U;
  sgc.num_sgel = scsi_dma_map(cmd);
  sgc.sgel_count = 0;
  tmp___3 = ldv__builtin_expect(sgc.num_sgel < 0, 0L);
  if (tmp___3 != 0L) {
    esas2r_free_request(a, rq);
    return (4181);
  } else {
  }
  sgc.get_phys_addr = & get_physaddr_from_sgc;
  tmp___4 = esas2r_build_sg_list(a, rq, & sgc);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  tmp___6 = ldv__builtin_expect((long )tmp___5, 0L);
  if (tmp___6 != 0L) {
    scsi_dma_unmap(cmd);
    esas2r_free_request(a, rq);
    return (4181);
  } else {
  }
  esas2r_start_request(a, rq);
  return (0);
}
}
static void complete_task_management_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  {
  *(rq->__annonCompField107.task_management_status_ptr) = rq->req_stat;
  esas2r_free_request(a, rq);
  return;
}
}
static int esas2r_check_active_queue(struct esas2r_adapter *a , struct esas2r_request **abort_request ,
                                     struct scsi_cmnd *cmd , struct list_head *queue )
{
  bool found ;
  struct esas2r_request *ar ;
  struct esas2r_request *rq ;
  struct list_head *element ;
  struct list_head *next ;
  struct list_head const *__mptr ;
  {
  found = 0;
  ar = *abort_request;
  element = queue->next;
  next = element->next;
  goto ldv_39562;
  ldv_39561:
  __mptr = (struct list_head const *)element;
  rq = (struct esas2r_request *)__mptr + 0xfffffffffffffff0UL;
  if ((unsigned long )rq->__annonCompField107.cmd == (unsigned long )cmd) {
    if ((unsigned long )(& a->active_list) == (unsigned long )queue) {
      ar = esas2r_alloc_request(a);
      if ((unsigned long )ar == (unsigned long )((struct esas2r_request *)0)) {
        esas2r_log_dev(2L, (struct device const *)(& (a->host)->shost_gendev), "unable to allocate an abort request for cmd %p",
                       cmd);
        return (0);
      } else {
      }
      ar->sense_len = 0U;
      (ar->vrq)->scsi.length = 0U;
      ar->target_id = rq->target_id;
      (ar->vrq)->scsi.flags = (ar->vrq)->scsi.flags | (u32 )((unsigned char )(rq->vrq)->scsi.flags);
      memset((void *)(& (ar->vrq)->scsi.cdb), 0, 16UL);
      (ar->vrq)->scsi.flags = (ar->vrq)->scsi.flags | 8388608U;
      (ar->vrq)->scsi.u.abort_handle = (rq->vrq)->scsi.handle;
    } else {
      list_del_init(& rq->req_list);
      esas2r_free_request(a, rq);
    }
    found = 1;
    goto ldv_39560;
  } else {
  }
  element = next;
  next = element->next;
  ldv_39562: ;
  if ((unsigned long )element != (unsigned long )queue) {
    goto ldv_39561;
  } else {
  }
  ldv_39560: ;
  if (! found) {
    return (1);
  } else {
  }
  return (2);
}
}
int esas2r_eh_abort(struct scsi_cmnd *cmd )
{
  struct esas2r_adapter *a ;
  struct esas2r_request *abort_request ;
  unsigned long flags ;
  struct list_head *queue ;
  int result ;
  int tmp ;
  u8 task_management_status ;
  int tmp___0 ;
  {
  a = (struct esas2r_adapter *)(& ((cmd->device)->host)->hostdata);
  abort_request = (struct esas2r_request *)0;
  esas2r_log(3L, "eh_abort (%p)", cmd);
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    cmd->result = 327680;
    scsi_set_resid(cmd, 0);
    (*(cmd->scsi_done))(cmd);
    return (8194);
  } else {
  }
  ldv_spin_lock();
  queue = & a->defer_list;
  check_active_queue:
  result = esas2r_check_active_queue(a, & abort_request, cmd, queue);
  if (result == 0) {
    spin_unlock_irqrestore(& a->queue_lock, flags);
    return (8195);
  } else
  if (result == 2 && (unsigned long )(& a->defer_list) == (unsigned long )queue) {
    queue = & a->active_list;
    goto check_active_queue;
  } else {
  }
  spin_unlock_irqrestore(& a->queue_lock, flags);
  if ((unsigned long )abort_request != (unsigned long )((struct esas2r_request *)0)) {
    task_management_status = 254U;
    abort_request->comp_cb = & complete_task_management_request;
    abort_request->__annonCompField107.task_management_status_ptr = & task_management_status;
    esas2r_start_request(a, abort_request);
    tmp___0 = atomic_read((atomic_t const *)(& a->disable_cnt));
    if (tmp___0 == 0) {
      esas2r_do_deferred_processes(a);
    } else {
    }
    goto ldv_39574;
    ldv_39573:
    msleep(10U);
    ldv_39574: ;
    if ((unsigned int )task_management_status == 254U) {
      goto ldv_39573;
    } else {
    }
    return (8194);
  } else {
  }
  cmd->result = 327680;
  scsi_set_resid(cmd, 0);
  (*(cmd->scsi_done))(cmd);
  return (8194);
}
}
static int esas2r_host_bus_reset(struct scsi_cmnd *cmd , bool host_reset )
{
  struct esas2r_adapter *a ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  a = (struct esas2r_adapter *)(& ((cmd->device)->host)->hostdata);
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (8195);
  } else {
  }
  if ((int )host_reset) {
    esas2r_reset_adapter(a);
  } else {
    esas2r_reset_bus(a);
  }
  goto ldv_39582;
  ldv_39581:
  msleep(10U);
  tmp___0 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    return (8195);
  } else {
  }
  ldv_39582:
  tmp___1 = constant_test_bit(9L, (unsigned long const volatile *)(& a->flags));
  if (tmp___1 != 0) {
    goto ldv_39581;
  } else {
  }
  tmp___2 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___2 != 0) {
    return (8195);
  } else {
  }
  return (8194);
}
}
int esas2r_host_reset(struct scsi_cmnd *cmd )
{
  int tmp ;
  {
  esas2r_log(3L, "host_reset (%p)", cmd);
  tmp = esas2r_host_bus_reset(cmd, 1);
  return (tmp);
}
}
int esas2r_bus_reset(struct scsi_cmnd *cmd )
{
  int tmp ;
  {
  esas2r_log(3L, "bus_reset (%p)", cmd);
  tmp = esas2r_host_bus_reset(cmd, 0);
  return (tmp);
}
}
static int esas2r_dev_targ_reset(struct scsi_cmnd *cmd , bool target_reset )
{
  struct esas2r_adapter *a ;
  struct esas2r_request *rq ;
  u8 task_management_status ;
  bool completed ;
  int tmp ;
  int tmp___0 ;
  {
  a = (struct esas2r_adapter *)(& ((cmd->device)->host)->hostdata);
  task_management_status = 254U;
  tmp = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp != 0) {
    return (8195);
  } else {
  }
  retry:
  rq = esas2r_alloc_request(a);
  if ((unsigned long )rq == (unsigned long )((struct esas2r_request *)0)) {
    if ((int )target_reset) {
      esas2r_log(1L, "unable to allocate a request for a target reset (%d)!", (cmd->device)->id);
    } else {
      esas2r_log(1L, "unable to allocate a request for a device reset (%d:%d)!", (cmd->device)->id,
                 (cmd->device)->lun);
    }
    return (8195);
  } else {
  }
  rq->target_id = (u16 )(cmd->device)->id;
  (rq->vrq)->scsi.flags = (rq->vrq)->scsi.flags | (u32 )(cmd->device)->lun;
  rq->req_stat = 254U;
  rq->comp_cb = & complete_task_management_request;
  rq->__annonCompField107.task_management_status_ptr = & task_management_status;
  if ((int )target_reset) {
    completed = esas2r_send_task_mgmt(a, rq, 32);
  } else {
    completed = esas2r_send_task_mgmt(a, rq, 16);
  }
  if ((int )completed) {
    esas2r_free_request(a, rq);
  } else {
    goto ldv_39600;
    ldv_39599:
    msleep(10U);
    ldv_39600: ;
    if ((unsigned int )task_management_status == 254U) {
      goto ldv_39599;
    } else {
    }
  }
  tmp___0 = constant_test_bit(13L, (unsigned long const volatile *)(& a->flags));
  if (tmp___0 != 0) {
    return (8195);
  } else {
  }
  if ((unsigned int )task_management_status == 2U) {
    msleep(100U);
    goto retry;
  } else {
  }
  return (8194);
}
}
int esas2r_device_reset(struct scsi_cmnd *cmd )
{
  int tmp ;
  {
  esas2r_log(3L, "device_reset (%p)", cmd);
  tmp = esas2r_dev_targ_reset(cmd, 0);
  return (tmp);
}
}
int esas2r_target_reset(struct scsi_cmnd *cmd )
{
  int tmp ;
  {
  esas2r_log(3L, "target_reset (%p)", cmd);
  tmp = esas2r_dev_targ_reset(cmd, 1);
  return (tmp);
}
}
void esas2r_log_request_failure(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  u8 reqstatus ;
  {
  reqstatus = rq->req_stat;
  if ((unsigned int )reqstatus == 0U) {
    return;
  } else {
  }
  if ((unsigned int )(rq->vrq)->scsi.function == 0U) {
    if ((unsigned int )reqstatus == 8U) {
      if ((unsigned int )rq->func_rsp.scsi_rsp.sense_len > 12U) {
        esas2r_log(2L, "request failure - SCSI error %x ASC:%x ASCQ:%x CDB:%x", (int )*(rq->sense_buf + 2UL),
                   (int )*(rq->sense_buf + 12UL), (int )*(rq->sense_buf + 13UL), (int )(rq->vrq)->scsi.cdb[0]);
      } else {
        esas2r_log(2L, "request failure - SCSI error CDB:%x\n", (int )(rq->vrq)->scsi.cdb[0]);
      }
    } else
    if (((unsigned int )(rq->vrq)->scsi.cdb[0] != 18U && (unsigned int )(rq->vrq)->scsi.cdb[0] != 160U) || ((unsigned int )reqstatus != 3U && (unsigned int )reqstatus != 112U)) {
      if ((unsigned int )reqstatus == 7U && (unsigned int )(rq->vrq)->scsi.cdb[0] == 18U) {
      } else {
        esas2r_log(2L, "request failure - cdb:%x reqstatus:%d target:%d", (int )(rq->vrq)->scsi.cdb[0],
                   (int )reqstatus, (int )rq->target_id);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void esas2r_wait_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  u32 starttime ;
  u32 timeout ;
  unsigned long tmp ;
  unsigned int tmp___0 ;
  {
  starttime = jiffies_to_msecs(jiffies);
  timeout = rq->timeout != 0U ? rq->timeout : 5000U;
  ldv_39620:
  esas2r_polled_interrupt(a);
  if ((unsigned int )rq->req_stat != 255U) {
    goto ldv_39619;
  } else {
  }
  tmp = msecs_to_jiffies(100U);
  schedule_timeout_interruptible((long )tmp);
  tmp___0 = jiffies_to_msecs(jiffies);
  if (tmp___0 - starttime > timeout) {
    rq->req_stat = 5U;
    esas2r_local_reset_adapter(a);
    return;
  } else {
  }
  goto ldv_39620;
  ldv_39619: ;
  return;
}
}
u32 esas2r_map_data_window(struct esas2r_adapter *a , u32 addr_lo )
{
  u32 offset ;
  u32 base ;
  {
  offset = addr_lo & 131071U;
  base = addr_lo & 4294836224U;
  if (a->window_base != base) {
    writel(base | 1U, (void volatile *)a->regs + 33848U);
    readl((void const volatile *)a->regs + 33848U);
    a->window_base = base;
  } else {
  }
  return (offset);
}
}
bool esas2r_read_mem_block(struct esas2r_adapter *a , void *to , u32 from , u32 size )
{
  u8 *end ;
  u32 len ;
  u32 offset ;
  u32 iatvr ;
  u8 *tmp ;
  u32 tmp___0 ;
  {
  end = (u8 *)to;
  goto ldv_39641;
  ldv_39640:
  iatvr = from & 4294836224U;
  esas2r_map_data_window(a, iatvr);
  offset = from & 131071U;
  len = size;
  if (131072U - offset < len) {
    len = 131072U - offset;
  } else {
  }
  from = from + len;
  size = size - len;
  goto ldv_39638;
  ldv_39637:
  tmp = end;
  end = end + 1;
  *tmp = readb((void const volatile *)a->data_window + (unsigned long )offset);
  offset = offset + 1U;
  ldv_39638:
  tmp___0 = len;
  len = len - 1U;
  if (tmp___0 != 0U) {
    goto ldv_39637;
  } else {
  }
  ldv_39641: ;
  if (size != 0U) {
    goto ldv_39640;
  } else {
  }
  return (1);
}
}
void esas2r_nuxi_mgt_data(u8 function , void *data )
{
  struct atto_vda_grp_info *g ;
  struct atto_vda_devinfo *d ;
  struct atto_vdapart_info *p ;
  struct atto_vda_dh_info *h ;
  struct atto_vda_metrics_info *m ;
  struct atto_vda_schedule_info *s ;
  struct atto_vda_buzzer_info *b ;
  u8 i ;
  {
  switch ((int )function) {
  case 112: ;
  case 113:
  b = (struct atto_vda_buzzer_info *)data;
  b->duration = b->duration;
  goto ldv_39657;
  case 81: ;
  case 80:
  s = (struct atto_vda_schedule_info *)data;
  s->id = s->id;
  goto ldv_39657;
  case 1: ;
  case 2: ;
  case 5: ;
  case 6: ;
  case 7: ;
  case 11:
  d = (struct atto_vda_devinfo *)data;
  d->capacity = d->capacity;
  d->block_size = d->block_size;
  d->ses_dev_index = d->ses_dev_index;
  d->__annonCompField87.target_id = d->__annonCompField87.target_id;
  d->lun = d->lun;
  d->features = d->features;
  goto ldv_39657;
  case 16: ;
  case 17: ;
  case 18: ;
  case 19: ;
  case 20: ;
  case 21: ;
  case 22: ;
  case 23: ;
  case 24: ;
  case 25: ;
  case 26: ;
  case 27: ;
  case 64: ;
  case 65: ;
  case 66: ;
  case 67: ;
  case 28:
  g = (struct atto_vda_grp_info *)data;
  g->capacity = g->capacity;
  g->block_size = g->block_size;
  g->interleave = g->interleave;
  g->features = g->features;
  i = 0U;
  goto ldv_39684;
  ldv_39683:
  g->__annonCompField90.members[(int )i] = g->__annonCompField90.members[(int )i];
  i = (u8 )((int )i + 1);
  ldv_39684: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_39683;
  } else {
  }
  goto ldv_39657;
  case 48: ;
  case 49: ;
  case 50: ;
  case 51: ;
  case 52: ;
  case 53:
  p = (struct atto_vdapart_info *)data;
  p->part_size = p->part_size;
  p->start_lba = (u64 )((unsigned int )p->start_lba);
  p->block_size = p->block_size;
  p->target_id = p->target_id;
  goto ldv_39657;
  case 8:
  h = (struct atto_vda_dh_info *)data;
  h->med_defect_cnt = h->med_defect_cnt;
  h->info_exc_cnt = h->info_exc_cnt;
  goto ldv_39657;
  case 9:
  m = (struct atto_vda_metrics_info *)data;
  i = 0U;
  goto ldv_39695;
  ldv_39694:
  m->dev_indexes[(int )i] = m->dev_indexes[(int )i];
  i = (u8 )((int )i + 1);
  ldv_39695: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_39694;
  } else {
  }
  goto ldv_39657;
  default: ;
  goto ldv_39657;
  }
  ldv_39657: ;
  return;
}
}
void esas2r_nuxi_cfg_data(u8 function , void *data )
{
  struct atto_vda_cfg_init *ci ;
  {
  switch ((int )function) {
  case 0: ;
  case 1: ;
  case 2:
  ci = (struct atto_vda_cfg_init *)data;
  ci->date_time.year = ci->date_time.year;
  ci->sgl_page_size = ci->sgl_page_size;
  ci->vda_version = ci->vda_version;
  ci->epoch_time = ci->epoch_time;
  ci->ioctl_tunnel = ci->ioctl_tunnel;
  ci->num_targets_backend = ci->num_targets_backend;
  goto ldv_39706;
  default: ;
  goto ldv_39706;
  }
  ldv_39706: ;
  return;
}
}
void esas2r_nuxi_ae_data(union atto_vda_ae *ae )
{
  struct atto_vda_ae_raid *r ;
  struct atto_vda_ae_lu *l ;
  {
  r = & ae->raid;
  l = & ae->lu;
  switch ((int )ae->hdr.bytype) {
  case 1:
  r->dwflags = r->dwflags;
  goto ldv_39714;
  case 2:
  l->dwevent = l->dwevent;
  l->wphys_target_id = l->wphys_target_id;
  l->id.tgtlun.wtarget_id = l->id.tgtlun.wtarget_id;
  if ((unsigned int )l->hdr.bylength > 23U) {
    l->id.tgtlun_raid.dwinterleave = l->id.tgtlun_raid.dwinterleave;
    l->id.tgtlun_raid.dwblock_size = l->id.tgtlun_raid.dwblock_size;
  } else {
  }
  goto ldv_39714;
  case 3: ;
  default: ;
  goto ldv_39714;
  }
  ldv_39714: ;
  return;
}
}
void esas2r_free_request(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  unsigned long flags ;
  {
  esas2r_rq_destroy_request___1(rq, a);
  ldv_spin_lock();
  list_add(& rq->comp_list, & a->avail_request);
  spin_unlock_irqrestore(& a->request_lock, flags);
  return;
}
}
struct esas2r_request *esas2r_alloc_request(struct esas2r_adapter *a )
{
  struct esas2r_request *rq ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  {
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& a->avail_request));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    spin_unlock_irqrestore(& a->request_lock, flags);
    return ((struct esas2r_request *)0);
  } else {
  }
  __mptr = (struct list_head const *)a->avail_request.next;
  rq = (struct esas2r_request *)__mptr;
  list_del(& rq->comp_list);
  spin_unlock_irqrestore(& a->request_lock, flags);
  esas2r_rq_init_request(rq, a);
  return (rq);
}
}
void esas2r_complete_request_cb(struct esas2r_adapter *a , struct esas2r_request *rq )
{
  int tmp ;
  long tmp___0 ;
  {
  scsi_dma_unmap(rq->__annonCompField107.cmd);
  tmp___0 = ldv__builtin_expect((unsigned int )rq->req_stat != 0U, 0L);
  if (tmp___0 != 0L) {
    tmp = esas2r_req_status_to_error((int )rq->req_stat);
    (rq->__annonCompField107.cmd)->result = (tmp << 16) | ((int )rq->func_rsp.scsi_rsp.scsi_stat & 254);
    if ((unsigned int )rq->req_stat == 7U) {
      scsi_set_resid(rq->__annonCompField107.cmd, (int )rq->func_rsp.scsi_rsp.residual_length);
    } else {
      scsi_set_resid(rq->__annonCompField107.cmd, 0);
    }
  } else {
  }
  (*((rq->__annonCompField107.cmd)->scsi_done))(rq->__annonCompField107.cmd);
  esas2r_free_request(a, rq);
  return;
}
}
void esas2r_adapter_tasklet(unsigned long context )
{
  struct esas2r_adapter *a ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  a = (struct esas2r_adapter *)context;
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags2));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    clear_bit(10L, (unsigned long volatile *)(& a->flags2));
    esas2r_timer_tick(a);
  } else {
  }
  tmp___1 = constant_test_bit(9L, (unsigned long const volatile *)(& a->flags2));
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 1L);
  if (tmp___2 != 0L) {
    clear_bit(9L, (unsigned long volatile *)(& a->flags2));
    esas2r_adapter_interrupt(a);
  } else {
  }
  tmp___3 = esas2r_is_tasklet_pending(a);
  if ((int )tmp___3) {
    esas2r_do_tasklet_tasks(a);
  } else {
  }
  tmp___4 = esas2r_is_tasklet_pending(a);
  if ((int )tmp___4) {
    clear_bit(15L, (unsigned long volatile *)(& a->flags));
    esas2r_schedule_tasklet(a);
  } else {
    tmp___5 = constant_test_bit(9L, (unsigned long const volatile *)(& a->flags2));
    if (tmp___5 != 0) {
      clear_bit(15L, (unsigned long volatile *)(& a->flags));
      esas2r_schedule_tasklet(a);
    } else {
      tmp___6 = constant_test_bit(10L, (unsigned long const volatile *)(& a->flags2));
      if (tmp___6 != 0) {
        clear_bit(15L, (unsigned long volatile *)(& a->flags));
        esas2r_schedule_tasklet(a);
      } else {
        clear_bit(15L, (unsigned long volatile *)(& a->flags));
      }
    }
  }
  return;
}
}
static void esas2r_timer_callback(unsigned long context ) ;
void esas2r_kickoff_timer(struct esas2r_adapter *a )
{
  unsigned long tmp ;
  {
  reg_timer_2(& a->timer);
  a->timer.function = & esas2r_timer_callback;
  a->timer.data = (unsigned long )a;
  tmp = msecs_to_jiffies(100U);
  a->timer.expires = tmp + (unsigned long )jiffies;
  add_timer(& a->timer);
  return;
}
}
static void esas2r_timer_callback(unsigned long context )
{
  struct esas2r_adapter *a ;
  {
  a = (struct esas2r_adapter *)context;
  set_bit(10L, (unsigned long volatile *)(& a->flags2));
  esas2r_schedule_tasklet(a);
  esas2r_kickoff_timer(a);
  return;
}
}
static void esas2r_free_fw_event(struct esas2r_fw_event_work *fw_event )
{
  unsigned long flags ;
  struct esas2r_adapter *a ;
  {
  a = fw_event->a;
  ldv_spin_lock();
  list_del(& fw_event->list);
  kfree((void const *)fw_event);
  spin_unlock_irqrestore(& a->fw_event_lock, flags);
  return;
}
}
void esas2r_fw_event_off(struct esas2r_adapter *a )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  a->fw_events_off = 1U;
  spin_unlock_irqrestore(& a->fw_event_lock, flags);
  return;
}
}
void esas2r_fw_event_on(struct esas2r_adapter *a )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  a->fw_events_off = 0U;
  spin_unlock_irqrestore(& a->fw_event_lock, flags);
  return;
}
}
static void esas2r_add_device(struct esas2r_adapter *a , u16 target_id )
{
  int ret ;
  struct scsi_device *scsi_dev ;
  {
  scsi_dev = scsi_device_lookup(a->host, 0U, (uint )target_id, 0ULL);
  if ((unsigned long )scsi_dev != (unsigned long )((struct scsi_device *)0)) {
    esas2r_log_dev(2L, (struct device const *)(& scsi_dev->sdev_gendev), "scsi device already exists at id %d",
                   (int )target_id);
    scsi_device_put(scsi_dev);
  } else {
    esas2r_log_dev(3L, (struct device const *)(& (a->host)->shost_gendev), "scsi_add_device() called for 0:%d:0",
                   (int )target_id);
    ret = scsi_add_device(a->host, 0U, (uint )target_id, 0ULL);
    if (ret != 0) {
      esas2r_log_dev(1L, (struct device const *)(& (a->host)->shost_gendev), "scsi_add_device failed with %d for id %d",
                     ret, (int )target_id);
    } else {
    }
  }
  return;
}
}
static void esas2r_remove_device(struct esas2r_adapter *a , u16 target_id )
{
  struct scsi_device *scsi_dev ;
  {
  scsi_dev = scsi_device_lookup(a->host, 0U, (uint )target_id, 0ULL);
  if ((unsigned long )scsi_dev != (unsigned long )((struct scsi_device *)0)) {
    scsi_device_set_state(scsi_dev, 6);
    esas2r_log_dev(3L, (struct device const *)(& scsi_dev->sdev_gendev), "scsi_remove_device() called for 0:%d:0",
                   (int )target_id);
    scsi_remove_device(scsi_dev);
    esas2r_log_dev(3L, (struct device const *)(& scsi_dev->sdev_gendev), "scsi_device_put() called");
    scsi_device_put(scsi_dev);
  } else {
    esas2r_log_dev(2L, (struct device const *)(& (a->host)->shost_gendev), "no target found at id %d",
                   (int )target_id);
  }
  return;
}
}
static void esas2r_send_ae_event(struct esas2r_fw_event_work *fw_event )
{
  struct esas2r_vda_ae *ae ;
  char *type ;
  {
  ae = (struct esas2r_vda_ae *)(& fw_event->data);
  switch ((int )ae->vda_ae.hdr.bytype) {
  case 1:
  type = (char *)"RAID group state change";
  goto ldv_39777;
  case 2:
  type = (char *)"Mapped destination LU change";
  goto ldv_39777;
  case 3:
  type = (char *)"Physical disk inventory change";
  goto ldv_39777;
  case 4:
  type = (char *)"Firmware reset";
  goto ldv_39777;
  case 5:
  type = (char *)"Event Log message (INFO level)";
  goto ldv_39777;
  case 6:
  type = (char *)"Event Log message (WARN level)";
  goto ldv_39777;
  case 7:
  type = (char *)"Event Log message (CRIT level)";
  goto ldv_39777;
  case 8:
  type = (char *)"Event Log message (FAIL level)";
  goto ldv_39777;
  case 9:
  type = (char *)"NVCache change";
  goto ldv_39777;
  case 10:
  type = (char *)"Time stamped log message (INFO level)";
  goto ldv_39777;
  case 11:
  type = (char *)"Time stamped log message (WARN level)";
  goto ldv_39777;
  case 12:
  type = (char *)"Time stamped log message (CRIT level)";
  goto ldv_39777;
  case 13:
  type = (char *)"Power management";
  goto ldv_39777;
  case 14:
  type = (char *)"Mute button pressed";
  goto ldv_39777;
  case 15:
  type = (char *)"Device attribute change";
  goto ldv_39777;
  default:
  type = (char *)"Unknown";
  goto ldv_39777;
  }
  ldv_39777:
  esas2r_log(2L, "An async event of type \"%s\" was received from the firmware.  The event contents are:",
             type);
  esas2r_log_hexdump(2L, (void const *)(& ae->vda_ae), (size_t )ae->vda_ae.hdr.bylength);
  return;
}
}
static void esas2r_firmware_event_work(struct work_struct *work )
{
  struct esas2r_fw_event_work *fw_event ;
  struct work_struct const *__mptr ;
  struct esas2r_adapter *a ;
  u16 target_id ;
  {
  __mptr = (struct work_struct const *)work;
  fw_event = (struct esas2r_fw_event_work *)__mptr + 0xfffffffffffffff0UL;
  a = fw_event->a;
  target_id = *((u16 *)(& fw_event->data));
  if ((unsigned int )a->fw_events_off != 0U) {
    goto done;
  } else {
  }
  switch ((unsigned int )fw_event->type) {
  case 0U: ;
  goto ldv_39803;
  case 1U:
  esas2r_remove_device(a, (int )target_id);
  esas2r_add_device(a, (int )target_id);
  goto ldv_39803;
  case 2U:
  esas2r_add_device(a, (int )target_id);
  goto ldv_39803;
  case 3U:
  esas2r_remove_device(a, (int )target_id);
  goto ldv_39803;
  case 4U:
  esas2r_send_ae_event(fw_event);
  goto ldv_39803;
  }
  ldv_39803: ;
  done:
  esas2r_free_fw_event(fw_event);
  return;
}
}
void esas2r_queue_fw_event(struct esas2r_adapter *a , enum fw_event_type type , void *data ,
                           int data_sz )
{
  struct esas2r_fw_event_work *fw_event ;
  unsigned long flags ;
  void *tmp ;
  struct esas2r_vda_ae *ae ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  unsigned long tmp___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  tmp = kzalloc(392UL, 32U);
  fw_event = (struct esas2r_fw_event_work *)tmp;
  if ((unsigned long )fw_event == (unsigned long )((struct esas2r_fw_event_work *)0)) {
    esas2r_log(2L, "esas2r_queue_fw_event failed to alloc");
    return;
  } else {
  }
  if ((unsigned int )type == 4U) {
    ae = (struct esas2r_vda_ae *)(& fw_event->data);
    ae->signature = 1096045647U;
    ae->bus_number = ((a->pcid)->bus)->number;
    ae->devfn = (u8 )(a->pcid)->devfn;
    memcpy((void *)(& ae->vda_ae), (void const *)data, 128UL);
  } else {
    memcpy((void *)(& fw_event->data), (void const *)data, (size_t )data_sz);
  }
  fw_event->type = type;
  fw_event->a = a;
  ldv_spin_lock();
  list_add_tail(& fw_event->list, & a->fw_event_list);
  __init_work(& fw_event->work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  fw_event->work.work.data = __constr_expr_0;
  lockdep_init_map(& fw_event->work.work.lockdep_map, "(&(&fw_event->work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& fw_event->work.work.entry);
  fw_event->work.work.func = & esas2r_firmware_event_work;
  init_timer_key(& fw_event->work.timer, 2097152U, "(&(&fw_event->work)->timer)",
                 & __key___0);
  fw_event->work.timer.function = & delayed_work_timer_fn;
  fw_event->work.timer.data = (unsigned long )(& fw_event->work);
  tmp___0 = msecs_to_jiffies(1U);
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39825;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39825;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39825;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39825;
  default:
  __bad_percpu_size();
  }
  ldv_39825:
  pscr_ret__ = pfo_ret__;
  goto ldv_39831;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39835;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39835;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39835;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39835;
  default:
  __bad_percpu_size();
  }
  ldv_39835:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39831;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39844;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39844;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39844;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39844;
  default:
  __bad_percpu_size();
  }
  ldv_39844:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39831;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39853;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39853;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39853;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39853;
  default:
  __bad_percpu_size();
  }
  ldv_39853:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39831;
  default:
  __bad_size_call_parameter();
  goto ldv_39831;
  }
  ldv_39831:
  ldv_queue_delayed_work_on_358(pscr_ret__, a->fw_event_q, & fw_event->work, tmp___0);
  spin_unlock_irqrestore(& a->fw_event_lock, flags);
  return;
}
}
void esas2r_target_state_changed(struct esas2r_adapter *a , u16 targ_id , u8 state )
{
  {
  if ((unsigned int )state == 6U) {
    esas2r_queue_fw_event(a, 1, (void *)(& targ_id), 2);
  } else
  if ((unsigned int )state == 5U) {
    esas2r_queue_fw_event(a, 2, (void *)(& targ_id), 2);
  } else
  if ((unsigned int )state == 0U) {
    esas2r_queue_fw_event(a, 3, (void *)(& targ_id), 2);
  } else {
  }
  return;
}
}
int esas2r_req_status_to_error(u8 req_stat )
{
  {
  switch ((int )req_stat) {
  case 6: ;
  case 7: ;
  case 0: ;
  case 8: ;
  return (0);
  case 3: ;
  case 112: ;
  return (1);
  case 13: ;
  return (8);
  case 10: ;
  return (5);
  case 2: ;
  return (2);
  }
  return (7);
}
}
extern int ldv_release_11(void) ;
extern int ldv_release_9(void) ;
extern int ldv_probe_5(void) ;
int ldv_retval_2 ;
extern int ldv_probe_11(void) ;
extern int ldv_release_8(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_6 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_open_3(void) ;
extern int ldv_release_10(void) ;
extern int ldv_shutdown_4(void) ;
extern int ldv_resume_early_4(void) ;
extern int ldv_release_6(void) ;
extern int ldv_probe_10(void) ;
extern int ldv_probe_9(void) ;
extern int ldv_suspend_late_4(void) ;
int ldv_retval_4 ;
extern int ldv_probe_8(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_probe_7(void) ;
extern int ldv_release_3(void) ;
int ldv_retval_3 ;
extern int ldv_release_7(void) ;
extern int ldv_probe_6(void) ;
void ldv_initialize_bin_attribute_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_fs_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_fs_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_fs_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    esas2r_firmware_event_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    esas2r_firmware_event_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    esas2r_firmware_event_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    esas2r_firmware_event_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  if (ldv_timer_state_2 != 1) {
    return;
  }
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
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
void ldv_initialize_bin_attribute_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_vda_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_vda_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_vda_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_initialize_scsi_host_template_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = __VERIFIER_nondet_pointer();
  driver_template_group0 = (struct scsi_cmnd *)tmp;
  tmp___0 = ldv_init_zalloc(3816UL);
  driver_template_group1 = (struct Scsi_Host *)tmp___0;
  tmp___1 = __VERIFIER_nondet_pointer();
  driver_template_group2 = (struct scsi_device *)tmp___1;
  return;
}
}
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  esas2r_pci_driver_group1 = (struct pci_dev *)tmp;
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
void ldv_initialize_bin_attribute_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_live_nvram_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_live_nvram_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_live_nvram_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_file_operations_3(void)
{
  void *tmp ;
  {
  esas2r_proc_fops_group1 = ldv_init_zalloc(1000UL);
  tmp = ldv_init_zalloc(504UL);
  esas2r_proc_fops_group2 = (struct file *)tmp;
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
void ldv_initialize_bin_attribute_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_hw_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_hw_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_hw_group2 = (struct bin_attribute *)tmp___1;
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
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
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
    esas2r_firmware_event_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_39994;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    esas2r_firmware_event_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_39994;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    esas2r_firmware_event_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_39994;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    esas2r_firmware_event_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_39994;
  default:
  ldv_stop();
  }
  ldv_39994: ;
  return;
}
}
void ldv_initialize_bin_attribute_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_fw_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_fw_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_fw_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct kobject *ldvarg4 ;
  void *tmp___0 ;
  struct bin_attribute *ldvarg3 ;
  void *tmp___1 ;
  size_t ldvarg0 ;
  loff_t ldvarg5 ;
  struct file *ldvarg2 ;
  void *tmp___2 ;
  loff_t ldvarg8 ;
  loff_t ldvarg11 ;
  char *ldvarg7 ;
  void *tmp___3 ;
  char *ldvarg10 ;
  void *tmp___4 ;
  size_t ldvarg9 ;
  size_t ldvarg6 ;
  unsigned long ldvarg14 ;
  unsigned int ldvarg13 ;
  unsigned long ldvarg12 ;
  unsigned int ldvarg15 ;
  loff_t ldvarg21 ;
  loff_t ldvarg18 ;
  char *ldvarg20 ;
  void *tmp___5 ;
  char *ldvarg17 ;
  void *tmp___6 ;
  size_t ldvarg19 ;
  size_t ldvarg16 ;
  loff_t ldvarg24 ;
  loff_t ldvarg27 ;
  char *ldvarg26 ;
  void *tmp___7 ;
  size_t ldvarg25 ;
  char *ldvarg23 ;
  void *tmp___8 ;
  size_t ldvarg22 ;
  char *ldvarg32 ;
  void *tmp___9 ;
  size_t ldvarg31 ;
  char *ldvarg29 ;
  void *tmp___10 ;
  size_t ldvarg28 ;
  loff_t ldvarg33 ;
  loff_t ldvarg30 ;
  struct pci_device_id *ldvarg35 ;
  void *tmp___11 ;
  pm_message_t ldvarg34 ;
  size_t ldvarg39 ;
  char *ldvarg37 ;
  void *tmp___12 ;
  loff_t ldvarg41 ;
  size_t ldvarg36 ;
  char *ldvarg40 ;
  void *tmp___13 ;
  loff_t ldvarg38 ;
  struct seq_file *ldvarg45 ;
  void *tmp___14 ;
  int ldvarg43 ;
  void *ldvarg42 ;
  void *tmp___15 ;
  int ldvarg44 ;
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
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(296UL);
  ldvarg4 = (struct kobject *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  ldvarg3 = (struct bin_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_pointer();
  ldvarg2 = (struct file *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___10;
  tmp___11 = ldv_init_zalloc(32UL);
  ldvarg35 = (struct pci_device_id *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg37 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg40 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(256UL);
  ldvarg45 = (struct seq_file *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg42 = tmp___15;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg9), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg14), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 8UL);
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  ldv_memset((void *)(& ldvarg24), 0, 8UL);
  ldv_memset((void *)(& ldvarg27), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg22), 0, 8UL);
  ldv_memset((void *)(& ldvarg31), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg33), 0, 8UL);
  ldv_memset((void *)(& ldvarg30), 0, 8UL);
  ldv_memset((void *)(& ldvarg34), 0, 4UL);
  ldv_memset((void *)(& ldvarg39), 0, 8UL);
  ldv_memset((void *)(& ldvarg41), 0, 8UL);
  ldv_memset((void *)(& ldvarg36), 0, 8UL);
  ldv_memset((void *)(& ldvarg38), 0, 8UL);
  ldv_memset((void *)(& ldvarg43), 0, 4UL);
  ldv_memset((void *)(& ldvarg44), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_40156:
  tmp___16 = __VERIFIER_nondet_int();
  switch (tmp___16) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_6 == 2) {
      read_default_nvram(ldvarg2, ldvarg4, ldvarg3, ldvarg1, ldvarg5, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_40075;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40075;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      ldv_probe_6();
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40075;
    default:
    ldv_stop();
    }
    ldv_40075: ;
  } else {
  }
  goto ldv_40079;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_11 == 2) {
      write_fw(bin_attr_fw_group1, bin_attr_fw_group0, bin_attr_fw_group2, ldvarg10,
               ldvarg11, ldvarg9);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40082;
    case 1: ;
    if (ldv_state_variable_11 == 2) {
      read_fw(bin_attr_fw_group1, bin_attr_fw_group0, bin_attr_fw_group2, ldvarg7,
              ldvarg8, ldvarg6);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40082;
    case 2: ;
    if (ldv_state_variable_11 == 2) {
      ldv_release_11();
      ldv_state_variable_11 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40082;
    case 3: ;
    if (ldv_state_variable_11 == 1) {
      ldv_probe_11();
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40082;
    default:
    ldv_stop();
    }
    ldv_40082: ;
  } else {
  }
  goto ldv_40079;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_3 == 2) {
      esas2r_proc_ioctl(esas2r_proc_fops_group2, ldvarg15, ldvarg14);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_40089;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      esas2r_proc_ioctl(esas2r_proc_fops_group2, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_40089;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_0 = ldv_open_3();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_40089;
    case 3: ;
    if (ldv_state_variable_3 == 2) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40089;
    default:
    ldv_stop();
    }
    ldv_40089: ;
  } else {
  }
  goto ldv_40079;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_7 == 2) {
      write_live_nvram(bin_attr_live_nvram_group1, bin_attr_live_nvram_group0, bin_attr_live_nvram_group2,
                       ldvarg20, ldvarg21, ldvarg19);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_40096;
    case 1: ;
    if (ldv_state_variable_7 == 2) {
      read_live_nvram(bin_attr_live_nvram_group1, bin_attr_live_nvram_group0, bin_attr_live_nvram_group2,
                      ldvarg17, ldvarg18, ldvarg16);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_40096;
    case 2: ;
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40096;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      ldv_probe_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40096;
    default:
    ldv_stop();
    }
    ldv_40096: ;
  } else {
  }
  goto ldv_40079;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_9 == 2) {
      write_vda(bin_attr_vda_group1, bin_attr_vda_group0, bin_attr_vda_group2, ldvarg26,
                ldvarg27, ldvarg25);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40103;
    case 1: ;
    if (ldv_state_variable_9 == 2) {
      read_vda(bin_attr_vda_group1, bin_attr_vda_group0, bin_attr_vda_group2, ldvarg23,
               ldvarg24, ldvarg22);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40103;
    case 2: ;
    if (ldv_state_variable_9 == 2) {
      ldv_release_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40103;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      ldv_probe_9();
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40103;
    default:
    ldv_stop();
    }
    ldv_40103: ;
  } else {
  }
  goto ldv_40079;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_40079;
  case 6: ;
  if (ldv_state_variable_8 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_8 == 2) {
      write_hw(bin_attr_hw_group1, bin_attr_hw_group0, bin_attr_hw_group2, ldvarg32,
               ldvarg33, ldvarg31);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_40111;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      read_hw(bin_attr_hw_group1, bin_attr_hw_group0, bin_attr_hw_group2, ldvarg29,
              ldvarg30, ldvarg28);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_40111;
    case 2: ;
    if (ldv_state_variable_8 == 2) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40111;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      ldv_probe_8();
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40111;
    default:
    ldv_stop();
    }
    ldv_40111: ;
  } else {
  }
  goto ldv_40079;
  case 7: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_40079;
  case 8: ;
  if (ldv_state_variable_4 != 0) {
    tmp___23 = __VERIFIER_nondet_int();
    switch (tmp___23) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_5 = esas2r_probe(esas2r_pci_driver_group1, (struct pci_device_id const *)ldvarg35);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_40119;
    case 1: ;
    if (ldv_state_variable_4 == 2 && pci_counter == 0) {
      ldv_retval_4 = esas2r_suspend(esas2r_pci_driver_group1, ldvarg34);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_4 = 3;
      } else {
      }
    } else {
    }
    goto ldv_40119;
    case 2: ;
    if (ldv_state_variable_4 == 4) {
      esas2r_remove(esas2r_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      esas2r_remove(esas2r_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      esas2r_remove(esas2r_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      esas2r_remove(esas2r_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_40119;
    case 3: ;
    if (ldv_state_variable_4 == 4) {
      ldv_retval_3 = esas2r_resume(esas2r_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      ldv_retval_3 = esas2r_resume(esas2r_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      ldv_retval_3 = esas2r_resume(esas2r_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    goto ldv_40119;
    case 4: ;
    if (ldv_state_variable_4 == 3) {
      ldv_retval_2 = ldv_suspend_late_4();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_4 = 4;
      } else {
      }
    } else {
    }
    goto ldv_40119;
    case 5: ;
    if (ldv_state_variable_4 == 4) {
      ldv_retval_1 = ldv_resume_early_4();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      ldv_retval_1 = ldv_resume_early_4();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 5;
      } else {
      }
    } else {
    }
    goto ldv_40119;
    case 6: ;
    if (ldv_state_variable_4 == 4) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 4;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 2;
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 5;
    } else {
    }
    goto ldv_40119;
    default:
    ldv_stop();
    }
    ldv_40119: ;
  } else {
  }
  goto ldv_40079;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      esas2r_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_40130;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_6 = esas2r_init();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_9 = 1;
        ldv_initialize_bin_attribute_9();
        ldv_state_variable_10 = 1;
        ldv_initialize_bin_attribute_10();
        ldv_state_variable_7 = 1;
        ldv_initialize_bin_attribute_7();
        ldv_state_variable_11 = 1;
        ldv_initialize_bin_attribute_11();
        ldv_state_variable_6 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_bin_attribute_8();
      } else {
      }
      if (ldv_retval_6 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_40130;
    default:
    ldv_stop();
    }
    ldv_40130: ;
  } else {
  }
  goto ldv_40079;
  case 10: ;
  if (ldv_state_variable_10 != 0) {
    tmp___25 = __VERIFIER_nondet_int();
    switch (tmp___25) {
    case 0: ;
    if (ldv_state_variable_10 == 2) {
      write_fs(bin_attr_fs_group1, bin_attr_fs_group0, bin_attr_fs_group2, ldvarg40,
               ldvarg41, ldvarg39);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_40135;
    case 1: ;
    if (ldv_state_variable_10 == 2) {
      read_fs(bin_attr_fs_group1, bin_attr_fs_group0, bin_attr_fs_group2, ldvarg37,
              ldvarg38, ldvarg36);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_40135;
    case 2: ;
    if (ldv_state_variable_10 == 2) {
      ldv_release_10();
      ldv_state_variable_10 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40135;
    case 3: ;
    if (ldv_state_variable_10 == 1) {
      ldv_probe_10();
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40135;
    default:
    ldv_stop();
    }
    ldv_40135: ;
  } else {
  }
  goto ldv_40079;
  case 11: ;
  if (ldv_state_variable_5 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_show_info(ldvarg45, driver_template_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_show_info(ldvarg45, driver_template_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      scsi_change_queue_depth(driver_template_group2, ldvarg44);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      scsi_change_queue_depth(driver_template_group2, ldvarg44);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_queuecommand(driver_template_group1, driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_queuecommand(driver_template_group1, driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_target_reset(driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_target_reset(driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_device_reset(driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_device_reset(driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_eh_abort(driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_eh_abort(driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 6: ;
    if (ldv_state_variable_5 == 2) {
      esas2r_release(driver_template_group1);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40142;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_ioctl(driver_template_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_ioctl(driver_template_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_bus_reset(driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_bus_reset(driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_host_reset(driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_host_reset(driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      esas2r_info(driver_template_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      esas2r_info(driver_template_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_40142;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      ldv_probe_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40142;
    default:
    ldv_stop();
    }
    ldv_40142: ;
  } else {
  }
  goto ldv_40079;
  default:
  ldv_stop();
  }
  ldv_40079: ;
  goto ldv_40156;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_337(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_338(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_339(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void *ldv_kmem_cache_alloc_346(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_scsi_add_host_with_dma_350(struct Scsi_Host *shost , struct device *dev ,
                                   struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
struct Scsi_Host *ldv_scsi_host_alloc_351(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___8 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___8 )0)) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv___pci_register_driver_352(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_353(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
__inline static void ldv_unregister_chrdev_354(unsigned int major , char const *name )
{
  {
  unregister_chrdev(major, name);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_pci_unregister_driver_355(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
void ldv_scsi_unregister_356(struct Scsi_Host *shost )
{
  {
  scsi_unregister(shost);
  ldv_state_variable_5 = 0;
  return;
}
}
__inline static int ldv_register_chrdev_357(unsigned int major , char const *name ,
                                            struct file_operations const *fops )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = register_chrdev(major, name, fops);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  ldv_file_operations_3();
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_358(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
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
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
void __const_udelay(unsigned long arg0) {
  return;
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
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
void __tasklet_hi_schedule(struct tasklet_struct *arg0) {
  return;
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *external_alloc(void);
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return (void *)external_alloc();
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 dma_get_required_mask(struct device *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_interruptible(struct semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_open_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_11() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_9() {
  return __VERIFIER_nondet_int();
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
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
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
int ldv_resume_early_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_4() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_4() {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
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
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_region(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_region(struct pci_dev *arg0, int arg1, const char *arg2) {
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
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct scsi_device *scsi_device_lookup(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return (struct scsi_device *)external_alloc();
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_device_set_state(struct scsi_device *arg0, enum scsi_device_state arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
void *external_alloc(void);
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return (struct Scsi_Host *)external_alloc();
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_report_bus_reset(struct Scsi_Host *arg0, int arg1) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_unregister(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void up(struct semaphore *arg0) {
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
