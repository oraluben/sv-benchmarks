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
struct usb_device;
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
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct usb_interface;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
struct __anonstruct____missing_field_name_231 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField65 ;
};
struct lockref {
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_233 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField67 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_232 __annonCompField68 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_234 {
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
   union __anonunion_d_u_234 d_u ;
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
struct __anonstruct____missing_field_name_238 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField69 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_237 __annonCompField70 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct __anonstruct_kprojid_t_242 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_242 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_243 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_243 __annonCompField72 ;
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
union __anonunion____missing_field_name_246 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_247 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_248 {
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
   union __anonunion____missing_field_name_246 __annonCompField73 ;
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
   union __anonunion____missing_field_name_247 __annonCompField74 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_248 __annonCompField75 ;
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
union __anonunion_f_u_249 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_249 f_u ;
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
struct __anonstruct_afs_251 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_250 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_251 afs ;
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
   union __anonunion_fl_u_250 fl_u ;
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
struct usb_class_driver {
   char *name ;
   char *(*devnode)(struct device * , umode_t * ) ;
   struct file_operations const *fops ;
   int minor_base ;
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
struct u132_platform_data {
   u16 vendor ;
   u16 device ;
   u8 potpg ;
   void (*port_power)(struct device * , int ) ;
   void (*reset)(struct device * ) ;
};
struct usb_tt {
   struct usb_device *hub ;
   int multi ;
   unsigned int think_time ;
   void *hcpriv ;
   spinlock_t lock ;
   struct list_head clear_list ;
   struct work_struct clear_work ;
};
struct u132_command {
   u8 header ;
   u16 length ;
   u8 address ;
   u8 width ;
   u32 value ;
   int follows ;
   void *buffer ;
};
struct u132_respond {
   u8 header ;
   u8 address ;
   u32 *value ;
   int *result ;
   struct completion wait_completion ;
};
struct u132_target {
   void *endp ;
   struct urb *urb ;
   int toggle_bits ;
   int error_count ;
   int condition_code ;
   int repeat_number ;
   int halted ;
   int skipped ;
   int actual ;
   int non_null ;
   int active ;
   int abandoning ;
   void (*callback)(void * , struct urb * , u8 * , int , int , int , int , int ,
                    int , int , int , int ) ;
};
struct usb_ftdi {
   struct list_head ftdi_list ;
   struct mutex u132_lock ;
   int command_next ;
   int command_head ;
   struct u132_command command[32U] ;
   int respond_next ;
   int respond_head ;
   struct u132_respond respond[32U] ;
   struct u132_target target[4U] ;
   char device_name[16U] ;
   unsigned char synchronized : 1 ;
   unsigned char enumerated : 1 ;
   unsigned char registered : 1 ;
   unsigned char initialized : 1 ;
   unsigned char card_ejected : 1 ;
   int function ;
   int sequence_num ;
   int disconnected ;
   int gone_away ;
   int stuck_status ;
   int status_queue_delay ;
   struct semaphore sw_lock ;
   struct usb_device *udev ;
   struct usb_interface *interface ;
   struct usb_class_driver *class ;
   struct delayed_work status_work ;
   struct delayed_work command_work ;
   struct delayed_work respond_work ;
   struct u132_platform_data platform_data ;
   struct resource resources[0U] ;
   struct platform_device platform_dev ;
   unsigned char *bulk_in_buffer ;
   size_t bulk_in_size ;
   size_t bulk_in_last ;
   size_t bulk_in_left ;
   __u8 bulk_in_endpointAddr ;
   __u8 bulk_out_endpointAddr ;
   struct kref kref ;
   u32 controlreg ;
   u8 response[1028U] ;
   int expected ;
   int received ;
   int ed_found ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __might_fault(char const * , int ) ;
extern int sprintf(char * , char const * , ...) ;
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
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
  goto ldv_5596;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  default:
  __xadd_wrong_size();
  }
  ldv_5596: ;
  return (__ret + i);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
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
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_ftdi_module_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_ftdi_module_lock(struct mutex *lock ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_u132_lock_of_usb_ftdi(struct mutex *lock ) ;
void ldv_mutex_unlock_u132_lock_of_usb_ftdi(struct mutex *lock ) ;
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
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_91(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_92(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_93(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_94(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_95(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_98(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_100(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_102(struct workqueue_struct *ldv_func_arg1 ) ;
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
void ldv_flush_workqueue_87(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_89(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_97(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_99(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_101(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_19(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_20(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_21(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_6(8192, wq, dwork, delay);
  return (tmp);
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
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct usb_interface *ftdi_elan_driver_group1 ;
struct work_struct *ldv_work_struct_3_1 ;
struct inode *ftdi_elan_fops_group1 ;
struct work_struct *ldv_work_struct_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_3_1 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
int ldv_work_2_0 ;
int usb_counter ;
int ldv_work_3_2 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
int ldv_work_3_0 ;
struct file *ftdi_elan_fops_group2 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct work_struct *ldv_work_struct_1_2 ;
struct work_struct *ldv_work_struct_2_2 ;
int ldv_state_variable_3 ;
int ldv_work_2_2 ;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_work_2_1 ;
void call_and_disable_work_3(struct work_struct *work ) ;
void work_init_3(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_3(void) ;
void work_init_2(void) ;
void work_init_1(void) ;
void ldv_usb_driver_4(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void call_and_disable_all_3(int state ) ;
void ldv_file_operations_5(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
extern int __request_module(bool , char const * , ...) ;
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
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
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
extern void down(struct semaphore * ) ;
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern loff_t no_llseek(struct file * , loff_t , int ) ;
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
extern struct usb_interface *usb_find_interface(struct usb_driver * , int ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_90(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_96(struct usb_driver *arg ) ;
extern int usb_register_dev(struct usb_interface * , struct usb_class_driver * ) ;
extern void usb_deregister_dev(struct usb_interface * , struct usb_class_driver * ) ;
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
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_bulk_msg(struct usb_device * , unsigned int , void * , int , int * ,
                        int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static __u16 usb_maxpacket(struct usb_device *udev , int pipe , int is_out )
{
  struct usb_host_endpoint *ep ;
  unsigned int epnum ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  epnum = (unsigned int )(pipe >> 15) & 15U;
  if (is_out != 0) {
    __ret_warn_on = (pipe & 128) != 0;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/usb.h", 1846);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    ep = udev->ep_out[epnum];
  } else {
    __ret_warn_on___0 = (pipe & 128) == 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/usb.h", 1849);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    ep = udev->ep_in[epnum];
  }
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (0U);
  } else {
  }
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  return ((__u16 )tmp___1);
}
}
extern int platform_device_register(struct platform_device * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
static bool distrust_firmware = 1;
static struct workqueue_struct *status_queue ;
static struct workqueue_struct *command_queue ;
static struct workqueue_struct *respond_queue ;
static struct mutex ftdi_module_lock ;
static int ftdi_instances = 0;
static struct list_head ftdi_static_list ;
void ftdi_elan_gone_away(struct platform_device *pdev ) ;
int usb_ftdi_elan_edset_single(struct platform_device *pdev , u8 ed_number , void *endp ,
                               struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                               void (*callback)(void * , struct urb * , u8 * , int ,
                                                int , int , int , int , int ,
                                                int , int , int ) ) ;
int usb_ftdi_elan_edset_output(struct platform_device *pdev , u8 ed_number , void *endp ,
                               struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                               void (*callback)(void * , struct urb * , u8 * , int ,
                                                int , int , int , int , int ,
                                                int , int , int ) ) ;
int usb_ftdi_elan_edset_empty(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) ) ;
int usb_ftdi_elan_edset_input(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) ) ;
int usb_ftdi_elan_edset_setup(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) ) ;
int usb_ftdi_elan_edset_flush(struct platform_device *pdev , u8 ed_number , void *endp ) ;
int usb_ftdi_elan_read_pcimem(struct platform_device *pdev , int mem_offset , u8 width ,
                              u32 *data ) ;
int usb_ftdi_elan_write_pcimem(struct platform_device *pdev , int mem_offset , u8 width ,
                               u32 data ) ;
static struct usb_device_id const ftdi_elan_table[2U] = { {3U, 1027U, 55018U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb__ftdi_elan_table_device_table[2U] ;
static struct usb_driver ftdi_elan_driver ;
static void ftdi_elan_delete(struct kref *kref )
{
  struct usb_ftdi *ftdi ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)kref;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe2fcUL;
  dev_warn((struct device const *)(& (ftdi->udev)->dev), "FREEING ftdi=%p\n", ftdi);
  usb_put_dev(ftdi->udev);
  ftdi->disconnected = ftdi->disconnected + 1;
  ldv_mutex_lock_17(& ftdi_module_lock);
  list_del_init(& ftdi->ftdi_list);
  ftdi_instances = ftdi_instances + -1;
  ldv_mutex_unlock_18(& ftdi_module_lock);
  kfree((void const *)ftdi->bulk_in_buffer);
  ftdi->bulk_in_buffer = (unsigned char *)0U;
  return;
}
}
static void ftdi_elan_put_kref(struct usb_ftdi *ftdi )
{
  {
  kref_put(& ftdi->kref, & ftdi_elan_delete);
  return;
}
}
static void ftdi_elan_get_kref(struct usb_ftdi *ftdi )
{
  {
  kref_get(& ftdi->kref);
  return;
}
}
static void ftdi_elan_init_kref(struct usb_ftdi *ftdi )
{
  {
  kref_init(& ftdi->kref);
  return;
}
}
static void ftdi_status_requeue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = queue_delayed_work(status_queue, & ftdi->status_work, (unsigned long )delta);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
static void ftdi_status_queue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(status_queue, & ftdi->status_work, (unsigned long )delta);
  if ((int )tmp) {
    kref_get(& ftdi->kref);
  } else {
  }
  return;
}
}
static void ftdi_status_cancel_work(struct usb_ftdi *ftdi )
{
  bool tmp ;
  {
  tmp = ldv_cancel_delayed_work_19(& ftdi->status_work);
  if ((int )tmp) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
static void ftdi_command_requeue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = queue_delayed_work(command_queue, & ftdi->command_work, (unsigned long )delta);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
static void ftdi_command_queue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(command_queue, & ftdi->command_work, (unsigned long )delta);
  if ((int )tmp) {
    kref_get(& ftdi->kref);
  } else {
  }
  return;
}
}
static void ftdi_command_cancel_work(struct usb_ftdi *ftdi )
{
  bool tmp ;
  {
  tmp = ldv_cancel_delayed_work_20(& ftdi->command_work);
  if ((int )tmp) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
static void ftdi_response_requeue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = queue_delayed_work(respond_queue, & ftdi->respond_work, (unsigned long )delta);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
static void ftdi_respond_queue_work(struct usb_ftdi *ftdi , unsigned int delta )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(respond_queue, & ftdi->respond_work, (unsigned long )delta);
  if ((int )tmp) {
    kref_get(& ftdi->kref);
  } else {
  }
  return;
}
}
static void ftdi_response_cancel_work(struct usb_ftdi *ftdi )
{
  bool tmp ;
  {
  tmp = ldv_cancel_delayed_work_21(& ftdi->respond_work);
  if ((int )tmp) {
    kref_put(& ftdi->kref, & ftdi_elan_delete);
  } else {
  }
  return;
}
}
void ftdi_elan_gone_away(struct platform_device *pdev )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  ftdi->gone_away = ftdi->gone_away + 1;
  ftdi_elan_put_kref(ftdi);
  return;
}
}
static char const __kstrtab_ftdi_elan_gone_away[20U] =
  { 'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'g', 'o',
        'n', 'e', '_', 'a',
        'w', 'a', 'y', '\000'};
struct kernel_symbol const __ksymtab_ftdi_elan_gone_away ;
struct kernel_symbol const __ksymtab_ftdi_elan_gone_away = {(unsigned long )(& ftdi_elan_gone_away), (char const *)(& __kstrtab_ftdi_elan_gone_away)};
static void ftdi_release_platform_dev(struct device *dev )
{
  {
  dev->parent = (struct device *)0;
  return;
}
}
static void ftdi_elan_do_callback(struct usb_ftdi *ftdi , struct u132_target *target ,
                                  u8 *buffer , int length ) ;
static void ftdi_elan_kick_command_queue(struct usb_ftdi *ftdi ) ;
static void ftdi_elan_kick_respond_queue(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_setupOHCI(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_checkingPCI(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_enumeratePCI(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_synchronize(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_stuck_waiting(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_command_engine(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_respond_engine(struct usb_ftdi *ftdi ) ;
static int ftdi_elan_hcd_init(struct usb_ftdi *ftdi )
{
  int result ;
  {
  if ((unsigned long )ftdi->platform_dev.dev.parent != (unsigned long )((struct device *)0)) {
    return (-16);
  } else {
  }
  ftdi_elan_get_kref(ftdi);
  ftdi->platform_data.potpg = 100U;
  ftdi->platform_data.reset = (void (*)(struct device * ))0;
  ftdi->platform_dev.id = ftdi->sequence_num;
  ftdi->platform_dev.resource = (struct resource *)(& ftdi->resources);
  ftdi->platform_dev.num_resources = 0U;
  ftdi->platform_dev.dev.platform_data = (void *)(& ftdi->platform_data);
  ftdi->platform_dev.dev.parent = (struct device *)0;
  ftdi->platform_dev.dev.release = & ftdi_release_platform_dev;
  ftdi->platform_dev.dev.dma_mask = (u64 *)0ULL;
  snprintf((char *)(& ftdi->device_name), 16UL, "u132_hcd");
  ftdi->platform_dev.name = (char const *)(& ftdi->device_name);
  _dev_info((struct device const *)(& (ftdi->udev)->dev), "requesting module \'%s\'\n",
            (char *)"u132_hcd");
  __request_module(1, "u132_hcd");
  _dev_info((struct device const *)(& (ftdi->udev)->dev), "registering \'%s\'\n",
            ftdi->platform_dev.name);
  result = platform_device_register(& ftdi->platform_dev);
  return (result);
}
}
static void ftdi_elan_abandon_completions(struct usb_ftdi *ftdi )
{
  struct u132_respond *respond ;
  int tmp ;
  {
  ldv_mutex_lock_22(& ftdi->u132_lock);
  goto ldv_29726;
  ldv_29725:
  tmp = ftdi->respond_head;
  ftdi->respond_head = ftdi->respond_head + 1;
  respond = (struct u132_respond *)(& ftdi->respond) + ((unsigned long )tmp & 31UL);
  *(respond->result) = -108;
  *(respond->value) = 0U;
  complete(& respond->wait_completion);
  ldv_29726: ;
  if (ftdi->respond_next > ftdi->respond_head) {
    goto ldv_29725;
  } else {
  }
  ldv_mutex_unlock_23(& ftdi->u132_lock);
  return;
}
}
static void ftdi_elan_abandon_targets(struct usb_ftdi *ftdi )
{
  int ed_number ;
  struct u132_target *target ;
  int tmp ;
  {
  ed_number = 4;
  ldv_mutex_lock_24(& ftdi->u132_lock);
  goto ldv_29734;
  ldv_29733:
  target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed_number;
  if (target->active == 1) {
    target->condition_code = 5;
    ldv_mutex_unlock_25(& ftdi->u132_lock);
    ftdi_elan_do_callback(ftdi, target, (u8 *)0U, 0);
    ldv_mutex_lock_26(& ftdi->u132_lock);
  } else {
  }
  ldv_29734:
  tmp = ed_number;
  ed_number = ed_number - 1;
  if (tmp > 0) {
    goto ldv_29733;
  } else {
  }
  ftdi->received = 0;
  ftdi->expected = 4;
  ftdi->ed_found = 0;
  ldv_mutex_unlock_27(& ftdi->u132_lock);
  return;
}
}
static void ftdi_elan_flush_targets(struct usb_ftdi *ftdi )
{
  int ed_number ;
  struct u132_target *target ;
  int command_size ;
  struct u132_command *command ;
  int command_size___0 ;
  struct u132_command *command___0 ;
  int tmp ;
  {
  ed_number = 4;
  ldv_mutex_lock_28(& ftdi->u132_lock);
  goto ldv_29748;
  ldv_29747:
  target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed_number;
  target->abandoning = 1;
  wait_1: ;
  if (target->active == 1) {
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )(ed_number << 5)) | -124);
      command->length = 0U;
      command->address = 0U;
      command->width = 0U;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)(& command->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
    } else {
      ldv_mutex_unlock_29(& ftdi->u132_lock);
      msleep(100U);
      ldv_mutex_lock_30(& ftdi->u132_lock);
      goto wait_1;
    }
  } else {
  }
  wait_2: ;
  if (target->active == 1) {
    command_size___0 = ftdi->command_next - ftdi->command_head;
    if (command_size___0 <= 31) {
      command___0 = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command___0->header = (u8 )((int )((signed char )(ed_number << 5)) | -112);
      command___0->length = 0U;
      command___0->address = 0U;
      command___0->width = 0U;
      command___0->follows = 0;
      command___0->value = 0U;
      command___0->buffer = (void *)(& command___0->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
    } else {
      ldv_mutex_unlock_31(& ftdi->u132_lock);
      msleep(100U);
      ldv_mutex_lock_32(& ftdi->u132_lock);
      goto wait_2;
    }
  } else {
  }
  ldv_29748:
  tmp = ed_number;
  ed_number = ed_number - 1;
  if (tmp > 0) {
    goto ldv_29747;
  } else {
  }
  ftdi->received = 0;
  ftdi->expected = 4;
  ftdi->ed_found = 0;
  ldv_mutex_unlock_33(& ftdi->u132_lock);
  return;
}
}
static void ftdi_elan_cancel_targets(struct usb_ftdi *ftdi )
{
  int ed_number ;
  struct u132_target *target ;
  int command_size ;
  struct u132_command *command ;
  int tmp ;
  {
  ed_number = 4;
  ldv_mutex_lock_34(& ftdi->u132_lock);
  goto ldv_29759;
  ldv_29758:
  target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed_number;
  target->abandoning = 1;
  wait: ;
  if (target->active == 1) {
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )(ed_number << 5)) | -124);
      command->length = 0U;
      command->address = 0U;
      command->width = 0U;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)(& command->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
    } else {
      ldv_mutex_unlock_35(& ftdi->u132_lock);
      msleep(100U);
      ldv_mutex_lock_36(& ftdi->u132_lock);
      goto wait;
    }
  } else {
  }
  ldv_29759:
  tmp = ed_number;
  ed_number = ed_number - 1;
  if (tmp > 0) {
    goto ldv_29758;
  } else {
  }
  ftdi->received = 0;
  ftdi->expected = 4;
  ftdi->ed_found = 0;
  ldv_mutex_unlock_37(& ftdi->u132_lock);
  return;
}
}
static void ftdi_elan_kick_command_queue(struct usb_ftdi *ftdi )
{
  {
  ftdi_command_queue_work(ftdi, 0U);
  return;
}
}
static void ftdi_elan_command_work(struct work_struct *work )
{
  struct usb_ftdi *ftdi ;
  struct work_struct const *__mptr ;
  int retval ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffeab8UL;
  if (ftdi->disconnected > 0) {
    ftdi_elan_put_kref(ftdi);
    return;
  } else {
    tmp = ftdi_elan_command_engine(ftdi);
    retval = tmp;
    if (retval == -108) {
      ftdi->disconnected = ftdi->disconnected + 1;
    } else
    if (retval == -19) {
      ftdi->disconnected = ftdi->disconnected + 1;
    } else
    if (retval != 0) {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "command error %d\n",
              retval);
    } else {
    }
    tmp___0 = msecs_to_jiffies(10U);
    ftdi_command_requeue_work(ftdi, (unsigned int )tmp___0);
    return;
  }
}
}
static void ftdi_elan_kick_respond_queue(struct usb_ftdi *ftdi )
{
  {
  ftdi_respond_queue_work(ftdi, 0U);
  return;
}
}
static void ftdi_elan_respond_work(struct work_struct *work )
{
  struct usb_ftdi *ftdi ;
  struct work_struct const *__mptr ;
  int retval ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe9d8UL;
  if (ftdi->disconnected > 0) {
    ftdi_elan_put_kref(ftdi);
    return;
  } else {
    tmp = ftdi_elan_respond_engine(ftdi);
    retval = tmp;
    if (retval == 0) {
    } else
    if (retval == -108) {
      ftdi->disconnected = ftdi->disconnected + 1;
    } else
    if (retval == -19) {
      ftdi->disconnected = ftdi->disconnected + 1;
    } else
    if (retval == -84) {
      ftdi->disconnected = ftdi->disconnected + 1;
    } else {
      ftdi->disconnected = ftdi->disconnected + 1;
      dev_err((struct device const *)(& (ftdi->udev)->dev), "respond error %d\n",
              retval);
    }
    if (ftdi->disconnected > 0) {
      ftdi_elan_abandon_completions(ftdi);
      ftdi_elan_abandon_targets(ftdi);
    } else {
    }
    tmp___0 = msecs_to_jiffies(10U);
    ftdi_response_requeue_work(ftdi, (unsigned int )tmp___0);
    return;
  }
}
}
static void ftdi_elan_status_work(struct work_struct *work )
{
  struct usb_ftdi *ftdi ;
  struct work_struct const *__mptr ;
  int work_delay_in_msec ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned long tmp___6 ;
  {
  __mptr = (struct work_struct const *)work;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffeb98UL;
  work_delay_in_msec = 0;
  if (ftdi->disconnected > 0) {
    ftdi_elan_put_kref(ftdi);
    return;
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    down(& ftdi->sw_lock);
    tmp = ftdi_elan_synchronize(ftdi);
    if (tmp == 0) {
      ftdi->synchronized = 1U;
      ftdi_command_queue_work(ftdi, 1U);
      ftdi_respond_queue_work(ftdi, 1U);
      up(& ftdi->sw_lock);
      work_delay_in_msec = 100;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "synchronize failed\n");
      up(& ftdi->sw_lock);
      work_delay_in_msec = 10000;
    }
  } else
  if (ftdi->stuck_status > 0) {
    tmp___1 = ftdi_elan_stuck_waiting(ftdi);
    if (tmp___1 == 0) {
      ftdi->stuck_status = 0;
      ftdi->synchronized = 0U;
    } else {
      tmp___0 = ftdi->stuck_status;
      ftdi->stuck_status = ftdi->stuck_status + 1;
      if (tmp___0 % 60 == 1) {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "WRONG type of card inserted - please remove\n");
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "WRONG type of card inserted - checked %d times\n",
                ftdi->stuck_status);
      }
    }
    work_delay_in_msec = 100;
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    tmp___2 = ftdi_elan_enumeratePCI(ftdi);
    if (tmp___2 == 0) {
      ftdi->enumerated = 1U;
      work_delay_in_msec = 250;
    } else {
      work_delay_in_msec = 1000;
    }
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    tmp___3 = ftdi_elan_setupOHCI(ftdi);
    if (tmp___3 == 0) {
      ftdi->initialized = 1U;
      work_delay_in_msec = 500;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "initialized failed - trying again in 10 seconds\n");
      work_delay_in_msec = 1000;
    }
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    work_delay_in_msec = 10;
    tmp___4 = ftdi_elan_hcd_init(ftdi);
    if (tmp___4 == 0) {
      ftdi->registered = 1U;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "register failed\n");
    }
    work_delay_in_msec = 250;
  } else {
    tmp___5 = ftdi_elan_checkingPCI(ftdi);
    if (tmp___5 == 0) {
      work_delay_in_msec = 250;
    } else
    if ((ftdi->controlreg & 4194304U) != 0U) {
      if (ftdi->gone_away > 0) {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "PCI device eject confirmed platform_dev.dev.parent=%p platform_dev.dev=%p\n",
                ftdi->platform_dev.dev.parent, & ftdi->platform_dev.dev);
        platform_device_unregister(& ftdi->platform_dev);
        ftdi->platform_dev.dev.parent = (struct device *)0;
        ftdi->registered = 0U;
        ftdi->enumerated = 0U;
        ftdi->card_ejected = 0U;
        ftdi->initialized = 0U;
        ftdi->gone_away = 0;
      } else {
        ftdi_elan_flush_targets(ftdi);
      }
      work_delay_in_msec = 250;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "PCI device has disappeared\n");
      ftdi_elan_cancel_targets(ftdi);
      work_delay_in_msec = 500;
      ftdi->enumerated = 0U;
      ftdi->initialized = 0U;
    }
  }
  if (ftdi->disconnected > 0) {
    ftdi_elan_put_kref(ftdi);
    return;
  } else {
    tmp___6 = msecs_to_jiffies((unsigned int const )work_delay_in_msec);
    ftdi_status_requeue_work(ftdi, (unsigned int )tmp___6);
    return;
  }
}
}
static int ftdi_elan_open(struct inode *inode , struct file *file )
{
  int subminor ;
  struct usb_interface *interface ;
  unsigned int tmp ;
  struct usb_ftdi *ftdi ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = iminor((struct inode const *)inode);
  subminor = (int )tmp;
  interface = usb_find_interface(& ftdi_elan_driver, subminor);
  if ((unsigned long )interface == (unsigned long )((struct usb_interface *)0)) {
    printk("\vftdi_elan: can\'t find device for minor %d\n", subminor);
    return (-19);
  } else {
    tmp___0 = usb_get_intfdata(interface);
    ftdi = (struct usb_ftdi *)tmp___0;
    if ((unsigned long )ftdi == (unsigned long )((struct usb_ftdi *)0)) {
      return (-19);
    } else {
      tmp___1 = down_interruptible(& ftdi->sw_lock);
      if (tmp___1 != 0) {
        return (-4);
      } else {
        ftdi_elan_get_kref(ftdi);
        file->private_data = (void *)ftdi;
        return (0);
      }
    }
  }
}
}
static int ftdi_elan_release(struct inode *inode , struct file *file )
{
  struct usb_ftdi *ftdi ;
  {
  ftdi = (struct usb_ftdi *)file->private_data;
  if ((unsigned long )ftdi == (unsigned long )((struct usb_ftdi *)0)) {
    return (-19);
  } else {
  }
  up(& ftdi->sw_lock);
  ftdi_elan_put_kref(ftdi);
  return (0);
}
}
static ssize_t ftdi_elan_read(struct file *file , char *buffer , size_t count , loff_t *ppos )
{
  char data[94U] ;
  char *d ;
  int m ;
  int bytes_read ;
  int retry_on_empty ;
  int retry_on_timeout ;
  struct usb_ftdi *ftdi ;
  char *p ;
  int tmp ;
  int tmp___0 ;
  char *tmp___1 ;
  unsigned long tmp___2 ;
  size_t tmp___3 ;
  int packet_bytes ;
  int retval ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  d = (char *)(& data);
  m = 31;
  bytes_read = 0;
  retry_on_empty = 10;
  retry_on_timeout = 5;
  ftdi = (struct usb_ftdi *)file->private_data;
  if (ftdi->disconnected > 0) {
    return (-19L);
  } else {
  }
  data[0] = 0;
  have: ;
  if (ftdi->bulk_in_left != 0UL) {
    tmp___3 = count;
    count = count - 1UL;
    if (tmp___3 != 0UL) {
      ftdi->bulk_in_last = ftdi->bulk_in_last + 1UL;
      p = (char *)(ftdi->bulk_in_buffer + ftdi->bulk_in_last);
      ftdi->bulk_in_left = ftdi->bulk_in_left - 1UL;
      if (bytes_read < m) {
        tmp = sprintf(d, " %02X", (int )*p & 255);
        d = d + (unsigned long )tmp;
      } else
      if (bytes_read > m) {
      } else {
        tmp___0 = sprintf(d, " ..");
        d = d + (unsigned long )tmp___0;
      }
      tmp___1 = buffer;
      buffer = buffer + 1;
      tmp___2 = copy_to_user((void *)tmp___1, (void const *)p, 1UL);
      if (tmp___2 != 0UL) {
        return (-14L);
      } else {
        bytes_read = bytes_read + 1;
        goto have;
      }
    } else {
      return ((ssize_t )bytes_read);
    }
  } else {
  }
  more: ;
  if (count != 0UL) {
    packet_bytes = 0;
    tmp___4 = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_in_endpointAddr);
    tmp___5 = usb_bulk_msg(ftdi->udev, tmp___4 | 3221225600U, (void *)ftdi->bulk_in_buffer,
                           (int )ftdi->bulk_in_size, & packet_bytes, 50);
    retval = tmp___5;
    if (packet_bytes > 2) {
      ftdi->bulk_in_left = (size_t )(packet_bytes + -2);
      ftdi->bulk_in_last = 1UL;
      goto have;
    } else
    if (retval == -110) {
      tmp___6 = retry_on_timeout;
      retry_on_timeout = retry_on_timeout - 1;
      if (tmp___6 > 0) {
        goto more;
      } else
      if (bytes_read > 0) {
        return ((ssize_t )bytes_read);
      } else {
        return ((ssize_t )retval);
      }
    } else
    if (retval == 0) {
      tmp___7 = retry_on_empty;
      retry_on_empty = retry_on_empty - 1;
      if (tmp___7 > 0) {
        goto more;
      } else {
        return ((ssize_t )bytes_read);
      }
    } else {
      return ((ssize_t )retval);
    }
  } else {
    return ((ssize_t )bytes_read);
  }
}
}
static void ftdi_elan_write_bulk_callback(struct urb *urb )
{
  struct usb_ftdi *ftdi ;
  int status ;
  {
  ftdi = (struct usb_ftdi *)urb->context;
  status = urb->status;
  if (status != 0 && ((status != -2 && status != -104) && status != -108)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "urb=%p write bulk status received: %d\n",
            urb, status);
  } else {
  }
  usb_free_coherent(urb->dev, (size_t )urb->transfer_buffer_length, urb->transfer_buffer,
                    urb->transfer_dma);
  return;
}
}
static int fill_buffer_with_all_queued_commands(struct usb_ftdi *ftdi , char *buf ,
                                                int command_size , int total_size )
{
  int ed_commands ;
  int b ;
  int I ;
  int i ;
  struct u132_command *command ;
  int tmp ;
  int F ;
  u8 *f ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u8 *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  ed_commands = 0;
  b = 0;
  I = command_size;
  i = ftdi->command_head;
  goto ldv_29840;
  ldv_29839:
  tmp = i;
  i = i + 1;
  command = (struct u132_command *)(& ftdi->command) + ((unsigned long )tmp & 31UL);
  F = command->follows;
  f = (u8 *)command->buffer;
  if ((int )((signed char )command->header) < 0) {
    ed_commands = (1 << (((int )command->header >> 5) & 3)) | ed_commands;
  } else {
  }
  tmp___0 = b;
  b = b + 1;
  *(buf + (unsigned long )tmp___0) = (char )command->header;
  tmp___1 = b;
  b = b + 1;
  *(buf + (unsigned long )tmp___1) = (char )command->length;
  tmp___2 = b;
  b = b + 1;
  *(buf + (unsigned long )tmp___2) = (char )((int )command->length >> 8);
  tmp___3 = b;
  b = b + 1;
  *(buf + (unsigned long )tmp___3) = (char )command->address;
  tmp___4 = b;
  b = b + 1;
  *(buf + (unsigned long )tmp___4) = (char )command->width;
  goto ldv_29837;
  ldv_29836:
  tmp___5 = b;
  b = b + 1;
  tmp___6 = f;
  f = f + 1;
  *(buf + (unsigned long )tmp___5) = (char )*tmp___6;
  ldv_29837:
  tmp___7 = F;
  F = F - 1;
  if (tmp___7 > 0) {
    goto ldv_29836;
  } else {
  }
  ldv_29840:
  tmp___8 = I;
  I = I - 1;
  if (tmp___8 > 0) {
    goto ldv_29839;
  } else {
  }
  return (ed_commands);
}
}
static int ftdi_elan_total_command_size(struct usb_ftdi *ftdi , int command_size )
{
  int total_size ;
  int I ;
  int i ;
  struct u132_command *command ;
  int tmp ;
  int tmp___0 ;
  {
  total_size = 0;
  I = command_size;
  i = ftdi->command_head;
  goto ldv_29851;
  ldv_29850:
  tmp = i;
  i = i + 1;
  command = (struct u132_command *)(& ftdi->command) + ((unsigned long )tmp & 31UL);
  total_size = (command->follows + 5) + total_size;
  ldv_29851:
  tmp___0 = I;
  I = I - 1;
  if (tmp___0 > 0) {
    goto ldv_29850;
  } else {
  }
  return (total_size);
}
}
static int ftdi_elan_command_engine(struct usb_ftdi *ftdi )
{
  int retval ;
  char *buf ;
  int ed_commands ;
  int total_size ;
  struct urb *urb ;
  int command_size ;
  void *tmp ;
  unsigned int tmp___0 ;
  char diag[124U] ;
  char *d ;
  int m ;
  u8 *c ;
  int s ;
  u8 *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  command_size = ftdi->command_next - ftdi->command_head;
  if (command_size == 0) {
    return (0);
  } else {
  }
  total_size = ftdi_elan_total_command_size(ftdi, command_size);
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not get a urb to write %d commands totaling %d bytes to the Uxxx\n",
            command_size, total_size);
    return (-12);
  } else {
  }
  tmp = usb_alloc_coherent(ftdi->udev, (size_t )total_size, 208U, & urb->transfer_dma);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not get a buffer to write %d commands totaling %d bytes to the Uxxx\n",
            command_size, total_size);
    usb_free_urb(urb);
    return (-12);
  } else {
  }
  ed_commands = fill_buffer_with_all_queued_commands(ftdi, buf, command_size, total_size);
  tmp___0 = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_out_endpointAddr);
  usb_fill_bulk_urb(urb, ftdi->udev, tmp___0 | 3221225472U, (void *)buf, total_size,
                    & ftdi_elan_write_bulk_callback, (void *)ftdi);
  urb->transfer_flags = urb->transfer_flags | 4U;
  if (ed_commands != 0) {
    d = (char *)(& diag);
    m = total_size;
    c = (u8 *)buf;
    s = 41;
    diag[0] = 0;
    goto ldv_29868;
    ldv_29867: ;
    if (s > 0 || m == 0) {
      tmp___1 = c;
      c = c + 1;
      tmp___2 = sprintf(d, " %02X", (int )*tmp___1);
      d = d + (unsigned long )tmp___2;
    } else {
      tmp___3 = sprintf(d, " ..");
      d = d + (unsigned long )tmp___3;
    }
    ldv_29868:
    tmp___4 = s;
    s = s - 1;
    if (tmp___4 > 0) {
      tmp___5 = m;
      m = m - 1;
      if (tmp___5 > 0) {
        goto ldv_29867;
      } else {
        goto ldv_29869;
      }
    } else {
    }
    ldv_29869: ;
  } else {
  }
  retval = usb_submit_urb(urb, 208U);
  if (retval != 0) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "failed %d to submit urb %p to write %d commands totaling %d bytes to the Uxxx\n",
            retval, urb, command_size, total_size);
    usb_free_coherent(ftdi->udev, (size_t )total_size, (void *)buf, urb->transfer_dma);
    usb_free_urb(urb);
    return (retval);
  } else {
  }
  usb_free_urb(urb);
  ftdi->command_head = ftdi->command_head + command_size;
  ftdi_elan_kick_respond_queue(ftdi);
  return (0);
}
}
static void ftdi_elan_do_callback(struct usb_ftdi *ftdi , struct u132_target *target ,
                                  u8 *buffer , int length )
{
  struct urb *urb ;
  int halted ;
  int skipped ;
  int actual ;
  int non_null ;
  int toggle_bits ;
  int error_count ;
  int condition_code ;
  int repeat_number ;
  void (*callback)(void * , struct urb * , u8 * , int , int , int , int , int ,
                   int , int , int , int ) ;
  {
  urb = target->urb;
  halted = target->halted;
  skipped = target->skipped;
  actual = target->actual;
  non_null = target->non_null;
  toggle_bits = target->toggle_bits;
  error_count = target->error_count;
  condition_code = target->condition_code;
  repeat_number = target->repeat_number;
  callback = target->callback;
  target->active = target->active + -1;
  target->callback = (void (*)(void * , struct urb * , u8 * , int , int , int ,
                               int , int , int , int , int , int ))0;
  (*callback)(target->endp, urb, buffer, length, toggle_bits, error_count, condition_code,
              repeat_number, halted, skipped, actual, non_null);
  return;
}
}
static char *have_ed_set_response(struct usb_ftdi *ftdi , struct u132_target *target ,
                                  u16 ed_length , int ed_number , int ed_type , char *b )
{
  int payload ;
  {
  payload = (int )ed_length & 2047;
  ldv_mutex_lock_38(& ftdi->u132_lock);
  target->actual = 0;
  target->non_null = ((int )ed_length >> 15) & 1;
  target->repeat_number = ((int )ed_length >> 11) & 15;
  if (ed_type == 2) {
    if (payload == 0 || target->abandoning > 0) {
      target->abandoning = 0;
      ldv_mutex_unlock_39(& ftdi->u132_lock);
      ftdi_elan_do_callback(ftdi, target, (u8 *)(& ftdi->response) + 4UL, payload);
      ftdi->received = 0;
      ftdi->expected = 4;
      ftdi->ed_found = 0;
      return ((char *)(& ftdi->response));
    } else {
      ftdi->expected = payload + 4;
      ftdi->ed_found = 1;
      ldv_mutex_unlock_40(& ftdi->u132_lock);
      return (b);
    }
  } else
  if (ed_type == 3) {
    if (payload == 0 || target->abandoning > 0) {
      target->abandoning = 0;
      ldv_mutex_unlock_41(& ftdi->u132_lock);
      ftdi_elan_do_callback(ftdi, target, (u8 *)(& ftdi->response) + 4UL, payload);
      ftdi->received = 0;
      ftdi->expected = 4;
      ftdi->ed_found = 0;
      return ((char *)(& ftdi->response));
    } else {
      ftdi->expected = payload + 4;
      ftdi->ed_found = 1;
      ldv_mutex_unlock_42(& ftdi->u132_lock);
      return (b);
    }
  } else
  if (ed_type == 1) {
    target->abandoning = 0;
    ldv_mutex_unlock_43(& ftdi->u132_lock);
    ftdi_elan_do_callback(ftdi, target, (u8 *)(& ftdi->response) + 4UL, payload);
    ftdi->received = 0;
    ftdi->expected = 4;
    ftdi->ed_found = 0;
    return ((char *)(& ftdi->response));
  } else {
    target->abandoning = 0;
    ldv_mutex_unlock_44(& ftdi->u132_lock);
    ftdi_elan_do_callback(ftdi, target, (u8 *)(& ftdi->response) + 4UL, payload);
    ftdi->received = 0;
    ftdi->expected = 4;
    ftdi->ed_found = 0;
    return ((char *)(& ftdi->response));
  }
}
}
static char *have_ed_get_response(struct usb_ftdi *ftdi , struct u132_target *target ,
                                  u16 ed_length , int ed_number , int ed_type , char *b )
{
  {
  ldv_mutex_lock_45(& ftdi->u132_lock);
  target->condition_code = 5;
  target->actual = (int )ed_length & 511;
  target->non_null = ((int )ed_length >> 15) & 1;
  target->repeat_number = ((int )ed_length >> 11) & 15;
  ldv_mutex_unlock_46(& ftdi->u132_lock);
  if (target->active != 0) {
    ftdi_elan_do_callback(ftdi, target, (u8 *)0U, 0);
  } else {
  }
  target->abandoning = 0;
  ftdi->received = 0;
  ftdi->expected = 4;
  ftdi->ed_found = 0;
  return ((char *)(& ftdi->response));
}
}
static int ftdi_elan_respond_engine(struct usb_ftdi *ftdi )
{
  u8 *b ;
  int bytes_read ;
  int retry_on_empty ;
  int retry_on_timeout ;
  int empty_packets ;
  int packet_bytes ;
  int retval ;
  unsigned int tmp ;
  int tmp___0 ;
  char diag[94U] ;
  char *d ;
  int m ;
  u8 *c ;
  int s ;
  u8 *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned char s0 ;
  unsigned char s1 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u8 c___0 ;
  u8 *tmp___12 ;
  int ed_number ;
  u16 ed_length ;
  struct u132_target *target ;
  int payload ;
  char diag___0[94U] ;
  char *d___0 ;
  int m___0 ;
  u8 *c___1 ;
  int s___0 ;
  u8 *tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  u8 buscmd ;
  int respond_head ;
  int tmp___18 ;
  struct u132_respond *respond ;
  u32 data ;
  int ed_number___0 ;
  int ed_type ;
  u16 ed_length___0 ;
  struct u132_target *target___0 ;
  char *tmp___19 ;
  char *tmp___20 ;
  {
  b = (u8 *)(& ftdi->response) + (unsigned long )ftdi->received;
  bytes_read = 0;
  retry_on_empty = 1;
  retry_on_timeout = 3;
  empty_packets = 0;
  read:
  packet_bytes = 0;
  tmp = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_in_endpointAddr);
  tmp___0 = usb_bulk_msg(ftdi->udev, tmp | 3221225600U, (void *)ftdi->bulk_in_buffer,
                         (int )ftdi->bulk_in_size, & packet_bytes, 500);
  retval = tmp___0;
  d = (char *)(& diag);
  m = packet_bytes;
  c = ftdi->bulk_in_buffer;
  s = 31;
  diag[0] = 0;
  goto ldv_29932;
  ldv_29931: ;
  if (s > 0 || m == 0) {
    tmp___1 = c;
    c = c + 1;
    tmp___2 = sprintf(d, " %02X", (int )*tmp___1);
    d = d + (unsigned long )tmp___2;
  } else {
    tmp___3 = sprintf(d, " ..");
    d = d + (unsigned long )tmp___3;
  }
  ldv_29932:
  tmp___4 = s;
  s = s - 1;
  if (tmp___4 > 0) {
    tmp___5 = m;
    m = m - 1;
    if (tmp___5 > 0) {
      goto ldv_29931;
    } else {
      goto ldv_29933;
    }
  } else {
  }
  ldv_29933: ;
  if (packet_bytes > 2) {
    ftdi->bulk_in_left = (size_t )(packet_bytes + -2);
    ftdi->bulk_in_last = 1UL;
    goto have;
  } else
  if (retval == -110) {
    tmp___6 = retry_on_timeout;
    retry_on_timeout = retry_on_timeout - 1;
    if (tmp___6 > 0) {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "TIMED OUT with packet_bytes = %d with total %d bytes%s\n",
              packet_bytes, bytes_read, (char *)(& diag));
      goto more;
    } else
    if (bytes_read > 0) {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "ONLY %d bytes%s\n",
              bytes_read, (char *)(& diag));
      return (-12);
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "TIMED OUT with packet_bytes = %d with total %d bytes%s\n",
              packet_bytes, bytes_read, (char *)(& diag));
      return (-12);
    }
  } else
  if (retval == -84) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "error = %d with packet_bytes = %d with total %d bytes%s\n",
            retval, packet_bytes, bytes_read, (char *)(& diag));
    return (retval);
  } else
  if (retval != 0) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "error = %d with packet_bytes = %d with total %d bytes%s\n",
            retval, packet_bytes, bytes_read, (char *)(& diag));
    return (retval);
  } else
  if (packet_bytes == 2) {
    s0 = *(ftdi->bulk_in_buffer);
    s1 = *(ftdi->bulk_in_buffer + 1UL);
    empty_packets = empty_packets + 1;
    if ((unsigned int )s0 == 49U && (unsigned int )s1 == 96U) {
      tmp___7 = retry_on_empty;
      retry_on_empty = retry_on_empty - 1;
      if (tmp___7 > 0) {
        goto more;
      } else {
        return (0);
      }
    } else
    if ((unsigned int )s0 == 49U && (unsigned int )s1 == 0U) {
      tmp___8 = retry_on_empty;
      retry_on_empty = retry_on_empty - 1;
      if (tmp___8 > 0) {
        goto more;
      } else {
        return (0);
      }
    } else {
      tmp___9 = retry_on_empty;
      retry_on_empty = retry_on_empty - 1;
      if (tmp___9 > 0) {
        goto more;
      } else {
        return (0);
      }
    }
  } else
  if (packet_bytes == 1) {
    tmp___10 = retry_on_empty;
    retry_on_empty = retry_on_empty - 1;
    if (tmp___10 > 0) {
      goto more;
    } else {
      return (0);
    }
  } else {
    tmp___11 = retry_on_empty;
    retry_on_empty = retry_on_empty - 1;
    if (tmp___11 > 0) {
      goto more;
    } else {
      return (0);
    }
  }
  more: ;
  goto read;
  have: ;
  if (ftdi->bulk_in_left != 0UL) {
    ftdi->bulk_in_last = ftdi->bulk_in_last + 1UL;
    c___0 = *(ftdi->bulk_in_buffer + ftdi->bulk_in_last);
    bytes_read = bytes_read + 1;
    ftdi->bulk_in_left = ftdi->bulk_in_left - 1UL;
    if (ftdi->received == 0 && (unsigned int )c___0 == 255U) {
      goto have;
    } else {
      tmp___12 = b;
      b = b + 1;
      *tmp___12 = c___0;
    }
    ftdi->received = ftdi->received + 1;
    if (ftdi->received < ftdi->expected) {
      goto have;
    } else
    if (ftdi->ed_found != 0) {
      ed_number = ((int )ftdi->response[0] >> 5) & 3;
      ed_length = (u16 )((int )((short )((int )ftdi->response[2] << 8)) | (int )((short )ftdi->response[1]));
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed_number;
      payload = (int )ed_length & 2047;
      d___0 = (char *)(& diag___0);
      m___0 = payload;
      c___1 = (u8 *)(& ftdi->response) + 4UL;
      s___0 = 31;
      diag___0[0] = 0;
      goto ldv_29949;
      ldv_29948: ;
      if (s___0 > 0 || m___0 == 0) {
        tmp___13 = c___1;
        c___1 = c___1 + 1;
        tmp___14 = sprintf(d___0, " %02X", (int )*tmp___13);
        d___0 = d___0 + (unsigned long )tmp___14;
      } else {
        tmp___15 = sprintf(d___0, " ..");
        d___0 = d___0 + (unsigned long )tmp___15;
      }
      ldv_29949:
      tmp___16 = s___0;
      s___0 = s___0 - 1;
      if (tmp___16 > 0) {
        tmp___17 = m___0;
        m___0 = m___0 - 1;
        if (tmp___17 > 0) {
          goto ldv_29948;
        } else {
          goto ldv_29950;
        }
      } else {
      }
      ldv_29950:
      ftdi_elan_do_callback(ftdi, target, (u8 *)(& ftdi->response) + 4UL, payload);
      ftdi->received = 0;
      ftdi->expected = 4;
      ftdi->ed_found = 0;
      b = (u8 *)(& ftdi->response);
      goto have;
    } else
    if (ftdi->expected == 8) {
      tmp___18 = ftdi->respond_head;
      ftdi->respond_head = ftdi->respond_head + 1;
      respond_head = tmp___18;
      respond = (struct u132_respond *)(& ftdi->respond) + ((unsigned long )respond_head & 31UL);
      data = (u32 )ftdi->response[7];
      data = data << 8;
      data = (u32 )ftdi->response[6] | data;
      data = data << 8;
      data = (u32 )ftdi->response[5] | data;
      data = data << 8;
      data = (u32 )ftdi->response[4] | data;
      *(respond->value) = data;
      *(respond->result) = 0;
      complete(& respond->wait_completion);
      ftdi->received = 0;
      ftdi->expected = 4;
      ftdi->ed_found = 0;
      b = (u8 *)(& ftdi->response);
      buscmd = (unsigned int )ftdi->response[0] & 15U;
      if ((unsigned int )buscmd == 0U) {
      } else
      if ((unsigned int )buscmd == 2U) {
      } else
      if ((unsigned int )buscmd == 6U) {
      } else
      if ((unsigned int )buscmd == 10U) {
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "Uxxx unknown(%0X) value = %08X\n",
                (int )buscmd, data);
      }
      goto have;
    } else
    if ((int )((signed char )ftdi->response[0]) >= 0) {
      ftdi->expected = 8;
      goto have;
    } else {
      ed_number___0 = ((int )ftdi->response[0] >> 5) & 3;
      ed_type = (int )ftdi->response[0] & 3;
      ed_length___0 = (u16 )((int )((short )((int )ftdi->response[2] << 8)) | (int )((short )ftdi->response[1]));
      target___0 = (struct u132_target *)(& ftdi->target) + (unsigned long )ed_number___0;
      target___0->halted = ((int )ftdi->response[0] >> 3) & 1;
      target___0->skipped = ((int )ftdi->response[0] >> 2) & 1;
      target___0->toggle_bits = ((int )ftdi->response[3] >> 6) & 3;
      target___0->error_count = ((int )ftdi->response[3] >> 4) & 3;
      target___0->condition_code = (int )ftdi->response[3] & 15;
      if (((int )ftdi->response[0] & 16) == 0) {
        tmp___19 = have_ed_set_response(ftdi, target___0, (int )ed_length___0, ed_number___0,
                                        ed_type, (char *)b);
        b = (u8 *)tmp___19;
        goto have;
      } else {
        tmp___20 = have_ed_get_response(ftdi, target___0, (int )ed_length___0, ed_number___0,
                                        ed_type, (char *)b);
        b = (u8 *)tmp___20;
        goto have;
      }
    }
  } else {
    goto more;
  }
}
}
static ssize_t ftdi_elan_write(struct file *file , char const *user_buffer , size_t count ,
                               loff_t *ppos )
{
  int retval ;
  struct urb *urb ;
  char *buf ;
  struct usb_ftdi *ftdi ;
  void *tmp ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  {
  retval = 0;
  ftdi = (struct usb_ftdi *)file->private_data;
  if (ftdi->disconnected > 0) {
    return (-19L);
  } else {
  }
  if (count == 0UL) {
    goto exit;
  } else {
  }
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    retval = -12;
    goto error_1;
  } else {
  }
  tmp = usb_alloc_coherent(ftdi->udev, count, 208U, & urb->transfer_dma);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    retval = -12;
    goto error_2;
  } else {
  }
  tmp___0 = copy_from_user((void *)buf, (void const *)user_buffer, count);
  if (tmp___0 != 0UL) {
    retval = -14;
    goto error_3;
  } else {
  }
  tmp___1 = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_out_endpointAddr);
  usb_fill_bulk_urb(urb, ftdi->udev, tmp___1 | 3221225472U, (void *)buf, (int )count,
                    & ftdi_elan_write_bulk_callback, (void *)ftdi);
  urb->transfer_flags = urb->transfer_flags | 4U;
  retval = usb_submit_urb(urb, 208U);
  if (retval != 0) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "failed submitting write urb, error %d\n",
            retval);
    goto error_3;
  } else {
  }
  usb_free_urb(urb);
  exit: ;
  return ((ssize_t )count);
  error_3:
  usb_free_coherent(ftdi->udev, count, (void *)buf, urb->transfer_dma);
  error_2:
  usb_free_urb(urb);
  error_1: ;
  return ((ssize_t )retval);
}
}
static struct file_operations const ftdi_elan_fops =
     {& __this_module, & no_llseek, & ftdi_elan_read, & ftdi_elan_write, 0, 0, 0, 0,
    0, 0, 0, 0, & ftdi_elan_open, 0, & ftdi_elan_release, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0};
static struct usb_class_driver ftdi_elan_jtag_class = {(char *)"ftdi-%d-jtag", 0, & ftdi_elan_fops, 192};
static int ftdi_elan_write_reg(struct usb_ftdi *ftdi , u32 data )
{
  int command_size ;
  struct u132_command *command ;
  {
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_47(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = 1U;
      command->length = 4U;
      command->address = 0U;
      command->width = 0U;
      command->follows = 4;
      command->value = data;
      command->buffer = (void *)(& command->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_48(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_49(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
static int ftdi_elan_write_config(struct usb_ftdi *ftdi , int config_offset , u8 width ,
                                  u32 data )
{
  u8 addressofs ;
  int command_size ;
  struct u132_command *command ;
  {
  addressofs = (u8 )(config_offset / 4);
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_50(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = 11U;
      command->length = 4U;
      command->address = addressofs;
      command->width = (unsigned int )width & 15U;
      command->follows = 4;
      command->value = data;
      command->buffer = (void *)(& command->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_51(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_52(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
static int ftdi_elan_write_pcimem(struct usb_ftdi *ftdi , int mem_offset , u8 width ,
                                  u32 data )
{
  u8 addressofs ;
  int command_size ;
  struct u132_command *command ;
  {
  addressofs = (u8 )(mem_offset / 4);
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_53(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = 7U;
      command->length = 4U;
      command->address = addressofs;
      command->width = (unsigned int )width & 15U;
      command->follows = 4;
      command->value = data;
      command->buffer = (void *)(& command->value);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_54(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_55(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_write_pcimem(struct platform_device *pdev , int mem_offset , u8 width ,
                               u32 data )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_write_pcimem(ftdi, mem_offset, (int )width, data);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_write_pcimem[27U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'w', 'r',
        'i', 't', 'e', '_',
        'p', 'c', 'i', 'm',
        'e', 'm', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_write_pcimem ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_write_pcimem = {(unsigned long )(& usb_ftdi_elan_write_pcimem), (char const *)(& __kstrtab_usb_ftdi_elan_write_pcimem)};
static int ftdi_elan_read_reg(struct usb_ftdi *ftdi , u32 *data )
{
  int command_size ;
  int respond_size ;
  struct u132_command *command ;
  struct u132_respond *respond ;
  int result ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_56(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    respond_size = ftdi->respond_next - ftdi->respond_head;
    if (command_size <= 31 && respond_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      respond = (struct u132_respond *)(& ftdi->respond) + ((unsigned long )ftdi->respond_next & 31UL);
      result = -19;
      respond->result = & result;
      tmp = 0U;
      command->header = tmp;
      respond->header = tmp;
      command->length = 4U;
      tmp___0 = 0U;
      command->address = tmp___0;
      respond->address = tmp___0;
      command->width = 0U;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      respond->value = data;
      init_completion(& respond->wait_completion);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi->respond_next = ftdi->respond_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_57(& ftdi->u132_lock);
      wait_for_completion(& respond->wait_completion);
      return (result);
    } else {
      ldv_mutex_unlock_58(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
static int ftdi_elan_read_config(struct usb_ftdi *ftdi , int config_offset , u8 width ,
                                 u32 *data )
{
  u8 addressofs ;
  int command_size ;
  int respond_size ;
  struct u132_command *command ;
  struct u132_respond *respond ;
  int result ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  addressofs = (u8 )(config_offset / 4);
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_59(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    respond_size = ftdi->respond_next - ftdi->respond_head;
    if (command_size <= 31 && respond_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      respond = (struct u132_respond *)(& ftdi->respond) + ((unsigned long )ftdi->respond_next & 31UL);
      result = -19;
      respond->result = & result;
      tmp = 10U;
      command->header = tmp;
      respond->header = tmp;
      command->length = 4U;
      tmp___0 = addressofs;
      command->address = tmp___0;
      respond->address = tmp___0;
      command->width = (unsigned int )width & 15U;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      respond->value = data;
      init_completion(& respond->wait_completion);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi->respond_next = ftdi->respond_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_60(& ftdi->u132_lock);
      wait_for_completion(& respond->wait_completion);
      return (result);
    } else {
      ldv_mutex_unlock_61(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
static int ftdi_elan_read_pcimem(struct usb_ftdi *ftdi , int mem_offset , u8 width ,
                                 u32 *data )
{
  u8 addressofs ;
  int command_size ;
  int respond_size ;
  struct u132_command *command ;
  struct u132_respond *respond ;
  int result ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  addressofs = (u8 )(mem_offset / 4);
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else {
    ldv_mutex_lock_62(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    respond_size = ftdi->respond_next - ftdi->respond_head;
    if (command_size <= 31 && respond_size <= 31) {
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      respond = (struct u132_respond *)(& ftdi->respond) + ((unsigned long )ftdi->respond_next & 31UL);
      result = -19;
      respond->result = & result;
      tmp = 6U;
      command->header = tmp;
      respond->header = tmp;
      command->length = 4U;
      tmp___0 = addressofs;
      command->address = tmp___0;
      respond->address = tmp___0;
      command->width = (unsigned int )width & 15U;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      respond->value = data;
      init_completion(& respond->wait_completion);
      ftdi->command_next = ftdi->command_next + 1;
      ftdi->respond_next = ftdi->respond_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_63(& ftdi->u132_lock);
      wait_for_completion(& respond->wait_completion);
      return (result);
    } else {
      ldv_mutex_unlock_64(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_read_pcimem(struct platform_device *pdev , int mem_offset , u8 width ,
                              u32 *data )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    tmp = ftdi_elan_read_pcimem(ftdi, mem_offset, (int )width, data);
    return (tmp);
  }
}
}
static char const __kstrtab_usb_ftdi_elan_read_pcimem[26U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'r', 'e',
        'a', 'd', '_', 'p',
        'c', 'i', 'm', 'e',
        'm', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_read_pcimem ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_read_pcimem = {(unsigned long )(& usb_ftdi_elan_read_pcimem), (char const *)(& __kstrtab_usb_ftdi_elan_read_pcimem)};
static int ftdi_elan_edset_setup(struct usb_ftdi *ftdi , u8 ed_number , void *endp ,
                                 struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                                 void (*callback)(void * , struct urb * , u8 * , int ,
                                                  int , int , int , int , int ,
                                                  int , int , int ) )
{
  u8 ed ;
  int command_size ;
  struct u132_target *target ;
  struct u132_command *command ;
  __u16 tmp ;
  {
  ed = (unsigned int )ed_number + 255U;
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    ldv_mutex_lock_65(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )((int )ed << 5)) | -128);
      command->length = 32775U;
      command->address = (u8 )(((int )((signed char )((int )toggle_bits << 6)) | (int )((signed char )((int )ep_number << 2))) | (int )((signed char )address));
      tmp = usb_maxpacket(urb->dev, (int )urb->pipe, (urb->pipe & 128U) == 0U);
      command->width = (u8 )tmp;
      command->follows = 8;
      command->value = 0U;
      command->buffer = (void *)urb->setup_packet;
      target->callback = callback;
      target->endp = endp;
      target->urb = urb;
      target->active = 1;
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_66(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_67(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_edset_setup(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_setup(ftdi, (int )ed_number, endp, urb, (int )address, (int )ep_number,
                              (int )toggle_bits, callback);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_setup[26U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        's', 'e', 't', 'u',
        'p', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_setup ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_setup = {(unsigned long )(& usb_ftdi_elan_edset_setup), (char const *)(& __kstrtab_usb_ftdi_elan_edset_setup)};
static int ftdi_elan_edset_input(struct usb_ftdi *ftdi , u8 ed_number , void *endp ,
                                 struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                                 void (*callback)(void * , struct urb * , u8 * , int ,
                                                  int , int , int , int , int ,
                                                  int , int , int ) )
{
  u8 ed ;
  int command_size ;
  struct u132_target *target ;
  struct u132_command *command ;
  u32 remaining_length ;
  __u16 tmp ;
  {
  ed = (unsigned int )ed_number + 255U;
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    ldv_mutex_lock_68(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      remaining_length = urb->transfer_buffer_length - urb->actual_length;
      command->header = (u8 )((int )((signed char )((int )ed << 5)) | -126);
      if (remaining_length == 0U) {
        command->length = 0U;
      } else
      if (remaining_length > 1024U) {
        command->length = 33791U;
      } else {
        command->length = ((unsigned int )((u16 )remaining_length) - 1U) | 32768U;
      }
      command->address = (u8 )(((int )((signed char )((int )toggle_bits << 6)) | (int )((signed char )((int )ep_number << 2))) | (int )((signed char )address));
      tmp = usb_maxpacket(urb->dev, (int )urb->pipe, (urb->pipe & 128U) == 0U);
      command->width = (u8 )tmp;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      target->callback = callback;
      target->endp = endp;
      target->urb = urb;
      target->active = 1;
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_69(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_70(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_edset_input(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_input(ftdi, (int )ed_number, endp, urb, (int )address, (int )ep_number,
                              (int )toggle_bits, callback);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_input[26U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        'i', 'n', 'p', 'u',
        't', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_input ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_input = {(unsigned long )(& usb_ftdi_elan_edset_input), (char const *)(& __kstrtab_usb_ftdi_elan_edset_input)};
static int ftdi_elan_edset_empty(struct usb_ftdi *ftdi , u8 ed_number , void *endp ,
                                 struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                                 void (*callback)(void * , struct urb * , u8 * , int ,
                                                  int , int , int , int , int ,
                                                  int , int , int ) )
{
  u8 ed ;
  int command_size ;
  struct u132_target *target ;
  struct u132_command *command ;
  __u16 tmp ;
  {
  ed = (unsigned int )ed_number + 255U;
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    ldv_mutex_lock_71(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )((int )ed << 5)) | -127);
      command->length = 0U;
      command->address = (u8 )(((int )((signed char )((int )toggle_bits << 6)) | (int )((signed char )((int )ep_number << 2))) | (int )((signed char )address));
      tmp = usb_maxpacket(urb->dev, (int )urb->pipe, (urb->pipe & 128U) == 0U);
      command->width = (u8 )tmp;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      target->callback = callback;
      target->endp = endp;
      target->urb = urb;
      target->active = 1;
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_72(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_73(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_edset_empty(struct platform_device *pdev , u8 ed_number , void *endp ,
                              struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                              void (*callback)(void * , struct urb * , u8 * , int ,
                                               int , int , int , int , int ,
                                               int , int , int ) )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_empty(ftdi, (int )ed_number, endp, urb, (int )address, (int )ep_number,
                              (int )toggle_bits, callback);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_empty[26U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        'e', 'm', 'p', 't',
        'y', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_empty ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_empty = {(unsigned long )(& usb_ftdi_elan_edset_empty), (char const *)(& __kstrtab_usb_ftdi_elan_edset_empty)};
static int ftdi_elan_edset_output(struct usb_ftdi *ftdi , u8 ed_number , void *endp ,
                                  struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                                  void (*callback)(void * , struct urb * , u8 * ,
                                                   int , int , int , int , int ,
                                                   int , int , int , int ) )
{
  u8 ed ;
  int command_size ;
  u8 *b ;
  u16 urb_size ;
  int i ;
  char data[94U] ;
  char *d ;
  int m ;
  int l ;
  struct u132_target *target ;
  struct u132_command *command ;
  __u16 tmp ;
  u32 __min1 ;
  u32 __min2 ;
  int w ;
  u8 *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u16 tmp___4 ;
  {
  ed = (unsigned int )ed_number + 255U;
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    ldv_mutex_lock_74(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      i = 0;
      d = (char *)(& data);
      m = 31;
      l = 0;
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )((int )ed << 5)) | -127);
      command->address = (u8 )(((int )((signed char )((int )toggle_bits << 6)) | (int )((signed char )((int )ep_number << 2))) | (int )((signed char )address));
      tmp = usb_maxpacket(urb->dev, (int )urb->pipe, (urb->pipe & 128U) == 0U);
      command->width = (u8 )tmp;
      __min1 = 1024U;
      __min2 = urb->transfer_buffer_length - urb->actual_length;
      command->follows = (int )(__min1 < __min2 ? __min1 : __min2);
      command->value = 0U;
      command->buffer = urb->transfer_buffer + (unsigned long )urb->actual_length;
      command->length = (u16 )((int )((short )((unsigned int )((unsigned short )command->follows) + 65535U)) | -32768);
      b = (u8 *)command->buffer;
      urb_size = (u16 )command->follows;
      data[0] = 0;
      goto ldv_30314;
      ldv_30313: ;
      if (i > m) {
      } else {
        tmp___3 = i;
        i = i + 1;
        if (tmp___3 < m) {
          tmp___0 = b;
          b = b + 1;
          tmp___1 = sprintf(d, " %02X", (int )*tmp___0);
          w = tmp___1;
          d = d + (unsigned long )w;
          l = l + w;
        } else {
          tmp___2 = sprintf(d, " ..");
          d = d + (unsigned long )tmp___2;
        }
      }
      ldv_30314:
      tmp___4 = urb_size;
      urb_size = (u16 )((int )urb_size - 1);
      if ((unsigned int )tmp___4 != 0U) {
        goto ldv_30313;
      } else {
      }
      target->callback = callback;
      target->endp = endp;
      target->urb = urb;
      target->active = 1;
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_75(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_76(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_edset_output(struct platform_device *pdev , u8 ed_number , void *endp ,
                               struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                               void (*callback)(void * , struct urb * , u8 * , int ,
                                                int , int , int , int , int ,
                                                int , int , int ) )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_output(ftdi, (int )ed_number, endp, urb, (int )address, (int )ep_number,
                               (int )toggle_bits, callback);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_output[27U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        'o', 'u', 't', 'p',
        'u', 't', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_output ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_output = {(unsigned long )(& usb_ftdi_elan_edset_output), (char const *)(& __kstrtab_usb_ftdi_elan_edset_output)};
static int ftdi_elan_edset_single(struct usb_ftdi *ftdi , u8 ed_number , void *endp ,
                                  struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                                  void (*callback)(void * , struct urb * , u8 * ,
                                                   int , int , int , int , int ,
                                                   int , int , int , int ) )
{
  u8 ed ;
  int command_size ;
  u32 remaining_length ;
  struct u132_target *target ;
  struct u132_command *command ;
  __u16 tmp ;
  {
  ed = (unsigned int )ed_number + 255U;
  wait: ;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    ldv_mutex_lock_77(& ftdi->u132_lock);
    command_size = ftdi->command_next - ftdi->command_head;
    if (command_size <= 31) {
      remaining_length = urb->transfer_buffer_length - urb->actual_length;
      target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
      command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
      command->header = (u8 )((int )((signed char )((int )ed << 5)) | -125);
      if (remaining_length == 0U) {
        command->length = 0U;
      } else
      if (remaining_length > 1024U) {
        command->length = 33791U;
      } else {
        command->length = ((unsigned int )((u16 )remaining_length) - 1U) | 32768U;
      }
      command->address = (u8 )(((int )((signed char )((int )toggle_bits << 6)) | (int )((signed char )((int )ep_number << 2))) | (int )((signed char )address));
      tmp = usb_maxpacket(urb->dev, (int )urb->pipe, (urb->pipe & 128U) == 0U);
      command->width = (u8 )tmp;
      command->follows = 0;
      command->value = 0U;
      command->buffer = (void *)0;
      target->callback = callback;
      target->endp = endp;
      target->urb = urb;
      target->active = 1;
      ftdi->command_next = ftdi->command_next + 1;
      ftdi_elan_kick_command_queue(ftdi);
      ldv_mutex_unlock_78(& ftdi->u132_lock);
      return (0);
    } else {
      ldv_mutex_unlock_79(& ftdi->u132_lock);
      msleep(100U);
      goto wait;
    }
  }
}
}
int usb_ftdi_elan_edset_single(struct platform_device *pdev , u8 ed_number , void *endp ,
                               struct urb *urb , u8 address , u8 ep_number , u8 toggle_bits ,
                               void (*callback)(void * , struct urb * , u8 * , int ,
                                                int , int , int , int , int ,
                                                int , int , int ) )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_single(ftdi, (int )ed_number, endp, urb, (int )address, (int )ep_number,
                               (int )toggle_bits, callback);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_single[27U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        's', 'i', 'n', 'g',
        'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_single ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_single = {(unsigned long )(& usb_ftdi_elan_edset_single), (char const *)(& __kstrtab_usb_ftdi_elan_edset_single)};
static int ftdi_elan_edset_flush(struct usb_ftdi *ftdi , u8 ed_number , void *endp )
{
  u8 ed ;
  struct u132_target *target ;
  int command_size ;
  struct u132_command *command ;
  {
  ed = (unsigned int )ed_number + 255U;
  if (ftdi->disconnected > 0) {
    return (-19);
  } else
  if ((unsigned int )*((unsigned char *)ftdi + 5072UL) == 0U) {
    return (-19);
  } else {
    target = (struct u132_target *)(& ftdi->target) + (unsigned long )ed;
    ldv_mutex_lock_80(& ftdi->u132_lock);
    if (target->abandoning > 0) {
      ldv_mutex_unlock_81(& ftdi->u132_lock);
      return (0);
    } else {
      target->abandoning = 1;
      wait_1: ;
      if (target->active == 1) {
        command_size = ftdi->command_next - ftdi->command_head;
        if (command_size <= 31) {
          command = (struct u132_command *)(& ftdi->command) + ((unsigned long )ftdi->command_next & 31UL);
          command->header = (u8 )((int )((signed char )((int )ed << 5)) | -124);
          command->length = 0U;
          command->address = 0U;
          command->width = 0U;
          command->follows = 0;
          command->value = 0U;
          command->buffer = (void *)(& command->value);
          ftdi->command_next = ftdi->command_next + 1;
          ftdi_elan_kick_command_queue(ftdi);
        } else {
          ldv_mutex_unlock_82(& ftdi->u132_lock);
          msleep(100U);
          ldv_mutex_lock_83(& ftdi->u132_lock);
          goto wait_1;
        }
      } else {
      }
      ldv_mutex_unlock_84(& ftdi->u132_lock);
      return (0);
    }
  }
}
}
int usb_ftdi_elan_edset_flush(struct platform_device *pdev , u8 ed_number , void *endp )
{
  struct usb_ftdi *ftdi ;
  struct platform_device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct platform_device const *)pdev;
  ftdi = (struct usb_ftdi *)__mptr + 0xffffffffffffe8e0UL;
  tmp = ftdi_elan_edset_flush(ftdi, (int )ed_number, endp);
  return (tmp);
}
}
static char const __kstrtab_usb_ftdi_elan_edset_flush[26U] =
  { 'u', 's', 'b', '_',
        'f', 't', 'd', 'i',
        '_', 'e', 'l', 'a',
        'n', '_', 'e', 'd',
        's', 'e', 't', '_',
        'f', 'l', 'u', 's',
        'h', '\000'};
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_flush ;
struct kernel_symbol const __ksymtab_usb_ftdi_elan_edset_flush = {(unsigned long )(& usb_ftdi_elan_edset_flush), (char const *)(& __kstrtab_usb_ftdi_elan_edset_flush)};
static int ftdi_elan_flush_input_fifo(struct usb_ftdi *ftdi )
{
  int retry_on_empty ;
  int retry_on_timeout ;
  int retry_on_status ;
  int packet_bytes ;
  int retval ;
  unsigned int tmp ;
  int tmp___0 ;
  char diag[94U] ;
  char *d ;
  int m ;
  char *b ;
  int bytes_read ;
  char c ;
  char *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  char s1 ;
  char s2 ;
  int tmp___5 ;
  char b1 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  retry_on_empty = 10;
  retry_on_timeout = 5;
  retry_on_status = 20;
  more:
  packet_bytes = 0;
  tmp = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_in_endpointAddr);
  tmp___0 = usb_bulk_msg(ftdi->udev, tmp | 3221225600U, (void *)ftdi->bulk_in_buffer,
                         (int )ftdi->bulk_in_size, & packet_bytes, 100);
  retval = tmp___0;
  if (packet_bytes > 2) {
    d = (char *)(& diag);
    m = 31;
    b = (char *)ftdi->bulk_in_buffer;
    bytes_read = 0;
    diag[0] = 0;
    goto ldv_30464;
    ldv_30465:
    tmp___1 = b;
    b = b + 1;
    c = *tmp___1;
    if (bytes_read < m) {
      tmp___2 = sprintf(d, " %02X", (int )c & 255);
      d = d + (unsigned long )tmp___2;
    } else
    if (bytes_read > m) {
    } else {
      tmp___3 = sprintf(d, " ..");
      d = d + (unsigned long )tmp___3;
    }
    bytes_read = bytes_read + 1;
    goto ldv_30464;
    ldv_30464:
    tmp___4 = packet_bytes;
    packet_bytes = packet_bytes - 1;
    if (tmp___4 > 0) {
      goto ldv_30465;
    } else {
    }
    goto more;
  } else
  if (packet_bytes > 1) {
    s1 = (char )*(ftdi->bulk_in_buffer);
    s2 = (char )*(ftdi->bulk_in_buffer + 1UL);
    if ((int )((signed char )s1) == 49 && (int )((signed char )s2) == 96) {
      return (0);
    } else {
      tmp___5 = retry_on_status;
      retry_on_status = retry_on_status - 1;
      if (tmp___5 > 0) {
        goto more;
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "STATUS OLD_ERROR retry limit reached\n");
        return (-14);
      }
    }
  } else
  if (packet_bytes > 0) {
    b1 = (char )*(ftdi->bulk_in_buffer);
    dev_err((struct device const *)(& (ftdi->udev)->dev), "only one byte flushed from FTDI = %02X\n",
            (int )b1);
    tmp___6 = retry_on_status;
    retry_on_status = retry_on_status - 1;
    if (tmp___6 > 0) {
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "STATUS OLD_ERROR retry limit reached\n");
      return (-14);
    }
  } else
  if (retval == -110) {
    tmp___7 = retry_on_timeout;
    retry_on_timeout = retry_on_timeout - 1;
    if (tmp___7 > 0) {
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "TIMED OUT retry limit reached\n");
      return (-12);
    }
  } else
  if (retval == 0) {
    tmp___8 = retry_on_empty;
    retry_on_empty = retry_on_empty - 1;
    if (tmp___8 > 0) {
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "empty packet retry limit reached\n");
      return (-12);
    }
  } else {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "error = %d\n", retval);
    return (retval);
  }
  return (-1);
}
}
static int ftdi_elan_synchronize_flush(struct usb_ftdi *ftdi )
{
  int retval ;
  struct urb *urb ;
  char *buf ;
  int I ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  I = 257;
  i = 0;
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not alloc a urb for flush sequence\n");
    return (-12);
  } else {
  }
  tmp = usb_alloc_coherent(ftdi->udev, (size_t )I, 208U, & urb->transfer_dma);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not get a buffer for flush sequence\n");
    usb_free_urb(urb);
    return (-12);
  } else {
  }
  goto ldv_30479;
  ldv_30478:
  tmp___0 = i;
  i = i + 1;
  *(buf + (unsigned long )tmp___0) = 85;
  ldv_30479:
  tmp___1 = I;
  I = I - 1;
  if (tmp___1 > 0) {
    goto ldv_30478;
  } else {
  }
  tmp___2 = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_out_endpointAddr);
  usb_fill_bulk_urb(urb, ftdi->udev, tmp___2 | 3221225472U, (void *)buf, i, & ftdi_elan_write_bulk_callback,
                    (void *)ftdi);
  urb->transfer_flags = urb->transfer_flags | 4U;
  retval = usb_submit_urb(urb, 208U);
  if (retval != 0) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "failed to submit urb containing the flush sequence\n");
    usb_free_coherent(ftdi->udev, (size_t )i, (void *)buf, urb->transfer_dma);
    usb_free_urb(urb);
    return (-12);
  } else {
  }
  usb_free_urb(urb);
  return (0);
}
}
static int ftdi_elan_synchronize_reset(struct usb_ftdi *ftdi )
{
  int retval ;
  struct urb *urb ;
  char *buf ;
  int I ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  {
  I = 4;
  i = 0;
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not get a urb for the reset sequence\n");
    return (-12);
  } else {
  }
  tmp = usb_alloc_coherent(ftdi->udev, (size_t )I, 208U, & urb->transfer_dma);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "could not get a buffer for the reset sequence\n");
    usb_free_urb(urb);
    return (-12);
  } else {
  }
  tmp___0 = i;
  i = i + 1;
  *(buf + (unsigned long )tmp___0) = 85;
  tmp___1 = i;
  i = i + 1;
  *(buf + (unsigned long )tmp___1) = -86;
  tmp___2 = i;
  i = i + 1;
  *(buf + (unsigned long )tmp___2) = 90;
  tmp___3 = i;
  i = i + 1;
  *(buf + (unsigned long )tmp___3) = -91;
  tmp___4 = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_out_endpointAddr);
  usb_fill_bulk_urb(urb, ftdi->udev, tmp___4 | 3221225472U, (void *)buf, i, & ftdi_elan_write_bulk_callback,
                    (void *)ftdi);
  urb->transfer_flags = urb->transfer_flags | 4U;
  retval = usb_submit_urb(urb, 208U);
  if (retval != 0) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "failed to submit urb containing the reset sequence\n");
    usb_free_coherent(ftdi->udev, (size_t )i, (void *)buf, urb->transfer_dma);
    usb_free_urb(urb);
    return (-12);
  } else {
  }
  usb_free_urb(urb);
  return (0);
}
}
static int ftdi_elan_synchronize(struct usb_ftdi *ftdi )
{
  int retval ;
  int long_stop ;
  int retry_on_timeout ;
  int retry_on_empty ;
  int err_count ;
  int read_stop ;
  int read_stuck ;
  int packet_bytes ;
  unsigned int tmp ;
  char diag[94U] ;
  char *d ;
  int m ;
  char *b ;
  int bytes_read ;
  unsigned char c ;
  char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned char s1 ;
  unsigned char s2 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  long_stop = 10;
  retry_on_timeout = 5;
  retry_on_empty = 10;
  err_count = 0;
  retval = ftdi_elan_flush_input_fifo(ftdi);
  if (retval != 0) {
    return (retval);
  } else {
  }
  ftdi->bulk_in_left = 0UL;
  ftdi->bulk_in_last = 0xffffffffffffffffUL;
  goto ldv_30511;
  ldv_30514:
  retval = ftdi_elan_synchronize_flush(ftdi);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_flush_input_fifo(ftdi);
  if (retval != 0) {
    return (retval);
  } else {
  }
  reset:
  retval = ftdi_elan_synchronize_reset(ftdi);
  if (retval != 0) {
    return (retval);
  } else {
  }
  read_stop = 100;
  read_stuck = 10;
  read:
  packet_bytes = 0;
  tmp = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_in_endpointAddr);
  retval = usb_bulk_msg(ftdi->udev, tmp | 3221225600U, (void *)ftdi->bulk_in_buffer,
                        (int )ftdi->bulk_in_size, & packet_bytes, 500);
  if (packet_bytes > 2) {
    d = (char *)(& diag);
    m = 31;
    b = (char *)ftdi->bulk_in_buffer;
    bytes_read = 0;
    c = 0U;
    diag[0] = 0;
    goto ldv_30508;
    ldv_30509:
    tmp___0 = b;
    b = b + 1;
    c = (unsigned char )*tmp___0;
    if (bytes_read < m) {
      tmp___1 = sprintf(d, " %02X", (int )c);
      d = d + (unsigned long )tmp___1;
    } else
    if (bytes_read > m) {
    } else {
      tmp___2 = sprintf(d, " ..");
      d = d + (unsigned long )tmp___2;
    }
    bytes_read = bytes_read + 1;
    goto ldv_30508;
    ldv_30508:
    tmp___3 = packet_bytes;
    packet_bytes = packet_bytes - 1;
    if (tmp___3 > 0) {
      goto ldv_30509;
    } else {
    }
    if ((unsigned int )c == 126U) {
      return (0);
    } else
    if ((unsigned int )c == 85U) {
      goto read;
    } else {
      tmp___4 = read_stop;
      read_stop = read_stop - 1;
      if (tmp___4 > 0) {
        goto read;
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "retry limit reached\n");
        goto ldv_30511;
      }
    }
  } else
  if (packet_bytes > 1) {
    s1 = *(ftdi->bulk_in_buffer);
    s2 = *(ftdi->bulk_in_buffer + 1UL);
    if ((unsigned int )s1 == 49U && (unsigned int )s2 == 0U) {
      tmp___5 = read_stuck;
      read_stuck = read_stuck - 1;
      if (tmp___5 > 0) {
        goto read;
      } else {
        goto reset;
      }
    } else
    if ((unsigned int )s1 == 49U && (unsigned int )s2 == 96U) {
      tmp___6 = read_stop;
      read_stop = read_stop - 1;
      if (tmp___6 > 0) {
        goto read;
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "retry limit reached\n");
        goto ldv_30511;
      }
    } else {
      tmp___7 = read_stop;
      read_stop = read_stop - 1;
      if (tmp___7 > 0) {
        goto read;
      } else {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "retry limit reached\n");
        goto ldv_30511;
      }
    }
  } else
  if (packet_bytes > 0) {
    tmp___8 = read_stop;
    read_stop = read_stop - 1;
    if (tmp___8 > 0) {
      goto read;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "retry limit reached\n");
      goto ldv_30511;
    }
  } else
  if (retval == -110) {
    tmp___9 = retry_on_timeout;
    retry_on_timeout = retry_on_timeout - 1;
    if (tmp___9 > 0) {
      goto read;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "TIMED OUT retry limit reached\n");
      goto ldv_30511;
    }
  } else
  if (retval == 0) {
    tmp___10 = retry_on_empty;
    retry_on_empty = retry_on_empty - 1;
    if (tmp___10 > 0) {
      goto read;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "empty packet retry limit reached\n");
      goto ldv_30511;
    }
  } else {
    err_count = err_count + 1;
    dev_err((struct device const *)(& (ftdi->udev)->dev), "error = %d\n", retval);
    tmp___11 = read_stop;
    read_stop = read_stop - 1;
    if (tmp___11 > 0) {
      goto read;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "retry limit reached\n");
      goto ldv_30511;
    }
  }
  ldv_30511:
  tmp___12 = long_stop;
  long_stop = long_stop - 1;
  if (tmp___12 > 0) {
    goto ldv_30514;
  } else {
  }
  dev_err((struct device const *)(& (ftdi->udev)->dev), "failed to synchronize\n");
  return (-14);
}
}
static int ftdi_elan_stuck_waiting(struct usb_ftdi *ftdi )
{
  int retry_on_empty ;
  int retry_on_timeout ;
  int retry_on_status ;
  int packet_bytes ;
  int retval ;
  unsigned int tmp ;
  int tmp___0 ;
  char diag[94U] ;
  char *d ;
  int m ;
  char *b ;
  int bytes_read ;
  char c ;
  char *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  char s1 ;
  char s2 ;
  int tmp___5 ;
  char b1 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  retry_on_empty = 10;
  retry_on_timeout = 5;
  retry_on_status = 50;
  more:
  packet_bytes = 0;
  tmp = __create_pipe(ftdi->udev, (unsigned int )ftdi->bulk_in_endpointAddr);
  tmp___0 = usb_bulk_msg(ftdi->udev, tmp | 3221225600U, (void *)ftdi->bulk_in_buffer,
                         (int )ftdi->bulk_in_size, & packet_bytes, 1000);
  retval = tmp___0;
  if (packet_bytes > 2) {
    d = (char *)(& diag);
    m = 31;
    b = (char *)ftdi->bulk_in_buffer;
    bytes_read = 0;
    diag[0] = 0;
    goto ldv_30531;
    ldv_30532:
    tmp___1 = b;
    b = b + 1;
    c = *tmp___1;
    if (bytes_read < m) {
      tmp___2 = sprintf(d, " %02X", (int )c & 255);
      d = d + (unsigned long )tmp___2;
    } else
    if (bytes_read > m) {
    } else {
      tmp___3 = sprintf(d, " ..");
      d = d + (unsigned long )tmp___3;
    }
    bytes_read = bytes_read + 1;
    goto ldv_30531;
    ldv_30531:
    tmp___4 = packet_bytes;
    packet_bytes = packet_bytes - 1;
    if (tmp___4 > 0) {
      goto ldv_30532;
    } else {
    }
    goto more;
  } else
  if (packet_bytes > 1) {
    s1 = (char )*(ftdi->bulk_in_buffer);
    s2 = (char )*(ftdi->bulk_in_buffer + 1UL);
    if ((int )((signed char )s1) == 49 && (int )((signed char )s2) == 96) {
      return (0);
    } else {
      tmp___5 = retry_on_status;
      retry_on_status = retry_on_status - 1;
      if (tmp___5 > 0) {
        msleep(5U);
        goto more;
      } else {
        return (-14);
      }
    }
  } else
  if (packet_bytes > 0) {
    b1 = (char )*(ftdi->bulk_in_buffer);
    dev_err((struct device const *)(& (ftdi->udev)->dev), "only one byte flushed from FTDI = %02X\n",
            (int )b1);
    tmp___6 = retry_on_status;
    retry_on_status = retry_on_status - 1;
    if (tmp___6 > 0) {
      msleep(5U);
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "STATUS OLD_ERROR retry limit reached\n");
      return (-14);
    }
  } else
  if (retval == -110) {
    tmp___7 = retry_on_timeout;
    retry_on_timeout = retry_on_timeout - 1;
    if (tmp___7 > 0) {
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "TIMED OUT retry limit reached\n");
      return (-12);
    }
  } else
  if (retval == 0) {
    tmp___8 = retry_on_empty;
    retry_on_empty = retry_on_empty - 1;
    if (tmp___8 > 0) {
      goto more;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "empty packet retry limit reached\n");
      return (-12);
    }
  } else {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "error = %d\n", retval);
    return (-12);
  }
  return (-1);
}
}
static int ftdi_elan_checkingPCI(struct usb_ftdi *ftdi )
{
  int UxxxStatus ;
  int tmp ;
  u8 fn ;
  int activePCIfn ;
  u32 pcidata ;
  u32 pciVID ;
  u32 pciPID ;
  int reg ;
  {
  tmp = ftdi_elan_read_reg(ftdi, & ftdi->controlreg);
  UxxxStatus = tmp;
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  if ((ftdi->controlreg & 4194304U) != 0U) {
    if ((unsigned int )*((unsigned char *)ftdi + 5072UL) != 0U) {
    } else {
      ftdi->card_ejected = 1U;
      dev_err((struct device const *)(& (ftdi->udev)->dev), "CARD EJECTED - controlreg = %08X\n",
              ftdi->controlreg);
    }
    return (-19);
  } else {
    fn = (unsigned int )((u8 )ftdi->function) + 255U;
    activePCIfn = (int )fn << 8;
    reg = 0;
    UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
    if (UxxxStatus != 0) {
      return (UxxxStatus);
    } else {
    }
    pciVID = pcidata & 65535U;
    pciPID = pcidata >> 16;
    if ((u32 )ftdi->platform_data.vendor == pciVID && (u32 )ftdi->platform_data.device == pciPID) {
      return (0);
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "vendor=%04X pciVID=%04X device=%04X pciPID=%04X\n",
              (int )ftdi->platform_data.vendor, pciVID, (int )ftdi->platform_data.device,
              pciPID);
      return (-19);
    }
  }
}
}
static int ftdi_elan_check_controller(struct usb_ftdi *ftdi , int quirk )
{
  int devices ;
  int retval ;
  u32 hc_control ;
  int num_ports ;
  u32 control ;
  u32 rh_a ;
  u32 status ;
  u32 fminterval ;
  u32 hc_fminterval ;
  u32 periodicstart ;
  u32 cmdstatus ;
  u32 roothub_a___0 ;
  int mask ;
  int sleep_time ;
  int reset_timeout ;
  int temp ;
  unsigned long __ms ;
  unsigned long tmp ;
  u32 portstatus ;
  {
  devices = 0;
  rh_a = 4294967295U;
  mask = -2147483622;
  sleep_time = 0;
  reset_timeout = 30;
  retval = ftdi_elan_write_pcimem(ftdi, 20, 0, 2147483648U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 72, 0, & rh_a);
  if (retval != 0) {
    return (retval);
  } else {
  }
  num_ports = (int )rh_a & 255;
  retval = ftdi_elan_read_pcimem(ftdi, 52, 0, & hc_fminterval);
  if (retval != 0) {
    return (retval);
  } else {
  }
  hc_fminterval = hc_fminterval & 16383U;
  hc_fminterval = (((hc_fminterval * 6U + 4294966036U) / 7U & 32767U) << 16) | hc_fminterval;
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & hc_control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  switch (hc_control & 192U) {
  case 128U:
  sleep_time = 0;
  goto ldv_30568;
  case 192U: ;
  case 64U:
  hc_control = hc_control & 512U;
  hc_control = hc_control | 64U;
  sleep_time = 10;
  goto ldv_30568;
  default:
  hc_control = hc_control & 512U;
  hc_control = hc_control;
  sleep_time = 50;
  goto ldv_30568;
  }
  ldv_30568:
  retval = ftdi_elan_write_pcimem(ftdi, 4, 0, hc_control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  msleep((unsigned int )sleep_time);
  retval = ftdi_elan_read_pcimem(ftdi, 72, 0, & roothub_a___0);
  if (retval != 0) {
    return (retval);
  } else {
  }
  if ((roothub_a___0 & 512U) == 0U) {
    temp = 0;
    goto ldv_30573;
    ldv_30572:
    retval = ftdi_elan_write_pcimem(ftdi, (int )((unsigned int )((unsigned long )temp + 21UL) * 4U),
                                    0, 512U);
    if (retval != 0) {
      return (retval);
    } else {
    }
    temp = temp + 1;
    ldv_30573: ;
    if (temp < num_ports) {
      goto ldv_30572;
    } else {
    }
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retry:
  retval = ftdi_elan_read_pcimem(ftdi, 8, 0, & status);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 8, 0, 1U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  extra:
  retval = ftdi_elan_read_pcimem(ftdi, 8, 0, & status);
  if (retval != 0) {
    return (retval);
  } else {
  }
  if ((int )status & 1) {
    reset_timeout = reset_timeout - 1;
    if (reset_timeout == 0) {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "USB HC reset timed out!\n");
      return (-19);
    } else {
      msleep(5U);
      goto extra;
    }
  } else {
  }
  if ((quirk & 4) != 0) {
    retval = ftdi_elan_write_pcimem(ftdi, 4, 0, hc_control);
    if (retval != 0) {
      return (retval);
    } else {
    }
    retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
    if (retval != 0) {
      return (retval);
    } else {
    }
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 32, 0, 0U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 40, 0, 285212672U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 24, 0, 0U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 52, 0, & fminterval);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 52, 0, (~ fminterval & 2147483648U) | hc_fminterval);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 64, 0, (hc_fminterval * 9U) / 10U & 16383U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 52, 0, & fminterval);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 64, 0, & periodicstart);
  if (retval != 0) {
    return (retval);
  } else {
  }
  if ((fminterval & 1073676288U) == 0U || periodicstart == 0U) {
    if ((quirk & 4) == 0) {
      quirk = quirk | 4;
      goto retry;
    } else {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "init err(%08x %04x)\n",
              fminterval, periodicstart);
    }
  } else {
  }
  hc_control = hc_control & 512U;
  hc_control = hc_control | 163U;
  retval = ftdi_elan_write_pcimem(ftdi, 4, 0, hc_control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 8, 0, 4U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 8, 0, & cmdstatus);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 80, 0, 32768U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 12, 0, (u32 )mask);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 20, 0, 3221225599U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 72, 0, & roothub_a___0);
  if (retval != 0) {
    return (retval);
  } else {
  }
  roothub_a___0 = roothub_a___0 & 4294964991U;
  if ((quirk & 2) != 0) {
    roothub_a___0 = roothub_a___0 | 4096U;
    roothub_a___0 = roothub_a___0 & 16776703U;
    retval = ftdi_elan_write_pcimem(ftdi, 72, 0, roothub_a___0);
    if (retval != 0) {
      return (retval);
    } else {
    }
  } else
  if (quirk & 1 || (int )distrust_firmware) {
    roothub_a___0 = roothub_a___0 | 512U;
    retval = ftdi_elan_write_pcimem(ftdi, 72, 0, roothub_a___0);
    if (retval != 0) {
      return (retval);
    } else {
    }
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 80, 0, 65536U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_write_pcimem(ftdi, 76, 0, (roothub_a___0 & 512U) != 0U ? 0U : 4294901760U);
  if (retval != 0) {
    return (retval);
  } else {
  }
  retval = ftdi_elan_read_pcimem(ftdi, 4, 0, & control);
  if (retval != 0) {
    return (retval);
  } else {
  }
  __ms = (unsigned long )(roothub_a___0 >> 23) & 510UL;
  goto ldv_30579;
  ldv_30578:
  __const_udelay(4295000UL);
  ldv_30579:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_30578;
  } else {
  }
  temp = 0;
  goto ldv_30583;
  ldv_30582:
  retval = ftdi_elan_read_pcimem(ftdi, (int )((unsigned int )((unsigned long )temp + 21UL) * 4U),
                                 0, & portstatus);
  if (retval != 0) {
    return (retval);
  } else {
  }
  if ((int )portstatus & 1) {
    devices = devices + 1;
  } else {
  }
  temp = temp + 1;
  ldv_30583: ;
  if (temp < num_ports) {
    goto ldv_30582;
  } else {
  }
  return (devices);
}
}
static int ftdi_elan_setup_controller(struct usb_ftdi *ftdi , int fn )
{
  u32 latence_timer ;
  int UxxxStatus ;
  u32 pcidata ;
  int reg ;
  int activePCIfn ;
  {
  reg = 0;
  activePCIfn = fn << 8;
  UxxxStatus = ftdi_elan_write_reg(ftdi, 10847U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 16;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 4294967295U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 4026531840U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 12;
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & latence_timer);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  latence_timer = latence_timer & 4294902015U;
  latence_timer = latence_timer | 5632U;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, latence_timer);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 4;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 6U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 0;
  goto ldv_30595;
  ldv_30594:
  UxxxStatus = ftdi_elan_read_pcimem(ftdi, reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = reg + 4;
  ldv_30595: ;
  if (reg <= 84) {
    goto ldv_30594;
  } else {
  }
  return (0);
}
}
static int ftdi_elan_close_controller(struct usb_ftdi *ftdi , int fn )
{
  u32 latence_timer ;
  int UxxxStatus ;
  u32 pcidata ;
  int reg ;
  int activePCIfn ;
  {
  reg = 0;
  activePCIfn = fn << 8;
  UxxxStatus = ftdi_elan_write_reg(ftdi, 10847U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 16;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 4294967295U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 0U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 12;
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & latence_timer);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  latence_timer = latence_timer & 4294902015U;
  latence_timer = latence_timer | 5632U;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, latence_timer);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  reg = 4;
  UxxxStatus = ftdi_elan_write_config(ftdi, activePCIfn | reg, 0, 0U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  return (0);
}
}
static int ftdi_elan_found_controller(struct usb_ftdi *ftdi , int fn , int quirk )
{
  int result ;
  int UxxxStatus ;
  {
  UxxxStatus = ftdi_elan_setup_controller(ftdi, fn);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  result = ftdi_elan_check_controller(ftdi, quirk);
  UxxxStatus = ftdi_elan_close_controller(ftdi, fn);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  return (result);
}
}
static int ftdi_elan_enumeratePCI(struct usb_ftdi *ftdi )
{
  u32 controlreg ;
  u8 sensebits ;
  int UxxxStatus ;
  {
  UxxxStatus = ftdi_elan_read_reg(ftdi, & controlreg);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_reg(ftdi, 0U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  msleep(750U);
  UxxxStatus = ftdi_elan_write_reg(ftdi, 768U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_reg(ftdi, 1792U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_reg(ftdi, & controlreg);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_reg(ftdi, 524U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_reg(ftdi, 525U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  msleep(250U);
  UxxxStatus = ftdi_elan_write_reg(ftdi, 527U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_reg(ftdi, & controlreg);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_write_reg(ftdi, 2655U);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_reg(ftdi, & controlreg);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  UxxxStatus = ftdi_elan_read_reg(ftdi, & controlreg);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  msleep(1000U);
  sensebits = (unsigned int )((u8 )(controlreg >> 16)) & 15U;
  if ((unsigned int )sensebits == 13U) {
    return (0);
  } else {
    return (-6);
  }
}
}
static int ftdi_elan_setupOHCI(struct usb_ftdi *ftdi )
{
  int UxxxStatus ;
  u32 pcidata ;
  int reg ;
  u8 fn ;
  int activePCIfn ;
  int max_devices ;
  int controllers ;
  int unrecognized ;
  u32 pciVID ;
  u32 pciPID ;
  int devices ;
  {
  reg = 0;
  activePCIfn = 0;
  max_devices = 0;
  controllers = 0;
  unrecognized = 0;
  ftdi->function = 0;
  fn = 0U;
  goto ldv_30634;
  ldv_30633:
  pciVID = 0U;
  pciPID = 0U;
  devices = 0;
  activePCIfn = (int )fn << 8;
  UxxxStatus = ftdi_elan_read_config(ftdi, activePCIfn | reg, 0, & pcidata);
  if (UxxxStatus != 0) {
    return (UxxxStatus);
  } else {
  }
  pciVID = pcidata & 65535U;
  pciPID = pcidata >> 16;
  if (pciVID == 4165U && pciPID == 51297U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 0);
    controllers = controllers + 1;
  } else
  if (pciVID == 4147U && pciPID == 53U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 0);
    controllers = controllers + 1;
  } else
  if (pciVID == 4281U && pciPID == 21047U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 0);
    controllers = controllers + 1;
  } else
  if (pciVID == 4545U && pciPID == 22530U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 0);
    controllers = controllers + 1;
  } else
  if (pciVID == 4130U && pciPID == 29708U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 1);
    controllers = controllers + 1;
  } else
  if (pciVID == 3601U && pciPID == 41208U) {
    devices = ftdi_elan_found_controller(ftdi, (int )fn, 32);
    controllers = controllers + 1;
  } else
  if (pcidata == 0U) {
  } else {
    unrecognized = unrecognized + 1;
  }
  if (devices > max_devices) {
    max_devices = devices;
    ftdi->function = (int )fn + 1;
    ftdi->platform_data.vendor = (u16 )pciVID;
    ftdi->platform_data.device = (u16 )pciPID;
  } else {
  }
  fn = (u8 )((int )fn + 1);
  ldv_30634: ;
  if ((unsigned int )fn <= 3U) {
    goto ldv_30633;
  } else {
  }
  if (ftdi->function > 0) {
    UxxxStatus = ftdi_elan_setup_controller(ftdi, ftdi->function + -1);
    if (UxxxStatus != 0) {
      return (UxxxStatus);
    } else {
    }
    return (0);
  } else
  if (controllers > 0) {
    return (-6);
  } else
  if (unrecognized > 0) {
    return (-6);
  } else {
    ftdi->enumerated = 0U;
    return (-6);
  }
}
}
static int ftdi_elan_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  size_t buffer_size ;
  int i ;
  int retval ;
  struct usb_ftdi *ftdi ;
  void *tmp ;
  struct usb_device *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___5 ;
  unsigned long tmp___5 ;
  {
  retval = -12;
  tmp = kzalloc(8480UL, 208U);
  ftdi = (struct usb_ftdi *)tmp;
  if ((unsigned long )ftdi == (unsigned long )((struct usb_ftdi *)0)) {
    return (-12);
  } else {
  }
  ldv_mutex_lock_85(& ftdi_module_lock);
  list_add_tail(& ftdi->ftdi_list, & ftdi_static_list);
  ftdi_instances = ftdi_instances + 1;
  ftdi->sequence_num = ftdi_instances;
  ldv_mutex_unlock_86(& ftdi_module_lock);
  ftdi_elan_init_kref(ftdi);
  sema_init(& ftdi->sw_lock, 1);
  tmp___0 = interface_to_usbdev(interface);
  ftdi->udev = usb_get_dev(tmp___0);
  ftdi->interface = interface;
  __mutex_init(& ftdi->u132_lock, "&ftdi->u132_lock", & __key);
  ftdi->expected = 4;
  iface_desc = interface->cur_altsetting;
  i = 0;
  goto ldv_30649;
  ldv_30648:
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  if ((unsigned int )ftdi->bulk_in_endpointAddr == 0U) {
    tmp___3 = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp___3 != 0) {
      tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)endpoint);
      buffer_size = (size_t )tmp___1;
      ftdi->bulk_in_size = buffer_size;
      ftdi->bulk_in_endpointAddr = endpoint->bEndpointAddress;
      tmp___2 = kmalloc(buffer_size, 208U);
      ftdi->bulk_in_buffer = (unsigned char *)tmp___2;
      if ((unsigned long )ftdi->bulk_in_buffer == (unsigned long )((unsigned char *)0U)) {
        dev_err((struct device const *)(& (ftdi->udev)->dev), "Could not allocate bulk_in_buffer\n");
        retval = -12;
        goto error;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )ftdi->bulk_out_endpointAddr == 0U) {
    tmp___4 = usb_endpoint_is_bulk_out((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp___4 != 0) {
      ftdi->bulk_out_endpointAddr = endpoint->bEndpointAddress;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_30649: ;
  if ((int )iface_desc->desc.bNumEndpoints > i) {
    goto ldv_30648;
  } else {
  }
  if ((unsigned int )ftdi->bulk_in_endpointAddr == 0U || (unsigned int )ftdi->bulk_out_endpointAddr == 0U) {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "Could not find both bulk-in and bulk-out endpoints\n");
    retval = -19;
    goto error;
  } else {
  }
  _dev_info((struct device const *)(& (ftdi->udev)->dev), "interface %d has I=%02X O=%02X\n",
            (int )iface_desc->desc.bInterfaceNumber, (int )ftdi->bulk_in_endpointAddr,
            (int )ftdi->bulk_out_endpointAddr);
  usb_set_intfdata(interface, (void *)ftdi);
  if (((unsigned int )iface_desc->desc.bInterfaceNumber == 0U && (unsigned int )ftdi->bulk_in_endpointAddr == 129U) && (unsigned int )ftdi->bulk_out_endpointAddr == 2U) {
    retval = usb_register_dev(interface, & ftdi_elan_jtag_class);
    if (retval != 0) {
      dev_err((struct device const *)(& (ftdi->udev)->dev), "Not able to get a minor for this device\n");
      usb_set_intfdata(interface, (void *)0);
      retval = -12;
      goto error;
    } else {
      ftdi->class = & ftdi_elan_jtag_class;
      _dev_info((struct device const *)(& (ftdi->udev)->dev), "USB FDTI=%p JTAG interface %d now attached to ftdi%d\n",
                ftdi, (int )iface_desc->desc.bInterfaceNumber, interface->minor);
      return (0);
    }
  } else
  if (((unsigned int )iface_desc->desc.bInterfaceNumber == 1U && (unsigned int )ftdi->bulk_in_endpointAddr == 131U) && (unsigned int )ftdi->bulk_out_endpointAddr == 4U) {
    ftdi->class = (struct usb_class_driver *)0;
    _dev_info((struct device const *)(& (ftdi->udev)->dev), "USB FDTI=%p ELAN interface %d now activated\n",
              ftdi, (int )iface_desc->desc.bInterfaceNumber);
    __init_work(& ftdi->status_work.work, 0);
    __constr_expr_0.counter = 137438953408L;
    ftdi->status_work.work.data = __constr_expr_0;
    lockdep_init_map(& ftdi->status_work.work.lockdep_map, "(&(&ftdi->status_work)->work)",
                     & __key___0, 0);
    INIT_LIST_HEAD(& ftdi->status_work.work.entry);
    ftdi->status_work.work.func = & ftdi_elan_status_work;
    init_timer_key(& ftdi->status_work.timer, 2097152U, "(&(&ftdi->status_work)->timer)",
                   & __key___1);
    ftdi->status_work.timer.function = & delayed_work_timer_fn;
    ftdi->status_work.timer.data = (unsigned long )(& ftdi->status_work);
    __init_work(& ftdi->command_work.work, 0);
    __constr_expr_1.counter = 137438953408L;
    ftdi->command_work.work.data = __constr_expr_1;
    lockdep_init_map(& ftdi->command_work.work.lockdep_map, "(&(&ftdi->command_work)->work)",
                     & __key___2, 0);
    INIT_LIST_HEAD(& ftdi->command_work.work.entry);
    ftdi->command_work.work.func = & ftdi_elan_command_work;
    init_timer_key(& ftdi->command_work.timer, 2097152U, "(&(&ftdi->command_work)->timer)",
                   & __key___3);
    ftdi->command_work.timer.function = & delayed_work_timer_fn;
    ftdi->command_work.timer.data = (unsigned long )(& ftdi->command_work);
    __init_work(& ftdi->respond_work.work, 0);
    __constr_expr_2.counter = 137438953408L;
    ftdi->respond_work.work.data = __constr_expr_2;
    lockdep_init_map(& ftdi->respond_work.work.lockdep_map, "(&(&ftdi->respond_work)->work)",
                     & __key___4, 0);
    INIT_LIST_HEAD(& ftdi->respond_work.work.entry);
    ftdi->respond_work.work.func = & ftdi_elan_respond_work;
    init_timer_key(& ftdi->respond_work.timer, 2097152U, "(&(&ftdi->respond_work)->timer)",
                   & __key___5);
    ftdi->respond_work.timer.function = & delayed_work_timer_fn;
    ftdi->respond_work.timer.data = (unsigned long )(& ftdi->respond_work);
    tmp___5 = msecs_to_jiffies(3000U);
    ftdi_status_queue_work(ftdi, (unsigned int )tmp___5);
    return (0);
  } else {
    dev_err((struct device const *)(& (ftdi->udev)->dev), "Could not find ELAN\'s U132 device\n");
    retval = -19;
    goto error;
  }
  error: ;
  if ((unsigned long )ftdi != (unsigned long )((struct usb_ftdi *)0)) {
    ftdi_elan_put_kref(ftdi);
  } else {
  }
  return (retval);
}
}
static void ftdi_elan_disconnect(struct usb_interface *interface )
{
  struct usb_ftdi *ftdi ;
  void *tmp ;
  int minor ;
  struct usb_class_driver *class ;
  {
  tmp = usb_get_intfdata(interface);
  ftdi = (struct usb_ftdi *)tmp;
  ftdi->disconnected = ftdi->disconnected + 1;
  if ((unsigned long )ftdi->class != (unsigned long )((struct usb_class_driver *)0)) {
    minor = interface->minor;
    class = ftdi->class;
    usb_set_intfdata(interface, (void *)0);
    usb_deregister_dev(interface, class);
    _dev_info((struct device const *)(& (ftdi->udev)->dev), "USB FTDI U132 jtag interface on minor %d now disconnected\n",
              minor);
  } else {
    ftdi_status_cancel_work(ftdi);
    ftdi_command_cancel_work(ftdi);
    ftdi_response_cancel_work(ftdi);
    ftdi_elan_abandon_completions(ftdi);
    ftdi_elan_abandon_targets(ftdi);
    if ((unsigned int )*((unsigned char *)ftdi + 5072UL) != 0U) {
      platform_device_unregister(& ftdi->platform_dev);
      ftdi->synchronized = 0U;
      ftdi->enumerated = 0U;
      ftdi->initialized = 0U;
      ftdi->registered = 0U;
    } else {
    }
    ldv_flush_workqueue_87(status_queue);
    ldv_flush_workqueue_88(command_queue);
    ldv_flush_workqueue_89(respond_queue);
    ftdi->disconnected = ftdi->disconnected + 1;
    usb_set_intfdata(interface, (void *)0);
    _dev_info((struct device const *)(& (ftdi->udev)->dev), "USB FTDI U132 host controller interface now disconnected\n");
  }
  ftdi_elan_put_kref(ftdi);
  return;
}
}
static struct usb_driver ftdi_elan_driver =
     {"ftdi-elan", & ftdi_elan_probe, & ftdi_elan_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& ftdi_elan_table),
    {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                0, 0, 0, 0, 0, 0,
                                                                0, 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int ftdi_elan_init(void)
{
  int result ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___1 ;
  char const *__lock_name___0 ;
  struct workqueue_struct *tmp___0 ;
  struct lock_class_key __key___2 ;
  char const *__lock_name___1 ;
  struct workqueue_struct *tmp___1 ;
  {
  printk("\016ftdi_elan: driver %s\n", ftdi_elan_driver.name);
  __mutex_init(& ftdi_module_lock, "&ftdi_module_lock", & __key);
  INIT_LIST_HEAD(& ftdi_static_list);
  __lock_name = "\"%s\"\"ftdi-status-control\"";
  tmp = __alloc_workqueue_key("%s", 131082U, 1, & __key___0, __lock_name, (char *)"ftdi-status-control");
  status_queue = tmp;
  if ((unsigned long )status_queue == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_status_queue;
  } else {
  }
  __lock_name___0 = "\"%s\"\"ftdi-command-engine\"";
  tmp___0 = __alloc_workqueue_key("%s", 131082U, 1, & __key___1, __lock_name___0,
                                  (char *)"ftdi-command-engine");
  command_queue = tmp___0;
  if ((unsigned long )command_queue == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_command_queue;
  } else {
  }
  __lock_name___1 = "\"%s\"\"ftdi-respond-engine\"";
  tmp___1 = __alloc_workqueue_key("%s", 131082U, 1, & __key___2, __lock_name___1,
                                  (char *)"ftdi-respond-engine");
  respond_queue = tmp___1;
  if ((unsigned long )respond_queue == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_respond_queue;
  } else {
  }
  result = ldv_usb_register_driver_90(& ftdi_elan_driver, & __this_module, "ftdi_elan");
  if (result != 0) {
    ldv_destroy_workqueue_91(status_queue);
    ldv_destroy_workqueue_92(command_queue);
    ldv_destroy_workqueue_93(respond_queue);
    printk("\vftdi_elan: usb_register failed. Error number %d\n", result);
  } else {
  }
  return (result);
  err_respond_queue:
  ldv_destroy_workqueue_94(command_queue);
  err_command_queue:
  ldv_destroy_workqueue_95(status_queue);
  err_status_queue:
  printk("\vftdi_elan: %s couldn\'t create workqueue\n", ftdi_elan_driver.name);
  return (-12);
}
}
static void ftdi_elan_exit(void)
{
  struct usb_ftdi *ftdi ;
  struct usb_ftdi *temp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ldv_usb_deregister_96(& ftdi_elan_driver);
  printk("\016ftdi_elan: ftdi_u132 driver deregistered\n");
  __mptr = (struct list_head const *)ftdi_static_list.next;
  ftdi = (struct usb_ftdi *)__mptr;
  __mptr___0 = (struct list_head const *)ftdi->ftdi_list.next;
  temp = (struct usb_ftdi *)__mptr___0;
  goto ldv_30696;
  ldv_30695:
  ftdi_status_cancel_work(ftdi);
  ftdi_command_cancel_work(ftdi);
  ftdi_response_cancel_work(ftdi);
  ftdi = temp;
  __mptr___1 = (struct list_head const *)temp->ftdi_list.next;
  temp = (struct usb_ftdi *)__mptr___1;
  ldv_30696: ;
  if ((unsigned long )(& ftdi->ftdi_list) != (unsigned long )(& ftdi_static_list)) {
    goto ldv_30695;
  } else {
  }
  ldv_flush_workqueue_97(status_queue);
  ldv_destroy_workqueue_98(status_queue);
  status_queue = (struct workqueue_struct *)0;
  ldv_flush_workqueue_99(command_queue);
  ldv_destroy_workqueue_100(command_queue);
  command_queue = (struct workqueue_struct *)0;
  ldv_flush_workqueue_101(respond_queue);
  ldv_destroy_workqueue_102(respond_queue);
  respond_queue = (struct workqueue_struct *)0;
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    ftdi_elan_respond_work(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    ftdi_elan_respond_work(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    ftdi_elan_respond_work(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    ftdi_elan_respond_work(work);
    ldv_work_3_3 = 1;
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
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    ftdi_elan_status_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    ftdi_elan_status_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    ftdi_elan_status_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    ftdi_elan_status_work(work);
    ldv_work_1_3 = 1;
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
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    ftdi_elan_respond_work(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_30743;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    ftdi_elan_respond_work(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_30743;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    ftdi_elan_respond_work(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_30743;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    ftdi_elan_respond_work(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_30743;
  default:
  ldv_stop();
  }
  ldv_30743: ;
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
void ldv_usb_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  ftdi_elan_driver_group1 = (struct usb_interface *)tmp;
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
    ftdi_elan_status_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_30769;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    ftdi_elan_status_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_30769;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    ftdi_elan_status_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_30769;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    ftdi_elan_status_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_30769;
  default:
  ldv_stop();
  }
  ldv_30769: ;
  return;
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
void ldv_file_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  ftdi_elan_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  ftdi_elan_fops_group2 = (struct file *)tmp___0;
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
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    ftdi_elan_command_work(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    ftdi_elan_command_work(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    ftdi_elan_command_work(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    ftdi_elan_command_work(work);
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
    ftdi_elan_command_work(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_30805;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    ftdi_elan_command_work(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_30805;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    ftdi_elan_command_work(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_30805;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    ftdi_elan_command_work(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_30805;
  default:
  ldv_stop();
  }
  ldv_30805: ;
  return;
}
}
int main(void)
{
  struct usb_device_id *ldvarg0 ;
  void *tmp ;
  size_t ldvarg7 ;
  loff_t *ldvarg3 ;
  void *tmp___0 ;
  char *ldvarg5 ;
  void *tmp___1 ;
  loff_t *ldvarg6 ;
  void *tmp___2 ;
  int ldvarg1 ;
  char *ldvarg8 ;
  void *tmp___3 ;
  size_t ldvarg4 ;
  loff_t ldvarg2 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct usb_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg3 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg6 = (loff_t *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___3;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg2), 0, 8UL);
  ldv_state_variable_4 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_30852:
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = ftdi_elan_probe(ftdi_elan_driver_group1, (struct usb_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30830;
    case 1: ;
    if (ldv_state_variable_4 == 2 && usb_counter == 0) {
      ftdi_elan_disconnect(ftdi_elan_driver_group1);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30830;
    default:
    ldv_stop();
    }
    ldv_30830: ;
  } else {
  }
  goto ldv_30833;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_30833;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      ftdi_elan_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_30838;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = ftdi_elan_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_file_operations_5();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_30838;
    default:
    ldv_stop();
    }
    ldv_30838: ;
  } else {
  }
  goto ldv_30833;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_30833;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_30833;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ftdi_elan_write(ftdi_elan_fops_group2, (char const *)ldvarg8, ldvarg7, ldvarg6);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ftdi_elan_write(ftdi_elan_fops_group2, (char const *)ldvarg8, ldvarg7, ldvarg6);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_30845;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      ftdi_elan_release(ftdi_elan_fops_group1, ftdi_elan_fops_group2);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30845;
    case 2: ;
    if (ldv_state_variable_5 == 2) {
      ftdi_elan_read(ftdi_elan_fops_group2, ldvarg5, ldvarg4, ldvarg3);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_30845;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      no_llseek(ftdi_elan_fops_group2, ldvarg2, ldvarg1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_30845;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_2 = ftdi_elan_open(ftdi_elan_fops_group1, ftdi_elan_fops_group2);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30845;
    default:
    ldv_stop();
    }
    ldv_30845: ;
  } else {
  }
  goto ldv_30833;
  default:
  ldv_stop();
  }
  ldv_30833: ;
  goto ldv_30852;
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
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ftdi_module_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ftdi_module_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_19(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_20(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_21(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_80(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ftdi_module_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ftdi_module_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_flush_workqueue_87(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
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
void ldv_flush_workqueue_89(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
int ldv_usb_register_driver_90(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  usb_counter = 0;
  ldv_usb_driver_4();
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_91(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_92(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_93(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_94(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_95(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_usb_deregister_96(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_4 = 0;
  return;
}
}
void ldv_flush_workqueue_97(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_98(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_flush_workqueue_99(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_100(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_flush_workqueue_101(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_102(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
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
static int ldv_mutex_ftdi_module_lock = 1;
int ldv_mutex_lock_interruptible_ftdi_module_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_ftdi_module_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ftdi_module_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_ftdi_module_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ftdi_module_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_ftdi_module_lock = 2;
  return;
}
}
int ldv_mutex_trylock_ftdi_module_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_ftdi_module_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ftdi_module_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ftdi_module_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ftdi_module_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ftdi_module_lock == 1) {
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
void ldv_mutex_unlock_ftdi_module_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_ftdi_module_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_ftdi_module_lock = 1;
  return;
}
}
void ldv_usb_lock_device_ftdi_module_lock(void)
{
  {
  ldv_mutex_lock_ftdi_module_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_ftdi_module_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_ftdi_module_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_ftdi_module_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_ftdi_module_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_ftdi_module_lock(void)
{
  {
  ldv_mutex_unlock_ftdi_module_lock((struct mutex *)0);
  return;
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
static int ldv_mutex_u132_lock_of_usb_ftdi = 1;
int ldv_mutex_lock_interruptible_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_u132_lock_of_usb_ftdi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_u132_lock_of_usb_ftdi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_u132_lock_of_usb_ftdi = 2;
  return;
}
}
int ldv_mutex_trylock_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_u132_lock_of_usb_ftdi = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_u132_lock_of_usb_ftdi(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_u132_lock_of_usb_ftdi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi == 1) {
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
void ldv_mutex_unlock_u132_lock_of_usb_ftdi(struct mutex *lock )
{
  {
  if (ldv_mutex_u132_lock_of_usb_ftdi != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_u132_lock_of_usb_ftdi = 1;
  return;
}
}
void ldv_usb_lock_device_u132_lock_of_usb_ftdi(void)
{
  {
  ldv_mutex_lock_u132_lock_of_usb_ftdi((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_u132_lock_of_usb_ftdi(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_u132_lock_of_usb_ftdi((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_u132_lock_of_usb_ftdi(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_u132_lock_of_usb_ftdi((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_u132_lock_of_usb_ftdi(void)
{
  {
  ldv_mutex_unlock_u132_lock_of_usb_ftdi((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_ftdi_module_lock != 1) {
    ldv_error();
  } else {
  }
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
  if (ldv_mutex_u132_lock_of_usb_ftdi != 1) {
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
void __const_udelay(unsigned long arg0) {
  return;
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void down(struct semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_interruptible(struct semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void ldv_initialize() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
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
int platform_device_register(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
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
void up(struct semaphore *arg0) {
  return;
}
void *external_alloc(void);
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return (struct urb *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_bulk_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_deregister_dev(struct usb_interface *arg0, struct usb_class_driver *arg1) {
  return;
}
void *external_alloc(void);
struct usb_interface *usb_find_interface(struct usb_driver *arg0, int arg1) {
  return (struct usb_interface *)external_alloc();
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void *external_alloc(void);
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return (struct usb_device *)external_alloc();
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_dev(struct usb_interface *arg0, struct usb_class_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
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
