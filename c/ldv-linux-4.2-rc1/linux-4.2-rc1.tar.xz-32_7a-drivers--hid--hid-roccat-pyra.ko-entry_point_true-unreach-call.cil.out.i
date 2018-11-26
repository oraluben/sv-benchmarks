extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
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
typedef unsigned int uint;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;
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
struct kobject;
struct hid_device;
struct bin_attribute;
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
union __anonunion____missing_field_name_205 {
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
   union __anonunion____missing_field_name_205 __annonCompField56 ;
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
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_206 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_206 u ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_210 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_209 {
   struct __anonstruct____missing_field_name_210 __annonCompField57 ;
};
struct lockref {
   union __anonunion____missing_field_name_209 __annonCompField58 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_212 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_211 {
   struct __anonstruct____missing_field_name_212 __annonCompField59 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_211 __annonCompField60 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_213 {
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
   union __anonunion_d_u_213 d_u ;
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
struct __anonstruct____missing_field_name_217 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_216 {
   struct __anonstruct____missing_field_name_217 __annonCompField61 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_216 __annonCompField62 ;
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
struct __anonstruct_kprojid_t_221 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_221 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_222 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_222 __annonCompField64 ;
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
union __anonunion____missing_field_name_225 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_226 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_227 {
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
   union __anonunion____missing_field_name_225 __annonCompField65 ;
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
   union __anonunion____missing_field_name_226 __annonCompField66 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_227 __annonCompField67 ;
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
union __anonunion_f_u_228 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_228 f_u ;
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
struct __anonstruct_afs_230 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_229 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_230 afs ;
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
   union __anonunion_fl_u_229 fl_u ;
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
typedef unsigned long kernel_ulong_t;
struct hid_device_id {
   __u16 bus ;
   __u16 group ;
   __u32 vendor ;
   __u32 product ;
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
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
enum power_supply_property {
    POWER_SUPPLY_PROP_STATUS = 0,
    POWER_SUPPLY_PROP_CHARGE_TYPE = 1,
    POWER_SUPPLY_PROP_HEALTH = 2,
    POWER_SUPPLY_PROP_PRESENT = 3,
    POWER_SUPPLY_PROP_ONLINE = 4,
    POWER_SUPPLY_PROP_AUTHENTIC = 5,
    POWER_SUPPLY_PROP_TECHNOLOGY = 6,
    POWER_SUPPLY_PROP_CYCLE_COUNT = 7,
    POWER_SUPPLY_PROP_VOLTAGE_MAX = 8,
    POWER_SUPPLY_PROP_VOLTAGE_MIN = 9,
    POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN = 10,
    POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN = 11,
    POWER_SUPPLY_PROP_VOLTAGE_NOW = 12,
    POWER_SUPPLY_PROP_VOLTAGE_AVG = 13,
    POWER_SUPPLY_PROP_VOLTAGE_OCV = 14,
    POWER_SUPPLY_PROP_VOLTAGE_BOOT = 15,
    POWER_SUPPLY_PROP_CURRENT_MAX = 16,
    POWER_SUPPLY_PROP_CURRENT_NOW = 17,
    POWER_SUPPLY_PROP_CURRENT_AVG = 18,
    POWER_SUPPLY_PROP_CURRENT_BOOT = 19,
    POWER_SUPPLY_PROP_POWER_NOW = 20,
    POWER_SUPPLY_PROP_POWER_AVG = 21,
    POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN = 22,
    POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN = 23,
    POWER_SUPPLY_PROP_CHARGE_FULL = 24,
    POWER_SUPPLY_PROP_CHARGE_EMPTY = 25,
    POWER_SUPPLY_PROP_CHARGE_NOW = 26,
    POWER_SUPPLY_PROP_CHARGE_AVG = 27,
    POWER_SUPPLY_PROP_CHARGE_COUNTER = 28,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT = 29,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX = 30,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE = 31,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX = 32,
    POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT = 33,
    POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX = 34,
    POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT = 35,
    POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN = 36,
    POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN = 37,
    POWER_SUPPLY_PROP_ENERGY_FULL = 38,
    POWER_SUPPLY_PROP_ENERGY_EMPTY = 39,
    POWER_SUPPLY_PROP_ENERGY_NOW = 40,
    POWER_SUPPLY_PROP_ENERGY_AVG = 41,
    POWER_SUPPLY_PROP_CAPACITY = 42,
    POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN = 43,
    POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX = 44,
    POWER_SUPPLY_PROP_CAPACITY_LEVEL = 45,
    POWER_SUPPLY_PROP_TEMP = 46,
    POWER_SUPPLY_PROP_TEMP_MAX = 47,
    POWER_SUPPLY_PROP_TEMP_MIN = 48,
    POWER_SUPPLY_PROP_TEMP_ALERT_MIN = 49,
    POWER_SUPPLY_PROP_TEMP_ALERT_MAX = 50,
    POWER_SUPPLY_PROP_TEMP_AMBIENT = 51,
    POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN = 52,
    POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX = 53,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW = 54,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG = 55,
    POWER_SUPPLY_PROP_TIME_TO_FULL_NOW = 56,
    POWER_SUPPLY_PROP_TIME_TO_FULL_AVG = 57,
    POWER_SUPPLY_PROP_TYPE = 58,
    POWER_SUPPLY_PROP_SCOPE = 59,
    POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT = 60,
    POWER_SUPPLY_PROP_CALIBRATE = 61,
    POWER_SUPPLY_PROP_MODEL_NAME = 62,
    POWER_SUPPLY_PROP_MANUFACTURER = 63,
    POWER_SUPPLY_PROP_SERIAL_NUMBER = 64
} ;
enum power_supply_type {
    POWER_SUPPLY_TYPE_UNKNOWN = 0,
    POWER_SUPPLY_TYPE_BATTERY = 1,
    POWER_SUPPLY_TYPE_UPS = 2,
    POWER_SUPPLY_TYPE_MAINS = 3,
    POWER_SUPPLY_TYPE_USB = 4,
    POWER_SUPPLY_TYPE_USB_DCP = 5,
    POWER_SUPPLY_TYPE_USB_CDP = 6,
    POWER_SUPPLY_TYPE_USB_ACA = 7
} ;
union power_supply_propval {
   int intval ;
   char const *strval ;
};
struct power_supply;
struct power_supply_desc {
   char const *name ;
   enum power_supply_type type ;
   enum power_supply_property *properties ;
   size_t num_properties ;
   int (*get_property)(struct power_supply * , enum power_supply_property , union power_supply_propval * ) ;
   int (*set_property)(struct power_supply * , enum power_supply_property , union power_supply_propval const * ) ;
   int (*property_is_writeable)(struct power_supply * , enum power_supply_property ) ;
   void (*external_power_changed)(struct power_supply * ) ;
   void (*set_charged)(struct power_supply * ) ;
   bool no_thermal ;
   int use_for_apm ;
};
struct power_supply {
   struct power_supply_desc const *desc ;
   char **supplied_to ;
   size_t num_supplicants ;
   char **supplied_from ;
   size_t num_supplies ;
   struct device_node *of_node ;
   void *drv_data ;
   struct device dev ;
   struct work_struct changed_work ;
   struct delayed_work deferred_register_work ;
   spinlock_t changed_lock ;
   bool changed ;
   atomic_t use_cnt ;
   struct led_trigger *charging_full_trig ;
   char *charging_full_trig_name ;
   struct led_trigger *charging_trig ;
   char *charging_trig_name ;
   struct led_trigger *full_trig ;
   char *full_trig_name ;
   struct led_trigger *online_trig ;
   char *online_trig_name ;
   struct led_trigger *charging_blink_full_solid_trig ;
   char *charging_blink_full_solid_trig_name ;
};
struct hid_collection {
   unsigned int type ;
   unsigned int usage ;
   unsigned int level ;
};
struct hid_usage {
   unsigned int hid ;
   unsigned int collection_index ;
   unsigned int usage_index ;
   __u16 code ;
   __u8 type ;
   __s8 hat_min ;
   __s8 hat_max ;
   __s8 hat_dir ;
};
struct hid_input;
struct hid_report;
struct hid_field {
   unsigned int physical ;
   unsigned int logical ;
   unsigned int application ;
   struct hid_usage *usage ;
   unsigned int maxusage ;
   unsigned int flags ;
   unsigned int report_offset ;
   unsigned int report_size ;
   unsigned int report_count ;
   unsigned int report_type ;
   __s32 *value ;
   __s32 logical_minimum ;
   __s32 logical_maximum ;
   __s32 physical_minimum ;
   __s32 physical_maximum ;
   __s32 unit_exponent ;
   unsigned int unit ;
   struct hid_report *report ;
   unsigned int index ;
   struct hid_input *hidinput ;
   __u16 dpad ;
};
struct hid_report {
   struct list_head list ;
   unsigned int id ;
   unsigned int type ;
   struct hid_field *field[256U] ;
   unsigned int maxfield ;
   unsigned int size ;
   struct hid_device *device ;
};
struct hid_report_enum {
   unsigned int numbered ;
   struct list_head report_list ;
   struct hid_report *report_id_hash[256U] ;
};
struct hid_input {
   struct list_head list ;
   struct hid_report *report ;
   struct input_dev *input ;
};
enum hid_type {
    HID_TYPE_OTHER = 0,
    HID_TYPE_USBMOUSE = 1,
    HID_TYPE_USBNONE = 2
} ;
struct hid_driver;
struct hid_ll_driver;
struct hid_device {
   __u8 *dev_rdesc ;
   unsigned int dev_rsize ;
   __u8 *rdesc ;
   unsigned int rsize ;
   struct hid_collection *collection ;
   unsigned int collection_size ;
   unsigned int maxcollection ;
   unsigned int maxapplication ;
   __u16 bus ;
   __u16 group ;
   __u32 vendor ;
   __u32 product ;
   __u32 version ;
   enum hid_type type ;
   unsigned int country ;
   struct hid_report_enum report_enum[3U] ;
   struct work_struct led_work ;
   struct semaphore driver_lock ;
   struct semaphore driver_input_lock ;
   struct device dev ;
   struct hid_driver *driver ;
   struct hid_ll_driver *ll_driver ;
   struct power_supply *battery ;
   __s32 battery_min ;
   __s32 battery_max ;
   __s32 battery_report_type ;
   __s32 battery_report_id ;
   unsigned int status ;
   unsigned int claimed ;
   unsigned int quirks ;
   bool io_started ;
   struct list_head inputs ;
   void *hiddev ;
   void *hidraw ;
   int minor ;
   int open ;
   char name[128U] ;
   char phys[64U] ;
   char uniq[64U] ;
   void *driver_data ;
   int (*ff_init)(struct hid_device * ) ;
   int (*hiddev_connect)(struct hid_device * , unsigned int ) ;
   void (*hiddev_disconnect)(struct hid_device * ) ;
   void (*hiddev_hid_event)(struct hid_device * , struct hid_field * , struct hid_usage * ,
                            __s32 ) ;
   void (*hiddev_report_event)(struct hid_device * , struct hid_report * ) ;
   unsigned short debug ;
   struct dentry *debug_dir ;
   struct dentry *debug_rdesc ;
   struct dentry *debug_events ;
   struct list_head debug_list ;
   spinlock_t debug_list_lock ;
   wait_queue_head_t debug_wait ;
};
struct hid_report_id {
   __u32 report_type ;
};
struct hid_usage_id {
   __u32 usage_hid ;
   __u32 usage_type ;
   __u32 usage_code ;
};
struct hid_driver {
   char *name ;
   struct hid_device_id const *id_table ;
   struct list_head dyn_list ;
   spinlock_t dyn_lock ;
   int (*probe)(struct hid_device * , struct hid_device_id const * ) ;
   void (*remove)(struct hid_device * ) ;
   struct hid_report_id const *report_table ;
   int (*raw_event)(struct hid_device * , struct hid_report * , u8 * , int ) ;
   struct hid_usage_id const *usage_table ;
   int (*event)(struct hid_device * , struct hid_field * , struct hid_usage * , __s32 ) ;
   void (*report)(struct hid_device * , struct hid_report * ) ;
   __u8 *(*report_fixup)(struct hid_device * , __u8 * , unsigned int * ) ;
   int (*input_mapping)(struct hid_device * , struct hid_input * , struct hid_field * ,
                        struct hid_usage * , unsigned long ** , int * ) ;
   int (*input_mapped)(struct hid_device * , struct hid_input * , struct hid_field * ,
                       struct hid_usage * , unsigned long ** , int * ) ;
   void (*input_configured)(struct hid_device * , struct hid_input * ) ;
   void (*feature_mapping)(struct hid_device * , struct hid_field * , struct hid_usage * ) ;
   int (*suspend)(struct hid_device * , pm_message_t ) ;
   int (*resume)(struct hid_device * ) ;
   int (*reset_resume)(struct hid_device * ) ;
   struct device_driver driver ;
};
struct hid_ll_driver {
   int (*start)(struct hid_device * ) ;
   void (*stop)(struct hid_device * ) ;
   int (*open)(struct hid_device * ) ;
   void (*close)(struct hid_device * ) ;
   int (*power)(struct hid_device * , int ) ;
   int (*parse)(struct hid_device * ) ;
   void (*request)(struct hid_device * , struct hid_report * , int ) ;
   int (*wait)(struct hid_device * ) ;
   int (*raw_request)(struct hid_device * , unsigned char , __u8 * , size_t , unsigned char ,
                      int ) ;
   int (*output_report)(struct hid_device * , __u8 * , size_t ) ;
   int (*idle)(struct hid_device * , int , int , int ) ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_239 {
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
   union __anonunion____missing_field_name_239 __annonCompField68 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
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
struct roccat_common2_control {
   uint8_t command ;
   uint8_t value ;
   uint8_t request ;
};
enum pyra_control_requests {
    PYRA_CONTROL_REQUEST_PROFILE_SETTINGS = 16,
    PYRA_CONTROL_REQUEST_PROFILE_BUTTONS = 32
} ;
struct pyra_settings {
   uint8_t command ;
   uint8_t size ;
   uint8_t startup_profile ;
};
struct pyra_profile_settings {
   uint8_t command ;
   uint8_t size ;
   uint8_t number ;
   uint8_t xysync ;
   uint8_t x_sensitivity ;
   uint8_t y_sensitivity ;
   uint8_t x_cpi ;
   uint8_t y_cpi ;
   uint8_t lightswitch ;
   uint8_t light_effect ;
   uint8_t handedness ;
   uint16_t checksum ;
};
struct pyra_info {
   uint8_t command ;
   uint8_t size ;
   uint8_t firmware_version ;
   uint8_t unknown1 ;
   uint8_t unknown2 ;
   uint8_t unknown3 ;
};
struct pyra_mouse_event_button {
   uint8_t report_number ;
   uint8_t unknown ;
   uint8_t type ;
   uint8_t data1 ;
   uint8_t data2 ;
};
struct pyra_roccat_report {
   uint8_t type ;
   uint8_t value ;
   uint8_t key ;
};
struct pyra_device {
   int actual_profile ;
   int actual_cpi ;
   int roccat_claimed ;
   int chrdev_minor ;
   struct mutex pyra_lock ;
   struct pyra_profile_settings profile_settings[5U] ;
};
typedef int ldv_func_ret_type;
extern struct module __this_module ;
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern void *memset(void * , int , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
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
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_pyra_lock_of_pyra_device(struct mutex *lock ) ;
void ldv_mutex_unlock_pyra_lock_of_pyra_device(struct mutex *lock ) ;
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
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct kobject *bin_attr_settings_group0 ;
int ldv_state_variable_20 ;
int ldv_state_variable_10 ;
int ldv_state_variable_6 ;
struct hid_device *pyra_driver_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct bin_attribute *bin_attr_info_group2 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
struct kobject *bin_attr_profile_settings_group0 ;
int ldv_state_variable_12 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
struct bin_attribute *bin_attr_profile_settings_group2 ;
struct file *bin_attr_settings_group1 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_17 ;
struct bin_attribute *bin_attr_profile_buttons_group2 ;
int ldv_state_variable_18 ;
struct kobject *bin_attr_info_group0 ;
struct file *bin_attr_profile_buttons_group1 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
struct kobject *bin_attr_profile_buttons_group0 ;
struct file *bin_attr_info_group1 ;
int ref_cnt ;
struct file *bin_attr_profile_settings_group1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct bin_attribute *bin_attr_settings_group2 ;
int ldv_state_variable_4 ;
void ldv_initialize_bin_attribute_17(void) ;
void ldv_initialize_bin_attribute_18(void) ;
void ldv_initialize_bin_attribute_6(void) ;
void ldv_initialize_hid_driver_1(void) ;
void ldv_initialize_bin_attribute_19(void) ;
extern struct class *__class_create(struct module * , char const * , struct lock_class_key * ) ;
extern void class_destroy(struct class * ) ;
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
__inline static void *hid_get_drvdata(struct hid_device *hdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& hdev->dev));
  return (tmp);
}
}
__inline static void hid_set_drvdata(struct hid_device *hdev , void *data )
{
  {
  dev_set_drvdata(& hdev->dev, data);
  return;
}
}
extern int __hid_register_driver(struct hid_driver * , struct module * , char const * ) ;
extern void hid_unregister_driver(struct hid_driver * ) ;
extern int hid_open_report(struct hid_device * ) ;
extern int hid_connect(struct hid_device * , unsigned int ) ;
extern void hid_disconnect(struct hid_device * ) ;
__inline static int hid_parse(struct hid_device *hdev )
{
  int tmp ;
  {
  tmp = hid_open_report(hdev);
  return (tmp);
}
}
__inline static int hid_hw_start(struct hid_device *hdev , unsigned int connect_mask )
{
  int ret ;
  int tmp ;
  {
  tmp = (*((hdev->ll_driver)->start))(hdev);
  ret = tmp;
  if (ret != 0 || connect_mask == 0U) {
    return (ret);
  } else {
  }
  ret = hid_connect(hdev, connect_mask);
  if (ret != 0) {
    (*((hdev->ll_driver)->stop))(hdev);
  } else {
  }
  return (ret);
}
}
__inline static void hid_hw_stop(struct hid_device *hdev )
{
  {
  hid_disconnect(hdev);
  (*((hdev->ll_driver)->stop))(hdev);
  return;
}
}
extern int roccat_connect(struct class * , struct hid_device * , int ) ;
extern void roccat_disconnect(int ) ;
extern int roccat_report_event(int , u8 const * ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern int roccat_common2_receive(struct usb_device * , uint , void * , uint ) ;
extern int roccat_common2_send(struct usb_device * , uint , void const * , uint ) ;
extern int roccat_common2_send_with_status(struct usb_device * , uint , void const * ,
                                           uint ) ;
static uint profile_numbers[5U] = { 0U, 1U, 2U, 3U,
        4U};
static struct class *pyra_class ;
static void profile_activated(struct pyra_device *pyra , unsigned int new_profile )
{
  {
  if (new_profile > 4U) {
    return;
  } else {
  }
  pyra->actual_profile = (int )new_profile;
  pyra->actual_cpi = (int )pyra->profile_settings[pyra->actual_profile].y_cpi;
  return;
}
}
static int pyra_send_control(struct usb_device *usb_dev , int value , enum pyra_control_requests request )
{
  struct roccat_common2_control control ;
  int tmp ;
  {
  if (((unsigned int )request == 16U || (unsigned int )request == 32U) && (value < 0 || value > 4)) {
    return (-22);
  } else {
  }
  control.command = 4U;
  control.value = (uint8_t )value;
  control.request = (uint8_t )request;
  tmp = roccat_common2_send(usb_dev, 4U, (void const *)(& control), 3U);
  return (tmp);
}
}
static int pyra_get_profile_settings(struct usb_device *usb_dev , struct pyra_profile_settings *buf ,
                                     int number )
{
  int retval ;
  int tmp ;
  {
  retval = pyra_send_control(usb_dev, number, 16);
  if (retval != 0) {
    return (retval);
  } else {
  }
  tmp = roccat_common2_receive(usb_dev, 6U, (void *)buf, 13U);
  return (tmp);
}
}
static int pyra_get_settings(struct usb_device *usb_dev , struct pyra_settings *buf )
{
  int tmp ;
  {
  tmp = roccat_common2_receive(usb_dev, 5U, (void *)buf, 3U);
  return (tmp);
}
}
static int pyra_set_settings(struct usb_device *usb_dev , struct pyra_settings const *settings )
{
  int tmp ;
  {
  tmp = roccat_common2_send_with_status(usb_dev, 5U, (void const *)settings, 3U);
  return (tmp);
}
}
static ssize_t pyra_sysfs_read(struct file *fp , struct kobject *kobj , char *buf ,
                               loff_t off , size_t count , size_t real_size , uint command )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  struct usb_device *usb_dev ;
  struct device const *__mptr___0 ;
  struct usb_device *tmp___1 ;
  int retval ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (((struct device *)__mptr + 0xfffffffffffffff0UL)->parent)->parent;
  tmp = dev_get_drvdata((struct device const *)dev);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  __mptr___0 = (struct device const *)dev;
  tmp___1 = interface_to_usbdev((struct usb_interface *)__mptr___0 + 0xffffffffffffffd0UL);
  usb_dev = tmp___1;
  if ((unsigned long long )off >= (unsigned long long )real_size) {
    return (0L);
  } else {
  }
  if (off != 0LL || count != real_size) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_12(& pyra->pyra_lock);
  retval = roccat_common2_receive(usb_dev, command, (void *)buf, (uint )real_size);
  ldv_mutex_unlock_13(& pyra->pyra_lock);
  if (retval != 0) {
    return ((ssize_t )retval);
  } else {
  }
  return ((ssize_t )real_size);
}
}
static ssize_t pyra_sysfs_write(struct file *fp , struct kobject *kobj , void const *buf ,
                                loff_t off , size_t count , size_t real_size , uint command )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  struct usb_device *usb_dev ;
  struct device const *__mptr___0 ;
  struct usb_device *tmp___1 ;
  int retval ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (((struct device *)__mptr + 0xfffffffffffffff0UL)->parent)->parent;
  tmp = dev_get_drvdata((struct device const *)dev);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  __mptr___0 = (struct device const *)dev;
  tmp___1 = interface_to_usbdev((struct usb_interface *)__mptr___0 + 0xffffffffffffffd0UL);
  usb_dev = tmp___1;
  if (off != 0LL || count != real_size) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_14(& pyra->pyra_lock);
  retval = roccat_common2_send_with_status(usb_dev, command, buf, (uint )real_size);
  ldv_mutex_unlock_15(& pyra->pyra_lock);
  if (retval != 0) {
    return ((ssize_t )retval);
  } else {
  }
  return ((ssize_t )real_size);
}
}
static ssize_t pyra_sysfs_write_control(struct file *fp , struct kobject *kobj , struct bin_attribute *attr ,
                                        char *buf , loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_write(fp, kobj, (void const *)buf, off, count, 3UL, 4U);
  return (tmp);
}
}
static struct bin_attribute bin_attr_control = {{"control", 144U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, 3UL, 0, 0,
    & pyra_sysfs_write_control, 0};
static ssize_t pyra_sysfs_write_info(struct file *fp , struct kobject *kobj , struct bin_attribute *attr ,
                                     char *buf , loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_write(fp, kobj, (void const *)buf, off, count, 6UL, 9U);
  return (tmp);
}
}
static ssize_t pyra_sysfs_read_info(struct file *fp , struct kobject *kobj , struct bin_attribute *attr ,
                                    char *buf , loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_read(fp, kobj, buf, off, count, 6UL, 9U);
  return (tmp);
}
}
static struct bin_attribute bin_attr_info = {{"info", 432U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, 6UL, 0, & pyra_sysfs_read_info,
    & pyra_sysfs_write_info, 0};
static ssize_t pyra_sysfs_write_profile_settings(struct file *fp , struct kobject *kobj ,
                                                 struct bin_attribute *attr , char *buf ,
                                                 loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_write(fp, kobj, (void const *)buf, off, count, 13UL, 6U);
  return (tmp);
}
}
static ssize_t pyra_sysfs_read_profile_settings(struct file *fp , struct kobject *kobj ,
                                                struct bin_attribute *attr , char *buf ,
                                                loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_read(fp, kobj, buf, off, count, 13UL, 6U);
  return (tmp);
}
}
static struct bin_attribute bin_attr_profile_settings = {{"profile_settings", 432U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, 0, & pyra_sysfs_read_profile_settings, & pyra_sysfs_write_profile_settings,
    0};
static ssize_t pyra_sysfs_write_profile_buttons(struct file *fp , struct kobject *kobj ,
                                                struct bin_attribute *attr , char *buf ,
                                                loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_write(fp, kobj, (void const *)buf, off, count, 19UL, 7U);
  return (tmp);
}
}
static ssize_t pyra_sysfs_read_profile_buttons(struct file *fp , struct kobject *kobj ,
                                               struct bin_attribute *attr , char *buf ,
                                               loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_read(fp, kobj, buf, off, count, 19UL, 7U);
  return (tmp);
}
}
static struct bin_attribute bin_attr_profile_buttons = {{"profile_buttons", 432U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, 0, & pyra_sysfs_read_profile_buttons, & pyra_sysfs_write_profile_buttons,
    0};
static ssize_t pyra_sysfs_read_profilex_settings(struct file *fp , struct kobject *kobj ,
                                                 struct bin_attribute *attr , char *buf ,
                                                 loff_t off , size_t count )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct usb_device *usb_dev ;
  struct device const *__mptr___0 ;
  struct usb_device *tmp ;
  ssize_t retval ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (((struct device *)__mptr + 0xfffffffffffffff0UL)->parent)->parent;
  __mptr___0 = (struct device const *)dev;
  tmp = interface_to_usbdev((struct usb_interface *)__mptr___0 + 0xffffffffffffffd0UL);
  usb_dev = tmp;
  tmp___0 = pyra_send_control(usb_dev, (int )*((uint *)attr->private), 16);
  retval = (ssize_t )tmp___0;
  if (retval != 0L) {
    return (retval);
  } else {
  }
  tmp___1 = pyra_sysfs_read(fp, kobj, buf, off, count, 13UL, 6U);
  return (tmp___1);
}
}
static ssize_t pyra_sysfs_read_profilex_buttons(struct file *fp , struct kobject *kobj ,
                                                struct bin_attribute *attr , char *buf ,
                                                loff_t off , size_t count )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct usb_device *usb_dev ;
  struct device const *__mptr___0 ;
  struct usb_device *tmp ;
  ssize_t retval ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (((struct device *)__mptr + 0xfffffffffffffff0UL)->parent)->parent;
  __mptr___0 = (struct device const *)dev;
  tmp = interface_to_usbdev((struct usb_interface *)__mptr___0 + 0xffffffffffffffd0UL);
  usb_dev = tmp;
  tmp___0 = pyra_send_control(usb_dev, (int )*((uint *)attr->private), 32);
  retval = (ssize_t )tmp___0;
  if (retval != 0L) {
    return (retval);
  } else {
  }
  tmp___1 = pyra_sysfs_read(fp, kobj, buf, off, count, 19UL, 7U);
  return (tmp___1);
}
}
static struct bin_attribute bin_attr_profile1_settings = {{"profile1_settings", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, (void *)(& profile_numbers), & pyra_sysfs_read_profilex_settings, 0, 0};
static struct bin_attribute bin_attr_profile1_buttons = {{"profile1_buttons", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, (void *)(& profile_numbers), & pyra_sysfs_read_profilex_buttons, 0, 0};
static struct bin_attribute bin_attr_profile2_settings = {{"profile2_settings", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, (void *)(& profile_numbers) + 1U, & pyra_sysfs_read_profilex_settings, 0,
    0};
static struct bin_attribute bin_attr_profile2_buttons = {{"profile2_buttons", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, (void *)(& profile_numbers) + 1U, & pyra_sysfs_read_profilex_buttons, 0,
    0};
static struct bin_attribute bin_attr_profile3_settings = {{"profile3_settings", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, (void *)(& profile_numbers) + 2U, & pyra_sysfs_read_profilex_settings, 0,
    0};
static struct bin_attribute bin_attr_profile3_buttons = {{"profile3_buttons", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, (void *)(& profile_numbers) + 2U, & pyra_sysfs_read_profilex_buttons, 0,
    0};
static struct bin_attribute bin_attr_profile4_settings = {{"profile4_settings", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, (void *)(& profile_numbers) + 3U, & pyra_sysfs_read_profilex_settings, 0,
    0};
static struct bin_attribute bin_attr_profile4_buttons = {{"profile4_buttons", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, (void *)(& profile_numbers) + 3U, & pyra_sysfs_read_profilex_buttons, 0,
    0};
static struct bin_attribute bin_attr_profile5_settings = {{"profile5_settings", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    13UL, (void *)(& profile_numbers) + 4U, & pyra_sysfs_read_profilex_settings, 0,
    0};
static struct bin_attribute bin_attr_profile5_buttons = {{"profile5_buttons", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    19UL, (void *)(& profile_numbers) + 4U, & pyra_sysfs_read_profilex_buttons, 0,
    0};
static ssize_t pyra_sysfs_write_settings(struct file *fp , struct kobject *kobj ,
                                         struct bin_attribute *attr , char *buf ,
                                         loff_t off , size_t count )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  struct usb_device *usb_dev ;
  struct device const *__mptr___0 ;
  struct usb_device *tmp___1 ;
  int retval ;
  struct pyra_roccat_report roccat_report ;
  struct pyra_settings const *settings ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (((struct device *)__mptr + 0xfffffffffffffff0UL)->parent)->parent;
  tmp = dev_get_drvdata((struct device const *)dev);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  __mptr___0 = (struct device const *)dev;
  tmp___1 = interface_to_usbdev((struct usb_interface *)__mptr___0 + 0xffffffffffffffd0UL);
  usb_dev = tmp___1;
  retval = 0;
  if (off != 0LL || count != 3UL) {
    return (-22L);
  } else {
  }
  settings = (struct pyra_settings const *)buf;
  if ((unsigned int )((unsigned char )settings->startup_profile) > 4U) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_16(& pyra->pyra_lock);
  retval = pyra_set_settings(usb_dev, settings);
  if (retval != 0) {
    ldv_mutex_unlock_17(& pyra->pyra_lock);
    return ((ssize_t )retval);
  } else {
  }
  profile_activated(pyra, (unsigned int )settings->startup_profile);
  roccat_report.type = 48U;
  roccat_report.value = (unsigned int )((uint8_t )settings->startup_profile) + 1U;
  roccat_report.key = 0U;
  roccat_report_event(pyra->chrdev_minor, (u8 const *)(& roccat_report));
  ldv_mutex_unlock_18(& pyra->pyra_lock);
  return (3L);
}
}
static ssize_t pyra_sysfs_read_settings(struct file *fp , struct kobject *kobj , struct bin_attribute *attr ,
                                        char *buf , loff_t off , size_t count )
{
  ssize_t tmp ;
  {
  tmp = pyra_sysfs_read(fp, kobj, buf, off, count, 3UL, 5U);
  return (tmp);
}
}
static struct bin_attribute bin_attr_settings = {{"settings", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    3UL, 0, & pyra_sysfs_read_settings, & pyra_sysfs_write_settings, 0};
static ssize_t pyra_sysfs_show_actual_cpi(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)(dev->parent)->parent);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  tmp___1 = snprintf(buf, 4096UL, "%d\n", pyra->actual_cpi);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_actual_cpi = {{"actual_cpi", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pyra_sysfs_show_actual_cpi, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0};
static ssize_t pyra_sysfs_show_actual_profile(struct device *dev , struct device_attribute *attr ,
                                              char *buf )
{
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  struct usb_device *usb_dev ;
  struct device const *__mptr ;
  struct usb_device *tmp___1 ;
  struct pyra_settings settings ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)(dev->parent)->parent);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  __mptr = (struct device const *)dev;
  tmp___1 = interface_to_usbdev((struct usb_interface *)__mptr + 0xffffffffffffffd0UL);
  usb_dev = tmp___1;
  ldv_mutex_lock_19(& pyra->pyra_lock);
  roccat_common2_receive(usb_dev, 5U, (void *)(& settings), 3U);
  ldv_mutex_unlock_20(& pyra->pyra_lock);
  tmp___2 = snprintf(buf, 4096UL, "%d\n", (int )settings.startup_profile);
  return ((ssize_t )tmp___2);
}
}
static struct device_attribute dev_attr_actual_profile = {{"actual_profile", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pyra_sysfs_show_actual_profile, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                   char const * , size_t ))0};
static struct device_attribute dev_attr_startup_profile = {{"startup_profile", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pyra_sysfs_show_actual_profile, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                   char const * , size_t ))0};
static ssize_t pyra_sysfs_show_firmware_version(struct device *dev , struct device_attribute *attr ,
                                                char *buf )
{
  struct pyra_device *pyra ;
  struct usb_device *usb_dev ;
  struct pyra_info info ;
  void *tmp ;
  void *tmp___0 ;
  struct device const *__mptr ;
  int tmp___1 ;
  {
  dev = (dev->parent)->parent;
  tmp = dev_get_drvdata((struct device const *)dev);
  tmp___0 = hid_get_drvdata((struct hid_device *)tmp);
  pyra = (struct pyra_device *)tmp___0;
  __mptr = (struct device const *)dev;
  usb_dev = interface_to_usbdev((struct usb_interface *)__mptr + 0xffffffffffffffd0UL);
  ldv_mutex_lock_21(& pyra->pyra_lock);
  roccat_common2_receive(usb_dev, 9U, (void *)(& info), 6U);
  ldv_mutex_unlock_22(& pyra->pyra_lock);
  tmp___1 = snprintf(buf, 4096UL, "%d\n", (int )info.firmware_version);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_firmware_version = {{"firmware_version", 288U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pyra_sysfs_show_firmware_version, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                     char const * , size_t ))0};
static struct attribute *pyra_attrs[5U] = { & dev_attr_actual_cpi.attr, & dev_attr_actual_profile.attr, & dev_attr_firmware_version.attr, & dev_attr_startup_profile.attr,
        (struct attribute *)0};
static struct bin_attribute *pyra_bin_attributes[16U] =
  { & bin_attr_control, & bin_attr_info, & bin_attr_profile_settings, & bin_attr_profile_buttons,
        & bin_attr_settings, & bin_attr_profile1_settings, & bin_attr_profile2_settings, & bin_attr_profile3_settings,
        & bin_attr_profile4_settings, & bin_attr_profile5_settings, & bin_attr_profile1_buttons, & bin_attr_profile2_buttons,
        & bin_attr_profile3_buttons, & bin_attr_profile4_buttons, & bin_attr_profile5_buttons, (struct bin_attribute *)0};
static struct attribute_group const pyra_group = {0, 0, (struct attribute **)(& pyra_attrs), (struct bin_attribute **)(& pyra_bin_attributes)};
static struct attribute_group const *pyra_groups[2U] = { & pyra_group, (struct attribute_group const *)0};
static int pyra_init_pyra_device_struct(struct usb_device *usb_dev , struct pyra_device *pyra )
{
  struct pyra_settings settings ;
  int retval ;
  int i ;
  struct lock_class_key __key ;
  {
  __mutex_init(& pyra->pyra_lock, "&pyra->pyra_lock", & __key);
  retval = pyra_get_settings(usb_dev, & settings);
  if (retval != 0) {
    return (retval);
  } else {
  }
  i = 0;
  goto ldv_29871;
  ldv_29870:
  retval = pyra_get_profile_settings(usb_dev, (struct pyra_profile_settings *)(& pyra->profile_settings) + (unsigned long )i,
                                     i);
  if (retval != 0) {
    return (retval);
  } else {
  }
  i = i + 1;
  ldv_29871: ;
  if (i <= 4) {
    goto ldv_29870;
  } else {
  }
  profile_activated(pyra, (unsigned int )settings.startup_profile);
  return (0);
}
}
static int pyra_init_specials(struct hid_device *hdev )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct usb_device *usb_dev ;
  struct usb_device *tmp ;
  struct pyra_device *pyra ;
  int retval ;
  void *tmp___0 ;
  {
  __mptr = (struct device const *)hdev->dev.parent;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  tmp = interface_to_usbdev(intf);
  usb_dev = tmp;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceProtocol == 2U) {
    tmp___0 = kzalloc(248UL, 208U);
    pyra = (struct pyra_device *)tmp___0;
    if ((unsigned long )pyra == (unsigned long )((struct pyra_device *)0)) {
      dev_err((struct device const *)(& hdev->dev), "can\'t alloc device descriptor\n");
      return (-12);
    } else {
    }
    hid_set_drvdata(hdev, (void *)pyra);
    retval = pyra_init_pyra_device_struct(usb_dev, pyra);
    if (retval != 0) {
      dev_err((struct device const *)(& hdev->dev), "couldn\'t init struct pyra_device\n");
      goto exit_free;
    } else {
    }
    retval = roccat_connect(pyra_class, hdev, 3);
    if (retval < 0) {
      dev_err((struct device const *)(& hdev->dev), "couldn\'t init char dev\n");
    } else {
      pyra->chrdev_minor = retval;
      pyra->roccat_claimed = 1;
    }
  } else {
    hid_set_drvdata(hdev, (void *)0);
  }
  return (0);
  exit_free:
  kfree((void const *)pyra);
  return (retval);
}
}
static void pyra_remove_specials(struct hid_device *hdev )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct pyra_device *pyra ;
  void *tmp ;
  void *tmp___0 ;
  {
  __mptr = (struct device const *)hdev->dev.parent;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceProtocol == 2U) {
    tmp = hid_get_drvdata(hdev);
    pyra = (struct pyra_device *)tmp;
    if (pyra->roccat_claimed != 0) {
      roccat_disconnect(pyra->chrdev_minor);
    } else {
    }
    tmp___0 = hid_get_drvdata(hdev);
    kfree((void const *)tmp___0);
  } else {
  }
  return;
}
}
static int pyra_probe(struct hid_device *hdev , struct hid_device_id const *id )
{
  int retval ;
  {
  retval = hid_parse(hdev);
  if (retval != 0) {
    dev_err((struct device const *)(& hdev->dev), "parse failed\n");
    goto exit;
  } else {
  }
  retval = hid_hw_start(hdev, 45U);
  if (retval != 0) {
    dev_err((struct device const *)(& hdev->dev), "hw start failed\n");
    goto exit;
  } else {
  }
  retval = pyra_init_specials(hdev);
  if (retval != 0) {
    dev_err((struct device const *)(& hdev->dev), "couldn\'t install mouse\n");
    goto exit_stop;
  } else {
  }
  return (0);
  exit_stop:
  hid_hw_stop(hdev);
  exit: ;
  return (retval);
}
}
static void pyra_remove(struct hid_device *hdev )
{
  {
  pyra_remove_specials(hdev);
  hid_hw_stop(hdev);
  return;
}
}
static void pyra_keep_values_up_to_date(struct pyra_device *pyra , u8 const *data )
{
  struct pyra_mouse_event_button const *button_event ;
  {
  switch ((int )*data) {
  case 3:
  button_event = (struct pyra_mouse_event_button const *)data;
  switch ((int )button_event->type) {
  case 48:
  profile_activated(pyra, (unsigned int )((int )button_event->data1 + -1));
  goto ldv_29907;
  case 176:
  pyra->actual_cpi = (int )button_event->data1;
  goto ldv_29907;
  }
  ldv_29907: ;
  goto ldv_29909;
  }
  ldv_29909: ;
  return;
}
}
static void pyra_report_to_chrdev(struct pyra_device const *pyra , u8 const *data )
{
  struct pyra_roccat_report roccat_report ;
  struct pyra_mouse_event_button const *button_event ;
  {
  if ((unsigned int )((unsigned char )*data) != 3U) {
    return;
  } else {
  }
  button_event = (struct pyra_mouse_event_button const *)data;
  switch ((int )button_event->type) {
  case 48: ;
  case 176:
  roccat_report.type = button_event->type;
  roccat_report.value = button_event->data1;
  roccat_report.key = 0U;
  roccat_report_event(pyra->chrdev_minor, (u8 const *)(& roccat_report));
  goto ldv_29918;
  case 64: ;
  case 80: ;
  case 96: ;
  if ((unsigned int )((unsigned char )button_event->data2) == 0U) {
    roccat_report.type = button_event->type;
    roccat_report.key = button_event->data1;
    roccat_report.value = (unsigned int )((uint8_t )pyra->actual_profile) + 1U;
    roccat_report_event(pyra->chrdev_minor, (u8 const *)(& roccat_report));
  } else {
  }
  goto ldv_29918;
  }
  ldv_29918: ;
  return;
}
}
static int pyra_raw_event(struct hid_device *hdev , struct hid_report *report , u8 *data ,
                          int size )
{
  struct usb_interface *intf ;
  struct device const *__mptr ;
  struct pyra_device *pyra ;
  void *tmp ;
  {
  __mptr = (struct device const *)hdev->dev.parent;
  intf = (struct usb_interface *)__mptr + 0xffffffffffffffd0UL;
  tmp = hid_get_drvdata(hdev);
  pyra = (struct pyra_device *)tmp;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceProtocol != 2U) {
    return (0);
  } else {
  }
  if ((unsigned long )pyra == (unsigned long )((struct pyra_device *)0)) {
    return (0);
  } else {
  }
  pyra_keep_values_up_to_date(pyra, (u8 const *)data);
  if (pyra->roccat_claimed != 0) {
    pyra_report_to_chrdev((struct pyra_device const *)pyra, (u8 const *)data);
  } else {
  }
  return (0);
}
}
static struct hid_device_id const pyra_devices[3U] = { {3U, (unsigned short)0, 7805U, 11300U, 0UL},
        {3U, (unsigned short)0, 7805U, 11510U, 0UL}};
struct hid_device_id const __mod_hid__pyra_devices_device_table[3U] ;
static struct hid_driver pyra_driver =
     {(char *)"pyra", (struct hid_device_id const *)(& pyra_devices), {0, 0}, {{{{{0}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
    & pyra_probe, & pyra_remove, 0, & pyra_raw_event, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}};
static int pyra_init(void)
{
  int retval ;
  struct lock_class_key __key ;
  struct class *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = __class_create(& __this_module, "pyra", & __key);
  pyra_class = tmp;
  tmp___1 = IS_ERR((void const *)pyra_class);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)pyra_class);
    return ((int )tmp___0);
  } else {
  }
  pyra_class->dev_groups = (struct attribute_group const **)(& pyra_groups);
  retval = __hid_register_driver(& pyra_driver, & __this_module, "hid_roccat_pyra");
  if (retval != 0) {
    class_destroy(pyra_class);
  } else {
  }
  return (retval);
}
}
static void pyra_exit(void)
{
  {
  hid_unregister_driver(& pyra_driver);
  class_destroy(pyra_class);
  return;
}
}
extern int ldv_probe_16(void) ;
extern int ldv_release_14(void) ;
extern int ldv_release_20(void) ;
extern int ldv_release_11(void) ;
extern int ldv_release_9(void) ;
extern int ldv_probe_11(void) ;
int ldv_retval_0 ;
extern int ldv_release_12(void) ;
int ldv_retval_1 ;
extern int ldv_release_19(void) ;
extern int ldv_probe_10(void) ;
extern int ldv_probe_20(void) ;
extern int ldv_probe_13(void) ;
extern int ldv_probe_8(void) ;
extern int ldv_probe_14(void) ;
void ldv_check_final_state(void) ;
extern int ldv_probe_7(void) ;
extern int ldv_probe_18(void) ;
extern int ldv_release_7(void) ;
extern int ldv_probe_19(void) ;
extern int ldv_release_8(void) ;
extern int ldv_release_16(void) ;
extern void ldv_initialize(void) ;
extern int ldv_release_18(void) ;
extern int ldv_release_10(void) ;
extern int ldv_release_13(void) ;
extern int ldv_release_6(void) ;
extern int ldv_probe_17(void) ;
extern int ldv_probe_15(void) ;
extern int ldv_release_17(void) ;
extern int ldv_probe_9(void) ;
extern int ldv_probe_12(void) ;
extern int ldv_release_15(void) ;
extern int ldv_probe_6(void) ;
void ldv_initialize_bin_attribute_17(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_profile_buttons_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_profile_buttons_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_profile_buttons_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_initialize_bin_attribute_18(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_profile_settings_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_profile_settings_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_profile_settings_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_initialize_bin_attribute_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_settings_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_settings_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_settings_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void ldv_initialize_hid_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(8592UL);
  pyra_driver_group0 = (struct hid_device *)tmp;
  return;
}
}
void ldv_initialize_bin_attribute_19(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  bin_attr_info_group0 = (struct kobject *)tmp;
  tmp___0 = __VERIFIER_nondet_pointer();
  bin_attr_info_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  bin_attr_info_group2 = (struct bin_attribute *)tmp___1;
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
  struct file *ldvarg8 ;
  void *tmp___3 ;
  loff_t ldvarg11 ;
  char *ldvarg7 ;
  void *tmp___4 ;
  struct kobject *ldvarg10 ;
  void *tmp___5 ;
  struct bin_attribute *ldvarg9 ;
  void *tmp___6 ;
  size_t ldvarg6 ;
  loff_t ldvarg17 ;
  loff_t ldvarg14 ;
  char *ldvarg13 ;
  void *tmp___7 ;
  size_t ldvarg12 ;
  char *ldvarg16 ;
  void *tmp___8 ;
  size_t ldvarg15 ;
  struct device *ldvarg18 ;
  void *tmp___9 ;
  struct device_attribute *ldvarg20 ;
  void *tmp___10 ;
  char *ldvarg19 ;
  void *tmp___11 ;
  struct hid_report *ldvarg24 ;
  void *tmp___12 ;
  struct hid_device_id *ldvarg21 ;
  void *tmp___13 ;
  u8 *ldvarg23 ;
  void *tmp___14 ;
  int ldvarg22 ;
  loff_t ldvarg27 ;
  char *ldvarg26 ;
  void *tmp___15 ;
  size_t ldvarg25 ;
  char *ldvarg29 ;
  void *tmp___16 ;
  size_t ldvarg28 ;
  loff_t ldvarg30 ;
  struct kobject *ldvarg35 ;
  void *tmp___17 ;
  char *ldvarg32 ;
  void *tmp___18 ;
  size_t ldvarg31 ;
  loff_t ldvarg36 ;
  struct bin_attribute *ldvarg34 ;
  void *tmp___19 ;
  struct file *ldvarg33 ;
  void *tmp___20 ;
  struct file *ldvarg39 ;
  void *tmp___21 ;
  size_t ldvarg37 ;
  struct kobject *ldvarg41 ;
  void *tmp___22 ;
  loff_t ldvarg42 ;
  struct bin_attribute *ldvarg40 ;
  void *tmp___23 ;
  char *ldvarg38 ;
  void *tmp___24 ;
  loff_t ldvarg48 ;
  loff_t ldvarg45 ;
  size_t ldvarg43 ;
  char *ldvarg44 ;
  void *tmp___25 ;
  char *ldvarg47 ;
  void *tmp___26 ;
  size_t ldvarg46 ;
  struct device_attribute *ldvarg51 ;
  void *tmp___27 ;
  struct device *ldvarg49 ;
  void *tmp___28 ;
  char *ldvarg50 ;
  void *tmp___29 ;
  loff_t ldvarg57 ;
  struct file *ldvarg54 ;
  void *tmp___30 ;
  char *ldvarg53 ;
  void *tmp___31 ;
  struct bin_attribute *ldvarg55 ;
  void *tmp___32 ;
  struct kobject *ldvarg56 ;
  void *tmp___33 ;
  size_t ldvarg52 ;
  loff_t ldvarg63 ;
  size_t ldvarg58 ;
  struct bin_attribute *ldvarg61 ;
  void *tmp___34 ;
  struct file *ldvarg60 ;
  void *tmp___35 ;
  char *ldvarg59 ;
  void *tmp___36 ;
  struct kobject *ldvarg62 ;
  void *tmp___37 ;
  char *ldvarg65 ;
  void *tmp___38 ;
  struct bin_attribute *ldvarg67 ;
  void *tmp___39 ;
  struct file *ldvarg66 ;
  void *tmp___40 ;
  size_t ldvarg64 ;
  struct kobject *ldvarg68 ;
  void *tmp___41 ;
  loff_t ldvarg69 ;
  struct bin_attribute *ldvarg73 ;
  void *tmp___42 ;
  size_t ldvarg70 ;
  struct kobject *ldvarg74 ;
  void *tmp___43 ;
  char *ldvarg71 ;
  void *tmp___44 ;
  struct file *ldvarg72 ;
  void *tmp___45 ;
  loff_t ldvarg75 ;
  loff_t ldvarg81 ;
  char *ldvarg77 ;
  void *tmp___46 ;
  struct bin_attribute *ldvarg79 ;
  void *tmp___47 ;
  struct kobject *ldvarg80 ;
  void *tmp___48 ;
  struct file *ldvarg78 ;
  void *tmp___49 ;
  size_t ldvarg76 ;
  struct bin_attribute *ldvarg85 ;
  void *tmp___50 ;
  struct file *ldvarg84 ;
  void *tmp___51 ;
  loff_t ldvarg87 ;
  size_t ldvarg82 ;
  struct kobject *ldvarg86 ;
  void *tmp___52 ;
  char *ldvarg83 ;
  void *tmp___53 ;
  struct device *ldvarg88 ;
  void *tmp___54 ;
  char *ldvarg89 ;
  void *tmp___55 ;
  struct device_attribute *ldvarg90 ;
  void *tmp___56 ;
  loff_t ldvarg93 ;
  char *ldvarg95 ;
  void *tmp___57 ;
  size_t ldvarg94 ;
  size_t ldvarg91 ;
  char *ldvarg92 ;
  void *tmp___58 ;
  loff_t ldvarg96 ;
  char *ldvarg98 ;
  void *tmp___59 ;
  loff_t ldvarg102 ;
  size_t ldvarg97 ;
  struct kobject *ldvarg101 ;
  void *tmp___60 ;
  struct bin_attribute *ldvarg100 ;
  void *tmp___61 ;
  struct file *ldvarg99 ;
  void *tmp___62 ;
  char *ldvarg104 ;
  void *tmp___63 ;
  struct device_attribute *ldvarg105 ;
  void *tmp___64 ;
  struct device *ldvarg103 ;
  void *tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  int tmp___70 ;
  int tmp___71 ;
  int tmp___72 ;
  int tmp___73 ;
  int tmp___74 ;
  int tmp___75 ;
  int tmp___76 ;
  int tmp___77 ;
  int tmp___78 ;
  int tmp___79 ;
  int tmp___80 ;
  int tmp___81 ;
  int tmp___82 ;
  int tmp___83 ;
  int tmp___84 ;
  int tmp___85 ;
  int tmp___86 ;
  int tmp___87 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(296UL);
  ldvarg4 = (struct kobject *)tmp___0;
  tmp___1 = ldv_init_zalloc(72UL);
  ldvarg3 = (struct bin_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_pointer();
  ldvarg2 = (struct file *)tmp___2;
  tmp___3 = __VERIFIER_nondet_pointer();
  ldvarg8 = (struct file *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(296UL);
  ldvarg10 = (struct kobject *)tmp___5;
  tmp___6 = ldv_init_zalloc(72UL);
  ldvarg9 = (struct bin_attribute *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg16 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1416UL);
  ldvarg18 = (struct device *)tmp___9;
  tmp___10 = ldv_init_zalloc(48UL);
  ldvarg20 = (struct device_attribute *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(2088UL);
  ldvarg24 = (struct hid_report *)tmp___12;
  tmp___13 = ldv_init_zalloc(24UL);
  ldvarg21 = (struct hid_device_id *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg23 = (u8 *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(296UL);
  ldvarg35 = (struct kobject *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(72UL);
  ldvarg34 = (struct bin_attribute *)tmp___19;
  tmp___20 = __VERIFIER_nondet_pointer();
  ldvarg33 = (struct file *)tmp___20;
  tmp___21 = __VERIFIER_nondet_pointer();
  ldvarg39 = (struct file *)tmp___21;
  tmp___22 = ldv_init_zalloc(296UL);
  ldvarg41 = (struct kobject *)tmp___22;
  tmp___23 = ldv_init_zalloc(72UL);
  ldvarg40 = (struct bin_attribute *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg38 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg44 = (char *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg47 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(48UL);
  ldvarg51 = (struct device_attribute *)tmp___27;
  tmp___28 = ldv_init_zalloc(1416UL);
  ldvarg49 = (struct device *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___29;
  tmp___30 = __VERIFIER_nondet_pointer();
  ldvarg54 = (struct file *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(72UL);
  ldvarg55 = (struct bin_attribute *)tmp___32;
  tmp___33 = ldv_init_zalloc(296UL);
  ldvarg56 = (struct kobject *)tmp___33;
  tmp___34 = ldv_init_zalloc(72UL);
  ldvarg61 = (struct bin_attribute *)tmp___34;
  tmp___35 = __VERIFIER_nondet_pointer();
  ldvarg60 = (struct file *)tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___36;
  tmp___37 = ldv_init_zalloc(296UL);
  ldvarg62 = (struct kobject *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg65 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(72UL);
  ldvarg67 = (struct bin_attribute *)tmp___39;
  tmp___40 = __VERIFIER_nondet_pointer();
  ldvarg66 = (struct file *)tmp___40;
  tmp___41 = ldv_init_zalloc(296UL);
  ldvarg68 = (struct kobject *)tmp___41;
  tmp___42 = ldv_init_zalloc(72UL);
  ldvarg73 = (struct bin_attribute *)tmp___42;
  tmp___43 = ldv_init_zalloc(296UL);
  ldvarg74 = (struct kobject *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___44;
  tmp___45 = __VERIFIER_nondet_pointer();
  ldvarg72 = (struct file *)tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg77 = (char *)tmp___46;
  tmp___47 = ldv_init_zalloc(72UL);
  ldvarg79 = (struct bin_attribute *)tmp___47;
  tmp___48 = ldv_init_zalloc(296UL);
  ldvarg80 = (struct kobject *)tmp___48;
  tmp___49 = __VERIFIER_nondet_pointer();
  ldvarg78 = (struct file *)tmp___49;
  tmp___50 = ldv_init_zalloc(72UL);
  ldvarg85 = (struct bin_attribute *)tmp___50;
  tmp___51 = __VERIFIER_nondet_pointer();
  ldvarg84 = (struct file *)tmp___51;
  tmp___52 = ldv_init_zalloc(296UL);
  ldvarg86 = (struct kobject *)tmp___52;
  tmp___53 = ldv_init_zalloc(1UL);
  ldvarg83 = (char *)tmp___53;
  tmp___54 = ldv_init_zalloc(1416UL);
  ldvarg88 = (struct device *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg89 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(48UL);
  ldvarg90 = (struct device_attribute *)tmp___56;
  tmp___57 = ldv_init_zalloc(1UL);
  ldvarg95 = (char *)tmp___57;
  tmp___58 = ldv_init_zalloc(1UL);
  ldvarg92 = (char *)tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg98 = (char *)tmp___59;
  tmp___60 = ldv_init_zalloc(296UL);
  ldvarg101 = (struct kobject *)tmp___60;
  tmp___61 = ldv_init_zalloc(72UL);
  ldvarg100 = (struct bin_attribute *)tmp___61;
  tmp___62 = __VERIFIER_nondet_pointer();
  ldvarg99 = (struct file *)tmp___62;
  tmp___63 = ldv_init_zalloc(1UL);
  ldvarg104 = (char *)tmp___63;
  tmp___64 = ldv_init_zalloc(48UL);
  ldvarg105 = (struct device_attribute *)tmp___64;
  tmp___65 = ldv_init_zalloc(1416UL);
  ldvarg103 = (struct device *)tmp___65;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg14), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 8UL);
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_memset((void *)(& ldvarg27), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg30), 0, 8UL);
  ldv_memset((void *)(& ldvarg31), 0, 8UL);
  ldv_memset((void *)(& ldvarg36), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 8UL);
  ldv_memset((void *)(& ldvarg42), 0, 8UL);
  ldv_memset((void *)(& ldvarg48), 0, 8UL);
  ldv_memset((void *)(& ldvarg45), 0, 8UL);
  ldv_memset((void *)(& ldvarg43), 0, 8UL);
  ldv_memset((void *)(& ldvarg46), 0, 8UL);
  ldv_memset((void *)(& ldvarg57), 0, 8UL);
  ldv_memset((void *)(& ldvarg52), 0, 8UL);
  ldv_memset((void *)(& ldvarg63), 0, 8UL);
  ldv_memset((void *)(& ldvarg58), 0, 8UL);
  ldv_memset((void *)(& ldvarg64), 0, 8UL);
  ldv_memset((void *)(& ldvarg69), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  ldv_memset((void *)(& ldvarg75), 0, 8UL);
  ldv_memset((void *)(& ldvarg81), 0, 8UL);
  ldv_memset((void *)(& ldvarg76), 0, 8UL);
  ldv_memset((void *)(& ldvarg87), 0, 8UL);
  ldv_memset((void *)(& ldvarg82), 0, 8UL);
  ldv_memset((void *)(& ldvarg93), 0, 8UL);
  ldv_memset((void *)(& ldvarg94), 0, 8UL);
  ldv_memset((void *)(& ldvarg91), 0, 8UL);
  ldv_memset((void *)(& ldvarg96), 0, 8UL);
  ldv_memset((void *)(& ldvarg102), 0, 8UL);
  ldv_memset((void *)(& ldvarg97), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_30315:
  tmp___66 = __VERIFIER_nondet_int();
  switch (tmp___66) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___67 = __VERIFIER_nondet_int();
    switch (tmp___67) {
    case 0: ;
    if (ldv_state_variable_11 == 2) {
      pyra_sysfs_read_profilex_buttons(ldvarg2, ldvarg4, ldvarg3, ldvarg1, ldvarg5,
                                       ldvarg0);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_30193;
    case 1: ;
    if (ldv_state_variable_11 == 2) {
      ldv_release_11();
      ldv_state_variable_11 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30193;
    case 2: ;
    if (ldv_state_variable_11 == 1) {
      ldv_probe_11();
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30193;
    default:
    ldv_stop();
    }
    ldv_30193: ;
  } else {
  }
  goto ldv_30197;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    tmp___68 = __VERIFIER_nondet_int();
    switch (tmp___68) {
    case 0: ;
    if (ldv_state_variable_7 == 2) {
      pyra_sysfs_read_profilex_buttons(ldvarg8, ldvarg10, ldvarg9, ldvarg7, ldvarg11,
                                       ldvarg6);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_30200;
    case 1: ;
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30200;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      ldv_probe_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30200;
    default:
    ldv_stop();
    }
    ldv_30200: ;
  } else {
  }
  goto ldv_30197;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    tmp___69 = __VERIFIER_nondet_int();
    switch (tmp___69) {
    case 0: ;
    if (ldv_state_variable_17 == 2) {
      pyra_sysfs_write_profile_buttons(bin_attr_profile_buttons_group1, bin_attr_profile_buttons_group0,
                                       bin_attr_profile_buttons_group2, ldvarg16,
                                       ldvarg17, ldvarg15);
      ldv_state_variable_17 = 2;
    } else {
    }
    goto ldv_30206;
    case 1: ;
    if (ldv_state_variable_17 == 2) {
      pyra_sysfs_read_profile_buttons(bin_attr_profile_buttons_group1, bin_attr_profile_buttons_group0,
                                      bin_attr_profile_buttons_group2, ldvarg13, ldvarg14,
                                      ldvarg12);
      ldv_state_variable_17 = 2;
    } else {
    }
    goto ldv_30206;
    case 2: ;
    if (ldv_state_variable_17 == 2) {
      ldv_release_17();
      ldv_state_variable_17 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30206;
    case 3: ;
    if (ldv_state_variable_17 == 1) {
      ldv_probe_17();
      ldv_state_variable_17 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30206;
    default:
    ldv_stop();
    }
    ldv_30206: ;
  } else {
  }
  goto ldv_30197;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___70 = __VERIFIER_nondet_int();
    switch (tmp___70) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      pyra_sysfs_show_firmware_version(ldvarg18, ldvarg20, ldvarg19);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_30213;
    default:
    ldv_stop();
    }
    ldv_30213: ;
  } else {
  }
  goto ldv_30197;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    tmp___71 = __VERIFIER_nondet_int();
    switch (tmp___71) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      pyra_raw_event(pyra_driver_group0, ldvarg24, ldvarg23, ldvarg22);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      pyra_raw_event(pyra_driver_group0, ldvarg24, ldvarg23, ldvarg22);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_30217;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = pyra_probe(pyra_driver_group0, (struct hid_device_id const *)ldvarg21);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30217;
    case 2: ;
    if (ldv_state_variable_1 == 2) {
      pyra_remove(pyra_driver_group0);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30217;
    default:
    ldv_stop();
    }
    ldv_30217: ;
  } else {
  }
  goto ldv_30197;
  case 5: ;
  if (ldv_state_variable_18 != 0) {
    tmp___72 = __VERIFIER_nondet_int();
    switch (tmp___72) {
    case 0: ;
    if (ldv_state_variable_18 == 2) {
      pyra_sysfs_write_profile_settings(bin_attr_profile_settings_group1, bin_attr_profile_settings_group0,
                                        bin_attr_profile_settings_group2, ldvarg29,
                                        ldvarg30, ldvarg28);
      ldv_state_variable_18 = 2;
    } else {
    }
    goto ldv_30223;
    case 1: ;
    if (ldv_state_variable_18 == 2) {
      pyra_sysfs_read_profile_settings(bin_attr_profile_settings_group1, bin_attr_profile_settings_group0,
                                       bin_attr_profile_settings_group2, ldvarg26,
                                       ldvarg27, ldvarg25);
      ldv_state_variable_18 = 2;
    } else {
    }
    goto ldv_30223;
    case 2: ;
    if (ldv_state_variable_18 == 2) {
      ldv_release_18();
      ldv_state_variable_18 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30223;
    case 3: ;
    if (ldv_state_variable_18 == 1) {
      ldv_probe_18();
      ldv_state_variable_18 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30223;
    default:
    ldv_stop();
    }
    ldv_30223: ;
  } else {
  }
  goto ldv_30197;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___73 = __VERIFIER_nondet_int();
    switch (tmp___73) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      pyra_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_30231;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = pyra_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_bin_attribute_19();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_20 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_bin_attribute_6();
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_initialize_bin_attribute_18();
        ldv_state_variable_1 = 1;
        ldv_initialize_hid_driver_1();
        ldv_state_variable_2 = 1;
        ldv_state_variable_17 = 1;
        ldv_initialize_bin_attribute_17();
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
    goto ldv_30231;
    default:
    ldv_stop();
    }
    ldv_30231: ;
  } else {
  }
  goto ldv_30197;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    tmp___74 = __VERIFIER_nondet_int();
    switch (tmp___74) {
    case 0: ;
    if (ldv_state_variable_16 == 2) {
      pyra_sysfs_read_profilex_settings(ldvarg33, ldvarg35, ldvarg34, ldvarg32, ldvarg36,
                                        ldvarg31);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_30236;
    case 1: ;
    if (ldv_state_variable_16 == 2) {
      ldv_release_16();
      ldv_state_variable_16 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30236;
    case 2: ;
    if (ldv_state_variable_16 == 1) {
      ldv_probe_16();
      ldv_state_variable_16 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30236;
    default:
    ldv_stop();
    }
    ldv_30236: ;
  } else {
  }
  goto ldv_30197;
  case 8: ;
  if (ldv_state_variable_13 != 0) {
    tmp___75 = __VERIFIER_nondet_int();
    switch (tmp___75) {
    case 0: ;
    if (ldv_state_variable_13 == 2) {
      pyra_sysfs_read_profilex_buttons(ldvarg39, ldvarg41, ldvarg40, ldvarg38, ldvarg42,
                                       ldvarg37);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_30242;
    case 1: ;
    if (ldv_state_variable_13 == 2) {
      ldv_release_13();
      ldv_state_variable_13 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30242;
    case 2: ;
    if (ldv_state_variable_13 == 1) {
      ldv_probe_13();
      ldv_state_variable_13 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30242;
    default:
    ldv_stop();
    }
    ldv_30242: ;
  } else {
  }
  goto ldv_30197;
  case 9: ;
  if (ldv_state_variable_6 != 0) {
    tmp___76 = __VERIFIER_nondet_int();
    switch (tmp___76) {
    case 0: ;
    if (ldv_state_variable_6 == 2) {
      pyra_sysfs_write_settings(bin_attr_settings_group1, bin_attr_settings_group0,
                                bin_attr_settings_group2, ldvarg47, ldvarg48, ldvarg46);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_30248;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      pyra_sysfs_read_settings(bin_attr_settings_group1, bin_attr_settings_group0,
                               bin_attr_settings_group2, ldvarg44, ldvarg45, ldvarg43);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_30248;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30248;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      ldv_probe_6();
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30248;
    default:
    ldv_stop();
    }
    ldv_30248: ;
  } else {
  }
  goto ldv_30197;
  case 10: ;
  if (ldv_state_variable_3 != 0) {
    tmp___77 = __VERIFIER_nondet_int();
    switch (tmp___77) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      pyra_sysfs_show_actual_profile(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_30255;
    default:
    ldv_stop();
    }
    ldv_30255: ;
  } else {
  }
  goto ldv_30197;
  case 11: ;
  if (ldv_state_variable_9 != 0) {
    tmp___78 = __VERIFIER_nondet_int();
    switch (tmp___78) {
    case 0: ;
    if (ldv_state_variable_9 == 2) {
      pyra_sysfs_read_profilex_buttons(ldvarg54, ldvarg56, ldvarg55, ldvarg53, ldvarg57,
                                       ldvarg52);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_30259;
    case 1: ;
    if (ldv_state_variable_9 == 2) {
      ldv_release_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30259;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      ldv_probe_9();
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30259;
    default:
    ldv_stop();
    }
    ldv_30259: ;
  } else {
  }
  goto ldv_30197;
  case 12: ;
  if (ldv_state_variable_12 != 0) {
    tmp___79 = __VERIFIER_nondet_int();
    switch (tmp___79) {
    case 0: ;
    if (ldv_state_variable_12 == 2) {
      pyra_sysfs_read_profilex_settings(ldvarg60, ldvarg62, ldvarg61, ldvarg59, ldvarg63,
                                        ldvarg58);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_30265;
    case 1: ;
    if (ldv_state_variable_12 == 2) {
      ldv_release_12();
      ldv_state_variable_12 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30265;
    case 2: ;
    if (ldv_state_variable_12 == 1) {
      ldv_probe_12();
      ldv_state_variable_12 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30265;
    default:
    ldv_stop();
    }
    ldv_30265: ;
  } else {
  }
  goto ldv_30197;
  case 13: ;
  if (ldv_state_variable_20 != 0) {
    tmp___80 = __VERIFIER_nondet_int();
    switch (tmp___80) {
    case 0: ;
    if (ldv_state_variable_20 == 2) {
      pyra_sysfs_write_control(ldvarg66, ldvarg68, ldvarg67, ldvarg65, ldvarg69, ldvarg64);
      ldv_state_variable_20 = 2;
    } else {
    }
    goto ldv_30271;
    case 1: ;
    if (ldv_state_variable_20 == 2) {
      ldv_release_20();
      ldv_state_variable_20 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30271;
    case 2: ;
    if (ldv_state_variable_20 == 1) {
      ldv_probe_20();
      ldv_state_variable_20 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30271;
    default:
    ldv_stop();
    }
    ldv_30271: ;
  } else {
  }
  goto ldv_30197;
  case 14: ;
  if (ldv_state_variable_14 != 0) {
    tmp___81 = __VERIFIER_nondet_int();
    switch (tmp___81) {
    case 0: ;
    if (ldv_state_variable_14 == 2) {
      pyra_sysfs_read_profilex_settings(ldvarg72, ldvarg74, ldvarg73, ldvarg71, ldvarg75,
                                        ldvarg70);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_30277;
    case 1: ;
    if (ldv_state_variable_14 == 2) {
      ldv_release_14();
      ldv_state_variable_14 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30277;
    case 2: ;
    if (ldv_state_variable_14 == 1) {
      ldv_probe_14();
      ldv_state_variable_14 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30277;
    default:
    ldv_stop();
    }
    ldv_30277: ;
  } else {
  }
  goto ldv_30197;
  case 15: ;
  if (ldv_state_variable_15 != 0) {
    tmp___82 = __VERIFIER_nondet_int();
    switch (tmp___82) {
    case 0: ;
    if (ldv_state_variable_15 == 2) {
      pyra_sysfs_read_profilex_buttons(ldvarg78, ldvarg80, ldvarg79, ldvarg77, ldvarg81,
                                       ldvarg76);
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_30283;
    case 1: ;
    if (ldv_state_variable_15 == 2) {
      ldv_release_15();
      ldv_state_variable_15 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30283;
    case 2: ;
    if (ldv_state_variable_15 == 1) {
      ldv_probe_15();
      ldv_state_variable_15 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30283;
    default:
    ldv_stop();
    }
    ldv_30283: ;
  } else {
  }
  goto ldv_30197;
  case 16: ;
  if (ldv_state_variable_8 != 0) {
    tmp___83 = __VERIFIER_nondet_int();
    switch (tmp___83) {
    case 0: ;
    if (ldv_state_variable_8 == 2) {
      pyra_sysfs_read_profilex_settings(ldvarg84, ldvarg86, ldvarg85, ldvarg83, ldvarg87,
                                        ldvarg82);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_30289;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30289;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      ldv_probe_8();
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30289;
    default:
    ldv_stop();
    }
    ldv_30289: ;
  } else {
  }
  goto ldv_30197;
  case 17: ;
  if (ldv_state_variable_4 != 0) {
    tmp___84 = __VERIFIER_nondet_int();
    switch (tmp___84) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      pyra_sysfs_show_actual_profile(ldvarg88, ldvarg90, ldvarg89);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_30295;
    default:
    ldv_stop();
    }
    ldv_30295: ;
  } else {
  }
  goto ldv_30197;
  case 18: ;
  if (ldv_state_variable_19 != 0) {
    tmp___85 = __VERIFIER_nondet_int();
    switch (tmp___85) {
    case 0: ;
    if (ldv_state_variable_19 == 2) {
      pyra_sysfs_write_info(bin_attr_info_group1, bin_attr_info_group0, bin_attr_info_group2,
                            ldvarg95, ldvarg96, ldvarg94);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_30299;
    case 1: ;
    if (ldv_state_variable_19 == 2) {
      pyra_sysfs_read_info(bin_attr_info_group1, bin_attr_info_group0, bin_attr_info_group2,
                           ldvarg92, ldvarg93, ldvarg91);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_30299;
    case 2: ;
    if (ldv_state_variable_19 == 2) {
      ldv_release_19();
      ldv_state_variable_19 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30299;
    case 3: ;
    if (ldv_state_variable_19 == 1) {
      ldv_probe_19();
      ldv_state_variable_19 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30299;
    default:
    ldv_stop();
    }
    ldv_30299: ;
  } else {
  }
  goto ldv_30197;
  case 19: ;
  if (ldv_state_variable_10 != 0) {
    tmp___86 = __VERIFIER_nondet_int();
    switch (tmp___86) {
    case 0: ;
    if (ldv_state_variable_10 == 2) {
      pyra_sysfs_read_profilex_settings(ldvarg99, ldvarg101, ldvarg100, ldvarg98,
                                        ldvarg102, ldvarg97);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_30306;
    case 1: ;
    if (ldv_state_variable_10 == 2) {
      ldv_release_10();
      ldv_state_variable_10 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30306;
    case 2: ;
    if (ldv_state_variable_10 == 1) {
      ldv_probe_10();
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_30306;
    default:
    ldv_stop();
    }
    ldv_30306: ;
  } else {
  }
  goto ldv_30197;
  case 20: ;
  if (ldv_state_variable_5 != 0) {
    tmp___87 = __VERIFIER_nondet_int();
    switch (tmp___87) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      pyra_sysfs_show_actual_cpi(ldvarg103, ldvarg105, ldvarg104);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_30312;
    default:
    ldv_stop();
    }
    ldv_30312: ;
  } else {
  }
  goto ldv_30197;
  default:
  ldv_stop();
  }
  ldv_30197: ;
  goto ldv_30315;
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
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
static int ldv_mutex_pyra_lock_of_pyra_device = 1;
int ldv_mutex_lock_interruptible_pyra_lock_of_pyra_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_pyra_lock_of_pyra_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_pyra_lock_of_pyra_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_pyra_lock_of_pyra_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_pyra_lock_of_pyra_device(struct mutex *lock )
{
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_pyra_lock_of_pyra_device = 2;
  return;
}
}
int ldv_mutex_trylock_pyra_lock_of_pyra_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_pyra_lock_of_pyra_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_pyra_lock_of_pyra_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_pyra_lock_of_pyra_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_pyra_lock_of_pyra_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pyra_lock_of_pyra_device == 1) {
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
void ldv_mutex_unlock_pyra_lock_of_pyra_device(struct mutex *lock )
{
  {
  if (ldv_mutex_pyra_lock_of_pyra_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_pyra_lock_of_pyra_device = 1;
  return;
}
}
void ldv_usb_lock_device_pyra_lock_of_pyra_device(void)
{
  {
  ldv_mutex_lock_pyra_lock_of_pyra_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_pyra_lock_of_pyra_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_pyra_lock_of_pyra_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_pyra_lock_of_pyra_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_pyra_lock_of_pyra_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_pyra_lock_of_pyra_device(void)
{
  {
  ldv_mutex_unlock_pyra_lock_of_pyra_device((struct mutex *)0);
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
  if (ldv_mutex_pyra_lock_of_pyra_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void *external_alloc(void);
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  return (struct class *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __hid_register_driver(struct hid_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void class_destroy(struct class *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int hid_connect(struct hid_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void hid_disconnect(struct hid_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int hid_open_report(struct hid_device *arg0) {
  return __VERIFIER_nondet_int();
}
void hid_unregister_driver(struct hid_driver *arg0) {
  return;
}
void ldv_initialize() {
  return;
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
int ldv_probe_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_13() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_16() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_18() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_19() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_20() {
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
int ldv_release_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_13() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_16() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_18() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_19() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_20() {
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
int __VERIFIER_nondet_int(void);
int roccat_common2_receive(struct usb_device *arg0, uint arg1, void *arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int roccat_common2_send(struct usb_device *arg0, uint arg1, const void *arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int roccat_common2_send_with_status(struct usb_device *arg0, uint arg1, const void *arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int roccat_connect(struct class *arg0, struct hid_device *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void roccat_disconnect(int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int roccat_report_event(int arg0, const u8 *arg1) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
