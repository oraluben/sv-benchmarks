extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
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
typedef unsigned char u_char;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
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
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct seq_operations;
struct i387_fsave_struct {
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
};
struct i387_soft_struct {
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
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
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
} __attribute__((__packed__)) ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
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
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
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
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct nsproxy;
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
struct __anonstruct_ldv_14014_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14018_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14019_135 {
   struct __anonstruct_ldv_14014_136 ldv_14014 ;
   struct __anonstruct_ldv_14018_137 ldv_14018 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14019_135 ldv_14019 ;
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
union __anonunion_ldv_14128_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14134_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14144_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14146_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14144_144 ldv_14144 ;
   int units ;
};
struct __anonstruct_ldv_14148_142 {
   union __anonunion_ldv_14146_143 ldv_14146 ;
   atomic_t _count ;
};
union __anonunion_ldv_14150_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14148_142 ldv_14148 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14151_139 {
   union __anonunion_ldv_14134_140 ldv_14134 ;
   union __anonunion_ldv_14150_141 ldv_14150 ;
};
struct __anonstruct_ldv_14158_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14163_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14158_146 ldv_14158 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14169_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14128_138 ldv_14128 ;
   struct __anonstruct_ldv_14151_139 ldv_14151 ;
   union __anonunion_ldv_14163_145 ldv_14163 ;
   union __anonunion_ldv_14169_147 ldv_14169 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
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
   union __anonunion_shared_148 shared ;
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
union __anonunion_ldv_14532_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14532_153 ldv_14532 ;
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
};
union __anonunion_ldv_14676_154 {
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
   union __anonunion_ldv_14676_154 ldv_14676 ;
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
union __anonunion_ldv_15351_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15351_155 ldv_15351 ;
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
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
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
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15971_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15977_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15978_156 {
   struct __anonstruct_ldv_15971_157 ldv_15971 ;
   struct __anonstruct_ldv_15977_158 ldv_15977 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15978_156 ldv_15978 ;
};
struct block_device;
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
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
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
union __anonunion_ldv_17619_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17627_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_17640_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_17641_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_17640_174 ldv_17640 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_17656_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17619_171 ldv_17619 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17627_172 ldv_17627 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_17641_173 ldv_17641 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_17656_176 ldv_17656 ;
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
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
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
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
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
   struct rw_semaphore group_rwsem ;
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
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
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
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_19450_180 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_19451_179 {
   struct __anonstruct_ldv_19450_180 ldv_19450 ;
};
struct lockref {
   union __anonunion_ldv_19451_179 ldv_19451 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_19475_182 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_19477_181 {
   struct __anonstruct_ldv_19475_182 ldv_19475 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_19477_181 ldv_19477 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_183 {
   struct list_head d_child ;
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
   union __anonunion_d_u_183 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
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
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_19838_185 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_19840_184 {
   struct __anonstruct_ldv_19838_185 ldv_19838 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_19840_184 ldv_19840 ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct iovec;
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
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_186 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_186 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_20389_187 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_20389_187 ldv_20389 ;
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
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
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
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct writeback_control;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
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
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
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
union __anonunion_ldv_20804_190 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_20824_191 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_20841_192 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
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
   union __anonunion_ldv_20804_190 ldv_20804 ;
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
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_20824_191 ldv_20824 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_20841_192 ldv_20841 ;
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
union __anonunion_f_u_193 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_193 f_u ;
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
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_195 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_194 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_195 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
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
   union __anonunion_fl_u_194 fl_u ;
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
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
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
   int (*freeze_fs)(struct super_block * ) ;
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
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct acpi_dev_node acpi_node ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion_ldv_24078_196 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_24078_196 ldv_24078 ;
   unsigned long nr_segs ;
};
struct otp_info {
   __u32 start ;
   __u32 length ;
   __u32 locked ;
};
struct nand_oobfree {
   __u32 offset ;
   __u32 length ;
};
struct mtd_ecc_stats {
   __u32 corrected ;
   __u32 failed ;
   __u32 badblocks ;
   __u32 bbtblocks ;
};
struct erase_info {
   struct mtd_info *mtd ;
   uint64_t addr ;
   uint64_t len ;
   uint64_t fail_addr ;
   u_long time ;
   u_long retries ;
   unsigned int dev ;
   unsigned int cell ;
   void (*callback)(struct erase_info * ) ;
   u_long priv ;
   u_char state ;
   struct erase_info *next ;
};
struct mtd_erase_region_info {
   uint64_t offset ;
   uint32_t erasesize ;
   uint32_t numblocks ;
   unsigned long *lockmap ;
};
struct mtd_oob_ops {
   unsigned int mode ;
   size_t len ;
   size_t retlen ;
   size_t ooblen ;
   size_t oobretlen ;
   uint32_t ooboffs ;
   uint8_t *datbuf ;
   uint8_t *oobbuf ;
};
struct nand_ecclayout {
   __u32 eccbytes ;
   __u32 eccpos[640U] ;
   __u32 oobavail ;
   struct nand_oobfree oobfree[32U] ;
};
struct mtd_info {
   u_char type ;
   uint32_t flags ;
   uint64_t size ;
   uint32_t erasesize ;
   uint32_t writesize ;
   uint32_t writebufsize ;
   uint32_t oobsize ;
   uint32_t oobavail ;
   unsigned int erasesize_shift ;
   unsigned int writesize_shift ;
   unsigned int erasesize_mask ;
   unsigned int writesize_mask ;
   unsigned int bitflip_threshold ;
   char const *name ;
   int index ;
   struct nand_ecclayout *ecclayout ;
   unsigned int ecc_step_size ;
   unsigned int ecc_strength ;
   int numeraseregions ;
   struct mtd_erase_region_info *eraseregions ;
   int (*_erase)(struct mtd_info * , struct erase_info * ) ;
   int (*_point)(struct mtd_info * , loff_t , size_t , size_t * , void ** , resource_size_t * ) ;
   int (*_unpoint)(struct mtd_info * , loff_t , size_t ) ;
   unsigned long (*_get_unmapped_area)(struct mtd_info * , unsigned long , unsigned long ,
                                       unsigned long ) ;
   int (*_read)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_write)(struct mtd_info * , loff_t , size_t , size_t * , u_char const * ) ;
   int (*_panic_write)(struct mtd_info * , loff_t , size_t , size_t * , u_char const * ) ;
   int (*_read_oob)(struct mtd_info * , loff_t , struct mtd_oob_ops * ) ;
   int (*_write_oob)(struct mtd_info * , loff_t , struct mtd_oob_ops * ) ;
   int (*_get_fact_prot_info)(struct mtd_info * , size_t , size_t * , struct otp_info * ) ;
   int (*_read_fact_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_get_user_prot_info)(struct mtd_info * , size_t , size_t * , struct otp_info * ) ;
   int (*_read_user_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_write_user_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * ,
                               u_char * ) ;
   int (*_lock_user_prot_reg)(struct mtd_info * , loff_t , size_t ) ;
   int (*_writev)(struct mtd_info * , struct kvec const * , unsigned long , loff_t ,
                  size_t * ) ;
   void (*_sync)(struct mtd_info * ) ;
   int (*_lock)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_unlock)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_is_locked)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_block_isbad)(struct mtd_info * , loff_t ) ;
   int (*_block_markbad)(struct mtd_info * , loff_t ) ;
   int (*_suspend)(struct mtd_info * ) ;
   void (*_resume)(struct mtd_info * ) ;
   int (*_get_device)(struct mtd_info * ) ;
   void (*_put_device)(struct mtd_info * ) ;
   struct backing_dev_info *backing_dev_info ;
   struct notifier_block reboot_notifier ;
   struct mtd_ecc_stats ecc_stats ;
   int subpage_sft ;
   void *priv ;
   struct module *owner ;
   struct device dev ;
   int usecount ;
};
struct ubi_volume_desc;
struct ubi_vid_hdr {
   __be32 magic ;
   __u8 version ;
   __u8 vol_type ;
   __u8 copy_flag ;
   __u8 compat ;
   __be32 vol_id ;
   __be32 lnum ;
   __u8 padding1[4U] ;
   __be32 data_size ;
   __be32 used_ebs ;
   __be32 data_pad ;
   __be32 data_crc ;
   __u8 padding2[4U] ;
   __be64 sqnum ;
   __u8 padding3[12U] ;
   __be32 hdr_crc ;
};
struct ubi_vtbl_record {
   __be32 reserved_pebs ;
   __be32 alignment ;
   __be32 data_pad ;
   __u8 vol_type ;
   __u8 upd_marker ;
   __be16 name_len ;
   __u8 name[128U] ;
   __u8 flags ;
   __u8 padding[23U] ;
   __be32 crc ;
};
union __anonunion_u_198 {
   struct rb_node rb ;
   struct list_head list ;
};
struct ubi_wl_entry {
   union __anonunion_u_198 u ;
   int ec ;
   int pnum ;
};
struct ubi_rename_entry {
   int new_name_len ;
   char new_name[128U] ;
   int remove ;
   struct ubi_volume_desc *desc ;
   struct list_head list ;
};
struct ubi_fastmap_layout {
   struct ubi_wl_entry *e[32U] ;
   int to_be_tortured[32U] ;
   int used_blocks ;
   int max_pool_size ;
   int max_wl_pool_size ;
};
struct ubi_fm_pool {
   int pebs[256U] ;
   int used ;
   int size ;
   int max_size ;
};
struct ubi_device;
struct ubi_volume {
   struct device dev ;
   struct cdev cdev ;
   struct ubi_device *ubi ;
   int vol_id ;
   int ref_count ;
   int readers ;
   int writers ;
   int exclusive ;
   int reserved_pebs ;
   int vol_type ;
   int usable_leb_size ;
   int used_ebs ;
   int last_eb_bytes ;
   long long used_bytes ;
   int alignment ;
   int data_pad ;
   int name_len ;
   char name[128U] ;
   int upd_ebs ;
   int ch_lnum ;
   long long upd_bytes ;
   long long upd_received ;
   void *upd_buf ;
   int *eba_tbl ;
   unsigned char checked : 1 ;
   unsigned char corrupted : 1 ;
   unsigned char upd_marker : 1 ;
   unsigned char updating : 1 ;
   unsigned char changing_leb : 1 ;
   unsigned char direct_writes : 1 ;
};
struct ubi_volume_desc {
   struct ubi_volume *vol ;
   int mode ;
};
struct ubi_debug_info {
   unsigned char chk_gen : 1 ;
   unsigned char chk_io : 1 ;
   unsigned char disable_bgt : 1 ;
   unsigned char emulate_bitflips : 1 ;
   unsigned char emulate_io_failures : 1 ;
   char dfs_dir_name[7U] ;
   struct dentry *dfs_dir ;
   struct dentry *dfs_chk_gen ;
   struct dentry *dfs_chk_io ;
   struct dentry *dfs_disable_bgt ;
   struct dentry *dfs_emulate_bitflips ;
   struct dentry *dfs_emulate_io_failures ;
};
struct ubi_device {
   struct cdev cdev ;
   struct device dev ;
   int ubi_num ;
   char ubi_name[9U] ;
   int vol_count ;
   struct ubi_volume *volumes[129U] ;
   spinlock_t volumes_lock ;
   int ref_count ;
   int image_seq ;
   int rsvd_pebs ;
   int avail_pebs ;
   int beb_rsvd_pebs ;
   int beb_rsvd_level ;
   int bad_peb_limit ;
   int autoresize_vol_id ;
   int vtbl_slots ;
   int vtbl_size ;
   struct ubi_vtbl_record *vtbl ;
   struct mutex device_mutex ;
   int max_ec ;
   int mean_ec ;
   unsigned long long global_sqnum ;
   spinlock_t ltree_lock ;
   struct rb_root ltree ;
   struct mutex alc_mutex ;
   int fm_disabled ;
   struct ubi_fastmap_layout *fm ;
   struct ubi_fm_pool fm_pool ;
   struct ubi_fm_pool fm_wl_pool ;
   struct rw_semaphore fm_sem ;
   struct mutex fm_mutex ;
   void *fm_buf ;
   size_t fm_size ;
   struct work_struct fm_work ;
   struct rb_root used ;
   struct rb_root erroneous ;
   struct rb_root free ;
   int free_count ;
   struct rb_root scrub ;
   struct list_head pq[10U] ;
   int pq_head ;
   spinlock_t wl_lock ;
   struct mutex move_mutex ;
   struct rw_semaphore work_sem ;
   int wl_scheduled ;
   struct ubi_wl_entry **lookuptbl ;
   struct ubi_wl_entry *move_from ;
   struct ubi_wl_entry *move_to ;
   int move_to_put ;
   struct list_head works ;
   int works_count ;
   struct task_struct *bgt_thread ;
   int thread_enabled ;
   char bgt_name[13U] ;
   long long flash_size ;
   int peb_count ;
   int peb_size ;
   int bad_peb_count ;
   int good_peb_count ;
   int corr_peb_count ;
   int erroneous_peb_count ;
   int max_erroneous ;
   int min_io_size ;
   int hdrs_min_io_size ;
   int ro_mode ;
   int leb_size ;
   int leb_start ;
   int ec_hdr_alsize ;
   int vid_hdr_alsize ;
   int vid_hdr_offset ;
   int vid_hdr_aloffset ;
   int vid_hdr_shift ;
   unsigned char bad_allowed : 1 ;
   unsigned char nor_flash : 1 ;
   int max_write_size ;
   struct mtd_info *mtd ;
   void *peb_buf ;
   struct mutex buf_mutex ;
   struct mutex ckvol_mutex ;
   struct ubi_debug_info dbg ;
};
union __anonunion_u_199 {
   struct rb_node rb ;
   struct list_head list ;
};
struct ubi_ainf_peb {
   int ec ;
   int pnum ;
   int vol_id ;
   int lnum ;
   unsigned char scrub : 1 ;
   unsigned char copy_flag : 1 ;
   unsigned long long sqnum ;
   union __anonunion_u_199 u ;
};
struct ubi_ainf_volume {
   int vol_id ;
   int highest_lnum ;
   int leb_count ;
   int vol_type ;
   int used_ebs ;
   int last_data_size ;
   int data_pad ;
   int compat ;
   struct rb_node rb ;
   struct rb_root root ;
};
struct ubi_attach_info {
   struct rb_root volumes ;
   struct list_head corr ;
   struct list_head free ;
   struct list_head erase ;
   struct list_head alien ;
   int corr_peb_count ;
   int empty_peb_count ;
   int alien_peb_count ;
   int bad_peb_count ;
   int maybe_bad_peb_count ;
   int vols_found ;
   int highest_vol_id ;
   int is_empty ;
   int min_ec ;
   int max_ec ;
   unsigned long long max_sqnum ;
   int mean_ec ;
   uint64_t ec_sum ;
   int ec_count ;
   struct kmem_cache *aeb_slab_cache ;
};
typedef long long __s64;
enum hrtimer_restart;
struct ubi_mkvol_req {
   __s32 vol_id ;
   __s32 alignment ;
   __s64 bytes ;
   __s8 vol_type ;
   __s8 padding1 ;
   __s16 name_len ;
   __s8 padding2[4U] ;
   char name[128U] ;
};
enum hrtimer_restart;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct ubi_leb_change_req {
   __s32 lnum ;
   __s32 bytes ;
   __s8 dtype ;
   __s8 padding[7U] ;
};
enum hrtimer_restart;
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct nameidata {
   struct path path ;
   struct qstr last ;
   struct path root ;
   struct inode *inode ;
   unsigned int flags ;
   unsigned int seq ;
   unsigned int m_seq ;
   int last_type ;
   unsigned int depth ;
   char *saved_names[9U] ;
};
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
};
struct ubi_volume_info {
   int ubi_num ;
   int vol_id ;
   int size ;
   long long used_bytes ;
   int used_ebs ;
   int vol_type ;
   int corrupted ;
   int upd_marker ;
   int alignment ;
   int usable_leb_size ;
   int name_len ;
   char const *name ;
   dev_t cdev ;
};
struct ubi_device_info {
   int ubi_num ;
   int leb_size ;
   int leb_start ;
   int min_io_size ;
   int max_write_size ;
   int ro_mode ;
   dev_t cdev ;
};
struct ubi_notification {
   struct ubi_device_info di ;
   struct ubi_volume_info vi ;
};
struct mtd_dev_param {
   char name[64U] ;
   int ubi_num ;
   int vid_hdr_offs ;
   int max_beb_per1024 ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef __s64 int64_t;
enum hrtimer_restart;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ubi_attach_req {
   __s32 ubi_num ;
   __s32 mtd_num ;
   __s32 vid_hdr_offset ;
   __s16 max_beb_per1024 ;
   __s8 padding[10U] ;
};
struct ubi_rsvol_req {
   __s64 bytes ;
   __s32 vol_id ;
};
struct __anonstruct_ents_222 {
   __s32 vol_id ;
   __s16 name_len ;
   __s8 padding2[2U] ;
   char name[128U] ;
};
struct ubi_rnvol_req {
   __s32 count ;
   __s8 padding1[12U] ;
   struct __anonstruct_ents_222 ents[32U] ;
};
struct ubi_map_req {
   __s32 lnum ;
   __s8 dtype ;
   __s8 padding[3U] ;
};
struct ubi_set_vol_prop_req {
   __u8 property ;
   __u8 padding[7U] ;
   __u64 value ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct ubi_ltree_entry {
   struct rb_node rb ;
   int vol_id ;
   int lnum ;
   int users ;
   struct rw_semaphore mutex ;
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
struct ubi_ec_hdr {
   __be32 magic ;
   __u8 version ;
   __u8 padding1[3U] ;
   __be64 ec ;
   __be32 vid_hdr_offset ;
   __be32 data_offset ;
   __be32 image_seq ;
   __u8 padding2[32U] ;
   __be32 hdr_crc ;
};
enum hrtimer_restart;
struct ubi_work {
   struct list_head list ;
   int (*func)(struct ubi_device * , struct ubi_work * , int ) ;
   struct ubi_wl_entry *e ;
   int vol_id ;
   int lnum ;
   int torture ;
   int anchor ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct ubi_fm_sb {
   __be32 magic ;
   __u8 version ;
   __u8 padding1[3U] ;
   __be32 data_crc ;
   __be32 used_blocks ;
   __be32 block_loc[32U] ;
   __be32 block_ec[32U] ;
   __be64 sqnum ;
   __u8 padding2[32U] ;
};
struct ubi_fm_hdr {
   __be32 magic ;
   __be32 free_peb_count ;
   __be32 used_peb_count ;
   __be32 scrub_peb_count ;
   __be32 bad_peb_count ;
   __be32 erase_peb_count ;
   __be32 vol_count ;
   __u8 padding[4U] ;
};
struct ubi_fm_scan_pool {
   __be32 magic ;
   __be16 size ;
   __be16 max_size ;
   __be32 pebs[256U] ;
   __be32 padding[4U] ;
};
struct ubi_fm_ec {
   __be32 pnum ;
   __be32 ec ;
};
struct ubi_fm_volhdr {
   __be32 magic ;
   __be32 vol_id ;
   __u8 vol_type ;
   __u8 padding1[3U] ;
   __be32 data_pad ;
   __be32 used_ebs ;
   __be32 last_eb_bytes ;
   __u8 padding2[8U] ;
};
struct ubi_fm_eba {
   __be32 magic ;
   __be32 reserved_pebs ;
   __be32 pnum[0U] ;
};
typedef unsigned long pteval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
enum hrtimer_restart;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
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
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct hd_geometry;
struct block_device_operations;
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
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
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
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
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
union __anonunion_ldv_29844_199 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_29848_200 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_29844_199 ldv_29844 ;
   union __anonunion_ldv_29848_200 ldv_29848 ;
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
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned char bip_owns_buf : 1 ;
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
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_30359_201 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion_ldv_30374_202 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion_ldv_30378_203 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_205 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_206 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_30389_204 {
   struct __anonstruct_elv_205 elv ;
   struct __anonstruct_flush_206 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion_ldv_30359_201 ldv_30359 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion_ldv_30374_202 ldv_30374 ;
   union __anonunion_ldv_30378_203 ldv_30378 ;
   union __anonunion_ldv_30389_204 ldv_30389 ;
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
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
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
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
struct ubiblock_param {
   int ubi_num ;
   int vol_id ;
   char name[64U] ;
};
struct ubiblock {
   struct ubi_volume_desc *desc ;
   int ubi_num ;
   int vol_id ;
   int refcnt ;
   int leb_size ;
   struct gendisk *gd ;
   struct request_queue *rq ;
   struct workqueue_struct *wq ;
   struct work_struct work ;
   struct mutex dev_mutex ;
   spinlock_t queue_lock ;
   struct list_head list ;
};
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14134_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14128_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
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
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void dump_stack(void) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern __kernel_size_t strnlen(char const * , __kernel_size_t ) ;
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
extern struct rb_node *rb_next(struct rb_node const * ) ;
extern struct rb_node *rb_first(struct rb_root const * ) ;
extern void *vzalloc(unsigned long ) ;
void *ldv_vzalloc_19(unsigned long ldv_func_arg1 ) ;
void *ldv_vzalloc_20(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int LDV_IN_INTERRUPT = 1;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern int _cond_resched(void) ;
__inline static int mtd_is_eccerr(int err )
{
  {
  return (err == -74);
}
}
void ubi_dump_vol_info(struct ubi_volume const *vol ) ;
void ubi_dump_vtbl_record(struct ubi_vtbl_record const *r , int idx ) ;
void ubi_dump_av(struct ubi_ainf_volume const *av ) ;
__inline static int ubi_dbg_chk_gen(struct ubi_device const *ubi )
{
  {
  return ((int )ubi->dbg.chk_gen);
}
}
int ubi_add_to_av(struct ubi_device *ubi , struct ubi_attach_info *ai , int pnum ,
                  int ec , struct ubi_vid_hdr const *vid_hdr , int bitflips ) ;
struct ubi_ainf_volume *ubi_find_av(struct ubi_attach_info const *ai , int vol_id ) ;
void ubi_remove_av(struct ubi_attach_info *ai , struct ubi_ainf_volume *av ) ;
struct ubi_ainf_peb *ubi_early_get_peb(struct ubi_device *ubi , struct ubi_attach_info *ai ) ;
int ubi_change_vtbl_record(struct ubi_device *ubi , int idx , struct ubi_vtbl_record *vtbl_rec ) ;
int ubi_vtbl_rename_volumes(struct ubi_device *ubi , struct list_head *rename_list ) ;
int ubi_read_volume_table(struct ubi_device *ubi , struct ubi_attach_info *ai ) ;
int ubi_eba_unmap_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ) ;
int ubi_eba_write_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                      void const *buf , int offset , int len ) ;
int ubi_io_read(struct ubi_device const *ubi , void *buf , int pnum , int offset ,
                int len ) ;
int ubi_io_write(struct ubi_device *ubi , void const *buf , int pnum , int offset ,
                 int len ) ;
int ubi_io_write_vid_hdr(struct ubi_device *ubi , int pnum , struct ubi_vid_hdr *vid_hdr ) ;
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr(struct ubi_device const *ubi ,
                                                       gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
__inline static void ubi_free_vid_hdr(struct ubi_device const *ubi , struct ubi_vid_hdr *vid_hdr )
{
  void *p ;
  {
  p = (void *)vid_hdr;
  if ((unsigned long )p == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  kfree((void const *)(p + - ((unsigned long )ubi->vid_hdr_shift)));
  return;
}
}
__inline static int ubi_io_read_data(struct ubi_device const *ubi , void *buf ,
                                     int pnum , int offset , int len )
{
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = ldv__builtin_expect(offset < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read_data", 964,
           tmp->pid);
    dump_stack();
  } else {
  }
  tmp___1 = ubi_io_read(ubi, buf, pnum, (int )ubi->leb_start + offset, len);
  return (tmp___1);
}
}
__inline static int ubi_io_write_data(struct ubi_device *ubi , void const *buf ,
                                      int pnum , int offset , int len )
{
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = ldv__builtin_expect(offset < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write_data", 976,
           tmp->pid);
    dump_stack();
  } else {
  }
  tmp___1 = ubi_io_write(ubi, buf, pnum, ubi->leb_start + offset, len);
  return (tmp___1);
}
}
__inline static int vol_id2idx(struct ubi_device const *ubi , int vol_id )
{
  {
  if (vol_id > 2147479550) {
    return ((vol_id + -2147479551) + (int )ubi->vtbl_slots);
  } else {
    return (vol_id);
  }
}
}
static void self_vtbl_check(struct ubi_device const *ubi ) ;
static struct ubi_vtbl_record empty_vtbl_record ;
int ubi_change_vtbl_record(struct ubi_device *ubi , int idx , struct ubi_vtbl_record *vtbl_rec )
{
  int i ;
  int err ;
  uint32_t crc ;
  struct ubi_volume *layout_vol ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  size_t __len ;
  void *__ret ;
  {
  tmp___0 = ldv__builtin_expect(idx < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_change_vtbl_record",
           151, tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect(ubi->vtbl_slots <= idx, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_change_vtbl_record",
             151, tmp->pid);
      dump_stack();
    } else {
    }
  }
  tmp___2 = vol_id2idx((struct ubi_device const *)ubi, 2147479551);
  layout_vol = ubi->volumes[tmp___2];
  if ((unsigned long )vtbl_rec == (unsigned long )((struct ubi_vtbl_record *)0)) {
    vtbl_rec = & empty_vtbl_record;
  } else {
    crc = crc32_le(4294967295U, (unsigned char const *)vtbl_rec, 168UL);
    tmp___3 = __fswab32(crc);
    vtbl_rec->crc = tmp___3;
  }
  __len = 172UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)ubi->vtbl + (unsigned long )idx, (void const *)vtbl_rec,
                     __len);
  } else {
    __ret = memcpy((void *)ubi->vtbl + (unsigned long )idx, (void const *)vtbl_rec,
                             __len);
  }
  i = 0;
  goto ldv_26161;
  ldv_26160:
  err = ubi_eba_unmap_leb(ubi, layout_vol, i);
  if (err != 0) {
    return (err);
  } else {
  }
  err = ubi_eba_write_leb(ubi, layout_vol, i, (void const *)ubi->vtbl, 0, ubi->vtbl_size);
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_26161: ;
  if (i <= 1) {
    goto ldv_26160;
  } else {
  }
  self_vtbl_check((struct ubi_device const *)ubi);
  return (0);
}
}
int ubi_vtbl_rename_volumes(struct ubi_device *ubi , struct list_head *rename_list )
{
  int i ;
  int err ;
  struct ubi_rename_entry *re ;
  struct ubi_volume *layout_vol ;
  struct list_head const *__mptr ;
  uint32_t crc ;
  struct ubi_volume *vol ;
  struct ubi_vtbl_record *vtbl_rec ;
  size_t __len ;
  void *__ret ;
  __u16 tmp ;
  size_t __len___0 ;
  void *__ret___0 ;
  __u32 tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  {
  __mptr = (struct list_head const *)rename_list->next;
  re = (struct ubi_rename_entry *)__mptr + 0xffffffffffffff70UL;
  goto ldv_26186;
  ldv_26185:
  vol = (re->desc)->vol;
  vtbl_rec = ubi->vtbl + (unsigned long )vol->vol_id;
  if (re->remove != 0) {
    __len = 172UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)vtbl_rec, (void const *)(& empty_vtbl_record), __len);
    } else {
      __ret = memcpy((void *)vtbl_rec, (void const *)(& empty_vtbl_record),
                               __len);
    }
    goto ldv_26181;
  } else {
  }
  tmp = __fswab16((int )((__u16 )re->new_name_len));
  vtbl_rec->name_len = tmp;
  __len___0 = (size_t )re->new_name_len;
  __ret___0 = memcpy((void *)(& vtbl_rec->name), (void const *)(& re->new_name),
                               __len___0);
  memset((void *)(& vtbl_rec->name) + (unsigned long )re->new_name_len, 0, (size_t )(128 - re->new_name_len));
  crc = crc32_le(4294967295U, (unsigned char const *)vtbl_rec, 168UL);
  tmp___0 = __fswab32(crc);
  vtbl_rec->crc = tmp___0;
  ldv_26181:
  __mptr___0 = (struct list_head const *)re->list.next;
  re = (struct ubi_rename_entry *)__mptr___0 + 0xffffffffffffff70UL;
  ldv_26186: ;
  if ((unsigned long )(& re->list) != (unsigned long )rename_list) {
    goto ldv_26185;
  } else {
  }
  tmp___1 = vol_id2idx((struct ubi_device const *)ubi, 2147479551);
  layout_vol = ubi->volumes[tmp___1];
  i = 0;
  goto ldv_26189;
  ldv_26188:
  err = ubi_eba_unmap_leb(ubi, layout_vol, i);
  if (err != 0) {
    return (err);
  } else {
  }
  err = ubi_eba_write_leb(ubi, layout_vol, i, (void const *)ubi->vtbl, 0, ubi->vtbl_size);
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_26189: ;
  if (i <= 1) {
    goto ldv_26188;
  } else {
  }
  return (0);
}
}
static int vtbl_check(struct ubi_device const *ubi , struct ubi_vtbl_record const *vtbl )
{
  int i ;
  int n ;
  int reserved_pebs ;
  int alignment ;
  int data_pad ;
  int vol_type ;
  int name_len ;
  int upd_marker ;
  int err ;
  uint32_t crc ;
  char const *name ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __kernel_size_t tmp___6 ;
  int len1 ;
  __u16 tmp___7 ;
  int len2 ;
  __u16 tmp___8 ;
  int tmp___9 ;
  {
  i = 0;
  goto ldv_26211;
  ldv_26210:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared",
                245, 0);
  _cond_resched();
  tmp = __fswab32((vtbl + (unsigned long )i)->reserved_pebs);
  reserved_pebs = (int )tmp;
  tmp___0 = __fswab32((vtbl + (unsigned long )i)->alignment);
  alignment = (int )tmp___0;
  tmp___1 = __fswab32((vtbl + (unsigned long )i)->data_pad);
  data_pad = (int )tmp___1;
  upd_marker = (int )(vtbl + (unsigned long )i)->upd_marker;
  vol_type = (int )(vtbl + (unsigned long )i)->vol_type;
  tmp___2 = __fswab16((int )(vtbl + (unsigned long )i)->name_len);
  name_len = (int )tmp___2;
  name = (char const *)(& (vtbl + (unsigned long )i)->name);
  crc = crc32_le(4294967295U, (unsigned char const *)vtbl + (unsigned long )i, 168UL);
  tmp___4 = __fswab32((vtbl + (unsigned long )i)->crc);
  if (tmp___4 != crc) {
    tmp___3 = __fswab32((vtbl + (unsigned long )i)->crc);
    printk("\vUBI error: %s: bad CRC at record %u: %#08x, not %#08x\n", "vtbl_check",
           i, crc, tmp___3);
    ubi_dump_vtbl_record(vtbl + (unsigned long )i, i);
    return (1);
  } else {
  }
  if (reserved_pebs == 0) {
    tmp___5 = memcmp((void const *)vtbl + (unsigned long )i, (void const *)(& empty_vtbl_record),
                     172UL);
    if (tmp___5 != 0) {
      err = 2;
      goto bad;
    } else {
    }
    goto ldv_26209;
  } else {
  }
  if (((reserved_pebs < 0 || alignment < 0) || data_pad < 0) || name_len < 0) {
    err = 3;
    goto bad;
  } else {
  }
  if ((int )ubi->leb_size < alignment || alignment == 0) {
    err = 4;
    goto bad;
  } else {
  }
  n = ((int )ubi->min_io_size + -1) & alignment;
  if (alignment != 1 && n != 0) {
    err = 5;
    goto bad;
  } else {
  }
  n = (int )ubi->leb_size % alignment;
  if (data_pad != n) {
    printk("\vUBI error: %s: bad data_pad, has to be %d\n", "vtbl_check", n);
    err = 6;
    goto bad;
  } else {
  }
  if (vol_type != 1 && vol_type != 2) {
    err = 7;
    goto bad;
  } else {
  }
  if (upd_marker != 0 && upd_marker != 1) {
    err = 8;
    goto bad;
  } else {
  }
  if ((int )ubi->good_peb_count < reserved_pebs) {
    printk("\vUBI error: %s: too large reserved_pebs %d, good PEBs %d\n", "vtbl_check",
           reserved_pebs, ubi->good_peb_count);
    err = 9;
    goto bad;
  } else {
  }
  if (name_len > 127) {
    err = 10;
    goto bad;
  } else {
  }
  if ((int )((signed char )*name) == 0) {
    err = 11;
    goto bad;
  } else {
  }
  tmp___6 = strnlen(name, (__kernel_size_t )(name_len + 1));
  if ((__kernel_size_t )name_len != tmp___6) {
    err = 12;
    goto bad;
  } else {
  }
  ldv_26209:
  i = i + 1;
  ldv_26211: ;
  if ((int )ubi->vtbl_slots > i) {
    goto ldv_26210;
  } else {
  }
  i = 0;
  goto ldv_26219;
  ldv_26218:
  n = i + 1;
  goto ldv_26216;
  ldv_26215:
  tmp___7 = __fswab16((int )(vtbl + (unsigned long )i)->name_len);
  len1 = (int )tmp___7;
  tmp___8 = __fswab16((int )(vtbl + (unsigned long )n)->name_len);
  len2 = (int )tmp___8;
  if (len1 > 0 && len1 == len2) {
    tmp___9 = strncmp((char const *)(& (vtbl + (unsigned long )i)->name), (char const *)(& (vtbl + (unsigned long )n)->name),
                      (__kernel_size_t )len1);
    if (tmp___9 == 0) {
      printk("\vUBI error: %s: volumes %d and %d have the same name \"%s\"\n", "vtbl_check",
             i, n, (__u8 const *)(& (vtbl + (unsigned long )i)->name));
      ubi_dump_vtbl_record(vtbl + (unsigned long )i, i);
      ubi_dump_vtbl_record(vtbl + (unsigned long )n, n);
      return (-22);
    } else {
    }
  } else {
  }
  n = n + 1;
  ldv_26216: ;
  if ((int )ubi->vtbl_slots > n) {
    goto ldv_26215;
  } else {
  }
  i = i + 1;
  ldv_26219: ;
  if ((int )ubi->vtbl_slots + -1 > i) {
    goto ldv_26218;
  } else {
  }
  return (0);
  bad:
  printk("\vUBI error: %s: volume table check failed: record %d, error %d\n", "vtbl_check",
         i, err);
  ubi_dump_vtbl_record(vtbl + (unsigned long )i, i);
  return (-22);
}
}
static int create_vtbl(struct ubi_device *ubi , struct ubi_attach_info *ai , int copy ,
                       void *vtbl )
{
  int err ;
  int tries ;
  struct ubi_vid_hdr *vid_hdr ;
  struct ubi_ainf_peb *new_aeb ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  __be32 tmp___3 ;
  __be32 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  {
  tries = 0;
  descriptor.modname = "ubi";
  descriptor.function = "create_vtbl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): create volume table (copy #%d)\n";
  descriptor.lineno = 371U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): create volume table (copy #%d)\n",
                       tmp->pid, copy + 1);
  } else {
  }
  vid_hdr = ubi_zalloc_vid_hdr((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  retry:
  new_aeb = ubi_early_get_peb(ubi, ai);
  tmp___2 = IS_ERR((void const *)new_aeb);
  if ((int )tmp___2) {
    tmp___1 = PTR_ERR((void const *)new_aeb);
    err = (int )tmp___1;
    goto out_free;
  } else {
  }
  vid_hdr->vol_type = 1U;
  vid_hdr->vol_id = 4293918591U;
  vid_hdr->compat = 5U;
  tmp___4 = 0U;
  vid_hdr->data_pad = tmp___4;
  tmp___3 = tmp___4;
  vid_hdr->used_ebs = tmp___3;
  vid_hdr->data_size = tmp___3;
  tmp___5 = __fswab32((__u32 )copy);
  vid_hdr->lnum = tmp___5;
  ai->max_sqnum = ai->max_sqnum + 1ULL;
  tmp___6 = __fswab64(ai->max_sqnum);
  vid_hdr->sqnum = tmp___6;
  err = ubi_io_write_vid_hdr(ubi, new_aeb->pnum, vid_hdr);
  if (err != 0) {
    goto write_error;
  } else {
  }
  err = ubi_io_write_data(ubi, (void const *)vtbl, new_aeb->pnum, 0, ubi->vtbl_size);
  if (err != 0) {
    goto write_error;
  } else {
  }
  err = ubi_add_to_av(ubi, ai, new_aeb->pnum, new_aeb->ec, (struct ubi_vid_hdr const *)vid_hdr,
                      0);
  kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (err);
  write_error: ;
  if (err == -5) {
    tries = tries + 1;
    if (tries <= 5) {
      list_add(& new_aeb->u.list, & ai->erase);
      goto retry;
    } else {
    }
  } else {
  }
  kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
  out_free:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (err);
}
}
static struct ubi_vtbl_record *process_lvol(struct ubi_device *ubi , struct ubi_attach_info *ai ,
                                            struct ubi_ainf_volume *av )
{
  int err ;
  struct rb_node *rb ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_vtbl_record *leb[2U] ;
  int leb_corrupted[2U] ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct rb_node const *__mptr ;
  void *tmp___1 ;
  int tmp___2 ;
  struct rb_node const *__mptr___0 ;
  void *tmp___3 ;
  {
  leb[0] = (struct ubi_vtbl_record *)0;
  leb[1] = (struct ubi_vtbl_record *)0;
  leb_corrupted[0] = 1;
  leb_corrupted[1] = 1;
  descriptor.modname = "ubi";
  descriptor.function = "process_lvol";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): check layout volume\n";
  descriptor.lineno = 472U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): check layout volume\n",
                       tmp->pid);
  } else {
  }
  rb = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26254;
  ldv_26253:
  tmp___1 = ldv_vzalloc_19((unsigned long )ubi->vtbl_size);
  leb[aeb->lnum] = (struct ubi_vtbl_record *)tmp___1;
  if ((unsigned long )leb[aeb->lnum] == (unsigned long )((struct ubi_vtbl_record *)0)) {
    err = -12;
    goto out_free;
  } else {
  }
  err = ubi_io_read_data((struct ubi_device const *)ubi, (void *)leb[aeb->lnum],
                         aeb->pnum, 0, ubi->vtbl_size);
  if (err == 5) {
    aeb->scrub = 1U;
  } else {
    tmp___2 = mtd_is_eccerr(err);
    if (tmp___2 != 0) {
      aeb->scrub = 1U;
    } else
    if (err != 0) {
      goto out_free;
    } else {
    }
  }
  rb = rb_next((struct rb_node const *)rb);
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26254: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26253;
  } else {
  }
  err = -22;
  if ((unsigned long )leb[0] != (unsigned long )((struct ubi_vtbl_record *)0)) {
    leb_corrupted[0] = vtbl_check((struct ubi_device const *)ubi, (struct ubi_vtbl_record const *)leb[0]);
    if (leb_corrupted[0] < 0) {
      goto out_free;
    } else {
    }
  } else {
  }
  if (leb_corrupted[0] == 0) {
    if ((unsigned long )leb[1] != (unsigned long )((struct ubi_vtbl_record *)0)) {
      leb_corrupted[1] = memcmp((void const *)leb[0], (void const *)leb[1], (size_t )ubi->vtbl_size);
    } else {
    }
    if (leb_corrupted[1] != 0) {
      printk("\fUBI warning: %s: volume table copy #2 is corrupted\n", "process_lvol");
      err = create_vtbl(ubi, ai, 1, (void *)leb[0]);
      if (err != 0) {
        goto out_free;
      } else {
      }
      printk("\rUBI: volume table was restored\n");
    } else {
    }
    vfree((void const *)leb[1]);
    return (leb[0]);
  } else {
    if ((unsigned long )leb[1] != (unsigned long )((struct ubi_vtbl_record *)0)) {
      leb_corrupted[1] = vtbl_check((struct ubi_device const *)ubi, (struct ubi_vtbl_record const *)leb[1]);
      if (leb_corrupted[1] < 0) {
        goto out_free;
      } else {
      }
    } else {
    }
    if (leb_corrupted[1] != 0) {
      printk("\vUBI error: %s: both volume tables are corrupted\n", "process_lvol");
      goto out_free;
    } else {
    }
    printk("\fUBI warning: %s: volume table copy #1 is corrupted\n", "process_lvol");
    err = create_vtbl(ubi, ai, 0, (void *)leb[1]);
    if (err != 0) {
      goto out_free;
    } else {
    }
    printk("\rUBI: volume table was restored\n");
    vfree((void const *)leb[0]);
    return (leb[1]);
  }
  out_free:
  vfree((void const *)leb[0]);
  vfree((void const *)leb[1]);
  tmp___3 = ERR_PTR((long )err);
  return ((struct ubi_vtbl_record *)tmp___3);
}
}
static struct ubi_vtbl_record *create_empty_lvol(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int i ;
  struct ubi_vtbl_record *vtbl ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  int err ;
  void *tmp___1 ;
  {
  tmp = ldv_vzalloc_20((unsigned long )ubi->vtbl_size);
  vtbl = (struct ubi_vtbl_record *)tmp;
  if ((unsigned long )vtbl == (unsigned long )((struct ubi_vtbl_record *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ubi_vtbl_record *)tmp___0);
  } else {
  }
  i = 0;
  goto ldv_26266;
  ldv_26265:
  __len = 172UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)vtbl + (unsigned long )i, (void const *)(& empty_vtbl_record),
                     __len);
  } else {
    __ret = memcpy((void *)vtbl + (unsigned long )i, (void const *)(& empty_vtbl_record),
                             __len);
  }
  i = i + 1;
  ldv_26266: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26265;
  } else {
  }
  i = 0;
  goto ldv_26270;
  ldv_26269:
  err = create_vtbl(ubi, ai, i, (void *)vtbl);
  if (err != 0) {
    vfree((void const *)vtbl);
    tmp___1 = ERR_PTR((long )err);
    return ((struct ubi_vtbl_record *)tmp___1);
  } else {
  }
  i = i + 1;
  ldv_26270: ;
  if (i <= 1) {
    goto ldv_26269;
  } else {
  }
  return (vtbl);
}
}
static int init_volumes(struct ubi_device *ubi , struct ubi_attach_info const *ai ,
                        struct ubi_vtbl_record const *vtbl )
{
  int i ;
  int reserved_pebs ;
  struct ubi_ainf_volume *av ;
  struct ubi_volume *vol ;
  __u32 tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u16 tmp___4 ;
  size_t __len ;
  void *__ret ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  void *tmp___7 ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  {
  reserved_pebs = 0;
  i = 0;
  goto ldv_26288;
  ldv_26287:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared",
                605, 0);
  _cond_resched();
  tmp = __fswab32((vtbl + (unsigned long )i)->reserved_pebs);
  if (tmp == 0U) {
    goto ldv_26282;
  } else {
  }
  tmp___0 = kzalloc(2000UL, 208U);
  vol = (struct ubi_volume *)tmp___0;
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = __fswab32((vtbl + (unsigned long )i)->reserved_pebs);
  vol->reserved_pebs = (int )tmp___1;
  tmp___2 = __fswab32((vtbl + (unsigned long )i)->alignment);
  vol->alignment = (int )tmp___2;
  tmp___3 = __fswab32((vtbl + (unsigned long )i)->data_pad);
  vol->data_pad = (int )tmp___3;
  vol->upd_marker = (unsigned char )(vtbl + (unsigned long )i)->upd_marker;
  vol->vol_type = (unsigned int )((unsigned char )(vtbl + (unsigned long )i)->vol_type) == 1U ? 3 : 4;
  tmp___4 = __fswab16((int )(vtbl + (unsigned long )i)->name_len);
  vol->name_len = (int )tmp___4;
  vol->usable_leb_size = ubi->leb_size - vol->data_pad;
  __len = (size_t )vol->name_len;
  __ret = memcpy((void *)(& vol->name), (void const *)(& (vtbl + (unsigned long )i)->name),
                           __len);
  vol->name[vol->name_len] = 0;
  vol->vol_id = i;
  if ((int )(vtbl + (unsigned long )i)->flags & 1) {
    if (ubi->autoresize_vol_id != -1) {
      printk("\vUBI error: %s: more than one auto-resize volume (%d and %d)\n", "init_volumes",
             ubi->autoresize_vol_id, i);
      kfree((void const *)vol);
      return (-22);
    } else {
    }
    ubi->autoresize_vol_id = i;
  } else {
  }
  tmp___6 = ldv__builtin_expect((unsigned long )ubi->volumes[i] != (unsigned long )((struct ubi_volume *)0),
                             0L);
  if (tmp___6 != 0L) {
    tmp___5 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "init_volumes", 638, tmp___5->pid);
    dump_stack();
  } else {
  }
  ubi->volumes[i] = vol;
  ubi->vol_count = ubi->vol_count + 1;
  vol->ubi = ubi;
  reserved_pebs = vol->reserved_pebs + reserved_pebs;
  if (vol->vol_type == 3) {
    vol->used_ebs = vol->reserved_pebs;
    vol->last_eb_bytes = vol->usable_leb_size;
    vol->used_bytes = (long long )vol->used_ebs * (long long )vol->usable_leb_size;
    goto ldv_26282;
  } else {
  }
  av = ubi_find_av(ai, i);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto ldv_26282;
  } else {
  }
  if (av->leb_count != av->used_ebs) {
    printk("\fUBI warning: %s: static volume %d misses %d LEBs - corrupted\n", "init_volumes",
           av->vol_id, av->used_ebs - av->leb_count);
    vol->corrupted = 1U;
    goto ldv_26282;
  } else {
  }
  vol->used_ebs = av->used_ebs;
  vol->used_bytes = (long long )(vol->used_ebs + -1) * (long long )vol->usable_leb_size;
  vol->used_bytes = vol->used_bytes + (long long )av->last_data_size;
  vol->last_eb_bytes = av->last_data_size;
  ldv_26282:
  i = i + 1;
  ldv_26288: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26287;
  } else {
  }
  tmp___7 = kzalloc(2000UL, 208U);
  vol = (struct ubi_volume *)tmp___7;
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    return (-12);
  } else {
  }
  vol->reserved_pebs = 2;
  vol->alignment = 1;
  vol->vol_type = 3;
  vol->name_len = 13;
  __len___0 = (size_t )(vol->name_len + 1);
  __ret___0 = memcpy((void *)(& vol->name), (void const *)"layout volume",
                               __len___0);
  vol->usable_leb_size = ubi->leb_size;
  vol->used_ebs = vol->reserved_pebs;
  vol->last_eb_bytes = vol->reserved_pebs;
  vol->used_bytes = (long long )vol->used_ebs * (long long )(ubi->leb_size - vol->data_pad);
  vol->vol_id = 2147479551;
  vol->ref_count = 1;
  tmp___9 = ldv__builtin_expect((unsigned long )ubi->volumes[i] != (unsigned long )((struct ubi_volume *)0),
                             0L);
  if (tmp___9 != 0L) {
    tmp___8 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "init_volumes", 706, tmp___8->pid);
    dump_stack();
  } else {
  }
  tmp___10 = vol_id2idx((struct ubi_device const *)ubi, vol->vol_id);
  ubi->volumes[tmp___10] = vol;
  reserved_pebs = vol->reserved_pebs + reserved_pebs;
  ubi->vol_count = ubi->vol_count + 1;
  vol->ubi = ubi;
  if (ubi->avail_pebs < reserved_pebs) {
    printk("\vUBI error: %s: not enough PEBs, required %d, available %d\n", "init_volumes",
           reserved_pebs, ubi->avail_pebs);
    if (ubi->corr_peb_count != 0) {
      printk("\vUBI error: %s: %d PEBs are corrupted and not used\n", "init_volumes",
             ubi->corr_peb_count);
    } else {
    }
  } else {
  }
  ubi->rsvd_pebs = ubi->rsvd_pebs + reserved_pebs;
  ubi->avail_pebs = ubi->avail_pebs - reserved_pebs;
  return (0);
}
}
static int check_av(struct ubi_volume const *vol , struct ubi_ainf_volume const *av )
{
  int err ;
  {
  if ((int )av->highest_lnum >= (int )vol->reserved_pebs) {
    err = 1;
    goto bad;
  } else {
  }
  if ((int )av->leb_count > (int )vol->reserved_pebs) {
    err = 2;
    goto bad;
  } else {
  }
  if ((int )av->vol_type != (int )vol->vol_type) {
    err = 3;
    goto bad;
  } else {
  }
  if ((int )av->used_ebs > (int )vol->reserved_pebs) {
    err = 4;
    goto bad;
  } else {
  }
  if ((int )av->data_pad != (int )vol->data_pad) {
    err = 5;
    goto bad;
  } else {
  }
  return (0);
  bad:
  printk("\vUBI error: %s: bad attaching information, error %d\n", "check_av", err);
  ubi_dump_av(av);
  ubi_dump_vol_info(vol);
  return (-22);
}
}
static int check_attaching_info(struct ubi_device const *ubi , struct ubi_attach_info *ai )
{
  int err ;
  int i ;
  struct ubi_ainf_volume *av ;
  struct ubi_volume *vol ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  if (ai->vols_found > (int )ubi->vtbl_slots + 1) {
    printk("\vUBI error: %s: found %d volumes while attaching, maximum is %d + %d\n",
           "check_attaching_info", ai->vols_found, 1, ubi->vtbl_slots);
    return (-22);
  } else {
  }
  if (ai->highest_vol_id >= (int )ubi->vtbl_slots + 1 && ai->highest_vol_id <= 2147479550) {
    printk("\vUBI error: %s: too large volume ID %d found\n", "check_attaching_info",
           ai->highest_vol_id);
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_26312;
  ldv_26311:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared",
                797, 0);
  _cond_resched();
  av = ubi_find_av((struct ubi_attach_info const *)ai, i);
  vol = ubi->volumes[i];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    if ((unsigned long )av != (unsigned long )((struct ubi_ainf_volume *)0)) {
      ubi_remove_av(ai, av);
    } else {
    }
    goto ldv_26310;
  } else {
  }
  if (vol->reserved_pebs == 0) {
    tmp___0 = ldv__builtin_expect((int )ubi->vtbl_slots <= i, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "check_attaching_info",
             808, tmp->pid);
      dump_stack();
    } else {
    }
    if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
      goto ldv_26310;
    } else {
    }
    printk("\rUBI: finish volume %d removal\n", av->vol_id);
    ubi_remove_av(ai, av);
  } else
  if ((unsigned long )av != (unsigned long )((struct ubi_ainf_volume *)0)) {
    err = check_av((struct ubi_volume const *)vol, (struct ubi_ainf_volume const *)av);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  ldv_26310:
  i = i + 1;
  ldv_26312: ;
  if ((int )ubi->vtbl_slots + 1 > i) {
    goto ldv_26311;
  } else {
  }
  return (0);
}
}
int ubi_read_volume_table(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int i ;
  int err ;
  struct ubi_ainf_volume *av ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  empty_vtbl_record.crc = 1807947505U;
  ubi->vtbl_slots = (int )((unsigned long )ubi->leb_size / 172UL);
  if (ubi->vtbl_slots > 128) {
    ubi->vtbl_slots = 128;
  } else {
  }
  ubi->vtbl_size = (int )((unsigned int )ubi->vtbl_slots * 172U);
  ubi->vtbl_size = (ubi->vtbl_size + (ubi->min_io_size + -1)) & - ubi->min_io_size;
  av = ubi_find_av((struct ubi_attach_info const *)ai, 2147479551);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    if (ai->is_empty != 0) {
      ubi->vtbl = create_empty_lvol(ubi, ai);
      tmp___0 = IS_ERR((void const *)ubi->vtbl);
      if ((int )tmp___0) {
        tmp = PTR_ERR((void const *)ubi->vtbl);
        return ((int )tmp);
      } else {
      }
    } else {
      printk("\vUBI error: %s: the layout volume was not found\n", "ubi_read_volume_table");
      return (-22);
    }
  } else {
    if (av->leb_count > 2) {
      printk("\vUBI error: %s: too many LEBs (%d) in layout volume\n", "ubi_read_volume_table",
             av->leb_count);
      return (-22);
    } else {
    }
    ubi->vtbl = process_lvol(ubi, ai, av);
    tmp___2 = IS_ERR((void const *)ubi->vtbl);
    if ((int )tmp___2) {
      tmp___1 = PTR_ERR((void const *)ubi->vtbl);
      return ((int )tmp___1);
    } else {
    }
  }
  ubi->avail_pebs = ubi->good_peb_count - ubi->corr_peb_count;
  err = init_volumes(ubi, (struct ubi_attach_info const *)ai, (struct ubi_vtbl_record const *)ubi->vtbl);
  if (err != 0) {
    goto out_free;
  } else {
  }
  err = check_attaching_info((struct ubi_device const *)ubi, ai);
  if (err != 0) {
    goto out_free;
  } else {
  }
  return (0);
  out_free:
  vfree((void const *)ubi->vtbl);
  i = 0;
  goto ldv_26324;
  ldv_26323:
  kfree((void const *)ubi->volumes[i]);
  ubi->volumes[i] = (struct ubi_volume *)0;
  i = i + 1;
  ldv_26324: ;
  if (ubi->vtbl_slots + 1 > i) {
    goto ldv_26323;
  } else {
  }
  return (err);
}
}
static void self_vtbl_check(struct ubi_device const *ubi )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = ubi_dbg_chk_gen(ubi);
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = vtbl_check(ubi, (struct ubi_vtbl_record const *)ubi->vtbl);
  if (tmp___0 != 0) {
    printk("\vUBI error: %s: self-check failed\n", "self_vtbl_check");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vtbl.o.c.prepared"),
                         "i" (930), "i" (12UL));
    ldv_26330: ;
    goto ldv_26330;
  } else {
  }
  return;
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void *ldv_vzalloc_19(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vzalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void *ldv_vzalloc_20(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vzalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern int sprintf(char * , char const * , ...) ;
extern int strcmp(char const * , char const * ) ;
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static u64 div_u64(u64 dividend , u32 divisor )
{
  u32 remainder ;
  u64 tmp ;
  {
  tmp = div_u64_rem(dividend, divisor, & remainder);
  return (tmp);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_24(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_28(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_kmem_cache_alloc_39(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_35(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_21 ;
int ldv_state_variable_25 ;
int ldv_state_variable_26 ;
int ldv_state_variable_28 ;
int ldv_state_variable_22 ;
int ldv_state_variable_27 ;
int ldv_state_variable_24 ;
int ldv_state_variable_7 ;
int ldv_state_variable_23 ;
void ldv_file_operations_7(void) ;
extern void cdev_init(struct cdev * , struct file_operations const * ) ;
void ldv_cdev_init_42(struct cdev *cdev , struct file_operations const *fops ) ;
void ldv_cdev_init_45(struct cdev *cdev , struct file_operations const *fops ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
void ldv_cdev_del_43(struct cdev *p ) ;
void ldv_cdev_del_44(struct cdev *p ) ;
void ldv_cdev_del_46(struct cdev *p ) ;
void ldv_cdev_del_47(struct cdev *p ) ;
void ldv_cdev_del_48(struct cdev *p ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
extern int device_register(struct device * ) ;
extern void device_unregister(struct device * ) ;
extern struct device *get_device(struct device * ) ;
extern void put_device(struct device * ) ;
struct file_operations const ubi_vol_cdev_operations ;
struct class *ubi_class ;
int ubi_create_volume(struct ubi_device *ubi , struct ubi_mkvol_req *req ) ;
int ubi_remove_volume(struct ubi_volume_desc *desc , int no_vtbl ) ;
int ubi_resize_volume(struct ubi_volume_desc *desc , int reserved_pebs ) ;
int ubi_rename_volumes(struct ubi_device *ubi , struct list_head *rename_list ) ;
int ubi_add_volume(struct ubi_device *ubi , struct ubi_volume *vol ) ;
void ubi_free_volume(struct ubi_device *ubi , struct ubi_volume *vol ) ;
void ubi_update_reserved(struct ubi_device *ubi ) ;
int ubi_wl_flush(struct ubi_device *ubi , int vol_id , int lnum ) ;
struct ubi_device *ubi_get_device(int ubi_num ) ;
void ubi_put_device(struct ubi_device *ubi ) ;
int ubi_volume_notify(struct ubi_device *ubi , struct ubi_volume *vol , int ntype ) ;
static int self_check_volumes(struct ubi_device *ubi ) ;
static ssize_t vol_attribute_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf ) ;
static struct device_attribute attr_vol_reserved_ebs = {{"reserved_ebs", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute attr_vol_type = {{"type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & vol_attribute_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute attr_vol_name = {{"name", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & vol_attribute_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute attr_vol_corrupted = {{"corrupted", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute attr_vol_alignment = {{"alignment", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute attr_vol_usable_eb_size = {{"usable_eb_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute attr_vol_data_bytes = {{"data_bytes", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute attr_vol_upd_marker = {{"upd_marker", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vol_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static ssize_t vol_attribute_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  int ret ;
  struct ubi_volume *vol ;
  struct device const *__mptr ;
  struct ubi_device *ubi ;
  char const *tp ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  vol = (struct ubi_volume *)__mptr;
  ubi = ubi_get_device((vol->ubi)->ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19L);
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if ((unsigned long )ubi->volumes[vol->vol_id] == (unsigned long )((struct ubi_volume *)0)) {
    spin_unlock(& ubi->volumes_lock);
    ubi_put_device(ubi);
    return (-19L);
  } else {
  }
  vol->ref_count = vol->ref_count + 1;
  spin_unlock(& ubi->volumes_lock);
  if ((unsigned long )attr == (unsigned long )(& attr_vol_reserved_ebs)) {
    ret = sprintf(buf, "%d\n", vol->reserved_pebs);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_type)) {
    if (vol->vol_type == 3) {
      tp = "dynamic";
    } else {
      tp = "static";
    }
    ret = sprintf(buf, "%s\n", tp);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_name)) {
    ret = sprintf(buf, "%s\n", (char *)(& vol->name));
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_corrupted)) {
    ret = sprintf(buf, "%d\n", (int )vol->corrupted);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_alignment)) {
    ret = sprintf(buf, "%d\n", vol->alignment);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_usable_eb_size)) {
    ret = sprintf(buf, "%d\n", vol->usable_leb_size);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_data_bytes)) {
    ret = sprintf(buf, "%lld\n", vol->used_bytes);
  } else
  if ((unsigned long )attr == (unsigned long )(& attr_vol_upd_marker)) {
    ret = sprintf(buf, "%d\n", (int )vol->upd_marker);
  } else {
    ret = -22;
  }
  spin_lock(& ubi->volumes_lock);
  vol->ref_count = vol->ref_count + -1;
  tmp___0 = ldv__builtin_expect(vol->ref_count < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "vol_attribute_show", 181,
           tmp->pid);
    dump_stack();
  } else {
  }
  spin_unlock(& ubi->volumes_lock);
  ubi_put_device(ubi);
  return ((ssize_t )ret);
}
}
static void vol_release(struct device *dev )
{
  struct ubi_volume *vol ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  vol = (struct ubi_volume *)__mptr;
  kfree((void const *)vol->eba_tbl);
  kfree((void const *)vol);
  return;
}
}
static int volume_sysfs_init(struct ubi_device *ubi , struct ubi_volume *vol )
{
  int err ;
  {
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_reserved_ebs));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_type));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_name));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_corrupted));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_alignment));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_usable_eb_size));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_data_bytes));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& vol->dev, (struct device_attribute const *)(& attr_vol_upd_marker));
  return (err);
}
}
static void volume_sysfs_close(struct ubi_volume *vol )
{
  {
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_upd_marker));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_data_bytes));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_usable_eb_size));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_alignment));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_corrupted));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_name));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_type));
  device_remove_file(& vol->dev, (struct device_attribute const *)(& attr_vol_reserved_ebs));
  device_unregister(& vol->dev);
  return;
}
}
int ubi_create_volume(struct ubi_device *ubi , struct ubi_mkvol_req *req )
{
  int i ;
  int err ;
  int vol_id ;
  int do_free ;
  struct ubi_volume *vol ;
  struct ubi_vtbl_record vtbl_rec ;
  dev_t dev ;
  void *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  u64 tmp___5 ;
  size_t __len ;
  void *__ret ;
  void *tmp___6 ;
  u64 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u16 tmp___11 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  vol_id = req->vol_id;
  do_free = 1;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  tmp = kzalloc(2000UL, 208U);
  vol = (struct ubi_volume *)tmp;
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    return (-12);
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if (vol_id == -1) {
    descriptor.modname = "ubi";
    descriptor.function = "ubi_create_volume";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
    descriptor.format = "UBI DBG gen (pid %d): search for vacant volume ID\n";
    descriptor.lineno = 282U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): search for vacant volume ID\n",
                         tmp___0->pid);
    } else {
    }
    i = 0;
    goto ldv_26259;
    ldv_26258: ;
    if ((unsigned long )ubi->volumes[i] == (unsigned long )((struct ubi_volume *)0)) {
      vol_id = i;
      goto ldv_26257;
    } else {
    }
    i = i + 1;
    ldv_26259: ;
    if (ubi->vtbl_slots > i) {
      goto ldv_26258;
    } else {
    }
    ldv_26257: ;
    if (vol_id == -1) {
      printk("\vUBI error: %s: out of volume IDs\n", "ubi_create_volume");
      err = -23;
      goto out_unlock;
    } else {
    }
    req->vol_id = vol_id;
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_create_volume";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
  descriptor___0.format = "UBI DBG gen (pid %d): create device %d, volume %d, %llu bytes, type %d, name %s\n";
  descriptor___0.lineno = 299U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): create device %d, volume %d, %llu bytes, type %d, name %s\n",
                       tmp___2->pid, ubi->ubi_num, vol_id, (unsigned long long )req->bytes,
                       (int )req->vol_type, (char *)(& req->name));
  } else {
  }
  err = -17;
  if ((unsigned long )ubi->volumes[vol_id] != (unsigned long )((struct ubi_volume *)0)) {
    printk("\vUBI error: %s: volume %d already exists\n", "ubi_create_volume", vol_id);
    goto out_unlock;
  } else {
  }
  i = 0;
  goto ldv_26263;
  ldv_26262: ;
  if ((unsigned long )ubi->volumes[i] != (unsigned long )((struct ubi_volume *)0) && (ubi->volumes[i])->name_len == (int )req->name_len) {
    tmp___4 = strcmp((char const *)(& (ubi->volumes[i])->name), (char const *)(& req->name));
    if (tmp___4 == 0) {
      printk("\vUBI error: %s: volume \"%s\" exists (ID %d)\n", "ubi_create_volume",
             (char *)(& req->name), i);
      goto out_unlock;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_26263: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26262;
  } else {
  }
  vol->usable_leb_size = ubi->leb_size - ubi->leb_size % req->alignment;
  tmp___5 = div_u64((u64 )((req->bytes + (__s64 )vol->usable_leb_size) + -1LL), (u32 )vol->usable_leb_size);
  vol->reserved_pebs = (int )((unsigned int )vol->reserved_pebs + (unsigned int )tmp___5);
  if (vol->reserved_pebs > ubi->avail_pebs) {
    printk("\vUBI error: %s: not enough PEBs, only %d available\n", "ubi_create_volume",
           ubi->avail_pebs);
    if (ubi->corr_peb_count != 0) {
      printk("\vUBI error: %s: %d PEBs are corrupted and not used\n", "ubi_create_volume",
             ubi->corr_peb_count);
    } else {
    }
    err = -28;
    goto out_unlock;
  } else {
  }
  ubi->avail_pebs = ubi->avail_pebs - vol->reserved_pebs;
  ubi->rsvd_pebs = ubi->rsvd_pebs + vol->reserved_pebs;
  spin_unlock(& ubi->volumes_lock);
  vol->vol_id = vol_id;
  vol->alignment = req->alignment;
  vol->data_pad = ubi->leb_size % vol->alignment;
  vol->vol_type = (int )req->vol_type;
  vol->name_len = (int )req->name_len;
  __len = (size_t )vol->name_len;
  __ret = memcpy((void *)(& vol->name), (void const *)(& req->name), __len);
  vol->ubi = ubi;
  err = ubi_wl_flush(ubi, vol_id, -1);
  if (err != 0) {
    goto out_acc;
  } else {
  }
  tmp___6 = kmalloc((unsigned long )vol->reserved_pebs * 4UL, 208U);
  vol->eba_tbl = (int *)tmp___6;
  if ((unsigned long )vol->eba_tbl == (unsigned long )((int *)0)) {
    err = -12;
    goto out_acc;
  } else {
  }
  i = 0;
  goto ldv_26270;
  ldv_26269:
  *(vol->eba_tbl + (unsigned long )i) = -1;
  i = i + 1;
  ldv_26270: ;
  if (vol->reserved_pebs > i) {
    goto ldv_26269;
  } else {
  }
  if (vol->vol_type == 3) {
    vol->used_ebs = vol->reserved_pebs;
    vol->last_eb_bytes = vol->usable_leb_size;
    vol->used_bytes = (long long )vol->used_ebs * (long long )vol->usable_leb_size;
  } else {
    tmp___7 = div_u64_rem((u64 )vol->used_bytes, (u32 )vol->usable_leb_size, (u32 *)(& vol->last_eb_bytes));
    vol->used_ebs = (int )tmp___7;
    if (vol->last_eb_bytes != 0) {
      vol->used_ebs = vol->used_ebs + 1;
    } else {
      vol->last_eb_bytes = vol->usable_leb_size;
    }
  }
  ldv_cdev_init_42(& vol->cdev, & ubi_vol_cdev_operations);
  vol->cdev.owner = & __this_module;
  dev = (ubi->cdev.dev & 4293918720U) | (dev_t )(vol_id + 1);
  err = cdev_add(& vol->cdev, dev, 1U);
  if (err != 0) {
    printk("\vUBI error: %s: cannot add character device\n", "ubi_create_volume");
    goto out_mapping;
  } else {
  }
  vol->dev.release = & vol_release;
  vol->dev.parent = & ubi->dev;
  vol->dev.devt = dev;
  vol->dev.class = ubi_class;
  dev_set_name(& vol->dev, "%s_%d", (char *)(& ubi->ubi_name), vol->vol_id);
  err = device_register(& vol->dev);
  if (err != 0) {
    printk("\vUBI error: %s: cannot register device\n", "ubi_create_volume");
    goto out_cdev;
  } else {
  }
  err = volume_sysfs_init(ubi, vol);
  if (err != 0) {
    goto out_sysfs;
  } else {
  }
  memset((void *)(& vtbl_rec), 0, 172UL);
  tmp___8 = __fswab32((__u32 )vol->reserved_pebs);
  vtbl_rec.reserved_pebs = tmp___8;
  tmp___9 = __fswab32((__u32 )vol->alignment);
  vtbl_rec.alignment = tmp___9;
  tmp___10 = __fswab32((__u32 )vol->data_pad);
  vtbl_rec.data_pad = tmp___10;
  tmp___11 = __fswab16((int )((__u16 )vol->name_len));
  vtbl_rec.name_len = tmp___11;
  if (vol->vol_type == 3) {
    vtbl_rec.vol_type = 1U;
  } else {
    vtbl_rec.vol_type = 2U;
  }
  __len___0 = (size_t )vol->name_len;
  __ret___0 = memcpy((void *)(& vtbl_rec.name), (void const *)(& vol->name),
                               __len___0);
  err = ubi_change_vtbl_record(ubi, vol_id, & vtbl_rec);
  if (err != 0) {
    goto out_sysfs;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  ubi->volumes[vol_id] = vol;
  ubi->vol_count = ubi->vol_count + 1;
  spin_unlock(& ubi->volumes_lock);
  ubi_volume_notify(ubi, vol, 0);
  self_check_volumes(ubi);
  return (err);
  out_sysfs:
  do_free = 0;
  get_device(& vol->dev);
  volume_sysfs_close(vol);
  out_cdev:
  ldv_cdev_del_43(& vol->cdev);
  out_mapping: ;
  if (do_free != 0) {
    kfree((void const *)vol->eba_tbl);
  } else {
  }
  out_acc:
  spin_lock(& ubi->volumes_lock);
  ubi->rsvd_pebs = ubi->rsvd_pebs - vol->reserved_pebs;
  ubi->avail_pebs = ubi->avail_pebs + vol->reserved_pebs;
  out_unlock:
  spin_unlock(& ubi->volumes_lock);
  if (do_free != 0) {
    kfree((void const *)vol);
  } else {
    put_device(& vol->dev);
  }
  printk("\vUBI error: %s: cannot create volume %d, error %d\n", "ubi_create_volume",
         vol_id, err);
  return (err);
}
}
int ubi_remove_volume(struct ubi_volume_desc *desc , int no_vtbl )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int i ;
  int err ;
  int vol_id ;
  int reserved_pebs ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  vol_id = vol->vol_id;
  reserved_pebs = vol->reserved_pebs;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_remove_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): remove device %d, volume %d\n";
  descriptor.lineno = 473U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): remove device %d, volume %d\n",
                       tmp->pid, ubi->ubi_num, vol_id);
  } else {
  }
  tmp___2 = ldv__builtin_expect(desc->mode != 3, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_remove_volume", 474,
           tmp___1->pid);
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned long )ubi->volumes[vol_id] != (unsigned long )vol,
                             0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_remove_volume", 475,
           tmp___3->pid);
    dump_stack();
  } else {
  }
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if (vol->ref_count > 1) {
    err = -16;
    goto out_unlock;
  } else {
  }
  ubi->volumes[vol_id] = (struct ubi_volume *)0;
  spin_unlock(& ubi->volumes_lock);
  if (no_vtbl == 0) {
    err = ubi_change_vtbl_record(ubi, vol_id, (struct ubi_vtbl_record *)0);
    if (err != 0) {
      goto out_err;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_26293;
  ldv_26292:
  err = ubi_eba_unmap_leb(ubi, vol, i);
  if (err != 0) {
    goto out_err;
  } else {
  }
  i = i + 1;
  ldv_26293: ;
  if (vol->reserved_pebs > i) {
    goto ldv_26292;
  } else {
  }
  ldv_cdev_del_44(& vol->cdev);
  volume_sysfs_close(vol);
  spin_lock(& ubi->volumes_lock);
  ubi->rsvd_pebs = ubi->rsvd_pebs - reserved_pebs;
  ubi->avail_pebs = ubi->avail_pebs + reserved_pebs;
  ubi_update_reserved(ubi);
  ubi->vol_count = ubi->vol_count + -1;
  spin_unlock(& ubi->volumes_lock);
  ubi_volume_notify(ubi, vol, 1);
  if (no_vtbl == 0) {
    self_check_volumes(ubi);
  } else {
  }
  return (err);
  out_err:
  printk("\vUBI error: %s: cannot remove volume %d, error %d\n", "ubi_remove_volume",
         vol_id, err);
  spin_lock(& ubi->volumes_lock);
  ubi->volumes[vol_id] = vol;
  out_unlock:
  spin_unlock(& ubi->volumes_lock);
  return (err);
}
}
int ubi_resize_volume(struct ubi_volume_desc *desc , int reserved_pebs )
{
  int i ;
  int err ;
  int pebs ;
  int *new_mapping ;
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  struct ubi_vtbl_record vtbl_rec ;
  int vol_id ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  vol_id = vol->vol_id;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "ubi_resize_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): re-size device %d, volume %d to from %d to %d PEBs\n";
  descriptor.lineno = 550U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): re-size device %d, volume %d to from %d to %d PEBs\n",
                       tmp->pid, ubi->ubi_num, vol_id, vol->reserved_pebs, reserved_pebs);
  } else {
  }
  if (vol->vol_type == 4 && vol->used_ebs > reserved_pebs) {
    printk("\vUBI error: %s: too small size %d, %d LEBs contain data\n", "ubi_resize_volume",
           reserved_pebs, vol->used_ebs);
    return (-22);
  } else {
  }
  if (vol->reserved_pebs == reserved_pebs) {
    return (0);
  } else {
  }
  tmp___1 = kmalloc((unsigned long )reserved_pebs * 4UL, 208U);
  new_mapping = (int *)tmp___1;
  if ((unsigned long )new_mapping == (unsigned long )((int *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_26310;
  ldv_26309:
  *(new_mapping + (unsigned long )i) = -1;
  i = i + 1;
  ldv_26310: ;
  if (i < reserved_pebs) {
    goto ldv_26309;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if (vol->ref_count > 1) {
    spin_unlock(& ubi->volumes_lock);
    err = -16;
    goto out_free;
  } else {
  }
  spin_unlock(& ubi->volumes_lock);
  pebs = reserved_pebs - vol->reserved_pebs;
  if (pebs > 0) {
    spin_lock(& ubi->volumes_lock);
    if (ubi->avail_pebs < pebs) {
      printk("\vUBI error: %s: not enough PEBs: requested %d, available %d\n", "ubi_resize_volume",
             pebs, ubi->avail_pebs);
      if (ubi->corr_peb_count != 0) {
        printk("\vUBI error: %s: %d PEBs are corrupted and not used\n", "ubi_resize_volume",
               ubi->corr_peb_count);
      } else {
      }
      spin_unlock(& ubi->volumes_lock);
      err = -28;
      goto out_free;
    } else {
    }
    ubi->avail_pebs = ubi->avail_pebs - pebs;
    ubi->rsvd_pebs = ubi->rsvd_pebs + pebs;
    i = 0;
    goto ldv_26314;
    ldv_26313:
    *(new_mapping + (unsigned long )i) = *(vol->eba_tbl + (unsigned long )i);
    i = i + 1;
    ldv_26314: ;
    if (vol->reserved_pebs > i) {
      goto ldv_26313;
    } else {
    }
    kfree((void const *)vol->eba_tbl);
    vol->eba_tbl = new_mapping;
    spin_unlock(& ubi->volumes_lock);
  } else {
  }
  vtbl_rec = *(ubi->vtbl + (unsigned long )vol_id);
  tmp___2 = __fswab32((__u32 )reserved_pebs);
  vtbl_rec.reserved_pebs = tmp___2;
  err = ubi_change_vtbl_record(ubi, vol_id, & vtbl_rec);
  if (err != 0) {
    goto out_acc;
  } else {
  }
  if (pebs < 0) {
    i = 0;
    goto ldv_26318;
    ldv_26317:
    err = ubi_eba_unmap_leb(ubi, vol, reserved_pebs + i);
    if (err != 0) {
      goto out_acc;
    } else {
    }
    i = i + 1;
    ldv_26318: ;
    if (- pebs > i) {
      goto ldv_26317;
    } else {
    }
    spin_lock(& ubi->volumes_lock);
    ubi->rsvd_pebs = ubi->rsvd_pebs + pebs;
    ubi->avail_pebs = ubi->avail_pebs - pebs;
    ubi_update_reserved(ubi);
    i = 0;
    goto ldv_26321;
    ldv_26320:
    *(new_mapping + (unsigned long )i) = *(vol->eba_tbl + (unsigned long )i);
    i = i + 1;
    ldv_26321: ;
    if (i < reserved_pebs) {
      goto ldv_26320;
    } else {
    }
    kfree((void const *)vol->eba_tbl);
    vol->eba_tbl = new_mapping;
    spin_unlock(& ubi->volumes_lock);
  } else {
  }
  vol->reserved_pebs = reserved_pebs;
  if (vol->vol_type == 3) {
    vol->used_ebs = reserved_pebs;
    vol->last_eb_bytes = vol->usable_leb_size;
    vol->used_bytes = (long long )vol->used_ebs * (long long )vol->usable_leb_size;
  } else {
  }
  ubi_volume_notify(ubi, vol, 2);
  self_check_volumes(ubi);
  return (err);
  out_acc: ;
  if (pebs > 0) {
    spin_lock(& ubi->volumes_lock);
    ubi->rsvd_pebs = ubi->rsvd_pebs - pebs;
    ubi->avail_pebs = ubi->avail_pebs + pebs;
    spin_unlock(& ubi->volumes_lock);
  } else {
  }
  out_free:
  kfree((void const *)new_mapping);
  return (err);
}
}
int ubi_rename_volumes(struct ubi_device *ubi , struct list_head *rename_list )
{
  int err ;
  struct ubi_rename_entry *re ;
  struct list_head const *__mptr ;
  struct ubi_volume *vol ;
  size_t __len ;
  void *__ret ;
  struct list_head const *__mptr___0 ;
  {
  err = ubi_vtbl_rename_volumes(ubi, rename_list);
  if (err != 0) {
    return (err);
  } else {
  }
  __mptr = (struct list_head const *)rename_list->next;
  re = (struct ubi_rename_entry *)__mptr + 0xffffffffffffff70UL;
  goto ldv_26339;
  ldv_26338: ;
  if (re->remove != 0) {
    err = ubi_remove_volume(re->desc, 1);
    if (err != 0) {
      goto ldv_26333;
    } else {
    }
  } else {
    vol = (re->desc)->vol;
    spin_lock(& ubi->volumes_lock);
    vol->name_len = re->new_name_len;
    __len = (size_t )(re->new_name_len + 1);
    __ret = memcpy((void *)(& vol->name), (void const *)(& re->new_name),
                             __len);
    spin_unlock(& ubi->volumes_lock);
    ubi_volume_notify(ubi, vol, 3);
  }
  __mptr___0 = (struct list_head const *)re->list.next;
  re = (struct ubi_rename_entry *)__mptr___0 + 0xffffffffffffff70UL;
  ldv_26339: ;
  if ((unsigned long )(& re->list) != (unsigned long )rename_list) {
    goto ldv_26338;
  } else {
  }
  ldv_26333: ;
  if (err == 0) {
    self_check_volumes(ubi);
  } else {
  }
  return (err);
}
}
int ubi_add_volume(struct ubi_device *ubi , struct ubi_volume *vol )
{
  int err ;
  int vol_id ;
  dev_t dev ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  vol_id = vol->vol_id;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_add_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): add volume %d\n";
  descriptor.lineno = 702U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): add volume %d\n", tmp->pid,
                       vol_id);
  } else {
  }
  ldv_cdev_init_45(& vol->cdev, & ubi_vol_cdev_operations);
  vol->cdev.owner = & __this_module;
  dev = (ubi->cdev.dev & 4293918720U) | (dev_t )(vol->vol_id + 1);
  err = cdev_add(& vol->cdev, dev, 1U);
  if (err != 0) {
    printk("\vUBI error: %s: cannot add character device for volume %d, error %d\n",
           "ubi_add_volume", vol_id, err);
    return (err);
  } else {
  }
  vol->dev.release = & vol_release;
  vol->dev.parent = & ubi->dev;
  vol->dev.devt = dev;
  vol->dev.class = ubi_class;
  dev_set_name(& vol->dev, "%s_%d", (char *)(& ubi->ubi_name), vol->vol_id);
  err = device_register(& vol->dev);
  if (err != 0) {
    goto out_cdev;
  } else {
  }
  err = volume_sysfs_init(ubi, vol);
  if (err != 0) {
    ldv_cdev_del_46(& vol->cdev);
    volume_sysfs_close(vol);
    return (err);
  } else {
  }
  self_check_volumes(ubi);
  return (err);
  out_cdev:
  ldv_cdev_del_47(& vol->cdev);
  return (err);
}
}
void ubi_free_volume(struct ubi_device *ubi , struct ubi_volume *vol )
{
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_free_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/vmt.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): free volume %d\n";
  descriptor.lineno = 749U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): free volume %d\n", tmp->pid,
                       vol->vol_id);
  } else {
  }
  ubi->volumes[vol->vol_id] = (struct ubi_volume *)0;
  ldv_cdev_del_48(& vol->cdev);
  volume_sysfs_close(vol);
  return;
}
}
static int self_check_volume(struct ubi_device *ubi , int vol_id )
{
  int idx ;
  int tmp ;
  int reserved_pebs ;
  int alignment ;
  int data_pad ;
  int vol_type ;
  int name_len ;
  int upd_marker ;
  struct ubi_volume const *vol ;
  long long n ;
  char const *name ;
  __u32 tmp___0 ;
  __kernel_size_t tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u16 tmp___4 ;
  int tmp___5 ;
  {
  tmp = vol_id2idx((struct ubi_device const *)ubi, vol_id);
  idx = tmp;
  spin_lock(& ubi->volumes_lock);
  tmp___0 = __fswab32((ubi->vtbl + (unsigned long )vol_id)->reserved_pebs);
  reserved_pebs = (int )tmp___0;
  vol = (struct ubi_volume const *)ubi->volumes[idx];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume const *)0)) {
    if (reserved_pebs != 0) {
      printk("\vUBI error: %s: no volume info, but volume exists\n", "self_check_volume");
      goto fail;
    } else {
    }
    spin_unlock(& ubi->volumes_lock);
    return (0);
  } else {
  }
  if ((((int )vol->reserved_pebs < 0 || (int )vol->alignment < 0) || (int )vol->data_pad < 0) || (int )vol->name_len < 0) {
    printk("\vUBI error: %s: negative values\n", "self_check_volume");
    goto fail;
  } else {
  }
  if ((int )vol->alignment > ubi->leb_size || (int )vol->alignment == 0) {
    printk("\vUBI error: %s: bad alignment\n", "self_check_volume");
    goto fail;
  } else {
  }
  n = (long long )((int )vol->alignment & (ubi->min_io_size + -1));
  if ((int )vol->alignment != 1 && n != 0LL) {
    printk("\vUBI error: %s: alignment is not multiple of min I/O unit\n", "self_check_volume");
    goto fail;
  } else {
  }
  n = (long long )(ubi->leb_size % (int )vol->alignment);
  if ((long long )vol->data_pad != n) {
    printk("\vUBI error: %s: bad data_pad, has to be %lld\n", "self_check_volume",
           n);
    goto fail;
  } else {
  }
  if ((int )vol->vol_type != 3 && (int )vol->vol_type != 4) {
    printk("\vUBI error: %s: bad vol_type\n", "self_check_volume");
    goto fail;
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U && (unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    printk("\vUBI error: %s: update marker and corrupted simultaneously\n", "self_check_volume");
    goto fail;
  } else {
  }
  if ((int )vol->reserved_pebs > ubi->good_peb_count) {
    printk("\vUBI error: %s: too large reserved_pebs\n", "self_check_volume");
    goto fail;
  } else {
  }
  n = (long long )(ubi->leb_size - (int )vol->data_pad);
  if ((int )vol->usable_leb_size != ubi->leb_size - (int )vol->data_pad) {
    printk("\vUBI error: %s: bad usable_leb_size, has to be %lld\n", "self_check_volume",
           n);
    goto fail;
  } else {
  }
  if ((int )vol->name_len > 127) {
    printk("\vUBI error: %s: too long volume name, max is %d\n", "self_check_volume",
           127);
    goto fail;
  } else {
  }
  tmp___1 = strnlen((char const *)(& vol->name), (__kernel_size_t )((int )vol->name_len + 1));
  n = (long long )tmp___1;
  if ((long long )vol->name_len != n) {
    printk("\vUBI error: %s: bad name_len %lld\n", "self_check_volume", n);
    goto fail;
  } else {
  }
  n = (long long )vol->used_ebs * (long long )vol->usable_leb_size;
  if ((int )vol->vol_type == 3) {
    if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
      printk("\vUBI error: %s: corrupted dynamic volume\n", "self_check_volume");
      goto fail;
    } else {
    }
    if ((int )vol->used_ebs != (int )vol->reserved_pebs) {
      printk("\vUBI error: %s: bad used_ebs\n", "self_check_volume");
      goto fail;
    } else {
    }
    if ((int )vol->last_eb_bytes != (int )vol->usable_leb_size) {
      printk("\vUBI error: %s: bad last_eb_bytes\n", "self_check_volume");
      goto fail;
    } else {
    }
    if ((long long )vol->used_bytes != n) {
      printk("\vUBI error: %s: bad used_bytes\n", "self_check_volume");
      goto fail;
    } else {
    }
  } else {
    if ((int )vol->used_ebs < 0 || (int )vol->used_ebs > (int )vol->reserved_pebs) {
      printk("\vUBI error: %s: bad used_ebs\n", "self_check_volume");
      goto fail;
    } else {
    }
    if ((int )vol->last_eb_bytes < 0 || (int )vol->last_eb_bytes > (int )vol->usable_leb_size) {
      printk("\vUBI error: %s: bad last_eb_bytes\n", "self_check_volume");
      goto fail;
    } else {
    }
    if (((long long )vol->used_bytes < 0LL || (long long )vol->used_bytes > n) || (long long )vol->used_bytes < n - (long long )vol->usable_leb_size) {
      printk("\vUBI error: %s: bad used_bytes\n", "self_check_volume");
      goto fail;
    } else {
    }
  }
  tmp___2 = __fswab32((ubi->vtbl + (unsigned long )vol_id)->alignment);
  alignment = (int )tmp___2;
  tmp___3 = __fswab32((ubi->vtbl + (unsigned long )vol_id)->data_pad);
  data_pad = (int )tmp___3;
  tmp___4 = __fswab16((int )(ubi->vtbl + (unsigned long )vol_id)->name_len);
  name_len = (int )tmp___4;
  upd_marker = (int )(ubi->vtbl + (unsigned long )vol_id)->upd_marker;
  name = (char const *)(& (ubi->vtbl + (unsigned long )vol_id)->name);
  if ((unsigned int )(ubi->vtbl + (unsigned long )vol_id)->vol_type == 1U) {
    vol_type = 3;
  } else {
    vol_type = 4;
  }
  if (((((int )vol->alignment != alignment || (int )vol->data_pad != data_pad) || (int )vol->upd_marker != upd_marker) || (int )vol->vol_type != vol_type) || (int )vol->name_len != name_len) {
    printk("\vUBI error: %s: volume info is different\n", "self_check_volume");
    goto fail;
  } else {
    tmp___5 = strncmp(name, (char const *)(& vol->name), (__kernel_size_t )name_len);
    if (tmp___5 != 0) {
      printk("\vUBI error: %s: volume info is different\n", "self_check_volume");
      goto fail;
    } else {
    }
  }
  spin_unlock(& ubi->volumes_lock);
  return (0);
  fail:
  printk("\vUBI error: %s: self-check failed for volume %d\n", "self_check_volume",
         vol_id);
  if ((unsigned long )vol != (unsigned long )((struct ubi_volume const *)0)) {
    ubi_dump_vol_info(vol);
  } else {
  }
  ubi_dump_vtbl_record((struct ubi_vtbl_record const *)ubi->vtbl + (unsigned long )vol_id,
                       vol_id);
  dump_stack();
  spin_unlock(& ubi->volumes_lock);
  return (-22);
}
}
static int self_check_volumes(struct ubi_device *ubi )
{
  int i ;
  int err ;
  int tmp ;
  {
  err = 0;
  tmp = ubi_dbg_chk_gen((struct ubi_device const *)ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_26379;
  ldv_26378:
  err = self_check_volume(ubi, i);
  if (err != 0) {
    goto ldv_26377;
  } else {
  }
  i = i + 1;
  ldv_26379: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26378;
  } else {
  }
  ldv_26377: ;
  return (err);
}
}
void ldv_main_exported_27(void)
{
  char *ldvarg50 ;
  void *tmp ;
  struct device *ldvarg49 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg51 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg50 = (char *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg49 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg51 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_27 == 1) {
    vol_attribute_show(ldvarg49, ldvarg51, ldvarg50);
    ldv_state_variable_27 = 1;
  } else {
  }
  goto ldv_26387;
  default:
  ldv_stop();
  }
  ldv_26387: ;
  return;
}
}
void ldv_main_exported_25(void)
{
  struct device *ldvarg52 ;
  void *tmp ;
  char *ldvarg53 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg54 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1416UL);
  ldvarg52 = (struct device *)tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg53 = (char *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg54 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_25 == 1) {
    vol_attribute_show(ldvarg52, ldvarg54, ldvarg53);
    ldv_state_variable_25 = 1;
  } else {
  }
  goto ldv_26396;
  default:
  ldv_stop();
  }
  ldv_26396: ;
  return;
}
}
void ldv_main_exported_28(void)
{
  char *ldvarg62 ;
  void *tmp ;
  struct device *ldvarg61 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg63 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg62 = (char *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg61 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg63 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_28 == 1) {
    vol_attribute_show(ldvarg61, ldvarg63, ldvarg62);
    ldv_state_variable_28 = 1;
  } else {
  }
  goto ldv_26405;
  default:
  ldv_stop();
  }
  ldv_26405: ;
  return;
}
}
void ldv_main_exported_21(void)
{
  struct device_attribute *ldvarg5 ;
  void *tmp ;
  struct device *ldvarg3 ;
  void *tmp___0 ;
  char *ldvarg4 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg4 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_21 == 1) {
    vol_attribute_show(ldvarg3, ldvarg5, ldvarg4);
    ldv_state_variable_21 = 1;
  } else {
  }
  goto ldv_26414;
  default:
  ldv_stop();
  }
  ldv_26414: ;
  return;
}
}
void ldv_main_exported_26(void)
{
  char *ldvarg22 ;
  void *tmp ;
  struct device_attribute *ldvarg23 ;
  void *tmp___0 ;
  struct device *ldvarg21 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg22 = (char *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg23 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_zalloc(1416UL);
  ldvarg21 = (struct device *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_26 == 1) {
    vol_attribute_show(ldvarg21, ldvarg23, ldvarg22);
    ldv_state_variable_26 = 1;
  } else {
  }
  goto ldv_26423;
  default:
  ldv_stop();
  }
  ldv_26423: ;
  return;
}
}
void ldv_main_exported_22(void)
{
  struct device_attribute *ldvarg33 ;
  void *tmp ;
  struct device *ldvarg31 ;
  void *tmp___0 ;
  char *ldvarg32 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg33 = (struct device_attribute *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg31 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg32 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_22 == 1) {
    vol_attribute_show(ldvarg31, ldvarg33, ldvarg32);
    ldv_state_variable_22 = 1;
  } else {
  }
  goto ldv_26432;
  default:
  ldv_stop();
  }
  ldv_26432: ;
  return;
}
}
void ldv_main_exported_24(void)
{
  char *ldvarg92 ;
  void *tmp ;
  struct device *ldvarg91 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg93 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg92 = (char *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg91 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg93 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_24 == 1) {
    vol_attribute_show(ldvarg91, ldvarg93, ldvarg92);
    ldv_state_variable_24 = 1;
  } else {
  }
  goto ldv_26441;
  default:
  ldv_stop();
  }
  ldv_26441: ;
  return;
}
}
void ldv_main_exported_23(void)
{
  struct device *ldvarg40 ;
  void *tmp ;
  struct device_attribute *ldvarg42 ;
  void *tmp___0 ;
  char *ldvarg41 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(1416UL);
  ldvarg40 = (struct device *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg42 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg41 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_23 == 1) {
    vol_attribute_show(ldvarg40, ldvarg42, ldvarg41);
    ldv_state_variable_23 = 1;
  } else {
  }
  goto ldv_26450;
  default:
  ldv_stop();
  }
  ldv_26450: ;
  return;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_24(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_28(lock);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_35(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_39(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void ldv_cdev_init_42(struct cdev *cdev , struct file_operations const *fops )
{
  {
  cdev_init(cdev, fops);
  ldv_state_variable_7 = 1;
  ldv_file_operations_7();
  return;
}
}
void ldv_cdev_del_43(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_del_44(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_init_45(struct cdev *cdev , struct file_operations const *fops )
{
  {
  cdev_init(cdev, fops);
  ldv_state_variable_7 = 1;
  ldv_file_operations_7();
  return;
}
}
void ldv_cdev_del_46(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_del_47(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_del_48(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
extern void might_fault(void) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void *vmalloc(unsigned long ) ;
void *ldv_vmalloc_75(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_76(unsigned long ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_72(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
int ubi_start_update(struct ubi_device *ubi , struct ubi_volume *vol , long long bytes ) ;
int ubi_more_update_data(struct ubi_device *ubi , struct ubi_volume *vol , void const *buf ,
                         int count ) ;
int ubi_start_leb_change(struct ubi_device *ubi , struct ubi_volume *vol , struct ubi_leb_change_req const *req ) ;
int ubi_more_leb_change_data(struct ubi_device *ubi , struct ubi_volume *vol , void const *buf ,
                             int count ) ;
int ubi_calc_data_len(struct ubi_device const *ubi , void const *buf , int length ) ;
int ubi_eba_write_leb_st(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                         void const *buf , int len , int used_ebs ) ;
int ubi_eba_atomic_leb_change(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                              void const *buf , int len ) ;
static int set_update_marker(struct ubi_device *ubi , struct ubi_volume *vol )
{
  int err ;
  struct ubi_vtbl_record vtbl_rec ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "set_update_marker";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): set update marker for volume %d\n";
  descriptor.lineno = 123U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): set update marker for volume %d\n",
                       tmp->pid, vol->vol_id);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    tmp___2 = ldv__builtin_expect((unsigned int )(ubi->vtbl + (unsigned long )vol->vol_id)->upd_marker == 0U,
                               0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "set_update_marker", 126,
             tmp___1->pid);
      dump_stack();
    } else {
    }
    descriptor___0.modname = "ubi";
    descriptor___0.function = "set_update_marker";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
    descriptor___0.format = "UBI DBG gen (pid %d): already set\n";
    descriptor___0.lineno = 127U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): already set\n",
                         tmp___3->pid);
    } else {
    }
    return (0);
  } else {
  }
  vtbl_rec = *(ubi->vtbl + (unsigned long )vol->vol_id);
  vtbl_rec.upd_marker = 1U;
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_change_vtbl_record(ubi, vol->vol_id, & vtbl_rec);
  vol->upd_marker = 1U;
  mutex_unlock(& ubi->device_mutex);
  return (err);
}
}
static int clear_update_marker(struct ubi_device *ubi , struct ubi_volume *vol , long long bytes )
{
  int err ;
  struct ubi_vtbl_record vtbl_rec ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  u64 tmp___4 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "clear_update_marker";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): clear update marker for volume %d\n";
  descriptor.lineno = 157U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): clear update marker for volume %d\n",
                       tmp->pid, vol->vol_id);
  } else {
  }
  vtbl_rec = *(ubi->vtbl + (unsigned long )vol->vol_id);
  tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) == 0U,
                             0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "clear_update_marker", 160,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect((unsigned int )vtbl_rec.upd_marker == 0U, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "clear_update_marker",
             160, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  vtbl_rec.upd_marker = 0U;
  if (vol->vol_type == 4) {
    vol->corrupted = 0U;
    vol->used_bytes = bytes;
    tmp___4 = div_u64_rem((u64 )bytes, (u32 )vol->usable_leb_size, (u32 *)(& vol->last_eb_bytes));
    vol->used_ebs = (int )tmp___4;
    if (vol->last_eb_bytes != 0) {
      vol->used_ebs = vol->used_ebs + 1;
    } else {
      vol->last_eb_bytes = vol->usable_leb_size;
    }
  } else {
  }
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_change_vtbl_record(ubi, vol->vol_id, & vtbl_rec);
  vol->upd_marker = 0U;
  mutex_unlock(& ubi->device_mutex);
  return (err);
}
}
int ubi_start_update(struct ubi_device *ubi , struct ubi_volume *vol , long long bytes )
{
  int i ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  u64 tmp___4 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_start_update";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): start update of volume %d, %llu bytes\n";
  descriptor.lineno = 196U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): start update of volume %d, %llu bytes\n",
                       tmp->pid, vol->vol_id, bytes);
  } else {
  }
  tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) != 0U,
                             0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_start_update", 197,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) != 0U,
                               0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_start_update", 197,
             tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  vol->updating = 1U;
  err = set_update_marker(ubi, vol);
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_26357;
  ldv_26356:
  err = ubi_eba_unmap_leb(ubi, vol, i);
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_26357: ;
  if (vol->reserved_pebs > i) {
    goto ldv_26356;
  } else {
  }
  if (bytes == 0LL) {
    err = ubi_wl_flush(ubi, -1, -1);
    if (err != 0) {
      return (err);
    } else {
    }
    err = clear_update_marker(ubi, vol, 0LL);
    if (err != 0) {
      return (err);
    } else {
    }
    vol->updating = 0U;
    return (0);
  } else {
  }
  vol->upd_buf = ldv_vmalloc_75((unsigned long )ubi->leb_size);
  if ((unsigned long )vol->upd_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  tmp___4 = div_u64((u64 )(((long long )vol->usable_leb_size + bytes) + -1LL), (u32 )vol->usable_leb_size);
  vol->upd_ebs = (int )tmp___4;
  vol->upd_bytes = bytes;
  vol->upd_received = 0LL;
  return (0);
}
}
int ubi_start_leb_change(struct ubi_device *ubi , struct ubi_volume *vol , struct ubi_leb_change_req const *req )
{
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) != 0U,
                             0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_start_leb_change", 246,
           tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_start_leb_change",
             246, tmp->pid);
      dump_stack();
    } else {
    }
  }
  descriptor.modname = "ubi";
  descriptor.function = "ubi_start_leb_change";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): start changing LEB %d:%d, %u bytes\n";
  descriptor.lineno = 249U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): start changing LEB %d:%d, %u bytes\n",
                       tmp___2->pid, vol->vol_id, req->lnum, req->bytes);
  } else {
  }
  if ((int )req->bytes == 0) {
    tmp___4 = ubi_eba_atomic_leb_change(ubi, vol, req->lnum, (void const *)0, 0);
    return (tmp___4);
  } else {
  }
  vol->upd_bytes = (long long )req->bytes;
  vol->upd_received = 0LL;
  vol->changing_leb = 1U;
  vol->ch_lnum = req->lnum;
  vol->upd_buf = ldv_vmalloc_76((unsigned long )req->bytes);
  if ((unsigned long )vol->upd_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int write_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                     void *buf , int len , int used_ebs )
{
  int err ;
  int l ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  if (vol->vol_type == 3) {
    l = ((ubi->min_io_size + -1) + len) & - ubi->min_io_size;
    memset(buf + (unsigned long )len, 255, (size_t )(l - len));
    len = ubi_calc_data_len((struct ubi_device const *)ubi, (void const *)buf,
                            l);
    if (len == 0) {
      descriptor.modname = "ubi";
      descriptor.function = "write_leb";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
      descriptor.format = "UBI DBG gen (pid %d): all %d bytes contain 0xFF - skip\n";
      descriptor.lineno = 305U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        tmp = get_current();
        __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): all %d bytes contain 0xFF - skip\n",
                           tmp->pid, len);
      } else {
      }
      return (0);
    } else {
    }
    err = ubi_eba_write_leb(ubi, vol, lnum, (void const *)buf, 0, len);
  } else {
    memset(buf + (unsigned long )len, 0, (size_t )(vol->usable_leb_size - len));
    err = ubi_eba_write_leb_st(ubi, vol, lnum, (void const *)buf, len, used_ebs);
  }
  return (err);
}
}
int ubi_more_update_data(struct ubi_device *ubi , struct ubi_volume *vol , void const *buf ,
                         int count )
{
  int lnum ;
  int offs ;
  int err ;
  int len ;
  int to_write ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  u64 tmp___1 ;
  unsigned long tmp___2 ;
  int flush_len ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  unsigned long tmp___5 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  {
  err = 0;
  to_write = count;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_more_update_data";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): write %d of %lld bytes, %lld already passed\n";
  descriptor.lineno = 346U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): write %d of %lld bytes, %lld already passed\n",
                       tmp->pid, count, vol->upd_bytes, vol->upd_received);
  } else {
  }
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  tmp___1 = div_u64_rem((u64 )vol->upd_received, (u32 )vol->usable_leb_size, (u32 *)(& offs));
  lnum = (int )tmp___1;
  if (vol->upd_received + (long long )count > vol->upd_bytes) {
    count = (int )((unsigned int )vol->upd_bytes - (unsigned int )vol->upd_received);
    to_write = count;
  } else {
  }
  if (offs != 0) {
    len = vol->usable_leb_size - offs;
    if (len > count) {
      len = count;
    } else {
    }
    tmp___2 = copy_from_user(vol->upd_buf + (unsigned long )offs, buf, (unsigned long )len);
    err = (int )tmp___2;
    if (err != 0) {
      return (-14);
    } else {
    }
    if (offs + len == vol->usable_leb_size || vol->upd_received + (long long )len == vol->upd_bytes) {
      flush_len = offs + len;
      tmp___4 = ldv__builtin_expect(vol->usable_leb_size < flush_len, 0L);
      if (tmp___4 != 0L) {
        tmp___3 = get_current();
        printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_more_update_data",
               383, tmp___3->pid);
        dump_stack();
      } else {
      }
      err = write_leb(ubi, vol, lnum, vol->upd_buf, flush_len, vol->upd_ebs);
      if (err != 0) {
        return (err);
      } else {
      }
    } else {
    }
    vol->upd_received = vol->upd_received + (long long )len;
    count = count - len;
    buf = buf + (unsigned long )len;
    lnum = lnum + 1;
  } else {
  }
  goto ldv_26394;
  ldv_26393: ;
  if (vol->usable_leb_size < count) {
    len = vol->usable_leb_size;
  } else {
    len = count;
  }
  tmp___5 = copy_from_user(vol->upd_buf, buf, (unsigned long )len);
  err = (int )tmp___5;
  if (err != 0) {
    return (-14);
  } else {
  }
  if (vol->usable_leb_size == len || vol->upd_received + (long long )len == vol->upd_bytes) {
    err = write_leb(ubi, vol, lnum, vol->upd_buf, len, vol->upd_ebs);
    if (err != 0) {
      goto ldv_26392;
    } else {
    }
  } else {
  }
  vol->upd_received = vol->upd_received + (long long )len;
  count = count - len;
  lnum = lnum + 1;
  buf = buf + (unsigned long )len;
  ldv_26394: ;
  if (count != 0) {
    goto ldv_26393;
  } else {
  }
  ldv_26392:
  tmp___7 = ldv__builtin_expect(vol->upd_received > vol->upd_bytes, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_more_update_data", 424,
           tmp___6->pid);
    dump_stack();
  } else {
  }
  if (vol->upd_received == vol->upd_bytes) {
    err = ubi_wl_flush(ubi, -1, -1);
    if (err != 0) {
      return (err);
    } else {
    }
    err = clear_update_marker(ubi, vol, vol->upd_bytes);
    if (err != 0) {
      return (err);
    } else {
    }
    vol->updating = 0U;
    err = to_write;
    vfree((void const *)vol->upd_buf);
  } else {
  }
  return (err);
}
}
int ubi_more_leb_change_data(struct ubi_device *ubi , struct ubi_volume *vol , void const *buf ,
                             int count )
{
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  int len ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_more_leb_change_data";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/upd.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): write %d of %lld bytes, %lld already passed\n";
  descriptor.lineno = 461U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): write %d of %lld bytes, %lld already passed\n",
                       tmp->pid, count, vol->upd_bytes, vol->upd_received);
  } else {
  }
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  if (vol->upd_received + (long long )count > vol->upd_bytes) {
    count = (int )((unsigned int )vol->upd_bytes - (unsigned int )vol->upd_received);
  } else {
  }
  tmp___1 = copy_from_user(vol->upd_buf + (unsigned long )vol->upd_received, buf,
                           (unsigned long )count);
  err = (int )tmp___1;
  if (err != 0) {
    return (-14);
  } else {
  }
  vol->upd_received = vol->upd_received + (long long )count;
  if (vol->upd_received == vol->upd_bytes) {
    len = ((int )vol->upd_bytes + (ubi->min_io_size + -1)) & - ubi->min_io_size;
    memset(vol->upd_buf + (unsigned long )vol->upd_bytes, 255, (size_t )((long long )len - vol->upd_bytes));
    len = ubi_calc_data_len((struct ubi_device const *)ubi, (void const *)vol->upd_buf,
                            len);
    err = ubi_eba_atomic_leb_change(ubi, vol, vol->ch_lnum, (void const *)vol->upd_buf,
                                    len);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  tmp___3 = ldv__builtin_expect(vol->upd_received > vol->upd_bytes, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_more_leb_change_data",
           487, tmp___2->pid);
    dump_stack();
  } else {
  }
  if (vol->upd_received == vol->upd_bytes) {
    vol->changing_leb = 0U;
    err = count;
    vfree((void const *)vol->upd_buf);
  } else {
  }
  return (err);
}
}
void *ldv_kmem_cache_alloc_72(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vmalloc_75(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void *ldv_vmalloc_76(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int kstrtoint(char const * , unsigned int , int * ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strsep(char ** , char const * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
void *ldv_vmalloc_101(unsigned long ldv_func_arg1 ) ;
void *ldv_vzalloc_102(unsigned long ldv_func_arg1 ) ;
extern int blocking_notifier_call_chain(struct blocking_notifier_head * , unsigned long ,
                                        void * ) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
void *ldv_kmem_cache_alloc_95(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int ldv_state_variable_8 ;
struct inode *dfs_fops_group1 ;
int ldv_state_variable_15 ;
int ldv_state_variable_20 ;
int ldv_state_variable_10 ;
struct block_device *ubiblock_ops_group0 ;
void *ubi_ctrl_cdev_operations_group1 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
int ldv_state_variable_25 ;
void *ubi_cdev_operations_group1 ;
int ldv_state_variable_12 ;
int ldv_state_variable_26 ;
struct inode *ubi_vol_cdev_operations_group1 ;
int ldv_state_variable_28 ;
struct file *ubi_vol_cdev_operations_group2 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int ldv_state_variable_17 ;
struct file *dfs_fops_group2 ;
struct file *ubi_cdev_operations_group2 ;
int ldv_state_variable_18 ;
struct file *ubi_ctrl_cdev_operations_group2 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
int ldv_state_variable_27 ;
int ldv_state_variable_24 ;
int ldv_state_variable_3 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
int ldv_state_variable_23 ;
void ldv_initialize_block_device_operations_2(void) ;
extern void path_put(struct path const * ) ;
extern int kern_path(char const * , unsigned int , struct path * ) ;
extern int misc_register(struct miscdevice * ) ;
int ldv_misc_register_103(struct miscdevice *misc ) ;
extern int misc_deregister(struct miscdevice * ) ;
int ldv_misc_deregister_104(struct miscdevice *misc ) ;
int ldv_misc_deregister_105(struct miscdevice *misc ) ;
extern uint64_t mtd_get_device_size(struct mtd_info const * ) ;
extern int wake_up_process(struct task_struct * ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
__inline static unsigned int imajor(struct inode const *inode )
{
  {
  return ((unsigned int )(inode->i_rdev >> 20));
}
}
extern int alloc_chrdev_region(dev_t * , unsigned int , unsigned int , char const * ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
void ldv_cdev_init_98(struct cdev *cdev , struct file_operations const *fops ) ;
void ldv_cdev_del_99(struct cdev *p ) ;
void ldv_cdev_del_100(struct cdev *p ) ;
extern int class_create_file_ns(struct class * , struct class_attribute const * ,
                                void const * ) ;
__inline static int class_create_file(struct class *class , struct class_attribute const *attr )
{
  int tmp ;
  {
  tmp = class_create_file_ns(class, attr, (void const *)0);
  return (tmp);
}
}
__inline static void class_remove_file(struct class *class , struct class_attribute const *attr )
{
  {
  return;
}
}
extern struct class *__class_create(struct module * , char const * , struct lock_class_key * ) ;
extern void class_destroy(struct class * ) ;
__inline static uint32_t mtd_div_by_eb(uint64_t sz , struct mtd_info *mtd )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (mtd->erasesize_shift != 0U) {
    return ((uint32_t )(sz >> (int )mtd->erasesize_shift));
  } else {
  }
  __base = mtd->erasesize;
  __rem = (uint32_t )(sz % (uint64_t )__base);
  sz = sz / (uint64_t )__base;
  return ((uint32_t )sz);
}
}
__inline static int mtd_can_have_bb(struct mtd_info const *mtd )
{
  {
  return ((unsigned long )mtd->_block_isbad != (unsigned long )((int (* )(struct mtd_info * ,
                                                                                     loff_t ))0));
}
}
extern struct mtd_info *get_mtd_device(struct mtd_info * , int ) ;
extern struct mtd_info *get_mtd_device_nm(char const * ) ;
extern void put_mtd_device(struct mtd_info * ) ;
int ubi_debugfs_init(void) ;
void ubi_debugfs_exit(void) ;
int ubi_debugfs_init_dev(struct ubi_device *ubi ) ;
void ubi_debugfs_exit_dev(struct ubi_device *ubi ) ;
struct kmem_cache *ubi_wl_entry_slab ;
struct file_operations const ubi_ctrl_cdev_operations ;
struct file_operations const ubi_cdev_operations ;
struct class *ubi_class ;
struct mutex ubi_devices_mutex ;
struct blocking_notifier_head ubi_notifiers ;
int ubi_attach(struct ubi_device *ubi , int force_scan ) ;
void ubi_wl_close(struct ubi_device *ubi ) ;
int ubi_thread(void *u ) ;
int ubi_attach_mtd_dev(struct mtd_info *mtd , int ubi_num , int vid_hdr_offset , int max_beb_per1024 ) ;
int ubi_detach_mtd_dev(int ubi_num , int anyway ) ;
struct ubi_device *ubi_get_by_major(int major ) ;
int ubi_major2num(int major ) ;
int ubi_notify_all(struct ubi_device *ubi , int ntype , struct notifier_block *nb ) ;
int ubi_enumerate_volumes(struct notifier_block *nb ) ;
void ubi_free_internal_volumes(struct ubi_device *ubi ) ;
void ubi_do_get_device_info(struct ubi_device *ubi , struct ubi_device_info *di ) ;
void ubi_do_get_volume_info(struct ubi_device *ubi , struct ubi_volume *vol , struct ubi_volume_info *vi ) ;
size_t ubi_calc_fm_size(struct ubi_device *ubi ) ;
int ubi_update_fastmap(struct ubi_device *ubi ) ;
int ubiblock_init(void) ;
void ubiblock_exit(void) ;
__inline static void ubi_ro_mode(struct ubi_device *ubi )
{
  {
  if (ubi->ro_mode == 0) {
    ubi->ro_mode = 1;
    printk("\fUBI warning: %s: switch to read-only mode\n", "ubi_ro_mode");
    dump_stack();
  } else {
  }
  return;
}
}
static int mtd_devs ;
static struct mtd_dev_param mtd_dev_param[32U] ;
static bool fm_autoconvert ;
static struct miscdevice ubi_ctrl_cdev =
     {255, "ubi_ctrl", & ubi_ctrl_cdev_operations, {0, 0}, 0, 0, 0, (unsigned short)0};
static struct ubi_device *ubi_devices[32U] ;
struct mutex ubi_devices_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ubi_devices_mutex.wait_lock",
                                                           0, 0UL}}}}, {& ubi_devices_mutex.wait_list,
                                                                        & ubi_devices_mutex.wait_list},
    0, 0, (void *)(& ubi_devices_mutex), {0, {0, 0}, "ubi_devices_mutex", 0, 0UL}};
static spinlock_t ubi_devices_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ubi_devices_lock",
                                                     0, 0UL}}}};
static ssize_t ubi_version_show(struct class *class , struct class_attribute *attr ,
                                char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "%d\n", 1);
  return ((ssize_t )tmp);
}
}
static struct class_attribute ubi_version = {{"version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & ubi_version_show,
    (ssize_t (*)(struct class * , struct class_attribute * , char const * , size_t ))0};
static ssize_t dev_attribute_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf ) ;
static struct device_attribute dev_eraseblock_size = {{"eraseblock_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_avail_eraseblocks = {{"avail_eraseblocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_total_eraseblocks = {{"total_eraseblocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_volumes_count = {{"volumes_count", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_max_ec = {{"max_ec", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & dev_attribute_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_reserved_for_bad = {{"reserved_for_bad", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_bad_peb_count = {{"bad_peb_count", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_max_vol_count = {{"max_vol_count", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_min_io_size = {{"min_io_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_bgt_enabled = {{"bgt_enabled", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_attribute_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct device_attribute dev_mtd_num = {{"mtd_num", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & dev_attribute_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
int ubi_volume_notify(struct ubi_device *ubi , struct ubi_volume *vol , int ntype )
{
  struct ubi_notification nt ;
  int tmp ;
  int tmp___0 ;
  {
  ubi_do_get_device_info(ubi, & nt.di);
  ubi_do_get_volume_info(ubi, vol, & nt.vi);
  switch (ntype) {
  case 0: ;
  case 1: ;
  case 2: ;
  case 3:
  tmp = ubi_update_fastmap(ubi);
  if (tmp != 0) {
    printk("\vUBI error: %s: Unable to update fastmap!\n", "ubi_volume_notify");
    ubi_ro_mode(ubi);
  } else {
  }
  }
  tmp___0 = blocking_notifier_call_chain(& ubi_notifiers, (unsigned long )ntype, (void *)(& nt));
  return (tmp___0);
}
}
int ubi_notify_all(struct ubi_device *ubi , int ntype , struct notifier_block *nb )
{
  struct ubi_notification nt ;
  int i ;
  int count ;
  {
  count = 0;
  ubi_do_get_device_info(ubi, & nt.di);
  mutex_lock_nested(& ubi->device_mutex, 0U);
  i = 0;
  goto ldv_26497;
  ldv_26496: ;
  if ((unsigned long )ubi->volumes[i] == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26495;
  } else {
  }
  ubi_do_get_volume_info(ubi, ubi->volumes[i], & nt.vi);
  if ((unsigned long )nb != (unsigned long )((struct notifier_block *)0)) {
    (*(nb->notifier_call))(nb, (unsigned long )ntype, (void *)(& nt));
  } else {
    blocking_notifier_call_chain(& ubi_notifiers, (unsigned long )ntype, (void *)(& nt));
  }
  count = count + 1;
  ldv_26495:
  i = i + 1;
  ldv_26497: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26496;
  } else {
  }
  mutex_unlock(& ubi->device_mutex);
  return (count);
}
}
int ubi_enumerate_volumes(struct notifier_block *nb )
{
  int i ;
  int count ;
  struct ubi_device *ubi ;
  int tmp ;
  {
  count = 0;
  i = 0;
  goto ldv_26507;
  ldv_26506:
  ubi = ubi_devices[i];
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    goto ldv_26505;
  } else {
  }
  tmp = ubi_notify_all(ubi, 0, nb);
  count = tmp + count;
  ldv_26505:
  i = i + 1;
  ldv_26507: ;
  if (i <= 31) {
    goto ldv_26506;
  } else {
  }
  return (count);
}
}
struct ubi_device *ubi_get_device(int ubi_num )
{
  struct ubi_device *ubi ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  spin_lock(& ubi_devices_lock);
  ubi = ubi_devices[ubi_num];
  if ((unsigned long )ubi != (unsigned long )((struct ubi_device *)0)) {
    tmp___0 = ldv__builtin_expect(ubi->ref_count < 0, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_get_device", 327,
             tmp->pid);
      dump_stack();
    } else {
    }
    ubi->ref_count = ubi->ref_count + 1;
    get_device(& ubi->dev);
  } else {
  }
  spin_unlock(& ubi_devices_lock);
  return (ubi);
}
}
void ubi_put_device(struct ubi_device *ubi )
{
  {
  spin_lock(& ubi_devices_lock);
  ubi->ref_count = ubi->ref_count + -1;
  put_device(& ubi->dev);
  spin_unlock(& ubi_devices_lock);
  return;
}
}
struct ubi_device *ubi_get_by_major(int major )
{
  int i ;
  struct ubi_device *ubi ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  spin_lock(& ubi_devices_lock);
  i = 0;
  goto ldv_26524;
  ldv_26523:
  ubi = ubi_devices[i];
  if ((unsigned long )ubi != (unsigned long )((struct ubi_device *)0) && ubi->cdev.dev >> 20 == (dev_t )major) {
    tmp___0 = ldv__builtin_expect(ubi->ref_count < 0, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_get_by_major", 364,
             tmp->pid);
      dump_stack();
    } else {
    }
    ubi->ref_count = ubi->ref_count + 1;
    get_device(& ubi->dev);
    spin_unlock(& ubi_devices_lock);
    return (ubi);
  } else {
  }
  i = i + 1;
  ldv_26524: ;
  if (i <= 31) {
    goto ldv_26523;
  } else {
  }
  spin_unlock(& ubi_devices_lock);
  return ((struct ubi_device *)0);
}
}
int ubi_major2num(int major )
{
  int i ;
  int ubi_num ;
  struct ubi_device *ubi ;
  {
  ubi_num = -19;
  spin_lock(& ubi_devices_lock);
  i = 0;
  goto ldv_26534;
  ldv_26533:
  ubi = ubi_devices[i];
  if ((unsigned long )ubi != (unsigned long )((struct ubi_device *)0) && ubi->cdev.dev >> 20 == (dev_t )major) {
    ubi_num = ubi->ubi_num;
    goto ldv_26532;
  } else {
  }
  i = i + 1;
  ldv_26534: ;
  if (i <= 31) {
    goto ldv_26533;
  } else {
  }
  ldv_26532:
  spin_unlock(& ubi_devices_lock);
  return (ubi_num);
}
}
static ssize_t dev_attribute_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  ssize_t ret ;
  struct ubi_device *ubi ;
  struct device const *__mptr ;
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
  {
  __mptr = (struct device const *)dev;
  ubi = (struct ubi_device *)__mptr + 0xfffffffffffffeb0UL;
  ubi = ubi_get_device(ubi->ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19L);
  } else {
  }
  if ((unsigned long )attr == (unsigned long )(& dev_eraseblock_size)) {
    tmp = sprintf(buf, "%d\n", ubi->leb_size);
    ret = (ssize_t )tmp;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_avail_eraseblocks)) {
    tmp___0 = sprintf(buf, "%d\n", ubi->avail_pebs);
    ret = (ssize_t )tmp___0;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_total_eraseblocks)) {
    tmp___1 = sprintf(buf, "%d\n", ubi->good_peb_count);
    ret = (ssize_t )tmp___1;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_volumes_count)) {
    tmp___2 = sprintf(buf, "%d\n", ubi->vol_count + -1);
    ret = (ssize_t )tmp___2;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_max_ec)) {
    tmp___3 = sprintf(buf, "%d\n", ubi->max_ec);
    ret = (ssize_t )tmp___3;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_reserved_for_bad)) {
    tmp___4 = sprintf(buf, "%d\n", ubi->beb_rsvd_pebs);
    ret = (ssize_t )tmp___4;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_bad_peb_count)) {
    tmp___5 = sprintf(buf, "%d\n", ubi->bad_peb_count);
    ret = (ssize_t )tmp___5;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_max_vol_count)) {
    tmp___6 = sprintf(buf, "%d\n", ubi->vtbl_slots);
    ret = (ssize_t )tmp___6;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_min_io_size)) {
    tmp___7 = sprintf(buf, "%d\n", ubi->min_io_size);
    ret = (ssize_t )tmp___7;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_bgt_enabled)) {
    tmp___8 = sprintf(buf, "%d\n", ubi->thread_enabled);
    ret = (ssize_t )tmp___8;
  } else
  if ((unsigned long )attr == (unsigned long )(& dev_mtd_num)) {
    tmp___9 = sprintf(buf, "%d\n", (ubi->mtd)->index);
    ret = (ssize_t )tmp___9;
  } else {
    ret = -22L;
  }
  ubi_put_device(ubi);
  return (ret);
}
}
static void dev_release(struct device *dev )
{
  struct ubi_device *ubi ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  ubi = (struct ubi_device *)__mptr + 0xfffffffffffffeb0UL;
  kfree((void const *)ubi);
  return;
}
}
static int ubi_sysfs_init(struct ubi_device *ubi , int *ref )
{
  int err ;
  {
  ubi->dev.release = & dev_release;
  ubi->dev.devt = ubi->cdev.dev;
  ubi->dev.class = ubi_class;
  dev_set_name(& ubi->dev, "ubi%d", ubi->ubi_num);
  err = device_register(& ubi->dev);
  if (err != 0) {
    return (err);
  } else {
  }
  *ref = 1;
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_eraseblock_size));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_avail_eraseblocks));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_total_eraseblocks));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_volumes_count));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_max_ec));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_reserved_for_bad));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_bad_peb_count));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_max_vol_count));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_min_io_size));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_bgt_enabled));
  if (err != 0) {
    return (err);
  } else {
  }
  err = device_create_file(& ubi->dev, (struct device_attribute const *)(& dev_mtd_num));
  return (err);
}
}
static void ubi_sysfs_close(struct ubi_device *ubi )
{
  {
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_mtd_num));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_bgt_enabled));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_min_io_size));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_max_vol_count));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_bad_peb_count));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_reserved_for_bad));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_max_ec));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_volumes_count));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_total_eraseblocks));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_avail_eraseblocks));
  device_remove_file(& ubi->dev, (struct device_attribute const *)(& dev_eraseblock_size));
  device_unregister(& ubi->dev);
  return;
}
}
static void kill_volumes(struct ubi_device *ubi )
{
  int i ;
  {
  i = 0;
  goto ldv_26563;
  ldv_26562: ;
  if ((unsigned long )ubi->volumes[i] != (unsigned long )((struct ubi_volume *)0)) {
    ubi_free_volume(ubi, ubi->volumes[i]);
  } else {
  }
  i = i + 1;
  ldv_26563: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26562;
  } else {
  }
  return;
}
}
static int uif_init(struct ubi_device *ubi , int *ref )
{
  int i ;
  int err ;
  dev_t dev ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  {
  *ref = 0;
  sprintf((char *)(& ubi->ubi_name), "ubi%d", ubi->ubi_num);
  err = alloc_chrdev_region(& dev, 0U, (unsigned int )(ubi->vtbl_slots + 1), (char const *)(& ubi->ubi_name));
  if (err != 0) {
    printk("\vUBI error: %s: cannot register UBI character devices\n", "uif_init");
    return (err);
  } else {
  }
  tmp___0 = ldv__builtin_expect((dev & 1048575U) != 0U, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "uif_init", 589, tmp->pid);
    dump_stack();
  } else {
  }
  ldv_cdev_init_98(& ubi->cdev, & ubi_cdev_operations);
  descriptor.modname = "ubi";
  descriptor.function = "uif_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): %s major is %u\n";
  descriptor.lineno = 591U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): %s major is %u\n", tmp___1->pid,
                       (char *)(& ubi->ubi_name), dev >> 20);
  } else {
  }
  ubi->cdev.owner = & __this_module;
  err = cdev_add(& ubi->cdev, dev, 1U);
  if (err != 0) {
    printk("\vUBI error: %s: cannot add character device\n", "uif_init");
    goto out_unreg;
  } else {
  }
  err = ubi_sysfs_init(ubi, ref);
  if (err != 0) {
    goto out_sysfs;
  } else {
  }
  i = 0;
  goto ldv_26578;
  ldv_26577: ;
  if ((unsigned long )ubi->volumes[i] != (unsigned long )((struct ubi_volume *)0)) {
    err = ubi_add_volume(ubi, ubi->volumes[i]);
    if (err != 0) {
      printk("\vUBI error: %s: cannot add volume %d\n", "uif_init", i);
      goto out_volumes;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_26578: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26577;
  } else {
  }
  return (0);
  out_volumes:
  kill_volumes(ubi);
  out_sysfs: ;
  if (*ref != 0) {
    get_device(& ubi->dev);
  } else {
  }
  ubi_sysfs_close(ubi);
  ldv_cdev_del_99(& ubi->cdev);
  out_unreg:
  unregister_chrdev_region(ubi->cdev.dev, (unsigned int )(ubi->vtbl_slots + 1));
  printk("\vUBI error: %s: cannot initialize UBI %s, error %d\n", "uif_init", (char *)(& ubi->ubi_name),
         err);
  return (err);
}
}
static void uif_close(struct ubi_device *ubi )
{
  {
  kill_volumes(ubi);
  ubi_sysfs_close(ubi);
  ldv_cdev_del_100(& ubi->cdev);
  unregister_chrdev_region(ubi->cdev.dev, (unsigned int )(ubi->vtbl_slots + 1));
  return;
}
}
void ubi_free_internal_volumes(struct ubi_device *ubi )
{
  int i ;
  {
  i = ubi->vtbl_slots;
  goto ldv_26588;
  ldv_26587:
  kfree((void const *)(ubi->volumes[i])->eba_tbl);
  kfree((void const *)ubi->volumes[i]);
  i = i + 1;
  ldv_26588: ;
  if (ubi->vtbl_slots + 1 > i) {
    goto ldv_26587;
  } else {
  }
  return;
}
}
static int get_bad_peb_limit(struct ubi_device const *ubi , int max_beb_per1024 )
{
  int limit ;
  int device_pebs ;
  uint64_t device_size ;
  uint32_t tmp ;
  int quot ;
  int rem ;
  int quot___0 ;
  int rem___0 ;
  {
  if (max_beb_per1024 == 0) {
    return (0);
  } else {
  }
  device_size = mtd_get_device_size((struct mtd_info const *)ubi->mtd);
  tmp = mtd_div_by_eb(device_size, ubi->mtd);
  device_pebs = (int )tmp;
  quot = device_pebs / 1024;
  rem = device_pebs % 1024;
  limit = quot * max_beb_per1024 + (rem * max_beb_per1024) / 1024;
  quot___0 = limit / max_beb_per1024;
  rem___0 = limit % max_beb_per1024;
  if (quot___0 * 1024 + (rem___0 * 1024) / max_beb_per1024 < device_pebs) {
    limit = limit + 1;
  } else {
  }
  return (limit);
}
}
static int io_init(struct ubi_device *ubi , int max_beb_per1024 )
{
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  uint32_t tmp___3 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  struct task_struct *tmp___11 ;
  long tmp___12 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___21 ;
  long tmp___22 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___5 ;
  struct task_struct *tmp___25 ;
  long tmp___26 ;
  int tmp___27 ;
  struct _ddebug descriptor___6 ;
  struct task_struct *tmp___28 ;
  long tmp___29 ;
  struct _ddebug descriptor___7 ;
  struct task_struct *tmp___30 ;
  long tmp___31 ;
  struct _ddebug descriptor___8 ;
  struct task_struct *tmp___32 ;
  long tmp___33 ;
  struct _ddebug descriptor___9 ;
  struct task_struct *tmp___34 ;
  long tmp___35 ;
  struct _ddebug descriptor___10 ;
  struct task_struct *tmp___36 ;
  long tmp___37 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "io_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): sizeof(struct ubi_ainf_peb) %zu\n";
  descriptor.lineno = 705U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): sizeof(struct ubi_ainf_peb) %zu\n",
                       tmp->pid, 56UL);
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "io_init";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___0.format = "UBI DBG gen (pid %d): sizeof(struct ubi_wl_entry) %zu\n";
  descriptor___0.lineno = 706U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): sizeof(struct ubi_wl_entry) %zu\n",
                       tmp___1->pid, 32UL);
  } else {
  }
  if ((ubi->mtd)->numeraseregions != 0) {
    printk("\vUBI error: %s: multiple regions, not implemented\n", "io_init");
    return (-22);
  } else {
  }
  if (ubi->vid_hdr_offset < 0) {
    return (-22);
  } else {
  }
  ubi->peb_size = (int )(ubi->mtd)->erasesize;
  tmp___3 = mtd_div_by_eb((ubi->mtd)->size, ubi->mtd);
  ubi->peb_count = (int )tmp___3;
  ubi->flash_size = (long long )(ubi->mtd)->size;
  tmp___4 = mtd_can_have_bb((struct mtd_info const *)ubi->mtd);
  if (tmp___4 != 0) {
    ubi->bad_allowed = 1U;
    ubi->bad_peb_limit = get_bad_peb_limit((struct ubi_device const *)ubi, max_beb_per1024);
  } else {
  }
  if ((unsigned int )(ubi->mtd)->type == 3U) {
    tmp___6 = ldv__builtin_expect((ubi->mtd)->writesize != 1U, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "io_init", 740, tmp___5->pid);
      dump_stack();
    } else {
    }
    ubi->nor_flash = 1U;
  } else {
  }
  ubi->min_io_size = (int )(ubi->mtd)->writesize;
  ubi->hdrs_min_io_size = (int )((ubi->mtd)->writesize >> (ubi->mtd)->subpage_sft);
  tmp___7 = is_power_of_2((unsigned long )ubi->min_io_size);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    printk("\vUBI error: %s: min. I/O unit (%d) is not power of 2\n", "io_init", ubi->min_io_size);
    return (-22);
  } else {
  }
  tmp___10 = ldv__builtin_expect(ubi->hdrs_min_io_size <= 0, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "io_init", 758, tmp___9->pid);
    dump_stack();
  } else {
  }
  tmp___12 = ldv__builtin_expect(ubi->hdrs_min_io_size > ubi->min_io_size, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "io_init", 759, tmp___11->pid);
    dump_stack();
  } else {
  }
  tmp___14 = ldv__builtin_expect(ubi->min_io_size % ubi->hdrs_min_io_size != 0, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "io_init", 760, tmp___13->pid);
    dump_stack();
  } else {
  }
  ubi->max_write_size = (int )(ubi->mtd)->writebufsize;
  if (ubi->max_write_size < ubi->min_io_size || ubi->max_write_size % ubi->min_io_size != 0) {
    printk("\vUBI error: %s: bad write buffer size %d for %d min. I/O unit\n", "io_init",
           ubi->max_write_size, ubi->min_io_size);
    return (-22);
  } else {
    tmp___15 = is_power_of_2((unsigned long )ubi->max_write_size);
    if (tmp___15) {
      tmp___16 = 0;
    } else {
      tmp___16 = 1;
    }
    if (tmp___16) {
      printk("\vUBI error: %s: bad write buffer size %d for %d min. I/O unit\n", "io_init",
             ubi->max_write_size, ubi->min_io_size);
      return (-22);
    } else {
    }
  }
  ubi->ec_hdr_alsize = (int )(((unsigned int )ubi->hdrs_min_io_size + 63U) & - ((unsigned int )ubi->hdrs_min_io_size));
  ubi->vid_hdr_alsize = (int )(((unsigned int )ubi->hdrs_min_io_size + 63U) & - ((unsigned int )ubi->hdrs_min_io_size));
  descriptor___1.modname = "ubi";
  descriptor___1.function = "io_init";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___1.format = "UBI DBG gen (pid %d): min_io_size      %d\n";
  descriptor___1.lineno = 779U;
  descriptor___1.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = get_current();
    __dynamic_pr_debug(& descriptor___1, "UBI DBG gen (pid %d): min_io_size      %d\n",
                       tmp___17->pid, ubi->min_io_size);
  } else {
  }
  descriptor___2.modname = "ubi";
  descriptor___2.function = "io_init";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___2.format = "UBI DBG gen (pid %d): max_write_size   %d\n";
  descriptor___2.lineno = 780U;
  descriptor___2.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = get_current();
    __dynamic_pr_debug(& descriptor___2, "UBI DBG gen (pid %d): max_write_size   %d\n",
                       tmp___19->pid, ubi->max_write_size);
  } else {
  }
  descriptor___3.modname = "ubi";
  descriptor___3.function = "io_init";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___3.format = "UBI DBG gen (pid %d): hdrs_min_io_size %d\n";
  descriptor___3.lineno = 781U;
  descriptor___3.flags = 0U;
  tmp___22 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = get_current();
    __dynamic_pr_debug(& descriptor___3, "UBI DBG gen (pid %d): hdrs_min_io_size %d\n",
                       tmp___21->pid, ubi->hdrs_min_io_size);
  } else {
  }
  descriptor___4.modname = "ubi";
  descriptor___4.function = "io_init";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___4.format = "UBI DBG gen (pid %d): ec_hdr_alsize    %d\n";
  descriptor___4.lineno = 782U;
  descriptor___4.flags = 0U;
  tmp___24 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = get_current();
    __dynamic_pr_debug(& descriptor___4, "UBI DBG gen (pid %d): ec_hdr_alsize    %d\n",
                       tmp___23->pid, ubi->ec_hdr_alsize);
  } else {
  }
  descriptor___5.modname = "ubi";
  descriptor___5.function = "io_init";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___5.format = "UBI DBG gen (pid %d): vid_hdr_alsize   %d\n";
  descriptor___5.lineno = 783U;
  descriptor___5.flags = 0U;
  tmp___26 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___26 != 0L) {
    tmp___25 = get_current();
    __dynamic_pr_debug(& descriptor___5, "UBI DBG gen (pid %d): vid_hdr_alsize   %d\n",
                       tmp___25->pid, ubi->vid_hdr_alsize);
  } else {
  }
  if (ubi->vid_hdr_offset == 0) {
    tmp___27 = ubi->ec_hdr_alsize;
    ubi->vid_hdr_aloffset = tmp___27;
    ubi->vid_hdr_offset = tmp___27;
  } else {
    ubi->vid_hdr_aloffset = ubi->vid_hdr_offset & - ubi->hdrs_min_io_size;
    ubi->vid_hdr_shift = ubi->vid_hdr_offset - ubi->vid_hdr_aloffset;
  }
  ubi->leb_start = (int )((unsigned int )ubi->vid_hdr_offset + 64U);
  ubi->leb_start = (ubi->leb_start + (ubi->min_io_size + -1)) & - ubi->min_io_size;
  descriptor___6.modname = "ubi";
  descriptor___6.function = "io_init";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___6.format = "UBI DBG gen (pid %d): vid_hdr_offset   %d\n";
  descriptor___6.lineno = 800U;
  descriptor___6.flags = 0U;
  tmp___29 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___29 != 0L) {
    tmp___28 = get_current();
    __dynamic_pr_debug(& descriptor___6, "UBI DBG gen (pid %d): vid_hdr_offset   %d\n",
                       tmp___28->pid, ubi->vid_hdr_offset);
  } else {
  }
  descriptor___7.modname = "ubi";
  descriptor___7.function = "io_init";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___7.format = "UBI DBG gen (pid %d): vid_hdr_aloffset %d\n";
  descriptor___7.lineno = 801U;
  descriptor___7.flags = 0U;
  tmp___31 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___31 != 0L) {
    tmp___30 = get_current();
    __dynamic_pr_debug(& descriptor___7, "UBI DBG gen (pid %d): vid_hdr_aloffset %d\n",
                       tmp___30->pid, ubi->vid_hdr_aloffset);
  } else {
  }
  descriptor___8.modname = "ubi";
  descriptor___8.function = "io_init";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___8.format = "UBI DBG gen (pid %d): vid_hdr_shift    %d\n";
  descriptor___8.lineno = 802U;
  descriptor___8.flags = 0U;
  tmp___33 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___33 != 0L) {
    tmp___32 = get_current();
    __dynamic_pr_debug(& descriptor___8, "UBI DBG gen (pid %d): vid_hdr_shift    %d\n",
                       tmp___32->pid, ubi->vid_hdr_shift);
  } else {
  }
  descriptor___9.modname = "ubi";
  descriptor___9.function = "io_init";
  descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___9.format = "UBI DBG gen (pid %d): leb_start        %d\n";
  descriptor___9.lineno = 803U;
  descriptor___9.flags = 0U;
  tmp___35 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___35 != 0L) {
    tmp___34 = get_current();
    __dynamic_pr_debug(& descriptor___9, "UBI DBG gen (pid %d): leb_start        %d\n",
                       tmp___34->pid, ubi->leb_start);
  } else {
  }
  if (((unsigned int )ubi->vid_hdr_shift & 3U) != 0U) {
    printk("\vUBI error: %s: unaligned VID header shift %d\n", "io_init", ubi->vid_hdr_shift);
    return (-22);
  } else {
  }
  if ((((unsigned int )ubi->vid_hdr_offset <= 63U || (unsigned long )ubi->leb_start < (unsigned long )ubi->vid_hdr_offset + 64UL) || (unsigned long )ubi->leb_start > (unsigned long )ubi->peb_size - 64UL) || (ubi->leb_start & (ubi->min_io_size + -1)) != 0) {
    printk("\vUBI error: %s: bad VID header (%d) or data offsets (%d)\n", "io_init",
           ubi->vid_hdr_offset, ubi->leb_start);
    return (-22);
  } else {
  }
  ubi->max_erroneous = ubi->peb_count / 10;
  if (ubi->max_erroneous <= 15) {
    ubi->max_erroneous = 16;
  } else {
  }
  descriptor___10.modname = "ubi";
  descriptor___10.function = "io_init";
  descriptor___10.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared";
  descriptor___10.format = "UBI DBG gen (pid %d): max_erroneous    %d\n";
  descriptor___10.lineno = 829U;
  descriptor___10.flags = 0U;
  tmp___37 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___37 != 0L) {
    tmp___36 = get_current();
    __dynamic_pr_debug(& descriptor___10, "UBI DBG gen (pid %d): max_erroneous    %d\n",
                       tmp___36->pid, ubi->max_erroneous);
  } else {
  }
  if ((unsigned long )ubi->vid_hdr_offset + 64UL <= (unsigned long )ubi->hdrs_min_io_size) {
    printk("\fUBI warning: %s: EC and VID headers are in the same minimal I/O unit, switch to read-only mode\n",
           "io_init");
    ubi->ro_mode = 1;
  } else {
  }
  ubi->leb_size = ubi->peb_size - ubi->leb_start;
  if (((ubi->mtd)->flags & 1024U) == 0U) {
    printk("\rUBI: MTD device %d is write-protected, attach in read-only mode\n",
           (ubi->mtd)->index);
    ubi->ro_mode = 1;
  } else {
  }
  return (0);
}
}
static int autoresize(struct ubi_device *ubi , int vol_id )
{
  struct ubi_volume_desc desc ;
  struct ubi_volume *vol ;
  int err ;
  int old_reserved_pebs ;
  struct ubi_vtbl_record vtbl_rec ;
  {
  vol = ubi->volumes[vol_id];
  old_reserved_pebs = vol->reserved_pebs;
  if (ubi->ro_mode != 0) {
    printk("\fUBI warning: %s: skip auto-resize because of R/O mode\n", "autoresize");
    return (0);
  } else {
  }
  (ubi->vtbl + (unsigned long )vol_id)->flags = (unsigned int )(ubi->vtbl + (unsigned long )vol_id)->flags & 254U;
  if (ubi->avail_pebs == 0) {
    vtbl_rec = *(ubi->vtbl + (unsigned long )vol_id);
    err = ubi_change_vtbl_record(ubi, vol_id, & vtbl_rec);
    if (err != 0) {
      printk("\vUBI error: %s: cannot clean auto-resize flag for volume %d\n", "autoresize",
             vol_id);
    } else {
    }
  } else {
    desc.vol = vol;
    err = ubi_resize_volume(& desc, ubi->avail_pebs + old_reserved_pebs);
    if (err != 0) {
      printk("\vUBI error: %s: cannot auto-resize volume %d\n", "autoresize", vol_id);
    } else {
    }
  }
  if (err != 0) {
    return (err);
  } else {
  }
  printk("\rUBI: volume %d (\"%s\") re-sized from %d to %d LEBs\n", vol_id, (char *)(& vol->name),
         old_reserved_pebs, vol->reserved_pebs);
  return (0);
}
}
int ubi_attach_mtd_dev(struct mtd_info *mtd , int ubi_num , int vid_hdr_offset , int max_beb_per1024 )
{
  struct ubi_device *ubi ;
  int i ;
  int err ;
  int ref ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int _min1 ;
  uint32_t tmp___2 ;
  int _min2 ;
  uint32_t tmp___3 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  long tmp___4 ;
  bool tmp___5 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  {
  ref = 0;
  if (max_beb_per1024 < 0 || max_beb_per1024 > 768) {
    return (-22);
  } else {
  }
  if (max_beb_per1024 == 0) {
    max_beb_per1024 = 20;
  } else {
  }
  i = 0;
  goto ldv_26642;
  ldv_26641:
  ubi = ubi_devices[i];
  if ((unsigned long )ubi != (unsigned long )((struct ubi_device *)0) && mtd->index == (ubi->mtd)->index) {
    printk("\vUBI error: %s: mtd%d is already attached to ubi%d\n", "ubi_attach_mtd_dev",
           mtd->index, i);
    return (-17);
  } else {
  }
  i = i + 1;
  ldv_26642: ;
  if (i <= 31) {
    goto ldv_26641;
  } else {
  }
  if ((unsigned int )mtd->type == 7U) {
    printk("\vUBI error: %s: refuse attaching mtd%d - it is already emulated on top of UBI\n",
           "ubi_attach_mtd_dev", mtd->index);
    return (-22);
  } else {
  }
  if (ubi_num == -1) {
    ubi_num = 0;
    goto ldv_26646;
    ldv_26645: ;
    if ((unsigned long )ubi_devices[ubi_num] == (unsigned long )((struct ubi_device *)0)) {
      goto ldv_26644;
    } else {
    }
    ubi_num = ubi_num + 1;
    ldv_26646: ;
    if (ubi_num <= 31) {
      goto ldv_26645;
    } else {
    }
    ldv_26644: ;
    if (ubi_num == 32) {
      printk("\vUBI error: %s: only %d UBI devices may be created\n", "ubi_attach_mtd_dev",
             32);
      return (-23);
    } else {
    }
  } else {
    if (ubi_num > 31) {
      return (-22);
    } else {
    }
    if ((unsigned long )ubi_devices[ubi_num] != (unsigned long )((struct ubi_device *)0)) {
      printk("\vUBI error: %s: ubi%d already exists\n", "ubi_attach_mtd_dev", ubi_num);
      return (-17);
    } else {
    }
  }
  tmp = kzalloc(7072UL, 208U);
  ubi = (struct ubi_device *)tmp;
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-12);
  } else {
  }
  ubi->mtd = mtd;
  ubi->ubi_num = ubi_num;
  ubi->vid_hdr_offset = vid_hdr_offset;
  ubi->autoresize_vol_id = -1;
  tmp___0 = 0;
  ubi->fm_pool.size = tmp___0;
  ubi->fm_pool.used = tmp___0;
  tmp___1 = 0;
  ubi->fm_wl_pool.size = tmp___1;
  ubi->fm_wl_pool.used = tmp___1;
  tmp___2 = mtd_div_by_eb((ubi->mtd)->size, ubi->mtd);
  _min1 = ((int )tmp___2 / 100) * 5;
  _min2 = 256;
  ubi->fm_pool.max_size = _min1 < _min2 ? _min1 : _min2;
  if (ubi->fm_pool.max_size <= 7) {
    ubi->fm_pool.max_size = 8;
  } else {
  }
  ubi->fm_wl_pool.max_size = 25;
  ubi->fm_disabled = ! fm_autoconvert;
  if (ubi->fm_disabled == 0) {
    tmp___3 = mtd_div_by_eb((ubi->mtd)->size, ubi->mtd);
    if ((int )tmp___3 <= 64) {
      printk("\vUBI error: %s: More than %i PEBs are needed for fastmap, sorry.\n",
             "ubi_attach_mtd_dev", 64);
      ubi->fm_disabled = 1;
    } else {
    }
  } else {
  }
  printk("\rUBI: default fastmap pool size: %d\n", ubi->fm_pool.max_size);
  printk("\rUBI: default fastmap WL pool size: %d\n", ubi->fm_wl_pool.max_size);
  __mutex_init(& ubi->buf_mutex, "&ubi->buf_mutex", & __key);
  __mutex_init(& ubi->ckvol_mutex, "&ubi->ckvol_mutex", & __key___0);
  __mutex_init(& ubi->device_mutex, "&ubi->device_mutex", & __key___1);
  spinlock_check(& ubi->volumes_lock);
  __raw_spin_lock_init(& ubi->volumes_lock.ldv_6347.rlock, "&(&ubi->volumes_lock)->rlock",
                       & __key___2);
  __mutex_init(& ubi->fm_mutex, "&ubi->fm_mutex", & __key___3);
  __init_rwsem(& ubi->fm_sem, "&ubi->fm_sem", & __key___4);
  printk("\rUBI: attaching mtd%d to ubi%d\n", mtd->index, ubi_num);
  err = io_init(ubi, max_beb_per1024);
  if (err != 0) {
    goto out_free;
  } else {
  }
  err = -12;
  ubi->peb_buf = ldv_vmalloc_101((unsigned long )ubi->peb_size);
  if ((unsigned long )ubi->peb_buf == (unsigned long )((void *)0)) {
    goto out_free;
  } else {
  }
  ubi->fm_size = ubi_calc_fm_size(ubi);
  ubi->fm_buf = ldv_vzalloc_102(ubi->fm_size);
  if ((unsigned long )ubi->fm_buf == (unsigned long )((void *)0)) {
    goto out_free;
  } else {
  }
  err = ubi_attach(ubi, 0);
  if (err != 0) {
    printk("\vUBI error: %s: failed to attach mtd%d, error %d\n", "ubi_attach_mtd_dev",
           mtd->index, err);
    goto out_free;
  } else {
  }
  if (ubi->autoresize_vol_id != -1) {
    err = autoresize(ubi, ubi->autoresize_vol_id);
    if (err != 0) {
      goto out_detach;
    } else {
    }
  } else {
  }
  err = uif_init(ubi, & ref);
  if (err != 0) {
    goto out_detach;
  } else {
  }
  err = ubi_debugfs_init_dev(ubi);
  if (err != 0) {
    goto out_uif;
  } else {
  }
  ubi->bgt_thread = kthread_create_on_node(& ubi_thread, (void *)ubi, -1, "%s", (char *)(& ubi->bgt_name));
  tmp___5 = IS_ERR((void const *)ubi->bgt_thread);
  if ((int )tmp___5) {
    tmp___4 = PTR_ERR((void const *)ubi->bgt_thread);
    err = (int )tmp___4;
    printk("\vUBI error: %s: cannot spawn \"%s\", error %d\n", "ubi_attach_mtd_dev",
           (char *)(& ubi->bgt_name), err);
    goto out_debugfs;
  } else {
  }
  printk("\rUBI: attached mtd%d (name \"%s\", size %llu MiB) to ubi%d\n", mtd->index,
         mtd->name, ubi->flash_size >> 20, ubi_num);
  printk("\rUBI: PEB size: %d bytes (%d KiB), LEB size: %d bytes\n", ubi->peb_size,
         ubi->peb_size >> 10, ubi->leb_size);
  printk("\rUBI: min./max. I/O unit sizes: %d/%d, sub-page size %d\n", ubi->min_io_size,
         ubi->max_write_size, ubi->hdrs_min_io_size);
  printk("\rUBI: VID header offset: %d (aligned %d), data offset: %d\n", ubi->vid_hdr_offset,
         ubi->vid_hdr_aloffset, ubi->leb_start);
  printk("\rUBI: good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d\n", ubi->good_peb_count,
         ubi->bad_peb_count, ubi->corr_peb_count);
  printk("\rUBI: user volume: %d, internal volumes: %d, max. volumes count: %d\n",
         ubi->vol_count + -1, 1, ubi->vtbl_slots);
  printk("\rUBI: max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u\n",
         ubi->max_ec, ubi->mean_ec, 4096, ubi->image_seq);
  printk("\rUBI: available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d\n",
         ubi->avail_pebs, ubi->rsvd_pebs, ubi->beb_rsvd_pebs);
  spin_lock(& ubi->wl_lock);
  ubi->thread_enabled = 1;
  wake_up_process(ubi->bgt_thread);
  spin_unlock(& ubi->wl_lock);
  ubi_devices[ubi_num] = ubi;
  ubi_notify_all(ubi, 0, (struct notifier_block *)0);
  return (ubi_num);
  out_debugfs:
  ubi_debugfs_exit_dev(ubi);
  out_uif:
  get_device(& ubi->dev);
  tmp___7 = ldv__builtin_expect(ref == 0, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_attach_mtd_dev", 1119,
           tmp___6->pid);
    dump_stack();
  } else {
  }
  uif_close(ubi);
  out_detach:
  ubi_wl_close(ubi);
  ubi_free_internal_volumes(ubi);
  vfree((void const *)ubi->vtbl);
  out_free:
  vfree((void const *)ubi->peb_buf);
  vfree((void const *)ubi->fm_buf);
  if (ref != 0) {
    put_device(& ubi->dev);
  } else {
    kfree((void const *)ubi);
  }
  return (err);
}
}
int ubi_detach_mtd_dev(int ubi_num , int anyway )
{
  struct ubi_device *ubi ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  if (ubi_num < 0 || ubi_num > 31) {
    return (-22);
  } else {
  }
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-22);
  } else {
  }
  spin_lock(& ubi_devices_lock);
  put_device(& ubi->dev);
  ubi->ref_count = ubi->ref_count + -1;
  if (ubi->ref_count != 0) {
    if (anyway == 0) {
      spin_unlock(& ubi_devices_lock);
      return (-16);
    } else {
    }
    printk("\vUBI error: %s: %s reference count %d, destroy anyway\n", "ubi_detach_mtd_dev",
           (char *)(& ubi->ubi_name), ubi->ref_count);
  } else {
  }
  ubi_devices[ubi_num] = (struct ubi_device *)0;
  spin_unlock(& ubi_devices_lock);
  tmp___0 = ldv__builtin_expect(ubi->ubi_num != ubi_num, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_detach_mtd_dev", 1174,
           tmp->pid);
    dump_stack();
  } else {
  }
  ubi_notify_all(ubi, 1, (struct notifier_block *)0);
  printk("\rUBI: detaching mtd%d from ubi%d\n", (ubi->mtd)->index, ubi_num);
  ubi_update_fastmap(ubi);
  if ((unsigned long )ubi->bgt_thread != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(ubi->bgt_thread);
  } else {
  }
  get_device(& ubi->dev);
  ubi_debugfs_exit_dev(ubi);
  uif_close(ubi);
  ubi_wl_close(ubi);
  ubi_free_internal_volumes(ubi);
  vfree((void const *)ubi->vtbl);
  put_mtd_device(ubi->mtd);
  vfree((void const *)ubi->peb_buf);
  vfree((void const *)ubi->fm_buf);
  printk("\rUBI: mtd%d is detached from ubi%d\n", (ubi->mtd)->index, ubi->ubi_num);
  put_device(& ubi->dev);
  return (0);
}
}
static struct mtd_info *open_mtd_by_chdev(char const *mtd_dev )
{
  int err ;
  int major ;
  int minor ;
  int mode ;
  struct path path ;
  void *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  struct mtd_info *tmp___4 ;
  {
  err = kern_path(mtd_dev, 1U, & path);
  if (err != 0) {
    tmp = ERR_PTR((long )err);
    return ((struct mtd_info *)tmp);
  } else {
  }
  tmp___0 = imajor((struct inode const *)(path.dentry)->d_inode);
  major = (int )tmp___0;
  tmp___1 = iminor((struct inode const *)(path.dentry)->d_inode);
  minor = (int )tmp___1;
  mode = (int )((path.dentry)->d_inode)->i_mode;
  path_put((struct path const *)(& path));
  if (major != 90 || (mode & 61440) != 8192) {
    tmp___2 = ERR_PTR(-22L);
    return ((struct mtd_info *)tmp___2);
  } else {
  }
  if (minor & 1) {
    tmp___3 = ERR_PTR(-22L);
    return ((struct mtd_info *)tmp___3);
  } else {
  }
  tmp___4 = get_mtd_device((struct mtd_info *)0, minor / 2);
  return (tmp___4);
}
}
static struct mtd_info *open_mtd_device(char const *mtd_dev )
{
  struct mtd_info *mtd ;
  int mtd_num ;
  char *endp ;
  unsigned long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp = simple_strtoul(mtd_dev, & endp, 0U);
  mtd_num = (int )tmp;
  if ((int )((signed char )*endp) != 0 || (unsigned long )mtd_dev == (unsigned long )((char const *)endp)) {
    mtd = get_mtd_device_nm(mtd_dev);
    tmp___0 = IS_ERR((void const *)mtd);
    if ((int )tmp___0) {
      tmp___1 = PTR_ERR((void const *)mtd);
      if (tmp___1 == -19L) {
        mtd = open_mtd_by_chdev(mtd_dev);
      } else {
      }
    } else {
    }
  } else {
    mtd = get_mtd_device((struct mtd_info *)0, mtd_num);
  }
  return (mtd);
}
}
static int ubi_init(void)
{
  int err ;
  int i ;
  int k ;
  struct lock_class_key __key ;
  struct class *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  struct mtd_dev_param *p ;
  struct mtd_info *mtd ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  if (mtd_devs > 32) {
    printk("\vUBI error: %s: too many MTD devices, maximum is %d\n", "ubi_init", 32);
    return (-22);
  } else {
  }
  tmp = __class_create(& __this_module, "ubi", & __key);
  ubi_class = tmp;
  tmp___1 = IS_ERR((void const *)ubi_class);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)ubi_class);
    err = (int )tmp___0;
    printk("\vUBI error: %s: cannot create UBI class\n", "ubi_init");
    goto out;
  } else {
  }
  err = class_create_file(ubi_class, (struct class_attribute const *)(& ubi_version));
  if (err != 0) {
    printk("\vUBI error: %s: cannot create sysfs file\n", "ubi_init");
    goto out_class;
  } else {
  }
  err = ldv_misc_register_103(& ubi_ctrl_cdev);
  if (err != 0) {
    printk("\vUBI error: %s: cannot register device\n", "ubi_init");
    goto out_version;
  } else {
  }
  ubi_wl_entry_slab = kmem_cache_create("ubi_wl_entry_slab", 32UL, 0UL, 0UL, (void (*)(void * ))0);
  if ((unsigned long )ubi_wl_entry_slab == (unsigned long )((struct kmem_cache *)0)) {
    err = -12;
    goto out_dev_unreg;
  } else {
  }
  err = ubi_debugfs_init();
  if (err != 0) {
    goto out_slab;
  } else {
  }
  i = 0;
  goto ldv_26700;
  ldv_26699:
  p = (struct mtd_dev_param *)(& mtd_dev_param) + (unsigned long )i;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/build.o.c.prepared",
                1328, 0);
  _cond_resched();
  mtd = open_mtd_device((char const *)(& p->name));
  tmp___3 = IS_ERR((void const *)mtd);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)mtd);
    err = (int )tmp___2;
    printk("\vUBI error: %s: cannot open mtd %s, error %d\n", "ubi_init", (char *)(& p->name),
           err);
    goto out_detach;
    goto ldv_26698;
  } else {
  }
  mutex_lock_nested(& ubi_devices_mutex, 0U);
  err = ubi_attach_mtd_dev(mtd, p->ubi_num, p->vid_hdr_offs, p->max_beb_per1024);
  mutex_unlock(& ubi_devices_mutex);
  if (err < 0) {
    printk("\vUBI error: %s: cannot attach mtd%d\n", "ubi_init", mtd->index);
    put_mtd_device(mtd);
    goto out_detach;
  } else {
  }
  ldv_26698:
  i = i + 1;
  ldv_26700: ;
  if (i < mtd_devs) {
    goto ldv_26699;
  } else {
  }
  err = ubiblock_init();
  if (err != 0) {
    printk("\vUBI error: %s: block: cannot initialize, error %d\n", "ubi_init", err);
    goto out_detach;
  } else {
  }
  return (0);
  out_detach:
  k = 0;
  goto ldv_26703;
  ldv_26702: ;
  if ((unsigned long )ubi_devices[k] != (unsigned long )((struct ubi_device *)0)) {
    mutex_lock_nested(& ubi_devices_mutex, 0U);
    ubi_detach_mtd_dev((ubi_devices[k])->ubi_num, 1);
    mutex_unlock(& ubi_devices_mutex);
  } else {
  }
  k = k + 1;
  ldv_26703: ;
  if (k < i) {
    goto ldv_26702;
  } else {
  }
  ubi_debugfs_exit();
  out_slab:
  kmem_cache_destroy(ubi_wl_entry_slab);
  out_dev_unreg:
  ldv_misc_deregister_104(& ubi_ctrl_cdev);
  out_version:
  class_remove_file(ubi_class, (struct class_attribute const *)(& ubi_version));
  out_class:
  class_destroy(ubi_class);
  out:
  printk("\vUBI error: %s: cannot initialize UBI, error %d\n", "ubi_init", err);
  return (err);
}
}
static void ubi_exit(void)
{
  int i ;
  {
  ubiblock_exit();
  i = 0;
  goto ldv_26715;
  ldv_26714: ;
  if ((unsigned long )ubi_devices[i] != (unsigned long )((struct ubi_device *)0)) {
    mutex_lock_nested(& ubi_devices_mutex, 0U);
    ubi_detach_mtd_dev((ubi_devices[i])->ubi_num, 1);
    mutex_unlock(& ubi_devices_mutex);
  } else {
  }
  i = i + 1;
  ldv_26715: ;
  if (i <= 31) {
    goto ldv_26714;
  } else {
  }
  ubi_debugfs_exit();
  kmem_cache_destroy(ubi_wl_entry_slab);
  ldv_misc_deregister_105(& ubi_ctrl_cdev);
  class_remove_file(ubi_class, (struct class_attribute const *)(& ubi_version));
  class_destroy(ubi_class);
  return;
}
}
static int bytes_str_to_int(char const *str )
{
  char *endp ;
  unsigned long result ;
  {
  result = simple_strtoul(str, & endp, 0U);
  if ((unsigned long )str == (unsigned long )((char const *)endp) || result > 2147483646UL) {
    printk("\vUBI error: %s: incorrect bytes count: \"%s\"\n\n", "bytes_str_to_int",
           str);
    return (-22);
  } else {
  }
  switch ((int )*endp) {
  case 71:
  result = result * 1024UL;
  case 77:
  result = result * 1024UL;
  case 75:
  result = result * 1024UL;
  if ((int )((signed char )*(endp + 1UL)) == 105 && (int )((signed char )*(endp + 2UL)) == 66) {
    endp = endp + 2UL;
  } else {
  }
  case 0: ;
  goto ldv_26732;
  default:
  printk("\vUBI error: %s: incorrect bytes count: \"%s\"\n\n", "bytes_str_to_int",
         str);
  return (-22);
  }
  ldv_26732: ;
  return ((int )result);
}
}
static int ubi_mtd_param_parse(char const *val , struct kernel_param *kp )
{
  int i ;
  int len ;
  struct mtd_dev_param *p ;
  char buf[64U] ;
  char *pbuf ;
  char *tokens[4U] ;
  char *token ;
  __kernel_size_t tmp ;
  int err ;
  int tmp___0 ;
  int err___0 ;
  int tmp___1 ;
  {
  pbuf = (char *)(& buf);
  if ((unsigned long )val == (unsigned long )((char const *)0)) {
    return (-22);
  } else {
  }
  if (mtd_devs == 32) {
    printk("\vUBI error: %s: too many parameters, max. is %d\n\n", "ubi_mtd_param_parse",
           32);
    return (-22);
  } else {
  }
  tmp = strnlen(val, 64UL);
  len = (int )tmp;
  if (len == 64) {
    printk("\vUBI error: %s: parameter \"%s\" is too long, max. is %d\n\n", "ubi_mtd_param_parse",
           val, 64);
    return (-22);
  } else {
  }
  if (len == 0) {
    printk("\fUBI warning: empty \'mtd=\' parameter - ignored\n");
    return (0);
  } else {
  }
  strcpy((char *)(& buf), val);
  if ((int )((signed char )buf[len + -1]) == 10) {
    buf[len + -1] = 0;
  } else {
  }
  i = 0;
  goto ldv_26747;
  ldv_26746:
  tokens[i] = strsep(& pbuf, ",");
  i = i + 1;
  ldv_26747: ;
  if (i <= 3) {
    goto ldv_26746;
  } else {
  }
  if ((unsigned long )pbuf != (unsigned long )((char *)0)) {
    printk("\vUBI error: %s: too many arguments at \"%s\"\n\n", "ubi_mtd_param_parse",
           val);
    return (-22);
  } else {
  }
  p = (struct mtd_dev_param *)(& mtd_dev_param) + (unsigned long )mtd_devs;
  strcpy((char *)(& p->name), (char const *)tokens[0]);
  token = tokens[1];
  if ((unsigned long )token != (unsigned long )((char *)0)) {
    p->vid_hdr_offs = bytes_str_to_int((char const *)token);
    if (p->vid_hdr_offs < 0) {
      return (p->vid_hdr_offs);
    } else {
    }
  } else {
  }
  token = tokens[2];
  if ((unsigned long )token != (unsigned long )((char *)0)) {
    tmp___0 = kstrtoint((char const *)token, 10U, & p->max_beb_per1024);
    err = tmp___0;
    if (err != 0) {
      printk("\vUBI error: %s: bad value for max_beb_per1024 parameter: %s\n", "ubi_mtd_param_parse",
             token);
      return (-22);
    } else {
    }
  } else {
  }
  token = tokens[3];
  if ((unsigned long )token != (unsigned long )((char *)0)) {
    tmp___1 = kstrtoint((char const *)token, 10U, & p->ubi_num);
    err___0 = tmp___1;
    if (err___0 != 0) {
      printk("\vUBI error: %s: bad value for ubi_num parameter: %s\n", "ubi_mtd_param_parse",
             token);
      return (-22);
    } else {
    }
  } else {
    p->ubi_num = -1;
  }
  mtd_devs = mtd_devs + 1;
  return (0);
}
}
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_main_exported_1(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_4(void) ;
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  struct device *ldvarg24 ;
  void *tmp___2 ;
  struct device_attribute *ldvarg26 ;
  void *tmp___3 ;
  char *ldvarg25 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg39 ;
  void *tmp___5 ;
  struct device *ldvarg37 ;
  void *tmp___6 ;
  char *ldvarg38 ;
  void *tmp___7 ;
  struct device_attribute *ldvarg45 ;
  void *tmp___8 ;
  struct device *ldvarg43 ;
  void *tmp___9 ;
  char *ldvarg44 ;
  void *tmp___10 ;
  struct device_attribute *ldvarg48 ;
  void *tmp___11 ;
  char *ldvarg47 ;
  void *tmp___12 ;
  struct device *ldvarg46 ;
  void *tmp___13 ;
  char *ldvarg67 ;
  void *tmp___14 ;
  struct device *ldvarg66 ;
  void *tmp___15 ;
  struct device_attribute *ldvarg68 ;
  void *tmp___16 ;
  char *ldvarg70 ;
  void *tmp___17 ;
  struct device_attribute *ldvarg71 ;
  void *tmp___18 ;
  struct device *ldvarg69 ;
  void *tmp___19 ;
  char *ldvarg73 ;
  void *tmp___20 ;
  struct class_attribute *ldvarg74 ;
  void *tmp___21 ;
  struct class *ldvarg72 ;
  void *tmp___22 ;
  struct device_attribute *ldvarg77 ;
  void *tmp___23 ;
  char *ldvarg76 ;
  void *tmp___24 ;
  struct device *ldvarg75 ;
  void *tmp___25 ;
  char *ldvarg79 ;
  void *tmp___26 ;
  struct device_attribute *ldvarg80 ;
  void *tmp___27 ;
  struct device *ldvarg78 ;
  void *tmp___28 ;
  char *ldvarg81 ;
  void *tmp___29 ;
  struct kernel_param *ldvarg82 ;
  void *tmp___30 ;
  char *ldvarg95 ;
  void *tmp___31 ;
  struct device *ldvarg94 ;
  void *tmp___32 ;
  struct device_attribute *ldvarg96 ;
  void *tmp___33 ;
  char *ldvarg98 ;
  void *tmp___34 ;
  struct device *ldvarg97 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg99 ;
  void *tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
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
  {
  tmp = ldv_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_zalloc(1416UL);
  ldvarg24 = (struct device *)tmp___2;
  tmp___3 = ldv_zalloc(48UL);
  ldvarg26 = (struct device_attribute *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg25 = (char *)tmp___4;
  tmp___5 = ldv_zalloc(48UL);
  ldvarg39 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_zalloc(1416UL);
  ldvarg37 = (struct device *)tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg38 = (char *)tmp___7;
  tmp___8 = ldv_zalloc(48UL);
  ldvarg45 = (struct device_attribute *)tmp___8;
  tmp___9 = ldv_zalloc(1416UL);
  ldvarg43 = (struct device *)tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg44 = (char *)tmp___10;
  tmp___11 = ldv_zalloc(48UL);
  ldvarg48 = (struct device_attribute *)tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg47 = (char *)tmp___12;
  tmp___13 = ldv_zalloc(1416UL);
  ldvarg46 = (struct device *)tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg67 = (char *)tmp___14;
  tmp___15 = ldv_zalloc(1416UL);
  ldvarg66 = (struct device *)tmp___15;
  tmp___16 = ldv_zalloc(48UL);
  ldvarg68 = (struct device_attribute *)tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg70 = (char *)tmp___17;
  tmp___18 = ldv_zalloc(48UL);
  ldvarg71 = (struct device_attribute *)tmp___18;
  tmp___19 = ldv_zalloc(1416UL);
  ldvarg69 = (struct device *)tmp___19;
  tmp___20 = ldv_zalloc(1UL);
  ldvarg73 = (char *)tmp___20;
  tmp___21 = ldv_zalloc(48UL);
  ldvarg74 = (struct class_attribute *)tmp___21;
  tmp___22 = ldv_zalloc(120UL);
  ldvarg72 = (struct class *)tmp___22;
  tmp___23 = ldv_zalloc(48UL);
  ldvarg77 = (struct device_attribute *)tmp___23;
  tmp___24 = ldv_zalloc(1UL);
  ldvarg76 = (char *)tmp___24;
  tmp___25 = ldv_zalloc(1416UL);
  ldvarg75 = (struct device *)tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg79 = (char *)tmp___26;
  tmp___27 = ldv_zalloc(48UL);
  ldvarg80 = (struct device_attribute *)tmp___27;
  tmp___28 = ldv_zalloc(1416UL);
  ldvarg78 = (struct device *)tmp___28;
  tmp___29 = ldv_zalloc(1UL);
  ldvarg81 = (char *)tmp___29;
  tmp___30 = ldv_zalloc(32UL);
  ldvarg82 = (struct kernel_param *)tmp___30;
  tmp___31 = ldv_zalloc(1UL);
  ldvarg95 = (char *)tmp___31;
  tmp___32 = ldv_zalloc(1416UL);
  ldvarg94 = (struct device *)tmp___32;
  tmp___33 = ldv_zalloc(48UL);
  ldvarg96 = (struct device_attribute *)tmp___33;
  tmp___34 = ldv_zalloc(1UL);
  ldvarg98 = (char *)tmp___34;
  tmp___35 = ldv_zalloc(1416UL);
  ldvarg97 = (struct device *)tmp___35;
  tmp___36 = ldv_zalloc(48UL);
  ldvarg99 = (struct device_attribute *)tmp___36;
  ldv_initialize();
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_23 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_26963:
  tmp___37 = __VERIFIER_nondet_int();
  switch (tmp___37) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___38 = __VERIFIER_nondet_int();
    switch (tmp___38) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      dev_attribute_show(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_26890;
    default:
    ldv_stop();
    }
    ldv_26890: ;
  } else {
  }
  goto ldv_26892;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    ldv_main_exported_21();
  } else {
  }
  goto ldv_26892;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_26892;
  case 3: ;
  if (ldv_state_variable_26 != 0) {
    ldv_main_exported_26();
  } else {
  }
  goto ldv_26892;
  case 4: ;
  if (ldv_state_variable_17 != 0) {
    tmp___39 = __VERIFIER_nondet_int();
    switch (tmp___39) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      dev_attribute_show(ldvarg24, ldvarg26, ldvarg25);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_26898;
    default:
    ldv_stop();
    }
    ldv_26898: ;
  } else {
  }
  goto ldv_26892;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_26892;
  case 6: ;
  if (ldv_state_variable_22 != 0) {
    ldv_main_exported_22();
  } else {
  }
  goto ldv_26892;
  case 7: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_26892;
  case 8: ;
  if (ldv_state_variable_18 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      dev_attribute_show(ldvarg37, ldvarg39, ldvarg38);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_26905;
    default:
    ldv_stop();
    }
    ldv_26905: ;
  } else {
  }
  goto ldv_26892;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___41 = __VERIFIER_nondet_int();
    switch (tmp___41) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      ubi_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_26910;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = ubi_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_19 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_24 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_20 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_28 = 1;
        ldv_state_variable_25 = 1;
        ldv_state_variable_27 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_23 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_22 = 1;
        ldv_state_variable_2 = 1;
        ldv_initialize_block_device_operations_2();
        ldv_state_variable_17 = 1;
        ldv_state_variable_26 = 1;
        ldv_state_variable_21 = 1;
        ldv_state_variable_11 = 1;
      } else {
      }
    } else {
    }
    goto ldv_26910;
    default:
    ldv_stop();
    }
    ldv_26910: ;
  } else {
  }
  goto ldv_26892;
  case 10: ;
  if (ldv_state_variable_23 != 0) {
    ldv_main_exported_23();
  } else {
  }
  goto ldv_26892;
  case 11: ;
  if (ldv_state_variable_16 != 0) {
    tmp___42 = __VERIFIER_nondet_int();
    switch (tmp___42) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      dev_attribute_show(ldvarg43, ldvarg45, ldvarg44);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_26916;
    default:
    ldv_stop();
    }
    ldv_26916: ;
  } else {
  }
  goto ldv_26892;
  case 12: ;
  if (ldv_state_variable_13 != 0) {
    tmp___43 = __VERIFIER_nondet_int();
    switch (tmp___43) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      dev_attribute_show(ldvarg46, ldvarg48, ldvarg47);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_26920;
    default:
    ldv_stop();
    }
    ldv_26920: ;
  } else {
  }
  goto ldv_26892;
  case 13: ;
  if (ldv_state_variable_27 != 0) {
    ldv_main_exported_27();
  } else {
  }
  goto ldv_26892;
  case 14: ;
  if (ldv_state_variable_25 != 0) {
    ldv_main_exported_25();
  } else {
  }
  goto ldv_26892;
  case 15: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_26892;
  case 16: ;
  if (ldv_state_variable_28 != 0) {
    ldv_main_exported_28();
  } else {
  }
  goto ldv_26892;
  case 17: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_26892;
  case 18: ;
  if (ldv_state_variable_9 != 0) {
    tmp___44 = __VERIFIER_nondet_int();
    switch (tmp___44) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      dev_attribute_show(ldvarg66, ldvarg68, ldvarg67);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_26929;
    default:
    ldv_stop();
    }
    ldv_26929: ;
  } else {
  }
  goto ldv_26892;
  case 19: ;
  if (ldv_state_variable_12 != 0) {
    tmp___45 = __VERIFIER_nondet_int();
    switch (tmp___45) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      dev_attribute_show(ldvarg69, ldvarg71, ldvarg70);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_26933;
    default:
    ldv_stop();
    }
    ldv_26933: ;
  } else {
  }
  goto ldv_26892;
  case 20: ;
  if (ldv_state_variable_20 != 0) {
    tmp___46 = __VERIFIER_nondet_int();
    switch (tmp___46) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      ubi_version_show(ldvarg72, ldvarg74, ldvarg73);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_26937;
    default:
    ldv_stop();
    }
    ldv_26937: ;
  } else {
  }
  goto ldv_26892;
  case 21: ;
  if (ldv_state_variable_14 != 0) {
    tmp___47 = __VERIFIER_nondet_int();
    switch (tmp___47) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      dev_attribute_show(ldvarg75, ldvarg77, ldvarg76);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_26941;
    default:
    ldv_stop();
    }
    ldv_26941: ;
  } else {
  }
  goto ldv_26892;
  case 22: ;
  if (ldv_state_variable_15 != 0) {
    tmp___48 = __VERIFIER_nondet_int();
    switch (tmp___48) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      dev_attribute_show(ldvarg78, ldvarg80, ldvarg79);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_26945;
    default:
    ldv_stop();
    }
    ldv_26945: ;
  } else {
  }
  goto ldv_26892;
  case 23: ;
  if (ldv_state_variable_8 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      ubi_mtd_param_parse((char const *)ldvarg81, ldvarg82);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_26949;
    default:
    ldv_stop();
    }
    ldv_26949: ;
  } else {
  }
  goto ldv_26892;
  case 24: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_26892;
  case 25: ;
  if (ldv_state_variable_24 != 0) {
    ldv_main_exported_24();
  } else {
  }
  goto ldv_26892;
  case 26: ;
  if (ldv_state_variable_19 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      dev_attribute_show(ldvarg94, ldvarg96, ldvarg95);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_26955;
    default:
    ldv_stop();
    }
    ldv_26955: ;
  } else {
  }
  goto ldv_26892;
  case 27: ;
  if (ldv_state_variable_10 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      dev_attribute_show(ldvarg97, ldvarg99, ldvarg98);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_26959;
    default:
    ldv_stop();
    }
    ldv_26959: ;
  } else {
  }
  goto ldv_26892;
  case 28: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_26892;
  default:
  ldv_stop();
  }
  ldv_26892: ;
  goto ldv_26963;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void *ldv_kmem_cache_alloc_95(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void ldv_cdev_init_98(struct cdev *cdev , struct file_operations const *fops )
{
  {
  cdev_init(cdev, fops);
  ldv_state_variable_7 = 1;
  ldv_file_operations_7();
  return;
}
}
void ldv_cdev_del_99(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_del_100(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void *ldv_vmalloc_101(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void *ldv_vzalloc_102(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vzalloc(ldv_func_arg1);
  return ((void *)0);
}
}
int ldv_misc_register_103(struct miscdevice *misc )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_register(misc);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_file_operations_7();
  return (ldv_func_res);
}
}
int ldv_misc_deregister_104(struct miscdevice *misc )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 0;
  return (ldv_func_res);
}
}
int ldv_misc_deregister_105(struct miscdevice *misc )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 0;
  return (ldv_func_res);
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
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
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
extern size_t strlen(char const * ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
void *ldv_vmalloc_133(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_134(unsigned long ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_130(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
void ldv_file_operations_6(void) ;
void ldv_file_operations_5(void) ;
extern bool capable(int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
  }
  return (n);
}
}
__inline static struct inode *file_inode(struct file *f )
{
  {
  return (f->f_inode);
}
}
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern loff_t fixed_size_llseek(struct file * , loff_t , int , loff_t ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
void ubi_get_volume_info(struct ubi_volume_desc *desc , struct ubi_volume_info *vi ) ;
struct ubi_volume_desc *ubi_open_volume(int ubi_num , int vol_id , int mode ) ;
struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num , char const *name , int mode ) ;
void ubi_close_volume(struct ubi_volume_desc *desc ) ;
int ubi_leb_unmap(struct ubi_volume_desc *desc , int lnum ) ;
int ubi_leb_map(struct ubi_volume_desc *desc , int lnum ) ;
int ubi_is_mapped(struct ubi_volume_desc *desc , int lnum ) ;
int ubi_sync(int ubi_num ) ;
void ubi_dump_mkvol_req(struct ubi_mkvol_req const *req ) ;
int ubi_check_volume(struct ubi_device *ubi , int vol_id ) ;
int ubi_eba_read_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                     void *buf , int offset , int len , int check ) ;
int ubiblock_create(struct ubi_volume_info *vi ) ;
int ubiblock_remove(struct ubi_volume_info *vi ) ;
static int get_exclusive(struct ubi_volume_desc *desc )
{
  int users ;
  int err ;
  struct ubi_volume *vol ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  spin_lock(& (vol->ubi)->volumes_lock);
  users = (vol->readers + vol->writers) + vol->exclusive;
  tmp___0 = ldv__builtin_expect(users <= 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "get_exclusive", 128, tmp->pid);
    dump_stack();
  } else {
  }
  if (users > 1) {
    printk("\vUBI error: %s: %d users for volume %d\n", "get_exclusive", users, vol->vol_id);
    err = -16;
  } else {
    tmp___1 = 0;
    vol->writers = tmp___1;
    vol->readers = tmp___1;
    vol->exclusive = 1;
    err = desc->mode;
    desc->mode = 3;
  }
  spin_unlock(& (vol->ubi)->volumes_lock);
  return (err);
}
}
static void revoke_exclusive(struct ubi_volume_desc *desc , int mode )
{
  struct ubi_volume *vol ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  vol = desc->vol;
  spin_lock(& (vol->ubi)->volumes_lock);
  tmp___0 = ldv__builtin_expect(vol->readers != 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "revoke_exclusive", 153,
           tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect(vol->writers != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "revoke_exclusive", 153,
             tmp->pid);
      dump_stack();
    } else {
    }
  }
  tmp___3 = ldv__builtin_expect(vol->exclusive != 1, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "revoke_exclusive", 154,
           tmp___2->pid);
    dump_stack();
  } else {
    tmp___4 = ldv__builtin_expect(desc->mode != 3, 0L);
    if (tmp___4 != 0L) {
      tmp___2 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "revoke_exclusive", 154,
             tmp___2->pid);
      dump_stack();
    } else {
    }
  }
  vol->exclusive = 0;
  if (mode == 1) {
    vol->readers = 1;
  } else
  if (mode == 2) {
    vol->writers = 1;
  } else {
    vol->exclusive = 1;
  }
  spin_unlock(& (vol->ubi)->volumes_lock);
  desc->mode = mode;
  return;
}
}
static int vol_cdev_open(struct inode *inode , struct file *file )
{
  struct ubi_volume_desc *desc ;
  int vol_id ;
  unsigned int tmp ;
  int mode ;
  int ubi_num ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  tmp = iminor((struct inode const *)inode);
  vol_id = (int )(tmp - 1U);
  tmp___0 = imajor((struct inode const *)inode);
  ubi_num = ubi_major2num((int )tmp___0);
  if (ubi_num < 0) {
    return (ubi_num);
  } else {
  }
  if ((file->f_mode & 2U) != 0U) {
    mode = 2;
  } else {
    mode = 1;
  }
  descriptor.modname = "ubi";
  descriptor.function = "vol_cdev_open";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): open device %d, volume %d, mode %d\n";
  descriptor.lineno = 182U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): open device %d, volume %d, mode %d\n",
                       tmp___1->pid, ubi_num, vol_id, mode);
  } else {
  }
  desc = ubi_open_volume(ubi_num, vol_id, mode);
  tmp___4 = IS_ERR((void const *)desc);
  if ((int )tmp___4) {
    tmp___3 = PTR_ERR((void const *)desc);
    return ((int )tmp___3);
  } else {
  }
  file->private_data = (void *)desc;
  return (0);
}
}
static int vol_cdev_release(struct inode *inode , struct file *file )
{
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  {
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  descriptor.modname = "ubi";
  descriptor.function = "vol_cdev_release";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): release device %d, volume %d, mode %d\n";
  descriptor.lineno = 198U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): release device %d, volume %d, mode %d\n",
                       tmp->pid, (vol->ubi)->ubi_num, vol->vol_id, desc->mode);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    printk("\fUBI warning: %s: update of volume %d not finished, volume is damaged\n",
           "vol_cdev_release", vol->vol_id);
    tmp___2 = ldv__builtin_expect((unsigned int )*((unsigned char *)vol + 1992UL) != 0U,
                               0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "vol_cdev_release", 203,
             tmp___1->pid);
      dump_stack();
    } else {
    }
    vol->updating = 0U;
    vfree((void const *)vol->upd_buf);
  } else
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "vol_cdev_release";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
    descriptor___0.format = "UBI DBG gen (pid %d): only %lld of %lld bytes received for atomic LEB change for volume %d:%d, cancel\n";
    descriptor___0.lineno = 209U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): only %lld of %lld bytes received for atomic LEB change for volume %d:%d, cancel\n",
                         tmp___3->pid, vol->upd_received, vol->upd_bytes, (vol->ubi)->ubi_num,
                         vol->vol_id);
    } else {
    }
    vol->changing_leb = 0U;
    vfree((void const *)vol->upd_buf);
  } else {
  }
  ubi_close_volume(desc);
  return (0);
}
}
static loff_t vol_cdev_llseek(struct file *file , loff_t offset , int origin )
{
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  loff_t tmp ;
  {
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    printk("\vUBI error: %s: updating\n", "vol_cdev_llseek");
    return (-16LL);
  } else {
  }
  tmp = fixed_size_llseek(file, offset, origin, vol->used_bytes);
  return (tmp);
}
}
static int vol_cdev_fsync(struct file *file , loff_t start , loff_t end , int datasync )
{
  struct ubi_volume_desc *desc ;
  struct ubi_device *ubi ;
  struct inode *inode ;
  struct inode *tmp ;
  int err ;
  {
  desc = (struct ubi_volume_desc *)file->private_data;
  ubi = (desc->vol)->ubi;
  tmp = file_inode(file);
  inode = tmp;
  mutex_lock_nested(& inode->i_mutex, 0U);
  err = ubi_sync(ubi->ubi_num);
  mutex_unlock(& inode->i_mutex);
  return (err);
}
}
static ssize_t vol_cdev_read(struct file *file , char *buf , size_t count , loff_t *offp )
{
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int err ;
  int lnum ;
  int off ;
  int len ;
  int tbuf_size ;
  size_t count_save ;
  void *tbuf ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  u64 tmp___3 ;
  unsigned long tmp___4 ;
  {
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  ubi = vol->ubi;
  count_save = count;
  descriptor.modname = "ubi";
  descriptor.function = "vol_cdev_read";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): read %zd bytes from offset %lld of volume %d\n";
  descriptor.lineno = 257U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): read %zd bytes from offset %lld of volume %d\n",
                       tmp->pid, count, *offp, vol->vol_id);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    printk("\vUBI error: %s: updating\n", "vol_cdev_read");
    return (-16L);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    printk("\vUBI error: %s: damaged volume, update marker is set\n", "vol_cdev_read");
    return (-9L);
  } else {
  }
  if (*offp == vol->used_bytes || count == 0UL) {
    return (0L);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "vol_cdev_read";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
    descriptor___0.format = "UBI DBG gen (pid %d): read from corrupted volume %d\n";
    descriptor___0.lineno = 271U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): read from corrupted volume %d\n",
                         tmp___1->pid, vol->vol_id);
    } else {
    }
  } else {
  }
  if ((unsigned long long )*offp + (unsigned long long )count > (unsigned long long )vol->used_bytes) {
    count = (size_t )(vol->used_bytes - *offp);
    count_save = count;
  } else {
  }
  tbuf_size = vol->usable_leb_size;
  if ((size_t )tbuf_size > count) {
    tbuf_size = (int )((((unsigned int )ubi->min_io_size + (unsigned int )count) - 1U) & - ((unsigned int )ubi->min_io_size));
  } else {
  }
  tbuf = ldv_vmalloc_133((unsigned long )tbuf_size);
  if ((unsigned long )tbuf == (unsigned long )((void *)0)) {
    return (-12L);
  } else {
  }
  len = (int )(count < (size_t )tbuf_size ? count : (size_t )tbuf_size);
  tmp___3 = div_u64_rem((u64 )*offp, (u32 )vol->usable_leb_size, (u32 *)(& off));
  lnum = (int )tmp___3;
  ldv_27712:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared",
                287, 0);
  _cond_resched();
  if (off + len >= vol->usable_leb_size) {
    len = vol->usable_leb_size - off;
  } else {
  }
  err = ubi_eba_read_leb(ubi, vol, lnum, tbuf, off, len, 0);
  if (err != 0) {
    goto ldv_27711;
  } else {
  }
  off = off + len;
  if (vol->usable_leb_size == off) {
    lnum = lnum + 1;
    off = off - vol->usable_leb_size;
  } else {
  }
  count = count - (size_t )len;
  *offp = *offp + (loff_t )len;
  tmp___4 = copy_to_user((void *)buf, (void const *)tbuf, (unsigned long )len);
  err = (int )tmp___4;
  if (err != 0) {
    err = -14;
    goto ldv_27711;
  } else {
  }
  buf = buf + (unsigned long )len;
  len = (int )(count < (size_t )tbuf_size ? count : (size_t )tbuf_size);
  if (count != 0UL) {
    goto ldv_27712;
  } else {
  }
  ldv_27711:
  vfree((void const *)tbuf);
  return ((ssize_t )(err != 0 ? (size_t )err : count_save - count));
}
}
static ssize_t vol_cdev_direct_write(struct file *file , char const *buf , size_t count ,
                                     loff_t *offp )
{
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int lnum ;
  int off ;
  int len ;
  int tbuf_size ;
  int err ;
  size_t count_save ;
  char *tbuf ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  u64 tmp___1 ;
  void *tmp___2 ;
  unsigned long tmp___3 ;
  {
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  ubi = vol->ubi;
  err = 0;
  count_save = count;
  if ((unsigned int )*((unsigned char *)vol + 1992UL) == 0U) {
    return (-1L);
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "vol_cdev_direct_write";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): requested: write %zd bytes to offset %lld of volume %u\n";
  descriptor.lineno = 337U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): requested: write %zd bytes to offset %lld of volume %u\n",
                       tmp->pid, count, *offp, vol->vol_id);
  } else {
  }
  if (vol->vol_type == 4) {
    return (-30L);
  } else {
  }
  tmp___1 = div_u64_rem((u64 )*offp, (u32 )vol->usable_leb_size, (u32 *)(& off));
  lnum = (int )tmp___1;
  if (((ubi->min_io_size + -1) & off) != 0) {
    printk("\vUBI error: %s: unaligned position\n", "vol_cdev_direct_write");
    return (-22L);
  } else {
  }
  if ((unsigned long long )*offp + (unsigned long long )count > (unsigned long long )vol->used_bytes) {
    count = (size_t )(vol->used_bytes - *offp);
    count_save = count;
  } else {
  }
  if (((size_t )(ubi->min_io_size + -1) & count) != 0UL) {
    printk("\vUBI error: %s: unaligned write length\n", "vol_cdev_direct_write");
    return (-22L);
  } else {
  }
  tbuf_size = vol->usable_leb_size;
  if ((size_t )tbuf_size > count) {
    tbuf_size = (int )((((unsigned int )ubi->min_io_size + (unsigned int )count) - 1U) & - ((unsigned int )ubi->min_io_size));
  } else {
  }
  tmp___2 = ldv_vmalloc_134((unsigned long )tbuf_size);
  tbuf = (char *)tmp___2;
  if ((unsigned long )tbuf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  len = (int )(count < (size_t )tbuf_size ? count : (size_t )tbuf_size);
  goto ldv_27734;
  ldv_27733:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared",
                367, 0);
  _cond_resched();
  if (off + len >= vol->usable_leb_size) {
    len = vol->usable_leb_size - off;
  } else {
  }
  tmp___3 = copy_from_user((void *)tbuf, (void const *)buf, (unsigned long )len);
  err = (int )tmp___3;
  if (err != 0) {
    err = -14;
    goto ldv_27732;
  } else {
  }
  err = ubi_eba_write_leb(ubi, vol, lnum, (void const *)tbuf, off, len);
  if (err != 0) {
    goto ldv_27732;
  } else {
  }
  off = off + len;
  if (vol->usable_leb_size == off) {
    lnum = lnum + 1;
    off = off - vol->usable_leb_size;
  } else {
  }
  count = count - (size_t )len;
  *offp = *offp + (loff_t )len;
  buf = buf + (unsigned long )len;
  len = (int )(count < (size_t )tbuf_size ? count : (size_t )tbuf_size);
  ldv_27734: ;
  if (count != 0UL) {
    goto ldv_27733;
  } else {
  }
  ldv_27732:
  vfree((void const *)tbuf);
  return ((ssize_t )(err != 0 ? (size_t )err : count_save - count));
}
}
static ssize_t vol_cdev_write(struct file *file , char const *buf , size_t count ,
                              loff_t *offp )
{
  int err ;
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  ssize_t tmp ;
  {
  err = 0;
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  ubi = vol->ubi;
  if ((unsigned int )*((unsigned char *)vol + 1992UL) == 0U && (unsigned int )*((unsigned char *)vol + 1992UL) == 0U) {
    tmp = vol_cdev_direct_write(file, buf, count, offp);
    return (tmp);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    err = ubi_more_update_data(ubi, vol, (void const *)buf, (int )count);
  } else {
    err = ubi_more_leb_change_data(ubi, vol, (void const *)buf, (int )count);
  }
  if (err < 0) {
    printk("\vUBI error: %s: cannot accept more %zd bytes of data, error %d\n", "vol_cdev_write",
           count, err);
    return ((ssize_t )err);
  } else {
  }
  if (err != 0) {
    count = (size_t )err;
    if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
      revoke_exclusive(desc, 2);
      return ((ssize_t )count);
    } else {
    }
    err = ubi_check_volume(ubi, vol->vol_id);
    if (err < 0) {
      return ((ssize_t )err);
    } else {
    }
    if (err != 0) {
      printk("\fUBI warning: %s: volume %d on UBI device %d is corrupted\n", "vol_cdev_write",
             vol->vol_id, ubi->ubi_num);
      vol->corrupted = 1U;
    } else {
    }
    vol->checked = 1U;
    ubi_volume_notify(ubi, vol, 4);
    revoke_exclusive(desc, 2);
  } else {
  }
  return ((ssize_t )count);
}
}
static long vol_cdev_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int err ;
  struct ubi_volume_desc *desc ;
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  void *argp ;
  int64_t bytes ;
  int64_t rsvd_bytes ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  struct ubi_leb_change_req req ;
  unsigned long tmp___2 ;
  int32_t lnum ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct ubi_map_req req___0 ;
  unsigned long tmp___5 ;
  int32_t lnum___0 ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int32_t lnum___1 ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  struct ubi_set_vol_prop_req req___1 ;
  unsigned long tmp___6 ;
  struct ubi_volume_info vi ;
  struct ubi_volume_info vi___0 ;
  {
  err = 0;
  desc = (struct ubi_volume_desc *)file->private_data;
  vol = desc->vol;
  ubi = vol->ubi;
  argp = (void *)arg;
  switch (cmd) {
  case 1074286336U:
  tmp = capable(24);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    err = -1;
    goto ldv_27759;
  } else {
  }
  tmp___1 = copy_from_user((void *)(& bytes), (void const *)argp, 8UL);
  err = (int )tmp___1;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  if (desc->mode == 1) {
    err = -30;
    goto ldv_27759;
  } else {
  }
  rsvd_bytes = (long long )vol->reserved_pebs * (long long )ubi->leb_size - (long long )vol->data_pad;
  if (bytes < 0LL || bytes > rsvd_bytes) {
    err = -22;
    goto ldv_27759;
  } else {
  }
  err = get_exclusive(desc);
  if (err < 0) {
    goto ldv_27759;
  } else {
  }
  err = ubi_start_update(ubi, vol, bytes);
  if (bytes == 0LL) {
    revoke_exclusive(desc, 2);
  } else {
  }
  goto ldv_27759;
  case 1074024194U:
  tmp___2 = copy_from_user((void *)(& req), (void const *)argp, 16UL);
  err = (int )tmp___2;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    err = -30;
    goto ldv_27759;
  } else {
  }
  err = -22;
  if (((req.lnum < 0 || req.lnum >= vol->reserved_pebs) || req.bytes < 0) || req.lnum >= vol->usable_leb_size) {
    goto ldv_27759;
  } else {
  }
  err = get_exclusive(desc);
  if (err < 0) {
    goto ldv_27759;
  } else {
  }
  err = ubi_start_leb_change(ubi, vol, (struct ubi_leb_change_req const *)(& req));
  if (req.bytes == 0) {
    revoke_exclusive(desc, 2);
  } else {
  }
  goto ldv_27759;
  case 1074024193U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int32_t *)argp),
                       "i" (4UL));
  lnum = (int )__val_gu;
  err = __ret_gu;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    err = -30;
    goto ldv_27759;
  } else {
  }
  if (lnum < 0 || vol->reserved_pebs <= lnum) {
    err = -22;
    goto ldv_27759;
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "vol_cdev_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): erase LEB %d:%d\n";
  descriptor.lineno = 553U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): erase LEB %d:%d\n", tmp___3->pid,
                       vol->vol_id, lnum);
  } else {
  }
  err = ubi_eba_unmap_leb(ubi, vol, lnum);
  if (err != 0) {
    goto ldv_27759;
  } else {
  }
  err = ubi_wl_flush(ubi, -1, -1);
  goto ldv_27759;
  case 1074286339U:
  tmp___5 = copy_from_user((void *)(& req___0), (void const *)argp, 8UL);
  err = (int )tmp___5;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  err = ubi_leb_map(desc, req___0.lnum);
  goto ldv_27759;
  case 1074024196U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" ((int32_t *)argp),
                       "i" (4UL));
  lnum___0 = (int )__val_gu___0;
  err = __ret_gu___0;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  err = ubi_leb_unmap(desc, lnum___0);
  goto ldv_27759;
  case 2147766021U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" ((int32_t *)argp),
                       "i" (4UL));
  lnum___1 = (int )__val_gu___1;
  err = __ret_gu___1;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  err = ubi_is_mapped(desc, lnum___1);
  goto ldv_27759;
  case 1074810630U:
  tmp___6 = copy_from_user((void *)(& req___1), (void const *)argp, 16UL);
  err = (int )tmp___6;
  if (err != 0) {
    err = -14;
    goto ldv_27759;
  } else {
  }
  switch ((int )req___1.property) {
  case 1:
  mutex_lock_nested(& ubi->device_mutex, 0U);
  (desc->vol)->direct_writes = req___1.value != 0ULL;
  mutex_unlock(& ubi->device_mutex);
  goto ldv_27784;
  default:
  err = -22;
  goto ldv_27784;
  }
  ldv_27784: ;
  goto ldv_27759;
  case 1082150663U:
  ubi_get_volume_info(desc, & vi);
  err = ubiblock_create(& vi);
  goto ldv_27759;
  case 20232U:
  ubi_get_volume_info(desc, & vi___0);
  err = ubiblock_remove(& vi___0);
  goto ldv_27759;
  default:
  err = -25;
  goto ldv_27759;
  }
  ldv_27759: ;
  return ((long )err);
}
}
static int verify_mkvol_req(struct ubi_device const *ubi , struct ubi_mkvol_req const *req )
{
  int n ;
  int err ;
  __kernel_size_t tmp ;
  {
  err = -22;
  if ((((long long )req->bytes < 0LL || (int )req->alignment < 0) || (int )((signed char )req->vol_type) < 0) || (int )((short )req->name_len) < 0) {
    goto bad;
  } else {
  }
  if (((int )req->vol_id < 0 || (int )req->vol_id >= (int )ubi->vtbl_slots) && (int )req->vol_id != -1) {
    goto bad;
  } else {
  }
  if ((int )req->alignment == 0) {
    goto bad;
  } else {
  }
  if ((long long )req->bytes == 0LL) {
    goto bad;
  } else {
  }
  if ((int )((signed char )req->vol_type) != 3 && (int )((signed char )req->vol_type) != 4) {
    goto bad;
  } else {
  }
  if ((int )req->alignment > (int )ubi->leb_size) {
    goto bad;
  } else {
  }
  n = (int )req->alignment & ((int )ubi->min_io_size + -1);
  if ((int )req->alignment != 1 && n != 0) {
    goto bad;
  } else {
  }
  if ((int )((signed char )req->name[0]) == 0 || (int )((short )req->name_len) == 0) {
    goto bad;
  } else {
  }
  if ((int )((short )req->name_len) > 127) {
    err = -36;
    goto bad;
  } else {
  }
  tmp = strnlen((char const *)(& req->name), (__kernel_size_t )((int )req->name_len + 1));
  n = (int )tmp;
  if ((int )req->name_len != n) {
    goto bad;
  } else {
  }
  return (0);
  bad:
  printk("\vUBI error: %s: bad volume creation request\n", "verify_mkvol_req");
  ubi_dump_mkvol_req(req);
  return (err);
}
}
static int verify_rsvol_req(struct ubi_device const *ubi , struct ubi_rsvol_req const *req )
{
  {
  if ((long long )req->bytes <= 0LL) {
    return (-22);
  } else {
  }
  if ((int )req->vol_id < 0 || (int )req->vol_id >= (int )ubi->vtbl_slots) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int rename_volumes(struct ubi_device *ubi , struct ubi_rnvol_req *req )
{
  int i ;
  int n ;
  int err ;
  struct list_head rename_list ;
  struct ubi_rename_entry *re ;
  struct ubi_rename_entry *re1 ;
  size_t tmp ;
  int tmp___0 ;
  int vol_id ;
  int name_len ;
  char const *name ;
  void *tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  struct list_head const *__mptr ;
  struct ubi_volume_desc *desc ;
  int no_remove_needed ;
  struct list_head const *__mptr___0 ;
  int tmp___8 ;
  struct list_head const *__mptr___1 ;
  long tmp___9 ;
  bool tmp___10 ;
  void *tmp___11 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  {
  if (req->count < 0 || req->count > 32) {
    return (-22);
  } else {
  }
  if (req->count == 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_27814;
  ldv_27813: ;
  if (req->ents[i].vol_id < 0 || req->ents[i].vol_id >= ubi->vtbl_slots) {
    return (-22);
  } else {
  }
  if ((int )req->ents[i].name_len < 0) {
    return (-22);
  } else {
  }
  if ((int )req->ents[i].name_len > 127) {
    return (-36);
  } else {
  }
  req->ents[i].name[(int )req->ents[i].name_len] = 0;
  tmp = strlen((char const *)(& req->ents[i].name));
  n = (int )tmp;
  if ((int )req->ents[i].name_len != n) {
    err = -22;
  } else {
  }
  i = i + 1;
  ldv_27814: ;
  if (req->count > i) {
    goto ldv_27813;
  } else {
  }
  i = 0;
  goto ldv_27821;
  ldv_27820:
  n = i + 1;
  goto ldv_27818;
  ldv_27817: ;
  if (req->ents[i].vol_id == req->ents[n].vol_id) {
    printk("\vUBI error: %s: duplicated volume id %d\n", "rename_volumes", req->ents[i].vol_id);
    return (-22);
  } else {
  }
  tmp___0 = strcmp((char const *)(& req->ents[i].name), (char const *)(& req->ents[n].name));
  if (tmp___0 == 0) {
    printk("\vUBI error: %s: duplicated volume name \"%s\"\n", "rename_volumes", (char *)(& req->ents[i].name));
    return (-22);
  } else {
  }
  n = n + 1;
  ldv_27818: ;
  if (req->count > n) {
    goto ldv_27817;
  } else {
  }
  i = i + 1;
  ldv_27821: ;
  if (req->count + -1 > i) {
    goto ldv_27820;
  } else {
  }
  INIT_LIST_HEAD(& rename_list);
  i = 0;
  goto ldv_27833;
  ldv_27832:
  vol_id = req->ents[i].vol_id;
  name_len = (int )req->ents[i].name_len;
  name = (char const *)(& req->ents[i].name);
  tmp___1 = kzalloc(160UL, 208U);
  re = (struct ubi_rename_entry *)tmp___1;
  if ((unsigned long )re == (unsigned long )((struct ubi_rename_entry *)0)) {
    err = -12;
    goto out_free;
  } else {
  }
  re->desc = ubi_open_volume(ubi->ubi_num, vol_id, 2);
  tmp___3 = IS_ERR((void const *)re->desc);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)re->desc);
    err = (int )tmp___2;
    printk("\vUBI error: %s: cannot open volume %d, error %d\n", "rename_volumes",
           vol_id, err);
    kfree((void const *)re);
    goto out_free;
  } else {
  }
  if (((re->desc)->vol)->name_len == name_len) {
    tmp___4 = memcmp((void const *)(& ((re->desc)->vol)->name), (void const *)name,
                     (size_t )name_len);
    if (tmp___4 == 0) {
      ubi_close_volume(re->desc);
      kfree((void const *)re);
      goto ldv_27827;
    } else {
    }
  } else {
  }
  re->new_name_len = name_len;
  __len = (size_t )name_len;
  __ret = memcpy((void *)(& re->new_name), (void const *)name, __len);
  list_add_tail(& re->list, & rename_list);
  descriptor.modname = "ubi";
  descriptor.function = "rename_volumes";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): will rename volume %d from \"%s\" to \"%s\"\n";
  descriptor.lineno = 818U;
  descriptor.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): will rename volume %d from \"%s\" to \"%s\"\n",
                       tmp___5->pid, vol_id, (char *)(& ((re->desc)->vol)->name),
                       name);
  } else {
  }
  ldv_27827:
  i = i + 1;
  ldv_27833: ;
  if (req->count > i) {
    goto ldv_27832;
  } else {
  }
  tmp___7 = list_empty((struct list_head const *)(& rename_list));
  if (tmp___7 != 0) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)rename_list.next;
  re = (struct ubi_rename_entry *)__mptr + 0xffffffffffffff70UL;
  goto ldv_27851;
  ldv_27850:
  no_remove_needed = 0;
  __mptr___0 = (struct list_head const *)rename_list.next;
  re1 = (struct ubi_rename_entry *)__mptr___0 + 0xffffffffffffff70UL;
  goto ldv_27847;
  ldv_27846: ;
  if (re->new_name_len == ((re1->desc)->vol)->name_len) {
    tmp___8 = memcmp((void const *)(& re->new_name), (void const *)(& ((re1->desc)->vol)->name),
                     (size_t )((re1->desc)->vol)->name_len);
    if (tmp___8 == 0) {
      no_remove_needed = 1;
      goto ldv_27845;
    } else {
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)re1->list.next;
  re1 = (struct ubi_rename_entry *)__mptr___1 + 0xffffffffffffff70UL;
  ldv_27847: ;
  if ((unsigned long )(& re1->list) != (unsigned long )(& rename_list)) {
    goto ldv_27846;
  } else {
  }
  ldv_27845: ;
  if (no_remove_needed != 0) {
    goto ldv_27848;
  } else {
  }
  desc = ubi_open_volume_nm(ubi->ubi_num, (char const *)(& re->new_name), 3);
  tmp___10 = IS_ERR((void const *)desc);
  if ((int )tmp___10) {
    tmp___9 = PTR_ERR((void const *)desc);
    err = (int )tmp___9;
    if (err == -19) {
      goto ldv_27848;
    } else {
    }
    printk("\vUBI error: %s: cannot open volume \"%s\", error %d\n", "rename_volumes",
           (char *)(& re->new_name), err);
    goto out_free;
  } else {
  }
  tmp___11 = kzalloc(160UL, 208U);
  re1 = (struct ubi_rename_entry *)tmp___11;
  if ((unsigned long )re1 == (unsigned long )((struct ubi_rename_entry *)0)) {
    err = -12;
    ubi_close_volume(desc);
    goto out_free;
  } else {
  }
  re1->remove = 1;
  re1->desc = desc;
  list_add(& re1->list, & rename_list);
  descriptor___0.modname = "ubi";
  descriptor___0.function = "rename_volumes";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor___0.format = "UBI DBG gen (pid %d): will remove volume %d, name \"%s\"\n";
  descriptor___0.lineno = 876U;
  descriptor___0.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): will remove volume %d, name \"%s\"\n",
                       tmp___12->pid, ((re1->desc)->vol)->vol_id, (char *)(& ((re1->desc)->vol)->name));
  } else {
  }
  ldv_27848:
  __mptr___2 = (struct list_head const *)re->list.next;
  re = (struct ubi_rename_entry *)__mptr___2 + 0xffffffffffffff70UL;
  ldv_27851: ;
  if ((unsigned long )(& re->list) != (unsigned long )(& rename_list)) {
    goto ldv_27850;
  } else {
  }
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_rename_volumes(ubi, & rename_list);
  mutex_unlock(& ubi->device_mutex);
  out_free:
  __mptr___3 = (struct list_head const *)rename_list.next;
  re = (struct ubi_rename_entry *)__mptr___3 + 0xffffffffffffff70UL;
  __mptr___4 = (struct list_head const *)re->list.next;
  re1 = (struct ubi_rename_entry *)__mptr___4 + 0xffffffffffffff70UL;
  goto ldv_27860;
  ldv_27859:
  ubi_close_volume(re->desc);
  list_del(& re->list);
  kfree((void const *)re);
  re = re1;
  __mptr___5 = (struct list_head const *)re1->list.next;
  re1 = (struct ubi_rename_entry *)__mptr___5 + 0xffffffffffffff70UL;
  ldv_27860: ;
  if ((unsigned long )(& re->list) != (unsigned long )(& rename_list)) {
    goto ldv_27859;
  } else {
  }
  return (err);
}
}
static long ubi_cdev_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int err ;
  struct ubi_device *ubi ;
  struct ubi_volume_desc *desc ;
  void *argp ;
  bool tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  struct ubi_mkvol_req req ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  unsigned long tmp___4 ;
  int __ret_pu ;
  int32_t __pu_val ;
  int vol_id ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  long tmp___7 ;
  bool tmp___8 ;
  int pebs ;
  struct ubi_rsvol_req req___0 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  unsigned long tmp___11 ;
  long tmp___12 ;
  bool tmp___13 ;
  u64 tmp___14 ;
  struct ubi_rnvol_req *req___1 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___15 ;
  long tmp___16 ;
  void *tmp___17 ;
  unsigned long tmp___18 ;
  {
  err = 0;
  argp = (void *)arg;
  tmp = capable(24);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1L);
  } else {
  }
  tmp___1 = imajor((struct inode const *)(file->f_mapping)->host);
  ubi = ubi_get_by_major((int )tmp___1);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19L);
  } else {
  }
  switch (cmd) {
  case 1083731712U:
  descriptor.modname = "ubi";
  descriptor.function = "ubi_cdev_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): create volume\n";
  descriptor.lineno = 913U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): create volume\n", tmp___2->pid);
  } else {
  }
  tmp___4 = copy_from_user((void *)(& req), (void const *)argp, 152UL);
  err = (int )tmp___4;
  if (err != 0) {
    err = -14;
    goto ldv_27875;
  } else {
  }
  err = verify_mkvol_req((struct ubi_device const *)ubi, (struct ubi_mkvol_req const *)(& req));
  if (err != 0) {
    goto ldv_27875;
  } else {
  }
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_create_volume(ubi, & req);
  mutex_unlock(& ubi->device_mutex);
  if (err != 0) {
    goto ldv_27875;
  } else {
  }
  might_fault();
  __pu_val = req.vol_id;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
  goto ldv_27879;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
  goto ldv_27879;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
  goto ldv_27879;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
  goto ldv_27879;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
  goto ldv_27879;
  }
  ldv_27879:
  err = __ret_pu;
  if (err != 0) {
    err = -14;
  } else {
  }
  goto ldv_27875;
  case 1074032385U:
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_cdev_ioctl";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor___0.format = "UBI DBG gen (pid %d): remove volume\n";
  descriptor___0.lineno = 942U;
  descriptor___0.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): remove volume\n",
                       tmp___5->pid);
  } else {
  }
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int32_t *)argp),
                       "i" (4UL));
  vol_id = (int )__val_gu;
  err = __ret_gu;
  if (err != 0) {
    err = -14;
    goto ldv_27875;
  } else {
  }
  desc = ubi_open_volume(ubi->ubi_num, vol_id, 3);
  tmp___8 = IS_ERR((void const *)desc);
  if ((int )tmp___8) {
    tmp___7 = PTR_ERR((void const *)desc);
    err = (int )tmp___7;
    goto ldv_27875;
  } else {
  }
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_remove_volume(desc, 0);
  mutex_unlock(& ubi->device_mutex);
  ubi_close_volume(desc);
  goto ldv_27875;
  case 1074556674U:
  descriptor___1.modname = "ubi";
  descriptor___1.function = "ubi_cdev_ioctl";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor___1.format = "UBI DBG gen (pid %d): re-size volume\n";
  descriptor___1.lineno = 974U;
  descriptor___1.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = get_current();
    __dynamic_pr_debug(& descriptor___1, "UBI DBG gen (pid %d): re-size volume\n",
                       tmp___9->pid);
  } else {
  }
  tmp___11 = copy_from_user((void *)(& req___0), (void const *)argp, 12UL);
  err = (int )tmp___11;
  if (err != 0) {
    err = -14;
    goto ldv_27875;
  } else {
  }
  err = verify_rsvol_req((struct ubi_device const *)ubi, (struct ubi_rsvol_req const *)(& req___0));
  if (err != 0) {
    goto ldv_27875;
  } else {
  }
  desc = ubi_open_volume(ubi->ubi_num, req___0.vol_id, 3);
  tmp___13 = IS_ERR((void const *)desc);
  if ((int )tmp___13) {
    tmp___12 = PTR_ERR((void const *)desc);
    err = (int )tmp___12;
    goto ldv_27875;
  } else {
  }
  tmp___14 = div_u64((u64 )((req___0.bytes + (__s64 )(desc->vol)->usable_leb_size) + -1LL),
                     (u32 )(desc->vol)->usable_leb_size);
  pebs = (int )tmp___14;
  mutex_lock_nested(& ubi->device_mutex, 0U);
  err = ubi_resize_volume(desc, pebs);
  mutex_unlock(& ubi->device_mutex);
  ubi_close_volume(desc);
  goto ldv_27875;
  case 1360031491U:
  descriptor___2.modname = "ubi";
  descriptor___2.function = "ubi_cdev_ioctl";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor___2.format = "UBI DBG gen (pid %d): re-name volumes\n";
  descriptor___2.lineno = 1006U;
  descriptor___2.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = get_current();
    __dynamic_pr_debug(& descriptor___2, "UBI DBG gen (pid %d): re-name volumes\n",
                       tmp___15->pid);
  } else {
  }
  tmp___17 = kmalloc(4368UL, 208U);
  req___1 = (struct ubi_rnvol_req *)tmp___17;
  if ((unsigned long )req___1 == (unsigned long )((struct ubi_rnvol_req *)0)) {
    err = -12;
    goto ldv_27875;
  } else {
  }
  tmp___18 = copy_from_user((void *)req___1, (void const *)argp, 4368UL);
  err = (int )tmp___18;
  if (err != 0) {
    err = -14;
    kfree((void const *)req___1);
    goto ldv_27875;
  } else {
  }
  err = rename_volumes(ubi, req___1);
  kfree((void const *)req___1);
  goto ldv_27875;
  default:
  err = -25;
  goto ldv_27875;
  }
  ldv_27875:
  ubi_put_device(ubi);
  return ((long )err);
}
}
static long ctrl_cdev_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int err ;
  void *argp ;
  bool tmp ;
  int tmp___0 ;
  struct ubi_attach_req req ;
  struct mtd_info *mtd ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  int __ret_pu ;
  int32_t __pu_val ;
  int ubi_num ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  {
  err = 0;
  argp = (void *)arg;
  tmp = capable(24);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1L);
  } else {
  }
  switch (cmd) {
  case 1075343168U:
  descriptor.modname = "ubi";
  descriptor.function = "ctrl_cdev_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): attach MTD device\n";
  descriptor.lineno = 1050U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): attach MTD device\n",
                       tmp___1->pid);
  } else {
  }
  tmp___3 = copy_from_user((void *)(& req), (void const *)argp, 24UL);
  err = (int )tmp___3;
  if (err != 0) {
    err = -14;
    goto ldv_27911;
  } else {
  }
  if (req.mtd_num < 0 || (req.ubi_num < 0 && req.ubi_num != -1)) {
    err = -22;
    goto ldv_27911;
  } else {
  }
  mtd = get_mtd_device((struct mtd_info *)0, req.mtd_num);
  tmp___5 = IS_ERR((void const *)mtd);
  if ((int )tmp___5) {
    tmp___4 = PTR_ERR((void const *)mtd);
    err = (int )tmp___4;
    goto ldv_27911;
  } else {
  }
  mutex_lock_nested(& ubi_devices_mutex, 0U);
  err = ubi_attach_mtd_dev(mtd, req.ubi_num, req.vid_hdr_offset, (int )req.max_beb_per1024);
  mutex_unlock(& ubi_devices_mutex);
  if (err < 0) {
    put_mtd_device(mtd);
  } else {
    might_fault();
    __pu_val = err;
    switch (4UL) {
    case 1UL:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
    goto ldv_27915;
    case 2UL:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
    goto ldv_27915;
    case 4UL:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
    goto ldv_27915;
    case 8UL:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
    goto ldv_27915;
    default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((int32_t *)argp): "ebx");
    goto ldv_27915;
    }
    ldv_27915:
    err = __ret_pu;
  }
  goto ldv_27911;
  case 1074032449U:
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ctrl_cdev_ioctl";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/cdev.o.c.prepared";
  descriptor___0.format = "UBI DBG gen (pid %d): detach MTD device\n";
  descriptor___0.lineno = 1091U;
  descriptor___0.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): detach MTD device\n",
                       tmp___6->pid);
  } else {
  }
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int32_t *)argp),
                       "i" (4UL));
  ubi_num = (int )__val_gu;
  err = __ret_gu;
  if (err != 0) {
    err = -14;
    goto ldv_27911;
  } else {
  }
  mutex_lock_nested(& ubi_devices_mutex, 0U);
  err = ubi_detach_mtd_dev(ubi_num, 0);
  mutex_unlock(& ubi_devices_mutex);
  goto ldv_27911;
  default:
  err = -25;
  goto ldv_27911;
  }
  ldv_27911: ;
  return ((long )err);
}
}
static long vol_cdev_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  unsigned long translated_arg ;
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  translated_arg = (unsigned long )tmp;
  tmp___0 = vol_cdev_ioctl(file, cmd, translated_arg);
  return (tmp___0);
}
}
static long ubi_cdev_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  unsigned long translated_arg ;
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  translated_arg = (unsigned long )tmp;
  tmp___0 = ubi_cdev_ioctl(file, cmd, translated_arg);
  return (tmp___0);
}
}
static long ctrl_cdev_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  unsigned long translated_arg ;
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  translated_arg = (unsigned long )tmp;
  tmp___0 = ctrl_cdev_ioctl(file, cmd, translated_arg);
  return (tmp___0);
}
}
struct file_operations const ubi_vol_cdev_operations =
     {& __this_module, & vol_cdev_llseek, & vol_cdev_read, & vol_cdev_write, 0, 0, 0,
    0, 0, 0, & vol_cdev_ioctl, & vol_cdev_compat_ioctl, 0, & vol_cdev_open, 0, & vol_cdev_release,
    & vol_cdev_fsync, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct file_operations const ubi_cdev_operations =
     {& __this_module, & no_llseek, 0, 0, 0, 0, 0, 0, 0, 0, & ubi_cdev_ioctl, & ubi_cdev_compat_ioctl,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct file_operations const ubi_ctrl_cdev_operations =
     {& __this_module, & no_llseek, 0, 0, 0, 0, 0, 0, 0, 0, & ctrl_cdev_ioctl, & ctrl_cdev_compat_ioctl,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ldv_retval_5 ;
int ldv_retval_0 ;
extern int ldv_open_6(void) ;
extern int ldv_release_6(void) ;
extern int ldv_open_5(void) ;
extern int ldv_release_5(void) ;
int ldv_retval_3 ;
void ldv_file_operations_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  ubi_vol_cdev_operations_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  ubi_vol_cdev_operations_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_6(void)
{
  void *tmp ;
  {
  ubi_cdev_operations_group1 = ldv_zalloc(1032UL);
  tmp = ldv_zalloc(512UL);
  ubi_cdev_operations_group2 = (struct file *)tmp;
  return;
}
}
void ldv_file_operations_5(void)
{
  void *tmp ;
  {
  ubi_ctrl_cdev_operations_group1 = ldv_zalloc(1032UL);
  tmp = ldv_zalloc(512UL);
  ubi_ctrl_cdev_operations_group2 = (struct file *)tmp;
  return;
}
}
void ldv_main_exported_6(void)
{
  unsigned int ldvarg56 ;
  unsigned int tmp ;
  unsigned long ldvarg59 ;
  unsigned long tmp___0 ;
  unsigned long ldvarg55 ;
  unsigned long tmp___1 ;
  unsigned int ldvarg60 ;
  unsigned int tmp___2 ;
  loff_t ldvarg58 ;
  loff_t tmp___3 ;
  int ldvarg57 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = __VERIFIER_nondet_uint();
  ldvarg56 = tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg59 = tmp___0;
  tmp___1 = __VERIFIER_nondet_ulong();
  ldvarg55 = tmp___1;
  tmp___2 = __VERIFIER_nondet_uint();
  ldvarg60 = tmp___2;
  tmp___3 = __VERIFIER_nondet_loff_t();
  ldvarg58 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg57 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_6 == 2) {
    ubi_cdev_compat_ioctl(ubi_cdev_operations_group2, ldvarg60, ldvarg59);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27979;
  case 1: ;
  if (ldv_state_variable_6 == 2) {
    no_llseek(ubi_cdev_operations_group2, ldvarg58, ldvarg57);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27979;
  case 2: ;
  if (ldv_state_variable_6 == 2) {
    ubi_cdev_ioctl(ubi_cdev_operations_group2, ldvarg56, ldvarg55);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27979;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_3 = ldv_open_6();
    if (ldv_retval_3 == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_27979;
  case 4: ;
  if (ldv_state_variable_6 == 2) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_27979;
  default:
  ldv_stop();
  }
  ldv_27979: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  loff_t ldvarg9 ;
  loff_t tmp ;
  size_t ldvarg19 ;
  size_t tmp___0 ;
  unsigned long ldvarg10 ;
  unsigned long tmp___1 ;
  loff_t ldvarg13 ;
  loff_t tmp___2 ;
  loff_t ldvarg14 ;
  loff_t tmp___3 ;
  char *ldvarg17 ;
  void *tmp___4 ;
  int ldvarg8 ;
  int tmp___5 ;
  unsigned long ldvarg6 ;
  unsigned long tmp___6 ;
  loff_t *ldvarg15 ;
  void *tmp___7 ;
  size_t ldvarg16 ;
  size_t tmp___8 ;
  int ldvarg12 ;
  int tmp___9 ;
  unsigned int ldvarg7 ;
  unsigned int tmp___10 ;
  char *ldvarg20 ;
  void *tmp___11 ;
  unsigned int ldvarg11 ;
  unsigned int tmp___12 ;
  loff_t *ldvarg18 ;
  void *tmp___13 ;
  int tmp___14 ;
  {
  tmp = __VERIFIER_nondet_loff_t();
  ldvarg9 = tmp;
  tmp___0 = __VERIFIER_nondet_size_t();
  ldvarg19 = tmp___0;
  tmp___1 = __VERIFIER_nondet_ulong();
  ldvarg10 = tmp___1;
  tmp___2 = __VERIFIER_nondet_loff_t();
  ldvarg13 = tmp___2;
  tmp___3 = __VERIFIER_nondet_loff_t();
  ldvarg14 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg17 = (char *)tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg8 = tmp___5;
  tmp___6 = __VERIFIER_nondet_ulong();
  ldvarg6 = tmp___6;
  tmp___7 = ldv_zalloc(8UL);
  ldvarg15 = (loff_t *)tmp___7;
  tmp___8 = __VERIFIER_nondet_size_t();
  ldvarg16 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg12 = tmp___9;
  tmp___10 = __VERIFIER_nondet_uint();
  ldvarg7 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg20 = (char *)tmp___11;
  tmp___12 = __VERIFIER_nondet_uint();
  ldvarg11 = tmp___12;
  tmp___13 = ldv_zalloc(8UL);
  ldvarg18 = (loff_t *)tmp___13;
  tmp___14 = __VERIFIER_nondet_int();
  switch (tmp___14) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    vol_cdev_write(ubi_vol_cdev_operations_group2, (char const *)ldvarg20, ldvarg19,
                   ldvarg18);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    vol_cdev_write(ubi_vol_cdev_operations_group2, (char const *)ldvarg20, ldvarg19,
                   ldvarg18);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  case 1: ;
  if (ldv_state_variable_7 == 2) {
    vol_cdev_release(ubi_vol_cdev_operations_group1, ubi_vol_cdev_operations_group2);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_28004;
  case 2: ;
  if (ldv_state_variable_7 == 2) {
    vol_cdev_read(ubi_vol_cdev_operations_group2, ldvarg17, ldvarg16, ldvarg15);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    vol_cdev_fsync(ubi_vol_cdev_operations_group2, ldvarg14, ldvarg13, ldvarg12);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    vol_cdev_fsync(ubi_vol_cdev_operations_group2, ldvarg14, ldvarg13, ldvarg12);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  case 4: ;
  if (ldv_state_variable_7 == 2) {
    vol_cdev_compat_ioctl(ubi_vol_cdev_operations_group2, ldvarg11, ldvarg10);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  case 5: ;
  if (ldv_state_variable_7 == 2) {
    vol_cdev_llseek(ubi_vol_cdev_operations_group2, ldvarg9, ldvarg8);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  case 6: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_0 = vol_cdev_open(ubi_vol_cdev_operations_group1, ubi_vol_cdev_operations_group2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_28004;
  case 7: ;
  if (ldv_state_variable_7 == 2) {
    vol_cdev_ioctl(ubi_vol_cdev_operations_group2, ldvarg7, ldvarg6);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28004;
  default:
  ldv_stop();
  }
  ldv_28004: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  loff_t ldvarg103 ;
  loff_t tmp ;
  unsigned long ldvarg100 ;
  unsigned long tmp___0 ;
  unsigned int ldvarg105 ;
  unsigned int tmp___1 ;
  unsigned int ldvarg101 ;
  unsigned int tmp___2 ;
  int ldvarg102 ;
  int tmp___3 ;
  unsigned long ldvarg104 ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  {
  tmp = __VERIFIER_nondet_loff_t();
  ldvarg103 = tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg100 = tmp___0;
  tmp___1 = __VERIFIER_nondet_uint();
  ldvarg105 = tmp___1;
  tmp___2 = __VERIFIER_nondet_uint();
  ldvarg101 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  ldvarg102 = tmp___3;
  tmp___4 = __VERIFIER_nondet_ulong();
  ldvarg104 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_5 == 2) {
    ctrl_cdev_compat_ioctl(ubi_ctrl_cdev_operations_group2, ldvarg105, ldvarg104);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_28023;
  case 1: ;
  if (ldv_state_variable_5 == 2) {
    no_llseek(ubi_ctrl_cdev_operations_group2, ldvarg103, ldvarg102);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_28023;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    ctrl_cdev_ioctl(ubi_ctrl_cdev_operations_group2, ldvarg101, ldvarg100);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_28023;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_5 = ldv_open_5();
    if (ldv_retval_5 == 0) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_28023;
  case 4: ;
  if (ldv_state_variable_5 == 2) {
    ldv_release_5();
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_28023;
  default:
  ldv_stop();
  }
  ldv_28023: ;
  return;
}
}
void *ldv_kmem_cache_alloc_130(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vmalloc_133(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void *ldv_vmalloc_134(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern int blocking_notifier_chain_register(struct blocking_notifier_head * , struct notifier_block * ) ;
extern int blocking_notifier_chain_unregister(struct blocking_notifier_head * , struct notifier_block * ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
void *ldv_kmem_cache_alloc_153(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void mtd_sync(struct mtd_info *mtd )
{
  {
  if ((unsigned long )mtd->_sync != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    (*(mtd->_sync))(mtd);
  } else {
  }
  return;
}
}
int ubi_get_device_info(int ubi_num , struct ubi_device_info *di ) ;
struct ubi_volume_desc *ubi_open_volume_path(char const *pathname , int mode ) ;
int ubi_register_volume_notifier(struct notifier_block *nb , int ignore_existing ) ;
int ubi_unregister_volume_notifier(struct notifier_block *nb ) ;
int ubi_leb_read(struct ubi_volume_desc *desc , int lnum , char *buf , int offset ,
                 int len , int check ) ;
int ubi_leb_write(struct ubi_volume_desc *desc , int lnum , void const *buf , int offset ,
                  int len ) ;
int ubi_leb_change(struct ubi_volume_desc *desc , int lnum , void const *buf , int len ) ;
int ubi_leb_erase(struct ubi_volume_desc *desc , int lnum ) ;
int ubi_flush(int ubi_num , int vol_id , int lnum ) ;
void ubi_do_get_device_info(struct ubi_device *ubi , struct ubi_device_info *di )
{
  {
  di->ubi_num = ubi->ubi_num;
  di->leb_size = ubi->leb_size;
  di->leb_start = ubi->leb_start;
  di->min_io_size = ubi->min_io_size;
  di->max_write_size = ubi->max_write_size;
  di->ro_mode = ubi->ro_mode;
  di->cdev = ubi->cdev.dev;
  return;
}
}
static char const __kstrtab_ubi_do_get_device_info[23U] =
  { 'u', 'b', 'i', '_',
        'd', 'o', '_', 'g',
        'e', 't', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '_', 'i', 'n',
        'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_ubi_do_get_device_info ;
struct kernel_symbol const __ksymtab_ubi_do_get_device_info = {(unsigned long )(& ubi_do_get_device_info), (char const *)(& __kstrtab_ubi_do_get_device_info)};
int ubi_get_device_info(int ubi_num , struct ubi_device_info *di )
{
  struct ubi_device *ubi ;
  {
  if (ubi_num < 0 || ubi_num > 31) {
    return (-22);
  } else {
  }
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19);
  } else {
  }
  ubi_do_get_device_info(ubi, di);
  ubi_put_device(ubi);
  return (0);
}
}
static char const __kstrtab_ubi_get_device_info[20U] =
  { 'u', 'b', 'i', '_',
        'g', 'e', 't', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '_', 'i',
        'n', 'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_ubi_get_device_info ;
struct kernel_symbol const __ksymtab_ubi_get_device_info = {(unsigned long )(& ubi_get_device_info), (char const *)(& __kstrtab_ubi_get_device_info)};
void ubi_do_get_volume_info(struct ubi_device *ubi , struct ubi_volume *vol , struct ubi_volume_info *vi )
{
  {
  vi->vol_id = vol->vol_id;
  vi->ubi_num = ubi->ubi_num;
  vi->size = vol->reserved_pebs;
  vi->used_bytes = vol->used_bytes;
  vi->vol_type = vol->vol_type;
  vi->corrupted = (int )vol->corrupted;
  vi->upd_marker = (int )vol->upd_marker;
  vi->alignment = vol->alignment;
  vi->usable_leb_size = vol->usable_leb_size;
  vi->name_len = vol->name_len;
  vi->name = (char const *)(& vol->name);
  vi->cdev = vol->cdev.dev;
  return;
}
}
void ubi_get_volume_info(struct ubi_volume_desc *desc , struct ubi_volume_info *vi )
{
  {
  ubi_do_get_volume_info((desc->vol)->ubi, desc->vol, vi);
  return;
}
}
static char const __kstrtab_ubi_get_volume_info[20U] =
  { 'u', 'b', 'i', '_',
        'g', 'e', 't', '_',
        'v', 'o', 'l', 'u',
        'm', 'e', '_', 'i',
        'n', 'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_ubi_get_volume_info ;
struct kernel_symbol const __ksymtab_ubi_get_volume_info = {(unsigned long )(& ubi_get_volume_info), (char const *)(& __kstrtab_ubi_get_volume_info)};
struct ubi_volume_desc *ubi_open_volume(int ubi_num , int vol_id , int mode )
{
  int err ;
  struct ubi_volume_desc *desc ;
  struct ubi_device *ubi ;
  struct ubi_volume *vol ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_open_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): open device %d, volume %d, mode %d\n";
  descriptor.lineno = 198U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): open device %d, volume %d, mode %d\n",
                       tmp->pid, ubi_num, vol_id, mode);
  } else {
  }
  if (ubi_num < 0 || ubi_num > 31) {
    tmp___1 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___1);
  } else {
  }
  if ((mode != 1 && mode != 2) && mode != 3) {
    tmp___2 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___2);
  } else {
  }
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    tmp___3 = ERR_PTR(-19L);
    return ((struct ubi_volume_desc *)tmp___3);
  } else {
  }
  if (vol_id < 0 || ubi->vtbl_slots <= vol_id) {
    err = -22;
    goto out_put_ubi;
  } else {
  }
  tmp___4 = kmalloc(16UL, 208U);
  desc = (struct ubi_volume_desc *)tmp___4;
  if ((unsigned long )desc == (unsigned long )((struct ubi_volume_desc *)0)) {
    err = -12;
    goto out_put_ubi;
  } else {
  }
  err = -19;
  tmp___5 = try_module_get(& __this_module);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    goto out_free;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  vol = ubi->volumes[vol_id];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    goto out_unlock;
  } else {
  }
  err = -16;
  switch (mode) {
  case 1: ;
  if (vol->exclusive != 0) {
    goto out_unlock;
  } else {
  }
  vol->readers = vol->readers + 1;
  goto ldv_26257;
  case 2: ;
  if (vol->exclusive != 0 || vol->writers > 0) {
    goto out_unlock;
  } else {
  }
  vol->writers = vol->writers + 1;
  goto ldv_26257;
  case 3: ;
  if ((vol->exclusive != 0 || vol->writers != 0) || vol->readers != 0) {
    goto out_unlock;
  } else {
  }
  vol->exclusive = 1;
  goto ldv_26257;
  }
  ldv_26257:
  get_device(& vol->dev);
  vol->ref_count = vol->ref_count + 1;
  spin_unlock(& ubi->volumes_lock);
  desc->vol = vol;
  desc->mode = mode;
  mutex_lock_nested(& ubi->ckvol_mutex, 0U);
  if ((unsigned int )*((unsigned char *)vol + 1992UL) == 0U) {
    err = ubi_check_volume(ubi, vol_id);
    if (err < 0) {
      mutex_unlock(& ubi->ckvol_mutex);
      ubi_close_volume(desc);
      tmp___7 = ERR_PTR((long )err);
      return ((struct ubi_volume_desc *)tmp___7);
    } else {
    }
    if (err == 1) {
      printk("\fUBI warning: %s: volume %d on UBI device %d is corrupted\n", "ubi_open_volume",
             vol_id, ubi->ubi_num);
      vol->corrupted = 1U;
    } else {
    }
    vol->checked = 1U;
  } else {
  }
  mutex_unlock(& ubi->ckvol_mutex);
  return (desc);
  out_unlock:
  spin_unlock(& ubi->volumes_lock);
  module_put(& __this_module);
  out_free:
  kfree((void const *)desc);
  out_put_ubi:
  ubi_put_device(ubi);
  printk("\vUBI error: %s: cannot open device %d, volume %d, error %d\n", "ubi_open_volume",
         ubi_num, vol_id, err);
  tmp___8 = ERR_PTR((long )err);
  return ((struct ubi_volume_desc *)tmp___8);
}
}
static char const __kstrtab_ubi_open_volume[16U] =
  { 'u', 'b', 'i', '_',
        'o', 'p', 'e', 'n',
        '_', 'v', 'o', 'l',
        'u', 'm', 'e', '\000'};
struct kernel_symbol const __ksymtab_ubi_open_volume ;
struct kernel_symbol const __ksymtab_ubi_open_volume = {(unsigned long )(& ubi_open_volume), (char const *)(& __kstrtab_ubi_open_volume)};
struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num , char const *name , int mode )
{
  int i ;
  int vol_id ;
  int len ;
  struct ubi_device *ubi ;
  struct ubi_volume_desc *ret ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  __kernel_size_t tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  struct ubi_volume *vol ;
  int tmp___6 ;
  void *tmp___7 ;
  {
  vol_id = -1;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_open_volume_nm";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): open device %d, volume %s, mode %d\n";
  descriptor.lineno = 309U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): open device %d, volume %s, mode %d\n",
                       tmp->pid, ubi_num, name, mode);
  } else {
  }
  if ((unsigned long )name == (unsigned long )((char const *)0)) {
    tmp___1 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___1);
  } else {
  }
  tmp___2 = strnlen(name, 128UL);
  len = (int )tmp___2;
  if (len > 127) {
    tmp___3 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___3);
  } else {
  }
  if (ubi_num < 0 || ubi_num > 31) {
    tmp___4 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___4);
  } else {
  }
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    tmp___5 = ERR_PTR(-19L);
    return ((struct ubi_volume_desc *)tmp___5);
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  i = 0;
  goto ldv_26284;
  ldv_26283:
  vol = ubi->volumes[i];
  if ((unsigned long )vol != (unsigned long )((struct ubi_volume *)0) && vol->name_len == len) {
    tmp___6 = strcmp(name, (char const *)(& vol->name));
    if (tmp___6 == 0) {
      vol_id = i;
      goto ldv_26282;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_26284: ;
  if (ubi->vtbl_slots > i) {
    goto ldv_26283;
  } else {
  }
  ldv_26282:
  spin_unlock(& ubi->volumes_lock);
  if (vol_id >= 0) {
    ret = ubi_open_volume(ubi_num, vol_id, mode);
  } else {
    tmp___7 = ERR_PTR(-19L);
    ret = (struct ubi_volume_desc *)tmp___7;
  }
  ubi_put_device(ubi);
  return (ret);
}
}
static char const __kstrtab_ubi_open_volume_nm[19U] =
  { 'u', 'b', 'i', '_',
        'o', 'p', 'e', 'n',
        '_', 'v', 'o', 'l',
        'u', 'm', 'e', '_',
        'n', 'm', '\000'};
struct kernel_symbol const __ksymtab_ubi_open_volume_nm ;
struct kernel_symbol const __ksymtab_ubi_open_volume_nm = {(unsigned long )(& ubi_open_volume_nm), (char const *)(& __kstrtab_ubi_open_volume_nm)};
struct ubi_volume_desc *ubi_open_volume_path(char const *pathname , int mode )
{
  int error ;
  int ubi_num ;
  int vol_id ;
  int mod ;
  struct inode *inode ;
  struct path path ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  void *tmp___5 ;
  struct ubi_volume_desc *tmp___6 ;
  void *tmp___7 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_open_volume_path";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): open volume %s, mode %d\n";
  descriptor.lineno = 365U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): open volume %s, mode %d\n",
                       tmp->pid, pathname, mode);
  } else {
  }
  if ((unsigned long )pathname == (unsigned long )((char const *)0) || (int )((signed char )*pathname) == 0) {
    tmp___1 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___1);
  } else {
  }
  error = kern_path(pathname, 1U, & path);
  if (error != 0) {
    tmp___2 = ERR_PTR((long )error);
    return ((struct ubi_volume_desc *)tmp___2);
  } else {
  }
  inode = (path.dentry)->d_inode;
  mod = (int )inode->i_mode;
  tmp___3 = imajor((struct inode const *)inode);
  ubi_num = ubi_major2num((int )tmp___3);
  tmp___4 = iminor((struct inode const *)inode);
  vol_id = (int )(tmp___4 - 1U);
  path_put((struct path const *)(& path));
  if ((mod & 61440) != 8192) {
    tmp___5 = ERR_PTR(-22L);
    return ((struct ubi_volume_desc *)tmp___5);
  } else {
  }
  if (vol_id >= 0 && ubi_num >= 0) {
    tmp___6 = ubi_open_volume(ubi_num, vol_id, mode);
    return (tmp___6);
  } else {
  }
  tmp___7 = ERR_PTR(-19L);
  return ((struct ubi_volume_desc *)tmp___7);
}
}
static char const __kstrtab_ubi_open_volume_path[21U] =
  { 'u', 'b', 'i', '_',
        'o', 'p', 'e', 'n',
        '_', 'v', 'o', 'l',
        'u', 'm', 'e', '_',
        'p', 'a', 't', 'h',
        '\000'};
struct kernel_symbol const __ksymtab_ubi_open_volume_path ;
struct kernel_symbol const __ksymtab_ubi_open_volume_path = {(unsigned long )(& ubi_open_volume_path), (char const *)(& __kstrtab_ubi_open_volume_path)};
void ubi_close_volume(struct ubi_volume_desc *desc )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_close_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): close device %d, volume %d, mode %d\n";
  descriptor.lineno = 398U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): close device %d, volume %d, mode %d\n",
                       tmp->pid, ubi->ubi_num, vol->vol_id, desc->mode);
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  switch (desc->mode) {
  case 1:
  vol->readers = vol->readers + -1;
  goto ldv_26322;
  case 2:
  vol->writers = vol->writers + -1;
  goto ldv_26322;
  case 3:
  vol->exclusive = 0;
  }
  ldv_26322:
  vol->ref_count = vol->ref_count + -1;
  spin_unlock(& ubi->volumes_lock);
  kfree((void const *)desc);
  put_device(& vol->dev);
  ubi_put_device(ubi);
  module_put(& __this_module);
  return;
}
}
static char const __kstrtab_ubi_close_volume[17U] =
  { 'u', 'b', 'i', '_',
        'c', 'l', 'o', 's',
        'e', '_', 'v', 'o',
        'l', 'u', 'm', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_ubi_close_volume ;
struct kernel_symbol const __ksymtab_ubi_close_volume = {(unsigned long )(& ubi_close_volume), (char const *)(& __kstrtab_ubi_close_volume)};
int ubi_leb_read(struct ubi_volume_desc *desc , int lnum , char *buf , int offset ,
                 int len , int check )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int err ;
  int vol_id ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  vol_id = vol->vol_id;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_read";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): read %d bytes from LEB %d:%d:%d\n";
  descriptor.lineno = 455U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): read %d bytes from LEB %d:%d:%d\n",
                       tmp->pid, len, vol_id, lnum, offset);
  } else {
  }
  if ((((((vol_id < 0 || ubi->vtbl_slots <= vol_id) || lnum < 0) || vol->used_ebs <= lnum) || offset < 0) || len < 0) || offset + len > vol->usable_leb_size) {
    return (-22);
  } else {
  }
  if (vol->vol_type == 4) {
    if (vol->used_ebs == 0) {
      return (0);
    } else {
    }
    if (vol->used_ebs + -1 == lnum && offset + len > vol->last_eb_bytes) {
      return (-22);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  if (len == 0) {
    return (0);
  } else {
  }
  err = ubi_eba_read_leb(ubi, vol, lnum, (void *)buf, offset, len, check);
  if (err != 0) {
    tmp___1 = mtd_is_eccerr(err);
    if (tmp___1 != 0) {
      if (vol->vol_type == 4) {
        printk("\fUBI warning: %s: mark volume %d as corrupted\n", "ubi_leb_read",
               vol_id);
        vol->corrupted = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (err);
}
}
static char const __kstrtab_ubi_leb_read[13U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'r', 'e', 'a', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_read ;
struct kernel_symbol const __ksymtab_ubi_leb_read = {(unsigned long )(& ubi_leb_read), (char const *)(& __kstrtab_ubi_leb_read)};
int ubi_leb_write(struct ubi_volume_desc *desc , int lnum , void const *buf , int offset ,
                  int len )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int vol_id ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  vol_id = vol->vol_id;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_write";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): write %d bytes to LEB %d:%d:%d\n";
  descriptor.lineno = 518U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): write %d bytes to LEB %d:%d:%d\n",
                       tmp->pid, len, vol_id, lnum, offset);
  } else {
  }
  if (vol_id < 0 || ubi->vtbl_slots <= vol_id) {
    return (-22);
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    return (-30);
  } else {
  }
  if ((((((lnum < 0 || vol->reserved_pebs <= lnum) || offset < 0) || len < 0) || offset + len > vol->usable_leb_size) || ((ubi->min_io_size + -1) & offset) != 0) || ((ubi->min_io_size + -1) & len) != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  if (len == 0) {
    return (0);
  } else {
  }
  tmp___1 = ubi_eba_write_leb(ubi, vol, lnum, buf, offset, len);
  return (tmp___1);
}
}
static char const __kstrtab_ubi_leb_write[14U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'w', 'r', 'i', 't',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_write ;
struct kernel_symbol const __ksymtab_ubi_leb_write = {(unsigned long )(& ubi_leb_write), (char const *)(& __kstrtab_ubi_leb_write)};
int ubi_leb_change(struct ubi_volume_desc *desc , int lnum , void const *buf , int len )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int vol_id ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  vol_id = vol->vol_id;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_change";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): atomically write %d bytes to LEB %d:%d\n";
  descriptor.lineno = 563U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): atomically write %d bytes to LEB %d:%d\n",
                       tmp->pid, len, vol_id, lnum);
  } else {
  }
  if (vol_id < 0 || ubi->vtbl_slots <= vol_id) {
    return (-22);
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    return (-30);
  } else {
  }
  if ((((lnum < 0 || vol->reserved_pebs <= lnum) || len < 0) || vol->usable_leb_size < len) || ((ubi->min_io_size + -1) & len) != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  if (len == 0) {
    return (0);
  } else {
  }
  tmp___1 = ubi_eba_atomic_leb_change(ubi, vol, lnum, buf, len);
  return (tmp___1);
}
}
static char const __kstrtab_ubi_leb_change[15U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'c', 'h', 'a', 'n',
        'g', 'e', '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_change ;
struct kernel_symbol const __ksymtab_ubi_leb_change = {(unsigned long )(& ubi_leb_change), (char const *)(& __kstrtab_ubi_leb_change)};
int ubi_leb_erase(struct ubi_volume_desc *desc , int lnum )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_erase";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): erase LEB %d:%d\n";
  descriptor.lineno = 603U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): erase LEB %d:%d\n", tmp->pid,
                       vol->vol_id, lnum);
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    return (-30);
  } else {
  }
  if (lnum < 0 || vol->reserved_pebs <= lnum) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  err = ubi_eba_unmap_leb(ubi, vol, lnum);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___1 = ubi_wl_flush(ubi, vol->vol_id, lnum);
  return (tmp___1);
}
}
static char const __kstrtab_ubi_leb_erase[14U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'e', 'r', 'a', 's',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_erase ;
struct kernel_symbol const __ksymtab_ubi_leb_erase = {(unsigned long )(& ubi_leb_erase), (char const *)(& __kstrtab_ubi_leb_erase)};
int ubi_leb_unmap(struct ubi_volume_desc *desc , int lnum )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_unmap";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): unmap LEB %d:%d\n";
  descriptor.lineno = 663U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): unmap LEB %d:%d\n", tmp->pid,
                       vol->vol_id, lnum);
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    return (-30);
  } else {
  }
  if (lnum < 0 || vol->reserved_pebs <= lnum) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  tmp___1 = ubi_eba_unmap_leb(ubi, vol, lnum);
  return (tmp___1);
}
}
static char const __kstrtab_ubi_leb_unmap[14U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'u', 'n', 'm', 'a',
        'p', '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_unmap ;
struct kernel_symbol const __ksymtab_ubi_leb_unmap = {(unsigned long )(& ubi_leb_unmap), (char const *)(& __kstrtab_ubi_leb_unmap)};
int ubi_leb_map(struct ubi_volume_desc *desc , int lnum )
{
  struct ubi_volume *vol ;
  struct ubi_device *ubi ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  vol = desc->vol;
  ubi = vol->ubi;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_leb_map";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): unmap LEB %d:%d\n";
  descriptor.lineno = 699U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): unmap LEB %d:%d\n", tmp->pid,
                       vol->vol_id, lnum);
  } else {
  }
  if (desc->mode == 1 || vol->vol_type == 4) {
    return (-30);
  } else {
  }
  if (lnum < 0 || vol->reserved_pebs <= lnum) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  if (*(vol->eba_tbl + (unsigned long )lnum) >= 0) {
    return (-74);
  } else {
  }
  tmp___1 = ubi_eba_write_leb(ubi, vol, lnum, (void const *)0, 0, 0);
  return (tmp___1);
}
}
static char const __kstrtab_ubi_leb_map[12U] =
  { 'u', 'b', 'i', '_',
        'l', 'e', 'b', '_',
        'm', 'a', 'p', '\000'};
struct kernel_symbol const __ksymtab_ubi_leb_map ;
struct kernel_symbol const __ksymtab_ubi_leb_map = {(unsigned long )(& ubi_leb_map), (char const *)(& __kstrtab_ubi_leb_map)};
int ubi_is_mapped(struct ubi_volume_desc *desc , int lnum )
{
  struct ubi_volume *vol ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  vol = desc->vol;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_is_mapped";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/kapi.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): test LEB %d:%d\n";
  descriptor.lineno = 737U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): test LEB %d:%d\n", tmp->pid,
                       vol->vol_id, lnum);
  } else {
  }
  if (lnum < 0 || vol->reserved_pebs <= lnum) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)vol + 1992UL) != 0U) {
    return (-9);
  } else {
  }
  return (*(vol->eba_tbl + (unsigned long )lnum) >= 0);
}
}
static char const __kstrtab_ubi_is_mapped[14U] =
  { 'u', 'b', 'i', '_',
        'i', 's', '_', 'm',
        'a', 'p', 'p', 'e',
        'd', '\000'};
struct kernel_symbol const __ksymtab_ubi_is_mapped ;
struct kernel_symbol const __ksymtab_ubi_is_mapped = {(unsigned long )(& ubi_is_mapped), (char const *)(& __kstrtab_ubi_is_mapped)};
int ubi_sync(int ubi_num )
{
  struct ubi_device *ubi ;
  {
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19);
  } else {
  }
  mtd_sync(ubi->mtd);
  ubi_put_device(ubi);
  return (0);
}
}
static char const __kstrtab_ubi_sync[9U] =
  { 'u', 'b', 'i', '_',
        's', 'y', 'n', 'c',
        '\000'};
struct kernel_symbol const __ksymtab_ubi_sync ;
struct kernel_symbol const __ksymtab_ubi_sync = {(unsigned long )(& ubi_sync), (char const *)(& __kstrtab_ubi_sync)};
int ubi_flush(int ubi_num , int vol_id , int lnum )
{
  struct ubi_device *ubi ;
  int err ;
  {
  err = 0;
  ubi = ubi_get_device(ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19);
  } else {
  }
  err = ubi_wl_flush(ubi, vol_id, lnum);
  ubi_put_device(ubi);
  return (err);
}
}
static char const __kstrtab_ubi_flush[10U] =
  { 'u', 'b', 'i', '_',
        'f', 'l', 'u', 's',
        'h', '\000'};
struct kernel_symbol const __ksymtab_ubi_flush ;
struct kernel_symbol const __ksymtab_ubi_flush = {(unsigned long )(& ubi_flush), (char const *)(& __kstrtab_ubi_flush)};
struct blocking_notifier_head ubi_notifiers = {{0L, {{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "(ubi_notifiers).rwsem.wait_lock",
                                                         0, 0UL}}, {& ubi_notifiers.rwsem.wait_list,
                                                                    & ubi_notifiers.rwsem.wait_list},
     (struct task_struct *)0, (struct optimistic_spin_queue *)0, {0, {0, 0}, "(ubi_notifiers).rwsem",
                                                                  0, 0UL}}, (struct notifier_block *)0};
int ubi_register_volume_notifier(struct notifier_block *nb , int ignore_existing )
{
  int err ;
  {
  err = blocking_notifier_chain_register(& ubi_notifiers, nb);
  if (err != 0) {
    return (err);
  } else {
  }
  if (ignore_existing != 0) {
    return (0);
  } else {
  }
  mutex_lock_nested(& ubi_devices_mutex, 0U);
  ubi_enumerate_volumes(nb);
  mutex_unlock(& ubi_devices_mutex);
  return (err);
}
}
static char const __kstrtab_ubi_register_volume_notifier[29U] =
  { 'u', 'b', 'i', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'v', 'o', 'l',
        'u', 'm', 'e', '_',
        'n', 'o', 't', 'i',
        'f', 'i', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ubi_register_volume_notifier ;
struct kernel_symbol const __ksymtab_ubi_register_volume_notifier = {(unsigned long )(& ubi_register_volume_notifier), (char const *)(& __kstrtab_ubi_register_volume_notifier)};
int ubi_unregister_volume_notifier(struct notifier_block *nb )
{
  int tmp ;
  {
  tmp = blocking_notifier_chain_unregister(& ubi_notifiers, nb);
  return (tmp);
}
}
static char const __kstrtab_ubi_unregister_volume_notifier[31U] =
  { 'u', 'b', 'i', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'v',
        'o', 'l', 'u', 'm',
        'e', '_', 'n', 'o',
        't', 'i', 'f', 'i',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_ubi_unregister_volume_notifier ;
struct kernel_symbol const __ksymtab_ubi_unregister_volume_notifier = {(unsigned long )(& ubi_unregister_volume_notifier), (char const *)(& __kstrtab_ubi_unregister_volume_notifier)};
void *ldv_kmem_cache_alloc_153(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern int down_write_trylock(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
extern void rb_insert_color(struct rb_node * , struct rb_root * ) ;
extern void rb_erase(struct rb_node * , struct rb_root * ) ;
__inline static void rb_link_node(struct rb_node *node , struct rb_node *parent ,
                                  struct rb_node **rb_link )
{
  struct rb_node *tmp ;
  {
  node->__rb_parent_color = (unsigned long )parent;
  tmp = (struct rb_node *)0;
  node->rb_right = tmp;
  node->rb_left = tmp;
  *rb_link = node;
  return;
}
}
void *ldv_kmem_cache_alloc_172(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ubi_calculate_reserved(struct ubi_device *ubi ) ;
int ubi_eba_copy_leb(struct ubi_device *ubi , int from , int to , struct ubi_vid_hdr *vid_hdr ) ;
int ubi_eba_init(struct ubi_device *ubi , struct ubi_attach_info *ai ) ;
unsigned long long ubi_next_sqnum(struct ubi_device *ubi ) ;
int self_check_eba(struct ubi_device *ubi , struct ubi_attach_info *ai_fastmap , struct ubi_attach_info *ai_scan ) ;
int ubi_wl_get_peb(struct ubi_device *ubi ) ;
int ubi_wl_put_peb(struct ubi_device *ubi , int vol_id , int lnum , int pnum , int torture ) ;
int ubi_wl_scrub_peb(struct ubi_device *ubi , int pnum ) ;
int ubi_io_read_vid_hdr(struct ubi_device *ubi , int pnum , struct ubi_vid_hdr *vid_hdr ,
                        int verbose ) ;
__inline static void ubi_move_aeb_to_list(struct ubi_ainf_volume *av , struct ubi_ainf_peb *aeb ,
                                          struct list_head *list )
{
  {
  rb_erase(& aeb->u.rb, & av->root);
  list_add_tail(& aeb->u.list, list);
  return;
}
}
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr___0(struct ubi_device const *ubi ,
                                                           gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
__inline static int idx2vol_id(struct ubi_device const *ubi , int idx )
{
  {
  if ((int )ubi->vtbl_slots <= idx) {
    return ((idx - (int )ubi->vtbl_slots) + 2147479551);
  } else {
    return (idx);
  }
}
}
unsigned long long ubi_next_sqnum(struct ubi_device *ubi )
{
  unsigned long long sqnum ;
  unsigned long long tmp ;
  {
  spin_lock(& ubi->ltree_lock);
  tmp = ubi->global_sqnum;
  ubi->global_sqnum = ubi->global_sqnum + 1ULL;
  sqnum = tmp;
  spin_unlock(& ubi->ltree_lock);
  return (sqnum);
}
}
static int ubi_get_compat(struct ubi_device const *ubi , int vol_id )
{
  {
  if (vol_id == 2147479551) {
    return (5);
  } else {
  }
  return (0);
}
}
static struct ubi_ltree_entry *ltree_lookup(struct ubi_device *ubi , int vol_id ,
                                            int lnum )
{
  struct rb_node *p ;
  struct ubi_ltree_entry *le ;
  struct rb_node const *__mptr ;
  {
  p = ubi->ltree.rb_node;
  goto ldv_26154;
  ldv_26153:
  __mptr = (struct rb_node const *)p;
  le = (struct ubi_ltree_entry *)__mptr;
  if (le->vol_id > vol_id) {
    p = p->rb_left;
  } else
  if (le->vol_id < vol_id) {
    p = p->rb_right;
  } else
  if (le->lnum > lnum) {
    p = p->rb_left;
  } else
  if (le->lnum < lnum) {
    p = p->rb_right;
  } else {
    return (le);
  }
  ldv_26154: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26153;
  } else {
  }
  return ((struct ubi_ltree_entry *)0);
}
}
static struct ubi_ltree_entry *ltree_add_entry(struct ubi_device *ubi , int vol_id ,
                                               int lnum )
{
  struct ubi_ltree_entry *le ;
  struct ubi_ltree_entry *le1 ;
  struct ubi_ltree_entry *le_free ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct rb_node **p ;
  struct rb_node *parent ;
  struct rb_node const *__mptr ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  {
  tmp = kmalloc(200UL, 80U);
  le = (struct ubi_ltree_entry *)tmp;
  if ((unsigned long )le == (unsigned long )((struct ubi_ltree_entry *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ubi_ltree_entry *)tmp___0);
  } else {
  }
  le->users = 0;
  __init_rwsem(& le->mutex, "&le->mutex", & __key);
  le->vol_id = vol_id;
  le->lnum = lnum;
  spin_lock(& ubi->ltree_lock);
  le1 = ltree_lookup(ubi, vol_id, lnum);
  if ((unsigned long )le1 != (unsigned long )((struct ubi_ltree_entry *)0)) {
    le_free = le;
    le = le1;
  } else {
    parent = (struct rb_node *)0;
    le_free = (struct ubi_ltree_entry *)0;
    p = & ubi->ltree.rb_node;
    goto ldv_26171;
    ldv_26170:
    parent = *p;
    __mptr = (struct rb_node const *)parent;
    le1 = (struct ubi_ltree_entry *)__mptr;
    if (le1->vol_id > vol_id) {
      p = & (*p)->rb_left;
    } else
    if (le1->vol_id < vol_id) {
      p = & (*p)->rb_right;
    } else {
      tmp___2 = ldv__builtin_expect(le1->lnum == lnum, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = get_current();
        printk("\nUBI assert failed in %s at %u (pid %d)\n", "ltree_add_entry", 242,
               tmp___1->pid);
        dump_stack();
      } else {
      }
      if (le1->lnum > lnum) {
        p = & (*p)->rb_left;
      } else {
        p = & (*p)->rb_right;
      }
    }
    ldv_26171: ;
    if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
      goto ldv_26170;
    } else {
    }
    rb_link_node(& le->rb, parent, p);
    rb_insert_color(& le->rb, & ubi->ltree);
  }
  le->users = le->users + 1;
  spin_unlock(& ubi->ltree_lock);
  kfree((void const *)le_free);
  return (le);
}
}
static int leb_read_lock(struct ubi_device *ubi , int vol_id , int lnum )
{
  struct ubi_ltree_entry *le ;
  long tmp ;
  bool tmp___0 ;
  {
  le = ltree_add_entry(ubi, vol_id, lnum);
  tmp___0 = IS_ERR((void const *)le);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)le);
    return ((int )tmp);
  } else {
  }
  down_read(& le->mutex);
  return (0);
}
}
static void leb_read_unlock(struct ubi_device *ubi , int vol_id , int lnum )
{
  struct ubi_ltree_entry *le ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  spin_lock(& ubi->ltree_lock);
  le = ltree_lookup(ubi, vol_id, lnum);
  le->users = le->users + -1;
  tmp___0 = ldv__builtin_expect(le->users < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "leb_read_unlock", 293, tmp->pid);
    dump_stack();
  } else {
  }
  up_read(& le->mutex);
  if (le->users == 0) {
    rb_erase(& le->rb, & ubi->ltree);
    kfree((void const *)le);
  } else {
  }
  spin_unlock(& ubi->ltree_lock);
  return;
}
}
static int leb_write_lock(struct ubi_device *ubi , int vol_id , int lnum )
{
  struct ubi_ltree_entry *le ;
  long tmp ;
  bool tmp___0 ;
  {
  le = ltree_add_entry(ubi, vol_id, lnum);
  tmp___0 = IS_ERR((void const *)le);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)le);
    return ((int )tmp);
  } else {
  }
  down_write(& le->mutex);
  return (0);
}
}
static int leb_write_trylock(struct ubi_device *ubi , int vol_id , int lnum )
{
  struct ubi_ltree_entry *le ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  {
  le = ltree_add_entry(ubi, vol_id, lnum);
  tmp___0 = IS_ERR((void const *)le);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)le);
    return ((int )tmp);
  } else {
  }
  tmp___1 = down_write_trylock(& le->mutex);
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  spin_lock(& ubi->ltree_lock);
  le->users = le->users + -1;
  tmp___3 = ldv__builtin_expect(le->users < 0, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "leb_write_trylock", 346,
           tmp___2->pid);
    dump_stack();
  } else {
  }
  if (le->users == 0) {
    rb_erase(& le->rb, & ubi->ltree);
    kfree((void const *)le);
  } else {
  }
  spin_unlock(& ubi->ltree_lock);
  return (1);
}
}
static void leb_write_unlock(struct ubi_device *ubi , int vol_id , int lnum )
{
  struct ubi_ltree_entry *le ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  spin_lock(& ubi->ltree_lock);
  le = ltree_lookup(ubi, vol_id, lnum);
  le->users = le->users + -1;
  tmp___0 = ldv__builtin_expect(le->users < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "leb_write_unlock", 369,
           tmp->pid);
    dump_stack();
  } else {
  }
  up_write(& le->mutex);
  if (le->users == 0) {
    rb_erase(& le->rb, & ubi->ltree);
    kfree((void const *)le);
  } else {
  }
  spin_unlock(& ubi->ltree_lock);
  return;
}
}
int ubi_eba_unmap_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum )
{
  int err ;
  int pnum ;
  int vol_id ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  vol_id = vol->vol_id;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  err = leb_write_lock(ubi, vol_id, lnum);
  if (err != 0) {
    return (err);
  } else {
  }
  pnum = *(vol->eba_tbl + (unsigned long )lnum);
  if (pnum < 0) {
    goto out_unlock;
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "ubi_eba_unmap_leb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor.format = "UBI DBG eba (pid %d): erase LEB %d:%d, PEB %d\n";
  descriptor.lineno = 405U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): erase LEB %d:%d, PEB %d\n",
                       tmp->pid, vol_id, lnum, pnum);
  } else {
  }
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = -1;
  up_read(& ubi->fm_sem);
  err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 0);
  out_unlock:
  leb_write_unlock(ubi, vol_id, lnum);
  return (err);
}
}
int ubi_eba_read_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                     void *buf , int offset , int len , int check )
{
  int err ;
  int pnum ;
  int scrub ;
  int vol_id ;
  struct ubi_vid_hdr *vid_hdr ;
  uint32_t crc ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct task_struct *tmp___5 ;
  __u32 tmp___6 ;
  long tmp___7 ;
  struct task_struct *tmp___8 ;
  __u32 tmp___9 ;
  long tmp___10 ;
  __u32 tmp___11 ;
  int tmp___12 ;
  uint32_t crc1 ;
  u32 tmp___13 ;
  {
  scrub = 0;
  vol_id = vol->vol_id;
  crc = crc;
  err = leb_read_lock(ubi, vol_id, lnum);
  if (err != 0) {
    return (err);
  } else {
  }
  pnum = *(vol->eba_tbl + (unsigned long )lnum);
  if (pnum < 0) {
    descriptor.modname = "ubi";
    descriptor.function = "ubi_eba_read_leb";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
    descriptor.format = "UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d (unmapped)\n";
    descriptor.lineno = 455U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d (unmapped)\n",
                         tmp->pid, len, offset, vol_id, lnum);
    } else {
    }
    leb_read_unlock(ubi, vol_id, lnum);
    tmp___2 = ldv__builtin_expect(vol->vol_type == 4, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_read_leb", 457,
             tmp___1->pid);
      dump_stack();
    } else {
    }
    memset(buf, 255, (size_t )len);
    return (0);
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_eba_read_leb";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor___0.format = "UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d, PEB %d\n";
  descriptor___0.lineno = 463U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d, PEB %d\n",
                       tmp___3->pid, len, offset, vol_id, lnum, pnum);
  } else {
  }
  if (vol->vol_type == 3) {
    check = 0;
  } else {
  }
  retry: ;
  if (check != 0) {
    vid_hdr = ubi_zalloc_vid_hdr___0((struct ubi_device const *)ubi, 80U);
    if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
      err = -12;
      goto out_unlock;
    } else {
    }
    err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
    if (err != 0 && err != 5) {
      if (err > 0) {
        if (err == 4 || err == 3) {
          printk("\fUBI warning: %s: corrupted VID header at PEB %d, LEB %d:%d\n",
                 "ubi_eba_read_leb", pnum, vol_id, lnum);
          err = -74;
        } else {
          ubi_ro_mode(ubi);
        }
      } else {
      }
      goto out_free;
    } else
    if (err == 5) {
      scrub = 1;
    } else {
    }
    tmp___6 = __fswab32(vid_hdr->used_ebs);
    tmp___7 = ldv__builtin_expect((unsigned int )lnum >= tmp___6, 0L);
    if (tmp___7 != 0L) {
      tmp___5 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_read_leb", 499,
             tmp___5->pid);
      dump_stack();
    } else {
    }
    tmp___9 = __fswab32(vid_hdr->data_size);
    tmp___10 = ldv__builtin_expect((unsigned int )len != tmp___9, 0L);
    if (tmp___10 != 0L) {
      tmp___8 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_read_leb", 500,
             tmp___8->pid);
      dump_stack();
    } else {
    }
    tmp___11 = __fswab32(vid_hdr->data_crc);
    crc = tmp___11;
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  } else {
  }
  err = ubi_io_read_data((struct ubi_device const *)ubi, buf, pnum, offset, len);
  if (err != 0) {
    if (err == 5) {
      scrub = 1;
      err = 0;
    } else {
      tmp___12 = mtd_is_eccerr(err);
      if (tmp___12 != 0) {
        if (vol->vol_type == 3) {
          goto out_unlock;
        } else {
        }
        scrub = 1;
        if (check == 0) {
          printk("\rUBI: force data checking\n");
          check = 1;
          goto retry;
        } else {
        }
      } else {
        goto out_unlock;
      }
    }
  } else {
  }
  if (check != 0) {
    tmp___13 = crc32_le(4294967295U, (unsigned char const *)buf, (size_t )len);
    crc1 = tmp___13;
    if (crc1 != crc) {
      printk("\fUBI warning: %s: CRC error: calculated %#08x, must be %#08x\n", "ubi_eba_read_leb",
             crc1, crc);
      err = -74;
      goto out_unlock;
    } else {
    }
  } else {
  }
  if (scrub != 0) {
    err = ubi_wl_scrub_peb(ubi, pnum);
  } else {
  }
  leb_read_unlock(ubi, vol_id, lnum);
  return (err);
  out_free:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  out_unlock:
  leb_read_unlock(ubi, vol_id, lnum);
  return (err);
}
}
static int recover_peb(struct ubi_device *ubi , int pnum , int vol_id , int lnum ,
                       void const *buf , int offset , int len )
{
  int err ;
  int idx ;
  int tmp ;
  int new_pnum ;
  int data_size ;
  int tries ;
  struct ubi_volume *vol ;
  struct ubi_vid_hdr *vid_hdr ;
  unsigned long long tmp___0 ;
  __u64 tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = vol_id2idx((struct ubi_device const *)ubi, vol_id);
  idx = tmp;
  tries = 0;
  vol = ubi->volumes[idx];
  vid_hdr = ubi_zalloc_vid_hdr___0((struct ubi_device const *)ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  retry:
  new_pnum = ubi_wl_get_peb(ubi);
  if (new_pnum < 0) {
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (new_pnum);
  } else {
  }
  printk("\rUBI: recover PEB %d, move data to PEB %d\n", pnum, new_pnum);
  err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
  if (err != 0 && err != 5) {
    if (err > 0) {
      err = -5;
    } else {
    }
    goto out_put;
  } else {
  }
  tmp___0 = ubi_next_sqnum(ubi);
  tmp___1 = __fswab64(tmp___0);
  vid_hdr->sqnum = tmp___1;
  err = ubi_io_write_vid_hdr(ubi, new_pnum, vid_hdr);
  if (err != 0) {
    goto write_error;
  } else {
  }
  data_size = offset + len;
  mutex_lock_nested(& ubi->buf_mutex, 0U);
  memset(ubi->peb_buf + (unsigned long )offset, 255, (size_t )len);
  if (offset > 0) {
    err = ubi_io_read_data((struct ubi_device const *)ubi, ubi->peb_buf, pnum, 0,
                           offset);
    if (err != 0 && err != 5) {
      goto out_unlock;
    } else {
    }
  } else {
  }
  __len = (size_t )len;
  __ret = memcpy(ubi->peb_buf + (unsigned long )offset, buf, __len);
  err = ubi_io_write_data(ubi, (void const *)ubi->peb_buf, new_pnum, 0, data_size);
  if (err != 0) {
    mutex_unlock(& ubi->buf_mutex);
    goto write_error;
  } else {
  }
  mutex_unlock(& ubi->buf_mutex);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = new_pnum;
  up_read(& ubi->fm_sem);
  ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
  printk("\rUBI: data was successfully recovered\n");
  return (0);
  out_unlock:
  mutex_unlock(& ubi->buf_mutex);
  out_put:
  ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (err);
  write_error:
  printk("\fUBI warning: %s: failed to write to PEB %d\n", "recover_peb", new_pnum);
  ubi_wl_put_peb(ubi, vol_id, lnum, new_pnum, 1);
  tries = tries + 1;
  if (tries > 3) {
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
  }
  printk("\rUBI: try again\n");
  goto retry;
}
}
int ubi_eba_write_leb(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                      void const *buf , int offset , int len )
{
  int err ;
  int pnum ;
  int tries ;
  int vol_id ;
  struct ubi_vid_hdr *vid_hdr ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  unsigned long long tmp___1 ;
  __u64 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  unsigned long long tmp___9 ;
  __u64 tmp___10 ;
  {
  tries = 0;
  vol_id = vol->vol_id;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  err = leb_write_lock(ubi, vol_id, lnum);
  if (err != 0) {
    return (err);
  } else {
  }
  pnum = *(vol->eba_tbl + (unsigned long )lnum);
  if (pnum >= 0) {
    descriptor.modname = "ubi";
    descriptor.function = "ubi_eba_write_leb";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
    descriptor.format = "UBI DBG eba (pid %d): write %d bytes at offset %d of LEB %d:%d, PEB %d\n";
    descriptor.lineno = 677U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): write %d bytes at offset %d of LEB %d:%d, PEB %d\n",
                         tmp->pid, len, offset, vol_id, lnum, pnum);
    } else {
    }
    err = ubi_io_write_data(ubi, buf, pnum, offset, len);
    if (err != 0) {
      printk("\fUBI warning: %s: failed to write data to PEB %d\n", "ubi_eba_write_leb",
             pnum);
      if (err == -5 && (unsigned int )*((unsigned char *)ubi + 6652UL) != 0U) {
        err = recover_peb(ubi, pnum, vol_id, lnum, buf, offset, len);
      } else {
      }
      if (err != 0) {
        ubi_ro_mode(ubi);
      } else {
      }
    } else {
    }
    leb_write_unlock(ubi, vol_id, lnum);
    return (err);
  } else {
  }
  vid_hdr = ubi_zalloc_vid_hdr___0((struct ubi_device const *)ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    leb_write_unlock(ubi, vol_id, lnum);
    return (-12);
  } else {
  }
  vid_hdr->vol_type = 1U;
  tmp___1 = ubi_next_sqnum(ubi);
  tmp___2 = __fswab64(tmp___1);
  vid_hdr->sqnum = tmp___2;
  tmp___3 = __fswab32((__u32 )vol_id);
  vid_hdr->vol_id = tmp___3;
  tmp___4 = __fswab32((__u32 )lnum);
  vid_hdr->lnum = tmp___4;
  tmp___5 = ubi_get_compat((struct ubi_device const *)ubi, vol_id);
  vid_hdr->compat = (__u8 )tmp___5;
  tmp___6 = __fswab32((__u32 )vol->data_pad);
  vid_hdr->data_pad = tmp___6;
  retry:
  pnum = ubi_wl_get_peb(ubi);
  if (pnum < 0) {
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    leb_write_unlock(ubi, vol_id, lnum);
    return (pnum);
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_eba_write_leb";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor___0.format = "UBI DBG eba (pid %d): write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d\n";
  descriptor___0.lineno = 718U;
  descriptor___0.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG eba (pid %d): write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d\n",
                       tmp___7->pid, len, offset, vol_id, lnum, pnum);
  } else {
  }
  err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
  if (err != 0) {
    printk("\fUBI warning: %s: failed to write VID header to LEB %d:%d, PEB %d\n",
           "ubi_eba_write_leb", vol_id, lnum, pnum);
    goto write_error;
  } else {
  }
  if (len != 0) {
    err = ubi_io_write_data(ubi, buf, pnum, offset, len);
    if (err != 0) {
      printk("\fUBI warning: %s: failed to write %d bytes at offset %d of LEB %d:%d, PEB %d\n",
             "ubi_eba_write_leb", len, offset, vol_id, lnum, pnum);
      goto write_error;
    } else {
    }
  } else {
  }
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = pnum;
  up_read(& ubi->fm_sem);
  leb_write_unlock(ubi, vol_id, lnum);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (0);
  write_error: ;
  if (err != -5 || (unsigned int )*((unsigned char *)ubi + 6652UL) == 0U) {
    ubi_ro_mode(ubi);
    leb_write_unlock(ubi, vol_id, lnum);
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
  }
  err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
  if (err != 0) {
    ubi_ro_mode(ubi);
    leb_write_unlock(ubi, vol_id, lnum);
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
    tries = tries + 1;
    if (tries > 3) {
      ubi_ro_mode(ubi);
      leb_write_unlock(ubi, vol_id, lnum);
      ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
      return (err);
    } else {
    }
  }
  tmp___9 = ubi_next_sqnum(ubi);
  tmp___10 = __fswab64(tmp___9);
  vid_hdr->sqnum = tmp___10;
  printk("\rUBI: try another PEB\n");
  goto retry;
}
}
int ubi_eba_write_leb_st(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                         void const *buf , int len , int used_ebs )
{
  int err ;
  int pnum ;
  int tries ;
  int data_size ;
  int vol_id ;
  struct ubi_vid_hdr *vid_hdr ;
  uint32_t crc ;
  struct task_struct *tmp ;
  long tmp___0 ;
  unsigned long long tmp___1 ;
  __u64 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  unsigned long long tmp___14 ;
  __u64 tmp___15 ;
  {
  tries = 0;
  data_size = len;
  vol_id = vol->vol_id;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  if (used_ebs + -1 == lnum) {
    len = ((ubi->min_io_size + -1) + data_size) & - ubi->min_io_size;
  } else {
    tmp___0 = ldv__builtin_expect(((ubi->min_io_size + -1) & len) != 0, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_write_leb_st",
             806, tmp->pid);
      dump_stack();
    } else {
    }
  }
  vid_hdr = ubi_zalloc_vid_hdr___0((struct ubi_device const *)ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  err = leb_write_lock(ubi, vol_id, lnum);
  if (err != 0) {
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
  }
  tmp___1 = ubi_next_sqnum(ubi);
  tmp___2 = __fswab64(tmp___1);
  vid_hdr->sqnum = tmp___2;
  tmp___3 = __fswab32((__u32 )vol_id);
  vid_hdr->vol_id = tmp___3;
  tmp___4 = __fswab32((__u32 )lnum);
  vid_hdr->lnum = tmp___4;
  tmp___5 = ubi_get_compat((struct ubi_device const *)ubi, vol_id);
  vid_hdr->compat = (__u8 )tmp___5;
  tmp___6 = __fswab32((__u32 )vol->data_pad);
  vid_hdr->data_pad = tmp___6;
  crc = crc32_le(4294967295U, (unsigned char const *)buf, (size_t )data_size);
  vid_hdr->vol_type = 2U;
  tmp___7 = __fswab32((__u32 )data_size);
  vid_hdr->data_size = tmp___7;
  tmp___8 = __fswab32((__u32 )used_ebs);
  vid_hdr->used_ebs = tmp___8;
  tmp___9 = __fswab32(crc);
  vid_hdr->data_crc = tmp___9;
  retry:
  pnum = ubi_wl_get_peb(ubi);
  if (pnum < 0) {
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    leb_write_unlock(ubi, vol_id, lnum);
    return (pnum);
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "ubi_eba_write_leb_st";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor.format = "UBI DBG eba (pid %d): write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d\n";
  descriptor.lineno = 839U;
  descriptor.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d\n",
                       tmp___10->pid, len, vol_id, lnum, pnum, used_ebs);
  } else {
  }
  err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
  if (err != 0) {
    printk("\fUBI warning: %s: failed to write VID header to LEB %d:%d, PEB %d\n",
           "ubi_eba_write_leb_st", vol_id, lnum, pnum);
    goto write_error;
  } else {
  }
  err = ubi_io_write_data(ubi, buf, pnum, 0, len);
  if (err != 0) {
    printk("\fUBI warning: %s: failed to write %d bytes of data to PEB %d\n", "ubi_eba_write_leb_st",
           len, pnum);
    goto write_error;
  } else {
  }
  tmp___13 = ldv__builtin_expect(*(vol->eba_tbl + (unsigned long )lnum) >= 0, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_write_leb_st", 855,
           tmp___12->pid);
    dump_stack();
  } else {
  }
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = pnum;
  up_read(& ubi->fm_sem);
  leb_write_unlock(ubi, vol_id, lnum);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (0);
  write_error: ;
  if (err != -5 || (unsigned int )*((unsigned char *)ubi + 6652UL) == 0U) {
    ubi_ro_mode(ubi);
    leb_write_unlock(ubi, vol_id, lnum);
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
  }
  err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
  if (err != 0) {
    ubi_ro_mode(ubi);
    leb_write_unlock(ubi, vol_id, lnum);
    ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
    return (err);
  } else {
    tries = tries + 1;
    if (tries > 3) {
      ubi_ro_mode(ubi);
      leb_write_unlock(ubi, vol_id, lnum);
      ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
      return (err);
    } else {
    }
  }
  tmp___14 = ubi_next_sqnum(ubi);
  tmp___15 = __fswab64(tmp___14);
  vid_hdr->sqnum = tmp___15;
  printk("\rUBI: try another PEB\n");
  goto retry;
}
}
int ubi_eba_atomic_leb_change(struct ubi_device *ubi , struct ubi_volume *vol , int lnum ,
                              void const *buf , int len )
{
  int err ;
  int pnum ;
  int tries ;
  int vol_id ;
  struct ubi_vid_hdr *vid_hdr ;
  uint32_t crc ;
  int tmp ;
  unsigned long long tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  unsigned long long tmp___10 ;
  __u64 tmp___11 ;
  {
  tries = 0;
  vol_id = vol->vol_id;
  if (ubi->ro_mode != 0) {
    return (-30);
  } else {
  }
  if (len == 0) {
    err = ubi_eba_unmap_leb(ubi, vol, lnum);
    if (err != 0) {
      return (err);
    } else {
    }
    tmp = ubi_eba_write_leb(ubi, vol, lnum, (void const *)0, 0, 0);
    return (tmp);
  } else {
  }
  vid_hdr = ubi_zalloc_vid_hdr___0((struct ubi_device const *)ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  mutex_lock_nested(& ubi->alc_mutex, 0U);
  err = leb_write_lock(ubi, vol_id, lnum);
  if (err != 0) {
    goto out_mutex;
  } else {
  }
  tmp___0 = ubi_next_sqnum(ubi);
  tmp___1 = __fswab64(tmp___0);
  vid_hdr->sqnum = tmp___1;
  tmp___2 = __fswab32((__u32 )vol_id);
  vid_hdr->vol_id = tmp___2;
  tmp___3 = __fswab32((__u32 )lnum);
  vid_hdr->lnum = tmp___3;
  tmp___4 = ubi_get_compat((struct ubi_device const *)ubi, vol_id);
  vid_hdr->compat = (__u8 )tmp___4;
  tmp___5 = __fswab32((__u32 )vol->data_pad);
  vid_hdr->data_pad = tmp___5;
  crc = crc32_le(4294967295U, (unsigned char const *)buf, (size_t )len);
  vid_hdr->vol_type = 1U;
  tmp___6 = __fswab32((__u32 )len);
  vid_hdr->data_size = tmp___6;
  vid_hdr->copy_flag = 1U;
  tmp___7 = __fswab32(crc);
  vid_hdr->data_crc = tmp___7;
  retry:
  pnum = ubi_wl_get_peb(ubi);
  if (pnum < 0) {
    err = pnum;
    goto out_leb_unlock;
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "ubi_eba_atomic_leb_change";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor.format = "UBI DBG eba (pid %d): change LEB %d:%d, PEB %d, write VID hdr to PEB %d\n";
  descriptor.lineno = 957U;
  descriptor.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): change LEB %d:%d, PEB %d, write VID hdr to PEB %d\n",
                       tmp___8->pid, vol_id, lnum, *(vol->eba_tbl + (unsigned long )lnum),
                       pnum);
  } else {
  }
  err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
  if (err != 0) {
    printk("\fUBI warning: %s: failed to write VID header to LEB %d:%d, PEB %d\n",
           "ubi_eba_atomic_leb_change", vol_id, lnum, pnum);
    goto write_error;
  } else {
  }
  err = ubi_io_write_data(ubi, buf, pnum, 0, len);
  if (err != 0) {
    printk("\fUBI warning: %s: failed to write %d bytes of data to PEB %d\n", "ubi_eba_atomic_leb_change",
           len, pnum);
    goto write_error;
  } else {
  }
  if (*(vol->eba_tbl + (unsigned long )lnum) >= 0) {
    err = ubi_wl_put_peb(ubi, vol_id, lnum, *(vol->eba_tbl + (unsigned long )lnum),
                         0);
    if (err != 0) {
      goto out_leb_unlock;
    } else {
    }
  } else {
  }
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = pnum;
  up_read(& ubi->fm_sem);
  out_leb_unlock:
  leb_write_unlock(ubi, vol_id, lnum);
  out_mutex:
  mutex_unlock(& ubi->alc_mutex);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (err);
  write_error: ;
  if (err != -5 || (unsigned int )*((unsigned char *)ubi + 6652UL) == 0U) {
    ubi_ro_mode(ubi);
    goto out_leb_unlock;
  } else {
  }
  err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 1);
  if (err != 0) {
    ubi_ro_mode(ubi);
    goto out_leb_unlock;
  } else {
    tries = tries + 1;
    if (tries > 3) {
      ubi_ro_mode(ubi);
      goto out_leb_unlock;
    } else {
    }
  }
  tmp___10 = ubi_next_sqnum(ubi);
  tmp___11 = __fswab64(tmp___10);
  vid_hdr->sqnum = tmp___11;
  printk("\rUBI: try another PEB\n");
  goto retry;
}
}
static int is_error_sane(int err )
{
  {
  if ((((err == -5 || err == -12) || err == 3) || err == 4) || err == -110) {
    return (0);
  } else {
  }
  return (1);
}
}
int ubi_eba_copy_leb(struct ubi_device *ubi , int from , int to , struct ubi_vid_hdr *vid_hdr )
{
  int err ;
  int vol_id ;
  int lnum ;
  int data_size ;
  int aldata_size ;
  int idx ;
  struct ubi_volume *vol ;
  uint32_t crc ;
  __u32 tmp ;
  __u32 tmp___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___11 ;
  long tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  unsigned long long tmp___15 ;
  __u64 tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  u32 tmp___19 ;
  struct task_struct *tmp___20 ;
  long tmp___21 ;
  {
  tmp = __fswab32(vid_hdr->vol_id);
  vol_id = (int )tmp;
  tmp___0 = __fswab32(vid_hdr->lnum);
  lnum = (int )tmp___0;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_eba_copy_leb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): copy LEB %d:%d, PEB %d to PEB %d\n";
  descriptor.lineno = 1063U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): copy LEB %d:%d, PEB %d to PEB %d\n",
                       tmp___1->pid, vol_id, lnum, from, to);
  } else {
  }
  if ((unsigned int )vid_hdr->vol_type == 2U) {
    tmp___3 = __fswab32(vid_hdr->data_size);
    data_size = (int )tmp___3;
    aldata_size = ((ubi->min_io_size + -1) + data_size) & - ubi->min_io_size;
  } else {
    tmp___4 = __fswab32(vid_hdr->data_pad);
    aldata_size = (int )((unsigned int )ubi->leb_size - tmp___4);
    data_size = aldata_size;
  }
  idx = vol_id2idx((struct ubi_device const *)ubi, vol_id);
  spin_lock(& ubi->volumes_lock);
  vol = ubi->volumes[idx];
  spin_unlock(& ubi->volumes_lock);
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "ubi_eba_copy_leb";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
    descriptor___0.format = "UBI DBG wl (pid %d): volume %d is being removed, cancel\n";
    descriptor___0.lineno = 1084U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): volume %d is being removed, cancel\n",
                         tmp___5->pid, vol_id);
    } else {
    }
    return (1);
  } else {
  }
  err = leb_write_trylock(ubi, vol_id, lnum);
  if (err != 0) {
    descriptor___1.modname = "ubi";
    descriptor___1.function = "ubi_eba_copy_leb";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
    descriptor___1.format = "UBI DBG wl (pid %d): contention on LEB %d:%d, cancel\n";
    descriptor___1.lineno = 1105U;
    descriptor___1.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG wl (pid %d): contention on LEB %d:%d, cancel\n",
                         tmp___7->pid, vol_id, lnum);
    } else {
    }
    return (6);
  } else {
  }
  if (*(vol->eba_tbl + (unsigned long )lnum) != from) {
    descriptor___2.modname = "ubi";
    descriptor___2.function = "ubi_eba_copy_leb";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
    descriptor___2.format = "UBI DBG wl (pid %d): LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel\n";
    descriptor___2.lineno = 1116U;
    descriptor___2.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = get_current();
      __dynamic_pr_debug(& descriptor___2, "UBI DBG wl (pid %d): LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel\n",
                         tmp___9->pid, vol_id, lnum, from, *(vol->eba_tbl + (unsigned long )lnum));
    } else {
    }
    err = 1;
    goto out_unlock_leb;
  } else {
  }
  mutex_lock_nested(& ubi->buf_mutex, 0U);
  descriptor___3.modname = "ubi";
  descriptor___3.function = "ubi_eba_copy_leb";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor___3.format = "UBI DBG wl (pid %d): read %d bytes of data\n";
  descriptor___3.lineno = 1128U;
  descriptor___3.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = get_current();
    __dynamic_pr_debug(& descriptor___3, "UBI DBG wl (pid %d): read %d bytes of data\n",
                       tmp___11->pid, aldata_size);
  } else {
  }
  err = ubi_io_read_data((struct ubi_device const *)ubi, ubi->peb_buf, from, 0,
                         aldata_size);
  if (err != 0 && err != 5) {
    printk("\fUBI warning: %s: error %d while reading data from PEB %d\n", "ubi_eba_copy_leb",
           err, from);
    err = 2;
    goto out_unlock_buf;
  } else {
  }
  if ((unsigned int )vid_hdr->vol_type == 1U) {
    data_size = ubi_calc_data_len((struct ubi_device const *)ubi, (void const *)ubi->peb_buf,
                                  data_size);
    aldata_size = data_size;
  } else {
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                1151, 0);
  _cond_resched();
  crc = crc32_le(4294967295U, (unsigned char const *)ubi->peb_buf, (size_t )data_size);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                1153, 0);
  _cond_resched();
  if (data_size > 0) {
    vid_hdr->copy_flag = 1U;
    tmp___13 = __fswab32((__u32 )data_size);
    vid_hdr->data_size = tmp___13;
    tmp___14 = __fswab32(crc);
    vid_hdr->data_crc = tmp___14;
  } else {
  }
  tmp___15 = ubi_next_sqnum(ubi);
  tmp___16 = __fswab64(tmp___15);
  vid_hdr->sqnum = tmp___16;
  err = ubi_io_write_vid_hdr(ubi, to, vid_hdr);
  if (err != 0) {
    if (err == -5) {
      err = 4;
    } else {
    }
    goto out_unlock_buf;
  } else {
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                1175, 0);
  _cond_resched();
  err = ubi_io_read_vid_hdr(ubi, to, vid_hdr, 1);
  if (err != 0) {
    if (err != 5) {
      printk("\fUBI warning: %s: error %d while reading VID header back from PEB %d\n",
             "ubi_eba_copy_leb", err, to);
      tmp___17 = is_error_sane(err);
      if (tmp___17 != 0) {
        err = 3;
      } else {
      }
    } else {
      err = 5;
    }
    goto out_unlock_buf;
  } else {
  }
  if (data_size > 0) {
    err = ubi_io_write_data(ubi, (void const *)ubi->peb_buf, to, 0, aldata_size);
    if (err != 0) {
      if (err == -5) {
        err = 4;
      } else {
      }
      goto out_unlock_buf;
    } else {
    }
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                  1198, 0);
    _cond_resched();
    memset(ubi->peb_buf, 255, (size_t )aldata_size);
    err = ubi_io_read_data((struct ubi_device const *)ubi, ubi->peb_buf, to, 0,
                           aldata_size);
    if (err != 0) {
      if (err != 5) {
        printk("\fUBI warning: %s: error %d while reading data back from PEB %d\n",
               "ubi_eba_copy_leb", err, to);
        tmp___18 = is_error_sane(err);
        if (tmp___18 != 0) {
          err = 3;
        } else {
        }
      } else {
        err = 5;
      }
      goto out_unlock_buf;
    } else {
    }
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                  1217, 0);
    _cond_resched();
    tmp___19 = crc32_le(4294967295U, (unsigned char const *)ubi->peb_buf, (size_t )data_size);
    if (tmp___19 != crc) {
      printk("\fUBI warning: %s: read data back from PEB %d and it is different\n",
             "ubi_eba_copy_leb", to);
      err = -22;
      goto out_unlock_buf;
    } else {
    }
  } else {
  }
  tmp___21 = ldv__builtin_expect(*(vol->eba_tbl + (unsigned long )lnum) != from, 0L);
  if (tmp___21 != 0L) {
    tmp___20 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_eba_copy_leb", 1227,
           tmp___20->pid);
    dump_stack();
  } else {
  }
  down_read(& ubi->fm_sem);
  *(vol->eba_tbl + (unsigned long )lnum) = to;
  up_read(& ubi->fm_sem);
  out_unlock_buf:
  mutex_unlock(& ubi->buf_mutex);
  out_unlock_leb:
  leb_write_unlock(ubi, vol_id, lnum);
  return (err);
}
}
static void print_rsvd_warning(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int min ;
  {
  if (ai->max_sqnum > 262144ULL) {
    min = ubi->beb_rsvd_level / 10;
    if (min == 0) {
      min = 1;
    } else {
    }
    if (ubi->beb_rsvd_pebs > min) {
      return;
    } else {
    }
  } else {
  }
  printk("\fUBI warning: %s: cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d\n",
         "print_rsvd_warning", ubi->beb_rsvd_pebs, ubi->beb_rsvd_level);
  if (ubi->corr_peb_count != 0) {
    printk("\fUBI warning: %s: %d PEBs are corrupted and not used\n", "print_rsvd_warning",
           ubi->corr_peb_count);
  } else {
  }
  return;
}
}
int self_check_eba(struct ubi_device *ubi , struct ubi_attach_info *ai_fastmap , struct ubi_attach_info *ai_scan )
{
  int i ;
  int j ;
  int num_volumes ;
  int ret ;
  int **scan_eba ;
  int **fm_eba ;
  struct ubi_ainf_volume *av ;
  struct ubi_volume *vol ;
  struct ubi_ainf_peb *aeb ;
  struct rb_node *rb ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  int tmp___5 ;
  struct rb_node const *__mptr___1 ;
  struct rb_node const *__mptr___2 ;
  struct task_struct *tmp___6 ;
  {
  ret = 0;
  num_volumes = ubi->vtbl_slots + 1;
  tmp = kmalloc((unsigned long )num_volumes * 8UL, 208U);
  scan_eba = (int **)tmp;
  if ((unsigned long )scan_eba == (unsigned long )((int **)0)) {
    return (-12);
  } else {
  }
  tmp___0 = kmalloc((unsigned long )num_volumes * 8UL, 208U);
  fm_eba = (int **)tmp___0;
  if ((unsigned long )fm_eba == (unsigned long )((int **)0)) {
    kfree((void const *)scan_eba);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_26395;
  ldv_26394:
  vol = ubi->volumes[i];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26370;
  } else {
  }
  tmp___1 = kmalloc((unsigned long )vol->reserved_pebs * 4UL, 208U);
  *(scan_eba + (unsigned long )i) = (int *)tmp___1;
  if ((unsigned long )*(scan_eba + (unsigned long )i) == (unsigned long )((int *)0)) {
    ret = -12;
    goto out_free;
  } else {
  }
  tmp___2 = kmalloc((unsigned long )vol->reserved_pebs * 4UL, 208U);
  *(fm_eba + (unsigned long )i) = (int *)tmp___2;
  if ((unsigned long )*(fm_eba + (unsigned long )i) == (unsigned long )((int *)0)) {
    ret = -12;
    goto out_free;
  } else {
  }
  j = 0;
  goto ldv_26373;
  ldv_26372:
  tmp___3 = -1;
  *(*(fm_eba + (unsigned long )i) + (unsigned long )j) = tmp___3;
  *(*(scan_eba + (unsigned long )i) + (unsigned long )j) = tmp___3;
  j = j + 1;
  ldv_26373: ;
  if (vol->reserved_pebs > j) {
    goto ldv_26372;
  } else {
  }
  tmp___4 = idx2vol_id((struct ubi_device const *)ubi, i);
  av = ubi_find_av((struct ubi_attach_info const *)ai_scan, tmp___4);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto ldv_26370;
  } else {
  }
  rb = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26380;
  ldv_26379:
  *(*(scan_eba + (unsigned long )i) + (unsigned long )aeb->lnum) = aeb->pnum;
  rb = rb_next((struct rb_node const *)rb);
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26380: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26379;
  } else {
  }
  tmp___5 = idx2vol_id((struct ubi_device const *)ubi, i);
  av = ubi_find_av((struct ubi_attach_info const *)ai_fastmap, tmp___5);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto ldv_26370;
  } else {
  }
  rb = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr___1 = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26387;
  ldv_26386:
  *(*(fm_eba + (unsigned long )i) + (unsigned long )aeb->lnum) = aeb->pnum;
  rb = rb_next((struct rb_node const *)rb);
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr___2 = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26387: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26386;
  } else {
  }
  j = 0;
  goto ldv_26392;
  ldv_26391: ;
  if (*(*(scan_eba + (unsigned long )i) + (unsigned long )j) != *(*(fm_eba + (unsigned long )i) + (unsigned long )j)) {
    if (*(*(scan_eba + (unsigned long )i) + (unsigned long )j) == -1 || *(*(fm_eba + (unsigned long )i) + (unsigned long )j) == -1) {
      goto ldv_26389;
    } else {
    }
    printk("\vUBI error: %s: LEB:%i:%i is PEB:%i instead of %i!\n", "self_check_eba",
           vol->vol_id, i, *(*(fm_eba + (unsigned long )i) + (unsigned long )j), *(*(scan_eba + (unsigned long )i) + (unsigned long )j));
    tmp___6 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "self_check_eba", 1357, tmp___6->pid);
    dump_stack();
  } else {
  }
  ldv_26389:
  j = j + 1;
  ldv_26392: ;
  if (vol->reserved_pebs > j) {
    goto ldv_26391;
  } else {
  }
  ldv_26370:
  i = i + 1;
  ldv_26395: ;
  if (i < num_volumes) {
    goto ldv_26394;
  } else {
  }
  out_free:
  i = 0;
  goto ldv_26399;
  ldv_26398: ;
  if ((unsigned long )ubi->volumes[i] == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26397;
  } else {
  }
  kfree((void const *)*(scan_eba + (unsigned long )i));
  kfree((void const *)*(fm_eba + (unsigned long )i));
  ldv_26397:
  i = i + 1;
  ldv_26399: ;
  if (i < num_volumes) {
    goto ldv_26398;
  } else {
  }
  kfree((void const *)scan_eba);
  kfree((void const *)fm_eba);
  return (ret);
}
}
int ubi_eba_init(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int i ;
  int j ;
  int err ;
  int num_volumes ;
  struct ubi_ainf_volume *av ;
  struct ubi_volume *vol ;
  struct ubi_ainf_peb *aeb ;
  struct rb_node *rb ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct rb_root __constr_expr_0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_eba_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor.format = "UBI DBG eba (pid %d): initialize EBA sub-system\n";
  descriptor.lineno = 1392U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG eba (pid %d): initialize EBA sub-system\n",
                       tmp->pid);
  } else {
  }
  spinlock_check(& ubi->ltree_lock);
  __raw_spin_lock_init(& ubi->ltree_lock.ldv_6347.rlock, "&(&ubi->ltree_lock)->rlock",
                       & __key);
  __mutex_init(& ubi->alc_mutex, "&ubi->alc_mutex", & __key___0);
  __constr_expr_0.rb_node = (struct rb_node *)0;
  ubi->ltree = __constr_expr_0;
  ubi->global_sqnum = ai->max_sqnum + 1ULL;
  num_volumes = ubi->vtbl_slots + 1;
  i = 0;
  goto ldv_26432;
  ldv_26431:
  vol = ubi->volumes[i];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26418;
  } else {
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared",
                1406, 0);
  _cond_resched();
  tmp___1 = kmalloc((unsigned long )vol->reserved_pebs * 4UL, 208U);
  vol->eba_tbl = (int *)tmp___1;
  if ((unsigned long )vol->eba_tbl == (unsigned long )((int *)0)) {
    err = -12;
    goto out_free;
  } else {
  }
  j = 0;
  goto ldv_26422;
  ldv_26421:
  *(vol->eba_tbl + (unsigned long )j) = -1;
  j = j + 1;
  ldv_26422: ;
  if (vol->reserved_pebs > j) {
    goto ldv_26421;
  } else {
  }
  tmp___2 = idx2vol_id((struct ubi_device const *)ubi, i);
  av = ubi_find_av((struct ubi_attach_info const *)ai, tmp___2);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto ldv_26418;
  } else {
  }
  rb = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26429;
  ldv_26428: ;
  if (aeb->lnum >= vol->reserved_pebs) {
    ubi_move_aeb_to_list(av, aeb, & ai->erase);
  } else {
  }
  *(vol->eba_tbl + (unsigned long )aeb->lnum) = aeb->pnum;
  rb = rb_next((struct rb_node const *)rb);
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)rb;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26429: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26428;
  } else {
  }
  ldv_26418:
  i = i + 1;
  ldv_26432: ;
  if (i < num_volumes) {
    goto ldv_26431;
  } else {
  }
  if (ubi->avail_pebs <= 0) {
    printk("\vUBI error: %s: no enough physical eraseblocks (%d, need %d)\n", "ubi_eba_init",
           ubi->avail_pebs, 1);
    if (ubi->corr_peb_count != 0) {
      printk("\vUBI error: %s: %d PEBs are corrupted and not used\n", "ubi_eba_init",
             ubi->corr_peb_count);
    } else {
    }
    err = -28;
    goto out_free;
  } else {
  }
  ubi->avail_pebs = ubi->avail_pebs + -1;
  ubi->rsvd_pebs = ubi->rsvd_pebs + 1;
  if ((unsigned int )*((unsigned char *)ubi + 6652UL) != 0U) {
    ubi_calculate_reserved(ubi);
    if (ubi->avail_pebs < ubi->beb_rsvd_level) {
      ubi->beb_rsvd_pebs = ubi->avail_pebs;
      print_rsvd_warning(ubi, ai);
    } else {
      ubi->beb_rsvd_pebs = ubi->beb_rsvd_level;
    }
    ubi->avail_pebs = ubi->avail_pebs - ubi->beb_rsvd_pebs;
    ubi->rsvd_pebs = ubi->rsvd_pebs + ubi->beb_rsvd_pebs;
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_eba_init";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/eba.o.c.prepared";
  descriptor___0.format = "UBI DBG eba (pid %d): EBA sub-system is initialized\n";
  descriptor___0.lineno = 1459U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG eba (pid %d): EBA sub-system is initialized\n",
                       tmp___3->pid);
  } else {
  }
  return (0);
  out_free:
  i = 0;
  goto ldv_26437;
  ldv_26436: ;
  if ((unsigned long )ubi->volumes[i] == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26435;
  } else {
  }
  kfree((void const *)(ubi->volumes[i])->eba_tbl);
  (ubi->volumes[i])->eba_tbl = (int *)0;
  ldv_26435:
  i = i + 1;
  ldv_26437: ;
  if (i < num_volumes) {
    goto ldv_26436;
  } else {
  }
  return (err);
}
}
void *ldv_kmem_cache_alloc_172(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void *__vmalloc(unsigned long , gfp_t , pgprot_t ) ;
void *ldv_kmem_cache_alloc_191(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void schedule(void) ;
extern void yield(void) ;
extern int mtd_erase(struct mtd_info * , struct erase_info * ) ;
extern int mtd_read(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
extern int mtd_write(struct mtd_info * , loff_t , size_t , size_t * , u_char const * ) ;
extern int mtd_block_isbad(struct mtd_info * , loff_t ) ;
extern int mtd_block_markbad(struct mtd_info * , loff_t ) ;
__inline static int mtd_is_bitflip(int err )
{
  {
  return (err == -117);
}
}
void ubi_dump_flash(struct ubi_device *ubi , int pnum , int offset , int len ) ;
void ubi_dump_ec_hdr(struct ubi_ec_hdr const *ec_hdr ) ;
void ubi_dump_vid_hdr(struct ubi_vid_hdr const *vid_hdr ) ;
extern u32 prandom_u32(void) ;
int ubi_self_check_all_ff(struct ubi_device *ubi , int pnum , int offset , int len ) ;
__inline static int ubi_dbg_is_bitflip(struct ubi_device const *ubi )
{
  u32 tmp ;
  {
  if ((unsigned int )*((unsigned char *)ubi + 7016UL) != 0U) {
    tmp = prandom_u32();
    return (tmp % 200U == 0U);
  } else {
  }
  return (0);
}
}
__inline static int ubi_dbg_is_write_failure(struct ubi_device const *ubi )
{
  u32 tmp ;
  {
  if ((unsigned int )*((unsigned char *)ubi + 7016UL) != 0U) {
    tmp = prandom_u32();
    return (tmp % 500U == 0U);
  } else {
  }
  return (0);
}
}
__inline static int ubi_dbg_is_erase_failure(struct ubi_device const *ubi )
{
  u32 tmp ;
  {
  if ((unsigned int )*((unsigned char *)ubi + 7016UL) != 0U) {
    tmp = prandom_u32();
    return (tmp % 400U == 0U);
  } else {
  }
  return (0);
}
}
__inline static int ubi_dbg_chk_io(struct ubi_device const *ubi )
{
  {
  return ((int )ubi->dbg.chk_io);
}
}
int ubi_check_pattern(void const *buf , uint8_t patt , int size ) ;
int ubi_io_sync_erase(struct ubi_device *ubi , int pnum , int torture ) ;
int ubi_io_is_bad(struct ubi_device const *ubi , int pnum ) ;
int ubi_io_mark_bad(struct ubi_device const *ubi , int pnum ) ;
int ubi_io_read_ec_hdr(struct ubi_device *ubi , int pnum , struct ubi_ec_hdr *ec_hdr ,
                       int verbose ) ;
int ubi_io_write_ec_hdr(struct ubi_device *ubi , int pnum , struct ubi_ec_hdr *ec_hdr ) ;
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr___1(struct ubi_device const *ubi ,
                                                           gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
static int self_check_not_bad(struct ubi_device const *ubi , int pnum ) ;
static int self_check_peb_ec_hdr(struct ubi_device const *ubi , int pnum ) ;
static int self_check_ec_hdr(struct ubi_device const *ubi , int pnum , struct ubi_ec_hdr const *ec_hdr ) ;
static int self_check_peb_vid_hdr(struct ubi_device const *ubi , int pnum ) ;
static int self_check_vid_hdr(struct ubi_device const *ubi , int pnum , struct ubi_vid_hdr const *vid_hdr ) ;
static int self_check_write(struct ubi_device *ubi , void const *buf , int pnum ,
                            int offset , int len ) ;
int ubi_io_read(struct ubi_device const *ubi , void *buf , int pnum , int offset ,
                int len )
{
  int err ;
  int retries ;
  size_t read ;
  loff_t addr ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  char const *errstr ;
  int tmp___9 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  struct task_struct *tmp___14 ;
  int tmp___15 ;
  struct task_struct *tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  {
  retries = 0;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_read";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): read %d bytes from PEB %d:%d\n";
  descriptor.lineno = 197U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): read %d bytes from PEB %d:%d\n",
                       tmp->pid, len, pnum, offset);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 199, tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect((int )ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 199, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  tmp___5 = ldv__builtin_expect(offset < 0, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 200, tmp___4->pid);
    dump_stack();
  } else {
    tmp___6 = ldv__builtin_expect(offset + len > (int )ubi->peb_size, 0L);
    if (tmp___6 != 0L) {
      tmp___4 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 200, tmp___4->pid);
      dump_stack();
    } else {
    }
  }
  tmp___8 = ldv__builtin_expect(len <= 0, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 201, tmp___7->pid);
    dump_stack();
  } else {
  }
  err = self_check_not_bad(ubi, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  *((uint8_t *)buf) = ~ ((int )*((uint8_t *)buf));
  addr = (long long )pnum * (long long )ubi->peb_size + (long long )offset;
  retry:
  err = mtd_read(ubi->mtd, addr, (size_t )len, & read, (u_char *)buf);
  if (err != 0) {
    tmp___9 = mtd_is_eccerr(err);
    errstr = tmp___9 != 0 ? " (ECC error)" : "";
    tmp___12 = mtd_is_bitflip(err);
    if (tmp___12 != 0) {
      printk("\rUBI: fixable bit-flip detected at PEB %d\n", pnum);
      tmp___11 = ldv__builtin_expect((size_t )len != read, 0L);
      if (tmp___11 != 0L) {
        tmp___10 = get_current();
        printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 245, tmp___10->pid);
        dump_stack();
      } else {
      }
      return (5);
    } else {
    }
    tmp___13 = retries;
    retries = retries + 1;
    if (tmp___13 <= 2) {
      printk("\fUBI warning: %s: error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry\n",
             "ubi_io_read", err, errstr, len, pnum, offset, read);
      yield();
      goto retry;
    } else {
    }
    printk("\vUBI error: %s: error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes\n",
           "ubi_io_read", err, errstr, len, pnum, offset, read);
    dump_stack();
    if ((size_t )len != read) {
      tmp___15 = mtd_is_eccerr(err);
      if (tmp___15 != 0) {
        tmp___14 = get_current();
        printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 266, tmp___14->pid);
        dump_stack();
        err = -5;
      } else {
      }
    } else {
    }
  } else {
    tmp___17 = ldv__builtin_expect((size_t )len != read, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read", 270, tmp___16->pid);
      dump_stack();
    } else {
    }
    tmp___20 = ubi_dbg_is_bitflip(ubi);
    if (tmp___20 != 0) {
      descriptor___0.modname = "ubi";
      descriptor___0.function = "ubi_io_read";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
      descriptor___0.format = "UBI DBG gen (pid %d): bit-flip (emulated)\n";
      descriptor___0.lineno = 273U;
      descriptor___0.flags = 0U;
      tmp___19 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___19 != 0L) {
        tmp___18 = get_current();
        __dynamic_pr_debug(& descriptor___0, "UBI DBG gen (pid %d): bit-flip (emulated)\n",
                           tmp___18->pid);
      } else {
      }
      err = 5;
    } else {
    }
  }
  return (err);
}
}
int ubi_io_write(struct ubi_device *ubi , void const *buf , int pnum , int offset ,
                 int len )
{
  int err ;
  size_t written ;
  loff_t addr ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_write";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): write %d bytes to PEB %d:%d\n";
  descriptor.lineno = 305U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): write %d bytes to PEB %d:%d\n",
                       tmp->pid, len, pnum, offset);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 307, tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 307, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  tmp___5 = ldv__builtin_expect(offset < 0, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 308, tmp___4->pid);
    dump_stack();
  } else {
    tmp___6 = ldv__builtin_expect(offset + len > ubi->peb_size, 0L);
    if (tmp___6 != 0L) {
      tmp___4 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 308, tmp___4->pid);
      dump_stack();
    } else {
    }
  }
  tmp___8 = ldv__builtin_expect(offset % ubi->hdrs_min_io_size != 0, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 309, tmp___7->pid);
    dump_stack();
  } else {
  }
  tmp___10 = ldv__builtin_expect(len <= 0, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 310, tmp___9->pid);
    dump_stack();
  } else {
    tmp___11 = ldv__builtin_expect(len % ubi->hdrs_min_io_size != 0, 0L);
    if (tmp___11 != 0L) {
      tmp___9 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 310, tmp___9->pid);
      dump_stack();
    } else {
    }
  }
  if (ubi->ro_mode != 0) {
    printk("\vUBI error: %s: read-only mode\n", "ubi_io_write");
    return (-30);
  } else {
  }
  err = self_check_not_bad((struct ubi_device const *)ubi, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  err = ubi_self_check_all_ff(ubi, pnum, offset, len);
  if (err != 0) {
    return (err);
  } else {
  }
  if (ubi->leb_start <= offset) {
    err = self_check_peb_ec_hdr((struct ubi_device const *)ubi, pnum);
    if (err != 0) {
      return (err);
    } else {
    }
    err = self_check_peb_vid_hdr((struct ubi_device const *)ubi, pnum);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  tmp___12 = ubi_dbg_is_write_failure((struct ubi_device const *)ubi);
  if (tmp___12 != 0) {
    printk("\vUBI error: %s: cannot write %d bytes to PEB %d:%d (emulated)\n", "ubi_io_write",
           len, pnum, offset);
    dump_stack();
    return (-5);
  } else {
  }
  addr = (long long )pnum * (long long )ubi->peb_size + (long long )offset;
  err = mtd_write(ubi->mtd, addr, (size_t )len, & written, (u_char const *)buf);
  if (err != 0) {
    printk("\vUBI error: %s: error %d while writing %d bytes to PEB %d:%d, written %zd bytes\n",
           "ubi_io_write", err, len, pnum, offset, written);
    dump_stack();
    ubi_dump_flash(ubi, pnum, offset, len);
  } else {
    tmp___14 = ldv__builtin_expect((size_t )len != written, 0L);
    if (tmp___14 != 0L) {
      tmp___13 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write", 354, tmp___13->pid);
      dump_stack();
    } else {
    }
  }
  if (err == 0) {
    err = self_check_write(ubi, buf, pnum, offset, len);
    if (err != 0) {
      return (err);
    } else {
    }
    offset = offset + len;
    len = ubi->peb_size - offset;
    if (len != 0) {
      err = ubi_self_check_all_ff(ubi, pnum, offset, len);
    } else {
    }
  } else {
  }
  return (err);
}
}
static void erase_callback(struct erase_info *ei )
{
  {
  __wake_up((wait_queue_head_t *)ei->priv, 1U, 1, (void *)0);
  return;
}
}
static int do_sync_erase(struct ubi_device *ubi , int pnum )
{
  int err ;
  int retries ;
  struct erase_info ei ;
  wait_queue_head_t wq ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct lock_class_key __key ;
  int tmp___4 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  retries = 0;
  descriptor.modname = "ubi";
  descriptor.function = "do_sync_erase";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): erase PEB %d\n";
  descriptor.lineno = 401U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): erase PEB %d\n", tmp->pid,
                       pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "do_sync_erase", 402, tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "do_sync_erase", 402, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  if (ubi->ro_mode != 0) {
    printk("\vUBI error: %s: read-only mode\n", "do_sync_erase");
    return (-30);
  } else {
  }
  retry:
  __init_waitqueue_head(& wq, "&wq", & __key);
  memset((void *)(& ei), 0, 88UL);
  ei.mtd = ubi->mtd;
  ei.addr = (uint64_t )((long long )pnum * (long long )ubi->peb_size);
  ei.len = (uint64_t )ubi->peb_size;
  ei.callback = & erase_callback;
  ei.priv = (unsigned long )(& wq);
  err = mtd_erase(ubi->mtd, & ei);
  if (err != 0) {
    tmp___4 = retries;
    retries = retries + 1;
    if (tmp___4 <= 2) {
      printk("\fUBI warning: %s: error %d while erasing PEB %d, retry\n", "do_sync_erase",
             err, pnum);
      yield();
      goto retry;
    } else {
    }
    printk("\vUBI error: %s: cannot erase PEB %d, error %d\n", "do_sync_erase", pnum,
           err);
    dump_stack();
    return (err);
  } else {
  }
  __ret = 0;
  if ((unsigned int )ei.state != 8U && (unsigned int )ei.state != 16U) {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_26208:
    tmp___5 = prepare_to_wait_event(& wq, & __wait, 1);
    __int = tmp___5;
    if ((unsigned int )ei.state == 8U || (unsigned int )ei.state == 16U) {
      goto ldv_26207;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_26207;
    } else {
    }
    schedule();
    goto ldv_26208;
    ldv_26207:
    finish_wait(& wq, & __wait);
    __ret = (int )__ret___0;
  } else {
  }
  err = __ret;
  if (err != 0) {
    printk("\vUBI error: %s: interrupted PEB %d erasure\n", "do_sync_erase", pnum);
    return (-4);
  } else {
  }
  if ((unsigned int )ei.state == 16U) {
    tmp___6 = retries;
    retries = retries + 1;
    if (tmp___6 <= 2) {
      printk("\fUBI warning: %s: error while erasing PEB %d, retry\n", "do_sync_erase",
             pnum);
      yield();
      goto retry;
    } else {
    }
    printk("\vUBI error: %s: cannot erase PEB %d\n", "do_sync_erase", pnum);
    dump_stack();
    return (-5);
  } else {
  }
  err = ubi_self_check_all_ff(ubi, pnum, 0, ubi->peb_size);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___7 = ubi_dbg_is_erase_failure((struct ubi_device const *)ubi);
  if (tmp___7 != 0) {
    printk("\vUBI error: %s: cannot erase PEB %d (emulated)\n", "do_sync_erase", pnum);
    return (-5);
  } else {
  }
  return (0);
}
}
static uint8_t patterns[3U] = { 165U, 90U, 0U};
static int torture_peb(struct ubi_device *ubi , int pnum )
{
  int err ;
  int i ;
  int patt_count ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  printk("\rUBI: run torture test for PEB %d\n", pnum);
  patt_count = 3;
  tmp___0 = ldv__builtin_expect(patt_count <= 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "torture_peb", 480, tmp->pid);
    dump_stack();
  } else {
  }
  mutex_lock_nested(& ubi->buf_mutex, 0U);
  i = 0;
  goto ldv_26224;
  ldv_26223:
  err = do_sync_erase(ubi, pnum);
  if (err != 0) {
    goto out;
  } else {
  }
  err = ubi_io_read((struct ubi_device const *)ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err != 0) {
    goto out;
  } else {
  }
  err = ubi_check_pattern((void const *)ubi->peb_buf, 255, ubi->peb_size);
  if (err == 0) {
    printk("\vUBI error: %s: erased PEB %d, but a non-0xFF byte found\n", "torture_peb",
           pnum);
    err = -5;
    goto out;
  } else {
  }
  memset(ubi->peb_buf, (int )patterns[i], (size_t )ubi->peb_size);
  err = ubi_io_write(ubi, (void const *)ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err != 0) {
    goto out;
  } else {
  }
  memset(ubi->peb_buf, ~ ((int )patterns[i]), (size_t )ubi->peb_size);
  err = ubi_io_read((struct ubi_device const *)ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err != 0) {
    goto out;
  } else {
  }
  err = ubi_check_pattern((void const *)ubi->peb_buf, (int )patterns[i], ubi->peb_size);
  if (err == 0) {
    printk("\vUBI error: %s: pattern %x checking failed for PEB %d\n", "torture_peb",
           (int )patterns[i], pnum);
    err = -5;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_26224: ;
  if (i < patt_count) {
    goto ldv_26223;
  } else {
  }
  err = patt_count;
  printk("\rUBI: PEB %d passed torture test, do not mark it as bad\n", pnum);
  out:
  mutex_unlock(& ubi->buf_mutex);
  if (err == 5) {
    printk("\vUBI error: %s: read problems on freshly erased PEB %d, must be bad\n",
           "torture_peb", pnum);
    err = -5;
  } else {
    tmp___1 = mtd_is_eccerr(err);
    if (tmp___1 != 0) {
      printk("\vUBI error: %s: read problems on freshly erased PEB %d, must be bad\n",
             "torture_peb", pnum);
      err = -5;
    } else {
    }
  }
  return (err);
}
}
static int nor_erase_prepare(struct ubi_device *ubi , int pnum )
{
  int err ;
  size_t written ;
  loff_t addr ;
  uint32_t data ;
  struct ubi_ec_hdr ec_hdr ;
  struct ubi_vid_hdr vid_hdr ;
  {
  data = 0U;
  addr = (long long )pnum * (long long )ubi->peb_size;
  err = ubi_io_read_ec_hdr(ubi, pnum, & ec_hdr, 0);
  if ((err != 4 && err != 3) && err != 1) {
    err = mtd_write(ubi->mtd, addr, 4UL, & written, (u_char const *)(& data));
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  err = ubi_io_read_vid_hdr(ubi, pnum, & vid_hdr, 0);
  if ((err != 4 && err != 3) && err != 1) {
    addr = (loff_t )ubi->vid_hdr_aloffset + addr;
    err = mtd_write(ubi->mtd, addr, 4UL, & written, (u_char const *)(& data));
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  return (0);
  error:
  printk("\vUBI error: %s: cannot invalidate PEB %d, write returned %d\n", "nor_erase_prepare",
         pnum, err);
  ubi_dump_flash(ubi, pnum, 0, ubi->peb_size);
  return (-5);
}
}
int ubi_io_sync_erase(struct ubi_device *ubi , int pnum , int torture )
{
  int err ;
  int ret ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ret = 0;
  tmp___0 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_sync_erase", 634,
           tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_sync_erase", 634,
             tmp->pid);
      dump_stack();
    } else {
    }
  }
  err = self_check_not_bad((struct ubi_device const *)ubi, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  if (ubi->ro_mode != 0) {
    printk("\vUBI error: %s: read-only mode\n", "ubi_io_sync_erase");
    return (-30);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ubi + 6652UL) != 0U) {
    err = nor_erase_prepare(ubi, pnum);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if (torture != 0) {
    ret = torture_peb(ubi, pnum);
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  err = do_sync_erase(ubi, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  return (ret + 1);
}
}
int ubi_io_is_bad(struct ubi_device const *ubi , int pnum )
{
  struct mtd_info *mtd ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int ret ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  {
  mtd = ubi->mtd;
  tmp___0 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_is_bad", 676, tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect((int )ubi->peb_count <= pnum, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_is_bad", 676, tmp->pid);
      dump_stack();
    } else {
    }
  }
  if ((unsigned int )*((unsigned char *)ubi + 6652UL) != 0U) {
    ret = mtd_block_isbad(mtd, (long long )pnum * (long long )ubi->peb_size);
    if (ret < 0) {
      printk("\vUBI error: %s: error %d while checking if PEB %d is bad\n", "ubi_io_is_bad",
             ret, pnum);
    } else
    if (ret != 0) {
      descriptor.modname = "ubi";
      descriptor.function = "ubi_io_is_bad";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
      descriptor.format = "UBI DBG io (pid %d): PEB %d is bad\n";
      descriptor.lineno = 686U;
      descriptor.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = get_current();
        __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): PEB %d is bad\n", tmp___2->pid,
                           pnum);
      } else {
      }
    } else {
    }
    return (ret);
  } else {
  }
  return (0);
}
}
int ubi_io_mark_bad(struct ubi_device const *ubi , int pnum )
{
  int err ;
  struct mtd_info *mtd ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  mtd = ubi->mtd;
  tmp___0 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_mark_bad", 706, tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect((int )ubi->peb_count <= pnum, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_mark_bad", 706,
             tmp->pid);
      dump_stack();
    } else {
    }
  }
  if ((int )ubi->ro_mode != 0) {
    printk("\vUBI error: %s: read-only mode\n", "ubi_io_mark_bad");
    return (-30);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ubi + 6652UL) == 0U) {
    return (0);
  } else {
  }
  err = mtd_block_markbad(mtd, (long long )pnum * (long long )ubi->peb_size);
  if (err != 0) {
    printk("\vUBI error: %s: cannot mark PEB %d bad, error %d\n", "ubi_io_mark_bad",
           pnum, err);
  } else {
  }
  return (err);
}
}
static int validate_ec_hdr(struct ubi_device const *ubi , struct ubi_ec_hdr const *ec_hdr )
{
  long long ec ;
  int vid_hdr_offset ;
  int leb_start ;
  __u64 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  tmp = __fswab64(ec_hdr->ec);
  ec = (long long )tmp;
  tmp___0 = __fswab32(ec_hdr->vid_hdr_offset);
  vid_hdr_offset = (int )tmp___0;
  tmp___1 = __fswab32(ec_hdr->data_offset);
  leb_start = (int )tmp___1;
  if ((unsigned int )((unsigned char )ec_hdr->version) != 1U) {
    printk("\vUBI error: %s: node with incompatible UBI version found: this UBI version is %d, image version is %d\n",
           "validate_ec_hdr", 1, (int )ec_hdr->version);
    goto bad;
  } else {
  }
  if ((int )ubi->vid_hdr_offset != vid_hdr_offset) {
    printk("\vUBI error: %s: bad VID header offset %d, expected %d\n", "validate_ec_hdr",
           vid_hdr_offset, ubi->vid_hdr_offset);
    goto bad;
  } else {
  }
  if ((int )ubi->leb_start != leb_start) {
    printk("\vUBI error: %s: bad data offset %d, expected %d\n", "validate_ec_hdr",
           leb_start, ubi->leb_start);
    goto bad;
  } else {
  }
  if (ec < 0LL || ec > 2147483647LL) {
    printk("\vUBI error: %s: bad erase counter %lld\n", "validate_ec_hdr", ec);
    goto bad;
  } else {
  }
  return (0);
  bad:
  printk("\vUBI error: %s: bad EC header\n", "validate_ec_hdr");
  ubi_dump_ec_hdr(ec_hdr);
  dump_stack();
  return (1);
}
}
int ubi_io_read_ec_hdr(struct ubi_device *ubi , int pnum , struct ubi_ec_hdr *ec_hdr ,
                       int verbose )
{
  int err ;
  int read_err ;
  uint32_t crc ;
  uint32_t magic ;
  uint32_t hdr_crc ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  __u32 tmp___12 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_read_ec_hdr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): read EC header from PEB %d\n";
  descriptor.lineno = 800U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): read EC header from PEB %d\n",
                       tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read_ec_hdr", 801,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read_ec_hdr", 801,
             tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  read_err = ubi_io_read((struct ubi_device const *)ubi, (void *)ec_hdr, pnum, 0,
                         64);
  if (read_err != 0) {
    if (read_err != 5) {
      tmp___4 = mtd_is_eccerr(read_err);
      if (tmp___4 == 0) {
        return (read_err);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___5 = __fswab32(ec_hdr->magic);
  magic = tmp___5;
  if (magic != 1430407459U) {
    tmp___6 = mtd_is_eccerr(read_err);
    if (tmp___6 != 0) {
      return (4);
    } else {
    }
    tmp___9 = ubi_check_pattern((void const *)ec_hdr, 255, 64);
    if (tmp___9 != 0) {
      if (verbose != 0) {
        printk("\fUBI warning: %s: no EC header found at PEB %d, only 0xFF bytes\n",
               "ubi_io_read_ec_hdr", pnum);
      } else {
      }
      descriptor___0.modname = "ubi";
      descriptor___0.function = "ubi_io_read_ec_hdr";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
      descriptor___0.format = "UBI DBG bld (pid %d): no EC header found at PEB %d, only 0xFF bytes\n";
      descriptor___0.lineno = 835U;
      descriptor___0.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        tmp___7 = get_current();
        __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): no EC header found at PEB %d, only 0xFF bytes\n",
                           tmp___7->pid, pnum);
      } else {
      }
      if (read_err == 0) {
        return (1);
      } else {
        return (2);
      }
    } else {
    }
    if (verbose != 0) {
      printk("\fUBI warning: %s: bad magic number at PEB %d: %08x instead of %08x\n",
             "ubi_io_read_ec_hdr", pnum, magic, 1430407459);
      ubi_dump_ec_hdr((struct ubi_ec_hdr const *)ec_hdr);
    } else {
    }
    descriptor___1.modname = "ubi";
    descriptor___1.function = "ubi_io_read_ec_hdr";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
    descriptor___1.format = "UBI DBG bld (pid %d): bad magic number at PEB %d: %08x instead of %08x\n";
    descriptor___1.lineno = 852U;
    descriptor___1.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      tmp___10 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): bad magic number at PEB %d: %08x instead of %08x\n",
                         tmp___10->pid, pnum, magic, 1430407459);
    } else {
    }
    return (3);
  } else {
  }
  crc = crc32_le(4294967295U, (unsigned char const *)ec_hdr, 60UL);
  tmp___12 = __fswab32(ec_hdr->hdr_crc);
  hdr_crc = tmp___12;
  if (hdr_crc != crc) {
    if (verbose != 0) {
      printk("\fUBI warning: %s: bad EC header CRC at PEB %d, calculated %#08x, read %#08x\n",
             "ubi_io_read_ec_hdr", pnum, crc, hdr_crc);
      ubi_dump_ec_hdr((struct ubi_ec_hdr const *)ec_hdr);
    } else {
    }
    descriptor___2.modname = "ubi";
    descriptor___2.function = "ubi_io_read_ec_hdr";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
    descriptor___2.format = "UBI DBG bld (pid %d): bad EC header CRC at PEB %d, calculated %#08x, read %#08x\n";
    descriptor___2.lineno = 866U;
    descriptor___2.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      tmp___13 = get_current();
      __dynamic_pr_debug(& descriptor___2, "UBI DBG bld (pid %d): bad EC header CRC at PEB %d, calculated %#08x, read %#08x\n",
                         tmp___13->pid, pnum, crc, hdr_crc);
    } else {
    }
    if (read_err == 0) {
      return (3);
    } else {
      return (4);
    }
  } else {
  }
  err = validate_ec_hdr((struct ubi_device const *)ubi, (struct ubi_ec_hdr const *)ec_hdr);
  if (err != 0) {
    printk("\vUBI error: %s: validation failed for PEB %d\n", "ubi_io_read_ec_hdr",
           pnum);
    return (-22);
  } else {
  }
  return (read_err != 0 ? 5 : 0);
}
}
int ubi_io_write_ec_hdr(struct ubi_device *ubi , int pnum , struct ubi_ec_hdr *ec_hdr )
{
  int err ;
  uint32_t crc ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_write_ec_hdr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): write EC header to PEB %d\n";
  descriptor.lineno = 909U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): write EC header to PEB %d\n",
                       tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write_ec_hdr", 910,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write_ec_hdr",
             910, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  ec_hdr->magic = 592003669U;
  ec_hdr->version = 1U;
  tmp___4 = __fswab32((__u32 )ubi->vid_hdr_offset);
  ec_hdr->vid_hdr_offset = tmp___4;
  tmp___5 = __fswab32((__u32 )ubi->leb_start);
  ec_hdr->data_offset = tmp___5;
  tmp___6 = __fswab32((__u32 )ubi->image_seq);
  ec_hdr->image_seq = tmp___6;
  crc = crc32_le(4294967295U, (unsigned char const *)ec_hdr, 60UL);
  tmp___7 = __fswab32(crc);
  ec_hdr->hdr_crc = tmp___7;
  err = self_check_ec_hdr((struct ubi_device const *)ubi, pnum, (struct ubi_ec_hdr const *)ec_hdr);
  if (err != 0) {
    return (err);
  } else {
  }
  err = ubi_io_write(ubi, (void const *)ec_hdr, pnum, 0, ubi->ec_hdr_alsize);
  return (err);
}
}
static int validate_vid_hdr(struct ubi_device const *ubi , struct ubi_vid_hdr const *vid_hdr )
{
  int vol_type ;
  int copy_flag ;
  int vol_id ;
  __u32 tmp ;
  int lnum ;
  __u32 tmp___0 ;
  int compat ;
  int data_size ;
  __u32 tmp___1 ;
  int used_ebs ;
  __u32 tmp___2 ;
  int data_pad ;
  __u32 tmp___3 ;
  int data_crc ;
  __u32 tmp___4 ;
  int usable_leb_size ;
  {
  vol_type = (int )vid_hdr->vol_type;
  copy_flag = (int )vid_hdr->copy_flag;
  tmp = __fswab32(vid_hdr->vol_id);
  vol_id = (int )tmp;
  tmp___0 = __fswab32(vid_hdr->lnum);
  lnum = (int )tmp___0;
  compat = (int )vid_hdr->compat;
  tmp___1 = __fswab32(vid_hdr->data_size);
  data_size = (int )tmp___1;
  tmp___2 = __fswab32(vid_hdr->used_ebs);
  used_ebs = (int )tmp___2;
  tmp___3 = __fswab32(vid_hdr->data_pad);
  data_pad = (int )tmp___3;
  tmp___4 = __fswab32(vid_hdr->data_crc);
  data_crc = (int )tmp___4;
  usable_leb_size = (int )ubi->leb_size - data_pad;
  if (copy_flag != 0 && copy_flag != 1) {
    printk("\vUBI error: %s: bad copy_flag\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if ((((vol_id < 0 || lnum < 0) || data_size < 0) || used_ebs < 0) || data_pad < 0) {
    printk("\vUBI error: %s: negative values\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if (vol_id > 127 && vol_id <= 2147479550) {
    printk("\vUBI error: %s: bad vol_id\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if (vol_id <= 2147479550 && compat != 0) {
    printk("\vUBI error: %s: bad compat\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if ((((vol_id > 2147479550 && compat != 1) && compat != 2) && compat != 4) && compat != 5) {
    printk("\vUBI error: %s: bad compat\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if (vol_type != 1 && vol_type != 2) {
    printk("\vUBI error: %s: bad vol_type\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if ((int )ubi->leb_size / 2 <= data_pad) {
    printk("\vUBI error: %s: bad data_pad\n", "validate_vid_hdr");
    goto bad;
  } else {
  }
  if (vol_type == 2) {
    if (used_ebs == 0) {
      printk("\vUBI error: %s: zero used_ebs\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if (data_size == 0) {
      printk("\vUBI error: %s: zero data_size\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if (used_ebs + -1 > lnum) {
      if (data_size != usable_leb_size) {
        printk("\vUBI error: %s: bad data_size\n", "validate_vid_hdr");
        goto bad;
      } else {
      }
    } else
    if (used_ebs + -1 == lnum) {
      if (data_size == 0) {
        printk("\vUBI error: %s: bad data_size at last LEB\n", "validate_vid_hdr");
        goto bad;
      } else {
      }
    } else {
      printk("\vUBI error: %s: too high lnum\n", "validate_vid_hdr");
      goto bad;
    }
  } else {
    if (copy_flag == 0) {
      if (data_crc != 0) {
        printk("\vUBI error: %s: non-zero data CRC\n", "validate_vid_hdr");
        goto bad;
      } else {
      }
      if (data_size != 0) {
        printk("\vUBI error: %s: non-zero data_size\n", "validate_vid_hdr");
        goto bad;
      } else {
      }
    } else
    if (data_size == 0) {
      printk("\vUBI error: %s: zero data_size of copy\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if (used_ebs != 0) {
      printk("\vUBI error: %s: bad used_ebs\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
  }
  return (0);
  bad:
  printk("\vUBI error: %s: bad VID header\n", "validate_vid_hdr");
  ubi_dump_vid_hdr(vid_hdr);
  dump_stack();
  return (1);
}
}
int ubi_io_read_vid_hdr(struct ubi_device *ubi , int pnum , struct ubi_vid_hdr *vid_hdr ,
                        int verbose )
{
  int err ;
  int read_err ;
  uint32_t crc ;
  uint32_t magic ;
  uint32_t hdr_crc ;
  void *p ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  __u32 tmp___12 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_read_vid_hdr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): read VID header from PEB %d\n";
  descriptor.lineno = 1071U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): read VID header from PEB %d\n",
                       tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read_vid_hdr", 1072,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_read_vid_hdr",
             1072, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  p = (void *)vid_hdr + - ((unsigned long )ubi->vid_hdr_shift);
  read_err = ubi_io_read((struct ubi_device const *)ubi, p, pnum, ubi->vid_hdr_aloffset,
                         ubi->vid_hdr_alsize);
  if (read_err != 0 && read_err != 5) {
    tmp___4 = mtd_is_eccerr(read_err);
    if (tmp___4 == 0) {
      return (read_err);
    } else {
    }
  } else {
  }
  tmp___5 = __fswab32(vid_hdr->magic);
  magic = tmp___5;
  if (magic != 1430407457U) {
    tmp___6 = mtd_is_eccerr(read_err);
    if (tmp___6 != 0) {
      return (4);
    } else {
    }
    tmp___9 = ubi_check_pattern((void const *)vid_hdr, 255, 64);
    if (tmp___9 != 0) {
      if (verbose != 0) {
        printk("\fUBI warning: %s: no VID header found at PEB %d, only 0xFF bytes\n",
               "ubi_io_read_vid_hdr", pnum);
      } else {
      }
      descriptor___0.modname = "ubi";
      descriptor___0.function = "ubi_io_read_vid_hdr";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
      descriptor___0.format = "UBI DBG bld (pid %d): no VID header found at PEB %d, only 0xFF bytes\n";
      descriptor___0.lineno = 1090U;
      descriptor___0.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        tmp___7 = get_current();
        __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): no VID header found at PEB %d, only 0xFF bytes\n",
                           tmp___7->pid, pnum);
      } else {
      }
      if (read_err == 0) {
        return (1);
      } else {
        return (2);
      }
    } else {
    }
    if (verbose != 0) {
      printk("\fUBI warning: %s: bad magic number at PEB %d: %08x instead of %08x\n",
             "ubi_io_read_vid_hdr", pnum, magic, 1430407457);
      ubi_dump_vid_hdr((struct ubi_vid_hdr const *)vid_hdr);
    } else {
    }
    descriptor___1.modname = "ubi";
    descriptor___1.function = "ubi_io_read_vid_hdr";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
    descriptor___1.format = "UBI DBG bld (pid %d): bad magic number at PEB %d: %08x instead of %08x\n";
    descriptor___1.lineno = 1103U;
    descriptor___1.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      tmp___10 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): bad magic number at PEB %d: %08x instead of %08x\n",
                         tmp___10->pid, pnum, magic, 1430407457);
    } else {
    }
    return (3);
  } else {
  }
  crc = crc32_le(4294967295U, (unsigned char const *)vid_hdr, 60UL);
  tmp___12 = __fswab32(vid_hdr->hdr_crc);
  hdr_crc = tmp___12;
  if (hdr_crc != crc) {
    if (verbose != 0) {
      printk("\fUBI warning: %s: bad CRC at PEB %d, calculated %#08x, read %#08x\n",
             "ubi_io_read_vid_hdr", pnum, crc, hdr_crc);
      ubi_dump_vid_hdr((struct ubi_vid_hdr const *)vid_hdr);
    } else {
    }
    descriptor___2.modname = "ubi";
    descriptor___2.function = "ubi_io_read_vid_hdr";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
    descriptor___2.format = "UBI DBG bld (pid %d): bad CRC at PEB %d, calculated %#08x, read %#08x\n";
    descriptor___2.lineno = 1117U;
    descriptor___2.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      tmp___13 = get_current();
      __dynamic_pr_debug(& descriptor___2, "UBI DBG bld (pid %d): bad CRC at PEB %d, calculated %#08x, read %#08x\n",
                         tmp___13->pid, pnum, crc, hdr_crc);
    } else {
    }
    if (read_err == 0) {
      return (3);
    } else {
      return (4);
    }
  } else {
  }
  err = validate_vid_hdr((struct ubi_device const *)ubi, (struct ubi_vid_hdr const *)vid_hdr);
  if (err != 0) {
    printk("\vUBI error: %s: validation failed for PEB %d\n", "ubi_io_read_vid_hdr",
           pnum);
    return (-22);
  } else {
  }
  return (read_err != 0 ? 5 : 0);
}
}
int ubi_io_write_vid_hdr(struct ubi_device *ubi , int pnum , struct ubi_vid_hdr *vid_hdr )
{
  int err ;
  uint32_t crc ;
  void *p ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_io_write_vid_hdr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/io.o.c.prepared";
  descriptor.format = "UBI DBG io (pid %d): write VID header to PEB %d\n";
  descriptor.lineno = 1155U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG io (pid %d): write VID header to PEB %d\n",
                       tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write_vid_hdr", 1156,
           tmp___1->pid);
    dump_stack();
  } else {
    tmp___3 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_io_write_vid_hdr",
             1156, tmp___1->pid);
      dump_stack();
    } else {
    }
  }
  err = self_check_peb_ec_hdr((struct ubi_device const *)ubi, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  vid_hdr->magic = 558449237U;
  vid_hdr->version = 1U;
  crc = crc32_le(4294967295U, (unsigned char const *)vid_hdr, 60UL);
  tmp___4 = __fswab32(crc);
  vid_hdr->hdr_crc = tmp___4;
  err = self_check_vid_hdr((struct ubi_device const *)ubi, pnum, (struct ubi_vid_hdr const *)vid_hdr);
  if (err != 0) {
    return (err);
  } else {
  }
  p = (void *)vid_hdr + - ((unsigned long )ubi->vid_hdr_shift);
  err = ubi_io_write(ubi, (void const *)p, pnum, ubi->vid_hdr_aloffset, ubi->vid_hdr_alsize);
  return (err);
}
}
static int self_check_not_bad(struct ubi_device const *ubi , int pnum )
{
  int err ;
  int tmp ;
  {
  tmp = ubi_dbg_chk_io(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  err = ubi_io_is_bad(ubi, pnum);
  if (err == 0) {
    return (err);
  } else {
  }
  printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_not_bad",
         pnum);
  dump_stack();
  return (err <= 0 ? err : -22);
}
}
static int self_check_ec_hdr(struct ubi_device const *ubi , int pnum , struct ubi_ec_hdr const *ec_hdr )
{
  int err ;
  uint32_t magic ;
  int tmp ;
  __u32 tmp___0 ;
  {
  tmp = ubi_dbg_chk_io(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = __fswab32(ec_hdr->magic);
  magic = tmp___0;
  if (magic != 1430407459U) {
    printk("\vUBI error: %s: bad magic %#08x, must be %#08x\n", "self_check_ec_hdr",
           magic, 1430407459);
    goto fail;
  } else {
  }
  err = validate_ec_hdr(ubi, ec_hdr);
  if (err != 0) {
    printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_ec_hdr",
           pnum);
    goto fail;
  } else {
  }
  return (0);
  fail:
  ubi_dump_ec_hdr(ec_hdr);
  dump_stack();
  return (-22);
}
}
static int self_check_peb_ec_hdr(struct ubi_device const *ubi , int pnum )
{
  int err ;
  uint32_t crc ;
  uint32_t hdr_crc ;
  struct ubi_ec_hdr *ec_hdr ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  {
  tmp = ubi_dbg_chk_io(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = kzalloc((size_t )ubi->ec_hdr_alsize, 80U);
  ec_hdr = (struct ubi_ec_hdr *)tmp___0;
  if ((unsigned long )ec_hdr == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  err = ubi_io_read(ubi, (void *)ec_hdr, pnum, 0, 64);
  if (err != 0 && err != 5) {
    tmp___1 = mtd_is_eccerr(err);
    if (tmp___1 == 0) {
      goto exit;
    } else {
    }
  } else {
  }
  crc = crc32_le(4294967295U, (unsigned char const *)ec_hdr, 60UL);
  tmp___2 = __fswab32(ec_hdr->hdr_crc);
  hdr_crc = tmp___2;
  if (hdr_crc != crc) {
    printk("\vUBI error: %s: bad CRC, calculated %#08x, read %#08x\n", "self_check_peb_ec_hdr",
           crc, hdr_crc);
    printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_peb_ec_hdr",
           pnum);
    ubi_dump_ec_hdr((struct ubi_ec_hdr const *)ec_hdr);
    dump_stack();
    err = -22;
    goto exit;
  } else {
  }
  err = self_check_ec_hdr(ubi, pnum, (struct ubi_ec_hdr const *)ec_hdr);
  exit:
  kfree((void const *)ec_hdr);
  return (err);
}
}
static int self_check_vid_hdr(struct ubi_device const *ubi , int pnum , struct ubi_vid_hdr const *vid_hdr )
{
  int err ;
  uint32_t magic ;
  int tmp ;
  __u32 tmp___0 ;
  {
  tmp = ubi_dbg_chk_io(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = __fswab32(vid_hdr->magic);
  magic = tmp___0;
  if (magic != 1430407457U) {
    printk("\vUBI error: %s: bad VID header magic %#08x at PEB %d, must be %#08x\n",
           "self_check_vid_hdr", magic, pnum, 1430407457);
    goto fail;
  } else {
  }
  err = validate_vid_hdr(ubi, vid_hdr);
  if (err != 0) {
    printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_vid_hdr",
           pnum);
    goto fail;
  } else {
  }
  return (err);
  fail:
  printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_vid_hdr",
         pnum);
  ubi_dump_vid_hdr(vid_hdr);
  dump_stack();
  return (-22);
}
}
static int self_check_peb_vid_hdr(struct ubi_device const *ubi , int pnum )
{
  int err ;
  uint32_t crc ;
  uint32_t hdr_crc ;
  struct ubi_vid_hdr *vid_hdr ;
  void *p ;
  int tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  {
  tmp = ubi_dbg_chk_io(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  vid_hdr = ubi_zalloc_vid_hdr___1(ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  p = (void *)vid_hdr + - ((unsigned long )ubi->vid_hdr_shift);
  err = ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset, ubi->vid_hdr_alsize);
  if (err != 0 && err != 5) {
    tmp___0 = mtd_is_eccerr(err);
    if (tmp___0 == 0) {
      goto exit;
    } else {
    }
  } else {
  }
  crc = crc32_le(4294967295U, (unsigned char const *)vid_hdr, 60UL);
  tmp___1 = __fswab32(vid_hdr->hdr_crc);
  hdr_crc = tmp___1;
  if (hdr_crc != crc) {
    printk("\vUBI error: %s: bad VID header CRC at PEB %d, calculated %#08x, read %#08x\n",
           "self_check_peb_vid_hdr", pnum, crc, hdr_crc);
    printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_peb_vid_hdr",
           pnum);
    ubi_dump_vid_hdr((struct ubi_vid_hdr const *)vid_hdr);
    dump_stack();
    err = -22;
    goto exit;
  } else {
  }
  err = self_check_vid_hdr(ubi, pnum, (struct ubi_vid_hdr const *)vid_hdr);
  exit:
  ubi_free_vid_hdr(ubi, vid_hdr);
  return (err);
}
}
static int self_check_write(struct ubi_device *ubi , void const *buf , int pnum ,
                            int offset , int len )
{
  int err ;
  int i ;
  size_t read ;
  void *buf1 ;
  loff_t addr ;
  int tmp ;
  pgprot_t __constr_expr_0 ;
  int tmp___0 ;
  uint8_t c ;
  uint8_t c1 ;
  int dump_len ;
  int __max1 ;
  int __max2 ;
  {
  addr = (long long )pnum * (long long )ubi->peb_size + (long long )offset;
  tmp = ubi_dbg_chk_io((struct ubi_device const *)ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  __constr_expr_0.pgprot = 0x8000000000000163UL;
  buf1 = __vmalloc((unsigned long )len, 80U, __constr_expr_0);
  if ((unsigned long )buf1 == (unsigned long )((void *)0)) {
    printk("\vUBI error: %s: cannot allocate memory to check writes\n", "self_check_write");
    return (0);
  } else {
  }
  err = mtd_read(ubi->mtd, addr, (size_t )len, & read, (u_char *)buf1);
  if (err != 0) {
    tmp___0 = mtd_is_bitflip(err);
    if (tmp___0 == 0) {
      goto out_free;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_26406;
  ldv_26405:
  c = *((uint8_t *)buf + (unsigned long )i);
  c1 = *((uint8_t *)buf1 + (unsigned long )i);
  if ((int )c == (int )c1) {
    goto ldv_26401;
  } else {
  }
  printk("\vUBI error: %s: self-check failed for PEB %d:%d, len %d\n", "self_check_write",
         pnum, offset, len);
  printk("\rUBI: data differ at position %d\n", i);
  __max1 = 128;
  __max2 = len - i;
  dump_len = __max1 > __max2 ? __max1 : __max2;
  printk("\rUBI: hex dump of the original buffer from %d to %d\n", i, i + dump_len);
  print_hex_dump("\017", "", 2, 32, 1, buf + (unsigned long )i, (size_t )dump_len,
                 1);
  printk("\rUBI: hex dump of the read buffer from %d to %d\n", i, i + dump_len);
  print_hex_dump("\017", "", 2, 32, 1, (void const *)buf1 + (unsigned long )i, (size_t )dump_len,
                 1);
  dump_stack();
  err = -22;
  goto out_free;
  ldv_26401:
  i = i + 1;
  ldv_26406: ;
  if (i < len) {
    goto ldv_26405;
  } else {
  }
  vfree((void const *)buf1);
  return (0);
  out_free:
  vfree((void const *)buf1);
  return (err);
}
}
int ubi_self_check_all_ff(struct ubi_device *ubi , int pnum , int offset , int len )
{
  size_t read ;
  int err ;
  void *buf ;
  loff_t addr ;
  int tmp ;
  pgprot_t __constr_expr_0 ;
  int tmp___0 ;
  {
  addr = (long long )pnum * (long long )ubi->peb_size + (long long )offset;
  tmp = ubi_dbg_chk_io((struct ubi_device const *)ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  __constr_expr_0.pgprot = 0x8000000000000163UL;
  buf = __vmalloc((unsigned long )len, 80U, __constr_expr_0);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    printk("\vUBI error: %s: cannot allocate memory to check for 0xFFs\n", "ubi_self_check_all_ff");
    return (0);
  } else {
  }
  err = mtd_read(ubi->mtd, addr, (size_t )len, & read, (u_char *)buf);
  if (err != 0) {
    tmp___0 = mtd_is_bitflip(err);
    if (tmp___0 == 0) {
      printk("\vUBI error: %s: error %d while reading %d bytes from PEB %d:%d, read %zd bytes\n",
             "ubi_self_check_all_ff", err, len, pnum, offset, read);
      goto error;
    } else {
    }
  } else {
  }
  err = ubi_check_pattern((void const *)buf, 255, len);
  if (err == 0) {
    printk("\vUBI error: %s: flash region at PEB %d:%d, length %d does not contain all 0xFF bytes\n",
           "ubi_self_check_all_ff", pnum, offset, len);
    goto fail;
  } else {
  }
  vfree((void const *)buf);
  return (0);
  fail:
  printk("\vUBI error: %s: self-check failed for PEB %d\n", "ubi_self_check_all_ff",
         pnum);
  printk("\rUBI: hex dump of the %d-%d region\n", offset, offset + len);
  print_hex_dump("\017", "", 2, 32, 1, (void const *)buf, (size_t )len, 1);
  err = -22;
  error:
  dump_stack();
  vfree((void const *)buf);
  return (err);
}
}
void *ldv_kmem_cache_alloc_191(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern void debug_check_no_locks_held(void) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
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
extern struct rb_node *rb_last(struct rb_root const * ) ;
void *ldv_kmem_cache_alloc_210(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_213(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_214(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_215(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static pid_t task_pid_nr(struct task_struct *tsk )
{
  {
  return (tsk->pid);
}
}
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct * ) ;
__inline static bool freezing(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& system_freezing_cnt));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  tmp___1 = freezing_slow_path(p);
  return (tmp___1);
}
}
extern bool __refrigerator(bool ) ;
__inline static bool try_to_freeze_unsafe(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  __might_sleep("include/linux/freezer.h", 56, 0);
  tmp = get_current();
  tmp___0 = freezing(tmp);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  tmp___3 = __refrigerator(0);
  return (tmp___3);
}
}
__inline static bool try_to_freeze(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  {
  tmp = get_current();
  if ((tmp->flags & 32768U) == 0U) {
    debug_check_no_locks_held();
  } else {
  }
  tmp___0 = try_to_freeze_unsafe();
  return (tmp___0);
}
}
extern bool set_freezable(void) ;
extern bool kthread_should_stop(void) ;
__inline static int ubi_dbg_is_bgt_disabled(struct ubi_device const *ubi )
{
  {
  return ((int )ubi->dbg.disable_bgt);
}
}
int ubi_wl_init(struct ubi_device *ubi , struct ubi_attach_info *ai ) ;
struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi , int anchor ) ;
int ubi_wl_put_fm_peb(struct ubi_device *ubi , struct ubi_wl_entry *fm_e , int lnum ,
                      int torture ) ;
int ubi_is_erase_work(struct ubi_work *wrk ) ;
void ubi_refill_pools(struct ubi_device *ubi ) ;
int ubi_ensure_anchor_pebs(struct ubi_device *ubi ) ;
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr___2(struct ubi_device const *ubi ,
                                                           gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
static int self_check_ec(struct ubi_device *ubi , int pnum , int ec ) ;
static int self_check_in_wl_tree(struct ubi_device const *ubi , struct ubi_wl_entry *e ,
                                 struct rb_root *root ) ;
static int self_check_in_pq(struct ubi_device const *ubi , struct ubi_wl_entry *e ) ;
static void update_fastmap_work_fn(struct work_struct *wrk )
{
  struct ubi_device *ubi ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)wrk;
  ubi = (struct ubi_device *)__mptr + 0xffffffffffffe960UL;
  ubi_update_fastmap(ubi);
  return;
}
}
static int ubi_is_fm_block(struct ubi_device *ubi , int pnum )
{
  int i ;
  {
  if ((unsigned long )ubi->fm == (unsigned long )((struct ubi_fastmap_layout *)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_26316;
  ldv_26315: ;
  if (((ubi->fm)->e[i])->pnum == pnum) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_26316: ;
  if ((ubi->fm)->used_blocks > i) {
    goto ldv_26315;
  } else {
  }
  return (0);
}
}
static void wl_tree_add(struct ubi_wl_entry *e , struct rb_root *root )
{
  struct rb_node **p ;
  struct rb_node *parent ;
  struct ubi_wl_entry *e1 ;
  struct rb_node const *__mptr ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  parent = (struct rb_node *)0;
  p = & root->rb_node;
  goto ldv_26329;
  ldv_26328:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  e1 = (struct ubi_wl_entry *)__mptr;
  if (e->ec < e1->ec) {
    p = & (*p)->rb_left;
  } else
  if (e->ec > e1->ec) {
    p = & (*p)->rb_right;
  } else {
    tmp___0 = ldv__builtin_expect(e->pnum == e1->pnum, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "wl_tree_add", 267, tmp->pid);
      dump_stack();
    } else {
    }
    if (e->pnum < e1->pnum) {
      p = & (*p)->rb_left;
    } else {
      p = & (*p)->rb_right;
    }
  }
  ldv_26329: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26328;
  } else {
  }
  rb_link_node(& e->u.rb, parent, p);
  rb_insert_color(& e->u.rb, root);
  return;
}
}
static int do_work(struct ubi_device *ubi )
{
  int err ;
  struct ubi_work *wrk ;
  int tmp ;
  struct list_head const *__mptr ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                291, 0);
  _cond_resched();
  down_read(& ubi->work_sem);
  spin_lock(& ubi->wl_lock);
  tmp = list_empty((struct list_head const *)(& ubi->works));
  if (tmp != 0) {
    spin_unlock(& ubi->wl_lock);
    up_read(& ubi->work_sem);
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)ubi->works.next;
  wrk = (struct ubi_work *)__mptr;
  list_del(& wrk->list);
  ubi->works_count = ubi->works_count + -1;
  tmp___1 = ldv__builtin_expect(ubi->works_count < 0, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "do_work", 310, tmp___0->pid);
    dump_stack();
  } else {
  }
  spin_unlock(& ubi->wl_lock);
  err = (*(wrk->func))(ubi, wrk, 0);
  if (err != 0) {
    printk("\vUBI error: %s: work failed with error code %d\n", "do_work", err);
  } else {
  }
  up_read(& ubi->work_sem);
  return (err);
}
}
static int produce_free_peb(struct ubi_device *ubi )
{
  int err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  goto ldv_26347;
  ldv_26346:
  spin_unlock(& ubi->wl_lock);
  descriptor.modname = "ubi";
  descriptor.function = "produce_free_peb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): do one work synchronously\n";
  descriptor.lineno = 342U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): do one work synchronously\n",
                       tmp->pid);
  } else {
  }
  err = do_work(ubi);
  spin_lock(& ubi->wl_lock);
  if (err != 0) {
    return (err);
  } else {
  }
  ldv_26347: ;
  if ((unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0)) {
    goto ldv_26346;
  } else {
  }
  return (0);
}
}
static int in_wl_tree(struct ubi_wl_entry *e , struct rb_root *root )
{
  struct rb_node *p ;
  struct ubi_wl_entry *e1 ;
  struct rb_node const *__mptr ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  {
  p = root->rb_node;
  goto ldv_26359;
  ldv_26358:
  __mptr = (struct rb_node const *)p;
  e1 = (struct ubi_wl_entry *)__mptr;
  if (e->pnum == e1->pnum) {
    tmp___0 = ldv__builtin_expect((unsigned long )e != (unsigned long )e1, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "in_wl_tree", 372, tmp->pid);
      dump_stack();
    } else {
    }
    return (1);
  } else {
  }
  if (e->ec < e1->ec) {
    p = p->rb_left;
  } else
  if (e->ec > e1->ec) {
    p = p->rb_right;
  } else {
    tmp___2 = ldv__builtin_expect(e->pnum == e1->pnum, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "in_wl_tree", 381, tmp___1->pid);
      dump_stack();
    } else {
    }
    if (e->pnum < e1->pnum) {
      p = p->rb_left;
    } else {
      p = p->rb_right;
    }
  }
  ldv_26359: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26358;
  } else {
  }
  return (0);
}
}
static void prot_queue_add(struct ubi_device *ubi , struct ubi_wl_entry *e )
{
  int pq_tail ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  {
  pq_tail = ubi->pq_head + -1;
  if (pq_tail < 0) {
    pq_tail = 9;
  } else {
  }
  tmp___0 = ldv__builtin_expect(pq_tail < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "prot_queue_add", 408, tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect(pq_tail > 9, 0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "prot_queue_add", 408,
             tmp->pid);
      dump_stack();
    } else {
    }
  }
  list_add_tail(& e->u.list, (struct list_head *)(& ubi->pq) + (unsigned long )pq_tail);
  descriptor.modname = "ubi";
  descriptor.function = "prot_queue_add";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): added PEB %d EC %d to the protection queue\n";
  descriptor.lineno = 410U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): added PEB %d EC %d to the protection queue\n",
                       tmp___2->pid, e->pnum, e->ec);
  } else {
  }
  return;
}
}
static struct ubi_wl_entry *find_wl_entry(struct ubi_device *ubi , struct rb_root *root ,
                                          int diff )
{
  struct rb_node *p ;
  struct ubi_wl_entry *e ;
  struct ubi_wl_entry *prev_e ;
  int max ;
  struct rb_node const *__mptr ;
  struct rb_node *tmp ;
  struct ubi_wl_entry *e1 ;
  struct rb_node const *__mptr___0 ;
  {
  prev_e = (struct ubi_wl_entry *)0;
  tmp = rb_first((struct rb_root const *)root);
  __mptr = (struct rb_node const *)tmp;
  e = (struct ubi_wl_entry *)__mptr;
  max = e->ec + diff;
  p = root->rb_node;
  goto ldv_26383;
  ldv_26382:
  __mptr___0 = (struct rb_node const *)p;
  e1 = (struct ubi_wl_entry *)__mptr___0;
  if (e1->ec >= max) {
    p = p->rb_left;
  } else {
    p = p->rb_right;
    prev_e = e;
    e = e1;
  }
  ldv_26383: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26382;
  } else {
  }
  if ((((unsigned long )prev_e != (unsigned long )((struct ubi_wl_entry *)0) && ubi->fm_disabled == 0) && (unsigned long )ubi->fm == (unsigned long )((struct ubi_fastmap_layout *)0)) && e->pnum <= 63) {
    return (prev_e);
  } else {
  }
  return (e);
}
}
static struct ubi_wl_entry *find_mean_wl_entry(struct ubi_device *ubi , struct rb_root *root )
{
  struct ubi_wl_entry *e ;
  struct ubi_wl_entry *first ;
  struct ubi_wl_entry *last ;
  struct rb_node const *__mptr ;
  struct rb_node *tmp ;
  struct rb_node const *__mptr___0 ;
  struct rb_node *tmp___0 ;
  struct rb_node const *__mptr___1 ;
  struct rb_node const *__mptr___2 ;
  struct rb_node *tmp___1 ;
  {
  tmp = rb_first((struct rb_root const *)root);
  __mptr = (struct rb_node const *)tmp;
  first = (struct ubi_wl_entry *)__mptr;
  tmp___0 = rb_last((struct rb_root const *)root);
  __mptr___0 = (struct rb_node const *)tmp___0;
  last = (struct ubi_wl_entry *)__mptr___0;
  if (last->ec - first->ec <= 8191) {
    __mptr___1 = (struct rb_node const *)root->rb_node;
    e = (struct ubi_wl_entry *)__mptr___1;
    if ((((unsigned long )e != (unsigned long )((struct ubi_wl_entry *)0) && ubi->fm_disabled == 0) && (unsigned long )ubi->fm == (unsigned long )((struct ubi_fastmap_layout *)0)) && e->pnum <= 63) {
      tmp___1 = rb_next((struct rb_node const *)root->rb_node);
      __mptr___2 = (struct rb_node const *)tmp___1;
      e = (struct ubi_wl_entry *)__mptr___2;
    } else {
    }
  } else {
    e = find_wl_entry(ubi, root, 4096);
  }
  return (e);
}
}
static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root )
{
  struct rb_node *p ;
  struct ubi_wl_entry *e ;
  struct ubi_wl_entry *victim ;
  int max_ec ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  {
  victim = (struct ubi_wl_entry *)0;
  max_ec = 2147483647;
  p = rb_first((struct rb_root const *)root);
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)p;
    e = (struct ubi_wl_entry *)__mptr;
  } else {
    e = (struct ubi_wl_entry *)0;
  }
  goto ldv_26412;
  ldv_26411: ;
  if (e->pnum <= 63 && e->ec < max_ec) {
    victim = e;
    max_ec = e->ec;
  } else {
  }
  p = rb_next((struct rb_node const *)p);
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)p;
    e = (struct ubi_wl_entry *)__mptr___0;
  } else {
    e = (struct ubi_wl_entry *)0;
  }
  ldv_26412: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26411;
  } else {
  }
  return (victim);
}
}
static int anchor_pebs_avalible(struct rb_root *root )
{
  struct rb_node *p ;
  struct ubi_wl_entry *e ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  {
  p = rb_first((struct rb_root const *)root);
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)p;
    e = (struct ubi_wl_entry *)__mptr;
  } else {
    e = (struct ubi_wl_entry *)0;
  }
  goto ldv_26424;
  ldv_26423: ;
  if (e->pnum <= 63) {
    return (1);
  } else {
  }
  p = rb_next((struct rb_node const *)p);
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)p;
    e = (struct ubi_wl_entry *)__mptr___0;
  } else {
    e = (struct ubi_wl_entry *)0;
  }
  ldv_26424: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26423;
  } else {
  }
  return (0);
}
}
struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi , int anchor )
{
  struct ubi_wl_entry *e ;
  {
  e = (struct ubi_wl_entry *)0;
  if ((unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0) || ubi->free_count - ubi->beb_rsvd_pebs <= 0) {
    goto out;
  } else {
  }
  if (anchor != 0) {
    e = find_anchor_wl_entry(& ubi->free);
  } else {
    e = find_mean_wl_entry(ubi, & ubi->free);
  }
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto out;
  } else {
  }
  self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->free);
  rb_erase(& e->u.rb, & ubi->free);
  ubi->free_count = ubi->free_count - 1;
  out: ;
  return (e);
}
}
static int __wl_get_peb(struct ubi_device *ubi )
{
  int err ;
  struct ubi_wl_entry *e ;
  struct task_struct *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  {
  retry: ;
  if ((unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0)) {
    if (ubi->works_count == 0) {
      printk("\vUBI error: %s: no free eraseblocks\n", "__wl_get_peb");
      tmp___0 = list_empty((struct list_head const *)(& ubi->works));
      tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
      if (tmp___1 != 0L) {
        tmp = get_current();
        printk("\nUBI assert failed in %s at %u (pid %d)\n", "__wl_get_peb", 575,
               tmp->pid);
        dump_stack();
      } else {
      }
      return (-28);
    } else {
    }
    err = produce_free_peb(ubi);
    if (err < 0) {
      return (err);
    } else {
    }
    goto retry;
  } else {
  }
  e = find_mean_wl_entry(ubi, & ubi->free);
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    printk("\vUBI error: %s: no free eraseblocks\n", "__wl_get_peb");
    return (-28);
  } else {
  }
  self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->free);
  rb_erase(& e->u.rb, & ubi->free);
  ubi->free_count = ubi->free_count - 1;
  descriptor.modname = "ubi";
  descriptor.function = "__wl_get_peb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): PEB %d EC %d\n";
  descriptor.lineno = 599U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): PEB %d EC %d\n", tmp___2->pid,
                       e->pnum, e->ec);
  } else {
  }
  return (e->pnum);
}
}
static void return_unused_pool_pebs(struct ubi_device *ubi , struct ubi_fm_pool *pool )
{
  int i ;
  struct ubi_wl_entry *e ;
  {
  i = pool->used;
  goto ldv_26447;
  ldv_26446:
  e = *(ubi->lookuptbl + (unsigned long )pool->pebs[i]);
  wl_tree_add(e, & ubi->free);
  ubi->free_count = ubi->free_count + 1;
  i = i + 1;
  ldv_26447: ;
  if (pool->size > i) {
    goto ldv_26446;
  } else {
  }
  return;
}
}
static void refill_wl_pool(struct ubi_device *ubi )
{
  struct ubi_wl_entry *e ;
  struct ubi_fm_pool *pool ;
  {
  pool = & ubi->fm_wl_pool;
  return_unused_pool_pebs(ubi, pool);
  pool->size = 0;
  goto ldv_26456;
  ldv_26455: ;
  if ((unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0) || ubi->free_count - ubi->beb_rsvd_pebs <= 4) {
    goto ldv_26454;
  } else {
  }
  e = find_wl_entry(ubi, & ubi->free, 8192);
  self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->free);
  rb_erase(& e->u.rb, & ubi->free);
  ubi->free_count = ubi->free_count - 1;
  pool->pebs[pool->size] = e->pnum;
  pool->size = pool->size + 1;
  ldv_26456: ;
  if (pool->size < pool->max_size) {
    goto ldv_26455;
  } else {
  }
  ldv_26454:
  pool->used = 0;
  return;
}
}
static void refill_wl_user_pool(struct ubi_device *ubi )
{
  struct ubi_fm_pool *pool ;
  {
  pool = & ubi->fm_pool;
  return_unused_pool_pebs(ubi, pool);
  pool->size = 0;
  goto ldv_26463;
  ldv_26462:
  pool->pebs[pool->size] = __wl_get_peb(ubi);
  if (pool->pebs[pool->size] < 0) {
    goto ldv_26461;
  } else {
  }
  pool->size = pool->size + 1;
  ldv_26463: ;
  if (pool->size < pool->max_size) {
    goto ldv_26462;
  } else {
  }
  ldv_26461:
  pool->used = 0;
  return;
}
}
void ubi_refill_pools(struct ubi_device *ubi )
{
  {
  spin_lock(& ubi->wl_lock);
  refill_wl_pool(ubi);
  refill_wl_user_pool(ubi);
  spin_unlock(& ubi->wl_lock);
  return;
}
}
int ubi_wl_get_peb(struct ubi_device *ubi )
{
  int ret ;
  struct ubi_fm_pool *pool ;
  struct ubi_fm_pool *wl_pool ;
  int tmp ;
  {
  pool = & ubi->fm_pool;
  wl_pool = & ubi->fm_wl_pool;
  if (((pool->size == 0 || wl_pool->size == 0) || pool->used == pool->size) || wl_pool->used == wl_pool->size) {
    ubi_update_fastmap(ubi);
  } else {
  }
  if (pool->size == 0) {
    ret = -28;
  } else {
    spin_lock(& ubi->wl_lock);
    tmp = pool->used;
    pool->used = pool->used + 1;
    ret = pool->pebs[tmp];
    prot_queue_add(ubi, *(ubi->lookuptbl + (unsigned long )ret));
    spin_unlock(& ubi->wl_lock);
  }
  return (ret);
}
}
static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi )
{
  struct ubi_fm_pool *pool ;
  int pnum ;
  int tmp ;
  {
  pool = & ubi->fm_wl_pool;
  if (pool->used == pool->size || pool->size == 0) {
    schedule_work(& ubi->fm_work);
    return ((struct ubi_wl_entry *)0);
  } else {
    tmp = pool->used;
    pool->used = pool->used + 1;
    pnum = pool->pebs[tmp];
    return (*(ubi->lookuptbl + (unsigned long )pnum));
  }
}
}
static int prot_queue_del(struct ubi_device *ubi , int pnum )
{
  struct ubi_wl_entry *e ;
  int tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  {
  e = *(ubi->lookuptbl + (unsigned long )pnum);
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    return (-19);
  } else {
  }
  tmp = self_check_in_pq((struct ubi_device const *)ubi, e);
  if (tmp != 0) {
    return (-19);
  } else {
  }
  list_del(& e->u.list);
  descriptor.modname = "ubi";
  descriptor.function = "prot_queue_del";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): deleted PEB %d from the protection queue\n";
  descriptor.lineno = 787U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): deleted PEB %d from the protection queue\n",
                       tmp___0->pid, e->pnum);
  } else {
  }
  return (0);
}
}
static int sync_erase(struct ubi_device *ubi , struct ubi_wl_entry *e , int torture )
{
  int err ;
  struct ubi_ec_hdr *ec_hdr ;
  unsigned long long ec ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  __u64 tmp___4 ;
  {
  ec = (unsigned long long )e->ec;
  descriptor.modname = "ubi";
  descriptor.function = "sync_erase";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): erase PEB %d, old EC %llu\n";
  descriptor.lineno = 807U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): erase PEB %d, old EC %llu\n",
                       tmp->pid, e->pnum, ec);
  } else {
  }
  err = self_check_ec(ubi, e->pnum, e->ec);
  if (err != 0) {
    return (-22);
  } else {
  }
  tmp___1 = kzalloc((size_t )ubi->ec_hdr_alsize, 80U);
  ec_hdr = (struct ubi_ec_hdr *)tmp___1;
  if ((unsigned long )ec_hdr == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  err = ubi_io_sync_erase(ubi, e->pnum, torture);
  if (err < 0) {
    goto out_free;
  } else {
  }
  ec = (unsigned long long )err + ec;
  if (ec > 2147483647ULL) {
    printk("\vUBI error: %s: erase counter overflow at PEB %d, EC %llu\n", "sync_erase",
           e->pnum, ec);
    err = -22;
    goto out_free;
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "sync_erase";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor___0.format = "UBI DBG wl (pid %d): erased PEB %d, new EC %llu\n";
  descriptor___0.lineno = 833U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): erased PEB %d, new EC %llu\n",
                       tmp___2->pid, e->pnum, ec);
  } else {
  }
  tmp___4 = __fswab64(ec);
  ec_hdr->ec = tmp___4;
  err = ubi_io_write_ec_hdr(ubi, e->pnum, ec_hdr);
  if (err != 0) {
    goto out_free;
  } else {
  }
  e->ec = (int )ec;
  spin_lock(& ubi->wl_lock);
  if (e->ec > ubi->max_ec) {
    ubi->max_ec = e->ec;
  } else {
  }
  spin_unlock(& ubi->wl_lock);
  out_free:
  kfree((void const *)ec_hdr);
  return (err);
}
}
static void serve_prot_queue(struct ubi_device *ubi )
{
  struct ubi_wl_entry *e ;
  struct ubi_wl_entry *tmp ;
  int count ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___1 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  repeat:
  count = 0;
  spin_lock(& ubi->wl_lock);
  __mptr = (struct list_head const *)((struct list_head *)(& ubi->pq) + (unsigned long )ubi->pq_head)->next;
  e = (struct ubi_wl_entry *)__mptr;
  __mptr___0 = (struct list_head const *)e->u.list.next;
  tmp = (struct ubi_wl_entry *)__mptr___0;
  goto ldv_26514;
  ldv_26513:
  descriptor.modname = "ubi";
  descriptor.function = "serve_prot_queue";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): PEB %d EC %d protection over, move to used tree\n";
  descriptor.lineno = 874U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): PEB %d EC %d protection over, move to used tree\n",
                       tmp___0->pid, e->pnum, e->ec);
  } else {
  }
  list_del(& e->u.list);
  wl_tree_add(e, & ubi->used);
  tmp___2 = count;
  count = count + 1;
  if (tmp___2 > 32) {
    spin_unlock(& ubi->wl_lock);
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                  884, 0);
    _cond_resched();
    goto repeat;
  } else {
  }
  e = tmp;
  __mptr___1 = (struct list_head const *)tmp->u.list.next;
  tmp = (struct ubi_wl_entry *)__mptr___1;
  ldv_26514: ;
  if ((unsigned long )(& e->u.list) != (unsigned long )((struct list_head *)(& ubi->pq) + (unsigned long )ubi->pq_head)) {
    goto ldv_26513;
  } else {
  }
  ubi->pq_head = ubi->pq_head + 1;
  if (ubi->pq_head == 10) {
    ubi->pq_head = 0;
  } else {
  }
  tmp___4 = ldv__builtin_expect(ubi->pq_head < 0, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "serve_prot_queue", 892,
           tmp___3->pid);
    dump_stack();
  } else {
    tmp___5 = ldv__builtin_expect(ubi->pq_head > 9, 0L);
    if (tmp___5 != 0L) {
      tmp___3 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "serve_prot_queue", 892,
             tmp___3->pid);
      dump_stack();
    } else {
    }
  }
  spin_unlock(& ubi->wl_lock);
  return;
}
}
static void __schedule_ubi_work(struct ubi_device *ubi , struct ubi_work *wrk )
{
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  spin_lock(& ubi->wl_lock);
  list_add_tail(& wrk->list, & ubi->works);
  tmp___0 = ldv__builtin_expect(ubi->works_count < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "__schedule_ubi_work", 908,
           tmp->pid);
    dump_stack();
  } else {
  }
  ubi->works_count = ubi->works_count + 1;
  if (ubi->thread_enabled != 0) {
    tmp___1 = ubi_dbg_is_bgt_disabled((struct ubi_device const *)ubi);
    if (tmp___1 == 0) {
      wake_up_process(ubi->bgt_thread);
    } else {
    }
  } else {
  }
  spin_unlock(& ubi->wl_lock);
  return;
}
}
static void schedule_ubi_work(struct ubi_device *ubi , struct ubi_work *wrk )
{
  {
  down_read(& ubi->work_sem);
  __schedule_ubi_work(ubi, wrk);
  up_read(& ubi->work_sem);
  return;
}
}
static int erase_worker(struct ubi_device *ubi , struct ubi_work *wl_wrk , int cancel ) ;
int ubi_is_erase_work(struct ubi_work *wrk )
{
  {
  return ((unsigned long )wrk->func == (unsigned long )(& erase_worker));
}
}
static int schedule_erase(struct ubi_device *ubi , struct ubi_wl_entry *e , int vol_id ,
                          int lnum , int torture )
{
  struct ubi_work *wl_wrk ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  void *tmp___6 ;
  {
  tmp___0 = ldv__builtin_expect((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0),
                             0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "schedule_erase", 960, tmp->pid);
    dump_stack();
  } else {
  }
  tmp___2 = ubi_is_fm_block(ubi, e->pnum);
  tmp___3 = ldv__builtin_expect(tmp___2 != 0, 0L);
  if (tmp___3 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "schedule_erase", 961, tmp___1->pid);
    dump_stack();
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "schedule_erase";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): schedule erasure of PEB %d, EC %d, torture %d\n";
  descriptor.lineno = 964U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): schedule erasure of PEB %d, EC %d, torture %d\n",
                       tmp___4->pid, e->pnum, e->ec, torture);
  } else {
  }
  tmp___6 = kmalloc(48UL, 80U);
  wl_wrk = (struct ubi_work *)tmp___6;
  if ((unsigned long )wl_wrk == (unsigned long )((struct ubi_work *)0)) {
    return (-12);
  } else {
  }
  wl_wrk->func = & erase_worker;
  wl_wrk->e = e;
  wl_wrk->vol_id = vol_id;
  wl_wrk->lnum = lnum;
  wl_wrk->torture = torture;
  schedule_ubi_work(ubi, wl_wrk);
  return (0);
}
}
static int do_sync_erase___0(struct ubi_device *ubi , struct ubi_wl_entry *e , int vol_id ,
                             int lnum , int torture )
{
  struct ubi_work *wl_wrk ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "do_sync_erase";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): sync erase of PEB %i\n";
  descriptor.lineno = 994U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): sync erase of PEB %i\n",
                       tmp->pid, e->pnum);
  } else {
  }
  tmp___1 = kmalloc(48UL, 80U);
  wl_wrk = (struct ubi_work *)tmp___1;
  if ((unsigned long )wl_wrk == (unsigned long )((struct ubi_work *)0)) {
    return (-12);
  } else {
  }
  wl_wrk->e = e;
  wl_wrk->vol_id = vol_id;
  wl_wrk->lnum = lnum;
  wl_wrk->torture = torture;
  tmp___2 = erase_worker(ubi, wl_wrk, 0);
  return (tmp___2);
}
}
int ubi_wl_put_fm_peb(struct ubi_device *ubi , struct ubi_wl_entry *fm_e , int lnum ,
                      int torture )
{
  struct ubi_wl_entry *e ;
  int vol_id ;
  int pnum ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  {
  pnum = fm_e->pnum;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_wl_put_fm_peb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): PEB %d\n";
  descriptor.lineno = 1025U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): PEB %d\n", tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_fm_peb", 1027,
           tmp___1->pid);
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_fm_peb", 1028,
           tmp___3->pid);
    dump_stack();
  } else {
  }
  spin_lock(& ubi->wl_lock);
  e = *(ubi->lookuptbl + (unsigned long )pnum);
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    e = fm_e;
    tmp___6 = ldv__builtin_expect(e->ec < 0, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_fm_peb", 1039,
             tmp___5->pid);
      dump_stack();
    } else {
    }
    *(ubi->lookuptbl + (unsigned long )pnum) = e;
  } else {
    e->ec = fm_e->ec;
    kfree((void const *)fm_e);
  }
  spin_unlock(& ubi->wl_lock);
  vol_id = lnum != 0 ? 2147479553 : 2147479552;
  tmp___7 = schedule_erase(ubi, e, vol_id, lnum, torture);
  return (tmp___7);
}
}
static int wear_leveling_worker(struct ubi_device *ubi , struct ubi_work *wrk , int cancel )
{
  int err ;
  int scrubbing ;
  int torture ;
  int protect ;
  int erroneous ;
  int vol_id ;
  int lnum ;
  int anchor ;
  struct ubi_wl_entry *e1 ;
  struct ubi_wl_entry *e2 ;
  struct ubi_vid_hdr *vid_hdr ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct rb_node const *__mptr ;
  struct rb_node *tmp___9 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  struct rb_node const *__mptr___0 ;
  struct rb_node *tmp___14 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___5 ;
  struct task_struct *tmp___19 ;
  long tmp___20 ;
  __u32 tmp___21 ;
  __u32 tmp___22 ;
  struct task_struct *tmp___23 ;
  struct ubi_wl_entry *tmp___24 ;
  int tmp___25 ;
  struct _ddebug descriptor___6 ;
  struct task_struct *tmp___26 ;
  long tmp___27 ;
  struct _ddebug descriptor___7 ;
  struct task_struct *tmp___28 ;
  long tmp___29 ;
  struct _ddebug descriptor___8 ;
  struct task_struct *tmp___30 ;
  long tmp___31 ;
  struct _ddebug descriptor___9 ;
  struct task_struct *tmp___32 ;
  long tmp___33 ;
  struct task_struct *tmp___34 ;
  long tmp___35 ;
  struct ubi_wl_entry *tmp___36 ;
  struct ubi_wl_entry *tmp___37 ;
  int tmp___38 ;
  struct task_struct *tmp___39 ;
  long tmp___40 ;
  {
  scrubbing = 0;
  torture = 0;
  protect = 0;
  erroneous = 0;
  vol_id = -1;
  lnum = lnum;
  anchor = wrk->anchor;
  kfree((void const *)wrk);
  if (cancel != 0) {
    return (0);
  } else {
  }
  vid_hdr = ubi_zalloc_vid_hdr___2((struct ubi_device const *)ubi, 80U);
  if ((unsigned long )vid_hdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  mutex_lock_nested(& ubi->move_mutex, 0U);
  spin_lock(& ubi->wl_lock);
  tmp___0 = ldv__builtin_expect((unsigned long )ubi->move_from != (unsigned long )((struct ubi_wl_entry *)0),
                             0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker", 1084,
           tmp->pid);
    dump_stack();
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )ubi->move_to != (unsigned long )((struct ubi_wl_entry *)0),
                               0L);
    if (tmp___1 != 0L) {
      tmp = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker",
             1084, tmp->pid);
      dump_stack();
    } else {
    }
  }
  tmp___3 = ldv__builtin_expect(ubi->move_to_put != 0, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker", 1085,
           tmp___2->pid);
    dump_stack();
  } else {
  }
  if ((unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0) || ((unsigned long )ubi->used.rb_node == (unsigned long )((struct rb_node *)0) && (unsigned long )ubi->scrub.rb_node == (unsigned long )((struct rb_node *)0))) {
    descriptor.modname = "ubi";
    descriptor.function = "wear_leveling_worker";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor.format = "UBI DBG wl (pid %d): cancel WL, a list is empty: free %d, used %d\n";
    descriptor.lineno = 1100U;
    descriptor.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): cancel WL, a list is empty: free %d, used %d\n",
                         tmp___4->pid, (unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0),
                         (unsigned long )ubi->used.rb_node == (unsigned long )((struct rb_node *)0));
    } else {
    }
    goto out_cancel;
  } else {
  }
  if (anchor == 0) {
    tmp___6 = anchor_pebs_avalible(& ubi->free);
    anchor = tmp___6 == 0;
  } else {
  }
  if (anchor != 0) {
    e1 = find_anchor_wl_entry(& ubi->used);
    if ((unsigned long )e1 == (unsigned long )((struct ubi_wl_entry *)0)) {
      goto out_cancel;
    } else {
    }
    e2 = get_peb_for_wl(ubi);
    if ((unsigned long )e2 == (unsigned long )((struct ubi_wl_entry *)0)) {
      goto out_cancel;
    } else {
    }
    self_check_in_wl_tree((struct ubi_device const *)ubi, e1, & ubi->used);
    rb_erase(& e1->u.rb, & ubi->used);
    descriptor___0.modname = "ubi";
    descriptor___0.function = "wear_leveling_worker";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___0.format = "UBI DBG wl (pid %d): anchor-move PEB %d to PEB %d\n";
    descriptor___0.lineno = 1119U;
    descriptor___0.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): anchor-move PEB %d to PEB %d\n",
                         tmp___7->pid, e1->pnum, e2->pnum);
    } else {
    }
  } else
  if ((unsigned long )ubi->scrub.rb_node == (unsigned long )((struct rb_node *)0)) {
    tmp___9 = rb_first((struct rb_root const *)(& ubi->used));
    __mptr = (struct rb_node const *)tmp___9;
    e1 = (struct ubi_wl_entry *)__mptr;
    e2 = get_peb_for_wl(ubi);
    if ((unsigned long )e2 == (unsigned long )((struct ubi_wl_entry *)0)) {
      goto out_cancel;
    } else {
    }
    if (e2->ec - e1->ec <= 4095) {
      descriptor___1.modname = "ubi";
      descriptor___1.function = "wear_leveling_worker";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
      descriptor___1.format = "UBI DBG wl (pid %d): no WL needed: min used EC %d, max free EC %d\n";
      descriptor___1.lineno = 1136U;
      descriptor___1.flags = 0U;
      tmp___11 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___11 != 0L) {
        tmp___10 = get_current();
        __dynamic_pr_debug(& descriptor___1, "UBI DBG wl (pid %d): no WL needed: min used EC %d, max free EC %d\n",
                           tmp___10->pid, e1->ec, e2->ec);
      } else {
      }
      wl_tree_add(e2, & ubi->free);
      ubi->free_count = ubi->free_count + 1;
      goto out_cancel;
    } else {
    }
    self_check_in_wl_tree((struct ubi_device const *)ubi, e1, & ubi->used);
    rb_erase(& e1->u.rb, & ubi->used);
    descriptor___2.modname = "ubi";
    descriptor___2.function = "wear_leveling_worker";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___2.format = "UBI DBG wl (pid %d): move PEB %d EC %d to PEB %d EC %d\n";
    descriptor___2.lineno = 1146U;
    descriptor___2.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      tmp___12 = get_current();
      __dynamic_pr_debug(& descriptor___2, "UBI DBG wl (pid %d): move PEB %d EC %d to PEB %d EC %d\n",
                         tmp___12->pid, e1->pnum, e1->ec, e2->pnum, e2->ec);
    } else {
    }
  } else {
    scrubbing = 1;
    tmp___14 = rb_first((struct rb_root const *)(& ubi->scrub));
    __mptr___0 = (struct rb_node const *)tmp___14;
    e1 = (struct ubi_wl_entry *)__mptr___0;
    e2 = get_peb_for_wl(ubi);
    if ((unsigned long )e2 == (unsigned long )((struct ubi_wl_entry *)0)) {
      goto out_cancel;
    } else {
    }
    self_check_in_wl_tree((struct ubi_device const *)ubi, e1, & ubi->scrub);
    rb_erase(& e1->u.rb, & ubi->scrub);
    descriptor___3.modname = "ubi";
    descriptor___3.function = "wear_leveling_worker";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___3.format = "UBI DBG wl (pid %d): scrub PEB %d to PEB %d\n";
    descriptor___3.lineno = 1157U;
    descriptor___3.flags = 0U;
    tmp___16 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___16 != 0L) {
      tmp___15 = get_current();
      __dynamic_pr_debug(& descriptor___3, "UBI DBG wl (pid %d): scrub PEB %d to PEB %d\n",
                         tmp___15->pid, e1->pnum, e2->pnum);
    } else {
    }
  }
  ubi->move_from = e1;
  ubi->move_to = e2;
  spin_unlock(& ubi->wl_lock);
  err = ubi_io_read_vid_hdr(ubi, e1->pnum, vid_hdr, 0);
  if (err != 0 && err != 5) {
    if (err == 1) {
      descriptor___4.modname = "ubi";
      descriptor___4.function = "wear_leveling_worker";
      descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
      descriptor___4.format = "UBI DBG wl (pid %d): PEB %d has no VID header\n";
      descriptor___4.lineno = 1188U;
      descriptor___4.flags = 0U;
      tmp___18 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___18 != 0L) {
        tmp___17 = get_current();
        __dynamic_pr_debug(& descriptor___4, "UBI DBG wl (pid %d): PEB %d has no VID header\n",
                           tmp___17->pid, e1->pnum);
      } else {
      }
      protect = 1;
      goto out_not_moved;
    } else
    if (err == 2) {
      descriptor___5.modname = "ubi";
      descriptor___5.function = "wear_leveling_worker";
      descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
      descriptor___5.format = "UBI DBG wl (pid %d): PEB %d has no VID header but has bit-flips\n";
      descriptor___5.lineno = 1198U;
      descriptor___5.flags = 0U;
      tmp___20 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___20 != 0L) {
        tmp___19 = get_current();
        __dynamic_pr_debug(& descriptor___5, "UBI DBG wl (pid %d): PEB %d has no VID header but has bit-flips\n",
                           tmp___19->pid, e1->pnum);
      } else {
      }
      scrubbing = 1;
      goto out_not_moved;
    } else {
    }
    printk("\vUBI error: %s: error %d while reading VID header from PEB %d\n", "wear_leveling_worker",
           err, e1->pnum);
    goto out_error;
  } else {
  }
  tmp___21 = __fswab32(vid_hdr->vol_id);
  vol_id = (int )tmp___21;
  tmp___22 = __fswab32(vid_hdr->lnum);
  lnum = (int )tmp___22;
  err = ubi_eba_copy_leb(ubi, e1->pnum, e2->pnum, vid_hdr);
  if (err != 0) {
    if (err == 1) {
      protect = 1;
      goto out_not_moved;
    } else {
    }
    if (err == 6) {
      scrubbing = 1;
      goto out_not_moved;
    } else {
    }
    if ((err == 5 || err == 4) || err == 3) {
      torture = 1;
      goto out_not_moved;
    } else {
    }
    if (err == 2) {
      if (ubi->erroneous_peb_count > ubi->max_erroneous) {
        printk("\vUBI error: %s: too many erroneous eraseblocks (%d)\n", "wear_leveling_worker",
               ubi->erroneous_peb_count);
        goto out_error;
      } else {
      }
      erroneous = 1;
      goto out_not_moved;
    } else {
    }
    if (err < 0) {
      goto out_error;
    } else {
    }
    tmp___23 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker", 1258,
           tmp___23->pid);
    dump_stack();
  } else {
  }
  if (scrubbing != 0) {
    printk("\rUBI: scrubbed PEB %d (LEB %d:%d), data moved to PEB %d\n", e1->pnum,
           vol_id, lnum, e2->pnum);
  } else {
  }
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  spin_lock(& ubi->wl_lock);
  if (ubi->move_to_put == 0) {
    wl_tree_add(e2, & ubi->used);
    e2 = (struct ubi_wl_entry *)0;
  } else {
  }
  tmp___24 = (struct ubi_wl_entry *)0;
  ubi->move_to = tmp___24;
  ubi->move_from = tmp___24;
  tmp___25 = 0;
  ubi->wl_scheduled = tmp___25;
  ubi->move_to_put = tmp___25;
  spin_unlock(& ubi->wl_lock);
  err = do_sync_erase___0(ubi, e1, vol_id, lnum, 0);
  if (err != 0) {
    kmem_cache_free(ubi_wl_entry_slab, (void *)e1);
    if ((unsigned long )e2 != (unsigned long )((struct ubi_wl_entry *)0)) {
      kmem_cache_free(ubi_wl_entry_slab, (void *)e2);
    } else {
    }
    goto out_ro;
  } else {
  }
  if ((unsigned long )e2 != (unsigned long )((struct ubi_wl_entry *)0)) {
    descriptor___6.modname = "ubi";
    descriptor___6.function = "wear_leveling_worker";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___6.format = "UBI DBG wl (pid %d): PEB %d (LEB %d:%d) was put meanwhile, erase\n";
    descriptor___6.lineno = 1290U;
    descriptor___6.flags = 0U;
    tmp___27 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___27 != 0L) {
      tmp___26 = get_current();
      __dynamic_pr_debug(& descriptor___6, "UBI DBG wl (pid %d): PEB %d (LEB %d:%d) was put meanwhile, erase\n",
                         tmp___26->pid, e2->pnum, vol_id, lnum);
    } else {
    }
    err = do_sync_erase___0(ubi, e2, vol_id, lnum, 0);
    if (err != 0) {
      kmem_cache_free(ubi_wl_entry_slab, (void *)e2);
      goto out_ro;
    } else {
    }
  } else {
  }
  descriptor___7.modname = "ubi";
  descriptor___7.function = "wear_leveling_worker";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor___7.format = "UBI DBG wl (pid %d): done\n";
  descriptor___7.lineno = 1298U;
  descriptor___7.flags = 0U;
  tmp___29 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___29 != 0L) {
    tmp___28 = get_current();
    __dynamic_pr_debug(& descriptor___7, "UBI DBG wl (pid %d): done\n", tmp___28->pid);
  } else {
  }
  mutex_unlock(& ubi->move_mutex);
  return (0);
  out_not_moved: ;
  if (vol_id != -1) {
    descriptor___8.modname = "ubi";
    descriptor___8.function = "wear_leveling_worker";
    descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___8.format = "UBI DBG wl (pid %d): cancel moving PEB %d (LEB %d:%d) to PEB %d (%d)\n";
    descriptor___8.lineno = 1310U;
    descriptor___8.flags = 0U;
    tmp___31 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    if (tmp___31 != 0L) {
      tmp___30 = get_current();
      __dynamic_pr_debug(& descriptor___8, "UBI DBG wl (pid %d): cancel moving PEB %d (LEB %d:%d) to PEB %d (%d)\n",
                         tmp___30->pid, e1->pnum, vol_id, lnum, e2->pnum, err);
    } else {
    }
  } else {
    descriptor___9.modname = "ubi";
    descriptor___9.function = "wear_leveling_worker";
    descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___9.format = "UBI DBG wl (pid %d): cancel moving PEB %d to PEB %d (%d)\n";
    descriptor___9.lineno = 1313U;
    descriptor___9.flags = 0U;
    tmp___33 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    if (tmp___33 != 0L) {
      tmp___32 = get_current();
      __dynamic_pr_debug(& descriptor___9, "UBI DBG wl (pid %d): cancel moving PEB %d to PEB %d (%d)\n",
                         tmp___32->pid, e1->pnum, e2->pnum, err);
    } else {
    }
  }
  spin_lock(& ubi->wl_lock);
  if (protect != 0) {
    prot_queue_add(ubi, e1);
  } else
  if (erroneous != 0) {
    wl_tree_add(e1, & ubi->erroneous);
    ubi->erroneous_peb_count = ubi->erroneous_peb_count + 1;
  } else
  if (scrubbing != 0) {
    wl_tree_add(e1, & ubi->scrub);
  } else {
    wl_tree_add(e1, & ubi->used);
  }
  tmp___35 = ldv__builtin_expect(ubi->move_to_put != 0, 0L);
  if (tmp___35 != 0L) {
    tmp___34 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker", 1324,
           tmp___34->pid);
    dump_stack();
  } else {
  }
  tmp___36 = (struct ubi_wl_entry *)0;
  ubi->move_to = tmp___36;
  ubi->move_from = tmp___36;
  ubi->wl_scheduled = 0;
  spin_unlock(& ubi->wl_lock);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  err = do_sync_erase___0(ubi, e2, vol_id, lnum, torture);
  if (err != 0) {
    kmem_cache_free(ubi_wl_entry_slab, (void *)e2);
    goto out_ro;
  } else {
  }
  mutex_unlock(& ubi->move_mutex);
  return (0);
  out_error: ;
  if (vol_id != -1) {
    printk("\vUBI error: %s: error %d while moving PEB %d to PEB %d\n", "wear_leveling_worker",
           err, e1->pnum, e2->pnum);
  } else {
    printk("\vUBI error: %s: error %d while moving PEB %d (LEB %d:%d) to PEB %d\n",
           "wear_leveling_worker", err, e1->pnum, vol_id, lnum, e2->pnum);
  }
  spin_lock(& ubi->wl_lock);
  tmp___37 = (struct ubi_wl_entry *)0;
  ubi->move_to = tmp___37;
  ubi->move_from = tmp___37;
  tmp___38 = 0;
  ubi->wl_scheduled = tmp___38;
  ubi->move_to_put = tmp___38;
  spin_unlock(& ubi->wl_lock);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  kmem_cache_free(ubi_wl_entry_slab, (void *)e1);
  kmem_cache_free(ubi_wl_entry_slab, (void *)e2);
  out_ro:
  ubi_ro_mode(ubi);
  mutex_unlock(& ubi->move_mutex);
  tmp___40 = ldv__builtin_expect(err == 0, 0L);
  if (tmp___40 != 0L) {
    tmp___39 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "wear_leveling_worker", 1357,
           tmp___39->pid);
    dump_stack();
  } else {
  }
  return (err < 0 ? err : -5);
  out_cancel:
  ubi->wl_scheduled = 0;
  spin_unlock(& ubi->wl_lock);
  mutex_unlock(& ubi->move_mutex);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vid_hdr);
  return (0);
}
}
static int ensure_wear_leveling(struct ubi_device *ubi , int nested )
{
  int err ;
  struct ubi_wl_entry *e1 ;
  struct ubi_wl_entry *e2 ;
  struct ubi_work *wrk ;
  struct rb_node const *__mptr ;
  struct rb_node *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  {
  err = 0;
  spin_lock(& ubi->wl_lock);
  if (ubi->wl_scheduled != 0) {
    goto out_unlock;
  } else {
  }
  if ((unsigned long )ubi->scrub.rb_node == (unsigned long )((struct rb_node *)0)) {
    if ((unsigned long )ubi->used.rb_node == (unsigned long )((struct rb_node *)0) || (unsigned long )ubi->free.rb_node == (unsigned long )((struct rb_node *)0)) {
      goto out_unlock;
    } else {
    }
    tmp = rb_first((struct rb_root const *)(& ubi->used));
    __mptr = (struct rb_node const *)tmp;
    e1 = (struct ubi_wl_entry *)__mptr;
    e2 = find_wl_entry(ubi, & ubi->free, 8192);
    if (e2->ec - e1->ec <= 4095) {
      goto out_unlock;
    } else {
    }
    descriptor.modname = "ubi";
    descriptor.function = "ensure_wear_leveling";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor.format = "UBI DBG wl (pid %d): schedule wear-leveling\n";
    descriptor.lineno = 1409U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): schedule wear-leveling\n",
                         tmp___0->pid);
    } else {
    }
  } else {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "ensure_wear_leveling";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___0.format = "UBI DBG wl (pid %d): schedule scrubbing\n";
    descriptor___0.lineno = 1411U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): schedule scrubbing\n",
                         tmp___2->pid);
    } else {
    }
  }
  ubi->wl_scheduled = 1;
  spin_unlock(& ubi->wl_lock);
  tmp___4 = kmalloc(48UL, 80U);
  wrk = (struct ubi_work *)tmp___4;
  if ((unsigned long )wrk == (unsigned long )((struct ubi_work *)0)) {
    err = -12;
    goto out_cancel;
  } else {
  }
  wrk->anchor = 0;
  wrk->func = & wear_leveling_worker;
  if (nested != 0) {
    __schedule_ubi_work(ubi, wrk);
  } else {
    schedule_ubi_work(ubi, wrk);
  }
  return (err);
  out_cancel:
  spin_lock(& ubi->wl_lock);
  ubi->wl_scheduled = 0;
  out_unlock:
  spin_unlock(& ubi->wl_lock);
  return (err);
}
}
int ubi_ensure_anchor_pebs(struct ubi_device *ubi )
{
  struct ubi_work *wrk ;
  void *tmp ;
  {
  spin_lock(& ubi->wl_lock);
  if (ubi->wl_scheduled != 0) {
    spin_unlock(& ubi->wl_lock);
    return (0);
  } else {
  }
  ubi->wl_scheduled = 1;
  spin_unlock(& ubi->wl_lock);
  tmp = kmalloc(48UL, 80U);
  wrk = (struct ubi_work *)tmp;
  if ((unsigned long )wrk == (unsigned long )((struct ubi_work *)0)) {
    spin_lock(& ubi->wl_lock);
    ubi->wl_scheduled = 0;
    spin_unlock(& ubi->wl_lock);
    return (-12);
  } else {
  }
  wrk->anchor = 1;
  wrk->func = & wear_leveling_worker;
  schedule_ubi_work(ubi, wrk);
  return (0);
}
}
static int erase_worker(struct ubi_device *ubi , struct ubi_work *wl_wrk , int cancel )
{
  struct ubi_wl_entry *e ;
  int pnum ;
  int vol_id ;
  int lnum ;
  int err ;
  int available_consumed ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  int err1 ;
  {
  e = wl_wrk->e;
  pnum = e->pnum;
  vol_id = wl_wrk->vol_id;
  lnum = wl_wrk->lnum;
  available_consumed = 0;
  if (cancel != 0) {
    descriptor.modname = "ubi";
    descriptor.function = "erase_worker";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor.format = "UBI DBG wl (pid %d): cancel erasure of PEB %d EC %d\n";
    descriptor.lineno = 1491U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): cancel erasure of PEB %d EC %d\n",
                         tmp->pid, pnum, e->ec);
    } else {
    }
    kfree((void const *)wl_wrk);
    kmem_cache_free(ubi_wl_entry_slab, (void *)e);
    return (0);
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "erase_worker";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor___0.format = "UBI DBG wl (pid %d): erase PEB %d EC %d LEB %d:%d\n";
  descriptor___0.lineno = 1498U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): erase PEB %d EC %d LEB %d:%d\n",
                       tmp___1->pid, pnum, e->ec, wl_wrk->vol_id, wl_wrk->lnum);
  } else {
  }
  tmp___4 = ubi_is_fm_block(ubi, e->pnum);
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  if (tmp___5 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "erase_worker", 1500, tmp___3->pid);
    dump_stack();
  } else {
  }
  err = sync_erase(ubi, e, wl_wrk->torture);
  if (err == 0) {
    kfree((void const *)wl_wrk);
    spin_lock(& ubi->wl_lock);
    wl_tree_add(e, & ubi->free);
    ubi->free_count = ubi->free_count + 1;
    spin_unlock(& ubi->wl_lock);
    serve_prot_queue(ubi);
    err = ensure_wear_leveling(ubi, 1);
    return (err);
  } else {
  }
  printk("\vUBI error: %s: failed to erase PEB %d, error %d\n", "erase_worker", pnum,
         err);
  kfree((void const *)wl_wrk);
  if (((err == -4 || err == -12) || err == -11) || err == -16) {
    err1 = schedule_erase(ubi, e, vol_id, lnum, 0);
    if (err1 != 0) {
      err = err1;
      goto out_ro;
    } else {
    }
    return (err);
  } else {
  }
  kmem_cache_free(ubi_wl_entry_slab, (void *)e);
  if (err != -5) {
    goto out_ro;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ubi + 6652UL) == 0U) {
    printk("\vUBI error: %s: bad physical eraseblock %d detected\n", "erase_worker",
           pnum);
    goto out_ro;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if (ubi->beb_rsvd_pebs == 0) {
    if (ubi->avail_pebs == 0) {
      spin_unlock(& ubi->volumes_lock);
      printk("\vUBI error: %s: no reserved/available physical eraseblocks\n", "erase_worker");
      goto out_ro;
    } else {
    }
    ubi->avail_pebs = ubi->avail_pebs + -1;
    available_consumed = 1;
  } else {
  }
  spin_unlock(& ubi->volumes_lock);
  printk("\rUBI: mark PEB %d as bad\n", pnum);
  err = ubi_io_mark_bad((struct ubi_device const *)ubi, pnum);
  if (err != 0) {
    goto out_ro;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  if (ubi->beb_rsvd_pebs > 0) {
    if (available_consumed != 0) {
      ubi->avail_pebs = ubi->avail_pebs + 1;
      available_consumed = 0;
    } else {
    }
    ubi->beb_rsvd_pebs = ubi->beb_rsvd_pebs + -1;
  } else {
  }
  ubi->bad_peb_count = ubi->bad_peb_count + 1;
  ubi->good_peb_count = ubi->good_peb_count + -1;
  ubi_calculate_reserved(ubi);
  if (available_consumed != 0) {
    printk("\fUBI warning: %s: no PEBs in the reserved pool, used an available PEB\n",
           "erase_worker");
  } else
  if (ubi->beb_rsvd_pebs != 0) {
    printk("\rUBI: %d PEBs left in the reserve\n", ubi->beb_rsvd_pebs);
  } else {
    printk("\fUBI warning: %s: last PEB from the reserve was used\n", "erase_worker");
  }
  spin_unlock(& ubi->volumes_lock);
  return (err);
  out_ro: ;
  if (available_consumed != 0) {
    spin_lock(& ubi->volumes_lock);
    ubi->avail_pebs = ubi->avail_pebs + 1;
    spin_unlock(& ubi->volumes_lock);
  } else {
  }
  ubi_ro_mode(ubi);
  return (err);
}
}
int ubi_wl_put_peb(struct ubi_device *ubi , int vol_id , int lnum , int pnum , int torture )
{
  int err ;
  struct ubi_wl_entry *e ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  struct task_struct *tmp___11 ;
  long tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_wl_put_peb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): PEB %d\n";
  descriptor.lineno = 1626U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): PEB %d\n", tmp->pid, pnum);
  } else {
  }
  tmp___2 = ldv__builtin_expect(pnum < 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_peb", 1627, tmp___1->pid);
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect(ubi->peb_count <= pnum, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_peb", 1628, tmp___3->pid);
    dump_stack();
  } else {
  }
  retry:
  spin_lock(& ubi->wl_lock);
  e = *(ubi->lookuptbl + (unsigned long )pnum);
  if ((unsigned long )ubi->move_from == (unsigned long )e) {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "ubi_wl_put_peb";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___0.format = "UBI DBG wl (pid %d): PEB %d is being moved, wait\n";
    descriptor___0.lineno = 1639U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): PEB %d is being moved, wait\n",
                         tmp___5->pid, pnum);
    } else {
    }
    spin_unlock(& ubi->wl_lock);
    mutex_lock_nested(& ubi->move_mutex, 0U);
    mutex_unlock(& ubi->move_mutex);
    goto retry;
  } else
  if ((unsigned long )ubi->move_to == (unsigned long )e) {
    descriptor___1.modname = "ubi";
    descriptor___1.function = "ubi_wl_put_peb";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___1.format = "UBI DBG wl (pid %d): PEB %d is the target of data moving\n";
    descriptor___1.lineno = 1656U;
    descriptor___1.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG wl (pid %d): PEB %d is the target of data moving\n",
                         tmp___7->pid, pnum);
    } else {
    }
    tmp___10 = ldv__builtin_expect(ubi->move_to_put != 0, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_peb", 1657,
             tmp___9->pid);
      dump_stack();
    } else {
    }
    ubi->move_to_put = 1;
    spin_unlock(& ubi->wl_lock);
    return (0);
  } else {
    tmp___15 = in_wl_tree(e, & ubi->used);
    if (tmp___15 != 0) {
      self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->used);
      rb_erase(& e->u.rb, & ubi->used);
    } else {
      tmp___14 = in_wl_tree(e, & ubi->scrub);
      if (tmp___14 != 0) {
        self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->scrub);
        rb_erase(& e->u.rb, & ubi->scrub);
      } else {
        tmp___13 = in_wl_tree(e, & ubi->erroneous);
        if (tmp___13 != 0) {
          self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->erroneous);
          rb_erase(& e->u.rb, & ubi->erroneous);
          ubi->erroneous_peb_count = ubi->erroneous_peb_count + -1;
          tmp___12 = ldv__builtin_expect(ubi->erroneous_peb_count < 0, 0L);
          if (tmp___12 != 0L) {
            tmp___11 = get_current();
            printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_put_peb",
                   1672, tmp___11->pid);
            dump_stack();
          } else {
          }
          torture = 1;
        } else {
          err = prot_queue_del(ubi, e->pnum);
          if (err != 0) {
            printk("\vUBI error: %s: PEB %d not found\n", "ubi_wl_put_peb", pnum);
            ubi_ro_mode(ubi);
            spin_unlock(& ubi->wl_lock);
            return (err);
          } else {
          }
        }
      }
    }
  }
  spin_unlock(& ubi->wl_lock);
  err = schedule_erase(ubi, e, vol_id, lnum, torture);
  if (err != 0) {
    spin_lock(& ubi->wl_lock);
    wl_tree_add(e, & ubi->used);
    spin_unlock(& ubi->wl_lock);
  } else {
  }
  return (err);
}
}
int ubi_wl_scrub_peb(struct ubi_device *ubi , int pnum )
{
  struct ubi_wl_entry *e ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  int err ;
  int tmp___3 ;
  int tmp___4 ;
  {
  printk("\rUBI: schedule PEB %d for scrubbing\n", pnum);
  retry:
  spin_lock(& ubi->wl_lock);
  e = *(ubi->lookuptbl + (unsigned long )pnum);
  if ((unsigned long )ubi->move_from == (unsigned long )e) {
    spin_unlock(& ubi->wl_lock);
    return (0);
  } else {
    tmp = in_wl_tree(e, & ubi->scrub);
    if (tmp != 0) {
      spin_unlock(& ubi->wl_lock);
      return (0);
    } else {
      tmp___0 = in_wl_tree(e, & ubi->erroneous);
      if (tmp___0 != 0) {
        spin_unlock(& ubi->wl_lock);
        return (0);
      } else {
      }
    }
  }
  if ((unsigned long )ubi->move_to == (unsigned long )e) {
    spin_unlock(& ubi->wl_lock);
    descriptor.modname = "ubi";
    descriptor.function = "ubi_wl_scrub_peb";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor.format = "UBI DBG wl (pid %d): the PEB %d is not in proper tree, retry\n";
    descriptor.lineno = 1730U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): the PEB %d is not in proper tree, retry\n",
                         tmp___1->pid, pnum);
    } else {
    }
    yield();
    goto retry;
  } else {
  }
  tmp___3 = in_wl_tree(e, & ubi->used);
  if (tmp___3 != 0) {
    self_check_in_wl_tree((struct ubi_device const *)ubi, e, & ubi->used);
    rb_erase(& e->u.rb, & ubi->used);
  } else {
    err = prot_queue_del(ubi, e->pnum);
    if (err != 0) {
      printk("\vUBI error: %s: PEB %d not found\n", "ubi_wl_scrub_peb", pnum);
      ubi_ro_mode(ubi);
      spin_unlock(& ubi->wl_lock);
      return (err);
    } else {
    }
  }
  wl_tree_add(e, & ubi->scrub);
  spin_unlock(& ubi->wl_lock);
  tmp___4 = ensure_wear_leveling(ubi, 0);
  return (tmp___4);
}
}
int ubi_wl_flush(struct ubi_device *ubi , int vol_id , int lnum )
{
  int err ;
  int found ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct ubi_work *wrk ;
  struct list_head const *__mptr ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct list_head const *__mptr___0 ;
  {
  err = 0;
  found = 1;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_wl_flush";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): flush pending work for LEB %d:%d (%d pending works)\n";
  descriptor.lineno = 1782U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): flush pending work for LEB %d:%d (%d pending works)\n",
                       tmp->pid, vol_id, lnum, ubi->works_count);
  } else {
  }
  goto ldv_26675;
  ldv_26674:
  found = 0;
  down_read(& ubi->work_sem);
  spin_lock(& ubi->wl_lock);
  __mptr = (struct list_head const *)ubi->works.next;
  wrk = (struct ubi_work *)__mptr;
  goto ldv_26673;
  ldv_26672: ;
  if ((vol_id == -1 || wrk->vol_id == vol_id) && (lnum == -1 || wrk->lnum == lnum)) {
    list_del(& wrk->list);
    ubi->works_count = ubi->works_count + -1;
    tmp___2 = ldv__builtin_expect(ubi->works_count < 0, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_flush", 1795, tmp___1->pid);
      dump_stack();
    } else {
    }
    spin_unlock(& ubi->wl_lock);
    err = (*(wrk->func))(ubi, wrk, 0);
    if (err != 0) {
      up_read(& ubi->work_sem);
      return (err);
    } else {
    }
    spin_lock(& ubi->wl_lock);
    found = 1;
    goto ldv_26671;
  } else {
  }
  __mptr___0 = (struct list_head const *)wrk->list.next;
  wrk = (struct ubi_work *)__mptr___0;
  ldv_26673: ;
  if ((unsigned long )(& wrk->list) != (unsigned long )(& ubi->works)) {
    goto ldv_26672;
  } else {
  }
  ldv_26671:
  spin_unlock(& ubi->wl_lock);
  up_read(& ubi->work_sem);
  ldv_26675: ;
  if (found != 0) {
    goto ldv_26674;
  } else {
  }
  down_write(& ubi->work_sem);
  up_write(& ubi->work_sem);
  return (err);
}
}
static void tree_destroy(struct rb_root *root )
{
  struct rb_node *rb ;
  struct ubi_wl_entry *e ;
  struct rb_node const *__mptr ;
  {
  rb = root->rb_node;
  goto ldv_26685;
  ldv_26684: ;
  if ((unsigned long )rb->rb_left != (unsigned long )((struct rb_node *)0)) {
    rb = rb->rb_left;
  } else
  if ((unsigned long )rb->rb_right != (unsigned long )((struct rb_node *)0)) {
    rb = rb->rb_right;
  } else {
    __mptr = (struct rb_node const *)rb;
    e = (struct ubi_wl_entry *)__mptr;
    rb = (struct rb_node *)(rb->__rb_parent_color & 0xfffffffffffffffcUL);
    if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
      if ((unsigned long )rb->rb_left == (unsigned long )(& e->u.rb)) {
        rb->rb_left = (struct rb_node *)0;
      } else {
        rb->rb_right = (struct rb_node *)0;
      }
    } else {
    }
    kmem_cache_free(ubi_wl_entry_slab, (void *)e);
  }
  ldv_26685: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26684;
  } else {
  }
  return;
}
}
int ubi_thread(void *u )
{
  int failures ;
  struct ubi_device *ubi ;
  struct task_struct *tmp ;
  pid_t tmp___0 ;
  int err ;
  bool tmp___1 ;
  bool tmp___2 ;
  long volatile __ret ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct task_struct *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  {
  failures = 0;
  ubi = (struct ubi_device *)u;
  tmp = get_current();
  tmp___0 = task_pid_nr(tmp);
  printk("\rUBI: background thread \"%s\" started, PID %d\n", (char *)(& ubi->bgt_name),
         tmp___0);
  set_freezable();
  ldv_26705:
  tmp___1 = kthread_should_stop();
  if ((int )tmp___1) {
    goto ldv_26693;
  } else {
  }
  tmp___2 = try_to_freeze();
  if ((int )tmp___2) {
    goto ldv_26694;
  } else {
  }
  spin_lock(& ubi->wl_lock);
  tmp___7 = list_empty((struct list_head const *)(& ubi->works));
  if ((tmp___7 != 0 || ubi->ro_mode != 0) || ubi->thread_enabled == 0) {
    goto _L;
  } else {
    tmp___8 = ubi_dbg_is_bgt_disabled((struct ubi_device const *)ubi);
    if (tmp___8 != 0) {
      _L:
      __ret = 1L;
      switch (8UL) {
      case 1UL:
      tmp___3 = get_current();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___3->state): : "memory",
                           "cc");
      goto ldv_26697;
      case 2UL:
      tmp___4 = get_current();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                           "cc");
      goto ldv_26697;
      case 4UL:
      tmp___5 = get_current();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___5->state): : "memory",
                           "cc");
      goto ldv_26697;
      case 8UL:
      tmp___6 = get_current();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___6->state): : "memory",
                           "cc");
      goto ldv_26697;
      default:
      __xchg_wrong_size();
      }
      ldv_26697:
      spin_unlock(& ubi->wl_lock);
      schedule();
      goto ldv_26694;
    } else {
    }
  }
  spin_unlock(& ubi->wl_lock);
  err = do_work(ubi);
  if (err != 0) {
    printk("\vUBI error: %s: %s: work failed with error code %d\n", "ubi_thread",
           (char *)(& ubi->bgt_name), err);
    tmp___9 = failures;
    failures = failures + 1;
    if (tmp___9 > 32) {
      printk("\rUBI: %s: %d consecutive failures\n", (char *)(& ubi->bgt_name), 32);
      ubi_ro_mode(ubi);
      ubi->thread_enabled = 0;
      goto ldv_26694;
    } else {
    }
  } else {
    failures = 0;
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                1904, 0);
  _cond_resched();
  ldv_26694: ;
  goto ldv_26705;
  ldv_26693:
  descriptor.modname = "ubi";
  descriptor.function = "ubi_thread";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): background thread \"%s\" is killed\n";
  descriptor.lineno = 1907U;
  descriptor.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): background thread \"%s\" is killed\n",
                       tmp___10->pid, (char *)(& ubi->bgt_name));
  } else {
  }
  return (0);
}
}
static void cancel_pending(struct ubi_device *ubi )
{
  struct ubi_work *wrk ;
  struct list_head const *__mptr ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  goto ldv_26715;
  ldv_26714:
  __mptr = (struct list_head const *)ubi->works.next;
  wrk = (struct ubi_work *)__mptr;
  list_del(& wrk->list);
  (*(wrk->func))(ubi, wrk, 1);
  ubi->works_count = ubi->works_count + -1;
  tmp___0 = ldv__builtin_expect(ubi->works_count < 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "cancel_pending", 1924, tmp->pid);
    dump_stack();
  } else {
  }
  ldv_26715:
  tmp___1 = list_empty((struct list_head const *)(& ubi->works));
  if (tmp___1 == 0) {
    goto ldv_26714;
  } else {
  }
  return;
}
}
int ubi_wl_init(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int err ;
  int i ;
  int reserved_pebs ;
  int found_pebs ;
  struct rb_node *rb1 ;
  struct rb_node *rb2 ;
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *tmp ;
  struct ubi_wl_entry *e ;
  struct rb_root tmp___0 ;
  struct rb_root tmp___1 ;
  struct rb_root tmp___2 ;
  struct rb_root __constr_expr_0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  void *tmp___3 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___4 ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  void *tmp___9 ;
  struct task_struct *tmp___10 ;
  long tmp___11 ;
  struct task_struct *tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  struct list_head const *__mptr___3 ;
  struct rb_node const *__mptr___4 ;
  struct rb_node const *__mptr___5 ;
  void *tmp___15 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___18 ;
  long tmp___19 ;
  struct rb_node const *__mptr___6 ;
  struct rb_node const *__mptr___7 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___20 ;
  long tmp___21 ;
  struct task_struct *tmp___22 ;
  long tmp___23 ;
  struct task_struct *tmp___24 ;
  long tmp___25 ;
  {
  found_pebs = 0;
  __constr_expr_0.rb_node = (struct rb_node *)0;
  tmp___2 = __constr_expr_0;
  ubi->scrub = tmp___2;
  tmp___1 = tmp___2;
  ubi->free = tmp___1;
  tmp___0 = tmp___1;
  ubi->erroneous = tmp___0;
  ubi->used = tmp___0;
  spinlock_check(& ubi->wl_lock);
  __raw_spin_lock_init(& ubi->wl_lock.ldv_6347.rlock, "&(&ubi->wl_lock)->rlock", & __key);
  __mutex_init(& ubi->move_mutex, "&ubi->move_mutex", & __key___0);
  __init_rwsem(& ubi->work_sem, "&ubi->work_sem", & __key___1);
  ubi->max_ec = ai->max_ec;
  INIT_LIST_HEAD(& ubi->works);
  __init_work(& ubi->fm_work, 0);
  __constr_expr_1.counter = 137438953408L;
  ubi->fm_work.data = __constr_expr_1;
  lockdep_init_map(& ubi->fm_work.lockdep_map, "(&ubi->fm_work)", & __key___2, 0);
  INIT_LIST_HEAD(& ubi->fm_work.entry);
  ubi->fm_work.func = & update_fastmap_work_fn;
  sprintf((char *)(& ubi->bgt_name), "ubi_bgt%dd", ubi->ubi_num);
  err = -12;
  tmp___3 = kzalloc((unsigned long )ubi->peb_count * 8UL, 208U);
  ubi->lookuptbl = (struct ubi_wl_entry **)tmp___3;
  if ((unsigned long )ubi->lookuptbl == (unsigned long )((struct ubi_wl_entry **)0)) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_26738;
  ldv_26737:
  INIT_LIST_HEAD((struct list_head *)(& ubi->pq) + (unsigned long )i);
  i = i + 1;
  ldv_26738: ;
  if (i <= 9) {
    goto ldv_26737;
  } else {
  }
  ubi->pq_head = 0;
  __mptr = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  __mptr___0 = (struct list_head const *)aeb->u.list.next;
  tmp = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  goto ldv_26750;
  ldv_26749:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                1966, 0);
  _cond_resched();
  tmp___4 = ldv_kmem_cache_alloc_213(ubi_wl_entry_slab, 208U);
  e = (struct ubi_wl_entry *)tmp___4;
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto out_free;
  } else {
  }
  e->pnum = aeb->pnum;
  e->ec = aeb->ec;
  tmp___6 = ubi_is_fm_block(ubi, e->pnum);
  tmp___7 = ldv__builtin_expect(tmp___6 != 0, 0L);
  if (tmp___7 != 0L) {
    tmp___5 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_init", 1974, tmp___5->pid);
    dump_stack();
  } else {
  }
  *(ubi->lookuptbl + (unsigned long )e->pnum) = e;
  tmp___8 = schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0);
  if (tmp___8 != 0) {
    kmem_cache_free(ubi_wl_entry_slab, (void *)e);
    goto out_free;
  } else {
  }
  found_pebs = found_pebs + 1;
  aeb = tmp;
  __mptr___1 = (struct list_head const *)tmp->u.list.next;
  tmp = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  ldv_26750: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26749;
  } else {
  }
  ubi->free_count = 0;
  __mptr___2 = (struct list_head const *)ai->free.next;
  aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  goto ldv_26758;
  ldv_26757:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                1986, 0);
  _cond_resched();
  tmp___9 = ldv_kmem_cache_alloc_214(ubi_wl_entry_slab, 208U);
  e = (struct ubi_wl_entry *)tmp___9;
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto out_free;
  } else {
  }
  e->pnum = aeb->pnum;
  e->ec = aeb->ec;
  tmp___11 = ldv__builtin_expect(e->ec < 0, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_init", 1994, tmp___10->pid);
    dump_stack();
  } else {
  }
  tmp___13 = ubi_is_fm_block(ubi, e->pnum);
  tmp___14 = ldv__builtin_expect(tmp___13 != 0, 0L);
  if (tmp___14 != 0L) {
    tmp___12 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_init", 1995, tmp___12->pid);
    dump_stack();
  } else {
  }
  wl_tree_add(e, & ubi->free);
  ubi->free_count = ubi->free_count + 1;
  *(ubi->lookuptbl + (unsigned long )e->pnum) = e;
  found_pebs = found_pebs + 1;
  __mptr___3 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___3 + 0xffffffffffffffe0UL;
  ldv_26758: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->free)) {
    goto ldv_26757;
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___4 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___4 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26775;
  ldv_26774:
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___5 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26772;
  ldv_26771:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared",
                2007, 0);
  _cond_resched();
  tmp___15 = ldv_kmem_cache_alloc_215(ubi_wl_entry_slab, 208U);
  e = (struct ubi_wl_entry *)tmp___15;
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto out_free;
  } else {
  }
  e->pnum = aeb->pnum;
  e->ec = aeb->ec;
  *(ubi->lookuptbl + (unsigned long )e->pnum) = e;
  if ((unsigned int )*((unsigned char *)aeb + 16UL) == 0U) {
    descriptor.modname = "ubi";
    descriptor.function = "ubi_wl_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor.format = "UBI DBG wl (pid %d): add PEB %d EC %d to the used tree\n";
    descriptor.lineno = 2019U;
    descriptor.flags = 0U;
    tmp___17 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): add PEB %d EC %d to the used tree\n",
                         tmp___16->pid, e->pnum, e->ec);
    } else {
    }
    wl_tree_add(e, & ubi->used);
  } else {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "ubi_wl_init";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
    descriptor___0.format = "UBI DBG wl (pid %d): add PEB %d EC %d to the scrub tree\n";
    descriptor___0.lineno = 2023U;
    descriptor___0.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      tmp___18 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG wl (pid %d): add PEB %d EC %d to the scrub tree\n",
                         tmp___18->pid, e->pnum, e->ec);
    } else {
    }
    wl_tree_add(e, & ubi->scrub);
  }
  found_pebs = found_pebs + 1;
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___6 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___6 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26772: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26771;
  } else {
  }
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___7 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___7 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26775: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26774;
  } else {
  }
  descriptor___1.modname = "ubi";
  descriptor___1.function = "ubi_wl_init";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor___1.format = "UBI DBG wl (pid %d): found %i PEBs\n";
  descriptor___1.lineno = 2031U;
  descriptor___1.flags = 0U;
  tmp___21 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___21 != 0L) {
    tmp___20 = get_current();
    __dynamic_pr_debug(& descriptor___1, "UBI DBG wl (pid %d): found %i PEBs\n", tmp___20->pid,
                       found_pebs);
  } else {
  }
  if ((unsigned long )ubi->fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
    tmp___23 = ldv__builtin_expect(ubi->good_peb_count != (ubi->fm)->used_blocks + found_pebs,
                                0L);
    if (tmp___23 != 0L) {
      tmp___22 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_init", 2035, tmp___22->pid);
      dump_stack();
    } else {
    }
  } else {
    tmp___25 = ldv__builtin_expect(ubi->good_peb_count != found_pebs, 0L);
    if (tmp___25 != 0L) {
      tmp___24 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_wl_init", 2037, tmp___24->pid);
      dump_stack();
    } else {
    }
  }
  reserved_pebs = 1;
  reserved_pebs = (int )((unsigned int )(ubi->fm_size / (size_t )ubi->leb_size) * 2U + (unsigned int )reserved_pebs);
  if (ubi->avail_pebs < reserved_pebs) {
    printk("\vUBI error: %s: no enough physical eraseblocks (%d, need %d)\n", "ubi_wl_init",
           ubi->avail_pebs, reserved_pebs);
    if (ubi->corr_peb_count != 0) {
      printk("\vUBI error: %s: %d PEBs are corrupted and not used\n", "ubi_wl_init",
             ubi->corr_peb_count);
    } else {
    }
    goto out_free;
  } else {
  }
  ubi->avail_pebs = ubi->avail_pebs - reserved_pebs;
  ubi->rsvd_pebs = ubi->rsvd_pebs + reserved_pebs;
  err = ensure_wear_leveling(ubi, 0);
  if (err != 0) {
    goto out_free;
  } else {
  }
  return (0);
  out_free:
  cancel_pending(ubi);
  tree_destroy(& ubi->used);
  tree_destroy(& ubi->free);
  tree_destroy(& ubi->scrub);
  kfree((void const *)ubi->lookuptbl);
  return (err);
}
}
static void protection_queue_destroy(struct ubi_device *ubi )
{
  int i ;
  struct ubi_wl_entry *e ;
  struct ubi_wl_entry *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  i = 0;
  goto ldv_26794;
  ldv_26793:
  __mptr = (struct list_head const *)((struct list_head *)(& ubi->pq) + (unsigned long )i)->next;
  e = (struct ubi_wl_entry *)__mptr;
  __mptr___0 = (struct list_head const *)e->u.list.next;
  tmp = (struct ubi_wl_entry *)__mptr___0;
  goto ldv_26791;
  ldv_26790:
  list_del(& e->u.list);
  kmem_cache_free(ubi_wl_entry_slab, (void *)e);
  e = tmp;
  __mptr___1 = (struct list_head const *)tmp->u.list.next;
  tmp = (struct ubi_wl_entry *)__mptr___1;
  ldv_26791: ;
  if ((unsigned long )(& e->u.list) != (unsigned long )((struct list_head *)(& ubi->pq) + (unsigned long )i)) {
    goto ldv_26790;
  } else {
  }
  i = i + 1;
  ldv_26794: ;
  if (i <= 9) {
    goto ldv_26793;
  } else {
  }
  return;
}
}
void ubi_wl_close(struct ubi_device *ubi )
{
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_wl_close";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/wl.o.c.prepared";
  descriptor.format = "UBI DBG wl (pid %d): close the WL sub-system\n";
  descriptor.lineno = 2095U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG wl (pid %d): close the WL sub-system\n",
                       tmp->pid);
  } else {
  }
  cancel_pending(ubi);
  protection_queue_destroy(ubi);
  tree_destroy(& ubi->used);
  tree_destroy(& ubi->erroneous);
  tree_destroy(& ubi->free);
  tree_destroy(& ubi->scrub);
  kfree((void const *)ubi->lookuptbl);
  return;
}
}
static int self_check_ec(struct ubi_device *ubi , int pnum , int ec )
{
  int err ;
  long long read_ec ;
  struct ubi_ec_hdr *ec_hdr ;
  int tmp ;
  void *tmp___0 ;
  __u64 tmp___1 ;
  {
  tmp = ubi_dbg_chk_gen((struct ubi_device const *)ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = kzalloc((size_t )ubi->ec_hdr_alsize, 80U);
  ec_hdr = (struct ubi_ec_hdr *)tmp___0;
  if ((unsigned long )ec_hdr == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  err = ubi_io_read_ec_hdr(ubi, pnum, ec_hdr, 0);
  if (err != 0 && err != 5) {
    err = 0;
    goto out_free;
  } else {
  }
  tmp___1 = __fswab64(ec_hdr->ec);
  read_ec = (long long )tmp___1;
  if ((long long )ec != read_ec && read_ec - (long long )ec > 1LL) {
    printk("\vUBI error: %s: self-check failed for PEB %d\n", "self_check_ec", pnum);
    printk("\vUBI error: %s: read EC is %lld, should be %d\n", "self_check_ec", read_ec,
           ec);
    dump_stack();
    err = 1;
  } else {
    err = 0;
  }
  out_free:
  kfree((void const *)ec_hdr);
  return (err);
}
}
static int self_check_in_wl_tree(struct ubi_device const *ubi , struct ubi_wl_entry *e ,
                                 struct rb_root *root )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = ubi_dbg_chk_gen(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = in_wl_tree(e, root);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  printk("\vUBI error: %s: self-check failed for PEB %d, EC %d, RB-tree %p \n", "self_check_in_wl_tree",
         e->pnum, e->ec, root);
  dump_stack();
  return (-22);
}
}
static int self_check_in_pq(struct ubi_device const *ubi , struct ubi_wl_entry *e )
{
  struct ubi_wl_entry *p ;
  int i ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = ubi_dbg_chk_gen(ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_26831;
  ldv_26830:
  __mptr = (struct list_head const *)((struct list_head const *)(& ubi->pq) + (unsigned long )i)->next;
  p = (struct ubi_wl_entry *)__mptr;
  goto ldv_26828;
  ldv_26827: ;
  if ((unsigned long )p == (unsigned long )e) {
    return (0);
  } else {
  }
  __mptr___0 = (struct list_head const *)p->u.list.next;
  p = (struct ubi_wl_entry *)__mptr___0;
  ldv_26828: ;
  if ((unsigned long )((struct list_head const *)(& p->u.list)) != (unsigned long )((struct list_head const *)(& ubi->pq) + (unsigned long )i)) {
    goto ldv_26827;
  } else {
  }
  i = i + 1;
  ldv_26831: ;
  if (i <= 9) {
    goto ldv_26830;
  } else {
  }
  printk("\vUBI error: %s: self-check failed for PEB %d, EC %d, Protect queue\n",
         "self_check_in_pq", e->pnum, e->ec);
  dump_stack();
  return (-22);
}
}
void *ldv_kmem_cache_alloc_210(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_213(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_214(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_215(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_235(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_238(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_239(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_240(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void get_random_bytes(void * , int ) ;
void ubi_dump_aeb(struct ubi_ainf_peb const *aeb , int type ) ;
int ubi_compare_lebs(struct ubi_device *ubi , struct ubi_ainf_peb const *aeb , int pnum ,
                     struct ubi_vid_hdr const *vid_hdr ) ;
int ubi_scan_fastmap(struct ubi_device *ubi , struct ubi_attach_info *ai , int fm_anchor ) ;
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr___3(struct ubi_device const *ubi ,
                                                           gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
static int self_check_ai(struct ubi_device *ubi , struct ubi_attach_info *ai ) ;
static struct ubi_ec_hdr *ech ;
static struct ubi_vid_hdr *vidh ;
static int add_to_list(struct ubi_attach_info *ai , int pnum , int vol_id , int lnum ,
                       int ec , int to_head , struct list_head *list )
{
  struct ubi_ainf_peb *aeb ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  {
  if ((unsigned long )(& ai->free) == (unsigned long )list) {
    descriptor.modname = "ubi";
    descriptor.function = "add_to_list";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor.format = "UBI DBG bld (pid %d): add to free: PEB %d, EC %d\n";
    descriptor.lineno = 189U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): add to free: PEB %d, EC %d\n",
                         tmp->pid, pnum, ec);
    } else {
    }
  } else
  if ((unsigned long )(& ai->erase) == (unsigned long )list) {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "add_to_list";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___0.format = "UBI DBG bld (pid %d): add to erase: PEB %d, EC %d\n";
    descriptor___0.lineno = 191U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): add to erase: PEB %d, EC %d\n",
                         tmp___1->pid, pnum, ec);
    } else {
    }
  } else
  if ((unsigned long )(& ai->alien) == (unsigned long )list) {
    descriptor___1.modname = "ubi";
    descriptor___1.function = "add_to_list";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___1.format = "UBI DBG bld (pid %d): add to alien: PEB %d, EC %d\n";
    descriptor___1.lineno = 193U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): add to alien: PEB %d, EC %d\n",
                         tmp___3->pid, pnum, ec);
    } else {
    }
    ai->alien_peb_count = ai->alien_peb_count + 1;
  } else {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared"),
                         "i" (196), "i" (12UL));
    ldv_26173: ;
    goto ldv_26173;
  }
  tmp___5 = ldv_kmem_cache_alloc_238(ai->aeb_slab_cache, 208U);
  aeb = (struct ubi_ainf_peb *)tmp___5;
  if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    return (-12);
  } else {
  }
  aeb->pnum = pnum;
  aeb->vol_id = vol_id;
  aeb->lnum = lnum;
  aeb->ec = ec;
  if (to_head != 0) {
    list_add(& aeb->u.list, list);
  } else {
    list_add_tail(& aeb->u.list, list);
  }
  return (0);
}
}
static int add_corrupted(struct ubi_attach_info *ai , int pnum , int ec )
{
  struct ubi_ainf_peb *aeb ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "add_corrupted";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): add to corrupted: PEB %d, EC %d\n";
  descriptor.lineno = 228U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): add to corrupted: PEB %d, EC %d\n",
                       tmp->pid, pnum, ec);
  } else {
  }
  tmp___1 = ldv_kmem_cache_alloc_239(ai->aeb_slab_cache, 208U);
  aeb = (struct ubi_ainf_peb *)tmp___1;
  if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    return (-12);
  } else {
  }
  ai->corr_peb_count = ai->corr_peb_count + 1;
  aeb->pnum = pnum;
  aeb->ec = ec;
  list_add(& aeb->u.list, & ai->corr);
  return (0);
}
}
static int validate_vid_hdr___0(struct ubi_vid_hdr const *vid_hdr , struct ubi_ainf_volume const *av ,
                                int pnum )
{
  int vol_type ;
  int vol_id ;
  __u32 tmp ;
  int used_ebs ;
  __u32 tmp___0 ;
  int data_pad ;
  __u32 tmp___1 ;
  int av_vol_type ;
  {
  vol_type = (int )vid_hdr->vol_type;
  tmp = __fswab32(vid_hdr->vol_id);
  vol_id = (int )tmp;
  tmp___0 = __fswab32(vid_hdr->used_ebs);
  used_ebs = (int )tmp___0;
  tmp___1 = __fswab32(vid_hdr->data_pad);
  data_pad = (int )tmp___1;
  if ((int )av->leb_count != 0) {
    if ((int )av->vol_id != vol_id) {
      printk("\vUBI error: %s: inconsistent vol_id\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if ((int )av->vol_type == 4) {
      av_vol_type = 2;
    } else {
      av_vol_type = 1;
    }
    if (vol_type != av_vol_type) {
      printk("\vUBI error: %s: inconsistent vol_type\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if ((int )av->used_ebs != used_ebs) {
      printk("\vUBI error: %s: inconsistent used_ebs\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
    if ((int )av->data_pad != data_pad) {
      printk("\vUBI error: %s: inconsistent data_pad\n", "validate_vid_hdr");
      goto bad;
    } else {
    }
  } else {
  }
  return (0);
  bad:
  printk("\vUBI error: %s: inconsistent VID header at PEB %d\n", "validate_vid_hdr",
         pnum);
  ubi_dump_vid_hdr(vid_hdr);
  ubi_dump_av(av);
  return (-22);
}
}
static struct ubi_ainf_volume *add_volume(struct ubi_attach_info *ai , int vol_id ,
                                          int pnum , struct ubi_vid_hdr const *vid_hdr )
{
  struct ubi_ainf_volume *av ;
  struct rb_node **p ;
  struct rb_node *parent ;
  struct task_struct *tmp ;
  __u32 tmp___0 ;
  long tmp___1 ;
  struct rb_node const *__mptr ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  struct rb_root __constr_expr_0 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  {
  p = & ai->volumes.rb_node;
  parent = (struct rb_node *)0;
  tmp___0 = __fswab32(vid_hdr->vol_id);
  tmp___1 = ldv__builtin_expect((unsigned int )vol_id != tmp___0, 0L);
  if (tmp___1 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "add_volume", 327, tmp->pid);
    dump_stack();
  } else {
  }
  goto ldv_26207;
  ldv_26206:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  if (av->vol_id == vol_id) {
    return (av);
  } else {
  }
  if (av->vol_id < vol_id) {
    p = & (*p)->rb_left;
  } else {
    p = & (*p)->rb_right;
  }
  ldv_26207: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26206;
  } else {
  }
  tmp___2 = kmalloc(64UL, 208U);
  av = (struct ubi_ainf_volume *)tmp___2;
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    tmp___3 = ERR_PTR(-12L);
    return ((struct ubi_ainf_volume *)tmp___3);
  } else {
  }
  tmp___4 = 0;
  av->leb_count = tmp___4;
  av->highest_lnum = tmp___4;
  av->vol_id = vol_id;
  __constr_expr_0.rb_node = (struct rb_node *)0;
  av->root = __constr_expr_0;
  tmp___5 = __fswab32(vid_hdr->used_ebs);
  av->used_ebs = (int )tmp___5;
  tmp___6 = __fswab32(vid_hdr->data_pad);
  av->data_pad = (int )tmp___6;
  av->compat = (int )vid_hdr->compat;
  av->vol_type = (unsigned int )((unsigned char )vid_hdr->vol_type) == 1U ? 3 : 4;
  if (ai->highest_vol_id < vol_id) {
    ai->highest_vol_id = vol_id;
  } else {
  }
  rb_link_node(& av->rb, parent, p);
  rb_insert_color(& av->rb, & ai->volumes);
  ai->vols_found = ai->vols_found + 1;
  descriptor.modname = "ubi";
  descriptor.function = "add_volume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): added volume %d\n";
  descriptor.lineno = 362U;
  descriptor.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): added volume %d\n", tmp___7->pid,
                       vol_id);
  } else {
  }
  return (av);
}
}
int ubi_compare_lebs(struct ubi_device *ubi , struct ubi_ainf_peb const *aeb , int pnum ,
                     struct ubi_vid_hdr const *vid_hdr )
{
  int len ;
  int err ;
  int second_is_newer ;
  int bitflips ;
  int corrupted ;
  uint32_t data_crc ;
  uint32_t crc ;
  struct ubi_vid_hdr *vh ;
  unsigned long long sqnum2 ;
  __u64 tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct task_struct *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct task_struct *tmp___13 ;
  long tmp___14 ;
  {
  bitflips = 0;
  corrupted = 0;
  vh = (struct ubi_vid_hdr *)0;
  tmp = __fswab64(vid_hdr->sqnum);
  sqnum2 = tmp;
  if ((unsigned long long )aeb->sqnum == sqnum2) {
    printk("\vUBI error: %s: unsupported on-flash UBI format\n", "ubi_compare_lebs");
    return (-22);
  } else {
  }
  second_is_newer = (unsigned long long )aeb->sqnum < sqnum2;
  if (second_is_newer != 0) {
    if ((unsigned int )((unsigned char )vid_hdr->copy_flag) == 0U) {
      descriptor.modname = "ubi";
      descriptor.function = "ubi_compare_lebs";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
      descriptor.format = "UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is unset\n";
      descriptor.lineno = 423U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = get_current();
        __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is unset\n",
                           tmp___0->pid, pnum);
      } else {
      }
      return (1);
    } else {
    }
  } else {
    if ((unsigned int )*((unsigned char *)aeb + 16UL) == 0U) {
      descriptor___0.modname = "ubi";
      descriptor___0.function = "ubi_compare_lebs";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
      descriptor___0.format = "UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is unset\n";
      descriptor___0.lineno = 430U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = get_current();
        __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is unset\n",
                           tmp___2->pid, pnum);
      } else {
      }
      return (bitflips << 1);
    } else {
    }
    vh = ubi_zalloc_vid_hdr___3((struct ubi_device const *)ubi, 208U);
    if ((unsigned long )vh == (unsigned long )((struct ubi_vid_hdr *)0)) {
      return (-12);
    } else {
    }
    pnum = aeb->pnum;
    err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
    if (err != 0) {
      if (err == 5) {
        bitflips = 1;
      } else {
        printk("\vUBI error: %s: VID of PEB %d header is bad, but it was OK earlier, err %d\n",
               "ubi_compare_lebs", pnum, err);
        if (err > 0) {
          err = -5;
        } else {
        }
        goto out_free_vidh;
      }
    } else {
    }
    vid_hdr = (struct ubi_vid_hdr const *)vh;
  }
  tmp___4 = __fswab32(vid_hdr->data_size);
  len = (int )tmp___4;
  mutex_lock_nested(& ubi->buf_mutex, 0U);
  err = ubi_io_read_data((struct ubi_device const *)ubi, ubi->peb_buf, pnum, 0,
                         len);
  if (err != 0 && err != 5) {
    tmp___5 = mtd_is_eccerr(err);
    if (tmp___5 == 0) {
      goto out_unlock;
    } else {
    }
  } else {
  }
  tmp___6 = __fswab32(vid_hdr->data_crc);
  data_crc = tmp___6;
  crc = crc32_le(4294967295U, (unsigned char const *)ubi->peb_buf, (size_t )len);
  if (crc != data_crc) {
    descriptor___1.modname = "ubi";
    descriptor___1.function = "ubi_compare_lebs";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___1.format = "UBI DBG bld (pid %d): PEB %d CRC error: calculated %#08x, must be %#08x\n";
    descriptor___1.lineno = 469U;
    descriptor___1.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): PEB %d CRC error: calculated %#08x, must be %#08x\n",
                         tmp___7->pid, pnum, crc, data_crc);
    } else {
    }
    corrupted = 1;
    bitflips = 0;
    second_is_newer = second_is_newer == 0;
  } else {
    descriptor___2.modname = "ubi";
    descriptor___2.function = "ubi_compare_lebs";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___2.format = "UBI DBG bld (pid %d): PEB %d CRC is OK\n";
    descriptor___2.lineno = 474U;
    descriptor___2.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = get_current();
      __dynamic_pr_debug(& descriptor___2, "UBI DBG bld (pid %d): PEB %d CRC is OK\n",
                         tmp___9->pid, pnum);
    } else {
    }
    bitflips = err != 0;
  }
  mutex_unlock(& ubi->buf_mutex);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vh);
  if (second_is_newer != 0) {
    descriptor___3.modname = "ubi";
    descriptor___3.function = "ubi_compare_lebs";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___3.format = "UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is set\n";
    descriptor___3.lineno = 482U;
    descriptor___3.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = get_current();
      __dynamic_pr_debug(& descriptor___3, "UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is set\n",
                         tmp___11->pid, pnum);
    } else {
    }
  } else {
    descriptor___4.modname = "ubi";
    descriptor___4.function = "ubi_compare_lebs";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor___4.format = "UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is set\n";
    descriptor___4.lineno = 484U;
    descriptor___4.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      tmp___13 = get_current();
      __dynamic_pr_debug(& descriptor___4, "UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is set\n",
                         tmp___13->pid, pnum);
    } else {
    }
  }
  return (((bitflips << 1) | second_is_newer) | (corrupted << 2));
  out_unlock:
  mutex_unlock(& ubi->buf_mutex);
  out_free_vidh:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vh);
  return (err);
}
}
int ubi_add_to_av(struct ubi_device *ubi , struct ubi_attach_info *ai , int pnum ,
                  int ec , struct ubi_vid_hdr const *vid_hdr , int bitflips )
{
  int err ;
  int vol_id ;
  int lnum ;
  unsigned long long sqnum ;
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_peb *aeb ;
  struct rb_node **p ;
  struct rb_node *parent ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  int cmp_res ;
  struct rb_node const *__mptr ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  __u32 tmp___8 ;
  int tmp___9 ;
  void *tmp___10 ;
  __u32 tmp___11 ;
  {
  parent = (struct rb_node *)0;
  tmp = __fswab32(vid_hdr->vol_id);
  vol_id = (int )tmp;
  tmp___0 = __fswab32(vid_hdr->lnum);
  lnum = (int )tmp___0;
  tmp___1 = __fswab64(vid_hdr->sqnum);
  sqnum = tmp___1;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_add_to_av";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): PEB %d, LEB %d:%d, EC %d, sqnum %llu, bitflips %d\n";
  descriptor.lineno = 525U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): PEB %d, LEB %d:%d, EC %d, sqnum %llu, bitflips %d\n",
                       tmp___2->pid, pnum, vol_id, lnum, ec, sqnum, bitflips);
  } else {
  }
  av = add_volume(ai, vol_id, pnum, vid_hdr);
  tmp___5 = IS_ERR((void const *)av);
  if ((int )tmp___5) {
    tmp___4 = PTR_ERR((void const *)av);
    return ((int )tmp___4);
  } else {
  }
  if (ai->max_sqnum < sqnum) {
    ai->max_sqnum = sqnum;
  } else {
  }
  p = & av->root.rb_node;
  goto ldv_26256;
  ldv_26258:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  if (aeb->lnum != lnum) {
    if (aeb->lnum > lnum) {
      p = & (*p)->rb_left;
    } else {
      p = & (*p)->rb_right;
    }
    goto ldv_26256;
  } else {
  }
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_add_to_av";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor___0.format = "UBI DBG bld (pid %d): this LEB already exists: PEB %d, sqnum %llu, EC %d\n";
  descriptor___0.lineno = 558U;
  descriptor___0.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): this LEB already exists: PEB %d, sqnum %llu, EC %d\n",
                       tmp___6->pid, aeb->pnum, aeb->sqnum, aeb->ec);
  } else {
  }
  if (aeb->sqnum == sqnum && sqnum != 0ULL) {
    printk("\vUBI error: %s: two LEBs with same sequence number %llu\n", "ubi_add_to_av",
           sqnum);
    ubi_dump_aeb((struct ubi_ainf_peb const *)aeb, 0);
    ubi_dump_vid_hdr(vid_hdr);
    return (-22);
  } else {
  }
  cmp_res = ubi_compare_lebs(ubi, (struct ubi_ainf_peb const *)aeb, pnum, vid_hdr);
  if (cmp_res < 0) {
    return (cmp_res);
  } else {
  }
  if (cmp_res & 1) {
    err = validate_vid_hdr___0(vid_hdr, (struct ubi_ainf_volume const *)av, pnum);
    if (err != 0) {
      return (err);
    } else {
    }
    err = add_to_list(ai, aeb->pnum, aeb->vol_id, aeb->lnum, aeb->ec, cmp_res & 4,
                      & ai->erase);
    if (err != 0) {
      return (err);
    } else {
    }
    aeb->ec = ec;
    aeb->pnum = pnum;
    aeb->vol_id = vol_id;
    aeb->lnum = lnum;
    aeb->scrub = (unsigned char )((cmp_res & 2) != 0 || bitflips != 0);
    aeb->copy_flag = (unsigned char )vid_hdr->copy_flag;
    aeb->sqnum = sqnum;
    if (av->highest_lnum == lnum) {
      tmp___8 = __fswab32(vid_hdr->data_size);
      av->last_data_size = (int )tmp___8;
    } else {
    }
    return (0);
  } else {
    tmp___9 = add_to_list(ai, pnum, vol_id, lnum, ec, cmp_res & 4, & ai->erase);
    return (tmp___9);
  }
  ldv_26256: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26258;
  } else {
  }
  err = validate_vid_hdr___0(vid_hdr, (struct ubi_ainf_volume const *)av, pnum);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___10 = ldv_kmem_cache_alloc_240(ai->aeb_slab_cache, 208U);
  aeb = (struct ubi_ainf_peb *)tmp___10;
  if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    return (-12);
  } else {
  }
  aeb->ec = ec;
  aeb->pnum = pnum;
  aeb->vol_id = vol_id;
  aeb->lnum = lnum;
  aeb->scrub = (unsigned char )bitflips;
  aeb->copy_flag = (unsigned char )vid_hdr->copy_flag;
  aeb->sqnum = sqnum;
  if (av->highest_lnum <= lnum) {
    av->highest_lnum = lnum;
    tmp___11 = __fswab32(vid_hdr->data_size);
    av->last_data_size = (int )tmp___11;
  } else {
  }
  av->leb_count = av->leb_count + 1;
  rb_link_node(& aeb->u.rb, parent, p);
  rb_insert_color(& aeb->u.rb, & av->root);
  return (0);
}
}
struct ubi_ainf_volume *ubi_find_av(struct ubi_attach_info const *ai , int vol_id )
{
  struct ubi_ainf_volume *av ;
  struct rb_node *p ;
  struct rb_node const *__mptr ;
  {
  p = ai->volumes.rb_node;
  goto ldv_26269;
  ldv_26268:
  __mptr = (struct rb_node const *)p;
  av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  if (av->vol_id == vol_id) {
    return (av);
  } else {
  }
  if (av->vol_id < vol_id) {
    p = p->rb_left;
  } else {
    p = p->rb_right;
  }
  ldv_26269: ;
  if ((unsigned long )p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26268;
  } else {
  }
  return ((struct ubi_ainf_volume *)0);
}
}
void ubi_remove_av(struct ubi_attach_info *ai , struct ubi_ainf_volume *av )
{
  struct rb_node *rb ;
  struct ubi_ainf_peb *aeb ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct rb_node const *__mptr ;
  {
  descriptor.modname = "ubi";
  descriptor.function = "ubi_remove_av";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): remove attaching information about volume %d\n";
  descriptor.lineno = 698U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): remove attaching information about volume %d\n",
                       tmp->pid, av->vol_id);
  } else {
  }
  goto ldv_26282;
  ldv_26281:
  __mptr = (struct rb_node const *)rb;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  rb_erase(& aeb->u.rb, & av->root);
  list_add_tail(& aeb->u.list, & ai->erase);
  ldv_26282:
  rb = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26281;
  } else {
  }
  rb_erase(& av->rb, & ai->volumes);
  kfree((void const *)av);
  ai->vols_found = ai->vols_found + -1;
  return;
}
}
static int early_erase_peb(struct ubi_device *ubi , struct ubi_attach_info const *ai ,
                           int pnum , int ec )
{
  int err ;
  struct ubi_ec_hdr *ec_hdr ;
  void *tmp ;
  __u64 tmp___0 ;
  {
  if (ec == 2147483647) {
    printk("\vUBI error: %s: erase counter overflow at PEB %d, EC %d\n", "early_erase_peb",
           pnum, ec);
    return (-22);
  } else {
  }
  tmp = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ec_hdr = (struct ubi_ec_hdr *)tmp;
  if ((unsigned long )ec_hdr == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = __fswab64((__u64 )ec);
  ec_hdr->ec = tmp___0;
  err = ubi_io_sync_erase(ubi, pnum, 0);
  if (err < 0) {
    goto out_free;
  } else {
  }
  err = ubi_io_write_ec_hdr(ubi, pnum, ec_hdr);
  out_free:
  kfree((void const *)ec_hdr);
  return (err);
}
}
struct ubi_ainf_peb *ubi_early_get_peb(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int err ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *tmp_aeb ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  struct list_head const *__mptr___2 ;
  void *tmp___4 ;
  {
  err = 0;
  tmp___1 = list_empty((struct list_head const *)(& ai->free));
  if (tmp___1 == 0) {
    __mptr = (struct list_head const *)ai->free.next;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
    list_del(& aeb->u.list);
    descriptor.modname = "ubi";
    descriptor.function = "ubi_early_get_peb";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
    descriptor.format = "UBI DBG bld (pid %d): return free PEB %d, EC %d\n";
    descriptor.lineno = 779U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): return free PEB %d, EC %d\n",
                         tmp->pid, aeb->pnum, aeb->ec);
    } else {
    }
    return (aeb);
  } else {
  }
  __mptr___0 = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  __mptr___1 = (struct list_head const *)aeb->u.list.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  goto ldv_26314;
  ldv_26313: ;
  if (aeb->ec == -1) {
    aeb->ec = ai->mean_ec;
  } else {
  }
  err = early_erase_peb(ubi, (struct ubi_attach_info const *)ai, aeb->pnum, aeb->ec + 1);
  if (err != 0) {
    goto ldv_26311;
  } else {
  }
  aeb->ec = aeb->ec + 1;
  list_del(& aeb->u.list);
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_early_get_peb";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor___0.format = "UBI DBG bld (pid %d): return PEB %d, EC %d\n";
  descriptor___0.lineno = 799U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): return PEB %d, EC %d\n",
                       tmp___2->pid, aeb->pnum, aeb->ec);
  } else {
  }
  return (aeb);
  ldv_26311:
  aeb = tmp_aeb;
  __mptr___2 = (struct list_head const *)tmp_aeb->u.list.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  ldv_26314: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26313;
  } else {
  }
  printk("\vUBI error: %s: no free eraseblocks\n", "ubi_early_get_peb");
  tmp___4 = ERR_PTR(-28L);
  return ((struct ubi_ainf_peb *)tmp___4);
}
}
static int check_corruption(struct ubi_device *ubi , struct ubi_vid_hdr *vid_hdr ,
                            int pnum )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  mutex_lock_nested(& ubi->buf_mutex, 0U);
  memset(ubi->peb_buf, 0, (size_t )ubi->leb_size);
  err = ubi_io_read((struct ubi_device const *)ubi, ubi->peb_buf, pnum, ubi->leb_start,
                    ubi->leb_size);
  if (err == 5) {
    err = 0;
    goto out_unlock;
  } else {
    tmp = mtd_is_eccerr(err);
    if (tmp != 0) {
      err = 0;
      goto out_unlock;
    } else {
    }
  }
  if (err != 0) {
    goto out_unlock;
  } else {
  }
  tmp___0 = ubi_check_pattern((void const *)ubi->peb_buf, 255, ubi->leb_size);
  if (tmp___0 != 0) {
    goto out_unlock;
  } else {
  }
  printk("\vUBI error: %s: PEB %d contains corrupted VID header, and the data does not contain all 0xFF\n",
         "check_corruption", pnum);
  printk("\vUBI error: %s: this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection\n",
         "check_corruption");
  ubi_dump_vid_hdr((struct ubi_vid_hdr const *)vid_hdr);
  printk("\vhexdump of PEB %d offset %d, length %d", pnum, ubi->leb_start, ubi->leb_size);
  print_hex_dump("\017", "", 2, 32, 1, (void const *)ubi->peb_buf, (size_t )ubi->leb_size,
                 1);
  err = 1;
  out_unlock:
  mutex_unlock(& ubi->buf_mutex);
  return (err);
}
}
static int scan_peb(struct ubi_device *ubi , struct ubi_attach_info *ai , int pnum ,
                    int *vid , unsigned long long *sqnum )
{
  long long ec ;
  int err ;
  int bitflips ;
  int vol_id ;
  int ec_err ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int image_seq ;
  __u64 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  int lnum ;
  __u32 tmp___7 ;
  {
  ec = ec;
  bitflips = 0;
  vol_id = -1;
  ec_err = 0;
  descriptor.modname = "ubi";
  descriptor.function = "scan_peb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): scan PEB %d\n";
  descriptor.lineno = 886U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): scan PEB %d\n", tmp->pid,
                       pnum);
  } else {
  }
  err = ubi_io_is_bad((struct ubi_device const *)ubi, pnum);
  if (err < 0) {
    return (err);
  } else
  if (err != 0) {
    ai->bad_peb_count = ai->bad_peb_count + 1;
    return (0);
  } else {
  }
  err = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
  if (err < 0) {
    return (err);
  } else {
  }
  switch (err) {
  case 0: ;
  goto ldv_26339;
  case 5:
  bitflips = 1;
  goto ldv_26339;
  case 1:
  ai->empty_peb_count = ai->empty_peb_count + 1;
  tmp___1 = add_to_list(ai, pnum, -1, -1, -1, 0, & ai->erase);
  return (tmp___1);
  case 2:
  ai->empty_peb_count = ai->empty_peb_count + 1;
  tmp___2 = add_to_list(ai, pnum, -1, -1, -1, 1, & ai->erase);
  return (tmp___2);
  case 4: ;
  case 3:
  ec_err = err;
  ec = -1LL;
  bitflips = 1;
  goto ldv_26339;
  default:
  printk("\vUBI error: %s: \'ubi_io_read_ec_hdr()\' returned unknown code %d\n", "scan_peb",
         err);
  return (-22);
  }
  ldv_26339: ;
  if (ec_err == 0) {
    if ((unsigned int )ech->version != 1U) {
      printk("\vUBI error: %s: this UBI version is %d, image version is %d\n", "scan_peb",
             1, (int )ech->version);
      return (-22);
    } else {
    }
    tmp___3 = __fswab64(ech->ec);
    ec = (long long )tmp___3;
    if (ec > 2147483647LL) {
      printk("\vUBI error: %s: erase counter overflow, max is %d\n", "scan_peb", 2147483647);
      ubi_dump_ec_hdr((struct ubi_ec_hdr const *)ech);
      return (-22);
    } else {
    }
    tmp___4 = __fswab32(ech->image_seq);
    image_seq = (int )tmp___4;
    if (ubi->image_seq == 0) {
      ubi->image_seq = image_seq;
    } else {
    }
    if (image_seq != 0 && ubi->image_seq != image_seq) {
      printk("\vUBI error: %s: bad image sequence number %d in PEB %d, expected %d\n",
             "scan_peb", image_seq, pnum, ubi->image_seq);
      ubi_dump_ec_hdr((struct ubi_ec_hdr const *)ech);
      return (-22);
    } else {
    }
  } else {
  }
  err = ubi_io_read_vid_hdr(ubi, pnum, vidh, 0);
  if (err < 0) {
    return (err);
  } else {
  }
  switch (err) {
  case 0: ;
  goto ldv_26348;
  case 5:
  bitflips = 1;
  goto ldv_26348;
  case 4: ;
  if (ec_err == 4) {
    ai->maybe_bad_peb_count = ai->maybe_bad_peb_count + 1;
  } else {
  }
  case 3: ;
  if (ec_err != 0) {
    err = 0;
  } else {
    err = check_corruption(ubi, vidh, pnum);
  }
  if (err < 0) {
    return (err);
  } else
  if (err == 0) {
    err = add_to_list(ai, pnum, -1, -1, (int )ec, 1, & ai->erase);
  } else {
    err = add_corrupted(ai, pnum, (int )ec);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  goto adjust_mean_ec;
  case 2:
  err = add_to_list(ai, pnum, -1, -1, (int )ec, 1, & ai->erase);
  if (err != 0) {
    return (err);
  } else {
  }
  goto adjust_mean_ec;
  case 1: ;
  if (ec_err != 0 || bitflips != 0) {
    err = add_to_list(ai, pnum, -1, -1, (int )ec, 1, & ai->erase);
  } else {
    err = add_to_list(ai, pnum, -1, -1, (int )ec, 0, & ai->free);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  goto adjust_mean_ec;
  default:
  printk("\vUBI error: %s: \'ubi_io_read_vid_hdr()\' returned unknown code %d\n",
         "scan_peb", err);
  return (-22);
  }
  ldv_26348:
  tmp___5 = __fswab32(vidh->vol_id);
  vol_id = (int )tmp___5;
  if ((unsigned long )vid != (unsigned long )((int *)0)) {
    *vid = vol_id;
  } else {
  }
  if ((unsigned long )sqnum != (unsigned long )((unsigned long long *)0ULL)) {
    tmp___6 = __fswab64(vidh->sqnum);
    *sqnum = tmp___6;
  } else {
  }
  if (vol_id > 128 && vol_id != 2147479551) {
    tmp___7 = __fswab32(vidh->lnum);
    lnum = (int )tmp___7;
    switch ((int )vidh->compat) {
    case 1: ;
    if (vol_id != 2147479552 && vol_id != 2147479553) {
      printk("\rUBI: \"delete\" compatible internal volume %d:%d found, will remove it\n",
             vol_id, lnum);
    } else {
    }
    err = add_to_list(ai, pnum, vol_id, lnum, (int )ec, 1, & ai->erase);
    if (err != 0) {
      return (err);
    } else {
    }
    return (0);
    case 2:
    printk("\rUBI: read-only compatible internal volume %d:%d found, switch to read-only mode\n",
           vol_id, lnum);
    ubi->ro_mode = 1;
    goto ldv_26359;
    case 4:
    printk("\rUBI: \"preserve\" compatible internal volume %d:%d found\n", vol_id,
           lnum);
    err = add_to_list(ai, pnum, vol_id, lnum, (int )ec, 0, & ai->alien);
    if (err != 0) {
      return (err);
    } else {
    }
    return (0);
    case 5:
    printk("\vUBI error: %s: incompatible internal volume %d:%d found\n", "scan_peb",
           vol_id, lnum);
    return (-22);
    }
    ldv_26359: ;
  } else {
  }
  if (ec_err != 0) {
    printk("\fUBI warning: %s: valid VID header but corrupted EC header at PEB %d\n",
           "scan_peb", pnum);
  } else {
  }
  err = ubi_add_to_av(ubi, ai, pnum, (int )ec, (struct ubi_vid_hdr const *)vidh,
                      bitflips);
  if (err != 0) {
    return (err);
  } else {
  }
  adjust_mean_ec: ;
  if (ec_err == 0) {
    ai->ec_sum = ai->ec_sum + (unsigned long long )ec;
    ai->ec_count = ai->ec_count + 1;
    if ((long long )ai->max_ec < ec) {
      ai->max_ec = (int )ec;
    } else {
    }
    if ((long long )ai->min_ec > ec) {
      ai->min_ec = (int )ec;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int late_analysis(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  struct ubi_ainf_peb *aeb ;
  int max_corr ;
  int peb_count ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  peb_count = (ubi->peb_count - ai->bad_peb_count) - ai->alien_peb_count;
  max_corr = peb_count / 20 != 0 ? peb_count / 20 != 0 : 8;
  if (ai->corr_peb_count != 0) {
    printk("\vUBI error: %s: %d PEBs are corrupted and preserved\n", "late_analysis",
           ai->corr_peb_count);
    printk("\vCorrupted PEBs are:");
    __mptr = (struct list_head const *)ai->corr.next;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
    goto ldv_26375;
    ldv_26374:
    printk(" %d", aeb->pnum);
    __mptr___0 = (struct list_head const *)aeb->u.list.next;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
    ldv_26375: ;
    if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->corr)) {
      goto ldv_26374;
    } else {
    }
    printk("\n");
    if (ai->corr_peb_count >= max_corr) {
      printk("\vUBI error: %s: too many corrupted PEBs, refusing\n", "late_analysis");
      return (-22);
    } else {
    }
  } else {
  }
  if (ai->empty_peb_count + ai->maybe_bad_peb_count == peb_count) {
    if (ai->maybe_bad_peb_count <= 2) {
      ai->is_empty = 1;
      printk("\rUBI: empty MTD device detected\n");
      get_random_bytes((void *)(& ubi->image_seq), 4);
    } else {
      printk("\vUBI error: %s: MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it\n",
             "late_analysis");
      return (-22);
    }
  } else {
  }
  return (0);
}
}
static void destroy_av(struct ubi_attach_info *ai , struct ubi_ainf_volume *av )
{
  struct ubi_ainf_peb *aeb ;
  struct rb_node *this ;
  struct rb_node const *__mptr ;
  {
  this = av->root.rb_node;
  goto ldv_26386;
  ldv_26385: ;
  if ((unsigned long )this->rb_left != (unsigned long )((struct rb_node *)0)) {
    this = this->rb_left;
  } else
  if ((unsigned long )this->rb_right != (unsigned long )((struct rb_node *)0)) {
    this = this->rb_right;
  } else {
    __mptr = (struct rb_node const *)this;
    aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
    this = (struct rb_node *)(this->__rb_parent_color & 0xfffffffffffffffcUL);
    if ((unsigned long )this != (unsigned long )((struct rb_node *)0)) {
      if ((unsigned long )this->rb_left == (unsigned long )(& aeb->u.rb)) {
        this->rb_left = (struct rb_node *)0;
      } else {
        this->rb_right = (struct rb_node *)0;
      }
    } else {
    }
    kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
  }
  ldv_26386: ;
  if ((unsigned long )this != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26385;
  } else {
  }
  kfree((void const *)av);
  return;
}
}
static void destroy_ai(struct ubi_attach_info *ai )
{
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *aeb_tmp ;
  struct ubi_ainf_volume *av ;
  struct rb_node *rb ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  struct list_head const *__mptr___9 ;
  struct list_head const *__mptr___10 ;
  struct rb_node const *__mptr___11 ;
  {
  __mptr = (struct list_head const *)ai->alien.next;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  __mptr___0 = (struct list_head const *)aeb->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  goto ldv_26402;
  ldv_26401:
  list_del(& aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
  aeb = aeb_tmp;
  __mptr___1 = (struct list_head const *)aeb_tmp->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  ldv_26402: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->alien)) {
    goto ldv_26401;
  } else {
  }
  __mptr___2 = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  __mptr___3 = (struct list_head const *)aeb->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___3 + 0xffffffffffffffe0UL;
  goto ldv_26411;
  ldv_26410:
  list_del(& aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
  aeb = aeb_tmp;
  __mptr___4 = (struct list_head const *)aeb_tmp->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___4 + 0xffffffffffffffe0UL;
  ldv_26411: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26410;
  } else {
  }
  __mptr___5 = (struct list_head const *)ai->corr.next;
  aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  __mptr___6 = (struct list_head const *)aeb->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___6 + 0xffffffffffffffe0UL;
  goto ldv_26420;
  ldv_26419:
  list_del(& aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
  aeb = aeb_tmp;
  __mptr___7 = (struct list_head const *)aeb_tmp->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___7 + 0xffffffffffffffe0UL;
  ldv_26420: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->corr)) {
    goto ldv_26419;
  } else {
  }
  __mptr___8 = (struct list_head const *)ai->free.next;
  aeb = (struct ubi_ainf_peb *)__mptr___8 + 0xffffffffffffffe0UL;
  __mptr___9 = (struct list_head const *)aeb->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___9 + 0xffffffffffffffe0UL;
  goto ldv_26429;
  ldv_26428:
  list_del(& aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
  aeb = aeb_tmp;
  __mptr___10 = (struct list_head const *)aeb_tmp->u.list.next;
  aeb_tmp = (struct ubi_ainf_peb *)__mptr___10 + 0xffffffffffffffe0UL;
  ldv_26429: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->free)) {
    goto ldv_26428;
  } else {
  }
  rb = ai->volumes.rb_node;
  goto ldv_26434;
  ldv_26433: ;
  if ((unsigned long )rb->rb_left != (unsigned long )((struct rb_node *)0)) {
    rb = rb->rb_left;
  } else
  if ((unsigned long )rb->rb_right != (unsigned long )((struct rb_node *)0)) {
    rb = rb->rb_right;
  } else {
    __mptr___11 = (struct rb_node const *)rb;
    av = (struct ubi_ainf_volume *)__mptr___11 + 0xffffffffffffffe0UL;
    rb = (struct rb_node *)(rb->__rb_parent_color & 0xfffffffffffffffcUL);
    if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
      if ((unsigned long )rb->rb_left == (unsigned long )(& av->rb)) {
        rb->rb_left = (struct rb_node *)0;
      } else {
        rb->rb_right = (struct rb_node *)0;
      }
    } else {
    }
    destroy_av(ai, av);
  }
  ldv_26434: ;
  if ((unsigned long )rb != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26433;
  } else {
  }
  if ((unsigned long )ai->aeb_slab_cache != (unsigned long )((struct kmem_cache *)0)) {
    kmem_cache_destroy(ai->aeb_slab_cache);
  } else {
  }
  kfree((void const *)ai);
  return;
}
}
static int scan_all(struct ubi_device *ubi , struct ubi_attach_info *ai , int start )
{
  int err ;
  int pnum ;
  struct rb_node *rb1 ;
  struct rb_node *rb2 ;
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_peb *aeb ;
  void *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  u64 tmp___2 ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  struct rb_node const *__mptr___1 ;
  struct rb_node const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  {
  err = -12;
  tmp = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ech = (struct ubi_ec_hdr *)tmp;
  if ((unsigned long )ech == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (err);
  } else {
  }
  vidh = ubi_zalloc_vid_hdr___3((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )vidh == (unsigned long )((struct ubi_vid_hdr *)0)) {
    goto out_ech;
  } else {
  }
  pnum = start;
  goto ldv_26453;
  ldv_26452:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared",
                1307, 0);
  _cond_resched();
  descriptor.modname = "ubi";
  descriptor.function = "scan_all";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): process PEB %d\n";
  descriptor.lineno = 1309U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): process PEB %d\n", tmp___0->pid,
                       pnum);
  } else {
  }
  err = scan_peb(ubi, ai, pnum, (int *)0, (unsigned long long *)0ULL);
  if (err < 0) {
    goto out_vidh;
  } else {
  }
  pnum = pnum + 1;
  ldv_26453: ;
  if (ubi->peb_count > pnum) {
    goto ldv_26452;
  } else {
  }
  printk("\rUBI: scanning is finished\n");
  if (ai->ec_count != 0) {
    tmp___2 = div_u64(ai->ec_sum, (u32 )ai->ec_count);
    ai->mean_ec = (int )tmp___2;
  } else {
  }
  err = late_analysis(ubi, ai);
  if (err != 0) {
    goto out_vidh;
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26467;
  ldv_26466:
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26464;
  ldv_26463: ;
  if (aeb->ec == -1) {
    aeb->ec = ai->mean_ec;
  } else {
  }
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___1 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26464: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26463;
  } else {
  }
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___2 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___2 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26467: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26466;
  } else {
  }
  __mptr___3 = (struct list_head const *)ai->free.next;
  aeb = (struct ubi_ainf_peb *)__mptr___3 + 0xffffffffffffffe0UL;
  goto ldv_26474;
  ldv_26473: ;
  if (aeb->ec == -1) {
    aeb->ec = ai->mean_ec;
  } else {
  }
  __mptr___4 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___4 + 0xffffffffffffffe0UL;
  ldv_26474: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->free)) {
    goto ldv_26473;
  } else {
  }
  __mptr___5 = (struct list_head const *)ai->corr.next;
  aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  goto ldv_26481;
  ldv_26480: ;
  if (aeb->ec == -1) {
    aeb->ec = ai->mean_ec;
  } else {
  }
  __mptr___6 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___6 + 0xffffffffffffffe0UL;
  ldv_26481: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->corr)) {
    goto ldv_26480;
  } else {
  }
  __mptr___7 = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr___7 + 0xffffffffffffffe0UL;
  goto ldv_26488;
  ldv_26487: ;
  if (aeb->ec == -1) {
    aeb->ec = ai->mean_ec;
  } else {
  }
  __mptr___8 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___8 + 0xffffffffffffffe0UL;
  ldv_26488: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26487;
  } else {
  }
  err = self_check_ai(ubi, ai);
  if (err != 0) {
    goto out_vidh;
  } else {
  }
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vidh);
  kfree((void const *)ech);
  return (0);
  out_vidh:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vidh);
  out_ech:
  kfree((void const *)ech);
  return (err);
}
}
static int scan_fast(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int err ;
  int pnum ;
  int fm_anchor ;
  unsigned long long max_sqnum ;
  void *tmp ;
  int vol_id ;
  unsigned long long sqnum ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  fm_anchor = -1;
  max_sqnum = 0ULL;
  err = -12;
  tmp = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ech = (struct ubi_ec_hdr *)tmp;
  if ((unsigned long )ech == (unsigned long )((struct ubi_ec_hdr *)0)) {
    goto out;
  } else {
  }
  vidh = ubi_zalloc_vid_hdr___3((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )vidh == (unsigned long )((struct ubi_vid_hdr *)0)) {
    goto out_ech;
  } else {
  }
  pnum = 0;
  goto ldv_26507;
  ldv_26506:
  vol_id = -1;
  sqnum = 0xffffffffffffffffULL;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared",
                1394, 0);
  _cond_resched();
  descriptor.modname = "ubi";
  descriptor.function = "scan_fast";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): process PEB %d\n";
  descriptor.lineno = 1396U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): process PEB %d\n", tmp___0->pid,
                       pnum);
  } else {
  }
  err = scan_peb(ubi, ai, pnum, & vol_id, & sqnum);
  if (err < 0) {
    goto out_vidh;
  } else {
  }
  if (vol_id == 2147479552 && sqnum > max_sqnum) {
    max_sqnum = sqnum;
    fm_anchor = pnum;
  } else {
  }
  pnum = pnum + 1;
  ldv_26507: ;
  if (pnum <= 63) {
    goto ldv_26506;
  } else {
  }
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vidh);
  kfree((void const *)ech);
  if (fm_anchor < 0) {
    return (1);
  } else {
  }
  tmp___2 = ubi_scan_fastmap(ubi, ai, fm_anchor);
  return (tmp___2);
  out_vidh:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vidh);
  out_ech:
  kfree((void const *)ech);
  out: ;
  return (err);
}
}
static struct ubi_attach_info *alloc_ai(char const *slab_name )
{
  struct ubi_attach_info *ai ;
  void *tmp ;
  struct rb_root __constr_expr_0 ;
  {
  tmp = kzalloc(152UL, 208U);
  ai = (struct ubi_attach_info *)tmp;
  if ((unsigned long )ai == (unsigned long )((struct ubi_attach_info *)0)) {
    return (ai);
  } else {
  }
  INIT_LIST_HEAD(& ai->corr);
  INIT_LIST_HEAD(& ai->free);
  INIT_LIST_HEAD(& ai->erase);
  INIT_LIST_HEAD(& ai->alien);
  __constr_expr_0.rb_node = (struct rb_node *)0;
  ai->volumes = __constr_expr_0;
  ai->aeb_slab_cache = kmem_cache_create(slab_name, 56UL, 0UL, 0UL, (void (*)(void * ))0);
  if ((unsigned long )ai->aeb_slab_cache == (unsigned long )((struct kmem_cache *)0)) {
    kfree((void const *)ai);
    ai = (struct ubi_attach_info *)0;
  } else {
  }
  return (ai);
}
}
int ubi_attach(struct ubi_device *ubi , int force_scan )
{
  int err ;
  struct ubi_attach_info *ai ;
  uint32_t tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  struct ubi_attach_info *scan_ai ;
  int tmp___2 ;
  {
  ai = alloc_ai("ubi_aeb_slab_cache");
  if ((unsigned long )ai == (unsigned long )((struct ubi_attach_info *)0)) {
    return (-12);
  } else {
  }
  tmp = mtd_div_by_eb((ubi->mtd)->size, ubi->mtd);
  if ((int )tmp <= 64) {
    ubi->fm_disabled = 1;
    force_scan = 1;
  } else {
  }
  if (force_scan != 0) {
    err = scan_all(ubi, ai, 0);
  } else {
    err = scan_fast(ubi, ai);
    if (err > 0) {
      if (err != 1) {
        destroy_ai(ai);
        ai = alloc_ai("ubi_aeb_slab_cache2");
        if ((unsigned long )ai == (unsigned long )((struct ubi_attach_info *)0)) {
          return (-12);
        } else {
        }
        err = scan_all(ubi, ai, 0);
      } else {
        err = scan_all(ubi, ai, 64);
      }
    } else {
    }
  }
  if (err != 0) {
    goto out_ai;
  } else {
  }
  ubi->bad_peb_count = ai->bad_peb_count;
  ubi->good_peb_count = ubi->peb_count - ubi->bad_peb_count;
  ubi->corr_peb_count = ai->corr_peb_count;
  ubi->max_ec = ai->max_ec;
  ubi->mean_ec = ai->mean_ec;
  descriptor.modname = "ubi";
  descriptor.function = "ubi_attach";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared";
  descriptor.format = "UBI DBG gen (pid %d): max. sequence number:       %llu\n";
  descriptor.lineno = 1501U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG gen (pid %d): max. sequence number:       %llu\n",
                       tmp___0->pid, ai->max_sqnum);
  } else {
  }
  err = ubi_read_volume_table(ubi, ai);
  if (err != 0) {
    goto out_ai;
  } else {
  }
  err = ubi_wl_init(ubi, ai);
  if (err != 0) {
    goto out_vtbl;
  } else {
  }
  err = ubi_eba_init(ubi, ai);
  if (err != 0) {
    goto out_wl;
  } else {
  }
  if ((unsigned long )ubi->fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
    tmp___2 = ubi_dbg_chk_gen((struct ubi_device const *)ubi);
    if (tmp___2 != 0) {
      scan_ai = alloc_ai("ubi_ckh_aeb_slab_cache");
      if ((unsigned long )scan_ai == (unsigned long )((struct ubi_attach_info *)0)) {
        err = -12;
        goto out_wl;
      } else {
      }
      err = scan_all(ubi, scan_ai, 0);
      if (err != 0) {
        destroy_ai(scan_ai);
        goto out_wl;
      } else {
      }
      err = self_check_eba(ubi, ai, scan_ai);
      destroy_ai(scan_ai);
      if (err != 0) {
        goto out_wl;
      } else {
      }
    } else {
    }
  } else {
  }
  destroy_ai(ai);
  return (0);
  out_wl:
  ubi_wl_close(ubi);
  out_vtbl:
  ubi_free_internal_volumes(ubi);
  vfree((void const *)ubi->vtbl);
  out_ai:
  destroy_ai(ai);
  return (err);
}
}
static int self_check_ai(struct ubi_device *ubi , struct ubi_attach_info *ai )
{
  int pnum ;
  int err ;
  int vols_found ;
  struct rb_node *rb1 ;
  struct rb_node *rb2 ;
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *last_aeb ;
  uint8_t *buf ;
  int tmp ;
  struct rb_node const *__mptr ;
  int leb_count ;
  struct rb_node const *__mptr___0 ;
  struct rb_node const *__mptr___1 ;
  struct rb_node const *__mptr___2 ;
  struct rb_node const *__mptr___3 ;
  struct rb_node const *__mptr___4 ;
  int vol_type ;
  __u64 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  struct rb_node const *__mptr___5 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  struct rb_node const *__mptr___6 ;
  void *tmp___7 ;
  struct rb_node const *__mptr___7 ;
  struct rb_node const *__mptr___8 ;
  struct rb_node const *__mptr___9 ;
  struct rb_node const *__mptr___10 ;
  struct list_head const *__mptr___11 ;
  struct list_head const *__mptr___12 ;
  struct list_head const *__mptr___13 ;
  struct list_head const *__mptr___14 ;
  struct list_head const *__mptr___15 ;
  struct list_head const *__mptr___16 ;
  struct list_head const *__mptr___17 ;
  struct list_head const *__mptr___18 ;
  {
  vols_found = 0;
  tmp = ubi_dbg_chk_gen((struct ubi_device const *)ubi);
  if (tmp == 0) {
    return (0);
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26559;
  ldv_26558:
  leb_count = 0;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared",
                1577, 0);
  _cond_resched();
  vols_found = vols_found + 1;
  if (ai->is_empty != 0) {
    printk("\vUBI error: %s: bad is_empty flag\n", "self_check_ai");
    goto bad_av;
  } else {
  }
  if ((((((av->vol_id < 0 || av->highest_lnum < 0) || av->leb_count < 0) || av->vol_type < 0) || av->used_ebs < 0) || av->data_pad < 0) || av->last_data_size < 0) {
    printk("\vUBI error: %s: negative values\n", "self_check_ai");
    goto bad_av;
  } else {
  }
  if (av->vol_id > 127 && av->vol_id <= 2147479550) {
    printk("\vUBI error: %s: bad vol_id\n", "self_check_ai");
    goto bad_av;
  } else {
  }
  if (av->vol_id > ai->highest_vol_id) {
    printk("\vUBI error: %s: highest_vol_id is %d, but vol_id %d is there\n", "self_check_ai",
           ai->highest_vol_id, av->vol_id);
    goto out;
  } else {
  }
  if (av->vol_type != 3 && av->vol_type != 4) {
    printk("\vUBI error: %s: bad vol_type\n", "self_check_ai");
    goto bad_av;
  } else {
  }
  if (av->data_pad > ubi->leb_size / 2) {
    printk("\vUBI error: %s: bad data_pad\n", "self_check_ai");
    goto bad_av;
  } else {
  }
  last_aeb = (struct ubi_ainf_peb *)0;
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___0 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26555;
  ldv_26554:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared",
                1618, 0);
  _cond_resched();
  last_aeb = aeb;
  leb_count = leb_count + 1;
  if (aeb->pnum < 0 || aeb->ec < 0) {
    printk("\vUBI error: %s: negative values\n", "self_check_ai");
    goto bad_aeb;
  } else {
  }
  if (aeb->ec < ai->min_ec) {
    printk("\vUBI error: %s: bad ai->min_ec (%d), %d found\n", "self_check_ai", ai->min_ec,
           aeb->ec);
    goto bad_aeb;
  } else {
  }
  if (aeb->ec > ai->max_ec) {
    printk("\vUBI error: %s: bad ai->max_ec (%d), %d found\n", "self_check_ai", ai->max_ec,
           aeb->ec);
    goto bad_aeb;
  } else {
  }
  if (aeb->pnum >= ubi->peb_count) {
    printk("\vUBI error: %s: too high PEB number %d, total PEBs %d\n", "self_check_ai",
           aeb->pnum, ubi->peb_count);
    goto bad_aeb;
  } else {
  }
  if (av->vol_type == 4) {
    if (aeb->lnum >= av->used_ebs) {
      printk("\vUBI error: %s: bad lnum or used_ebs\n", "self_check_ai");
      goto bad_aeb;
    } else {
    }
  } else
  if (av->used_ebs != 0) {
    printk("\vUBI error: %s: non-zero used_ebs\n", "self_check_ai");
    goto bad_aeb;
  } else {
  }
  if (aeb->lnum > av->highest_lnum) {
    printk("\vUBI error: %s: incorrect highest_lnum or lnum\n", "self_check_ai");
    goto bad_aeb;
  } else {
  }
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___1 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26555: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26554;
  } else {
  }
  if (av->leb_count != leb_count) {
    printk("\vUBI error: %s: bad leb_count, %d objects in the tree\n", "self_check_ai",
           leb_count);
    goto bad_av;
  } else {
  }
  if ((unsigned long )last_aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    goto ldv_26557;
  } else {
  }
  aeb = last_aeb;
  if (aeb->lnum != av->highest_lnum) {
    printk("\vUBI error: %s: bad highest_lnum\n", "self_check_ai");
    goto bad_aeb;
  } else {
  }
  ldv_26557:
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___2 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___2 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26559: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26558;
  } else {
  }
  if (ai->vols_found != vols_found) {
    printk("\vUBI error: %s: bad ai->vols_found %d, should be %d\n", "self_check_ai",
           ai->vols_found, vols_found);
    goto out;
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___3 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___3 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26577;
  ldv_26576:
  last_aeb = (struct ubi_ainf_peb *)0;
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___4 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___4 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26573;
  ldv_26572:
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/attach.o.c.prepared",
                1693, 0);
  _cond_resched();
  last_aeb = aeb;
  err = ubi_io_read_vid_hdr(ubi, aeb->pnum, vidh, 1);
  if (err != 0 && err != 5) {
    printk("\vUBI error: %s: VID header is not OK (%d)\n", "self_check_ai", err);
    if (err > 0) {
      err = -5;
    } else {
    }
    return (err);
  } else {
  }
  vol_type = (unsigned int )vidh->vol_type == 1U ? 3 : 4;
  if (av->vol_type != vol_type) {
    printk("\vUBI error: %s: bad vol_type\n", "self_check_ai");
    goto bad_vid_hdr;
  } else {
  }
  tmp___0 = __fswab64(vidh->sqnum);
  if (aeb->sqnum != tmp___0) {
    printk("\vUBI error: %s: bad sqnum %llu\n", "self_check_ai", aeb->sqnum);
    goto bad_vid_hdr;
  } else {
  }
  tmp___1 = __fswab32(vidh->vol_id);
  if ((unsigned int )av->vol_id != tmp___1) {
    printk("\vUBI error: %s: bad vol_id %d\n", "self_check_ai", av->vol_id);
    goto bad_vid_hdr;
  } else {
  }
  if (av->compat != (int )vidh->compat) {
    printk("\vUBI error: %s: bad compat %d\n", "self_check_ai", (int )vidh->compat);
    goto bad_vid_hdr;
  } else {
  }
  tmp___2 = __fswab32(vidh->lnum);
  if ((unsigned int )aeb->lnum != tmp___2) {
    printk("\vUBI error: %s: bad lnum %d\n", "self_check_ai", aeb->lnum);
    goto bad_vid_hdr;
  } else {
  }
  tmp___3 = __fswab32(vidh->used_ebs);
  if ((unsigned int )av->used_ebs != tmp___3) {
    printk("\vUBI error: %s: bad used_ebs %d\n", "self_check_ai", av->used_ebs);
    goto bad_vid_hdr;
  } else {
  }
  tmp___4 = __fswab32(vidh->data_pad);
  if ((unsigned int )av->data_pad != tmp___4) {
    printk("\vUBI error: %s: bad data_pad %d\n", "self_check_ai", av->data_pad);
    goto bad_vid_hdr;
  } else {
  }
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___5 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26573: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26572;
  } else {
  }
  if ((unsigned long )last_aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    goto ldv_26575;
  } else {
  }
  tmp___5 = __fswab32(vidh->lnum);
  if ((unsigned int )av->highest_lnum != tmp___5) {
    printk("\vUBI error: %s: bad highest_lnum %d\n", "self_check_ai", av->highest_lnum);
    goto bad_vid_hdr;
  } else {
  }
  tmp___6 = __fswab32(vidh->data_size);
  if ((unsigned int )av->last_data_size != tmp___6) {
    printk("\vUBI error: %s: bad last_data_size %d\n", "self_check_ai", av->last_data_size);
    goto bad_vid_hdr;
  } else {
  }
  ldv_26575:
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___6 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___6 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26577: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26576;
  } else {
  }
  tmp___7 = kzalloc((size_t )ubi->peb_count, 208U);
  buf = (uint8_t *)tmp___7;
  if ((unsigned long )buf == (unsigned long )((uint8_t *)0U)) {
    return (-12);
  } else {
  }
  pnum = 0;
  goto ldv_26580;
  ldv_26579:
  err = ubi_io_is_bad((struct ubi_device const *)ubi, pnum);
  if (err < 0) {
    kfree((void const *)buf);
    return (err);
  } else
  if (err != 0) {
    *(buf + (unsigned long )pnum) = 1U;
  } else {
  }
  pnum = pnum + 1;
  ldv_26580: ;
  if (ubi->peb_count > pnum) {
    goto ldv_26579;
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___7 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___7 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26594;
  ldv_26593:
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___8 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___8 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26591;
  ldv_26590:
  *(buf + (unsigned long )aeb->pnum) = 1U;
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___9 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___9 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26591: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26590;
  } else {
  }
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___10 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___10 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26594: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26593;
  } else {
  }
  __mptr___11 = (struct list_head const *)ai->free.next;
  aeb = (struct ubi_ainf_peb *)__mptr___11 + 0xffffffffffffffe0UL;
  goto ldv_26601;
  ldv_26600:
  *(buf + (unsigned long )aeb->pnum) = 1U;
  __mptr___12 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___12 + 0xffffffffffffffe0UL;
  ldv_26601: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->free)) {
    goto ldv_26600;
  } else {
  }
  __mptr___13 = (struct list_head const *)ai->corr.next;
  aeb = (struct ubi_ainf_peb *)__mptr___13 + 0xffffffffffffffe0UL;
  goto ldv_26608;
  ldv_26607:
  *(buf + (unsigned long )aeb->pnum) = 1U;
  __mptr___14 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___14 + 0xffffffffffffffe0UL;
  ldv_26608: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->corr)) {
    goto ldv_26607;
  } else {
  }
  __mptr___15 = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr___15 + 0xffffffffffffffe0UL;
  goto ldv_26615;
  ldv_26614:
  *(buf + (unsigned long )aeb->pnum) = 1U;
  __mptr___16 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___16 + 0xffffffffffffffe0UL;
  ldv_26615: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26614;
  } else {
  }
  __mptr___17 = (struct list_head const *)ai->alien.next;
  aeb = (struct ubi_ainf_peb *)__mptr___17 + 0xffffffffffffffe0UL;
  goto ldv_26622;
  ldv_26621:
  *(buf + (unsigned long )aeb->pnum) = 1U;
  __mptr___18 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___18 + 0xffffffffffffffe0UL;
  ldv_26622: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->alien)) {
    goto ldv_26621;
  } else {
  }
  err = 0;
  pnum = 0;
  goto ldv_26625;
  ldv_26624: ;
  if ((unsigned int )*(buf + (unsigned long )pnum) == 0U) {
    printk("\vUBI error: %s: PEB %d is not referred\n", "self_check_ai", pnum);
    err = 1;
  } else {
  }
  pnum = pnum + 1;
  ldv_26625: ;
  if (ubi->peb_count > pnum) {
    goto ldv_26624;
  } else {
  }
  kfree((void const *)buf);
  if (err != 0) {
    goto out;
  } else {
  }
  return (0);
  bad_aeb:
  printk("\vUBI error: %s: bad attaching information about LEB %d\n", "self_check_ai",
         aeb->lnum);
  ubi_dump_aeb((struct ubi_ainf_peb const *)aeb, 0);
  ubi_dump_av((struct ubi_ainf_volume const *)av);
  goto out;
  bad_av:
  printk("\vUBI error: %s: bad attaching information about volume %d\n", "self_check_ai",
         av->vol_id);
  ubi_dump_av((struct ubi_ainf_volume const *)av);
  goto out;
  bad_vid_hdr:
  printk("\vUBI error: %s: bad attaching information about volume %d\n", "self_check_ai",
         av->vol_id);
  ubi_dump_av((struct ubi_ainf_volume const *)av);
  ubi_dump_vid_hdr((struct ubi_vid_hdr const *)vidh);
  out:
  dump_stack();
  return (-22);
}
}
void *ldv_kmem_cache_alloc_235(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_238(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_239(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_240(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vmalloc_263(unsigned long ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_260(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
int ubi_calc_data_len(struct ubi_device const *ubi , void const *buf , int length )
{
  int i ;
  struct task_struct *tmp ;
  long tmp___0 ;
  {
  tmp___0 = ldv__builtin_expect((((int )ubi->min_io_size + -1) & length) != 0, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_calc_data_len", 104,
           tmp->pid);
    dump_stack();
  } else {
  }
  i = length + -1;
  goto ldv_26121;
  ldv_26120: ;
  if ((unsigned int )((unsigned char )*((uint8_t const *)buf + (unsigned long )i)) != 255U) {
    goto ldv_26119;
  } else {
  }
  i = i - 1;
  ldv_26121: ;
  if (i >= 0) {
    goto ldv_26120;
  } else {
  }
  ldv_26119:
  length = ((i + 1) + ((int )ubi->min_io_size + -1)) & - ((int )ubi->min_io_size);
  return (length);
}
}
int ubi_check_volume(struct ubi_device *ubi , int vol_id )
{
  void *buf ;
  int err ;
  int i ;
  struct ubi_volume *vol ;
  int size ;
  int tmp ;
  {
  err = 0;
  vol = ubi->volumes[vol_id];
  if (vol->vol_type != 4) {
    return (0);
  } else {
  }
  buf = ldv_vmalloc_263((unsigned long )vol->usable_leb_size);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_26133;
  ldv_26132: ;
  if (vol->used_ebs + -1 == i) {
    size = vol->last_eb_bytes;
  } else {
    size = vol->usable_leb_size;
  }
  err = ubi_eba_read_leb(ubi, vol, i, buf, 0, size, 1);
  if (err != 0) {
    tmp = mtd_is_eccerr(err);
    if (tmp != 0) {
      err = 1;
    } else {
    }
    goto ldv_26131;
  } else {
  }
  i = i + 1;
  ldv_26133: ;
  if (vol->used_ebs > i) {
    goto ldv_26132;
  } else {
  }
  ldv_26131:
  vfree((void const *)buf);
  return (err);
}
}
void ubi_update_reserved(struct ubi_device *ubi )
{
  int need ;
  int __min1 ;
  int __min2 ;
  {
  need = ubi->beb_rsvd_level - ubi->beb_rsvd_pebs;
  if (need <= 0 || ubi->avail_pebs == 0) {
    return;
  } else {
  }
  __min1 = need;
  __min2 = ubi->avail_pebs;
  need = __min1 < __min2 ? __min1 : __min2;
  ubi->avail_pebs = ubi->avail_pebs - need;
  ubi->rsvd_pebs = ubi->rsvd_pebs + need;
  ubi->beb_rsvd_pebs = ubi->beb_rsvd_pebs + need;
  printk("\rUBI: reserved more %d PEBs for bad PEB handling\n", need);
  return;
}
}
void ubi_calculate_reserved(struct ubi_device *ubi )
{
  {
  ubi->beb_rsvd_level = ubi->bad_peb_limit - ubi->bad_peb_count;
  if (ubi->beb_rsvd_level < 0) {
    ubi->beb_rsvd_level = 0;
    printk("\fUBI warning: %s: number of bad PEBs (%d) is above the expected limit (%d), not reserving any PEBs for bad PEB handling, will use available PEBs (if any)\n",
           "ubi_calculate_reserved", ubi->bad_peb_count, ubi->bad_peb_limit);
  } else {
  }
  return;
}
}
int ubi_check_pattern(void const *buf , uint8_t patt , int size )
{
  int i ;
  {
  i = 0;
  goto ldv_26152;
  ldv_26151: ;
  if ((int )((unsigned char )*((uint8_t const *)buf + (unsigned long )i)) != (int )patt) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_26152: ;
  if (i < size) {
    goto ldv_26151;
  } else {
  }
  return (1);
}
}
void *ldv_kmem_cache_alloc_260(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vmalloc_263(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static bool IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
void *ldv_vmalloc_284(unsigned long ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_281(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void ldv_file_operations_4(void) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
void ubi_dump_flash(struct ubi_device *ubi , int pnum , int offset , int len )
{
  int err ;
  size_t read ;
  void *buf ;
  loff_t addr ;
  {
  addr = (long long )pnum * (long long )ubi->peb_size + (long long )offset;
  buf = ldv_vmalloc_284((unsigned long )len);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  err = mtd_read(ubi->mtd, addr, (size_t )len, & read, (u_char *)buf);
  if (err != 0 && err != -117) {
    printk("\vUBI error: %s: error %d while reading %d bytes from PEB %d:%d, read %zd bytes\n",
           "ubi_dump_flash", err, len, pnum, offset, read);
    goto out;
  } else {
  }
  printk("\rUBI: dumping %d bytes of data from PEB %d, offset %d\n", len, pnum, offset);
  print_hex_dump("\017", "", 2, 32, 1, (void const *)buf, (size_t )len, 1);
  out:
  vfree((void const *)buf);
  return;
}
}
void ubi_dump_ec_hdr(struct ubi_ec_hdr const *ec_hdr )
{
  __u32 tmp ;
  __u64 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  {
  printk("\vErase counter header dump:\n");
  tmp = __fswab32(ec_hdr->magic);
  printk("\v\tmagic          %#08x\n", tmp);
  printk("\v\tversion        %d\n", (int )ec_hdr->version);
  tmp___0 = __fswab64(ec_hdr->ec);
  printk("\v\tec             %llu\n", (long long )tmp___0);
  tmp___1 = __fswab32(ec_hdr->vid_hdr_offset);
  printk("\v\tvid_hdr_offset %d\n", tmp___1);
  tmp___2 = __fswab32(ec_hdr->data_offset);
  printk("\v\tdata_offset    %d\n", tmp___2);
  tmp___3 = __fswab32(ec_hdr->image_seq);
  printk("\v\timage_seq      %d\n", tmp___3);
  tmp___4 = __fswab32(ec_hdr->hdr_crc);
  printk("\v\thdr_crc        %#08x\n", tmp___4);
  printk("\verase counter header hexdump:\n");
  print_hex_dump("\017", "", 2, 32, 1, (void const *)ec_hdr, 64UL, 1);
  return;
}
}
void ubi_dump_vid_hdr(struct ubi_vid_hdr const *vid_hdr )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  __u32 tmp___6 ;
  {
  printk("\vVolume identifier header dump:\n");
  tmp = __fswab32(vid_hdr->magic);
  printk("\v\tmagic     %08x\n", tmp);
  printk("\v\tversion   %d\n", (int )vid_hdr->version);
  printk("\v\tvol_type  %d\n", (int )vid_hdr->vol_type);
  printk("\v\tcopy_flag %d\n", (int )vid_hdr->copy_flag);
  printk("\v\tcompat    %d\n", (int )vid_hdr->compat);
  tmp___0 = __fswab32(vid_hdr->vol_id);
  printk("\v\tvol_id    %d\n", tmp___0);
  tmp___1 = __fswab32(vid_hdr->lnum);
  printk("\v\tlnum      %d\n", tmp___1);
  tmp___2 = __fswab32(vid_hdr->data_size);
  printk("\v\tdata_size %d\n", tmp___2);
  tmp___3 = __fswab32(vid_hdr->used_ebs);
  printk("\v\tused_ebs  %d\n", tmp___3);
  tmp___4 = __fswab32(vid_hdr->data_pad);
  printk("\v\tdata_pad  %d\n", tmp___4);
  tmp___5 = __fswab64(vid_hdr->sqnum);
  printk("\v\tsqnum     %llu\n", tmp___5);
  tmp___6 = __fswab32(vid_hdr->hdr_crc);
  printk("\v\thdr_crc   %08x\n", tmp___6);
  printk("\vVolume identifier header hexdump:\n");
  print_hex_dump("\017", "", 2, 32, 1, (void const *)vid_hdr, 64UL, 1);
  return;
}
}
void ubi_dump_vol_info(struct ubi_volume const *vol )
{
  __kernel_size_t tmp ;
  {
  printk("\vVolume information dump:\n");
  printk("\v\tvol_id          %d\n", vol->vol_id);
  printk("\v\treserved_pebs   %d\n", vol->reserved_pebs);
  printk("\v\talignment       %d\n", vol->alignment);
  printk("\v\tdata_pad        %d\n", vol->data_pad);
  printk("\v\tvol_type        %d\n", vol->vol_type);
  printk("\v\tname_len        %d\n", vol->name_len);
  printk("\v\tusable_leb_size %d\n", vol->usable_leb_size);
  printk("\v\tused_ebs        %d\n", vol->used_ebs);
  printk("\v\tused_bytes      %lld\n", vol->used_bytes);
  printk("\v\tlast_eb_bytes   %d\n", vol->last_eb_bytes);
  printk("\v\tcorrupted       %d\n", (int )vol->corrupted);
  printk("\v\tupd_marker      %d\n", (int )vol->upd_marker);
  if ((int )vol->name_len <= 127) {
    tmp = strnlen((char const *)(& vol->name), (__kernel_size_t )((int )vol->name_len + 1));
    if (tmp == (__kernel_size_t )vol->name_len) {
      printk("\v\tname            %s\n", (char const *)(& vol->name));
    } else {
      printk("\v\t1st 5 characters of name: %c%c%c%c%c\n", (int )vol->name[0], (int )vol->name[1],
             (int )vol->name[2], (int )vol->name[3], (int )vol->name[4]);
    }
  } else {
    printk("\v\t1st 5 characters of name: %c%c%c%c%c\n", (int )vol->name[0], (int )vol->name[1],
           (int )vol->name[2], (int )vol->name[3], (int )vol->name[4]);
  }
  return;
}
}
void ubi_dump_vtbl_record(struct ubi_vtbl_record const *r , int idx )
{
  int name_len ;
  __u16 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __kernel_size_t tmp___3 ;
  __u32 tmp___4 ;
  {
  tmp = __fswab16((int )r->name_len);
  name_len = (int )tmp;
  printk("\vVolume table record %d dump:\n", idx);
  tmp___0 = __fswab32(r->reserved_pebs);
  printk("\v\treserved_pebs   %d\n", tmp___0);
  tmp___1 = __fswab32(r->alignment);
  printk("\v\talignment       %d\n", tmp___1);
  tmp___2 = __fswab32(r->data_pad);
  printk("\v\tdata_pad        %d\n", tmp___2);
  printk("\v\tvol_type        %d\n", (int )r->vol_type);
  printk("\v\tupd_marker      %d\n", (int )r->upd_marker);
  printk("\v\tname_len        %d\n", name_len);
  if ((unsigned int )r->name[0] == 0U) {
    printk("\v\tname            NULL\n");
    return;
  } else {
  }
  if (name_len <= 127) {
    tmp___3 = strnlen((char const *)(& r->name), (__kernel_size_t )(name_len + 1));
    if (tmp___3 == (__kernel_size_t )name_len) {
      printk("\v\tname            %s\n", (__u8 const *)(& r->name));
    } else {
      printk("\v\t1st 5 characters of name: %c%c%c%c%c\n", (int )r->name[0], (int )r->name[1],
             (int )r->name[2], (int )r->name[3], (int )r->name[4]);
    }
  } else {
    printk("\v\t1st 5 characters of name: %c%c%c%c%c\n", (int )r->name[0], (int )r->name[1],
           (int )r->name[2], (int )r->name[3], (int )r->name[4]);
  }
  tmp___4 = __fswab32(r->crc);
  printk("\v\tcrc             %#08x\n", tmp___4);
  return;
}
}
void ubi_dump_av(struct ubi_ainf_volume const *av )
{
  {
  printk("\vVolume attaching information dump:\n");
  printk("\v\tvol_id         %d\n", av->vol_id);
  printk("\v\thighest_lnum   %d\n", av->highest_lnum);
  printk("\v\tleb_count      %d\n", av->leb_count);
  printk("\v\tcompat         %d\n", av->compat);
  printk("\v\tvol_type       %d\n", av->vol_type);
  printk("\v\tused_ebs       %d\n", av->used_ebs);
  printk("\v\tlast_data_size %d\n", av->last_data_size);
  printk("\v\tdata_pad       %d\n", av->data_pad);
  return;
}
}
void ubi_dump_aeb(struct ubi_ainf_peb const *aeb , int type )
{
  {
  printk("\veraseblock attaching information dump:\n");
  printk("\v\tec       %d\n", aeb->ec);
  printk("\v\tpnum     %d\n", aeb->pnum);
  if (type == 0) {
    printk("\v\tlnum     %d\n", aeb->lnum);
    printk("\v\tscrub    %d\n", (int )aeb->scrub);
    printk("\v\tsqnum    %llu\n", aeb->sqnum);
  } else {
  }
  return;
}
}
void ubi_dump_mkvol_req(struct ubi_mkvol_req const *req )
{
  char nm[17U] ;
  size_t __len ;
  void *__ret ;
  {
  printk("\vVolume creation request dump:\n");
  printk("\v\tvol_id    %d\n", req->vol_id);
  printk("\v\talignment %d\n", req->alignment);
  printk("\v\tbytes     %lld\n", req->bytes);
  printk("\v\tvol_type  %d\n", (int )req->vol_type);
  printk("\v\tname_len  %d\n", (int )req->name_len);
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& nm), (void const *)(& req->name), __len);
  } else {
    __ret = memcpy((void *)(& nm), (void const *)(& req->name), __len);
  }
  nm[16] = 0;
  printk("\v\t1st 16 characters of name: %s\n", (char *)(& nm));
  return;
}
}
static struct dentry *dfs_rootdir ;
int ubi_debugfs_init(void)
{
  int err ;
  long tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  dfs_rootdir = debugfs_create_dir("ubi", (struct dentry *)0);
  tmp___1 = IS_ERR_OR_NULL((void const *)dfs_rootdir);
  if ((int )tmp___1) {
    if ((unsigned long )dfs_rootdir == (unsigned long )((struct dentry *)0)) {
      tmp = PTR_ERR((void const *)dfs_rootdir);
      tmp___0 = (int )tmp;
    } else {
      tmp___0 = -19;
    }
    err = tmp___0;
    printk("\vUBI error: %s: cannot create \"ubi\" debugfs directory, error %d\n\n",
           "ubi_debugfs_init", err);
    return (err);
  } else {
  }
  return (0);
}
}
void ubi_debugfs_exit(void)
{
  {
  debugfs_remove(dfs_rootdir);
  return;
}
}
static ssize_t dfs_file_read(struct file *file , char *user_buf , size_t count , loff_t *ppos )
{
  unsigned long ubi_num ;
  struct dentry *dent ;
  struct ubi_device *ubi ;
  struct ubi_debug_info *d ;
  char buf[3U] ;
  int val ;
  ssize_t tmp ;
  {
  ubi_num = (unsigned long )file->private_data;
  dent = file->f_path.dentry;
  ubi = ubi_get_device((int )ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19L);
  } else {
  }
  d = & ubi->dbg;
  if ((unsigned long )d->dfs_chk_gen == (unsigned long )dent) {
    val = (int )d->chk_gen;
  } else
  if ((unsigned long )d->dfs_chk_io == (unsigned long )dent) {
    val = (int )d->chk_io;
  } else
  if ((unsigned long )d->dfs_disable_bgt == (unsigned long )dent) {
    val = (int )d->disable_bgt;
  } else
  if ((unsigned long )d->dfs_emulate_bitflips == (unsigned long )dent) {
    val = (int )d->emulate_bitflips;
  } else
  if ((unsigned long )d->dfs_emulate_io_failures == (unsigned long )dent) {
    val = (int )d->emulate_io_failures;
  } else {
    count = 0xffffffffffffffeaUL;
    goto out;
  }
  if (val != 0) {
    buf[0] = 49;
  } else {
    buf[0] = 48;
  }
  buf[1] = 10;
  buf[2] = 0;
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& buf),
                                2UL);
  count = (size_t )tmp;
  out:
  ubi_put_device(ubi);
  return ((ssize_t )count);
}
}
static ssize_t dfs_file_write(struct file *file , char const *user_buf , size_t count ,
                              loff_t *ppos )
{
  unsigned long ubi_num ;
  struct dentry *dent ;
  struct ubi_device *ubi ;
  struct ubi_debug_info *d ;
  size_t buf_size ;
  char buf[8U] ;
  int val ;
  size_t __min1 ;
  size_t __min2 ;
  unsigned long tmp ;
  {
  ubi_num = (unsigned long )file->private_data;
  dent = file->f_path.dentry;
  ubi = ubi_get_device((int )ubi_num);
  if ((unsigned long )ubi == (unsigned long )((struct ubi_device *)0)) {
    return (-19L);
  } else {
  }
  d = & ubi->dbg;
  __min1 = count;
  __min2 = 7UL;
  buf_size = __min1 < __min2 ? __min1 : __min2;
  tmp = copy_from_user((void *)(& buf), (void const *)user_buf, buf_size);
  if (tmp != 0UL) {
    count = 0xfffffffffffffff2UL;
    goto out;
  } else {
  }
  if ((int )((signed char )buf[0]) == 49) {
    val = 1;
  } else
  if ((int )((signed char )buf[0]) == 48) {
    val = 0;
  } else {
    count = 0xffffffffffffffeaUL;
    goto out;
  }
  if ((unsigned long )d->dfs_chk_gen == (unsigned long )dent) {
    d->chk_gen = (unsigned char )val;
  } else
  if ((unsigned long )d->dfs_chk_io == (unsigned long )dent) {
    d->chk_io = (unsigned char )val;
  } else
  if ((unsigned long )d->dfs_disable_bgt == (unsigned long )dent) {
    d->disable_bgt = (unsigned char )val;
  } else
  if ((unsigned long )d->dfs_emulate_bitflips == (unsigned long )dent) {
    d->emulate_bitflips = (unsigned char )val;
  } else
  if ((unsigned long )d->dfs_emulate_io_failures == (unsigned long )dent) {
    d->emulate_io_failures = (unsigned char )val;
  } else {
    count = 0xffffffffffffffeaUL;
  }
  out:
  ubi_put_device(ubi);
  return ((ssize_t )count);
}
}
static struct file_operations const dfs_fops =
     {& __this_module, & no_llseek, & dfs_file_read, & dfs_file_write, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ubi_debugfs_init_dev(struct ubi_device *ubi )
{
  int err ;
  int n ;
  unsigned long ubi_num ;
  char const *fname ;
  struct dentry *dent ;
  struct ubi_debug_info *d ;
  void *tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  bool tmp___5 ;
  long tmp___6 ;
  {
  ubi_num = (unsigned long )ubi->ubi_num;
  d = & ubi->dbg;
  n = snprintf((char *)(& d->dfs_dir_name), 7UL, "ubi%d", ubi->ubi_num);
  if (n == 6) {
    fname = "ubi%d";
    tmp = ERR_PTR(-22L);
    dent = (struct dentry *)tmp;
    goto out;
  } else {
  }
  fname = (char const *)(& d->dfs_dir_name);
  dent = debugfs_create_dir(fname, dfs_rootdir);
  tmp___0 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___0) {
    goto out;
  } else {
  }
  d->dfs_dir = dent;
  fname = "chk_gen";
  dent = debugfs_create_file(fname, 128, d->dfs_dir, (void *)ubi_num, & dfs_fops);
  tmp___1 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___1) {
    goto out_remove;
  } else {
  }
  d->dfs_chk_gen = dent;
  fname = "chk_io";
  dent = debugfs_create_file(fname, 128, d->dfs_dir, (void *)ubi_num, & dfs_fops);
  tmp___2 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___2) {
    goto out_remove;
  } else {
  }
  d->dfs_chk_io = dent;
  fname = "tst_disable_bgt";
  dent = debugfs_create_file(fname, 128, d->dfs_dir, (void *)ubi_num, & dfs_fops);
  tmp___3 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___3) {
    goto out_remove;
  } else {
  }
  d->dfs_disable_bgt = dent;
  fname = "tst_emulate_bitflips";
  dent = debugfs_create_file(fname, 128, d->dfs_dir, (void *)ubi_num, & dfs_fops);
  tmp___4 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___4) {
    goto out_remove;
  } else {
  }
  d->dfs_emulate_bitflips = dent;
  fname = "tst_emulate_io_failures";
  dent = debugfs_create_file(fname, 128, d->dfs_dir, (void *)ubi_num, & dfs_fops);
  tmp___5 = IS_ERR_OR_NULL((void const *)dent);
  if ((int )tmp___5) {
    goto out_remove;
  } else {
  }
  d->dfs_emulate_io_failures = dent;
  return (0);
  out_remove:
  debugfs_remove_recursive(d->dfs_dir);
  out: ;
  if ((unsigned long )dent != (unsigned long )((struct dentry *)0)) {
    tmp___6 = PTR_ERR((void const *)dent);
    err = (int )tmp___6;
  } else {
    err = -19;
  }
  printk("\vUBI error: %s: cannot create \"%s\" debugfs file or directory, error %d\n\n",
         "ubi_debugfs_init_dev", fname, err);
  return (err);
}
}
void ubi_debugfs_exit_dev(struct ubi_device *ubi )
{
  {
  debugfs_remove_recursive(ubi->dbg.dfs_dir);
  return;
}
}
extern int ldv_release_4(void) ;
int ldv_retval_4 ;
void ldv_file_operations_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  dfs_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  dfs_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_4(void)
{
  int ldvarg83 ;
  int tmp ;
  size_t ldvarg89 ;
  size_t tmp___0 ;
  size_t ldvarg86 ;
  size_t tmp___1 ;
  char *ldvarg87 ;
  void *tmp___2 ;
  char *ldvarg90 ;
  void *tmp___3 ;
  loff_t *ldvarg88 ;
  void *tmp___4 ;
  loff_t ldvarg84 ;
  loff_t tmp___5 ;
  loff_t *ldvarg85 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg83 = tmp;
  tmp___0 = __VERIFIER_nondet_size_t();
  ldvarg89 = tmp___0;
  tmp___1 = __VERIFIER_nondet_size_t();
  ldvarg86 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg87 = (char *)tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg90 = (char *)tmp___3;
  tmp___4 = ldv_zalloc(8UL);
  ldvarg88 = (loff_t *)tmp___4;
  tmp___5 = __VERIFIER_nondet_loff_t();
  ldvarg84 = tmp___5;
  tmp___6 = ldv_zalloc(8UL);
  ldvarg85 = (loff_t *)tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    dfs_file_write(dfs_fops_group2, (char const *)ldvarg90, ldvarg89, ldvarg88);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    dfs_file_write(dfs_fops_group2, (char const *)ldvarg90, ldvarg89, ldvarg88);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_26552;
  case 1: ;
  if (ldv_state_variable_4 == 2) {
    dfs_file_read(dfs_fops_group2, ldvarg87, ldvarg86, ldvarg85);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_26552;
  case 2: ;
  if (ldv_state_variable_4 == 2) {
    no_llseek(dfs_fops_group2, ldvarg84, ldvarg83);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_26552;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_4 = simple_open(dfs_fops_group1, dfs_fops_group2);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26552;
  case 4: ;
  if (ldv_state_variable_4 == 2) {
    ldv_release_4();
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26552;
  default:
  ldv_stop();
  }
  ldv_26552: ;
  return;
}
}
void *ldv_kmem_cache_alloc_281(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_vmalloc_284(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
void *ldv_kmem_cache_alloc_302(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_305(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_306(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_307(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_308(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_309(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void *ldv_kmem_cache_alloc_310(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static struct ubi_vid_hdr *ubi_zalloc_vid_hdr___4(struct ubi_device const *ubi ,
                                                           gfp_t gfp_flags )
{
  void *vid_hdr ;
  {
  vid_hdr = kzalloc((size_t )ubi->vid_hdr_alsize, gfp_flags);
  if ((unsigned long )vid_hdr == (unsigned long )((void *)0)) {
    return ((struct ubi_vid_hdr *)0);
  } else {
  }
  return ((struct ubi_vid_hdr *)vid_hdr + (unsigned long )ubi->vid_hdr_shift);
}
}
size_t ubi_calc_fm_size(struct ubi_device *ubi )
{
  size_t size ;
  int __y ;
  {
  size = ((((unsigned long )ubi->peb_count + 266UL) * 2UL + (unsigned long )ubi->peb_count) + 1026UL) * 4UL;
  __y = ubi->leb_size;
  return ((((size_t )(__y + -1) + size) / (size_t )__y) * (size_t )__y);
}
}
static struct ubi_vid_hdr *new_fm_vhdr(struct ubi_device *ubi , int vol_id )
{
  struct ubi_vid_hdr *new ;
  __u32 tmp ;
  {
  new = ubi_zalloc_vid_hdr___4((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )new == (unsigned long )((struct ubi_vid_hdr *)0)) {
    goto out;
  } else {
  }
  new->vol_type = 1U;
  tmp = __fswab32((__u32 )vol_id);
  new->vol_id = tmp;
  new->compat = 1U;
  out: ;
  return (new);
}
}
static int add_aeb(struct ubi_attach_info *ai , struct list_head *list , int pnum ,
                   int ec , int scrub )
{
  struct ubi_ainf_peb *aeb ;
  void *tmp ;
  {
  tmp = ldv_kmem_cache_alloc_305(ai->aeb_slab_cache, 208U);
  aeb = (struct ubi_ainf_peb *)tmp;
  if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    return (-12);
  } else {
  }
  aeb->pnum = pnum;
  aeb->ec = ec;
  aeb->lnum = -1;
  aeb->scrub = (unsigned char )scrub;
  aeb->sqnum = 0ULL;
  aeb->copy_flag = 0U;
  ai->ec_sum = ai->ec_sum + (uint64_t )aeb->ec;
  ai->ec_count = ai->ec_count + 1;
  if (ai->max_ec < aeb->ec) {
    ai->max_ec = aeb->ec;
  } else {
  }
  if (ai->min_ec > aeb->ec) {
    ai->min_ec = aeb->ec;
  } else {
  }
  list_add_tail(& aeb->u.list, list);
  return (0);
}
}
static struct ubi_ainf_volume *add_vol(struct ubi_attach_info *ai , int vol_id , int used_ebs ,
                                       int data_pad , u8 vol_type , int last_eb_bytes )
{
  struct ubi_ainf_volume *av ;
  struct rb_node **p ;
  struct rb_node *parent ;
  struct rb_node const *__mptr ;
  void *tmp ;
  int tmp___0 ;
  struct rb_root __constr_expr_0 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  {
  p = & ai->volumes.rb_node;
  parent = (struct rb_node *)0;
  goto ldv_26206;
  ldv_26205:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  if (av->vol_id > vol_id) {
    p = & (*p)->rb_left;
  } else {
    p = & (*p)->rb_right;
  }
  ldv_26206: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26205;
  } else {
  }
  tmp = kmalloc(64UL, 208U);
  av = (struct ubi_ainf_volume *)tmp;
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto out;
  } else {
  }
  tmp___0 = 0;
  av->leb_count = tmp___0;
  av->highest_lnum = tmp___0;
  av->vol_id = vol_id;
  av->used_ebs = used_ebs;
  av->data_pad = data_pad;
  av->last_data_size = last_eb_bytes;
  av->compat = 0;
  av->vol_type = (int )vol_type;
  __constr_expr_0.rb_node = (struct rb_node *)0;
  av->root = __constr_expr_0;
  descriptor.modname = "ubi";
  descriptor.function = "add_vol";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): found volume (ID %i)\n";
  descriptor.lineno = 211U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): found volume (ID %i)\n",
                       tmp___1->pid, vol_id);
  } else {
  }
  rb_link_node(& av->rb, parent, p);
  rb_insert_color(& av->rb, & ai->volumes);
  out: ;
  return (av);
}
}
static void assign_aeb_to_av(struct ubi_attach_info *ai , struct ubi_ainf_peb *aeb ,
                             struct ubi_ainf_volume *av )
{
  struct ubi_ainf_peb *tmp_aeb ;
  struct rb_node **p ;
  struct rb_node *parent ;
  struct rb_node const *__mptr ;
  {
  p = & ai->volumes.rb_node;
  parent = (struct rb_node *)0;
  p = & av->root.rb_node;
  goto ldv_26222;
  ldv_26224:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  if (aeb->lnum != tmp_aeb->lnum) {
    if (aeb->lnum < tmp_aeb->lnum) {
      p = & (*p)->rb_left;
    } else {
      p = & (*p)->rb_right;
    }
    goto ldv_26222;
  } else {
    goto ldv_26223;
  }
  ldv_26222: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26224;
  } else {
  }
  ldv_26223:
  list_del(& aeb->u.list);
  av->leb_count = av->leb_count + 1;
  rb_link_node(& aeb->u.rb, parent, p);
  rb_insert_color(& aeb->u.rb, & av->root);
  return;
}
}
static int update_vol(struct ubi_device *ubi , struct ubi_attach_info *ai , struct ubi_ainf_volume *av ,
                      struct ubi_vid_hdr *new_vh , struct ubi_ainf_peb *new_aeb )
{
  struct rb_node **p ;
  struct rb_node *parent ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *victim ;
  int cmp_res ;
  struct rb_node const *__mptr ;
  __u32 tmp ;
  __u32 tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___8 ;
  long tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  {
  p = & av->root.rb_node;
  parent = (struct rb_node *)0;
  goto ldv_26239;
  ldv_26243:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  tmp___0 = __fswab32(new_vh->lnum);
  if (tmp___0 != (unsigned int )aeb->lnum) {
    tmp = __fswab32(new_vh->lnum);
    if (tmp < (unsigned int )aeb->lnum) {
      p = & (*p)->rb_left;
    } else {
      p = & (*p)->rb_right;
    }
    goto ldv_26239;
  } else {
  }
  if (aeb->pnum == new_aeb->pnum) {
    tmp___2 = ldv__builtin_expect(aeb->lnum != new_aeb->lnum, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "update_vol", 293, tmp___1->pid);
      dump_stack();
    } else {
    }
    kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
    return (0);
  } else {
  }
  cmp_res = ubi_compare_lebs(ubi, (struct ubi_ainf_peb const *)aeb, new_aeb->pnum,
                             (struct ubi_vid_hdr const *)new_vh);
  if (cmp_res < 0) {
    return (cmp_res);
  } else {
  }
  if (cmp_res & 1) {
    tmp___3 = ldv_kmem_cache_alloc_306(ai->aeb_slab_cache, 208U);
    victim = (struct ubi_ainf_peb *)tmp___3;
    if ((unsigned long )victim == (unsigned long )((struct ubi_ainf_peb *)0)) {
      return (-12);
    } else {
    }
    victim->ec = aeb->ec;
    victim->pnum = aeb->pnum;
    list_add_tail(& victim->u.list, & ai->erase);
    tmp___5 = __fswab32(new_vh->lnum);
    if ((unsigned int )av->highest_lnum == tmp___5) {
      tmp___4 = __fswab32(new_vh->data_size);
      av->last_data_size = (int )tmp___4;
    } else {
    }
    descriptor.modname = "ubi";
    descriptor.function = "update_vol";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
    descriptor.format = "UBI DBG bld (pid %d): vol %i: AEB %i\'s PEB %i is the newer\n";
    descriptor.lineno = 319U;
    descriptor.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = get_current();
      __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): vol %i: AEB %i\'s PEB %i is the newer\n",
                         tmp___6->pid, av->vol_id, aeb->lnum, new_aeb->pnum);
    } else {
    }
    aeb->ec = new_aeb->ec;
    aeb->pnum = new_aeb->pnum;
    aeb->copy_flag = new_vh->copy_flag;
    aeb->scrub = new_aeb->scrub;
    kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
  } else {
    descriptor___0.modname = "ubi";
    descriptor___0.function = "update_vol";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
    descriptor___0.format = "UBI DBG bld (pid %d): vol %i: AEB %i\'s PEB %i is old, dropping it\n";
    descriptor___0.lineno = 330U;
    descriptor___0.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): vol %i: AEB %i\'s PEB %i is old, dropping it\n",
                         tmp___8->pid, av->vol_id, aeb->lnum, new_aeb->pnum);
    } else {
    }
    list_add_tail(& new_aeb->u.list, & ai->erase);
  }
  return (0);
  ldv_26239: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26243;
  } else {
  }
  tmp___12 = __fswab32(new_vh->lnum);
  if ((unsigned int )av->highest_lnum <= tmp___12) {
    tmp___10 = __fswab32(new_vh->lnum);
    av->highest_lnum = (int )tmp___10;
    tmp___11 = __fswab32(new_vh->data_size);
    av->last_data_size = (int )tmp___11;
  } else {
  }
  if (av->vol_type == 4) {
    tmp___13 = __fswab32(new_vh->used_ebs);
    av->used_ebs = (int )tmp___13;
  } else {
  }
  av->leb_count = av->leb_count + 1;
  rb_link_node(& new_aeb->u.rb, parent, p);
  rb_insert_color(& new_aeb->u.rb, & av->root);
  return (0);
}
}
static int process_pool_aeb(struct ubi_device *ubi , struct ubi_attach_info *ai ,
                            struct ubi_vid_hdr *new_vh , struct ubi_ainf_peb *new_aeb )
{
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_volume *tmp_av ;
  struct rb_node **p ;
  struct rb_node *parent ;
  int found ;
  __u32 tmp ;
  __u32 tmp___0 ;
  struct rb_node const *__mptr ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  struct task_struct *tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  tmp_av = (struct ubi_ainf_volume *)0;
  p = & ai->volumes.rb_node;
  parent = (struct rb_node *)0;
  found = 0;
  tmp = __fswab32(new_vh->vol_id);
  if (tmp == 2147479552U) {
    kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
    return (0);
  } else {
    tmp___0 = __fswab32(new_vh->vol_id);
    if (tmp___0 == 2147479553U) {
      kmem_cache_free(ai->aeb_slab_cache, (void *)new_aeb);
      return (0);
    } else {
    }
  }
  goto ldv_26260;
  ldv_26259:
  parent = *p;
  __mptr = (struct rb_node const *)parent;
  tmp_av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  tmp___2 = __fswab32(new_vh->vol_id);
  if (tmp___2 > (unsigned int )tmp_av->vol_id) {
    p = & (*p)->rb_left;
  } else {
    tmp___1 = __fswab32(new_vh->vol_id);
    if (tmp___1 < (unsigned int )tmp_av->vol_id) {
      p = & (*p)->rb_right;
    } else {
      found = 1;
      goto ldv_26258;
    }
  }
  ldv_26260: ;
  if ((unsigned long )*p != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26259;
  } else {
  }
  ldv_26258: ;
  if (found != 0) {
    av = tmp_av;
  } else {
    printk("\vUBI error: %s: orphaned volume in fastmap pool!\n", "process_pool_aeb");
    return (2);
  }
  tmp___4 = __fswab32(new_vh->vol_id);
  tmp___5 = ldv__builtin_expect(tmp___4 != (unsigned int )av->vol_id, 0L);
  if (tmp___5 != 0L) {
    tmp___3 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "process_pool_aeb", 400,
           tmp___3->pid);
    dump_stack();
  } else {
  }
  tmp___6 = update_vol(ubi, ai, av, new_vh, new_aeb);
  return (tmp___6);
}
}
static void unmap_peb(struct ubi_attach_info *ai , int pnum )
{
  struct ubi_ainf_volume *av ;
  struct rb_node *node ;
  struct rb_node *node2 ;
  struct ubi_ainf_peb *aeb ;
  struct rb_node const *__mptr ;
  struct rb_node const *__mptr___0 ;
  {
  node = rb_first((struct rb_root const *)(& ai->volumes));
  goto ldv_26278;
  ldv_26277:
  __mptr = (struct rb_node const *)node;
  av = (struct ubi_ainf_volume *)__mptr + 0xffffffffffffffe0UL;
  node2 = rb_first((struct rb_root const *)(& av->root));
  goto ldv_26275;
  ldv_26274:
  __mptr___0 = (struct rb_node const *)node2;
  aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  if (aeb->pnum == pnum) {
    rb_erase(& aeb->u.rb, & av->root);
    kmem_cache_free(ai->aeb_slab_cache, (void *)aeb);
    return;
  } else {
  }
  node2 = rb_next((struct rb_node const *)node2);
  ldv_26275: ;
  if ((unsigned long )node2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26274;
  } else {
  }
  node = rb_next((struct rb_node const *)node);
  ldv_26278: ;
  if ((unsigned long )node != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26277;
  } else {
  }
  return;
}
}
static int scan_pool(struct ubi_device *ubi , struct ubi_attach_info *ai , int *pebs ,
                     int pool_size , unsigned long long *max_sqnum , struct list_head *eba_orphans ,
                     struct list_head *free )
{
  struct ubi_vid_hdr *vh ;
  struct ubi_ec_hdr *ech___0 ;
  struct ubi_ainf_peb *new_aeb ;
  struct ubi_ainf_peb *tmp_aeb ;
  int i ;
  int pnum ;
  int err ;
  int found_orphan ;
  int ret ;
  void *tmp ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int scrub ;
  int image_seq ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  unsigned long long ec ;
  __u64 tmp___6 ;
  struct _ddebug descriptor___0 ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___11 ;
  __u64 tmp___12 ;
  __u32 tmp___13 ;
  __u64 tmp___14 ;
  {
  ret = 0;
  tmp = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ech___0 = (struct ubi_ec_hdr *)tmp;
  if ((unsigned long )ech___0 == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  vh = ubi_zalloc_vid_hdr___4((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )vh == (unsigned long )((struct ubi_vid_hdr *)0)) {
    kfree((void const *)ech___0);
    return (-12);
  } else {
  }
  descriptor.modname = "ubi";
  descriptor.function = "scan_pool";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): scanning fastmap pool: size = %i\n";
  descriptor.lineno = 466U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): scanning fastmap pool: size = %i\n",
                       tmp___0->pid, pool_size);
  } else {
  }
  i = 0;
  goto ldv_26315;
  ldv_26314:
  scrub = 0;
  tmp___2 = __fswab32((unsigned int )*(pebs + (unsigned long )i));
  pnum = (int )tmp___2;
  tmp___3 = ubi_io_is_bad((struct ubi_device const *)ubi, pnum);
  if (tmp___3 != 0) {
    printk("\vUBI error: %s: bad PEB in fastmap pool!\n", "scan_pool");
    ret = 2;
    goto out;
  } else {
  }
  err = ubi_io_read_ec_hdr(ubi, pnum, ech___0, 0);
  if (err != 0 && err != 5) {
    printk("\vUBI error: %s: unable to read EC header! PEB:%i err:%i\n", "scan_pool",
           pnum, err);
    ret = err <= 0 ? err : 2;
    goto out;
  } else
  if (ret == 5) {
    scrub = 1;
  } else {
  }
  tmp___4 = __fswab32(ech___0->image_seq);
  image_seq = (int )tmp___4;
  if (image_seq != 0 && ubi->image_seq != image_seq) {
    tmp___5 = __fswab32(ech___0->image_seq);
    printk("\vUBI error: %s: bad image seq: 0x%x, expected: 0x%x\n", "scan_pool",
           tmp___5, ubi->image_seq);
    ret = 2;
    goto out;
  } else {
  }
  err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
  if (err == 1 || err == 2) {
    tmp___6 = __fswab64(ech___0->ec);
    ec = tmp___6;
    unmap_peb(ai, pnum);
    descriptor___0.modname = "ubi";
    descriptor___0.function = "scan_pool";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
    descriptor___0.format = "UBI DBG bld (pid %d): Adding PEB to free: %i\n";
    descriptor___0.lineno = 510U;
    descriptor___0.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = get_current();
      __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): Adding PEB to free: %i\n",
                         tmp___7->pid, pnum);
    } else {
    }
    if (err == 2) {
      add_aeb(ai, free, pnum, (int )ec, 1);
    } else {
      add_aeb(ai, free, pnum, (int )ec, 0);
    }
    goto ldv_26305;
  } else
  if (err == 0 || err == 5) {
    descriptor___1.modname = "ubi";
    descriptor___1.function = "scan_pool";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
    descriptor___1.format = "UBI DBG bld (pid %d): Found non empty PEB:%i in pool\n";
    descriptor___1.lineno = 517U;
    descriptor___1.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = get_current();
      __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): Found non empty PEB:%i in pool\n",
                         tmp___9->pid, pnum);
    } else {
    }
    if (err == 5) {
      scrub = 1;
    } else {
    }
    found_orphan = 0;
    __mptr = (struct list_head const *)eba_orphans->next;
    tmp_aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
    goto ldv_26313;
    ldv_26312: ;
    if (tmp_aeb->pnum == pnum) {
      found_orphan = 1;
      goto ldv_26311;
    } else {
    }
    __mptr___0 = (struct list_head const *)tmp_aeb->u.list.next;
    tmp_aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
    ldv_26313: ;
    if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )eba_orphans) {
      goto ldv_26312;
    } else {
    }
    ldv_26311: ;
    if (found_orphan != 0) {
      list_del(& tmp_aeb->u.list);
      kmem_cache_free(ai->aeb_slab_cache, (void *)tmp_aeb);
    } else {
    }
    tmp___11 = ldv_kmem_cache_alloc_307(ai->aeb_slab_cache, 208U);
    new_aeb = (struct ubi_ainf_peb *)tmp___11;
    if ((unsigned long )new_aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
      ret = -12;
      goto out;
    } else {
    }
    tmp___12 = __fswab64(ech___0->ec);
    new_aeb->ec = (int )tmp___12;
    new_aeb->pnum = pnum;
    tmp___13 = __fswab32(vh->lnum);
    new_aeb->lnum = (int )tmp___13;
    tmp___14 = __fswab64(vh->sqnum);
    new_aeb->sqnum = tmp___14;
    new_aeb->copy_flag = vh->copy_flag;
    new_aeb->scrub = (unsigned char )scrub;
    if (*max_sqnum < new_aeb->sqnum) {
      *max_sqnum = new_aeb->sqnum;
    } else {
    }
    err = process_pool_aeb(ubi, ai, vh, new_aeb);
    if (err != 0) {
      ret = err <= 0 ? err : 2;
      goto out;
    } else {
    }
  } else {
    printk("\vUBI error: %s: fastmap pool PEBs contains damaged PEBs!\n", "scan_pool");
    ret = err <= 0 ? err : 2;
    goto out;
  }
  ldv_26305:
  i = i + 1;
  ldv_26315: ;
  if (i < pool_size) {
    goto ldv_26314;
  } else {
  }
  out:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vh);
  kfree((void const *)ech___0);
  return (ret);
}
}
static int count_fastmap_pebs(struct ubi_attach_info *ai )
{
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_volume *av ;
  struct rb_node *rb1 ;
  struct rb_node *rb2 ;
  int n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct rb_node const *__mptr___3 ;
  struct rb_node const *__mptr___4 ;
  struct rb_node const *__mptr___5 ;
  struct rb_node const *__mptr___6 ;
  {
  n = 0;
  __mptr = (struct list_head const *)ai->erase.next;
  aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  goto ldv_26330;
  ldv_26329:
  n = n + 1;
  __mptr___0 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  ldv_26330: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->erase)) {
    goto ldv_26329;
  } else {
  }
  __mptr___1 = (struct list_head const *)ai->free.next;
  aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  goto ldv_26337;
  ldv_26336:
  n = n + 1;
  __mptr___2 = (struct list_head const *)aeb->u.list.next;
  aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  ldv_26337: ;
  if ((unsigned long )(& aeb->u.list) != (unsigned long )(& ai->free)) {
    goto ldv_26336;
  } else {
  }
  rb1 = rb_first((struct rb_root const *)(& ai->volumes));
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___3 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___3 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  goto ldv_26351;
  ldv_26350:
  rb2 = rb_first((struct rb_root const *)(& av->root));
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___4 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___4 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  goto ldv_26348;
  ldv_26347:
  n = n + 1;
  rb2 = rb_next((struct rb_node const *)rb2);
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    __mptr___5 = (struct rb_node const *)rb2;
    aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  } else {
    aeb = (struct ubi_ainf_peb *)0;
  }
  ldv_26348: ;
  if ((unsigned long )rb2 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26347;
  } else {
  }
  rb1 = rb_next((struct rb_node const *)rb1);
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    __mptr___6 = (struct rb_node const *)rb1;
    av = (struct ubi_ainf_volume *)__mptr___6 + 0xffffffffffffffe0UL;
  } else {
    av = (struct ubi_ainf_volume *)0;
  }
  ldv_26351: ;
  if ((unsigned long )rb1 != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26350;
  } else {
  }
  return (n);
}
}
static int ubi_attach_fastmap(struct ubi_device *ubi , struct ubi_attach_info *ai ,
                              struct ubi_fastmap_layout *fm )
{
  struct list_head used ;
  struct list_head eba_orphans ;
  struct list_head free ;
  struct ubi_ainf_volume *av ;
  struct ubi_ainf_peb *aeb ;
  struct ubi_ainf_peb *tmp_aeb ;
  struct ubi_ainf_peb *_tmp_aeb ;
  struct ubi_ec_hdr *ech___0 ;
  struct ubi_fm_sb *fmsb ;
  struct ubi_fm_hdr *fmhdr ;
  struct ubi_fm_scan_pool *fmpl1 ;
  struct ubi_fm_scan_pool *fmpl2 ;
  struct ubi_fm_ec *fmec ;
  struct ubi_fm_volhdr *fmvhdr ;
  struct ubi_fm_eba *fm_eba ;
  int ret ;
  int i ;
  int j ;
  int pool_size ;
  int wl_pool_size ;
  size_t fm_pos ;
  size_t fm_size ;
  unsigned long long max_sqnum ;
  void *fm_raw ;
  struct rb_root __constr_expr_0 ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u16 tmp___5 ;
  __u16 tmp___6 ;
  __u16 tmp___7 ;
  __u16 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  __u32 tmp___17 ;
  __u32 tmp___18 ;
  __u32 tmp___19 ;
  __u32 tmp___20 ;
  u64 tmp___21 ;
  __u32 tmp___22 ;
  __u32 tmp___23 ;
  __u32 tmp___24 ;
  __u32 tmp___25 ;
  __u32 tmp___26 ;
  __u32 tmp___27 ;
  __u32 tmp___28 ;
  __u32 tmp___29 ;
  __u32 tmp___30 ;
  __u32 tmp___31 ;
  __u32 tmp___32 ;
  __u32 tmp___33 ;
  int pnum ;
  __u32 tmp___34 ;
  __u32 tmp___35 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___36 ;
  __u32 tmp___37 ;
  unsigned char tmp___38 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___39 ;
  long tmp___40 ;
  __u32 tmp___41 ;
  void *tmp___42 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int err ;
  int tmp___43 ;
  __u64 tmp___44 ;
  struct list_head const *__mptr___3 ;
  __u32 tmp___45 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct task_struct *tmp___46 ;
  int tmp___47 ;
  long tmp___48 ;
  struct task_struct *tmp___49 ;
  int tmp___50 ;
  long tmp___51 ;
  struct task_struct *tmp___52 ;
  int tmp___53 ;
  long tmp___54 ;
  int __ret_warn_on ;
  int tmp___55 ;
  long tmp___56 ;
  long tmp___57 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  struct list_head const *__mptr___9 ;
  struct list_head const *__mptr___10 ;
  struct list_head const *__mptr___11 ;
  struct list_head const *__mptr___12 ;
  struct list_head const *__mptr___13 ;
  struct list_head const *__mptr___14 ;
  struct list_head const *__mptr___15 ;
  {
  fm_pos = 0UL;
  fm_size = ubi->fm_size;
  max_sqnum = 0ULL;
  fm_raw = ubi->fm_buf;
  INIT_LIST_HEAD(& used);
  INIT_LIST_HEAD(& free);
  INIT_LIST_HEAD(& eba_orphans);
  INIT_LIST_HEAD(& ai->corr);
  INIT_LIST_HEAD(& ai->free);
  INIT_LIST_HEAD(& ai->erase);
  INIT_LIST_HEAD(& ai->alien);
  __constr_expr_0.rb_node = (struct rb_node *)0;
  ai->volumes = __constr_expr_0;
  ai->min_ec = 2147483647;
  ai->aeb_slab_cache = kmem_cache_create("ubi_ainf_peb_slab", 56UL, 0UL, 0UL, (void (*)(void * ))0);
  if ((unsigned long )ai->aeb_slab_cache == (unsigned long )((struct kmem_cache *)0)) {
    ret = -12;
    goto fail;
  } else {
  }
  fmsb = (struct ubi_fm_sb *)fm_raw;
  ai->max_sqnum = fmsb->sqnum;
  fm_pos = fm_pos + 312UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  fmhdr = (struct ubi_fm_hdr *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 32UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___0 = __fswab32(fmhdr->magic);
  if (tmp___0 != 3568840439U) {
    tmp = __fswab32(fmhdr->magic);
    printk("\vUBI error: %s: bad fastmap header magic: 0x%x, expected: 0x%x\n", "ubi_attach_fastmap",
           tmp, 3568840439U);
    goto fail_bad;
  } else {
  }
  fmpl1 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 1048UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___2 = __fswab32(fmpl1->magic);
  if (tmp___2 != 1739541768U) {
    tmp___1 = __fswab32(fmpl1->magic);
    printk("\vUBI error: %s: bad fastmap pool magic: 0x%x, expected: 0x%x\n", "ubi_attach_fastmap",
           tmp___1, 1739541768);
    goto fail_bad;
  } else {
  }
  fmpl2 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 1048UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___4 = __fswab32(fmpl2->magic);
  if (tmp___4 != 1739541768U) {
    tmp___3 = __fswab32(fmpl2->magic);
    printk("\vUBI error: %s: bad fastmap pool magic: 0x%x, expected: 0x%x\n", "ubi_attach_fastmap",
           tmp___3, 1739541768);
    goto fail_bad;
  } else {
  }
  tmp___5 = __fswab16((int )fmpl1->size);
  pool_size = (int )tmp___5;
  tmp___6 = __fswab16((int )fmpl2->size);
  wl_pool_size = (int )tmp___6;
  tmp___7 = __fswab16((int )fmpl1->max_size);
  fm->max_pool_size = (int )tmp___7;
  tmp___8 = __fswab16((int )fmpl2->max_size);
  fm->max_wl_pool_size = (int )tmp___8;
  if (pool_size > 256 || pool_size < 0) {
    printk("\vUBI error: %s: bad pool size: %i\n", "ubi_attach_fastmap", pool_size);
    goto fail_bad;
  } else {
  }
  if (wl_pool_size > 256 || wl_pool_size < 0) {
    printk("\vUBI error: %s: bad WL pool size: %i\n", "ubi_attach_fastmap", wl_pool_size);
    goto fail_bad;
  } else {
  }
  if (fm->max_pool_size > 256 || fm->max_pool_size < 0) {
    printk("\vUBI error: %s: bad maximal pool size: %i\n", "ubi_attach_fastmap", fm->max_pool_size);
    goto fail_bad;
  } else {
  }
  if (fm->max_wl_pool_size > 256 || fm->max_wl_pool_size < 0) {
    printk("\vUBI error: %s: bad maximal WL pool size: %i\n", "ubi_attach_fastmap",
           fm->max_wl_pool_size);
    goto fail_bad;
  } else {
  }
  i = 0;
  goto ldv_26387;
  ldv_26386:
  fmec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 8UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___9 = __fswab32(fmec->ec);
  tmp___10 = __fswab32(fmec->pnum);
  add_aeb(ai, & ai->free, (int )tmp___10, (int )tmp___9, 0);
  i = i + 1;
  ldv_26387:
  tmp___11 = __fswab32(fmhdr->free_peb_count);
  if ((unsigned int )i < tmp___11) {
    goto ldv_26386;
  } else {
  }
  i = 0;
  goto ldv_26390;
  ldv_26389:
  fmec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 8UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___12 = __fswab32(fmec->ec);
  tmp___13 = __fswab32(fmec->pnum);
  add_aeb(ai, & used, (int )tmp___13, (int )tmp___12, 0);
  i = i + 1;
  ldv_26390:
  tmp___14 = __fswab32(fmhdr->used_peb_count);
  if ((unsigned int )i < tmp___14) {
    goto ldv_26389;
  } else {
  }
  i = 0;
  goto ldv_26393;
  ldv_26392:
  fmec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 8UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___15 = __fswab32(fmec->ec);
  tmp___16 = __fswab32(fmec->pnum);
  add_aeb(ai, & used, (int )tmp___16, (int )tmp___15, 1);
  i = i + 1;
  ldv_26393:
  tmp___17 = __fswab32(fmhdr->scrub_peb_count);
  if ((unsigned int )i < tmp___17) {
    goto ldv_26392;
  } else {
  }
  i = 0;
  goto ldv_26396;
  ldv_26395:
  fmec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 8UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___18 = __fswab32(fmec->ec);
  tmp___19 = __fswab32(fmec->pnum);
  add_aeb(ai, & ai->erase, (int )tmp___19, (int )tmp___18, 1);
  i = i + 1;
  ldv_26396:
  tmp___20 = __fswab32(fmhdr->erase_peb_count);
  if ((unsigned int )i < tmp___20) {
    goto ldv_26395;
  } else {
  }
  tmp___21 = div_u64(ai->ec_sum, (u32 )ai->ec_count);
  ai->mean_ec = (int )tmp___21;
  tmp___22 = __fswab32(fmhdr->bad_peb_count);
  ai->bad_peb_count = (int )tmp___22;
  i = 0;
  goto ldv_26422;
  ldv_26421:
  fmvhdr = (struct ubi_fm_volhdr *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 32UL;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___24 = __fswab32(fmvhdr->magic);
  if (tmp___24 != 4197912273U) {
    tmp___23 = __fswab32(fmvhdr->magic);
    printk("\vUBI error: %s: bad fastmap vol header magic: 0x%x, expected: 0x%x\n",
           "ubi_attach_fastmap", tmp___23, 4197912273U);
    goto fail_bad;
  } else {
  }
  tmp___25 = __fswab32(fmvhdr->last_eb_bytes);
  tmp___26 = __fswab32(fmvhdr->data_pad);
  tmp___27 = __fswab32(fmvhdr->used_ebs);
  tmp___28 = __fswab32(fmvhdr->vol_id);
  av = add_vol(ai, (int )tmp___28, (int )tmp___27, (int )tmp___26, (int )fmvhdr->vol_type,
               (int )tmp___25);
  if ((unsigned long )av == (unsigned long )((struct ubi_ainf_volume *)0)) {
    goto fail_bad;
  } else {
  }
  ai->vols_found = ai->vols_found + 1;
  tmp___30 = __fswab32(fmvhdr->vol_id);
  if ((unsigned int )ai->highest_vol_id < tmp___30) {
    tmp___29 = __fswab32(fmvhdr->vol_id);
    ai->highest_vol_id = (int )tmp___29;
  } else {
  }
  fm_eba = (struct ubi_fm_eba *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 8UL;
  tmp___31 = __fswab32(fm_eba->reserved_pebs);
  fm_pos = (unsigned long )tmp___31 * 4UL + fm_pos;
  if (fm_pos >= fm_size) {
    goto fail_bad;
  } else {
  }
  tmp___33 = __fswab32(fm_eba->magic);
  if (tmp___33 != 4039131304U) {
    tmp___32 = __fswab32(fm_eba->magic);
    printk("\vUBI error: %s: bad fastmap EBA header magic: 0x%x, expected: 0x%x\n",
           "ubi_attach_fastmap", tmp___32, 4039131304U);
    goto fail_bad;
  } else {
  }
  j = 0;
  goto ldv_26409;
  ldv_26408:
  tmp___34 = __fswab32(fm_eba->pnum[j]);
  pnum = (int )tmp___34;
  tmp___35 = __fswab32(fm_eba->pnum[j]);
  if ((int )tmp___35 < 0) {
    goto ldv_26399;
  } else {
  }
  aeb = (struct ubi_ainf_peb *)0;
  __mptr = (struct list_head const *)used.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr + 0xffffffffffffffe0UL;
  goto ldv_26406;
  ldv_26405: ;
  if (tmp_aeb->pnum == pnum) {
    aeb = tmp_aeb;
    goto ldv_26404;
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp_aeb->u.list.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___0 + 0xffffffffffffffe0UL;
  ldv_26406: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& used)) {
    goto ldv_26405;
  } else {
  }
  ldv_26404: ;
  if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
    tmp___36 = ldv_kmem_cache_alloc_308(ai->aeb_slab_cache, 208U);
    aeb = (struct ubi_ainf_peb *)tmp___36;
    if ((unsigned long )aeb == (unsigned long )((struct ubi_ainf_peb *)0)) {
      ret = -12;
      goto fail;
    } else {
    }
    aeb->lnum = j;
    tmp___37 = __fswab32(fm_eba->pnum[j]);
    aeb->pnum = (int )tmp___37;
    aeb->ec = -1;
    aeb->sqnum = 0ULL;
    tmp___38 = 0U;
    aeb->copy_flag = tmp___38;
    aeb->scrub = tmp___38;
    list_add_tail(& aeb->u.list, & eba_orphans);
    goto ldv_26399;
  } else {
  }
  aeb->lnum = j;
  if (av->highest_lnum <= aeb->lnum) {
    av->highest_lnum = aeb->lnum;
  } else {
  }
  assign_aeb_to_av(ai, aeb, av);
  descriptor.modname = "ubi";
  descriptor.function = "ubi_attach_fastmap";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): inserting PEB:%i (LEB %i) to vol %i\n";
  descriptor.lineno = 839U;
  descriptor.flags = 0U;
  tmp___40 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___40 != 0L) {
    tmp___39 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): inserting PEB:%i (LEB %i) to vol %i\n",
                       tmp___39->pid, aeb->pnum, aeb->lnum, av->vol_id);
  } else {
  }
  ldv_26399:
  j = j + 1;
  ldv_26409:
  tmp___41 = __fswab32(fm_eba->reserved_pebs);
  if ((unsigned int )j < tmp___41) {
    goto ldv_26408;
  } else {
  }
  tmp___42 = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ech___0 = (struct ubi_ec_hdr *)tmp___42;
  if ((unsigned long )ech___0 == (unsigned long )((struct ubi_ec_hdr *)0)) {
    ret = -12;
    goto fail;
  } else {
  }
  __mptr___1 = (struct list_head const *)eba_orphans.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___1 + 0xffffffffffffffe0UL;
  __mptr___2 = (struct list_head const *)tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___2 + 0xffffffffffffffe0UL;
  goto ldv_26419;
  ldv_26418:
  tmp___43 = ubi_io_is_bad((struct ubi_device const *)ubi, tmp_aeb->pnum);
  if (tmp___43 != 0) {
    printk("\vUBI error: %s: bad PEB in fastmap EBA orphan list\n", "ubi_attach_fastmap");
    ret = 2;
    kfree((void const *)ech___0);
    goto fail;
  } else {
  }
  err = ubi_io_read_ec_hdr(ubi, tmp_aeb->pnum, ech___0, 0);
  if (err != 0 && err != 5) {
    printk("\vUBI error: %s: unable to read EC header! PEB:%i err:%i\n", "ubi_attach_fastmap",
           tmp_aeb->pnum, err);
    ret = err <= 0 ? err : 2;
    kfree((void const *)ech___0);
    goto fail;
  } else
  if (err == 5) {
    tmp_aeb->scrub = 1U;
  } else {
  }
  tmp___44 = __fswab64(ech___0->ec);
  tmp_aeb->ec = (int )tmp___44;
  assign_aeb_to_av(ai, tmp_aeb, av);
  tmp_aeb = _tmp_aeb;
  __mptr___3 = (struct list_head const *)_tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___3 + 0xffffffffffffffe0UL;
  ldv_26419: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& eba_orphans)) {
    goto ldv_26418;
  } else {
  }
  kfree((void const *)ech___0);
  i = i + 1;
  ldv_26422:
  tmp___45 = __fswab32(fmhdr->vol_count);
  if ((unsigned int )i < tmp___45) {
    goto ldv_26421;
  } else {
  }
  ret = scan_pool(ubi, ai, (int *)(& fmpl1->pebs), pool_size, & max_sqnum, & eba_orphans,
                  & free);
  if (ret != 0) {
    goto fail;
  } else {
  }
  ret = scan_pool(ubi, ai, (int *)(& fmpl2->pebs), wl_pool_size, & max_sqnum, & eba_orphans,
                  & free);
  if (ret != 0) {
    goto fail;
  } else {
  }
  if (ai->max_sqnum < max_sqnum) {
    ai->max_sqnum = max_sqnum;
  } else {
  }
  __mptr___4 = (struct list_head const *)free.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___4 + 0xffffffffffffffe0UL;
  __mptr___5 = (struct list_head const *)tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___5 + 0xffffffffffffffe0UL;
  goto ldv_26431;
  ldv_26430:
  list_move_tail(& tmp_aeb->u.list, & ai->free);
  tmp_aeb = _tmp_aeb;
  __mptr___6 = (struct list_head const *)_tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___6 + 0xffffffffffffffe0UL;
  ldv_26431: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& free)) {
    goto ldv_26430;
  } else {
  }
  tmp___47 = list_empty((struct list_head const *)(& used));
  tmp___48 = ldv__builtin_expect(tmp___47 == 0, 0L);
  if (tmp___48 != 0L) {
    tmp___46 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_attach_fastmap", 893,
           tmp___46->pid);
    dump_stack();
  } else {
  }
  tmp___50 = list_empty((struct list_head const *)(& eba_orphans));
  tmp___51 = ldv__builtin_expect(tmp___50 == 0, 0L);
  if (tmp___51 != 0L) {
    tmp___49 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_attach_fastmap", 894,
           tmp___49->pid);
    dump_stack();
  } else {
  }
  tmp___53 = list_empty((struct list_head const *)(& free));
  tmp___54 = ldv__builtin_expect(tmp___53 == 0, 0L);
  if (tmp___54 != 0L) {
    tmp___52 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_attach_fastmap", 895,
           tmp___52->pid);
    dump_stack();
  } else {
  }
  tmp___55 = count_fastmap_pebs(ai);
  __ret_warn_on = tmp___55 != (ubi->peb_count - ai->bad_peb_count) - fm->used_blocks;
  tmp___56 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___56 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared",
                       904);
  } else {
  }
  tmp___57 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___57 != 0L) {
    goto fail_bad;
  } else {
  }
  return (0);
  fail_bad:
  ret = 2;
  fail:
  __mptr___7 = (struct list_head const *)used.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___7 + 0xffffffffffffffe0UL;
  __mptr___8 = (struct list_head const *)tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___8 + 0xffffffffffffffe0UL;
  goto ldv_26442;
  ldv_26441:
  list_del(& tmp_aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)tmp_aeb);
  tmp_aeb = _tmp_aeb;
  __mptr___9 = (struct list_head const *)_tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___9 + 0xffffffffffffffe0UL;
  ldv_26442: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& used)) {
    goto ldv_26441;
  } else {
  }
  __mptr___10 = (struct list_head const *)eba_orphans.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___10 + 0xffffffffffffffe0UL;
  __mptr___11 = (struct list_head const *)tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___11 + 0xffffffffffffffe0UL;
  goto ldv_26451;
  ldv_26450:
  list_del(& tmp_aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)tmp_aeb);
  tmp_aeb = _tmp_aeb;
  __mptr___12 = (struct list_head const *)_tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___12 + 0xffffffffffffffe0UL;
  ldv_26451: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& eba_orphans)) {
    goto ldv_26450;
  } else {
  }
  __mptr___13 = (struct list_head const *)free.next;
  tmp_aeb = (struct ubi_ainf_peb *)__mptr___13 + 0xffffffffffffffe0UL;
  __mptr___14 = (struct list_head const *)tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___14 + 0xffffffffffffffe0UL;
  goto ldv_26460;
  ldv_26459:
  list_del(& tmp_aeb->u.list);
  kmem_cache_free(ai->aeb_slab_cache, (void *)tmp_aeb);
  tmp_aeb = _tmp_aeb;
  __mptr___15 = (struct list_head const *)_tmp_aeb->u.list.next;
  _tmp_aeb = (struct ubi_ainf_peb *)__mptr___15 + 0xffffffffffffffe0UL;
  ldv_26460: ;
  if ((unsigned long )(& tmp_aeb->u.list) != (unsigned long )(& free)) {
    goto ldv_26459;
  } else {
  }
  return (ret);
}
}
int ubi_scan_fastmap(struct ubi_device *ubi , struct ubi_attach_info *ai , int fm_anchor )
{
  struct ubi_fm_sb *fmsb ;
  struct ubi_fm_sb *fmsb2 ;
  struct ubi_vid_hdr *vh ;
  struct ubi_ec_hdr *ech___0 ;
  struct ubi_fastmap_layout *fm ;
  int i ;
  int used_blocks ;
  int pnum ;
  int ret ;
  size_t fm_size ;
  __be32 crc ;
  __be32 tmp_crc ;
  unsigned long long sqnum ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  void *tmp___4 ;
  int image_seq ;
  __u32 tmp___5 ;
  int tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u64 tmp___13 ;
  __u64 tmp___14 ;
  __u32 tmp___15 ;
  struct ubi_wl_entry *e ;
  void *tmp___16 ;
  int tmp___17 ;
  __u32 tmp___18 ;
  __u32 tmp___19 ;
  {
  ret = 0;
  sqnum = 0ULL;
  mutex_lock_nested(& ubi->fm_mutex, 0U);
  memset(ubi->fm_buf, 0, ubi->fm_size);
  tmp = kmalloc(312UL, 208U);
  fmsb = (struct ubi_fm_sb *)tmp;
  if ((unsigned long )fmsb == (unsigned long )((struct ubi_fm_sb *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  tmp___0 = kzalloc(400UL, 208U);
  fm = (struct ubi_fastmap_layout *)tmp___0;
  if ((unsigned long )fm == (unsigned long )((struct ubi_fastmap_layout *)0)) {
    ret = -12;
    kfree((void const *)fmsb);
    goto out;
  } else {
  }
  ret = ubi_io_read((struct ubi_device const *)ubi, (void *)fmsb, fm_anchor, ubi->leb_start,
                    312);
  if (ret != 0 && ret != 5) {
    goto free_fm_sb;
  } else
  if (ret == 5) {
    fm->to_be_tortured[0] = 1;
  } else {
  }
  tmp___2 = __fswab32(fmsb->magic);
  if (tmp___2 != 2064766623U) {
    tmp___1 = __fswab32(fmsb->magic);
    printk("\vUBI error: %s: bad super block magic: 0x%x, expected: 0x%x\n", "ubi_scan_fastmap",
           tmp___1, 2064766623);
    ret = 2;
    goto free_fm_sb;
  } else {
  }
  if ((unsigned int )fmsb->version != 1U) {
    printk("\vUBI error: %s: bad fastmap version: %i, expected: %i\n", "ubi_scan_fastmap",
           (int )fmsb->version, 1);
    ret = 2;
    goto free_fm_sb;
  } else {
  }
  tmp___3 = __fswab32(fmsb->used_blocks);
  used_blocks = (int )tmp___3;
  if (used_blocks > 32 || used_blocks <= 0) {
    printk("\vUBI error: %s: number of fastmap blocks is invalid: %i\n", "ubi_scan_fastmap",
           used_blocks);
    ret = 2;
    goto free_fm_sb;
  } else {
  }
  fm_size = (size_t )(ubi->leb_size * used_blocks);
  if (ubi->fm_size != fm_size) {
    printk("\vUBI error: %s: bad fastmap size: %zi, expected: %zi\n", "ubi_scan_fastmap",
           fm_size, ubi->fm_size);
    ret = 2;
    goto free_fm_sb;
  } else {
  }
  tmp___4 = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ech___0 = (struct ubi_ec_hdr *)tmp___4;
  if ((unsigned long )ech___0 == (unsigned long )((struct ubi_ec_hdr *)0)) {
    ret = -12;
    goto free_fm_sb;
  } else {
  }
  vh = ubi_zalloc_vid_hdr___4((struct ubi_device const *)ubi, 208U);
  if ((unsigned long )vh == (unsigned long )((struct ubi_vid_hdr *)0)) {
    ret = -12;
    goto free_hdr;
  } else {
  }
  i = 0;
  goto ldv_26486;
  ldv_26485:
  tmp___5 = __fswab32(fmsb->block_loc[i]);
  pnum = (int )tmp___5;
  tmp___6 = ubi_io_is_bad((struct ubi_device const *)ubi, pnum);
  if (tmp___6 != 0) {
    ret = 2;
    goto free_hdr;
  } else {
  }
  ret = ubi_io_read_ec_hdr(ubi, pnum, ech___0, 0);
  if (ret != 0 && ret != 5) {
    printk("\vUBI error: %s: unable to read fastmap block# %i EC (PEB: %i)\n", "ubi_scan_fastmap",
           i, pnum);
    if (ret > 0) {
      ret = 2;
    } else {
    }
    goto free_hdr;
  } else
  if (ret == 5) {
    fm->to_be_tortured[i] = 1;
  } else {
  }
  tmp___7 = __fswab32(ech___0->image_seq);
  image_seq = (int )tmp___7;
  if (ubi->image_seq == 0) {
    ubi->image_seq = image_seq;
  } else {
  }
  if (image_seq != 0 && ubi->image_seq != image_seq) {
    tmp___8 = __fswab32(ech___0->image_seq);
    printk("\vUBI error: %s: wrong image seq:%d instead of %d\n", "ubi_scan_fastmap",
           tmp___8, ubi->image_seq);
    ret = 2;
    goto free_hdr;
  } else {
  }
  ret = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
  if (ret != 0 && ret != 5) {
    printk("\vUBI error: %s: unable to read fastmap block# %i (PEB: %i)\n", "ubi_scan_fastmap",
           i, pnum);
    goto free_hdr;
  } else {
  }
  if (i == 0) {
    tmp___10 = __fswab32(vh->vol_id);
    if (tmp___10 != 2147479552U) {
      tmp___9 = __fswab32(vh->vol_id);
      printk("\vUBI error: %s: bad fastmap anchor vol_id: 0x%x, expected: 0x%x\n",
             "ubi_scan_fastmap", tmp___9, 2147479552);
      ret = 2;
      goto free_hdr;
    } else {
    }
  } else {
    tmp___12 = __fswab32(vh->vol_id);
    if (tmp___12 != 2147479553U) {
      tmp___11 = __fswab32(vh->vol_id);
      printk("\vUBI error: %s: bad fastmap data vol_id: 0x%x, expected: 0x%x\n", "ubi_scan_fastmap",
             tmp___11, 2147479553);
      ret = 2;
      goto free_hdr;
    } else {
    }
  }
  tmp___14 = __fswab64(vh->sqnum);
  if (tmp___14 > sqnum) {
    tmp___13 = __fswab64(vh->sqnum);
    sqnum = tmp___13;
  } else {
  }
  ret = ubi_io_read((struct ubi_device const *)ubi, ubi->fm_buf + (unsigned long )(ubi->leb_size * i),
                    pnum, ubi->leb_start, ubi->leb_size);
  if (ret != 0 && ret != 5) {
    printk("\vUBI error: %s: unable to read fastmap block# %i (PEB: %i, err: %i)\n",
           "ubi_scan_fastmap", i, pnum, ret);
    goto free_hdr;
  } else {
  }
  i = i + 1;
  ldv_26486: ;
  if (i < used_blocks) {
    goto ldv_26485;
  } else {
  }
  kfree((void const *)fmsb);
  fmsb = (struct ubi_fm_sb *)0;
  fmsb2 = (struct ubi_fm_sb *)ubi->fm_buf;
  tmp___15 = __fswab32(fmsb2->data_crc);
  tmp_crc = tmp___15;
  fmsb2->data_crc = 0U;
  crc = crc32_le(4294967295U, (unsigned char const *)ubi->fm_buf, fm_size);
  if (crc != tmp_crc) {
    printk("\vUBI error: %s: fastmap data CRC is invalid\n", "ubi_scan_fastmap");
    printk("\vUBI error: %s: CRC should be: 0x%x, calc: 0x%x\n", "ubi_scan_fastmap",
           tmp_crc, crc);
    ret = 2;
    goto free_hdr;
  } else {
  }
  fmsb2->sqnum = sqnum;
  fm->used_blocks = used_blocks;
  ret = ubi_attach_fastmap(ubi, ai, fm);
  if (ret != 0) {
    if (ret > 0) {
      ret = 2;
    } else {
    }
    goto free_hdr;
  } else {
  }
  i = 0;
  goto ldv_26493;
  ldv_26492:
  tmp___16 = ldv_kmem_cache_alloc_309(ubi_wl_entry_slab, 208U);
  e = (struct ubi_wl_entry *)tmp___16;
  if ((unsigned long )e == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto ldv_26490;
    ldv_26489:
    kfree((void const *)fm->e[i]);
    ldv_26490:
    tmp___17 = i;
    i = i - 1;
    if (tmp___17 != 0) {
      goto ldv_26489;
    } else {
    }
    ret = -12;
    goto free_hdr;
  } else {
  }
  tmp___18 = __fswab32(fmsb2->block_loc[i]);
  e->pnum = (int )tmp___18;
  tmp___19 = __fswab32(fmsb2->block_ec[i]);
  e->ec = (int )tmp___19;
  fm->e[i] = e;
  i = i + 1;
  ldv_26493: ;
  if (i < used_blocks) {
    goto ldv_26492;
  } else {
  }
  ubi->fm = fm;
  ubi->fm_pool.max_size = (ubi->fm)->max_pool_size;
  ubi->fm_wl_pool.max_size = (ubi->fm)->max_wl_pool_size;
  printk("\rUBI: attached by fastmap\n");
  printk("\rUBI: fastmap pool size: %d\n", ubi->fm_pool.max_size);
  printk("\rUBI: fastmap WL pool size: %d\n", ubi->fm_wl_pool.max_size);
  ubi->fm_disabled = 0;
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vh);
  kfree((void const *)ech___0);
  out:
  mutex_unlock(& ubi->fm_mutex);
  if (ret == 2) {
    printk("\vUBI error: %s: Attach by fastmap failed, doing a full scan!\n", "ubi_scan_fastmap");
  } else {
  }
  return (ret);
  free_hdr:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, vh);
  kfree((void const *)ech___0);
  free_fm_sb:
  kfree((void const *)fmsb);
  kfree((void const *)fm);
  goto out;
}
}
static int ubi_write_fastmap(struct ubi_device *ubi , struct ubi_fastmap_layout *new_fm )
{
  size_t fm_pos ;
  void *fm_raw ;
  struct ubi_fm_sb *fmsb ;
  struct ubi_fm_hdr *fmh ;
  struct ubi_fm_scan_pool *fmpl1 ;
  struct ubi_fm_scan_pool *fmpl2 ;
  struct ubi_fm_ec *fec ;
  struct ubi_fm_volhdr *fvh ;
  struct ubi_fm_eba *feba ;
  struct rb_node *node ;
  struct ubi_wl_entry *wl_e ;
  struct ubi_volume *vol ;
  struct ubi_vid_hdr *avhdr ;
  struct ubi_vid_hdr *dvhdr ;
  struct ubi_work *ubi_wrk ;
  int ret ;
  int i ;
  int j ;
  int free_peb_count ;
  int used_peb_count ;
  int vol_count ;
  int scrub_peb_count ;
  int erase_peb_count ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  __u32 tmp___3 ;
  __u16 tmp___4 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  __u16 tmp___7 ;
  __u16 tmp___8 ;
  __u32 tmp___9 ;
  struct rb_node const *__mptr ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  struct task_struct *tmp___12 ;
  long tmp___13 ;
  __u32 tmp___14 ;
  struct rb_node const *__mptr___0 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  struct task_struct *tmp___17 ;
  long tmp___18 ;
  __u32 tmp___19 ;
  struct rb_node const *__mptr___1 ;
  __u32 tmp___20 ;
  __u32 tmp___21 ;
  struct task_struct *tmp___22 ;
  long tmp___23 ;
  __u32 tmp___24 ;
  struct list_head const *__mptr___2 ;
  struct task_struct *tmp___25 ;
  long tmp___26 ;
  __u32 tmp___27 ;
  __u32 tmp___28 ;
  struct task_struct *tmp___29 ;
  long tmp___30 ;
  int tmp___31 ;
  struct list_head const *__mptr___3 ;
  __u32 tmp___32 ;
  struct task_struct *tmp___33 ;
  long tmp___34 ;
  __u32 tmp___35 ;
  __u32 tmp___36 ;
  __u32 tmp___37 ;
  __u32 tmp___38 ;
  struct task_struct *tmp___39 ;
  long tmp___40 ;
  long tmp___41 ;
  struct task_struct *tmp___42 ;
  long tmp___43 ;
  __u32 tmp___44 ;
  __u32 tmp___45 ;
  __u32 tmp___46 ;
  __u32 tmp___47 ;
  unsigned long long tmp___48 ;
  __u64 tmp___49 ;
  struct _ddebug descriptor ;
  struct task_struct *tmp___50 ;
  long tmp___51 ;
  __u32 tmp___52 ;
  __u32 tmp___53 ;
  u32 tmp___54 ;
  __u32 tmp___55 ;
  unsigned long long tmp___56 ;
  __u64 tmp___57 ;
  __u32 tmp___58 ;
  struct _ddebug descriptor___0 ;
  __u64 tmp___59 ;
  struct task_struct *tmp___60 ;
  long tmp___61 ;
  struct task_struct *tmp___62 ;
  long tmp___63 ;
  struct _ddebug descriptor___1 ;
  struct task_struct *tmp___64 ;
  long tmp___65 ;
  {
  fm_pos = 0UL;
  fm_raw = ubi->fm_buf;
  memset(ubi->fm_buf, 0, ubi->fm_size);
  avhdr = new_fm_vhdr(ubi, 2147479552);
  if ((unsigned long )avhdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  dvhdr = new_fm_vhdr(ubi, 2147479553);
  if ((unsigned long )dvhdr == (unsigned long )((struct ubi_vid_hdr *)0)) {
    ret = -12;
    goto out_kfree;
  } else {
  }
  spin_lock(& ubi->volumes_lock);
  spin_lock(& ubi->wl_lock);
  fmsb = (struct ubi_fm_sb *)fm_raw;
  fm_pos = fm_pos + 312UL;
  tmp___0 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1200,
           tmp->pid);
    dump_stack();
  } else {
  }
  fmh = (struct ubi_fm_hdr *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 32UL;
  tmp___2 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1204,
           tmp___1->pid);
    dump_stack();
  } else {
  }
  fmsb->magic = 2681606523U;
  fmsb->version = 1U;
  tmp___3 = __fswab32((__u32 )new_fm->used_blocks);
  fmsb->used_blocks = tmp___3;
  fmsb->sqnum = 0ULL;
  fmh->magic = 4147034324U;
  free_peb_count = 0;
  used_peb_count = 0;
  scrub_peb_count = 0;
  erase_peb_count = 0;
  vol_count = 0;
  fmpl1 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 1048UL;
  fmpl1->magic = 139308903U;
  tmp___4 = __fswab16((int )((__u16 )ubi->fm_pool.size));
  fmpl1->size = tmp___4;
  tmp___5 = __fswab16((int )((__u16 )ubi->fm_pool.max_size));
  fmpl1->max_size = tmp___5;
  i = 0;
  goto ldv_26526;
  ldv_26525:
  tmp___6 = __fswab32((__u32 )ubi->fm_pool.pebs[i]);
  fmpl1->pebs[i] = tmp___6;
  i = i + 1;
  ldv_26526: ;
  if (ubi->fm_pool.size > i) {
    goto ldv_26525;
  } else {
  }
  fmpl2 = (struct ubi_fm_scan_pool *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 1048UL;
  fmpl2->magic = 139308903U;
  tmp___7 = __fswab16((int )((__u16 )ubi->fm_wl_pool.size));
  fmpl2->size = tmp___7;
  tmp___8 = __fswab16((int )((__u16 )ubi->fm_wl_pool.max_size));
  fmpl2->max_size = tmp___8;
  i = 0;
  goto ldv_26529;
  ldv_26528:
  tmp___9 = __fswab32((__u32 )ubi->fm_wl_pool.pebs[i]);
  fmpl2->pebs[i] = tmp___9;
  i = i + 1;
  ldv_26529: ;
  if (ubi->fm_wl_pool.size > i) {
    goto ldv_26528;
  } else {
  }
  node = rb_first((struct rb_root const *)(& ubi->free));
  goto ldv_26534;
  ldv_26533:
  __mptr = (struct rb_node const *)node;
  wl_e = (struct ubi_wl_entry *)__mptr;
  fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  tmp___10 = __fswab32((__u32 )wl_e->pnum);
  fec->pnum = tmp___10;
  tmp___11 = __fswab32((__u32 )wl_e->ec);
  fec->ec = tmp___11;
  free_peb_count = free_peb_count + 1;
  fm_pos = fm_pos + 8UL;
  tmp___13 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1246,
           tmp___12->pid);
    dump_stack();
  } else {
  }
  node = rb_next((struct rb_node const *)node);
  ldv_26534: ;
  if ((unsigned long )node != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26533;
  } else {
  }
  tmp___14 = __fswab32((__u32 )free_peb_count);
  fmh->free_peb_count = tmp___14;
  node = rb_first((struct rb_root const *)(& ubi->used));
  goto ldv_26539;
  ldv_26538:
  __mptr___0 = (struct rb_node const *)node;
  wl_e = (struct ubi_wl_entry *)__mptr___0;
  fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  tmp___15 = __fswab32((__u32 )wl_e->pnum);
  fec->pnum = tmp___15;
  tmp___16 = __fswab32((__u32 )wl_e->ec);
  fec->ec = tmp___16;
  used_peb_count = used_peb_count + 1;
  fm_pos = fm_pos + 8UL;
  tmp___18 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1259,
           tmp___17->pid);
    dump_stack();
  } else {
  }
  node = rb_next((struct rb_node const *)node);
  ldv_26539: ;
  if ((unsigned long )node != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26538;
  } else {
  }
  tmp___19 = __fswab32((__u32 )used_peb_count);
  fmh->used_peb_count = tmp___19;
  node = rb_first((struct rb_root const *)(& ubi->scrub));
  goto ldv_26544;
  ldv_26543:
  __mptr___1 = (struct rb_node const *)node;
  wl_e = (struct ubi_wl_entry *)__mptr___1;
  fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
  tmp___20 = __fswab32((__u32 )wl_e->pnum);
  fec->pnum = tmp___20;
  tmp___21 = __fswab32((__u32 )wl_e->ec);
  fec->ec = tmp___21;
  scrub_peb_count = scrub_peb_count + 1;
  fm_pos = fm_pos + 8UL;
  tmp___23 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___23 != 0L) {
    tmp___22 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1272,
           tmp___22->pid);
    dump_stack();
  } else {
  }
  node = rb_next((struct rb_node const *)node);
  ldv_26544: ;
  if ((unsigned long )node != (unsigned long )((struct rb_node *)0)) {
    goto ldv_26543;
  } else {
  }
  tmp___24 = __fswab32((__u32 )scrub_peb_count);
  fmh->scrub_peb_count = tmp___24;
  __mptr___2 = (struct list_head const *)ubi->works.next;
  ubi_wrk = (struct ubi_work *)__mptr___2;
  goto ldv_26551;
  ldv_26550:
  tmp___31 = ubi_is_erase_work(ubi_wrk);
  if (tmp___31 != 0) {
    wl_e = ubi_wrk->e;
    tmp___26 = ldv__builtin_expect((unsigned long )wl_e == (unsigned long )((struct ubi_wl_entry *)0),
                                0L);
    if (tmp___26 != 0L) {
      tmp___25 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1280,
             tmp___25->pid);
      dump_stack();
    } else {
    }
    fec = (struct ubi_fm_ec *)(fm_raw + fm_pos);
    tmp___27 = __fswab32((__u32 )wl_e->pnum);
    fec->pnum = tmp___27;
    tmp___28 = __fswab32((__u32 )wl_e->ec);
    fec->ec = tmp___28;
    erase_peb_count = erase_peb_count + 1;
    fm_pos = fm_pos + 8UL;
    tmp___30 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
    if (tmp___30 != 0L) {
      tmp___29 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1289,
             tmp___29->pid);
      dump_stack();
    } else {
    }
  } else {
  }
  __mptr___3 = (struct list_head const *)ubi_wrk->list.next;
  ubi_wrk = (struct ubi_work *)__mptr___3;
  ldv_26551: ;
  if ((unsigned long )(& ubi_wrk->list) != (unsigned long )(& ubi->works)) {
    goto ldv_26550;
  } else {
  }
  tmp___32 = __fswab32((__u32 )erase_peb_count);
  fmh->erase_peb_count = tmp___32;
  i = 0;
  goto ldv_26558;
  ldv_26557:
  vol = ubi->volumes[i];
  if ((unsigned long )vol == (unsigned long )((struct ubi_volume *)0)) {
    goto ldv_26553;
  } else {
  }
  vol_count = vol_count + 1;
  fvh = (struct ubi_fm_volhdr *)(fm_raw + fm_pos);
  fm_pos = fm_pos + 32UL;
  tmp___34 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___34 != 0L) {
    tmp___33 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1304,
           tmp___33->pid);
    dump_stack();
  } else {
  }
  fvh->magic = 3507369978U;
  tmp___35 = __fswab32((__u32 )vol->vol_id);
  fvh->vol_id = tmp___35;
  fvh->vol_type = (__u8 )vol->vol_type;
  tmp___36 = __fswab32((__u32 )vol->used_ebs);
  fvh->used_ebs = tmp___36;
  tmp___37 = __fswab32((__u32 )vol->data_pad);
  fvh->data_pad = tmp___37;
  tmp___38 = __fswab32((__u32 )vol->last_eb_bytes);
  fvh->last_eb_bytes = tmp___38;
  tmp___40 = ldv__builtin_expect(vol->vol_type != 3, 0L);
  if (tmp___40 != 0L) {
    tmp___41 = ldv__builtin_expect(vol->vol_type != 4, 0L);
    if (tmp___41 != 0L) {
      tmp___39 = get_current();
      printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1314,
             tmp___39->pid);
      dump_stack();
    } else {
    }
  } else {
  }
  feba = (struct ubi_fm_eba *)(fm_raw + fm_pos);
  fm_pos = ((unsigned long )vol->reserved_pebs + 2UL) * 4UL + fm_pos;
  tmp___43 = ldv__builtin_expect(ubi->fm_size < fm_pos, 0L);
  if (tmp___43 != 0L) {
    tmp___42 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1318,
           tmp___42->pid);
    dump_stack();
  } else {
  }
  j = 0;
  goto ldv_26555;
  ldv_26554:
  tmp___44 = __fswab32((__u32 )*(vol->eba_tbl + (unsigned long )j));
  feba->pnum[j] = tmp___44;
  j = j + 1;
  ldv_26555: ;
  if (vol->reserved_pebs > j) {
    goto ldv_26554;
  } else {
  }
  tmp___45 = __fswab32((__u32 )j);
  feba->reserved_pebs = tmp___45;
  feba->magic = 2822815984U;
  ldv_26553:
  i = i + 1;
  ldv_26558: ;
  if (i <= 128) {
    goto ldv_26557;
  } else {
  }
  tmp___46 = __fswab32((__u32 )vol_count);
  fmh->vol_count = tmp___46;
  tmp___47 = __fswab32((__u32 )ubi->bad_peb_count);
  fmh->bad_peb_count = tmp___47;
  tmp___48 = ubi_next_sqnum(ubi);
  tmp___49 = __fswab64(tmp___48);
  avhdr->sqnum = tmp___49;
  avhdr->lnum = 0U;
  spin_unlock(& ubi->wl_lock);
  spin_unlock(& ubi->volumes_lock);
  descriptor.modname = "ubi";
  descriptor.function = "ubi_write_fastmap";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor.format = "UBI DBG bld (pid %d): writing fastmap SB to PEB %i\n";
  descriptor.lineno = 1335U;
  descriptor.flags = 0U;
  tmp___51 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___51 != 0L) {
    tmp___50 = get_current();
    __dynamic_pr_debug(& descriptor, "UBI DBG bld (pid %d): writing fastmap SB to PEB %i\n",
                       tmp___50->pid, (new_fm->e[0])->pnum);
  } else {
  }
  ret = ubi_io_write_vid_hdr(ubi, (new_fm->e[0])->pnum, avhdr);
  if (ret != 0) {
    printk("\vUBI error: %s: unable to write vid_hdr to fastmap SB!\n", "ubi_write_fastmap");
    goto out_kfree;
  } else {
  }
  i = 0;
  goto ldv_26562;
  ldv_26561:
  tmp___52 = __fswab32((__u32 )(new_fm->e[i])->pnum);
  fmsb->block_loc[i] = tmp___52;
  tmp___53 = __fswab32((__u32 )(new_fm->e[i])->ec);
  fmsb->block_ec[i] = tmp___53;
  i = i + 1;
  ldv_26562: ;
  if (new_fm->used_blocks > i) {
    goto ldv_26561;
  } else {
  }
  fmsb->data_crc = 0U;
  tmp___54 = crc32_le(4294967295U, (unsigned char const *)fm_raw, ubi->fm_size);
  tmp___55 = __fswab32(tmp___54);
  fmsb->data_crc = tmp___55;
  i = 1;
  goto ldv_26566;
  ldv_26565:
  tmp___56 = ubi_next_sqnum(ubi);
  tmp___57 = __fswab64(tmp___56);
  dvhdr->sqnum = tmp___57;
  tmp___58 = __fswab32((__u32 )i);
  dvhdr->lnum = tmp___58;
  descriptor___0.modname = "ubi";
  descriptor___0.function = "ubi_write_fastmap";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor___0.format = "UBI DBG bld (pid %d): writing fastmap data to PEB %i sqnum %llu\n";
  descriptor___0.lineno = 1355U;
  descriptor___0.flags = 0U;
  tmp___61 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___61 != 0L) {
    tmp___59 = __fswab64(dvhdr->sqnum);
    tmp___60 = get_current();
    __dynamic_pr_debug(& descriptor___0, "UBI DBG bld (pid %d): writing fastmap data to PEB %i sqnum %llu\n",
                       tmp___60->pid, (new_fm->e[i])->pnum, tmp___59);
  } else {
  }
  ret = ubi_io_write_vid_hdr(ubi, (new_fm->e[i])->pnum, dvhdr);
  if (ret != 0) {
    printk("\vUBI error: %s: unable to write vid_hdr to PEB %i!\n", "ubi_write_fastmap",
           (new_fm->e[i])->pnum);
    goto out_kfree;
  } else {
  }
  i = i + 1;
  ldv_26566: ;
  if (new_fm->used_blocks > i) {
    goto ldv_26565;
  } else {
  }
  i = 0;
  goto ldv_26569;
  ldv_26568:
  ret = ubi_io_write(ubi, (void const *)fm_raw + (unsigned long )(ubi->leb_size * i),
                     (new_fm->e[i])->pnum, ubi->leb_start, ubi->leb_size);
  if (ret != 0) {
    printk("\vUBI error: %s: unable to write fastmap to PEB %i!\n", "ubi_write_fastmap",
           (new_fm->e[i])->pnum);
    goto out_kfree;
  } else {
  }
  i = i + 1;
  ldv_26569: ;
  if (new_fm->used_blocks > i) {
    goto ldv_26568;
  } else {
  }
  tmp___63 = ldv__builtin_expect((unsigned long )new_fm == (unsigned long )((struct ubi_fastmap_layout *)0),
                              0L);
  if (tmp___63 != 0L) {
    tmp___62 = get_current();
    printk("\nUBI assert failed in %s at %u (pid %d)\n", "ubi_write_fastmap", 1374,
           tmp___62->pid);
    dump_stack();
  } else {
  }
  ubi->fm = new_fm;
  descriptor___1.modname = "ubi";
  descriptor___1.function = "ubi_write_fastmap";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/fastmap.o.c.prepared";
  descriptor___1.format = "UBI DBG bld (pid %d): fastmap written!\n";
  descriptor___1.lineno = 1377U;
  descriptor___1.flags = 0U;
  tmp___65 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___65 != 0L) {
    tmp___64 = get_current();
    __dynamic_pr_debug(& descriptor___1, "UBI DBG bld (pid %d): fastmap written!\n",
                       tmp___64->pid);
  } else {
  }
  out_kfree:
  ubi_free_vid_hdr((struct ubi_device const *)ubi, avhdr);
  ubi_free_vid_hdr((struct ubi_device const *)ubi, dvhdr);
  out: ;
  return (ret);
}
}
static int erase_block(struct ubi_device *ubi , int pnum )
{
  int ret ;
  struct ubi_ec_hdr *ec_hdr ;
  long long ec ;
  void *tmp ;
  __u64 tmp___0 ;
  __u64 tmp___1 ;
  {
  tmp = kzalloc((size_t )ubi->ec_hdr_alsize, 208U);
  ec_hdr = (struct ubi_ec_hdr *)tmp;
  if ((unsigned long )ec_hdr == (unsigned long )((struct ubi_ec_hdr *)0)) {
    return (-12);
  } else {
  }
  ret = ubi_io_read_ec_hdr(ubi, pnum, ec_hdr, 0);
  if (ret < 0) {
    goto out;
  } else
  if (ret != 0 && ret != 5) {
    ret = -22;
    goto out;
  } else {
  }
  ret = ubi_io_sync_erase(ubi, pnum, 0);
  if (ret < 0) {
    goto out;
  } else {
  }
  tmp___0 = __fswab64(ec_hdr->ec);
  ec = (long long )tmp___0;
  ec = (long long )ret + ec;
  if (ec > 2147483647LL) {
    ret = -22;
    goto out;
  } else {
  }
  tmp___1 = __fswab64((__u64 )ec);
  ec_hdr->ec = tmp___1;
  ret = ubi_io_write_ec_hdr(ubi, pnum, ec_hdr);
  if (ret < 0) {
    goto out;
  } else {
  }
  ret = (int )ec;
  out:
  kfree((void const *)ec_hdr);
  return (ret);
}
}
static int invalidate_fastmap(struct ubi_device *ubi , struct ubi_fastmap_layout *fm )
{
  int ret ;
  struct ubi_vid_hdr *vh ;
  unsigned long long tmp ;
  __u64 tmp___0 ;
  {
  ret = erase_block(ubi, (fm->e[0])->pnum);
  if (ret < 0) {
    return (ret);
  } else {
  }
  vh = new_fm_vhdr(ubi, 2147479552);
  if ((unsigned long )vh == (unsigned long )((struct ubi_vid_hdr *)0)) {
    return (-12);
  } else {
  }
  tmp = ubi_next_sqnum(ubi);
  tmp___0 = __fswab64(tmp);
  vh->sqnum = tmp___0;
  ret = ubi_io_write_vid_hdr(ubi, (fm->e[0])->pnum, vh);
  return (ret);
}
}
int ubi_update_fastmap(struct ubi_device *ubi )
{
  int ret ;
  int i ;
  struct ubi_fastmap_layout *new_fm ;
  struct ubi_fastmap_layout *old_fm ;
  struct ubi_wl_entry *tmp_e ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int j ;
  int j___0 ;
  int i___0 ;
  int i___1 ;
  {
  mutex_lock_nested(& ubi->fm_mutex, 0U);
  ubi_refill_pools(ubi);
  if (ubi->ro_mode != 0 || ubi->fm_disabled != 0) {
    mutex_unlock(& ubi->fm_mutex);
    return (0);
  } else {
  }
  ret = ubi_ensure_anchor_pebs(ubi);
  if (ret != 0) {
    mutex_unlock(& ubi->fm_mutex);
    return (ret);
  } else {
  }
  tmp = kzalloc(400UL, 208U);
  new_fm = (struct ubi_fastmap_layout *)tmp;
  if ((unsigned long )new_fm == (unsigned long )((struct ubi_fastmap_layout *)0)) {
    mutex_unlock(& ubi->fm_mutex);
    return (-12);
  } else {
  }
  new_fm->used_blocks = (int )(ubi->fm_size / (size_t )ubi->leb_size);
  i = 0;
  goto ldv_26598;
  ldv_26597:
  tmp___0 = ldv_kmem_cache_alloc_310(ubi_wl_entry_slab, 208U);
  new_fm->e[i] = (struct ubi_wl_entry *)tmp___0;
  if ((unsigned long )new_fm->e[i] == (unsigned long )((struct ubi_wl_entry *)0)) {
    goto ldv_26595;
    ldv_26594:
    kfree((void const *)new_fm->e[i]);
    ldv_26595:
    tmp___1 = i;
    i = i - 1;
    if (tmp___1 != 0) {
      goto ldv_26594;
    } else {
    }
    kfree((void const *)new_fm);
    mutex_unlock(& ubi->fm_mutex);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_26598: ;
  if (new_fm->used_blocks > i) {
    goto ldv_26597;
  } else {
  }
  old_fm = ubi->fm;
  ubi->fm = (struct ubi_fastmap_layout *)0;
  if (new_fm->used_blocks > 32) {
    printk("\vUBI error: %s: fastmap too large\n", "ubi_update_fastmap");
    ret = -28;
    goto err;
  } else {
  }
  i = 1;
  goto ldv_26611;
  ldv_26610:
  spin_lock(& ubi->wl_lock);
  tmp_e = ubi_wl_get_fm_peb(ubi, 0);
  spin_unlock(& ubi->wl_lock);
  if ((unsigned long )tmp_e == (unsigned long )((struct ubi_wl_entry *)0) && (unsigned long )old_fm == (unsigned long )((struct ubi_fastmap_layout *)0)) {
    printk("\vUBI error: %s: could not get any free erase block\n", "ubi_update_fastmap");
    j = 1;
    goto ldv_26604;
    ldv_26603:
    ubi_wl_put_fm_peb(ubi, new_fm->e[j], j, 0);
    j = j + 1;
    ldv_26604: ;
    if (j < i) {
      goto ldv_26603;
    } else {
    }
    ret = -28;
    goto err;
  } else
  if ((unsigned long )tmp_e == (unsigned long )((struct ubi_wl_entry *)0) && (unsigned long )old_fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
    ret = erase_block(ubi, (old_fm->e[i])->pnum);
    if (ret < 0) {
      j___0 = 1;
      goto ldv_26608;
      ldv_26607:
      ubi_wl_put_fm_peb(ubi, new_fm->e[j___0], j___0, 0);
      j___0 = j___0 + 1;
      ldv_26608: ;
      if (j___0 < i) {
        goto ldv_26607;
      } else {
      }
      printk("\vUBI error: %s: could not erase old fastmap PEB\n", "ubi_update_fastmap");
      goto err;
    } else {
    }
    (new_fm->e[i])->pnum = (old_fm->e[i])->pnum;
    (new_fm->e[i])->ec = (old_fm->e[i])->ec;
  } else {
    (new_fm->e[i])->pnum = tmp_e->pnum;
    (new_fm->e[i])->ec = tmp_e->ec;
    if ((unsigned long )old_fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
      ubi_wl_put_fm_peb(ubi, old_fm->e[i], i, old_fm->to_be_tortured[i]);
    } else {
    }
  }
  i = i + 1;
  ldv_26611: ;
  if (new_fm->used_blocks > i) {
    goto ldv_26610;
  } else {
  }
  spin_lock(& ubi->wl_lock);
  tmp_e = ubi_wl_get_fm_peb(ubi, 1);
  spin_unlock(& ubi->wl_lock);
  if ((unsigned long )old_fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
    if ((unsigned long )tmp_e == (unsigned long )((struct ubi_wl_entry *)0)) {
      ret = erase_block(ubi, (old_fm->e[0])->pnum);
      if (ret < 0) {
        printk("\vUBI error: %s: could not erase old anchor PEB\n", "ubi_update_fastmap");
        i___0 = 1;
        goto ldv_26615;
        ldv_26614:
        ubi_wl_put_fm_peb(ubi, new_fm->e[i___0], i___0, 0);
        i___0 = i___0 + 1;
        ldv_26615: ;
        if (new_fm->used_blocks > i___0) {
          goto ldv_26614;
        } else {
        }
        goto err;
      } else {
      }
      (new_fm->e[0])->pnum = (old_fm->e[0])->pnum;
      (new_fm->e[0])->ec = ret;
    } else {
      ubi_wl_put_fm_peb(ubi, old_fm->e[0], 0, old_fm->to_be_tortured[0]);
      (new_fm->e[0])->pnum = tmp_e->pnum;
      (new_fm->e[0])->ec = tmp_e->ec;
    }
  } else {
    if ((unsigned long )tmp_e == (unsigned long )((struct ubi_wl_entry *)0)) {
      printk("\vUBI error: %s: could not find any anchor PEB\n", "ubi_update_fastmap");
      i___1 = 1;
      goto ldv_26619;
      ldv_26618:
      ubi_wl_put_fm_peb(ubi, new_fm->e[i___1], i___1, 0);
      i___1 = i___1 + 1;
      ldv_26619: ;
      if (new_fm->used_blocks > i___1) {
        goto ldv_26618;
      } else {
      }
      ret = -28;
      goto err;
    } else {
    }
    (new_fm->e[0])->pnum = tmp_e->pnum;
    (new_fm->e[0])->ec = tmp_e->ec;
  }
  down_write(& ubi->work_sem);
  down_write(& ubi->fm_sem);
  ret = ubi_write_fastmap(ubi, new_fm);
  up_write(& ubi->fm_sem);
  up_write(& ubi->work_sem);
  if (ret != 0) {
    goto err;
  } else {
  }
  out_unlock:
  mutex_unlock(& ubi->fm_mutex);
  kfree((void const *)old_fm);
  return (ret);
  err:
  kfree((void const *)new_fm);
  printk("\fUBI warning: %s: Unable to write new fastmap, err=%i\n", "ubi_update_fastmap",
         ret);
  ret = 0;
  if ((unsigned long )old_fm != (unsigned long )((struct ubi_fastmap_layout *)0)) {
    ret = invalidate_fastmap(ubi, old_fm);
    if (ret < 0) {
      printk("\vUBI error: %s: Unable to invalidiate current fastmap!\n", "ubi_update_fastmap");
    } else
    if (ret != 0) {
      ret = 0;
    } else {
    }
  } else {
  }
  goto out_unlock;
}
}
void *ldv_kmem_cache_alloc_302(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_305(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_306(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_307(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_308(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_309(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_310(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_irq_321(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_324(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void *ldv_kmem_cache_alloc_333(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int ubi_read(struct ubi_volume_desc *desc , int lnum , char *buf ,
                             int offset , int len )
{
  int tmp ;
  {
  tmp = ubi_leb_read(desc, lnum, buf, offset, len, 0);
  return (tmp);
}
}
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern void add_disk(struct gendisk * ) ;
extern void del_gendisk(struct gendisk * ) ;
__inline static sector_t get_capacity(struct gendisk *disk )
{
  {
  return (disk->part0.nr_sects);
}
}
__inline static void set_capacity(struct gendisk *disk , sector_t size )
{
  {
  disk->part0.nr_sects = size;
  return;
}
}
extern struct gendisk *alloc_disk(int ) ;
extern void put_disk(struct gendisk * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static bool bio_has_data(struct bio *bio )
{
  {
  if (((unsigned long )bio != (unsigned long )((struct bio *)0) && bio->bi_iter.bi_size != 0U) && ((unsigned long long )bio->bi_rw & 128ULL) == 0ULL) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static unsigned int bio_cur_bytes(struct bio *bio )
{
  struct bio_vec __constr_expr_0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  bool tmp ;
  {
  tmp = bio_has_data(bio);
  if ((int )tmp) {
    _min1 = bio->bi_iter.bi_size;
    _min2 = (bio->bi_io_vec + (unsigned long )bio->bi_iter.bi_idx)->bv_len - bio->bi_iter.bi_bvec_done;
    __constr_expr_0.bv_page = (bio->bi_io_vec + (unsigned long )bio->bi_iter.bi_idx)->bv_page;
    __constr_expr_0.bv_len = _min1 < _min2 ? _min1 : _min2;
    __constr_expr_0.bv_offset = (bio->bi_io_vec + (unsigned long )bio->bi_iter.bi_idx)->bv_offset + bio->bi_iter.bi_bvec_done;
    return (__constr_expr_0.bv_len);
  } else {
    return (bio->bi_iter.bi_size);
  }
}
}
__inline static void *bio_data(struct bio *bio )
{
  void *tmp ;
  bool tmp___0 ;
  {
  tmp___0 = bio_has_data(bio);
  if ((int )tmp___0) {
    tmp = lowmem_page_address((struct page const *)(bio->bi_io_vec + (unsigned long )bio->bi_iter.bi_idx)->bv_page);
    return (tmp + (unsigned long )((bio->bi_io_vec + (unsigned long )bio->bi_iter.bi_idx)->bv_offset + bio->bi_iter.bi_bvec_done));
  } else {
  }
  return ((void *)0);
}
}
__inline static sector_t blk_rq_pos(struct request const *rq )
{
  {
  return ((sector_t )rq->__sector);
}
}
__inline static int blk_rq_cur_bytes(struct request const *rq )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )rq->bio != (unsigned long )((struct bio * )0)) {
    tmp = bio_cur_bytes(rq->bio);
    tmp___0 = (int )tmp;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline static unsigned int blk_rq_cur_sectors(struct request const *rq )
{
  int tmp ;
  {
  tmp = blk_rq_cur_bytes(rq);
  return ((unsigned int )(tmp >> 9));
}
}
extern struct request *blk_fetch_request(struct request_queue * ) ;
extern void __blk_end_request_all(struct request * , int ) ;
extern bool __blk_end_request_cur(struct request * , int ) ;
extern struct request_queue *blk_init_queue(request_fn_proc * , spinlock_t * ) ;
extern void blk_cleanup_queue(struct request_queue * ) ;
static int ubiblock_devs ;
static struct ubiblock_param ubiblock_param[32U] ;
static struct list_head ubiblock_devices = {& ubiblock_devices, & ubiblock_devices};
static struct mutex devices_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "devices_mutex.wait_lock",
                                                           0, 0UL}}}}, {& devices_mutex.wait_list,
                                                                        & devices_mutex.wait_list},
    0, 0, (void *)(& devices_mutex), {0, {0, 0}, "devices_mutex", 0, 0UL}};
static int ubiblock_major ;
static int ubiblock_set_param(char const *val , struct kernel_param const *kp )
{
  int i ;
  int ret ;
  size_t len ;
  struct ubiblock_param *param ;
  char buf[63U] ;
  char *pbuf ;
  char *tokens[2U] ;
  {
  pbuf = (char *)(& buf);
  if ((unsigned long )val == (unsigned long )((char const *)0)) {
    return (-22);
  } else {
  }
  len = strnlen(val, 63UL);
  if (len == 0UL) {
    printk("\fUBI warning: %s: block: empty \'block=\' parameter - ignored\n\n", "ubiblock_set_param");
    return (0);
  } else {
  }
  if (len == 63UL) {
    printk("\vUBI error: %s: block: parameter \"%s\" is too long, max. is %d\n\n",
           "ubiblock_set_param", val, 63);
    return (-22);
  } else {
  }
  strcpy((char *)(& buf), val);
  if ((int )((signed char )buf[len - 1UL]) == 10) {
    buf[len - 1UL] = 0;
  } else {
  }
  i = 0;
  goto ldv_33111;
  ldv_33110:
  tokens[i] = strsep(& pbuf, ",");
  i = i + 1;
  ldv_33111: ;
  if (i <= 1) {
    goto ldv_33110;
  } else {
  }
  param = (struct ubiblock_param *)(& ubiblock_param) + (unsigned long )ubiblock_devs;
  if ((unsigned long )tokens[1] != (unsigned long )((char *)0)) {
    ret = kstrtoint((char const *)tokens[0], 10U, & param->ubi_num);
    if (ret < 0) {
      return (-22);
    } else {
    }
    ret = kstrtoint((char const *)tokens[1], 10U, & param->vol_id);
    if (ret < 0) {
      param->vol_id = -1;
      strcpy((char *)(& param->name), (char const *)tokens[1]);
    } else {
    }
  } else {
    strcpy((char *)(& param->name), (char const *)tokens[0]);
    param->ubi_num = -1;
    param->vol_id = -1;
  }
  ubiblock_devs = ubiblock_devs + 1;
  return (0);
}
}
static struct ubiblock *find_dev_nolock(int ubi_num , int vol_id )
{
  struct ubiblock *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)ubiblock_devices.next;
  dev = (struct ubiblock *)__mptr + 0xfffffffffffffe90UL;
  goto ldv_33135;
  ldv_33134: ;
  if (dev->ubi_num == ubi_num && dev->vol_id == vol_id) {
    return (dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->list.next;
  dev = (struct ubiblock *)__mptr___0 + 0xfffffffffffffe90UL;
  ldv_33135: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& ubiblock_devices)) {
    goto ldv_33134;
  } else {
  }
  return ((struct ubiblock *)0);
}
}
static int ubiblock_read_to_buf(struct ubiblock *dev , char *buffer , int leb , int offset ,
                                int len )
{
  int ret ;
  {
  ret = ubi_read(dev->desc, leb, buffer, offset, len);
  if (ret != 0) {
    printk("\vUBI error: %s: %s ubi_read error %d\n", "ubiblock_read_to_buf", (char *)(& (dev->gd)->disk_name),
           ret);
    return (ret);
  } else {
  }
  return (0);
}
}
static int ubiblock_read(struct ubiblock *dev , char *buffer , sector_t sec , int len )
{
  int ret ;
  int leb ;
  int offset ;
  int bytes_left ;
  int to_read ;
  u64 pos ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  bytes_left = len;
  to_read = len;
  pos = (u64 )(sec << 9);
  __base = (uint32_t )dev->leb_size;
  __rem = (uint32_t )(pos % (u64 )__base);
  pos = pos / (u64 )__base;
  offset = (int )__rem;
  leb = (int )pos;
  goto ldv_33162;
  ldv_33161: ;
  if (offset + to_read > dev->leb_size) {
    to_read = dev->leb_size - offset;
  } else {
  }
  ret = ubiblock_read_to_buf(dev, buffer, leb, offset, to_read);
  if (ret != 0) {
    return (ret);
  } else {
  }
  buffer = buffer + (unsigned long )to_read;
  bytes_left = bytes_left - to_read;
  to_read = bytes_left;
  leb = leb + 1;
  offset = 0;
  ldv_33162: ;
  if (bytes_left != 0) {
    goto ldv_33161;
  } else {
  }
  return (0);
}
}
static int do_ubiblock_request(struct ubiblock *dev , struct request *req )
{
  int len ;
  int ret ;
  sector_t sec ;
  sector_t tmp ;
  unsigned int tmp___0 ;
  sector_t tmp___1 ;
  void *tmp___2 ;
  {
  if ((unsigned int )req->cmd_type != 1U) {
    return (-5);
  } else {
  }
  tmp = blk_rq_pos((struct request const *)req);
  tmp___0 = blk_rq_cur_sectors((struct request const *)req);
  tmp___1 = get_capacity(req->rq_disk);
  if (tmp + (sector_t )tmp___0 > tmp___1) {
    return (-5);
  } else {
  }
  if ((int )req->cmd_flags & 1) {
    return (-38);
  } else {
  }
  sec = blk_rq_pos((struct request const *)req);
  len = blk_rq_cur_bytes((struct request const *)req);
  mutex_lock_nested(& dev->dev_mutex, 0U);
  tmp___2 = bio_data(req->bio);
  ret = ubiblock_read(dev, (char *)tmp___2, sec, len);
  mutex_unlock(& dev->dev_mutex);
  return (ret);
}
}
static void ubiblock_do_work(struct work_struct *work )
{
  struct ubiblock *dev ;
  struct work_struct const *__mptr ;
  struct request_queue *rq ;
  struct request *req ;
  int res ;
  bool tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct ubiblock *)__mptr + 0xffffffffffffffd0UL;
  rq = dev->rq;
  spin_lock_irq(rq->queue_lock);
  req = blk_fetch_request(rq);
  goto ldv_33181;
  ldv_33180:
  spin_unlock_irq(rq->queue_lock);
  res = do_ubiblock_request(dev, req);
  spin_lock_irq(rq->queue_lock);
  tmp = __blk_end_request_cur(req, res);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    req = blk_fetch_request(rq);
  } else {
  }
  ldv_33181: ;
  if ((unsigned long )req != (unsigned long )((struct request *)0)) {
    goto ldv_33180;
  } else {
  }
  spin_unlock_irq(rq->queue_lock);
  return;
}
}
static void ubiblock_request(struct request_queue *rq )
{
  struct ubiblock *dev ;
  struct request *req ;
  {
  dev = (struct ubiblock *)rq->queuedata;
  if ((unsigned long )dev == (unsigned long )((struct ubiblock *)0)) {
    goto ldv_33189;
    ldv_33188:
    __blk_end_request_all(req, -19);
    ldv_33189:
    req = blk_fetch_request(rq);
    if ((unsigned long )req != (unsigned long )((struct request *)0)) {
      goto ldv_33188;
    } else {
    }
  } else {
    queue_work(dev->wq, & dev->work);
  }
  return;
}
}
static int ubiblock_open(struct block_device *bdev , fmode_t mode )
{
  struct ubiblock *dev ;
  int ret ;
  long tmp ;
  bool tmp___0 ;
  {
  dev = (struct ubiblock *)(bdev->bd_disk)->private_data;
  mutex_lock_nested(& dev->dev_mutex, 0U);
  if (dev->refcnt > 0) {
    goto out_done;
  } else {
  }
  if ((mode & 2U) != 0U) {
    ret = -1;
    goto out_unlock;
  } else {
  }
  dev->desc = ubi_open_volume(dev->ubi_num, dev->vol_id, 1);
  tmp___0 = IS_ERR((void const *)dev->desc);
  if ((int )tmp___0) {
    printk("\vUBI error: %s: %s failed to open ubi volume %d_%d\n", "ubiblock_open",
           (char *)(& (dev->gd)->disk_name), dev->ubi_num, dev->vol_id);
    tmp = PTR_ERR((void const *)dev->desc);
    ret = (int )tmp;
    dev->desc = (struct ubi_volume_desc *)0;
    goto out_unlock;
  } else {
  }
  out_done:
  dev->refcnt = dev->refcnt + 1;
  mutex_unlock(& dev->dev_mutex);
  return (0);
  out_unlock:
  mutex_unlock(& dev->dev_mutex);
  return (ret);
}
}
static void ubiblock_release(struct gendisk *gd , fmode_t mode )
{
  struct ubiblock *dev ;
  {
  dev = (struct ubiblock *)gd->private_data;
  mutex_lock_nested(& dev->dev_mutex, 0U);
  dev->refcnt = dev->refcnt - 1;
  if (dev->refcnt == 0) {
    ubi_close_volume(dev->desc);
    dev->desc = (struct ubi_volume_desc *)0;
  } else {
  }
  mutex_unlock(& dev->dev_mutex);
  return;
}
}
static int ubiblock_getgeo(struct block_device *bdev , struct hd_geometry *geo )
{
  sector_t tmp ;
  {
  geo->heads = 1U;
  geo->cylinders = 1U;
  tmp = get_capacity(bdev->bd_disk);
  geo->sectors = (unsigned char )tmp;
  geo->start = 0UL;
  return (0);
}
}
static struct block_device_operations const ubiblock_ops =
     {& ubiblock_open, & ubiblock_release, 0, 0, 0, 0, 0, 0, 0, 0, & ubiblock_getgeo,
    0, & __this_module};
int ubiblock_create(struct ubi_volume_info *vi )
{
  struct ubiblock *dev ;
  struct gendisk *gd ;
  int disk_capacity ;
  int ret ;
  struct ubiblock *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  {
  mutex_lock_nested(& devices_mutex, 0U);
  tmp = find_dev_nolock(vi->ubi_num, vi->vol_id);
  if ((unsigned long )tmp != (unsigned long )((struct ubiblock *)0)) {
    mutex_unlock(& devices_mutex);
    return (-17);
  } else {
  }
  mutex_unlock(& devices_mutex);
  tmp___0 = kzalloc(384UL, 208U);
  dev = (struct ubiblock *)tmp___0;
  if ((unsigned long )dev == (unsigned long )((struct ubiblock *)0)) {
    return (-12);
  } else {
  }
  __mutex_init(& dev->dev_mutex, "&dev->dev_mutex", & __key);
  dev->ubi_num = vi->ubi_num;
  dev->vol_id = vi->vol_id;
  dev->leb_size = vi->usable_leb_size;
  gd = alloc_disk(1);
  if ((unsigned long )gd == (unsigned long )((struct gendisk *)0)) {
    printk("\vUBI error: %s: block: alloc_disk failed\n", "ubiblock_create");
    ret = -19;
    goto out_free_dev;
  } else {
  }
  gd->fops = & ubiblock_ops;
  gd->major = ubiblock_major;
  gd->first_minor = dev->ubi_num * 128 + dev->vol_id;
  gd->private_data = (void *)dev;
  sprintf((char *)(& gd->disk_name), "ubiblock%d_%d", dev->ubi_num, dev->vol_id);
  disk_capacity = vi->size * vi->usable_leb_size >> 9;
  set_capacity(gd, (sector_t )disk_capacity);
  dev->gd = gd;
  spinlock_check(& dev->queue_lock);
  __raw_spin_lock_init(& dev->queue_lock.ldv_6347.rlock, "&(&dev->queue_lock)->rlock",
                       & __key___0);
  dev->rq = blk_init_queue(& ubiblock_request, & dev->queue_lock);
  if ((unsigned long )dev->rq == (unsigned long )((struct request_queue *)0)) {
    printk("\vUBI error: %s: block: blk_init_queue failed\n", "ubiblock_create");
    ret = -19;
    goto out_put_disk;
  } else {
  }
  (dev->rq)->queuedata = (void *)dev;
  (dev->gd)->queue = dev->rq;
  __lock_name = "\"%s\"gd->disk_name";
  tmp___1 = __alloc_workqueue_key("%s", 0U, 0, & __key___1, __lock_name, (char *)(& gd->disk_name));
  dev->wq = tmp___1;
  if ((unsigned long )dev->wq == (unsigned long )((struct workqueue_struct *)0)) {
    ret = -12;
    goto out_free_queue;
  } else {
  }
  __init_work(& dev->work, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->work.data = __constr_expr_0;
  lockdep_init_map(& dev->work.lockdep_map, "(&dev->work)", & __key___2, 0);
  INIT_LIST_HEAD(& dev->work.entry);
  dev->work.func = & ubiblock_do_work;
  mutex_lock_nested(& devices_mutex, 0U);
  list_add_tail(& dev->list, & ubiblock_devices);
  mutex_unlock(& devices_mutex);
  add_disk(dev->gd);
  printk("\rUBI: %s created from ubi%d:%d(%s)\n", (char *)(& (dev->gd)->disk_name),
         dev->ubi_num, dev->vol_id, vi->name);
  return (0);
  out_free_queue:
  blk_cleanup_queue(dev->rq);
  out_put_disk:
  put_disk(dev->gd);
  out_free_dev:
  kfree((void const *)dev);
  return (ret);
}
}
static void ubiblock_cleanup(struct ubiblock *dev )
{
  {
  del_gendisk(dev->gd);
  blk_cleanup_queue(dev->rq);
  printk("\rUBI: %s released\n", (char *)(& (dev->gd)->disk_name));
  put_disk(dev->gd);
  return;
}
}
int ubiblock_remove(struct ubi_volume_info *vi )
{
  struct ubiblock *dev ;
  {
  mutex_lock_nested(& devices_mutex, 0U);
  dev = find_dev_nolock(vi->ubi_num, vi->vol_id);
  if ((unsigned long )dev == (unsigned long )((struct ubiblock *)0)) {
    mutex_unlock(& devices_mutex);
    return (-19);
  } else {
  }
  mutex_lock_nested(& dev->dev_mutex, 0U);
  if (dev->refcnt > 0) {
    mutex_unlock(& dev->dev_mutex);
    mutex_unlock(& devices_mutex);
    return (-16);
  } else {
  }
  list_del(& dev->list);
  mutex_unlock(& devices_mutex);
  destroy_workqueue(dev->wq);
  ubiblock_cleanup(dev);
  mutex_unlock(& dev->dev_mutex);
  kfree((void const *)dev);
  return (0);
}
}
static void ubiblock_resize(struct ubi_volume_info *vi )
{
  struct ubiblock *dev ;
  int disk_capacity ;
  {
  mutex_lock_nested(& devices_mutex, 0U);
  dev = find_dev_nolock(vi->ubi_num, vi->vol_id);
  if ((unsigned long )dev == (unsigned long )((struct ubiblock *)0)) {
    mutex_unlock(& devices_mutex);
    return;
  } else {
  }
  mutex_lock_nested(& dev->dev_mutex, 0U);
  disk_capacity = vi->size * vi->usable_leb_size >> 9;
  set_capacity(dev->gd, (sector_t )disk_capacity);
  printk("\rUBI: %s resized to %d LEBs\n", (char *)(& (dev->gd)->disk_name), vi->size);
  mutex_unlock(& dev->dev_mutex);
  mutex_unlock(& devices_mutex);
  return;
}
}
static int ubiblock_notify(struct notifier_block *nb , unsigned long notification_type ,
                           void *ns_ptr )
{
  struct ubi_notification *nt ;
  {
  nt = (struct ubi_notification *)ns_ptr;
  switch (notification_type) {
  case 0UL: ;
  goto ldv_33247;
  case 1UL:
  ubiblock_remove(& nt->vi);
  goto ldv_33247;
  case 2UL:
  ubiblock_resize(& nt->vi);
  goto ldv_33247;
  default: ;
  goto ldv_33247;
  }
  ldv_33247: ;
  return (1);
}
}
static struct notifier_block ubiblock_notifier = {& ubiblock_notify, 0, 0};
static struct ubi_volume_desc *open_volume_desc(char const *name , int ubi_num ,
                                                int vol_id )
{
  struct ubi_volume_desc *tmp ;
  struct ubi_volume_desc *tmp___0 ;
  struct ubi_volume_desc *tmp___1 ;
  {
  if (ubi_num == -1) {
    tmp = ubi_open_volume_path(name, 1);
    return (tmp);
  } else
  if (vol_id == -1) {
    tmp___0 = ubi_open_volume_nm(ubi_num, name, 1);
    return (tmp___0);
  } else {
    tmp___1 = ubi_open_volume(ubi_num, vol_id, 1);
    return (tmp___1);
  }
}
}
static int ubiblock_create_from_param(void)
{
  int i ;
  int ret ;
  struct ubiblock_param *p ;
  struct ubi_volume_desc *desc ;
  struct ubi_volume_info vi ;
  long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  i = 0;
  goto ldv_33268;
  ldv_33267:
  p = (struct ubiblock_param *)(& ubiblock_param) + (unsigned long )i;
  desc = open_volume_desc((char const *)(& p->name), p->ubi_num, p->vol_id);
  tmp___1 = IS_ERR((void const *)desc);
  if ((int )tmp___1) {
    tmp = PTR_ERR((void const *)desc);
    printk("\vUBI error: %s: block: can\'t open volume, err=%ld\n\n", "ubiblock_create_from_param",
           tmp);
    tmp___0 = PTR_ERR((void const *)desc);
    ret = (int )tmp___0;
    goto ldv_33266;
  } else {
  }
  ubi_get_volume_info(desc, & vi);
  ubi_close_volume(desc);
  ret = ubiblock_create(& vi);
  if (ret != 0) {
    printk("\vUBI error: %s: block: can\'t add \'%s\' volume, err=%d\n\n", "ubiblock_create_from_param",
           vi.name, ret);
    goto ldv_33266;
  } else {
  }
  i = i + 1;
  ldv_33268: ;
  if (i < ubiblock_devs) {
    goto ldv_33267;
  } else {
  }
  ldv_33266: ;
  return (ret);
}
}
static void ubiblock_remove_all(void)
{
  struct ubiblock *next ;
  struct ubiblock *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int __ret_warn_on ;
  long tmp ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)ubiblock_devices.next;
  dev = (struct ubiblock *)__mptr + 0xfffffffffffffe90UL;
  __mptr___0 = (struct list_head const *)dev->list.next;
  next = (struct ubiblock *)__mptr___0 + 0xfffffffffffffe90UL;
  goto ldv_33283;
  ldv_33282:
  destroy_workqueue(dev->wq);
  __ret_warn_on = (unsigned long )dev->desc != (unsigned long )((struct ubi_volume_desc *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1122/dscv_tempdir/dscv/ri/43_2a/drivers/mtd/ubi/block.o.c.prepared",
                       671);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  list_del(& dev->list);
  ubiblock_cleanup(dev);
  kfree((void const *)dev);
  dev = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct ubiblock *)__mptr___1 + 0xfffffffffffffe90UL;
  ldv_33283: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& ubiblock_devices)) {
    goto ldv_33282;
  } else {
  }
  return;
}
}
int ubiblock_init(void)
{
  int ret ;
  {
  ubiblock_major = register_blkdev(0U, "ubiblock");
  if (ubiblock_major < 0) {
    return (ubiblock_major);
  } else {
  }
  ret = ubiblock_create_from_param();
  if (ret != 0) {
    goto err_remove;
  } else {
  }
  ret = ubi_register_volume_notifier(& ubiblock_notifier, 1);
  if (ret != 0) {
    goto err_unreg;
  } else {
  }
  return (0);
  err_unreg:
  unregister_blkdev((unsigned int )ubiblock_major, "ubiblock");
  err_remove:
  ubiblock_remove_all();
  return (ret);
}
}
void ubiblock_exit(void)
{
  {
  ubi_unregister_volume_notifier(& ubiblock_notifier);
  ubiblock_remove_all();
  unregister_blkdev((unsigned int )ubiblock_major, "ubiblock");
  return;
}
}
int ldv_retval_1 ;
void ldv_initialize_block_device_operations_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(496UL);
  ubiblock_ops_group0 = (struct block_device *)tmp;
  return;
}
}
void ldv_main_exported_1(void)
{
  struct notifier_block *ldvarg34 ;
  void *tmp ;
  unsigned long ldvarg36 ;
  unsigned long tmp___0 ;
  void *ldvarg35 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(24UL);
  ldvarg34 = (struct notifier_block *)tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg36 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg35 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_1 == 1) {
    ubiblock_notify(ldvarg34, ldvarg36, ldvarg35);
    ldv_state_variable_1 = 1;
  } else {
  }
  goto ldv_33305;
  default:
  ldv_stop();
  }
  ldv_33305: ;
  return;
}
}
void ldv_main_exported_3(void)
{
  char *ldvarg64 ;
  void *tmp ;
  struct kernel_param *ldvarg65 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg64 = (char *)tmp;
  tmp___0 = ldv_zalloc(32UL);
  ldvarg65 = (struct kernel_param *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    ubiblock_set_param((char const *)ldvarg64, (struct kernel_param const *)ldvarg65);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_33313;
  default:
  ldv_stop();
  }
  ldv_33313: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  fmode_t ldvarg30 ;
  struct hd_geometry *ldvarg28 ;
  void *tmp ;
  struct gendisk *ldvarg29 ;
  void *tmp___0 ;
  fmode_t ldvarg27 ;
  int tmp___1 ;
  {
  tmp = ldv_zalloc(16UL);
  ldvarg28 = (struct hd_geometry *)tmp;
  tmp___0 = ldv_zalloc(1744UL);
  ldvarg29 = (struct gendisk *)tmp___0;
  memset((void *)(& ldvarg30), 0, 4UL);
  memset((void *)(& ldvarg27), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_2 == 2) {
    ubiblock_release(ldvarg29, ldvarg30);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_33323;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    ubiblock_getgeo(ubiblock_ops_group0, ldvarg28);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    ubiblock_getgeo(ubiblock_ops_group0, ldvarg28);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_33323;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_1 = ubiblock_open(ubiblock_ops_group0, ldvarg27);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_33323;
  default:
  ldv_stop();
  }
  ldv_33323: ;
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_321(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_324(lock);
  return;
}
}
void *ldv_kmem_cache_alloc_333(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
  if (is_lock) {
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
void __blk_end_request_all(struct request *arg0, int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __blk_end_request_cur(struct request *arg0, int arg1) {
  return __VERIFIER_nondet_bool();
}
void *external_alloc(void);
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  return (struct class *)external_alloc();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
void *external_alloc(void);
void *__vmalloc(unsigned long arg0, gfp_t arg1, pgprot_t arg2) {
  return (void *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void add_disk(struct gendisk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct gendisk *alloc_disk(int arg0) {
  return (struct gendisk *)external_alloc();
}
void blk_cleanup_queue(struct request_queue *arg0) {
  return;
}
void *external_alloc(void);
struct request *blk_fetch_request(struct request_queue *arg0) {
  return (struct request *)external_alloc();
}
void *external_alloc(void);
struct request_queue *blk_init_queue(request_fn_proc *arg0, spinlock_t *arg1) {
  return (struct request_queue *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int blocking_notifier_call_chain(struct blocking_notifier_head *arg0, unsigned long arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blocking_notifier_chain_register(struct blocking_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blocking_notifier_chain_unregister(struct blocking_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int class_create_file_ns(struct class *arg0, const struct class_attribute *arg1, const void *arg2) {
  return __VERIFIER_nondet_int();
}
void class_destroy(struct class *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_check_no_locks_held() {
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
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
void del_gendisk(struct gendisk *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
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
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void device_unregister(struct device *arg0) {
  return;
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_write_trylock(struct rw_semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void dump_stack() {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t fixed_size_llseek(struct file *arg0, loff_t arg1, int arg2, loff_t arg3) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void *external_alloc(void);
struct device *get_device(struct device *arg0) {
  return (struct device *)external_alloc();
}
void *external_alloc(void);
struct mtd_info *get_mtd_device(struct mtd_info *arg0, int arg1) {
  return (struct mtd_info *)external_alloc();
}
void *external_alloc(void);
struct mtd_info *get_mtd_device_nm(const char *arg0) {
  return (struct mtd_info *)external_alloc();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kern_path(const char *arg0, unsigned int arg1, struct path *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return (struct kmem_cache *)external_alloc();
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void kmem_cache_free(struct kmem_cache *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoint(const char *arg0, unsigned int arg1, int *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return (struct task_struct *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_open_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_open_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void module_put(struct module *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mtd_block_isbad(struct mtd_info *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_block_markbad(struct mtd_info *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_erase(struct mtd_info *arg0, struct erase_info *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
uint64_t mtd_get_device_size(const struct mtd_info *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int mtd_read(struct mtd_info *arg0, loff_t arg1, size_t arg2, size_t *arg3, u_char *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_write(struct mtd_info *arg0, loff_t arg1, size_t arg2, size_t *arg3, const u_char *arg4) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t no_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void path_put(const struct path *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 prandom_u32() {
  return __VERIFIER_nondet_uint();
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
void put_device(struct device *arg0) {
  return;
}
void put_disk(struct gendisk *arg0) {
  return;
}
void put_mtd_device(struct mtd_info *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void rb_erase(struct rb_node *arg0, struct rb_root *arg1) {
  return;
}
void *external_alloc(void);
struct rb_node *rb_first(const struct rb_root *arg0) {
  return (struct rb_node *)external_alloc();
}
void rb_insert_color(struct rb_node *arg0, struct rb_root *arg1) {
  return;
}
void *external_alloc(void);
struct rb_node *rb_last(const struct rb_root *arg0) {
  return (struct rb_node *)external_alloc();
}
void *external_alloc(void);
struct rb_node *rb_next(const struct rb_node *arg0) {
  return (struct rb_node *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int register_blkdev(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
__kernel_size_t strnlen(const char *arg0, __kernel_size_t arg1) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
char *strsep(char **arg0, const char *arg1) {
  return (char *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void unregister_blkdev(unsigned int arg0, const char *arg1) {
  return;
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vmalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void yield() {
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
