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
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
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
struct tss_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
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
   unsigned long stack[64U] ;
};
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
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
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
struct __anonstruct_ldv_14034_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14038_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14039_135 {
   struct __anonstruct_ldv_14034_136 ldv_14034 ;
   struct __anonstruct_ldv_14038_137 ldv_14038 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14039_135 ldv_14039 ;
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
union __anonunion_ldv_14148_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14154_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14164_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14166_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14164_144 ldv_14164 ;
   int units ;
};
struct __anonstruct_ldv_14168_142 {
   union __anonunion_ldv_14166_143 ldv_14166 ;
   atomic_t _count ;
};
union __anonunion_ldv_14170_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14168_142 ldv_14168 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14171_139 {
   union __anonunion_ldv_14154_140 ldv_14154 ;
   union __anonunion_ldv_14170_141 ldv_14170 ;
};
struct __anonstruct_ldv_14178_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14183_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14178_146 ldv_14178 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14189_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14148_138 ldv_14148 ;
   struct __anonstruct_ldv_14171_139 ldv_14171 ;
   union __anonunion_ldv_14183_145 ldv_14183 ;
   union __anonunion_ldv_14189_147 ldv_14189 ;
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
union __anonunion_ldv_14552_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14552_153 ldv_14552 ;
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
union __anonunion_ldv_14696_154 {
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
   union __anonunion_ldv_14696_154 ldv_14696 ;
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
union __anonunion_ldv_15371_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15371_155 ldv_15371 ;
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
struct __anonstruct_ldv_15991_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15997_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15998_156 {
   struct __anonstruct_ldv_15991_157 ldv_15991 ;
   struct __anonstruct_ldv_15997_158 ldv_15997 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15998_156 ldv_15998 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct uart_port;
struct pnp_dev;
struct platform_device;
struct tty_struct;
struct tty_driver;
struct console {
   char name[16U] ;
   void (*write)(struct console * , char const * , unsigned int ) ;
   int (*read)(struct console * , char * , unsigned int ) ;
   struct tty_driver *(*device)(struct console * , int * ) ;
   void (*unblank)(void) ;
   int (*setup)(struct console * , char * ) ;
   int (*early_setup)(void) ;
   short flags ;
   short index ;
   int cflag ;
   void *data ;
   struct console *next ;
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
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
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
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_18307_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_18308_162 {
   struct __anonstruct_ldv_18307_163 ldv_18307 ;
};
struct lockref {
   union __anonunion_ldv_18308_162 ldv_18308 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_18331_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_18333_164 {
   struct __anonstruct_ldv_18331_165 ldv_18331 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_18333_164 ldv_18333 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
struct __anonstruct_ldv_18694_168 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_18696_167 {
   struct __anonstruct_ldv_18694_168 ldv_18694 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_18696_167 ldv_18696 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
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
struct block_device;
struct io_context;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct __anonstruct_kprojid_t_170 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_170 kprojid_t;
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
union __anonunion_ldv_19516_171 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_19516_171 ldv_19516 ;
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
struct backing_dev_info;
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
union __anonunion_ldv_19932_174 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19952_175 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_19969_176 {
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
   union __anonunion_ldv_19932_174 ldv_19932 ;
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
   union __anonunion_ldv_19952_175 ldv_19952 ;
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
   union __anonunion_ldv_19969_176 ldv_19969 ;
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
union __anonunion_f_u_177 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_177 f_u ;
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
struct files_struct;
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
struct __anonstruct_afs_179 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_178 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_179 afs ;
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
   union __anonunion_fl_u_178 fl_u ;
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
struct tty_port;
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
union __anonunion_ldv_22592_180 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_22592_180 ldv_22592 ;
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
struct signal_struct;
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
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
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
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
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
struct circ_buf {
   char *buf ;
   int head ;
   int tail ;
};
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
struct __anonstruct_sigset_t_183 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_183 sigset_t;
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
struct __anonstruct__kill_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_186 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_187 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_188 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_189 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_190 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_191 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_184 {
   int _pad[28U] ;
   struct __anonstruct__kill_185 _kill ;
   struct __anonstruct__timer_186 _timer ;
   struct __anonstruct__rt_187 _rt ;
   struct __anonstruct__sigchld_188 _sigchld ;
   struct __anonstruct__sigfault_189 _sigfault ;
   struct __anonstruct__sigpoll_190 _sigpoll ;
   struct __anonstruct__sigsys_191 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_184 _sifields ;
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
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_25676_194 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_25684_195 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_25697_197 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_25698_196 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_25697_197 ldv_25697 ;
};
union __anonunion_type_data_198 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_200 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_25713_199 {
   union __anonunion_payload_200 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_25676_194 ldv_25676 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_25684_195 ldv_25684 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_25698_196 ldv_25698 ;
   union __anonunion_type_data_198 type_data ;
   union __anonunion_ldv_25713_199 ldv_25713 ;
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
struct serial_struct {
   int type ;
   int line ;
   unsigned int port ;
   int irq ;
   int flags ;
   int xmit_fifo_size ;
   int custom_divisor ;
   int baud_base ;
   unsigned short close_delay ;
   char io_type ;
   char reserved_char[1U] ;
   int hub6 ;
   unsigned short closing_wait ;
   unsigned short closing_wait2 ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned int port_high ;
   unsigned long iomap_base ;
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
struct uart_ops {
   unsigned int (*tx_empty)(struct uart_port * ) ;
   void (*set_mctrl)(struct uart_port * , unsigned int ) ;
   unsigned int (*get_mctrl)(struct uart_port * ) ;
   void (*stop_tx)(struct uart_port * ) ;
   void (*start_tx)(struct uart_port * ) ;
   void (*throttle)(struct uart_port * ) ;
   void (*unthrottle)(struct uart_port * ) ;
   void (*send_xchar)(struct uart_port * , char ) ;
   void (*stop_rx)(struct uart_port * ) ;
   void (*enable_ms)(struct uart_port * ) ;
   void (*break_ctl)(struct uart_port * , int ) ;
   int (*startup)(struct uart_port * ) ;
   void (*shutdown)(struct uart_port * ) ;
   void (*flush_buffer)(struct uart_port * ) ;
   void (*set_termios)(struct uart_port * , struct ktermios * , struct ktermios * ) ;
   void (*set_ldisc)(struct uart_port * , int ) ;
   void (*pm)(struct uart_port * , unsigned int , unsigned int ) ;
   char const *(*type)(struct uart_port * ) ;
   void (*release_port)(struct uart_port * ) ;
   int (*request_port)(struct uart_port * ) ;
   void (*config_port)(struct uart_port * , int ) ;
   int (*verify_port)(struct uart_port * , struct serial_struct * ) ;
   int (*ioctl)(struct uart_port * , unsigned int , unsigned long ) ;
   int (*poll_init)(struct uart_port * ) ;
   void (*poll_put_char)(struct uart_port * , unsigned char ) ;
   int (*poll_get_char)(struct uart_port * ) ;
};
struct uart_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 rx ;
   __u32 tx ;
   __u32 frame ;
   __u32 overrun ;
   __u32 parity ;
   __u32 brk ;
   __u32 buf_overrun ;
};
typedef unsigned int upf_t;
struct uart_state;
struct uart_port {
   spinlock_t lock ;
   unsigned long iobase ;
   unsigned char *membase ;
   unsigned int (*serial_in)(struct uart_port * , int ) ;
   void (*serial_out)(struct uart_port * , int , int ) ;
   void (*set_termios)(struct uart_port * , struct ktermios * , struct ktermios * ) ;
   int (*handle_irq)(struct uart_port * ) ;
   void (*pm)(struct uart_port * , unsigned int , unsigned int ) ;
   void (*handle_break)(struct uart_port * ) ;
   unsigned int irq ;
   unsigned long irqflags ;
   unsigned int uartclk ;
   unsigned int fifosize ;
   unsigned char x_char ;
   unsigned char regshift ;
   unsigned char iotype ;
   unsigned char unused1 ;
   unsigned int read_status_mask ;
   unsigned int ignore_status_mask ;
   struct uart_state *state ;
   struct uart_icount icount ;
   struct console *cons ;
   unsigned long sysrq ;
   upf_t flags ;
   unsigned int mctrl ;
   unsigned int timeout ;
   unsigned int type ;
   struct uart_ops const *ops ;
   unsigned int custom_divisor ;
   unsigned int line ;
   resource_size_t mapbase ;
   struct device *dev ;
   unsigned char hub6 ;
   unsigned char suspended ;
   unsigned char irq_wake ;
   unsigned char unused[2U] ;
   void *private_data ;
};
enum uart_pm_state {
    UART_PM_STATE_ON = 0,
    UART_PM_STATE_OFF = 3,
    UART_PM_STATE_UNDEFINED = 4
} ;
struct uart_state {
   struct tty_port port ;
   enum uart_pm_state pm_state ;
   struct circ_buf xmit ;
   struct uart_port *uart_port ;
};
struct uart_driver {
   struct module *owner ;
   char const *driver_name ;
   char const *dev_name ;
   int major ;
   int minor ;
   int nr ;
   struct console *cons ;
   struct uart_state *state ;
   struct tty_driver *tty_driver ;
};
struct plat_serial8250_port {
   unsigned long iobase ;
   void *membase ;
   resource_size_t mapbase ;
   unsigned int irq ;
   unsigned long irqflags ;
   unsigned int uartclk ;
   void *private_data ;
   unsigned char regshift ;
   unsigned char iotype ;
   unsigned char hub6 ;
   upf_t flags ;
   unsigned int type ;
   unsigned int (*serial_in)(struct uart_port * , int ) ;
   void (*serial_out)(struct uart_port * , int , int ) ;
   void (*set_termios)(struct uart_port * , struct ktermios * , struct ktermios * ) ;
   int (*handle_irq)(struct uart_port * ) ;
   void (*pm)(struct uart_port * , unsigned int , unsigned int ) ;
   void (*handle_break)(struct uart_port * ) ;
};
struct uart_8250_dma;
struct uart_8250_port {
   struct uart_port port ;
   struct timer_list timer ;
   struct list_head list ;
   unsigned short capabilities ;
   unsigned short bugs ;
   unsigned int tx_loadsz ;
   unsigned char acr ;
   unsigned char ier ;
   unsigned char lcr ;
   unsigned char mcr ;
   unsigned char mcr_mask ;
   unsigned char mcr_force ;
   unsigned char cur_iotype ;
   unsigned char lsr_saved_flags ;
   unsigned char msr_saved_flags ;
   struct uart_8250_dma *dma ;
   int (*dl_read)(struct uart_8250_port * ) ;
   void (*dl_write)(struct uart_8250_port * , int ) ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_27882_202 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_27882_202 ldv_27882 ;
   unsigned long nr_segs ;
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
enum dma_ctrl_cmd {
    DMA_TERMINATE_ALL = 0,
    DMA_PAUSE = 1,
    DMA_RESUME = 2,
    DMA_SLAVE_CONFIG = 3,
    FSLDMA_EXTERNAL_START = 4
} ;
enum sum_check_flags {
    SUM_CHECK_P_RESULT = 1,
    SUM_CHECK_Q_RESULT = 2
} ;
struct __anonstruct_dma_cap_mask_t_203 {
   unsigned long bits[1U] ;
};
typedef struct __anonstruct_dma_cap_mask_t_203 dma_cap_mask_t;
struct dma_chan_percpu {
   unsigned long memcpy_count ;
   unsigned long bytes_transferred ;
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
    DMA_SLAVE_BUSWIDTH_4_BYTES = 4,
    DMA_SLAVE_BUSWIDTH_8_BYTES = 8
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
struct dma_slave_caps {
   u32 src_addr_widths ;
   u32 dstn_addr_widths ;
   u32 directions ;
   bool cmd_pause ;
   bool cmd_terminate ;
   enum dma_residue_granularity residue_granularity ;
};
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
                                                             unsigned long , void * ) ;
   struct dma_async_tx_descriptor *(*device_prep_interleaved_dma)(struct dma_chan * ,
                                                                  struct dma_interleaved_template * ,
                                                                  unsigned long ) ;
   int (*device_control)(struct dma_chan * , enum dma_ctrl_cmd , unsigned long ) ;
   enum dma_status (*device_tx_status)(struct dma_chan * , dma_cookie_t , struct dma_tx_state * ) ;
   void (*device_issue_pending)(struct dma_chan * ) ;
   int (*device_slave_caps)(struct dma_chan * , struct dma_slave_caps * ) ;
};
struct uart_8250_dma {
   bool (*fn)(struct dma_chan * , void * ) ;
   void *rx_param ;
   void *tx_param ;
   int rx_chan_id ;
   int tx_chan_id ;
   struct dma_slave_config rxconf ;
   struct dma_slave_config txconf ;
   struct dma_chan *rxchan ;
   struct dma_chan *txchan ;
   dma_addr_t rx_addr ;
   dma_addr_t tx_addr ;
   dma_cookie_t rx_cookie ;
   dma_cookie_t tx_cookie ;
   void *rx_buf ;
   size_t rx_size ;
   size_t tx_size ;
   unsigned char tx_running : 1 ;
};
struct old_serial_port {
   unsigned int uart ;
   unsigned int baud_base ;
   unsigned int port ;
   unsigned int irq ;
   unsigned int flags ;
   unsigned char hub6 ;
   unsigned char io_type ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned long irqflags ;
};
struct serial8250_config {
   char const *name ;
   unsigned short fifo_size ;
   unsigned short tx_loadsz ;
   unsigned char fcr ;
   unsigned int flags ;
};
struct irq_info {
   struct hlist_node node ;
   int irq ;
   spinlock_t lock ;
   struct list_head *head ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
enum hrtimer_restart;
struct pnp_device_id {
   __u8 id[8U] ;
   kernel_ulong_t driver_data ;
};
struct __anonstruct_devs_161 {
   __u8 id[8U] ;
};
struct pnp_card_device_id {
   __u8 id[8U] ;
   kernel_ulong_t driver_data ;
   struct __anonstruct_devs_161 devs[8U] ;
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
struct pnp_protocol;
struct pnp_id;
struct pnp_card {
   struct device dev ;
   unsigned char number ;
   struct list_head global_list ;
   struct list_head protocol_list ;
   struct list_head devices ;
   struct pnp_protocol *protocol ;
   struct pnp_id *id ;
   char name[50U] ;
   unsigned char pnpver ;
   unsigned char productver ;
   unsigned int serial ;
   unsigned char checksum ;
   struct proc_dir_entry *procdir ;
};
struct pnp_card_driver;
struct pnp_card_link {
   struct pnp_card *card ;
   struct pnp_card_driver *driver ;
   void *driver_data ;
   pm_message_t pm_state ;
};
struct pnp_driver;
struct pnp_dev {
   struct device dev ;
   u64 dma_mask ;
   unsigned int number ;
   int status ;
   struct list_head global_list ;
   struct list_head protocol_list ;
   struct list_head card_list ;
   struct list_head rdev_list ;
   struct pnp_protocol *protocol ;
   struct pnp_card *card ;
   struct pnp_driver *driver ;
   struct pnp_card_link *card_link ;
   struct pnp_id *id ;
   int active ;
   int capabilities ;
   unsigned int num_dependent_sets ;
   struct list_head resources ;
   struct list_head options ;
   char name[50U] ;
   int flags ;
   struct proc_dir_entry *procent ;
   void *data ;
};
struct pnp_id {
   char id[8U] ;
   struct pnp_id *next ;
};
struct pnp_driver {
   char *name ;
   struct pnp_device_id const *id_table ;
   unsigned int flags ;
   int (*probe)(struct pnp_dev * , struct pnp_device_id const * ) ;
   void (*remove)(struct pnp_dev * ) ;
   void (*shutdown)(struct pnp_dev * ) ;
   int (*suspend)(struct pnp_dev * , pm_message_t ) ;
   int (*resume)(struct pnp_dev * ) ;
   struct device_driver driver ;
};
struct pnp_card_driver {
   struct list_head global_list ;
   char *name ;
   struct pnp_card_device_id const *id_table ;
   unsigned int flags ;
   int (*probe)(struct pnp_card_link * , struct pnp_card_device_id const * ) ;
   void (*remove)(struct pnp_card_link * ) ;
   int (*suspend)(struct pnp_card_link * , pm_message_t ) ;
   int (*resume)(struct pnp_card_link * ) ;
   struct pnp_driver link ;
};
struct pnp_protocol {
   struct list_head protocol_list ;
   char *name ;
   int (*get)(struct pnp_dev * ) ;
   int (*set)(struct pnp_dev * ) ;
   int (*disable)(struct pnp_dev * ) ;
   bool (*can_wakeup)(struct pnp_dev * ) ;
   int (*suspend)(struct pnp_dev * , pm_message_t ) ;
   int (*resume)(struct pnp_dev * ) ;
   unsigned char number ;
   struct device dev ;
   struct list_head cards ;
   struct list_head devices ;
};
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
enum hrtimer_restart;
enum dma_transaction_type {
    DMA_MEMCPY = 0,
    DMA_XOR = 1,
    DMA_PQ = 2,
    DMA_XOR_VAL = 3,
    DMA_PQ_VAL = 4,
    DMA_INTERRUPT = 5,
    DMA_SG = 6,
    DMA_PRIVATE = 7,
    DMA_ASYNC_TX = 8,
    DMA_SLAVE = 9,
    DMA_CYCLIC = 10,
    DMA_INTERLEAVE = 11,
    DMA_TX_TYPE_END = 12
} ;
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
   union __anonunion_ldv_14154_140 __annonCompField38 ;
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
   union __anonunion_ldv_14148_138 __annonCompField37 ;
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
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_cpu_ops pv_cpu_ops ;
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
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
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
__inline static void hlist_del(struct hlist_node *n )
{
  {
  __hlist_del(n);
  n->next = (struct hlist_node *)-2401263026317557504L;
  n->pprev = (struct hlist_node **)-2401263026316508672L;
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
  {
  first = h->first;
  n->next = first;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  h->first = n;
  n->pprev = & h->first;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static void slow_down_io(void)
{
  {
  (*(pv_cpu_ops.io_delay))();
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_4(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_7(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern struct resource ioport_resource ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern unsigned long volatile jiffies ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_24(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 ) ;
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
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
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
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outb_p(unsigned char value , int port )
{
  {
  outb((int )value, port);
  slow_down_io();
  return;
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  return (value);
}
}
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned char __VERIFIER_nondet_uchar(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
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
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
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
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
struct uart_port *serial8250_pops_group0 ;
void *ldv_irq_data_1_2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct pnp_dev *serial_pnp_driver_group0 ;
int ldv_irq_1_1 = 0;
int ldv_timer_state_2 = 0;
int ldv_irq_line_1_3 ;
struct platform_device *serial8250_isa_driver_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct timer_list *ldv_timer_list_2 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
void ldv_initialize_pnp_driver_3(void) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void ldv_initialize_platform_driver_4(void) ;
void choose_interrupt_1(void) ;
void ldv_initialize_uart_ops_5(void) ;
extern void __const_udelay(unsigned long ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
__inline static void *dev_get_platdata(struct device const *dev )
{
  {
  return ((void *)dev->platform_data);
}
}
extern int dev_err(struct device const * , char const * , ...) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_del(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_26(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_27(struct platform_driver *drv ) ;
extern void do_SAK(struct tty_struct * ) ;
extern speed_t tty_termios_baud_rate(struct ktermios * ) ;
extern void tty_termios_encode_baud_rate(struct ktermios * , speed_t , speed_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
extern int nr_irqs ;
__inline static int irq_canonicalize(int irq )
{
  {
  return (irq != 2 ? irq : 9);
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
__inline static int ldv_request_irq_19(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq_nosync(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern unsigned long probe_irq_on(void) ;
extern int probe_irq_off(unsigned long ) ;
__inline static int serial_port_in(struct uart_port *up___0 , int offset )
{
  unsigned int tmp ;
  {
  tmp = (*(up___0->serial_in))(up___0, offset);
  return ((int )tmp);
}
}
__inline static void serial_port_out(struct uart_port *up___0 , int offset , int value )
{
  {
  (*(up___0->serial_out))(up___0, offset, value);
  return;
}
}
extern void uart_write_wakeup(struct uart_port * ) ;
extern void uart_update_timeout(struct uart_port * , unsigned int , unsigned int ) ;
extern unsigned int uart_get_baud_rate(struct uart_port * , struct ktermios * , struct ktermios * ,
                                       unsigned int , unsigned int ) ;
extern unsigned int uart_get_divisor(struct uart_port * , unsigned int ) ;
__inline static int uart_poll_timeout(struct uart_port *port )
{
  int timeout ;
  {
  timeout = (int )port->timeout;
  return (timeout > 6 ? timeout / 2 + -2 : 1);
}
}
extern int uart_register_driver(struct uart_driver * ) ;
extern void uart_unregister_driver(struct uart_driver * ) ;
extern int uart_add_one_port(struct uart_driver * , struct uart_port * ) ;
extern int uart_remove_one_port(struct uart_driver * , struct uart_port * ) ;
extern int uart_match_port(struct uart_port * , struct uart_port * ) ;
extern int uart_suspend_port(struct uart_driver * , struct uart_port * ) ;
extern int uart_resume_port(struct uart_driver * , struct uart_port * ) ;
__inline static int uart_tx_stopped(struct uart_port *port )
{
  struct tty_struct *tty ;
  {
  tty = (port->state)->port.tty;
  if ((unsigned int )*((unsigned char *)tty + 1316UL) != 0U || (unsigned int )*((unsigned char *)tty + 1316UL) != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void uart_handle_dcd_change(struct uart_port * , unsigned int ) ;
extern void uart_handle_cts_change(struct uart_port * , unsigned int ) ;
extern void uart_insert_char(struct uart_port * , unsigned int , unsigned int ,
                             unsigned int , unsigned int ) ;
__inline static int uart_handle_break(struct uart_port *port )
{
  struct uart_state *state ;
  {
  state = port->state;
  if ((unsigned long )port->handle_break != (unsigned long )((void (*)(struct uart_port * ))0)) {
    (*(port->handle_break))(port);
  } else {
  }
  if ((port->flags & 4U) != 0U) {
    do_SAK(state->port.tty);
  } else {
  }
  return (0);
}
}
int serial8250_register_8250_port(struct uart_8250_port *up___0 ) ;
void serial8250_unregister_port(int line ) ;
void serial8250_suspend_port(int line ) ;
void serial8250_resume_port(int line ) ;
int early_serial_setup(struct uart_port *port ) ;
void serial8250_do_set_termios(struct uart_port *port , struct ktermios *termios ,
                               struct ktermios *old ) ;
void serial8250_do_pm(struct uart_port *port , unsigned int state , unsigned int oldstate ) ;
int serial8250_handle_irq(struct uart_port *port , unsigned int iir ) ;
unsigned char serial8250_rx_chars(struct uart_8250_port *up___0 , unsigned char lsr ) ;
void serial8250_tx_chars(struct uart_8250_port *up___0 ) ;
unsigned int serial8250_modem_status(struct uart_8250_port *up___0 ) ;
void serial8250_set_isa_configurator(void (*v)(int , struct uart_port * , unsigned short * ) ) ;
extern void touch_nmi_watchdog(void) ;
__inline static int serial_in(struct uart_8250_port *up___0 , int offset )
{
  unsigned int tmp ;
  {
  tmp = (*(up___0->port.serial_in))(& up___0->port, offset);
  return ((int )tmp);
}
}
__inline static void serial_out(struct uart_8250_port *up___0 , int offset , int value )
{
  {
  (*(up___0->port.serial_out))(& up___0->port, offset, value);
  return;
}
}
void serial8250_clear_and_reinit_fifos(struct uart_8250_port *p ) ;
__inline static int serial_dl_read(struct uart_8250_port *up___0 )
{
  int tmp ;
  {
  tmp = (*(up___0->dl_read))(up___0);
  return (tmp);
}
}
__inline static void serial_dl_write(struct uart_8250_port *up___0 , int value )
{
  {
  (*(up___0->dl_write))(up___0, value);
  return;
}
}
int serial8250_pnp_init(void) ;
void serial8250_pnp_exit(void) ;
__inline static int is_omap1_8250(struct uart_8250_port *pt )
{
  {
  return (0);
}
}
int serial8250_tx_dma(struct uart_8250_port *p ) ;
int serial8250_rx_dma(struct uart_8250_port *p , unsigned int iir ) ;
int serial8250_request_dma(struct uart_8250_port *p ) ;
void serial8250_release_dma(struct uart_8250_port *p ) ;
static unsigned int share_irqs = 1U;
static unsigned int nr_uarts = 4U;
static struct uart_driver serial8250_reg ;
static int serial_index(struct uart_port *port )
{
  {
  return ((int )(((unsigned int )serial8250_reg.minor + port->line) + 4294967232U));
}
}
static unsigned int skip_txen_test ;
static struct old_serial_port const old_serial_port[4U] = { {0U, 115200U, 1016U, 4U, 268435648U, (unsigned char)0, (unsigned char)0, 0, (unsigned short)0,
      0UL},
        {0U, 115200U, 760U, 3U, 268435648U, (unsigned char)0, (unsigned char)0, 0, (unsigned short)0,
      0UL},
        {0U, 115200U, 1000U, 4U, 268435648U, (unsigned char)0, (unsigned char)0, 0, (unsigned short)0,
      0UL},
        {0U, 115200U, 744U, 3U, 268435584U, (unsigned char)0, (unsigned char)0, 0, (unsigned short)0,
      0UL}};
static unsigned long probe_rsa[4U] ;
static unsigned int probe_rsa_count ;
static struct hlist_head irq_lists[32U] ;
static struct mutex hash_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "hash_mutex.wait_lock",
                                                           0, 0UL}}}}, {& hash_mutex.wait_list,
                                                                        & hash_mutex.wait_list},
    0, 0, (void *)(& hash_mutex), {0, {0, 0}, "hash_mutex", 0, 0UL}};
static struct serial8250_config const uart_config[29U] =
  { {"unknown", 1U, 1U, (unsigned char)0, 0U},
        {"8250", 1U, 1U, (unsigned char)0, 0U},
        {"16450", 1U, 1U, (unsigned char)0, 0U},
        {"16550", 1U, 1U, (unsigned char)0, 0U},
        {"16550A", 16U, 16U, 129U, 256U},
        {"Cirrus", 1U, 1U, (unsigned char)0, 0U},
        {"ST16650", 1U, 1U, (unsigned char)0, 1792U},
        {"ST16650V2", 32U, 16U, 65U, 1792U},
        {"TI16750", 64U, 64U, 161U, 3328U},
        {"Startech", 1U, 1U, (unsigned char)0, 0U},
        {"16C950/954", 128U, 128U, 129U, 1280U},
        {"ST16654", 64U, 32U, 97U, 1792U},
        {"XR16850", 128U, 128U, 129U, 1792U},
        {"RSA", 2048U, 2048U, 193U, 256U},
        {"NS16550A", 16U, 16U, 129U, 264U},
        {"XScale", 32U, 32U, 129U, 12544U},
        {0, (unsigned short)0, (unsigned short)0, (unsigned char)0, 0U},
        {"OCTEON", 64U, 64U, 129U, 256U},
        {"AR7", 16U, 16U, 1U, 2304U},
        {"U6_16550A", 64U, 64U, 129U, 2304U},
        {"Tegra", 32U, 8U, 81U, 8448U},
        {"XR17D15X", 64U, 64U, 129U, 3840U},
        {"LPC3220", 64U, 32U, 9U, 256U},
        {"CIR port", (unsigned short)0, (unsigned short)0, (unsigned char)0, 0U},
        {"XR17V35X", 256U, 256U, 241U, 3840U},
        {"TruManage", 1U, 1024U, (unsigned char)0, 16384U},
        {"Altera 16550 FIFO32", 32U, 32U, 129U, 2304U},
        {"Altera 16550 FIFO64", 64U, 64U, 129U, 2304U},
        {"Altera 16550 FIFO128", 128U, 128U, 129U, 2304U}};
static int default_serial_dl_read(struct uart_8250_port *up___0 )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = serial_in(up___0, 0);
  tmp___0 = serial_in(up___0, 1);
  return (tmp | (tmp___0 << 8));
}
}
static void default_serial_dl_write(struct uart_8250_port *up___0 , int value )
{
  {
  serial_out(up___0, 0, value & 255);
  serial_out(up___0, 1, (value >> 8) & 255);
  return;
}
}
static unsigned int hub6_serial_in(struct uart_port *p , int offset )
{
  unsigned char tmp ;
  {
  offset = offset << (int )p->regshift;
  outb((int )((unsigned int )((int )p->hub6 + (int )((unsigned char )offset)) + 255U),
       (int )p->iobase);
  tmp = inb((int )((unsigned int )p->iobase + 1U));
  return ((unsigned int )tmp);
}
}
static void hub6_serial_out(struct uart_port *p , int offset , int value )
{
  {
  offset = offset << (int )p->regshift;
  outb((int )((unsigned int )((int )p->hub6 + (int )((unsigned char )offset)) + 255U),
       (int )p->iobase);
  outb((int )((unsigned char )value), (int )((unsigned int )p->iobase + 1U));
  return;
}
}
static unsigned int mem_serial_in(struct uart_port *p , int offset )
{
  unsigned char tmp ;
  {
  offset = offset << (int )p->regshift;
  tmp = readb((void const volatile *)p->membase + (unsigned long )offset);
  return ((unsigned int )tmp);
}
}
static void mem_serial_out(struct uart_port *p , int offset , int value )
{
  {
  offset = offset << (int )p->regshift;
  writeb((int )((unsigned char )value), (void volatile *)p->membase + (unsigned long )offset);
  return;
}
}
static void mem32_serial_out(struct uart_port *p , int offset , int value )
{
  {
  offset = offset << (int )p->regshift;
  writel((unsigned int )value, (void volatile *)p->membase + (unsigned long )offset);
  return;
}
}
static unsigned int mem32_serial_in(struct uart_port *p , int offset )
{
  unsigned int tmp ;
  {
  offset = offset << (int )p->regshift;
  tmp = readl((void const volatile *)p->membase + (unsigned long )offset);
  return (tmp);
}
}
static unsigned int io_serial_in(struct uart_port *p , int offset )
{
  unsigned char tmp ;
  {
  offset = offset << (int )p->regshift;
  tmp = inb((int )((unsigned int )p->iobase + (unsigned int )offset));
  return ((unsigned int )tmp);
}
}
static void io_serial_out(struct uart_port *p , int offset , int value )
{
  {
  offset = offset << (int )p->regshift;
  outb((int )((unsigned char )value), (int )((unsigned int )p->iobase + (unsigned int )offset));
  return;
}
}
static int serial8250_default_handle_irq(struct uart_port *port ) ;
static int exar_handle_irq(struct uart_port *port ) ;
static void set_io_from_upio(struct uart_port *p )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)p;
  up___0 = (struct uart_8250_port *)__mptr;
  up___0->dl_read = & default_serial_dl_read;
  up___0->dl_write = & default_serial_dl_write;
  switch ((int )p->iotype) {
  case 1:
  p->serial_in = & hub6_serial_in;
  p->serial_out = & hub6_serial_out;
  goto ldv_31599;
  case 2:
  p->serial_in = & mem_serial_in;
  p->serial_out = & mem_serial_out;
  goto ldv_31599;
  case 3:
  p->serial_in = & mem32_serial_in;
  p->serial_out = & mem32_serial_out;
  goto ldv_31599;
  default:
  p->serial_in = & io_serial_in;
  p->serial_out = & io_serial_out;
  goto ldv_31599;
  }
  ldv_31599:
  up___0->cur_iotype = p->iotype;
  p->handle_irq = & serial8250_default_handle_irq;
  return;
}
}
static void serial_port_out_sync(struct uart_port *p , int offset , int value )
{
  {
  switch ((int )p->iotype) {
  case 2: ;
  case 3: ;
  case 4:
  (*(p->serial_out))(p, offset, value);
  (*(p->serial_in))(p, 3);
  goto ldv_31611;
  default:
  (*(p->serial_out))(p, offset, value);
  }
  ldv_31611: ;
  return;
}
}
static void serial_icr_write(struct uart_8250_port *up___0 , int offset , int value )
{
  {
  serial_out(up___0, 7, offset);
  serial_out(up___0, 5, value);
  return;
}
}
static unsigned int serial_icr_read(struct uart_8250_port *up___0 , int offset )
{
  unsigned int value ;
  int tmp ;
  {
  serial_icr_write(up___0, 0, (int )((unsigned int )up___0->acr | 64U));
  serial_out(up___0, 7, offset);
  tmp = serial_in(up___0, 5);
  value = (unsigned int )tmp;
  serial_icr_write(up___0, 0, (int )up___0->acr);
  return (value);
}
}
static void serial8250_clear_fifos(struct uart_8250_port *p )
{
  {
  if (((int )p->capabilities & 256) != 0) {
    serial_out(p, 2, 1);
    serial_out(p, 2, 7);
    serial_out(p, 2, 0);
  } else {
  }
  return;
}
}
void serial8250_clear_and_reinit_fifos(struct uart_8250_port *p )
{
  unsigned char fcr ;
  {
  serial8250_clear_fifos(p);
  fcr = uart_config[p->port.type].fcr;
  serial_out(p, 2, (int )fcr);
  return;
}
}
static char const __kstrtab_serial8250_clear_and_reinit_fifos[34U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'c',
        'l', 'e', 'a', 'r',
        '_', 'a', 'n', 'd',
        '_', 'r', 'e', 'i',
        'n', 'i', 't', '_',
        'f', 'i', 'f', 'o',
        's', '\000'};
struct kernel_symbol const __ksymtab_serial8250_clear_and_reinit_fifos ;
struct kernel_symbol const __ksymtab_serial8250_clear_and_reinit_fifos = {(unsigned long )(& serial8250_clear_and_reinit_fifos), (char const *)(& __kstrtab_serial8250_clear_and_reinit_fifos)};
static void serial8250_set_sleep(struct uart_8250_port *p , int sleep )
{
  {
  if (p->port.type == 24U || p->port.type == 21U) {
    serial_out(p, 139, sleep != 0 ? 255 : 0);
    return;
  } else {
  }
  if (((int )p->capabilities & 1024) != 0) {
    if (((int )p->capabilities & 512) != 0) {
      serial_out(p, 3, 191);
      serial_out(p, 2, 16);
      serial_out(p, 3, 0);
    } else {
    }
    serial_out(p, 1, sleep != 0 ? 16 : 0);
    if (((int )p->capabilities & 512) != 0) {
      serial_out(p, 3, 191);
      serial_out(p, 2, 0);
      serial_out(p, 3, 0);
    } else {
    }
  } else {
  }
  return;
}
}
static int __enable_rsa(struct uart_8250_port *up___0 )
{
  unsigned char mode ;
  int result ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = serial_in(up___0, -8);
  mode = (unsigned char )tmp;
  result = (int )mode & 4;
  if (result == 0) {
    serial_out(up___0, -8, (int )((unsigned int )mode | 4U));
    tmp___0 = serial_in(up___0, -8);
    mode = (unsigned char )tmp___0;
    result = (int )mode & 4;
  } else {
  }
  if (result != 0) {
    up___0->port.uartclk = 14745600U;
  } else {
  }
  return (result);
}
}
static void enable_rsa(struct uart_8250_port *up___0 )
{
  {
  if (up___0->port.type == 13U) {
    if (up___0->port.uartclk != 14745600U) {
      spin_lock_irq(& up___0->port.lock);
      __enable_rsa(up___0);
      spin_unlock_irq(& up___0->port.lock);
    } else {
    }
    if (up___0->port.uartclk == 14745600U) {
      serial_out(up___0, -6, 0);
    } else {
    }
  } else {
  }
  return;
}
}
static void disable_rsa(struct uart_8250_port *up___0 )
{
  unsigned char mode ;
  int result ;
  int tmp ;
  int tmp___0 ;
  {
  if (up___0->port.type == 13U && up___0->port.uartclk == 14745600U) {
    spin_lock_irq(& up___0->port.lock);
    tmp = serial_in(up___0, -8);
    mode = (unsigned char )tmp;
    result = ((int )mode & 4) == 0;
    if (result == 0) {
      serial_out(up___0, -8, (int )mode & -5);
      tmp___0 = serial_in(up___0, -8);
      mode = (unsigned char )tmp___0;
      result = ((int )mode & 4) == 0;
    } else {
    }
    if (result != 0) {
      up___0->port.uartclk = 1843200U;
    } else {
    }
    spin_unlock_irq(& up___0->port.lock);
  } else {
  }
  return;
}
}
static int size_fifo(struct uart_8250_port *up___0 )
{
  unsigned char old_fcr ;
  unsigned char old_mcr ;
  unsigned char old_lcr ;
  unsigned short old_dl ;
  int count ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  {
  tmp = serial_in(up___0, 3);
  old_lcr = (unsigned char )tmp;
  serial_out(up___0, 3, 0);
  tmp___0 = serial_in(up___0, 2);
  old_fcr = (unsigned char )tmp___0;
  tmp___1 = serial_in(up___0, 4);
  old_mcr = (unsigned char )tmp___1;
  serial_out(up___0, 2, 7);
  serial_out(up___0, 4, 16);
  serial_out(up___0, 3, 128);
  tmp___2 = serial_dl_read(up___0);
  old_dl = (unsigned short )tmp___2;
  serial_dl_write(up___0, 1);
  serial_out(up___0, 3, 3);
  count = 0;
  goto ldv_31663;
  ldv_31662:
  serial_out(up___0, 0, count);
  count = count + 1;
  ldv_31663: ;
  if (count <= 255) {
    goto ldv_31662;
  } else {
  }
  __ms = 20UL;
  goto ldv_31667;
  ldv_31666:
  __const_udelay(4295000UL);
  ldv_31667:
  tmp___3 = __ms;
  __ms = __ms - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_31666;
  } else {
  }
  count = 0;
  goto ldv_31670;
  ldv_31669:
  serial_in(up___0, 0);
  count = count + 1;
  ldv_31670:
  tmp___4 = serial_in(up___0, 5);
  if (tmp___4 & 1 && count <= 255) {
    goto ldv_31669;
  } else {
  }
  serial_out(up___0, 2, (int )old_fcr);
  serial_out(up___0, 4, (int )old_mcr);
  serial_out(up___0, 3, 128);
  serial_dl_write(up___0, (int )old_dl);
  serial_out(up___0, 3, (int )old_lcr);
  return (count);
}
}
static unsigned int autoconfig_read_divisor_id(struct uart_8250_port *p )
{
  unsigned char old_dll ;
  unsigned char old_dlm ;
  unsigned char old_lcr ;
  unsigned int id ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = serial_in(p, 3);
  old_lcr = (unsigned char )tmp;
  serial_out(p, 3, 128);
  tmp___0 = serial_in(p, 0);
  old_dll = (unsigned char )tmp___0;
  tmp___1 = serial_in(p, 1);
  old_dlm = (unsigned char )tmp___1;
  serial_out(p, 0, 0);
  serial_out(p, 1, 0);
  tmp___2 = serial_in(p, 0);
  tmp___3 = serial_in(p, 1);
  id = (unsigned int )(tmp___2 | (tmp___3 << 8));
  serial_out(p, 0, (int )old_dll);
  serial_out(p, 1, (int )old_dlm);
  serial_out(p, 3, (int )old_lcr);
  return (id);
}
}
static void autoconfig_has_efr(struct uart_8250_port *up___0 )
{
  unsigned int id1 ;
  unsigned int id2 ;
  unsigned int id3 ;
  unsigned int rev ;
  int tmp ;
  {
  up___0->capabilities = (unsigned int )up___0->capabilities | 1536U;
  up___0->acr = 0U;
  serial_out(up___0, 3, 191);
  serial_out(up___0, 2, 16);
  serial_out(up___0, 3, 0);
  id1 = serial_icr_read(up___0, 8);
  id2 = serial_icr_read(up___0, 9);
  id3 = serial_icr_read(up___0, 10);
  rev = serial_icr_read(up___0, 11);
  if ((id1 == 22U && id2 == 201U) && ((id3 == 80U || id3 == 82U) || id3 == 84U)) {
    up___0->port.type = 10U;
    if (id3 == 82U && rev == 1U) {
      up___0->bugs = (unsigned int )up___0->bugs | 1U;
    } else {
    }
    return;
  } else {
  }
  id1 = autoconfig_read_divisor_id(up___0);
  id2 = id1 >> 8;
  if ((id2 == 16U || id2 == 18U) || id2 == 20U) {
    up___0->port.type = 12U;
    return;
  } else {
  }
  tmp = size_fifo(up___0);
  if (tmp == 64) {
    up___0->port.type = 11U;
  } else {
    up___0->port.type = 7U;
  }
  return;
}
}
static void autoconfig_8250(struct uart_8250_port *up___0 )
{
  unsigned char scratch ;
  unsigned char status1 ;
  unsigned char status2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  up___0->port.type = 1U;
  tmp = serial_in(up___0, 7);
  scratch = (unsigned char )tmp;
  serial_out(up___0, 7, 165);
  tmp___0 = serial_in(up___0, 7);
  status1 = (unsigned char )tmp___0;
  serial_out(up___0, 7, 90);
  tmp___1 = serial_in(up___0, 7);
  status2 = (unsigned char )tmp___1;
  serial_out(up___0, 7, (int )scratch);
  if ((unsigned int )status1 == 165U && (unsigned int )status2 == 90U) {
    up___0->port.type = 2U;
  } else {
  }
  return;
}
}
static int broken_efr(struct uart_8250_port *up___0 )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  tmp = autoconfig_read_divisor_id(up___0);
  if (tmp == 513U) {
    tmp___0 = size_fifo(up___0);
    if (tmp___0 == 16) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static int ns16550a_goto_highspeed(struct uart_8250_port *up___0 )
{
  unsigned char status ;
  int tmp ;
  {
  tmp = serial_in(up___0, 4);
  status = (unsigned char )tmp;
  if (((int )status & 48) == 16) {
    return (0);
  } else {
    status = (unsigned int )status & 79U;
    status = (unsigned int )status | 16U;
    serial_out(up___0, 4, (int )status);
  }
  return (1);
}
}
static void autoconfig_16550a(struct uart_8250_port *up___0 )
{
  unsigned char status1 ;
  unsigned char status2 ;
  unsigned int iersave ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned short quot ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  up___0->port.type = 4U;
  up___0->capabilities = (unsigned int )up___0->capabilities | 256U;
  if ((up___0->port.flags & 33554432U) != 0U) {
    tmp = serial_in(up___0, 141);
    status1 = (unsigned char )tmp;
    if (((unsigned int )status1 == 130U || (unsigned int )status1 == 132U) || (unsigned int )status1 == 136U) {
      up___0->port.type = 24U;
      up___0->capabilities = (unsigned int )up___0->capabilities | 3584U;
      return;
    } else {
    }
  } else {
  }
  serial_out(up___0, 3, 128);
  tmp___1 = serial_in(up___0, 2);
  if (tmp___1 == 0) {
    serial_out(up___0, 2, 168);
    tmp___0 = serial_in(up___0, 2);
    if (tmp___0 != 0) {
      up___0->port.type = 6U;
      up___0->capabilities = (unsigned int )up___0->capabilities | 1536U;
    } else {
    }
    serial_out(up___0, 2, 0);
    return;
  } else {
  }
  serial_out(up___0, 3, 191);
  tmp___2 = serial_in(up___0, 2);
  if (tmp___2 == 0) {
    tmp___3 = broken_efr(up___0);
    if (tmp___3 == 0) {
      autoconfig_has_efr(up___0);
      return;
    } else {
    }
  } else {
  }
  serial_out(up___0, 3, 0);
  tmp___4 = serial_in(up___0, 4);
  status1 = (unsigned char )tmp___4;
  serial_out(up___0, 3, 224);
  tmp___5 = serial_in(up___0, 2);
  status2 = (unsigned char )tmp___5;
  if ((((int )status2 ^ (int )status1) & 16) == 0) {
    serial_out(up___0, 3, 0);
    serial_out(up___0, 4, (int )((unsigned int )status1 ^ 16U));
    serial_out(up___0, 3, 224);
    tmp___6 = serial_in(up___0, 2);
    status2 = (unsigned char )tmp___6;
    serial_out(up___0, 3, 0);
    serial_out(up___0, 4, (int )status1);
    if ((((int )status2 ^ (int )status1) & 16) != 0) {
      serial_out(up___0, 3, 224);
      tmp___7 = serial_dl_read(up___0);
      quot = (unsigned short )tmp___7;
      quot = (int )quot << 3U;
      tmp___8 = ns16550a_goto_highspeed(up___0);
      if (tmp___8 != 0) {
        serial_dl_write(up___0, (int )quot);
      } else {
      }
      serial_out(up___0, 3, 0);
      up___0->port.uartclk = 14745600U;
      up___0->port.type = 14U;
      up___0->capabilities = (unsigned int )up___0->capabilities | 8U;
      return;
    } else {
    }
  } else {
  }
  serial_out(up___0, 3, 0);
  serial_out(up___0, 2, 33);
  tmp___9 = serial_in(up___0, 2);
  status1 = (unsigned char )(tmp___9 >> 5);
  serial_out(up___0, 2, 1);
  serial_out(up___0, 3, 128);
  serial_out(up___0, 2, 33);
  tmp___10 = serial_in(up___0, 2);
  status2 = (unsigned char )(tmp___10 >> 5);
  serial_out(up___0, 2, 1);
  serial_out(up___0, 3, 0);
  if ((unsigned int )status1 == 6U && (unsigned int )status2 == 7U) {
    up___0->port.type = 8U;
    up___0->capabilities = (unsigned int )up___0->capabilities | 3072U;
    return;
  } else {
  }
  tmp___11 = serial_in(up___0, 1);
  iersave = (unsigned int )tmp___11;
  serial_out(up___0, 1, (int )iersave & -65);
  tmp___13 = serial_in(up___0, 1);
  if ((tmp___13 & 64) == 0) {
    serial_out(up___0, 1, (int )(iersave | 64U));
    tmp___12 = serial_in(up___0, 1);
    if ((tmp___12 & 64) != 0) {
      up___0->port.type = 15U;
      up___0->capabilities = (unsigned int )up___0->capabilities | 12288U;
      return;
    } else {
    }
  } else {
  }
  serial_out(up___0, 1, (int )iersave);
  if ((up___0->port.flags & 33554432U) != 0U) {
    up___0->port.type = 21U;
    up___0->capabilities = (unsigned int )up___0->capabilities | 3584U;
    return;
  } else {
  }
  if (up___0->port.type == 4U) {
    tmp___14 = size_fifo(up___0);
    if (tmp___14 == 64) {
      up___0->port.type = 19U;
      up___0->capabilities = (unsigned int )up___0->capabilities | 2048U;
    } else {
    }
  } else {
  }
  return;
}
}
static void autoconfig(struct uart_8250_port *up___0 , unsigned int probeflags )
{
  unsigned char status1 ;
  unsigned char scratch ;
  unsigned char scratch2 ;
  unsigned char scratch3 ;
  unsigned char save_lcr ;
  unsigned char save_mcr ;
  struct uart_port *port ;
  unsigned long flags ;
  unsigned int old_capabilities ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int i ;
  int tmp___6 ;
  int tmp___7 ;
  {
  port = & up___0->port;
  if ((port->iobase == 0UL && port->mapbase == 0ULL) && (unsigned long )port->membase == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  ldv_spin_lock();
  up___0->capabilities = 0U;
  up___0->bugs = 0U;
  if ((port->flags & 16384U) == 0U) {
    tmp = serial_in(up___0, 1);
    scratch = (unsigned char )tmp;
    serial_out(up___0, 1, 0);
    tmp___0 = serial_in(up___0, 1);
    scratch2 = (unsigned int )((unsigned char )tmp___0) & 15U;
    serial_out(up___0, 1, 15);
    tmp___1 = serial_in(up___0, 1);
    scratch3 = (unsigned int )((unsigned char )tmp___1) & 15U;
    serial_out(up___0, 1, (int )scratch);
    if ((unsigned int )scratch2 != 0U || (unsigned int )scratch3 != 15U) {
      spin_unlock_irqrestore(& port->lock, flags);
      goto out;
    } else {
    }
  } else {
  }
  tmp___2 = serial_in(up___0, 4);
  save_mcr = (unsigned char )tmp___2;
  tmp___3 = serial_in(up___0, 3);
  save_lcr = (unsigned char )tmp___3;
  if ((port->flags & 64U) == 0U) {
    serial_out(up___0, 4, 26);
    tmp___4 = serial_in(up___0, 6);
    status1 = (unsigned int )((unsigned char )tmp___4) & 240U;
    serial_out(up___0, 4, (int )save_mcr);
    if ((unsigned int )status1 != 144U) {
      spin_unlock_irqrestore(& port->lock, flags);
      goto out;
    } else {
    }
  } else {
  }
  serial_out(up___0, 3, 191);
  serial_out(up___0, 2, 0);
  serial_out(up___0, 3, 0);
  serial_out(up___0, 2, 1);
  tmp___5 = serial_in(up___0, 2);
  scratch = (unsigned char )(tmp___5 >> 6);
  switch ((int )scratch) {
  case 0:
  autoconfig_8250(up___0);
  goto ldv_31721;
  case 1:
  port->type = 0U;
  goto ldv_31721;
  case 2:
  port->type = 3U;
  goto ldv_31721;
  case 3:
  autoconfig_16550a(up___0);
  goto ldv_31721;
  }
  ldv_31721: ;
  if (port->type == 4U && (int )probeflags & 1) {
    i = 0;
    goto ldv_31728;
    ldv_31727: ;
    if (probe_rsa[i] == port->iobase) {
      tmp___6 = __enable_rsa(up___0);
      if (tmp___6 != 0) {
        port->type = 13U;
        goto ldv_31726;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_31728: ;
    if ((unsigned int )i < probe_rsa_count) {
      goto ldv_31727;
    } else {
    }
    ldv_31726: ;
  } else {
  }
  serial_out(up___0, 3, (int )save_lcr);
  port->fifosize = (unsigned int )uart_config[up___0->port.type].fifo_size;
  old_capabilities = (unsigned int )up___0->capabilities;
  up___0->capabilities = (unsigned short )uart_config[port->type].flags;
  up___0->tx_loadsz = (unsigned int )uart_config[port->type].tx_loadsz;
  if (port->type == 0U) {
    goto out_lock;
  } else {
  }
  if (port->type == 13U) {
    serial_out(up___0, -6, 0);
  } else {
  }
  serial_out(up___0, 4, (int )save_mcr);
  serial8250_clear_fifos(up___0);
  serial_in(up___0, 0);
  if (((int )up___0->capabilities & 4096) != 0) {
    serial_out(up___0, 1, 64);
  } else {
    serial_out(up___0, 1, 0);
  }
  out_lock:
  spin_unlock_irqrestore(& port->lock, flags);
  if ((unsigned int )up___0->capabilities != old_capabilities) {
    tmp___7 = serial_index(port);
    printk("\fttyS%d: detected caps %08x should be %08x\n", tmp___7, old_capabilities,
           (int )up___0->capabilities);
  } else {
  }
  out: ;
  return;
}
}
static void autoconfig_irq(struct uart_8250_port *up___0 )
{
  struct uart_port *port ;
  unsigned char save_mcr ;
  unsigned char save_ier ;
  unsigned char save_ICP ;
  unsigned int ICP ;
  unsigned long irqs ;
  int irq ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  port = & up___0->port;
  save_ICP = 0U;
  ICP = 0U;
  if ((port->flags & 2U) != 0U) {
    ICP = ((unsigned int )port->iobase & 4064U) | 31U;
    save_ICP = inb_p((int )ICP);
    outb_p(128, (int )ICP);
    inb_p((int )ICP);
  } else {
  }
  tmp = probe_irq_on();
  probe_irq_off(tmp);
  tmp___0 = serial_in(up___0, 4);
  save_mcr = (unsigned char )tmp___0;
  tmp___1 = serial_in(up___0, 1);
  save_ier = (unsigned char )tmp___1;
  serial_out(up___0, 4, 12);
  irqs = probe_irq_on();
  serial_out(up___0, 4, 0);
  __const_udelay(42950UL);
  if ((port->flags & 2U) != 0U) {
    serial_out(up___0, 4, 3);
  } else {
    serial_out(up___0, 4, 11);
  }
  serial_out(up___0, 1, 15);
  serial_in(up___0, 5);
  serial_in(up___0, 0);
  serial_in(up___0, 2);
  serial_in(up___0, 6);
  serial_out(up___0, 0, 255);
  __const_udelay(85900UL);
  irq = probe_irq_off(irqs);
  serial_out(up___0, 4, (int )save_mcr);
  serial_out(up___0, 1, (int )save_ier);
  if ((port->flags & 2U) != 0U) {
    outb_p((int )save_ICP, (int )ICP);
  } else {
  }
  port->irq = (unsigned int )(0 > irq ? 0 : irq);
  return;
}
}
__inline static void __stop_tx(struct uart_8250_port *p )
{
  {
  if (((int )p->ier & 2) != 0) {
    p->ier = (unsigned int )p->ier & 253U;
    serial_out(p, 1, (int )p->ier);
  } else {
  }
  return;
}
}
static void serial8250_stop_tx(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  __stop_tx(up___0);
  if (port->type == 10U) {
    up___0->acr = (unsigned int )up___0->acr | 2U;
    serial_icr_write(up___0, 0, (int )up___0->acr);
  } else {
  }
  return;
}
}
static void serial8250_start_tx(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char lsr ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  if ((unsigned long )up___0->dma != (unsigned long )((struct uart_8250_dma *)0)) {
    tmp___0 = serial8250_tx_dma(up___0);
    if (tmp___0 == 0) {
      return;
    } else {
      goto _L;
    }
  } else
  _L:
  if (((int )up___0->ier & 2) == 0) {
    up___0->ier = (unsigned int )up___0->ier | 2U;
    serial_port_out(port, 1, (int )up___0->ier);
    if (((int )up___0->bugs & 2) != 0) {
      tmp = serial_in(up___0, 5);
      lsr = (unsigned char )tmp;
      up___0->lsr_saved_flags = (unsigned char )((int )((signed char )up___0->lsr_saved_flags) | ((int )((signed char )lsr) & 30));
      if (((int )lsr & 64) != 0) {
        serial8250_tx_chars(up___0);
      } else {
      }
    } else {
    }
  } else {
  }
  if (port->type == 10U && ((int )up___0->acr & 2) != 0) {
    up___0->acr = (unsigned int )up___0->acr & 253U;
    serial_icr_write(up___0, 0, (int )up___0->acr);
  } else {
  }
  return;
}
}
static void serial8250_stop_rx(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  up___0->ier = (unsigned int )up___0->ier & 251U;
  up___0->port.read_status_mask = up___0->port.read_status_mask & 4294967294U;
  serial_port_out(port, 1, (int )up___0->ier);
  return;
}
}
static void serial8250_enable_ms(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  if (((int )up___0->bugs & 4) != 0) {
    return;
  } else {
  }
  up___0->ier = (unsigned int )up___0->ier | 8U;
  serial_port_out(port, 1, (int )up___0->ier);
  return;
}
}
unsigned char serial8250_rx_chars(struct uart_8250_port *up___0 , unsigned char lsr )
{
  struct uart_port *port ;
  unsigned char ch ;
  int max_count ;
  char flag ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  port = & up___0->port;
  max_count = 256;
  ldv_31778:
  tmp___0 = ldv__builtin_expect((long )lsr & 1L, 1L);
  if (tmp___0 != 0L) {
    tmp = serial_in(up___0, 0);
    ch = (unsigned char )tmp;
  } else {
    ch = 0U;
  }
  flag = 0;
  port->icount.rx = port->icount.rx + 1U;
  lsr = (int )up___0->lsr_saved_flags | (int )lsr;
  up___0->lsr_saved_flags = 0U;
  tmp___2 = ldv__builtin_expect(((int )lsr & 30) != 0, 0L);
  if (tmp___2 != 0L) {
    if (((int )lsr & 16) != 0) {
      lsr = (unsigned int )lsr & 243U;
      port->icount.brk = port->icount.brk + 1U;
      tmp___1 = uart_handle_break(port);
      if (tmp___1 != 0) {
        goto ignore_char;
      } else {
      }
    } else
    if (((int )lsr & 4) != 0) {
      port->icount.parity = port->icount.parity + 1U;
    } else
    if (((int )lsr & 8) != 0) {
      port->icount.frame = port->icount.frame + 1U;
    } else {
    }
    if (((int )lsr & 2) != 0) {
      port->icount.overrun = port->icount.overrun + 1U;
    } else {
    }
    lsr = (int )((unsigned char )port->read_status_mask) & (int )lsr;
    if (((int )lsr & 16) != 0) {
      flag = 1;
    } else
    if (((int )lsr & 4) != 0) {
      flag = 3;
    } else
    if (((int )lsr & 8) != 0) {
      flag = 2;
    } else {
    }
  } else {
  }
  uart_insert_char(port, (unsigned int )lsr, 2U, (unsigned int )ch, (unsigned int )flag);
  ignore_char:
  tmp___3 = serial_in(up___0, 5);
  lsr = (unsigned char )tmp___3;
  if (((int )lsr & 17) != 0) {
    tmp___4 = max_count;
    max_count = max_count - 1;
    if (tmp___4 > 0) {
      goto ldv_31778;
    } else {
      goto ldv_31779;
    }
  } else {
  }
  ldv_31779:
  spin_unlock(& port->lock);
  tty_flip_buffer_push(& (port->state)->port);
  spin_lock(& port->lock);
  return (lsr);
}
}
static char const __kstrtab_serial8250_rx_chars[20U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'x', '_', 'c', 'h',
        'a', 'r', 's', '\000'};
struct kernel_symbol const __ksymtab_serial8250_rx_chars ;
struct kernel_symbol const __ksymtab_serial8250_rx_chars = {(unsigned long )(& serial8250_rx_chars), (char const *)(& __kstrtab_serial8250_rx_chars)};
void serial8250_tx_chars(struct uart_8250_port *up___0 )
{
  struct uart_port *port ;
  struct circ_buf *xmit ;
  int count ;
  int tmp ;
  int tmp___0 ;
  {
  port = & up___0->port;
  xmit = & (port->state)->xmit;
  if ((unsigned int )port->x_char != 0U) {
    serial_out(up___0, 0, (int )port->x_char);
    port->icount.tx = port->icount.tx + 1U;
    port->x_char = 0U;
    return;
  } else {
  }
  tmp = uart_tx_stopped(port);
  if (tmp != 0) {
    serial8250_stop_tx(port);
    return;
  } else {
  }
  if (xmit->head == xmit->tail) {
    __stop_tx(up___0);
    return;
  } else {
  }
  count = (int )up___0->tx_loadsz;
  ldv_31795:
  serial_out(up___0, 0, (int )*(xmit->buf + (unsigned long )xmit->tail));
  xmit->tail = (xmit->tail + 1) & 4095;
  port->icount.tx = port->icount.tx + 1U;
  if (xmit->head == xmit->tail) {
    goto ldv_31794;
  } else {
  }
  if (((int )up___0->capabilities & 16384) != 0) {
    tmp___0 = serial_port_in(port, 5);
    if ((tmp___0 & 96) != 96) {
      goto ldv_31794;
    } else {
    }
  } else {
  }
  count = count - 1;
  if (count > 0) {
    goto ldv_31795;
  } else {
  }
  ldv_31794: ;
  if (((unsigned long )(xmit->head - xmit->tail) & 4095UL) <= 255UL) {
    uart_write_wakeup(port);
  } else {
  }
  if (xmit->head == xmit->tail) {
    __stop_tx(up___0);
  } else {
  }
  return;
}
}
static char const __kstrtab_serial8250_tx_chars[20U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 't',
        'x', '_', 'c', 'h',
        'a', 'r', 's', '\000'};
struct kernel_symbol const __ksymtab_serial8250_tx_chars ;
struct kernel_symbol const __ksymtab_serial8250_tx_chars = {(unsigned long )(& serial8250_tx_chars), (char const *)(& __kstrtab_serial8250_tx_chars)};
unsigned int serial8250_modem_status(struct uart_8250_port *up___0 )
{
  struct uart_port *port ;
  unsigned int status ;
  int tmp ;
  {
  port = & up___0->port;
  tmp = serial_in(up___0, 6);
  status = (unsigned int )tmp;
  status = (unsigned int )up___0->msr_saved_flags | status;
  up___0->msr_saved_flags = 0U;
  if (((status & 15U) != 0U && ((int )up___0->ier & 8) != 0) && (unsigned long )port->state != (unsigned long )((struct uart_state *)0)) {
    if ((status & 4U) != 0U) {
      port->icount.rng = port->icount.rng + 1U;
    } else {
    }
    if ((status & 2U) != 0U) {
      port->icount.dsr = port->icount.dsr + 1U;
    } else {
    }
    if ((status & 8U) != 0U) {
      uart_handle_dcd_change(port, status & 128U);
    } else {
    }
    if ((int )status & 1) {
      uart_handle_cts_change(port, status & 16U);
    } else {
    }
    __wake_up(& (port->state)->port.delta_msr_wait, 1U, 1, (void *)0);
  } else {
  }
  return (status);
}
}
static char const __kstrtab_serial8250_modem_status[24U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'm',
        'o', 'd', 'e', 'm',
        '_', 's', 't', 'a',
        't', 'u', 's', '\000'};
struct kernel_symbol const __ksymtab_serial8250_modem_status ;
struct kernel_symbol const __ksymtab_serial8250_modem_status = {(unsigned long )(& serial8250_modem_status), (char const *)(& __kstrtab_serial8250_modem_status)};
int serial8250_handle_irq(struct uart_port *port , unsigned int iir )
{
  unsigned char status ;
  unsigned long flags ;
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  int dma_err ;
  int tmp ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  dma_err = 0;
  if ((int )iir & 1) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  tmp = serial_port_in(port, 5);
  status = (unsigned char )tmp;
  if (((int )status & 17) != 0) {
    if ((unsigned long )up___0->dma != (unsigned long )((struct uart_8250_dma *)0)) {
      dma_err = serial8250_rx_dma(up___0, iir);
    } else {
    }
    if ((unsigned long )up___0->dma == (unsigned long )((struct uart_8250_dma *)0) || dma_err != 0) {
      status = serial8250_rx_chars(up___0, (int )status);
    } else {
    }
  } else {
  }
  serial8250_modem_status(up___0);
  if ((unsigned long )up___0->dma == (unsigned long )((struct uart_8250_dma *)0) && ((int )status & 32) != 0) {
    serial8250_tx_chars(up___0);
  } else {
  }
  spin_unlock_irqrestore(& port->lock, flags);
  return (1);
}
}
static char const __kstrtab_serial8250_handle_irq[22U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'h',
        'a', 'n', 'd', 'l',
        'e', '_', 'i', 'r',
        'q', '\000'};
struct kernel_symbol const __ksymtab_serial8250_handle_irq ;
struct kernel_symbol const __ksymtab_serial8250_handle_irq = {(unsigned long )(& serial8250_handle_irq), (char const *)(& __kstrtab_serial8250_handle_irq)};
static int serial8250_default_handle_irq(struct uart_port *port )
{
  unsigned int iir ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = serial_port_in(port, 2);
  iir = (unsigned int )tmp;
  tmp___0 = serial8250_handle_irq(port, iir);
  return (tmp___0);
}
}
static int exar_handle_irq(struct uart_port *port )
{
  unsigned char int0 ;
  unsigned char int1 ;
  unsigned char int2 ;
  unsigned char int3 ;
  unsigned int iir ;
  int tmp ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = serial_port_in(port, 2);
  iir = (unsigned int )tmp;
  ret = serial8250_handle_irq(port, iir);
  if (port->type == 24U || port->type == 21U) {
    tmp___0 = serial_port_in(port, 128);
    int0 = (unsigned char )tmp___0;
    tmp___1 = serial_port_in(port, 129);
    int1 = (unsigned char )tmp___1;
    tmp___2 = serial_port_in(port, 130);
    int2 = (unsigned char )tmp___2;
    tmp___3 = serial_port_in(port, 131);
    int3 = (unsigned char )tmp___3;
  } else {
  }
  return (ret);
}
}
static irqreturn_t serial8250_interrupt(int irq , void *dev_id )
{
  struct irq_info *i ;
  struct list_head *l ;
  struct list_head *end ;
  int pass_counter ;
  int handled ;
  struct uart_8250_port *up___0 ;
  struct uart_port *port ;
  struct list_head const *__mptr ;
  int tmp ;
  struct ratelimit_state _rs ;
  int tmp___0 ;
  int tmp___1 ;
  {
  i = (struct irq_info *)dev_id;
  end = (struct list_head *)0;
  pass_counter = 0;
  handled = 0;
  spin_lock(& i->lock);
  l = i->head;
  ldv_31863:
  __mptr = (struct list_head const *)l;
  up___0 = (struct uart_8250_port *)__mptr + 0xfffffffffffffe48UL;
  port = & up___0->port;
  tmp = (*(port->handle_irq))(port);
  if (tmp != 0) {
    handled = 1;
    end = (struct list_head *)0;
  } else
  if ((unsigned long )end == (unsigned long )((struct list_head *)0)) {
    end = l;
  } else {
  }
  l = l->next;
  if ((unsigned long )i->head == (unsigned long )l) {
    tmp___1 = pass_counter;
    pass_counter = pass_counter + 1;
    if (tmp___1 > 512) {
      _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
      _rs.lock.magic = 3735899821U;
      _rs.lock.owner_cpu = 4294967295U;
      _rs.lock.owner = (void *)-1;
      _rs.lock.dep_map.key = 0;
      _rs.lock.dep_map.class_cache[0] = 0;
      _rs.lock.dep_map.class_cache[1] = 0;
      _rs.lock.dep_map.name = "_rs.lock";
      _rs.lock.dep_map.cpu = 0;
      _rs.lock.dep_map.ip = 0UL;
      _rs.interval = 1250;
      _rs.burst = 10;
      _rs.printed = 0;
      _rs.missed = 0;
      _rs.begin = 0UL;
      tmp___0 = ___ratelimit(& _rs, "serial8250_interrupt");
      if (tmp___0 != 0) {
        printk("\vserial8250: too much work for irq%d\n", irq);
      } else {
      }
      goto ldv_31862;
    } else {
    }
  } else {
  }
  if ((unsigned long )l != (unsigned long )end) {
    goto ldv_31863;
  } else {
  }
  ldv_31862:
  spin_unlock(& i->lock);
  return (handled != 0);
}
}
static void serial_do_unlink(struct irq_info *i , struct uart_8250_port *up___0 )
{
  long tmp ;
  int tmp___0 ;
  {
  spin_lock_irq(& i->lock);
  tmp___0 = list_empty((struct list_head const *)i->head);
  if (tmp___0 == 0) {
    if ((unsigned long )i->head == (unsigned long )(& up___0->list)) {
      i->head = (i->head)->next;
    } else {
    }
    list_del(& up___0->list);
  } else {
    tmp = ldv__builtin_expect((unsigned long )i->head != (unsigned long )(& up___0->list),
                           0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_core.o.c.prepared"),
                           "i" (1693), "i" (12UL));
      ldv_31868: ;
      goto ldv_31868;
    } else {
    }
    i->head = (struct list_head *)0;
  }
  spin_unlock_irq(& i->lock);
  if ((unsigned long )i->head == (unsigned long )((struct list_head *)0)) {
    hlist_del(& i->node);
    kfree((void const *)i);
  } else {
  }
  return;
}
}
static int serial_link_irq_chain(struct uart_8250_port *up___0 )
{
  struct hlist_head *h ;
  struct hlist_node *n ;
  struct irq_info *i ;
  int ret ;
  int irq_flags ;
  struct hlist_node const *__mptr ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  irq_flags = (up___0->port.flags & 16777216U) != 0U ? 128 : 0;
  mutex_lock_nested(& hash_mutex, 0U);
  h = (struct hlist_head *)(& irq_lists) + ((unsigned long )up___0->port.irq & 31UL);
  n = h->first;
  goto ldv_31881;
  ldv_31880:
  __mptr = (struct hlist_node const *)n;
  i = (struct irq_info *)__mptr;
  if ((unsigned int )i->irq == up___0->port.irq) {
    goto ldv_31879;
  } else {
  }
  n = n->next;
  ldv_31881: ;
  if ((unsigned long )n != (unsigned long )((struct hlist_node *)0)) {
    goto ldv_31880;
  } else {
  }
  ldv_31879: ;
  if ((unsigned long )n == (unsigned long )((struct hlist_node *)0)) {
    tmp = kzalloc(104UL, 208U);
    i = (struct irq_info *)tmp;
    if ((unsigned long )i == (unsigned long )((struct irq_info *)0)) {
      mutex_unlock(& hash_mutex);
      return (-12);
    } else {
    }
    spinlock_check(& i->lock);
    __raw_spin_lock_init(& i->lock.ldv_6347.rlock, "&(&i->lock)->rlock", & __key);
    i->irq = (int )up___0->port.irq;
    hlist_add_head(& i->node, h);
  } else {
  }
  mutex_unlock(& hash_mutex);
  spin_lock_irq(& i->lock);
  if ((unsigned long )i->head != (unsigned long )((struct list_head *)0)) {
    list_add(& up___0->list, i->head);
    spin_unlock_irq(& i->lock);
    ret = 0;
  } else {
    INIT_LIST_HEAD(& up___0->list);
    i->head = & up___0->list;
    spin_unlock_irq(& i->lock);
    irq_flags = (int )((unsigned int )up___0->port.irqflags | (unsigned int )irq_flags);
    ret = ldv_request_irq_19(up___0->port.irq, & serial8250_interrupt, (unsigned long )irq_flags,
                             "serial", (void *)i);
    if (ret < 0) {
      serial_do_unlink(i, up___0);
    } else {
    }
  }
  return (ret);
}
}
static void serial_unlink_irq_chain(struct uart_8250_port *up___0 )
{
  struct irq_info *i ;
  struct hlist_node *n ;
  struct hlist_head *h ;
  struct hlist_node const *__mptr ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  mutex_lock_nested(& hash_mutex, 0U);
  h = (struct hlist_head *)(& irq_lists) + ((unsigned long )up___0->port.irq & 31UL);
  n = h->first;
  goto ldv_31893;
  ldv_31892:
  __mptr = (struct hlist_node const *)n;
  i = (struct irq_info *)__mptr;
  if ((unsigned int )i->irq == up___0->port.irq) {
    goto ldv_31891;
  } else {
  }
  n = n->next;
  ldv_31893: ;
  if ((unsigned long )n != (unsigned long )((struct hlist_node *)0)) {
    goto ldv_31892;
  } else {
  }
  ldv_31891:
  tmp = ldv__builtin_expect((unsigned long )n == (unsigned long )((struct hlist_node *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_core.o.c.prepared"),
                         "i" (1774), "i" (12UL));
    ldv_31894: ;
    goto ldv_31894;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned long )i->head == (unsigned long )((struct list_head *)0),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_core.o.c.prepared"),
                         "i" (1775), "i" (12UL));
    ldv_31895: ;
    goto ldv_31895;
  } else {
  }
  tmp___1 = list_empty((struct list_head const *)i->head);
  if (tmp___1 != 0) {
    ldv_free_irq_20(up___0->port.irq, (void *)i);
  } else {
  }
  serial_do_unlink(i, up___0);
  mutex_unlock(& hash_mutex);
  return;
}
}
static void serial8250_timeout(unsigned long data )
{
  struct uart_8250_port *up___0 ;
  int tmp ;
  {
  up___0 = (struct uart_8250_port *)data;
  (*(up___0->port.handle_irq))(& up___0->port);
  tmp = uart_poll_timeout(& up___0->port);
  ldv_mod_timer_21(& up___0->timer, (unsigned long )tmp + (unsigned long )jiffies);
  return;
}
}
static void serial8250_backup_timeout(unsigned long data )
{
  struct uart_8250_port *up___0 ;
  unsigned int iir ;
  unsigned int ier ;
  unsigned int lsr ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  up___0 = (struct uart_8250_port *)data;
  ier = 0U;
  ldv_spin_lock();
  if (up___0->port.irq != 0U) {
    tmp = serial_in(up___0, 1);
    ier = (unsigned int )tmp;
    serial_out(up___0, 1, 0);
  } else {
  }
  tmp___0 = serial_in(up___0, 2);
  iir = (unsigned int )tmp___0;
  tmp___1 = serial_in(up___0, 5);
  lsr = (unsigned int )tmp___1;
  up___0->lsr_saved_flags = (unsigned int )up___0->lsr_saved_flags | ((unsigned int )((unsigned char )lsr) & 30U);
  if ((((int )iir & 1 && ((int )up___0->ier & 2) != 0) && ((up___0->port.state)->xmit.head != (up___0->port.state)->xmit.tail || (unsigned int )up___0->port.x_char != 0U)) && (lsr & 32U) != 0U) {
    iir = iir & 4294967280U;
    iir = iir | 2U;
  } else {
  }
  if ((iir & 1U) == 0U) {
    serial8250_tx_chars(up___0);
  } else {
  }
  if (up___0->port.irq != 0U) {
    serial_out(up___0, 1, (int )ier);
  } else {
  }
  spin_unlock_irqrestore(& up___0->port.lock, flags);
  tmp___2 = uart_poll_timeout(& up___0->port);
  ldv_mod_timer_22(& up___0->timer, ((unsigned long )tmp___2 + (unsigned long )jiffies) + 50UL);
  return;
}
}
static unsigned int serial8250_tx_empty(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  unsigned int lsr ;
  int tmp ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  ldv_spin_lock();
  tmp = serial_port_in(port, 5);
  lsr = (unsigned int )tmp;
  up___0->lsr_saved_flags = (unsigned int )up___0->lsr_saved_flags | ((unsigned int )((unsigned char )lsr) & 30U);
  spin_unlock_irqrestore(& port->lock, flags);
  return ((lsr & 96U) == 96U);
}
}
static unsigned int serial8250_get_mctrl(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned int status ;
  unsigned int ret ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  status = serial8250_modem_status(up___0);
  ret = 0U;
  if ((status & 128U) != 0U) {
    ret = ret | 64U;
  } else {
  }
  if ((status & 64U) != 0U) {
    ret = ret | 128U;
  } else {
  }
  if ((status & 32U) != 0U) {
    ret = ret | 256U;
  } else {
  }
  if ((status & 16U) != 0U) {
    ret = ret | 32U;
  } else {
  }
  return (ret);
}
}
static void serial8250_set_mctrl(struct uart_port *port , unsigned int mctrl )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char mcr ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  mcr = 0U;
  if ((mctrl & 4U) != 0U) {
    mcr = (unsigned int )mcr | 2U;
  } else {
  }
  if ((mctrl & 2U) != 0U) {
    mcr = (unsigned int )mcr | 1U;
  } else {
  }
  if ((mctrl & 8192U) != 0U) {
    mcr = (unsigned int )mcr | 4U;
  } else {
  }
  if ((mctrl & 16384U) != 0U) {
    mcr = (unsigned int )mcr | 8U;
  } else {
  }
  if ((mctrl & 32768U) != 0U) {
    mcr = (unsigned int )mcr | 16U;
  } else {
  }
  mcr = (((int )up___0->mcr_mask & (int )mcr) | (int )up___0->mcr_force) | (int )up___0->mcr;
  serial_port_out(port, 4, (int )mcr);
  return;
}
}
static void serial8250_break_ctl(struct uart_port *port , int break_state )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  ldv_spin_lock();
  if (break_state == -1) {
    up___0->lcr = (unsigned int )up___0->lcr | 64U;
  } else {
    up___0->lcr = (unsigned int )up___0->lcr & 191U;
  }
  serial_port_out(port, 3, (int )up___0->lcr);
  spin_unlock_irqrestore(& port->lock, flags);
  return;
}
}
static void wait_for_xmitr(struct uart_8250_port *up___0 , int bits )
{
  unsigned int status ;
  unsigned int tmout ;
  int tmp ;
  unsigned int tmout___0 ;
  unsigned int msr ;
  int tmp___0 ;
  {
  tmout = 10000U;
  ldv_31947:
  tmp = serial_in(up___0, 5);
  status = (unsigned int )tmp;
  up___0->lsr_saved_flags = (unsigned int )up___0->lsr_saved_flags | ((unsigned int )((unsigned char )status) & 30U);
  if ((status & (unsigned int )bits) == (unsigned int )bits) {
    goto ldv_31946;
  } else {
  }
  tmout = tmout - 1U;
  if (tmout == 0U) {
    goto ldv_31946;
  } else {
  }
  __const_udelay(4295UL);
  goto ldv_31947;
  ldv_31946: ;
  if ((up___0->port.flags & 8388608U) != 0U) {
    tmout___0 = 1000000U;
    goto ldv_31952;
    ldv_31951:
    tmp___0 = serial_in(up___0, 6);
    msr = (unsigned int )tmp___0;
    up___0->msr_saved_flags = (unsigned int )up___0->msr_saved_flags | ((unsigned int )((unsigned char )msr) & 15U);
    if ((msr & 16U) != 0U) {
      goto ldv_31950;
    } else {
    }
    __const_udelay(4295UL);
    touch_nmi_watchdog();
    tmout___0 = tmout___0 - 1U;
    ldv_31952: ;
    if (tmout___0 != 0U) {
      goto ldv_31951;
    } else {
    }
    ldv_31950: ;
  } else {
  }
  return;
}
}
static int serial8250_get_poll_char(struct uart_port *port )
{
  unsigned char lsr ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = serial_port_in(port, 5);
  lsr = (unsigned char )tmp;
  if (((int )lsr & 1) == 0) {
    return (16711680);
  } else {
  }
  tmp___0 = serial_port_in(port, 0);
  return (tmp___0);
}
}
static void serial8250_put_poll_char(struct uart_port *port , unsigned char c )
{
  unsigned int ier ;
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  int tmp ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  tmp = serial_port_in(port, 1);
  ier = (unsigned int )tmp;
  if (((int )up___0->capabilities & 4096) != 0) {
    serial_port_out(port, 1, 64);
  } else {
    serial_port_out(port, 1, 0);
  }
  wait_for_xmitr(up___0, 96);
  serial_port_out(port, 0, (int )c);
  wait_for_xmitr(up___0, 96);
  serial_port_out(port, 1, (int )ier);
  return;
}
}
static int serial8250_startup(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  unsigned char lsr ;
  unsigned char iir ;
  int retval ;
  struct ratelimit_state _rs ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned char fctr ;
  int tmp___2 ;
  unsigned char iir1 ;
  int tmp___3 ;
  int tmp___4 ;
  struct _ddebug descriptor ;
  int tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  struct _ddebug descriptor___0 ;
  int tmp___11 ;
  long tmp___12 ;
  struct ratelimit_state _rs___0 ;
  int tmp___13 ;
  int tmp___14 ;
  unsigned int icp ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  if (port->type == 23U) {
    return (-19);
  } else {
  }
  if (port->fifosize == 0U) {
    port->fifosize = (unsigned int )uart_config[port->type].fifo_size;
  } else {
  }
  if (up___0->tx_loadsz == 0U) {
    up___0->tx_loadsz = (unsigned int )uart_config[port->type].tx_loadsz;
  } else {
  }
  if ((unsigned int )up___0->capabilities == 0U) {
    up___0->capabilities = (unsigned short )uart_config[port->type].flags;
  } else {
  }
  up___0->mcr = 0U;
  if ((int )port->iotype != (int )up___0->cur_iotype) {
    set_io_from_upio(port);
  } else {
  }
  if (port->type == 10U) {
    up___0->acr = 0U;
    serial_port_out(port, 3, 191);
    serial_port_out(port, 2, 16);
    serial_port_out(port, 1, 0);
    serial_port_out(port, 3, 0);
    serial_icr_write(up___0, 12, 0);
    serial_port_out(port, 3, 191);
    serial_port_out(port, 2, 16);
    serial_port_out(port, 3, 0);
  } else {
  }
  enable_rsa(up___0);
  serial8250_clear_fifos(up___0);
  serial_port_in(port, 5);
  serial_port_in(port, 0);
  serial_port_in(port, 2);
  serial_port_in(port, 6);
  if ((port->flags & 16384U) == 0U) {
    tmp___1 = serial_port_in(port, 5);
    if (tmp___1 == 255) {
      _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
      _rs.lock.magic = 3735899821U;
      _rs.lock.owner_cpu = 4294967295U;
      _rs.lock.owner = (void *)-1;
      _rs.lock.dep_map.key = 0;
      _rs.lock.dep_map.class_cache[0] = 0;
      _rs.lock.dep_map.class_cache[1] = 0;
      _rs.lock.dep_map.name = "_rs.lock";
      _rs.lock.dep_map.cpu = 0;
      _rs.lock.dep_map.ip = 0UL;
      _rs.interval = 1250;
      _rs.burst = 10;
      _rs.printed = 0;
      _rs.missed = 0;
      _rs.begin = 0UL;
      tmp___0 = ___ratelimit(& _rs, "serial8250_startup");
      if (tmp___0 != 0) {
        tmp = serial_index(port);
        printk("\016ttyS%d: LSR safety check engaged!\n", tmp);
      } else {
      }
      return (-19);
    } else {
    }
  } else {
  }
  if (port->type == 12U) {
    serial_out(up___0, 3, 191);
    tmp___2 = serial_in(up___0, 1);
    fctr = (unsigned int )((unsigned char )tmp___2) & 127U;
    serial_port_out(port, 1, (int )((unsigned int )fctr | 48U));
    serial_port_out(port, 0, 96);
    serial_port_out(port, 1, (int )((unsigned int )fctr | 176U));
    serial_port_out(port, 0, 96);
    serial_port_out(port, 3, 0);
  } else {
  }
  if (port->irq != 0U) {
    ldv_spin_lock();
    if ((up___0->port.irqflags & 128UL) != 0UL) {
      disable_irq_nosync(port->irq);
    } else {
    }
    wait_for_xmitr(up___0, 32);
    serial_port_out_sync(port, 1, 2);
    __const_udelay(4295UL);
    tmp___3 = serial_port_in(port, 2);
    iir1 = (unsigned char )tmp___3;
    serial_port_out(port, 1, 0);
    serial_port_out_sync(port, 1, 2);
    __const_udelay(4295UL);
    tmp___4 = serial_port_in(port, 2);
    iir = (unsigned char )tmp___4;
    serial_port_out(port, 1, 0);
    if ((port->irqflags & 128UL) != 0UL) {
      enable_irq(port->irq);
    } else {
    }
    spin_unlock_irqrestore(& port->lock, flags);
    if ((((int )iir1 & 1) == 0 && (int )iir & 1) || (up___0->port.flags & 67108864U) != 0U) {
      up___0->bugs = (unsigned int )up___0->bugs | 8U;
      descriptor.modname = "8250";
      descriptor.function = "serial8250_startup";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_core.o.c.prepared";
      descriptor.format = "ttyS%d - using backup timer\n";
      descriptor.lineno = 2126U;
      descriptor.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        tmp___5 = serial_index(port);
        __dynamic_pr_debug(& descriptor, "ttyS%d - using backup timer\n", tmp___5);
      } else {
      }
    } else {
    }
  } else {
  }
  if (((int )up___0->bugs & 8) != 0) {
    up___0->timer.function = & serial8250_backup_timeout;
    up___0->timer.data = (unsigned long )up___0;
    tmp___7 = uart_poll_timeout(port);
    ldv_mod_timer_23(& up___0->timer, ((unsigned long )tmp___7 + (unsigned long )jiffies) + 50UL);
  } else {
  }
  if (port->irq == 0U) {
    up___0->timer.data = (unsigned long )up___0;
    tmp___8 = uart_poll_timeout(port);
    ldv_mod_timer_24(& up___0->timer, (unsigned long )tmp___8 + (unsigned long )jiffies);
  } else {
    retval = serial_link_irq_chain(up___0);
    if (retval != 0) {
      return (retval);
    } else {
    }
  }
  serial_port_out(port, 3, 3);
  ldv_spin_lock();
  if ((up___0->port.flags & 2U) != 0U) {
    if (up___0->port.irq == 0U) {
      up___0->port.mctrl = up___0->port.mctrl | 8192U;
    } else {
    }
  } else
  if (port->irq != 0U) {
    up___0->port.mctrl = up___0->port.mctrl | 16384U;
  } else {
  }
  serial8250_set_mctrl(port, port->mctrl);
  if (skip_txen_test != 0U || (up___0->port.flags & 32768U) != 0U) {
    goto dont_test_tx_en;
  } else {
  }
  serial_port_out(port, 1, 2);
  tmp___9 = serial_port_in(port, 5);
  lsr = (unsigned char )tmp___9;
  tmp___10 = serial_port_in(port, 2);
  iir = (unsigned char )tmp___10;
  serial_port_out(port, 1, 0);
  if (((int )lsr & 64) != 0 && (int )iir & 1) {
    if (((int )up___0->bugs & 2) == 0) {
      up___0->bugs = (unsigned int )up___0->bugs | 2U;
      descriptor___0.modname = "8250";
      descriptor___0.function = "serial8250_startup";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_core.o.c.prepared";
      descriptor___0.format = "ttyS%d - enabling bad tx status workarounds\n";
      descriptor___0.lineno = 2200U;
      descriptor___0.flags = 0U;
      tmp___12 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___12 != 0L) {
        tmp___11 = serial_index(port);
        __dynamic_pr_debug(& descriptor___0, "ttyS%d - enabling bad tx status workarounds\n",
                           tmp___11);
      } else {
      }
    } else {
    }
  } else {
    up___0->bugs = (unsigned int )up___0->bugs & 65533U;
  }
  dont_test_tx_en:
  spin_unlock_irqrestore(& port->lock, flags);
  serial_port_in(port, 5);
  serial_port_in(port, 0);
  serial_port_in(port, 2);
  serial_port_in(port, 6);
  up___0->lsr_saved_flags = 0U;
  up___0->msr_saved_flags = 0U;
  if ((unsigned long )up___0->dma != (unsigned long )((struct uart_8250_dma *)0)) {
    retval = serial8250_request_dma(up___0);
    if (retval != 0) {
      _rs___0.lock.raw_lock.ldv_1458.head_tail = 0U;
      _rs___0.lock.magic = 3735899821U;
      _rs___0.lock.owner_cpu = 4294967295U;
      _rs___0.lock.owner = (void *)-1;
      _rs___0.lock.dep_map.key = 0;
      _rs___0.lock.dep_map.class_cache[0] = 0;
      _rs___0.lock.dep_map.class_cache[1] = 0;
      _rs___0.lock.dep_map.name = "_rs.lock";
      _rs___0.lock.dep_map.cpu = 0;
      _rs___0.lock.dep_map.ip = 0UL;
      _rs___0.interval = 1250;
      _rs___0.burst = 10;
      _rs___0.printed = 0;
      _rs___0.missed = 0;
      _rs___0.begin = 0UL;
      tmp___14 = ___ratelimit(& _rs___0, "serial8250_startup");
      if (tmp___14 != 0) {
        tmp___13 = serial_index(port);
        printk("\fttyS%d - failed to request DMA\n", tmp___13);
      } else {
      }
      up___0->dma = (struct uart_8250_dma *)0;
    } else {
    }
  } else {
  }
  up___0->ier = 5U;
  serial_port_out(port, 1, (int )up___0->ier);
  if ((port->flags & 2U) != 0U) {
    icp = ((unsigned int )port->iobase & 4064U) | 31U;
    outb_p(128, (int )icp);
    inb_p((int )icp);
  } else {
  }
  return (0);
}
}
static void serial8250_shutdown(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  int tmp ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  up___0->ier = 0U;
  serial_port_out(port, 1, 0);
  if ((unsigned long )up___0->dma != (unsigned long )((struct uart_8250_dma *)0)) {
    serial8250_release_dma(up___0);
  } else {
  }
  ldv_spin_lock();
  if ((port->flags & 2U) != 0U) {
    inb((int )(((unsigned int )port->iobase & 4064U) | 31U));
    port->mctrl = port->mctrl | 8192U;
  } else {
    port->mctrl = port->mctrl & 4294950911U;
  }
  serial8250_set_mctrl(port, port->mctrl);
  spin_unlock_irqrestore(& port->lock, flags);
  tmp = serial_port_in(port, 3);
  serial_port_out(port, 3, tmp & -65);
  serial8250_clear_fifos(up___0);
  disable_rsa(up___0);
  serial_port_in(port, 0);
  ldv_del_timer_sync_25(& up___0->timer);
  up___0->timer.function = & serial8250_timeout;
  if (port->irq != 0U) {
    serial_unlink_irq_chain(up___0);
  } else {
  }
  return;
}
}
static unsigned int serial8250_get_divisor(struct uart_port *port , unsigned int baud )
{
  unsigned int quot ;
  {
  if ((port->flags & 65536U) != 0U && port->uartclk / 4U == baud) {
    quot = 32769U;
  } else
  if ((port->flags & 65536U) != 0U && port->uartclk / 8U == baud) {
    quot = 32770U;
  } else {
    quot = uart_get_divisor(port, baud);
  }
  return (quot);
}
}
void serial8250_do_set_termios(struct uart_port *port , struct ktermios *termios ,
                               struct ktermios *old )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char cval ;
  unsigned char fcr ;
  unsigned long flags ;
  unsigned int baud ;
  unsigned int quot ;
  int fifo_bug ;
  unsigned char efr ;
  int tmp ;
  unsigned int baud_x32 ;
  u16 quot___0 ;
  u8 quot_frac ;
  unsigned int __x ;
  int __d ;
  speed_t tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  fcr = 0U;
  fifo_bug = 0;
  switch (termios->c_cflag & 48U) {
  case 0U:
  cval = 0U;
  goto ldv_32013;
  case 16U:
  cval = 1U;
  goto ldv_32013;
  case 32U:
  cval = 2U;
  goto ldv_32013;
  default: ;
  case 48U:
  cval = 3U;
  goto ldv_32013;
  }
  ldv_32013: ;
  if ((termios->c_cflag & 64U) != 0U) {
    cval = (unsigned int )cval | 4U;
  } else {
  }
  if ((termios->c_cflag & 256U) != 0U) {
    cval = (unsigned int )cval | 8U;
    if (((int )up___0->bugs & 16) != 0) {
      fifo_bug = 1;
    } else {
    }
  } else {
  }
  if ((termios->c_cflag & 512U) == 0U) {
    cval = (unsigned int )cval | 16U;
  } else {
  }
  if ((termios->c_cflag & 1073741824U) != 0U) {
    cval = (unsigned int )cval | 32U;
  } else {
  }
  baud = uart_get_baud_rate(port, termios, old, port->uartclk / 1048560U, port->uartclk / 16U);
  quot = serial8250_get_divisor(port, baud);
  if ((int )up___0->bugs & 1 && (quot & 255U) == 0U) {
    quot = quot + 1U;
  } else {
  }
  if (((int )up___0->capabilities & 256) != 0 && port->fifosize > 1U) {
    fcr = uart_config[port->type].fcr;
    if ((baud <= 2399U && (unsigned long )up___0->dma == (unsigned long )((struct uart_8250_dma *)0)) || fifo_bug != 0) {
      fcr = (unsigned int )fcr & 63U;
      fcr = fcr;
    } else {
    }
  } else {
  }
  if ((((int )up___0->capabilities & 2048) != 0 && port->fifosize > 31U) || (port->flags & 2097152U) != 0U) {
    up___0->mcr = (unsigned int )up___0->mcr & 223U;
    if ((int )termios->c_cflag < 0) {
      up___0->mcr = (unsigned int )up___0->mcr | 32U;
    } else {
    }
  } else {
  }
  ldv_spin_lock();
  uart_update_timeout(port, termios->c_cflag, baud);
  port->read_status_mask = 35U;
  if ((termios->c_iflag & 16U) != 0U) {
    port->read_status_mask = port->read_status_mask | 12U;
  } else {
  }
  if ((termios->c_iflag & 10U) != 0U) {
    port->read_status_mask = port->read_status_mask | 16U;
  } else {
  }
  port->ignore_status_mask = 0U;
  if ((termios->c_iflag & 4U) != 0U) {
    port->ignore_status_mask = port->ignore_status_mask | 12U;
  } else {
  }
  if ((int )termios->c_iflag & 1) {
    port->ignore_status_mask = port->ignore_status_mask | 16U;
    if ((termios->c_iflag & 4U) != 0U) {
      port->ignore_status_mask = port->ignore_status_mask | 2U;
    } else {
    }
  } else {
  }
  if ((termios->c_cflag & 128U) == 0U) {
    port->ignore_status_mask = port->ignore_status_mask | 1U;
  } else {
  }
  up___0->ier = (unsigned int )up___0->ier & 247U;
  if (((int )up___0->bugs & 4) == 0 && (((up___0->port.flags & 2048U) != 0U || (int )termios->c_cflag < 0) || (termios->c_cflag & 2048U) == 0U)) {
    up___0->ier = (unsigned int )up___0->ier | 8U;
  } else {
  }
  if (((int )up___0->capabilities & 4096) != 0) {
    up___0->ier = (unsigned int )up___0->ier | 64U;
  } else {
  }
  if (((int )up___0->capabilities & 8192) != 0) {
    up___0->ier = (unsigned int )up___0->ier | 16U;
  } else {
  }
  serial_port_out(port, 1, (int )up___0->ier);
  if (((int )up___0->capabilities & 512) != 0) {
    efr = 0U;
    if ((int )termios->c_cflag < 0) {
      efr = (unsigned int )efr | 128U;
    } else {
    }
    serial_port_out(port, 3, 191);
    if ((port->flags & 33554432U) != 0U) {
      serial_port_out(port, 9, (int )efr);
    } else {
      serial_port_out(port, 2, (int )efr);
    }
  } else {
  }
  tmp = is_omap1_8250(up___0);
  if (tmp != 0) {
    if (baud == 115200U) {
      quot = 1U;
      serial_port_out(port, 19, 1);
    } else {
      serial_port_out(port, 19, 0);
    }
  } else {
  }
  if (((int )up___0->capabilities & 8) != 0) {
    serial_port_out(port, 3, 224);
  } else {
    serial_port_out(port, 3, (int )((unsigned int )cval | 128U));
  }
  serial_dl_write(up___0, (int )quot);
  if (up___0->port.type == 24U) {
    baud_x32 = (port->uartclk * 2U) / baud;
    quot___0 = (u16 )(baud_x32 / 32U);
    __x = baud_x32 & 31U;
    __d = 2;
    quot_frac = (u8 )(((unsigned int )(__d / 2) + __x) / (unsigned int )__d);
    serial_dl_write(up___0, (int )quot___0);
    serial_port_out(port, 2, (int )quot_frac & 15);
  } else {
  }
  if (port->type == 8U) {
    serial_port_out(port, 2, (int )fcr);
  } else {
  }
  serial_port_out(port, 3, (int )cval);
  up___0->lcr = cval;
  if (port->type != 8U) {
    if ((int )fcr & 1) {
      serial_port_out(port, 2, 1);
    } else {
    }
    serial_port_out(port, 2, (int )fcr);
  } else {
  }
  serial8250_set_mctrl(port, port->mctrl);
  spin_unlock_irqrestore(& port->lock, flags);
  tmp___0 = tty_termios_baud_rate(termios);
  if (tmp___0 != 0U) {
    tty_termios_encode_baud_rate(termios, baud, baud);
  } else {
  }
  return;
}
}
static char const __kstrtab_serial8250_do_set_termios[26U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'd',
        'o', '_', 's', 'e',
        't', '_', 't', 'e',
        'r', 'm', 'i', 'o',
        's', '\000'};
struct kernel_symbol const __ksymtab_serial8250_do_set_termios ;
struct kernel_symbol const __ksymtab_serial8250_do_set_termios = {(unsigned long )(& serial8250_do_set_termios), (char const *)(& __kstrtab_serial8250_do_set_termios)};
static void serial8250_set_termios(struct uart_port *port , struct ktermios *termios ,
                                   struct ktermios *old )
{
  {
  if ((unsigned long )port->set_termios != (unsigned long )((void (*)(struct uart_port * ,
                                                                      struct ktermios * ,
                                                                      struct ktermios * ))0)) {
    (*(port->set_termios))(port, termios, old);
  } else {
    serial8250_do_set_termios(port, termios, old);
  }
  return;
}
}
static void serial8250_set_ldisc(struct uart_port *port , int new )
{
  {
  if (new == 18) {
    port->flags = port->flags | 2048U;
    serial8250_enable_ms(port);
  } else {
    port->flags = port->flags & 4294965247U;
  }
  return;
}
}
void serial8250_do_pm(struct uart_port *port , unsigned int state , unsigned int oldstate )
{
  struct uart_8250_port *p ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  p = (struct uart_8250_port *)__mptr;
  serial8250_set_sleep(p, state != 0U);
  return;
}
}
static char const __kstrtab_serial8250_do_pm[17U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'd',
        'o', '_', 'p', 'm',
        '\000'};
struct kernel_symbol const __ksymtab_serial8250_do_pm ;
struct kernel_symbol const __ksymtab_serial8250_do_pm = {(unsigned long )(& serial8250_do_pm), (char const *)(& __kstrtab_serial8250_do_pm)};
static void serial8250_pm(struct uart_port *port , unsigned int state , unsigned int oldstate )
{
  {
  if ((unsigned long )port->pm != (unsigned long )((void (*)(struct uart_port * ,
                                                             unsigned int , unsigned int ))0)) {
    (*(port->pm))(port, state, oldstate);
  } else {
    serial8250_do_pm(port, state, oldstate);
  }
  return;
}
}
static unsigned int serial8250_port_size(struct uart_8250_port *pt )
{
  int tmp ;
  {
  if ((unsigned int )pt->port.iotype == 4U) {
    return (4096U);
  } else {
  }
  tmp = is_omap1_8250(pt);
  if (tmp != 0) {
    return ((unsigned int )(22 << (int )pt->port.regshift));
  } else {
  }
  return ((unsigned int )(8 << (int )pt->port.regshift));
}
}
static int serial8250_request_std_resource(struct uart_8250_port *up___0 )
{
  unsigned int size ;
  unsigned int tmp ;
  struct uart_port *port ;
  int ret ;
  struct resource *tmp___0 ;
  void *tmp___1 ;
  struct resource *tmp___2 ;
  {
  tmp = serial8250_port_size(up___0);
  size = tmp;
  port = & up___0->port;
  ret = 0;
  switch ((int )port->iotype) {
  case 4: ;
  case 5: ;
  case 3: ;
  case 2: ;
  if (port->mapbase == 0ULL) {
    goto ldv_32078;
  } else {
  }
  tmp___0 = __request_region(& iomem_resource, port->mapbase, (resource_size_t )size,
                             "serial", 0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    ret = -16;
    goto ldv_32078;
  } else {
  }
  if ((int )port->flags < 0) {
    tmp___1 = ioremap_nocache(port->mapbase, (unsigned long )size);
    port->membase = (unsigned char *)tmp___1;
    if ((unsigned long )port->membase == (unsigned long )((unsigned char *)0U)) {
      __release_region(& iomem_resource, port->mapbase, (resource_size_t )size);
      ret = -12;
    } else {
    }
  } else {
  }
  goto ldv_32078;
  case 1: ;
  case 0:
  tmp___2 = __request_region(& ioport_resource, (resource_size_t )port->iobase, (resource_size_t )size,
                             "serial", 0);
  if ((unsigned long )tmp___2 == (unsigned long )((struct resource *)0)) {
    ret = -16;
  } else {
  }
  goto ldv_32078;
  }
  ldv_32078: ;
  return (ret);
}
}
static void serial8250_release_std_resource(struct uart_8250_port *up___0 )
{
  unsigned int size ;
  unsigned int tmp ;
  struct uart_port *port ;
  {
  tmp = serial8250_port_size(up___0);
  size = tmp;
  port = & up___0->port;
  switch ((int )port->iotype) {
  case 4: ;
  case 5: ;
  case 3: ;
  case 2: ;
  if (port->mapbase == 0ULL) {
    goto ldv_32090;
  } else {
  }
  if ((int )port->flags < 0) {
    iounmap((void volatile *)port->membase);
    port->membase = (unsigned char *)0U;
  } else {
  }
  __release_region(& iomem_resource, port->mapbase, (resource_size_t )size);
  goto ldv_32090;
  case 1: ;
  case 0:
  __release_region(& ioport_resource, (resource_size_t )port->iobase, (resource_size_t )size);
  goto ldv_32090;
  }
  ldv_32090: ;
  return;
}
}
static int serial8250_request_rsa_resource(struct uart_8250_port *up___0 )
{
  unsigned long start ;
  unsigned int size ;
  struct uart_port *port ;
  int ret ;
  struct resource *tmp ;
  {
  start = (unsigned long )(-8 << (int )up___0->port.regshift);
  size = (unsigned int )(8 << (int )up___0->port.regshift);
  port = & up___0->port;
  ret = -22;
  switch ((int )port->iotype) {
  case 1: ;
  case 0:
  start = port->iobase + start;
  tmp = __request_region(& ioport_resource, (resource_size_t )start, (resource_size_t )size,
                         "serial-rsa", 0);
  if ((unsigned long )tmp != (unsigned long )((struct resource *)0)) {
    ret = 0;
  } else {
    ret = -16;
  }
  goto ldv_32102;
  }
  ldv_32102: ;
  return (ret);
}
}
static void serial8250_release_rsa_resource(struct uart_8250_port *up___0 )
{
  unsigned long offset ;
  unsigned int size ;
  struct uart_port *port ;
  {
  offset = (unsigned long )(-8 << (int )up___0->port.regshift);
  size = (unsigned int )(8 << (int )up___0->port.regshift);
  port = & up___0->port;
  switch ((int )port->iotype) {
  case 1: ;
  case 0:
  __release_region(& ioport_resource, (resource_size_t )(port->iobase + offset), (resource_size_t )size);
  goto ldv_32111;
  }
  ldv_32111: ;
  return;
}
}
static void serial8250_release_port(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  serial8250_release_std_resource(up___0);
  if (port->type == 13U) {
    serial8250_release_rsa_resource(up___0);
  } else {
  }
  return;
}
}
static int serial8250_request_port(struct uart_port *port )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  int ret ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  if (port->type == 23U) {
    return (-19);
  } else {
  }
  ret = serial8250_request_std_resource(up___0);
  if (ret == 0 && port->type == 13U) {
    ret = serial8250_request_rsa_resource(up___0);
    if (ret < 0) {
      serial8250_release_std_resource(up___0);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static void serial8250_config_port(struct uart_port *port , int flags )
{
  struct uart_8250_port *up___0 ;
  struct uart_port const *__mptr ;
  int probeflags ;
  int ret ;
  {
  __mptr = (struct uart_port const *)port;
  up___0 = (struct uart_8250_port *)__mptr;
  probeflags = -1;
  if (port->type == 23U) {
    return;
  } else {
  }
  ret = serial8250_request_std_resource(up___0);
  if (ret < 0) {
    return;
  } else {
  }
  ret = serial8250_request_rsa_resource(up___0);
  if (ret < 0) {
    probeflags = probeflags & -2;
  } else {
  }
  if ((int )port->iotype != (int )up___0->cur_iotype) {
    set_io_from_upio(port);
  } else {
  }
  if (flags & 1) {
    autoconfig(up___0, (unsigned int )probeflags);
  } else {
  }
  if (port->type == 4U && (unsigned int )port->iotype == 4U) {
    up___0->bugs = (unsigned int )up___0->bugs | 4U;
  } else {
  }
  if (port->type == 20U) {
    up___0->bugs = (unsigned int )up___0->bugs | 4U;
  } else {
  }
  if (port->type != 0U && (flags & 2) != 0) {
    autoconfig_irq(up___0);
  } else {
  }
  if (port->type != 13U && probeflags & 1) {
    serial8250_release_rsa_resource(up___0);
  } else {
  }
  if (port->type == 0U) {
    serial8250_release_std_resource(up___0);
  } else {
  }
  if (port->type == 24U || port->type == 21U) {
    port->handle_irq = & exar_handle_irq;
  } else {
  }
  return;
}
}
static int serial8250_verify_port(struct uart_port *port , struct serial_struct *ser )
{
  {
  if ((((((ser->irq >= nr_irqs || ser->irq < 0) || ser->baud_base <= 9599) || ser->type < 0) || (unsigned int )ser->type > 28U) || ser->type == 5) || ser->type == 9) {
    return (-22);
  } else {
  }
  return (0);
}
}
static char const *serial8250_type(struct uart_port *port )
{
  int type ;
  {
  type = (int )port->type;
  if ((unsigned int )type > 28U) {
    type = 0;
  } else {
  }
  return ((char const *)uart_config[type].name);
}
}
static struct uart_ops serial8250_pops =
     {& serial8250_tx_empty, & serial8250_set_mctrl, & serial8250_get_mctrl, & serial8250_stop_tx,
    & serial8250_start_tx, 0, 0, 0, & serial8250_stop_rx, & serial8250_enable_ms,
    & serial8250_break_ctl, & serial8250_startup, & serial8250_shutdown, 0, & serial8250_set_termios,
    & serial8250_set_ldisc, & serial8250_pm, & serial8250_type, & serial8250_release_port,
    & serial8250_request_port, & serial8250_config_port, & serial8250_verify_port,
    0, 0, & serial8250_put_poll_char, & serial8250_get_poll_char};
static struct uart_8250_port serial8250_ports[4U] ;
static void (*serial8250_isa_config)(int , struct uart_port * , unsigned short * ) ;
void serial8250_set_isa_configurator(void (*v)(int , struct uart_port * , unsigned short * ) )
{
  {
  serial8250_isa_config = v;
  return;
}
}
static char const __kstrtab_serial8250_set_isa_configurator[32U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 's',
        'e', 't', '_', 'i',
        's', 'a', '_', 'c',
        'o', 'n', 'f', 'i',
        'g', 'u', 'r', 'a',
        't', 'o', 'r', '\000'};
struct kernel_symbol const __ksymtab_serial8250_set_isa_configurator ;
struct kernel_symbol const __ksymtab_serial8250_set_isa_configurator = {(unsigned long )(& serial8250_set_isa_configurator), (char const *)(& __kstrtab_serial8250_set_isa_configurator)};
static void serial8250_isa_init_ports(void)
{
  struct uart_8250_port *up___0 ;
  int first ;
  int i ;
  int irqflag ;
  struct uart_8250_port *up___1 ;
  struct uart_port *port ;
  struct lock_class_key __key ;
  struct uart_port *port___0 ;
  int tmp ;
  {
  first = 1;
  irqflag = 0;
  if (first == 0) {
    return;
  } else {
  }
  first = 0;
  if (nr_uarts > 4U) {
    nr_uarts = 4U;
  } else {
  }
  i = 0;
  goto ldv_32176;
  ldv_32175:
  up___1 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i;
  port = & up___1->port;
  port->line = (unsigned int )i;
  spinlock_check(& port->lock);
  __raw_spin_lock_init(& port->lock.ldv_6347.rlock, "&(&port->lock)->rlock", & __key);
  reg_timer_2(& up___1->timer);
  up___1->timer.function = & serial8250_timeout;
  up___1->cur_iotype = 255U;
  up___1->mcr_mask = 255U;
  up___1->mcr_force = 0U;
  port->ops = (struct uart_ops const *)(& serial8250_pops);
  i = i + 1;
  ldv_32176: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32175;
  } else {
  }
  if (share_irqs != 0U) {
    irqflag = 128;
  } else {
  }
  i = 0;
  up___0 = (struct uart_8250_port *)(& serial8250_ports);
  goto ldv_32182;
  ldv_32181:
  port___0 = & up___0->port;
  port___0->iobase = (unsigned long )old_serial_port[i].port;
  tmp = irq_canonicalize((int )old_serial_port[i].irq);
  port___0->irq = (unsigned int )tmp;
  port___0->irqflags = old_serial_port[i].irqflags;
  port___0->uartclk = (unsigned int )old_serial_port[i].baud_base * 16U;
  port___0->flags = old_serial_port[i].flags;
  port___0->hub6 = old_serial_port[i].hub6;
  port___0->membase = old_serial_port[i].iomem_base;
  port___0->iotype = old_serial_port[i].io_type;
  port___0->regshift = (unsigned char )old_serial_port[i].iomem_reg_shift;
  set_io_from_upio(port___0);
  port___0->irqflags = port___0->irqflags | (unsigned long )irqflag;
  if ((unsigned long )serial8250_isa_config != (unsigned long )((void (*)(int , struct uart_port * ,
                                                                          unsigned short * ))0)) {
    (*serial8250_isa_config)(i, & up___0->port, & up___0->capabilities);
  } else {
  }
  i = i + 1;
  up___0 = up___0 + 1;
  ldv_32182: ;
  if ((unsigned int )i <= 3U && (unsigned int )i < nr_uarts) {
    goto ldv_32181;
  } else {
  }
  return;
}
}
static void serial8250_init_fixed_type_port(struct uart_8250_port *up___0 , unsigned int type )
{
  {
  up___0->port.type = type;
  if (up___0->port.fifosize == 0U) {
    up___0->port.fifosize = (unsigned int )uart_config[type].fifo_size;
  } else {
  }
  if (up___0->tx_loadsz == 0U) {
    up___0->tx_loadsz = (unsigned int )uart_config[type].tx_loadsz;
  } else {
  }
  if ((unsigned int )up___0->capabilities == 0U) {
    up___0->capabilities = (unsigned short )uart_config[type].flags;
  } else {
  }
  return;
}
}
static void serial8250_register_ports(struct uart_driver *drv , struct device *dev )
{
  int i ;
  struct uart_8250_port *up___0 ;
  {
  i = 0;
  goto ldv_32196;
  ldv_32195:
  up___0 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i;
  if ((unsigned long )up___0->port.dev != (unsigned long )((struct device *)0)) {
    goto ldv_32194;
  } else {
  }
  up___0->port.dev = dev;
  if ((up___0->port.flags & 134217728U) != 0U) {
    serial8250_init_fixed_type_port(up___0, up___0->port.type);
  } else {
  }
  uart_add_one_port(drv, & up___0->port);
  ldv_32194:
  i = i + 1;
  ldv_32196: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32195;
  } else {
  }
  return;
}
}
static struct uart_driver serial8250_reg =
     {& __this_module, "serial", "ttyS", 4, 64, 0, (struct console *)0, 0, 0};
int early_serial_setup(struct uart_port *port )
{
  struct uart_port *p ;
  {
  if (port->line > 3U) {
    return (-19);
  } else {
  }
  serial8250_isa_init_ports();
  p = & serial8250_ports[port->line].port;
  p->iobase = port->iobase;
  p->membase = port->membase;
  p->irq = port->irq;
  p->irqflags = port->irqflags;
  p->uartclk = port->uartclk;
  p->fifosize = port->fifosize;
  p->regshift = port->regshift;
  p->iotype = port->iotype;
  p->flags = port->flags;
  p->mapbase = port->mapbase;
  p->private_data = port->private_data;
  p->type = port->type;
  p->line = port->line;
  set_io_from_upio(p);
  if ((unsigned long )port->serial_in != (unsigned long )((unsigned int (*)(struct uart_port * ,
                                                                            int ))0)) {
    p->serial_in = port->serial_in;
  } else {
  }
  if ((unsigned long )port->serial_out != (unsigned long )((void (*)(struct uart_port * ,
                                                                     int , int ))0)) {
    p->serial_out = port->serial_out;
  } else {
  }
  if ((unsigned long )port->handle_irq != (unsigned long )((int (*)(struct uart_port * ))0)) {
    p->handle_irq = port->handle_irq;
  } else {
    p->handle_irq = & serial8250_default_handle_irq;
  }
  return (0);
}
}
void serial8250_suspend_port(int line )
{
  {
  uart_suspend_port(& serial8250_reg, & serial8250_ports[line].port);
  return;
}
}
void serial8250_resume_port(int line )
{
  struct uart_8250_port *up___0 ;
  struct uart_port *port ;
  {
  up___0 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )line;
  port = & up___0->port;
  if (((int )up___0->capabilities & 8) != 0) {
    serial_port_out(port, 3, 224);
    ns16550a_goto_highspeed(up___0);
    serial_port_out(port, 3, 0);
    port->uartclk = 14745600U;
  } else {
  }
  uart_resume_port(& serial8250_reg, port);
  return;
}
}
static int serial8250_probe(struct platform_device *dev )
{
  struct plat_serial8250_port *p ;
  void *tmp ;
  struct uart_8250_port uart ;
  int ret ;
  int i ;
  int irqflag ;
  {
  tmp = dev_get_platdata((struct device const *)(& dev->dev));
  p = (struct plat_serial8250_port *)tmp;
  irqflag = 0;
  memset((void *)(& uart), 0, 504UL);
  if (share_irqs != 0U) {
    irqflag = 128;
  } else {
  }
  i = 0;
  goto ldv_32222;
  ldv_32221:
  uart.port.iobase = p->iobase;
  uart.port.membase = (unsigned char *)p->membase;
  uart.port.irq = p->irq;
  uart.port.irqflags = p->irqflags;
  uart.port.uartclk = p->uartclk;
  uart.port.regshift = p->regshift;
  uart.port.iotype = p->iotype;
  uart.port.flags = p->flags;
  uart.port.mapbase = p->mapbase;
  uart.port.hub6 = p->hub6;
  uart.port.private_data = p->private_data;
  uart.port.type = p->type;
  uart.port.serial_in = p->serial_in;
  uart.port.serial_out = p->serial_out;
  uart.port.handle_irq = p->handle_irq;
  uart.port.handle_break = p->handle_break;
  uart.port.set_termios = p->set_termios;
  uart.port.pm = p->pm;
  uart.port.dev = & dev->dev;
  uart.port.irqflags = uart.port.irqflags | (unsigned long )irqflag;
  ret = serial8250_register_8250_port(& uart);
  if (ret < 0) {
    dev_err((struct device const *)(& dev->dev), "unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\n",
            i, p->iobase, p->mapbase, p->irq, ret);
  } else {
  }
  p = p + 1;
  i = i + 1;
  ldv_32222: ;
  if ((unsigned long )p != (unsigned long )((struct plat_serial8250_port *)0) && p->flags != 0U) {
    goto ldv_32221;
  } else {
  }
  return (0);
}
}
static int serial8250_remove(struct platform_device *dev )
{
  int i ;
  struct uart_8250_port *up___0 ;
  {
  i = 0;
  goto ldv_32230;
  ldv_32229:
  up___0 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i;
  if ((unsigned long )up___0->port.dev == (unsigned long )(& dev->dev)) {
    serial8250_unregister_port(i);
  } else {
  }
  i = i + 1;
  ldv_32230: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32229;
  } else {
  }
  return (0);
}
}
static int serial8250_suspend(struct platform_device *dev , pm_message_t state )
{
  int i ;
  struct uart_8250_port *up___0 ;
  {
  i = 0;
  goto ldv_32239;
  ldv_32238:
  up___0 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i;
  if (up___0->port.type != 0U && (unsigned long )up___0->port.dev == (unsigned long )(& dev->dev)) {
    uart_suspend_port(& serial8250_reg, & up___0->port);
  } else {
  }
  i = i + 1;
  ldv_32239: ;
  if (i <= 3) {
    goto ldv_32238;
  } else {
  }
  return (0);
}
}
static int serial8250_resume(struct platform_device *dev )
{
  int i ;
  struct uart_8250_port *up___0 ;
  {
  i = 0;
  goto ldv_32247;
  ldv_32246:
  up___0 = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i;
  if (up___0->port.type != 0U && (unsigned long )up___0->port.dev == (unsigned long )(& dev->dev)) {
    serial8250_resume_port(i);
  } else {
  }
  i = i + 1;
  ldv_32247: ;
  if (i <= 3) {
    goto ldv_32246;
  } else {
  }
  return (0);
}
}
static struct platform_driver serial8250_isa_driver =
     {& serial8250_probe, & serial8250_remove, 0, & serial8250_suspend, & serial8250_resume,
    {"serial8250", 0, & __this_module, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    0, (_Bool)0};
static struct platform_device *serial8250_isa_devs ;
static struct mutex serial_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "serial_mutex.wait_lock",
                                                           0, 0UL}}}}, {& serial_mutex.wait_list,
                                                                        & serial_mutex.wait_list},
    0, 0, (void *)(& serial_mutex), {0, {0, 0}, "serial_mutex", 0, 0UL}};
static struct uart_8250_port *serial8250_find_match_or_unused(struct uart_port *port )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_32258;
  ldv_32257:
  tmp = uart_match_port(& serial8250_ports[i].port, port);
  if (tmp != 0) {
    return ((struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_32258: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32257;
  } else {
  }
  i = 0;
  goto ldv_32261;
  ldv_32260: ;
  if (serial8250_ports[i].port.type == 0U && serial8250_ports[i].port.iobase == 0UL) {
    return ((struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_32261: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32260;
  } else {
  }
  i = 0;
  goto ldv_32264;
  ldv_32263: ;
  if (serial8250_ports[i].port.type == 0U) {
    return ((struct uart_8250_port *)(& serial8250_ports) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_32264: ;
  if ((unsigned int )i < nr_uarts) {
    goto ldv_32263;
  } else {
  }
  return ((struct uart_8250_port *)0);
}
}
int serial8250_register_8250_port(struct uart_8250_port *up___0 )
{
  struct uart_8250_port *uart ;
  int ret ;
  {
  ret = -28;
  if (up___0->port.uartclk == 0U) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& serial_mutex, 0U);
  uart = serial8250_find_match_or_unused(& up___0->port);
  if ((unsigned long )uart != (unsigned long )((struct uart_8250_port *)0) && uart->port.type != 23U) {
    if ((unsigned long )uart->port.dev != (unsigned long )((struct device *)0)) {
      uart_remove_one_port(& serial8250_reg, & uart->port);
    } else {
    }
    uart->port.iobase = up___0->port.iobase;
    uart->port.membase = up___0->port.membase;
    uart->port.irq = up___0->port.irq;
    uart->port.irqflags = up___0->port.irqflags;
    uart->port.uartclk = up___0->port.uartclk;
    uart->port.fifosize = up___0->port.fifosize;
    uart->port.regshift = up___0->port.regshift;
    uart->port.iotype = up___0->port.iotype;
    uart->port.flags = up___0->port.flags | 268435456U;
    uart->bugs = up___0->bugs;
    uart->port.mapbase = up___0->port.mapbase;
    uart->port.private_data = up___0->port.private_data;
    uart->port.fifosize = up___0->port.fifosize;
    uart->tx_loadsz = up___0->tx_loadsz;
    uart->capabilities = up___0->capabilities;
    if (uart->port.fifosize != 0U && uart->tx_loadsz == 0U) {
      uart->tx_loadsz = uart->port.fifosize;
    } else {
    }
    if ((unsigned long )up___0->port.dev != (unsigned long )((struct device *)0)) {
      uart->port.dev = up___0->port.dev;
    } else {
    }
    if ((up___0->port.flags & 134217728U) != 0U) {
      serial8250_init_fixed_type_port(uart, up___0->port.type);
    } else {
    }
    set_io_from_upio(& uart->port);
    if ((unsigned long )up___0->port.serial_in != (unsigned long )((unsigned int (*)(struct uart_port * ,
                                                                                     int ))0)) {
      uart->port.serial_in = up___0->port.serial_in;
    } else {
    }
    if ((unsigned long )up___0->port.serial_out != (unsigned long )((void (*)(struct uart_port * ,
                                                                              int ,
                                                                              int ))0)) {
      uart->port.serial_out = up___0->port.serial_out;
    } else {
    }
    if ((unsigned long )up___0->port.handle_irq != (unsigned long )((int (*)(struct uart_port * ))0)) {
      uart->port.handle_irq = up___0->port.handle_irq;
    } else {
    }
    if ((unsigned long )up___0->port.set_termios != (unsigned long )((void (*)(struct uart_port * ,
                                                                               struct ktermios * ,
                                                                               struct ktermios * ))0)) {
      uart->port.set_termios = up___0->port.set_termios;
    } else {
    }
    if ((unsigned long )up___0->port.pm != (unsigned long )((void (*)(struct uart_port * ,
                                                                      unsigned int ,
                                                                      unsigned int ))0)) {
      uart->port.pm = up___0->port.pm;
    } else {
    }
    if ((unsigned long )up___0->port.handle_break != (unsigned long )((void (*)(struct uart_port * ))0)) {
      uart->port.handle_break = up___0->port.handle_break;
    } else {
    }
    if ((unsigned long )up___0->dl_read != (unsigned long )((int (*)(struct uart_8250_port * ))0)) {
      uart->dl_read = up___0->dl_read;
    } else {
    }
    if ((unsigned long )up___0->dl_write != (unsigned long )((void (*)(struct uart_8250_port * ,
                                                                       int ))0)) {
      uart->dl_write = up___0->dl_write;
    } else {
    }
    if ((unsigned long )up___0->dma != (unsigned long )((struct uart_8250_dma *)0)) {
      uart->dma = up___0->dma;
    } else {
    }
    if ((unsigned long )serial8250_isa_config != (unsigned long )((void (*)(int ,
                                                                            struct uart_port * ,
                                                                            unsigned short * ))0)) {
      (*serial8250_isa_config)(0, & uart->port, & uart->capabilities);
    } else {
    }
    ret = uart_add_one_port(& serial8250_reg, & uart->port);
    if (ret == 0) {
      ret = (int )uart->port.line;
    } else {
    }
  } else {
  }
  mutex_unlock(& serial_mutex);
  return (ret);
}
}
static char const __kstrtab_serial8250_register_8250_port[30U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        '8', '2', '5', '0',
        '_', 'p', 'o', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_serial8250_register_8250_port ;
struct kernel_symbol const __ksymtab_serial8250_register_8250_port = {(unsigned long )(& serial8250_register_8250_port), (char const *)(& __kstrtab_serial8250_register_8250_port)};
void serial8250_unregister_port(int line )
{
  struct uart_8250_port *uart ;
  {
  uart = (struct uart_8250_port *)(& serial8250_ports) + (unsigned long )line;
  mutex_lock_nested(& serial_mutex, 0U);
  uart_remove_one_port(& serial8250_reg, & uart->port);
  if ((unsigned long )serial8250_isa_devs != (unsigned long )((struct platform_device *)0)) {
    uart->port.flags = uart->port.flags & 4026531839U;
    uart->port.type = 0U;
    uart->port.dev = & serial8250_isa_devs->dev;
    uart->capabilities = (unsigned short )uart_config[uart->port.type].flags;
    uart_add_one_port(& serial8250_reg, & uart->port);
  } else {
    uart->port.dev = (struct device *)0;
  }
  mutex_unlock(& serial_mutex);
  return;
}
}
static char const __kstrtab_serial8250_unregister_port[27U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'p', 'o',
        'r', 't', '\000'};
struct kernel_symbol const __ksymtab_serial8250_unregister_port ;
struct kernel_symbol const __ksymtab_serial8250_unregister_port = {(unsigned long )(& serial8250_unregister_port), (char const *)(& __kstrtab_serial8250_unregister_port)};
static int serial8250_init(void)
{
  int ret ;
  {
  serial8250_isa_init_ports();
  printk("\016Serial: 8250/16550 driver, %d ports, IRQ sharing %sabled\n", nr_uarts,
         share_irqs != 0U ? (char *)"en" : (char *)"dis");
  serial8250_reg.nr = 4;
  ret = uart_register_driver(& serial8250_reg);
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = serial8250_pnp_init();
  if (ret != 0) {
    goto unreg_uart_drv;
  } else {
  }
  serial8250_isa_devs = platform_device_alloc("serial8250", -1);
  if ((unsigned long )serial8250_isa_devs == (unsigned long )((struct platform_device *)0)) {
    ret = -12;
    goto unreg_pnp;
  } else {
  }
  ret = platform_device_add(serial8250_isa_devs);
  if (ret != 0) {
    goto put_dev;
  } else {
  }
  serial8250_register_ports(& serial8250_reg, & serial8250_isa_devs->dev);
  ret = ldv___platform_driver_register_26(& serial8250_isa_driver, & __this_module);
  if (ret == 0) {
    goto out;
  } else {
  }
  platform_device_del(serial8250_isa_devs);
  put_dev:
  platform_device_put(serial8250_isa_devs);
  unreg_pnp:
  serial8250_pnp_exit();
  unreg_uart_drv:
  uart_unregister_driver(& serial8250_reg);
  out: ;
  return (ret);
}
}
static void serial8250_exit(void)
{
  struct platform_device *isa_dev ;
  {
  isa_dev = serial8250_isa_devs;
  serial8250_isa_devs = (struct platform_device *)0;
  ldv_platform_driver_unregister_27(& serial8250_isa_driver);
  platform_device_unregister(isa_dev);
  serial8250_pnp_exit();
  uart_unregister_driver(& serial8250_reg);
  return;
}
}
static char const __kstrtab_serial8250_suspend_port[24U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 's',
        'u', 's', 'p', 'e',
        'n', 'd', '_', 'p',
        'o', 'r', 't', '\000'};
struct kernel_symbol const __ksymtab_serial8250_suspend_port ;
struct kernel_symbol const __ksymtab_serial8250_suspend_port = {(unsigned long )(& serial8250_suspend_port), (char const *)(& __kstrtab_serial8250_suspend_port)};
static char const __kstrtab_serial8250_resume_port[23U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'e', 's', 'u', 'm',
        'e', '_', 'p', 'o',
        'r', 't', '\000'};
struct kernel_symbol const __ksymtab_serial8250_resume_port ;
struct kernel_symbol const __ksymtab_serial8250_resume_port = {(unsigned long )(& serial8250_resume_port), (char const *)(& __kstrtab_serial8250_resume_port)};
extern int ldv_probe_5(void) ;
extern int ldv_release_5(void) ;
int ldv_retval_2 ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void choose_timer_2(struct timer_list *timer )
{
  {
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& serial8250_interrupt)) {
    return (1);
  } else {
  }
  return (0);
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
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = serial8250_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_32438;
    default:
    ldv_stop();
    }
    ldv_32438: ;
  } else {
  }
  return (state);
}
}
void ldv_initialize_platform_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1464UL);
  serial8250_isa_driver_group0 = (struct platform_device *)tmp;
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
  goto ldv_32449;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_32449;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_32449;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_32449;
  default:
  ldv_stop();
  }
  ldv_32449: ;
  return;
}
}
void ldv_initialize_uart_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(312UL);
  serial8250_pops_group0 = (struct uart_port *)tmp;
  return;
}
}
void ldv_main_exported_3(void) ;
int main(void)
{
  pm_message_t ldvarg0 ;
  unsigned int ldvarg11 ;
  unsigned int tmp ;
  int ldvarg7 ;
  int tmp___0 ;
  unsigned char ldvarg3 ;
  unsigned char tmp___1 ;
  int ldvarg12 ;
  int tmp___2 ;
  struct serial_struct *ldvarg5 ;
  void *tmp___3 ;
  unsigned int ldvarg6 ;
  unsigned int tmp___4 ;
  struct ktermios *ldvarg8 ;
  void *tmp___5 ;
  int ldvarg4 ;
  int tmp___6 ;
  unsigned int ldvarg10 ;
  unsigned int tmp___7 ;
  struct ktermios *ldvarg9 ;
  void *tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  tmp = __VERIFIER_nondet_uint();
  ldvarg11 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg7 = tmp___0;
  tmp___1 = __VERIFIER_nondet_uchar();
  ldvarg3 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg12 = tmp___2;
  tmp___3 = ldv_zalloc(72UL);
  ldvarg5 = (struct serial_struct *)tmp___3;
  tmp___4 = __VERIFIER_nondet_uint();
  ldvarg6 = tmp___4;
  tmp___5 = ldv_zalloc(44UL);
  ldvarg8 = (struct ktermios *)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___6;
  tmp___7 = __VERIFIER_nondet_uint();
  ldvarg10 = tmp___7;
  tmp___8 = ldv_zalloc(44UL);
  ldvarg9 = (struct ktermios *)tmp___8;
  ldv_initialize();
  memset((void *)(& ldvarg0), 0, 4UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_32522:
  tmp___9 = __VERIFIER_nondet_int();
  switch (tmp___9) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_2 = serial8250_probe(serial8250_isa_driver_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_32481;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      ldv_retval_1 = serial8250_suspend(serial8250_isa_driver_group0, ldvarg0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 3;
      } else {
      }
    } else {
    }
    goto ldv_32481;
    case 2: ;
    if (ldv_state_variable_4 == 3) {
      ldv_retval_0 = serial8250_resume(serial8250_isa_driver_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    goto ldv_32481;
    case 3: ;
    if (ldv_state_variable_4 == 3) {
      serial8250_remove(serial8250_isa_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      serial8250_remove(serial8250_isa_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32481;
    default:
    ldv_stop();
    }
    ldv_32481: ;
  } else {
  }
  goto ldv_32486;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_32486;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      serial8250_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_32491;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_3 = serial8250_init();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_uart_ops_5();
        ldv_state_variable_3 = 1;
        ldv_initialize_pnp_driver_3();
      } else {
      }
      if (ldv_retval_3 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_32491;
    default:
    ldv_stop();
    }
    ldv_32491: ;
  } else {
  }
  goto ldv_32486;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_32486;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_32486;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_set_ldisc(serial8250_pops_group0, ldvarg12);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_set_ldisc(serial8250_pops_group0, ldvarg12);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_set_ldisc(serial8250_pops_group0, ldvarg12);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_type(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_type(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_type(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_pm(serial8250_pops_group0, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_pm(serial8250_pops_group0, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_pm(serial8250_pops_group0, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_release_port(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_release_port(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_release_port(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_start_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_start_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_start_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_set_termios(serial8250_pops_group0, ldvarg9, ldvarg8);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_set_termios(serial8250_pops_group0, ldvarg9, ldvarg8);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_set_termios(serial8250_pops_group0, ldvarg9, ldvarg8);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_config_port(serial8250_pops_group0, ldvarg7);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_config_port(serial8250_pops_group0, ldvarg7);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_config_port(serial8250_pops_group0, ldvarg7);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_set_mctrl(serial8250_pops_group0, ldvarg6);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_set_mctrl(serial8250_pops_group0, ldvarg6);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_set_mctrl(serial8250_pops_group0, ldvarg6);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_startup(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_startup(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_startup(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_get_mctrl(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_get_mctrl(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_get_mctrl(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_enable_ms(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_enable_ms(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_enable_ms(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_tx_empty(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_tx_empty(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_tx_empty(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 12: ;
    if (ldv_state_variable_5 == 2) {
      serial8250_shutdown(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_32498;
    case 13: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_verify_port(serial8250_pops_group0, ldvarg5);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_verify_port(serial8250_pops_group0, ldvarg5);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_verify_port(serial8250_pops_group0, ldvarg5);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 14: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_stop_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_stop_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_stop_tx(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 15: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_break_ctl(serial8250_pops_group0, ldvarg4);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_break_ctl(serial8250_pops_group0, ldvarg4);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_break_ctl(serial8250_pops_group0, ldvarg4);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 16: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_get_poll_char(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_get_poll_char(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_get_poll_char(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 17: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_stop_rx(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_stop_rx(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_stop_rx(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 18: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_put_poll_char(serial8250_pops_group0, (int )ldvarg3);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_put_poll_char(serial8250_pops_group0, (int )ldvarg3);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_put_poll_char(serial8250_pops_group0, (int )ldvarg3);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 19: ;
    if (ldv_state_variable_5 == 1) {
      serial8250_request_port(serial8250_pops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      serial8250_request_port(serial8250_pops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      serial8250_request_port(serial8250_pops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_32498;
    case 20: ;
    if (ldv_state_variable_5 == 3) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32498;
    case 21: ;
    if (ldv_state_variable_5 == 1) {
      ldv_probe_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_32498;
    default:
    ldv_stop();
    }
    ldv_32498: ;
  } else {
  }
  goto ldv_32486;
  default:
  ldv_stop();
  }
  ldv_32486: ;
  goto ldv_32522;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_4(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_7(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
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
__inline static int ldv_request_irq_19(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_24(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 )
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
int ldv___platform_driver_register_26(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_initialize_platform_driver_4();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_27(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_4 = 0;
  return;
}
}
extern char *strstr(char const * , char const * ) ;
void *ldv_kmem_cache_alloc_53(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
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
extern struct resource *pnp_get_resource(struct pnp_dev * , unsigned long , unsigned int ) ;
__inline static int pnp_resource_valid(struct resource *res )
{
  {
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static resource_size_t pnp_port_start(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 256UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0ULL);
}
}
__inline static int pnp_port_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 256UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static resource_size_t pnp_mem_start(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 512UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0ULL);
}
}
__inline static int pnp_mem_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 512UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static resource_size_t pnp_irq(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0xffffffffffffffffULL);
}
}
__inline static unsigned long pnp_irq_flags(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->flags);
  } else {
  }
  return (1073742848UL);
}
}
__inline static int pnp_irq_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static void *pnp_get_drvdata(struct pnp_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pnp_set_drvdata(struct pnp_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int pnp_possible_config(struct pnp_dev * , int , resource_size_t , resource_size_t ) ;
extern int pnp_register_driver(struct pnp_driver * ) ;
extern void pnp_unregister_driver(struct pnp_driver * ) ;
static struct pnp_device_id const pnp_dev_table[154U] =
  { {{'A', 'A', 'C', '0', '0', '0', 'F', '\000'}, 0UL},
        {{'A', 'D', 'C', '0', '0', '0', '1', '\000'}, 0UL},
        {{'A', 'D', 'C', '0', '0', '0', '2', '\000'}, 0UL},
        {{'A', 'E', 'I', '0', '2', '5', '0', '\000'}, 0UL},
        {{'A', 'E', 'I', '1', '2', '4', '0', '\000'}, 0UL},
        {{'A', 'K', 'Y', '1', '0', '2', '1', '\000'}, 0UL},
        {{'A', 'Z', 'T', '4', '0', '0', '1', '\000'}, 0UL},
        {{'B', 'D', 'P', '3', '3', '3', '6', '\000'}, 0UL},
        {{'B', 'R', 'I', '0', 'A', '4', '9', '\000'}, 0UL},
        {{'B', 'R', 'I', '1', '4', '0', '0', '\000'}, 0UL},
        {{'B', 'R', 'I', '3', '4', '0', '0', '\000'}, 0UL},
        {{'B', 'R', 'I', '0', 'A', '4', '9', '\000'}, 0UL},
        {{'B', 'D', 'P', '3', '3', '3', '6', '\000'}, 0UL},
        {{'C', 'P', 'I', '4', '0', '5', '0', '\000'}, 0UL},
        {{'C', 'T', 'L', '3', '0', '0', '1', '\000'}, 0UL},
        {{'C', 'T', 'L', '3', '0', '1', '1', '\000'}, 0UL},
        {{'D', 'A', 'V', '0', '3', '3', '6', '\000'}, 0UL},
        {{'D', 'M', 'B', '1', '0', '3', '2', '\000'}, 0UL},
        {{'D', 'M', 'B', '2', '0', '0', '1', '\000'}, 0UL},
        {{'E', 'T', 'T', '0', '0', '0', '2', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', '0', '2', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', '0', '5', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', '0', '6', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', '0', '9', '\000'}, 0UL},
        {{'G', 'V', 'C', '0', '0', '0', 'F', '\000'}, 0UL},
        {{'G', 'V', 'C', '0', '3', '0', '3', '\000'}, 0UL},
        {{'H', 'A', 'Y', '0', '0', '0', '1', '\000'}, 0UL},
        {{'H', 'A', 'Y', '0', '0', '0', 'C', '\000'}, 0UL},
        {{'H', 'A', 'Y', '0', '0', '0', 'D', '\000'}, 0UL},
        {{'H', 'A', 'Y', '5', '6', '7', '0', '\000'}, 0UL},
        {{'H', 'A', 'Y', '5', '6', '7', '4', '\000'}, 0UL},
        {{'H', 'A', 'Y', '5', '6', '7', '5', '\000'}, 0UL},
        {{'H', 'A', 'Y', 'F', '0', '0', '0', '\000'}, 0UL},
        {{'H', 'A', 'Y', 'F', '0', '0', '1', '\000'}, 0UL},
        {{'I', 'B', 'M', '0', '0', '3', '3', '\000'}, 0UL},
        {{'P', 'N', 'P', '4', '9', '7', '2', '\000'}, 0UL},
        {{'I', 'X', 'D', 'C', '8', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'C', '9', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'D', '8', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'D', '9', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'F', '4', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'F', '8', '0', '1', '\000'}, 0UL},
        {{'I', 'X', 'D', 'F', '9', '0', '1', '\000'}, 0UL},
        {{'K', 'O', 'R', '4', '5', '2', '2', '\000'}, 0UL},
        {{'K', 'O', 'R', 'F', '6', '6', '1', '\000'}, 0UL},
        {{'L', 'A', 'S', '4', '0', '4', '0', '\000'}, 0UL},
        {{'L', 'A', 'S', '4', '5', '4', '0', '\000'}, 0UL},
        {{'L', 'A', 'S', '5', '4', '4', '0', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '2', '8', '1', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '3', '3', '6', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '3', '3', '9', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '3', '4', '2', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '5', '0', '0', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '5', '0', '1', '\000'}, 0UL},
        {{'M', 'N', 'P', '0', '5', '0', '2', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '1', '0', '5', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '1', '1', '1', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '1', '1', '4', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '1', '1', '5', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '1', '9', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', '1', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', '2', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', '5', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', '9', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', 'A', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '0', 'F', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '1', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '5', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '6', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', '8', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', 'B', '0', '\000'}, 0UL},
        {{'M', 'O', 'T', '1', '5', 'F', '0', '\000'}, 0UL},
        {{'M', 'V', 'X', '0', '0', 'A', '1', '\000'}, 0UL},
        {{'M', 'V', 'X', '0', '0', 'F', '2', '\000'}, 0UL},
        {{'n', 'E', 'C', '8', '2', '4', '1', '\000'}, 0UL},
        {{'P', 'M', 'C', '2', '4', '3', '0', '\000'}, 0UL},
        {{'P', 'N', 'P', '0', '5', '0', '0', '\000'}, 0UL},
        {{'P', 'N', 'P', '0', '5', '0', '1', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '0', '0', '0', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '0', '0', '1', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '0', '3', '1', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '0', '3', '2', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '0', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '1', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '2', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '3', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '4', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '5', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '6', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '7', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '8', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', '9', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'A', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'B', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'C', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'D', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'E', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', '1', '0', 'F', '\000'}, 0UL},
        {{'P', 'N', 'P', '2', '0', '0', '0', '\000'}, 0UL},
        {{'R', 'O', 'K', '0', '0', '3', '0', '\000'}, 0UL},
        {{'R', 'O', 'K', '0', '1', '0', '0', '\000'}, 0UL},
        {{'R', 'O', 'K', '4', '1', '2', '0', '\000'}, 0UL},
        {{'R', 'O', 'K', '4', '9', '2', '0', '\000'}, 0UL},
        {{'R', 'S', 'S', '0', '0', 'A', '0', '\000'}, 0UL},
        {{'R', 'S', 'S', '0', '2', '6', '2', '\000'}, 0UL},
        {{'R', 'S', 'S', '0', '2', '5', '0', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '3', '1', '0', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '3', '8', '1', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '4', '2', '1', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '5', '9', '0', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '6', '2', '0', '\000'}, 0UL},
        {{'S', 'U', 'P', '1', '7', '6', '0', '\000'}, 0UL},
        {{'S', 'U', 'P', '2', '1', '7', '1', '\000'}, 0UL},
        {{'T', 'E', 'X', '0', '0', '1', '1', '\000'}, 0UL},
        {{'U', 'A', 'C', '0', '0', '0', 'F', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '2', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '4', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '6', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '7', '\000'}, 0UL},
        {{'U', 'S', 'R', '0', '0', '0', '9', '\000'}, 0UL},
        {{'U', 'S', 'R', '2', '0', '0', '2', '\000'}, 0UL},
        {{'U', 'S', 'R', '2', '0', '7', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '2', '0', '8', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '3', '0', '3', '1', '\000'}, 0UL},
        {{'U', 'S', 'R', '3', '0', '5', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '3', '0', '7', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '3', '0', '8', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '3', '0', '9', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '9', '1', '0', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '9', '1', '6', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '9', '1', '7', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '9', '1', '8', '0', '\000'}, 0UL},
        {{'U', 'S', 'R', '9', '1', '9', '0', '\000'}, 0UL},
        {{'W', 'A', 'C', 'F', 'X', 'X', 'X', '\000'}, 0UL},
        {{'F', 'P', 'I', '2', '0', '0', '2', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '2', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '3', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '4', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '6', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '7', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '8', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', '9', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'B', 'C', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'E', '5', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'E', '6', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'E', '7', '\000'}, 0UL},
        {{'F', 'U', 'J', '0', '2', 'E', '9', '\000'}, 0UL},
        {{'L', 'T', 'S', '0', '0', '0', '1', '\000'}, 0UL},
        {{'W', 'C', 'I', '0', '0', '0', '3', '\000'}, 0UL},
        {{'P', 'N', 'P', 'C', 'X', 'X', 'X', '\000'}, 12288UL},
        {{'P', 'N', 'P', 'D', 'X', 'X', 'X', '\000'}, 12288UL},
        {{'W', 'E', 'C', '1', '0', '2', '2', '\000'}, 2048UL},
        {{'\000'}, 0UL}};
struct pnp_device_id const __mod_pnp__pnp_dev_table_device_table ;
static char *modem_names[25U] =
  { (char *)"MODEM", (char *)"Modem", (char *)"modem", (char *)"FAX",
        (char *)"Fax", (char *)"fax", (char *)"56K", (char *)"56k",
        (char *)"K56", (char *)"33.6", (char *)"28.8", (char *)"14.4",
        (char *)"33,600", (char *)"28,800", (char *)"14,400", (char *)"33.600",
        (char *)"28.800", (char *)"14.400", (char *)"33600", (char *)"28800",
        (char *)"14400", (char *)"V.90", (char *)"V.34", (char *)"V.32",
        (char *)0};
static int check_name(char *name )
{
  char **tmp ;
  char *tmp___0 ;
  {
  tmp = (char **)(& modem_names);
  goto ldv_33702;
  ldv_33701:
  tmp___0 = strstr((char const *)name, (char const *)*tmp);
  if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
    return (1);
  } else {
  }
  tmp = tmp + 1;
  ldv_33702: ;
  if ((unsigned long )*tmp != (unsigned long )((char *)0)) {
    goto ldv_33701;
  } else {
  }
  return (0);
}
}
static int check_resources(struct pnp_dev *dev )
{
  resource_size_t base[4U] ;
  int i ;
  int tmp ;
  {
  base[0] = 760ULL;
  base[1] = 1016ULL;
  base[2] = 744ULL;
  base[3] = 1000ULL;
  i = 0;
  goto ldv_33712;
  ldv_33711:
  tmp = pnp_possible_config(dev, 256, base[i], 8ULL);
  if (tmp != 0) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_33712: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_33711;
  } else {
  }
  return (0);
}
}
static int serial_pnp_guess_board(struct pnp_dev *dev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = check_name((char *)(& dev->name));
  if (tmp == 0) {
    if ((unsigned long )dev->card == (unsigned long )((struct pnp_card *)0)) {
      return (-19);
    } else {
      tmp___0 = check_name((char *)(& (dev->card)->name));
      if (tmp___0 == 0) {
        return (-19);
      } else {
      }
    }
  } else {
  }
  tmp___1 = check_resources(dev);
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  return (-19);
}
}
static int serial_pnp_probe(struct pnp_dev *dev , struct pnp_device_id const *dev_id )
{
  struct uart_8250_port uart ;
  int ret ;
  int line ;
  int flags ;
  resource_size_t tmp ;
  int tmp___0 ;
  resource_size_t tmp___1 ;
  resource_size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned long tmp___6 ;
  {
  flags = (int )dev_id->driver_data;
  if ((flags & 12288) != 0) {
    ret = serial_pnp_guess_board(dev);
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  memset((void *)(& uart), 0, 504UL);
  tmp___0 = pnp_irq_valid(dev, 0U);
  if (tmp___0 != 0) {
    tmp = pnp_irq(dev, 0U);
    uart.port.irq = (unsigned int )tmp;
  } else {
  }
  if ((flags & 2048) != 0) {
    tmp___5 = pnp_port_valid(dev, 2U);
    if (tmp___5 != 0) {
      tmp___1 = pnp_port_start(dev, 2U);
      uart.port.iobase = (unsigned long )tmp___1;
      uart.port.iotype = 0U;
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___4 = pnp_port_valid(dev, 0U);
    if (tmp___4 != 0) {
      tmp___2 = pnp_port_start(dev, 0U);
      uart.port.iobase = (unsigned long )tmp___2;
      uart.port.iotype = 0U;
    } else {
      tmp___3 = pnp_mem_valid(dev, 0U);
      if (tmp___3 != 0) {
        uart.port.mapbase = pnp_mem_start(dev, 0U);
        uart.port.iotype = 2U;
        uart.port.flags = 2147483648U;
      } else {
        return (-19);
      }
    }
  }
  if ((flags & 2048) != 0) {
    uart.port.flags = uart.port.flags | 671088640U;
    uart.port.type = 23U;
  } else {
  }
  uart.port.flags = uart.port.flags | 268435520U;
  tmp___6 = pnp_irq_flags(dev, 0U);
  if ((tmp___6 & 16UL) != 0UL) {
    uart.port.flags = uart.port.flags | 16777216U;
  } else {
  }
  uart.port.uartclk = 1843200U;
  uart.port.dev = & dev->dev;
  line = serial8250_register_8250_port(& uart);
  if (line < 0 || (flags & 2048) != 0) {
    return (-19);
  } else {
  }
  pnp_set_drvdata(dev, (void *)((long )line + 1L));
  return (0);
}
}
static void serial_pnp_remove(struct pnp_dev *dev )
{
  long line ;
  void *tmp ;
  {
  tmp = pnp_get_drvdata(dev);
  line = (long )tmp;
  if (line != 0L) {
    serial8250_unregister_port((int )((unsigned int )line + 4294967295U));
  } else {
  }
  return;
}
}
static int serial_pnp_suspend(struct pnp_dev *dev , pm_message_t state )
{
  long line ;
  void *tmp ;
  {
  tmp = pnp_get_drvdata(dev);
  line = (long )tmp;
  if (line == 0L) {
    return (-19);
  } else {
  }
  serial8250_suspend_port((int )((unsigned int )line + 4294967295U));
  return (0);
}
}
static int serial_pnp_resume(struct pnp_dev *dev )
{
  long line ;
  void *tmp ;
  {
  tmp = pnp_get_drvdata(dev);
  line = (long )tmp;
  if (line == 0L) {
    return (-19);
  } else {
  }
  serial8250_resume_port((int )((unsigned int )line + 4294967295U));
  return (0);
}
}
static struct pnp_driver serial_pnp_driver =
     {(char *)"serial", (struct pnp_device_id const *)(& pnp_dev_table), 0U, & serial_pnp_probe,
    & serial_pnp_remove, 0, & serial_pnp_suspend, & serial_pnp_resume, {0, 0, 0, 0,
                                                                        (_Bool)0,
                                                                        0, 0, 0, 0,
                                                                        0, 0, 0, 0,
                                                                        0, 0}};
int serial8250_pnp_init(void)
{
  int tmp ;
  {
  tmp = pnp_register_driver(& serial_pnp_driver);
  return (tmp);
}
}
void serial8250_pnp_exit(void)
{
  {
  pnp_unregister_driver(& serial_pnp_driver);
  return;
}
}
int ldv_retval_5 ;
int ldv_retval_4 ;
int ldv_retval_6 ;
void ldv_initialize_pnp_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1656UL);
  serial_pnp_driver_group0 = (struct pnp_dev *)tmp;
  return;
}
}
void ldv_main_exported_3(void)
{
  struct pnp_device_id *ldvarg2 ;
  void *tmp ;
  pm_message_t ldvarg1 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(16UL);
  ldvarg2 = (struct pnp_device_id *)tmp;
  memset((void *)(& ldvarg1), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    ldv_retval_6 = serial_pnp_probe(serial_pnp_driver_group0, (struct pnp_device_id const *)ldvarg2);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_33757;
  case 1: ;
  if (ldv_state_variable_3 == 2) {
    ldv_retval_5 = serial_pnp_suspend(serial_pnp_driver_group0, ldvarg1);
    if (ldv_retval_5 == 0) {
      ldv_state_variable_3 = 3;
    } else {
    }
  } else {
  }
  goto ldv_33757;
  case 2: ;
  if (ldv_state_variable_3 == 3) {
    ldv_retval_4 = serial_pnp_resume(serial_pnp_driver_group0);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_3 = 2;
    } else {
    }
  } else {
  }
  goto ldv_33757;
  case 3: ;
  if (ldv_state_variable_3 == 3) {
    serial_pnp_remove(serial_pnp_driver_group0);
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    serial_pnp_remove(serial_pnp_driver_group0);
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_33757;
  default:
  ldv_stop();
  }
  ldv_33757: ;
  return;
}
}
void *ldv_kmem_cache_alloc_53(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static void bitmap_zero(unsigned long *dst , int nbits )
{
  int len ;
  {
  len = (int )((unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U);
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
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
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_73(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
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
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct device x86_dma_fallback_dev ;
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
    ldv_25823: ;
    goto ldv_25823;
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
    ldv_25832: ;
    goto ldv_25832;
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
                         "i" (103), "i" (12UL));
    ldv_25882: ;
    goto ldv_25882;
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
                         "i" (115), "i" (12UL));
    ldv_25890: ;
    goto ldv_25890;
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
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static int dmaengine_device_control(struct dma_chan *chan , enum dma_ctrl_cmd cmd ,
                                             unsigned long arg )
{
  int tmp ;
  {
  if ((unsigned long )(chan->device)->device_control != (unsigned long )((int (*)(struct dma_chan * ,
                                                                                  enum dma_ctrl_cmd ,
                                                                                  unsigned long ))0)) {
    tmp = (*((chan->device)->device_control))(chan, cmd, arg);
    return (tmp);
  } else {
  }
  return (-38);
}
}
__inline static int dmaengine_slave_config(struct dma_chan *chan , struct dma_slave_config *config )
{
  int tmp ;
  {
  tmp = dmaengine_device_control(chan, 3, (unsigned long )config);
  return (tmp);
}
}
__inline static struct dma_async_tx_descriptor *dmaengine_prep_slave_single(struct dma_chan *chan ,
                                                                            dma_addr_t buf ,
                                                                            size_t len ,
                                                                            enum dma_transfer_direction dir ,
                                                                            unsigned long flags )
{
  struct scatterlist sg ;
  struct dma_async_tx_descriptor *tmp ;
  {
  sg_init_table(& sg, 1U);
  sg.dma_address = buf;
  sg.dma_length = (unsigned int )len;
  tmp = (*((chan->device)->device_prep_slave_sg))(chan, & sg, 1U, dir, flags, (void *)0);
  return (tmp);
}
}
__inline static int dmaengine_terminate_all(struct dma_chan *chan )
{
  int tmp ;
  {
  tmp = dmaengine_device_control(chan, 0, 0UL);
  return (tmp);
}
}
__inline static int dmaengine_pause(struct dma_chan *chan )
{
  int tmp ;
  {
  tmp = dmaengine_device_control(chan, 1, 0UL);
  return (tmp);
}
}
__inline static enum dma_status dmaengine_tx_status(struct dma_chan *chan , dma_cookie_t cookie ,
                                                    struct dma_tx_state *state )
{
  enum dma_status tmp ;
  {
  tmp = (*((chan->device)->device_tx_status))(chan, cookie, state);
  return (tmp);
}
}
__inline static dma_cookie_t dmaengine_submit(struct dma_async_tx_descriptor *desc )
{
  dma_cookie_t tmp ;
  {
  tmp = (*(desc->tx_submit))(desc);
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
  bitmap_zero((unsigned long *)(& dstp->bits), 12);
  return;
}
}
__inline static void dma_async_issue_pending(struct dma_chan *chan )
{
  {
  (*((chan->device)->device_issue_pending))(chan);
  return;
}
}
extern struct dma_chan *__dma_request_channel(dma_cap_mask_t const * , bool (*)(struct dma_chan * ,
                                                                                  void * ) ,
                                              void * ) ;
extern struct dma_chan *dma_request_slave_channel(struct device * , char const * ) ;
extern void dma_release_channel(struct dma_chan * ) ;
__inline static struct dma_chan *__dma_request_slave_channel_compat(dma_cap_mask_t const *mask ,
                                                                    bool (*fn)(struct dma_chan * ,
                                                                               void * ) ,
                                                                    void *fn_param ,
                                                                    struct device *dev ,
                                                                    char *name )
{
  struct dma_chan *chan ;
  struct dma_chan *tmp ;
  {
  chan = dma_request_slave_channel(dev, (char const *)name);
  if ((unsigned long )chan != (unsigned long )((struct dma_chan *)0)) {
    return (chan);
  } else {
  }
  tmp = __dma_request_channel(mask, fn, fn_param);
  return (tmp);
}
}
static void __dma_tx_complete(void *param )
{
  struct uart_8250_port *p ;
  struct uart_8250_dma *dma ;
  struct circ_buf *xmit ;
  unsigned long flags ;
  int tmp ;
  {
  p = (struct uart_8250_port *)param;
  dma = p->dma;
  xmit = & (p->port.state)->xmit;
  dma_sync_single_for_cpu(((dma->txchan)->device)->dev, dma->tx_addr, 4096UL, 1);
  ldv_spin_lock();
  dma->tx_running = 0U;
  xmit->tail = (int )((unsigned int )xmit->tail + (unsigned int )dma->tx_size);
  xmit->tail = xmit->tail & 4095;
  p->port.icount.tx = p->port.icount.tx + (__u32 )dma->tx_size;
  if (((unsigned long )(xmit->head - xmit->tail) & 4095UL) <= 255UL) {
    uart_write_wakeup(& p->port);
  } else {
  }
  if (xmit->head != xmit->tail) {
    tmp = uart_tx_stopped(& p->port);
    if (tmp == 0) {
      serial8250_tx_dma(p);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& p->port.lock, flags);
  return;
}
}
static void __dma_rx_complete(void *param )
{
  struct uart_8250_port *p ;
  struct uart_8250_dma *dma ;
  struct tty_port *tty_port ;
  struct dma_tx_state state ;
  int count ;
  {
  p = (struct uart_8250_port *)param;
  dma = p->dma;
  tty_port = & (p->port.state)->port;
  dma_sync_single_for_cpu(((dma->rxchan)->device)->dev, dma->rx_addr, dma->rx_size,
                          2);
  dmaengine_tx_status(dma->rxchan, dma->rx_cookie, & state);
  dmaengine_terminate_all(dma->rxchan);
  count = (int )((unsigned int )dma->rx_size - state.residue);
  tty_insert_flip_string(tty_port, (unsigned char const *)dma->rx_buf, (size_t )count);
  p->port.icount.rx = p->port.icount.rx + (__u32 )count;
  tty_flip_buffer_push(tty_port);
  return;
}
}
int serial8250_tx_dma(struct uart_8250_port *p )
{
  struct uart_8250_dma *dma ;
  struct circ_buf *xmit ;
  struct dma_async_tx_descriptor *desc ;
  int tmp ;
  int end ;
  int n ;
  {
  dma = p->dma;
  xmit = & (p->port.state)->xmit;
  tmp = uart_tx_stopped(& p->port);
  if ((tmp != 0 || (unsigned int )*((unsigned char *)dma + 192UL) != 0U) || xmit->head == xmit->tail) {
    return (0);
  } else {
  }
  end = (int )(4096U - (unsigned int )xmit->tail);
  n = (xmit->head + end) & 4095;
  dma->tx_size = (size_t )(n < end ? n : end);
  desc = dmaengine_prep_slave_single(dma->txchan, dma->tx_addr + (dma_addr_t )xmit->tail,
                                     dma->tx_size, 1, 3UL);
  if ((unsigned long )desc == (unsigned long )((struct dma_async_tx_descriptor *)0)) {
    return (-16);
  } else {
  }
  dma->tx_running = 1U;
  desc->callback = & __dma_tx_complete;
  desc->callback_param = (void *)p;
  dma->tx_cookie = dmaengine_submit(desc);
  dma_sync_single_for_device(((dma->txchan)->device)->dev, dma->tx_addr, 4096UL, 1);
  dma_async_issue_pending(dma->txchan);
  return (0);
}
}
static char const __kstrtab_serial8250_tx_dma[18U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 't',
        'x', '_', 'd', 'm',
        'a', '\000'};
struct kernel_symbol const __ksymtab_serial8250_tx_dma ;
struct kernel_symbol const __ksymtab_serial8250_tx_dma = {(unsigned long )(& serial8250_tx_dma), (char const *)(& __kstrtab_serial8250_tx_dma)};
int serial8250_rx_dma(struct uart_8250_port *p , unsigned int iir )
{
  struct uart_8250_dma *dma ;
  struct dma_async_tx_descriptor *desc ;
  struct dma_tx_state state ;
  int dma_status ;
  enum dma_status tmp ;
  {
  dma = p->dma;
  tmp = dmaengine_tx_status(dma->rxchan, dma->rx_cookie, & state);
  dma_status = (int )tmp;
  switch (iir & 63U) {
  case 6U: ;
  return (-5);
  case 12U: ;
  if (dma_status == 1) {
    dmaengine_pause(dma->rxchan);
    __dma_rx_complete((void *)p);
  } else {
  }
  return (-110);
  default: ;
  goto ldv_31958;
  }
  ldv_31958: ;
  if (dma_status != 0) {
    return (0);
  } else {
  }
  desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr, dma->rx_size, 2, 3UL);
  if ((unsigned long )desc == (unsigned long )((struct dma_async_tx_descriptor *)0)) {
    return (-16);
  } else {
  }
  desc->callback = & __dma_rx_complete;
  desc->callback_param = (void *)p;
  dma->rx_cookie = dmaengine_submit(desc);
  dma_sync_single_for_device(((dma->rxchan)->device)->dev, dma->rx_addr, dma->rx_size,
                             2);
  dma_async_issue_pending(dma->rxchan);
  return (0);
}
}
static char const __kstrtab_serial8250_rx_dma[18U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'x', '_', 'd', 'm',
        'a', '\000'};
struct kernel_symbol const __ksymtab_serial8250_rx_dma ;
struct kernel_symbol const __ksymtab_serial8250_rx_dma = {(unsigned long )(& serial8250_rx_dma), (char const *)(& __kstrtab_serial8250_rx_dma)};
int serial8250_request_dma(struct uart_8250_port *p )
{
  struct uart_8250_dma *dma ;
  dma_cap_mask_t mask ;
  int tmp ;
  struct ratelimit_state _rs ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  dma = p->dma;
  dma->rxconf.direction = 2;
  dma->rxconf.src_addr_width = 1;
  dma->rxconf.src_addr = p->port.mapbase;
  dma->txconf.direction = 1;
  dma->txconf.dst_addr_width = 1;
  dma->txconf.dst_addr = p->port.mapbase;
  __dma_cap_zero(& mask);
  __dma_cap_set(9, & mask);
  dma->rxchan = __dma_request_slave_channel_compat((dma_cap_mask_t const *)(& mask),
                                                   dma->fn, dma->rx_param, p->port.dev,
                                                   (char *)"rx");
  if ((unsigned long )dma->rxchan == (unsigned long )((struct dma_chan *)0)) {
    return (-19);
  } else {
  }
  dmaengine_slave_config(dma->rxchan, & dma->rxconf);
  dma->txchan = __dma_request_slave_channel_compat((dma_cap_mask_t const *)(& mask),
                                                   dma->fn, dma->tx_param, p->port.dev,
                                                   (char *)"tx");
  if ((unsigned long )dma->txchan == (unsigned long )((struct dma_chan *)0)) {
    dma_release_channel(dma->rxchan);
    return (-19);
  } else {
  }
  dmaengine_slave_config(dma->txchan, & dma->txconf);
  if (dma->rx_size == 0UL) {
    dma->rx_size = 4096UL;
  } else {
  }
  dma->rx_buf = dma_alloc_attrs(((dma->rxchan)->device)->dev, dma->rx_size, & dma->rx_addr,
                                208U, (struct dma_attrs *)0);
  if ((unsigned long )dma->rx_buf == (unsigned long )((void *)0)) {
    goto err;
  } else {
  }
  dma->tx_addr = dma_map_single_attrs(((dma->txchan)->device)->dev, (void *)(p->port.state)->xmit.buf,
                                      4096UL, 1, (struct dma_attrs *)0);
  tmp = dma_mapping_error(((dma->txchan)->device)->dev, dma->tx_addr);
  if (tmp != 0) {
    dma_free_attrs(((dma->rxchan)->device)->dev, dma->rx_size, dma->rx_buf, dma->rx_addr,
                   (struct dma_attrs *)0);
    goto err;
  } else {
  }
  _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
  _rs.lock.magic = 3735899821U;
  _rs.lock.owner_cpu = 4294967295U;
  _rs.lock.owner = (void *)-1;
  _rs.lock.dep_map.key = 0;
  _rs.lock.dep_map.class_cache[0] = 0;
  _rs.lock.dep_map.class_cache[1] = 0;
  _rs.lock.dep_map.name = "_rs.lock";
  _rs.lock.dep_map.cpu = 0;
  _rs.lock.dep_map.ip = 0UL;
  _rs.interval = 1250;
  _rs.burst = 10;
  _rs.printed = 0;
  _rs.missed = 0;
  _rs.begin = 0UL;
  descriptor.modname = "8250";
  descriptor.function = "serial8250_request_dma";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_dma.o.c.prepared";
  descriptor.format = "got both dma channels\n";
  descriptor.lineno = 267U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp___1 = ___ratelimit(& _rs, "serial8250_request_dma");
    if (tmp___1 != 0) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)p->port.dev, "got both dma channels\n");
    } else {
    }
  } else {
  }
  return (0);
  err:
  dma_release_channel(dma->rxchan);
  dma_release_channel(dma->txchan);
  return (-12);
}
}
static char const __kstrtab_serial8250_request_dma[23U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'e', 'q', 'u', 'e',
        's', 't', '_', 'd',
        'm', 'a', '\000'};
struct kernel_symbol const __ksymtab_serial8250_request_dma ;
struct kernel_symbol const __ksymtab_serial8250_request_dma = {(unsigned long )(& serial8250_request_dma), (char const *)(& __kstrtab_serial8250_request_dma)};
void serial8250_release_dma(struct uart_8250_port *p )
{
  struct uart_8250_dma *dma ;
  struct ratelimit_state _rs ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  dma = p->dma;
  if ((unsigned long )dma == (unsigned long )((struct uart_8250_dma *)0)) {
    return;
  } else {
  }
  dmaengine_terminate_all(dma->rxchan);
  dma_free_attrs(((dma->rxchan)->device)->dev, dma->rx_size, dma->rx_buf, dma->rx_addr,
                 (struct dma_attrs *)0);
  dma_release_channel(dma->rxchan);
  dma->rxchan = (struct dma_chan *)0;
  dmaengine_terminate_all(dma->txchan);
  dma_unmap_single_attrs(((dma->txchan)->device)->dev, dma->tx_addr, 4096UL, 1, (struct dma_attrs *)0);
  dma_release_channel(dma->txchan);
  dma->txchan = (struct dma_chan *)0;
  dma->tx_running = 0U;
  _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
  _rs.lock.magic = 3735899821U;
  _rs.lock.owner_cpu = 4294967295U;
  _rs.lock.owner = (void *)-1;
  _rs.lock.dep_map.key = 0;
  _rs.lock.dep_map.class_cache[0] = 0;
  _rs.lock.dep_map.class_cache[1] = 0;
  _rs.lock.dep_map.name = "_rs.lock";
  _rs.lock.dep_map.cpu = 0;
  _rs.lock.dep_map.ip = 0UL;
  _rs.interval = 1250;
  _rs.burst = 10;
  _rs.printed = 0;
  _rs.missed = 0;
  _rs.begin = 0UL;
  descriptor.modname = "8250";
  descriptor.function = "serial8250_release_dma";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/531/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/8250/8250_dma.o.c.prepared";
  descriptor.format = "dma channels released\n";
  descriptor.lineno = 300U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    tmp___0 = ___ratelimit(& _rs, "serial8250_release_dma");
    if (tmp___0 != 0) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)p->port.dev, "dma channels released\n");
    } else {
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_serial8250_release_dma[23U] =
  { 's', 'e', 'r', 'i',
        'a', 'l', '8', '2',
        '5', '0', '_', 'r',
        'e', 'l', 'e', 'a',
        's', 'e', '_', 'd',
        'm', 'a', '\000'};
struct kernel_symbol const __ksymtab_serial8250_release_dma ;
struct kernel_symbol const __ksymtab_serial8250_release_dma = {(unsigned long )(& serial8250_release_dma), (char const *)(& __kstrtab_serial8250_release_dma)};
void *ldv_kmem_cache_alloc_73(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
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
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void *external_alloc(void);
struct dma_chan *__dma_request_channel(const dma_cap_mask_t *arg0, bool (*arg1)(struct dma_chan *, void *), void *arg2) {
  return (struct dma_chan *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void *external_alloc(void);
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return (struct resource *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
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
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void disable_irq_nosync(unsigned int arg0) {
  return;
}
void dma_release_channel(struct dma_chan *arg0) {
  return;
}
void *external_alloc(void);
struct dma_chan *dma_request_slave_channel(struct device *arg0, const char *arg1) {
  return (struct dma_chan *)external_alloc();
}
void do_SAK(struct tty_struct *arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
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
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void list_del(struct list_head *arg0) {
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
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return (struct platform_device *)external_alloc();
}
void platform_device_del(struct platform_device *arg0) {
  return;
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
void *external_alloc(void);
struct resource *pnp_get_resource(struct pnp_dev *arg0, unsigned long arg1, unsigned int arg2) {
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int pnp_possible_config(struct pnp_dev *arg0, int arg1, resource_size_t arg2, resource_size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pnp_register_driver(struct pnp_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void pnp_unregister_driver(struct pnp_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int probe_irq_off(unsigned long arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int probe_irq_on() {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void touch_nmi_watchdog() {
  return;
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
speed_t tty_termios_baud_rate(struct ktermios *arg0) {
  return __VERIFIER_nondet_uint();
}
void tty_termios_encode_baud_rate(struct ktermios *arg0, speed_t arg1, speed_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int uart_add_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int uart_get_baud_rate(struct uart_port *arg0, struct ktermios *arg1, struct ktermios *arg2, unsigned int arg3, unsigned int arg4) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int uart_get_divisor(struct uart_port *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_uint();
}
void uart_handle_cts_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
void uart_handle_dcd_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
void uart_insert_char(struct uart_port *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int uart_match_port(struct uart_port *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_register_driver(struct uart_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_remove_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_resume_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_suspend_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
void uart_unregister_driver(struct uart_driver *arg0) {
  return;
}
void uart_update_timeout(struct uart_port *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void uart_write_wakeup(struct uart_port *arg0) {
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
