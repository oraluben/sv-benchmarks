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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
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
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
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
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
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
typedef void (*ctor_fn_t)(void);
struct net_device;
struct file_operations;
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
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
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
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
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
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
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
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
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
union __anonunion____missing_field_name_47 {
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
   union __anonunion____missing_field_name_47 __annonCompField21 ;
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
struct vm_operations_struct;
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
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_50 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_50 nodemask_t;
struct path;
struct inode;
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
   void (*detach)(struct device * , bool ) ;
};
struct ctl_table;
struct pci_dev;
struct pci_bus;
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
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_142 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_142 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2,
    PM_QOS_SUM = 3
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_143 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_143 __annonCompField32 ;
   unsigned long nr_segs ;
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
struct __anonstruct____missing_field_name_149 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_150 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_148 {
   struct __anonstruct____missing_field_name_149 __annonCompField35 ;
   struct __anonstruct____missing_field_name_150 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_148 __annonCompField37 ;
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
union __anonunion____missing_field_name_151 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_153 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_157 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_156 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_157 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_155 {
   union __anonunion____missing_field_name_156 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_154 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_155 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   union __anonunion____missing_field_name_154 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_159 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_160 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_158 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_159 __annonCompField45 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_160 __annonCompField46 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_161 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_151 __annonCompField38 ;
   struct __anonstruct____missing_field_name_152 __annonCompField44 ;
   union __anonunion____missing_field_name_158 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_162 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
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
   struct __anonstruct_shared_162 shared ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct pid;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_165 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_165 sync_serial_settings;
struct __anonstruct_te1_settings_166 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_166 te1_settings;
struct __anonstruct_raw_hdlc_proto_167 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_167 raw_hdlc_proto;
struct __anonstruct_fr_proto_168 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_168 fr_proto;
struct __anonstruct_fr_proto_pvc_169 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_169 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_170 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_170 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_171 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_171 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_172 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_172 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_173 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_174 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_173 ifr_ifrn ;
   union __anonunion_ifr_ifru_174 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_177 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_176 {
   struct __anonstruct____missing_field_name_177 __annonCompField49 ;
};
struct lockref {
   union __anonunion____missing_field_name_176 __annonCompField50 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_179 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_178 {
   struct __anonstruct____missing_field_name_179 __annonCompField51 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_178 __annonCompField52 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_180 {
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
   union __anonunion_d_u_180 d_u ;
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
struct __anonstruct____missing_field_name_182 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_181 {
   struct __anonstruct____missing_field_name_182 __annonCompField53 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_181 __annonCompField54 ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct backing_dev_info;
struct export_operations;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct __anonstruct_kprojid_t_185 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_185 kprojid_t;
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
union __anonunion____missing_field_name_186 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_186 __annonCompField56 ;
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
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
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
struct hd_struct;
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
union __anonunion____missing_field_name_189 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_190 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_191 {
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
   union __anonunion____missing_field_name_189 __annonCompField57 ;
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
   union __anonunion____missing_field_name_190 __annonCompField58 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_191 __annonCompField59 ;
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
union __anonunion_f_u_192 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_192 f_u ;
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
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct net;
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
struct __anonstruct_afs_194 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_193 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_194 afs ;
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
   union __anonunion_fl_u_193 fl_u ;
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
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
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
typedef unsigned long cputime_t;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_195 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_195 sigset_t;
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
struct __anonstruct__kill_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_198 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_199 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_200 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_202 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_201 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_202 _addr_bnd ;
};
struct __anonstruct__sigpoll_203 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_204 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_196 {
   int _pad[28U] ;
   struct __anonstruct__kill_197 _kill ;
   struct __anonstruct__timer_198 _timer ;
   struct __anonstruct__rt_199 _rt ;
   struct __anonstruct__sigchld_200 _sigchld ;
   struct __anonstruct__sigfault_201 _sigfault ;
   struct __anonstruct__sigpoll_203 _sigpoll ;
   struct __anonstruct__sigsys_204 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_196 _sifields ;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
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
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
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
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_208 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct____missing_field_name_208 __annonCompField60 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_207 __annonCompField61 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
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
union __anonunion____missing_field_name_209 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_210 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_212 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_211 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_212 __annonCompField64 ;
};
union __anonunion_type_data_213 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_215 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_214 {
   union __anonunion_payload_215 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_209 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_210 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_211 __annonCompField65 ;
   union __anonunion_type_data_213 type_data ;
   union __anonunion____missing_field_name_214 __annonCompField66 ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct uts_namespace;
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
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
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
   int link_count ;
   int total_link_count ;
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
enum ldv_22914 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22914 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
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
typedef u64 netdev_features_t;
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_235 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_235 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   u32 tskey ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_237 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_236 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_237 __annonCompField71 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_236 __annonCompField72 ;
};
union __anonunion____missing_field_name_240 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_239 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_240 __annonCompField73 ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField74 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_242 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_241 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_242 __annonCompField76 ;
};
union __anonunion____missing_field_name_243 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_244 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_245 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_238 __annonCompField75 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_241 __annonCompField77 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_243 __annonCompField78 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_244 __annonCompField79 ;
   union __anonunion____missing_field_name_245 __annonCompField80 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
enum pkt_hash_types {
    PKT_HASH_TYPE_NONE = 0,
    PKT_HASH_TYPE_L2 = 1,
    PKT_HASH_TYPE_L3 = 2,
    PKT_HASH_TYPE_L4 = 3
} ;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char erom_version[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
union __anonunion_in6_u_248 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_248 in6_u ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[113U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct sock **tcp_sk ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   unsigned int base_seq ;
   u8 gencursor ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   struct idr netns_ids ;
   struct ns_common ns ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_27644 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27644 phy_interface_t;
enum ldv_27697 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27697 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
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
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
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
struct cgroup_taskset;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct hrtimer timer ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_item_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_switch_parent_id_get)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_switch_port_stp_update)(struct net_device * , u8 ) ;
};
struct __anonstruct_adj_list_264 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_265 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_266 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_264 adj_list ;
   struct __anonstruct_all_adj_list_265 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   struct wpan_dev *ieee802154_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_266 __annonCompField86 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
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
union __anonunion____missing_field_name_267 {
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
   union __anonunion____missing_field_name_267 __annonCompField87 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
union __anonunion____missing_field_name_272 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_272 __annonCompField88 ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 accept_ra_from_local ;
   __s32 optimistic_dad ;
   __s32 use_optimistic ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   __s32 accept_ra_mtu ;
   void *sysctl ;
};
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_278 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_278 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_283 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   u32 len ;
   struct sock_fprog_kern *orig_prog ;
   struct bpf_prog_aux *aux ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_283 __annonCompField93 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
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
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_285 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_285 __annonCompField94 ;
};
struct __anonstruct_socket_lock_t_286 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_286 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_288 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_287 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_288 __annonCompField95 ;
};
union __anonunion____missing_field_name_289 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_291 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_290 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_291 __annonCompField98 ;
};
union __anonunion____missing_field_name_292 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_293 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_287 __annonCompField96 ;
   union __anonunion____missing_field_name_289 __annonCompField97 ;
   union __anonunion____missing_field_name_290 __annonCompField99 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_292 __annonCompField100 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_293 __annonCompField101 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_294 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_294 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_295 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_295 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6 ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   __u8 addr_gen_mode ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_306 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_306 __annonCompField103 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_307 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_309 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_308 {
   struct __anonstruct____missing_field_name_309 __annonCompField105 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[16U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_307 __annonCompField104 ;
   union __anonunion____missing_field_name_308 __annonCompField106 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   int total ;
};
struct uncached_list;
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
   struct uncached_list *rt_uncached_list ;
};
struct __anonstruct_near_311 {
   u16 index ;
   u16 dist ;
};
struct cpu_rmap {
   struct kref refcount ;
   u16 size ;
   u16 used ;
   void **obj ;
   struct __anonstruct_near_311 near[0U] ;
};
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct fs_pin;
struct pid_namespace {
   struct kref kref ;
   struct pidmap pidmap[128U] ;
   struct callback_head rcu ;
   int last_pid ;
   unsigned int nr_hashed ;
   struct task_struct *child_reaper ;
   struct kmem_cache *pid_cachep ;
   unsigned int level ;
   struct pid_namespace *parent ;
   struct vfsmount *proc_mnt ;
   struct dentry *proc_self ;
   struct dentry *proc_thread_self ;
   struct fs_pin *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   struct ns_common ns ;
};
struct cq_desc {
   __le16 completed_index ;
   __le16 q_number ;
   u8 type_specfic[11U] ;
   u8 type_color ;
};
struct cq_enet_rq_desc {
   __le16 completed_index_flags ;
   __le16 q_number_rss_type_flags ;
   __le32 rss_hash ;
   __le16 bytes_written_flags ;
   __le16 vlan ;
   __le16 checksum_fcoe ;
   u8 flags ;
   u8 type_color ;
};
enum vnic_dev_intr_mode {
    VNIC_DEV_INTR_MODE_UNKNOWN = 0,
    VNIC_DEV_INTR_MODE_INTX = 1,
    VNIC_DEV_INTR_MODE_MSI = 2,
    VNIC_DEV_INTR_MODE_MSIX = 3
} ;
struct vnic_dev_bar {
   void *vaddr ;
   dma_addr_t bus_addr ;
   unsigned long len ;
};
struct vnic_dev_ring {
   void *descs ;
   size_t size ;
   dma_addr_t base_addr ;
   size_t base_align ;
   void *descs_unaligned ;
   size_t size_unaligned ;
   dma_addr_t base_addr_unaligned ;
   unsigned int desc_size ;
   unsigned int desc_count ;
   unsigned int desc_avail ;
};
struct vnic_dev;
struct vnic_stats;
struct vnic_intr_ctrl {
   u32 coalescing_timer ;
   u32 pad0 ;
   u32 coalescing_value ;
   u32 pad1 ;
   u32 coalescing_type ;
   u32 pad2 ;
   u32 mask_on_assertion ;
   u32 pad3 ;
   u32 mask ;
   u32 pad4 ;
   u32 int_credits ;
   u32 pad5 ;
   u32 int_credit_return ;
   u32 pad6 ;
};
struct vnic_intr {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_intr_ctrl *ctrl ;
};
struct vnic_tx_stats {
   u64 tx_frames_ok ;
   u64 tx_unicast_frames_ok ;
   u64 tx_multicast_frames_ok ;
   u64 tx_broadcast_frames_ok ;
   u64 tx_bytes_ok ;
   u64 tx_unicast_bytes_ok ;
   u64 tx_multicast_bytes_ok ;
   u64 tx_broadcast_bytes_ok ;
   u64 tx_drops ;
   u64 tx_errors ;
   u64 tx_tso ;
   u64 rsvd[16U] ;
};
struct vnic_rx_stats {
   u64 rx_frames_ok ;
   u64 rx_frames_total ;
   u64 rx_unicast_frames_ok ;
   u64 rx_multicast_frames_ok ;
   u64 rx_broadcast_frames_ok ;
   u64 rx_bytes_ok ;
   u64 rx_unicast_bytes_ok ;
   u64 rx_multicast_bytes_ok ;
   u64 rx_broadcast_bytes_ok ;
   u64 rx_drop ;
   u64 rx_no_bufs ;
   u64 rx_errors ;
   u64 rx_rss ;
   u64 rx_crc_errors ;
   u64 rx_frames_64 ;
   u64 rx_frames_127 ;
   u64 rx_frames_255 ;
   u64 rx_frames_511 ;
   u64 rx_frames_1023 ;
   u64 rx_frames_1518 ;
   u64 rx_frames_to_max ;
   u64 rsvd[16U] ;
};
struct vnic_gen_stats {
   u64 dma_map_error ;
};
struct vnic_stats {
   struct vnic_tx_stats tx ;
   struct vnic_rx_stats rx ;
};
struct wq_enet_desc {
   __le64 address ;
   __le16 length ;
   __le16 mss_loopback ;
   __le16 header_length_flags ;
   __le16 vlan_tag ;
};
struct rq_enet_desc {
   __le64 address ;
   __le16 length_type ;
   u8 reserved[6U] ;
};
struct vnic_cq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 flow_control_enable ;
   u32 pad1 ;
   u32 color_enable ;
   u32 pad2 ;
   u32 cq_head ;
   u32 pad3 ;
   u32 cq_tail ;
   u32 pad4 ;
   u32 cq_tail_color ;
   u32 pad5 ;
   u32 interrupt_enable ;
   u32 pad6 ;
   u32 cq_entry_enable ;
   u32 pad7 ;
   u32 cq_message_enable ;
   u32 pad8 ;
   u32 interrupt_offset ;
   u32 pad9 ;
   u64 cq_message_addr ;
   u32 pad10 ;
};
struct vnic_rx_bytes_counter {
   unsigned int small_pkt_bytes_cnt ;
   unsigned int large_pkt_bytes_cnt ;
};
struct vnic_cq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_cq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   unsigned int to_clean ;
   unsigned int last_color ;
   unsigned int interrupt_offset ;
   struct vnic_rx_bytes_counter pkt_size_counter ;
   unsigned int cur_rx_coal_timeval ;
   unsigned int tobe_rx_coal_timeval ;
   ktime_t prev_ts ;
};
struct vnic_wq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 posted_index ;
   u32 pad1 ;
   u32 cq_index ;
   u32 pad2 ;
   u32 enable ;
   u32 pad3 ;
   u32 running ;
   u32 pad4 ;
   u32 fetch_index ;
   u32 pad5 ;
   u32 dca_value ;
   u32 pad6 ;
   u32 error_interrupt_enable ;
   u32 pad7 ;
   u32 error_interrupt_offset ;
   u32 pad8 ;
   u32 error_status ;
   u32 pad9 ;
};
struct vnic_wq_buf {
   struct vnic_wq_buf *next ;
   dma_addr_t dma_addr ;
   void *os_buf ;
   unsigned int len ;
   unsigned int index ;
   int sop ;
   void *desc ;
   uint64_t wr_id ;
   uint8_t cq_entry ;
   uint8_t desc_skip_cnt ;
   uint8_t compressed_send ;
   struct vnic_wq_buf *prev ;
};
struct vnic_wq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_wq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   struct vnic_wq_buf *bufs[64U] ;
   struct vnic_wq_buf *to_use ;
   struct vnic_wq_buf *to_clean ;
   unsigned int pkts_outstanding ;
};
struct vnic_rq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 posted_index ;
   u32 pad1 ;
   u32 cq_index ;
   u32 pad2 ;
   u32 enable ;
   u32 pad3 ;
   u32 running ;
   u32 pad4 ;
   u32 fetch_index ;
   u32 pad5 ;
   u32 error_interrupt_enable ;
   u32 pad6 ;
   u32 error_interrupt_offset ;
   u32 pad7 ;
   u32 error_status ;
   u32 pad8 ;
   u32 dropped_packet_count ;
   u32 pad9 ;
   u32 dropped_packet_count_rc ;
   u32 pad10 ;
};
struct vnic_rq_buf {
   struct vnic_rq_buf *next ;
   dma_addr_t dma_addr ;
   void *os_buf ;
   unsigned int os_buf_index ;
   unsigned int len ;
   unsigned int index ;
   void *desc ;
   uint64_t wr_id ;
};
struct vnic_rq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_rq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   struct vnic_rq_buf *bufs[64U] ;
   struct vnic_rq_buf *to_use ;
   struct vnic_rq_buf *to_clean ;
   void *os_buf_head ;
   unsigned int pkts_outstanding ;
   unsigned int bpoll_state ;
   spinlock_t bpoll_lock ;
};
struct enic;
struct vnic_enet_config {
   u32 flags ;
   u32 wq_desc_count ;
   u32 rq_desc_count ;
   u16 mtu ;
   u16 intr_timer_deprecated ;
   u8 intr_timer_type ;
   u8 intr_mode ;
   char devname[16U] ;
   u32 intr_timer_usec ;
   u16 loop_tag ;
   u16 vf_rq_count ;
   u16 num_arfs ;
};
struct __anonstruct_key_315 {
   u8 b[10U] ;
   u8 b_pad[6U] ;
};
union vnic_rss_key {
   struct __anonstruct_key_315 key[4U] ;
   u64 raw[8U] ;
};
struct __anonstruct_cpu_316 {
   u8 b[4U] ;
   u8 b_pad[4U] ;
};
union vnic_rss_cpu {
   struct __anonstruct_cpu_316 cpu[32U] ;
   u64 raw[32U] ;
};
struct enic_msix_entry {
   int requested ;
   char devname[16U] ;
   irqreturn_t (*isr)(int , void * ) ;
   void *devid ;
};
struct enic_intr_mod_range {
   u32 small_pkt_range_start ;
   u32 large_pkt_range_start ;
};
struct enic_intr_mod_table {
   u32 rx_rate ;
   u32 range_percent ;
};
struct enic_rx_coal {
   u32 small_pkt_range_start ;
   u32 large_pkt_range_start ;
   u32 range_end ;
   u32 use_adaptive_rx_coalesce ;
};
struct enic_port_profile {
   u32 set ;
   u8 request ;
   char name[40U] ;
   u8 instance_uuid[16U] ;
   u8 host_uuid[16U] ;
   u8 vf_mac[6U] ;
   u8 mac_addr[6U] ;
};
struct enic_rfs_flw_tbl {
   u16 max ;
   int free ;
   unsigned short toclean : 10 ;
   struct hlist_head ht_head[1024U] ;
   spinlock_t lock ;
   struct timer_list rfs_may_expire ;
};
struct enic {
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct vnic_enet_config config ;
   struct vnic_dev_bar bar[6U] ;
   struct vnic_dev *vdev ;
   struct timer_list notify_timer ;
   struct work_struct reset ;
   struct work_struct change_mtu_work ;
   struct msix_entry msix_entry[18U] ;
   struct enic_msix_entry msix[18U] ;
   u32 msg_enable ;
   spinlock_t devcmd_lock ;
   u8 mac_addr[6U] ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned int mc_count ;
   unsigned int uc_count ;
   u32 port_mtu ;
   struct enic_rx_coal rx_coalesce_setting ;
   u32 rx_coalesce_usecs ;
   u32 tx_coalesce_usecs ;
   u16 num_vfs ;
   spinlock_t enic_api_lock ;
   struct enic_port_profile *pp ;
   struct vnic_wq wq[8U] ;
   spinlock_t wq_lock[8U] ;
   unsigned int wq_count ;
   u16 loop_enable ;
   u16 loop_tag ;
   struct vnic_rq rq[8U] ;
   unsigned int rq_count ;
   u64 rq_truncated_pkts ;
   u64 rq_bad_fcs ;
   struct napi_struct napi[16U] ;
   struct vnic_intr intr[18U] ;
   unsigned int intr_count ;
   u32 *legacy_pba ;
   struct vnic_cq cq[16U] ;
   unsigned int cq_count ;
   struct enic_rfs_flw_tbl rfs_h ;
   u32 rx_copybreak ;
   u8 rss_key[40U] ;
   struct vnic_gen_stats gen_stats ;
};
struct ldv_struct_dummy_resourceless_instance_2 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_7 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_0 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_3 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_4 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef struct net_device *ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
enum vnic_res_type {
    RES_TYPE_EOL = 0,
    RES_TYPE_WQ = 1,
    RES_TYPE_RQ = 2,
    RES_TYPE_CQ = 3,
    RES_TYPE_RSVD1 = 4,
    RES_TYPE_NIC_CFG = 5,
    RES_TYPE_RSVD2 = 6,
    RES_TYPE_RSVD3 = 7,
    RES_TYPE_RSVD4 = 8,
    RES_TYPE_RSVD5 = 9,
    RES_TYPE_INTR_CTRL = 10,
    RES_TYPE_INTR_TABLE = 11,
    RES_TYPE_INTR_PBA = 12,
    RES_TYPE_INTR_PBA_LEGACY = 13,
    RES_TYPE_RSVD6 = 14,
    RES_TYPE_RSVD7 = 15,
    RES_TYPE_DEVCMD = 16,
    RES_TYPE_PASS_THRU_PAGE = 17,
    RES_TYPE_MAX = 18
} ;
enum hrtimer_restart;
enum vnic_devcmd_cmd {
    CMD_NONE = 0,
    CMD_MCPU_FW_INFO_OLD = 1073856513,
    CMD_MCPU_FW_INFO = 3221340161U,
    CMD_DEV_SPEC = 3221340162U,
    CMD_STATS_CLEAR = 16891907,
    CMD_STATS_DUMP = 1073856516,
    CMD_PACKET_FILTER = 1090535431,
    CMD_PACKET_FILTER_ALL = 1090633735,
    CMD_HANG_NOTIFY = 114696,
    CMD_GET_MAC_ADDR = 2147532809U,
    CMD_ADDR_ADD = 1090568204,
    CMD_ADDR_DEL = 1090568205,
    CMD_VLAN_ADD = 1090535438,
    CMD_VLAN_DEL = 1090535439,
    CMD_NIC_CFG = 1090633744,
    CMD_RSS_KEY = 1073758225,
    CMD_RSS_CPU = 1073758226,
    CMD_SOFT_RESET = 16891923,
    CMD_SOFT_RESET_STATUS = 2147598356U,
    CMD_NOTIFY = 3221340181U,
    CMD_UNDI = 1073758230,
    CMD_OPEN = 1090633751,
    CMD_OPEN_STATUS = 2147598360U,
    CMD_CLOSE = 114713,
    CMD_INIT_v1 = 2164375578U,
    CMD_INIT_PROV_INFO = 1073758235,
    CMD_ENABLE = 1090633756,
    CMD_ENABLE_WAIT = 1073856540,
    CMD_DISABLE = 114717,
    CMD_STATS_DUMP_ALL = 1073856542,
    CMD_INIT_STATUS = 2147598367U,
    CMD_INT13 = 1073774624,
    CMD_LOGICAL_UPLINK = 1090535457,
    CMD_DEINIT = 16891938,
    CMD_INIT = 1090633763,
    CMD_CAPABILITY = 3221340196U,
    CMD_PERBI = 3221258277U,
    CMD_IAR = 1090633766,
    CMD_HANG_RESET = 114727,
    CMD_HANG_RESET_STATUS = 2147598376U,
    CMD_IG_VLAN_REWRITE_MODE = 3221241897U,
    CMD_PROXY_BY_BDF = 3221340202U,
    CMD_PROXY_BY_INDEX = 3221340203U,
    CMD_CONFIG_INFO_GET = 3221340204U,
    CMD_INT13_ALL = 1073856557,
    CMD_SET_DEFAULT_VLAN = 3221340206U,
    CMD_INIT_PROV_INFO2 = 1073758255,
    CMD_ENABLE2 = 1073758256,
    CMD_STATUS = 3221340209U,
    CMD_INTR_COAL_CONVERT = 2147598386U,
    CMD_SET_MAC_ADDR = 1073758263,
    CMD_PROV_INFO_UPDATE = 1073758264,
    CMD_ADD_FILTER = 3221241914U,
    CMD_DEL_FILTER = 1073758267,
    CMD_QP_ENABLE = 1073758268,
    CMD_QP_DISABLE = 1073758269,
    CMD_QP_STATS_DUMP = 1073758270,
    CMD_QP_STATS_CLEAR = 1073758271
} ;
enum hrtimer_restart;
struct vnic_devcmd_fw_info {
   char fw_version[32U] ;
   char fw_build[32U] ;
   char hw_version[32U] ;
   char hw_serial_number[32U] ;
   u16 asic_type ;
   u16 asic_rev ;
};
enum hrtimer_restart;
struct vic_provinfo_tlv {
   u16 type ;
   u16 length ;
   u8 value[0U] ;
};
struct vic_provinfo {
   u8 oui[3U] ;
   u8 type ;
   u32 length ;
   u32 num_tlvs ;
   struct vic_provinfo_tlv tlv[0U] ;
};
typedef __u32 u_int32_t;
enum hrtimer_restart;
struct vnic_resource_header {
   u32 magic ;
   u32 version ;
};
struct mgmt_barmap_hdr {
   u32 magic ;
   u32 version ;
   u16 lif ;
   u16 pci_slot ;
   char serial[16U] ;
};
struct vnic_resource {
   u8 type ;
   u8 bar ;
   u8 pad[2U] ;
   u32 bar_offset ;
   u32 count ;
};
struct vnic_devcmd_notify {
   u32 csum ;
   u32 link_state ;
   u32 port_speed ;
   u32 mtu ;
   u32 msglvl ;
   u32 uif ;
   u32 status ;
   u32 error ;
   u32 link_down_cnt ;
   u32 perbi_rebuild_cnt ;
};
struct filter_usnic_id {
   u32 flags ;
   u16 vlan ;
   u16 ethtype ;
   u8 proto_version ;
   u32 usnic_id ;
};
struct filter_ipv4_5tuple {
   u32 flags ;
   u32 protocol ;
   u32 src_addr ;
   u32 dst_addr ;
   u16 src_port ;
   u16 dst_port ;
};
struct filter_mac_vlan {
   u32 flags ;
   u16 vlan ;
   u8 mac_addr[6U] ;
};
union __anonunion_u_268 {
   u32 rq_idx ;
};
struct filter_action {
   u32 type ;
   union __anonunion_u_268 u ;
};
union __anonunion_u_269 {
   struct filter_usnic_id usnic ;
   struct filter_ipv4_5tuple ipv4 ;
   struct filter_mac_vlan mac_vlan ;
};
struct filter {
   u32 type ;
   union __anonunion_u_269 u ;
};
struct filter_tlv {
   u_int32_t type ;
   u_int32_t length ;
   u_int32_t val[0U] ;
};
struct vnic_devcmd {
   u32 status ;
   u32 cmd ;
   u64 args[15U] ;
};
enum vnic_proxy_type {
    PROXY_NONE = 0,
    PROXY_BY_BDF = 1,
    PROXY_BY_INDEX = 2
} ;
struct vnic_res {
   void *vaddr ;
   dma_addr_t bus_addr ;
   unsigned int count ;
};
struct vnic_intr_coal_timer_info {
   u32 mul ;
   u32 div ;
   u32 max_usec ;
};
struct vnic_dev {
   void *priv ;
   struct pci_dev *pdev ;
   struct vnic_res res[18U] ;
   enum vnic_dev_intr_mode intr_mode ;
   struct vnic_devcmd *devcmd ;
   struct vnic_devcmd_notify *notify ;
   struct vnic_devcmd_notify notify_copy ;
   dma_addr_t notify_pa ;
   u32 notify_sz ;
   dma_addr_t linkstatus_pa ;
   struct vnic_stats *stats ;
   dma_addr_t stats_pa ;
   struct vnic_devcmd_fw_info *fw_info ;
   dma_addr_t fw_info_pa ;
   enum vnic_proxy_type proxy ;
   u32 proxy_index ;
   u64 args[15U] ;
   struct vnic_intr_coal_timer_info intr_coal_timer_info ;
};
enum hrtimer_restart;
union __anonunion____missing_field_name_234 {
   __be32 ports ;
   __be16 port16[2U] ;
};
struct flow_keys {
   __be32 src ;
   __be32 dst ;
   union __anonunion____missing_field_name_234 __annonCompField70 ;
   u16 thoff ;
   __be16 n_proto ;
   u8 ip_proto ;
};
struct enic_rfs_fltr_node {
   struct flow_keys keys ;
   u32 flow_id ;
   u16 fltr_id ;
   u16 rq_id ;
   struct hlist_node node ;
};
struct enic_stat {
   char name[32U] ;
   unsigned int index ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   struct kthread_worker *worker ;
};
struct dma_chan;
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
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
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class();
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
int ldv_undef_int(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_182(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_179(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_183(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_184(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
int ldv_pre_register_netdev(void) ;
static void ldv_ldv_check_final_state_180(void) ;
static void ldv_ldv_check_final_state_181(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_alloc_macro(gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return (tmp);
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void) ;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
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
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_bpoll_lock_of_vnic_rq(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_bpoll_lock_of_vnic_rq(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_devcmd_lock_of_enic(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_devcmd_lock_of_enic(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_enic_api_lock_of_enic(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_enic_api_lock_of_enic(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7231;
  case_2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7231;
  case_4:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7231;
  case_8:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7231;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7231: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_109(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_136(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_136(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_168(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_130(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_130(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_112(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_137(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_137(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_137(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_169(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_131(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_131(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
extern unsigned long volatile jiffies ;
__inline static s64 ktime_to_us(ktime_t const kt )
{
  {
  return ((long long )kt.tv64 / 1000LL);
}
}
__inline static s64 ktime_us_delta(ktime_t const later , ktime_t const earlier )
{
  ktime_t __constr_expr_0 ;
  s64 tmp ;
  {
  {
  __constr_expr_0.tv64 = (long long )later.tv64 - (long long )earlier.tv64;
  tmp = ktime_to_us(__constr_expr_0);
  }
  return (tmp);
}
}
extern ktime_t ktime_get(void) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_145(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_154(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_155(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_157(struct timer_list *ldv_func_arg1 ) ;
extern unsigned long round_jiffies(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
static void ldv_iounmap_171(void volatile *ldv_func_arg1 ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern int cpu_number ;
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
extern void __const_udelay(unsigned long ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern long schedule_timeout_uninterruptible(long ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void get_random_bytes(void * , int ) ;
extern int net_ratelimit(void) ;
extern void kfree(void const * ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  }
  return (tmp___0);
}
}
extern __sum16 csum_ipv6_magic(struct in6_addr const * , struct in6_addr const * ,
                               __u32 , unsigned short , __wsum ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
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
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
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
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
__inline static void skb_set_hash(struct sk_buff *skb , __u32 hash , enum pkt_hash_types type )
{
  {
  skb->l4_hash = (unsigned int )type == 3U;
  skb->sw_hash = 0U;
  skb->hash = hash;
  return;
}
}
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  {
  tmp = skb_headroom(skb);
  }
  return ((int )((unsigned int )skb->__annonCompField77.__annonCompField76.csum_start - tmp));
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
static struct sk_buff *ldv___netdev_alloc_skb_105(struct net_device *ldv_func_arg1 ,
                                                  unsigned int ldv_func_arg2 , gfp_t flags ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = ldv___netdev_alloc_skb_105(dev, length, gfp);
  skb = tmp;
  }
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
__inline static int __skb_linearize(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = __pskb_pull_tail(skb, (int )skb->data_len);
  }
  return ((unsigned long )tmp != (unsigned long )((unsigned char *)0U) ? 0 : -12);
}
}
__inline static int skb_linearize(struct sk_buff *skb )
{
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp___2 = skb_is_nonlinear((struct sk_buff const *)skb);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = __skb_linearize(skb);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
extern void synchronize_irq(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_149(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
__inline static int ldv_request_irq_150(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
__inline static int ldv_request_irq_151(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_146(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_147(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_148(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __napi_schedule_irqoff(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule_irqoff(struct napi_struct *n )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(n);
  }
  if ((int )tmp) {
    {
    __napi_schedule_irqoff(n);
    }
  } else {
  }
  return;
}
}
__inline static void napi_complete(struct napi_struct *n )
{
  {
  return;
}
}
extern void napi_hash_add(struct napi_struct * ) ;
extern void napi_hash_del(struct napi_struct * ) ;
extern void napi_disable(struct napi_struct * ) ;
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (508), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int call_netdevice_notifiers(unsigned long , struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_174(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_176(struct net_device *ldv_func_arg1 ) ;
extern void netif_tx_wake_queue(struct netdev_queue * ) ;
__inline static void netif_tx_wake_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_43660;
  ldv_43659:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_wake_queue(txq);
  i = i + 1U;
  }
  ldv_43660: ;
  if (i < dev->num_tx_queues) {
    goto ldv_43659;
  } else {
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2547);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  }
  return (tmp != 0);
}
}
__inline static bool netif_xmit_stopped(struct netdev_queue const *dev_queue )
{
  {
  return (((unsigned long )dev_queue->state & 3UL) != 0UL);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern void netif_wake_subqueue(struct net_device * , u16 ) ;
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
extern int netif_receive_skb(struct sk_buff * ) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  {
  ldv_spin_lock_109(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  }
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  {
  txq->xmit_lock_owner = -1;
  ldv_spin_unlock_112(& txq->_xmit_lock);
  }
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  {
  local_bh_disable();
  __vpp_verify = (void const *)0;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1: ;
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1___0:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_44217;
  case_2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44217;
  case_4:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44217;
  case_8:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44217;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_44217:
  pscr_ret__ = pfo_ret__;
  goto ldv_44223;
  case_2___0: ;
  {
  if (4UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44227;
  case_2___1:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44227;
  case_4___0:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44227;
  case_8___0:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44227;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_44227:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_44223;
  case_4___1: ;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44236;
  case_2___2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44236;
  case_4___2:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44236;
  case_8___1:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44236;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_44236:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_44223;
  case_8___2: ;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44245;
  case_2___3:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44245;
  case_4___3:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44245;
  case_8___3:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44245;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_44245:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_44223;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_44223;
  switch_break: ;
  }
  ldv_44223:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_44255;
  ldv_44254:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  }
  ldv_44255: ;
  if (i < dev->num_tx_queues) {
    goto ldv_44254;
  } else {
  }
  {
  local_bh_enable();
  }
  return;
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_173(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_175(struct net_device *ldv_func_arg1 ) ;
extern int __hw_addr_sync_dev(struct netdev_hw_addr_list * , struct net_device * ,
                              int (*)(struct net_device * , unsigned char const * ) ,
                              int (*)(struct net_device * , unsigned char const * ) ) ;
extern void __hw_addr_unsync_dev(struct netdev_hw_addr_list * , struct net_device * ,
                                 int (*)(struct net_device * , unsigned char const * ) ) ;
__inline static int __dev_uc_sync(struct net_device *dev , int (*sync)(struct net_device * ,
                                                                       unsigned char const * ) ,
                                  int (*unsync)(struct net_device * , unsigned char const * ) )
{
  int tmp ;
  {
  {
  tmp = __hw_addr_sync_dev(& dev->uc, dev, sync, unsync);
  }
  return (tmp);
}
}
__inline static void __dev_uc_unsync(struct net_device *dev , int (*unsync)(struct net_device * ,
                                                                            unsigned char const * ) )
{
  {
  {
  __hw_addr_unsync_dev(& dev->uc, dev, unsync);
  }
  return;
}
}
__inline static int __dev_mc_sync(struct net_device *dev , int (*sync)(struct net_device * ,
                                                                       unsigned char const * ) ,
                                  int (*unsync)(struct net_device * , unsigned char const * ) )
{
  int tmp ;
  {
  {
  tmp = __hw_addr_sync_dev(& dev->mc, dev, sync, unsync);
  }
  return (tmp);
}
}
__inline static void __dev_mc_unsync(struct net_device *dev , int (*unsync)(struct net_device * ,
                                                                            unsigned char const * ) )
{
  {
  {
  __hw_addr_unsync_dev(& dev->mc, dev, unsync);
  }
  return;
}
}
extern void netdev_rss_key_fill(void * , size_t ) ;
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern int pci_find_ext_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device_mem(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_177(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_178(struct pci_driver *ldv_func_arg1 ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void *pci_zalloc_consistent(struct pci_dev *hwdev , size_t size ,
                                            dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_zalloc_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                            size, dma_handle, 32U);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  }
  return (tmp);
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  dev_set_drvdata(& pdev->dev, data);
  }
  return;
}
}
extern int pci_enable_sriov(struct pci_dev * , int ) ;
extern void pci_disable_sriov(struct pci_dev * ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_172(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                     unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static void eth_random_addr(u8 *addr )
{
  {
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  }
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  }
  return;
}
}
extern void rtnl_lock(void) ;
static void ldv_rtnl_lock_156(void) ;
static void ldv_rtnl_lock_167(void) ;
extern void rtnl_unlock(void) ;
static void ldv_rtnl_unlock_158(void) ;
static void ldv_rtnl_unlock_159(void) ;
static void ldv_rtnl_unlock_160(void) ;
static void ldv_rtnl_unlock_170(void) ;
__inline static void __vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                            u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return;
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
extern int nla_put(struct sk_buff * , int , int , void const * ) ;
__inline static void *nla_data(struct nlattr const *nla )
{
  {
  return ((void *)nla + 4U);
}
}
__inline static int nla_put_u16(struct sk_buff *skb , int attrtype , u16 value )
{
  int tmp ;
  {
  {
  tmp = nla_put(skb, attrtype, 2, (void const *)(& value));
  }
  return (tmp);
}
}
__inline static u8 nla_get_u8(struct nlattr const *nla )
{
  void *tmp ;
  {
  {
  tmp = nla_data(nla);
  }
  return (*((u8 *)tmp));
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  {
  tmp = tcp_hdr(skb);
  }
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct ipv6hdr *)tmp);
}
}
extern struct cpu_rmap *alloc_cpu_rmap(unsigned int , gfp_t ) ;
__inline static struct cpu_rmap *alloc_irq_cpu_rmap(unsigned int size )
{
  struct cpu_rmap *tmp ;
  {
  {
  tmp = alloc_cpu_rmap(size, 208U);
  }
  return (tmp);
}
}
extern void free_irq_cpu_rmap(struct cpu_rmap * ) ;
extern int irq_cpu_rmap_add(struct cpu_rmap * , int ) ;
__inline static void skb_mark_napi_id(struct sk_buff *skb , struct napi_struct *napi )
{
  {
  skb->__annonCompField78.napi_id = napi->napi_id;
  return;
}
}
extern unsigned long long elfcorehdr_addr ;
__inline static int is_kdump_kernel(void)
{
  {
  return (elfcorehdr_addr != 0xffffffffffffffffULL);
}
}
__inline static void cq_desc_dec(struct cq_desc const *desc_arg , u8 *type , u8 *color ,
                                 u16 *q_number , u16 *completed_index )
{
  struct cq_desc const *desc ;
  u8 type_color ;
  {
  desc = desc_arg;
  type_color = desc->type_color;
  *color = (u8 )((int )type_color >> 7);
  __asm__ volatile ("lfence": : : "memory");
  *type = (unsigned int )type_color & 15U;
  *q_number = (unsigned int )((u16 )desc->q_number) & 1023U;
  *completed_index = (unsigned int )((u16 )desc->completed_index) & 4095U;
  return;
}
}
__inline static void cq_enet_rq_desc_dec(struct cq_enet_rq_desc *desc , u8 *type ,
                                         u8 *color , u16 *q_number , u16 *completed_index ,
                                         u8 *ingress_port , u8 *fcoe , u8 *eop , u8 *sop ,
                                         u8 *rss_type , u8 *csum_not_calc , u32 *rss_hash ,
                                         u16 *bytes_written , u8 *packet_error , u8 *vlan_stripped ,
                                         u16 *vlan_tci , u16 *checksum , u8 *fcoe_sof ,
                                         u8 *fcoe_fc_crc_ok , u8 *fcoe_enc_error ,
                                         u8 *fcoe_eof , u8 *tcp_udp_csum_ok , u8 *udp ,
                                         u8 *tcp , u8 *ipv4_csum_ok , u8 *ipv6 , u8 *ipv4 ,
                                         u8 *ipv4_fragment , u8 *fcs_ok )
{
  u16 completed_index_flags ;
  u16 q_number_rss_type_flags ;
  u16 bytes_written_flags ;
  {
  {
  cq_desc_dec((struct cq_desc const *)desc, type, color, q_number, completed_index);
  completed_index_flags = desc->completed_index_flags;
  q_number_rss_type_flags = desc->q_number_rss_type_flags;
  bytes_written_flags = desc->bytes_written_flags;
  *ingress_port = ((int )completed_index_flags & 4096) != 0;
  *fcoe = ((int )completed_index_flags & 8192) != 0;
  *eop = ((int )completed_index_flags & 16384) != 0;
  *sop = (int )((short )completed_index_flags) < 0;
  *rss_type = (unsigned int )((unsigned char )((int )q_number_rss_type_flags >> 10)) & 15U;
  *csum_not_calc = ((int )q_number_rss_type_flags & 16384) != 0;
  *rss_hash = desc->rss_hash;
  *bytes_written = (unsigned int )bytes_written_flags & 16383U;
  *packet_error = ((int )bytes_written_flags & 16384) != 0;
  *vlan_stripped = (int )((short )bytes_written_flags) < 0;
  *vlan_tci = desc->vlan;
  }
  if ((unsigned int )*fcoe != 0U) {
    *fcoe_sof = (unsigned char )desc->checksum_fcoe;
    *fcoe_fc_crc_ok = (unsigned int )desc->flags & 1U;
    *fcoe_enc_error = ((int )desc->flags & 2) != 0;
    *fcoe_eof = (unsigned char )((int )desc->checksum_fcoe >> 8);
    *checksum = 0U;
  } else {
    *fcoe_sof = 0U;
    *fcoe_fc_crc_ok = 0U;
    *fcoe_enc_error = 0U;
    *fcoe_eof = 0U;
    *checksum = desc->checksum_fcoe;
  }
  *tcp_udp_csum_ok = (unsigned int )desc->flags & 1U;
  *udp = ((int )desc->flags & 2) != 0;
  *tcp = ((int )desc->flags & 4) != 0;
  *ipv4_csum_ok = ((int )desc->flags & 8) != 0;
  *ipv6 = ((int )desc->flags & 16) != 0;
  *ipv4 = ((int )desc->flags & 32) != 0;
  *ipv4_fragment = ((int )desc->flags & 64) != 0;
  *fcs_ok = (int )((signed char )desc->flags) < 0;
  return;
}
}
void *vnic_dev_priv(struct vnic_dev *vdev ) ;
void vnic_dev_cmd_proxy_by_index_start(struct vnic_dev *vdev , u16 index ) ;
void vnic_dev_cmd_proxy_end(struct vnic_dev *vdev ) ;
int vnic_dev_get_mac_addr(struct vnic_dev *vdev , u8 *mac_addr ) ;
int vnic_dev_notify_set(struct vnic_dev *vdev , u16 intr ) ;
int vnic_dev_link_status(struct vnic_dev *vdev ) ;
u32 vnic_dev_port_speed(struct vnic_dev *vdev ) ;
u32 vnic_dev_msg_lvl(struct vnic_dev *vdev ) ;
u32 vnic_dev_mtu(struct vnic_dev *vdev ) ;
int vnic_dev_close(struct vnic_dev *vdev ) ;
int vnic_dev_open(struct vnic_dev *vdev , int arg ) ;
int vnic_dev_open_done(struct vnic_dev *vdev , int *done ) ;
int vnic_dev_init(struct vnic_dev *vdev , int arg ) ;
void vnic_dev_intr_coal_timer_info_default(struct vnic_dev *vdev ) ;
int vnic_dev_hang_reset(struct vnic_dev *vdev , int arg ) ;
int vnic_dev_hang_reset_done(struct vnic_dev *vdev , int *done ) ;
void vnic_dev_set_intr_mode(struct vnic_dev *vdev , enum vnic_dev_intr_mode intr_mode ) ;
enum vnic_dev_intr_mode vnic_dev_get_intr_mode(struct vnic_dev *vdev ) ;
void vnic_dev_unregister(struct vnic_dev *vdev ) ;
struct vnic_dev *vnic_dev_register(struct vnic_dev *vdev , void *priv , struct pci_dev *pdev ,
                                   struct vnic_dev_bar *bar , unsigned int num_bars ) ;
int vnic_dev_set_mac_addr(struct vnic_dev *vdev , u8 *mac_addr ) ;
__inline static void vnic_intr_unmask(struct vnic_intr *intr )
{
  {
  {
  iowrite32(0U, (void *)(& (intr->ctrl)->mask));
  }
  return;
}
}
__inline static void vnic_intr_mask(struct vnic_intr *intr )
{
  {
  {
  iowrite32(1U, (void *)(& (intr->ctrl)->mask));
  }
  return;
}
}
__inline static int vnic_intr_masked(struct vnic_intr *intr )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32((void *)(& (intr->ctrl)->mask));
  }
  return ((int )tmp);
}
}
__inline static void vnic_intr_return_credits(struct vnic_intr *intr , unsigned int credits ,
                                              int unmask , int reset_timer )
{
  u32 int_credit_return ;
  {
  {
  int_credit_return = ((credits & 65535U) | (unmask != 0 ? 65536U : 0U)) | (reset_timer != 0 ? 131072U : 0U);
  iowrite32(int_credit_return, (void *)(& (intr->ctrl)->int_credit_return));
  }
  return;
}
}
__inline static unsigned int vnic_intr_credits(struct vnic_intr *intr )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32((void *)(& (intr->ctrl)->int_credits));
  }
  return (tmp);
}
}
__inline static void vnic_intr_return_all_credits(struct vnic_intr *intr )
{
  unsigned int credits ;
  unsigned int tmp ;
  int unmask ;
  int reset_timer ;
  {
  {
  tmp = vnic_intr_credits(intr);
  credits = tmp;
  unmask = 1;
  reset_timer = 1;
  vnic_intr_return_credits(intr, credits, unmask, reset_timer);
  }
  return;
}
}
__inline static u32 vnic_intr_legacy_pba(u32 *legacy_pba )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32((void *)legacy_pba);
  }
  return (tmp);
}
}
void vnic_intr_coalescing_timer_set(struct vnic_intr *intr , u32 coalescing_timer ) ;
void vnic_intr_clean(struct vnic_intr *intr ) ;
__inline static void wq_enet_desc_enc(struct wq_enet_desc *desc , u64 address , u16 length ,
                                      u16 mss , u16 header_length , u8 offload_mode ,
                                      u8 eop , u8 cq_entry , u8 fcoe_encap , u8 vlan_tag_insert ,
                                      u16 vlan_tag , u8 loopback )
{
  {
  desc->address = address;
  desc->length = (unsigned int )length & 16383U;
  desc->mss_loopback = (unsigned short )((int )((short )((int )mss << 2)) | (int )((short )(((int )loopback & 1) << 1)));
  desc->header_length_flags = (unsigned short )(((((((int )((short )header_length) & 1023) | (int )((short )(((int )offload_mode & 3) << 10))) | (int )((short )(((int )eop & 1) << 12))) | (int )((short )(((int )cq_entry & 1) << 13))) | (int )((short )(((int )fcoe_encap & 1) << 14))) | (int )((short )((int )vlan_tag_insert << 15)));
  desc->vlan_tag = vlan_tag;
  return;
}
}
__inline static void rq_enet_desc_enc(struct rq_enet_desc *desc , u64 address , u8 type ,
                                      u16 length )
{
  {
  desc->address = address;
  desc->length_type = (unsigned short )(((int )((short )length) & 16383) | (int )((short )((int )type << 14)));
  return;
}
}
__inline static unsigned int vnic_cq_service(struct vnic_cq *cq , unsigned int work_to_do ,
                                             int (*q_service)(struct vnic_dev * ,
                                                              struct cq_desc * , u8 ,
                                                              u16 , u16 , void * ) ,
                                             void *opaque )
{
  struct cq_desc *cq_desc ;
  unsigned int work_done ;
  u16 q_number ;
  u16 completed_index ;
  u8 type ;
  u8 color ;
  int tmp ;
  {
  {
  work_done = 0U;
  cq_desc = (struct cq_desc *)cq->ring.descs + (unsigned long )(cq->ring.desc_size * cq->to_clean);
  cq_desc_dec((struct cq_desc const *)cq_desc, & type, & color, & q_number, & completed_index);
  }
  goto ldv_55617;
  ldv_55616:
  {
  tmp = (*q_service)(cq->vdev, cq_desc, (int )type, (int )q_number, (int )completed_index,
                     opaque);
  }
  if (tmp != 0) {
    goto ldv_55615;
  } else {
  }
  cq->to_clean = cq->to_clean + 1U;
  if (cq->to_clean == cq->ring.desc_count) {
    cq->to_clean = 0U;
    cq->last_color = cq->last_color == 0U;
  } else {
  }
  {
  cq_desc = (struct cq_desc *)cq->ring.descs + (unsigned long )(cq->ring.desc_size * cq->to_clean);
  cq_desc_dec((struct cq_desc const *)cq_desc, & type, & color, & q_number, & completed_index);
  work_done = work_done + 1U;
  }
  if (work_done >= work_to_do) {
    goto ldv_55615;
  } else {
  }
  ldv_55617: ;
  if ((unsigned int )color != cq->last_color) {
    goto ldv_55616;
  } else {
  }
  ldv_55615: ;
  return (work_done);
}
}
void vnic_cq_clean(struct vnic_cq *cq ) ;
__inline static unsigned int vnic_wq_desc_avail(struct vnic_wq *wq )
{
  {
  return (wq->ring.desc_avail);
}
}
__inline static void *vnic_wq_next_desc(struct vnic_wq *wq )
{
  {
  return ((wq->to_use)->desc);
}
}
__inline static void vnic_wq_doorbell(struct vnic_wq *wq )
{
  {
  {
  __asm__ volatile ("sfence": : : "memory");
  iowrite32((wq->to_use)->index, (void *)(& (wq->ctrl)->posted_index));
  }
  return;
}
}
__inline static void vnic_wq_post(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                  unsigned int len , int sop , int eop , uint8_t desc_skip_cnt ,
                                  uint8_t cq_entry , uint8_t compressed_send , uint64_t wrid )
{
  struct vnic_wq_buf *buf ;
  {
  buf = wq->to_use;
  buf->sop = sop;
  buf->cq_entry = cq_entry;
  buf->compressed_send = compressed_send;
  buf->desc_skip_cnt = desc_skip_cnt;
  buf->os_buf = eop != 0 ? os_buf : (void *)0;
  buf->dma_addr = dma_addr;
  buf->len = len;
  buf->wr_id = wrid;
  buf = buf->next;
  wq->to_use = buf;
  wq->ring.desc_avail = wq->ring.desc_avail - (unsigned int )desc_skip_cnt;
  return;
}
}
__inline static void vnic_wq_service(struct vnic_wq *wq , struct cq_desc *cq_desc ,
                                     u16 completed_index , void (*buf_service)(struct vnic_wq * ,
                                                                               struct cq_desc * ,
                                                                               struct vnic_wq_buf * ,
                                                                               void * ) ,
                                     void *opaque )
{
  struct vnic_wq_buf *buf ;
  {
  buf = wq->to_clean;
  ldv_55722:
  {
  (*buf_service)(wq, cq_desc, buf, opaque);
  wq->ring.desc_avail = wq->ring.desc_avail + 1U;
  wq->to_clean = buf->next;
  }
  if (buf->index == (unsigned int )completed_index) {
    goto ldv_55721;
  } else {
  }
  buf = wq->to_clean;
  goto ldv_55722;
  ldv_55721: ;
  return;
}
}
unsigned int vnic_wq_error_status(struct vnic_wq *wq ) ;
void vnic_wq_enable(struct vnic_wq *wq ) ;
int vnic_wq_disable(struct vnic_wq *wq ) ;
void vnic_wq_clean(struct vnic_wq *wq , void (*buf_clean)(struct vnic_wq * , struct vnic_wq_buf * ) ) ;
__inline static unsigned int vnic_rq_desc_avail(struct vnic_rq *rq )
{
  {
  return (rq->ring.desc_avail);
}
}
__inline static unsigned int vnic_rq_desc_used(struct vnic_rq *rq )
{
  {
  return ((rq->ring.desc_count - rq->ring.desc_avail) - 1U);
}
}
__inline static void *vnic_rq_next_desc(struct vnic_rq *rq )
{
  {
  return ((rq->to_use)->desc);
}
}
__inline static void vnic_rq_post(struct vnic_rq *rq , void *os_buf , unsigned int os_buf_index ,
                                  dma_addr_t dma_addr , unsigned int len , uint64_t wrid )
{
  struct vnic_rq_buf *buf ;
  {
  buf = rq->to_use;
  buf->os_buf = os_buf;
  buf->os_buf_index = os_buf_index;
  buf->dma_addr = dma_addr;
  buf->len = len;
  buf->wr_id = wrid;
  buf = buf->next;
  rq->to_use = buf;
  rq->ring.desc_avail = rq->ring.desc_avail - 1U;
  if ((buf->index & 15U) == 0U) {
    {
    __asm__ volatile ("sfence": : : "memory");
    iowrite32(buf->index, (void *)(& (rq->ctrl)->posted_index));
    }
  } else {
  }
  return;
}
}
__inline static void vnic_rq_service(struct vnic_rq *rq , struct cq_desc *cq_desc ,
                                     u16 completed_index , int desc_return , void (*buf_service)(struct vnic_rq * ,
                                                                                                 struct cq_desc * ,
                                                                                                 struct vnic_rq_buf * ,
                                                                                                 int ,
                                                                                                 void * ) ,
                                     void *opaque )
{
  struct vnic_rq_buf *buf ;
  int skipped ;
  {
  buf = rq->to_clean;
  ldv_55836:
  {
  skipped = buf->index != (unsigned int )completed_index;
  (*buf_service)(rq, cq_desc, buf, skipped, opaque);
  }
  if (desc_return == 0) {
    rq->ring.desc_avail = rq->ring.desc_avail + 1U;
  } else {
  }
  rq->to_clean = buf->next;
  if (skipped == 0) {
    goto ldv_55835;
  } else {
  }
  buf = rq->to_clean;
  goto ldv_55836;
  ldv_55835: ;
  return;
}
}
__inline static int vnic_rq_fill(struct vnic_rq *rq , int (*buf_fill)(struct vnic_rq * ) )
{
  int err ;
  unsigned int tmp ;
  {
  goto ldv_55844;
  ldv_55843:
  {
  err = (*buf_fill)(rq);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  ldv_55844:
  {
  tmp = vnic_rq_desc_avail(rq);
  }
  if (tmp != 0U) {
    goto ldv_55843;
  } else {
  }
  return (0);
}
}
__inline static void enic_busy_poll_init_lock(struct vnic_rq *rq )
{
  struct lock_class_key __key ;
  {
  {
  spinlock_check(& rq->bpoll_lock);
  __raw_spin_lock_init(& rq->bpoll_lock.__annonCompField18.rlock, "&(&rq->bpoll_lock)->rlock",
                       & __key);
  rq->bpoll_state = 0U;
  }
  return;
}
}
__inline static bool enic_poll_lock_napi(struct vnic_rq *rq )
{
  bool rc ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  rc = 1;
  ldv_spin_lock_126(& rq->bpoll_lock);
  }
  if ((rq->bpoll_state & 3U) != 0U) {
    {
    __ret_warn_on = (int )rq->bpoll_state & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/cisco/enic/vnic_rq.h", 228);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    rq->bpoll_state = rq->bpoll_state | 4U;
    rc = 0;
    }
  } else {
    rq->bpoll_state = 1U;
  }
  {
  ldv_spin_unlock_127(& rq->bpoll_lock);
  }
  return (rc);
}
}
__inline static bool enic_poll_unlock_napi(struct vnic_rq *rq )
{
  bool rc ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  rc = 0;
  ldv_spin_lock_126(& rq->bpoll_lock);
  __ret_warn_on = (rq->bpoll_state & 6U) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/cisco/enic/vnic_rq.h", 245);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if ((rq->bpoll_state & 8U) != 0U) {
    rc = 1;
  } else {
  }
  {
  rq->bpoll_state = 0U;
  ldv_spin_unlock_127(& rq->bpoll_lock);
  }
  return (rc);
}
}
__inline static bool enic_poll_lock_poll(struct vnic_rq *rq )
{
  bool rc ;
  {
  {
  rc = 1;
  ldv_spin_lock_bh_130(& rq->bpoll_lock);
  }
  if ((rq->bpoll_state & 3U) != 0U) {
    rq->bpoll_state = rq->bpoll_state | 8U;
    rc = 0;
  } else {
    rq->bpoll_state = rq->bpoll_state | 2U;
  }
  {
  ldv_spin_unlock_bh_131(& rq->bpoll_lock);
  }
  return (rc);
}
}
__inline static bool enic_poll_unlock_poll(struct vnic_rq *rq )
{
  bool rc ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  rc = 0;
  ldv_spin_lock_bh_130(& rq->bpoll_lock);
  __ret_warn_on = (int )rq->bpoll_state & 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/cisco/enic/vnic_rq.h", 275);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if ((rq->bpoll_state & 8U) != 0U) {
    rc = 1;
  } else {
  }
  {
  rq->bpoll_state = 0U;
  ldv_spin_unlock_bh_131(& rq->bpoll_lock);
  }
  return (rc);
}
}
__inline static bool enic_poll_busy_polling(struct vnic_rq *rq )
{
  int __ret_warn_on ;
  long tmp ;
  {
  {
  __ret_warn_on = (rq->bpoll_state & 3U) == 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/cisco/enic/vnic_rq.h", 286);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return ((rq->bpoll_state & 10U) != 0U);
}
}
unsigned int vnic_rq_error_status(struct vnic_rq *rq ) ;
void vnic_rq_enable(struct vnic_rq *rq ) ;
int vnic_rq_disable(struct vnic_rq *rq ) ;
void vnic_rq_clean(struct vnic_rq *rq , void (*buf_clean)(struct vnic_rq * , struct vnic_rq_buf * ) ) ;
__inline static void enic_queue_wq_desc_ex(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                           unsigned int len , unsigned int mss_or_csum_offset ,
                                           unsigned int hdr_len , int vlan_tag_insert ,
                                           unsigned int vlan_tag , int offload_mode ,
                                           int cq_entry , int sop , int eop , int loopback )
{
  struct wq_enet_desc *desc ;
  void *tmp ;
  u8 desc_skip_cnt ;
  u8 compressed_send ;
  u64 wrid ;
  {
  {
  tmp = vnic_wq_next_desc(wq);
  desc = (struct wq_enet_desc *)tmp;
  desc_skip_cnt = 1U;
  compressed_send = 0U;
  wrid = 0ULL;
  wq_enet_desc_enc(desc, dma_addr, (int )((unsigned short )len), (int )((unsigned short )mss_or_csum_offset),
                   (int )((unsigned short )hdr_len), (int )((unsigned char )offload_mode),
                   (int )((unsigned char )eop), (int )((unsigned char )cq_entry),
                   0, (int )((unsigned char )vlan_tag_insert), (int )((unsigned short )vlan_tag),
                   (int )((unsigned char )loopback));
  vnic_wq_post(wq, os_buf, dma_addr, len, sop, eop, (int )desc_skip_cnt, (int )((unsigned char )cq_entry),
               (int )compressed_send, wrid);
  }
  return;
}
}
__inline static void enic_queue_wq_desc_cont(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                             unsigned int len , int eop , int loopback )
{
  {
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, 0U, 0U, 0, 0U, 0, eop, 0, eop,
                        loopback);
  }
  return;
}
}
__inline static void enic_queue_wq_desc(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                        unsigned int len , int vlan_tag_insert , unsigned int vlan_tag ,
                                        int eop , int loopback )
{
  {
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, 0U, 0U, vlan_tag_insert, vlan_tag,
                        0, eop, 1, eop, loopback);
  }
  return;
}
}
__inline static void enic_queue_wq_desc_csum_l4(struct vnic_wq *wq , void *os_buf ,
                                                dma_addr_t dma_addr , unsigned int len ,
                                                unsigned int csum_offset , unsigned int hdr_len ,
                                                int vlan_tag_insert , unsigned int vlan_tag ,
                                                int eop , int loopback )
{
  {
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, csum_offset, hdr_len, vlan_tag_insert,
                        vlan_tag, 2, eop, 1, eop, loopback);
  }
  return;
}
}
__inline static void enic_queue_wq_desc_tso(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                            unsigned int len , unsigned int mss ,
                                            unsigned int hdr_len , int vlan_tag_insert ,
                                            unsigned int vlan_tag , int eop , int loopback )
{
  {
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, mss, hdr_len, vlan_tag_insert,
                        vlan_tag, 3, eop, 1, eop, loopback);
  }
  return;
}
}
__inline static void enic_queue_rq_desc(struct vnic_rq *rq , void *os_buf , unsigned int os_buf_index ,
                                        dma_addr_t dma_addr , unsigned int len )
{
  struct rq_enet_desc *desc ;
  void *tmp ;
  u64 wrid ;
  u8 type ;
  {
  {
  tmp = vnic_rq_next_desc(rq);
  desc = (struct rq_enet_desc *)tmp;
  wrid = 0ULL;
  type = os_buf_index != 0U;
  rq_enet_desc_enc(desc, dma_addr, (int )type, (int )((unsigned short )len));
  vnic_rq_post(rq, os_buf, os_buf_index, dma_addr, len, wrid);
  }
  return;
}
}
int enic_get_vnic_config(struct enic *enic ) ;
int enic_set_nic_cfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type , u8 rss_hash_bits ,
                     u8 rss_base_cpu , u8 rss_enable , u8 tso_ipid_split_en , u8 ig_vlan_strip_en ) ;
int enic_set_rss_key(struct enic *enic , dma_addr_t key_pa , u64 len ) ;
int enic_set_rss_cpu(struct enic *enic , dma_addr_t cpu_pa , u64 len ) ;
void enic_get_res_counts(struct enic *enic ) ;
void enic_init_vnic_resources(struct enic *enic ) ;
int enic_alloc_vnic_resources(struct enic *enic ) ;
void enic_free_vnic_resources(struct enic *enic ) ;
__inline static struct device *enic_get_dev(struct enic *enic )
{
  {
  return (& (enic->pdev)->dev);
}
}
__inline static unsigned int enic_cq_rq(struct enic *enic , unsigned int rq )
{
  {
  return (rq);
}
}
__inline static unsigned int enic_cq_wq(struct enic *enic , unsigned int wq )
{
  {
  return (enic->rq_count + wq);
}
}
__inline static unsigned int enic_legacy_io_intr(void)
{
  {
  return (0U);
}
}
__inline static unsigned int enic_legacy_err_intr(void)
{
  {
  return (1U);
}
}
__inline static unsigned int enic_legacy_notify_intr(void)
{
  {
  return (2U);
}
}
__inline static unsigned int enic_msix_rq_intr(struct enic *enic , unsigned int rq )
{
  unsigned int tmp ;
  {
  {
  tmp = enic_cq_rq(enic, rq);
  }
  return (enic->cq[tmp].interrupt_offset);
}
}
__inline static unsigned int enic_msix_wq_intr(struct enic *enic , unsigned int wq )
{
  unsigned int tmp ;
  {
  {
  tmp = enic_cq_wq(enic, wq);
  }
  return (enic->cq[tmp].interrupt_offset);
}
}
__inline static unsigned int enic_msix_err_intr(struct enic *enic )
{
  {
  return (enic->rq_count + enic->wq_count);
}
}
__inline static unsigned int enic_msix_notify_intr(struct enic *enic )
{
  {
  return ((enic->rq_count + enic->wq_count) + 1U);
}
}
__inline static int enic_dma_map_check(struct enic *enic , dma_addr_t dma_addr )
{
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp___0 = pci_dma_mapping_error(enic->pdev, dma_addr);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp = net_ratelimit();
    }
    if (tmp != 0) {
      {
      printk("\fenic: %s: PCI dma mapping failed!\n", (char *)(& (enic->netdev)->name));
      }
    } else {
    }
    enic->gen_stats.dma_map_error = enic->gen_stats.dma_map_error + 1ULL;
    return (-12);
  } else {
  }
  return (0);
}
}
void enic_reset_addr_lists(struct enic *enic ) ;
int enic_sriov_enabled(struct enic *enic ) ;
int enic_is_valid_vf(struct enic *enic , int vf ) ;
int enic_is_dynamic(struct enic *enic ) ;
void enic_set_ethtool_ops(struct net_device *netdev ) ;
int __enic_set_rsskey(struct enic *enic ) ;
int enic_dev_stats_dump(struct enic *enic , struct vnic_stats **vstats ) ;
int enic_dev_add_station_addr(struct enic *enic ) ;
int enic_dev_del_station_addr(struct enic *enic ) ;
int enic_dev_packet_filter(struct enic *enic , int directed , int multicast , int broadcast ,
                           int promisc , int allmulti ) ;
int enic_dev_add_addr(struct enic *enic , u8 const *addr ) ;
int enic_dev_del_addr(struct enic *enic , u8 const *addr ) ;
int enic_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid ) ;
int enic_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid ) ;
int enic_dev_notify_unset(struct enic *enic ) ;
int enic_dev_hang_notify(struct enic *enic ) ;
int enic_dev_set_ig_vlan_rewrite_mode(struct enic *enic ) ;
int enic_dev_enable(struct enic *enic ) ;
int enic_dev_disable(struct enic *enic ) ;
int enic_dev_intr_coal_timer_info(struct enic *enic ) ;
int enic_dev_status_to_errno(int devcmd_status ) ;
int enic_process_set_pp_request(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
int enic_process_get_pp_request(struct enic *enic , int vf , int request , u16 *response ) ;
int enic_is_valid_pp_vf(struct enic *enic , int vf , int *err ) ;
void enic_rfs_flw_tbl_init(struct enic *enic ) ;
void enic_rfs_flw_tbl_free(struct enic *enic ) ;
int enic_rx_flow_steer(struct net_device *dev , struct sk_buff const *skb , u16 rxq_index ,
                       u32 flow_id ) ;
static struct pci_device_id const enic_id_table[4U] = { {4407U, 67U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4407U, 68U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4407U, 113U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__enic_id_table_device_table[4U] ;
static struct enic_intr_mod_table mod_table[11U] =
  { {4000U, 0U},
        {4400U, 10U},
        {5060U, 20U},
        {5230U, 30U},
        {5540U, 40U},
        {5820U, 50U},
        {6120U, 60U},
        {6435U, 70U},
        {6745U, 80U},
        {7000U, 90U},
        {4294967295U, 100U}};
static struct enic_intr_mod_range mod_range[3U] = { {0U, 0U},
        {0U, 3U},
        {3U, 6U}};
int enic_is_dynamic(struct enic *enic )
{
  {
  return ((unsigned int )(enic->pdev)->device == 68U);
}
}
int enic_sriov_enabled(struct enic *enic )
{
  {
  return ((int )enic->priv_flags & 1);
}
}
static int enic_is_sriov_vf(struct enic *enic )
{
  {
  return ((unsigned int )(enic->pdev)->device == 113U);
}
}
int enic_is_valid_vf(struct enic *enic , int vf )
{
  {
  return (vf >= 0 && vf < (int )enic->num_vfs);
}
}
static void enic_free_wq_buf(struct vnic_wq *wq , struct vnic_wq_buf *buf )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = vnic_dev_priv(wq->vdev);
  enic = (struct enic *)tmp;
  }
  if (buf->sop != 0) {
    {
    pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 1);
    }
  } else {
    {
    pci_unmap_page(enic->pdev, buf->dma_addr, (size_t )buf->len, 1);
    }
  }
  if ((unsigned long )buf->os_buf != (unsigned long )((void *)0)) {
    {
    dev_kfree_skb_any((struct sk_buff *)buf->os_buf);
    }
  } else {
  }
  return;
}
}
static void enic_wq_free_buf(struct vnic_wq *wq , struct cq_desc *cq_desc , struct vnic_wq_buf *buf ,
                             void *opaque )
{
  {
  {
  enic_free_wq_buf(wq, buf);
  }
  return;
}
}
static int enic_wq_service(struct vnic_dev *vdev , struct cq_desc *cq_desc , u8 type ,
                           u16 q_number , u16 completed_index , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  struct netdev_queue *tmp___0 ;
  bool tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = vnic_dev_priv(vdev);
  enic = (struct enic *)tmp;
  ldv_spin_lock_136((spinlock_t *)(& enic->wq_lock) + (unsigned long )q_number);
  vnic_wq_service((struct vnic_wq *)(& enic->wq) + (unsigned long )q_number, cq_desc,
                  (int )completed_index, & enic_wq_free_buf, opaque);
  tmp___0 = netdev_get_tx_queue((struct net_device const *)enic->netdev, (unsigned int )q_number);
  tmp___1 = netif_tx_queue_stopped((struct netdev_queue const *)tmp___0);
  }
  if ((int )tmp___1) {
    {
    tmp___2 = vnic_wq_desc_avail((struct vnic_wq *)(& enic->wq) + (unsigned long )q_number);
    }
    if (tmp___2 > 21U) {
      {
      netif_wake_subqueue(enic->netdev, (int )q_number);
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_137((spinlock_t *)(& enic->wq_lock) + (unsigned long )q_number);
  }
  return (0);
}
}
static void enic_log_q_error(struct enic *enic )
{
  unsigned int i ;
  u32 error_status ;
  {
  i = 0U;
  goto ldv_56320;
  ldv_56319:
  {
  error_status = vnic_wq_error_status((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  }
  if (error_status != 0U) {
    {
    netdev_err((struct net_device const *)enic->netdev, "WQ[%d] error_status %d\n",
               i, error_status);
    }
  } else {
  }
  i = i + 1U;
  ldv_56320: ;
  if (i < enic->wq_count) {
    goto ldv_56319;
  } else {
  }
  i = 0U;
  goto ldv_56323;
  ldv_56322:
  {
  error_status = vnic_rq_error_status((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  }
  if (error_status != 0U) {
    {
    netdev_err((struct net_device const *)enic->netdev, "RQ[%d] error_status %d\n",
               i, error_status);
    }
  } else {
  }
  i = i + 1U;
  ldv_56323: ;
  if (i < enic->rq_count) {
    goto ldv_56322;
  } else {
  }
  return;
}
}
static void enic_msglvl_check(struct enic *enic )
{
  u32 msg_enable ;
  u32 tmp ;
  {
  {
  tmp = vnic_dev_msg_lvl(enic->vdev);
  msg_enable = tmp;
  }
  if (msg_enable != enic->msg_enable) {
    {
    netdev_info((struct net_device const *)enic->netdev, "msg lvl changed from 0x%x to 0x%x\n",
                enic->msg_enable, msg_enable);
    enic->msg_enable = msg_enable;
    }
  } else {
  }
  return;
}
}
static void enic_mtu_check(struct enic *enic )
{
  u32 mtu ;
  u32 tmp ;
  struct net_device *netdev ;
  int __max1 ;
  int __max2 ;
  int __min1 ;
  int __min2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = vnic_dev_mtu(enic->vdev);
  mtu = tmp;
  netdev = enic->netdev;
  }
  if (mtu != 0U && mtu != enic->port_mtu) {
    {
    enic->port_mtu = mtu;
    tmp___0 = enic_is_dynamic(enic);
    }
    if (tmp___0 != 0) {
      goto _L;
    } else {
      {
      tmp___1 = enic_is_sriov_vf(enic);
      }
      if (tmp___1 != 0) {
        _L:
        __max1 = 68;
        __min1 = 9000;
        __min2 = (int )mtu;
        __max2 = __min1 < __min2 ? __min1 : __min2;
        mtu = (u32 )(__max1 > __max2 ? __max1 : __max2);
        if (mtu != netdev->mtu) {
          {
          schedule_work(& enic->change_mtu_work);
          }
        } else {
        }
      } else
      if (mtu < netdev->mtu) {
        {
        netdev_warn((struct net_device const *)netdev, "interface MTU (%d) set higher than switch port MTU (%d)\n",
                    netdev->mtu, mtu);
        }
      } else {
      }
    }
  } else {
  }
  return;
}
}
static void enic_link_check(struct enic *enic )
{
  int link_status ;
  int tmp ;
  int carrier_ok ;
  bool tmp___0 ;
  {
  {
  tmp = vnic_dev_link_status(enic->vdev);
  link_status = tmp;
  tmp___0 = netif_carrier_ok((struct net_device const *)enic->netdev);
  carrier_ok = (int )tmp___0;
  }
  if (link_status != 0 && carrier_ok == 0) {
    {
    netdev_info((struct net_device const *)enic->netdev, "Link UP\n");
    netif_carrier_on(enic->netdev);
    }
  } else
  if (link_status == 0 && carrier_ok != 0) {
    {
    netdev_info((struct net_device const *)enic->netdev, "Link DOWN\n");
    netif_carrier_off(enic->netdev);
    }
  } else {
  }
  return;
}
}
static void enic_notify_check(struct enic *enic )
{
  {
  {
  enic_msglvl_check(enic);
  enic_mtu_check(enic);
  enic_link_check(enic);
  }
  return;
}
}
static irqreturn_t enic_isr_legacy(int irq , void *data )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int io_intr ;
  unsigned int tmp___0 ;
  unsigned int err_intr ;
  unsigned int tmp___1 ;
  unsigned int notify_intr ;
  unsigned int tmp___2 ;
  u32 pba ;
  {
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_legacy_io_intr();
  io_intr = tmp___0;
  tmp___1 = enic_legacy_err_intr();
  err_intr = tmp___1;
  tmp___2 = enic_legacy_notify_intr();
  notify_intr = tmp___2;
  vnic_intr_mask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
  pba = vnic_intr_legacy_pba(enic->legacy_pba);
  }
  if (pba == 0U) {
    {
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
    }
    return (0);
  } else {
  }
  if ((pba & (u32 )(1 << (int )notify_intr)) != 0U) {
    {
    vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )notify_intr);
    enic_notify_check(enic);
    }
  } else {
  }
  if ((pba & (u32 )(1 << (int )err_intr)) != 0U) {
    {
    vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )err_intr);
    enic_log_q_error(enic);
    schedule_work(& enic->reset);
    }
    return (1);
  } else {
  }
  if ((pba & (u32 )(1 << (int )io_intr)) != 0U) {
    {
    napi_schedule_irqoff((struct napi_struct *)(& enic->napi));
    }
  } else {
    {
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
    }
  }
  return (1);
}
}
static irqreturn_t enic_isr_msi(int irq , void *data )
{
  struct enic *enic ;
  {
  {
  enic = (struct enic *)data;
  napi_schedule_irqoff((struct napi_struct *)(& enic->napi));
  }
  return (1);
}
}
static irqreturn_t enic_isr_msix(int irq , void *data )
{
  struct napi_struct *napi ;
  {
  {
  napi = (struct napi_struct *)data;
  napi_schedule_irqoff(napi);
  }
  return (1);
}
}
static irqreturn_t enic_isr_msix_err(int irq , void *data )
{
  struct enic *enic ;
  unsigned int intr ;
  unsigned int tmp ;
  {
  {
  enic = (struct enic *)data;
  tmp = enic_msix_err_intr(enic);
  intr = tmp;
  vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  enic_log_q_error(enic);
  schedule_work(& enic->reset);
  }
  return (1);
}
}
static irqreturn_t enic_isr_msix_notify(int irq , void *data )
{
  struct enic *enic ;
  unsigned int intr ;
  unsigned int tmp ;
  {
  {
  enic = (struct enic *)data;
  tmp = enic_msix_notify_intr(enic);
  intr = tmp;
  vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  enic_notify_check(enic);
  }
  return (1);
}
}
static int enic_queue_wq_skb_cont(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb ,
                                  unsigned int len_left , int loopback )
{
  skb_frag_t const *frag ;
  dma_addr_t dma_addr ;
  unsigned char *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  unsigned int tmp___4 ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp)->frags);
  }
  goto ldv_56390;
  ldv_56389:
  {
  tmp___0 = skb_frag_size(frag);
  len_left = len_left - tmp___0;
  tmp___1 = skb_frag_size(frag);
  dma_addr = skb_frag_dma_map(& (enic->pdev)->dev, frag, 0UL, (size_t )tmp___1, 1);
  tmp___2 = enic_dma_map_check(enic, dma_addr);
  tmp___3 = ldv__builtin_expect(tmp___2 != 0, 0L);
  }
  if (tmp___3 != 0L) {
    return (-12);
  } else {
  }
  {
  tmp___4 = skb_frag_size(frag);
  enic_queue_wq_desc_cont(wq, (void *)skb, dma_addr, tmp___4, len_left == 0U, loopback);
  frag = frag + 1;
  }
  ldv_56390: ;
  if (len_left != 0U) {
    goto ldv_56389;
  } else {
  }
  return (0);
}
}
static int enic_queue_wq_skb_vlan(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb ,
                                  int vlan_tag_insert , unsigned int vlan_tag , int loopback )
{
  unsigned int head_len ;
  unsigned int tmp ;
  unsigned int len_left ;
  int eop ;
  dma_addr_t dma_addr ;
  int err ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  head_len = tmp;
  len_left = skb->len - head_len;
  eop = len_left == 0U;
  err = 0;
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data, (size_t )head_len, 1);
  tmp___0 = enic_dma_map_check(enic, dma_addr);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (-12);
  } else {
  }
  {
  enic_queue_wq_desc(wq, (void *)skb, dma_addr, head_len, vlan_tag_insert, vlan_tag,
                     eop, loopback);
  }
  if (eop == 0) {
    {
    err = enic_queue_wq_skb_cont(enic, wq, skb, len_left, loopback);
    }
  } else {
  }
  return (err);
}
}
static int enic_queue_wq_skb_csum_l4(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb ,
                                     int vlan_tag_insert , unsigned int vlan_tag ,
                                     int loopback )
{
  unsigned int head_len ;
  unsigned int tmp ;
  unsigned int len_left ;
  unsigned int hdr_len ;
  int tmp___0 ;
  unsigned int csum_offset ;
  int eop ;
  dma_addr_t dma_addr ;
  int err ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  head_len = tmp;
  len_left = skb->len - head_len;
  tmp___0 = skb_checksum_start_offset((struct sk_buff const *)skb);
  hdr_len = (unsigned int )tmp___0;
  csum_offset = hdr_len + (unsigned int )skb->__annonCompField77.__annonCompField76.csum_offset;
  eop = len_left == 0U;
  err = 0;
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data, (size_t )head_len, 1);
  tmp___1 = enic_dma_map_check(enic, dma_addr);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    return (-12);
  } else {
  }
  {
  enic_queue_wq_desc_csum_l4(wq, (void *)skb, dma_addr, head_len, csum_offset, hdr_len,
                             vlan_tag_insert, vlan_tag, eop, loopback);
  }
  if (eop == 0) {
    {
    err = enic_queue_wq_skb_cont(enic, wq, skb, len_left, loopback);
    }
  } else {
  }
  return (err);
}
}
static int enic_queue_wq_skb_tso(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb ,
                                 unsigned int mss , int vlan_tag_insert , unsigned int vlan_tag ,
                                 int loopback )
{
  unsigned int frag_len_left ;
  unsigned int tmp ;
  unsigned int len_left ;
  unsigned int hdr_len ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int eop ;
  unsigned int len ;
  dma_addr_t dma_addr ;
  unsigned int offset ;
  skb_frag_t *frag ;
  struct iphdr *tmp___2 ;
  struct tcphdr *tmp___3 ;
  struct iphdr *tmp___4 ;
  struct iphdr *tmp___5 ;
  __sum16 tmp___6 ;
  struct tcphdr *tmp___7 ;
  struct ipv6hdr *tmp___8 ;
  struct ipv6hdr *tmp___9 ;
  __sum16 tmp___10 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  int tmp___11 ;
  long tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  int tmp___15 ;
  long tmp___16 ;
  {
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  frag_len_left = tmp;
  len_left = skb->len - frag_len_left;
  tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
  tmp___1 = tcp_hdrlen((struct sk_buff const *)skb);
  hdr_len = (unsigned int )tmp___0 + tmp___1;
  eop = len_left == 0U;
  offset = 0U;
  }
  if ((unsigned int )skb->protocol == 8U) {
    {
    tmp___2 = ip_hdr((struct sk_buff const *)skb);
    tmp___2->check = 0U;
    tmp___3 = tcp_hdr((struct sk_buff const *)skb);
    tmp___4 = ip_hdr((struct sk_buff const *)skb);
    tmp___5 = ip_hdr((struct sk_buff const *)skb);
    tmp___6 = csum_tcpudp_magic(tmp___5->saddr, tmp___4->daddr, 0, 6, 0U);
    tmp___3->check = ~ ((int )tmp___6);
    }
  } else
  if ((unsigned int )skb->protocol == 56710U) {
    {
    tmp___7 = tcp_hdr((struct sk_buff const *)skb);
    tmp___8 = ipv6_hdr((struct sk_buff const *)skb);
    tmp___9 = ipv6_hdr((struct sk_buff const *)skb);
    tmp___10 = csum_ipv6_magic((struct in6_addr const *)(& tmp___9->saddr), (struct in6_addr const *)(& tmp___8->daddr),
                               0U, 6, 0U);
    tmp___7->check = ~ ((int )tmp___10);
    }
  } else {
  }
  goto ldv_56441;
  ldv_56440:
  {
  _min1 = frag_len_left;
  _min2 = 16384U;
  len = _min1 < _min2 ? _min1 : _min2;
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data + (unsigned long )offset,
                            (size_t )len, 1);
  tmp___11 = enic_dma_map_check(enic, dma_addr);
  tmp___12 = ldv__builtin_expect(tmp___11 != 0, 0L);
  }
  if (tmp___12 != 0L) {
    return (-12);
  } else {
  }
  {
  enic_queue_wq_desc_tso(wq, (void *)skb, dma_addr, len, mss, hdr_len, vlan_tag_insert,
                         vlan_tag, eop != 0 && len == frag_len_left, loopback);
  frag_len_left = frag_len_left - len;
  offset = offset + len;
  }
  ldv_56441: ;
  if (frag_len_left != 0U) {
    goto ldv_56440;
  } else {
  }
  if (eop != 0) {
    return (0);
  } else {
  }
  {
  tmp___13 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp___13)->frags);
  }
  goto ldv_56450;
  ldv_56449:
  {
  tmp___14 = skb_frag_size((skb_frag_t const *)frag);
  len_left = len_left - tmp___14;
  frag_len_left = skb_frag_size((skb_frag_t const *)frag);
  offset = 0U;
  }
  goto ldv_56447;
  ldv_56446:
  {
  _min1___0 = frag_len_left;
  _min2___0 = 16384U;
  len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  dma_addr = skb_frag_dma_map(& (enic->pdev)->dev, (skb_frag_t const *)frag, (size_t )offset,
                              (size_t )len, 1);
  tmp___15 = enic_dma_map_check(enic, dma_addr);
  tmp___16 = ldv__builtin_expect(tmp___15 != 0, 0L);
  }
  if (tmp___16 != 0L) {
    return (-12);
  } else {
  }
  {
  enic_queue_wq_desc_cont(wq, (void *)skb, dma_addr, len, len_left == 0U && len == frag_len_left,
                          loopback);
  frag_len_left = frag_len_left - len;
  offset = offset + len;
  }
  ldv_56447: ;
  if (frag_len_left != 0U) {
    goto ldv_56446;
  } else {
  }
  frag = frag + 1;
  ldv_56450: ;
  if (len_left != 0U) {
    goto ldv_56449;
  } else {
  }
  return (0);
}
}
__inline static void enic_queue_wq_skb(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb )
{
  unsigned int mss ;
  unsigned char *tmp ;
  unsigned int vlan_tag ;
  int vlan_tag_insert ;
  int loopback ;
  int err ;
  struct vnic_wq_buf *buf ;
  long tmp___0 ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  mss = (unsigned int )((struct skb_shared_info *)tmp)->gso_size;
  vlan_tag = 0U;
  vlan_tag_insert = 0;
  loopback = 0;
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag_insert = 1;
    vlan_tag = (unsigned int )skb->vlan_tci & 4294963199U;
  } else
  if ((unsigned int )enic->loop_enable != 0U) {
    vlan_tag = (unsigned int )enic->loop_tag;
    loopback = 1;
  } else {
  }
  if (mss != 0U) {
    {
    err = enic_queue_wq_skb_tso(enic, wq, skb, mss, vlan_tag_insert, vlan_tag, loopback);
    }
  } else
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    {
    err = enic_queue_wq_skb_csum_l4(enic, wq, skb, vlan_tag_insert, vlan_tag, loopback);
    }
  } else {
    {
    err = enic_queue_wq_skb_vlan(enic, wq, skb, vlan_tag_insert, vlan_tag, loopback);
    }
  }
  {
  tmp___0 = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp___0 != 0L) {
    buf = (wq->to_use)->prev;
    goto ldv_56464;
    ldv_56463:
    {
    enic_free_wq_buf(wq, buf);
    wq->ring.desc_avail = wq->ring.desc_avail + 1U;
    buf = buf->prev;
    }
    ldv_56464: ;
    if ((unsigned long )buf->os_buf == (unsigned long )((void *)0) && (unsigned long )buf->next != (unsigned long )wq->to_clean) {
      goto ldv_56463;
    } else {
    }
    {
    wq->to_use = buf->next;
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static netdev_tx_t enic_hard_start_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_wq *wq ;
  unsigned int txq_map ;
  struct netdev_queue *txq ;
  u16 tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned int tmp___6 ;
  bool tmp___7 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if (skb->len == 0U) {
    {
    dev_kfree_skb_any(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  txq_map = (unsigned int )tmp___0 % enic->wq_count;
  wq = (struct vnic_wq *)(& enic->wq) + (unsigned long )txq_map;
  txq = netdev_get_tx_queue((struct net_device const *)netdev, txq_map);
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if ((unsigned int )((struct skb_shared_info *)tmp___1)->gso_size == 0U) {
    {
    tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
    }
    if ((int )((struct skb_shared_info *)tmp___2)->nr_frags + 1 > 16) {
      {
      tmp___3 = skb_linearize(skb);
      }
      if (tmp___3 != 0) {
        {
        dev_kfree_skb_any(skb);
        }
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_lock_136((spinlock_t *)(& enic->wq_lock) + (unsigned long )txq_map);
  tmp___4 = vnic_wq_desc_avail(wq);
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (tmp___4 < (unsigned int )((int )((struct skb_shared_info *)tmp___5)->nr_frags + 5)) {
    {
    netif_tx_stop_queue(txq);
    netdev_err((struct net_device const *)netdev, "BUG! Tx ring full when queue awake!\n");
    ldv_spin_unlock_137((spinlock_t *)(& enic->wq_lock) + (unsigned long )txq_map);
    }
    return (16);
  } else {
  }
  {
  enic_queue_wq_skb(enic, wq, skb);
  tmp___6 = vnic_wq_desc_avail(wq);
  }
  if (tmp___6 <= 21U) {
    {
    netif_tx_stop_queue(txq);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 142UL) == 0U) {
    {
    vnic_wq_doorbell(wq);
    }
  } else {
    {
    tmp___7 = netif_xmit_stopped((struct netdev_queue const *)txq);
    }
    if ((int )tmp___7) {
      {
      vnic_wq_doorbell(wq);
      }
    } else {
    }
  }
  {
  ldv_spin_unlock_137((spinlock_t *)(& enic->wq_lock) + (unsigned long )txq_map);
  }
  return (0);
}
}
static struct rtnl_link_stats64 *enic_get_stats(struct net_device *netdev , struct rtnl_link_stats64 *net_stats )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_stats *stats ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_stats_dump(enic, & stats);
  net_stats->tx_packets = stats->tx.tx_frames_ok;
  net_stats->tx_bytes = stats->tx.tx_bytes_ok;
  net_stats->tx_errors = stats->tx.tx_errors;
  net_stats->tx_dropped = stats->tx.tx_drops;
  net_stats->rx_packets = stats->rx.rx_frames_ok;
  net_stats->rx_bytes = stats->rx.rx_bytes_ok;
  net_stats->rx_errors = stats->rx.rx_errors;
  net_stats->multicast = stats->rx.rx_multicast_frames_ok;
  net_stats->rx_over_errors = enic->rq_truncated_pkts;
  net_stats->rx_crc_errors = enic->rq_bad_fcs;
  net_stats->rx_dropped = stats->rx.rx_no_bufs + stats->rx.rx_drop;
  }
  return (net_stats);
}
}
static int enic_mc_sync(struct net_device *netdev , u8 const *mc_addr )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int mc_count ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if (enic->mc_count == 32U) {
    {
    mc_count = (unsigned int )netdev->mc.count;
    netdev_warn((struct net_device const *)netdev, "Registering only %d out of %d multicast addresses\n",
                32, mc_count);
    }
    return (-28);
  } else {
  }
  {
  enic_dev_add_addr(enic, mc_addr);
  enic->mc_count = enic->mc_count + 1U;
  }
  return (0);
}
}
static int enic_mc_unsync(struct net_device *netdev , u8 const *mc_addr )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_del_addr(enic, mc_addr);
  enic->mc_count = enic->mc_count - 1U;
  }
  return (0);
}
}
static int enic_uc_sync(struct net_device *netdev , u8 const *uc_addr )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int uc_count ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if (enic->uc_count == 32U) {
    {
    uc_count = (unsigned int )netdev->uc.count;
    netdev_warn((struct net_device const *)netdev, "Registering only %d out of %d unicast addresses\n",
                32, uc_count);
    }
    return (-28);
  } else {
  }
  {
  enic_dev_add_addr(enic, uc_addr);
  enic->uc_count = enic->uc_count + 1U;
  }
  return (0);
}
}
static int enic_uc_unsync(struct net_device *netdev , u8 const *uc_addr )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_del_addr(enic, uc_addr);
  enic->uc_count = enic->uc_count - 1U;
  }
  return (0);
}
}
void enic_reset_addr_lists(struct enic *enic )
{
  struct net_device *netdev ;
  {
  {
  netdev = enic->netdev;
  __dev_uc_unsync(netdev, (int (*)(struct net_device * , unsigned char const * ))0);
  __dev_mc_unsync(netdev, (int (*)(struct net_device * , unsigned char const * ))0);
  enic->mc_count = 0U;
  enic->uc_count = 0U;
  enic->flags = 0U;
  }
  return;
}
}
static int enic_set_mac_addr(struct net_device *netdev , char *addr )
{
  struct enic *enic ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___6 = enic_is_dynamic(enic);
  }
  if (tmp___6 != 0) {
    goto _L;
  } else {
    {
    tmp___7 = enic_is_sriov_vf(enic);
    }
    if (tmp___7 != 0) {
      _L:
      {
      tmp___0 = is_valid_ether_addr((u8 const *)addr);
      }
      if (tmp___0) {
        tmp___1 = 0;
      } else {
        tmp___1 = 1;
      }
      if (tmp___1) {
        {
        tmp___2 = is_zero_ether_addr((u8 const *)addr);
        }
        if (tmp___2) {
          tmp___3 = 0;
        } else {
          tmp___3 = 1;
        }
        if (tmp___3) {
          return (-99);
        } else {
        }
      } else {
      }
    } else {
      {
      tmp___4 = is_valid_ether_addr((u8 const *)addr);
      }
      if (tmp___4) {
        tmp___5 = 0;
      } else {
        tmp___5 = 1;
      }
      if (tmp___5) {
        return (-99);
      } else {
      }
    }
  }
  {
  memcpy((void *)netdev->dev_addr, (void const *)addr, (size_t )netdev->addr_len);
  }
  return (0);
}
}
static int enic_set_mac_address_dynamic(struct net_device *netdev , void *p )
{
  struct enic *enic ;
  void *tmp ;
  struct sockaddr *saddr ;
  char *addr ;
  int err ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  saddr = (struct sockaddr *)p;
  addr = (char *)(& saddr->sa_data);
  tmp___0 = netif_running((struct net_device const *)enic->netdev);
  }
  if ((int )tmp___0) {
    {
    err = enic_dev_del_station_addr(enic);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  err = enic_set_mac_addr(netdev, addr);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)enic->netdev);
  }
  if ((int )tmp___1) {
    {
    err = enic_dev_add_station_addr(enic);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  return (err);
}
}
static int enic_set_mac_address(struct net_device *netdev , void *p )
{
  struct sockaddr *saddr ;
  char *addr ;
  struct enic *enic ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  {
  {
  saddr = (struct sockaddr *)p;
  addr = (char *)(& saddr->sa_data);
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = enic_dev_del_station_addr(enic);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = enic_set_mac_addr(netdev, addr);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___0 = enic_dev_add_station_addr(enic);
  }
  return (tmp___0);
}
}
static void enic_set_rx_mode(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  int directed ;
  int multicast ;
  int broadcast ;
  int promisc ;
  int allmulti ;
  unsigned int flags ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  directed = 1;
  multicast = (netdev->flags & 4096U) != 0U;
  broadcast = (netdev->flags & 2U) != 0U;
  promisc = (netdev->flags & 256U) != 0U || netdev->uc.count > 32;
  allmulti = (netdev->flags & 512U) != 0U || netdev->mc.count > 32;
  flags = (netdev->flags | (allmulti != 0 ? 512U : 0U)) | (promisc != 0 ? 256U : 0U);
  }
  if (enic->flags != flags) {
    {
    enic->flags = flags;
    enic_dev_packet_filter(enic, directed, multicast, broadcast, promisc, allmulti);
    }
  } else {
  }
  if (promisc == 0) {
    {
    __dev_uc_sync(netdev, & enic_uc_sync, & enic_uc_unsync);
    }
    if (allmulti == 0) {
      {
      __dev_mc_sync(netdev, & enic_mc_sync, & enic_mc_unsync);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void enic_tx_timeout(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  schedule_work(& enic->reset);
  }
  return;
}
}
static int enic_set_vf_mac(struct net_device *netdev , int vf , u8 *mac )
{
  struct enic *enic ;
  void *tmp ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___3 = is_valid_ether_addr((u8 const *)mac);
  }
  if ((int )tmp___3) {
    goto _L;
  } else {
    {
    tmp___4 = is_zero_ether_addr((u8 const *)mac);
    }
    if ((int )tmp___4) {
      _L:
      if (vf == -1) {
        {
        memcpy((void *)(& pp->vf_mac), (void const *)mac, 6UL);
        }
        return (0);
      } else {
        {
        ldv_spin_lock_bh_141(& enic->devcmd_lock);
        tmp___1 = enic_is_valid_vf(enic, vf);
        }
        if (tmp___1 != 0) {
          {
          vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
          err = vnic_dev_set_mac_addr(enic->vdev, mac);
          vnic_dev_cmd_proxy_end(enic->vdev);
          }
        } else {
          {
          err = vnic_dev_set_mac_addr(enic->vdev, mac);
          }
        }
        {
        ldv_spin_unlock_bh_142(& enic->devcmd_lock);
        tmp___2 = enic_dev_status_to_errno(err);
        }
        return (tmp___2);
      }
    } else {
      return (-22);
    }
  }
}
}
static int enic_set_vf_port(struct net_device *netdev , int vf , struct nlattr **port )
{
  struct enic *enic ;
  void *tmp ;
  struct enic_port_profile prev_pp ;
  struct enic_port_profile *pp ;
  int err ;
  int restore_pp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = 0;
  restore_pp = 1;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned long )*(port + 6UL) == (unsigned long )((struct nlattr *)0)) {
    return (-95);
  } else {
  }
  {
  memcpy((void *)(& prev_pp), (void const *)pp, 92UL);
  memset((void *)pp, 0, 92UL);
  pp->set = pp->set | 2U;
  pp->request = nla_get_u8((struct nlattr const *)*(port + 6UL));
  }
  if ((unsigned long )*(port + 2UL) != (unsigned long )((struct nlattr *)0)) {
    {
    pp->set = pp->set | 4U;
    tmp___1 = nla_data((struct nlattr const *)*(port + 2UL));
    memcpy((void *)(& pp->name), (void const *)tmp___1, 40UL);
    }
  } else {
  }
  if ((unsigned long )*(port + 4UL) != (unsigned long )((struct nlattr *)0)) {
    {
    pp->set = pp->set | 8U;
    tmp___2 = nla_data((struct nlattr const *)*(port + 4UL));
    memcpy((void *)(& pp->instance_uuid), (void const *)tmp___2, 16UL);
    }
  } else {
  }
  if ((unsigned long )*(port + 5UL) != (unsigned long )((struct nlattr *)0)) {
    {
    pp->set = pp->set | 16U;
    tmp___3 = nla_data((struct nlattr const *)*(port + 5UL));
    memcpy((void *)(& pp->host_uuid), (void const *)tmp___3, 16UL);
    }
  } else {
  }
  if (vf == -1) {
    {
    tmp___4 = is_zero_ether_addr((u8 const *)(& prev_pp.vf_mac));
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      {
      memcpy((void *)(& pp->mac_addr), (void const *)(& prev_pp.vf_mac), 6UL);
      }
    } else {
    }
    {
    tmp___6 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    }
    if ((int )tmp___6) {
      {
      eth_hw_addr_random(netdev);
      }
    } else {
    }
  } else {
    {
    ldv_spin_lock_bh_141(& enic->devcmd_lock);
    tmp___7 = enic_is_valid_vf(enic, vf);
    }
    if (tmp___7 != 0) {
      {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
      }
    } else {
      {
      err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& pp->mac_addr));
      }
    }
    {
    ldv_spin_unlock_bh_142(& enic->devcmd_lock);
    }
    if (err != 0) {
      {
      netdev_err((struct net_device const *)netdev, "Error getting mac for vf %d\n",
                 vf);
      memcpy((void *)pp, (void const *)(& prev_pp), 92UL);
      tmp___8 = enic_dev_status_to_errno(err);
      }
      return (tmp___8);
    } else {
    }
  }
  {
  err = enic_process_set_pp_request(enic, vf, & prev_pp, & restore_pp);
  }
  if (err != 0) {
    if (restore_pp != 0) {
      {
      memcpy((void *)pp, (void const *)(& prev_pp), 92UL);
      }
    } else {
      {
      memset((void *)pp, 0, 92UL);
      }
      if (vf == -1) {
        {
        memset((void *)netdev->dev_addr, 0, 6UL);
        }
      } else {
      }
    }
  } else {
    pp->set = pp->set | 1U;
    if ((unsigned int )pp->request == 3U) {
      {
      memset((void *)(& pp->mac_addr), 0, 6UL);
      }
      if (vf == -1) {
        {
        memset((void *)netdev->dev_addr, 0, 6UL);
        }
      } else {
      }
    } else {
    }
  }
  if (vf == -1) {
    {
    memset((void *)(& pp->vf_mac), 0, 6UL);
    }
  } else {
  }
  return (err);
}
}
static int enic_get_vf_port(struct net_device *netdev , int vf , struct sk_buff *skb )
{
  struct enic *enic ;
  void *tmp ;
  u16 response ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  response = 256U;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((pp->set & 1U) == 0U) {
    return (-61);
  } else {
  }
  {
  err = enic_process_get_pp_request(enic, vf, (int )pp->request, & response);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___1 = nla_put_u16(skb, 6, (int )pp->request);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
    {
    tmp___2 = nla_put_u16(skb, 7, (int )response);
    }
    if (tmp___2 != 0) {
      goto nla_put_failure;
    } else
    if ((pp->set & 4U) != 0U) {
      {
      tmp___3 = nla_put(skb, 2, 40, (void const *)(& pp->name));
      }
      if (tmp___3 != 0) {
        goto nla_put_failure;
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if ((pp->set & 8U) != 0U) {
      {
      tmp___4 = nla_put(skb, 4, 16, (void const *)(& pp->instance_uuid));
      }
      if (tmp___4 != 0) {
        goto nla_put_failure;
      } else {
        goto _L;
      }
    } else
    _L:
    if ((pp->set & 16U) != 0U) {
      {
      tmp___5 = nla_put(skb, 5, 16, (void const *)(& pp->host_uuid));
      }
      if (tmp___5 != 0) {
        goto nla_put_failure;
      } else {
      }
    } else {
    }
  }
  return (0);
  nla_put_failure: ;
  return (-90);
}
}
static void enic_free_rq_buf(struct vnic_rq *rq , struct vnic_rq_buf *buf )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  }
  if ((unsigned long )buf->os_buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  {
  pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
  dev_kfree_skb_any((struct sk_buff *)buf->os_buf);
  buf->os_buf = (void *)0;
  }
  return;
}
}
static int enic_rq_alloc_buf(struct vnic_rq *rq )
{
  struct enic *enic ;
  void *tmp ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  unsigned int len ;
  unsigned int os_buf_index ;
  dma_addr_t dma_addr ;
  struct vnic_rq_buf *buf ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  netdev = enic->netdev;
  len = netdev->mtu + 18U;
  os_buf_index = 0U;
  buf = rq->to_use;
  }
  if ((unsigned long )buf->os_buf != (unsigned long )((void *)0)) {
    {
    enic_queue_rq_desc(rq, buf->os_buf, os_buf_index, buf->dma_addr, buf->len);
    }
    return (0);
  } else {
  }
  {
  skb = netdev_alloc_skb_ip_align(netdev, len);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data, (size_t )len, 2);
  tmp___0 = enic_dma_map_check(enic, dma_addr);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    consume_skb(skb);
    }
    return (-12);
  } else {
  }
  {
  enic_queue_rq_desc(rq, (void *)skb, os_buf_index, dma_addr, len);
  }
  return (0);
}
}
static void enic_intr_update_pkt_size(struct vnic_rx_bytes_counter *pkt_size , u32 pkt_len )
{
  {
  if (pkt_len > 999U) {
    pkt_size->large_pkt_bytes_cnt = pkt_size->large_pkt_bytes_cnt + pkt_len;
  } else {
    pkt_size->small_pkt_bytes_cnt = pkt_size->small_pkt_bytes_cnt + pkt_len;
  }
  return;
}
}
static bool enic_rxcopybreak(struct net_device *netdev , struct sk_buff **skb , struct vnic_rq_buf *buf ,
                             u16 len )
{
  struct enic *enic ;
  void *tmp ;
  struct sk_buff *new_skb ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if ((u32 )len > enic->rx_copybreak) {
    return (0);
  } else {
  }
  {
  new_skb = netdev_alloc_skb_ip_align(netdev, (unsigned int )len);
  }
  if ((unsigned long )new_skb == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  {
  pci_dma_sync_single_for_cpu(enic->pdev, buf->dma_addr, (size_t )len, 2);
  memcpy((void *)new_skb->data, (void const *)(*skb)->data, (size_t )len);
  *skb = new_skb;
  }
  return (1);
}
}
static void enic_rq_indicate_buf(struct vnic_rq *rq , struct cq_desc *cq_desc , struct vnic_rq_buf *buf ,
                                 int skipped , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  struct vnic_cq *cq ;
  unsigned int tmp___0 ;
  u8 type ;
  u8 color ;
  u8 eop ;
  u8 sop ;
  u8 ingress_port ;
  u8 vlan_stripped ;
  u8 fcoe ;
  u8 fcoe_sof ;
  u8 fcoe_fc_crc_ok ;
  u8 fcoe_enc_error ;
  u8 fcoe_eof ;
  u8 tcp_udp_csum_ok ;
  u8 udp ;
  u8 tcp ;
  u8 ipv4_csum_ok ;
  u8 ipv6 ;
  u8 ipv4 ;
  u8 ipv4_fragment ;
  u8 fcs_ok ;
  u8 rss_type ;
  u8 csum_not_calc ;
  u8 packet_error ;
  u16 q_number ;
  u16 completed_index ;
  u16 bytes_written ;
  u16 vlan_tci ;
  u16 checksum ;
  u32 rss_hash ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  netdev = enic->netdev;
  tmp___0 = enic_cq_rq(enic, rq->index);
  cq = (struct vnic_cq *)(& enic->cq) + (unsigned long )tmp___0;
  }
  if (skipped != 0) {
    return;
  } else {
  }
  {
  skb = (struct sk_buff *)buf->os_buf;
  cq_enet_rq_desc_dec((struct cq_enet_rq_desc *)cq_desc, & type, & color, & q_number,
                      & completed_index, & ingress_port, & fcoe, & eop, & sop, & rss_type,
                      & csum_not_calc, & rss_hash, & bytes_written, & packet_error,
                      & vlan_stripped, & vlan_tci, & checksum, & fcoe_sof, & fcoe_fc_crc_ok,
                      & fcoe_enc_error, & fcoe_eof, & tcp_udp_csum_ok, & udp, & tcp,
                      & ipv4_csum_ok, & ipv6, & ipv4, & ipv4_fragment, & fcs_ok);
  }
  if ((unsigned int )packet_error != 0U) {
    if ((unsigned int )fcs_ok == 0U) {
      if ((unsigned int )bytes_written != 0U) {
        enic->rq_bad_fcs = enic->rq_bad_fcs + 1ULL;
      } else
      if ((unsigned int )bytes_written == 0U) {
        enic->rq_truncated_pkts = enic->rq_truncated_pkts + 1ULL;
      } else {
      }
    } else {
    }
    {
    pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
    dev_kfree_skb_any(skb);
    buf->os_buf = (void *)0;
    }
    return;
  } else {
  }
  if ((unsigned int )eop != 0U && (unsigned int )bytes_written != 0U) {
    {
    tmp___1 = enic_rxcopybreak(netdev, & skb, buf, (int )bytes_written);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      {
      buf->os_buf = (void *)0;
      pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
      }
    } else {
    }
    {
    __builtin_prefetch((void const *)skb->data);
    skb_put(skb, (unsigned int )bytes_written);
    skb->protocol = eth_type_trans(skb, netdev);
    skb_record_rx_queue(skb, (int )q_number);
    }
    if ((netdev->features & 8589934592ULL) != 0ULL) {
      {
      skb_set_hash(skb, rss_hash, ((int )rss_type & 84) != 0 ? 3 : 2);
      }
    } else {
    }
    if (((netdev->features & 17179869184ULL) != 0ULL && (unsigned int )tcp_udp_csum_ok != 0U) && (unsigned int )ipv4_csum_ok != 0U) {
      skb->ip_summed = 1U;
    } else {
    }
    if ((unsigned int )vlan_stripped != 0U) {
      {
      __vlan_hwaccel_put_tag(skb, 129, (int )vlan_tci);
      }
    } else {
    }
    {
    skb_mark_napi_id(skb, (struct napi_struct *)(& enic->napi) + (unsigned long )rq->index);
    tmp___3 = enic_poll_busy_polling(rq);
    }
    if ((int )tmp___3 || (netdev->features & 16384ULL) == 0ULL) {
      {
      netif_receive_skb(skb);
      }
    } else {
      {
      napi_gro_receive((struct napi_struct *)(& enic->napi) + (unsigned long )q_number,
                       skb);
      }
    }
    if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce != 0U) {
      {
      enic_intr_update_pkt_size(& cq->pkt_size_counter, (u32 )bytes_written);
      }
    } else {
    }
  } else {
    {
    pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
    dev_kfree_skb_any(skb);
    buf->os_buf = (void *)0;
    }
  }
  return;
}
}
static int enic_rq_service(struct vnic_dev *vdev , struct cq_desc *cq_desc , u8 type ,
                           u16 q_number , u16 completed_index , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = vnic_dev_priv(vdev);
  enic = (struct enic *)tmp;
  vnic_rq_service((struct vnic_rq *)(& enic->rq) + (unsigned long )q_number, cq_desc,
                  (int )completed_index, 0, & enic_rq_indicate_buf, opaque);
  }
  return (0);
}
}
static int enic_poll(struct napi_struct *napi , int budget )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int cq_rq ;
  unsigned int tmp___0 ;
  unsigned int cq_wq ;
  unsigned int tmp___1 ;
  unsigned int intr ;
  unsigned int tmp___2 ;
  unsigned int rq_work_to_do ;
  unsigned int wq_work_to_do ;
  unsigned int work_done ;
  unsigned int rq_work_done ;
  unsigned int wq_work_done ;
  int err ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_cq_rq(enic, 0U);
  cq_rq = tmp___0;
  tmp___1 = enic_cq_wq(enic, 0U);
  cq_wq = tmp___1;
  tmp___2 = enic_legacy_io_intr();
  intr = tmp___2;
  rq_work_to_do = (unsigned int )budget;
  wq_work_to_do = 4294967295U;
  rq_work_done = 0U;
  wq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq_wq,
                                 wq_work_to_do, & enic_wq_service, (void *)0);
  tmp___3 = enic_poll_lock_napi((struct vnic_rq *)(& enic->rq) + (unsigned long )cq_rq);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    if (wq_work_done != 0U) {
      {
      vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                               wq_work_done, 0, 0);
      }
    } else {
    }
    return ((int )rq_work_done);
  } else {
  }
  if (budget > 0) {
    {
    rq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq_rq,
                                   rq_work_to_do, & enic_rq_service, (void *)0);
    }
  } else {
  }
  work_done = rq_work_done + wq_work_done;
  if (work_done != 0U) {
    {
    vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                             work_done, 0, 0);
    }
  } else {
  }
  {
  err = vnic_rq_fill((struct vnic_rq *)(& enic->rq), & enic_rq_alloc_buf);
  }
  if (err != 0) {
    rq_work_done = rq_work_to_do;
  } else {
  }
  if (rq_work_done < rq_work_to_do) {
    {
    napi_complete(napi);
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
    }
  } else {
  }
  {
  enic_poll_unlock_napi((struct vnic_rq *)(& enic->rq) + (unsigned long )cq_rq);
  }
  return ((int )rq_work_done);
}
}
static void enic_set_int_moderation(struct enic *enic , struct vnic_rq *rq )
{
  unsigned int intr ;
  unsigned int tmp ;
  struct vnic_cq *cq ;
  unsigned int tmp___0 ;
  u32 timer ;
  {
  {
  tmp = enic_msix_rq_intr(enic, rq->index);
  intr = tmp;
  tmp___0 = enic_cq_rq(enic, rq->index);
  cq = (struct vnic_cq *)(& enic->cq) + (unsigned long )tmp___0;
  timer = cq->tobe_rx_coal_timeval;
  }
  if (cq->tobe_rx_coal_timeval != cq->cur_rx_coal_timeval) {
    {
    vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                   timer);
    cq->cur_rx_coal_timeval = cq->tobe_rx_coal_timeval;
    }
  } else {
  }
  return;
}
}
static void enic_calc_int_moderation(struct enic *enic , struct vnic_rq *rq )
{
  struct enic_rx_coal *rx_coal ;
  struct vnic_cq *cq ;
  unsigned int tmp ;
  struct vnic_rx_bytes_counter *pkt_size_counter ;
  int index ;
  u32 timer ;
  u32 range_start ;
  u32 traffic ;
  u64 delta ;
  ktime_t now ;
  ktime_t tmp___0 ;
  s64 tmp___1 ;
  {
  {
  rx_coal = & enic->rx_coalesce_setting;
  tmp = enic_cq_rq(enic, rq->index);
  cq = (struct vnic_cq *)(& enic->cq) + (unsigned long )tmp;
  pkt_size_counter = & cq->pkt_size_counter;
  tmp___0 = ktime_get();
  now = tmp___0;
  tmp___1 = ktime_us_delta(now, cq->prev_ts);
  delta = (u64 )tmp___1;
  }
  if (delta <= 99ULL) {
    return;
  } else {
  }
  cq->prev_ts = now;
  traffic = pkt_size_counter->large_pkt_bytes_cnt + pkt_size_counter->small_pkt_bytes_cnt;
  traffic = traffic << 3;
  traffic = delta <= 4294967295ULL ? traffic / (u32 )delta : 0U;
  index = 0;
  goto ldv_56681;
  ldv_56680: ;
  if (traffic < mod_table[index].rx_rate) {
    goto ldv_56679;
  } else {
  }
  index = index + 1;
  ldv_56681: ;
  if (index <= 9) {
    goto ldv_56680;
  } else {
  }
  ldv_56679:
  range_start = pkt_size_counter->small_pkt_bytes_cnt > pkt_size_counter->large_pkt_bytes_cnt << 1 ? rx_coal->small_pkt_range_start : rx_coal->large_pkt_range_start;
  timer = range_start + ((rx_coal->range_end - range_start) * mod_table[index].range_percent) / 100U;
  cq->tobe_rx_coal_timeval = (timer + cq->tobe_rx_coal_timeval) >> 1;
  pkt_size_counter->large_pkt_bytes_cnt = 0U;
  pkt_size_counter->small_pkt_bytes_cnt = 0U;
  return;
}
}
static void enic_free_rx_cpu_rmap(struct enic *enic )
{
  {
  {
  free_irq_cpu_rmap((enic->netdev)->rx_cpu_rmap);
  (enic->netdev)->rx_cpu_rmap = (struct cpu_rmap *)0;
  }
  return;
}
}
static void enic_set_rx_cpu_rmap(struct enic *enic )
{
  int i ;
  int res ;
  long tmp ;
  long tmp___0 ;
  enum vnic_dev_intr_mode tmp___1 ;
  {
  {
  tmp___1 = vnic_dev_get_intr_mode(enic->vdev);
  }
  if ((unsigned int )tmp___1 == 3U) {
    {
    (enic->netdev)->rx_cpu_rmap = alloc_irq_cpu_rmap(enic->rq_count);
    tmp = ldv__builtin_expect((unsigned long )(enic->netdev)->rx_cpu_rmap == (unsigned long )((struct cpu_rmap *)0),
                           0L);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
    i = 0;
    goto ldv_56691;
    ldv_56690:
    {
    res = irq_cpu_rmap_add((enic->netdev)->rx_cpu_rmap, (int )enic->msix_entry[i].vector);
    tmp___0 = ldv__builtin_expect(res != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      enic_free_rx_cpu_rmap(enic);
      }
      return;
    } else {
    }
    i = i + 1;
    ldv_56691: ;
    if ((unsigned int )i < enic->rq_count) {
      goto ldv_56690;
    } else {
    }
  } else {
  }
  return;
}
}
static int enic_busy_poll(struct napi_struct *napi )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int rq ;
  unsigned int cq ;
  unsigned int tmp___0 ;
  unsigned int intr ;
  unsigned int tmp___1 ;
  unsigned int work_to_do ;
  unsigned int work_done ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  rq = (unsigned int )(((long )napi - (long )(& enic->napi)) / 280L);
  tmp___0 = enic_cq_rq(enic, rq);
  cq = tmp___0;
  tmp___1 = enic_msix_rq_intr(enic, rq);
  intr = tmp___1;
  work_to_do = 4294967295U;
  tmp___2 = enic_poll_lock_poll((struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (-2);
  } else {
  }
  {
  work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq,
                              work_to_do, & enic_rq_service, (void *)0);
  }
  if (work_done != 0U) {
    {
    vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                             work_done, 0, 0);
    }
  } else {
  }
  {
  vnic_rq_fill((struct vnic_rq *)(& enic->rq) + (unsigned long )rq, & enic_rq_alloc_buf);
  }
  if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce != 0U) {
    {
    enic_calc_int_moderation(enic, (struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
    }
  } else {
  }
  {
  enic_poll_unlock_poll((struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
  }
  return ((int )work_done);
}
}
static int enic_poll_msix_wq(struct napi_struct *napi , int budget )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int wq_index ;
  struct vnic_wq *wq ;
  unsigned int cq ;
  unsigned int intr ;
  unsigned int wq_work_to_do ;
  unsigned int wq_work_done ;
  unsigned int wq_irq ;
  {
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  wq_index = (unsigned int )(((long )napi - (long )(& enic->napi)) / 280L) - enic->rq_count;
  wq = (struct vnic_wq *)(& enic->wq) + (unsigned long )wq_index;
  wq_work_to_do = 4294967295U;
  wq_irq = wq->index;
  cq = enic_cq_wq(enic, wq_irq);
  intr = enic_msix_wq_intr(enic, wq_irq);
  wq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq,
                                 wq_work_to_do, & enic_wq_service, (void *)0);
  vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                           wq_work_done, 0, 1);
  }
  if (wq_work_done == 0U) {
    {
    napi_complete(napi);
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
    }
    return (0);
  } else {
  }
  return (budget);
}
}
static int enic_poll_msix_rq(struct napi_struct *napi , int budget )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int rq ;
  unsigned int cq ;
  unsigned int tmp___0 ;
  unsigned int intr ;
  unsigned int tmp___1 ;
  unsigned int work_to_do ;
  unsigned int work_done ;
  int err ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  rq = (unsigned int )(((long )napi - (long )(& enic->napi)) / 280L);
  tmp___0 = enic_cq_rq(enic, rq);
  cq = tmp___0;
  tmp___1 = enic_msix_rq_intr(enic, rq);
  intr = tmp___1;
  work_to_do = (unsigned int )budget;
  work_done = 0U;
  tmp___2 = enic_poll_lock_napi((struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (budget);
  } else {
  }
  if (budget > 0) {
    {
    work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq,
                                work_to_do, & enic_rq_service, (void *)0);
    }
  } else {
  }
  if (work_done != 0U) {
    {
    vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                             work_done, 0, 0);
    }
  } else {
  }
  {
  err = vnic_rq_fill((struct vnic_rq *)(& enic->rq) + (unsigned long )rq, & enic_rq_alloc_buf);
  }
  if (err != 0) {
    work_done = work_to_do;
  } else {
  }
  if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce != 0U) {
    {
    enic_calc_int_moderation(enic, (struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
    }
  } else {
  }
  if (work_done < work_to_do) {
    {
    napi_complete(napi);
    }
    if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce != 0U) {
      {
      enic_set_int_moderation(enic, (struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
      }
    } else {
    }
    {
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
    }
  } else {
  }
  {
  enic_poll_unlock_napi((struct vnic_rq *)(& enic->rq) + (unsigned long )rq);
  }
  return ((int )work_done);
}
}
static void enic_notify_timer(unsigned long data )
{
  struct enic *enic ;
  unsigned long tmp ;
  {
  {
  enic = (struct enic *)data;
  enic_notify_check(enic);
  tmp = round_jiffies((unsigned long )jiffies + 500UL);
  ldv_mod_timer_145(& enic->notify_timer, tmp);
  }
  return;
}
}
static void enic_free_intr(struct enic *enic )
{
  struct net_device *netdev ;
  unsigned int i ;
  enum vnic_dev_intr_mode tmp ;
  {
  {
  netdev = enic->netdev;
  enic_free_rx_cpu_rmap(enic);
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )tmp == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_free_irq_146((enic->pdev)->irq, (void *)netdev);
  }
  goto ldv_56738;
  case_2:
  {
  ldv_free_irq_147((enic->pdev)->irq, (void *)enic);
  }
  goto ldv_56738;
  case_3:
  i = 0U;
  goto ldv_56744;
  ldv_56743: ;
  if (enic->msix[i].requested != 0) {
    {
    ldv_free_irq_148(enic->msix_entry[i].vector, enic->msix[i].devid);
    }
  } else {
  }
  i = i + 1U;
  ldv_56744: ;
  if (i <= 17U) {
    goto ldv_56743;
  } else {
  }
  goto ldv_56738;
  switch_default: ;
  goto ldv_56738;
  switch_break: ;
  }
  ldv_56738: ;
  return;
}
}
static int enic_request_intr(struct enic *enic )
{
  struct net_device *netdev ;
  unsigned int i ;
  unsigned int intr ;
  int err ;
  enum vnic_dev_intr_mode tmp ;
  int wq ;
  unsigned int tmp___0 ;
  {
  {
  netdev = enic->netdev;
  err = 0;
  enic_set_rx_cpu_rmap(enic);
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )tmp == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  err = ldv_request_irq_149((enic->pdev)->irq, & enic_isr_legacy, 128UL, (char const *)(& netdev->name),
                            (void *)netdev);
  }
  goto ldv_56755;
  case_2:
  {
  err = ldv_request_irq_150((enic->pdev)->irq, & enic_isr_msi, 0UL, (char const *)(& netdev->name),
                            (void *)enic);
  }
  goto ldv_56755;
  case_3:
  i = 0U;
  goto ldv_56759;
  ldv_56758:
  {
  intr = enic_msix_rq_intr(enic, i);
  snprintf((char *)(& enic->msix[intr].devname), 16UL, "%.11s-rx-%d", (char *)(& netdev->name),
           i);
  enic->msix[intr].isr = & enic_isr_msix;
  enic->msix[intr].devid = (void *)(& enic->napi) + (unsigned long )i;
  i = i + 1U;
  }
  ldv_56759: ;
  if (i < enic->rq_count) {
    goto ldv_56758;
  } else {
  }
  i = 0U;
  goto ldv_56763;
  ldv_56762:
  {
  tmp___0 = enic_cq_wq(enic, i);
  wq = (int )tmp___0;
  intr = enic_msix_wq_intr(enic, i);
  snprintf((char *)(& enic->msix[intr].devname), 16UL, "%.11s-tx-%d", (char *)(& netdev->name),
           i);
  enic->msix[intr].isr = & enic_isr_msix;
  enic->msix[intr].devid = (void *)(& enic->napi) + (unsigned long )wq;
  i = i + 1U;
  }
  ldv_56763: ;
  if (i < enic->wq_count) {
    goto ldv_56762;
  } else {
  }
  {
  intr = enic_msix_err_intr(enic);
  snprintf((char *)(& enic->msix[intr].devname), 16UL, "%.11s-err", (char *)(& netdev->name));
  enic->msix[intr].isr = & enic_isr_msix_err;
  enic->msix[intr].devid = (void *)enic;
  intr = enic_msix_notify_intr(enic);
  snprintf((char *)(& enic->msix[intr].devname), 16UL, "%.11s-notify", (char *)(& netdev->name));
  enic->msix[intr].isr = & enic_isr_msix_notify;
  enic->msix[intr].devid = (void *)enic;
  i = 0U;
  }
  goto ldv_56768;
  ldv_56767:
  enic->msix[i].requested = 0;
  i = i + 1U;
  ldv_56768: ;
  if (i <= 17U) {
    goto ldv_56767;
  } else {
  }
  i = 0U;
  goto ldv_56772;
  ldv_56771:
  {
  err = ldv_request_irq_151(enic->msix_entry[i].vector, enic->msix[i].isr, 0UL, (char const *)(& enic->msix[i].devname),
                            enic->msix[i].devid);
  }
  if (err != 0) {
    {
    enic_free_intr(enic);
    }
    goto ldv_56770;
  } else {
  }
  enic->msix[i].requested = 1;
  i = i + 1U;
  ldv_56772: ;
  if (i < enic->intr_count) {
    goto ldv_56771;
  } else {
  }
  ldv_56770: ;
  goto ldv_56755;
  switch_default: ;
  goto ldv_56755;
  switch_break: ;
  }
  ldv_56755: ;
  return (err);
}
}
static void enic_synchronize_irqs(struct enic *enic )
{
  unsigned int i ;
  enum vnic_dev_intr_mode tmp ;
  {
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )tmp == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2:
  {
  synchronize_irq((enic->pdev)->irq);
  }
  goto ldv_56780;
  case_3:
  i = 0U;
  goto ldv_56783;
  ldv_56782:
  {
  synchronize_irq(enic->msix_entry[i].vector);
  i = i + 1U;
  }
  ldv_56783: ;
  if (i < enic->intr_count) {
    goto ldv_56782;
  } else {
  }
  goto ldv_56780;
  switch_default: ;
  goto ldv_56780;
  switch_break: ;
  }
  ldv_56780: ;
  return;
}
}
static void enic_set_rx_coal_setting(struct enic *enic )
{
  unsigned int speed ;
  int index ;
  struct enic_rx_coal *rx_coal ;
  enum vnic_dev_intr_mode tmp ;
  {
  {
  index = -1;
  rx_coal = & enic->rx_coalesce_setting;
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  if ((unsigned int )tmp != 3U) {
    {
    netdev_info((struct net_device const *)enic->netdev, "INTR mode is not MSIX, Not initializing adaptive coalescing");
    }
    return;
  } else {
  }
  {
  speed = vnic_dev_port_speed(enic->vdev);
  }
  if (speed > 10000U) {
    index = 2;
  } else
  if (speed > 4000U) {
    index = 1;
  } else {
    index = 0;
  }
  rx_coal->small_pkt_range_start = mod_range[index].small_pkt_range_start;
  rx_coal->large_pkt_range_start = mod_range[index].large_pkt_range_start;
  rx_coal->range_end = 125U;
  index = 0;
  goto ldv_56793;
  ldv_56792:
  enic->cq[index].cur_rx_coal_timeval = enic->config.intr_timer_usec;
  index = index + 1;
  ldv_56793: ;
  if ((unsigned int )index < enic->rq_count) {
    goto ldv_56792;
  } else {
  }
  rx_coal->use_adaptive_rx_coalesce = 1U;
  return;
}
}
static int enic_dev_notify_set(struct enic *enic )
{
  int err ;
  enum vnic_dev_intr_mode tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___0 = enic_legacy_notify_intr();
  err = vnic_dev_notify_set(enic->vdev, (int )((u16 )tmp___0));
  }
  goto ldv_56800;
  case_3:
  {
  tmp___1 = enic_msix_notify_intr(enic);
  err = vnic_dev_notify_set(enic->vdev, (int )((u16 )tmp___1));
  }
  goto ldv_56800;
  switch_default:
  {
  err = vnic_dev_notify_set(enic->vdev, 65535);
  }
  goto ldv_56800;
  switch_break: ;
  }
  ldv_56800:
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
static void enic_notify_timer_start(struct enic *enic )
{
  enum vnic_dev_intr_mode tmp ;
  {
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_mod_timer_154(& enic->notify_timer, jiffies);
  }
  goto ldv_56807;
  switch_default: ;
  goto ldv_56807;
  switch_break: ;
  }
  ldv_56807: ;
  return;
}
}
static int enic_open(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int i ;
  int err ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  enum vnic_dev_intr_mode tmp___4 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = enic_request_intr(enic);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)netdev, "Unable to request irq.\n");
    }
    return (err);
  } else {
  }
  {
  err = enic_dev_notify_set(enic);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)netdev, "Failed to alloc notify buffer, aborting.\n");
    }
    goto err_out_free_intr;
  } else {
  }
  i = 0U;
  goto ldv_56818;
  ldv_56817:
  {
  vnic_rq_fill((struct vnic_rq *)(& enic->rq) + (unsigned long )i, & enic_rq_alloc_buf);
  tmp___0 = vnic_rq_desc_used((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  }
  if (tmp___0 == 0U) {
    {
    netdev_err((struct net_device const *)netdev, "Unable to alloc receive buffers\n");
    err = -12;
    }
    goto err_out_free_rq;
  } else {
  }
  i = i + 1U;
  ldv_56818: ;
  if (i < enic->rq_count) {
    goto ldv_56817;
  } else {
  }
  i = 0U;
  goto ldv_56821;
  ldv_56820:
  {
  vnic_wq_enable((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56821: ;
  if (i < enic->wq_count) {
    goto ldv_56820;
  } else {
  }
  i = 0U;
  goto ldv_56824;
  ldv_56823:
  {
  vnic_rq_enable((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56824: ;
  if (i < enic->rq_count) {
    goto ldv_56823;
  } else {
  }
  {
  tmp___1 = enic_is_dynamic(enic);
  }
  if (tmp___1 == 0) {
    {
    tmp___2 = enic_is_sriov_vf(enic);
    }
    if (tmp___2 == 0) {
      {
      enic_dev_add_station_addr(enic);
      }
    } else {
    }
  } else {
  }
  {
  enic_set_rx_mode(netdev);
  netif_tx_wake_all_queues(netdev);
  i = 0U;
  }
  goto ldv_56827;
  ldv_56826:
  {
  enic_busy_poll_init_lock((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  napi_enable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56827: ;
  if (i < enic->rq_count) {
    goto ldv_56826;
  } else {
  }
  {
  tmp___4 = vnic_dev_get_intr_mode(enic->vdev);
  }
  if ((unsigned int )tmp___4 == 3U) {
    i = 0U;
    goto ldv_56830;
    ldv_56829:
    {
    tmp___3 = enic_cq_wq(enic, i);
    napi_enable((struct napi_struct *)(& enic->napi) + (unsigned long )tmp___3);
    i = i + 1U;
    }
    ldv_56830: ;
    if (i < enic->wq_count) {
      goto ldv_56829;
    } else {
    }
  } else {
  }
  {
  enic_dev_enable(enic);
  i = 0U;
  }
  goto ldv_56833;
  ldv_56832:
  {
  vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56833: ;
  if (i < enic->intr_count) {
    goto ldv_56832;
  } else {
  }
  {
  enic_notify_timer_start(enic);
  enic_rfs_flw_tbl_init(enic);
  }
  return (0);
  err_out_free_rq:
  i = 0U;
  goto ldv_56836;
  ldv_56835:
  {
  vnic_rq_clean((struct vnic_rq *)(& enic->rq) + (unsigned long )i, & enic_free_rq_buf);
  i = i + 1U;
  }
  ldv_56836: ;
  if (i < enic->rq_count) {
    goto ldv_56835;
  } else {
  }
  {
  enic_dev_notify_unset(enic);
  }
  err_out_free_intr:
  {
  enic_free_intr(enic);
  }
  return (err);
}
}
static int enic_stop(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int i ;
  int err ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  enum vnic_dev_intr_mode tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  i = 0U;
  }
  goto ldv_56845;
  ldv_56844:
  {
  vnic_intr_mask((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  vnic_intr_masked((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56845: ;
  if (i < enic->intr_count) {
    goto ldv_56844;
  } else {
  }
  {
  enic_synchronize_irqs(enic);
  ldv_del_timer_sync_155(& enic->notify_timer);
  enic_rfs_flw_tbl_free(enic);
  enic_dev_disable(enic);
  i = 0U;
  }
  goto ldv_56855;
  ldv_56854:
  {
  napi_disable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  local_bh_disable();
  }
  goto ldv_56852;
  ldv_56851: ;
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_56849;
    ldv_56848:
    {
    __const_udelay(4295000UL);
    }
    ldv_56849:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_56848;
    } else {
    }
  }
  ldv_56852:
  {
  tmp___1 = enic_poll_lock_napi((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto ldv_56851;
  } else {
  }
  {
  local_bh_enable();
  i = i + 1U;
  }
  ldv_56855: ;
  if (i < enic->rq_count) {
    goto ldv_56854;
  } else {
  }
  {
  netif_carrier_off(netdev);
  netif_tx_disable(netdev);
  tmp___4 = vnic_dev_get_intr_mode(enic->vdev);
  }
  if ((unsigned int )tmp___4 == 3U) {
    i = 0U;
    goto ldv_56858;
    ldv_56857:
    {
    tmp___3 = enic_cq_wq(enic, i);
    napi_disable((struct napi_struct *)(& enic->napi) + (unsigned long )tmp___3);
    i = i + 1U;
    }
    ldv_56858: ;
    if (i < enic->wq_count) {
      goto ldv_56857;
    } else {
    }
  } else {
  }
  {
  tmp___5 = enic_is_dynamic(enic);
  }
  if (tmp___5 == 0) {
    {
    tmp___6 = enic_is_sriov_vf(enic);
    }
    if (tmp___6 == 0) {
      {
      enic_dev_del_station_addr(enic);
      }
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_56861;
  ldv_56860:
  {
  err = vnic_wq_disable((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_56861: ;
  if (i < enic->wq_count) {
    goto ldv_56860;
  } else {
  }
  i = 0U;
  goto ldv_56864;
  ldv_56863:
  {
  err = vnic_rq_disable((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_56864: ;
  if (i < enic->rq_count) {
    goto ldv_56863;
  } else {
  }
  {
  enic_dev_notify_unset(enic);
  enic_free_intr(enic);
  i = 0U;
  }
  goto ldv_56867;
  ldv_56866:
  {
  vnic_wq_clean((struct vnic_wq *)(& enic->wq) + (unsigned long )i, & enic_free_wq_buf);
  i = i + 1U;
  }
  ldv_56867: ;
  if (i < enic->wq_count) {
    goto ldv_56866;
  } else {
  }
  i = 0U;
  goto ldv_56870;
  ldv_56869:
  {
  vnic_rq_clean((struct vnic_rq *)(& enic->rq) + (unsigned long )i, & enic_free_rq_buf);
  i = i + 1U;
  }
  ldv_56870: ;
  if (i < enic->rq_count) {
    goto ldv_56869;
  } else {
  }
  i = 0U;
  goto ldv_56873;
  ldv_56872:
  {
  vnic_cq_clean((struct vnic_cq *)(& enic->cq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56873: ;
  if (i < enic->cq_count) {
    goto ldv_56872;
  } else {
  }
  i = 0U;
  goto ldv_56876;
  ldv_56875:
  {
  vnic_intr_clean((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56876: ;
  if (i < enic->intr_count) {
    goto ldv_56875;
  } else {
  }
  return (0);
}
}
static int enic_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct enic *enic ;
  void *tmp ;
  int running ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  running = (int )tmp___0;
  }
  if ((unsigned int )new_mtu - 68U > 8932U) {
    return (-22);
  } else {
  }
  {
  tmp___1 = enic_is_dynamic(enic);
  }
  if (tmp___1 != 0) {
    return (-95);
  } else {
    {
    tmp___2 = enic_is_sriov_vf(enic);
    }
    if (tmp___2 != 0) {
      return (-95);
    } else {
    }
  }
  if (running != 0) {
    {
    enic_stop(netdev);
    }
  } else {
  }
  netdev->mtu = (unsigned int )new_mtu;
  if (netdev->mtu > enic->port_mtu) {
    {
    netdev_warn((struct net_device const *)netdev, "interface MTU (%d) set higher than port MTU (%d)\n",
                netdev->mtu, enic->port_mtu);
    }
  } else {
  }
  if (running != 0) {
    {
    enic_open(netdev);
    }
  } else {
  }
  return (0);
}
}
static void enic_change_mtu_work(struct work_struct *work )
{
  struct enic *enic ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  int new_mtu ;
  u32 tmp ;
  int err ;
  unsigned int i ;
  int __max1 ;
  int __max2 ;
  int __min1 ;
  int __min2 ;
  unsigned int tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  enic = (struct enic *)__mptr + 0xfffffffffffffe58UL;
  netdev = enic->netdev;
  tmp = vnic_dev_mtu(enic->vdev);
  new_mtu = (int )tmp;
  __max1 = 68;
  __min1 = 9000;
  __min2 = new_mtu;
  __max2 = __min1 < __min2 ? __min1 : __min2;
  new_mtu = __max1 > __max2 ? __max1 : __max2;
  ldv_rtnl_lock_156();
  ldv_del_timer_sync_157(& enic->notify_timer);
  i = 0U;
  }
  goto ldv_56901;
  ldv_56900:
  {
  napi_disable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56901: ;
  if (i < enic->rq_count) {
    goto ldv_56900;
  } else {
  }
  {
  vnic_intr_mask((struct vnic_intr *)(& enic->intr));
  enic_synchronize_irqs(enic);
  err = vnic_rq_disable((struct vnic_rq *)(& enic->rq));
  }
  if (err != 0) {
    {
    ldv_rtnl_unlock_158();
    netdev_err((struct net_device const *)netdev, "Unable to disable RQ.\n");
    }
    return;
  } else {
  }
  {
  vnic_rq_clean((struct vnic_rq *)(& enic->rq), & enic_free_rq_buf);
  vnic_cq_clean((struct vnic_cq *)(& enic->cq));
  vnic_intr_clean((struct vnic_intr *)(& enic->intr));
  netdev->mtu = (unsigned int )new_mtu;
  vnic_rq_fill((struct vnic_rq *)(& enic->rq), & enic_rq_alloc_buf);
  tmp___0 = vnic_rq_desc_used((struct vnic_rq *)(& enic->rq));
  }
  if (tmp___0 == 0U) {
    {
    ldv_rtnl_unlock_159();
    netdev_err((struct net_device const *)netdev, "Unable to alloc receive buffers.\n");
    }
    return;
  } else {
  }
  {
  vnic_rq_enable((struct vnic_rq *)(& enic->rq));
  napi_enable((struct napi_struct *)(& enic->napi));
  vnic_intr_unmask((struct vnic_intr *)(& enic->intr));
  enic_notify_timer_start(enic);
  ldv_rtnl_unlock_160();
  netdev_info((struct net_device const *)netdev, "interface MTU set as %d\n", netdev->mtu);
  }
  return;
}
}
static void enic_poll_controller(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_dev *vdev ;
  unsigned int i ;
  unsigned int intr ;
  enum vnic_dev_intr_mode tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  vdev = enic->vdev;
  tmp___0 = vnic_dev_get_intr_mode(vdev);
  }
  {
  if ((unsigned int )tmp___0 == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )tmp___0 == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )tmp___0 == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_3:
  i = 0U;
  goto ldv_56912;
  ldv_56911:
  {
  intr = enic_msix_rq_intr(enic, i);
  enic_isr_msix((int )enic->msix_entry[intr].vector, (void *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_56912: ;
  if (i < enic->rq_count) {
    goto ldv_56911;
  } else {
  }
  i = 0U;
  goto ldv_56915;
  ldv_56914:
  {
  intr = enic_msix_wq_intr(enic, i);
  tmp___1 = enic_cq_wq(enic, i);
  enic_isr_msix((int )enic->msix_entry[intr].vector, (void *)(& enic->napi) + (unsigned long )tmp___1);
  i = i + 1U;
  }
  ldv_56915: ;
  if (i < enic->wq_count) {
    goto ldv_56914;
  } else {
  }
  goto ldv_56917;
  case_2:
  {
  enic_isr_msi((int )(enic->pdev)->irq, (void *)enic);
  }
  goto ldv_56917;
  case_1:
  {
  enic_isr_legacy((int )(enic->pdev)->irq, (void *)netdev);
  }
  goto ldv_56917;
  switch_default: ;
  goto ldv_56917;
  switch_break: ;
  }
  ldv_56917: ;
  return;
}
}
static int enic_dev_wait(struct vnic_dev *vdev , int (*start)(struct vnic_dev * ,
                                                              int ) , int (*finished)(struct vnic_dev * ,
                                                                                       int * ) ,
                         int arg )
{
  unsigned long time ;
  int done ;
  int err ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = preempt_count();
  tmp___0 = ldv__builtin_expect(((unsigned long )tmp & 2096896UL) != 0UL, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/cisco/enic/enic_main.c"),
                         "i" (1882), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  err = (*start)(vdev, arg);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  time = (unsigned long )jiffies + 500UL;
  ldv_56940:
  {
  err = (*finished)(vdev, & done);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if (done != 0) {
    return (0);
  } else {
  }
  {
  schedule_timeout_uninterruptible(25L);
  }
  if ((long )((unsigned long )jiffies - time) < 0L) {
    goto ldv_56940;
  } else {
  }
  return (-110);
}
}
static int enic_dev_open(struct enic *enic )
{
  int err ;
  struct device *tmp ;
  {
  {
  err = enic_dev_wait(enic->vdev, & vnic_dev_open, & vnic_dev_open_done, 0);
  }
  if (err != 0) {
    {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "vNIC device open failed, err %d\n", err);
    }
  } else {
  }
  return (err);
}
}
static int enic_dev_hang_reset(struct enic *enic )
{
  int err ;
  {
  {
  err = enic_dev_wait(enic->vdev, & vnic_dev_hang_reset, & vnic_dev_hang_reset_done,
                      0);
  }
  if (err != 0) {
    {
    netdev_err((struct net_device const *)enic->netdev, "vNIC hang reset failed, err %d\n",
               err);
    }
  } else {
  }
  return (err);
}
}
int __enic_set_rsskey(struct enic *enic )
{
  union vnic_rss_key *rss_key_buf_va ;
  dma_addr_t rss_key_buf_pa ;
  int i ;
  int kidx ;
  int bidx ;
  int err ;
  void *tmp ;
  {
  {
  tmp = pci_zalloc_consistent(enic->pdev, 64UL, & rss_key_buf_pa);
  rss_key_buf_va = (union vnic_rss_key *)tmp;
  }
  if ((unsigned long )rss_key_buf_va == (unsigned long )((union vnic_rss_key *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_56960;
  ldv_56959:
  kidx = i / 10;
  bidx = i % 10;
  rss_key_buf_va->key[kidx].b[bidx] = enic->rss_key[i];
  i = i + 1;
  ldv_56960: ;
  if (i <= 39) {
    goto ldv_56959;
  } else {
  }
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = enic_set_rss_key(enic, rss_key_buf_pa, 64ULL);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  pci_free_consistent(enic->pdev, 64UL, (void *)rss_key_buf_va, rss_key_buf_pa);
  }
  return (err);
}
}
static int enic_set_rsskey(struct enic *enic )
{
  int tmp ;
  {
  {
  netdev_rss_key_fill((void *)(& enic->rss_key), 40UL);
  tmp = __enic_set_rsskey(enic);
  }
  return (tmp);
}
}
static int enic_set_rsscpu(struct enic *enic , u8 rss_hash_bits )
{
  dma_addr_t rss_cpu_buf_pa ;
  union vnic_rss_cpu *rss_cpu_buf_va ;
  unsigned int i ;
  int err ;
  void *tmp ;
  {
  {
  rss_cpu_buf_va = (union vnic_rss_cpu *)0;
  tmp = pci_alloc_consistent(enic->pdev, 256UL, & rss_cpu_buf_pa);
  rss_cpu_buf_va = (union vnic_rss_cpu *)tmp;
  }
  if ((unsigned long )rss_cpu_buf_va == (unsigned long )((union vnic_rss_cpu *)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_56974;
  ldv_56973:
  rss_cpu_buf_va->cpu[i / 4U].b[i & 3U] = (u8 )(i % enic->rq_count);
  i = i + 1U;
  ldv_56974: ;
  if (i >> (int )rss_hash_bits == 0U) {
    goto ldv_56973;
  } else {
  }
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = enic_set_rss_cpu(enic, rss_cpu_buf_pa, 256ULL);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  pci_free_consistent(enic->pdev, 256UL, (void *)rss_cpu_buf_va, rss_cpu_buf_pa);
  }
  return (err);
}
}
static int enic_set_niccfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type ,
                           u8 rss_hash_bits , u8 rss_base_cpu , u8 rss_enable )
{
  u8 tso_ipid_split_en ;
  u8 ig_vlan_strip_en ;
  int err ;
  {
  {
  tso_ipid_split_en = 0U;
  ig_vlan_strip_en = 1U;
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = enic_set_nic_cfg(enic, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                         (int )rss_base_cpu, (int )rss_enable, (int )tso_ipid_split_en,
                         (int )ig_vlan_strip_en);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
static int enic_set_rss_nic_cfg(struct enic *enic )
{
  struct device *dev ;
  struct device *tmp ;
  u8 rss_default_cpu ;
  u8 rss_hash_type ;
  u8 rss_hash_bits ;
  u8 rss_base_cpu ;
  u8 rss_enable ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = enic_get_dev(enic);
  dev = tmp;
  rss_default_cpu = 0U;
  rss_hash_type = 30U;
  rss_hash_bits = 7U;
  rss_base_cpu = 0U;
  rss_enable = (u8 )((enic->config.flags & 16U) != 0U && enic->rq_count > 1U);
  }
  if ((unsigned int )rss_enable != 0U) {
    {
    tmp___1 = enic_set_rsskey(enic);
    }
    if (tmp___1 == 0) {
      {
      tmp___0 = enic_set_rsscpu(enic, (int )rss_hash_bits);
      }
      if (tmp___0 != 0) {
        {
        rss_enable = 0U;
        dev_warn((struct device const *)dev, "RSS disabled, Failed to set RSS cpu indirection table.");
        }
      } else {
      }
    } else {
      {
      rss_enable = 0U;
      dev_warn((struct device const *)dev, "RSS disabled, Failed to set RSS key.\n");
      }
    }
  } else {
  }
  {
  tmp___2 = enic_set_niccfg(enic, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                            (int )rss_base_cpu, (int )rss_enable);
  }
  return (tmp___2);
}
}
static void enic_reset(struct work_struct *work )
{
  struct enic *enic ;
  struct work_struct const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  enic = (struct enic *)__mptr + 0xfffffffffffffea8UL;
  tmp = netif_running((struct net_device const *)enic->netdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  {
  ldv_rtnl_lock_167();
  ldv_spin_lock_168(& enic->enic_api_lock);
  enic_dev_hang_notify(enic);
  enic_stop(enic->netdev);
  enic_dev_hang_reset(enic);
  enic_reset_addr_lists(enic);
  enic_init_vnic_resources(enic);
  enic_set_rss_nic_cfg(enic);
  enic_dev_set_ig_vlan_rewrite_mode(enic);
  enic_open(enic->netdev);
  ldv_spin_unlock_169(& enic->enic_api_lock);
  call_netdevice_notifiers(3UL, enic->netdev);
  ldv_rtnl_unlock_170();
  }
  return;
}
}
static int enic_set_intr_mode(struct enic *enic )
{
  unsigned int n ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned int m ;
  unsigned int __min1___0 ;
  unsigned int __min2___0 ;
  unsigned int i ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  __min1 = enic->rq_count;
  __min2 = 8U;
  n = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = enic->wq_count;
  __min2___0 = 8U;
  m = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  tmp = ldv__builtin_expect((n + m) + 2U > 18U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/cisco/enic/enic_main.c"),
                         "i" (2087), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  i = 0U;
  goto ldv_57017;
  ldv_57016:
  enic->msix_entry[i].entry = (u16 )i;
  i = i + 1U;
  ldv_57017: ;
  if (i < (n + m) + 2U) {
    goto ldv_57016;
  } else {
  }
  if ((((((enic->config.flags & 16U) != 0U && (unsigned int )enic->config.intr_mode == 0U) && enic->rq_count >= n) && enic->wq_count >= m) && enic->cq_count >= n + m) && enic->intr_count >= (n + m) + 2U) {
    {
    tmp___0 = pci_enable_msix_range(enic->pdev, (struct msix_entry *)(& enic->msix_entry),
                                    (int )((n + m) + 2U), (int )((n + m) + 2U));
    }
    if (tmp___0 > 0) {
      {
      enic->rq_count = n;
      enic->wq_count = m;
      enic->cq_count = n + m;
      enic->intr_count = (n + m) + 2U;
      vnic_dev_set_intr_mode(enic->vdev, 3);
      }
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode == 0U && enic->rq_count != 0U) && enic->wq_count >= m) && enic->cq_count >= m + 1U) && enic->intr_count >= m + 3U) {
    {
    tmp___1 = pci_enable_msix_range(enic->pdev, (struct msix_entry *)(& enic->msix_entry),
                                    (int )(m + 3U), (int )(m + 3U));
    }
    if (tmp___1 > 0) {
      {
      enic->rq_count = 1U;
      enic->wq_count = m;
      enic->cq_count = m + 1U;
      enic->intr_count = m + 3U;
      vnic_dev_set_intr_mode(enic->vdev, 3);
      }
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode <= 1U && enic->rq_count != 0U) && enic->wq_count != 0U) && enic->cq_count > 1U) && enic->intr_count != 0U) {
    {
    tmp___2 = pci_enable_msi_exact(enic->pdev, 1);
    }
    if (tmp___2 == 0) {
      {
      enic->rq_count = 1U;
      enic->wq_count = 1U;
      enic->cq_count = 2U;
      enic->intr_count = 1U;
      vnic_dev_set_intr_mode(enic->vdev, 2);
      }
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode <= 2U && enic->rq_count != 0U) && enic->wq_count != 0U) && enic->cq_count > 1U) && enic->intr_count > 2U) {
    {
    enic->rq_count = 1U;
    enic->wq_count = 1U;
    enic->cq_count = 2U;
    enic->intr_count = 3U;
    vnic_dev_set_intr_mode(enic->vdev, 1);
    }
    return (0);
  } else {
  }
  {
  vnic_dev_set_intr_mode(enic->vdev, 0);
  }
  return (-22);
}
}
static void enic_clear_intr_mode(struct enic *enic )
{
  enum vnic_dev_intr_mode tmp ;
  {
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )tmp == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_3:
  {
  pci_disable_msix(enic->pdev);
  }
  goto ldv_57023;
  case_2:
  {
  pci_disable_msi(enic->pdev);
  }
  goto ldv_57023;
  switch_default: ;
  goto ldv_57023;
  switch_break: ;
  }
  ldv_57023:
  {
  vnic_dev_set_intr_mode(enic->vdev, 0);
  }
  return;
}
}
static struct net_device_ops const enic_netdev_dynamic_ops =
     {0, 0, & enic_open, & enic_stop, & enic_hard_start_xmit, 0, 0, & enic_set_rx_mode,
    & enic_set_mac_address_dynamic, & eth_validate_addr, 0, 0, & enic_change_mtu,
    0, & enic_tx_timeout, & enic_get_stats, 0, & enic_vlan_rx_add_vid, & enic_vlan_rx_kill_vid,
    & enic_poll_controller, 0, 0, & enic_busy_poll, & enic_set_vf_mac, 0, 0, 0, 0,
    0, & enic_set_vf_port, & enic_get_vf_port, 0, 0, 0, 0, 0, 0, 0, 0, & enic_rx_flow_steer,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct net_device_ops const enic_netdev_ops =
     {0, 0, & enic_open, & enic_stop, & enic_hard_start_xmit, 0, 0, & enic_set_rx_mode,
    & enic_set_mac_address, & eth_validate_addr, 0, 0, & enic_change_mtu, 0, & enic_tx_timeout,
    & enic_get_stats, 0, & enic_vlan_rx_add_vid, & enic_vlan_rx_kill_vid, & enic_poll_controller,
    0, 0, & enic_busy_poll, & enic_set_vf_mac, 0, 0, 0, 0, 0, & enic_set_vf_port,
    & enic_get_vf_port, 0, 0, 0, 0, 0, 0, 0, 0, & enic_rx_flow_steer, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void enic_dev_deinit(struct enic *enic )
{
  unsigned int i ;
  unsigned int tmp ;
  enum vnic_dev_intr_mode tmp___0 ;
  {
  i = 0U;
  goto ldv_57033;
  ldv_57032:
  {
  napi_hash_del((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  netif_napi_del((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_57033: ;
  if (i < enic->rq_count) {
    goto ldv_57032;
  } else {
  }
  {
  tmp___0 = vnic_dev_get_intr_mode(enic->vdev);
  }
  if ((unsigned int )tmp___0 == 3U) {
    i = 0U;
    goto ldv_57036;
    ldv_57035:
    {
    tmp = enic_cq_wq(enic, i);
    netif_napi_del((struct napi_struct *)(& enic->napi) + (unsigned long )tmp);
    i = i + 1U;
    }
    ldv_57036: ;
    if (i < enic->wq_count) {
      goto ldv_57035;
    } else {
    }
  } else {
  }
  {
  enic_free_vnic_resources(enic);
  enic_clear_intr_mode(enic);
  }
  return;
}
}
static void enic_kdump_kernel_config(struct enic *enic )
{
  struct device *tmp ;
  u16 __min1 ;
  u16 __min2 ;
  int tmp___0 ;
  {
  {
  tmp___0 = is_kdump_kernel();
  }
  if (tmp___0 != 0) {
    {
    tmp = enic_get_dev(enic);
    _dev_info((struct device const *)tmp, "Running from within kdump kernel. Using minimal resources\n");
    enic->rq_count = 1U;
    enic->wq_count = 1U;
    enic->config.rq_desc_count = 64U;
    enic->config.wq_desc_count = 64U;
    __min1 = 1500U;
    __min2 = enic->config.mtu;
    enic->config.mtu = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
    }
  } else {
  }
  return;
}
}
static int enic_dev_init(struct enic *enic )
{
  struct device *dev ;
  struct device *tmp ;
  struct net_device *netdev ;
  unsigned int i ;
  int err ;
  enum vnic_dev_intr_mode tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = enic_get_dev(enic);
  dev = tmp;
  netdev = enic->netdev;
  err = enic_dev_intr_coal_timer_info(enic);
  }
  if (err != 0) {
    {
    dev_warn((struct device const *)dev, "Using default conversion factor for interrupt coalesce timer\n");
    vnic_dev_intr_coal_timer_info_default(enic->vdev);
    }
  } else {
  }
  {
  err = enic_get_vnic_config(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Get vNIC configuration failed, aborting\n");
    }
    return (err);
  } else {
  }
  {
  enic_get_res_counts(enic);
  enic_kdump_kernel_config(enic);
  err = enic_set_intr_mode(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Failed to set intr mode based on resource counts and system capabilities, aborting\n");
    }
    return (err);
  } else {
  }
  {
  err = enic_alloc_vnic_resources(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Failed to alloc vNIC resources, aborting\n");
    }
    goto err_out_free_vnic_resources;
  } else {
  }
  {
  enic_init_vnic_resources(enic);
  err = enic_set_rss_nic_cfg(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Failed to config nic, aborting\n");
    }
    goto err_out_free_vnic_resources;
  } else {
  }
  {
  tmp___0 = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp___0 == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  switch_default:
  {
  netif_napi_add(netdev, (struct napi_struct *)(& enic->napi), & enic_poll, 64);
  napi_hash_add((struct napi_struct *)(& enic->napi));
  }
  goto ldv_57053;
  case_3:
  i = 0U;
  goto ldv_57056;
  ldv_57055:
  {
  netif_napi_add(netdev, (struct napi_struct *)(& enic->napi) + (unsigned long )i,
                 & enic_poll_msix_rq, 64);
  napi_hash_add((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_57056: ;
  if (i < enic->rq_count) {
    goto ldv_57055;
  } else {
  }
  i = 0U;
  goto ldv_57059;
  ldv_57058:
  {
  tmp___1 = enic_cq_wq(enic, i);
  netif_napi_add(netdev, (struct napi_struct *)(& enic->napi) + (unsigned long )tmp___1,
                 & enic_poll_msix_wq, 64);
  i = i + 1U;
  }
  ldv_57059: ;
  if (i < enic->wq_count) {
    goto ldv_57058;
  } else {
  }
  goto ldv_57053;
  switch_break: ;
  }
  ldv_57053: ;
  return (0);
  err_out_free_vnic_resources:
  {
  enic_clear_intr_mode(enic);
  enic_free_vnic_resources(enic);
  }
  return (err);
}
}
static void enic_iounmap(struct enic *enic )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_57068;
  ldv_57067: ;
  if ((unsigned long )enic->bar[i].vaddr != (unsigned long )((void *)0)) {
    {
    ldv_iounmap_171((void volatile *)enic->bar[i].vaddr);
    }
  } else {
  }
  i = i + 1U;
  ldv_57068: ;
  if (i <= 5U) {
    goto ldv_57067;
  } else {
  }
  return;
}
}
static int enic_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct device *dev ;
  struct net_device *netdev ;
  struct enic *enic ;
  int using_dac ;
  unsigned int i ;
  int err ;
  int pos ;
  int num_pps ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___1 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___4 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  dev = & pdev->dev;
  using_dac = 0;
  pos = 0;
  num_pps = 1;
  netdev = ldv_alloc_etherdev_mqs_172(28672, 8U, 8U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)netdev);
  netdev->dev.parent = & pdev->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic->netdev = netdev;
  enic->pdev = pdev;
  err = pci_enable_device_mem(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Cannot enable PCI device, aborting\n");
    }
    goto err_out_free_netdev;
  } else {
  }
  {
  err = pci_request_regions(pdev, "enic");
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Cannot request PCI regions, aborting\n");
    }
    goto err_out_disable_device;
  } else {
  }
  {
  pci_set_master(pdev);
  err = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (err != 0) {
    {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)dev, "No usable DMA configuration, aborting\n");
      }
      goto err_out_release_regions;
    } else {
    }
    {
    err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)dev, "Unable to obtain %u-bit DMA for consistent allocations, aborting\n",
              32);
      }
      goto err_out_release_regions;
    } else {
    }
  } else {
    {
    err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)dev, "Unable to obtain %u-bit DMA for consistent allocations, aborting\n",
              64);
      }
      goto err_out_release_regions;
    } else {
    }
    using_dac = 1;
  }
  i = 0U;
  goto ldv_57090;
  ldv_57089: ;
  if ((pdev->resource[i].flags & 512UL) == 0UL) {
    goto ldv_57087;
  } else {
  }
  {
  enic->bar[i].len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
  enic->bar[i].vaddr = pci_iomap(pdev, (int )i, enic->bar[i].len);
  }
  if ((unsigned long )enic->bar[i].vaddr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)dev, "Cannot memory-map BAR %d, aborting\n",
            i);
    err = -19;
    }
    goto err_out_iounmap;
  } else {
  }
  enic->bar[i].bus_addr = pdev->resource[i].start;
  ldv_57087:
  i = i + 1U;
  ldv_57090: ;
  if (i <= 5U) {
    goto ldv_57089;
  } else {
  }
  {
  enic->vdev = vnic_dev_register((struct vnic_dev *)0, (void *)enic, pdev, (struct vnic_dev_bar *)(& enic->bar),
                                 6U);
  }
  if ((unsigned long )enic->vdev == (unsigned long )((struct vnic_dev *)0)) {
    {
    dev_err((struct device const *)dev, "vNIC registration failed, aborting\n");
    err = -19;
    }
    goto err_out_iounmap;
  } else {
  }
  {
  pos = pci_find_ext_capability(pdev, 16);
  }
  if (pos != 0) {
    {
    pci_read_config_word((struct pci_dev const *)pdev, pos + 14, & enic->num_vfs);
    }
    if ((unsigned int )enic->num_vfs != 0U) {
      {
      err = pci_enable_sriov(pdev, (int )enic->num_vfs);
      }
      if (err != 0) {
        {
        dev_err((struct device const *)dev, "SRIOV enable failed, aborting. pci_enable_sriov() returned %d\n",
                err);
        }
        goto err_out_vnic_unregister;
      } else {
      }
      enic->priv_flags = enic->priv_flags | 1U;
      num_pps = (int )enic->num_vfs;
    } else {
    }
  } else {
  }
  {
  tmp___0 = kcalloc((size_t )num_pps, 92UL, 208U);
  enic->pp = (struct enic_port_profile *)tmp___0;
  }
  if ((unsigned long )enic->pp == (unsigned long )((struct enic_port_profile *)0)) {
    err = -12;
    goto err_out_disable_sriov_pp;
  } else {
  }
  {
  err = enic_dev_open(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "vNIC dev open failed, aborting\n");
    }
    goto err_out_disable_sriov;
  } else {
  }
  {
  spinlock_check(& enic->devcmd_lock);
  __raw_spin_lock_init(& enic->devcmd_lock.__annonCompField18.rlock, "&(&enic->devcmd_lock)->rlock",
                       & __key);
  spinlock_check(& enic->enic_api_lock);
  __raw_spin_lock_init(& enic->enic_api_lock.__annonCompField18.rlock, "&(&enic->enic_api_lock)->rlock",
                       & __key___0);
  err = enic_dev_set_ig_vlan_rewrite_mode(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Failed to set ingress vlan rewrite mode, aborting.\n");
    }
    goto err_out_dev_close;
  } else {
  }
  {
  netif_carrier_off(netdev);
  tmp___1 = enic_is_dynamic(enic);
  }
  if (tmp___1 == 0) {
    {
    err = vnic_dev_init(enic->vdev, 0);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)dev, "vNIC dev init failed, aborting\n");
      }
      goto err_out_dev_close;
    } else {
    }
  } else {
  }
  {
  err = enic_dev_init(enic);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Device initialization failed, aborting\n");
    }
    goto err_out_dev_close;
  } else {
  }
  {
  netif_set_real_num_tx_queues(netdev, enic->wq_count);
  netif_set_real_num_rx_queues(netdev, enic->rq_count);
  init_timer_key(& enic->notify_timer, 0U, "(&enic->notify_timer)", & __key___1);
  enic->notify_timer.function = & enic_notify_timer;
  enic->notify_timer.data = (unsigned long )enic;
  enic_set_rx_coal_setting(enic);
  __init_work(& enic->reset, 0);
  __constr_expr_0.counter = 137438953408L;
  enic->reset.data = __constr_expr_0;
  lockdep_init_map(& enic->reset.lockdep_map, "(&enic->reset)", & __key___2, 0);
  INIT_LIST_HEAD(& enic->reset.entry);
  enic->reset.func = & enic_reset;
  __init_work(& enic->change_mtu_work, 0);
  __constr_expr_1.counter = 137438953408L;
  enic->change_mtu_work.data = __constr_expr_1;
  lockdep_init_map(& enic->change_mtu_work.lockdep_map, "(&enic->change_mtu_work)",
                   & __key___3, 0);
  INIT_LIST_HEAD(& enic->change_mtu_work.entry);
  enic->change_mtu_work.func = & enic_change_mtu_work;
  i = 0U;
  }
  goto ldv_57107;
  ldv_57106:
  {
  spinlock_check((spinlock_t *)(& enic->wq_lock) + (unsigned long )i);
  __raw_spin_lock_init(& ((spinlock_t *)(& enic->wq_lock) + (unsigned long )i)->__annonCompField18.rlock,
                       "&(&enic->wq_lock[i])->rlock", & __key___4);
  i = i + 1U;
  }
  ldv_57107: ;
  if (i < enic->wq_count) {
    goto ldv_57106;
  } else {
  }
  {
  enic->port_mtu = (u32 )enic->config.mtu;
  enic_change_mtu(netdev, (int )enic->port_mtu);
  err = enic_set_mac_addr(netdev, (char *)(& enic->mac_addr));
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Invalid MAC address, aborting\n");
    }
    goto err_out_dev_deinit;
  } else {
  }
  {
  enic->tx_coalesce_usecs = enic->config.intr_timer_usec;
  enic->rx_coalesce_usecs = enic->tx_coalesce_usecs;
  tmp___2 = enic_is_dynamic(enic);
  }
  if (tmp___2 != 0) {
    netdev->netdev_ops = & enic_netdev_dynamic_ops;
  } else {
    {
    tmp___3 = enic_is_sriov_vf(enic);
    }
    if (tmp___3 != 0) {
      netdev->netdev_ops = & enic_netdev_dynamic_ops;
    } else {
      netdev->netdev_ops = & enic_netdev_ops;
    }
  }
  {
  netdev->watchdog_timeo = 500;
  enic_set_ethtool_ops(netdev);
  netdev->features = netdev->features | 384ULL;
  }
  if ((enic->config.flags & 2048U) != 0U) {
    {
    netdev->features = netdev->features & 0xffffffffffffff7fULL;
    enic->loop_enable = 1U;
    enic->loop_tag = enic->config.loop_tag;
    _dev_info((struct device const *)dev, "loopback tag=0x%04x\n", (int )enic->loop_tag);
    }
  } else {
  }
  if ((enic->config.flags & 8U) != 0U) {
    netdev->hw_features = netdev->hw_features | 9ULL;
  } else {
  }
  if ((int )enic->config.flags & 1) {
    netdev->hw_features = netdev->hw_features | 1638400ULL;
  } else {
  }
  if ((enic->config.flags & 16U) != 0U) {
    netdev->hw_features = netdev->hw_features | 8589934592ULL;
  } else {
  }
  if ((enic->config.flags & 4U) != 0U) {
    netdev->hw_features = netdev->hw_features | 17179869184ULL;
  } else {
  }
  netdev->features = netdev->features | netdev->hw_features;
  netdev->hw_features = netdev->hw_features | 4294967296ULL;
  if (using_dac != 0) {
    netdev->features = netdev->features | 32ULL;
  } else {
  }
  {
  netdev->priv_flags = netdev->priv_flags | 131072U;
  err = ldv_register_netdev_173(netdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)dev, "Cannot register net device, aborting\n");
    }
    goto err_out_dev_deinit;
  } else {
  }
  enic->rx_copybreak = 256U;
  return (0);
  err_out_dev_deinit:
  {
  enic_dev_deinit(enic);
  }
  err_out_dev_close:
  {
  vnic_dev_close(enic->vdev);
  }
  err_out_disable_sriov:
  {
  kfree((void const *)enic->pp);
  }
  err_out_disable_sriov_pp:
  {
  tmp___4 = enic_sriov_enabled(enic);
  }
  if (tmp___4 != 0) {
    {
    pci_disable_sriov(pdev);
    enic->priv_flags = enic->priv_flags & 4294967294U;
    }
  } else {
  }
  err_out_vnic_unregister:
  {
  vnic_dev_unregister(enic->vdev);
  }
  err_out_iounmap:
  {
  enic_iounmap(enic);
  }
  err_out_release_regions:
  {
  pci_release_regions(pdev);
  }
  err_out_disable_device:
  {
  pci_disable_device(pdev);
  }
  err_out_free_netdev:
  {
  ldv_free_netdev_174(netdev);
  }
  return (err);
}
}
static void enic_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct enic *enic ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  }
  if ((unsigned long )netdev != (unsigned long )((struct net_device *)0)) {
    {
    tmp___0 = netdev_priv((struct net_device const *)netdev);
    enic = (struct enic *)tmp___0;
    cancel_work_sync(& enic->reset);
    cancel_work_sync(& enic->change_mtu_work);
    ldv_unregister_netdev_175(netdev);
    enic_dev_deinit(enic);
    vnic_dev_close(enic->vdev);
    tmp___1 = enic_sriov_enabled(enic);
    }
    if (tmp___1 != 0) {
      {
      pci_disable_sriov(pdev);
      enic->priv_flags = enic->priv_flags & 4294967294U;
      }
    } else {
    }
    {
    kfree((void const *)enic->pp);
    vnic_dev_unregister(enic->vdev);
    enic_iounmap(enic);
    pci_release_regions(pdev);
    pci_disable_device(pdev);
    ldv_free_netdev_176(netdev);
    }
  } else {
  }
  return;
}
}
static struct pci_driver enic_driver =
     {{0, 0}, "enic", (struct pci_device_id const *)(& enic_id_table), & enic_probe,
    & enic_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                         0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}}}},
                                                    {0, 0}}};
static int enic_init_module(void)
{
  int tmp ;
  {
  {
  printk("\016enic: %s, ver %s\n", (char *)"Cisco VIC Ethernet NIC Driver", (char *)"2.1.1.83");
  tmp = ldv___pci_register_driver_177(& enic_driver, & __this_module, "enic");
  }
  return (tmp);
}
}
static void enic_cleanup_module(void)
{
  {
  {
  ldv_pci_unregister_driver_178(& enic_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_enic_cleanup_module_16_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_enic_init_module_16_7(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_13_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_irq_deregister_7_1(int arg0 ) ;
void ldv_dispatch_irq_register_11_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_10_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dummy_resourceless_instance_callback_2_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct net_device * ,
                                                               unsigned int * , unsigned char * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ,
                                                   unsigned char *arg3 , unsigned char *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_2_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_17(int (*arg0)(struct net_device * ,
                                                               struct ethtool_rxnfc * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , struct ethtool_rxnfc *arg2 ,
                                                   unsigned int *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_20(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_24(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_27(int (*arg0)(struct net_device * ,
                                                               struct ethtool_tunable * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   struct ethtool_tunable *arg2 ,
                                                   void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_28(int (*arg0)(struct napi_struct * ) ,
                                                   struct napi_struct *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_29(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_32(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_33(int (*arg0)(struct net_device * ,
                                                               int , struct sk_buff * ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   struct sk_buff *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_36(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_37(int (*arg0)(struct net_device * ,
                                                               struct sk_buff * ,
                                                               unsigned short , unsigned int ) ,
                                                   struct net_device *arg1 , struct sk_buff *arg2 ,
                                                   unsigned short arg3 , unsigned int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_2_40(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_42(int (*arg0)(struct net_device * ,
                                                               int , unsigned char * ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_45(int (*arg0)(struct net_device * ,
                                                               int , struct nlattr ** ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_48(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_49(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_50(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_51(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_54(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_58(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_61(int (*arg0)(struct net_device * ,
                                                               unsigned int * , unsigned char * ,
                                                               unsigned char ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ,
                                                   unsigned char *arg3 , unsigned char arg4 ) ;
void ldv_dummy_resourceless_instance_callback_2_64(int (*arg0)(struct net_device * ,
                                                               struct ethtool_tunable * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   struct ethtool_tunable *arg2 ,
                                                   void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_entry_EMGentry_16(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
void ldv_net_dummy_resourceless_instance_2(void *arg0 ) ;
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_3(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_10_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_4(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
void ldv_EMGentry_exit_enic_cleanup_module_16_2(void (*arg0)(void) )
{
  {
  {
  enic_cleanup_module();
  }
  return;
}
}
int ldv_EMGentry_init_enic_init_module_16_7(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = enic_init_module();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_15_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_15_2(ldv_15_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_5_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3264UL);
    ldv_5_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_5_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_dispatch_deregister_13_1(struct net_device *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_7_1(int arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_dispatch_irq_register_11_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_0 *cf_arg_0 ;
  struct ldv_struct_interrupt_instance_0 *cf_arg_1 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_0 = (struct ldv_struct_interrupt_instance_0 *)tmp;
    cf_arg_0->arg0 = arg0;
    cf_arg_0->arg1 = arg1;
    cf_arg_0->arg2 = arg2;
    cf_arg_0->arg3 = arg3;
    ldv_interrupt_interrupt_instance_0((void *)cf_arg_0);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_1 = (struct ldv_struct_interrupt_instance_0 *)tmp___0;
    cf_arg_1->arg0 = arg0;
    cf_arg_1->arg1 = arg1;
    cf_arg_1->arg2 = arg2;
    cf_arg_1->arg3 = arg3;
    ldv_interrupt_interrupt_instance_1((void *)cf_arg_1);
    }
  }
  return;
}
}
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_0 *cf_arg_0 ;
  struct ldv_struct_interrupt_instance_0 *cf_arg_1 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_0 = (struct ldv_struct_interrupt_instance_0 *)tmp;
    cf_arg_0->arg0 = arg0;
    cf_arg_0->arg1 = arg1;
    cf_arg_0->arg2 = arg2;
    cf_arg_0->arg3 = arg3;
    ldv_interrupt_interrupt_instance_0((void *)cf_arg_0);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_1 = (struct ldv_struct_interrupt_instance_0 *)tmp___0;
    cf_arg_1->arg0 = arg0;
    cf_arg_1->arg1 = arg1;
    cf_arg_1->arg2 = arg2;
    cf_arg_1->arg3 = arg3;
    ldv_interrupt_interrupt_instance_1((void *)cf_arg_1);
    }
  }
  return;
}
}
void ldv_dispatch_register_10_4(struct net_device *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_dummy_resourceless_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_net_dummy_resourceless_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_pci_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ldv_pci_pci_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_28(int (*arg0)(struct napi_struct * ) ,
                                                   struct napi_struct *arg1 )
{
  {
  {
  enic_busy_poll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_29(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  enic_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_32(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  enic_get_stats(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_33(int (*arg0)(struct net_device * ,
                                                               int , struct sk_buff * ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   struct sk_buff *arg3 )
{
  {
  {
  enic_get_vf_port(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_36(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  enic_poll_controller(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_37(int (*arg0)(struct net_device * ,
                                                               struct sk_buff * ,
                                                               unsigned short , unsigned int ) ,
                                                   struct net_device *arg1 , struct sk_buff *arg2 ,
                                                   unsigned short arg3 , unsigned int arg4 )
{
  {
  {
  enic_rx_flow_steer(arg1, (struct sk_buff const *)arg2, (int )arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_40(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  enic_set_mac_address_dynamic(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  enic_set_rx_mode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_42(int (*arg0)(struct net_device * ,
                                                               int , unsigned char * ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  enic_set_vf_mac(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_45(int (*arg0)(struct net_device * ,
                                                               int , struct nlattr ** ) ,
                                                   struct net_device *arg1 , int arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  enic_set_vf_port(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_48(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  enic_hard_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_49(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  enic_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_50(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_51(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  enic_vlan_rx_add_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_54(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  enic_vlan_rx_kill_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_16(void *arg0 )
{
  void (*ldv_16_exit_enic_cleanup_module_default)(void) ;
  int (*ldv_16_init_enic_init_module_default)(void) ;
  int ldv_16_ret_default ;
  int tmp ;
  {
  {
  ldv_16_ret_default = ldv_EMGentry_init_enic_init_module_16_7(ldv_16_init_enic_init_module_default);
  ldv_16_ret_default = ldv_ldv_post_init_179(ldv_16_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(ldv_16_ret_default != 0);
    ldv_ldv_check_final_state_180();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_16_ret_default == 0);
    ldv_EMGentry_exit_enic_cleanup_module_16_2(ldv_16_exit_enic_cleanup_module_default);
    ldv_ldv_check_final_state_181();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_182();
  ldv_entry_EMGentry_16((void *)0);
  }
return 0;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_7_line_line ;
  {
  {
  ldv_7_line_line = arg1;
  ldv_dispatch_irq_deregister_7_1(ldv_7_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_8_netdev_net_device ;
  {
  {
  ldv_8_netdev_net_device = arg1;
  ldv_free((void *)ldv_8_netdev_net_device);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = enic_isr_legacy(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = enic_isr_msi(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
  void *ldv_0_data_data ;
  int ldv_0_line_line ;
  enum irqreturn ldv_0_ret_val_default ;
  enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_0 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_0 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_0 *)0)) {
    {
    ldv_0_line_line = data->arg0;
    ldv_0_callback_handler = data->arg1;
    ldv_0_thread_thread = data->arg2;
    ldv_0_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_interrupt_interrupt_instance_1(void *arg0 )
{
  enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
  void *ldv_1_data_data ;
  int ldv_1_line_line ;
  enum irqreturn ldv_1_ret_val_default ;
  enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_0 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_0 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_0 *)0)) {
    {
    ldv_1_line_line = data->arg0;
    ldv_1_callback_handler = data->arg1;
    ldv_1_thread_thread = data->arg2;
    ldv_1_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                             ldv_1_line_line, ldv_1_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_1_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_net_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_2_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
  void (*ldv_2_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                           unsigned long long * ) ;
  unsigned int (*ldv_2_callback_get_link)(struct net_device * ) ;
  unsigned int (*ldv_2_callback_get_msglevel)(struct net_device * ) ;
  int (*ldv_2_callback_get_rxfh)(struct net_device * , unsigned int * , unsigned char * ,
                                 unsigned char * ) ;
  unsigned int (*ldv_2_callback_get_rxfh_key_size)(struct net_device * ) ;
  int (*ldv_2_callback_get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , unsigned int * ) ;
  int (*ldv_2_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_2_callback_get_sset_count)(struct net_device * , int ) ;
  void (*ldv_2_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
  int (*ldv_2_callback_get_tunable)(struct net_device * , struct ethtool_tunable * ,
                                    void * ) ;
  int (*ldv_2_callback_ndo_busy_poll)(struct napi_struct * ) ;
  int (*ldv_2_callback_ndo_change_mtu)(struct net_device * , int ) ;
  struct rtnl_link_stats64 *(*ldv_2_callback_ndo_get_stats64)(struct net_device * ,
                                                              struct rtnl_link_stats64 * ) ;
  int (*ldv_2_callback_ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
  void (*ldv_2_callback_ndo_poll_controller)(struct net_device * ) ;
  int (*ldv_2_callback_ndo_rx_flow_steer)(struct net_device * , struct sk_buff * ,
                                          unsigned short , unsigned int ) ;
  int (*ldv_2_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  void (*ldv_2_callback_ndo_set_rx_mode)(struct net_device * ) ;
  int (*ldv_2_callback_ndo_set_vf_mac)(struct net_device * , int , unsigned char * ) ;
  int (*ldv_2_callback_ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
  enum netdev_tx (*ldv_2_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  void (*ldv_2_callback_ndo_tx_timeout)(struct net_device * ) ;
  int (*ldv_2_callback_ndo_validate_addr)(struct net_device * ) ;
  int (*ldv_2_callback_ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ,
                                            unsigned short ) ;
  int (*ldv_2_callback_ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ,
                                             unsigned short ) ;
  int (*ldv_2_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_2_callback_set_msglevel)(struct net_device * , unsigned int ) ;
  int (*ldv_2_callback_set_rxfh)(struct net_device * , unsigned int * , unsigned char * ,
                                 unsigned char ) ;
  int (*ldv_2_callback_set_tunable)(struct net_device * , struct ethtool_tunable * ,
                                    void * ) ;
  struct net_device *ldv_2_container_net_device ;
  struct ethtool_cmd *ldv_2_container_struct_ethtool_cmd_ptr ;
  struct ethtool_coalesce *ldv_2_container_struct_ethtool_coalesce_ptr ;
  struct ethtool_drvinfo *ldv_2_container_struct_ethtool_drvinfo_ptr ;
  struct ethtool_rxnfc *ldv_2_container_struct_ethtool_rxnfc_ptr ;
  struct ethtool_stats *ldv_2_container_struct_ethtool_stats_ptr ;
  struct ethtool_tunable *ldv_2_container_struct_ethtool_tunable_ptr ;
  struct napi_struct *ldv_2_container_struct_napi_struct_ptr ;
  struct nlattr **ldv_2_container_struct_nlattr_ptr_ptr ;
  struct rtnl_link_stats64 *ldv_2_container_struct_rtnl_link_stats64_ptr ;
  struct sk_buff *ldv_2_container_struct_sk_buff_ptr ;
  unsigned int *ldv_2_ldv_param_13_1_default ;
  unsigned char *ldv_2_ldv_param_13_2_default ;
  unsigned char *ldv_2_ldv_param_13_3_default ;
  unsigned int *ldv_2_ldv_param_17_2_default ;
  int ldv_2_ldv_param_21_1_default ;
  unsigned int ldv_2_ldv_param_24_1_default ;
  unsigned char *ldv_2_ldv_param_24_2_default ;
  int ldv_2_ldv_param_29_1_default ;
  int ldv_2_ldv_param_33_1_default ;
  unsigned short ldv_2_ldv_param_37_2_default ;
  unsigned int ldv_2_ldv_param_37_3_default ;
  int ldv_2_ldv_param_42_1_default ;
  unsigned char *ldv_2_ldv_param_42_2_default ;
  int ldv_2_ldv_param_45_1_default ;
  unsigned short ldv_2_ldv_param_51_1_default ;
  unsigned short ldv_2_ldv_param_51_2_default ;
  unsigned short ldv_2_ldv_param_54_1_default ;
  unsigned short ldv_2_ldv_param_54_2_default ;
  unsigned int ldv_2_ldv_param_58_1_default ;
  unsigned int *ldv_2_ldv_param_61_1_default ;
  unsigned char *ldv_2_ldv_param_61_2_default ;
  unsigned char ldv_2_ldv_param_61_3_default ;
  unsigned long long *ldv_2_ldv_param_8_2_default ;
  struct ldv_struct_dummy_resourceless_instance_2 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_2 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_2 *)0)) {
    {
    ldv_2_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_2;
  return;
  ldv_call_2:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  if (tmp == 32) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_2_64(ldv_2_callback_set_tunable, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_tunable_ptr,
                                                (void *)ldv_2_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_2;
  case_2:
  {
  tmp___0 = ldv_xmalloc(4UL);
  ldv_2_ldv_param_61_1_default = (unsigned int *)tmp___0;
  tmp___1 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_61_2_default = (unsigned char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_2_61(ldv_2_callback_set_rxfh, ldv_2_container_net_device,
                                                ldv_2_ldv_param_61_1_default, ldv_2_ldv_param_61_2_default,
                                                (int )ldv_2_ldv_param_61_3_default);
  ldv_free((void *)ldv_2_ldv_param_61_1_default);
  ldv_free((void *)ldv_2_ldv_param_61_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_58(ldv_2_callback_set_msglevel, ldv_2_container_net_device,
                                                ldv_2_ldv_param_58_1_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_2_57(ldv_2_callback_set_coalesce, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_2_54(ldv_2_callback_ndo_vlan_rx_kill_vid,
                                                ldv_2_container_net_device, (int )ldv_2_ldv_param_54_1_default,
                                                (int )ldv_2_ldv_param_54_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_2_51(ldv_2_callback_ndo_vlan_rx_add_vid,
                                                ldv_2_container_net_device, (int )ldv_2_ldv_param_51_1_default,
                                                (int )ldv_2_ldv_param_51_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_2_50(ldv_2_callback_ndo_validate_addr,
                                                ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_2_49(ldv_2_callback_ndo_tx_timeout, ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_2_48(ldv_2_callback_ndo_start_xmit, ldv_2_container_struct_sk_buff_ptr,
                                                ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_2_45(ldv_2_callback_ndo_set_vf_port, ldv_2_container_net_device,
                                                ldv_2_ldv_param_45_1_default, ldv_2_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_11:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_42_2_default = (unsigned char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_2_42(ldv_2_callback_ndo_set_vf_mac, ldv_2_container_net_device,
                                                ldv_2_ldv_param_42_1_default, ldv_2_ldv_param_42_2_default);
  ldv_free((void *)ldv_2_ldv_param_42_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_2_41(ldv_2_callback_ndo_set_rx_mode, ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_2_40(ldv_2_callback_ndo_set_mac_address,
                                                ldv_2_container_net_device, (void *)ldv_2_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_2_37(ldv_2_callback_ndo_rx_flow_steer,
                                                ldv_2_container_net_device, ldv_2_container_struct_sk_buff_ptr,
                                                (int )ldv_2_ldv_param_37_2_default,
                                                ldv_2_ldv_param_37_3_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_2_36(ldv_2_callback_ndo_poll_controller,
                                                ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_2_33(ldv_2_callback_ndo_get_vf_port, ldv_2_container_net_device,
                                                ldv_2_ldv_param_33_1_default, ldv_2_container_struct_sk_buff_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_2_32(ldv_2_callback_ndo_get_stats64, ldv_2_container_net_device,
                                                ldv_2_container_struct_rtnl_link_stats64_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_2_29(ldv_2_callback_ndo_change_mtu, ldv_2_container_net_device,
                                                ldv_2_ldv_param_29_1_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_2_28(ldv_2_callback_ndo_busy_poll, ldv_2_container_struct_napi_struct_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_2_27(ldv_2_callback_get_tunable, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_tunable_ptr,
                                                (void *)ldv_2_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_21:
  {
  tmp___3 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_24_2_default = (unsigned char *)tmp___3;
  ldv_dummy_resourceless_instance_callback_2_24(ldv_2_callback_get_strings, ldv_2_container_net_device,
                                                ldv_2_ldv_param_24_1_default, ldv_2_ldv_param_24_2_default);
  ldv_free((void *)ldv_2_ldv_param_24_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_2_21(ldv_2_callback_get_sset_count, ldv_2_container_net_device,
                                                ldv_2_ldv_param_21_1_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_2_20(ldv_2_callback_get_settings, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_24:
  {
  tmp___4 = ldv_xmalloc(4UL);
  ldv_2_ldv_param_17_2_default = (unsigned int *)tmp___4;
  ldv_dummy_resourceless_instance_callback_2_17(ldv_2_callback_get_rxnfc, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_rxnfc_ptr,
                                                ldv_2_ldv_param_17_2_default);
  ldv_free((void *)ldv_2_ldv_param_17_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_2_16(ldv_2_callback_get_rxfh_key_size,
                                                ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_26:
  {
  tmp___5 = ldv_xmalloc(4UL);
  ldv_2_ldv_param_13_1_default = (unsigned int *)tmp___5;
  tmp___6 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_13_2_default = (unsigned char *)tmp___6;
  tmp___7 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_13_3_default = (unsigned char *)tmp___7;
  ldv_dummy_resourceless_instance_callback_2_13(ldv_2_callback_get_rxfh, ldv_2_container_net_device,
                                                ldv_2_ldv_param_13_1_default, ldv_2_ldv_param_13_2_default,
                                                ldv_2_ldv_param_13_3_default);
  ldv_free((void *)ldv_2_ldv_param_13_1_default);
  ldv_free((void *)ldv_2_ldv_param_13_2_default);
  ldv_free((void *)ldv_2_ldv_param_13_3_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_2_12(ldv_2_callback_get_msglevel, ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_2_11(ldv_2_callback_get_link, ldv_2_container_net_device);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_29:
  {
  tmp___8 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_8_2_default = (unsigned long long *)tmp___8;
  ldv_dummy_resourceless_instance_callback_2_8(ldv_2_callback_get_ethtool_stats, ldv_2_container_net_device,
                                               ldv_2_container_struct_ethtool_stats_ptr,
                                               ldv_2_ldv_param_8_2_default);
  ldv_free((void *)ldv_2_ldv_param_8_2_default);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_2_7(ldv_2_callback_get_drvinfo, ldv_2_container_net_device,
                                               ldv_2_container_struct_ethtool_drvinfo_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_get_coalesce, ldv_2_container_net_device,
                                               ldv_2_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_32: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = enic_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  enic_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_3(void *arg0 )
{
  struct pci_driver *ldv_3_container_pci_driver ;
  struct pci_dev *ldv_3_resource_dev ;
  struct pm_message ldv_3_resource_pm_message ;
  struct pci_device_id *ldv_3_resource_struct_pci_device_id_ptr ;
  int ldv_3_ret_default ;
  struct ldv_struct_pci_instance_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_3 *)arg0;
  ldv_3_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_3 *)0)) {
    {
    ldv_3_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_3_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_183();
    ldv_3_ret_default = ldv_pci_instance_probe_3_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_3_container_pci_driver->probe,
                                                    ldv_3_resource_dev, ldv_3_resource_struct_pci_device_id_ptr);
    ldv_3_ret_default = ldv_ldv_post_probe_184(ldv_3_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_dev);
    ldv_free((void *)ldv_3_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_3:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_3;
  case_2: ;
  if ((unsigned long )ldv_3_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_3_8(ldv_3_container_pci_driver->suspend,
                                                     ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_late_3_7(ldv_3_container_pci_driver->suspend_late,
                                                          ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_3_6(ldv_3_container_pci_driver->resume_early, ldv_3_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_3_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_3_5(ldv_3_container_pci_driver->resume, ldv_3_resource_dev);
    }
  } else {
  }
  goto ldv_call_3;
  case_3: ;
  if ((unsigned long )ldv_3_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_3_3(ldv_3_container_pci_driver->shutdown, ldv_3_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_release_3_2(ldv_3_container_pci_driver->remove, ldv_3_resource_dev);
  }
  goto ldv_main_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_14_pci_driver_pci_driver ;
  {
  {
  ldv_14_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_14_1(ldv_14_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_10_netdev_net_device ;
  int ldv_10_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_10_ret_default = 1;
  ldv_10_ret_default = ldv_pre_register_netdev();
  ldv_10_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_10_ret_default == 0);
    ldv_10_ret_default = ldv_register_netdev_open_10_6((ldv_10_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_10_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_10_ret_default == 0);
      ldv_dispatch_register_10_4(ldv_10_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_10_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_10_ret_default != 0);
    }
  }
  return (ldv_10_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_10_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = enic_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_12_callback_handler)(int , void * ) ;
  void *ldv_12_data_data ;
  int ldv_12_line_line ;
  enum irqreturn (*ldv_12_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_line_line = (int )arg1;
    ldv_12_callback_handler = arg2;
    ldv_12_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_12_data_data = arg5;
    ldv_dispatch_irq_register_12_2(ldv_12_line_line, ldv_12_callback_handler, ldv_12_thread_thread,
                                   ldv_12_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_4(void *arg0 )
{
  struct timer_list *ldv_4_container_timer_list ;
  struct ldv_struct_timer_instance_4 *data ;
  {
  data = (struct ldv_struct_timer_instance_4 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_4 *)0)) {
    {
    ldv_4_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_4_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_4_2(ldv_4_container_timer_list->function, ldv_4_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_13_netdev_net_device ;
  {
  {
  ldv_13_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_13_2((ldv_13_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_13_netdev_net_device);
  ldv_dispatch_deregister_13_1(ldv_13_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  enic_stop(arg1);
  }
  return;
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc_unknown_size();
  ldv_after_alloc(res);
  }
  return (res);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return (tmp);
}
}
static struct sk_buff *ldv___netdev_alloc_skb_105(struct net_device *ldv_func_arg1 ,
                                                  unsigned int ldv_func_arg2 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return ((struct sk_buff *)tmp);
}
}
__inline static void ldv_spin_lock_109(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_112(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_126(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bpoll_lock_of_vnic_rq();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_127(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_bpoll_lock_of_vnic_rq();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_130(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bpoll_lock_of_vnic_rq();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_131(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_bpoll_lock_of_vnic_rq();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_136(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_137(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_devcmd_lock_of_enic();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_devcmd_lock_of_enic();
  spin_unlock_bh(lock);
  }
  return;
}
}
static int ldv_mod_timer_145(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_146(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_147(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_148(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_149(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_150(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_151(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_154(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_155(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_rtnl_lock_156(void)
{
  {
  {
  rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  }
  return;
}
}
static int ldv_del_timer_sync_157(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_rtnl_unlock_158(void)
{
  {
  {
  rtnl_unlock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
static void ldv_rtnl_unlock_159(void)
{
  {
  {
  rtnl_unlock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
static void ldv_rtnl_unlock_160(void)
{
  {
  {
  rtnl_unlock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
static void ldv_rtnl_lock_167(void)
{
  {
  {
  rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  }
  return;
}
}
__inline static void ldv_spin_lock_168(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_enic_api_lock_of_enic();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_169(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_enic_api_lock_of_enic();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_rtnl_unlock_170(void)
{
  {
  {
  rtnl_unlock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
static void ldv_iounmap_171(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_172(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                     unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_173(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_174(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_175(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_176(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_177(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_178(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_179(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_180(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_181(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_182(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_183(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_184(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
void *vnic_dev_get_res(struct vnic_dev *vdev , enum vnic_res_type type , unsigned int index ) ;
void vnic_dev_clear_desc_ring(struct vnic_dev_ring *ring ) ;
int vnic_dev_alloc_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ,
                             unsigned int desc_count , unsigned int desc_size ) ;
void vnic_dev_free_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ) ;
void vnic_cq_free(struct vnic_cq *cq ) ;
int vnic_cq_alloc(struct vnic_dev *vdev , struct vnic_cq *cq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_cq_init(struct vnic_cq *cq , unsigned int flow_control_enable , unsigned int color_enable ,
                  unsigned int cq_head , unsigned int cq_tail , unsigned int cq_tail_color ,
                  unsigned int interrupt_enable , unsigned int cq_entry_enable , unsigned int cq_message_enable ,
                  unsigned int interrupt_offset , u64 cq_message_addr ) ;
void vnic_cq_free(struct vnic_cq *cq )
{
  {
  {
  vnic_dev_free_desc_ring(cq->vdev, & cq->ring);
  cq->ctrl = (struct vnic_cq_ctrl *)0;
  }
  return;
}
}
int vnic_cq_alloc(struct vnic_dev *vdev , struct vnic_cq *cq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  {
  cq->index = index;
  cq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 3, index);
  cq->ctrl = (struct vnic_cq_ctrl *)tmp;
  }
  if ((unsigned long )cq->ctrl == (unsigned long )((struct vnic_cq_ctrl *)0)) {
    {
    printk("\venic: Failed to hook CQ[%d] resource\n", index);
    }
    return (-22);
  } else {
  }
  {
  err = vnic_dev_alloc_desc_ring(vdev, & cq->ring, desc_count, desc_size);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
void vnic_cq_init(struct vnic_cq *cq , unsigned int flow_control_enable , unsigned int color_enable ,
                  unsigned int cq_head , unsigned int cq_tail , unsigned int cq_tail_color ,
                  unsigned int interrupt_enable , unsigned int cq_entry_enable , unsigned int cq_message_enable ,
                  unsigned int interrupt_offset , u64 cq_message_addr )
{
  u64 paddr ;
  {
  {
  paddr = cq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (cq->ctrl)->ring_base));
  iowrite32(cq->ring.desc_count, (void *)(& (cq->ctrl)->ring_size));
  iowrite32(flow_control_enable, (void *)(& (cq->ctrl)->flow_control_enable));
  iowrite32(color_enable, (void *)(& (cq->ctrl)->color_enable));
  iowrite32(cq_head, (void *)(& (cq->ctrl)->cq_head));
  iowrite32(cq_tail, (void *)(& (cq->ctrl)->cq_tail));
  iowrite32(cq_tail_color, (void *)(& (cq->ctrl)->cq_tail_color));
  iowrite32(interrupt_enable, (void *)(& (cq->ctrl)->interrupt_enable));
  iowrite32(cq_entry_enable, (void *)(& (cq->ctrl)->cq_entry_enable));
  iowrite32(cq_message_enable, (void *)(& (cq->ctrl)->cq_message_enable));
  iowrite32(interrupt_offset, (void *)(& (cq->ctrl)->interrupt_offset));
  writeq((unsigned long )cq_message_addr, (void volatile *)(& (cq->ctrl)->cq_message_addr));
  cq->interrupt_offset = interrupt_offset;
  }
  return;
}
}
void vnic_cq_clean(struct vnic_cq *cq )
{
  {
  {
  cq->to_clean = 0U;
  cq->last_color = 0U;
  iowrite32(0U, (void *)(& (cq->ctrl)->cq_head));
  iowrite32(0U, (void *)(& (cq->ctrl)->cq_tail));
  iowrite32(1U, (void *)(& (cq->ctrl)->cq_tail_color));
  vnic_dev_clear_desc_ring(& cq->ring);
  }
  return;
}
}
u32 vnic_dev_intr_coal_timer_usec_to_hw(struct vnic_dev *vdev , u32 usec ) ;
void vnic_intr_free(struct vnic_intr *intr ) ;
int vnic_intr_alloc(struct vnic_dev *vdev , struct vnic_intr *intr , unsigned int index ) ;
void vnic_intr_init(struct vnic_intr *intr , u32 coalescing_timer , unsigned int coalescing_type ,
                    unsigned int mask_on_assertion ) ;
void vnic_intr_free(struct vnic_intr *intr )
{
  {
  intr->ctrl = (struct vnic_intr_ctrl *)0;
  return;
}
}
int vnic_intr_alloc(struct vnic_dev *vdev , struct vnic_intr *intr , unsigned int index )
{
  void *tmp ;
  {
  {
  intr->index = index;
  intr->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 10, index);
  intr->ctrl = (struct vnic_intr_ctrl *)tmp;
  }
  if ((unsigned long )intr->ctrl == (unsigned long )((struct vnic_intr_ctrl *)0)) {
    {
    printk("\venic: Failed to hook INTR[%d].ctrl resource\n", index);
    }
    return (-22);
  } else {
  }
  return (0);
}
}
void vnic_intr_init(struct vnic_intr *intr , u32 coalescing_timer , unsigned int coalescing_type ,
                    unsigned int mask_on_assertion )
{
  {
  {
  vnic_intr_coalescing_timer_set(intr, coalescing_timer);
  iowrite32(coalescing_type, (void *)(& (intr->ctrl)->coalescing_type));
  iowrite32(mask_on_assertion, (void *)(& (intr->ctrl)->mask_on_assertion));
  iowrite32(0U, (void *)(& (intr->ctrl)->int_credits));
  }
  return;
}
}
void vnic_intr_coalescing_timer_set(struct vnic_intr *intr , u32 coalescing_timer )
{
  u32 tmp ;
  {
  {
  tmp = vnic_dev_intr_coal_timer_usec_to_hw(intr->vdev, coalescing_timer);
  iowrite32(tmp, (void *)(& (intr->ctrl)->coalescing_timer));
  }
  return;
}
}
void vnic_intr_clean(struct vnic_intr *intr )
{
  {
  {
  iowrite32(0U, (void *)(& (intr->ctrl)->int_credits));
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static unsigned int vnic_wq_desc_used(struct vnic_wq *wq )
{
  {
  return ((wq->ring.desc_count - wq->ring.desc_avail) - 1U);
}
}
void vnic_wq_free(struct vnic_wq *wq ) ;
int vnic_wq_alloc(struct vnic_dev *vdev , struct vnic_wq *wq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_wq_init(struct vnic_wq *wq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset ) ;
static int vnic_wq_alloc_bufs(struct vnic_wq *wq )
{
  struct vnic_wq_buf *buf ;
  unsigned int i ;
  unsigned int j ;
  unsigned int count ;
  unsigned int blks ;
  void *tmp ;
  struct vnic_wq_buf *tmp___0 ;
  {
  count = wq->ring.desc_count;
  blks = ((count + (count <= 63U ? 32U : 64U)) - 1U) / (count <= 63U ? 32U : 64U);
  i = 0U;
  goto ldv_46633;
  ldv_46632:
  {
  tmp = kzalloc(count <= 63U ? 2304UL : 4608UL, 32U);
  wq->bufs[i] = (struct vnic_wq_buf *)tmp;
  }
  if ((unsigned long )wq->bufs[i] == (unsigned long )((struct vnic_wq_buf *)0)) {
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_46633: ;
  if (i < blks) {
    goto ldv_46632;
  } else {
  }
  i = 0U;
  goto ldv_46639;
  ldv_46638:
  buf = wq->bufs[i];
  j = 0U;
  goto ldv_46637;
  ldv_46636:
  buf->index = i * (count <= 63U ? 32U : 64U) + j;
  buf->desc = wq->ring.descs + (unsigned long )(wq->ring.desc_size * buf->index);
  if (buf->index + 1U == count) {
    buf->next = wq->bufs[0];
    (buf->next)->prev = buf;
    goto ldv_46635;
  } else
  if (j + 1U == (count <= 63U ? 32U : 64U)) {
    buf->next = wq->bufs[i + 1U];
    (buf->next)->prev = buf;
  } else {
    buf->next = buf + 1UL;
    (buf->next)->prev = buf;
    buf = buf + 1;
  }
  j = j + 1U;
  ldv_46637: ;
  if (j < (count <= 63U ? 32U : 64U)) {
    goto ldv_46636;
  } else {
  }
  ldv_46635:
  i = i + 1U;
  ldv_46639: ;
  if (i < blks) {
    goto ldv_46638;
  } else {
  }
  tmp___0 = wq->bufs[0];
  wq->to_clean = tmp___0;
  wq->to_use = tmp___0;
  return (0);
}
}
void vnic_wq_free(struct vnic_wq *wq )
{
  struct vnic_dev *vdev ;
  unsigned int i ;
  {
  {
  vdev = wq->vdev;
  vnic_dev_free_desc_ring(vdev, & wq->ring);
  i = 0U;
  }
  goto ldv_46647;
  ldv_46646: ;
  if ((unsigned long )wq->bufs[i] != (unsigned long )((struct vnic_wq_buf *)0)) {
    {
    kfree((void const *)wq->bufs[i]);
    wq->bufs[i] = (struct vnic_wq_buf *)0;
    }
  } else {
  }
  i = i + 1U;
  ldv_46647: ;
  if (i <= 63U) {
    goto ldv_46646;
  } else {
  }
  wq->ctrl = (struct vnic_wq_ctrl *)0;
  return;
}
}
int vnic_wq_alloc(struct vnic_dev *vdev , struct vnic_wq *wq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  {
  wq->index = index;
  wq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 1, index);
  wq->ctrl = (struct vnic_wq_ctrl *)tmp;
  }
  if ((unsigned long )wq->ctrl == (unsigned long )((struct vnic_wq_ctrl *)0)) {
    {
    printk("\venic: Failed to hook WQ[%d] resource\n", index);
    }
    return (-22);
  } else {
  }
  {
  vnic_wq_disable(wq);
  err = vnic_dev_alloc_desc_ring(vdev, & wq->ring, desc_count, desc_size);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = vnic_wq_alloc_bufs(wq);
  }
  if (err != 0) {
    {
    vnic_wq_free(wq);
    }
    return (err);
  } else {
  }
  return (0);
}
}
static void vnic_wq_init_start(struct vnic_wq *wq , unsigned int cq_index , unsigned int fetch_index ,
                               unsigned int posted_index , unsigned int error_interrupt_enable ,
                               unsigned int error_interrupt_offset )
{
  u64 paddr ;
  unsigned int count ;
  struct vnic_wq_buf *tmp ;
  {
  {
  count = wq->ring.desc_count;
  paddr = wq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (wq->ctrl)->ring_base));
  iowrite32(count, (void *)(& (wq->ctrl)->ring_size));
  iowrite32(fetch_index, (void *)(& (wq->ctrl)->fetch_index));
  iowrite32(posted_index, (void *)(& (wq->ctrl)->posted_index));
  iowrite32(cq_index, (void *)(& (wq->ctrl)->cq_index));
  iowrite32(error_interrupt_enable, (void *)(& (wq->ctrl)->error_interrupt_enable));
  iowrite32(error_interrupt_offset, (void *)(& (wq->ctrl)->error_interrupt_offset));
  iowrite32(0U, (void *)(& (wq->ctrl)->error_status));
  tmp = wq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  wq->to_clean = tmp;
  wq->to_use = tmp;
  }
  return;
}
}
void vnic_wq_init(struct vnic_wq *wq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset )
{
  {
  {
  vnic_wq_init_start(wq, cq_index, 0U, 0U, error_interrupt_enable, error_interrupt_offset);
  }
  return;
}
}
unsigned int vnic_wq_error_status(struct vnic_wq *wq )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32((void *)(& (wq->ctrl)->error_status));
  }
  return (tmp);
}
}
void vnic_wq_enable(struct vnic_wq *wq )
{
  {
  {
  iowrite32(1U, (void *)(& (wq->ctrl)->enable));
  }
  return;
}
}
int vnic_wq_disable(struct vnic_wq *wq )
{
  unsigned int wait ;
  unsigned int tmp ;
  {
  {
  iowrite32(0U, (void *)(& (wq->ctrl)->enable));
  wait = 0U;
  }
  goto ldv_46684;
  ldv_46683:
  {
  tmp = ioread32((void *)(& (wq->ctrl)->running));
  }
  if (tmp == 0U) {
    return (0);
  } else {
  }
  {
  __const_udelay(42950UL);
  wait = wait + 1U;
  }
  ldv_46684: ;
  if (wait <= 999U) {
    goto ldv_46683;
  } else {
  }
  {
  printk("\venic: Failed to disable WQ[%d]\n", wq->index);
  }
  return (-110);
}
}
void vnic_wq_clean(struct vnic_wq *wq , void (*buf_clean)(struct vnic_wq * , struct vnic_wq_buf * ) )
{
  struct vnic_wq_buf *buf ;
  struct vnic_wq_buf *tmp ;
  unsigned int tmp___0 ;
  struct vnic_wq_buf *tmp___1 ;
  {
  buf = wq->to_clean;
  goto ldv_46694;
  ldv_46693:
  {
  (*buf_clean)(wq, buf);
  tmp = buf->next;
  wq->to_clean = tmp;
  buf = tmp;
  wq->ring.desc_avail = wq->ring.desc_avail + 1U;
  }
  ldv_46694:
  {
  tmp___0 = vnic_wq_desc_used(wq);
  }
  if (tmp___0 != 0U) {
    goto ldv_46693;
  } else {
  }
  {
  tmp___1 = wq->bufs[0];
  wq->to_clean = tmp___1;
  wq->to_use = tmp___1;
  iowrite32(0U, (void *)(& (wq->ctrl)->fetch_index));
  iowrite32(0U, (void *)(& (wq->ctrl)->posted_index));
  iowrite32(0U, (void *)(& (wq->ctrl)->error_status));
  vnic_dev_clear_desc_ring(& wq->ring);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
unsigned int vnic_dev_get_res_count(struct vnic_dev *vdev , enum vnic_res_type type ) ;
int vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 ,
                 int wait ) ;
int vnic_dev_spec(struct vnic_dev *vdev , unsigned int offset , unsigned int size ,
                  void *value ) ;
u32 vnic_dev_get_intr_coal_timer_max(struct vnic_dev *vdev ) ;
void vnic_rq_free(struct vnic_rq *rq ) ;
int vnic_rq_alloc(struct vnic_dev *vdev , struct vnic_rq *rq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_rq_init(struct vnic_rq *rq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset ) ;
__inline static void vnic_set_nic_cfg(u32 *nic_cfg , u8 rss_default_cpu , u8 rss_hash_type ,
                                      u8 rss_hash_bits , u8 rss_base_cpu , u8 rss_enable ,
                                      u8 tso_ipid_split_en , u8 ig_vlan_strip_en )
{
  {
  *nic_cfg = ((((((u32 )rss_default_cpu | ((u32 )rss_hash_type << 8U)) | (((u32 )rss_hash_bits & 7U) << 16U)) | (((u32 )rss_base_cpu & 7U) << 19U)) | (((u32 )rss_enable & 1U) << 22U)) | (((u32 )tso_ipid_split_en & 1U) << 23U)) | (((u32 )ig_vlan_strip_en & 1U) << 24U);
  return;
}
}
int enic_add_vlan(struct enic *enic , u16 vlanid ) ;
int enic_del_vlan(struct enic *enic , u16 vlanid ) ;
int enic_get_vnic_config(struct enic *enic )
{
  struct vnic_enet_config *c ;
  int err ;
  struct device *tmp ;
  struct device *tmp___0 ;
  struct device *tmp___1 ;
  struct device *tmp___2 ;
  struct device *tmp___3 ;
  struct device *tmp___4 ;
  struct device *tmp___5 ;
  struct device *tmp___6 ;
  struct device *tmp___7 ;
  struct device *tmp___8 ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __max1 ;
  u32 __max2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 __max1___0 ;
  u32 __max2___0 ;
  u16 __min1___1 ;
  u16 __min2___1 ;
  u16 __max1___1 ;
  u16 __max2___1 ;
  u32 __min1___2 ;
  u32 __min2___2 ;
  u32 tmp___9 ;
  struct device *tmp___10 ;
  struct device *tmp___11 ;
  {
  {
  c = & enic->config;
  err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& enic->mac_addr));
  }
  if (err != 0) {
    {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Error getting MAC addr, %d\n", err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 0U, 4U, (void *)(& c->flags));
  }
  if (err != 0) {
    {
    tmp___0 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___0, "Error getting %s, %d\n", (char *)"flags",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 4U, 4U, (void *)(& c->wq_desc_count));
  }
  if (err != 0) {
    {
    tmp___1 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___1, "Error getting %s, %d\n", (char *)"wq_desc_count",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 8U, 4U, (void *)(& c->rq_desc_count));
  }
  if (err != 0) {
    {
    tmp___2 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___2, "Error getting %s, %d\n", (char *)"rq_desc_count",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 12U, 2U, (void *)(& c->mtu));
  }
  if (err != 0) {
    {
    tmp___3 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___3, "Error getting %s, %d\n", (char *)"mtu",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 16U, 1U, (void *)(& c->intr_timer_type));
  }
  if (err != 0) {
    {
    tmp___4 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___4, "Error getting %s, %d\n", (char *)"intr_timer_type",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 17U, 1U, (void *)(& c->intr_mode));
  }
  if (err != 0) {
    {
    tmp___5 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___5, "Error getting %s, %d\n", (char *)"intr_mode",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 36U, 4U, (void *)(& c->intr_timer_usec));
  }
  if (err != 0) {
    {
    tmp___6 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___6, "Error getting %s, %d\n", (char *)"intr_timer_usec",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 40U, 2U, (void *)(& c->loop_tag));
  }
  if (err != 0) {
    {
    tmp___7 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___7, "Error getting %s, %d\n", (char *)"loop_tag",
            err);
    }
    return (err);
  } else {
  }
  {
  err = vnic_dev_spec(enic->vdev, 44U, 2U, (void *)(& c->num_arfs));
  }
  if (err != 0) {
    {
    tmp___8 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___8, "Error getting %s, %d\n", (char *)"num_arfs",
            err);
    }
    return (err);
  } else {
  }
  __min1 = 4096U;
  __max1 = 64U;
  __max2 = c->wq_desc_count;
  __min2 = __max1 > __max2 ? __max1 : __max2;
  c->wq_desc_count = __min1 < __min2 ? __min1 : __min2;
  c->wq_desc_count = c->wq_desc_count & 4294967264U;
  __min1___0 = 4096U;
  __max1___0 = 64U;
  __max2___0 = c->rq_desc_count;
  __min2___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  c->rq_desc_count = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  c->rq_desc_count = c->rq_desc_count & 4294967264U;
  if ((unsigned int )c->mtu == 0U) {
    c->mtu = 1500U;
  } else {
  }
  {
  __min1___1 = 9000U;
  __max1___1 = 68U;
  __max2___1 = c->mtu;
  __min2___1 = (u16 )((int )__max1___1 > (int )__max2___1 ? __max1___1 : __max2___1);
  c->mtu = (u16 )((int )__min1___1 < (int )__min2___1 ? __min1___1 : __min2___1);
  __min1___2 = c->intr_timer_usec;
  tmp___9 = vnic_dev_get_intr_coal_timer_max(enic->vdev);
  __min2___2 = tmp___9;
  c->intr_timer_usec = __min1___2 < __min2___2 ? __min1___2 : __min2___2;
  tmp___10 = enic_get_dev(enic);
  _dev_info((struct device const *)tmp___10, "vNIC MAC addr %pM wq/rq %d/%d mtu %d\n",
            (u8 *)(& enic->mac_addr), c->wq_desc_count, c->rq_desc_count, (int )c->mtu);
  tmp___11 = enic_get_dev(enic);
  _dev_info((struct device const *)tmp___11, "vNIC csum tx/rx %s/%s tso/lro %s/%s rss %s intr mode %s type %s timer %d usec loopback tag 0x%04x\n",
            (enic->config.flags & 8U) != 0U ? (char *)"yes" : (char *)"no", (enic->config.flags & 4U) != 0U ? (char *)"yes" : (char *)"no",
            (int )enic->config.flags & 1 ? (char *)"yes" : (char *)"no", (enic->config.flags & 2U) != 0U ? (char *)"yes" : (char *)"no",
            (enic->config.flags & 16U) != 0U ? (char *)"yes" : (char *)"no", (unsigned int )c->intr_mode != 2U ? ((unsigned int )c->intr_mode != 1U ? ((unsigned int )c->intr_mode == 0U ? (char *)"any" : (char *)"unknown") : (char *)"MSI") : (char *)"INTx",
            (unsigned int )c->intr_timer_type != 0U ? ((unsigned int )c->intr_timer_type == 1U ? (char *)"idle" : (char *)"unknown") : (char *)"min",
            c->intr_timer_usec, (int )c->loop_tag);
  }
  return (0);
}
}
int enic_add_vlan(struct enic *enic , u16 vlanid )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  struct device *tmp ;
  {
  {
  a0 = (u64 )vlanid;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(enic->vdev, 1090535438, & a0, & a1, wait);
  }
  if (err != 0) {
    {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Can\'t add vlan id, %d\n", err);
    }
  } else {
  }
  return (err);
}
}
int enic_del_vlan(struct enic *enic , u16 vlanid )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  struct device *tmp ;
  {
  {
  a0 = (u64 )vlanid;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(enic->vdev, 1090535439, & a0, & a1, wait);
  }
  if (err != 0) {
    {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Can\'t delete vlan id, %d\n", err);
    }
  } else {
  }
  return (err);
}
}
int enic_set_nic_cfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type , u8 rss_hash_bits ,
                     u8 rss_base_cpu , u8 rss_enable , u8 tso_ipid_split_en , u8 ig_vlan_strip_en )
{
  u64 a0 ;
  u64 a1 ;
  u32 nic_cfg ;
  int wait ;
  int tmp ;
  {
  {
  wait = 1000;
  vnic_set_nic_cfg(& nic_cfg, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                   (int )rss_base_cpu, (int )rss_enable, (int )tso_ipid_split_en,
                   (int )ig_vlan_strip_en);
  a0 = (u64 )nic_cfg;
  a1 = 0ULL;
  tmp = vnic_dev_cmd(enic->vdev, 1090633744, & a0, & a1, wait);
  }
  return (tmp);
}
}
int enic_set_rss_key(struct enic *enic , dma_addr_t key_pa , u64 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = key_pa;
  a1 = len;
  wait = 1000;
  tmp = vnic_dev_cmd(enic->vdev, 1073758225, & a0, & a1, wait);
  }
  return (tmp);
}
}
int enic_set_rss_cpu(struct enic *enic , dma_addr_t cpu_pa , u64 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = cpu_pa;
  a1 = len;
  wait = 1000;
  tmp = vnic_dev_cmd(enic->vdev, 1073758226, & a0, & a1, wait);
  }
  return (tmp);
}
}
void enic_free_vnic_resources(struct enic *enic )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_47393;
  ldv_47392:
  {
  vnic_wq_free((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_47393: ;
  if (i < enic->wq_count) {
    goto ldv_47392;
  } else {
  }
  i = 0U;
  goto ldv_47396;
  ldv_47395:
  {
  vnic_rq_free((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_47396: ;
  if (i < enic->rq_count) {
    goto ldv_47395;
  } else {
  }
  i = 0U;
  goto ldv_47399;
  ldv_47398:
  {
  vnic_cq_free((struct vnic_cq *)(& enic->cq) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_47399: ;
  if (i < enic->cq_count) {
    goto ldv_47398;
  } else {
  }
  i = 0U;
  goto ldv_47402;
  ldv_47401:
  {
  vnic_intr_free((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  }
  ldv_47402: ;
  if (i < enic->intr_count) {
    goto ldv_47401;
  } else {
  }
  return;
}
}
void enic_get_res_counts(struct enic *enic )
{
  struct device *tmp ;
  {
  {
  enic->wq_count = vnic_dev_get_res_count(enic->vdev, 1);
  enic->rq_count = vnic_dev_get_res_count(enic->vdev, 2);
  enic->cq_count = vnic_dev_get_res_count(enic->vdev, 3);
  enic->intr_count = vnic_dev_get_res_count(enic->vdev, 10);
  tmp = enic_get_dev(enic);
  _dev_info((struct device const *)tmp, "vNIC resources avail: wq %d rq %d cq %d intr %d\n",
            enic->wq_count, enic->rq_count, enic->cq_count, enic->intr_count);
  }
  return;
}
}
void enic_init_vnic_resources(struct enic *enic )
{
  enum vnic_dev_intr_mode intr_mode ;
  unsigned int mask_on_assertion ;
  unsigned int interrupt_offset ;
  unsigned int error_interrupt_enable ;
  unsigned int error_interrupt_offset ;
  unsigned int cq_index ;
  unsigned int i ;
  {
  {
  intr_mode = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )intr_mode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )intr_mode == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_3:
  error_interrupt_enable = 1U;
  error_interrupt_offset = enic->intr_count - 2U;
  goto ldv_47419;
  switch_default:
  error_interrupt_enable = 0U;
  error_interrupt_offset = 0U;
  goto ldv_47419;
  switch_break: ;
  }
  ldv_47419:
  i = 0U;
  goto ldv_47422;
  ldv_47421:
  {
  cq_index = i;
  vnic_rq_init((struct vnic_rq *)(& enic->rq) + (unsigned long )i, cq_index, error_interrupt_enable,
               error_interrupt_offset);
  i = i + 1U;
  }
  ldv_47422: ;
  if (i < enic->rq_count) {
    goto ldv_47421;
  } else {
  }
  i = 0U;
  goto ldv_47425;
  ldv_47424:
  {
  cq_index = enic->rq_count + i;
  vnic_wq_init((struct vnic_wq *)(& enic->wq) + (unsigned long )i, cq_index, error_interrupt_enable,
               error_interrupt_offset);
  i = i + 1U;
  }
  ldv_47425: ;
  if (i < enic->wq_count) {
    goto ldv_47424;
  } else {
  }
  i = 0U;
  goto ldv_47431;
  ldv_47430: ;
  {
  if ((unsigned int )intr_mode == 3U) {
    goto case_3___0;
  } else {
  }
  goto switch_default___0;
  case_3___0:
  interrupt_offset = i;
  goto ldv_47428;
  switch_default___0:
  interrupt_offset = 0U;
  goto ldv_47428;
  switch_break___0: ;
  }
  ldv_47428:
  {
  vnic_cq_init((struct vnic_cq *)(& enic->cq) + (unsigned long )i, 0U, 1U, 0U, 0U,
               1U, 1U, 1U, 0U, interrupt_offset, 0ULL);
  i = i + 1U;
  }
  ldv_47431: ;
  if (i < enic->cq_count) {
    goto ldv_47430;
  } else {
  }
  {
  if ((unsigned int )intr_mode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )intr_mode == 3U) {
    goto case_3___1;
  } else {
  }
  goto switch_default___1;
  case_2: ;
  case_3___1:
  mask_on_assertion = 1U;
  goto ldv_47435;
  switch_default___1:
  mask_on_assertion = 0U;
  goto ldv_47435;
  switch_break___1: ;
  }
  ldv_47435:
  i = 0U;
  goto ldv_47438;
  ldv_47437:
  {
  vnic_intr_init((struct vnic_intr *)(& enic->intr) + (unsigned long )i, enic->config.intr_timer_usec,
                 (unsigned int )enic->config.intr_timer_type, mask_on_assertion);
  i = i + 1U;
  }
  ldv_47438: ;
  if (i < enic->intr_count) {
    goto ldv_47437;
  } else {
  }
  return;
}
}
int enic_alloc_vnic_resources(struct enic *enic )
{
  enum vnic_dev_intr_mode intr_mode ;
  unsigned int i ;
  int err ;
  struct device *tmp ;
  void *tmp___0 ;
  struct device *tmp___1 ;
  {
  {
  intr_mode = vnic_dev_get_intr_mode(enic->vdev);
  tmp = enic_get_dev(enic);
  _dev_info((struct device const *)tmp, "vNIC resources used:  wq %d rq %d cq %d intr %d intr mode %s\n",
            enic->wq_count, enic->rq_count, enic->cq_count, enic->intr_count, (unsigned int )intr_mode != 1U ? ((unsigned int )intr_mode != 2U ? ((unsigned int )intr_mode == 3U ? (char *)"MSI-X" : (char *)"unknown") : (char *)"MSI") : (char *)"legacy PCI INTx");
  i = 0U;
  }
  goto ldv_47448;
  ldv_47447:
  {
  err = vnic_wq_alloc(enic->vdev, (struct vnic_wq *)(& enic->wq) + (unsigned long )i,
                      i, enic->config.wq_desc_count, 16U);
  }
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_47448: ;
  if (i < enic->wq_count) {
    goto ldv_47447;
  } else {
  }
  i = 0U;
  goto ldv_47451;
  ldv_47450:
  {
  err = vnic_rq_alloc(enic->vdev, (struct vnic_rq *)(& enic->rq) + (unsigned long )i,
                      i, enic->config.rq_desc_count, 16U);
  }
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_47451: ;
  if (i < enic->rq_count) {
    goto ldv_47450;
  } else {
  }
  i = 0U;
  goto ldv_47454;
  ldv_47453: ;
  if (i < enic->rq_count) {
    {
    err = vnic_cq_alloc(enic->vdev, (struct vnic_cq *)(& enic->cq) + (unsigned long )i,
                        i, enic->config.rq_desc_count, 16U);
    }
  } else {
    {
    err = vnic_cq_alloc(enic->vdev, (struct vnic_cq *)(& enic->cq) + (unsigned long )i,
                        i, enic->config.wq_desc_count, 16U);
    }
  }
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_47454: ;
  if (i < enic->cq_count) {
    goto ldv_47453;
  } else {
  }
  i = 0U;
  goto ldv_47457;
  ldv_47456:
  {
  err = vnic_intr_alloc(enic->vdev, (struct vnic_intr *)(& enic->intr) + (unsigned long )i,
                        i);
  }
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_47457: ;
  if (i < enic->intr_count) {
    goto ldv_47456;
  } else {
  }
  {
  tmp___0 = vnic_dev_get_res(enic->vdev, 13, 0U);
  enic->legacy_pba = (u32 *)tmp___0;
  }
  if ((unsigned long )enic->legacy_pba == (unsigned long )((u32 *)0U) && (unsigned int )intr_mode == 1U) {
    {
    tmp___1 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___1, "Failed to hook legacy pba resource\n");
    err = -19;
    }
    goto err_out_cleanup;
  } else {
  }
  return (0);
  err_out_cleanup:
  {
  enic_free_vnic_resources(enic);
  }
  return (err);
}
}
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
int vnic_dev_fw_info(struct vnic_dev *vdev , struct vnic_devcmd_fw_info **fw_info ) ;
int vnic_dev_stats_dump(struct vnic_dev *vdev , struct vnic_stats **stats ) ;
int vnic_dev_hang_notify(struct vnic_dev *vdev ) ;
int vnic_dev_packet_filter(struct vnic_dev *vdev , int directed , int multicast ,
                           int broadcast , int promisc , int allmulti ) ;
int vnic_dev_add_addr(struct vnic_dev *vdev , u8 const *addr ) ;
int vnic_dev_del_addr(struct vnic_dev *vdev , u8 const *addr ) ;
int vnic_dev_notify_unset(struct vnic_dev *vdev ) ;
int vnic_dev_enable_wait(struct vnic_dev *vdev ) ;
int vnic_dev_disable(struct vnic_dev *vdev ) ;
int vnic_dev_intr_coal_timer_info(struct vnic_dev *vdev ) ;
int vnic_dev_set_ig_vlan_rewrite_mode(struct vnic_dev *vdev , u8 ig_vlan_rewrite_mode ) ;
int enic_dev_fw_info(struct enic *enic , struct vnic_devcmd_fw_info **fw_info ) ;
int enic_dev_fw_info(struct enic *enic , struct vnic_devcmd_fw_info **fw_info )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_fw_info(enic->vdev, fw_info);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_stats_dump(struct enic *enic , struct vnic_stats **vstats )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_stats_dump(enic->vdev, vstats);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_add_station_addr(struct enic *enic )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = is_valid_ether_addr((u8 const *)(enic->netdev)->dev_addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-99);
  } else {
  }
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_add_addr(enic->vdev, (u8 const *)(enic->netdev)->dev_addr);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_del_station_addr(struct enic *enic )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = is_valid_ether_addr((u8 const *)(enic->netdev)->dev_addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-99);
  } else {
  }
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_del_addr(enic->vdev, (u8 const *)(enic->netdev)->dev_addr);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_packet_filter(struct enic *enic , int directed , int multicast , int broadcast ,
                           int promisc , int allmulti )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_packet_filter(enic->vdev, directed, multicast, broadcast, promisc,
                               allmulti);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_add_addr(struct enic *enic , u8 const *addr )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_add_addr(enic->vdev, addr);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_del_addr(struct enic *enic , u8 const *addr )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_del_addr(enic->vdev, addr);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_notify_unset(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_notify_unset(enic->vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_hang_notify(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_hang_notify(enic->vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_set_ig_vlan_rewrite_mode(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_set_ig_vlan_rewrite_mode(enic->vdev, 2);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_enable(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_enable_wait(enic->vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_disable(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_disable(enic->vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_intr_coal_timer_info(struct enic *enic )
{
  int err ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = vnic_dev_intr_coal_timer_info(enic->vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct enic *enic ;
  void *tmp ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = enic_add_vlan(enic, (int )vid);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct enic *enic ;
  void *tmp ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  err = enic_del_vlan(enic, (int )vid);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (err);
}
}
int enic_dev_status_to_errno(int devcmd_status )
{
  {
  {
  if (devcmd_status == 0) {
    goto case_0;
  } else {
  }
  if (devcmd_status == 1) {
    goto case_1;
  } else {
  }
  if (devcmd_status == 2) {
    goto case_2;
  } else {
  }
  if (devcmd_status == 3) {
    goto case_3;
  } else {
  }
  if (devcmd_status == 4) {
    goto case_4;
  } else {
  }
  if (devcmd_status == 5) {
    goto case_5;
  } else {
  }
  if (devcmd_status == 11) {
    goto case_11;
  } else {
  }
  if (devcmd_status == 6) {
    goto case_6;
  } else {
  }
  if (devcmd_status == 7) {
    goto case_7;
  } else {
  }
  if (devcmd_status == 8) {
    goto case_8;
  } else {
  }
  if (devcmd_status == 9) {
    goto case_9;
  } else {
  }
  if (devcmd_status == 12) {
    goto case_12;
  } else {
  }
  if (devcmd_status == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (0);
  case_1: ;
  return (-22);
  case_2: ;
  return (-14);
  case_3: ;
  return (-1);
  case_4: ;
  return (-16);
  case_5: ;
  case_11: ;
  return (-95);
  case_6: ;
  return (-22);
  case_7: ;
  return (-12);
  case_8: ;
  return (-110);
  case_9: ;
  return (-100);
  case_12: ;
  return (-115);
  case_10: ;
  switch_default: ;
  return (-1 < devcmd_status ? -1 : devcmd_status);
  switch_break: ;
  }
}
}
extern int sprintf(char * , char const * , ...) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
struct vic_provinfo *vic_provinfo_alloc(gfp_t flags , u8 const *oui , u8 const type ) ;
void vic_provinfo_free(struct vic_provinfo *vp ) ;
int vic_provinfo_add_tlv(struct vic_provinfo *vp , u16 type , u16 length , void const *value ) ;
size_t vic_provinfo_size(struct vic_provinfo *vp ) ;
int vnic_dev_deinit(struct vnic_dev *vdev ) ;
int vnic_dev_init_prov2(struct vnic_dev *vdev , u8 *buf , u32 len ) ;
int vnic_dev_enable2(struct vnic_dev *vdev , int active ) ;
int vnic_dev_enable2_done(struct vnic_dev *vdev , int *status ) ;
int vnic_dev_deinit_done(struct vnic_dev *vdev , int *status ) ;
int enic_is_valid_pp_vf(struct enic *enic , int vf , int *err )
{
  int tmp ;
  int tmp___0 ;
  {
  if (vf != -1) {
    {
    tmp = enic_sriov_enabled(enic);
    }
    if (tmp != 0) {
      if (vf < 0 || vf >= (int )enic->num_vfs) {
        *err = -22;
        goto err_out;
      } else {
      }
    } else {
      *err = -95;
      goto err_out;
    }
  } else {
  }
  if (vf == -1) {
    {
    tmp___0 = enic_is_dynamic(enic);
    }
    if (tmp___0 == 0) {
      *err = -95;
      goto err_out;
    } else {
    }
  } else {
  }
  *err = 0;
  return (1);
  err_out: ;
  return (0);
}
}
static int enic_set_port_profile(struct enic *enic , int vf )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  struct vic_provinfo *vp ;
  u8 oui[3U] ;
  __be16 os_type ;
  char uuid_str[38U] ;
  char client_mac_str[18U] ;
  u8 *client_mac ;
  int err ;
  int tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  {
  {
  netdev = enic->netdev;
  oui[0] = 0U;
  oui[1] = 0U;
  oui[2] = 12U;
  os_type = 512U;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((pp->set & 4U) == 0U) {
    return (-22);
  } else {
    {
    tmp___0 = strlen((char const *)(& pp->name));
    }
    if (tmp___0 == 0UL) {
      return (-22);
    } else {
    }
  }
  {
  vp = vic_provinfo_alloc(208U, (u8 const *)(& oui), 4);
  }
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___1 = strlen((char const *)(& pp->name));
  err = vic_provinfo_add_tlv(vp, 0, (int )((unsigned int )((u16 )tmp___1) + 1U), (void const *)(& pp->name));
  }
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  {
  tmp___2 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    client_mac = (u8 *)(& pp->mac_addr);
  } else
  if (vf == -1) {
    client_mac = netdev->dev_addr;
  } else {
    {
    netdev_err((struct net_device const *)netdev, "Cannot find pp mac address for VF %d\n",
               vf);
    err = -22;
    }
    goto add_tlv_failure;
  }
  {
  err = vic_provinfo_add_tlv(vp, 1, 6, (void const *)client_mac);
  }
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  {
  snprintf((char *)(& client_mac_str), 18UL, "%pM", client_mac);
  err = vic_provinfo_add_tlv(vp, 4, 18, (void const *)(& client_mac_str));
  }
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  if ((pp->set & 8U) != 0U) {
    {
    sprintf((char *)(& uuid_str), "%pUB", (u8 *)(& pp->instance_uuid));
    err = vic_provinfo_add_tlv(vp, 9, 38, (void const *)(& uuid_str));
    }
    if (err != 0) {
      goto add_tlv_failure;
    } else {
    }
  } else {
  }
  if ((pp->set & 16U) != 0U) {
    {
    sprintf((char *)(& uuid_str), "%pUB", (u8 *)(& pp->host_uuid));
    err = vic_provinfo_add_tlv(vp, 8, 38, (void const *)(& uuid_str));
    }
    if (err != 0) {
      goto add_tlv_failure;
    } else {
    }
  } else {
  }
  {
  err = vic_provinfo_add_tlv(vp, 11, 2, (void const *)(& os_type));
  }
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp___6 = enic_is_valid_vf(enic, vf);
  }
  if (tmp___6 != 0) {
    {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    tmp___4 = vic_provinfo_size(vp);
    err = vnic_dev_init_prov2(enic->vdev, (u8 *)vp, (u32 )tmp___4);
    vnic_dev_cmd_proxy_end(enic->vdev);
    }
  } else {
    {
    tmp___5 = vic_provinfo_size(vp);
    err = vnic_dev_init_prov2(enic->vdev, (u8 *)vp, (u32 )tmp___5);
    }
  }
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  err = enic_dev_status_to_errno(err);
  }
  add_tlv_failure:
  {
  vic_provinfo_free(vp);
  }
  return (err);
}
}
static int enic_unset_port_profile(struct enic *enic , int vf )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp = enic_is_valid_vf(enic, vf);
  }
  if (tmp != 0) {
    {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_deinit(enic->vdev);
    vnic_dev_cmd_proxy_end(enic->vdev);
    }
  } else {
    {
    err = vnic_dev_deinit(enic->vdev);
    }
  }
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  if (err != 0) {
    {
    tmp___0 = enic_dev_status_to_errno(err);
    }
    return (tmp___0);
  } else {
  }
  if (vf == -1) {
    {
    enic_reset_addr_lists(enic);
    }
  } else {
  }
  return (0);
}
}
static int enic_are_pp_different(struct enic_port_profile *pp1 , struct enic_port_profile *pp2 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = strcmp((char const *)(& pp1->name), (char const *)(& pp2->name));
  tmp___0 = memcmp((void const *)(& pp1->instance_uuid), (void const *)(& pp2->instance_uuid),
                   16UL);
  tmp___1 = memcmp((void const *)(& pp1->host_uuid), (void const *)(& pp2->host_uuid),
                   16UL);
  tmp___2 = ether_addr_equal((u8 const *)(& pp1->mac_addr), (u8 const *)(& pp2->mac_addr));
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  return (((tmp | (tmp___0 != 0)) | (tmp___1 != 0)) | tmp___3);
}
}
static int enic_pp_preassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
static int enic_pp_disassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
static int enic_pp_preassociate_rr(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                   int *restore_pp ) ;
static int enic_pp_associate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                             int *restore_pp ) ;
static int (*enic_pp_handlers[4U])(struct enic * , int , struct enic_port_profile * ,
                                   int * ) = { & enic_pp_preassociate, & enic_pp_preassociate_rr, & enic_pp_associate, & enic_pp_disassociate};
static int enic_pp_preassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  {
  return (-95);
}
}
static int enic_pp_disassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  netdev = enic->netdev;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___4 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  }
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    {
    ldv_spin_lock_bh_141(& enic->devcmd_lock);
    tmp___0 = enic_is_valid_vf(enic, vf);
    }
    if (tmp___0 != 0) {
      {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_del_addr(enic->vdev, (u8 const *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
      }
    } else {
      {
      err = vnic_dev_del_addr(enic->vdev, (u8 const *)(& pp->mac_addr));
      }
    }
    {
    ldv_spin_unlock_bh_142(& enic->devcmd_lock);
    }
  } else
  if (vf == -1) {
    {
    tmp___2 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    }
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      {
      ldv_spin_lock_bh_141(& enic->devcmd_lock);
      tmp___1 = enic_is_valid_vf(enic, vf);
      }
      if (tmp___1 != 0) {
        {
        vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
        err = vnic_dev_del_addr(enic->vdev, (u8 const *)netdev->dev_addr);
        vnic_dev_cmd_proxy_end(enic->vdev);
        }
      } else {
        {
        err = vnic_dev_del_addr(enic->vdev, (u8 const *)netdev->dev_addr);
        }
      }
      {
      ldv_spin_unlock_bh_142(& enic->devcmd_lock);
      }
    } else {
    }
  } else {
  }
  {
  tmp___6 = enic_unset_port_profile(enic, vf);
  }
  return (tmp___6);
}
}
static int enic_pp_preassociate_rr(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                   int *restore_pp )
{
  struct enic_port_profile *pp ;
  int err ;
  int active ;
  int tmp ;
  int tmp___0 ;
  {
  {
  active = 0;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )pp->request != 2U) {
    {
    err = (*(enic_pp_handlers[3]))(enic, vf, prev_pp, restore_pp);
    }
    if (err != 0) {
      return (err);
    } else {
    }
    *restore_pp = 0;
  } else {
  }
  {
  *restore_pp = 0;
  err = enic_set_port_profile(enic, vf);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )pp->request != 2U) {
    {
    ldv_spin_lock_bh_141(& enic->devcmd_lock);
    tmp___0 = enic_is_valid_vf(enic, vf);
    }
    if (tmp___0 != 0) {
      {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_enable2(enic->vdev, active);
      vnic_dev_cmd_proxy_end(enic->vdev);
      }
    } else {
      {
      err = vnic_dev_enable2(enic->vdev, active);
      }
    }
    {
    ldv_spin_unlock_bh_142(& enic->devcmd_lock);
    err = enic_dev_status_to_errno(err);
    }
  } else {
  }
  return (err);
}
}
static int enic_pp_associate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                             int *restore_pp )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  int err ;
  int active ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  {
  netdev = enic->netdev;
  active = 1;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )prev_pp->request != 1U) {
    goto _L;
  } else
  if ((unsigned int )prev_pp->request == 1U) {
    {
    tmp___0 = enic_are_pp_different(prev_pp, pp);
    }
    if (tmp___0 != 0) {
      _L:
      {
      err = (*(enic_pp_handlers[3]))(enic, vf, prev_pp, restore_pp);
      }
      if (err != 0) {
        return (err);
      } else {
      }
      *restore_pp = 0;
    } else {
    }
  } else {
  }
  {
  err = (*(enic_pp_handlers[1]))(enic, vf, prev_pp, restore_pp);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  *restore_pp = 0;
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp___1 = enic_is_valid_vf(enic, vf);
  }
  if (tmp___1 != 0) {
    {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_enable2(enic->vdev, active);
    vnic_dev_cmd_proxy_end(enic->vdev);
    }
  } else {
    {
    err = vnic_dev_enable2(enic->vdev, active);
    }
  }
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  err = enic_dev_status_to_errno(err);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___6 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  }
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    {
    ldv_spin_lock_bh_141(& enic->devcmd_lock);
    tmp___2 = enic_is_valid_vf(enic, vf);
    }
    if (tmp___2 != 0) {
      {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_add_addr(enic->vdev, (u8 const *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
      }
    } else {
      {
      err = vnic_dev_add_addr(enic->vdev, (u8 const *)(& pp->mac_addr));
      }
    }
    {
    ldv_spin_unlock_bh_142(& enic->devcmd_lock);
    }
  } else
  if (vf == -1) {
    {
    tmp___4 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      {
      ldv_spin_lock_bh_141(& enic->devcmd_lock);
      tmp___3 = enic_is_valid_vf(enic, vf);
      }
      if (tmp___3 != 0) {
        {
        vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
        err = vnic_dev_add_addr(enic->vdev, (u8 const *)netdev->dev_addr);
        vnic_dev_cmd_proxy_end(enic->vdev);
        }
      } else {
        {
        err = vnic_dev_add_addr(enic->vdev, (u8 const *)netdev->dev_addr);
        }
      }
      {
      ldv_spin_unlock_bh_142(& enic->devcmd_lock);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
int enic_process_set_pp_request(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  struct enic_port_profile *pp ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  }
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = (struct enic_port_profile *)0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((int )pp->request > 3 || (unsigned long )enic_pp_handlers[(int )pp->request] == (unsigned long )((int (*)(struct enic * ,
                                                                                                                int ,
                                                                                                                struct enic_port_profile * ,
                                                                                                                int * ))0)) {
    return (-95);
  } else {
  }
  {
  tmp___0 = (*(enic_pp_handlers[(int )pp->request]))(enic, vf, prev_pp, restore_pp);
  }
  return (tmp___0);
}
}
int enic_process_get_pp_request(struct enic *enic , int vf , int request , u16 *response )
{
  int err ;
  int status ;
  int tmp ;
  int tmp___0 ;
  {
  status = 0;
  {
  if (request == 1) {
    goto case_1;
  } else {
  }
  if (request == 2) {
    goto case_2;
  } else {
  }
  if (request == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2:
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp = enic_is_valid_vf(enic, vf);
  }
  if (tmp != 0) {
    {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_enable2_done(enic->vdev, & status);
    vnic_dev_cmd_proxy_end(enic->vdev);
    }
  } else {
    {
    err = vnic_dev_enable2_done(enic->vdev, & status);
    }
  }
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  goto ldv_54498;
  case_3:
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  tmp___0 = enic_is_valid_vf(enic, vf);
  }
  if (tmp___0 != 0) {
    {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_deinit_done(enic->vdev, & status);
    vnic_dev_cmd_proxy_end(enic->vdev);
    }
  } else {
    {
    err = vnic_dev_deinit_done(enic->vdev, & status);
    }
  }
  {
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  goto ldv_54498;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_54498: ;
  if (err != 0) {
    status = err;
  } else {
  }
  {
  if (status == 0) {
    goto case_0;
  } else {
  }
  if (status == 1) {
    goto case_1___0;
  } else {
  }
  if (status == 6) {
    goto case_6;
  } else {
  }
  if (status == 7) {
    goto case_7;
  } else {
  }
  if (status == 12) {
    goto case_12;
  } else {
  }
  goto switch_default___0;
  case_0:
  *response = 256U;
  goto ldv_54502;
  case_1___0:
  *response = 258U;
  goto ldv_54502;
  case_6:
  *response = 259U;
  goto ldv_54502;
  case_7:
  *response = 260U;
  goto ldv_54502;
  case_12:
  *response = 257U;
  goto ldv_54502;
  switch_default___0:
  *response = 261U;
  goto ldv_54502;
  switch_break___0: ;
  }
  ldv_54502: ;
  return (0);
}
}
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
extern unsigned int ioread8(void * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
__inline static void *pci_zalloc_consistent___0(struct pci_dev *hwdev , size_t size ,
                                                dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_zalloc_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                            size, dma_handle, 32U);
  }
  return (tmp);
}
}
u32 vnic_dev_intr_coal_timer_hw_to_usec(struct vnic_dev *vdev , u32 hw_cycles ) ;
struct pci_dev *vnic_dev_get_pdev(struct vnic_dev *vdev ) ;
int vnic_dev_classifier(struct vnic_dev *vdev , u8 cmd , u16 *entry , struct filter *data ) ;
void *vnic_dev_priv(struct vnic_dev *vdev )
{
  {
  return (vdev->priv);
}
}
static int vnic_dev_discover_res(struct vnic_dev *vdev , struct vnic_dev_bar *bar ,
                                 unsigned int num_bars )
{
  struct vnic_resource_header *rh ;
  struct mgmt_barmap_hdr *mrh ;
  struct vnic_resource *r ;
  u8 type ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  u8 bar_num ;
  unsigned int tmp___6 ;
  u32 bar_offset ;
  unsigned int tmp___7 ;
  u32 count ;
  unsigned int tmp___8 ;
  u32 len ;
  unsigned int tmp___9 ;
  {
  if (num_bars == 0U) {
    return (-22);
  } else {
  }
  if (bar->len <= 223UL) {
    {
    printk("\venic: vNIC BAR0 res hdr length error\n");
    }
    return (-22);
  } else {
  }
  rh = (struct vnic_resource_header *)bar->vaddr;
  mrh = (struct mgmt_barmap_hdr *)bar->vaddr;
  if ((unsigned long )rh == (unsigned long )((struct vnic_resource_header *)0)) {
    {
    printk("\venic: vNIC BAR0 res hdr not mem-mapped\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___3 = ioread32((void *)(& rh->magic));
  }
  if (tmp___3 != 1986947427U) {
    goto _L;
  } else {
    {
    tmp___4 = ioread32((void *)(& rh->version));
    }
    if (tmp___4 != 0U) {
      _L:
      {
      tmp___1 = ioread32((void *)(& mrh->magic));
      }
      if (tmp___1 != 1414350669U) {
        {
        tmp = ioread32((void *)(& rh->version));
        tmp___0 = ioread32((void *)(& rh->magic));
        printk("\venic: vNIC BAR0 res magic/version error exp (%lx/%lx) or (%lx/%lx), curr (%x/%x)\n",
               1986947427L, 0L, 1414350669L, 0L, tmp___0, tmp);
        }
        return (-22);
      } else {
        {
        tmp___2 = ioread32((void *)(& mrh->version));
        }
        if (tmp___2 != 0U) {
          {
          tmp = ioread32((void *)(& rh->version));
          tmp___0 = ioread32((void *)(& rh->magic));
          printk("\venic: vNIC BAR0 res magic/version error exp (%lx/%lx) or (%lx/%lx), curr (%x/%x)\n",
                 1986947427L, 0L, 1414350669L, 0L, tmp___0, tmp);
          }
          return (-22);
        } else {
        }
      }
    } else {
    }
  }
  {
  tmp___5 = ioread32((void *)(& mrh->magic));
  }
  if (tmp___5 == 1414350669U) {
    r = (struct vnic_resource *)mrh + 1U;
  } else {
    r = (struct vnic_resource *)rh + 1U;
  }
  goto ldv_46501;
  ldv_46510:
  {
  tmp___6 = ioread8((void *)(& r->bar));
  bar_num = (u8 )tmp___6;
  tmp___7 = ioread32((void *)(& r->bar_offset));
  bar_offset = tmp___7;
  tmp___8 = ioread32((void *)(& r->count));
  count = tmp___8;
  r = r + 1;
  }
  if ((unsigned int )bar_num >= num_bars) {
    goto ldv_46501;
  } else {
  }
  if ((bar + (unsigned long )bar_num)->len == 0UL || (unsigned long )(bar + (unsigned long )bar_num)->vaddr == (unsigned long )((void *)0)) {
    goto ldv_46501;
  } else {
  }
  {
  if ((int )type == 1) {
    goto case_1;
  } else {
  }
  if ((int )type == 2) {
    goto case_2;
  } else {
  }
  if ((int )type == 3) {
    goto case_3;
  } else {
  }
  if ((int )type == 10) {
    goto case_10;
  } else {
  }
  if ((int )type == 13) {
    goto case_13;
  } else {
  }
  if ((int )type == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_3: ;
  case_10:
  len = count * 128U;
  if ((unsigned long )(len + bar_offset) > (bar + (unsigned long )bar_num)->len) {
    {
    printk("\venic: vNIC BAR0 resource %d out-of-bounds, offset 0x%x + size 0x%x > bar len 0x%lx\n",
           (int )type, bar_offset, len, (bar + (unsigned long )bar_num)->len);
    }
    return (-22);
  } else {
  }
  goto ldv_46506;
  case_13: ;
  case_16:
  len = count;
  goto ldv_46506;
  switch_default: ;
  goto ldv_46501;
  switch_break: ;
  }
  ldv_46506:
  vdev->res[(int )type].count = count;
  vdev->res[(int )type].vaddr = (bar + (unsigned long )bar_num)->vaddr + (unsigned long )bar_offset;
  vdev->res[(int )type].bus_addr = (bar + (unsigned long )bar_num)->bus_addr + (dma_addr_t )bar_offset;
  ldv_46501:
  {
  tmp___9 = ioread8((void *)(& r->type));
  type = (u8 )tmp___9;
  }
  if ((unsigned int )type != 0U) {
    goto ldv_46510;
  } else {
  }
  return (0);
}
}
unsigned int vnic_dev_get_res_count(struct vnic_dev *vdev , enum vnic_res_type type )
{
  {
  return (vdev->res[(unsigned int )type].count);
}
}
static char const __kstrtab_vnic_dev_get_res_count[23U] =
  { 'v', 'n', 'i', 'c',
        '_', 'd', 'e', 'v',
        '_', 'g', 'e', 't',
        '_', 'r', 'e', 's',
        '_', 'c', 'o', 'u',
        'n', 't', '\000'};
struct kernel_symbol const __ksymtab_vnic_dev_get_res_count ;
struct kernel_symbol const __ksymtab_vnic_dev_get_res_count = {(unsigned long )(& vnic_dev_get_res_count), (char const *)(& __kstrtab_vnic_dev_get_res_count)};
void *vnic_dev_get_res(struct vnic_dev *vdev , enum vnic_res_type type , unsigned int index )
{
  {
  if ((unsigned long )vdev->res[(unsigned int )type].vaddr == (unsigned long )((void *)0)) {
    return ((void *)0);
  } else {
  }
  {
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )type == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )type == 10U) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_3: ;
  case_10: ;
  return (vdev->res[(unsigned int )type].vaddr + (unsigned long )(index * 128U));
  switch_default: ;
  return (vdev->res[(unsigned int )type].vaddr);
  switch_break: ;
  }
}
}
static char const __kstrtab_vnic_dev_get_res[17U] =
  { 'v', 'n', 'i', 'c',
        '_', 'd', 'e', 'v',
        '_', 'g', 'e', 't',
        '_', 'r', 'e', 's',
        '\000'};
struct kernel_symbol const __ksymtab_vnic_dev_get_res ;
struct kernel_symbol const __ksymtab_vnic_dev_get_res = {(unsigned long )(& vnic_dev_get_res), (char const *)(& __kstrtab_vnic_dev_get_res)};
static unsigned int vnic_dev_desc_ring_size(struct vnic_dev_ring *ring , unsigned int desc_count ,
                                            unsigned int desc_size )
{
  unsigned int count_align ;
  unsigned int desc_align ;
  {
  count_align = 32U;
  desc_align = 16U;
  ring->base_align = 512UL;
  if (desc_count == 0U) {
    desc_count = 4096U;
  } else {
  }
  ring->desc_count = ((desc_count + count_align) - 1U) & - count_align;
  ring->desc_size = ((desc_size + desc_align) - 1U) & - desc_align;
  ring->size = (size_t )(ring->desc_count * ring->desc_size);
  ring->size_unaligned = ring->size + ring->base_align;
  return ((unsigned int )ring->size_unaligned);
}
}
void vnic_dev_clear_desc_ring(struct vnic_dev_ring *ring )
{
  {
  {
  memset(ring->descs, 0, ring->size);
  }
  return;
}
}
int vnic_dev_alloc_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ,
                             unsigned int desc_count , unsigned int desc_size )
{
  {
  {
  vnic_dev_desc_ring_size(ring, desc_count, desc_size);
  ring->descs_unaligned = pci_alloc_consistent(vdev->pdev, ring->size_unaligned, & ring->base_addr_unaligned);
  }
  if ((unsigned long )ring->descs_unaligned == (unsigned long )((void *)0)) {
    {
    printk("\venic: Failed to allocate ring (size=%d), aborting\n", (int )ring->size);
    }
    return (-12);
  } else {
  }
  {
  ring->base_addr = ((ring->base_addr_unaligned + (unsigned long long )ring->base_align) - 1ULL) & - ((unsigned long long )ring->base_align);
  ring->descs = ring->descs_unaligned + (unsigned long )(ring->base_addr - ring->base_addr_unaligned);
  vnic_dev_clear_desc_ring(ring);
  ring->desc_avail = ring->desc_count - 1U;
  }
  return (0);
}
}
void vnic_dev_free_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring )
{
  {
  if ((unsigned long )ring->descs != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(vdev->pdev, ring->size_unaligned, ring->descs_unaligned, ring->base_addr_unaligned);
    ring->descs = (void *)0;
    }
  } else {
  }
  return;
}
}
static int _vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , int wait )
{
  struct vnic_devcmd *devcmd ;
  unsigned int i ;
  int delay ;
  u32 status ;
  int err ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  devcmd = vdev->devcmd;
  status = ioread32((void *)(& devcmd->status));
  }
  if (status == 4294967295U) {
    return (-19);
  } else {
  }
  if ((int )status & 1) {
    {
    printk("\venic: Busy devcmd %d\n", (unsigned int )cmd & 16383U);
    }
    return (-16);
  } else {
  }
  if (((unsigned int )cmd & 1073741824U) != 0U) {
    i = 0U;
    goto ldv_46574;
    ldv_46573:
    {
    writeq((unsigned long )vdev->args[i], (void volatile *)(& devcmd->args) + (unsigned long )i);
    i = i + 1U;
    }
    ldv_46574: ;
    if (i <= 14U) {
      goto ldv_46573;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
  } else {
  }
  {
  iowrite32((u32 )cmd, (void *)(& devcmd->cmd));
  }
  if (((unsigned int )cmd & 16777216U) != 0U) {
    return (0);
  } else {
  }
  delay = 0;
  goto ldv_46580;
  ldv_46579:
  {
  __const_udelay(429500UL);
  status = ioread32((void *)(& devcmd->status));
  }
  if (status == 4294967295U) {
    return (-19);
  } else {
  }
  if ((status & 1U) == 0U) {
    if ((status & 2U) != 0U) {
      {
      tmp = readq((void const volatile *)(& devcmd->args));
      err = (int )tmp;
      }
      if (err == 1 && (unsigned int )cmd == 3221340196U) {
        return (- err);
      } else {
      }
      if (err != 5 || (unsigned int )cmd != 3221340196U) {
        {
        printk("\venic: Error %d devcmd %d\n", err, (unsigned int )cmd & 16383U);
        }
      } else {
      }
      return (- err);
    } else {
    }
    if ((int )cmd < 0) {
      __asm__ volatile ("lfence": : : "memory");
      i = 0U;
      goto ldv_46577;
      ldv_46576:
      {
      tmp___0 = readq((void const volatile *)(& devcmd->args) + (unsigned long )i);
      vdev->args[i] = (u64 )tmp___0;
      i = i + 1U;
      }
      ldv_46577: ;
      if (i <= 14U) {
        goto ldv_46576;
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  delay = delay + 1;
  ldv_46580: ;
  if (delay < wait) {
    goto ldv_46579;
  } else {
  }
  {
  printk("\venic: Timedout devcmd %d\n", (unsigned int )cmd & 16383U);
  }
  return (-110);
}
}
static int vnic_dev_cmd_proxy(struct vnic_dev *vdev , enum vnic_devcmd_cmd proxy_cmd ,
                              enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 , int wait )
{
  u32 status ;
  int err ;
  {
  {
  memset((void *)(& vdev->args), 0, 120UL);
  vdev->args[0] = (u64 )vdev->proxy_index;
  vdev->args[1] = (u64 )cmd;
  vdev->args[2] = *a0;
  vdev->args[3] = *a1;
  err = _vnic_dev_cmd(vdev, proxy_cmd, wait);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  status = (unsigned int )vdev->args[0];
  if ((status & 2U) != 0U) {
    err = (int )vdev->args[1];
    if (err != 5 || (unsigned int )cmd != 3221340196U) {
      {
      printk("\venic: Error %d proxy devcmd %d\n", err, (unsigned int )cmd & 16383U);
      }
    } else {
    }
    return (err);
  } else {
  }
  *a0 = vdev->args[1];
  *a1 = vdev->args[2];
  return (0);
}
}
static int vnic_dev_cmd_no_proxy(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd ,
                                 u64 *a0 , u64 *a1 , int wait )
{
  int err ;
  {
  {
  vdev->args[0] = *a0;
  vdev->args[1] = *a1;
  err = _vnic_dev_cmd(vdev, cmd, wait);
  *a0 = vdev->args[0];
  *a1 = vdev->args[1];
  }
  return (err);
}
}
void vnic_dev_cmd_proxy_by_index_start(struct vnic_dev *vdev , u16 index )
{
  {
  vdev->proxy = 2;
  vdev->proxy_index = (u32 )index;
  return;
}
}
void vnic_dev_cmd_proxy_end(struct vnic_dev *vdev )
{
  {
  vdev->proxy = 0;
  vdev->proxy_index = 0U;
  return;
}
}
int vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 ,
                 int wait )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& vdev->args), 0, 120UL);
  }
  {
  if ((unsigned int )vdev->proxy == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )vdev->proxy == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )vdev->proxy == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_2:
  {
  tmp = vnic_dev_cmd_proxy(vdev, 3221340203U, cmd, a0, a1, wait);
  }
  return (tmp);
  case_1:
  {
  tmp___0 = vnic_dev_cmd_proxy(vdev, 3221340202U, cmd, a0, a1, wait);
  }
  return (tmp___0);
  case_0: ;
  switch_default:
  {
  tmp___1 = vnic_dev_cmd_no_proxy(vdev, cmd, a0, a1, wait);
  }
  return (tmp___1);
  switch_break: ;
  }
}
}
static int vnic_dev_capable(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  a0 = (u64 )cmd;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(vdev, 3221340196U, & a0, & a1, wait);
  }
  return (err == 0 && a0 == 0ULL);
}
}
int vnic_dev_fw_info(struct vnic_dev *vdev , struct vnic_devcmd_fw_info **fw_info )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  void *tmp ;
  int tmp___0 ;
  {
  a1 = 0ULL;
  wait = 1000;
  err = 0;
  if ((unsigned long )vdev->fw_info == (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
    {
    tmp = pci_zalloc_consistent___0(vdev->pdev, 132UL, & vdev->fw_info_pa);
    vdev->fw_info = (struct vnic_devcmd_fw_info *)tmp;
    }
    if ((unsigned long )vdev->fw_info == (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
      return (-12);
    } else {
    }
    {
    a0 = vdev->fw_info_pa;
    a1 = 132ULL;
    tmp___0 = vnic_dev_capable(vdev, 3221340161U);
    }
    if (tmp___0 != 0) {
      {
      err = vnic_dev_cmd(vdev, 3221340161U, & a0, & a1, wait);
      }
    } else {
      {
      err = vnic_dev_cmd(vdev, 1073856513, & a0, & a1, wait);
      }
    }
  } else {
  }
  *fw_info = vdev->fw_info;
  return (err);
}
}
int vnic_dev_spec(struct vnic_dev *vdev , unsigned int offset , unsigned int size ,
                  void *value )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  wait = 1000;
  a0 = (u64 )offset;
  a1 = (u64 )size;
  err = vnic_dev_cmd(vdev, 3221340162U, & a0, & a1, wait);
  }
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  *((u8 *)value) = (unsigned char )a0;
  goto ldv_46645;
  case_2:
  *((u16 *)value) = (unsigned short )a0;
  goto ldv_46645;
  case_4:
  *((u32 *)value) = (unsigned int )a0;
  goto ldv_46645;
  case_8:
  *((u64 *)value) = a0;
  goto ldv_46645;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/cisco/enic/vnic_dev.c"),
                       "i" (475), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_46645: ;
  return (err);
}
}
int vnic_dev_stats_dump(struct vnic_dev *vdev , struct vnic_stats **stats )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  void *tmp ;
  int tmp___0 ;
  {
  wait = 1000;
  if ((unsigned long )vdev->stats == (unsigned long )((struct vnic_stats *)0)) {
    {
    tmp = pci_alloc_consistent(vdev->pdev, 512UL, & vdev->stats_pa);
    vdev->stats = (struct vnic_stats *)tmp;
    }
    if ((unsigned long )vdev->stats == (unsigned long )((struct vnic_stats *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  {
  *stats = vdev->stats;
  a0 = vdev->stats_pa;
  a1 = 512ULL;
  tmp___0 = vnic_dev_cmd(vdev, 1073856516, & a0, & a1, wait);
  }
  return (tmp___0);
}
}
int vnic_dev_close(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114713, & a0, & a1, wait);
  }
  return (tmp);
}
}
int vnic_dev_enable_wait(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp___1 = vnic_dev_capable(vdev, 1073856540);
  }
  if (tmp___1 != 0) {
    {
    tmp = vnic_dev_cmd(vdev, 1073856540, & a0, & a1, wait);
    }
    return (tmp);
  } else {
    {
    tmp___0 = vnic_dev_cmd(vdev, 1090633756, & a0, & a1, wait);
    }
    return (tmp___0);
  }
}
}
int vnic_dev_disable(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114717, & a0, & a1, wait);
  }
  return (tmp);
}
}
int vnic_dev_open(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 1090633751, & a0, & a1, wait);
  }
  return (tmp);
}
}
int vnic_dev_open_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  err = vnic_dev_cmd(vdev, 2147598360U, & a0, & a1, wait);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  *done = a0 == 0ULL;
  return (0);
}
}
static int vnic_dev_soft_reset(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 16891923, & a0, & a1, wait);
  }
  return (tmp);
}
}
static int vnic_dev_soft_reset_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  err = vnic_dev_cmd(vdev, 2147598356U, & a0, & a1, wait);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  *done = a0 == 0ULL;
  return (0);
}
}
int vnic_dev_hang_reset(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp___1 = vnic_dev_capable(vdev, 114727);
  }
  if (tmp___1 != 0) {
    {
    tmp = vnic_dev_cmd(vdev, 114727, & a0, & a1, wait);
    }
    return (tmp);
  } else {
    {
    err = vnic_dev_soft_reset(vdev, arg);
    }
    if (err != 0) {
      return (err);
    } else {
    }
    {
    tmp___0 = vnic_dev_init(vdev, 0);
    }
    return (tmp___0);
  }
}
}
int vnic_dev_hang_reset_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  tmp___0 = vnic_dev_capable(vdev, 2147598376U);
  }
  if (tmp___0 != 0) {
    {
    err = vnic_dev_cmd(vdev, 2147598376U, & a0, & a1, wait);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
    {
    tmp = vnic_dev_soft_reset_done(vdev, done);
    }
    return (tmp);
  }
  *done = a0 == 0ULL;
  return (0);
}
}
int vnic_dev_hang_notify(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114696, & a0, & a1, wait);
  }
  return (tmp);
}
}
int vnic_dev_get_mac_addr(struct vnic_dev *vdev , u8 *mac_addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  wait = 1000;
  i = 0;
  goto ldv_46737;
  ldv_46736:
  *(mac_addr + (unsigned long )i) = 0U;
  i = i + 1;
  ldv_46737: ;
  if (i <= 5) {
    goto ldv_46736;
  } else {
  }
  {
  err = vnic_dev_cmd(vdev, 2147532809U, & a0, & a1, wait);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_46740;
  ldv_46739:
  *(mac_addr + (unsigned long )i) = *((u8 *)(& a0) + (unsigned long )i);
  i = i + 1;
  ldv_46740: ;
  if (i <= 5) {
    goto ldv_46739;
  } else {
  }
  return (0);
}
}
int vnic_dev_packet_filter(struct vnic_dev *vdev , int directed , int multicast ,
                           int broadcast , int promisc , int allmulti )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  a1 = 0ULL;
  wait = 1000;
  a0 = (u64 )(((((directed != 0) | (multicast != 0 ? 2 : 0)) | (broadcast != 0 ? 4 : 0)) | (promisc != 0 ? 8 : 0)) | (allmulti != 0 ? 16 : 0));
  err = vnic_dev_cmd(vdev, 1090535431, & a0, & a1, wait);
  }
  if (err != 0) {
    {
    printk("\venic: Can\'t set packet filter\n");
    }
  } else {
  }
  return (err);
}
}
int vnic_dev_add_addr(struct vnic_dev *vdev , u8 const *addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  i = 0;
  goto ldv_46764;
  ldv_46763:
  *((u8 *)(& a0) + (unsigned long )i) = *(addr + (unsigned long )i);
  i = i + 1;
  ldv_46764: ;
  if (i <= 5) {
    goto ldv_46763;
  } else {
  }
  {
  err = vnic_dev_cmd(vdev, 1090568204, & a0, & a1, wait);
  }
  if (err != 0) {
    {
    printk("\venic: Can\'t add addr [%pM], %d\n", addr, err);
    }
  } else {
  }
  return (err);
}
}
int vnic_dev_del_addr(struct vnic_dev *vdev , u8 const *addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  i = 0;
  goto ldv_46776;
  ldv_46775:
  *((u8 *)(& a0) + (unsigned long )i) = *(addr + (unsigned long )i);
  i = i + 1;
  ldv_46776: ;
  if (i <= 5) {
    goto ldv_46775;
  } else {
  }
  {
  err = vnic_dev_cmd(vdev, 1090568205, & a0, & a1, wait);
  }
  if (err != 0) {
    {
    printk("\venic: Can\'t del addr [%pM], %d\n", addr, err);
    }
  } else {
  }
  return (err);
}
}
int vnic_dev_set_ig_vlan_rewrite_mode(struct vnic_dev *vdev , u8 ig_vlan_rewrite_mode )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  int tmp___0 ;
  {
  {
  a0 = (u64 )ig_vlan_rewrite_mode;
  a1 = 0ULL;
  wait = 1000;
  tmp___0 = vnic_dev_capable(vdev, 3221241897U);
  }
  if (tmp___0 != 0) {
    {
    tmp = vnic_dev_cmd(vdev, 3221241897U, & a0, & a1, wait);
    }
    return (tmp);
  } else {
    return (0);
  }
}
}
static int vnic_dev_notify_setcmd(struct vnic_dev *vdev , void *notify_addr , dma_addr_t notify_pa ,
                                  u16 intr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int r ;
  {
  {
  wait = 1000;
  memset(notify_addr, 0, 40UL);
  vdev->notify = (struct vnic_devcmd_notify *)notify_addr;
  vdev->notify_pa = notify_pa;
  a0 = notify_pa;
  a1 = ((unsigned long long )intr << 32) & 281470681743360ULL;
  a1 = a1 + 40ULL;
  r = vnic_dev_cmd(vdev, 3221340181U, & a0, & a1, wait);
  vdev->notify_sz = r == 0 ? (unsigned int )a1 : 0U;
  }
  return (r);
}
}
int vnic_dev_notify_set(struct vnic_dev *vdev , u16 intr )
{
  void *notify_addr ;
  dma_addr_t notify_pa ;
  int tmp ;
  {
  if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0) || vdev->notify_pa != 0ULL) {
    {
    printk("\venic: notify block %p still allocated", vdev->notify);
    }
    return (-22);
  } else {
  }
  {
  notify_addr = pci_alloc_consistent(vdev->pdev, 40UL, & notify_pa);
  }
  if ((unsigned long )notify_addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  tmp = vnic_dev_notify_setcmd(vdev, notify_addr, notify_pa, (int )intr);
  }
  return (tmp);
}
}
static int vnic_dev_notify_unsetcmd(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  {
  wait = 1000;
  a0 = 0ULL;
  a1 = 281470681743360ULL;
  a1 = a1 + 40ULL;
  err = vnic_dev_cmd(vdev, 3221340181U, & a0, & a1, wait);
  vdev->notify = (struct vnic_devcmd_notify *)0;
  vdev->notify_pa = 0ULL;
  vdev->notify_sz = 0U;
  }
  return (err);
}
}
int vnic_dev_notify_unset(struct vnic_dev *vdev )
{
  int tmp ;
  {
  if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0)) {
    {
    pci_free_consistent(vdev->pdev, 40UL, (void *)vdev->notify, vdev->notify_pa);
    }
  } else {
  }
  {
  tmp = vnic_dev_notify_unsetcmd(vdev);
  }
  return (tmp);
}
}
static int vnic_dev_notify_ready(struct vnic_dev *vdev )
{
  u32 *words ;
  unsigned int nwords ;
  unsigned int i ;
  u32 csum ;
  {
  nwords = vdev->notify_sz / 4U;
  if ((unsigned long )vdev->notify == (unsigned long )((struct vnic_devcmd_notify *)0) || vdev->notify_sz == 0U) {
    return (0);
  } else {
  }
  ldv_46821:
  {
  csum = 0U;
  memcpy((void *)(& vdev->notify_copy), (void const *)vdev->notify, (size_t )vdev->notify_sz);
  words = (u32 *)(& vdev->notify_copy);
  i = 1U;
  }
  goto ldv_46819;
  ldv_46818:
  csum = csum + *(words + (unsigned long )i);
  i = i + 1U;
  ldv_46819: ;
  if (i < nwords) {
    goto ldv_46818;
  } else {
  }
  if (csum != *words) {
    goto ldv_46821;
  } else {
  }
  return (1);
}
}
int vnic_dev_init(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int r ;
  int tmp ;
  {
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  r = 0;
  tmp = vnic_dev_capable(vdev, 1090633763);
  }
  if (tmp != 0) {
    {
    r = vnic_dev_cmd(vdev, 1090633763, & a0, & a1, wait);
    }
  } else {
    {
    vnic_dev_cmd(vdev, 2164375578U, & a0, & a1, wait);
    }
    if ((int )a0 & 1) {
      {
      vnic_dev_cmd(vdev, 2147532809U, & a0, & a1, wait);
      vnic_dev_cmd(vdev, 1090568204, & a0, & a1, wait);
      }
    } else {
    }
  }
  return (r);
}
}
int vnic_dev_deinit(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 16891938, & a0, & a1, wait);
  }
  return (tmp);
}
}
void vnic_dev_intr_coal_timer_info_default(struct vnic_dev *vdev )
{
  {
  {
  vdev->intr_coal_timer_info.mul = 2U;
  vdev->intr_coal_timer_info.div = 3U;
  vdev->intr_coal_timer_info.max_usec = vnic_dev_intr_coal_timer_hw_to_usec(vdev,
                                                                            65535U);
  }
  return;
}
}
int vnic_dev_intr_coal_timer_info(struct vnic_dev *vdev )
{
  int wait ;
  int err ;
  int tmp ;
  {
  {
  wait = 1000;
  memset((void *)(& vdev->args), 0, 120UL);
  tmp = vnic_dev_capable(vdev, 2147598386U);
  }
  if (tmp != 0) {
    {
    err = _vnic_dev_cmd(vdev, 2147598386U, wait);
    }
  } else {
    err = 5;
  }
  if (err == 5 || (err == 0 && ((vdev->args[0] == 0ULL || vdev->args[1] == 0ULL) || vdev->args[2] == 0ULL))) {
    {
    printk("\fenic: Using default conversion factor for interrupt coalesce timer\n");
    vnic_dev_intr_coal_timer_info_default(vdev);
    }
    return (0);
  } else {
  }
  if (err == 0) {
    vdev->intr_coal_timer_info.mul = (unsigned int )vdev->args[0];
    vdev->intr_coal_timer_info.div = (unsigned int )vdev->args[1];
    vdev->intr_coal_timer_info.max_usec = (unsigned int )vdev->args[2];
  } else {
  }
  return (err);
}
}
int vnic_dev_link_status(struct vnic_dev *vdev )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_notify_ready(vdev);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  return ((int )vdev->notify_copy.link_state);
}
}
u32 vnic_dev_port_speed(struct vnic_dev *vdev )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_notify_ready(vdev);
  }
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.port_speed);
}
}
u32 vnic_dev_msg_lvl(struct vnic_dev *vdev )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_notify_ready(vdev);
  }
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.msglvl);
}
}
u32 vnic_dev_mtu(struct vnic_dev *vdev )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_notify_ready(vdev);
  }
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.mtu);
}
}
void vnic_dev_set_intr_mode(struct vnic_dev *vdev , enum vnic_dev_intr_mode intr_mode )
{
  {
  vdev->intr_mode = intr_mode;
  return;
}
}
enum vnic_dev_intr_mode vnic_dev_get_intr_mode(struct vnic_dev *vdev )
{
  {
  return (vdev->intr_mode);
}
}
u32 vnic_dev_intr_coal_timer_usec_to_hw(struct vnic_dev *vdev , u32 usec )
{
  {
  return ((usec * vdev->intr_coal_timer_info.mul) / vdev->intr_coal_timer_info.div);
}
}
u32 vnic_dev_intr_coal_timer_hw_to_usec(struct vnic_dev *vdev , u32 hw_cycles )
{
  {
  return ((hw_cycles * vdev->intr_coal_timer_info.div) / vdev->intr_coal_timer_info.mul);
}
}
u32 vnic_dev_get_intr_coal_timer_max(struct vnic_dev *vdev )
{
  {
  return (vdev->intr_coal_timer_info.max_usec);
}
}
void vnic_dev_unregister(struct vnic_dev *vdev )
{
  {
  if ((unsigned long )vdev != (unsigned long )((struct vnic_dev *)0)) {
    if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0)) {
      {
      pci_free_consistent(vdev->pdev, 40UL, (void *)vdev->notify, vdev->notify_pa);
      }
    } else {
    }
    if ((unsigned long )vdev->stats != (unsigned long )((struct vnic_stats *)0)) {
      {
      pci_free_consistent(vdev->pdev, 512UL, (void *)vdev->stats, vdev->stats_pa);
      }
    } else {
    }
    if ((unsigned long )vdev->fw_info != (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
      {
      pci_free_consistent(vdev->pdev, 132UL, (void *)vdev->fw_info, vdev->fw_info_pa);
      }
    } else {
    }
    {
    kfree((void const *)vdev);
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_vnic_dev_unregister[20U] =
  { 'v', 'n', 'i', 'c',
        '_', 'd', 'e', 'v',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_vnic_dev_unregister ;
struct kernel_symbol const __ksymtab_vnic_dev_unregister = {(unsigned long )(& vnic_dev_unregister), (char const *)(& __kstrtab_vnic_dev_unregister)};
struct vnic_dev *vnic_dev_register(struct vnic_dev *vdev , void *priv , struct pci_dev *pdev ,
                                   struct vnic_dev_bar *bar , unsigned int num_bars )
{
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  if ((unsigned long )vdev == (unsigned long )((struct vnic_dev *)0)) {
    {
    tmp = kzalloc(712UL, 32U);
    vdev = (struct vnic_dev *)tmp;
    }
    if ((unsigned long )vdev == (unsigned long )((struct vnic_dev *)0)) {
      return ((struct vnic_dev *)0);
    } else {
    }
  } else {
  }
  {
  vdev->priv = priv;
  vdev->pdev = pdev;
  tmp___0 = vnic_dev_discover_res(vdev, bar, num_bars);
  }
  if (tmp___0 != 0) {
    goto err_out;
  } else {
  }
  {
  tmp___1 = vnic_dev_get_res(vdev, 16, 0U);
  vdev->devcmd = (struct vnic_devcmd *)tmp___1;
  }
  if ((unsigned long )vdev->devcmd == (unsigned long )((struct vnic_devcmd *)0)) {
    goto err_out;
  } else {
  }
  return (vdev);
  err_out:
  {
  vnic_dev_unregister(vdev);
  }
  return ((struct vnic_dev *)0);
}
}
static char const __kstrtab_vnic_dev_register[18U] =
  { 'v', 'n', 'i', 'c',
        '_', 'd', 'e', 'v',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_vnic_dev_register ;
struct kernel_symbol const __ksymtab_vnic_dev_register = {(unsigned long )(& vnic_dev_register), (char const *)(& __kstrtab_vnic_dev_register)};
struct pci_dev *vnic_dev_get_pdev(struct vnic_dev *vdev )
{
  {
  return (vdev->pdev);
}
}
static char const __kstrtab_vnic_dev_get_pdev[18U] =
  { 'v', 'n', 'i', 'c',
        '_', 'd', 'e', 'v',
        '_', 'g', 'e', 't',
        '_', 'p', 'd', 'e',
        'v', '\000'};
struct kernel_symbol const __ksymtab_vnic_dev_get_pdev ;
struct kernel_symbol const __ksymtab_vnic_dev_get_pdev = {(unsigned long )(& vnic_dev_get_pdev), (char const *)(& __kstrtab_vnic_dev_get_pdev)};
int vnic_dev_init_prov2(struct vnic_dev *vdev , u8 *buf , u32 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  dma_addr_t prov_pa ;
  void *prov_buf ;
  int ret ;
  {
  {
  a1 = (u64 )len;
  wait = 1000;
  prov_buf = pci_alloc_consistent(vdev->pdev, (size_t )len, & prov_pa);
  }
  if ((unsigned long )prov_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy(prov_buf, (void const *)buf, (size_t )len);
  a0 = prov_pa;
  ret = vnic_dev_cmd(vdev, 1073758255, & a0, & a1, wait);
  pci_free_consistent(vdev->pdev, (size_t )len, prov_buf, prov_pa);
  }
  return (ret);
}
}
int vnic_dev_enable2(struct vnic_dev *vdev , int active )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  {
  a1 = 0ULL;
  wait = 1000;
  a0 = active != 0;
  tmp = vnic_dev_cmd(vdev, 1073758256, & a0, & a1, wait);
  }
  return (tmp);
}
}
static int vnic_dev_cmd_status(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd ,
                               int *status )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int ret ;
  {
  {
  a0 = (u64 )cmd;
  a1 = 0ULL;
  wait = 1000;
  ret = vnic_dev_cmd(vdev, 3221340209U, & a0, & a1, wait);
  }
  if (ret == 0) {
    *status = (int )a0;
  } else {
  }
  return (ret);
}
}
int vnic_dev_enable2_done(struct vnic_dev *vdev , int *status )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_cmd_status(vdev, 1073758256, status);
  }
  return (tmp);
}
}
int vnic_dev_deinit_done(struct vnic_dev *vdev , int *status )
{
  int tmp ;
  {
  {
  tmp = vnic_dev_cmd_status(vdev, 16891938, status);
  }
  return (tmp);
}
}
int vnic_dev_set_mac_addr(struct vnic_dev *vdev , u8 *mac_addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int i ;
  int tmp ;
  {
  wait = 1000;
  i = 0;
  goto ldv_46958;
  ldv_46957:
  *((u8 *)(& a0) + (unsigned long )i) = *(mac_addr + (unsigned long )i);
  i = i + 1;
  ldv_46958: ;
  if (i <= 5) {
    goto ldv_46957;
  } else {
  }
  {
  tmp = vnic_dev_cmd(vdev, 1073758263, & a0, & a1, wait);
  }
  return (tmp);
}
}
int vnic_dev_classifier(struct vnic_dev *vdev , u8 cmd , u16 *entry , struct filter *data )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  dma_addr_t tlv_pa ;
  int ret ;
  struct filter_tlv *tlv ;
  struct filter_tlv *tlv_va ;
  struct filter_action *action ;
  u64 tlv_size ;
  void *tmp ;
  {
  wait = 1000;
  ret = -22;
  if ((unsigned int )cmd == 0U) {
    {
    tlv_size = 48ULL;
    tmp = pci_alloc_consistent(vdev->pdev, (size_t )tlv_size, & tlv_pa);
    tlv_va = (struct filter_tlv *)tmp;
    }
    if ((unsigned long )tlv_va == (unsigned long )((struct filter_tlv *)0)) {
      return (-12);
    } else {
    }
    {
    tlv = tlv_va;
    a0 = tlv_pa;
    a1 = tlv_size;
    memset((void *)tlv, 0, (size_t )tlv_size);
    tlv->type = 0U;
    tlv->length = 24U;
    *((struct filter *)(& tlv->val)) = *data;
    tlv = tlv + 32U;
    tlv->type = 1U;
    tlv->length = 8U;
    action = (struct filter_action *)(& tlv->val);
    action->type = 0U;
    action->u.rq_idx = (u32 )*entry;
    ret = vnic_dev_cmd(vdev, 3221241914U, & a0, & a1, wait);
    *entry = (unsigned short )a0;
    pci_free_consistent(vdev->pdev, (size_t )tlv_size, (void *)tlv_va, tlv_pa);
    }
  } else
  if ((unsigned int )cmd == 1U) {
    {
    a0 = (u64 )*entry;
    ret = vnic_dev_cmd(vdev, 1073758267, & a0, & a1, wait);
    }
  } else {
  }
  return (ret);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static int vnic_rq_alloc_bufs(struct vnic_rq *rq )
{
  struct vnic_rq_buf *buf ;
  unsigned int i ;
  unsigned int j ;
  unsigned int count ;
  unsigned int blks ;
  void *tmp ;
  struct vnic_rq_buf *tmp___0 ;
  {
  count = rq->ring.desc_count;
  blks = ((count + (count <= 63U ? 32U : 64U)) - 1U) / (count <= 63U ? 32U : 64U);
  i = 0U;
  goto ldv_46720;
  ldv_46719:
  {
  tmp = kzalloc(count <= 63U ? 1792UL : 3584UL, 32U);
  rq->bufs[i] = (struct vnic_rq_buf *)tmp;
  }
  if ((unsigned long )rq->bufs[i] == (unsigned long )((struct vnic_rq_buf *)0)) {
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_46720: ;
  if (i < blks) {
    goto ldv_46719;
  } else {
  }
  i = 0U;
  goto ldv_46726;
  ldv_46725:
  buf = rq->bufs[i];
  j = 0U;
  goto ldv_46724;
  ldv_46723:
  buf->index = i * (count <= 63U ? 32U : 64U) + j;
  buf->desc = rq->ring.descs + (unsigned long )(rq->ring.desc_size * buf->index);
  if (buf->index + 1U == count) {
    buf->next = rq->bufs[0];
    goto ldv_46722;
  } else
  if (j + 1U == (count <= 63U ? 32U : 64U)) {
    buf->next = rq->bufs[i + 1U];
  } else {
    buf->next = buf + 1UL;
    buf = buf + 1;
  }
  j = j + 1U;
  ldv_46724: ;
  if (j < (count <= 63U ? 32U : 64U)) {
    goto ldv_46723;
  } else {
  }
  ldv_46722:
  i = i + 1U;
  ldv_46726: ;
  if (i < blks) {
    goto ldv_46725;
  } else {
  }
  tmp___0 = rq->bufs[0];
  rq->to_clean = tmp___0;
  rq->to_use = tmp___0;
  return (0);
}
}
void vnic_rq_free(struct vnic_rq *rq )
{
  struct vnic_dev *vdev ;
  unsigned int i ;
  {
  {
  vdev = rq->vdev;
  vnic_dev_free_desc_ring(vdev, & rq->ring);
  i = 0U;
  }
  goto ldv_46734;
  ldv_46733: ;
  if ((unsigned long )rq->bufs[i] != (unsigned long )((struct vnic_rq_buf *)0)) {
    {
    kfree((void const *)rq->bufs[i]);
    rq->bufs[i] = (struct vnic_rq_buf *)0;
    }
  } else {
  }
  i = i + 1U;
  ldv_46734: ;
  if (i <= 63U) {
    goto ldv_46733;
  } else {
  }
  rq->ctrl = (struct vnic_rq_ctrl *)0;
  return;
}
}
int vnic_rq_alloc(struct vnic_dev *vdev , struct vnic_rq *rq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  {
  rq->index = index;
  rq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 2, index);
  rq->ctrl = (struct vnic_rq_ctrl *)tmp;
  }
  if ((unsigned long )rq->ctrl == (unsigned long )((struct vnic_rq_ctrl *)0)) {
    {
    printk("\venic: Failed to hook RQ[%d] resource\n", index);
    }
    return (-22);
  } else {
  }
  {
  vnic_rq_disable(rq);
  err = vnic_dev_alloc_desc_ring(vdev, & rq->ring, desc_count, desc_size);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = vnic_rq_alloc_bufs(rq);
  }
  if (err != 0) {
    {
    vnic_rq_free(rq);
    }
    return (err);
  } else {
  }
  return (0);
}
}
static void vnic_rq_init_start(struct vnic_rq *rq , unsigned int cq_index , unsigned int fetch_index ,
                               unsigned int posted_index , unsigned int error_interrupt_enable ,
                               unsigned int error_interrupt_offset )
{
  u64 paddr ;
  unsigned int count ;
  struct vnic_rq_buf *tmp ;
  {
  {
  count = rq->ring.desc_count;
  paddr = rq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (rq->ctrl)->ring_base));
  iowrite32(count, (void *)(& (rq->ctrl)->ring_size));
  iowrite32(cq_index, (void *)(& (rq->ctrl)->cq_index));
  iowrite32(error_interrupt_enable, (void *)(& (rq->ctrl)->error_interrupt_enable));
  iowrite32(error_interrupt_offset, (void *)(& (rq->ctrl)->error_interrupt_offset));
  iowrite32(0U, (void *)(& (rq->ctrl)->dropped_packet_count));
  iowrite32(0U, (void *)(& (rq->ctrl)->error_status));
  iowrite32(fetch_index, (void *)(& (rq->ctrl)->fetch_index));
  iowrite32(posted_index, (void *)(& (rq->ctrl)->posted_index));
  tmp = rq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  rq->to_clean = tmp;
  rq->to_use = tmp;
  }
  return;
}
}
void vnic_rq_init(struct vnic_rq *rq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset )
{
  u32 fetch_index ;
  {
  {
  fetch_index = 0U;
  fetch_index = ioread32((void *)(& (rq->ctrl)->fetch_index));
  }
  if (fetch_index == 4294967295U) {
    fetch_index = 0U;
  } else {
  }
  {
  vnic_rq_init_start(rq, cq_index, fetch_index, fetch_index, error_interrupt_enable,
                     error_interrupt_offset);
  }
  return;
}
}
unsigned int vnic_rq_error_status(struct vnic_rq *rq )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32((void *)(& (rq->ctrl)->error_status));
  }
  return (tmp);
}
}
void vnic_rq_enable(struct vnic_rq *rq )
{
  {
  {
  iowrite32(1U, (void *)(& (rq->ctrl)->enable));
  }
  return;
}
}
int vnic_rq_disable(struct vnic_rq *rq )
{
  unsigned int wait ;
  unsigned int tmp ;
  {
  {
  iowrite32(0U, (void *)(& (rq->ctrl)->enable));
  wait = 0U;
  }
  goto ldv_46772;
  ldv_46771:
  {
  tmp = ioread32((void *)(& (rq->ctrl)->running));
  }
  if (tmp == 0U) {
    return (0);
  } else {
  }
  {
  __const_udelay(42950UL);
  wait = wait + 1U;
  }
  ldv_46772: ;
  if (wait <= 999U) {
    goto ldv_46771;
  } else {
  }
  {
  printk("\venic: Failed to disable RQ[%d]\n", rq->index);
  }
  return (-110);
}
}
void vnic_rq_clean(struct vnic_rq *rq , void (*buf_clean)(struct vnic_rq * , struct vnic_rq_buf * ) )
{
  struct vnic_rq_buf *buf ;
  u32 fetch_index ;
  unsigned int count ;
  struct vnic_rq_buf *tmp ;
  unsigned int tmp___0 ;
  struct vnic_rq_buf *tmp___1 ;
  {
  count = rq->ring.desc_count;
  buf = rq->to_clean;
  goto ldv_46784;
  ldv_46783:
  {
  (*buf_clean)(rq, buf);
  tmp = buf->next;
  rq->to_clean = tmp;
  buf = tmp;
  rq->ring.desc_avail = rq->ring.desc_avail + 1U;
  }
  ldv_46784:
  {
  tmp___0 = vnic_rq_desc_used(rq);
  }
  if (tmp___0 != 0U) {
    goto ldv_46783;
  } else {
  }
  {
  fetch_index = ioread32((void *)(& (rq->ctrl)->fetch_index));
  }
  if (fetch_index == 4294967295U) {
    fetch_index = 0U;
  } else {
  }
  {
  tmp___1 = rq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  rq->to_clean = tmp___1;
  rq->to_use = tmp___1;
  iowrite32(fetch_index, (void *)(& (rq->ctrl)->posted_index));
  vnic_dev_clear_desc_ring(& rq->ring);
  }
  return;
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
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct vic_provinfo *vic_provinfo_alloc(gfp_t flags , u8 const *oui , u8 const type )
{
  struct vic_provinfo *vp ;
  void *tmp ;
  {
  if ((unsigned long )oui == (unsigned long )((u8 const *)0U)) {
    return ((struct vic_provinfo *)0);
  } else {
  }
  {
  tmp = kzalloc(1385UL, flags);
  vp = (struct vic_provinfo *)tmp;
  }
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0)) {
    return ((struct vic_provinfo *)0);
  } else {
  }
  {
  memcpy((void *)(& vp->oui), (void const *)oui, 3UL);
  vp->type = type;
  vp->length = 67108864U;
  }
  return (vp);
}
}
void vic_provinfo_free(struct vic_provinfo *vp )
{
  {
  {
  kfree((void const *)vp);
  }
  return;
}
}
int vic_provinfo_add_tlv(struct vic_provinfo *vp , u16 type , u16 length , void const *value )
{
  struct vic_provinfo_tlv *tlv ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  {
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0) || (unsigned long )value == (unsigned long )((void const *)0)) {
    return (-22);
  } else {
  }
  {
  tmp = __fswab32(vp->length);
  }
  if (((unsigned long )tmp + 4UL) + (unsigned long )length > 1373UL) {
    return (-12);
  } else {
  }
  {
  tmp___0 = __fswab32(vp->length);
  tlv = (struct vic_provinfo_tlv *)(& vp->tlv) + ((unsigned long )tmp___0 + 0xfffffffffffffffcUL);
  tmp___1 = __fswab16((int )type);
  tlv->type = tmp___1;
  tmp___2 = __fswab16((int )length);
  tlv->length = tmp___2;
  memcpy((void *)(& tlv->value), value, (size_t )length);
  tmp___8 = __fswab32(vp->num_tlvs);
  tmp___9 = __fswab32(tmp___8 + 1U);
  vp->num_tlvs = tmp___9;
  tmp___15 = __fswab32(vp->length);
  tmp___16 = __fswab32((tmp___15 + 4U) + (__u32 )length);
  vp->length = tmp___16;
  }
  return (0);
}
}
size_t vic_provinfo_size(struct vic_provinfo *vp )
{
  __u32 tmp ;
  size_t tmp___0 ;
  {
  if ((unsigned long )vp != (unsigned long )((struct vic_provinfo *)0)) {
    {
    tmp = __fswab32(vp->length);
    tmp___0 = (unsigned long )tmp + 8UL;
    }
  } else {
    tmp___0 = 0UL;
  }
  return (tmp___0);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_enic_rfs_flw_tbl(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_enic_rfs_flw_tbl(void) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
struct enic_rfs_fltr_node *htbl_fltr_search(struct enic *enic , u16 fltr_id ) ;
static struct enic_stat const enic_tx_stats[11U] =
  { {{'t', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 0U},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'f', 'r', 'a', 'm',
       'e', 's', '_', 'o', 'k', '\000'}, 1U},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 2U},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 3U},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '_', 'o', 'k', '\000'}, 4U},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'b', 'y', 't', 'e',
       's', '_', 'o', 'k', '\000'}, 5U},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 6U},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 7U},
        {{'t', 'x', '_', 'd', 'r', 'o', 'p', 's', '\000'}, 8U},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 9U},
        {{'t', 'x', '_', 't', 's', 'o', '\000'}, 10U}};
static struct enic_stat const enic_rx_stats[21U] =
  { {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 0U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 't', 'o', 't', 'a', 'l',
       '\000'}, 1U},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'f', 'r', 'a', 'm',
       'e', 's', '_', 'o', 'k', '\000'}, 2U},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 3U},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 4U},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '_', 'o', 'k', '\000'}, 5U},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'b', 'y', 't', 'e',
       's', '_', 'o', 'k', '\000'}, 6U},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 7U},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 8U},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', '\000'}, 9U},
        {{'r', 'x', '_', 'n', 'o', '_', 'b', 'u', 'f', 's', '\000'}, 10U},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 11U},
        {{'r', 'x', '_', 'r', 's', 's', '\000'}, 12U},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 13U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '6', '4', '\000'}, 14U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '2', '7', '\000'}, 15U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '2', '5', '5', '\000'}, 16U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '5', '1', '1', '\000'}, 17U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '0', '2', '3', '\000'}, 18U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '5', '1', '8', '\000'}, 19U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 't', 'o', '_', 'm', 'a', 'x',
       '\000'}, 20U}};
static struct enic_stat const enic_gen_stats[1U] = { {{'d', 'm', 'a', '_', 'm', 'a', 'p', '_', 'e', 'r', 'r', 'o', 'r', '\000'}, 0U}};
static void enic_intr_coal_set_rx(struct enic *enic , u32 timer )
{
  int i ;
  int intr ;
  unsigned int tmp ;
  {
  i = 0;
  goto ldv_47439;
  ldv_47438:
  {
  tmp = enic_msix_rq_intr(enic, (unsigned int )i);
  intr = (int )tmp;
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 timer);
  i = i + 1;
  }
  ldv_47439: ;
  if ((unsigned int )i < enic->rq_count) {
    goto ldv_47438;
  } else {
  }
  return;
}
}
static int enic_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  ecmd->supported = 5120U;
  ecmd->advertising = 5120U;
  ecmd->port = 3U;
  ecmd->transceiver = 1U;
  tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = vnic_dev_port_speed(enic->vdev);
    ethtool_cmd_speed_set(ecmd, tmp___0);
    ecmd->duplex = 1U;
    }
  } else {
    {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
    }
  }
  ecmd->autoneg = 0U;
  return (0);
}
}
static void enic_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_devcmd_fw_info *fw_info ;
  char const *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_fw_info(enic, & fw_info);
  strlcpy((char *)(& drvinfo->driver), "enic", 32UL);
  strlcpy((char *)(& drvinfo->version), "2.1.1.83", 32UL);
  strlcpy((char *)(& drvinfo->fw_version), (char const *)(& fw_info->fw_version),
          32UL);
  tmp___0 = pci_name((struct pci_dev const *)enic->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  }
  return;
}
}
static void enic_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  unsigned int i ;
  {
  {
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_1:
  i = 0U;
  goto ldv_47460;
  ldv_47459:
  {
  memcpy((void *)data, (void const *)(& enic_tx_stats[i].name), 32UL);
  data = data + 32UL;
  i = i + 1U;
  }
  ldv_47460: ;
  if (i <= 10U) {
    goto ldv_47459;
  } else {
  }
  i = 0U;
  goto ldv_47463;
  ldv_47462:
  {
  memcpy((void *)data, (void const *)(& enic_rx_stats[i].name), 32UL);
  data = data + 32UL;
  i = i + 1U;
  }
  ldv_47463: ;
  if (i <= 20U) {
    goto ldv_47462;
  } else {
  }
  i = 0U;
  goto ldv_47466;
  ldv_47465:
  {
  memcpy((void *)data, (void const *)(& enic_gen_stats[i].name), 32UL);
  data = data + 32UL;
  i = i + 1U;
  }
  ldv_47466: ;
  if (i == 0U) {
    goto ldv_47465;
  } else {
  }
  goto ldv_47468;
  switch_break: ;
  }
  ldv_47468: ;
  return;
}
}
static int enic_get_sset_count(struct net_device *netdev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (33);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void enic_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_stats *vstats ;
  unsigned int i ;
  u64 *tmp___0 ;
  u64 *tmp___1 ;
  u64 *tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_stats_dump(enic, & vstats);
  i = 0U;
  }
  goto ldv_47484;
  ldv_47483:
  tmp___0 = data;
  data = data + 1;
  *tmp___0 = *((u64 *)(& vstats->tx) + (unsigned long )enic_tx_stats[i].index);
  i = i + 1U;
  ldv_47484: ;
  if (i <= 10U) {
    goto ldv_47483;
  } else {
  }
  i = 0U;
  goto ldv_47487;
  ldv_47486:
  tmp___1 = data;
  data = data + 1;
  *tmp___1 = *((u64 *)(& vstats->rx) + (unsigned long )enic_rx_stats[i].index);
  i = i + 1U;
  ldv_47487: ;
  if (i <= 20U) {
    goto ldv_47486;
  } else {
  }
  i = 0U;
  goto ldv_47490;
  ldv_47489:
  tmp___2 = data;
  data = data + 1;
  *tmp___2 = *((u64 *)(& enic->gen_stats) + (unsigned long )enic_gen_stats[i].index);
  i = i + 1U;
  ldv_47490: ;
  if (i == 0U) {
    goto ldv_47489;
  } else {
  }
  return;
}
}
static u32 enic_get_msglevel(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  return (enic->msg_enable);
}
}
static void enic_set_msglevel(struct net_device *netdev , u32 value )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic->msg_enable = value;
  }
  return;
}
}
static int enic_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  struct enic_rx_coal *rxcoal ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  rxcoal = & enic->rx_coalesce_setting;
  ecmd->tx_coalesce_usecs = enic->tx_coalesce_usecs;
  ecmd->rx_coalesce_usecs = enic->rx_coalesce_usecs;
  }
  if (rxcoal->use_adaptive_rx_coalesce != 0U) {
    ecmd->use_adaptive_rx_coalesce = 1U;
  } else {
  }
  ecmd->rx_coalesce_usecs_low = rxcoal->small_pkt_range_start;
  ecmd->rx_coalesce_usecs_high = rxcoal->range_end;
  return (0);
}
}
static int enic_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  u32 tx_coalesce_usecs ;
  u32 rx_coalesce_usecs ;
  u32 rx_coalesce_usecs_low ;
  u32 rx_coalesce_usecs_high ;
  u32 coalesce_usecs_max ;
  unsigned int i ;
  unsigned int intr ;
  struct enic_rx_coal *rxcoal ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 __min1___1 ;
  u32 __min2___1 ;
  u32 __min1___2 ;
  u32 __min2___2 ;
  enum vnic_dev_intr_mode tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  rxcoal = & enic->rx_coalesce_setting;
  coalesce_usecs_max = vnic_dev_get_intr_coal_timer_max(enic->vdev);
  __min1 = ecmd->tx_coalesce_usecs;
  __min2 = coalesce_usecs_max;
  tx_coalesce_usecs = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = ecmd->rx_coalesce_usecs;
  __min2___0 = coalesce_usecs_max;
  rx_coalesce_usecs = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  __min1___1 = ecmd->rx_coalesce_usecs_low;
  __min2___1 = coalesce_usecs_max;
  rx_coalesce_usecs_low = __min1___1 < __min2___1 ? __min1___1 : __min2___1;
  __min1___2 = ecmd->rx_coalesce_usecs_high;
  __min2___2 = coalesce_usecs_max;
  rx_coalesce_usecs_high = __min1___2 < __min2___2 ? __min1___2 : __min2___2;
  tmp___0 = vnic_dev_get_intr_mode(enic->vdev);
  }
  {
  if ((unsigned int )tmp___0 == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp___0 == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )tmp___0 == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  if (tx_coalesce_usecs != rx_coalesce_usecs) {
    return (-22);
  } else {
  }
  if ((ecmd->use_adaptive_rx_coalesce != 0U || ecmd->rx_coalesce_usecs_low != 0U) || ecmd->rx_coalesce_usecs_high != 0U) {
    return (-22);
  } else {
  }
  {
  intr = enic_legacy_io_intr();
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 tx_coalesce_usecs);
  }
  goto ldv_47533;
  case_2: ;
  if (tx_coalesce_usecs != rx_coalesce_usecs) {
    return (-22);
  } else {
  }
  if ((ecmd->use_adaptive_rx_coalesce != 0U || ecmd->rx_coalesce_usecs_low != 0U) || ecmd->rx_coalesce_usecs_high != 0U) {
    return (-22);
  } else {
  }
  {
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr), tx_coalesce_usecs);
  }
  goto ldv_47533;
  case_3: ;
  if (ecmd->rx_coalesce_usecs_high != 0U && rx_coalesce_usecs_high < rx_coalesce_usecs_low + 3U) {
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_47537;
  ldv_47536:
  {
  intr = enic_msix_wq_intr(enic, i);
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 tx_coalesce_usecs);
  i = i + 1U;
  }
  ldv_47537: ;
  if (i < enic->wq_count) {
    goto ldv_47536;
  } else {
  }
  rxcoal->use_adaptive_rx_coalesce = ecmd->use_adaptive_rx_coalesce != 0U;
  if (rxcoal->use_adaptive_rx_coalesce == 0U) {
    {
    enic_intr_coal_set_rx(enic, rx_coalesce_usecs);
    }
  } else {
  }
  if (ecmd->rx_coalesce_usecs_high != 0U) {
    rxcoal->range_end = rx_coalesce_usecs_high;
    rxcoal->small_pkt_range_start = rx_coalesce_usecs_low;
    rxcoal->large_pkt_range_start = rx_coalesce_usecs_low + 3U;
  } else {
  }
  goto ldv_47533;
  switch_default: ;
  goto ldv_47533;
  switch_break: ;
  }
  ldv_47533:
  enic->tx_coalesce_usecs = tx_coalesce_usecs;
  enic->rx_coalesce_usecs = rx_coalesce_usecs;
  return (0);
}
}
static int enic_grxclsrlall(struct enic *enic , struct ethtool_rxnfc *cmd , u32 *rule_locs )
{
  int j ;
  int ret ;
  int cnt ;
  struct hlist_head *hhead ;
  struct hlist_node *tmp ;
  struct enic_rfs_fltr_node *n ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct enic_rfs_fltr_node *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct enic_rfs_fltr_node *tmp___1 ;
  {
  ret = 0;
  cnt = 0;
  cmd->data = (__u64 )((int )enic->rfs_h.max - enic->rfs_h.free);
  j = 0;
  goto ldv_47564;
  ldv_47563:
  hhead = (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )j;
  ____ptr = hhead->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct enic_rfs_fltr_node *)__mptr + 0xffffffffffffffe0UL;
  } else {
    tmp___0 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___0;
  goto ldv_47561;
  ldv_47560: ;
  if ((__u32 )cnt == cmd->rule_cnt) {
    return (-90);
  } else {
  }
  *(rule_locs + (unsigned long )cnt) = (u32 )n->fltr_id;
  cnt = cnt + 1;
  ____ptr___0 = tmp;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct enic_rfs_fltr_node *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    tmp___1 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___1;
  ldv_47561: ;
  if ((unsigned long )n != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    tmp = n->node.next;
    goto ldv_47560;
  } else {
  }
  j = j + 1;
  ldv_47564: ;
  if (j <= 1023) {
    goto ldv_47563;
  } else {
  }
  cmd->rule_cnt = (__u32 )cnt;
  return (ret);
}
}
static int enic_grxclsrule(struct enic *enic , struct ethtool_rxnfc *cmd )
{
  struct ethtool_rx_flow_spec *fsp ;
  struct enic_rfs_fltr_node *n ;
  {
  {
  fsp = & cmd->fs;
  n = htbl_fltr_search(enic, (int )((unsigned short )fsp->location));
  }
  if ((unsigned long )n == (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    return (-22);
  } else {
  }
  {
  if ((int )n->keys.ip_proto == 6) {
    goto case_6;
  } else {
  }
  if ((int )n->keys.ip_proto == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_6:
  fsp->flow_type = 1U;
  goto ldv_47573;
  case_17:
  fsp->flow_type = 2U;
  goto ldv_47573;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_47573:
  fsp->h_u.tcp_ip4_spec.ip4src = n->keys.src;
  fsp->m_u.tcp_ip4_spec.ip4src = 4294967295U;
  fsp->h_u.tcp_ip4_spec.ip4dst = n->keys.dst;
  fsp->m_u.tcp_ip4_spec.ip4dst = 4294967295U;
  fsp->h_u.tcp_ip4_spec.psrc = n->keys.__annonCompField70.port16[0];
  fsp->m_u.tcp_ip4_spec.psrc = 65535U;
  fsp->h_u.tcp_ip4_spec.pdst = n->keys.__annonCompField70.port16[1];
  fsp->m_u.tcp_ip4_spec.pdst = 65535U;
  fsp->ring_cookie = (__u64 )n->rq_id;
  return (0);
}
}
static int enic_get_rxnfc(struct net_device *dev , struct ethtool_rxnfc *cmd , u32 *rule_locs )
{
  struct enic *enic ;
  void *tmp ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  enic = (struct enic *)tmp;
  ret = 0;
  }
  {
  if (cmd->cmd == 45U) {
    goto case_45;
  } else {
  }
  if (cmd->cmd == 46U) {
    goto case_46;
  } else {
  }
  if (cmd->cmd == 48U) {
    goto case_48;
  } else {
  }
  if (cmd->cmd == 47U) {
    goto case_47;
  } else {
  }
  goto switch_default;
  case_45:
  cmd->data = (__u64 )enic->rq_count;
  goto ldv_47584;
  case_46:
  {
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  cmd->rule_cnt = (__u32 )((int )enic->rfs_h.max - enic->rfs_h.free);
  cmd->data = (__u64 )enic->rfs_h.max;
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  }
  goto ldv_47584;
  case_48:
  {
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  ret = enic_grxclsrlall(enic, cmd, rule_locs);
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  }
  goto ldv_47584;
  case_47:
  {
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  ret = enic_grxclsrule(enic, cmd);
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  }
  goto ldv_47584;
  switch_default:
  ret = -95;
  goto ldv_47584;
  switch_break: ;
  }
  ldv_47584: ;
  return (ret);
}
}
static int enic_get_tunable(struct net_device *dev , struct ethtool_tunable const *tuna ,
                            void *data )
{
  struct enic *enic ;
  void *tmp ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  enic = (struct enic *)tmp;
  ret = 0;
  }
  {
  if (tuna->id == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1:
  *((u32 *)data) = enic->rx_copybreak;
  goto ldv_47597;
  switch_default:
  ret = -22;
  goto ldv_47597;
  switch_break: ;
  }
  ldv_47597: ;
  return (ret);
}
}
static int enic_set_tunable(struct net_device *dev , struct ethtool_tunable const *tuna ,
                            void const *data )
{
  struct enic *enic ;
  void *tmp ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  enic = (struct enic *)tmp;
  ret = 0;
  }
  {
  if (tuna->id == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1:
  enic->rx_copybreak = *((u32 *)data);
  goto ldv_47607;
  switch_default:
  ret = -22;
  goto ldv_47607;
  switch_break: ;
  }
  ldv_47607: ;
  return (ret);
}
}
static u32 enic_get_rxfh_key_size(struct net_device *netdev )
{
  {
  return (40U);
}
}
static int enic_get_rxfh(struct net_device *netdev , u32 *indir , u8 *hkey , u8 *hfunc )
{
  struct enic *enic ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if ((unsigned long )hkey != (unsigned long )((u8 *)0U)) {
    {
    memcpy((void *)hkey, (void const *)(& enic->rss_key), 40UL);
    }
  } else {
  }
  if ((unsigned long )hfunc != (unsigned long )((u8 *)0U)) {
    *hfunc = 1U;
  } else {
  }
  return (0);
}
}
static int enic_set_rxfh(struct net_device *netdev , u32 const *indir , u8 const *hkey ,
                         u8 const hfunc )
{
  struct enic *enic ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  }
  if ((unsigned int )hfunc > 1U || (unsigned long )indir != (unsigned long )((u32 const *)0U)) {
    return (-22);
  } else {
  }
  if ((unsigned long )hkey != (unsigned long )((u8 const *)0U)) {
    {
    memcpy((void *)(& enic->rss_key), (void const *)hkey, 40UL);
    }
  } else {
  }
  {
  tmp___0 = __enic_set_rsskey(enic);
  }
  return (tmp___0);
}
}
static struct ethtool_ops const enic_ethtool_ops =
     {& enic_get_settings, 0, & enic_get_drvinfo, 0, 0, 0, 0, & enic_get_msglevel, & enic_set_msglevel,
    0, & ethtool_op_get_link, 0, 0, 0, & enic_get_coalesce, & enic_set_coalesce, 0,
    0, 0, 0, 0, & enic_get_strings, 0, & enic_get_ethtool_stats, 0, 0, 0, 0, & enic_get_sset_count,
    & enic_get_rxnfc, 0, 0, 0, & enic_get_rxfh_key_size, 0, & enic_get_rxfh, & enic_set_rxfh,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & enic_get_tunable, & enic_set_tunable};
void enic_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & enic_ethtool_ops;
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  enic_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct net_device * ,
                                                               unsigned int * , unsigned char * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ,
                                                   unsigned char *arg3 , unsigned char *arg4 )
{
  {
  {
  enic_get_rxfh(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  enic_get_rxfh_key_size(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_17(int (*arg0)(struct net_device * ,
                                                               struct ethtool_rxnfc * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , struct ethtool_rxnfc *arg2 ,
                                                   unsigned int *arg3 )
{
  {
  {
  enic_get_rxnfc(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_20(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  enic_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  enic_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_24(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  enic_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_27(int (*arg0)(struct net_device * ,
                                                               struct ethtool_tunable * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   struct ethtool_tunable *arg2 ,
                                                   void *arg3 )
{
  {
  {
  enic_get_tunable(arg1, (struct ethtool_tunable const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  enic_get_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  enic_set_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_58(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  enic_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_61(int (*arg0)(struct net_device * ,
                                                               unsigned int * , unsigned char * ,
                                                               unsigned char ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ,
                                                   unsigned char *arg3 , unsigned char arg4 )
{
  {
  {
  enic_set_rxfh(arg1, (u32 const *)arg2, (u8 const *)arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_64(int (*arg0)(struct net_device * ,
                                                               struct ethtool_tunable * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   struct ethtool_tunable *arg2 ,
                                                   void *arg3 )
{
  {
  {
  enic_set_tunable(arg1, (struct ethtool_tunable const *)arg2, (void const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  enic_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  enic_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_enic_rfs_flw_tbl();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_enic_rfs_flw_tbl();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_168(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_169(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
int enic_api_devcmd_proxy_by_index(struct net_device *netdev , int vf , enum vnic_devcmd_cmd cmd ,
                                   u64 *a0 , u64 *a1 , int wait ) ;
int enic_api_devcmd_proxy_by_index(struct net_device *netdev , int vf , enum vnic_devcmd_cmd cmd ,
                                   u64 *a0 , u64 *a1 , int wait )
{
  int err ;
  struct enic *enic ;
  void *tmp ;
  struct vnic_dev *vdev ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  vdev = enic->vdev;
  ldv_spin_lock_168(& enic->enic_api_lock);
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  vnic_dev_cmd_proxy_by_index_start(vdev, (int )((u16 )vf));
  err = vnic_dev_cmd(vdev, cmd, a0, a1, wait);
  vnic_dev_cmd_proxy_end(vdev);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  ldv_spin_unlock_169(& enic->enic_api_lock);
  }
  return (err);
}
}
static char const __kstrtab_enic_api_devcmd_proxy_by_index[31U] =
  { 'e', 'n', 'i', 'c',
        '_', 'a', 'p', 'i',
        '_', 'd', 'e', 'v',
        'c', 'm', 'd', '_',
        'p', 'r', 'o', 'x',
        'y', '_', 'b', 'y',
        '_', 'i', 'n', 'd',
        'e', 'x', '\000'};
struct kernel_symbol const __ksymtab_enic_api_devcmd_proxy_by_index ;
struct kernel_symbol const __ksymtab_enic_api_devcmd_proxy_by_index = {(unsigned long )(& enic_api_devcmd_proxy_by_index), (char const *)(& __kstrtab_enic_api_devcmd_proxy_by_index)};
__inline static void INIT_HLIST_NODE(struct hlist_node *h )
{
  {
  h->next = (struct hlist_node *)0;
  h->pprev = (struct hlist_node **)0;
  return;
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
  {
  __hlist_del(n);
  n->next = (struct hlist_node *)-2401263026317557504L;
  n->pprev = (struct hlist_node **)-2401263026316508672L;
  }
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
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_141(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_131___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_142(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_132___0(spinlock_t *lock ) ;
static int ldv_mod_timer_129(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_139(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_del_timer_sync_130(struct timer_list *ldv_func_arg1 ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern bool __skb_flow_dissect(struct sk_buff const * , struct flow_keys * , void * ,
                               __be16 , int , int ) ;
__inline static bool skb_flow_dissect(struct sk_buff const *skb , struct flow_keys *flow )
{
  bool tmp ;
  {
  {
  tmp = __skb_flow_dissect(skb, flow, (void *)0, 0, 0, 0);
  }
  return (tmp);
}
}
__inline static __u32 skb_get_hash_raw(struct sk_buff const *skb )
{
  {
  return ((__u32 )skb->hash);
}
}
extern bool rps_may_expire_flow(struct net_device * , u16 , u32 , u16 ) ;
int enic_addfltr_5t(struct enic *enic , struct flow_keys *keys , u16 rq ) ;
int enic_delfltr(struct enic *enic , u16 filter_id ) ;
void enic_flow_may_expire(unsigned long data ) ;
__inline static void enic_rfs_timer_start(struct enic *enic )
{
  struct lock_class_key __key ;
  {
  {
  init_timer_key(& enic->rfs_h.rfs_may_expire, 0U, "(&enic->rfs_h.rfs_may_expire)",
                 & __key);
  enic->rfs_h.rfs_may_expire.function = & enic_flow_may_expire;
  enic->rfs_h.rfs_may_expire.data = (unsigned long )enic;
  ldv_mod_timer_129(& enic->rfs_h.rfs_may_expire, (unsigned long )jiffies + 62UL);
  }
  return;
}
}
__inline static void enic_rfs_timer_stop(struct enic *enic )
{
  {
  {
  ldv_del_timer_sync_130(& enic->rfs_h.rfs_may_expire);
  }
  return;
}
}
int enic_addfltr_5t(struct enic *enic , struct flow_keys *keys , u16 rq )
{
  int res ;
  struct filter data ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  if ((int )keys->ip_proto == 6) {
    goto case_6;
  } else {
  }
  if ((int )keys->ip_proto == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_6:
  data.u.ipv4.protocol = 1U;
  goto ldv_47363;
  case_17:
  data.u.ipv4.protocol = 0U;
  goto ldv_47363;
  switch_default: ;
  return (-93);
  switch_break: ;
  }
  ldv_47363:
  {
  data.type = 1U;
  tmp = __fswab32(keys->src);
  data.u.ipv4.src_addr = tmp;
  tmp___0 = __fswab32(keys->dst);
  data.u.ipv4.dst_addr = tmp___0;
  tmp___1 = __fswab16((int )keys->__annonCompField70.port16[0]);
  data.u.ipv4.src_port = tmp___1;
  tmp___2 = __fswab16((int )keys->__annonCompField70.port16[1]);
  data.u.ipv4.dst_port = tmp___2;
  data.u.ipv4.flags = 31U;
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  res = vnic_dev_classifier(enic->vdev, 0, & rq, & data);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  res = res == 0 ? (int )rq : res;
  }
  return (res);
}
}
int enic_delfltr(struct enic *enic , u16 filter_id )
{
  int ret ;
  {
  {
  ldv_spin_lock_bh_141(& enic->devcmd_lock);
  ret = vnic_dev_classifier(enic->vdev, 1, & filter_id, (struct filter *)0);
  ldv_spin_unlock_bh_142(& enic->devcmd_lock);
  }
  return (ret);
}
}
void enic_rfs_flw_tbl_init(struct enic *enic )
{
  int i ;
  struct lock_class_key __key ;
  {
  {
  spinlock_check(& enic->rfs_h.lock);
  __raw_spin_lock_init(& enic->rfs_h.lock.__annonCompField18.rlock, "&(&enic->rfs_h.lock)->rlock",
                       & __key);
  i = 0;
  }
  goto ldv_47377;
  ldv_47376:
  ((struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )i)->first = (struct hlist_node *)0;
  i = i + 1;
  ldv_47377: ;
  if (i <= 1023) {
    goto ldv_47376;
  } else {
  }
  {
  enic->rfs_h.max = enic->config.num_arfs;
  enic->rfs_h.free = (int )enic->rfs_h.max;
  enic->rfs_h.toclean = 0U;
  enic_rfs_timer_start(enic);
  }
  return;
}
}
void enic_rfs_flw_tbl_free(struct enic *enic )
{
  int i ;
  struct hlist_head *hhead ;
  struct hlist_node *tmp ;
  struct enic_rfs_fltr_node *n ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct enic_rfs_fltr_node *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct enic_rfs_fltr_node *tmp___1 ;
  {
  {
  enic_rfs_timer_stop(enic);
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  enic->rfs_h.free = 0;
  i = 0;
  }
  goto ldv_47399;
  ldv_47398:
  hhead = (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )i;
  ____ptr = hhead->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct enic_rfs_fltr_node *)__mptr + 0xffffffffffffffe0UL;
  } else {
    tmp___0 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___0;
  goto ldv_47396;
  ldv_47395:
  {
  enic_delfltr(enic, (int )n->fltr_id);
  hlist_del(& n->node);
  kfree((void const *)n);
  ____ptr___0 = tmp;
  }
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct enic_rfs_fltr_node *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    tmp___1 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___1;
  ldv_47396: ;
  if ((unsigned long )n != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    tmp = n->node.next;
    goto ldv_47395;
  } else {
  }
  i = i + 1;
  ldv_47399: ;
  if (i <= 1023) {
    goto ldv_47398;
  } else {
  }
  {
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  }
  return;
}
}
struct enic_rfs_fltr_node *htbl_fltr_search(struct enic *enic , u16 fltr_id )
{
  int i ;
  struct hlist_head *hhead ;
  struct hlist_node *tmp ;
  struct enic_rfs_fltr_node *n ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct enic_rfs_fltr_node *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct enic_rfs_fltr_node *tmp___1 ;
  {
  i = 0;
  goto ldv_47422;
  ldv_47421:
  hhead = (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )i;
  ____ptr = hhead->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct enic_rfs_fltr_node *)__mptr + 0xffffffffffffffe0UL;
  } else {
    tmp___0 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___0;
  goto ldv_47419;
  ldv_47418: ;
  if ((int )n->fltr_id == (int )fltr_id) {
    return (n);
  } else {
  }
  ____ptr___0 = tmp;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct enic_rfs_fltr_node *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    tmp___1 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___1;
  ldv_47419: ;
  if ((unsigned long )n != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    tmp = n->node.next;
    goto ldv_47418;
  } else {
  }
  i = i + 1;
  ldv_47422: ;
  if (i <= 1023) {
    goto ldv_47421;
  } else {
  }
  return ((struct enic_rfs_fltr_node *)0);
}
}
void enic_flow_may_expire(unsigned long data )
{
  struct enic *enic ;
  bool res ;
  int j ;
  struct hlist_head *hhead ;
  struct hlist_node *tmp ;
  struct enic_rfs_fltr_node *n ;
  unsigned short tmp___0 ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct enic_rfs_fltr_node *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct enic_rfs_fltr_node *tmp___4 ;
  {
  {
  enic = (struct enic *)data;
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  j = 0;
  }
  goto ldv_47447;
  ldv_47446:
  tmp___0 = enic->rfs_h.toclean;
  enic->rfs_h.toclean = (unsigned short )((int )enic->rfs_h.toclean + 1);
  hhead = (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )tmp___0;
  ____ptr = hhead->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___1 = (struct enic_rfs_fltr_node *)__mptr + 0xffffffffffffffe0UL;
  } else {
    tmp___1 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___1;
  goto ldv_47444;
  ldv_47443:
  {
  res = rps_may_expire_flow(enic->netdev, (int )n->rq_id, n->flow_id, (int )n->fltr_id);
  }
  if ((int )res) {
    {
    tmp___2 = enic_delfltr(enic, (int )n->fltr_id);
    res = tmp___2 != 0;
    tmp___3 = ldv__builtin_expect((long )res, 0L);
    }
    if (tmp___3 != 0L) {
      goto ldv_47442;
    } else {
    }
    {
    hlist_del(& n->node);
    kfree((void const *)n);
    enic->rfs_h.free = enic->rfs_h.free + 1;
    }
  } else {
  }
  ldv_47442:
  ____ptr___0 = tmp;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___4 = (struct enic_rfs_fltr_node *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    tmp___4 = (struct enic_rfs_fltr_node *)0;
  }
  n = tmp___4;
  ldv_47444: ;
  if ((unsigned long )n != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    tmp = n->node.next;
    goto ldv_47443;
  } else {
  }
  j = j + 1;
  ldv_47447: ;
  if (j <= 127) {
    goto ldv_47446;
  } else {
  }
  {
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  ldv_mod_timer_139(& enic->rfs_h.rfs_may_expire, (unsigned long )jiffies + 62UL);
  }
  return;
}
}
static struct enic_rfs_fltr_node *htbl_key_search(struct hlist_head *h , struct flow_keys *k )
{
  struct enic_rfs_fltr_node *tpos ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct enic_rfs_fltr_node *tmp ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct enic_rfs_fltr_node *tmp___0 ;
  {
  ____ptr = h->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct enic_rfs_fltr_node *)__mptr + 0xffffffffffffffe0UL;
  } else {
    tmp = (struct enic_rfs_fltr_node *)0;
  }
  tpos = tmp;
  goto ldv_47463;
  ldv_47462: ;
  if ((((tpos->keys.src == k->src && tpos->keys.dst == k->dst) && tpos->keys.__annonCompField70.ports == k->__annonCompField70.ports) && (int )tpos->keys.ip_proto == (int )k->ip_proto) && (int )tpos->keys.n_proto == (int )k->n_proto) {
    return (tpos);
  } else {
  }
  ____ptr___0 = tpos->node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___0 = (struct enic_rfs_fltr_node *)__mptr___0 + 0xffffffffffffffe0UL;
  } else {
    tmp___0 = (struct enic_rfs_fltr_node *)0;
  }
  tpos = tmp___0;
  ldv_47463: ;
  if ((unsigned long )tpos != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    goto ldv_47462;
  } else {
  }
  return ((struct enic_rfs_fltr_node *)0);
}
}
int enic_rx_flow_steer(struct net_device *dev , struct sk_buff const *skb , u16 rxq_index ,
                       u32 flow_id )
{
  struct flow_keys keys ;
  struct enic_rfs_fltr_node *n ;
  struct enic *enic ;
  u16 tbl_idx ;
  int res ;
  int i ;
  void *tmp ;
  bool tmp___0 ;
  __u32 tmp___1 ;
  long tmp___2 ;
  int ret ;
  struct enic_rfs_fltr_node *d ;
  struct hlist_head *head ;
  void *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  void *tmp___6 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  enic = (struct enic *)tmp;
  tmp___0 = skb_flow_dissect(skb, & keys);
  res = (int )tmp___0;
  }
  if ((res == 0 || (unsigned int )keys.n_proto != 8U) || ((unsigned int )keys.ip_proto != 6U && (unsigned int )keys.ip_proto != 17U)) {
    return (-93);
  } else {
  }
  {
  tmp___1 = skb_get_hash_raw(skb);
  tbl_idx = (unsigned int )((u16 )tmp___1) & 1023U;
  ldv_spin_lock_bh_131___0(& enic->rfs_h.lock);
  n = htbl_key_search((struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )tbl_idx,
                      & keys);
  }
  if ((unsigned long )n != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
    if ((int )rxq_index == (int )n->rq_id) {
      res = -17;
      goto ret_unlock;
    } else {
    }
    {
    enic->rfs_h.free = enic->rfs_h.free - 1;
    i = enic->rfs_h.free;
    tmp___5 = ldv__builtin_expect(i < 0, 0L);
    }
    if (tmp___5 != 0L) {
      {
      enic->rfs_h.free = enic->rfs_h.free + 1;
      res = enic_delfltr(enic, (int )n->fltr_id);
      tmp___2 = ldv__builtin_expect(res < 0, 0L);
      }
      if (tmp___2 != 0L) {
        goto ret_unlock;
      } else {
      }
      {
      res = enic_addfltr_5t(enic, & keys, (int )rxq_index);
      }
      if (res < 0) {
        {
        hlist_del(& n->node);
        enic->rfs_h.free = enic->rfs_h.free + 1;
        }
        goto ret_unlock;
      } else {
      }
    } else {
      {
      res = enic_addfltr_5t(enic, & keys, (int )rxq_index);
      }
      if (res < 0) {
        enic->rfs_h.free = enic->rfs_h.free + 1;
        goto ret_unlock;
      } else {
      }
      {
      ret = enic_delfltr(enic, (int )n->fltr_id);
      tmp___4 = ldv__builtin_expect(ret < 0, 0L);
      }
      if (tmp___4 != 0L) {
        {
        head = (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )tbl_idx;
        tmp___3 = kmalloc(48UL, 32U);
        d = (struct enic_rfs_fltr_node *)tmp___3;
        }
        if ((unsigned long )d != (unsigned long )((struct enic_rfs_fltr_node *)0)) {
          {
          d->fltr_id = n->fltr_id;
          INIT_HLIST_NODE(& d->node);
          hlist_add_head(& d->node, head);
          }
        } else {
        }
      } else {
        enic->rfs_h.free = enic->rfs_h.free + 1;
      }
    }
    n->rq_id = rxq_index;
    n->fltr_id = (u16 )res;
    n->flow_id = flow_id;
  } else {
    enic->rfs_h.free = enic->rfs_h.free - 1;
    i = enic->rfs_h.free;
    if (i <= 0) {
      enic->rfs_h.free = enic->rfs_h.free + 1;
      res = -16;
      goto ret_unlock;
    } else {
    }
    {
    tmp___6 = kmalloc(48UL, 32U);
    n = (struct enic_rfs_fltr_node *)tmp___6;
    }
    if ((unsigned long )n == (unsigned long )((struct enic_rfs_fltr_node *)0)) {
      res = -12;
      enic->rfs_h.free = enic->rfs_h.free + 1;
      goto ret_unlock;
    } else {
    }
    {
    res = enic_addfltr_5t(enic, & keys, (int )rxq_index);
    }
    if (res < 0) {
      {
      kfree((void const *)n);
      enic->rfs_h.free = enic->rfs_h.free + 1;
      }
      goto ret_unlock;
    } else {
    }
    {
    n->rq_id = rxq_index;
    n->fltr_id = (u16 )res;
    n->flow_id = flow_id;
    n->keys = keys;
    INIT_HLIST_NODE(& n->node);
    hlist_add_head(& n->node, (struct hlist_head *)(& enic->rfs_h.ht_head) + (unsigned long )tbl_idx);
    }
  }
  ret_unlock:
  {
  ldv_spin_unlock_bh_132___0(& enic->rfs_h.lock);
  }
  return (res);
}
}
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_9_2(struct timer_list *arg0 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_6_timer_list_timer_list ;
  {
  {
  ldv_6_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_6_1(ldv_6_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_instance_deregister_6_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_9_2(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_timer_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_timer_timer_instance_4((void *)cf_arg_4);
  }
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_9_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_9_timer_list_timer_list = arg1;
    ldv_dispatch_instance_register_9_2(ldv_9_timer_list_timer_list);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc_unknown_size();
  ldv_after_alloc(res);
  }
  return (res);
}
}
static int ldv_mod_timer_129(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_130(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_139(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
void *ldv_undef_ptr(void) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(void)
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void)
{
  struct gendisk *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct gendisk *)tmp;
  ldv_assert_linux_block_genhd__double_allocation(ldv_linux_block_genhd_disk_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct gendisk *)0)) {
    ldv_linux_block_genhd_disk_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
struct request_queue *ldv_linux_block_queue_request_queue(void)
{
  struct request_queue *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct request_queue *)tmp;
  ldv_assert_linux_block_queue__double_allocation(ldv_linux_block_queue_queue_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct request_queue *)0)) {
    ldv_linux_block_queue_queue_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
struct request *ldv_linux_block_request_blk_get_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  }
  if ((mask == 16U || mask == 208U) || mask == 16U) {
    {
    ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
    }
  } else {
  }
  if ((unsigned long )res != (unsigned long )((struct request *)0)) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
struct request *ldv_linux_block_request_blk_make_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
  tmp___0 = ldv_is_err((void const *)res);
  }
  if (tmp___0 == 0L) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
struct urb *ldv_linux_usb_urb_usb_alloc_urb(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return ((struct urb *)arbitrary_memory);
  } else {
  }
  ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + 1;
  return ((struct urb *)arbitrary_memory);
}
}
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
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
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *external_allocated_data(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_xmalloc_unknown_size(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
int ldv_undef_int_negative(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended__xmit_lock_of_netdev_queue(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_addr_list_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_bpoll_lock_of_vnic_rq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_bpoll_lock_of_vnic_rq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 2);
  ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_bpoll_lock_of_vnic_rq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_bpoll_lock_of_vnic_rq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_bpoll_lock_of_vnic_rq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_bpoll_lock_of_vnic_rq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_bpoll_lock_of_vnic_rq();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_bpoll_lock_of_vnic_rq(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_bpoll_lock_of_vnic_rq(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_devcmd_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_devcmd_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 2);
  ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_devcmd_lock_of_enic(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_devcmd_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_devcmd_lock_of_enic(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_devcmd_lock_of_enic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_devcmd_lock_of_enic();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_devcmd_lock_of_enic(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_devcmd_lock_of_enic(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_enic_api_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_enic_api_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 2);
  ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_enic_api_lock_of_enic(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_enic_api_lock_of_enic(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_enic_api_lock_of_enic(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_enic_api_lock_of_enic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_enic_api_lock_of_enic();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_enic_api_lock_of_enic(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_enic_api_lock_of_enic(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_enic_rfs_flw_tbl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_enic_rfs_flw_tbl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_enic_rfs_flw_tbl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_enic_rfs_flw_tbl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_enic_rfs_flw_tbl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_enic_rfs_flw_tbl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_enic_rfs_flw_tbl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_enic_rfs_flw_tbl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_enic_rfs_flw_tbl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_tx_global_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bpoll_lock_of_vnic_rq == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_devcmd_lock_of_enic == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_enic_api_lock_of_enic == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_enic_rfs_flw_tbl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__not_initialized(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_sock__double_release(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__double_put(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__get_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __hw_addr_sync_dev(struct netdev_hw_addr_list *arg0, struct net_device *arg1, int (*arg2)(struct net_device *, const unsigned char *), int (*arg3)(struct net_device *, const unsigned char *)) {
  return __VERIFIER_nondet_int();
}
void __hw_addr_unsync_dev(struct netdev_hw_addr_list *arg0, struct net_device *arg1, int (*arg2)(struct net_device *, const unsigned char *)) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __napi_schedule_irqoff(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return (unsigned char *)external_alloc();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __skb_flow_dissect(const struct sk_buff *arg0, struct flow_keys *arg1, void *arg2, __be16 arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_bool();
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void *external_alloc(void);
struct cpu_rmap *alloc_cpu_rmap(unsigned int arg0, gfp_t arg1) {
  return (struct cpu_rmap *)external_alloc();
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int call_netdevice_notifiers(unsigned long arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 csum_ipv6_magic(const struct in6_addr *arg0, const struct in6_addr *arg1, __u32 arg2, unsigned short arg3, __wsum arg4) {
  return __VERIFIER_nondet_ushort();
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_irq_cpu_rmap(struct cpu_rmap *arg0) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread8(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int irq_cpu_rmap_add(struct cpu_rmap *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void __VERIFIER_assume(int);
ktime_t ktime_get() {
  union ktime *tmp = (union ktime*)external_alloc();
  __VERIFIER_assume(tmp != 0);
  return *tmp;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void napi_disable(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void napi_hash_add(struct napi_struct *arg0) {
  return;
}
void napi_hash_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_rss_key_fill(void *arg0, size_t arg1) {
  return;
}
void netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
void netif_wake_subqueue(struct net_device *arg0, u16 arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int nla_put(struct sk_buff *arg0, int arg1, int arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
void pci_disable_sriov(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device_mem(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_sriov(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_ext_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool rps_may_expire_flow(struct net_device *arg0, u16 arg1, u32 arg2, u16 arg3) {
  return __VERIFIER_nondet_bool();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
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
