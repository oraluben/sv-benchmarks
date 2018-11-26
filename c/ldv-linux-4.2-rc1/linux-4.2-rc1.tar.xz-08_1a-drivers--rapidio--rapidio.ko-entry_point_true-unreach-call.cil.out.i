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
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
struct rio_device_id {
   __u16 did ;
   __u16 vid ;
   __u16 asm_did ;
   __u16 asm_vid ;
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
typedef s32 dma_cookie_t;
enum dma_status {
    DMA_COMPLETE = 0,
    DMA_IN_PROGRESS = 1,
    DMA_PAUSED = 2,
    DMA_ERROR = 3
} ;
enum dma_transaction_type {
    DMA_MEMCPY = 0,
    DMA_XOR = 1,
    DMA_PQ = 2,
    DMA_XOR_VAL = 3,
    DMA_PQ_VAL = 4,
    DMA_MEMSET = 5,
    DMA_INTERRUPT = 6,
    DMA_SG = 7,
    DMA_PRIVATE = 8,
    DMA_ASYNC_TX = 9,
    DMA_SLAVE = 10,
    DMA_CYCLIC = 11,
    DMA_INTERLEAVE = 12,
    DMA_TX_TYPE_END = 13
} ;
enum dma_transfer_direction {
    DMA_MEM_TO_MEM = 0,
    DMA_MEM_TO_DEV = 1,
    DMA_DEV_TO_MEM = 2,
    DMA_DEV_TO_DEV = 3,
    DMA_TRANS_NONE = 4
} ;
struct data_chunk {
   size_t size ;
   size_t icg ;
   size_t dst_icg ;
   size_t src_icg ;
};
struct dma_interleaved_template {
   dma_addr_t src_start ;
   dma_addr_t dst_start ;
   enum dma_transfer_direction dir ;
   bool src_inc ;
   bool dst_inc ;
   bool src_sgl ;
   bool dst_sgl ;
   size_t numf ;
   size_t frame_size ;
   struct data_chunk sgl[0U] ;
};
enum dma_ctrl_flags {
    DMA_PREP_INTERRUPT = 1,
    DMA_CTRL_ACK = 2,
    DMA_PREP_PQ_DISABLE_P = 4,
    DMA_PREP_PQ_DISABLE_Q = 8,
    DMA_PREP_CONTINUE = 16,
    DMA_PREP_FENCE = 32
} ;
enum sum_check_flags {
    SUM_CHECK_P_RESULT = 1,
    SUM_CHECK_Q_RESULT = 2
} ;
struct __anonstruct_dma_cap_mask_t_221 {
   unsigned long bits[1U] ;
};
typedef struct __anonstruct_dma_cap_mask_t_221 dma_cap_mask_t;
struct dma_chan_percpu {
   unsigned long memcpy_count ;
   unsigned long bytes_transferred ;
};
struct dma_router {
   struct device *dev ;
   void (*route_free)(struct device * , void * ) ;
};
struct dma_device;
struct dma_chan_dev;
struct dma_chan {
   struct dma_device *device ;
   dma_cookie_t cookie ;
   dma_cookie_t completed_cookie ;
   int chan_id ;
   struct dma_chan_dev *dev ;
   struct list_head device_node ;
   struct dma_chan_percpu *local ;
   int client_count ;
   int table_count ;
   struct dma_router *router ;
   void *route_data ;
   void *private ;
};
struct dma_chan_dev {
   struct dma_chan *chan ;
   struct device device ;
   int dev_id ;
   atomic_t *idr_ref ;
};
enum dma_slave_buswidth {
    DMA_SLAVE_BUSWIDTH_UNDEFINED = 0,
    DMA_SLAVE_BUSWIDTH_1_BYTE = 1,
    DMA_SLAVE_BUSWIDTH_2_BYTES = 2,
    DMA_SLAVE_BUSWIDTH_3_BYTES = 3,
    DMA_SLAVE_BUSWIDTH_4_BYTES = 4,
    DMA_SLAVE_BUSWIDTH_8_BYTES = 8,
    DMA_SLAVE_BUSWIDTH_16_BYTES = 16,
    DMA_SLAVE_BUSWIDTH_32_BYTES = 32,
    DMA_SLAVE_BUSWIDTH_64_BYTES = 64
} ;
struct dma_slave_config {
   enum dma_transfer_direction direction ;
   dma_addr_t src_addr ;
   dma_addr_t dst_addr ;
   enum dma_slave_buswidth src_addr_width ;
   enum dma_slave_buswidth dst_addr_width ;
   u32 src_maxburst ;
   u32 dst_maxburst ;
   bool device_fc ;
   unsigned int slave_id ;
};
enum dma_residue_granularity {
    DMA_RESIDUE_GRANULARITY_DESCRIPTOR = 0,
    DMA_RESIDUE_GRANULARITY_SEGMENT = 1,
    DMA_RESIDUE_GRANULARITY_BURST = 2
} ;
struct dmaengine_unmap_data {
   u8 map_cnt ;
   u8 to_cnt ;
   u8 from_cnt ;
   u8 bidi_cnt ;
   struct device *dev ;
   struct kref kref ;
   size_t len ;
   dma_addr_t addr[0U] ;
};
struct dma_async_tx_descriptor {
   dma_cookie_t cookie ;
   enum dma_ctrl_flags flags ;
   dma_addr_t phys ;
   struct dma_chan *chan ;
   dma_cookie_t (*tx_submit)(struct dma_async_tx_descriptor * ) ;
   void (*callback)(void * ) ;
   void *callback_param ;
   struct dmaengine_unmap_data *unmap ;
   struct dma_async_tx_descriptor *next ;
   struct dma_async_tx_descriptor *parent ;
   spinlock_t lock ;
};
struct dma_tx_state {
   dma_cookie_t last ;
   dma_cookie_t used ;
   u32 residue ;
};
struct dma_device {
   unsigned int chancnt ;
   unsigned int privatecnt ;
   struct list_head channels ;
   struct list_head global_node ;
   dma_cap_mask_t cap_mask ;
   unsigned short max_xor ;
   unsigned short max_pq ;
   u8 copy_align ;
   u8 xor_align ;
   u8 pq_align ;
   u8 fill_align ;
   int dev_id ;
   struct device *dev ;
   u32 src_addr_widths ;
   u32 dst_addr_widths ;
   u32 directions ;
   enum dma_residue_granularity residue_granularity ;
   int (*device_alloc_chan_resources)(struct dma_chan * ) ;
   void (*device_free_chan_resources)(struct dma_chan * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_memcpy)(struct dma_chan * , dma_addr_t ,
                                                             dma_addr_t , size_t ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor)(struct dma_chan * , dma_addr_t ,
                                                          dma_addr_t * , unsigned int ,
                                                          size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor_val)(struct dma_chan * ,
                                                              dma_addr_t * , unsigned int ,
                                                              size_t , enum sum_check_flags * ,
                                                              unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq)(struct dma_chan * , dma_addr_t * ,
                                                         dma_addr_t * , unsigned int ,
                                                         unsigned char const * ,
                                                         size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq_val)(struct dma_chan * , dma_addr_t * ,
                                                             dma_addr_t * , unsigned int ,
                                                             unsigned char const * ,
                                                             size_t , enum sum_check_flags * ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_memset)(struct dma_chan * , dma_addr_t ,
                                                             int , size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(struct dma_chan * ,
                                                                unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_sg)(struct dma_chan * , struct scatterlist * ,
                                                         unsigned int , struct scatterlist * ,
                                                         unsigned int , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_slave_sg)(struct dma_chan * , struct scatterlist * ,
                                                           unsigned int , enum dma_transfer_direction ,
                                                           unsigned long , void * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_cyclic)(struct dma_chan * , dma_addr_t ,
                                                             size_t , size_t , enum dma_transfer_direction ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_interleaved_dma)(struct dma_chan * ,
                                                                  struct dma_interleaved_template * ,
                                                                  unsigned long ) ;
   int (*device_config)(struct dma_chan * , struct dma_slave_config * ) ;
   int (*device_pause)(struct dma_chan * ) ;
   int (*device_resume)(struct dma_chan * ) ;
   int (*device_terminate_all)(struct dma_chan * ) ;
   enum dma_status (*device_tx_status)(struct dma_chan * , dma_cookie_t , struct dma_tx_state * ) ;
   void (*device_issue_pending)(struct dma_chan * ) ;
};
struct rio_dma_ext;
struct rio_mport;
struct rio_dev;
union rio_pw_msg;
struct rio_switch_ops;
struct rio_switch {
   struct list_head node ;
   u8 *route_table ;
   u32 port_ok ;
   struct rio_switch_ops *ops ;
   spinlock_t lock ;
   struct rio_dev *nextdev[0U] ;
};
struct rio_switch_ops {
   struct module *owner ;
   int (*add_entry)(struct rio_mport * , u16 , u8 , u16 , u16 , u8 ) ;
   int (*get_entry)(struct rio_mport * , u16 , u8 , u16 , u16 , u8 * ) ;
   int (*clr_table)(struct rio_mport * , u16 , u8 , u16 ) ;
   int (*set_domain)(struct rio_mport * , u16 , u8 , u8 ) ;
   int (*get_domain)(struct rio_mport * , u16 , u8 , u8 * ) ;
   int (*em_init)(struct rio_dev * ) ;
   int (*em_handle)(struct rio_dev * , u8 ) ;
};
struct rio_net;
struct rio_driver;
struct rio_dev {
   struct list_head global_list ;
   struct list_head net_list ;
   struct rio_net *net ;
   bool do_enum ;
   u16 did ;
   u16 vid ;
   u32 device_rev ;
   u16 asm_did ;
   u16 asm_vid ;
   u16 asm_rev ;
   u16 efptr ;
   u32 pef ;
   u32 swpinfo ;
   u32 src_ops ;
   u32 dst_ops ;
   u32 comp_tag ;
   u32 phys_efptr ;
   u32 em_efptr ;
   u64 dma_mask ;
   struct rio_driver *driver ;
   struct device dev ;
   struct resource riores[16U] ;
   int (*pwcback)(struct rio_dev * , union rio_pw_msg * , int ) ;
   u16 destid ;
   u8 hopcount ;
   struct rio_dev *prev ;
   struct rio_switch rswitch[0U] ;
};
struct rio_msg {
   struct resource *res ;
   void (*mcback)(struct rio_mport * , void * , int , int ) ;
};
struct rio_dbell {
   struct list_head node ;
   struct resource *res ;
   void (*dinb)(struct rio_mport * , void * , u16 , u16 , u16 ) ;
   void *dev_id ;
};
enum rio_phy_type {
    RIO_PHY_PARALLEL = 0,
    RIO_PHY_SERIAL = 1
} ;
struct rio_ops;
struct rio_scan;
struct rio_mport {
   struct list_head dbells ;
   struct list_head node ;
   struct list_head nnode ;
   struct resource iores ;
   struct resource riores[16U] ;
   struct rio_msg inb_msg[4U] ;
   struct rio_msg outb_msg[4U] ;
   int host_deviceid ;
   struct rio_ops *ops ;
   unsigned char id ;
   unsigned char index ;
   unsigned int sys_size ;
   enum rio_phy_type phy_type ;
   u32 phys_efptr ;
   unsigned char name[40U] ;
   struct device dev ;
   void *priv ;
   struct dma_device dma ;
   struct rio_scan *nscan ;
};
struct rio_id_table {
   u16 start ;
   u32 max ;
   spinlock_t lock ;
   unsigned long *table ;
};
struct rio_net {
   struct list_head node ;
   struct list_head devices ;
   struct list_head switches ;
   struct list_head mports ;
   struct rio_mport *hport ;
   unsigned char id ;
   struct rio_id_table destid_table ;
};
struct rio_ops {
   int (*lcread)(struct rio_mport * , int , u32 , int , u32 * ) ;
   int (*lcwrite)(struct rio_mport * , int , u32 , int , u32 ) ;
   int (*cread)(struct rio_mport * , int , u16 , u8 , u32 , int , u32 * ) ;
   int (*cwrite)(struct rio_mport * , int , u16 , u8 , u32 , int , u32 ) ;
   int (*dsend)(struct rio_mport * , int , u16 , u16 ) ;
   int (*pwenable)(struct rio_mport * , int ) ;
   int (*open_outb_mbox)(struct rio_mport * , void * , int , int ) ;
   void (*close_outb_mbox)(struct rio_mport * , int ) ;
   int (*open_inb_mbox)(struct rio_mport * , void * , int , int ) ;
   void (*close_inb_mbox)(struct rio_mport * , int ) ;
   int (*add_outb_message)(struct rio_mport * , struct rio_dev * , int , void * ,
                           size_t ) ;
   int (*add_inb_buffer)(struct rio_mport * , int , void * ) ;
   void *(*get_inb_message)(struct rio_mport * , int ) ;
   int (*map_inb)(struct rio_mport * , dma_addr_t , u64 , u32 , u32 ) ;
   void (*unmap_inb)(struct rio_mport * , dma_addr_t ) ;
};
struct rio_driver {
   struct list_head node ;
   char *name ;
   struct rio_device_id const *id_table ;
   int (*probe)(struct rio_dev * , struct rio_device_id const * ) ;
   void (*remove)(struct rio_dev * ) ;
   int (*suspend)(struct rio_dev * , u32 ) ;
   int (*resume)(struct rio_dev * ) ;
   int (*enable_wake)(struct rio_dev * , u32 , int ) ;
   struct device_driver driver ;
};
struct __anonstruct_em_222 {
   u32 comptag ;
   u32 errdetect ;
   u32 is_port ;
   u32 ltlerrdet ;
   u32 padding[12U] ;
};
union rio_pw_msg {
   struct __anonstruct_em_222 em ;
   u32 raw[16U] ;
};
enum rio_write_type {
    RDW_DEFAULT = 0,
    RDW_ALL_NWRITE = 1,
    RDW_ALL_NWRITE_R = 2,
    RDW_LAST_NWRITE_R = 3
} ;
struct rio_dma_ext {
   u16 destid ;
   u64 rio_addr ;
   u8 rio_addr_u ;
   enum rio_write_type wr_type ;
};
struct rio_dma_data {
   struct scatterlist *sg ;
   unsigned int sg_len ;
   u64 rio_addr ;
   u8 rio_addr_u ;
   enum rio_write_type wr_type ;
};
struct rio_scan {
   struct module *owner ;
   int (*enumerate)(struct rio_mport * , u32 ) ;
   int (*discover)(struct rio_mport * , u32 ) ;
};
struct rio_scan_node {
   int mport_id ;
   struct list_head node ;
   struct rio_scan *ops ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct rio_disc_work {
   struct work_struct work ;
   struct rio_mport *mport ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
__inline static void bitmap_zero(unsigned long *dst , unsigned int nbits )
{
  unsigned int len ;
  {
  len = (unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U;
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
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
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_22(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_24(struct workqueue_struct *ldv_func_arg1 ) ;
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
void ldv_flush_workqueue_23(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
  return (tmp);
}
}
extern int request_resource(struct resource * , struct resource * ) ;
extern int release_resource(struct resource * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
bool ldv_try_module_get_10(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_12(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_14(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_16(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_18(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_20(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
void ldv_module_put_13(struct module *ldv_func_arg1 ) ;
void ldv_module_put_15(struct module *ldv_func_arg1 ) ;
void ldv_module_put_17(struct module *ldv_func_arg1 ) ;
void ldv_module_put_19(struct module *ldv_func_arg1 ) ;
void ldv_module_put_21(struct module *ldv_func_arg1 ) ;
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
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
int ldv_work_1_1 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_work_1_0 ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
extern void __const_udelay(unsigned long ) ;
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
extern int device_register(struct device * ) ;
extern int device_add(struct device * ) ;
extern void dev_err(struct device const * , char const * , ...) ;
__inline static struct dma_async_tx_descriptor *dmaengine_prep_rio_sg(struct dma_chan *chan ,
                                                                      struct scatterlist *sgl ,
                                                                      unsigned int sg_len ,
                                                                      enum dma_transfer_direction dir ,
                                                                      unsigned long flags ,
                                                                      struct rio_dma_ext *rio_ext )
{
  struct dma_async_tx_descriptor *tmp ;
  {
  tmp = (*((chan->device)->device_prep_slave_sg))(chan, sgl, sg_len, dir, flags, (void *)rio_ext);
  return (tmp);
}
}
__inline static void __dma_cap_set(enum dma_transaction_type tx_type , dma_cap_mask_t *dstp )
{
  {
  set_bit((long )tx_type, (unsigned long volatile *)(& dstp->bits));
  return;
}
}
__inline static void __dma_cap_zero(dma_cap_mask_t *dstp )
{
  {
  bitmap_zero((unsigned long *)(& dstp->bits), 13U);
  return;
}
}
extern struct dma_chan *__dma_request_channel(dma_cap_mask_t const * , bool (*)(struct dma_chan * ,
                                                                                  void * ) ,
                                              void * ) ;
extern void dma_release_channel(struct dma_chan * ) ;
struct class rio_mport_class ;
int rio_register_mport(struct rio_mport *port ) ;
int __rio_local_read_config_32(struct rio_mport *mport , u32 offset , u32 *value ) ;
int __rio_local_write_config_32(struct rio_mport *mport , u32 offset , u32 value ) ;
int rio_mport_read_config_32(struct rio_mport *mport , u16 destid , u8 hopcount ,
                             u32 offset , u32 *value ) ;
int rio_mport_write_config_32(struct rio_mport *mport , u16 destid , u8 hopcount ,
                              u32 offset , u32 value ) ;
__inline static int rio_local_read_config_32(struct rio_mport *port , u32 offset ,
                                             u32 *data )
{
  int tmp ;
  {
  tmp = __rio_local_read_config_32(port, offset, data);
  return (tmp);
}
}
__inline static int rio_local_write_config_32(struct rio_mport *port , u32 offset ,
                                              u32 data )
{
  int tmp ;
  {
  tmp = __rio_local_write_config_32(port, offset, data);
  return (tmp);
}
}
__inline static int rio_read_config_32(struct rio_dev *rdev , u32 offset , u32 *data )
{
  int tmp ;
  {
  tmp = rio_mport_read_config_32((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 offset, data);
  return (tmp);
}
}
__inline static int rio_write_config_32(struct rio_dev *rdev , u32 offset , u32 data )
{
  int tmp ;
  {
  tmp = rio_mport_write_config_32((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                  offset, data);
  return (tmp);
}
}
__inline static void rio_init_mbox_res(struct resource *res , int start , int end )
{
  {
  memset((void *)res, 0, 56UL);
  res->start = (resource_size_t )start;
  res->end = (resource_size_t )end;
  res->flags = 1024UL;
  return;
}
}
__inline static void rio_init_dbell_res(struct resource *res , u16 start , u16 end )
{
  {
  memset((void *)res, 0, 56UL);
  res->start = (resource_size_t )start;
  res->end = (resource_size_t )end;
  res->flags = 512UL;
  return;
}
}
int rio_request_outb_mbox(struct rio_mport *mport , void *dev_id , int mbox , int entries ,
                          void (*moutb)(struct rio_mport * , void * , int , int ) ) ;
int rio_release_outb_mbox(struct rio_mport *mport , int mbox ) ;
int rio_request_inb_mbox(struct rio_mport *mport , void *dev_id , int mbox , int entries ,
                         void (*minb)(struct rio_mport * , void * , int , int ) ) ;
int rio_release_inb_mbox(struct rio_mport *mport , int mbox ) ;
int rio_request_inb_dbell(struct rio_mport *mport , void *dev_id , u16 start , u16 end ,
                          void (*dinb)(struct rio_mport * , void * , u16 , u16 ,
                                       u16 ) ) ;
int rio_release_inb_dbell(struct rio_mport *mport , u16 start , u16 end ) ;
struct resource *rio_request_outb_dbell(struct rio_dev *rdev , u16 start , u16 end ) ;
int rio_release_outb_dbell(struct rio_dev *rdev , struct resource *res ) ;
int rio_map_inb_region(struct rio_mport *mport , dma_addr_t local , u64 rbase , u32 size ,
                       u32 rflags ) ;
void rio_unmap_inb_region(struct rio_mport *mport , dma_addr_t lstart ) ;
int rio_request_inb_pwrite(struct rio_dev *rdev , int (*pwcback)(struct rio_dev * ,
                                                                 union rio_pw_msg * ,
                                                                 int ) ) ;
int rio_release_inb_pwrite(struct rio_dev *rdev ) ;
int rio_inb_pwrite_handler(union rio_pw_msg *pw_msg ) ;
struct rio_dev *rio_dev_get(struct rio_dev *rdev ) ;
void rio_dev_put(struct rio_dev *rdev ) ;
struct dma_chan *rio_request_dma(struct rio_dev *rdev ) ;
struct dma_chan *rio_request_mport_dma(struct rio_mport *mport ) ;
void rio_release_dma(struct dma_chan *dchan ) ;
struct dma_async_tx_descriptor *rio_dma_prep_slave_sg(struct rio_dev *rdev , struct dma_chan *dchan ,
                                                      struct rio_dma_data *data ,
                                                      enum dma_transfer_direction direction ,
                                                      unsigned long flags ) ;
struct dma_async_tx_descriptor *rio_dma_prep_xfer(struct dma_chan *dchan , u16 destid ,
                                                  struct rio_dma_data *data , enum dma_transfer_direction direction ,
                                                  unsigned long flags ) ;
__inline static char const *rio_name(struct rio_dev *rdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& rdev->dev));
  return (tmp);
}
}
u16 rio_local_get_device_id(struct rio_mport *port ) ;
struct rio_dev *rio_get_device(u16 vid , u16 did , struct rio_dev *from ) ;
struct rio_dev *rio_get_asm(u16 vid , u16 did , u16 asm_vid , u16 asm_did , struct rio_dev *from ) ;
int rio_init_mports(void) ;
u32 rio_mport_get_feature(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                          int ftr ) ;
u32 rio_mport_get_physefb(struct rio_mport *port , int local , u16 destid , u8 hopcount ) ;
u32 rio_mport_get_efb(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                      u32 from ) ;
int rio_mport_chk_dev_access(struct rio_mport *mport , u16 destid , u8 hopcount ) ;
int rio_create_sysfs_dev_files(struct rio_dev *rdev ) ;
int rio_lock_device(struct rio_mport *port , u16 destid , u8 hopcount , int wait_ms ) ;
int rio_unlock_device(struct rio_mport *port , u16 destid , u8 hopcount ) ;
int rio_route_add_entry(struct rio_dev *rdev , u16 table , u16 route_destid , u8 route_port ,
                        int lock ) ;
int rio_route_get_entry(struct rio_dev *rdev , u16 table , u16 route_destid , u8 *route_port ,
                        int lock ) ;
int rio_route_clr_table(struct rio_dev *rdev , u16 table , int lock ) ;
int rio_set_port_lockout(struct rio_dev *rdev , u32 pnum , int lock ) ;
struct rio_dev *rio_get_comptag(u32 comp_tag , struct rio_dev *from ) ;
int rio_add_device(struct rio_dev *rdev ) ;
int rio_enable_rx_tx_port(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                          u8 port_num ) ;
int rio_register_scan(int mport_id , struct rio_scan *scan_ops ) ;
int rio_unregister_scan(int mport_id , struct rio_scan *scan_ops ) ;
struct rio_mport *rio_find_mport(int mport_id ) ;
int rio_mport_scan(int mport_id ) ;
static int hdid[8U] ;
static int ids_num ;
static struct list_head rio_devices = {& rio_devices, & rio_devices};
static spinlock_t rio_global_list_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rio_global_list_lock",
                                                    0, 0UL}}}};
static struct list_head rio_mports = {& rio_mports, & rio_mports};
static struct list_head rio_scans = {& rio_scans, & rio_scans};
static struct mutex rio_mport_list_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rio_mport_list_lock.wait_lock",
                                                          0, 0UL}}}}, {& rio_mport_list_lock.wait_list,
                                                                       & rio_mport_list_lock.wait_list},
    0, (void *)(& rio_mport_list_lock), {0, {0, 0}, "rio_mport_list_lock", 0, 0UL}};
static unsigned char next_portid ;
static spinlock_t rio_mmap_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rio_mmap_lock", 0,
                                                    0UL}}}};
u16 rio_local_get_device_id(struct rio_mport *port )
{
  u32 result ;
  {
  rio_local_read_config_32(port, 96U, & result);
  return (port->sys_size != 0U ? (u16 )result : (u16 )((result & 16711680U) >> 16));
}
}
int rio_add_device(struct rio_dev *rdev )
{
  int err ;
  {
  err = device_add(& rdev->dev);
  if (err != 0) {
    return (err);
  } else {
  }
  spin_lock(& rio_global_list_lock);
  list_add_tail(& rdev->global_list, & rio_devices);
  spin_unlock(& rio_global_list_lock);
  rio_create_sysfs_dev_files(rdev);
  return (0);
}
}
static char const __kstrtab_rio_add_device[15U] =
  { 'r', 'i', 'o', '_',
        'a', 'd', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_add_device ;
struct kernel_symbol const __ksymtab_rio_add_device = {(unsigned long )(& rio_add_device), (char const *)(& __kstrtab_rio_add_device)};
int rio_request_inb_mbox(struct rio_mport *mport , void *dev_id , int mbox , int entries ,
                         void (*minb)(struct rio_mport * , void * , int , int ) )
{
  int rc ;
  struct resource *res ;
  void *tmp ;
  {
  rc = -38;
  if ((unsigned long )(mport->ops)->open_inb_mbox == (unsigned long )((int (*)(struct rio_mport * ,
                                                                               void * ,
                                                                               int ,
                                                                               int ))0)) {
    goto out;
  } else {
  }
  tmp = kmalloc(56UL, 208U);
  res = (struct resource *)tmp;
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    rio_init_mbox_res(res, mbox, mbox);
    rc = request_resource((struct resource *)(& mport->riores) + 1UL, res);
    if (rc < 0) {
      kfree((void const *)res);
      goto out;
    } else {
    }
    mport->inb_msg[mbox].res = res;
    mport->inb_msg[mbox].mcback = minb;
    rc = (*((mport->ops)->open_inb_mbox))(mport, dev_id, mbox, entries);
  } else {
    rc = -12;
  }
  out: ;
  return (rc);
}
}
int rio_release_inb_mbox(struct rio_mport *mport , int mbox )
{
  int tmp ;
  {
  if ((unsigned long )(mport->ops)->close_inb_mbox != (unsigned long )((void (*)(struct rio_mport * ,
                                                                                 int ))0)) {
    (*((mport->ops)->close_inb_mbox))(mport, mbox);
    tmp = release_resource(mport->inb_msg[mbox].res);
    return (tmp);
  } else {
    return (-38);
  }
}
}
int rio_request_outb_mbox(struct rio_mport *mport , void *dev_id , int mbox , int entries ,
                          void (*moutb)(struct rio_mport * , void * , int , int ) )
{
  int rc ;
  struct resource *res ;
  void *tmp ;
  {
  rc = -38;
  if ((unsigned long )(mport->ops)->open_outb_mbox == (unsigned long )((int (*)(struct rio_mport * ,
                                                                                void * ,
                                                                                int ,
                                                                                int ))0)) {
    goto out;
  } else {
  }
  tmp = kmalloc(56UL, 208U);
  res = (struct resource *)tmp;
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    rio_init_mbox_res(res, mbox, mbox);
    rc = request_resource((struct resource *)(& mport->riores) + 2UL, res);
    if (rc < 0) {
      kfree((void const *)res);
      goto out;
    } else {
    }
    mport->outb_msg[mbox].res = res;
    mport->outb_msg[mbox].mcback = moutb;
    rc = (*((mport->ops)->open_outb_mbox))(mport, dev_id, mbox, entries);
  } else {
    rc = -12;
  }
  out: ;
  return (rc);
}
}
int rio_release_outb_mbox(struct rio_mport *mport , int mbox )
{
  int tmp ;
  {
  if ((unsigned long )(mport->ops)->close_outb_mbox != (unsigned long )((void (*)(struct rio_mport * ,
                                                                                  int ))0)) {
    (*((mport->ops)->close_outb_mbox))(mport, mbox);
    tmp = release_resource(mport->outb_msg[mbox].res);
    return (tmp);
  } else {
    return (-38);
  }
}
}
static int rio_setup_inb_dbell(struct rio_mport *mport , void *dev_id , struct resource *res ,
                               void (*dinb)(struct rio_mport * , void * , u16 , u16 ,
                                            u16 ) )
{
  int rc ;
  struct rio_dbell *dbell ;
  void *tmp ;
  {
  rc = 0;
  tmp = kmalloc(40UL, 208U);
  dbell = (struct rio_dbell *)tmp;
  if ((unsigned long )dbell == (unsigned long )((struct rio_dbell *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  dbell->res = res;
  dbell->dinb = dinb;
  dbell->dev_id = dev_id;
  list_add_tail(& dbell->node, & mport->dbells);
  out: ;
  return (rc);
}
}
int rio_request_inb_dbell(struct rio_mport *mport , void *dev_id , u16 start , u16 end ,
                          void (*dinb)(struct rio_mport * , void * , u16 , u16 ,
                                       u16 ) )
{
  int rc ;
  struct resource *res ;
  void *tmp ;
  {
  rc = 0;
  tmp = kmalloc(56UL, 208U);
  res = (struct resource *)tmp;
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    rio_init_dbell_res(res, (int )start, (int )end);
    rc = request_resource((struct resource *)(& mport->riores), res);
    if (rc < 0) {
      kfree((void const *)res);
      goto out;
    } else {
    }
    rc = rio_setup_inb_dbell(mport, dev_id, res, dinb);
  } else {
    rc = -12;
  }
  out: ;
  return (rc);
}
}
int rio_release_inb_dbell(struct rio_mport *mport , u16 start , u16 end )
{
  int rc ;
  int found ;
  struct rio_dbell *dbell ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  found = 0;
  __mptr = (struct list_head const *)mport->dbells.next;
  dbell = (struct rio_dbell *)__mptr;
  goto ldv_27775;
  ldv_27774: ;
  if ((dbell->res)->start == (resource_size_t )start && (dbell->res)->end == (resource_size_t )end) {
    found = 1;
    goto ldv_27773;
  } else {
  }
  __mptr___0 = (struct list_head const *)dbell->node.next;
  dbell = (struct rio_dbell *)__mptr___0;
  ldv_27775: ;
  if ((unsigned long )dbell != (unsigned long )mport) {
    goto ldv_27774;
  } else {
  }
  ldv_27773: ;
  if (found == 0) {
    rc = -22;
    goto out;
  } else {
  }
  list_del(& dbell->node);
  rc = release_resource(dbell->res);
  kfree((void const *)dbell);
  out: ;
  return (rc);
}
}
struct resource *rio_request_outb_dbell(struct rio_dev *rdev , u16 start , u16 end )
{
  struct resource *res ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = kmalloc(56UL, 208U);
  res = (struct resource *)tmp;
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    rio_init_dbell_res(res, (int )start, (int )end);
    tmp___0 = request_resource((struct resource *)(& rdev->riores), res);
    if (tmp___0 < 0) {
      kfree((void const *)res);
      res = (struct resource *)0;
    } else {
    }
  } else {
  }
  return (res);
}
}
int rio_release_outb_dbell(struct rio_dev *rdev , struct resource *res )
{
  int rc ;
  int tmp ;
  {
  tmp = release_resource(res);
  rc = tmp;
  kfree((void const *)res);
  return (rc);
}
}
int rio_request_inb_pwrite(struct rio_dev *rdev , int (*pwcback)(struct rio_dev * ,
                                                                 union rio_pw_msg * ,
                                                                 int ) )
{
  int rc ;
  {
  rc = 0;
  spin_lock(& rio_global_list_lock);
  if ((unsigned long )rdev->pwcback != (unsigned long )((int (*)(struct rio_dev * ,
                                                                 union rio_pw_msg * ,
                                                                 int ))0)) {
    rc = -12;
  } else {
    rdev->pwcback = pwcback;
  }
  spin_unlock(& rio_global_list_lock);
  return (rc);
}
}
static char const __kstrtab_rio_request_inb_pwrite[23U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'i', 'n', 'b', '_',
        'p', 'w', 'r', 'i',
        't', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_request_inb_pwrite ;
struct kernel_symbol const __ksymtab_rio_request_inb_pwrite = {(unsigned long )(& rio_request_inb_pwrite), (char const *)(& __kstrtab_rio_request_inb_pwrite)};
int rio_release_inb_pwrite(struct rio_dev *rdev )
{
  int rc ;
  {
  rc = -12;
  spin_lock(& rio_global_list_lock);
  if ((unsigned long )rdev->pwcback != (unsigned long )((int (*)(struct rio_dev * ,
                                                                 union rio_pw_msg * ,
                                                                 int ))0)) {
    rdev->pwcback = (int (*)(struct rio_dev * , union rio_pw_msg * , int ))0;
    rc = 0;
  } else {
  }
  spin_unlock(& rio_global_list_lock);
  return (rc);
}
}
static char const __kstrtab_rio_release_inb_pwrite[23U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'i', 'n', 'b', '_',
        'p', 'w', 'r', 'i',
        't', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_release_inb_pwrite ;
struct kernel_symbol const __ksymtab_rio_release_inb_pwrite = {(unsigned long )(& rio_release_inb_pwrite), (char const *)(& __kstrtab_rio_release_inb_pwrite)};
int rio_map_inb_region(struct rio_mport *mport , dma_addr_t local , u64 rbase , u32 size ,
                       u32 rflags )
{
  int rc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  rc = 0;
  if ((unsigned long )(mport->ops)->map_inb == (unsigned long )((int (*)(struct rio_mport * ,
                                                                         dma_addr_t ,
                                                                         u64 , u32 ,
                                                                         u32 ))0)) {
    return (-1);
  } else {
  }
  tmp = spinlock_check(& rio_mmap_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  rc = (*((mport->ops)->map_inb))(mport, local, rbase, size, rflags);
  spin_unlock_irqrestore(& rio_mmap_lock, flags);
  return (rc);
}
}
static char const __kstrtab_rio_map_inb_region[19U] =
  { 'r', 'i', 'o', '_',
        'm', 'a', 'p', '_',
        'i', 'n', 'b', '_',
        'r', 'e', 'g', 'i',
        'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_rio_map_inb_region ;
struct kernel_symbol const __ksymtab_rio_map_inb_region = {(unsigned long )(& rio_map_inb_region), (char const *)(& __kstrtab_rio_map_inb_region)};
void rio_unmap_inb_region(struct rio_mport *mport , dma_addr_t lstart )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )(mport->ops)->unmap_inb == (unsigned long )((void (*)(struct rio_mport * ,
                                                                            dma_addr_t ))0)) {
    return;
  } else {
  }
  tmp = spinlock_check(& rio_mmap_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  (*((mport->ops)->unmap_inb))(mport, lstart);
  spin_unlock_irqrestore(& rio_mmap_lock, flags);
  return;
}
}
static char const __kstrtab_rio_unmap_inb_region[21U] =
  { 'r', 'i', 'o', '_',
        'u', 'n', 'm', 'a',
        'p', '_', 'i', 'n',
        'b', '_', 'r', 'e',
        'g', 'i', 'o', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_rio_unmap_inb_region ;
struct kernel_symbol const __ksymtab_rio_unmap_inb_region = {(unsigned long )(& rio_unmap_inb_region), (char const *)(& __kstrtab_rio_unmap_inb_region)};
u32 rio_mport_get_physefb(struct rio_mport *port , int local , u16 destid , u8 hopcount )
{
  u32 ext_ftr_ptr ;
  u32 ftr_header ;
  {
  ext_ftr_ptr = rio_mport_get_efb(port, local, (int )destid, (int )hopcount, 0U);
  goto ldv_27872;
  ldv_27871: ;
  if (local != 0) {
    rio_local_read_config_32(port, ext_ftr_ptr, & ftr_header);
  } else {
    rio_mport_read_config_32(port, (int )destid, (int )hopcount, ext_ftr_ptr, & ftr_header);
  }
  ftr_header = ftr_header & 65535U;
  switch (ftr_header) {
  case 1U: ;
  case 2U: ;
  case 3U: ;
  case 4U: ;
  case 5U: ;
  case 6U: ;
  case 9U: ;
  return (ext_ftr_ptr);
  default: ;
  goto ldv_27870;
  }
  ldv_27870:
  ext_ftr_ptr = rio_mport_get_efb(port, local, (int )destid, (int )hopcount, ext_ftr_ptr);
  ldv_27872: ;
  if (ext_ftr_ptr != 0U) {
    goto ldv_27871;
  } else {
  }
  return (ext_ftr_ptr);
}
}
static char const __kstrtab_rio_mport_get_physefb[22U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'g', 'e',
        't', '_', 'p', 'h',
        'y', 's', 'e', 'f',
        'b', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_get_physefb ;
struct kernel_symbol const __ksymtab_rio_mport_get_physefb = {(unsigned long )(& rio_mport_get_physefb), (char const *)(& __kstrtab_rio_mport_get_physefb)};
struct rio_dev *rio_get_comptag(u32 comp_tag , struct rio_dev *from )
{
  struct list_head *n ;
  struct rio_dev *rdev ;
  struct list_head const *__mptr ;
  {
  spin_lock(& rio_global_list_lock);
  n = (unsigned long )from != (unsigned long )((struct rio_dev *)0) ? from->global_list.next : rio_devices.next;
  goto ldv_27894;
  ldv_27893:
  __mptr = (struct list_head const *)n;
  rdev = (struct rio_dev *)__mptr;
  if (rdev->comp_tag == comp_tag) {
    goto exit;
  } else {
  }
  n = n->next;
  ldv_27894: ;
  if ((unsigned long )n != (unsigned long )((struct list_head *)0) && (unsigned long )n != (unsigned long )(& rio_devices)) {
    goto ldv_27893;
  } else {
  }
  rdev = (struct rio_dev *)0;
  exit:
  spin_unlock(& rio_global_list_lock);
  return (rdev);
}
}
static char const __kstrtab_rio_get_comptag[16U] =
  { 'r', 'i', 'o', '_',
        'g', 'e', 't', '_',
        'c', 'o', 'm', 'p',
        't', 'a', 'g', '\000'};
struct kernel_symbol const __ksymtab_rio_get_comptag ;
struct kernel_symbol const __ksymtab_rio_get_comptag = {(unsigned long )(& rio_get_comptag), (char const *)(& __kstrtab_rio_get_comptag)};
int rio_set_port_lockout(struct rio_dev *rdev , u32 pnum , int lock )
{
  u32 regval ;
  {
  rio_read_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 92U, & regval);
  if (lock != 0) {
    regval = regval | 2U;
  } else {
    regval = regval & 4294967293U;
  }
  rio_write_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 92U, regval);
  return (0);
}
}
static char const __kstrtab_rio_set_port_lockout[21U] =
  { 'r', 'i', 'o', '_',
        's', 'e', 't', '_',
        'p', 'o', 'r', 't',
        '_', 'l', 'o', 'c',
        'k', 'o', 'u', 't',
        '\000'};
struct kernel_symbol const __ksymtab_rio_set_port_lockout ;
struct kernel_symbol const __ksymtab_rio_set_port_lockout = {(unsigned long )(& rio_set_port_lockout), (char const *)(& __kstrtab_rio_set_port_lockout)};
int rio_enable_rx_tx_port(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                          u8 port_num )
{
  u32 regval ;
  u32 ext_ftr_ptr ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  descriptor.modname = "rapidio";
  descriptor.function = "rio_enable_rx_tx_port";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor.format = "rio_enable_rx_tx_port(local = %d, destid = %d, hopcount = %d, port_num = %d)\n";
  descriptor.lineno = 617U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "rio_enable_rx_tx_port(local = %d, destid = %d, hopcount = %d, port_num = %d)\n",
                       local, (int )destid, (int )hopcount, (int )port_num);
  } else {
  }
  ext_ftr_ptr = rio_mport_get_physefb(port, local, (int )destid, (int )hopcount);
  if (local != 0) {
    rio_local_read_config_32(port, ext_ftr_ptr + 92U, & regval);
  } else {
    tmp___0 = rio_mport_read_config_32(port, (int )destid, (int )hopcount, ((u32 )((int )port_num * 32) + ext_ftr_ptr) + 92U,
                                       & regval);
    if (tmp___0 < 0) {
      return (-5);
    } else {
    }
  }
  if ((int )regval & 1) {
    regval = regval | 6291456U;
  } else {
    regval = regval | 1207959552U;
  }
  if (local != 0) {
    rio_local_write_config_32(port, ext_ftr_ptr + 92U, regval);
  } else {
    tmp___1 = rio_mport_write_config_32(port, (int )destid, (int )hopcount, ((u32 )((int )port_num * 32) + ext_ftr_ptr) + 92U,
                                        regval);
    if (tmp___1 < 0) {
      return (-5);
    } else {
    }
  }
  return (0);
}
}
static char const __kstrtab_rio_enable_rx_tx_port[22U] =
  { 'r', 'i', 'o', '_',
        'e', 'n', 'a', 'b',
        'l', 'e', '_', 'r',
        'x', '_', 't', 'x',
        '_', 'p', 'o', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_rio_enable_rx_tx_port ;
struct kernel_symbol const __ksymtab_rio_enable_rx_tx_port = {(unsigned long )(& rio_enable_rx_tx_port), (char const *)(& __kstrtab_rio_enable_rx_tx_port)};
static int rio_chk_dev_route(struct rio_dev *rdev , struct rio_dev **nrdev , int *npnum )
{
  u32 result ;
  int p_port ;
  int rc ;
  struct rio_dev *prev ;
  int tmp ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  rc = -5;
  prev = (struct rio_dev *)0;
  goto ldv_27952;
  ldv_27951:
  tmp = rio_read_config_32(rdev->prev, 0U, & result);
  if (tmp == 0) {
    prev = rdev->prev;
    goto ldv_27950;
  } else {
  }
  rdev = rdev->prev;
  ldv_27952: ;
  if ((unsigned long )rdev->prev != (unsigned long )((struct rio_dev *)0) && ((rdev->prev)->pef & 268435456U) != 0U) {
    goto ldv_27951;
  } else {
  }
  ldv_27950: ;
  if ((unsigned long )prev == (unsigned long )((struct rio_dev *)0)) {
    goto err_out;
  } else {
  }
  p_port = (int )*(((struct rio_switch *)(& prev->rswitch))->route_table + (unsigned long )rdev->destid);
  if (p_port != 255) {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_chk_dev_route";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO: link failed on [%s]-P%d\n";
    descriptor.lineno = 687U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = rio_name(prev);
      __dynamic_pr_debug(& descriptor, "RIO: link failed on [%s]-P%d\n", tmp___0,
                         p_port);
    } else {
    }
    *nrdev = prev;
    *npnum = p_port;
    rc = 0;
  } else {
    descriptor___0.modname = "rapidio";
    descriptor___0.function = "rio_chk_dev_route";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___0.format = "RIO: failed to trace route to %s\n";
    descriptor___0.lineno = 692U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = rio_name(rdev);
      __dynamic_pr_debug(& descriptor___0, "RIO: failed to trace route to %s\n", tmp___2);
    } else {
    }
  }
  err_out: ;
  return (rc);
}
}
int rio_mport_chk_dev_access(struct rio_mport *mport , u16 destid , u8 hopcount )
{
  int i ;
  u32 tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  i = 0;
  goto ldv_27969;
  ldv_27968:
  i = i + 1;
  if (i == 3) {
    return (-5);
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_27966;
    ldv_27965:
    __const_udelay(4295000UL);
    ldv_27966:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_27965;
    } else {
    }
  }
  ldv_27969:
  tmp___1 = rio_mport_read_config_32(mport, (int )destid, (int )hopcount, 0U, & tmp);
  if (tmp___1 != 0) {
    goto ldv_27968;
  } else {
  }
  return (0);
}
}
static char const __kstrtab_rio_mport_chk_dev_access[25U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'c', 'h',
        'k', '_', 'd', 'e',
        'v', '_', 'a', 'c',
        'c', 'e', 's', 's',
        '\000'};
struct kernel_symbol const __ksymtab_rio_mport_chk_dev_access ;
struct kernel_symbol const __ksymtab_rio_mport_chk_dev_access = {(unsigned long )(& rio_mport_chk_dev_access), (char const *)(& __kstrtab_rio_mport_chk_dev_access)};
static int rio_chk_dev_access(struct rio_dev *rdev )
{
  int tmp ;
  {
  tmp = rio_mport_chk_dev_access((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount);
  return (tmp);
}
}
static int rio_get_input_status(struct rio_dev *rdev , int pnum , u32 *lnkresp )
{
  u32 regval ;
  int checkcount ;
  int tmp ;
  {
  if ((unsigned long )lnkresp != (unsigned long )((u32 *)0U)) {
    rio_read_config_32(rdev, (rdev->phys_efptr + (u32 )(pnum * 32)) + 68U, & regval);
    __const_udelay(214750UL);
  } else {
  }
  rio_write_config_32(rdev, rdev->phys_efptr + (u32 )((pnum + 2) * 32), 4U);
  if ((unsigned long )lnkresp == (unsigned long )((u32 *)0U)) {
    return (0);
  } else {
  }
  checkcount = 3;
  goto ldv_27991;
  ldv_27990:
  __const_udelay(214750UL);
  rio_read_config_32(rdev, (rdev->phys_efptr + (u32 )(pnum * 32)) + 68U, & regval);
  if ((int )regval < 0) {
    *lnkresp = regval;
    return (0);
  } else {
  }
  ldv_27991:
  tmp = checkcount;
  checkcount = checkcount - 1;
  if (tmp != 0) {
    goto ldv_27990;
  } else {
  }
  return (-5);
}
}
static int rio_clr_err_stopped(struct rio_dev *rdev , u32 pnum , u32 err_status )
{
  struct rio_dev *nextdev ;
  u32 regval ;
  u32 far_ackid ;
  u32 far_linkstat ;
  u32 near_ackid ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___7 ;
  long tmp___8 ;
  {
  nextdev = ((struct rio_switch *)(& rdev->rswitch))->nextdev[pnum];
  if (err_status == 0U) {
    rio_read_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 88U, & err_status);
  } else {
  }
  if ((err_status & 65536U) != 0U) {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_clr_err_stopped";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO_EM: servicing Output Error-Stopped state\n";
    descriptor.lineno = 795U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "RIO_EM: servicing Output Error-Stopped state\n");
    } else {
    }
    tmp___1 = rio_get_input_status(rdev, (int )pnum, & regval);
    if (tmp___1 != 0) {
      descriptor___0.modname = "rapidio";
      descriptor___0.function = "rio_clr_err_stopped";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
      descriptor___0.format = "RIO_EM: Input-status response timeout\n";
      descriptor___0.lineno = 800U;
      descriptor___0.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "RIO_EM: Input-status response timeout\n");
      } else {
      }
      goto rd_err;
    } else {
    }
    descriptor___1.modname = "rapidio";
    descriptor___1.function = "rio_clr_err_stopped";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___1.format = "RIO_EM: SP%d Input-status response=0x%08x\n";
    descriptor___1.lineno = 805U;
    descriptor___1.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "RIO_EM: SP%d Input-status response=0x%08x\n",
                         pnum, regval);
    } else {
    }
    far_ackid = (regval & 2016U) >> 5;
    far_linkstat = regval & 31U;
    rio_read_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 72U, & regval);
    descriptor___2.modname = "rapidio";
    descriptor___2.function = "rio_clr_err_stopped";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___2.format = "RIO_EM: SP%d_ACK_STS_CSR=0x%08x\n";
    descriptor___2.lineno = 811U;
    descriptor___2.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "RIO_EM: SP%d_ACK_STS_CSR=0x%08x\n", pnum,
                         regval);
    } else {
    }
    near_ackid = (regval & 1056964608U) >> 24;
    descriptor___3.modname = "rapidio";
    descriptor___3.function = "rio_clr_err_stopped";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___3.format = "RIO_EM: SP%d far_ackID=0x%02x far_linkstat=0x%02x near_ackID=0x%02x\n";
    descriptor___3.lineno = 815U;
    descriptor___3.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "RIO_EM: SP%d far_ackID=0x%02x far_linkstat=0x%02x near_ackID=0x%02x\n",
                         pnum, far_ackid, far_linkstat, near_ackid);
    } else {
    }
    if ((regval & 16128U) >> 8 != far_ackid || (regval & 63U) != far_ackid) {
      rio_write_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 72U, ((near_ackid << 24) | (far_ackid << 8)) | far_ackid);
      far_ackid = far_ackid + 1U;
      if ((unsigned long )nextdev != (unsigned long )((struct rio_dev *)0)) {
        rio_write_config_32(nextdev, (nextdev->phys_efptr + (nextdev->swpinfo & 255U) * 32U) + 72U,
                            ((far_ackid << 24) | (near_ackid << 8)) | near_ackid);
      } else {
        descriptor___4.modname = "rapidio";
        descriptor___4.function = "rio_clr_err_stopped";
        descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
        descriptor___4.format = "RIO_EM: Invalid nextdev pointer (NULL)\n";
        descriptor___4.lineno = 841U;
        descriptor___4.flags = 1U;
        tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
        if (tmp___5 != 0L) {
          __dynamic_pr_debug(& descriptor___4, "RIO_EM: Invalid nextdev pointer (NULL)\n");
        } else {
        }
      }
    } else {
    }
    rd_err:
    rio_read_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 88U, & err_status);
    descriptor___5.modname = "rapidio";
    descriptor___5.function = "rio_clr_err_stopped";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___5.format = "RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n";
    descriptor___5.lineno = 847U;
    descriptor___5.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum,
                         err_status);
    } else {
    }
  } else {
  }
  if ((err_status & 256U) != 0U && (unsigned long )nextdev != (unsigned long )((struct rio_dev *)0)) {
    descriptor___6.modname = "rapidio";
    descriptor___6.function = "rio_clr_err_stopped";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___6.format = "RIO_EM: servicing Input Error-Stopped state\n";
    descriptor___6.lineno = 851U;
    descriptor___6.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___6, "RIO_EM: servicing Input Error-Stopped state\n");
    } else {
    }
    rio_get_input_status(nextdev, (int )nextdev->swpinfo & 255, (u32 *)0U);
    __const_udelay(214750UL);
    rio_read_config_32(rdev, (rdev->phys_efptr + pnum * 32U) + 88U, & err_status);
    descriptor___7.modname = "rapidio";
    descriptor___7.function = "rio_clr_err_stopped";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___7.format = "RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n";
    descriptor___7.lineno = 859U;
    descriptor___7.flags = 1U;
    tmp___8 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum,
                         err_status);
    } else {
    }
  } else {
  }
  return ((err_status & 65792U) != 0U);
}
}
int rio_inb_pwrite_handler(union rio_pw_msg *pw_msg )
{
  struct rio_dev *rdev ;
  u32 err_status ;
  u32 em_perrdet ;
  u32 em_ltlerrdet ;
  int rc ;
  int portnum ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  char const *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  char const *tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  char const *tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  struct _ddebug descriptor___4 ;
  char const *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___5 ;
  long tmp___13 ;
  struct _ddebug descriptor___6 ;
  long tmp___14 ;
  {
  rdev = rio_get_comptag(pw_msg->em.comptag & 131071U, (struct rio_dev *)0);
  if ((unsigned long )rdev == (unsigned long )((struct rio_dev *)0)) {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_inb_pwrite_handler";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO: %s No matching device for CTag 0x%08x\n";
    descriptor.lineno = 883U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "RIO: %s No matching device for CTag 0x%08x\n",
                         "rio_inb_pwrite_handler", pw_msg->em.comptag);
    } else {
    }
    return (-5);
  } else {
  }
  descriptor___0.modname = "rapidio";
  descriptor___0.function = "rio_inb_pwrite_handler";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor___0.format = "RIO: Port-Write message from %s\n";
  descriptor___0.lineno = 887U;
  descriptor___0.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = rio_name(rdev);
    __dynamic_pr_debug(& descriptor___0, "RIO: Port-Write message from %s\n", tmp___0);
  } else {
  }
  if ((unsigned long )rdev->pwcback != (unsigned long )((int (*)(struct rio_dev * ,
                                                                 union rio_pw_msg * ,
                                                                 int ))0)) {
    rc = (*(rdev->pwcback))(rdev, pw_msg, 0);
    if (rc == 0) {
      return (0);
    } else {
    }
  } else {
  }
  portnum = (int )pw_msg->em.is_port & 255;
  tmp___5 = rio_chk_dev_access(rdev);
  if (tmp___5 != 0) {
    descriptor___1.modname = "rapidio";
    descriptor___1.function = "rio_inb_pwrite_handler";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___1.format = "RIO: device access failed - get link partner\n";
    descriptor___1.lineno = 920U;
    descriptor___1.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "RIO: device access failed - get link partner\n");
    } else {
    }
    tmp___4 = rio_chk_dev_route(rdev, & rdev, & portnum);
    if (tmp___4 != 0) {
      tmp___3 = rio_name(rdev);
      printk("\vRIO: Route trace for %s failed\n", tmp___3);
      return (-5);
    } else {
    }
    pw_msg = (union rio_pw_msg *)0;
  } else {
  }
  if ((rdev->pef & 268435456U) == 0U) {
    return (0);
  } else {
  }
  if (rdev->phys_efptr == 0U) {
    tmp___6 = rio_name(rdev);
    printk("\vRIO_PW: Bad switch initialization for %s\n", tmp___6);
    return (0);
  } else {
  }
  if ((unsigned long )((struct rio_switch *)(& rdev->rswitch))->ops != (unsigned long )((struct rio_switch_ops *)0) && (unsigned long )(((struct rio_switch *)(& rdev->rswitch))->ops)->em_handle != (unsigned long )((int (*)(struct rio_dev * ,
                                                                                                                                                                                                                               u8 ))0)) {
    (*((((struct rio_switch *)(& rdev->rswitch))->ops)->em_handle))(rdev, (int )((u8 )portnum));
  } else {
  }
  rio_read_config_32(rdev, (rdev->phys_efptr + (u32 )(portnum * 32)) + 88U, & err_status);
  descriptor___2.modname = "rapidio";
  descriptor___2.function = "rio_inb_pwrite_handler";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor___2.format = "RIO_PW: SP%d_ERR_STS_CSR=0x%08x\n";
  descriptor___2.lineno = 952U;
  descriptor___2.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "RIO_PW: SP%d_ERR_STS_CSR=0x%08x\n", portnum,
                       err_status);
  } else {
  }
  if ((err_status & 2U) != 0U) {
    if ((((struct rio_switch *)(& rdev->rswitch))->port_ok & (u32 )(1 << portnum)) == 0U) {
      ((struct rio_switch *)(& rdev->rswitch))->port_ok = ((struct rio_switch *)(& rdev->rswitch))->port_ok | (u32 )(1 << portnum);
      rio_set_port_lockout(rdev, (u32 )portnum, 0);
      descriptor___3.modname = "rapidio";
      descriptor___3.function = "rio_inb_pwrite_handler";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
      descriptor___3.format = "RIO_PW: Device Insertion on [%s]-P%d\n";
      descriptor___3.lineno = 961U;
      descriptor___3.flags = 1U;
      tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___9 != 0L) {
        tmp___8 = rio_name(rdev);
        __dynamic_pr_debug(& descriptor___3, "RIO_PW: Device Insertion on [%s]-P%d\n",
                           tmp___8, portnum);
      } else {
      }
    } else {
    }
    if ((err_status & 65792U) != 0U) {
      tmp___10 = rio_clr_err_stopped(rdev, (u32 )portnum, err_status);
      if (tmp___10 != 0) {
        rio_clr_err_stopped(rdev, (u32 )portnum, 0U);
      } else {
      }
    } else {
    }
  } else
  if ((((struct rio_switch *)(& rdev->rswitch))->port_ok & (u32 )(1 << portnum)) != 0U) {
    ((struct rio_switch *)(& rdev->rswitch))->port_ok = ((struct rio_switch *)(& rdev->rswitch))->port_ok & (u32 )(~ (1 << portnum));
    rio_set_port_lockout(rdev, (u32 )portnum, 1);
    rio_write_config_32(rdev, (rdev->phys_efptr + (u32 )(portnum * 32)) + 72U, 2147483648U);
    descriptor___4.modname = "rapidio";
    descriptor___4.function = "rio_inb_pwrite_handler";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___4.format = "RIO_PW: Device Extraction on [%s]-P%d\n";
    descriptor___4.lineno = 986U;
    descriptor___4.flags = 1U;
    tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = rio_name(rdev);
      __dynamic_pr_debug(& descriptor___4, "RIO_PW: Device Extraction on [%s]-P%d\n",
                         tmp___11, portnum);
    } else {
    }
  } else {
  }
  rio_read_config_32(rdev, rdev->em_efptr + (u32 )((portnum + 1) * 64), & em_perrdet);
  if (em_perrdet != 0U) {
    descriptor___5.modname = "rapidio";
    descriptor___5.function = "rio_inb_pwrite_handler";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___5.format = "RIO_PW: RIO_EM_P%d_ERR_DETECT=0x%08x\n";
    descriptor___5.lineno = 994U;
    descriptor___5.flags = 1U;
    tmp___13 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "RIO_PW: RIO_EM_P%d_ERR_DETECT=0x%08x\n",
                         portnum, em_perrdet);
    } else {
    }
    rio_write_config_32(rdev, rdev->em_efptr + (u32 )((portnum + 1) * 64), 0U);
  } else {
  }
  rio_read_config_32(rdev, rdev->em_efptr + 8U, & em_ltlerrdet);
  if (em_ltlerrdet != 0U) {
    descriptor___6.modname = "rapidio";
    descriptor___6.function = "rio_inb_pwrite_handler";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor___6.format = "RIO_PW: RIO_EM_LTL_ERR_DETECT=0x%08x\n";
    descriptor___6.lineno = 1004U;
    descriptor___6.flags = 1U;
    tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      __dynamic_pr_debug(& descriptor___6, "RIO_PW: RIO_EM_LTL_ERR_DETECT=0x%08x\n",
                         em_ltlerrdet);
    } else {
    }
    rio_write_config_32(rdev, rdev->em_efptr + 8U, 0U);
  } else {
  }
  rio_write_config_32(rdev, (rdev->phys_efptr + (u32 )(portnum * 32)) + 88U, err_status);
  return (0);
}
}
static char const __kstrtab_rio_inb_pwrite_handler[23U] =
  { 'r', 'i', 'o', '_',
        'i', 'n', 'b', '_',
        'p', 'w', 'r', 'i',
        't', 'e', '_', 'h',
        'a', 'n', 'd', 'l',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_rio_inb_pwrite_handler ;
struct kernel_symbol const __ksymtab_rio_inb_pwrite_handler = {(unsigned long )(& rio_inb_pwrite_handler), (char const *)(& __kstrtab_rio_inb_pwrite_handler)};
u32 rio_mport_get_efb(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                      u32 from )
{
  u32 reg_val ;
  {
  if (from == 0U) {
    if (local != 0) {
      rio_local_read_config_32(port, 12U, & reg_val);
    } else {
      rio_mport_read_config_32(port, (int )destid, (int )hopcount, 12U, & reg_val);
    }
    return (reg_val & 65535U);
  } else {
    if (local != 0) {
      rio_local_read_config_32(port, from, & reg_val);
    } else {
      rio_mport_read_config_32(port, (int )destid, (int )hopcount, from, & reg_val);
    }
    return (reg_val & 65535U);
  }
}
}
static char const __kstrtab_rio_mport_get_efb[18U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'g', 'e',
        't', '_', 'e', 'f',
        'b', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_get_efb ;
struct kernel_symbol const __ksymtab_rio_mport_get_efb = {(unsigned long )(& rio_mport_get_efb), (char const *)(& __kstrtab_rio_mport_get_efb)};
u32 rio_mport_get_feature(struct rio_mport *port , int local , u16 destid , u8 hopcount ,
                          int ftr )
{
  u32 asm_info ;
  u32 ext_ftr_ptr ;
  u32 ftr_header ;
  {
  if (local != 0) {
    rio_local_read_config_32(port, 12U, & asm_info);
  } else {
    rio_mport_read_config_32(port, (int )destid, (int )hopcount, 12U, & asm_info);
  }
  ext_ftr_ptr = asm_info & 65535U;
  goto ldv_28070;
  ldv_28069: ;
  if (local != 0) {
    rio_local_read_config_32(port, ext_ftr_ptr, & ftr_header);
  } else {
    rio_mport_read_config_32(port, (int )destid, (int )hopcount, ext_ftr_ptr, & ftr_header);
  }
  if ((ftr_header & 65535U) == (u32 )ftr) {
    return (ext_ftr_ptr);
  } else {
  }
  ext_ftr_ptr = ftr_header >> 16;
  if (ext_ftr_ptr == 0U) {
    goto ldv_28068;
  } else {
  }
  ldv_28070: ;
  if (ext_ftr_ptr != 0U) {
    goto ldv_28069;
  } else {
  }
  ldv_28068: ;
  return (0U);
}
}
static char const __kstrtab_rio_mport_get_feature[22U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'g', 'e',
        't', '_', 'f', 'e',
        'a', 't', 'u', 'r',
        'e', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_get_feature ;
struct kernel_symbol const __ksymtab_rio_mport_get_feature = {(unsigned long )(& rio_mport_get_feature), (char const *)(& __kstrtab_rio_mport_get_feature)};
struct rio_dev *rio_get_asm(u16 vid , u16 did , u16 asm_vid , u16 asm_did , struct rio_dev *from )
{
  struct list_head *n ;
  struct rio_dev *rdev ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  {
  tmp = preempt_count();
  __ret_warn_on = ((unsigned long )tmp & 2096896UL) != 0UL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c",
                       1133);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  spin_lock(& rio_global_list_lock);
  n = (unsigned long )from != (unsigned long )((struct rio_dev *)0) ? from->global_list.next : rio_devices.next;
  goto ldv_28097;
  ldv_28096:
  __mptr = (struct list_head const *)n;
  rdev = (struct rio_dev *)__mptr;
  if (((((unsigned int )vid == 65535U || (int )rdev->vid == (int )vid) && ((unsigned int )did == 65535U || (int )rdev->did == (int )did)) && ((unsigned int )asm_vid == 65535U || (int )rdev->asm_vid == (int )asm_vid)) && ((unsigned int )asm_did == 65535U || (int )rdev->asm_did == (int )asm_did)) {
    goto exit;
  } else {
  }
  n = n->next;
  ldv_28097: ;
  if ((unsigned long )n != (unsigned long )((struct list_head *)0) && (unsigned long )n != (unsigned long )(& rio_devices)) {
    goto ldv_28096;
  } else {
  }
  rdev = (struct rio_dev *)0;
  exit:
  rio_dev_put(from);
  rdev = rio_dev_get(rdev);
  spin_unlock(& rio_global_list_lock);
  return (rdev);
}
}
struct rio_dev *rio_get_device(u16 vid , u16 did , struct rio_dev *from )
{
  struct rio_dev *tmp ;
  {
  tmp = rio_get_asm((int )vid, (int )did, 65535, 65535, from);
  return (tmp);
}
}
static int rio_std_route_add_entry(struct rio_mport *mport , u16 destid , u8 hopcount ,
                                   u16 table , u16 route_destid , u8 route_port )
{
  {
  if ((unsigned int )table == 255U) {
    rio_mport_write_config_32(mport, (int )destid, (int )hopcount, 112U, (unsigned int )route_destid);
    rio_mport_write_config_32(mport, (int )destid, (int )hopcount, 116U, (unsigned int )route_port);
  } else {
  }
  __const_udelay(42950UL);
  return (0);
}
}
static int rio_std_route_get_entry(struct rio_mport *mport , u16 destid , u8 hopcount ,
                                   u16 table , u16 route_destid , u8 *route_port )
{
  u32 result ;
  {
  if ((unsigned int )table == 255U) {
    rio_mport_write_config_32(mport, (int )destid, (int )hopcount, 112U, (u32 )route_destid);
    rio_mport_read_config_32(mport, (int )destid, (int )hopcount, 116U, & result);
    *route_port = (unsigned char )result;
  } else {
  }
  return (0);
}
}
static int rio_std_route_clr_table(struct rio_mport *mport , u16 destid , u8 hopcount ,
                                   u16 table )
{
  u32 max_destid ;
  u32 i ;
  u32 pef ;
  u32 id_inc ;
  u32 ext_cfg ;
  u32 port_sel ;
  {
  max_destid = 255U;
  id_inc = 1U;
  ext_cfg = 0U;
  port_sel = 255U;
  if ((unsigned int )table == 255U) {
    rio_mport_read_config_32(mport, (int )destid, (int )hopcount, 16U, & pef);
    if (mport->sys_size != 0U) {
      rio_mport_read_config_32(mport, (int )destid, (int )hopcount, 52U, & max_destid);
      max_destid = max_destid & 65535U;
    } else {
    }
    if ((pef & 512U) != 0U) {
      ext_cfg = 2147483648U;
      id_inc = 4U;
      port_sel = 4294967295U;
    } else {
    }
    i = 0U;
    goto ldv_28134;
    ldv_28133:
    rio_mport_write_config_32(mport, (int )destid, (int )hopcount, 112U, ext_cfg | i);
    rio_mport_write_config_32(mport, (int )destid, (int )hopcount, 116U, port_sel);
    i = i + id_inc;
    ldv_28134: ;
    if (i <= max_destid) {
      goto ldv_28133;
    } else {
    }
  } else {
  }
  __const_udelay(42950UL);
  return (0);
}
}
int rio_lock_device(struct rio_mport *port , u16 destid , u8 hopcount , int wait_ms )
{
  u32 result ;
  int tcnt ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  tcnt = 0;
  rio_mport_write_config_32(port, (int )destid, (int )hopcount, 104U, (u32 )port->host_deviceid);
  rio_mport_read_config_32(port, (int )destid, (int )hopcount, 104U, & result);
  goto ldv_28151;
  ldv_28150: ;
  if (wait_ms != 0 && tcnt == wait_ms) {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_lock_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO: timeout when locking device %x:%x\n";
    descriptor.lineno = 1305U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "RIO: timeout when locking device %x:%x\n",
                         (int )destid, (int )hopcount);
    } else {
    }
    return (-22);
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_28148;
    ldv_28147:
    __const_udelay(4295000UL);
    ldv_28148:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_28147;
    } else {
    }
  }
  tcnt = tcnt + 1;
  rio_mport_write_config_32(port, (int )destid, (int )hopcount, 104U, (u32 )port->host_deviceid);
  rio_mport_read_config_32(port, (int )destid, (int )hopcount, 104U, & result);
  ldv_28151: ;
  if ((u32 )port->host_deviceid != result) {
    goto ldv_28150;
  } else {
  }
  return (0);
}
}
static char const __kstrtab_rio_lock_device[16U] =
  { 'r', 'i', 'o', '_',
        'l', 'o', 'c', 'k',
        '_', 'd', 'e', 'v',
        'i', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_lock_device ;
struct kernel_symbol const __ksymtab_rio_lock_device = {(unsigned long )(& rio_lock_device), (char const *)(& __kstrtab_rio_lock_device)};
int rio_unlock_device(struct rio_mport *port , u16 destid , u8 hopcount )
{
  u32 result ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  rio_mport_write_config_32(port, (int )destid, (int )hopcount, 104U, (u32 )port->host_deviceid);
  rio_mport_read_config_32(port, (int )destid, (int )hopcount, 104U, & result);
  if ((result & 65535U) != 65535U) {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_unlock_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO: badness when releasing device lock %x:%x\n";
    descriptor.lineno = 1347U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "RIO: badness when releasing device lock %x:%x\n",
                         (int )destid, (int )hopcount);
    } else {
    }
    return (-22);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_rio_unlock_device[18U] =
  { 'r', 'i', 'o', '_',
        'u', 'n', 'l', 'o',
        'c', 'k', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_rio_unlock_device ;
struct kernel_symbol const __ksymtab_rio_unlock_device = {(unsigned long )(& rio_unlock_device), (char const *)(& __kstrtab_rio_unlock_device)};
int rio_route_add_entry(struct rio_dev *rdev , u16 table , u16 route_destid , u8 route_port ,
                        int lock )
{
  int rc ;
  struct rio_switch_ops *ops ;
  bool tmp ;
  {
  rc = -22;
  ops = ((struct rio_switch *)(& rdev->rswitch))->ops;
  if (lock != 0) {
    rc = rio_lock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                         1000);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  spin_lock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if ((unsigned long )ops == (unsigned long )((struct rio_switch_ops *)0) || (unsigned long )ops->add_entry == (unsigned long )((int (*)(struct rio_mport * ,
                                                                                                                                         u16 ,
                                                                                                                                         u8 ,
                                                                                                                                         u16 ,
                                                                                                                                         u16 ,
                                                                                                                                         u8 ))0)) {
    rc = rio_std_route_add_entry((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 (int )table, (int )route_destid, (int )route_port);
  } else {
    tmp = ldv_try_module_get_10(ops->owner);
    if ((int )tmp) {
      rc = (*(ops->add_entry))((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                               (int )table, (int )route_destid, (int )route_port);
      ldv_module_put_11(ops->owner);
    } else {
    }
  }
  spin_unlock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if (lock != 0) {
    rio_unlock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount);
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_rio_route_add_entry[20U] =
  { 'r', 'i', 'o', '_',
        'r', 'o', 'u', 't',
        'e', '_', 'a', 'd',
        'd', '_', 'e', 'n',
        't', 'r', 'y', '\000'};
struct kernel_symbol const __ksymtab_rio_route_add_entry ;
struct kernel_symbol const __ksymtab_rio_route_add_entry = {(unsigned long )(& rio_route_add_entry), (char const *)(& __kstrtab_rio_route_add_entry)};
int rio_route_get_entry(struct rio_dev *rdev , u16 table , u16 route_destid , u8 *route_port ,
                        int lock )
{
  int rc ;
  struct rio_switch_ops *ops ;
  bool tmp ;
  {
  rc = -22;
  ops = ((struct rio_switch *)(& rdev->rswitch))->ops;
  if (lock != 0) {
    rc = rio_lock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                         1000);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  spin_lock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if ((unsigned long )ops == (unsigned long )((struct rio_switch_ops *)0) || (unsigned long )ops->get_entry == (unsigned long )((int (*)(struct rio_mport * ,
                                                                                                                                         u16 ,
                                                                                                                                         u8 ,
                                                                                                                                         u16 ,
                                                                                                                                         u16 ,
                                                                                                                                         u8 * ))0)) {
    rc = rio_std_route_get_entry((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 (int )table, (int )route_destid, route_port);
  } else {
    tmp = ldv_try_module_get_12(ops->owner);
    if ((int )tmp) {
      rc = (*(ops->get_entry))((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                               (int )table, (int )route_destid, route_port);
      ldv_module_put_13(ops->owner);
    } else {
    }
  }
  spin_unlock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if (lock != 0) {
    rio_unlock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount);
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_rio_route_get_entry[20U] =
  { 'r', 'i', 'o', '_',
        'r', 'o', 'u', 't',
        'e', '_', 'g', 'e',
        't', '_', 'e', 'n',
        't', 'r', 'y', '\000'};
struct kernel_symbol const __ksymtab_rio_route_get_entry ;
struct kernel_symbol const __ksymtab_rio_route_get_entry = {(unsigned long )(& rio_route_get_entry), (char const *)(& __kstrtab_rio_route_get_entry)};
int rio_route_clr_table(struct rio_dev *rdev , u16 table , int lock )
{
  int rc ;
  struct rio_switch_ops *ops ;
  bool tmp ;
  {
  rc = -22;
  ops = ((struct rio_switch *)(& rdev->rswitch))->ops;
  if (lock != 0) {
    rc = rio_lock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                         1000);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  spin_lock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if ((unsigned long )ops == (unsigned long )((struct rio_switch_ops *)0) || (unsigned long )ops->clr_table == (unsigned long )((int (*)(struct rio_mport * ,
                                                                                                                                         u16 ,
                                                                                                                                         u8 ,
                                                                                                                                         u16 ))0)) {
    rc = rio_std_route_clr_table((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 (int )table);
  } else {
    tmp = ldv_try_module_get_14(ops->owner);
    if ((int )tmp) {
      rc = (*(ops->clr_table))((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                               (int )table);
      ldv_module_put_15(ops->owner);
    } else {
    }
  }
  spin_unlock(& ((struct rio_switch *)(& rdev->rswitch))->lock);
  if (lock != 0) {
    rio_unlock_device((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount);
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_rio_route_clr_table[20U] =
  { 'r', 'i', 'o', '_',
        'r', 'o', 'u', 't',
        'e', '_', 'c', 'l',
        'r', '_', 't', 'a',
        'b', 'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_route_clr_table ;
struct kernel_symbol const __ksymtab_rio_route_clr_table = {(unsigned long )(& rio_route_clr_table), (char const *)(& __kstrtab_rio_route_clr_table)};
static bool rio_chan_filter(struct dma_chan *chan , void *arg )
{
  struct rio_mport *mport ;
  struct dma_device const *__mptr ;
  {
  mport = (struct rio_mport *)arg;
  __mptr = (struct dma_device const *)chan->device;
  return ((unsigned long )((struct rio_mport *)__mptr + 0xfffffffffffff5c0UL) == (unsigned long )mport);
}
}
struct dma_chan *rio_request_mport_dma(struct rio_mport *mport )
{
  dma_cap_mask_t mask ;
  struct dma_chan *tmp ;
  {
  __dma_cap_zero(& mask);
  __dma_cap_set(10, & mask);
  tmp = __dma_request_channel((dma_cap_mask_t const *)(& mask), & rio_chan_filter,
                              (void *)mport);
  return (tmp);
}
}
static char const __kstrtab_rio_request_mport_dma[22U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'd', 'm',
        'a', '\000'};
struct kernel_symbol const __ksymtab_rio_request_mport_dma ;
struct kernel_symbol const __ksymtab_rio_request_mport_dma = {(unsigned long )(& rio_request_mport_dma), (char const *)(& __kstrtab_rio_request_mport_dma)};
struct dma_chan *rio_request_dma(struct rio_dev *rdev )
{
  struct dma_chan *tmp ;
  {
  tmp = rio_request_mport_dma((rdev->net)->hport);
  return (tmp);
}
}
static char const __kstrtab_rio_request_dma[16U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'd', 'm', 'a', '\000'};
struct kernel_symbol const __ksymtab_rio_request_dma ;
struct kernel_symbol const __ksymtab_rio_request_dma = {(unsigned long )(& rio_request_dma), (char const *)(& __kstrtab_rio_request_dma)};
void rio_release_dma(struct dma_chan *dchan )
{
  {
  dma_release_channel(dchan);
  return;
}
}
static char const __kstrtab_rio_release_dma[16U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'd', 'm', 'a', '\000'};
struct kernel_symbol const __ksymtab_rio_release_dma ;
struct kernel_symbol const __ksymtab_rio_release_dma = {(unsigned long )(& rio_release_dma), (char const *)(& __kstrtab_rio_release_dma)};
struct dma_async_tx_descriptor *rio_dma_prep_xfer(struct dma_chan *dchan , u16 destid ,
                                                  struct rio_dma_data *data , enum dma_transfer_direction direction ,
                                                  unsigned long flags )
{
  struct rio_dma_ext rio_ext ;
  struct dma_async_tx_descriptor *tmp ;
  {
  if ((unsigned long )(dchan->device)->device_prep_slave_sg == (unsigned long )((struct dma_async_tx_descriptor *(*)(struct dma_chan * ,
                                                                                                                     struct scatterlist * ,
                                                                                                                     unsigned int ,
                                                                                                                     enum dma_transfer_direction ,
                                                                                                                     unsigned long ,
                                                                                                                     void * ))0)) {
    printk("\v%s: prep_rio_sg == NULL\n", "rio_dma_prep_xfer");
    return ((struct dma_async_tx_descriptor *)0);
  } else {
  }
  rio_ext.destid = destid;
  rio_ext.rio_addr_u = data->rio_addr_u;
  rio_ext.rio_addr = data->rio_addr;
  rio_ext.wr_type = data->wr_type;
  tmp = dmaengine_prep_rio_sg(dchan, data->sg, data->sg_len, direction, flags, & rio_ext);
  return (tmp);
}
}
static char const __kstrtab_rio_dma_prep_xfer[18U] =
  { 'r', 'i', 'o', '_',
        'd', 'm', 'a', '_',
        'p', 'r', 'e', 'p',
        '_', 'x', 'f', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_rio_dma_prep_xfer ;
struct kernel_symbol const __ksymtab_rio_dma_prep_xfer = {(unsigned long )(& rio_dma_prep_xfer), (char const *)(& __kstrtab_rio_dma_prep_xfer)};
struct dma_async_tx_descriptor *rio_dma_prep_slave_sg(struct rio_dev *rdev , struct dma_chan *dchan ,
                                                      struct rio_dma_data *data ,
                                                      enum dma_transfer_direction direction ,
                                                      unsigned long flags )
{
  struct dma_async_tx_descriptor *tmp ;
  {
  tmp = rio_dma_prep_xfer(dchan, (int )rdev->destid, data, direction, flags);
  return (tmp);
}
}
static char const __kstrtab_rio_dma_prep_slave_sg[22U] =
  { 'r', 'i', 'o', '_',
        'd', 'm', 'a', '_',
        'p', 'r', 'e', 'p',
        '_', 's', 'l', 'a',
        'v', 'e', '_', 's',
        'g', '\000'};
struct kernel_symbol const __ksymtab_rio_dma_prep_slave_sg ;
struct kernel_symbol const __ksymtab_rio_dma_prep_slave_sg = {(unsigned long )(& rio_dma_prep_slave_sg), (char const *)(& __kstrtab_rio_dma_prep_slave_sg)};
struct rio_mport *rio_find_mport(int mport_id )
{
  struct rio_mport *port ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_28322;
  ldv_28321: ;
  if ((int )port->id == mport_id) {
    goto found;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_28322: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28321;
  } else {
  }
  port = (struct rio_mport *)0;
  found:
  mutex_unlock(& rio_mport_list_lock);
  return (port);
}
}
int rio_register_scan(int mport_id , struct rio_scan *scan_ops )
{
  struct rio_mport *port ;
  struct rio_scan_node *scan ;
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  rc = 0;
  descriptor.modname = "rapidio";
  descriptor.function = "rio_register_scan";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor.format = "RIO: %s for mport_id=%d\n";
  descriptor.lineno = 1660U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "RIO: %s for mport_id=%d\n", "rio_register_scan",
                       mport_id);
  } else {
  }
  if ((mport_id != -1 && mport_id > 7) || (unsigned long )scan_ops == (unsigned long )((struct rio_scan *)0)) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr = (struct list_head const *)rio_scans.next;
  scan = (struct rio_scan_node *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_28339;
  ldv_28338: ;
  if (scan->mport_id == mport_id) {
    rc = -16;
    goto err_out;
  } else {
  }
  __mptr___0 = (struct list_head const *)scan->node.next;
  scan = (struct rio_scan_node *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_28339: ;
  if ((unsigned long )(& scan->node) != (unsigned long )(& rio_scans)) {
    goto ldv_28338;
  } else {
  }
  tmp___0 = kzalloc(32UL, 208U);
  scan = (struct rio_scan_node *)tmp___0;
  if ((unsigned long )scan == (unsigned long )((struct rio_scan_node *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  scan->mport_id = mport_id;
  scan->ops = scan_ops;
  __mptr___1 = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_28347;
  ldv_28346: ;
  if ((int )port->id == mport_id) {
    port->nscan = scan_ops;
    goto ldv_28345;
  } else
  if (mport_id == -1 && (unsigned long )port->nscan == (unsigned long )((struct rio_scan *)0)) {
    port->nscan = scan_ops;
  } else {
  }
  __mptr___2 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_28347: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28346;
  } else {
  }
  ldv_28345:
  list_add_tail(& scan->node, & rio_scans);
  err_out:
  mutex_unlock(& rio_mport_list_lock);
  return (rc);
}
}
static char const __kstrtab_rio_register_scan[18U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 's', 'c', 'a',
        'n', '\000'};
struct kernel_symbol const __ksymtab_rio_register_scan ;
struct kernel_symbol const __ksymtab_rio_register_scan = {(unsigned long )(& rio_register_scan), (char const *)(& __kstrtab_rio_register_scan)};
int rio_unregister_scan(int mport_id , struct rio_scan *scan_ops )
{
  struct rio_mport *port ;
  struct rio_scan_node *scan ;
  struct _ddebug descriptor ;
  long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  descriptor.modname = "rapidio";
  descriptor.function = "rio_unregister_scan";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor.format = "RIO: %s for mport_id=%d\n";
  descriptor.lineno = 1734U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "RIO: %s for mport_id=%d\n", "rio_unregister_scan",
                       mport_id);
  } else {
  }
  if (mport_id != -1 && mport_id > 7) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_28369;
  ldv_28368: ;
  if ((int )port->id == mport_id || (mport_id == -1 && (unsigned long )port->nscan == (unsigned long )scan_ops)) {
    port->nscan = (struct rio_scan *)0;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_28369: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28368;
  } else {
  }
  __mptr___1 = (struct list_head const *)rio_scans.next;
  scan = (struct rio_scan_node *)__mptr___1 + 0xfffffffffffffff8UL;
  goto ldv_28377;
  ldv_28376: ;
  if (scan->mport_id == mport_id) {
    list_del(& scan->node);
    kfree((void const *)scan);
    goto ldv_28375;
  } else {
  }
  __mptr___2 = (struct list_head const *)scan->node.next;
  scan = (struct rio_scan_node *)__mptr___2 + 0xfffffffffffffff8UL;
  ldv_28377: ;
  if ((unsigned long )(& scan->node) != (unsigned long )(& rio_scans)) {
    goto ldv_28376;
  } else {
  }
  ldv_28375:
  mutex_unlock(& rio_mport_list_lock);
  return (0);
}
}
static char const __kstrtab_rio_unregister_scan[20U] =
  { 'r', 'i', 'o', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 's',
        'c', 'a', 'n', '\000'};
struct kernel_symbol const __ksymtab_rio_unregister_scan ;
struct kernel_symbol const __ksymtab_rio_unregister_scan = {(unsigned long )(& rio_unregister_scan), (char const *)(& __kstrtab_rio_unregister_scan)};
int rio_mport_scan(int mport_id )
{
  struct rio_mport *port ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  bool tmp ;
  int tmp___0 ;
  {
  port = (struct rio_mport *)0;
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_28397;
  ldv_28396: ;
  if ((int )port->id == mport_id) {
    goto found;
  } else {
  }
  __mptr___0 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_28397: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28396;
  } else {
  }
  mutex_unlock(& rio_mport_list_lock);
  return (-19);
  found: ;
  if ((unsigned long )port->nscan == (unsigned long )((struct rio_scan *)0)) {
    mutex_unlock(& rio_mport_list_lock);
    return (-22);
  } else {
  }
  tmp = ldv_try_module_get_16((port->nscan)->owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    mutex_unlock(& rio_mport_list_lock);
    return (-19);
  } else {
  }
  mutex_unlock(& rio_mport_list_lock);
  if (port->host_deviceid >= 0) {
    rc = (*((port->nscan)->enumerate))(port, 0U);
  } else {
    rc = (*((port->nscan)->discover))(port, 1U);
  }
  ldv_module_put_17((port->nscan)->owner);
  return (rc);
}
}
static void rio_fixup_device(struct rio_dev *dev )
{
  {
  return;
}
}
static int rio_init(void)
{
  struct rio_dev *dev ;
  {
  dev = (struct rio_dev *)0;
  goto ldv_28407;
  ldv_28406:
  rio_fixup_device(dev);
  ldv_28407:
  dev = rio_get_device(65535, 65535, dev);
  if ((unsigned long )dev != (unsigned long )((struct rio_dev *)0)) {
    goto ldv_28406;
  } else {
  }
  return (0);
}
}
static struct workqueue_struct *rio_wq ;
static void disc_work_handler(struct work_struct *_work )
{
  struct rio_disc_work *work ;
  struct work_struct const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  {
  __mptr = (struct work_struct const *)_work;
  work = (struct rio_disc_work *)__mptr;
  descriptor.modname = "rapidio";
  descriptor.function = "disc_work_handler";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor.format = "RIO: discovery work for mport %d %s\n";
  descriptor.lineno = 1825U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "RIO: discovery work for mport %d %s\n", (int )(work->mport)->id,
                       (unsigned char *)(& (work->mport)->name));
  } else {
  }
  tmp___0 = ldv_try_module_get_18(((work->mport)->nscan)->owner);
  if ((int )tmp___0) {
    (*(((work->mport)->nscan)->discover))(work->mport, 0U);
    ldv_module_put_19(((work->mport)->nscan)->owner);
  } else {
  }
  return;
}
}
int rio_init_mports(void)
{
  struct rio_mport *port ;
  struct rio_disc_work *work ;
  int n ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  void *tmp___1 ;
  struct list_head const *__mptr___1 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct list_head const *__mptr___2 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  n = 0;
  if ((unsigned int )next_portid == 0U) {
    return (-19);
  } else {
  }
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_28432;
  ldv_28431: ;
  if (port->host_deviceid >= 0) {
    if ((unsigned long )port->nscan != (unsigned long )((struct rio_scan *)0)) {
      tmp = ldv_try_module_get_20((port->nscan)->owner);
      if ((int )tmp) {
        (*((port->nscan)->enumerate))(port, 0U);
        ldv_module_put_21((port->nscan)->owner);
      } else {
      }
    } else {
    }
  } else {
    n = n + 1;
  }
  __mptr___0 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_28432: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28431;
  } else {
  }
  mutex_unlock(& rio_mport_list_lock);
  if (n == 0) {
    goto no_disc;
  } else {
  }
  __lock_name = "\"riodisc\"";
  tmp___0 = __alloc_workqueue_key("riodisc", 0U, 0, & __key, __lock_name);
  rio_wq = tmp___0;
  if ((unsigned long )rio_wq == (unsigned long )((struct workqueue_struct *)0)) {
    printk("\vRIO: unable allocate rio_wq\n");
    goto no_disc;
  } else {
  }
  tmp___1 = kcalloc((size_t )n, 88UL, 208U);
  work = (struct rio_disc_work *)tmp___1;
  if ((unsigned long )work == (unsigned long )((struct rio_disc_work *)0)) {
    printk("\vRIO: no memory for work struct\n");
    ldv_destroy_workqueue_22(rio_wq);
    goto no_disc;
  } else {
  }
  n = 0;
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  __mptr___1 = (struct list_head const *)rio_mports.next;
  port = (struct rio_mport *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_28445;
  ldv_28444: ;
  if (port->host_deviceid < 0 && (unsigned long )port->nscan != (unsigned long )((struct rio_scan *)0)) {
    (work + (unsigned long )n)->mport = port;
    __init_work(& (work + (unsigned long )n)->work, 0);
    __constr_expr_0.counter = 137438953408L;
    (work + (unsigned long )n)->work.data = __constr_expr_0;
    lockdep_init_map(& (work + (unsigned long )n)->work.lockdep_map, "(&work[n].work)",
                     & __key___0, 0);
    INIT_LIST_HEAD(& (work + (unsigned long )n)->work.entry);
    (work + (unsigned long )n)->work.func = & disc_work_handler;
    queue_work(rio_wq, & (work + (unsigned long )n)->work);
    n = n + 1;
  } else {
  }
  __mptr___2 = (struct list_head const *)port->node.next;
  port = (struct rio_mport *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_28445: ;
  if ((unsigned long )(& port->node) != (unsigned long )(& rio_mports)) {
    goto ldv_28444;
  } else {
  }
  ldv_flush_workqueue_23(rio_wq);
  mutex_unlock(& rio_mport_list_lock);
  descriptor.modname = "rapidio";
  descriptor.function = "rio_init_mports";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor.format = "RIO: destroy discovery workqueue\n";
  descriptor.lineno = 1894U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "RIO: destroy discovery workqueue\n");
  } else {
  }
  ldv_destroy_workqueue_24(rio_wq);
  kfree((void const *)work);
  no_disc:
  rio_init();
  return (0);
}
}
static int rio_get_hdid(int index )
{
  {
  if ((ids_num == 0 || ids_num <= index) || index > 7) {
    return (-1);
  } else {
  }
  return (hdid[index]);
}
}
int rio_register_mport(struct rio_mport *port )
{
  struct rio_scan_node *scan ;
  int res ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  scan = (struct rio_scan_node *)0;
  res = 0;
  if ((unsigned int )next_portid > 7U) {
    printk("\vRIO: reached specified max number of mports\n");
    return (1);
  } else {
  }
  tmp = next_portid;
  next_portid = (unsigned char )((int )next_portid + 1);
  port->id = tmp;
  port->host_deviceid = rio_get_hdid((int )port->id);
  port->nscan = (struct rio_scan *)0;
  dev_set_name(& port->dev, "rapidio%d", (int )port->id);
  port->dev.class = & rio_mport_class;
  res = device_register(& port->dev);
  if (res != 0) {
    dev_err((struct device const *)(& port->dev), "RIO: mport%d registration failed ERR=%d\n",
            (int )port->id, res);
  } else {
    descriptor.modname = "rapidio";
    descriptor.function = "rio_register_mport";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
    descriptor.format = "RIO: mport%d registered\n";
    descriptor.lineno = 1934U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& port->dev), "RIO: mport%d registered\n",
                        (int )port->id);
    } else {
    }
  }
  mutex_lock_nested(& rio_mport_list_lock, 0U);
  list_add_tail(& port->node, & rio_mports);
  __mptr = (struct list_head const *)rio_scans.next;
  scan = (struct rio_scan_node *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_28465;
  ldv_28464: ;
  if ((int )port->id == scan->mport_id || scan->mport_id == -1) {
    port->nscan = scan->ops;
    if ((int )port->id == scan->mport_id) {
      goto ldv_28463;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)scan->node.next;
  scan = (struct rio_scan_node *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_28465: ;
  if ((unsigned long )(& scan->node) != (unsigned long )(& rio_scans)) {
    goto ldv_28464;
  } else {
  }
  ldv_28463:
  mutex_unlock(& rio_mport_list_lock);
  descriptor___0.modname = "rapidio";
  descriptor___0.function = "rio_register_mport";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/453/dscv_tempdir/dscv/ri/08_1a/drivers/rapidio/rio.c";
  descriptor___0.format = "RIO: %s %s id=%d\n";
  descriptor___0.lineno = 1953U;
  descriptor___0.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "RIO: %s %s id=%d\n", "rio_register_mport",
                       (unsigned char *)(& port->name), (int )port->id);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_rio_register_mport[19U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'm', 'p', 'o',
        'r', 't', '\000'};
struct kernel_symbol const __ksymtab_rio_register_mport ;
struct kernel_symbol const __ksymtab_rio_register_mport = {(unsigned long )(& rio_register_mport), (char const *)(& __kstrtab_rio_register_mport)};
static char const __kstrtab_rio_local_get_device_id[24U] =
  { 'r', 'i', 'o', '_',
        'l', 'o', 'c', 'a',
        'l', '_', 'g', 'e',
        't', '_', 'd', 'e',
        'v', 'i', 'c', 'e',
        '_', 'i', 'd', '\000'};
struct kernel_symbol const __ksymtab_rio_local_get_device_id ;
struct kernel_symbol const __ksymtab_rio_local_get_device_id = {(unsigned long )(& rio_local_get_device_id), (char const *)(& __kstrtab_rio_local_get_device_id)};
static char const __kstrtab_rio_get_device[15U] =
  { 'r', 'i', 'o', '_',
        'g', 'e', 't', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_rio_get_device ;
struct kernel_symbol const __ksymtab_rio_get_device = {(unsigned long )(& rio_get_device), (char const *)(& __kstrtab_rio_get_device)};
static char const __kstrtab_rio_get_asm[12U] =
  { 'r', 'i', 'o', '_',
        'g', 'e', 't', '_',
        'a', 's', 'm', '\000'};
struct kernel_symbol const __ksymtab_rio_get_asm ;
struct kernel_symbol const __ksymtab_rio_get_asm = {(unsigned long )(& rio_get_asm), (char const *)(& __kstrtab_rio_get_asm)};
static char const __kstrtab_rio_request_inb_dbell[22U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'i', 'n', 'b', '_',
        'd', 'b', 'e', 'l',
        'l', '\000'};
struct kernel_symbol const __ksymtab_rio_request_inb_dbell ;
struct kernel_symbol const __ksymtab_rio_request_inb_dbell = {(unsigned long )(& rio_request_inb_dbell), (char const *)(& __kstrtab_rio_request_inb_dbell)};
static char const __kstrtab_rio_release_inb_dbell[22U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'i', 'n', 'b', '_',
        'd', 'b', 'e', 'l',
        'l', '\000'};
struct kernel_symbol const __ksymtab_rio_release_inb_dbell ;
struct kernel_symbol const __ksymtab_rio_release_inb_dbell = {(unsigned long )(& rio_release_inb_dbell), (char const *)(& __kstrtab_rio_release_inb_dbell)};
static char const __kstrtab_rio_request_outb_dbell[23U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'o', 'u', 't', 'b',
        '_', 'd', 'b', 'e',
        'l', 'l', '\000'};
struct kernel_symbol const __ksymtab_rio_request_outb_dbell ;
struct kernel_symbol const __ksymtab_rio_request_outb_dbell = {(unsigned long )(& rio_request_outb_dbell), (char const *)(& __kstrtab_rio_request_outb_dbell)};
static char const __kstrtab_rio_release_outb_dbell[23U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'o', 'u', 't', 'b',
        '_', 'd', 'b', 'e',
        'l', 'l', '\000'};
struct kernel_symbol const __ksymtab_rio_release_outb_dbell ;
struct kernel_symbol const __ksymtab_rio_release_outb_dbell = {(unsigned long )(& rio_release_outb_dbell), (char const *)(& __kstrtab_rio_release_outb_dbell)};
static char const __kstrtab_rio_request_inb_mbox[21U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'i', 'n', 'b', '_',
        'm', 'b', 'o', 'x',
        '\000'};
struct kernel_symbol const __ksymtab_rio_request_inb_mbox ;
struct kernel_symbol const __ksymtab_rio_request_inb_mbox = {(unsigned long )(& rio_request_inb_mbox), (char const *)(& __kstrtab_rio_request_inb_mbox)};
static char const __kstrtab_rio_release_inb_mbox[21U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'i', 'n', 'b', '_',
        'm', 'b', 'o', 'x',
        '\000'};
struct kernel_symbol const __ksymtab_rio_release_inb_mbox ;
struct kernel_symbol const __ksymtab_rio_release_inb_mbox = {(unsigned long )(& rio_release_inb_mbox), (char const *)(& __kstrtab_rio_release_inb_mbox)};
static char const __kstrtab_rio_request_outb_mbox[22U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'q', 'u',
        'e', 's', 't', '_',
        'o', 'u', 't', 'b',
        '_', 'm', 'b', 'o',
        'x', '\000'};
struct kernel_symbol const __ksymtab_rio_request_outb_mbox ;
struct kernel_symbol const __ksymtab_rio_request_outb_mbox = {(unsigned long )(& rio_request_outb_mbox), (char const *)(& __kstrtab_rio_request_outb_mbox)};
static char const __kstrtab_rio_release_outb_mbox[22U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '_',
        'o', 'u', 't', 'b',
        '_', 'm', 'b', 'o',
        'x', '\000'};
struct kernel_symbol const __ksymtab_rio_release_outb_mbox ;
struct kernel_symbol const __ksymtab_rio_release_outb_mbox = {(unsigned long )(& rio_release_outb_mbox), (char const *)(& __kstrtab_rio_release_outb_mbox)};
static char const __kstrtab_rio_init_mports[16U] =
  { 'r', 'i', 'o', '_',
        'i', 'n', 'i', 't',
        '_', 'm', 'p', 'o',
        'r', 't', 's', '\000'};
struct kernel_symbol const __ksymtab_rio_init_mports ;
struct kernel_symbol const __ksymtab_rio_init_mports = {(unsigned long )(& rio_init_mports), (char const *)(& __kstrtab_rio_init_mports)};
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    disc_work_handler(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    disc_work_handler(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    disc_work_handler(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    disc_work_handler(work);
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
    disc_work_handler(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_28602;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    disc_work_handler(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_28602;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    disc_work_handler(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_28602;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    disc_work_handler(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_28602;
  default:
  ldv_stop();
  }
  ldv_28602: ;
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
bool ldv_try_module_get_12(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_13(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_14(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_15(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_16(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_17(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_18(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_19(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_20(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_21(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_destroy_workqueue_22(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_flush_workqueue_23(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_24(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
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
static spinlock_t rio_config_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rio_config_lock",
                                                    0, 0UL}}}};
static spinlock_t rio_doorbell_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rio_doorbell_lock",
                                                    0, 0UL}}}};
int __rio_local_read_config_8(struct rio_mport *mport , u32 offset , u8 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcread))(mport, (int )mport->id, offset, 1, & data);
  *value = (unsigned char )data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int __rio_local_read_config_16(struct rio_mport *mport , u32 offset , u16 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  if ((int )offset & 1) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcread))(mport, (int )mport->id, offset, 2, & data);
  *value = (unsigned short )data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int __rio_local_read_config_32(struct rio_mport *mport , u32 offset , u32 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  if ((offset & 3U) != 0U) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcread))(mport, (int )mport->id, offset, 4, & data);
  *value = data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int __rio_local_write_config_8(struct rio_mport *mport , u32 offset , u8 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcwrite))(mport, (int )mport->id, offset, 1, (u32 )value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int __rio_local_write_config_16(struct rio_mport *mport , u32 offset , u16 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((int )offset & 1) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcwrite))(mport, (int )mport->id, offset, 2, (u32 )value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int __rio_local_write_config_32(struct rio_mport *mport , u32 offset , u32 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((offset & 3U) != 0U) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->lcwrite))(mport, (int )mport->id, offset, 4, value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
static char const __kstrtab___rio_local_read_config_8[26U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'c', 'o', 'n',
        'f', 'i', 'g', '_',
        '8', '\000'};
struct kernel_symbol const __ksymtab___rio_local_read_config_8 ;
struct kernel_symbol const __ksymtab___rio_local_read_config_8 = {(unsigned long )(& __rio_local_read_config_8), (char const *)(& __kstrtab___rio_local_read_config_8)};
static char const __kstrtab___rio_local_read_config_16[27U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'c', 'o', 'n',
        'f', 'i', 'g', '_',
        '1', '6', '\000'};
struct kernel_symbol const __ksymtab___rio_local_read_config_16 ;
struct kernel_symbol const __ksymtab___rio_local_read_config_16 = {(unsigned long )(& __rio_local_read_config_16), (char const *)(& __kstrtab___rio_local_read_config_16)};
static char const __kstrtab___rio_local_read_config_32[27U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'c', 'o', 'n',
        'f', 'i', 'g', '_',
        '3', '2', '\000'};
struct kernel_symbol const __ksymtab___rio_local_read_config_32 ;
struct kernel_symbol const __ksymtab___rio_local_read_config_32 = {(unsigned long )(& __rio_local_read_config_32), (char const *)(& __kstrtab___rio_local_read_config_32)};
static char const __kstrtab___rio_local_write_config_8[27U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'c', 'o',
        'n', 'f', 'i', 'g',
        '_', '8', '\000'};
struct kernel_symbol const __ksymtab___rio_local_write_config_8 ;
struct kernel_symbol const __ksymtab___rio_local_write_config_8 = {(unsigned long )(& __rio_local_write_config_8), (char const *)(& __kstrtab___rio_local_write_config_8)};
static char const __kstrtab___rio_local_write_config_16[28U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'c', 'o',
        'n', 'f', 'i', 'g',
        '_', '1', '6', '\000'};
struct kernel_symbol const __ksymtab___rio_local_write_config_16 ;
struct kernel_symbol const __ksymtab___rio_local_write_config_16 = {(unsigned long )(& __rio_local_write_config_16), (char const *)(& __kstrtab___rio_local_write_config_16)};
static char const __kstrtab___rio_local_write_config_32[28U] =
  { '_', '_', 'r', 'i',
        'o', '_', 'l', 'o',
        'c', 'a', 'l', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'c', 'o',
        'n', 'f', 'i', 'g',
        '_', '3', '2', '\000'};
struct kernel_symbol const __ksymtab___rio_local_write_config_32 ;
struct kernel_symbol const __ksymtab___rio_local_write_config_32 = {(unsigned long )(& __rio_local_write_config_32), (char const *)(& __kstrtab___rio_local_write_config_32)};
int rio_mport_read_config_8(struct rio_mport *mport , u16 destid , u8 hopcount , u32 offset ,
                            u8 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cread))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                 offset, 1, & data);
  *value = (unsigned char )data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int rio_mport_read_config_16(struct rio_mport *mport , u16 destid , u8 hopcount ,
                             u32 offset , u16 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  if ((int )offset & 1) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cread))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                 offset, 2, & data);
  *value = (unsigned short )data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int rio_mport_read_config_32(struct rio_mport *mport , u16 destid , u8 hopcount ,
                             u32 offset , u32 *value )
{
  int res ;
  unsigned long flags ;
  u32 data ;
  raw_spinlock_t *tmp ;
  {
  data = 0U;
  if ((offset & 3U) != 0U) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cread))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                 offset, 4, & data);
  *value = data;
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int rio_mport_write_config_8(struct rio_mport *mport , u16 destid , u8 hopcount ,
                             u32 offset , u8 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cwrite))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                  offset, 1, (u32 )value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int rio_mport_write_config_16(struct rio_mport *mport , u16 destid , u8 hopcount ,
                              u32 offset , u16 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((int )offset & 1) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cwrite))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                  offset, 2, (u32 )value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
int rio_mport_write_config_32(struct rio_mport *mport , u16 destid , u8 hopcount ,
                              u32 offset , u32 value )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((offset & 3U) != 0U) {
    return (129);
  } else {
  }
  tmp = spinlock_check(& rio_config_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->cwrite))(mport, (int )mport->id, (int )destid, (int )hopcount,
                                  offset, 4, value);
  spin_unlock_irqrestore(& rio_config_lock, flags);
  return (res);
}
}
static char const __kstrtab_rio_mport_read_config_8[24U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'r', 'e',
        'a', 'd', '_', 'c',
        'o', 'n', 'f', 'i',
        'g', '_', '8', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_read_config_8 ;
struct kernel_symbol const __ksymtab_rio_mport_read_config_8 = {(unsigned long )(& rio_mport_read_config_8), (char const *)(& __kstrtab_rio_mport_read_config_8)};
static char const __kstrtab_rio_mport_read_config_16[25U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'r', 'e',
        'a', 'd', '_', 'c',
        'o', 'n', 'f', 'i',
        'g', '_', '1', '6',
        '\000'};
struct kernel_symbol const __ksymtab_rio_mport_read_config_16 ;
struct kernel_symbol const __ksymtab_rio_mport_read_config_16 = {(unsigned long )(& rio_mport_read_config_16), (char const *)(& __kstrtab_rio_mport_read_config_16)};
static char const __kstrtab_rio_mport_read_config_32[25U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'r', 'e',
        'a', 'd', '_', 'c',
        'o', 'n', 'f', 'i',
        'g', '_', '3', '2',
        '\000'};
struct kernel_symbol const __ksymtab_rio_mport_read_config_32 ;
struct kernel_symbol const __ksymtab_rio_mport_read_config_32 = {(unsigned long )(& rio_mport_read_config_32), (char const *)(& __kstrtab_rio_mport_read_config_32)};
static char const __kstrtab_rio_mport_write_config_8[25U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'w', 'r',
        'i', 't', 'e', '_',
        'c', 'o', 'n', 'f',
        'i', 'g', '_', '8',
        '\000'};
struct kernel_symbol const __ksymtab_rio_mport_write_config_8 ;
struct kernel_symbol const __ksymtab_rio_mport_write_config_8 = {(unsigned long )(& rio_mport_write_config_8), (char const *)(& __kstrtab_rio_mport_write_config_8)};
static char const __kstrtab_rio_mport_write_config_16[26U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'w', 'r',
        'i', 't', 'e', '_',
        'c', 'o', 'n', 'f',
        'i', 'g', '_', '1',
        '6', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_write_config_16 ;
struct kernel_symbol const __ksymtab_rio_mport_write_config_16 = {(unsigned long )(& rio_mport_write_config_16), (char const *)(& __kstrtab_rio_mport_write_config_16)};
static char const __kstrtab_rio_mport_write_config_32[26U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'w', 'r',
        'i', 't', 'e', '_',
        'c', 'o', 'n', 'f',
        'i', 'g', '_', '3',
        '2', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_write_config_32 ;
struct kernel_symbol const __ksymtab_rio_mport_write_config_32 = {(unsigned long )(& rio_mport_write_config_32), (char const *)(& __kstrtab_rio_mport_write_config_32)};
int rio_mport_send_doorbell(struct rio_mport *mport , u16 destid , u16 data )
{
  int res ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& rio_doorbell_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  res = (*((mport->ops)->dsend))(mport, (int )mport->id, (int )destid, (int )data);
  spin_unlock_irqrestore(& rio_doorbell_lock, flags);
  return (res);
}
}
static char const __kstrtab_rio_mport_send_doorbell[24U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 's', 'e',
        'n', 'd', '_', 'd',
        'o', 'o', 'r', 'b',
        'e', 'l', 'l', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_send_doorbell ;
struct kernel_symbol const __ksymtab_rio_mport_send_doorbell = {(unsigned long )(& rio_mport_send_doorbell), (char const *)(& __kstrtab_rio_mport_send_doorbell)};
bool ldv_queue_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_38(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_39(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_40(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern struct module __this_module ;
bool ldv_queue_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_55(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 ) ;
extern int add_uevent_var(struct kobj_uevent_env * , char const * , ...) ;
int ldv_state_variable_8 ;
struct work_struct *ldv_work_struct_1_0 ;
struct device *rio_bus_type_group0 ;
int ldv_state_variable_15 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
struct kobject *rio_config_attr_group0 ;
int ldv_work_1_1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_12 ;
struct bin_attribute *rio_config_attr_group2 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int ldv_state_variable_17 ;
int ldv_state_variable_18 ;
struct file *rio_config_attr_group1 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void ldv_initialize_bin_attribute_5(void) ;
void ldv_initialize_bus_type_19(void) ;
void ldv_initialize_bus_type_18(void) ;
extern int bus_register(struct bus_type * ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern int __class_register(struct class * , struct lock_class_key * ) ;
extern void class_unregister(struct class * ) ;
extern struct device *get_device(struct device * ) ;
extern void put_device(struct device * ) ;
struct bus_type rio_bus_type ;
void rio_attach_device(struct rio_dev *rdev ) ;
struct attribute_group const *rio_dev_groups[2U] ;
struct attribute_group const *rio_bus_groups[2U] ;
struct attribute_group const *rio_mport_groups[2U] ;
static struct rio_device_id const *rio_match_device(struct rio_device_id const *id ,
                                                      struct rio_dev const *rdev )
{
  {
  goto ldv_25571;
  ldv_25570: ;
  if (((((unsigned int )((unsigned short )id->vid) == 65535U || (int )((unsigned short )id->vid) == (int )((unsigned short )rdev->vid)) && ((unsigned int )((unsigned short )id->did) == 65535U || (int )((unsigned short )id->did) == (int )((unsigned short )rdev->did))) && ((unsigned int )((unsigned short )id->asm_vid) == 65535U || (int )((unsigned short )id->asm_vid) == (int )((unsigned short )rdev->asm_vid))) && ((unsigned int )((unsigned short )id->asm_did) == 65535U || (int )((unsigned short )id->asm_did) == (int )((unsigned short )rdev->asm_did))) {
    return (id);
  } else {
  }
  id = id + 1;
  ldv_25571: ;
  if ((unsigned int )((unsigned short )id->vid) != 0U || (unsigned int )((unsigned short )id->asm_vid) != 0U) {
    goto ldv_25570;
  } else {
  }
  return ((struct rio_device_id const *)0);
}
}
struct rio_dev *rio_dev_get(struct rio_dev *rdev )
{
  {
  if ((unsigned long )rdev != (unsigned long )((struct rio_dev *)0)) {
    get_device(& rdev->dev);
  } else {
  }
  return (rdev);
}
}
void rio_dev_put(struct rio_dev *rdev )
{
  {
  if ((unsigned long )rdev != (unsigned long )((struct rio_dev *)0)) {
    put_device(& rdev->dev);
  } else {
  }
  return;
}
}
static int rio_device_probe(struct device *dev )
{
  struct rio_driver *rdrv ;
  struct device_driver const *__mptr ;
  struct rio_dev *rdev ;
  struct device const *__mptr___0 ;
  int error ;
  struct rio_device_id const *id ;
  {
  __mptr = (struct device_driver const *)dev->driver;
  rdrv = (struct rio_driver *)__mptr + 0xffffffffffffffb8UL;
  __mptr___0 = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr___0 + 0xffffffffffffff98UL;
  error = -19;
  if ((unsigned long )rdev->driver == (unsigned long )((struct rio_driver *)0) && (unsigned long )rdrv->probe != (unsigned long )((int (*)(struct rio_dev * ,
                                                                                                                                           struct rio_device_id const * ))0)) {
    if ((unsigned long )rdrv->id_table == (unsigned long )((struct rio_device_id const *)0)) {
      return (error);
    } else {
    }
    id = rio_match_device(rdrv->id_table, (struct rio_dev const *)rdev);
    rio_dev_get(rdev);
    if ((unsigned long )id != (unsigned long )((struct rio_device_id const *)0)) {
      error = (*(rdrv->probe))(rdev, id);
    } else {
    }
    if (error >= 0) {
      rdev->driver = rdrv;
      error = 0;
    } else {
      rio_dev_put(rdev);
    }
  } else {
  }
  return (error);
}
}
static int rio_device_remove(struct device *dev )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  struct rio_driver *rdrv ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  rdrv = rdev->driver;
  if ((unsigned long )rdrv != (unsigned long )((struct rio_driver *)0)) {
    if ((unsigned long )rdrv->remove != (unsigned long )((void (*)(struct rio_dev * ))0)) {
      (*(rdrv->remove))(rdev);
    } else {
    }
    rdev->driver = (struct rio_driver *)0;
  } else {
  }
  rio_dev_put(rdev);
  return (0);
}
}
int rio_register_driver(struct rio_driver *rdrv )
{
  int tmp ;
  {
  rdrv->driver.name = (char const *)rdrv->name;
  rdrv->driver.bus = & rio_bus_type;
  tmp = driver_register(& rdrv->driver);
  return (tmp);
}
}
void rio_unregister_driver(struct rio_driver *rdrv )
{
  {
  driver_unregister(& rdrv->driver);
  return;
}
}
void rio_attach_device(struct rio_dev *rdev )
{
  {
  rdev->dev.bus = & rio_bus_type;
  return;
}
}
static char const __kstrtab_rio_attach_device[18U] =
  { 'r', 'i', 'o', '_',
        'a', 't', 't', 'a',
        'c', 'h', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_rio_attach_device ;
struct kernel_symbol const __ksymtab_rio_attach_device = {(unsigned long )(& rio_attach_device), (char const *)(& __kstrtab_rio_attach_device)};
static int rio_match_bus(struct device *dev , struct device_driver *drv )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  struct rio_driver *rdrv ;
  struct device_driver const *__mptr___0 ;
  struct rio_device_id const *id ;
  struct rio_device_id const *found_id ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  __mptr___0 = (struct device_driver const *)drv;
  rdrv = (struct rio_driver *)__mptr___0 + 0xffffffffffffffb8UL;
  id = rdrv->id_table;
  if ((unsigned long )id == (unsigned long )((struct rio_device_id const *)0)) {
    goto out;
  } else {
  }
  found_id = rio_match_device(id, (struct rio_dev const *)rdev);
  if ((unsigned long )found_id != (unsigned long )((struct rio_device_id const *)0)) {
    return (1);
  } else {
  }
  out: ;
  return (0);
}
}
static int rio_uevent(struct device *dev , struct kobj_uevent_env *env )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  if ((unsigned long )rdev == (unsigned long )((struct rio_dev *)0)) {
    return (-19);
  } else {
  }
  tmp = add_uevent_var(env, "MODALIAS=rapidio:v%04Xd%04Xav%04Xad%04X", (int )rdev->vid,
                       (int )rdev->did, (int )rdev->asm_vid, (int )rdev->asm_did);
  if (tmp != 0) {
    return (-12);
  } else {
  }
  return (0);
}
}
struct class rio_mport_class =
     {"rapidio_port", & __this_module, 0, (struct attribute_group const **)(& rio_mport_groups),
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static char const __kstrtab_rio_mport_class[16U] =
  { 'r', 'i', 'o', '_',
        'm', 'p', 'o', 'r',
        't', '_', 'c', 'l',
        'a', 's', 's', '\000'};
struct kernel_symbol const __ksymtab_rio_mport_class ;
struct kernel_symbol const __ksymtab_rio_mport_class = {(unsigned long )(& rio_mport_class), (char const *)(& __kstrtab_rio_mport_class)};
struct bus_type rio_bus_type =
     {"rapidio", 0, 0, 0, (struct attribute_group const **)(& rio_bus_groups), (struct attribute_group const **)(& rio_dev_groups),
    0, & rio_match_bus, & rio_uevent, & rio_device_probe, & rio_device_remove, 0,
    0, 0, 0, 0, 0, 0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}};
static int rio_bus_init(void)
{
  int ret ;
  struct lock_class_key __key ;
  int tmp ;
  {
  tmp = __class_register(& rio_mport_class, & __key);
  ret = tmp;
  if (ret == 0) {
    ret = bus_register(& rio_bus_type);
    if (ret != 0) {
      class_unregister(& rio_mport_class);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_rio_register_driver[20U] =
  { 'r', 'i', 'o', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'd', 'r', 'i',
        'v', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_rio_register_driver ;
struct kernel_symbol const __ksymtab_rio_register_driver = {(unsigned long )(& rio_register_driver), (char const *)(& __kstrtab_rio_register_driver)};
static char const __kstrtab_rio_unregister_driver[22U] =
  { 'r', 'i', 'o', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'd',
        'r', 'i', 'v', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_rio_unregister_driver ;
struct kernel_symbol const __ksymtab_rio_unregister_driver = {(unsigned long )(& rio_unregister_driver), (char const *)(& __kstrtab_rio_unregister_driver)};
static char const __kstrtab_rio_bus_type[13U] =
  { 'r', 'i', 'o', '_',
        'b', 'u', 's', '_',
        't', 'y', 'p', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_rio_bus_type ;
struct kernel_symbol const __ksymtab_rio_bus_type = {(unsigned long )(& rio_bus_type), (char const *)(& __kstrtab_rio_bus_type)};
static char const __kstrtab_rio_dev_get[12U] =
  { 'r', 'i', 'o', '_',
        'd', 'e', 'v', '_',
        'g', 'e', 't', '\000'};
struct kernel_symbol const __ksymtab_rio_dev_get ;
struct kernel_symbol const __ksymtab_rio_dev_get = {(unsigned long )(& rio_dev_get), (char const *)(& __kstrtab_rio_dev_get)};
static char const __kstrtab_rio_dev_put[12U] =
  { 'r', 'i', 'o', '_',
        'd', 'e', 'v', '_',
        'p', 'u', 't', '\000'};
struct kernel_symbol const __ksymtab_rio_dev_put ;
struct kernel_symbol const __ksymtab_rio_dev_put = {(unsigned long )(& rio_dev_put), (char const *)(& __kstrtab_rio_dev_put)};
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
extern void ldv_module_exit(void) ;
int ldv_retval_2 ;
void ldv_initialize_bus_type_19(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  rio_bus_type_group0 = (struct device *)tmp;
  return;
}
}
void ldv_initialize_bus_type_18(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  rio_bus_type_group0 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_11(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_2(void) ;
void ldv_main_exported_16(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_5(void) ;
int main(void)
{
  struct kobj_uevent_env *ldvarg13 ;
  void *tmp ;
  struct device_driver *ldvarg12 ;
  void *tmp___0 ;
  struct kobj_uevent_env *ldvarg45 ;
  void *tmp___1 ;
  struct device_driver *ldvarg44 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_init_zalloc(2336UL);
  ldvarg13 = (struct kobj_uevent_env *)tmp;
  tmp___0 = ldv_init_zalloc(120UL);
  ldvarg12 = (struct device_driver *)tmp___0;
  tmp___1 = ldv_init_zalloc(2336UL);
  ldvarg45 = (struct kobj_uevent_env *)tmp___1;
  tmp___2 = ldv_init_zalloc(120UL);
  ldvarg44 = (struct device_driver *)tmp___2;
  ldv_initialize();
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
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
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_25787:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_25749;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_25749;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_25749;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_25749;
  case 4: ;
  goto ldv_25749;
  case 5: ;
  if (ldv_state_variable_18 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      ldv_retval_0 = rio_device_probe(rio_bus_type_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_18 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_25756;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      rio_uevent(rio_bus_type_group0, ldvarg13);
      ldv_state_variable_18 = 1;
    } else {
    }
    if (ldv_state_variable_18 == 2) {
      rio_uevent(rio_bus_type_group0, ldvarg13);
      ldv_state_variable_18 = 2;
    } else {
    }
    goto ldv_25756;
    case 2: ;
    if (ldv_state_variable_18 == 1) {
      rio_match_bus(rio_bus_type_group0, ldvarg12);
      ldv_state_variable_18 = 1;
    } else {
    }
    if (ldv_state_variable_18 == 2) {
      rio_match_bus(rio_bus_type_group0, ldvarg12);
      ldv_state_variable_18 = 2;
    } else {
    }
    goto ldv_25756;
    case 3: ;
    if (ldv_state_variable_18 == 2) {
      rio_device_remove(rio_bus_type_group0);
      ldv_state_variable_18 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_25756;
    default:
    ldv_stop();
    }
    ldv_25756: ;
  } else {
  }
  goto ldv_25749;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      ldv_module_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_25764;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = rio_bus_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_bin_attribute_5();
        ldv_state_variable_10 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_bus_type_19();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_initialize_bus_type_18();
        ldv_state_variable_2 = 1;
        ldv_state_variable_17 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_11 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_25764;
    default:
    ldv_stop();
    }
    ldv_25764: ;
  } else {
  }
  goto ldv_25749;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_25749;
  case 8: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_25749;
  case 9: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_25749;
  case 10: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_25749;
  case 11: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_25749;
  case 12: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_25749;
  case 13: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_25749;
  case 14: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_25749;
  case 15: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_25749;
  case 16: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_25749;
  case 17: ;
  if (ldv_state_variable_19 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      ldv_retval_2 = rio_device_probe(rio_bus_type_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_19 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_25779;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      rio_uevent(rio_bus_type_group0, ldvarg45);
      ldv_state_variable_19 = 1;
    } else {
    }
    if (ldv_state_variable_19 == 2) {
      rio_uevent(rio_bus_type_group0, ldvarg45);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_25779;
    case 2: ;
    if (ldv_state_variable_19 == 1) {
      rio_match_bus(rio_bus_type_group0, ldvarg44);
      ldv_state_variable_19 = 1;
    } else {
    }
    if (ldv_state_variable_19 == 2) {
      rio_match_bus(rio_bus_type_group0, ldvarg44);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_25779;
    case 3: ;
    if (ldv_state_variable_19 == 2) {
      rio_device_remove(rio_bus_type_group0);
      ldv_state_variable_19 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_25779;
    default:
    ldv_stop();
    }
    ldv_25779: ;
  } else {
  }
  goto ldv_25749;
  case 18: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_25749;
  case 19: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_25749;
  default:
  ldv_stop();
  }
  ldv_25749: ;
  goto ldv_25787;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
  activate_work_1(ldv_func_arg3, 2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
bool ldv_queue_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_66(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_68(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool capable(int ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern int device_create_bin_file(struct device * , struct bin_attribute const * ) ;
extern void device_remove_bin_file(struct device * , struct bin_attribute const * ) ;
__inline static int rio_read_config_16(struct rio_dev *rdev , u32 offset , u16 *data )
{
  int tmp ;
  {
  tmp = rio_mport_read_config_16((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 offset, data);
  return (tmp);
}
}
__inline static int rio_write_config_16(struct rio_dev *rdev , u32 offset , u16 data )
{
  int tmp ;
  {
  tmp = rio_mport_write_config_16((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                  offset, (int )data);
  return (tmp);
}
}
__inline static int rio_read_config_8(struct rio_dev *rdev , u32 offset , u8 *data )
{
  int tmp ;
  {
  tmp = rio_mport_read_config_8((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                offset, data);
  return (tmp);
}
}
__inline static int rio_write_config_8(struct rio_dev *rdev , u32 offset , u8 data )
{
  int tmp ;
  {
  tmp = rio_mport_write_config_8((rdev->net)->hport, (int )rdev->destid, (int )rdev->hopcount,
                                 offset, (int )data);
  return (tmp);
}
}
static ssize_t did_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->did);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_did = {{"did", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & did_show, 0};
static ssize_t vid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->vid);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_vid = {{"vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & vid_show, 0};
static ssize_t device_rev_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%08x\n", rdev->device_rev);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_device_rev = {{"device_rev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & device_rev_show, 0};
static ssize_t asm_did_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->asm_did);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_asm_did = {{"asm_did", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & asm_did_show,
    0};
static ssize_t asm_vid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->asm_vid);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_asm_vid = {{"asm_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & asm_vid_show,
    0};
static ssize_t asm_rev_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->asm_rev);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_asm_rev = {{"asm_rev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & asm_rev_show,
    0};
static ssize_t destid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%04x\n", (int )rdev->destid);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_destid = {{"destid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & destid_show,
    0};
static ssize_t hopcount_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "0x%02x\n", (int )rdev->hopcount);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hopcount = {{"hopcount", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hopcount_show, 0};
static ssize_t routes_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  char *str ;
  int i ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  str = buf;
  i = 0;
  goto ldv_25934;
  ldv_25933: ;
  if ((unsigned int )*(((struct rio_switch *)(& rdev->rswitch))->route_table + (unsigned long )i) == 255U) {
    goto ldv_25932;
  } else {
  }
  tmp = sprintf(str, "%04x %02x\n", i, (int )*(((struct rio_switch *)(& rdev->rswitch))->route_table + (unsigned long )i));
  str = str + (unsigned long )tmp;
  ldv_25932:
  i = i + 1;
  ldv_25934: ;
  if ((((rdev->net)->hport)->sys_size != 0U ? 65536 : 256) > i) {
    goto ldv_25933;
  } else {
  }
  return ((long )str - (long )buf);
}
}
static struct device_attribute dev_attr_routes = {{"routes", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & routes_show,
    0};
static ssize_t lprev_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  char const *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  if ((unsigned long )rdev->prev != (unsigned long )((struct rio_dev *)0)) {
    tmp = rio_name(rdev->prev);
    tmp___0 = tmp;
  } else {
    tmp___0 = "root";
  }
  tmp___1 = sprintf(buf, "%s\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_lprev = {{"lprev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & lprev_show,
    0};
static ssize_t lnext_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  char *str ;
  int i ;
  char const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  str = buf;
  if ((rdev->pef & 268435456U) != 0U) {
    i = 0;
    goto ldv_25957;
    ldv_25956: ;
    if ((unsigned long )((struct rio_switch *)(& rdev->rswitch))->nextdev[i] != (unsigned long )((struct rio_dev *)0)) {
      tmp = rio_name(((struct rio_switch *)(& rdev->rswitch))->nextdev[i]);
      tmp___0 = sprintf(str, "%s\n", tmp);
      str = str + (unsigned long )tmp___0;
    } else {
      tmp___1 = sprintf(str, "null\n");
      str = str + (unsigned long )tmp___1;
    }
    i = i + 1;
    ldv_25957: ;
    if ((u32 )i < (rdev->swpinfo & 65280U) >> 8) {
      goto ldv_25956;
    } else {
    }
  } else {
  }
  return ((long )str - (long )buf);
}
}
static struct device_attribute dev_attr_lnext = {{"lnext", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & lnext_show,
    0};
static ssize_t modalias_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct rio_dev *rdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  rdev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  tmp = sprintf(buf, "rapidio:v%04Xd%04Xav%04Xad%04X\n", (int )rdev->vid, (int )rdev->did,
                (int )rdev->asm_vid, (int )rdev->asm_did);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_modalias = {{"modalias", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & modalias_show, 0};
static struct attribute *rio_dev_attrs[10U] =
  { & dev_attr_did.attr, & dev_attr_vid.attr, & dev_attr_device_rev.attr, & dev_attr_asm_did.attr,
        & dev_attr_asm_vid.attr, & dev_attr_asm_rev.attr, & dev_attr_lprev.attr, & dev_attr_destid.attr,
        & dev_attr_modalias.attr, (struct attribute *)0};
static struct attribute_group const rio_dev_group = {0, 0, (struct attribute **)(& rio_dev_attrs), 0};
struct attribute_group const *rio_dev_groups[2U] = { & rio_dev_group, (struct attribute_group const *)0};
static ssize_t rio_read_config(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                               char *buf , loff_t off , size_t count )
{
  struct rio_dev *dev ;
  struct device const *__mptr ;
  struct kobject const *__mptr___0 ;
  unsigned int size ;
  loff_t init_off ;
  u8 *data ;
  bool tmp ;
  u8 val ;
  u16 val___0 ;
  u32 val___1 ;
  u16 val___2 ;
  u8 val___3 ;
  {
  __mptr___0 = (struct kobject const *)kobj;
  __mptr = (struct device const *)((struct device *)__mptr___0 + 0xfffffffffffffff0UL);
  dev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  size = 256U;
  init_off = off;
  data = (u8 *)buf;
  tmp = capable(21);
  if ((int )tmp) {
    size = 16777216U;
  } else {
  }
  if ((loff_t )size <= off) {
    return (0L);
  } else {
  }
  if ((unsigned long long )off + (unsigned long long )count > (unsigned long long )size) {
    size = size - (unsigned int )off;
    count = (size_t )size;
  } else {
    size = (unsigned int )count;
  }
  if ((int )off & 1 && size != 0U) {
    rio_read_config_8(dev, (u32 )off, & val);
    *(data + (unsigned long )(off - init_off)) = val;
    off = off + 1LL;
    size = size - 1U;
  } else {
  }
  if ((off & 3LL) != 0LL && size > 2U) {
    rio_read_config_16(dev, (u32 )off, & val___0);
    *(data + (unsigned long )(off - init_off)) = (u8 )((int )val___0 >> 8);
    *(data + ((unsigned long )(off - init_off) + 1UL)) = (u8 )val___0;
    off = off + 2LL;
    size = size - 2U;
  } else {
  }
  goto ldv_25992;
  ldv_25991:
  rio_read_config_32(dev, (u32 )off, & val___1);
  *(data + (unsigned long )(off - init_off)) = (u8 )(val___1 >> 24);
  *(data + ((unsigned long )(off - init_off) + 1UL)) = (u8 )(val___1 >> 16);
  *(data + ((unsigned long )(off - init_off) + 2UL)) = (u8 )(val___1 >> 8);
  *(data + ((unsigned long )(off - init_off) + 3UL)) = (u8 )val___1;
  off = off + 4LL;
  size = size - 4U;
  ldv_25992: ;
  if (size > 3U) {
    goto ldv_25991;
  } else {
  }
  if (size > 1U) {
    rio_read_config_16(dev, (u32 )off, & val___2);
    *(data + (unsigned long )(off - init_off)) = (u8 )((int )val___2 >> 8);
    *(data + ((unsigned long )(off - init_off) + 1UL)) = (u8 )val___2;
    off = off + 2LL;
    size = size - 2U;
  } else {
  }
  if (size != 0U) {
    rio_read_config_8(dev, (u32 )off, & val___3);
    *(data + (unsigned long )(off - init_off)) = val___3;
    off = off + 1LL;
    size = size - 1U;
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t rio_write_config(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                char *buf , loff_t off , size_t count )
{
  struct rio_dev *dev ;
  struct device const *__mptr ;
  struct kobject const *__mptr___0 ;
  unsigned int size ;
  loff_t init_off ;
  u8 *data ;
  u16 val ;
  u32 val___0 ;
  u16 val___1 ;
  {
  __mptr___0 = (struct kobject const *)kobj;
  __mptr = (struct device const *)((struct device *)__mptr___0 + 0xfffffffffffffff0UL);
  dev = (struct rio_dev *)__mptr + 0xffffffffffffff98UL;
  size = (unsigned int )count;
  init_off = off;
  data = (u8 *)buf;
  if (off > 16777215LL) {
    return (0L);
  } else {
  }
  if ((unsigned long long )off + (unsigned long long )count > 16777216ULL) {
    size = 16777216U - (unsigned int )off;
    count = (size_t )size;
  } else {
  }
  if ((int )off & 1 && size != 0U) {
    rio_write_config_8(dev, (u32 )off, (int )*(data + (unsigned long )(off - init_off)));
    off = off + 1LL;
    size = size - 1U;
  } else {
  }
  if ((off & 3LL) != 0LL && size > 2U) {
    val = (u16 )*(data + ((unsigned long )(off - init_off) + 1UL));
    val = (u16 )((int )((short )((int )*(data + (unsigned long )(off - init_off)) << 8)) | (int )((short )val));
    rio_write_config_16(dev, (u32 )off, (int )val);
    off = off + 2LL;
    size = size - 2U;
  } else {
  }
  goto ldv_26015;
  ldv_26014:
  val___0 = (u32 )*(data + ((unsigned long )(off - init_off) + 3UL));
  val___0 = ((unsigned int )*(data + ((unsigned long )(off - init_off) + 2UL)) << 8) | val___0;
  val___0 = ((unsigned int )*(data + ((unsigned long )(off - init_off) + 1UL)) << 16) | val___0;
  val___0 = ((unsigned int )*(data + (unsigned long )(off - init_off)) << 24) | val___0;
  rio_write_config_32(dev, (u32 )off, val___0);
  off = off + 4LL;
  size = size - 4U;
  ldv_26015: ;
  if (size > 3U) {
    goto ldv_26014;
  } else {
  }
  if (size > 1U) {
    val___1 = (u16 )*(data + ((unsigned long )(off - init_off) + 1UL));
    val___1 = (u16 )((int )((short )((int )*(data + (unsigned long )(off - init_off)) << 8)) | (int )((short )val___1));
    rio_write_config_16(dev, (u32 )off, (int )val___1);
    off = off + 2LL;
    size = size - 2U;
  } else {
  }
  if (size != 0U) {
    rio_write_config_8(dev, (u32 )off, (int )*(data + (unsigned long )(off - init_off)));
    off = off + 1LL;
    size = size - 1U;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct bin_attribute rio_config_attr = {{"config", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, 16777216UL,
    0, & rio_read_config, & rio_write_config, 0};
int rio_create_sysfs_dev_files(struct rio_dev *rdev )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  {
  err = 0;
  err = device_create_bin_file(& rdev->dev, (struct bin_attribute const *)(& rio_config_attr));
  if (err == 0 && (rdev->pef & 268435456U) != 0U) {
    tmp = device_create_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_routes));
    err = tmp | err;
    tmp___0 = device_create_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_lnext));
    err = tmp___0 | err;
    tmp___1 = device_create_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_hopcount));
    err = tmp___1 | err;
  } else {
  }
  if (err != 0) {
    tmp___2 = rio_name(rdev);
    printk("\fRIO: Failed to create attribute file(s) for %s\n", tmp___2);
  } else {
  }
  return (err);
}
}
void rio_remove_sysfs_dev_files(struct rio_dev *rdev )
{
  {
  device_remove_bin_file(& rdev->dev, (struct bin_attribute const *)(& rio_config_attr));
  if ((rdev->pef & 268435456U) != 0U) {
    device_remove_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_routes));
    device_remove_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_lnext));
    device_remove_file(& rdev->dev, (struct device_attribute const *)(& dev_attr_hopcount));
  } else {
  }
  return;
}
}
static ssize_t bus_scan_store(struct bus_type *bus , char const *buf , size_t count )
{
  long val ;
  int rc ;
  int tmp ;
  {
  tmp = kstrtol(buf, 0U, & val);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  if (val == -1L) {
    rc = rio_init_mports();
    goto exit;
  } else {
  }
  if (val < 0L || val > 7L) {
    return (-22L);
  } else {
  }
  rc = rio_mport_scan((int )val);
  exit: ;
  if (rc == 0) {
    rc = (int )count;
  } else {
  }
  return ((ssize_t )rc);
}
}
static struct bus_attribute bus_attr_scan = {{"scan", 144U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, (ssize_t (*)(struct bus_type * ,
                                                                                   char * ))0,
    & bus_scan_store};
static struct attribute *rio_bus_attrs[2U] = { & bus_attr_scan.attr, (struct attribute *)0};
static struct attribute_group const rio_bus_group = {0, 0, (struct attribute **)(& rio_bus_attrs), 0};
struct attribute_group const *rio_bus_groups[2U] = { & rio_bus_group, (struct attribute_group const *)0};
static ssize_t port_destid_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct rio_mport *mport ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  mport = (struct rio_mport *)__mptr + 0xfffffffffffffb50UL;
  if ((unsigned long )mport != (unsigned long )((struct rio_mport *)0)) {
    tmp = sprintf(buf, "0x%04x\n", mport->host_deviceid);
    return ((ssize_t )tmp);
  } else {
    return (-19L);
  }
}
}
static struct device_attribute dev_attr_port_destid = {{"port_destid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & port_destid_show, 0};
static ssize_t sys_size_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct rio_mport *mport ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  mport = (struct rio_mport *)__mptr + 0xfffffffffffffb50UL;
  if ((unsigned long )mport != (unsigned long )((struct rio_mport *)0)) {
    tmp = sprintf(buf, "%u\n", mport->sys_size);
    return ((ssize_t )tmp);
  } else {
    return (-19L);
  }
}
}
static struct device_attribute dev_attr_sys_size = {{"sys_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sys_size_show, 0};
static struct attribute *rio_mport_attrs[3U] = { & dev_attr_port_destid.attr, & dev_attr_sys_size.attr, (struct attribute *)0};
static struct attribute_group const rio_mport_group = {0, 0, (struct attribute **)(& rio_mport_attrs), 0};
struct attribute_group const *rio_mport_groups[2U] = { & rio_mport_group, (struct attribute_group const *)0};
extern int ldv_probe_5(void) ;
extern int ldv_release_5(void) ;
void ldv_initialize_bin_attribute_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  rio_config_attr_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  rio_config_attr_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  rio_config_attr_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_main_exported_11(void)
{
  struct device_attribute *ldvarg2 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  char *ldvarg1 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    destid_show(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_26085;
  default:
  ldv_stop();
  }
  ldv_26085: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  struct device_attribute *ldvarg5 ;
  void *tmp ;
  struct device *ldvarg3 ;
  void *tmp___0 ;
  char *ldvarg4 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    lnext_show(ldvarg3, ldvarg5, ldvarg4);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_26094;
  default:
  ldv_stop();
  }
  ldv_26094: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  struct device *ldvarg6 ;
  void *tmp ;
  char *ldvarg7 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg8 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg6 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg8 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    did_show(ldvarg6, ldvarg8, ldvarg7);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_26103;
  default:
  ldv_stop();
  }
  ldv_26103: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  struct device *ldvarg9 ;
  void *tmp ;
  char *ldvarg10 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg11 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg9 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg11 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    sys_size_show(ldvarg9, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_26112;
  default:
  ldv_stop();
  }
  ldv_26112: ;
  return;
}
}
void ldv_main_exported_16(void)
{
  char *ldvarg15 ;
  void *tmp ;
  struct device_attribute *ldvarg16 ;
  void *tmp___0 ;
  struct device *ldvarg14 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg16 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_init_zalloc(1416UL);
  ldvarg14 = (struct device *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    vid_show(ldvarg14, ldvarg16, ldvarg15);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_26121;
  default:
  ldv_stop();
  }
  ldv_26121: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  struct device_attribute *ldvarg19 ;
  void *tmp ;
  struct device *ldvarg17 ;
  void *tmp___0 ;
  char *ldvarg18 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg19 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg17 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    asm_vid_show(ldvarg17, ldvarg19, ldvarg18);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_26130;
  default:
  ldv_stop();
  }
  ldv_26130: ;
  return;
}
}
void ldv_main_exported_6(void)
{
  struct device_attribute *ldvarg22 ;
  void *tmp ;
  struct device *ldvarg20 ;
  void *tmp___0 ;
  char *ldvarg21 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg22 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg20 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    modalias_show(ldvarg20, ldvarg22, ldvarg21);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_26139;
  default:
  ldv_stop();
  }
  ldv_26139: ;
  return;
}
}
void ldv_main_exported_3(void)
{
  struct device *ldvarg23 ;
  void *tmp ;
  struct device_attribute *ldvarg25 ;
  void *tmp___0 ;
  char *ldvarg24 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg23 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg25 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    port_destid_show(ldvarg23, ldvarg25, ldvarg24);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26148;
  default:
  ldv_stop();
  }
  ldv_26148: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct device_attribute *ldvarg28 ;
  void *tmp ;
  struct device *ldvarg26 ;
  void *tmp___0 ;
  char *ldvarg27 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg28 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg26 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    routes_show(ldvarg26, ldvarg28, ldvarg27);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_26157;
  default:
  ldv_stop();
  }
  ldv_26157: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  char *ldvarg30 ;
  void *tmp ;
  struct device *ldvarg29 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg31 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg29 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg31 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    asm_rev_show(ldvarg29, ldvarg31, ldvarg30);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_26166;
  default:
  ldv_stop();
  }
  ldv_26166: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  char *ldvarg33 ;
  void *tmp ;
  struct device_attribute *ldvarg34 ;
  void *tmp___0 ;
  struct device *ldvarg32 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg34 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_init_zalloc(1416UL);
  ldvarg32 = (struct device *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    asm_did_show(ldvarg32, ldvarg34, ldvarg33);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_26175;
  default:
  ldv_stop();
  }
  ldv_26175: ;
  return;
}
}
void ldv_main_exported_15(void)
{
  char *ldvarg36 ;
  void *tmp ;
  struct device *ldvarg35 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg37 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg35 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg37 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_15 == 1) {
    device_rev_show(ldvarg35, ldvarg37, ldvarg36);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_26184;
  default:
  ldv_stop();
  }
  ldv_26184: ;
  return;
}
}
void ldv_main_exported_8(void)
{
  struct device *ldvarg38 ;
  void *tmp ;
  struct device_attribute *ldvarg40 ;
  void *tmp___0 ;
  char *ldvarg39 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg38 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg40 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    lprev_show(ldvarg38, ldvarg40, ldvarg39);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_26193;
  default:
  ldv_stop();
  }
  ldv_26193: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  size_t ldvarg42 ;
  char *ldvarg43 ;
  void *tmp ;
  struct bus_type *ldvarg41 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(160UL);
  ldvarg41 = (struct bus_type *)tmp___0;
  ldv_memset((void *)(& ldvarg42), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    bus_scan_store(ldvarg41, (char const *)ldvarg43, ldvarg42);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_26202;
  default:
  ldv_stop();
  }
  ldv_26202: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct device *ldvarg46 ;
  void *tmp ;
  char *ldvarg47 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg48 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg46 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg47 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg48 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    hopcount_show(ldvarg46, ldvarg48, ldvarg47);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_26211;
  default:
  ldv_stop();
  }
  ldv_26211: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  char *ldvarg50 ;
  void *tmp ;
  size_t ldvarg49 ;
  size_t ldvarg52 ;
  char *ldvarg53 ;
  void *tmp___0 ;
  loff_t ldvarg51 ;
  loff_t ldvarg54 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg49), 0, 8UL);
  ldv_memset((void *)(& ldvarg52), 0, 8UL);
  ldv_memset((void *)(& ldvarg51), 0, 8UL);
  ldv_memset((void *)(& ldvarg54), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_5 == 2) {
    rio_write_config(rio_config_attr_group1, rio_config_attr_group0, rio_config_attr_group2,
                     ldvarg53, ldvarg54, ldvarg52);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_26223;
  case 1: ;
  if (ldv_state_variable_5 == 2) {
    rio_read_config(rio_config_attr_group1, rio_config_attr_group0, rio_config_attr_group2,
                    ldvarg50, ldvarg51, ldvarg49);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_26223;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    ldv_release_5();
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26223;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    ldv_probe_5();
    ldv_state_variable_5 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_26223;
  default:
  ldv_stop();
  }
  ldv_26223: ;
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
  activate_work_1(ldv_func_arg3, 2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_68(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __class_register(struct class *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void *external_alloc(void);
struct dma_chan *__dma_request_channel(const dma_cap_mask_t *arg0, bool (*arg1)(struct dma_chan *, void *), void *arg2) {
  return (struct dma_chan *)external_alloc();
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
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int add_uevent_var(struct kobj_uevent_env *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int bus_register(struct bus_type *arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void class_unregister(struct class *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_bin_file(struct device *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_register(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_remove_bin_file(struct device *arg0, const struct bin_attribute *arg1) {
  return;
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void dma_release_channel(struct dma_chan *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *external_alloc(void);
struct device *get_device(struct device *arg0) {
  return (struct device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
void ldv_module_exit() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
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
int release_resource(struct resource *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_resource(struct resource *arg0, struct resource *arg1) {
  return __VERIFIER_nondet_int();
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
