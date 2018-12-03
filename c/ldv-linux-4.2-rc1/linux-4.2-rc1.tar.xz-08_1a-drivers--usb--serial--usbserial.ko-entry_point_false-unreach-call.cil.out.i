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
typedef __u16 __le16;
typedef __u32 __le32;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct llist_head {
   struct llist_node *first ;
};
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
union __anonunion___u_168 {
   struct idr_layer *__val ;
   char __c[1U] ;
};
union __anonunion___u_170 {
   struct idr_layer *__val ;
   char __c[1U] ;
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
struct tty_port;
struct usb_interface;
struct device_driver;
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
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct proc_dir_entry;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_241 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_241 __annonCompField69 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   spinlock_t flow_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct class;
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
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
};
struct async_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 tx ;
   __u32 rx ;
   __u32 frame ;
   __u32 parity ;
   __u32 overrun ;
   __u32 brk ;
   __u32 buf_overrun ;
};
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
struct device_private;
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
struct usb_dynid {
   struct list_head node ;
   struct usb_device_id id ;
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
struct scatterlist;
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
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_253 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   unsigned char const *const_type ;
   char (*rectype)[0U] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_253 __annonCompField77 ;
   unsigned char buf[0U] ;
};
struct usb_serial;
struct usb_serial_port {
   struct usb_serial *serial ;
   struct tty_port port ;
   spinlock_t lock ;
   u32 minor ;
   u8 port_number ;
   unsigned char *interrupt_in_buffer ;
   struct urb *interrupt_in_urb ;
   __u8 interrupt_in_endpointAddress ;
   unsigned char *interrupt_out_buffer ;
   int interrupt_out_size ;
   struct urb *interrupt_out_urb ;
   __u8 interrupt_out_endpointAddress ;
   unsigned char *bulk_in_buffer ;
   int bulk_in_size ;
   struct urb *read_urb ;
   __u8 bulk_in_endpointAddress ;
   unsigned char *bulk_in_buffers[2U] ;
   struct urb *read_urbs[2U] ;
   unsigned long read_urbs_free ;
   unsigned char *bulk_out_buffer ;
   int bulk_out_size ;
   struct urb *write_urb ;
   struct kfifo write_fifo ;
   unsigned char *bulk_out_buffers[2U] ;
   struct urb *write_urbs[2U] ;
   unsigned long write_urbs_free ;
   __u8 bulk_out_endpointAddress ;
   struct async_icount icount ;
   int tx_bytes ;
   unsigned long flags ;
   wait_queue_head_t write_wait ;
   struct work_struct work ;
   char throttled ;
   char throttle_req ;
   unsigned long sysrq ;
   struct device dev ;
};
struct usb_serial_driver;
struct usb_serial {
   struct usb_device *dev ;
   struct usb_serial_driver *type ;
   struct usb_interface *interface ;
   unsigned char disconnected : 1 ;
   unsigned char suspending : 1 ;
   unsigned char attached : 1 ;
   unsigned char minors_reserved : 1 ;
   unsigned char num_ports ;
   unsigned char num_port_pointers ;
   char num_interrupt_in ;
   char num_interrupt_out ;
   char num_bulk_in ;
   char num_bulk_out ;
   struct usb_serial_port *port[8U] ;
   struct kref kref ;
   struct mutex disc_mutex ;
   void *private ;
};
struct usb_serial_driver {
   char const *description ;
   struct usb_device_id const *id_table ;
   char num_ports ;
   struct list_head driver_list ;
   struct device_driver driver ;
   struct usb_driver *usb_driver ;
   struct usb_dynids dynids ;
   size_t bulk_in_size ;
   size_t bulk_out_size ;
   int (*probe)(struct usb_serial * , struct usb_device_id const * ) ;
   int (*attach)(struct usb_serial * ) ;
   int (*calc_num_ports)(struct usb_serial * ) ;
   void (*disconnect)(struct usb_serial * ) ;
   void (*release)(struct usb_serial * ) ;
   int (*port_probe)(struct usb_serial_port * ) ;
   int (*port_remove)(struct usb_serial_port * ) ;
   int (*suspend)(struct usb_serial * , pm_message_t ) ;
   int (*resume)(struct usb_serial * ) ;
   int (*reset_resume)(struct usb_serial * ) ;
   int (*open)(struct tty_struct * , struct usb_serial_port * ) ;
   void (*close)(struct usb_serial_port * ) ;
   int (*write)(struct tty_struct * , struct usb_serial_port * , unsigned char const * ,
                int ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct usb_serial_port * , struct ktermios * ) ;
   void (*break_ctl)(struct tty_struct * , int ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , long ) ;
   bool (*tx_empty)(struct usb_serial_port * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*tiocmiwait)(struct tty_struct * , unsigned long ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   void (*dtr_rts)(struct usb_serial_port * , int ) ;
   int (*carrier_raised)(struct usb_serial_port * ) ;
   void (*init_termios)(struct tty_struct * ) ;
   void (*read_int_callback)(struct urb * ) ;
   void (*write_int_callback)(struct urb * ) ;
   void (*read_bulk_callback)(struct urb * ) ;
   void (*write_bulk_callback)(struct urb * ) ;
   void (*process_read_urb)(struct urb * ) ;
   int (*prepare_write_buffer)(struct usb_serial_port * , void * , size_t ) ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
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
enum hrtimer_restart;
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
extern void *memcpy(void * , void const   * , size_t  ) ;
typedef struct device *ldv_func_ret_type___6;
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
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
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
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
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
bool ldv_cancel_work_sync_20(struct work_struct *ldv_func_arg1 ) ;
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
extern void *idr_find_slowpath(struct idr * , int ) ;
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern void idr_remove(struct idr * , int ) ;
__inline static void *idr_find(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *________p1 ;
  struct idr_layer *_________p1 ;
  union __anonunion___u_168 __u ;
  int tmp ;
  struct idr_layer *________p1___0 ;
  struct idr_layer *_________p1___0 ;
  union __anonunion___u_170 __u___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  __read_once_size((void const volatile *)(& idr->hint), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  hint = ________p1;
  if ((unsigned long )hint != (unsigned long )((struct idr_layer *)0) && (id & -256) == hint->prefix) {
    __read_once_size((void const volatile *)(& hint->ary) + ((unsigned long )id & 255UL),
                     (void *)(& __u___0.__c), 8);
    _________p1___0 = __u___0.__val;
    ________p1___0 = _________p1___0;
    tmp___0 = debug_lockdep_rcu_enabled();
    return ((void *)________p1___0);
  } else {
  }
  tmp___1 = idr_find_slowpath(idr, id);
  return (tmp___1);
}
}
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
bool ldv_try_module_get_10(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_13(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
void ldv_module_put_12(struct module *ldv_func_arg1 ) ;
void ldv_module_put_14(struct module *ldv_func_arg1 ) ;
void ldv_module_put_15(struct module *ldv_func_arg1 ) ;
void ldv_module_put_16(struct module *ldv_func_arg1 ) ;
void ldv_module_put_17(struct module *ldv_func_arg1 ) ;
void ldv_module_put_18(struct module *ldv_func_arg1 ) ;
void ldv_module_put_19(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
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
struct work_struct *ldv_work_struct_1_0 ;
struct tty_port *serial_port_ops_group1 ;
struct work_struct *ldv_work_struct_1_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct usb_interface *usb_serial_driver_group1 ;
struct file *serial_proc_fops_group2 ;
int ldv_work_1_1 ;
int ldv_state_variable_2 ;
int usb_counter ;
struct tty_struct *serial_ops_group1 ;
struct tty_struct *usb_serial_generic_device_group0 ;
struct device *usb_serial_bus_type_group0 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct file *serial_ops_group0 ;
struct work_struct *ldv_work_struct_1_2 ;
struct device_driver *driver_attr_new_id_group0 ;
int ldv_state_variable_9 ;
struct inode *serial_proc_fops_group1 ;
int ldv_state_variable_3 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void ldv_usb_driver_5(void) ;
void ldv_file_operations_9(void) ;
void ldv_initialize_usb_serial_driver_4(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_tty_operations_6(void) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void ldv_initialize_driver_attribute_3(void) ;
void ldv_tty_port_operations_7(void) ;
void ldv_initialize_bus_type_2(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  bool tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if ((int )tmp___0) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_vhangup(struct tty_struct * ) ;
extern void tty_termios_copy_hw(struct ktermios * , struct ktermios * ) ;
extern void tty_port_init(struct tty_port * ) ;
extern void tty_port_destroy(struct tty_port * ) ;
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
extern void tty_port_hangup(struct tty_port * ) ;
extern void tty_port_tty_wakeup(struct tty_port * ) ;
extern void tty_port_close(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_port_install(struct tty_port * , struct tty_driver * , struct tty_struct * ) ;
extern int tty_port_open(struct tty_port * , struct tty_struct * , struct file * ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_is_bulk_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_is_bulk_out(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_out(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_int(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_is_int_out(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_int(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_out(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern int bus_register(struct bus_type * ) ;
extern void bus_unregister(struct bus_type * ) ;
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
extern int dev_set_name(struct device * , char const * , ...) ;
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
__inline static int device_is_registered(struct device *dev )
{
  {
  return ((int )dev->kobj.state_in_sysfs);
}
}
__inline static void device_enable_async_suspend(struct device *dev )
{
  {
  if (! dev->power.is_prepared) {
    dev->power.async_suspend = 1U;
  } else {
  }
  return;
}
}
extern void device_initialize(struct device * ) ;
extern int device_add(struct device * ) ;
extern void device_del(struct device * ) ;
extern int driver_attach(struct device_driver * ) ;
extern void put_device(struct device * ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
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
extern struct usb_interface *usb_get_intf(struct usb_interface * ) ;
extern void usb_put_intf(struct usb_interface * ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_autopm_get_interface(struct usb_interface * ) ;
extern void usb_autopm_put_interface(struct usb_interface * ) ;
extern struct usb_device_id const *usb_match_id(struct usb_interface * , struct usb_device_id const * ) ;
extern int usb_match_one_id(struct usb_interface * , struct usb_device_id const * ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
int ldv_usb_register_driver_24(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_22(struct usb_driver *arg ) ;
void ldv_usb_deregister_23(struct usb_driver *arg ) ;
void ldv_usb_deregister_25(struct usb_driver *arg ) ;
void ldv_usb_deregister_26(struct usb_driver *arg ) ;
extern int usb_disabled(void) ;
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
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern void usb_poison_urb(struct urb * ) ;
extern void usb_unpoison_urb(struct urb * ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static int usb_translate_errors(int error_code )
{
  {
  switch (error_code) {
  case 0: ;
  case -12: ;
  case -19: ;
  case -95: ;
  return (error_code);
  default: ;
  return (-5);
  }
}
}
__inline static int __kfifo_int_must_check_helper(int val )
{
  {
  return (val);
}
}
extern int __kfifo_alloc(struct __kfifo * , unsigned int , size_t , gfp_t ) ;
extern void __kfifo_free(struct __kfifo * ) ;
int usb_serial_register_drivers(struct usb_serial_driver * const *serial_drivers___0 ,
                                char const *name , struct usb_device_id const *id_table ) ;
void usb_serial_deregister_drivers(struct usb_serial_driver * const *serial_drivers___0 ) ;
void usb_serial_port_softint(struct usb_serial_port *port ) ;
int usb_serial_suspend(struct usb_interface *intf , pm_message_t message ) ;
int usb_serial_resume(struct usb_interface *intf ) ;
__inline static void usb_serial_console_init(int minor )
{
  {
  return;
}
}
__inline static void usb_serial_console_exit(void)
{
  {
  return;
}
}
__inline static void usb_serial_console_disconnect(struct usb_serial *serial )
{
  {
  return;
}
}
struct usb_serial_port *usb_serial_port_get_by_minor(unsigned int minor ) ;
void usb_serial_put(struct usb_serial *serial ) ;
int usb_serial_generic_open(struct tty_struct *tty , struct usb_serial_port *port ) ;
int usb_serial_generic_write(struct tty_struct *tty , struct usb_serial_port *port ,
                             unsigned char const *buf , int count ) ;
void usb_serial_generic_close(struct usb_serial_port *port ) ;
int usb_serial_generic_resume(struct usb_serial *serial ) ;
int usb_serial_generic_write_room(struct tty_struct *tty ) ;
int usb_serial_generic_chars_in_buffer(struct tty_struct *tty ) ;
void usb_serial_generic_wait_until_sent(struct tty_struct *tty , long timeout ) ;
void usb_serial_generic_read_bulk_callback(struct urb *urb ) ;
void usb_serial_generic_write_bulk_callback(struct urb *urb ) ;
int usb_serial_generic_register(void) ;
void usb_serial_generic_deregister(void) ;
void usb_serial_generic_process_read_urb(struct urb *urb ) ;
int usb_serial_generic_prepare_write_buffer(struct usb_serial_port *port , void *dest ,
                                            size_t size ) ;
int usb_serial_bus_register(struct usb_serial_driver *driver ) ;
void usb_serial_bus_deregister(struct usb_serial_driver *driver ) ;
struct usb_serial_driver usb_serial_generic_device ;
struct bus_type usb_serial_bus_type ;
struct tty_driver *usb_serial_tty_driver ;
static struct idr serial_minors = {0, 0, 0, 0, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "serial_minors.lock",
                                                                 0, 0UL}}}}, 0, 0};
static struct mutex table_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "table_lock.wait_lock",
                                                          0, 0UL}}}}, {& table_lock.wait_list,
                                                                       & table_lock.wait_list},
    0, (void *)(& table_lock), {0, {0, 0}, "table_lock", 0, 0UL}};
static struct list_head usb_serial_driver_list = {& usb_serial_driver_list, & usb_serial_driver_list};
struct usb_serial_port *usb_serial_port_get_by_minor(unsigned int minor )
{
  struct usb_serial *serial ;
  struct usb_serial_port *port ;
  void *tmp ;
  {
  mutex_lock_nested(& table_lock, 0U);
  tmp = idr_find(& serial_minors, (int )minor);
  port = (struct usb_serial_port *)tmp;
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    goto exit;
  } else {
  }
  serial = port->serial;
  mutex_lock_nested(& serial->disc_mutex, 0U);
  if ((unsigned int )*((unsigned char *)serial + 24UL) != 0U) {
    mutex_unlock(& serial->disc_mutex);
    port = (struct usb_serial_port *)0;
  } else {
    kref_get(& serial->kref);
  }
  exit:
  mutex_unlock(& table_lock);
  return (port);
}
}
static int allocate_minors(struct usb_serial *serial , int num_ports )
{
  struct usb_serial_port *port ;
  unsigned int i ;
  unsigned int j ;
  int minor ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "usbserial";
  descriptor.function = "allocate_minors";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s %d\n";
  descriptor.lineno = 94U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (serial->interface)->dev),
                      "%s %d\n", "allocate_minors", num_ports);
  } else {
  }
  mutex_lock_nested(& table_lock, 0U);
  i = 0U;
  goto ldv_32645;
  ldv_32644:
  port = serial->port[i];
  minor = idr_alloc(& serial_minors, (void *)port, 0, 0, 208U);
  if (minor < 0) {
    goto error;
  } else {
  }
  port->minor = (u32 )minor;
  port->port_number = (u8 )i;
  i = i + 1U;
  ldv_32645: ;
  if ((unsigned int )num_ports > i) {
    goto ldv_32644;
  } else {
  }
  serial->minors_reserved = 1U;
  mutex_unlock(& table_lock);
  return (0);
  error:
  j = 0U;
  goto ldv_32648;
  ldv_32647:
  idr_remove(& serial_minors, (int )(serial->port[j])->minor);
  j = j + 1U;
  ldv_32648: ;
  if (j < i) {
    goto ldv_32647;
  } else {
  }
  mutex_unlock(& table_lock);
  return (minor);
}
}
static void release_minors(struct usb_serial *serial )
{
  int i ;
  {
  mutex_lock_nested(& table_lock, 0U);
  i = 0;
  goto ldv_32655;
  ldv_32654:
  idr_remove(& serial_minors, (int )(serial->port[i])->minor);
  i = i + 1;
  ldv_32655: ;
  if ((int )serial->num_ports > i) {
    goto ldv_32654;
  } else {
  }
  mutex_unlock(& table_lock);
  serial->minors_reserved = 0U;
  return;
}
}
static void destroy_serial(struct kref *kref )
{
  struct usb_serial *serial ;
  struct usb_serial_port *port ;
  int i ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)kref;
  serial = (struct usb_serial *)__mptr + 0xffffffffffffffa0UL;
  if ((unsigned int )*((unsigned char *)serial + 24UL) != 0U) {
    release_minors(serial);
  } else {
  }
  if ((unsigned int )*((unsigned char *)serial + 24UL) != 0U && (unsigned long )(serial->type)->release != (unsigned long )((void (*)(struct usb_serial * ))0)) {
    (*((serial->type)->release))(serial);
  } else {
  }
  i = 0;
  goto ldv_32666;
  ldv_32665:
  port = serial->port[i];
  if ((unsigned long )port != (unsigned long )((struct usb_serial_port *)0)) {
    port->serial = (struct usb_serial *)0;
    put_device(& port->dev);
  } else {
  }
  i = i + 1;
  ldv_32666: ;
  if ((int )serial->num_port_pointers > i) {
    goto ldv_32665;
  } else {
  }
  usb_put_intf(serial->interface);
  usb_put_dev(serial->dev);
  kfree((void const *)serial);
  return;
}
}
void usb_serial_put(struct usb_serial *serial )
{
  {
  kref_put(& serial->kref, & destroy_serial);
  return;
}
}
static int serial_install(struct tty_driver *driver , struct tty_struct *tty )
{
  int idx ;
  struct usb_serial *serial ;
  struct usb_serial_port *port ;
  int retval ;
  bool tmp ;
  int tmp___0 ;
  {
  idx = tty->index;
  retval = -19;
  port = usb_serial_port_get_by_minor((unsigned int )idx);
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    return (retval);
  } else {
  }
  serial = port->serial;
  tmp = ldv_try_module_get_10((serial->type)->driver.owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto error_module_get;
  } else {
  }
  retval = usb_autopm_get_interface(serial->interface);
  if (retval != 0) {
    goto error_get_interface;
  } else {
  }
  retval = tty_port_install(& port->port, driver, tty);
  if (retval != 0) {
    goto error_init_termios;
  } else {
  }
  mutex_unlock(& serial->disc_mutex);
  if ((unsigned long )(serial->type)->init_termios != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    (*((serial->type)->init_termios))(tty);
  } else {
  }
  tty->driver_data = (void *)port;
  return (retval);
  error_init_termios:
  usb_autopm_put_interface(serial->interface);
  error_get_interface:
  ldv_module_put_11((serial->type)->driver.owner);
  error_module_get:
  usb_serial_put(serial);
  mutex_unlock(& serial->disc_mutex);
  return (retval);
}
}
static int serial_port_activate(struct tty_port *tport , struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct tty_port const *__mptr ;
  struct usb_serial *serial ;
  int retval ;
  {
  __mptr = (struct tty_port const *)tport;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffffff8UL;
  serial = port->serial;
  mutex_lock_nested(& serial->disc_mutex, 0U);
  if ((unsigned int )*((unsigned char *)serial + 24UL) != 0U) {
    retval = -19;
  } else {
    retval = (*(((port->serial)->type)->open))(tty, port);
  }
  mutex_unlock(& serial->disc_mutex);
  if (retval < 0) {
    retval = usb_translate_errors(retval);
  } else {
  }
  return (retval);
}
}
static int serial_open(struct tty_struct *tty , struct file *filp )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_open";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 246U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_open");
  } else {
  }
  tmp___0 = tty_port_open(& port->port, tty, filp);
  return (tmp___0);
}
}
static void serial_port_shutdown(struct tty_port *tport )
{
  struct usb_serial_port *port ;
  struct tty_port const *__mptr ;
  struct usb_serial_driver *drv ;
  {
  __mptr = (struct tty_port const *)tport;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffffff8UL;
  drv = (port->serial)->type;
  if ((unsigned long )drv->close != (unsigned long )((void (*)(struct usb_serial_port * ))0)) {
    (*(drv->close))(port);
  } else {
  }
  return;
}
}
static void serial_hangup(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_hangup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 275U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_hangup");
  } else {
  }
  tty_port_hangup(& port->port);
  return;
}
}
static void serial_close(struct tty_struct *tty , struct file *filp )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_close";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 284U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_close");
  } else {
  }
  tty_port_close(& port->port, tty, filp);
  return;
}
}
static void serial_cleanup(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct usb_serial *serial ;
  struct module *owner ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_cleanup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 304U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_cleanup");
  } else {
  }
  if ((unsigned int )*((unsigned char *)port + 696UL) != 0U) {
    return;
  } else {
  }
  tty->driver_data = (void *)0;
  serial = port->serial;
  owner = (serial->type)->driver.owner;
  mutex_lock_nested(& serial->disc_mutex, 0U);
  if ((unsigned int )*((unsigned char *)serial + 24UL) == 0U) {
    usb_autopm_put_interface(serial->interface);
  } else {
  }
  mutex_unlock(& serial->disc_mutex);
  usb_serial_put(serial);
  ldv_module_put_12(owner);
  return;
}
}
static int serial_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct usb_serial_port *port ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  retval = -19;
  if ((unsigned int )((port->serial)->dev)->state == 0U) {
    goto exit;
  } else {
  }
  descriptor.modname = "usbserial";
  descriptor.function = "serial_write";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s - %d byte(s)\n";
  descriptor.lineno = 335U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s - %d byte(s)\n",
                      "serial_write", count);
  } else {
  }
  retval = (*(((port->serial)->type)->write))(tty, port, buf, count);
  if (retval < 0) {
    retval = usb_translate_errors(retval);
  } else {
  }
  exit: ;
  return (retval);
}
}
static int serial_write_room(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_write_room";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 348U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_write_room");
  } else {
  }
  tmp___0 = (*(((port->serial)->type)->write_room))(tty);
  return (tmp___0);
}
}
static int serial_chars_in_buffer(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct usb_serial *serial ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  serial = port->serial;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_chars_in_buffer";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 358U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_chars_in_buffer");
  } else {
  }
  if ((unsigned int )*((unsigned char *)serial + 24UL) != 0U) {
    return (0);
  } else {
  }
  tmp___0 = (*((serial->type)->chars_in_buffer))(tty);
  return (tmp___0);
}
}
static void serial_wait_until_sent(struct tty_struct *tty , int timeout )
{
  struct usb_serial_port *port ;
  struct usb_serial *serial ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  serial = port->serial;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_wait_until_sent";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 371U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_wait_until_sent");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->wait_until_sent == (unsigned long )((void (*)(struct tty_struct * ,
                                                                                            long ))0)) {
    return;
  } else {
  }
  mutex_lock_nested(& serial->disc_mutex, 0U);
  if ((unsigned int )*((unsigned char *)serial + 24UL) == 0U) {
    (*(((port->serial)->type)->wait_until_sent))(tty, (long )timeout);
  } else {
  }
  mutex_unlock(& serial->disc_mutex);
  return;
}
}
static void serial_throttle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_throttle";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 386U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_throttle");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->throttle != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    (*(((port->serial)->type)->throttle))(tty);
  } else {
  }
  return;
}
}
static void serial_unthrottle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_unthrottle";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 396U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_unthrottle");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->unthrottle != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    (*(((port->serial)->type)->unthrottle))(tty);
  } else {
  }
  return;
}
}
static int serial_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct usb_serial_port *port ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  retval = -515;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s - cmd 0x%04x\n";
  descriptor.lineno = 408U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s - cmd 0x%04x\n",
                      "serial_ioctl", cmd);
  } else {
  }
  switch (cmd) {
  case 21596U: ;
  if ((unsigned long )((port->serial)->type)->tiocmiwait != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                      unsigned long ))0)) {
    retval = (*(((port->serial)->type)->tiocmiwait))(tty, arg);
  } else {
  }
  goto ldv_32779;
  default: ;
  if ((unsigned long )((port->serial)->type)->ioctl != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                 unsigned int ,
                                                                                 unsigned long ))0)) {
    retval = (*(((port->serial)->type)->ioctl))(tty, cmd, arg);
  } else {
  }
  }
  ldv_32779: ;
  return (retval);
}
}
static void serial_set_termios(struct tty_struct *tty , struct ktermios *old )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_set_termios";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 427U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_set_termios");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->set_termios != (unsigned long )((void (*)(struct tty_struct * ,
                                                                                        struct usb_serial_port * ,
                                                                                        struct ktermios * ))0)) {
    (*(((port->serial)->type)->set_termios))(tty, port, old);
  } else {
    tty_termios_copy_hw(& tty->termios, old);
  }
  return;
}
}
static int serial_break(struct tty_struct *tty , int break_state )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_break";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 439U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_break");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->break_ctl != (unsigned long )((void (*)(struct tty_struct * ,
                                                                                      int ))0)) {
    (*(((port->serial)->type)->break_ctl))(tty, break_state);
  } else {
  }
  return (0);
}
}
static int serial_proc_show(struct seq_file *m , void *v )
{
  struct usb_serial *serial ;
  struct usb_serial_port *port ;
  int i ;
  char tmp[40U] ;
  struct module *__mod ;
  {
  seq_puts(m, "usbserinfo:1.0 driver:2.0\n");
  i = 0;
  goto ldv_32807;
  ldv_32806:
  port = usb_serial_port_get_by_minor((unsigned int )i);
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    goto ldv_32803;
  } else {
  }
  serial = port->serial;
  seq_printf(m, "%d:", i);
  if ((unsigned long )(serial->type)->driver.owner != (unsigned long )((struct module *)0)) {
    __mod = (serial->type)->driver.owner;
    seq_printf(m, " module:%s", (unsigned long )__mod != (unsigned long )((struct module *)0) ? (char *)(& __mod->name) : (char *)"kernel");
  } else {
  }
  seq_printf(m, " name:\"%s\"", (serial->type)->description);
  seq_printf(m, " vendor:%04x product:%04x", (int )(serial->dev)->descriptor.idVendor,
             (int )(serial->dev)->descriptor.idProduct);
  seq_printf(m, " num_ports:%d", (int )serial->num_ports);
  seq_printf(m, " port:%d", (int )port->port_number);
  usb_make_path(serial->dev, (char *)(& tmp), 40UL);
  seq_printf(m, " path:%s", (char *)(& tmp));
  seq_putc(m, 10);
  usb_serial_put(serial);
  mutex_unlock(& serial->disc_mutex);
  ldv_32803:
  i = i + 1;
  ldv_32807: ;
  if (i <= 511) {
    goto ldv_32806;
  } else {
  }
  return (0);
}
}
static int serial_proc_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & serial_proc_show, (void *)0);
  return (tmp);
}
}
static struct file_operations const serial_proc_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & serial_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int serial_tiocmget(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_tiocmget";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 499U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_tiocmget");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->tiocmget != (unsigned long )((int (*)(struct tty_struct * ))0)) {
    tmp___0 = (*(((port->serial)->type)->tiocmget))(tty);
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int serial_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_tiocmset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 511U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_tiocmset");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->tiocmset != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                    unsigned int ,
                                                                                    unsigned int ))0)) {
    tmp___0 = (*(((port->serial)->type)->tiocmset))(tty, set, clear);
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int serial_get_icount(struct tty_struct *tty , struct serial_icounter_struct *icount )
{
  struct usb_serial_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  descriptor.modname = "usbserial";
  descriptor.function = "serial_get_icount";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 523U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "%s\n", "serial_get_icount");
  } else {
  }
  if ((unsigned long )((port->serial)->type)->get_icount != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                      struct serial_icounter_struct * ))0)) {
    tmp___0 = (*(((port->serial)->type)->get_icount))(tty, icount);
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
void usb_serial_port_softint(struct usb_serial_port *port )
{
  {
  schedule_work(& port->work);
  return;
}
}
static char const __kstrtab_usb_serial_port_softint[24U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'p',
        'o', 'r', 't', '_',
        's', 'o', 'f', 't',
        'i', 'n', 't', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_port_softint ;
struct kernel_symbol const __ksymtab_usb_serial_port_softint = {(unsigned long )(& usb_serial_port_softint), (char const *)(& __kstrtab_usb_serial_port_softint)};
static void usb_serial_port_work(struct work_struct *work )
{
  struct usb_serial_port *port ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffffa28UL;
  tty_port_tty_wakeup(& port->port);
  return;
}
}
static void usb_serial_port_poison_urbs(struct usb_serial_port *port )
{
  int i ;
  {
  i = 0;
  goto ldv_32858;
  ldv_32857:
  usb_poison_urb(port->read_urbs[i]);
  i = i + 1;
  ldv_32858: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32857;
  } else {
  }
  i = 0;
  goto ldv_32863;
  ldv_32862:
  usb_poison_urb(port->write_urbs[i]);
  i = i + 1;
  ldv_32863: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32862;
  } else {
  }
  usb_poison_urb(port->interrupt_in_urb);
  usb_poison_urb(port->interrupt_out_urb);
  return;
}
}
static void usb_serial_port_unpoison_urbs(struct usb_serial_port *port )
{
  int i ;
  {
  i = 0;
  goto ldv_32872;
  ldv_32871:
  usb_unpoison_urb(port->read_urbs[i]);
  i = i + 1;
  ldv_32872: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32871;
  } else {
  }
  i = 0;
  goto ldv_32877;
  ldv_32876:
  usb_unpoison_urb(port->write_urbs[i]);
  i = i + 1;
  ldv_32877: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32876;
  } else {
  }
  usb_unpoison_urb(port->interrupt_in_urb);
  usb_unpoison_urb(port->interrupt_out_urb);
  return;
}
}
static void usb_serial_port_release(struct device *dev )
{
  struct usb_serial_port *port ;
  struct device const *__mptr ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  {
  __mptr = (struct device const *)dev;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffff9c8UL;
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_port_release";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 580U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s\n", "usb_serial_port_release");
  } else {
  }
  usb_free_urb(port->interrupt_in_urb);
  usb_free_urb(port->interrupt_out_urb);
  i = 0;
  goto ldv_32891;
  ldv_32890:
  usb_free_urb(port->read_urbs[i]);
  kfree((void const *)port->bulk_in_buffers[i]);
  i = i + 1;
  ldv_32891: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32890;
  } else {
  }
  i = 0;
  goto ldv_32896;
  ldv_32895:
  usb_free_urb(port->write_urbs[i]);
  kfree((void const *)port->bulk_out_buffers[i]);
  i = i + 1;
  ldv_32896: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32895;
  } else {
  }
  __tmp = & port->write_fifo;
  __kfifo = & __tmp->__annonCompField77.kfifo;
  __kfifo_free(__kfifo);
  kfree((void const *)port->interrupt_in_buffer);
  kfree((void const *)port->interrupt_out_buffer);
  tty_port_destroy(& port->port);
  kfree((void const *)port);
  return;
}
}
static struct usb_serial *create_serial(struct usb_device *dev , struct usb_interface *interface ,
                                        struct usb_serial_driver *driver )
{
  struct usb_serial *serial ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(272UL, 208U);
  serial = (struct usb_serial *)tmp;
  if ((unsigned long )serial == (unsigned long )((struct usb_serial *)0)) {
    return ((struct usb_serial *)0);
  } else {
  }
  serial->dev = usb_get_dev(dev);
  serial->type = driver;
  serial->interface = usb_get_intf(interface);
  kref_init(& serial->kref);
  __mutex_init(& serial->disc_mutex, "&serial->disc_mutex", & __key);
  serial->minors_reserved = 0U;
  return (serial);
}
}
static struct usb_device_id const *match_dynamic_id(struct usb_interface *intf ,
                                                      struct usb_serial_driver *drv )
{
  struct usb_dynid *dynid ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  spin_lock(& drv->dynids.lock);
  __mptr = (struct list_head const *)drv->dynids.list.next;
  dynid = (struct usb_dynid *)__mptr;
  goto ldv_32917;
  ldv_32916:
  tmp = usb_match_one_id(intf, (struct usb_device_id const *)(& dynid->id));
  if (tmp != 0) {
    spin_unlock(& drv->dynids.lock);
    return ((struct usb_device_id const *)(& dynid->id));
  } else {
  }
  __mptr___0 = (struct list_head const *)dynid->node.next;
  dynid = (struct usb_dynid *)__mptr___0;
  ldv_32917: ;
  if ((unsigned long )(& dynid->node) != (unsigned long )(& drv->dynids.list)) {
    goto ldv_32916;
  } else {
  }
  spin_unlock(& drv->dynids.lock);
  return ((struct usb_device_id const *)0);
}
}
static struct usb_device_id const *get_iface_id(struct usb_serial_driver *drv ,
                                                  struct usb_interface *intf )
{
  struct usb_device_id const *id ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  id = usb_match_id(intf, drv->id_table);
  if ((unsigned long )id != (unsigned long )((struct usb_device_id const *)0)) {
    descriptor.modname = "usbserial";
    descriptor.function = "get_iface_id";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor.format = "static descriptor matches\n";
    descriptor.lineno = 641U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& intf->dev), "static descriptor matches\n");
    } else {
    }
    goto exit;
  } else {
  }
  id = match_dynamic_id(intf, drv);
  if ((unsigned long )id != (unsigned long )((struct usb_device_id const *)0)) {
    descriptor___0.modname = "usbserial";
    descriptor___0.function = "get_iface_id";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___0.format = "dynamic descriptor matches\n";
    descriptor___0.lineno = 646U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& intf->dev),
                        "dynamic descriptor matches\n");
    } else {
    }
  } else {
  }
  exit: ;
  return (id);
}
}
static struct usb_serial_driver *search_serial_device(struct usb_interface *iface )
{
  struct usb_device_id const *id ;
  struct usb_serial_driver *drv ;
  struct usb_driver *driver ;
  struct device_driver const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  id = (struct usb_device_id const *)0;
  __mptr = (struct device_driver const *)iface->dev.driver;
  driver = (struct usb_driver *)__mptr + 0xffffffffffffff58UL;
  __mptr___0 = (struct list_head const *)usb_serial_driver_list.next;
  drv = (struct usb_serial_driver *)__mptr___0 + 0xffffffffffffffe8UL;
  goto ldv_32941;
  ldv_32940: ;
  if ((unsigned long )drv->usb_driver == (unsigned long )driver) {
    id = get_iface_id(drv, iface);
  } else {
  }
  if ((unsigned long )id != (unsigned long )((struct usb_device_id const *)0)) {
    return (drv);
  } else {
  }
  __mptr___1 = (struct list_head const *)drv->driver_list.next;
  drv = (struct usb_serial_driver *)__mptr___1 + 0xffffffffffffffe8UL;
  ldv_32941: ;
  if ((unsigned long )(& drv->driver_list) != (unsigned long )(& usb_serial_driver_list)) {
    goto ldv_32940;
  } else {
  }
  return ((struct usb_serial_driver *)0);
}
}
static int serial_port_carrier_raised(struct tty_port *port )
{
  struct usb_serial_port *p ;
  struct tty_port const *__mptr ;
  struct usb_serial_driver *drv ;
  int tmp ;
  {
  __mptr = (struct tty_port const *)port;
  p = (struct usb_serial_port *)__mptr + 0xfffffffffffffff8UL;
  drv = (p->serial)->type;
  if ((unsigned long )drv->carrier_raised != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
    tmp = (*(drv->carrier_raised))(p);
    return (tmp);
  } else {
  }
  return (1);
}
}
static void serial_port_dtr_rts(struct tty_port *port , int on )
{
  struct usb_serial_port *p ;
  struct tty_port const *__mptr ;
  struct usb_serial_driver *drv ;
  {
  __mptr = (struct tty_port const *)port;
  p = (struct usb_serial_port *)__mptr + 0xfffffffffffffff8UL;
  drv = (p->serial)->type;
  if ((unsigned long )drv->dtr_rts != (unsigned long )((void (*)(struct usb_serial_port * ,
                                                                 int ))0)) {
    (*(drv->dtr_rts))(p, on);
  } else {
  }
  return;
}
}
static ssize_t port_number_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct usb_serial_port *port ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffff9c8UL;
  tmp = sprintf(buf, "%u\n", (int )port->port_number);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_port_number = {{"port_number", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & port_number_show, 0};
static struct attribute *usb_serial_port_attrs[2U] = { & dev_attr_port_number.attr, (struct attribute *)0};
static struct attribute_group const usb_serial_port_group = {0, 0, (struct attribute **)(& usb_serial_port_attrs), 0};
static struct attribute_group const *usb_serial_port_groups[2U] = { & usb_serial_port_group, (struct attribute_group const *)0};
static struct tty_port_operations const serial_port_ops = {& serial_port_carrier_raised, & serial_port_dtr_rts, & serial_port_shutdown, & serial_port_activate,
    0};
static int usb_serial_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct device *ddev ;
  struct usb_device *dev ;
  struct usb_device *tmp ;
  struct usb_serial *serial ;
  struct usb_serial_port *port ;
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  struct usb_endpoint_descriptor *interrupt_in_endpoint[8U] ;
  struct usb_endpoint_descriptor *interrupt_out_endpoint[8U] ;
  struct usb_endpoint_descriptor *bulk_in_endpoint[8U] ;
  struct usb_endpoint_descriptor *bulk_out_endpoint[8U] ;
  struct usb_serial_driver *type ;
  int retval ;
  int buffer_size ;
  int i ;
  int j ;
  int num_interrupt_in ;
  int num_interrupt_out ;
  int num_bulk_in ;
  int num_bulk_out ;
  int num_ports ;
  int max_endpoints ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct usb_device_id const *id___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  int tmp___11 ;
  struct _ddebug descriptor___5 ;
  long tmp___12 ;
  int tmp___13 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _max1___2 ;
  int _max2___2 ;
  struct _ddebug descriptor___6 ;
  long tmp___14 ;
  void *tmp___15 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  int __max1 ;
  int __max2 ;
  int tmp___16 ;
  void *tmp___17 ;
  unsigned int tmp___18 ;
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  int tmp___19 ;
  int tmp___20 ;
  void *tmp___21 ;
  unsigned int tmp___22 ;
  void *tmp___23 ;
  unsigned int tmp___24 ;
  struct _ddebug descriptor___7 ;
  long tmp___25 ;
  void *tmp___26 ;
  unsigned int tmp___27 ;
  struct _ddebug descriptor___8 ;
  long tmp___28 ;
  int tmp___29 ;
  struct _ddebug descriptor___9 ;
  char const *tmp___30 ;
  long tmp___31 ;
  {
  ddev = & interface->dev;
  tmp = interface_to_usbdev(interface);
  dev = tmp;
  serial = (struct usb_serial *)0;
  type = (struct usb_serial_driver *)0;
  num_interrupt_in = 0;
  num_interrupt_out = 0;
  num_bulk_in = 0;
  num_bulk_out = 0;
  num_ports = 0;
  mutex_lock_nested(& table_lock, 0U);
  type = search_serial_device(interface);
  if ((unsigned long )type == (unsigned long )((struct usb_serial_driver *)0)) {
    mutex_unlock(& table_lock);
    descriptor.modname = "usbserial";
    descriptor.function = "usb_serial_probe";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor.format = "none matched\n";
    descriptor.lineno = 741U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)ddev, "none matched\n");
    } else {
    }
    return (-19);
  } else {
  }
  tmp___1 = ldv_try_module_get_13(type->driver.owner);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    mutex_unlock(& table_lock);
    dev_err((struct device const *)ddev, "module get failed, exiting\n");
    return (-5);
  } else {
  }
  mutex_unlock(& table_lock);
  serial = create_serial(dev, interface, type);
  if ((unsigned long )serial == (unsigned long )((struct usb_serial *)0)) {
    ldv_module_put_14(type->driver.owner);
    return (-12);
  } else {
  }
  if ((unsigned long )type->probe != (unsigned long )((int (*)(struct usb_serial * ,
                                                               struct usb_device_id const * ))0)) {
    id___0 = get_iface_id(type, interface);
    retval = (*(type->probe))(serial, id___0);
    if (retval != 0) {
      descriptor___0.modname = "usbserial";
      descriptor___0.function = "usb_serial_probe";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
      descriptor___0.format = "sub driver rejected device\n";
      descriptor___0.lineno = 766U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)ddev, "sub driver rejected device\n");
      } else {
      }
      usb_serial_put(serial);
      ldv_module_put_15(type->driver.owner);
      return (retval);
    } else {
    }
  } else {
  }
  iface_desc = interface->cur_altsetting;
  i = 0;
  goto ldv_33005;
  ldv_33004:
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  tmp___5 = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)endpoint);
  if (tmp___5 != 0) {
    descriptor___1.modname = "usbserial";
    descriptor___1.function = "usb_serial_probe";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___1.format = "found bulk in on endpoint %d\n";
    descriptor___1.lineno = 781U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)ddev, "found bulk in on endpoint %d\n",
                        i);
    } else {
    }
    if (num_bulk_in <= 7) {
      bulk_in_endpoint[num_bulk_in] = endpoint;
      num_bulk_in = num_bulk_in + 1;
    } else {
    }
  } else {
  }
  tmp___7 = usb_endpoint_is_bulk_out((struct usb_endpoint_descriptor const *)endpoint);
  if (tmp___7 != 0) {
    descriptor___2.modname = "usbserial";
    descriptor___2.function = "usb_serial_probe";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___2.format = "found bulk out on endpoint %d\n";
    descriptor___2.lineno = 790U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)ddev, "found bulk out on endpoint %d\n",
                        i);
    } else {
    }
    if (num_bulk_out <= 7) {
      bulk_out_endpoint[num_bulk_out] = endpoint;
      num_bulk_out = num_bulk_out + 1;
    } else {
    }
  } else {
  }
  tmp___9 = usb_endpoint_is_int_in((struct usb_endpoint_descriptor const *)endpoint);
  if (tmp___9 != 0) {
    descriptor___3.modname = "usbserial";
    descriptor___3.function = "usb_serial_probe";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___3.format = "found interrupt in on endpoint %d\n";
    descriptor___3.lineno = 799U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)ddev, "found interrupt in on endpoint %d\n",
                        i);
    } else {
    }
    if (num_interrupt_in <= 7) {
      interrupt_in_endpoint[num_interrupt_in] = endpoint;
      num_interrupt_in = num_interrupt_in + 1;
    } else {
    }
  } else {
  }
  tmp___11 = usb_endpoint_is_int_out((struct usb_endpoint_descriptor const *)endpoint);
  if (tmp___11 != 0) {
    descriptor___4.modname = "usbserial";
    descriptor___4.function = "usb_serial_probe";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___4.format = "found interrupt out on endpoint %d\n";
    descriptor___4.lineno = 809U;
    descriptor___4.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)ddev, "found interrupt out on endpoint %d\n",
                        i);
    } else {
    }
    if (num_interrupt_out <= 7) {
      interrupt_out_endpoint[num_interrupt_out] = endpoint;
      num_interrupt_out = num_interrupt_out + 1;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33005: ;
  if ((int )iface_desc->desc.bNumEndpoints > i) {
    goto ldv_33004;
  } else {
  }
  if (((((unsigned int )dev->descriptor.idVendor == 1659U && (unsigned int )dev->descriptor.idProduct == 8963U) || ((unsigned int )dev->descriptor.idVendor == 1367U && (unsigned int )dev->descriptor.idProduct == 8200U)) || ((unsigned int )dev->descriptor.idVendor == 1423U && (unsigned int )dev->descriptor.idProduct == 38688U)) || ((unsigned int )dev->descriptor.idVendor == 4597U && (unsigned int )dev->descriptor.idProduct == 5U)) {
    if ((unsigned long )(dev->actconfig)->interface[0] != (unsigned long )interface) {
      iface_desc = ((dev->actconfig)->interface[0])->cur_altsetting;
      i = 0;
      goto ldv_33009;
      ldv_33008:
      endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
      tmp___13 = usb_endpoint_is_int_in((struct usb_endpoint_descriptor const *)endpoint);
      if (tmp___13 != 0) {
        descriptor___5.modname = "usbserial";
        descriptor___5.function = "usb_serial_probe";
        descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
        descriptor___5.format = "found interrupt in for Prolific device on separate interface\n";
        descriptor___5.lineno = 836U;
        descriptor___5.flags = 0U;
        tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
        if (tmp___12 != 0L) {
          __dynamic_dev_dbg(& descriptor___5, (struct device const *)ddev, "found interrupt in for Prolific device on separate interface\n");
        } else {
        }
        if (num_interrupt_in <= 7) {
          interrupt_in_endpoint[num_interrupt_in] = endpoint;
          num_interrupt_in = num_interrupt_in + 1;
        } else {
        }
      } else {
      }
      i = i + 1;
      ldv_33009: ;
      if ((int )iface_desc->desc.bNumEndpoints > i) {
        goto ldv_33008;
      } else {
      }
    } else {
    }
    if (num_bulk_in == 0 || num_bulk_out == 0) {
      _dev_info((struct device const *)ddev, "PL-2303 hack: descriptors matched but endpoints did not\n");
      usb_serial_put(serial);
      ldv_module_put_16(type->driver.owner);
      return (-19);
    } else {
    }
  } else {
  }
  if ((unsigned long )type == (unsigned long )(& usb_serial_generic_device)) {
    num_ports = num_bulk_out;
    if (num_ports == 0) {
      dev_err((struct device const *)ddev, "Generic device with no bulk out, not allowed.\n");
      usb_serial_put(serial);
      ldv_module_put_17(type->driver.owner);
      return (-5);
    } else {
    }
    _dev_info((struct device const *)ddev, "The \"generic\" usb-serial driver is only for testing and one-off prototypes.\n");
    _dev_info((struct device const *)ddev, "Tell linux-usb@vger.kernel.org to add your device to a proper driver.\n");
  } else {
  }
  if (num_ports == 0) {
    if ((unsigned long )type->calc_num_ports != (unsigned long )((int (*)(struct usb_serial * ))0)) {
      num_ports = (*(type->calc_num_ports))(serial);
    } else {
    }
    if (num_ports == 0) {
      num_ports = (int )type->num_ports;
    } else {
    }
  } else {
  }
  if (num_ports > 8) {
    dev_warn((struct device const *)ddev, "too many ports requested: %d\n", num_ports);
    num_ports = 8;
  } else {
  }
  serial->num_ports = (unsigned char )num_ports;
  serial->num_bulk_in = (char )num_bulk_in;
  serial->num_bulk_out = (char )num_bulk_out;
  serial->num_interrupt_in = (char )num_interrupt_in;
  serial->num_interrupt_out = (char )num_interrupt_out;
  _dev_info((struct device const *)ddev, "%s converter detected\n", type->description);
  _max1 = num_bulk_in;
  _max2 = num_bulk_out;
  max_endpoints = _max1 > _max2 ? _max1 : _max2;
  _max1___0 = max_endpoints;
  _max2___0 = num_interrupt_in;
  max_endpoints = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  _max1___1 = max_endpoints;
  _max2___1 = num_interrupt_out;
  max_endpoints = _max1___1 > _max2___1 ? _max1___1 : _max2___1;
  _max1___2 = max_endpoints;
  _max2___2 = (int )serial->num_ports;
  max_endpoints = _max1___2 > _max2___2 ? _max1___2 : _max2___2;
  serial->num_port_pointers = (unsigned char )max_endpoints;
  descriptor___6.modname = "usbserial";
  descriptor___6.function = "usb_serial_probe";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor___6.format = "setting up %d port structure(s)\n";
  descriptor___6.lineno = 903U;
  descriptor___6.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)ddev, "setting up %d port structure(s)\n",
                      max_endpoints);
  } else {
  }
  i = 0;
  goto ldv_33029;
  ldv_33028:
  tmp___15 = kzalloc(3008UL, 208U);
  port = (struct usb_serial_port *)tmp___15;
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    goto probe_error;
  } else {
  }
  tty_port_init(& port->port);
  port->port.ops = & serial_port_ops;
  port->serial = serial;
  spinlock_check(& port->lock);
  __raw_spin_lock_init(& port->lock.__annonCompField18.rlock, "&(&port->lock)->rlock",
                       & __key);
  __init_work(& port->work, 0);
  __constr_expr_0.counter = 137438953408L;
  port->work.data = __constr_expr_0;
  lockdep_init_map(& port->work.lockdep_map, "(&port->work)", & __key___0, 0);
  INIT_LIST_HEAD(& port->work.entry);
  port->work.func = & usb_serial_port_work;
  serial->port[i] = port;
  port->dev.parent = & interface->dev;
  port->dev.driver = (struct device_driver *)0;
  port->dev.bus = & usb_serial_bus_type;
  port->dev.release = & usb_serial_port_release;
  port->dev.groups = (struct attribute_group const **)(& usb_serial_port_groups);
  device_initialize(& port->dev);
  i = i + 1;
  ldv_33029: ;
  if (i < max_endpoints) {
    goto ldv_33028;
  } else {
  }
  i = 0;
  goto ldv_33040;
  ldv_33039:
  endpoint = bulk_in_endpoint[i];
  port = serial->port[i];
  __max1 = (int )(serial->type)->bulk_in_size;
  tmp___16 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)endpoint);
  __max2 = tmp___16;
  buffer_size = __max1 > __max2 ? __max1 : __max2;
  port->bulk_in_size = buffer_size;
  port->bulk_in_endpointAddress = endpoint->bEndpointAddress;
  j = 0;
  goto ldv_33037;
  ldv_33036:
  set_bit((long )j, (unsigned long volatile *)(& port->read_urbs_free));
  port->read_urbs[j] = usb_alloc_urb(0, 208U);
  if ((unsigned long )port->read_urbs[j] == (unsigned long )((struct urb *)0)) {
    goto probe_error;
  } else {
  }
  tmp___17 = kmalloc((size_t )buffer_size, 208U);
  port->bulk_in_buffers[j] = (unsigned char *)tmp___17;
  if ((unsigned long )port->bulk_in_buffers[j] == (unsigned long )((unsigned char *)0U)) {
    goto probe_error;
  } else {
  }
  tmp___18 = __create_pipe(dev, (unsigned int )endpoint->bEndpointAddress);
  usb_fill_bulk_urb(port->read_urbs[j], dev, tmp___18 | 3221225600U, (void *)port->bulk_in_buffers[j],
                    buffer_size, (serial->type)->read_bulk_callback, (void *)port);
  j = j + 1;
  ldv_33037: ;
  if ((unsigned int )j <= 1U) {
    goto ldv_33036;
  } else {
  }
  port->read_urb = port->read_urbs[0];
  port->bulk_in_buffer = port->bulk_in_buffers[0];
  i = i + 1;
  ldv_33040: ;
  if (i < num_bulk_in) {
    goto ldv_33039;
  } else {
  }
  i = 0;
  goto ldv_33051;
  ldv_33050:
  endpoint = bulk_out_endpoint[i];
  port = serial->port[i];
  __tmp = & port->write_fifo;
  __kfifo = & __tmp->__annonCompField77.kfifo;
  tmp___19 = __kfifo_alloc(__kfifo, 4096U, 1UL, 208U);
  tmp___20 = __kfifo_int_must_check_helper(tmp___19);
  if (tmp___20 != 0) {
    goto probe_error;
  } else {
  }
  buffer_size = (int )(serial->type)->bulk_out_size;
  if (buffer_size == 0) {
    buffer_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)endpoint);
  } else {
  }
  port->bulk_out_size = buffer_size;
  port->bulk_out_endpointAddress = endpoint->bEndpointAddress;
  j = 0;
  goto ldv_33048;
  ldv_33047:
  set_bit((long )j, (unsigned long volatile *)(& port->write_urbs_free));
  port->write_urbs[j] = usb_alloc_urb(0, 208U);
  if ((unsigned long )port->write_urbs[j] == (unsigned long )((struct urb *)0)) {
    goto probe_error;
  } else {
  }
  tmp___21 = kmalloc((size_t )buffer_size, 208U);
  port->bulk_out_buffers[j] = (unsigned char *)tmp___21;
  if ((unsigned long )port->bulk_out_buffers[j] == (unsigned long )((unsigned char *)0U)) {
    goto probe_error;
  } else {
  }
  tmp___22 = __create_pipe(dev, (unsigned int )endpoint->bEndpointAddress);
  usb_fill_bulk_urb(port->write_urbs[j], dev, tmp___22 | 3221225472U, (void *)port->bulk_out_buffers[j],
                    buffer_size, (serial->type)->write_bulk_callback, (void *)port);
  j = j + 1;
  ldv_33048: ;
  if ((unsigned int )j <= 1U) {
    goto ldv_33047;
  } else {
  }
  port->write_urb = port->write_urbs[0];
  port->bulk_out_buffer = port->bulk_out_buffers[0];
  i = i + 1;
  ldv_33051: ;
  if (i < num_bulk_out) {
    goto ldv_33050;
  } else {
  }
  if ((unsigned long )(serial->type)->read_int_callback != (unsigned long )((void (*)(struct urb * ))0)) {
    i = 0;
    goto ldv_33054;
    ldv_33053:
    endpoint = interrupt_in_endpoint[i];
    port = serial->port[i];
    port->interrupt_in_urb = usb_alloc_urb(0, 208U);
    if ((unsigned long )port->interrupt_in_urb == (unsigned long )((struct urb *)0)) {
      goto probe_error;
    } else {
    }
    buffer_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)endpoint);
    port->interrupt_in_endpointAddress = endpoint->bEndpointAddress;
    tmp___23 = kmalloc((size_t )buffer_size, 208U);
    port->interrupt_in_buffer = (unsigned char *)tmp___23;
    if ((unsigned long )port->interrupt_in_buffer == (unsigned long )((unsigned char *)0U)) {
      goto probe_error;
    } else {
    }
    tmp___24 = __create_pipe(dev, (unsigned int )endpoint->bEndpointAddress);
    usb_fill_int_urb(port->interrupt_in_urb, dev, tmp___24 | 1073741952U, (void *)port->interrupt_in_buffer,
                     buffer_size, (serial->type)->read_int_callback, (void *)port,
                     (int )endpoint->bInterval);
    i = i + 1;
    ldv_33054: ;
    if (i < num_interrupt_in) {
      goto ldv_33053;
    } else {
    }
  } else
  if (num_interrupt_in != 0) {
    descriptor___7.modname = "usbserial";
    descriptor___7.function = "usb_serial_probe";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___7.format = "The device claims to support interrupt in transfers, but read_int_callback is not defined\n";
    descriptor___7.lineno = 1008U;
    descriptor___7.flags = 0U;
    tmp___25 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___25 != 0L) {
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)ddev, "The device claims to support interrupt in transfers, but read_int_callback is not defined\n");
    } else {
    }
  } else {
  }
  if ((unsigned long )(serial->type)->write_int_callback != (unsigned long )((void (*)(struct urb * ))0)) {
    i = 0;
    goto ldv_33058;
    ldv_33057:
    endpoint = interrupt_out_endpoint[i];
    port = serial->port[i];
    port->interrupt_out_urb = usb_alloc_urb(0, 208U);
    if ((unsigned long )port->interrupt_out_urb == (unsigned long )((struct urb *)0)) {
      goto probe_error;
    } else {
    }
    buffer_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)endpoint);
    port->interrupt_out_size = buffer_size;
    port->interrupt_out_endpointAddress = endpoint->bEndpointAddress;
    tmp___26 = kmalloc((size_t )buffer_size, 208U);
    port->interrupt_out_buffer = (unsigned char *)tmp___26;
    if ((unsigned long )port->interrupt_out_buffer == (unsigned long )((unsigned char *)0U)) {
      goto probe_error;
    } else {
    }
    tmp___27 = __create_pipe(dev, (unsigned int )endpoint->bEndpointAddress);
    usb_fill_int_urb(port->interrupt_out_urb, dev, tmp___27 | 1073741824U, (void *)port->interrupt_out_buffer,
                     buffer_size, (serial->type)->write_int_callback, (void *)port,
                     (int )endpoint->bInterval);
    i = i + 1;
    ldv_33058: ;
    if (i < num_interrupt_out) {
      goto ldv_33057;
    } else {
    }
  } else
  if (num_interrupt_out != 0) {
    descriptor___8.modname = "usbserial";
    descriptor___8.function = "usb_serial_probe";
    descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___8.format = "The device claims to support interrupt out transfers, but write_int_callback is not defined\n";
    descriptor___8.lineno = 1034U;
    descriptor___8.flags = 0U;
    tmp___28 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    if (tmp___28 != 0L) {
      __dynamic_dev_dbg(& descriptor___8, (struct device const *)ddev, "The device claims to support interrupt out transfers, but write_int_callback is not defined\n");
    } else {
    }
  } else {
  }
  usb_set_intfdata(interface, (void *)serial);
  if ((unsigned long )type->attach != (unsigned long )((int (*)(struct usb_serial * ))0)) {
    retval = (*(type->attach))(serial);
    if (retval < 0) {
      goto probe_error;
    } else {
    }
    serial->attached = 1U;
    if (retval > 0) {
      serial->num_ports = 0U;
      goto exit;
    } else {
    }
  } else {
    serial->attached = 1U;
  }
  serial->disconnected = 1U;
  tmp___29 = allocate_minors(serial, num_ports);
  if (tmp___29 != 0) {
    dev_err((struct device const *)ddev, "No more free serial minor numbers\n");
    goto probe_error;
  } else {
  }
  i = 0;
  goto ldv_33064;
  ldv_33063:
  port = serial->port[i];
  dev_set_name(& port->dev, "ttyUSB%d", port->minor);
  descriptor___9.modname = "usbserial";
  descriptor___9.function = "usb_serial_probe";
  descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
  descriptor___9.format = "registering %s\n";
  descriptor___9.lineno = 1070U;
  descriptor___9.flags = 0U;
  tmp___31 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___31 != 0L) {
    tmp___30 = dev_name((struct device const *)(& port->dev));
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)ddev, "registering %s\n",
                      tmp___30);
  } else {
  }
  device_enable_async_suspend(& port->dev);
  retval = device_add(& port->dev);
  if (retval != 0) {
    dev_err((struct device const *)ddev, "Error registering port device, continuing\n");
  } else {
  }
  i = i + 1;
  ldv_33064: ;
  if (i < num_ports) {
    goto ldv_33063;
  } else {
  }
  serial->disconnected = 0U;
  usb_serial_console_init((int )(serial->port[0])->minor);
  exit:
  ldv_module_put_18(type->driver.owner);
  return (0);
  probe_error:
  usb_serial_put(serial);
  ldv_module_put_19(type->driver.owner);
  return (-5);
}
}
static void usb_serial_disconnect(struct usb_interface *interface )
{
  int i ;
  struct usb_serial *serial ;
  void *tmp ;
  struct device *dev ;
  struct usb_serial_port *port ;
  struct tty_struct *tty ;
  int tmp___0 ;
  {
  tmp = usb_get_intfdata(interface);
  serial = (struct usb_serial *)tmp;
  dev = & interface->dev;
  usb_serial_console_disconnect(serial);
  mutex_lock_nested(& serial->disc_mutex, 0U);
  serial->disconnected = 1U;
  mutex_unlock(& serial->disc_mutex);
  i = 0;
  goto ldv_33075;
  ldv_33074:
  port = serial->port[i];
  tty = tty_port_tty_get(& port->port);
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0)) {
    tty_vhangup(tty);
    tty_kref_put(tty);
  } else {
  }
  usb_serial_port_poison_urbs(port);
  __wake_up(& port->port.delta_msr_wait, 1U, 1, (void *)0);
  ldv_cancel_work_sync_20(& port->work);
  tmp___0 = device_is_registered(& port->dev);
  if (tmp___0 != 0) {
    device_del(& port->dev);
  } else {
  }
  i = i + 1;
  ldv_33075: ;
  if ((int )serial->num_ports > i) {
    goto ldv_33074;
  } else {
  }
  if ((unsigned long )(serial->type)->disconnect != (unsigned long )((void (*)(struct usb_serial * ))0)) {
    (*((serial->type)->disconnect))(serial);
  } else {
  }
  usb_serial_put(serial);
  _dev_info((struct device const *)dev, "device disconnected\n");
  return;
}
}
int usb_serial_suspend(struct usb_interface *intf , pm_message_t message )
{
  struct usb_serial *serial ;
  void *tmp ;
  int i ;
  int r ;
  {
  tmp = usb_get_intfdata(intf);
  serial = (struct usb_serial *)tmp;
  r = 0;
  serial->suspending = 1U;
  if ((unsigned long )(serial->type)->suspend != (unsigned long )((int (*)(struct usb_serial * ,
                                                                           pm_message_t ))0)) {
    r = (*((serial->type)->suspend))(serial, message);
    if (r < 0) {
      serial->suspending = 0U;
      goto err_out;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_33086;
  ldv_33085:
  usb_serial_port_poison_urbs(serial->port[i]);
  i = i + 1;
  ldv_33086: ;
  if ((int )serial->num_ports > i) {
    goto ldv_33085;
  } else {
  }
  err_out: ;
  return (r);
}
}
static char const __kstrtab_usb_serial_suspend[19U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 's',
        'u', 's', 'p', 'e',
        'n', 'd', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_suspend ;
struct kernel_symbol const __ksymtab_usb_serial_suspend = {(unsigned long )(& usb_serial_suspend), (char const *)(& __kstrtab_usb_serial_suspend)};
static void usb_serial_unpoison_port_urbs(struct usb_serial *serial )
{
  int i ;
  {
  i = 0;
  goto ldv_33101;
  ldv_33100:
  usb_serial_port_unpoison_urbs(serial->port[i]);
  i = i + 1;
  ldv_33101: ;
  if ((int )serial->num_ports > i) {
    goto ldv_33100;
  } else {
  }
  return;
}
}
int usb_serial_resume(struct usb_interface *intf )
{
  struct usb_serial *serial ;
  void *tmp ;
  int rv ;
  {
  tmp = usb_get_intfdata(intf);
  serial = (struct usb_serial *)tmp;
  usb_serial_unpoison_port_urbs(serial);
  serial->suspending = 0U;
  if ((unsigned long )(serial->type)->resume != (unsigned long )((int (*)(struct usb_serial * ))0)) {
    rv = (*((serial->type)->resume))(serial);
  } else {
    rv = usb_serial_generic_resume(serial);
  }
  return (rv);
}
}
static char const __kstrtab_usb_serial_resume[18U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'r',
        'e', 's', 'u', 'm',
        'e', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_resume ;
struct kernel_symbol const __ksymtab_usb_serial_resume = {(unsigned long )(& usb_serial_resume), (char const *)(& __kstrtab_usb_serial_resume)};
static int usb_serial_reset_resume(struct usb_interface *intf )
{
  struct usb_serial *serial ;
  void *tmp ;
  int rv ;
  {
  tmp = usb_get_intfdata(intf);
  serial = (struct usb_serial *)tmp;
  usb_serial_unpoison_port_urbs(serial);
  serial->suspending = 0U;
  if ((unsigned long )(serial->type)->reset_resume != (unsigned long )((int (*)(struct usb_serial * ))0)) {
    rv = (*((serial->type)->reset_resume))(serial);
  } else {
    rv = -95;
    intf->needs_binding = 1U;
  }
  return (rv);
}
}
static struct tty_operations const serial_ops =
     {0, & serial_install, 0, & serial_open, & serial_close, 0, & serial_cleanup, & serial_write,
    0, 0, & serial_write_room, & serial_chars_in_buffer, & serial_ioctl, 0, & serial_set_termios,
    & serial_throttle, & serial_unthrottle, 0, 0, & serial_hangup, & serial_break,
    0, 0, & serial_wait_until_sent, 0, & serial_tiocmget, & serial_tiocmset, 0, 0,
    & serial_get_icount, 0, 0, 0, & serial_proc_fops};
static struct usb_driver usb_serial_driver =
     {"usbserial", & usb_serial_probe, & usb_serial_disconnect, 0, & usb_serial_suspend,
    & usb_serial_resume, 0, 0, 0, 0, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                      {0, 0}}, {{0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0,
                                                 0, 0, 0, 0, 0, 0, 0}, 0}, 1U, 1U,
    (unsigned char)0, (unsigned char)0};
static int usb_serial_init(void)
{
  int result ;
  {
  usb_serial_tty_driver = alloc_tty_driver(512U);
  if ((unsigned long )usb_serial_tty_driver == (unsigned long )((struct tty_driver *)0)) {
    return (-12);
  } else {
  }
  result = bus_register(& usb_serial_bus_type);
  if (result != 0) {
    printk("\vusbserial: %s - registering bus driver failed\n", "usb_serial_init");
    goto exit_bus;
  } else {
  }
  usb_serial_tty_driver->driver_name = "usbserial";
  usb_serial_tty_driver->name = "ttyUSB";
  usb_serial_tty_driver->major = 188;
  usb_serial_tty_driver->minor_start = 0;
  usb_serial_tty_driver->type = 3;
  usb_serial_tty_driver->subtype = 1;
  usb_serial_tty_driver->flags = 12UL;
  usb_serial_tty_driver->init_termios = tty_std_termios;
  usb_serial_tty_driver->init_termios.c_cflag = 3261U;
  usb_serial_tty_driver->init_termios.c_ispeed = 9600U;
  usb_serial_tty_driver->init_termios.c_ospeed = 9600U;
  tty_set_operations(usb_serial_tty_driver, & serial_ops);
  result = tty_register_driver(usb_serial_tty_driver);
  if (result != 0) {
    printk("\vusbserial: %s - tty_register_driver failed\n", "usb_serial_init");
    goto exit_reg_driver;
  } else {
  }
  result = ldv_usb_register_driver_21(& usb_serial_driver, & __this_module, "usbserial");
  if (result < 0) {
    printk("\vusbserial: %s - usb_register failed\n", "usb_serial_init");
    goto exit_tty;
  } else {
  }
  result = usb_serial_generic_register();
  if (result < 0) {
    printk("\vusbserial: %s - registering generic driver failed\n", "usb_serial_init");
    goto exit_generic;
  } else {
  }
  return (result);
  exit_generic:
  ldv_usb_deregister_22(& usb_serial_driver);
  exit_tty:
  tty_unregister_driver(usb_serial_tty_driver);
  exit_reg_driver:
  bus_unregister(& usb_serial_bus_type);
  exit_bus:
  printk("\vusbserial: %s - returning with error %d\n", "usb_serial_init", result);
  put_tty_driver(usb_serial_tty_driver);
  return (result);
}
}
static void usb_serial_exit(void)
{
  {
  usb_serial_console_exit();
  usb_serial_generic_deregister();
  ldv_usb_deregister_23(& usb_serial_driver);
  tty_unregister_driver(usb_serial_tty_driver);
  put_tty_driver(usb_serial_tty_driver);
  bus_unregister(& usb_serial_bus_type);
  return;
}
}
static void usb_serial_operations_init(struct usb_serial_driver *device )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  struct _ddebug descriptor___7 ;
  long tmp___7 ;
  struct _ddebug descriptor___8 ;
  long tmp___8 ;
  {
  if ((unsigned long )device->open == (unsigned long )((int (*)(struct tty_struct * ,
                                                                struct usb_serial_port * ))0)) {
    device->open = & usb_serial_generic_open;
    descriptor.modname = "usbserial";
    descriptor.function = "usb_serial_operations_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor.format = "%s: using generic open\n";
    descriptor.lineno = 1326U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "usbserial: %s: using generic open\n", device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->write == (unsigned long )((int (*)(struct tty_struct * ,
                                                                 struct usb_serial_port * ,
                                                                 unsigned char const * ,
                                                                 int ))0)) {
    device->write = & usb_serial_generic_write;
    descriptor___0.modname = "usbserial";
    descriptor___0.function = "usb_serial_operations_init";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___0.format = "%s: using generic write\n";
    descriptor___0.lineno = 1327U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "usbserial: %s: using generic write\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->close == (unsigned long )((void (*)(struct usb_serial_port * ))0)) {
    device->close = & usb_serial_generic_close;
    descriptor___1.modname = "usbserial";
    descriptor___1.function = "usb_serial_operations_init";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___1.format = "%s: using generic close\n";
    descriptor___1.lineno = 1328U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "usbserial: %s: using generic close\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->write_room == (unsigned long )((int (*)(struct tty_struct * ))0)) {
    device->write_room = & usb_serial_generic_write_room;
    descriptor___2.modname = "usbserial";
    descriptor___2.function = "usb_serial_operations_init";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___2.format = "%s: using generic write_room\n";
    descriptor___2.lineno = 1329U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "usbserial: %s: using generic write_room\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->chars_in_buffer == (unsigned long )((int (*)(struct tty_struct * ))0)) {
    device->chars_in_buffer = & usb_serial_generic_chars_in_buffer;
    descriptor___3.modname = "usbserial";
    descriptor___3.function = "usb_serial_operations_init";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___3.format = "%s: using generic chars_in_buffer\n";
    descriptor___3.lineno = 1330U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "usbserial: %s: using generic chars_in_buffer\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->tx_empty != (unsigned long )((bool (*)(struct usb_serial_port * ))0)) {
    if ((unsigned long )device->wait_until_sent == (unsigned long )((void (*)(struct tty_struct * ,
                                                                              long ))0)) {
      device->wait_until_sent = & usb_serial_generic_wait_until_sent;
      descriptor___4.modname = "usbserial";
      descriptor___4.function = "usb_serial_operations_init";
      descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
      descriptor___4.format = "%s: using generic wait_until_sent\n";
      descriptor___4.lineno = 1332U;
      descriptor___4.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_pr_debug(& descriptor___4, "usbserial: %s: using generic wait_until_sent\n",
                           device->driver.name);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )device->read_bulk_callback == (unsigned long )((void (*)(struct urb * ))0)) {
    device->read_bulk_callback = & usb_serial_generic_read_bulk_callback;
    descriptor___5.modname = "usbserial";
    descriptor___5.function = "usb_serial_operations_init";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___5.format = "%s: using generic read_bulk_callback\n";
    descriptor___5.lineno = 1333U;
    descriptor___5.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "usbserial: %s: using generic read_bulk_callback\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->write_bulk_callback == (unsigned long )((void (*)(struct urb * ))0)) {
    device->write_bulk_callback = & usb_serial_generic_write_bulk_callback;
    descriptor___6.modname = "usbserial";
    descriptor___6.function = "usb_serial_operations_init";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___6.format = "%s: using generic write_bulk_callback\n";
    descriptor___6.lineno = 1334U;
    descriptor___6.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___6, "usbserial: %s: using generic write_bulk_callback\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->process_read_urb == (unsigned long )((void (*)(struct urb * ))0)) {
    device->process_read_urb = & usb_serial_generic_process_read_urb;
    descriptor___7.modname = "usbserial";
    descriptor___7.function = "usb_serial_operations_init";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___7.format = "%s: using generic process_read_urb\n";
    descriptor___7.lineno = 1335U;
    descriptor___7.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "usbserial: %s: using generic process_read_urb\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  if ((unsigned long )device->prepare_write_buffer == (unsigned long )((int (*)(struct usb_serial_port * ,
                                                                                void * ,
                                                                                size_t ))0)) {
    device->prepare_write_buffer = & usb_serial_generic_prepare_write_buffer;
    descriptor___8.modname = "usbserial";
    descriptor___8.function = "usb_serial_operations_init";
    descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c";
    descriptor___8.format = "%s: using generic prepare_write_buffer\n";
    descriptor___8.lineno = 1336U;
    descriptor___8.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_pr_debug(& descriptor___8, "usbserial: %s: using generic prepare_write_buffer\n",
                         device->driver.name);
    } else {
    }
  } else {
  }
  return;
}
}
static int usb_serial_register(struct usb_serial_driver *driver )
{
  int retval ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  tmp = usb_disabled();
  if (tmp != 0) {
    return (-19);
  } else {
  }
  if ((unsigned long )driver->description == (unsigned long )((char const *)0)) {
    driver->description = driver->driver.name;
  } else {
  }
  if ((unsigned long )driver->usb_driver == (unsigned long )((struct usb_driver *)0)) {
    __ret_warn_on = 1;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/usb-serial.c",
                        1350, "Serial driver %s has no usb_driver\n", driver->description);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  usb_serial_operations_init(driver);
  mutex_lock_nested(& table_lock, 0U);
  list_add(& driver->driver_list, & usb_serial_driver_list);
  retval = usb_serial_bus_register(driver);
  if (retval != 0) {
    printk("\vusbserial: problem %d when registering driver %s\n", retval, driver->description);
    list_del(& driver->driver_list);
  } else {
    printk("\016usbserial: USB Serial support registered for %s\n", driver->description);
  }
  mutex_unlock(& table_lock);
  return (retval);
}
}
static void usb_serial_deregister(struct usb_serial_driver *device )
{
  {
  printk("\016usbserial: USB Serial deregistering driver %s\n", device->description);
  mutex_lock_nested(& table_lock, 0U);
  list_del(& device->driver_list);
  mutex_unlock(& table_lock);
  usb_serial_bus_deregister(device);
  return;
}
}
int usb_serial_register_drivers(struct usb_serial_driver * const *serial_drivers___0 ,
                                char const *name , struct usb_device_id const *id_table )
{
  int rc ;
  struct usb_driver *udriver ;
  struct usb_serial_driver * const *sd ;
  void *tmp ;
  struct usb_serial_driver * const *tmp___0 ;
  {
  tmp = kzalloc(304UL, 208U);
  udriver = (struct usb_driver *)tmp;
  if ((unsigned long )udriver == (unsigned long )((struct usb_driver *)0)) {
    return (-12);
  } else {
  }
  udriver->name = name;
  udriver->no_dynamic_id = 1U;
  udriver->supports_autosuspend = 1U;
  udriver->suspend = & usb_serial_suspend;
  udriver->resume = & usb_serial_resume;
  udriver->probe = & usb_serial_probe;
  udriver->disconnect = & usb_serial_disconnect;
  sd = serial_drivers___0;
  goto ldv_33178;
  ldv_33177: ;
  if ((unsigned long )(*sd)->reset_resume != (unsigned long )((int (*)(struct usb_serial * ))0)) {
    udriver->reset_resume = & usb_serial_reset_resume;
    goto ldv_33176;
  } else {
  }
  sd = sd + 1;
  ldv_33178: ;
  if ((unsigned long )*sd != (unsigned long )((struct usb_serial_driver * )0)) {
    goto ldv_33177;
  } else {
  }
  ldv_33176:
  rc = ldv_usb_register_driver_24(udriver, & __this_module, "usbserial");
  if (rc != 0) {
    return (rc);
  } else {
  }
  sd = serial_drivers___0;
  goto ldv_33181;
  ldv_33180:
  (*sd)->usb_driver = udriver;
  rc = usb_serial_register(*sd);
  if (rc != 0) {
    goto failed;
  } else {
  }
  sd = sd + 1;
  ldv_33181: ;
  if ((unsigned long )*sd != (unsigned long )((struct usb_serial_driver * )0)) {
    goto ldv_33180;
  } else {
  }
  udriver->id_table = id_table;
  rc = driver_attach(& udriver->drvwrap.driver);
  return (0);
  failed: ;
  goto ldv_33184;
  ldv_33183:
  usb_serial_deregister(*sd);
  ldv_33184:
  tmp___0 = sd;
  sd = sd - 1;
  if ((unsigned long )tmp___0 > (unsigned long )serial_drivers___0) {
    goto ldv_33183;
  } else {
  }
  ldv_usb_deregister_25(udriver);
  return (rc);
}
}
static char const __kstrtab_usb_serial_register_drivers[28U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'd', 'r', 'i', 'v',
        'e', 'r', 's', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_register_drivers ;
struct kernel_symbol const __ksymtab_usb_serial_register_drivers = {(unsigned long )(& usb_serial_register_drivers), (char const *)(& __kstrtab_usb_serial_register_drivers)};
void usb_serial_deregister_drivers(struct usb_serial_driver * const *serial_drivers___0 )
{
  struct usb_driver *udriver ;
  {
  udriver = (*serial_drivers___0)->usb_driver;
  goto ldv_33200;
  ldv_33199:
  usb_serial_deregister(*serial_drivers___0);
  serial_drivers___0 = serial_drivers___0 + 1;
  ldv_33200: ;
  if ((unsigned long )*serial_drivers___0 != (unsigned long )((struct usb_serial_driver * )0)) {
    goto ldv_33199;
  } else {
  }
  ldv_usb_deregister_26(udriver);
  kfree((void const *)udriver);
  return;
}
}
static char const __kstrtab_usb_serial_deregister_drivers[30U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'd',
        'e', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'd', 'r',
        'i', 'v', 'e', 'r',
        's', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_deregister_drivers ;
struct kernel_symbol const __ksymtab_usb_serial_deregister_drivers = {(unsigned long )(& usb_serial_deregister_drivers), (char const *)(& __kstrtab_usb_serial_deregister_drivers)};
int ldv_retval_2 ;
extern int ldv_reset_resume_5(void) ;
int ldv_retval_0 ;
int ldv_retval_5 ;
int ldv_retval_6 ;
extern int ldv_destruct_7(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
void ldv_check_final_state(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
void ldv_usb_driver_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  usb_serial_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_file_operations_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  serial_proc_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  serial_proc_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    usb_serial_port_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    usb_serial_port_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    usb_serial_port_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    usb_serial_port_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_tty_operations_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = __VERIFIER_nondet_pointer();
  serial_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_init_zalloc(1816UL);
  serial_ops_group1 = (struct tty_struct *)tmp___0;
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
    usb_serial_port_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_33256;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    usb_serial_port_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_33256;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    usb_serial_port_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_33256;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    usb_serial_port_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_33256;
  default:
  ldv_stop();
  }
  ldv_33256: ;
  return;
}
}
void ldv_tty_port_operations_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1040UL);
  serial_port_ops_group1 = (struct tty_port *)tmp;
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
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
void ldv_main_exported_4(void) ;
int main(void)
{
  unsigned long ldvarg7 ;
  unsigned char *ldvarg3 ;
  void *tmp ;
  int ldvarg0 ;
  unsigned int ldvarg5 ;
  struct tty_driver *ldvarg6 ;
  void *tmp___0 ;
  unsigned int ldvarg8 ;
  int ldvarg1 ;
  unsigned int ldvarg4 ;
  struct serial_icounter_struct *ldvarg10 ;
  void *tmp___1 ;
  struct ktermios *ldvarg9 ;
  void *tmp___2 ;
  int ldvarg2 ;
  int ldvarg14 ;
  struct tty_struct *ldvarg15 ;
  void *tmp___3 ;
  loff_t *ldvarg18 ;
  void *tmp___4 ;
  char *ldvarg20 ;
  void *tmp___5 ;
  loff_t ldvarg17 ;
  size_t ldvarg19 ;
  int ldvarg16 ;
  struct device_attribute *ldvarg24 ;
  void *tmp___6 ;
  char *ldvarg23 ;
  void *tmp___7 ;
  struct device *ldvarg22 ;
  void *tmp___8 ;
  struct usb_device_id *ldvarg27 ;
  void *tmp___9 ;
  pm_message_t ldvarg26 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg3 = (unsigned char *)tmp;
  tmp___0 = ldv_init_zalloc(184UL);
  ldvarg6 = (struct tty_driver *)tmp___0;
  tmp___1 = ldv_init_zalloc(80UL);
  ldvarg10 = (struct serial_icounter_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(44UL);
  ldvarg9 = (struct ktermios *)tmp___2;
  tmp___3 = ldv_init_zalloc(1816UL);
  ldvarg15 = (struct tty_struct *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg18 = (loff_t *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(48UL);
  ldvarg24 = (struct device_attribute *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1416UL);
  ldvarg22 = (struct device *)tmp___8;
  tmp___9 = ldv_init_zalloc(32UL);
  ldvarg27 = (struct usb_device_id *)tmp___9;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg26), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_33373:
  tmp___10 = __VERIFIER_nondet_int();
  switch (tmp___10) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      serial_throttle(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_throttle(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      serial_hangup(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_hangup(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      serial_get_icount(serial_ops_group1, ldvarg10);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_get_icount(serial_ops_group1, ldvarg10);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      serial_unthrottle(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_unthrottle(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = serial_open(serial_ops_group1, serial_ops_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33316;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      serial_set_termios(serial_ops_group1, ldvarg9);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_set_termios(serial_ops_group1, ldvarg9);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 6: ;
    if (ldv_state_variable_6 == 1) {
      serial_ioctl(serial_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_ioctl(serial_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 7: ;
    if (ldv_state_variable_6 == 1) {
      serial_install(ldvarg6, serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_install(ldvarg6, serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 8: ;
    if (ldv_state_variable_6 == 1) {
      serial_tiocmset(serial_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_tiocmset(serial_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 9: ;
    if (ldv_state_variable_6 == 2) {
      serial_write(serial_ops_group1, (unsigned char const *)ldvarg3, ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 10: ;
    if (ldv_state_variable_6 == 1) {
      serial_cleanup(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_cleanup(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 11: ;
    if (ldv_state_variable_6 == 2) {
      serial_close(serial_ops_group1, serial_ops_group0);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_33316;
    case 12: ;
    if (ldv_state_variable_6 == 1) {
      serial_write_room(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_write_room(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 13: ;
    if (ldv_state_variable_6 == 1) {
      serial_break(serial_ops_group1, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_break(serial_ops_group1, ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 14: ;
    if (ldv_state_variable_6 == 1) {
      serial_chars_in_buffer(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_chars_in_buffer(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 15: ;
    if (ldv_state_variable_6 == 1) {
      serial_tiocmget(serial_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_tiocmget(serial_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    case 16: ;
    if (ldv_state_variable_6 == 1) {
      serial_wait_until_sent(serial_ops_group1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      serial_wait_until_sent(serial_ops_group1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33316;
    default:
    ldv_stop();
    }
    ldv_33316: ;
  } else {
  }
  goto ldv_33334;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_33334;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_1 = serial_port_activate(serial_port_ops_group1, ldvarg15);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33338;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      serial_port_carrier_raised(serial_port_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      serial_port_carrier_raised(serial_port_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      serial_port_carrier_raised(serial_port_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_33338;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      serial_port_dtr_rts(serial_port_ops_group1, ldvarg14);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      serial_port_dtr_rts(serial_port_ops_group1, ldvarg14);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      serial_port_dtr_rts(serial_port_ops_group1, ldvarg14);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_33338;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      serial_port_shutdown(serial_port_ops_group1);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33338;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      ldv_destruct_7();
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_33338;
    default:
    ldv_stop();
    }
    ldv_33338: ;
  } else {
  }
  goto ldv_33334;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_9 == 2) {
      single_release(serial_proc_fops_group1, serial_proc_fops_group2);
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33346;
    case 1: ;
    if (ldv_state_variable_9 == 2) {
      seq_read(serial_proc_fops_group2, ldvarg20, ldvarg19, ldvarg18);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_33346;
    case 2: ;
    if (ldv_state_variable_9 == 2) {
      seq_lseek(serial_proc_fops_group2, ldvarg17, ldvarg16);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_33346;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_2 = serial_proc_open(serial_proc_fops_group1, serial_proc_fops_group2);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33346;
    default:
    ldv_stop();
    }
    ldv_33346: ;
  } else {
  }
  goto ldv_33334;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_33334;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      port_number_show(ldvarg22, ldvarg24, ldvarg23);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33354;
    default:
    ldv_stop();
    }
    ldv_33354: ;
  } else {
  }
  goto ldv_33334;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_33334;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_33334;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      usb_serial_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_33361;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_5 = usb_serial_init();
      if (ldv_retval_5 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_5 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_2 = 1;
        ldv_initialize_bus_type_2();
        ldv_state_variable_9 = 1;
        ldv_file_operations_9();
        ldv_state_variable_3 = 1;
        ldv_initialize_driver_attribute_3();
        ldv_state_variable_4 = 1;
        ldv_initialize_usb_serial_driver_4();
        ldv_state_variable_6 = 1;
        ldv_initialize_tty_operations_6();
        ldv_state_variable_8 = 1;
      } else {
      }
    } else {
    }
    goto ldv_33361;
    default:
    ldv_stop();
    }
    ldv_33361: ;
  } else {
  }
  goto ldv_33334;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_8 = usb_serial_probe(usb_serial_driver_group1, (struct usb_device_id const *)ldvarg27);
      if (ldv_retval_8 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33366;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      usb_serial_suspend(usb_serial_driver_group1, ldvarg26);
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_33366;
    case 2: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_7 = usb_serial_resume(usb_serial_driver_group1);
      if (ldv_retval_7 == 0) {
        ldv_state_variable_5 = 2;
      } else {
      }
    } else {
    }
    goto ldv_33366;
    case 3: ;
    if (ldv_state_variable_5 == 3 && usb_counter == 0) {
      usb_serial_disconnect(usb_serial_driver_group1);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_5 == 2 && usb_counter == 0) {
      usb_serial_disconnect(usb_serial_driver_group1);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33366;
    case 4: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_6 = ldv_reset_resume_5();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_5 = 2;
      } else {
      }
    } else {
    }
    goto ldv_33366;
    default:
    ldv_stop();
    }
    ldv_33366: ;
  } else {
  }
  goto ldv_33334;
  default:
  ldv_stop();
  }
  ldv_33334: ;
  goto ldv_33373;
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
bool ldv_try_module_get_10(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_11(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_12(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_13(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_14(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_15(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_16(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_17(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_18(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_19(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_work_sync_20(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  usb_counter = 0;
  ldv_usb_driver_5();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_22(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_usb_deregister_23(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_5 = 0;
  return;
}
}
int ldv_usb_register_driver_24(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  usb_counter = 0;
  ldv_usb_driver_5();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_25(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_usb_deregister_26(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_5 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static void clear_bit_unlock(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(nr, addr);
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
__inline static int test_and_set_bit_lock(long nr , unsigned long volatile *addr )
{
  int tmp ;
  {
  tmp = test_and_set_bit(nr, addr);
  return (tmp);
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __bad_percpu_size(void) ;
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
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
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
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
bool ldv_queue_work_on_43(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_45(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_44(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 ) ;
extern long schedule_timeout_interruptible(long ) ;
extern void schedule(void) ;
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
extern void handle_sysrq(int ) ;
__inline static unsigned char *char_buf_ptr(struct tty_buffer *b , int ofs )
{
  {
  return ((unsigned char *)(& b->data) + (unsigned long )ofs);
}
}
__inline static char *flag_buf_ptr(struct tty_buffer *b , int ofs )
{
  unsigned char *tmp ;
  {
  tmp = char_buf_ptr(b, ofs);
  return ((char *)tmp + (unsigned long )b->size);
}
}
extern void tty_hangup(struct tty_struct * ) ;
extern speed_t tty_termios_baud_rate(struct ktermios * ) ;
__inline static speed_t tty_get_baud_rate(struct tty_struct *tty )
{
  speed_t tmp ;
  {
  tmp = tty_termios_baud_rate(& tty->termios);
  return (tmp);
}
}
extern struct tty_ldisc *tty_ldisc_ref(struct tty_struct * ) ;
extern void tty_ldisc_deref(struct tty_ldisc * ) ;
extern int tty_insert_flip_string_flags(struct tty_port * , unsigned char const * ,
                                        char const * , size_t ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_char(struct tty_port *port , unsigned char ch ,
                                         char flag )
{
  struct tty_buffer *tb ;
  int change ;
  char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  tb = port->buf.tail;
  change = tb->flags & 1 && (int )((signed char )flag) != 0;
  if (change == 0 && tb->used < tb->size) {
    if ((tb->flags & 1) == 0) {
      tmp = flag_buf_ptr(tb, tb->used);
      *tmp = flag;
    } else {
    }
    tmp___0 = tb->used;
    tb->used = tb->used + 1;
    tmp___1 = char_buf_ptr(tb, tmp___0);
    *tmp___1 = ch;
    return (1);
  } else {
  }
  tmp___2 = tty_insert_flip_string_flags(port, (unsigned char const *)(& ch), (char const *)(& flag),
                                         1UL);
  return (tmp___2);
}
}
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
__inline static unsigned int __kfifo_uint_must_check_helper(unsigned int val )
{
  {
  return (val);
}
}
extern unsigned int __kfifo_in(struct __kfifo * , void const * , unsigned int ) ;
extern unsigned int __kfifo_out(struct __kfifo * , void * , unsigned int ) ;
extern unsigned int __kfifo_in_r(struct __kfifo * , void const * , unsigned int ,
                                 size_t ) ;
extern unsigned int __kfifo_out_r(struct __kfifo * , void * , unsigned int , size_t ) ;
extern unsigned int __kfifo_max_r(unsigned int , size_t ) ;
int usb_serial_generic_write_start(struct usb_serial_port *port , gfp_t mem_flags ) ;
void usb_serial_generic_throttle(struct tty_struct *tty ) ;
void usb_serial_generic_unthrottle(struct tty_struct *tty ) ;
int usb_serial_generic_tiocmiwait(struct tty_struct *tty , unsigned long arg ) ;
int usb_serial_generic_get_icount(struct tty_struct *tty , struct serial_icounter_struct *icount ) ;
int usb_serial_generic_submit_read_urbs(struct usb_serial_port *port , gfp_t mem_flags ) ;
int usb_serial_handle_sysrq_char(struct usb_serial_port *port , unsigned int ch ) ;
int usb_serial_handle_break(struct usb_serial_port *port ) ;
void usb_serial_handle_dcd_change(struct usb_serial_port *usb_port , struct tty_struct *tty ,
                                  unsigned int status ) ;
__inline static void usb_serial_debug_data(struct device *dev , char const *function ,
                                           int size , unsigned char const *data )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_debug_data";
  descriptor.filename = "include/linux/usb/serial.h";
  descriptor.format = "%s - length = %d, data = %*ph\n";
  descriptor.lineno = 368U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "%s - length = %d, data = %*ph\n",
                      function, size, size, data);
  } else {
  }
  return;
}
}
static __u16 vendor = 1529U;
static __u16 product = 65535U;
static struct usb_device_id generic_device_ids[2U] ;
struct usb_serial_driver usb_serial_generic_device =
     {0, (struct usb_device_id const *)(& generic_device_ids), 1, {0, 0}, {"generic",
                                                                           0, & __this_module,
                                                                           0, (_Bool)0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0, 0},
    0, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, 0UL, 0UL, 0, 0, 0,
    0, 0, 0, 0, 0, & usb_serial_generic_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & usb_serial_generic_throttle,
    & usb_serial_generic_unthrottle, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct usb_serial_driver * const serial_drivers[2U] = { & usb_serial_generic_device, (struct usb_serial_driver *)0};
int usb_serial_generic_register(void)
{
  int retval ;
  {
  retval = 0;
  generic_device_ids[0].idVendor = vendor;
  generic_device_ids[0].idProduct = product;
  generic_device_ids[0].match_flags = 3U;
  retval = usb_serial_register_drivers((struct usb_serial_driver * const *)(& serial_drivers),
                                       "usbserial_generic", (struct usb_device_id const *)(& generic_device_ids));
  return (retval);
}
}
void usb_serial_generic_deregister(void)
{
  {
  usb_serial_deregister_drivers((struct usb_serial_driver * const *)(& serial_drivers));
  return;
}
}
int usb_serial_generic_open(struct tty_struct *tty , struct usb_serial_port *port )
{
  int result ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  result = 0;
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  port->throttled = 0;
  port->throttle_req = 0;
  spin_unlock_irqrestore(& port->lock, flags);
  if (port->bulk_in_size != 0) {
    result = usb_serial_generic_submit_read_urbs(port, 208U);
  } else {
  }
  return (result);
}
}
static char const __kstrtab_usb_serial_generic_open[24U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'o',
        'p', 'e', 'n', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_open ;
struct kernel_symbol const __ksymtab_usb_serial_generic_open = {(unsigned long )(& usb_serial_generic_open), (char const *)(& __kstrtab_usb_serial_generic_open)};
void usb_serial_generic_close(struct usb_serial_port *port )
{
  unsigned long flags ;
  int i ;
  raw_spinlock_t *tmp ;
  struct kfifo *__tmp ;
  {
  if (port->bulk_out_size != 0) {
    i = 0;
    goto ldv_32619;
    ldv_32618:
    usb_kill_urb(port->write_urbs[i]);
    i = i + 1;
    ldv_32619: ;
    if ((unsigned int )i <= 1U) {
      goto ldv_32618;
    } else {
    }
    tmp = spinlock_check(& port->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    __tmp = & port->write_fifo;
    __tmp->__annonCompField77.kfifo.out = __tmp->__annonCompField77.kfifo.in;
    spin_unlock_irqrestore(& port->lock, flags);
  } else {
  }
  if (port->bulk_in_size != 0) {
    i = 0;
    goto ldv_32629;
    ldv_32628:
    usb_kill_urb(port->read_urbs[i]);
    i = i + 1;
    ldv_32629: ;
    if ((unsigned int )i <= 1U) {
      goto ldv_32628;
    } else {
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_usb_serial_generic_close[25U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'c',
        'l', 'o', 's', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_close ;
struct kernel_symbol const __ksymtab_usb_serial_generic_close = {(unsigned long )(& usb_serial_generic_close), (char const *)(& __kstrtab_usb_serial_generic_close)};
int usb_serial_generic_prepare_write_buffer(struct usb_serial_port *port , void *dest ,
                                            size_t size )
{
  unsigned long __flags ;
  unsigned int __ret ;
  raw_spinlock_t *tmp ;
  struct kfifo *__tmp ;
  void *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  {
  tmp = spinlock_check(& port->lock);
  __flags = _raw_spin_lock_irqsave(tmp);
  __tmp = & port->write_fifo;
  __buf = dest;
  __n = size;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField77.kfifo;
  if (__recsize != 0UL) {
    tmp___0 = __kfifo_out_r(__kfifo, __buf, (unsigned int )__n, __recsize);
    tmp___2 = tmp___0;
  } else {
    tmp___1 = __kfifo_out(__kfifo, __buf, (unsigned int )__n);
    tmp___2 = tmp___1;
  }
  __ret = __kfifo_uint_must_check_helper(tmp___2);
  spin_unlock_irqrestore(& port->lock, __flags);
  tmp___3 = __kfifo_uint_must_check_helper(__ret);
  return ((int )tmp___3);
}
}
int usb_serial_generic_write_start(struct usb_serial_port *port , gfp_t mem_flags )
{
  struct urb *urb ;
  int count ;
  int result ;
  unsigned long flags ;
  int i ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  struct kfifo *__tmpl ;
  unsigned long tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  bool __print_once ;
  struct usb_serial_port *__port ;
  raw_spinlock_t *tmp___3 ;
  {
  tmp = test_and_set_bit_lock(0L, (unsigned long volatile *)(& port->flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  retry:
  tmp___0 = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if (port->write_urbs_free == 0UL) {
    clear_bit_unlock(0L, (unsigned long volatile *)(& port->flags));
    spin_unlock_irqrestore(& port->lock, flags);
    return (0);
  } else {
    __tmpl = & port->write_fifo;
    if (__tmpl->__annonCompField77.kfifo.in - __tmpl->__annonCompField77.kfifo.out == 0U) {
      clear_bit_unlock(0L, (unsigned long volatile *)(& port->flags));
      spin_unlock_irqrestore(& port->lock, flags);
      return (0);
    } else {
    }
  }
  tmp___1 = find_first_bit((unsigned long const *)(& port->write_urbs_free), 2UL);
  i = (int )tmp___1;
  spin_unlock_irqrestore(& port->lock, flags);
  urb = port->write_urbs[i];
  count = (*(((port->serial)->type)->prepare_write_buffer))(port, urb->transfer_buffer,
                                                            (size_t )port->bulk_out_size);
  urb->transfer_buffer_length = (u32 )count;
  usb_serial_debug_data(& port->dev, "usb_serial_generic_write_start", count, (unsigned char const *)urb->transfer_buffer);
  tmp___2 = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  port->tx_bytes = port->tx_bytes + count;
  spin_unlock_irqrestore(& port->lock, flags);
  clear_bit((long )i, (unsigned long volatile *)(& port->write_urbs_free));
  result = usb_submit_urb(urb, mem_flags);
  if (result != 0) {
    __port = port;
    if ((unsigned int )*((unsigned char *)__port + 696UL) == 0U || ! __print_once) {
      __print_once = 1;
      dev_err((struct device const *)(& __port->dev), "%s - error submitting urb: %d\n",
              "usb_serial_generic_write_start", result);
    } else {
    }
    set_bit((long )i, (unsigned long volatile *)(& port->write_urbs_free));
    tmp___3 = spinlock_check(& port->lock);
    flags = _raw_spin_lock_irqsave(tmp___3);
    port->tx_bytes = port->tx_bytes - count;
    spin_unlock_irqrestore(& port->lock, flags);
    clear_bit_unlock(0L, (unsigned long volatile *)(& port->flags));
    return (result);
  } else {
  }
  goto retry;
}
}
static char const __kstrtab_usb_serial_generic_write_start[31U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 's', 't', 'a',
        'r', 't', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_write_start ;
struct kernel_symbol const __ksymtab_usb_serial_generic_write_start = {(unsigned long )(& usb_serial_generic_write_start), (char const *)(& __kstrtab_usb_serial_generic_write_start)};
int usb_serial_generic_write(struct tty_struct *tty , struct usb_serial_port *port ,
                             unsigned char const *buf , int count )
{
  int result ;
  unsigned long __flags ;
  unsigned int __ret ;
  raw_spinlock_t *tmp ;
  struct kfifo *__tmp ;
  void const *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  if (port->bulk_out_size == 0) {
    return (-19);
  } else {
  }
  if (count == 0) {
    return (0);
  } else {
  }
  tmp = spinlock_check(& port->lock);
  __flags = _raw_spin_lock_irqsave(tmp);
  __tmp = & port->write_fifo;
  __buf = (void const *)buf;
  __n = (unsigned long )count;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField77.kfifo;
  if (__recsize != 0UL) {
    tmp___0 = __kfifo_in_r(__kfifo, __buf, (unsigned int )__n, __recsize);
    tmp___2 = tmp___0;
  } else {
    tmp___1 = __kfifo_in(__kfifo, __buf, (unsigned int )__n);
    tmp___2 = tmp___1;
  }
  __ret = tmp___2;
  spin_unlock_irqrestore(& port->lock, __flags);
  count = (int )__ret;
  result = usb_serial_generic_write_start(port, 32U);
  if (result != 0) {
    return (result);
  } else {
  }
  return (count);
}
}
static char const __kstrtab_usb_serial_generic_write[25U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'w',
        'r', 'i', 't', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_write ;
struct kernel_symbol const __ksymtab_usb_serial_generic_write = {(unsigned long )(& usb_serial_generic_write), (char const *)(& __kstrtab_usb_serial_generic_write)};
int usb_serial_generic_write_room(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  unsigned long flags ;
  int room ;
  raw_spinlock_t *tmp ;
  struct kfifo *__tmpq ;
  size_t __recsize ;
  unsigned int __avail ;
  struct kfifo *__tmpl ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  if (port->bulk_out_size == 0) {
    return (0);
  } else {
  }
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __tmpq = & port->write_fifo;
  __recsize = 0UL;
  __tmpl = __tmpq;
  __avail = (__tmpq->__annonCompField77.kfifo.mask - (__tmpl->__annonCompField77.kfifo.in - __tmpl->__annonCompField77.kfifo.out)) + 1U;
  if (__recsize != 0UL) {
    if ((unsigned long )__avail > __recsize) {
      tmp___0 = __kfifo_max_r(__avail - (unsigned int )__recsize, __recsize);
      tmp___1 = tmp___0;
    } else {
      tmp___1 = 0U;
    }
    tmp___2 = tmp___1;
  } else {
    tmp___2 = __avail;
  }
  tmp___3 = __kfifo_uint_must_check_helper(tmp___2);
  room = (int )tmp___3;
  spin_unlock_irqrestore(& port->lock, flags);
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_write_room";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - returns %d\n";
  descriptor.lineno = 224U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - returns %d\n",
                      "usb_serial_generic_write_room", room);
  } else {
  }
  return (room);
}
}
int usb_serial_generic_chars_in_buffer(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  unsigned long flags ;
  int chars ;
  raw_spinlock_t *tmp ;
  struct kfifo *__tmpl ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  if (port->bulk_out_size == 0) {
    return (0);
  } else {
  }
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __tmpl = & port->write_fifo;
  chars = (int )((__tmpl->__annonCompField77.kfifo.in - __tmpl->__annonCompField77.kfifo.out) + (unsigned int )port->tx_bytes);
  spin_unlock_irqrestore(& port->lock, flags);
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_chars_in_buffer";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - returns %d\n";
  descriptor.lineno = 241U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - returns %d\n",
                      "usb_serial_generic_chars_in_buffer", chars);
  } else {
  }
  return (chars);
}
}
static char const __kstrtab_usb_serial_generic_chars_in_buffer[35U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'c',
        'h', 'a', 'r', 's',
        '_', 'i', 'n', '_',
        'b', 'u', 'f', 'f',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_chars_in_buffer ;
struct kernel_symbol const __ksymtab_usb_serial_generic_chars_in_buffer = {(unsigned long )(& usb_serial_generic_chars_in_buffer), (char const *)(& __kstrtab_usb_serial_generic_chars_in_buffer)};
void usb_serial_generic_wait_until_sent(struct tty_struct *tty , long timeout )
{
  struct usb_serial_port *port ;
  unsigned int bps ;
  unsigned long period ;
  unsigned long expire ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min1 ;
  unsigned long __min2 ;
  struct _ddebug descriptor ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  bps = tty_get_baud_rate(tty);
  if (bps == 0U) {
    bps = 9600U;
  } else {
  }
  __max1 = (unsigned long )(2500U / bps);
  __max2 = 1UL;
  period = __max1 > __max2 ? __max1 : __max2;
  if (timeout != 0L) {
    __min1 = period;
    __min2 = (unsigned long )timeout;
    period = __min1 < __min2 ? __min1 : __min2;
  } else {
  }
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_wait_until_sent";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - timeout = %u ms, period = %u ms\n";
  descriptor.lineno = 266U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = jiffies_to_msecs(period);
    tmp___0 = jiffies_to_msecs((unsigned long const )timeout);
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - timeout = %u ms, period = %u ms\n",
                      "usb_serial_generic_wait_until_sent", tmp___0, tmp);
  } else {
  }
  expire = (unsigned long )jiffies + (unsigned long )timeout;
  goto ldv_32779;
  ldv_32778:
  schedule_timeout_interruptible((long )period);
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    goto ldv_32771;
  } else {
  }
  if (timeout != 0L && (long )(expire - (unsigned long )jiffies) < 0L) {
    goto ldv_32771;
  } else {
  }
  ldv_32779:
  tmp___4 = (*(((port->serial)->type)->tx_empty))(port);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    goto ldv_32778;
  } else {
  }
  ldv_32771: ;
  return;
}
}
static char const __kstrtab_usb_serial_generic_wait_until_sent[35U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'w',
        'a', 'i', 't', '_',
        'u', 'n', 't', 'i',
        'l', '_', 's', 'e',
        'n', 't', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_wait_until_sent ;
struct kernel_symbol const __ksymtab_usb_serial_generic_wait_until_sent = {(unsigned long )(& usb_serial_generic_wait_until_sent), (char const *)(& __kstrtab_usb_serial_generic_wait_until_sent)};
static int usb_serial_generic_submit_read_urb(struct usb_serial_port *port , int index ,
                                              gfp_t mem_flags )
{
  int res ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = test_and_clear_bit((long )index, (unsigned long volatile *)(& port->read_urbs_free));
  if (tmp == 0) {
    return (0);
  } else {
  }
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_submit_read_urb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - urb %d\n";
  descriptor.lineno = 286U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - urb %d\n",
                      "usb_serial_generic_submit_read_urb", index);
  } else {
  }
  res = usb_submit_urb(port->read_urbs[index], mem_flags);
  if (res != 0) {
    if (res != -1 && res != -19) {
      dev_err((struct device const *)(& port->dev), "%s - usb_submit_urb failed: %d\n",
              "usb_serial_generic_submit_read_urb", res);
    } else {
    }
    set_bit((long )index, (unsigned long volatile *)(& port->read_urbs_free));
    return (res);
  } else {
  }
  return (0);
}
}
int usb_serial_generic_submit_read_urbs(struct usb_serial_port *port , gfp_t mem_flags )
{
  int res ;
  int i ;
  {
  i = 0;
  goto ldv_32806;
  ldv_32805:
  res = usb_serial_generic_submit_read_urb(port, i, mem_flags);
  if (res != 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_32806: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32805;
  } else {
  }
  return (0);
  err: ;
  goto ldv_32809;
  ldv_32808:
  usb_kill_urb(port->read_urbs[i]);
  i = i - 1;
  ldv_32809: ;
  if (i >= 0) {
    goto ldv_32808;
  } else {
  }
  return (res);
}
}
static char const __kstrtab_usb_serial_generic_submit_read_urbs[36U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 's',
        'u', 'b', 'm', 'i',
        't', '_', 'r', 'e',
        'a', 'd', '_', 'u',
        'r', 'b', 's', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_submit_read_urbs ;
struct kernel_symbol const __ksymtab_usb_serial_generic_submit_read_urbs = {(unsigned long )(& usb_serial_generic_submit_read_urbs), (char const *)(& __kstrtab_usb_serial_generic_submit_read_urbs)};
void usb_serial_generic_process_read_urb(struct urb *urb )
{
  struct usb_serial_port *port ;
  char *ch ;
  int i ;
  int tmp ;
  {
  port = (struct usb_serial_port *)urb->context;
  ch = (char *)urb->transfer_buffer;
  if (urb->actual_length == 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)port + 696UL) == 0U || port->sysrq == 0UL) {
    tty_insert_flip_string(& port->port, (unsigned char const *)ch, (size_t )urb->actual_length);
  } else {
    i = 0;
    goto ldv_32826;
    ldv_32825:
    tmp = usb_serial_handle_sysrq_char(port, (unsigned int )*ch);
    if (tmp == 0) {
      tty_insert_flip_char(& port->port, (int )((unsigned char )*ch), 0);
    } else {
    }
    i = i + 1;
    ch = ch + 1;
    ldv_32826: ;
    if ((u32 )i < urb->actual_length) {
      goto ldv_32825;
    } else {
    }
  }
  tty_flip_buffer_push(& port->port);
  return;
}
}
static char const __kstrtab_usb_serial_generic_process_read_urb[36U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'p',
        'r', 'o', 'c', 'e',
        's', 's', '_', 'r',
        'e', 'a', 'd', '_',
        'u', 'r', 'b', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_process_read_urb ;
struct kernel_symbol const __ksymtab_usb_serial_generic_process_read_urb = {(unsigned long )(& usb_serial_generic_process_read_urb), (char const *)(& __kstrtab_usb_serial_generic_process_read_urb)};
void usb_serial_generic_read_bulk_callback(struct urb *urb )
{
  struct usb_serial_port *port ;
  unsigned char *data ;
  unsigned long flags ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  port = (struct usb_serial_port *)urb->context;
  data = (unsigned char *)urb->transfer_buffer;
  i = 0;
  goto ldv_32846;
  ldv_32845: ;
  if ((unsigned long )port->read_urbs[i] == (unsigned long )urb) {
    goto ldv_32844;
  } else {
  }
  i = i + 1;
  ldv_32846: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32845;
  } else {
  }
  ldv_32844:
  set_bit((long )i, (unsigned long volatile *)(& port->read_urbs_free));
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_read_bulk_callback";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - urb %d, len %d\n";
  descriptor.lineno = 362U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - urb %d, len %d\n",
                      "usb_serial_generic_read_bulk_callback", i, urb->actual_length);
  } else {
  }
  switch (urb->status) {
  case 0: ;
  goto ldv_32850;
  case -2: ;
  case -104: ;
  case -108:
  descriptor___0.modname = "usbserial";
  descriptor___0.function = "usb_serial_generic_read_bulk_callback";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor___0.format = "%s - urb stopped: %d\n";
  descriptor___0.lineno = 370U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& port->dev), "%s - urb stopped: %d\n",
                      "usb_serial_generic_read_bulk_callback", urb->status);
  } else {
  }
  return;
  case -32:
  dev_err((struct device const *)(& port->dev), "%s - urb stopped: %d\n", "usb_serial_generic_read_bulk_callback",
          urb->status);
  return;
  default:
  descriptor___1.modname = "usbserial";
  descriptor___1.function = "usb_serial_generic_read_bulk_callback";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor___1.format = "%s - nonzero urb status: %d\n";
  descriptor___1.lineno = 378U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& port->dev), "%s - nonzero urb status: %d\n",
                      "usb_serial_generic_read_bulk_callback", urb->status);
  } else {
  }
  goto resubmit;
  }
  ldv_32850:
  usb_serial_debug_data(& port->dev, "usb_serial_generic_read_bulk_callback", (int )urb->actual_length,
                        (unsigned char const *)data);
  (*(((port->serial)->type)->process_read_urb))(urb);
  resubmit:
  tmp___2 = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  port->throttled = port->throttle_req;
  if ((int )((signed char )port->throttled) == 0) {
    spin_unlock_irqrestore(& port->lock, flags);
    usb_serial_generic_submit_read_urb(port, i, 32U);
  } else {
    spin_unlock_irqrestore(& port->lock, flags);
  }
  return;
}
}
static char const __kstrtab_usb_serial_generic_read_bulk_callback[38U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'r',
        'e', 'a', 'd', '_',
        'b', 'u', 'l', 'k',
        '_', 'c', 'a', 'l',
        'l', 'b', 'a', 'c',
        'k', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_read_bulk_callback ;
struct kernel_symbol const __ksymtab_usb_serial_generic_read_bulk_callback = {(unsigned long )(& usb_serial_generic_read_bulk_callback), (char const *)(& __kstrtab_usb_serial_generic_read_bulk_callback)};
void usb_serial_generic_write_bulk_callback(struct urb *urb )
{
  unsigned long flags ;
  struct usb_serial_port *port ;
  int i ;
  raw_spinlock_t *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool __print_once ;
  struct usb_serial_port *__port ;
  bool __print_once___0 ;
  struct usb_serial_port *__port___0 ;
  {
  port = (struct usb_serial_port *)urb->context;
  i = 0;
  goto ldv_32879;
  ldv_32878: ;
  if ((unsigned long )port->write_urbs[i] == (unsigned long )urb) {
    goto ldv_32877;
  } else {
  }
  i = i + 1;
  ldv_32879: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_32878;
  } else {
  }
  ldv_32877:
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  port->tx_bytes = (int )((u32 )port->tx_bytes - urb->transfer_buffer_length);
  set_bit((long )i, (unsigned long volatile *)(& port->write_urbs_free));
  spin_unlock_irqrestore(& port->lock, flags);
  switch (urb->status) {
  case 0: ;
  goto ldv_32884;
  case -2: ;
  case -104: ;
  case -108:
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_generic_write_bulk_callback";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - urb stopped: %d\n";
  descriptor.lineno = 420U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "%s - urb stopped: %d\n",
                      "usb_serial_generic_write_bulk_callback", urb->status);
  } else {
  }
  return;
  case -32:
  __port = port;
  if ((unsigned int )*((unsigned char *)__port + 696UL) == 0U || ! __print_once) {
    __print_once = 1;
    dev_err((struct device const *)(& __port->dev), "%s - urb stopped: %d\n", "usb_serial_generic_write_bulk_callback",
            urb->status);
  } else {
  }
  return;
  default:
  __port___0 = port;
  if ((unsigned int )*((unsigned char *)__port___0 + 696UL) == 0U || ! __print_once___0) {
    __print_once___0 = 1;
    dev_err((struct device const *)(& __port___0->dev), "%s - nonzero urb status: %d\n",
            "usb_serial_generic_write_bulk_callback", urb->status);
  } else {
  }
  goto resubmit;
  }
  ldv_32884: ;
  resubmit:
  usb_serial_generic_write_start(port, 32U);
  usb_serial_port_softint(port);
  return;
}
}
static char const __kstrtab_usb_serial_generic_write_bulk_callback[39U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'b', 'u', 'l',
        'k', '_', 'c', 'a',
        'l', 'l', 'b', 'a',
        'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_write_bulk_callback ;
struct kernel_symbol const __ksymtab_usb_serial_generic_write_bulk_callback = {(unsigned long )(& usb_serial_generic_write_bulk_callback),
    (char const *)(& __kstrtab_usb_serial_generic_write_bulk_callback)};
void usb_serial_generic_throttle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  port->throttle_req = 1;
  spin_unlock_irqrestore(& port->lock, flags);
  return;
}
}
static char const __kstrtab_usb_serial_generic_throttle[28U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 't',
        'h', 'r', 'o', 't',
        't', 'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_throttle ;
struct kernel_symbol const __ksymtab_usb_serial_generic_throttle = {(unsigned long )(& usb_serial_generic_throttle), (char const *)(& __kstrtab_usb_serial_generic_throttle)};
void usb_serial_generic_unthrottle(struct tty_struct *tty )
{
  struct usb_serial_port *port ;
  int was_throttled ;
  char tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  spin_lock_irq(& port->lock);
  was_throttled = (int )port->throttled;
  tmp = 0;
  port->throttle_req = tmp;
  port->throttled = tmp;
  spin_unlock_irq(& port->lock);
  if (was_throttled != 0) {
    usb_serial_generic_submit_read_urbs(port, 208U);
  } else {
  }
  return;
}
}
static char const __kstrtab_usb_serial_generic_unthrottle[30U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'u',
        'n', 't', 'h', 'r',
        'o', 't', 't', 'l',
        'e', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_unthrottle ;
struct kernel_symbol const __ksymtab_usb_serial_generic_unthrottle = {(unsigned long )(& usb_serial_generic_unthrottle), (char const *)(& __kstrtab_usb_serial_generic_unthrottle)};
static bool usb_serial_generic_msr_changed(struct tty_struct *tty , unsigned long arg ,
                                           struct async_icount *cprev )
{
  struct usb_serial_port *port ;
  struct async_icount cnow ;
  unsigned long flags ;
  bool ret ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = constant_test_bit(31L, (unsigned long const volatile *)(& port->port.flags));
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  cnow = port->icount;
  spin_unlock_irqrestore(& port->lock, flags);
  ret = (bool )(((((arg & 128UL) != 0UL && cnow.rng != cprev->rng) || ((arg & 256UL) != 0UL && cnow.dsr != cprev->dsr)) || ((arg & 64UL) != 0UL && cnow.dcd != cprev->dcd)) || ((arg & 32UL) != 0UL && cnow.cts != cprev->cts));
  *cprev = cnow;
  return (ret);
}
}
int usb_serial_generic_tiocmiwait(struct tty_struct *tty , unsigned long arg )
{
  struct usb_serial_port *port ;
  struct async_icount cnow ;
  unsigned long flags ;
  int ret ;
  raw_spinlock_t *tmp ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cnow = port->icount;
  spin_unlock_irqrestore(& port->lock, flags);
  __ret = 0;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c",
                505, 0);
  tmp___2 = usb_serial_generic_msr_changed(tty, arg, & cnow);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_32960:
    tmp___0 = prepare_to_wait_event(& port->port.delta_msr_wait, & __wait, 1);
    __int = tmp___0;
    tmp___1 = usb_serial_generic_msr_changed(tty, arg, & cnow);
    if ((int )tmp___1) {
      goto ldv_32959;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_32959;
    } else {
    }
    schedule();
    goto ldv_32960;
    ldv_32959:
    finish_wait(& port->port.delta_msr_wait, & __wait);
    __ret = (int )__ret___0;
  } else {
  }
  ret = __ret;
  if (ret == 0) {
    tmp___4 = constant_test_bit(31L, (unsigned long const volatile *)(& port->port.flags));
    if (tmp___4 == 0) {
      ret = -5;
    } else {
    }
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_usb_serial_generic_tiocmiwait[30U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 't',
        'i', 'o', 'c', 'm',
        'i', 'w', 'a', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_tiocmiwait ;
struct kernel_symbol const __ksymtab_usb_serial_generic_tiocmiwait = {(unsigned long )(& usb_serial_generic_tiocmiwait), (char const *)(& __kstrtab_usb_serial_generic_tiocmiwait)};
int usb_serial_generic_get_icount(struct tty_struct *tty , struct serial_icounter_struct *icount )
{
  struct usb_serial_port *port ;
  struct async_icount cnow ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  port = (struct usb_serial_port *)tty->driver_data;
  tmp = spinlock_check(& port->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cnow = port->icount;
  spin_unlock_irqrestore(& port->lock, flags);
  icount->cts = (int )cnow.cts;
  icount->dsr = (int )cnow.dsr;
  icount->rng = (int )cnow.rng;
  icount->dcd = (int )cnow.dcd;
  icount->tx = (int )cnow.tx;
  icount->rx = (int )cnow.rx;
  icount->frame = (int )cnow.frame;
  icount->parity = (int )cnow.parity;
  icount->overrun = (int )cnow.overrun;
  icount->brk = (int )cnow.brk;
  icount->buf_overrun = (int )cnow.buf_overrun;
  return (0);
}
}
static char const __kstrtab_usb_serial_generic_get_icount[30U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'g',
        'e', 't', '_', 'i',
        'c', 'o', 'u', 'n',
        't', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_get_icount ;
struct kernel_symbol const __ksymtab_usb_serial_generic_get_icount = {(unsigned long )(& usb_serial_generic_get_icount), (char const *)(& __kstrtab_usb_serial_generic_get_icount)};
int usb_serial_handle_sysrq_char(struct usb_serial_port *port , unsigned int ch )
{
  {
  if (port->sysrq != 0UL && (unsigned int )*((unsigned char *)port + 696UL) != 0U) {
    if (ch != 0U && (long )((unsigned long )jiffies - port->sysrq) < 0L) {
      handle_sysrq((int )ch);
      port->sysrq = 0UL;
      return (1);
    } else {
    }
    port->sysrq = 0UL;
  } else {
  }
  return (0);
}
}
static char const __kstrtab_usb_serial_handle_sysrq_char[29U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'h',
        'a', 'n', 'd', 'l',
        'e', '_', 's', 'y',
        's', 'r', 'q', '_',
        'c', 'h', 'a', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_usb_serial_handle_sysrq_char ;
struct kernel_symbol const __ksymtab_usb_serial_handle_sysrq_char = {(unsigned long )(& usb_serial_handle_sysrq_char), (char const *)(& __kstrtab_usb_serial_handle_sysrq_char)};
int usb_serial_handle_break(struct usb_serial_port *port )
{
  {
  if (port->sysrq == 0UL) {
    port->sysrq = (unsigned long )jiffies + 1250UL;
    return (1);
  } else {
  }
  port->sysrq = 0UL;
  return (0);
}
}
static char const __kstrtab_usb_serial_handle_break[24U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'h',
        'a', 'n', 'd', 'l',
        'e', '_', 'b', 'r',
        'e', 'a', 'k', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_handle_break ;
struct kernel_symbol const __ksymtab_usb_serial_handle_break = {(unsigned long )(& usb_serial_handle_break), (char const *)(& __kstrtab_usb_serial_handle_break)};
void usb_serial_handle_dcd_change(struct usb_serial_port *usb_port , struct tty_struct *tty ,
                                  unsigned int status )
{
  struct tty_port *port ;
  struct _ddebug descriptor ;
  long tmp ;
  struct tty_ldisc *ld ;
  struct tty_ldisc *tmp___0 ;
  {
  port = & usb_port->port;
  descriptor.modname = "usbserial";
  descriptor.function = "usb_serial_handle_dcd_change";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9170/dscv_tempdir/dscv/ri/08_1a/drivers/usb/serial/generic.c";
  descriptor.format = "%s - status %d\n";
  descriptor.lineno = 583U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& usb_port->dev), "%s - status %d\n",
                      "usb_serial_handle_dcd_change", status);
  } else {
  }
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0)) {
    tmp___0 = tty_ldisc_ref(tty);
    ld = tmp___0;
    if ((unsigned long )ld != (unsigned long )((struct tty_ldisc *)0)) {
      if ((unsigned long )(ld->ops)->dcd_change != (unsigned long )((void (*)(struct tty_struct * ,
                                                                              unsigned int ))0)) {
        (*((ld->ops)->dcd_change))(tty, status);
      } else {
      }
      tty_ldisc_deref(ld);
    } else {
    }
  } else {
  }
  if (status != 0U) {
    __wake_up(& port->open_wait, 1U, 1, (void *)0);
  } else
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0) && (tty->termios.c_cflag & 2048U) == 0U) {
    tty_hangup(tty);
  } else {
  }
  return;
}
}
static char const __kstrtab_usb_serial_handle_dcd_change[29U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'h',
        'a', 'n', 'd', 'l',
        'e', '_', 'd', 'c',
        'd', '_', 'c', 'h',
        'a', 'n', 'g', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_usb_serial_handle_dcd_change ;
struct kernel_symbol const __ksymtab_usb_serial_handle_dcd_change = {(unsigned long )(& usb_serial_handle_dcd_change), (char const *)(& __kstrtab_usb_serial_handle_dcd_change)};
int usb_serial_generic_resume(struct usb_serial *serial )
{
  struct usb_serial_port *port ;
  int i ;
  int c ;
  int r ;
  int tmp ;
  {
  c = 0;
  i = 0;
  goto ldv_33044;
  ldv_33043:
  port = serial->port[i];
  tmp = constant_test_bit(31L, (unsigned long const volatile *)(& port->port.flags));
  if (tmp == 0) {
    goto ldv_33042;
  } else {
  }
  if (port->bulk_in_size != 0) {
    r = usb_serial_generic_submit_read_urbs(port, 16U);
    if (r < 0) {
      c = c + 1;
    } else {
    }
  } else {
  }
  if (port->bulk_out_size != 0) {
    r = usb_serial_generic_write_start(port, 16U);
    if (r < 0) {
      c = c + 1;
    } else {
    }
  } else {
  }
  ldv_33042:
  i = i + 1;
  ldv_33044: ;
  if ((int )serial->num_ports > i) {
    goto ldv_33043;
  } else {
  }
  return (c != 0 ? -5 : 0);
}
}
static char const __kstrtab_usb_serial_generic_resume[26U] =
  { 'u', 's', 'b', '_',
        's', 'e', 'r', 'i',
        'a', 'l', '_', 'g',
        'e', 'n', 'e', 'r',
        'i', 'c', '_', 'r',
        'e', 's', 'u', 'm',
        'e', '\000'};
struct kernel_symbol const __ksymtab_usb_serial_generic_resume ;
struct kernel_symbol const __ksymtab_usb_serial_generic_resume = {(unsigned long )(& usb_serial_generic_resume), (char const *)(& __kstrtab_usb_serial_generic_resume)};
extern int ldv_release_4(void) ;
extern int ldv_suspend_4(void) ;
int ldv_retval_4 ;
extern int ldv_probe_4(void) ;
void ldv_initialize_usb_serial_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1816UL);
  usb_serial_generic_device_group0 = (struct tty_struct *)tmp;
  return;
}
}
void ldv_main_exported_4(void)
{
  struct usb_serial *ldvarg25 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(272UL);
  ldvarg25 = (struct usb_serial *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    usb_serial_generic_throttle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 3) {
    usb_serial_generic_throttle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 3;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    usb_serial_generic_throttle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_33068;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    usb_serial_generic_unthrottle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 3) {
    usb_serial_generic_unthrottle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 3;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    usb_serial_generic_unthrottle(usb_serial_generic_device_group0);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_33068;
  case 2: ;
  if (ldv_state_variable_4 == 3) {
    ldv_retval_4 = usb_serial_generic_resume(ldvarg25);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_4 = 2;
    } else {
    }
  } else {
  }
  goto ldv_33068;
  case 3: ;
  if (ldv_state_variable_4 == 2) {
    ldv_suspend_4();
    ldv_state_variable_4 = 3;
  } else {
  }
  goto ldv_33068;
  case 4: ;
  if (ldv_state_variable_4 == 3) {
    ldv_release_4();
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    ldv_release_4();
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_33068;
  case 5: ;
  if (ldv_state_variable_4 == 1) {
    ldv_probe_4();
    ldv_state_variable_4 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_33068;
  default:
  ldv_stop();
  }
  ldv_33068: ;
  return;
}
}
bool ldv_queue_work_on_43(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_44(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_45(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
long ldv_ptr_err(void const *ptr ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
bool ldv_queue_work_on_57(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_59(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_58(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_60(struct workqueue_struct *ldv_func_arg1 ) ;
extern struct device *tty_register_device(struct tty_driver * , unsigned int , struct device * ) ;
struct device *ldv_tty_register_device_62(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          struct device *ldv_func_arg3 ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
void ldv_tty_unregister_device_63(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern ssize_t usb_store_new_id(struct usb_dynids * , struct usb_device_id const * ,
                                struct device_driver * , char const * , size_t ) ;
extern ssize_t usb_show_dynids(struct usb_dynids * , char * ) ;
static int usb_serial_device_match(struct device *dev , struct device_driver *drv )
{
  struct usb_serial_driver *driver ;
  struct usb_serial_port const *port ;
  struct device const *__mptr ;
  struct device_driver const *__mptr___0 ;
  {
  __mptr = (struct device const *)dev;
  port = (struct usb_serial_port const *)((struct usb_serial_port *)__mptr + 0xfffffffffffff9c8UL);
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port const *)0)) {
    return (0);
  } else {
  }
  __mptr___0 = (struct device_driver const *)drv;
  driver = (struct usb_serial_driver *)__mptr___0 + 0xffffffffffffffd8UL;
  if ((unsigned long )(port->serial)->type == (unsigned long )driver) {
    return (1);
  } else {
  }
  return (0);
}
}
static int usb_serial_device_probe(struct device *dev )
{
  struct usb_serial_driver *driver ;
  struct usb_serial_port *port ;
  struct device *tty_dev ;
  int retval ;
  int minor ;
  struct device const *__mptr ;
  long tmp ;
  bool tmp___0 ;
  {
  retval = 0;
  __mptr = (struct device const *)dev;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffff9c8UL;
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    return (-19);
  } else {
  }
  retval = usb_autopm_get_interface((port->serial)->interface);
  if (retval != 0) {
    return (retval);
  } else {
  }
  driver = (port->serial)->type;
  if ((unsigned long )driver->port_probe != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
    retval = (*(driver->port_probe))(port);
    if (retval != 0) {
      goto err_autopm_put;
    } else {
    }
  } else {
  }
  minor = (int )port->minor;
  tty_dev = ldv_tty_register_device_62(usb_serial_tty_driver, (unsigned int )minor,
                                       dev);
  tmp___0 = IS_ERR((void const *)tty_dev);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)tty_dev);
    retval = (int )tmp;
    goto err_port_remove;
  } else {
  }
  usb_autopm_put_interface((port->serial)->interface);
  _dev_info((struct device const *)(& ((port->serial)->dev)->dev), "%s converter now attached to ttyUSB%d\n",
            driver->description, minor);
  return (0);
  err_port_remove: ;
  if ((unsigned long )driver->port_remove != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
    (*(driver->port_remove))(port);
  } else {
  }
  err_autopm_put:
  usb_autopm_put_interface((port->serial)->interface);
  return (retval);
}
}
static int usb_serial_device_remove(struct device *dev )
{
  struct usb_serial_driver *driver ;
  struct usb_serial_port *port ;
  int retval ;
  int minor ;
  int autopm_err ;
  struct device const *__mptr ;
  {
  retval = 0;
  __mptr = (struct device const *)dev;
  port = (struct usb_serial_port *)__mptr + 0xfffffffffffff9c8UL;
  if ((unsigned long )port == (unsigned long )((struct usb_serial_port *)0)) {
    return (-19);
  } else {
  }
  autopm_err = usb_autopm_get_interface((port->serial)->interface);
  minor = (int )port->minor;
  ldv_tty_unregister_device_63(usb_serial_tty_driver, (unsigned int )minor);
  driver = (port->serial)->type;
  if ((unsigned long )driver->port_remove != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
    retval = (*(driver->port_remove))(port);
  } else {
  }
  _dev_info((struct device const *)dev, "%s converter now disconnected from ttyUSB%d\n",
            driver->description, minor);
  if (autopm_err == 0) {
    usb_autopm_put_interface((port->serial)->interface);
  } else {
  }
  return (retval);
}
}
static ssize_t new_id_store(struct device_driver *driver , char const *buf , size_t count )
{
  struct usb_serial_driver *usb_drv ;
  struct device_driver const *__mptr ;
  ssize_t retval ;
  ssize_t tmp ;
  {
  __mptr = (struct device_driver const *)driver;
  usb_drv = (struct usb_serial_driver *)__mptr + 0xffffffffffffffd8UL;
  tmp = usb_store_new_id(& usb_drv->dynids, usb_drv->id_table, driver, buf, count);
  retval = tmp;
  if (retval >= 0L && (unsigned long )usb_drv->usb_driver != (unsigned long )((struct usb_driver *)0)) {
    retval = usb_store_new_id(& (usb_drv->usb_driver)->dynids, (usb_drv->usb_driver)->id_table,
                              & (usb_drv->usb_driver)->drvwrap.driver, buf, count);
  } else {
  }
  return (retval);
}
}
static ssize_t new_id_show(struct device_driver *driver , char *buf )
{
  struct usb_serial_driver *usb_drv ;
  struct device_driver const *__mptr ;
  ssize_t tmp ;
  {
  __mptr = (struct device_driver const *)driver;
  usb_drv = (struct usb_serial_driver *)__mptr + 0xffffffffffffffd8UL;
  tmp = usb_show_dynids(& usb_drv->dynids, buf);
  return (tmp);
}
}
static struct driver_attribute driver_attr_new_id = {{"new_id", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & new_id_show,
    & new_id_store};
static struct attribute *usb_serial_drv_attrs[2U] = { & driver_attr_new_id.attr, (struct attribute *)0};
static struct attribute_group const usb_serial_drv_group = {0, 0, (struct attribute **)(& usb_serial_drv_attrs), 0};
static struct attribute_group const *usb_serial_drv_groups[2U] = { & usb_serial_drv_group, (struct attribute_group const *)0};
static void free_dynids(struct usb_serial_driver *drv )
{
  struct usb_dynid *dynid ;
  struct usb_dynid *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  spin_lock(& drv->dynids.lock);
  __mptr = (struct list_head const *)drv->dynids.list.next;
  dynid = (struct usb_dynid *)__mptr;
  __mptr___0 = (struct list_head const *)dynid->node.next;
  n = (struct usb_dynid *)__mptr___0;
  goto ldv_32562;
  ldv_32561:
  list_del(& dynid->node);
  kfree((void const *)dynid);
  dynid = n;
  __mptr___1 = (struct list_head const *)n->node.next;
  n = (struct usb_dynid *)__mptr___1;
  ldv_32562: ;
  if ((unsigned long )(& dynid->node) != (unsigned long )(& drv->dynids.list)) {
    goto ldv_32561;
  } else {
  }
  spin_unlock(& drv->dynids.lock);
  return;
}
}
struct bus_type usb_serial_bus_type =
     {"usb-serial", 0, 0, 0, 0, 0, (struct attribute_group const **)(& usb_serial_drv_groups),
    & usb_serial_device_match, 0, & usb_serial_device_probe, & usb_serial_device_remove,
    0, 0, 0, 0, 0, 0, 0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                              {(char)0}, {(char)0}, {(char)0}}}};
int usb_serial_bus_register(struct usb_serial_driver *driver )
{
  int retval ;
  struct lock_class_key __key ;
  {
  driver->driver.bus = & usb_serial_bus_type;
  spinlock_check(& driver->dynids.lock);
  __raw_spin_lock_init(& driver->dynids.lock.__annonCompField18.rlock, "&(&driver->dynids.lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& driver->dynids.list);
  retval = driver_register(& driver->driver);
  return (retval);
}
}
void usb_serial_bus_deregister(struct usb_serial_driver *driver )
{
  {
  free_dynids(driver);
  driver_unregister(& driver->driver);
  return;
}
}
int ldv_retval_3 ;
void ldv_initialize_driver_attribute_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_new_id_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_bus_type_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  usb_serial_bus_type_group0 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_3(void)
{
  size_t ldvarg12 ;
  char *ldvarg13 ;
  void *tmp ;
  char *ldvarg11 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    new_id_store(driver_attr_new_id_group0, (char const *)ldvarg13, ldvarg12);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_32587;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    new_id_show(driver_attr_new_id_group0, ldvarg11);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_32587;
  default:
  ldv_stop();
  }
  ldv_32587: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  struct device_driver *ldvarg21 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(120UL);
  ldvarg21 = (struct device_driver *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_3 = usb_serial_device_probe(usb_serial_bus_type_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_32595;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    usb_serial_device_match(usb_serial_bus_type_group0, ldvarg21);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    usb_serial_device_match(usb_serial_bus_type_group0, ldvarg21);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_32595;
  case 2: ;
  if (ldv_state_variable_2 == 2) {
    usb_serial_device_remove(usb_serial_bus_type_group0);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_32595;
  default:
  ldv_stop();
  }
  ldv_32595: ;
  return;
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
bool ldv_queue_work_on_57(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_58(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_59(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_60(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
struct device *ldv_tty_register_device_62(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          struct device *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  struct device *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = tty_register_device(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = IS_ERR((void const *)ldv_func_res);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    ldv_state_variable_7 = 1;
    ldv_tty_port_operations_7();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_tty_unregister_device_63(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  tty_unregister_device(ldv_func_arg1, ldv_func_arg2);
  ldv_state_variable_7 = 0;
  return;
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __kfifo_alloc(struct __kfifo *arg0, unsigned int arg1, size_t arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void __kfifo_free(struct __kfifo *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_in(struct __kfifo *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_in_r(struct __kfifo *arg0, const void *arg1, unsigned int arg2, size_t arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_max_r(unsigned int arg0, size_t arg1) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_out(struct __kfifo *arg0, void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_out_r(struct __kfifo *arg0, void *arg1, unsigned int arg2, size_t arg3) {
  return __VERIFIER_nondet_uint();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void *external_alloc(void);
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return (struct tty_driver *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
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
int __VERIFIER_nondet_int(void);
int bus_register(struct bus_type *arg0) {
  return __VERIFIER_nondet_int();
}
void bus_unregister(struct bus_type *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_del(struct device *arg0) {
  return;
}
void device_initialize(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int driver_attach(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void handle_sysrq(int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *idr_find_slowpath(struct idr *arg0, int arg1) {
  return (void *)external_alloc();
}
void idr_remove(struct idr *arg0, int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int ldv_destruct_7() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_reset_resume_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_4() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
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
void put_device(struct device *arg0) {
  return;
}
void put_tty_driver(struct tty_driver *arg0) {
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
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
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
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
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
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
void tty_hangup(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_flags(struct tty_port *arg0, const unsigned char *arg1, const char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_kref_put(struct tty_struct *arg0) {
  return;
}
void tty_ldisc_deref(struct tty_ldisc *arg0) {
  return;
}
void *external_alloc(void);
struct tty_ldisc *tty_ldisc_ref(struct tty_struct *arg0) {
  return (struct tty_ldisc *)external_alloc();
}
void tty_port_close(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return;
}
void tty_port_destroy(struct tty_port *arg0) {
  return;
}
void tty_port_hangup(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_port_install(struct tty_port *arg0, struct tty_driver *arg1, struct tty_struct *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_port_open(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct tty_struct *tty_port_tty_get(struct tty_port *arg0) {
  return (struct tty_struct *)external_alloc();
}
void tty_port_tty_wakeup(struct tty_port *arg0) {
  return;
}
void *external_alloc(void);
struct device *tty_register_device(struct tty_driver *arg0, unsigned int arg1, struct device *arg2) {
  return (struct device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
speed_t tty_termios_baud_rate(struct ktermios *arg0) {
  return __VERIFIER_nondet_uint();
}
void tty_termios_copy_hw(struct ktermios *arg0, struct ktermios *arg1) {
  return;
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_vhangup(struct tty_struct *arg0) {
  return;
}
void *external_alloc(void);
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return (struct urb *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_autopm_put_interface(struct usb_interface *arg0) {
  return;
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_disabled() {
  return __VERIFIER_nondet_int();
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void *external_alloc(void);
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return (struct usb_device *)external_alloc();
}
void *external_alloc(void);
struct usb_interface *usb_get_intf(struct usb_interface *arg0) {
  return (struct usb_interface *)external_alloc();
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void *external_alloc(void);
const struct usb_device_id *usb_match_id(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return (const struct usb_device_id *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_match_one_id(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_poison_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
void usb_put_intf(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t usb_show_dynids(struct usb_dynids *arg0, char *arg1) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
ssize_t usb_store_new_id(struct usb_dynids *arg0, const struct usb_device_id *arg1, struct device_driver *arg2, const char *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void usb_unpoison_urb(struct urb *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
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
