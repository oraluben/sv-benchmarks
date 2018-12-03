typedef signed char __s8;
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
typedef __u16 __be16;
typedef __u32 __be32;
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
typedef __u8 u_int8_t;
typedef __u16 u_int16_t;
typedef __u32 u_int32_t;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
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
struct icmpv6msg_mib {
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
struct nf_hook_ops;
typedef unsigned int nf_hookfn(struct nf_hook_ops const * , struct sk_buff * , struct net_device const * ,
                               struct net_device const * , int (*)(struct sk_buff * ) );
struct nf_hook_ops {
   struct list_head list ;
   nf_hookfn *hook ;
   struct module *owner ;
   void *priv ;
   u_int8_t pf ;
   unsigned int hooknum ;
   int priority ;
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
enum ldv_27423 {
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
typedef enum ldv_27423 phy_interface_t;
enum ldv_27476 {
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
   enum ldv_27476 state ;
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
union __anonunion____missing_field_name_271 {
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
   union __anonunion____missing_field_name_271 __annonCompField87 ;
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
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct nft_cmp_fast_expr {
   u32 data ;
   unsigned char sreg ;
   u8 len ;
};
struct nft_expr_ops;
struct nft_payload {
   unsigned char base ;
   u8 offset ;
   u8 len ;
   unsigned char dreg ;
};
struct xt_match;
struct xt_target;
union __anonunion____missing_field_name_278 {
   struct xt_match const *match ;
   struct xt_target const *target ;
};
union __anonunion____missing_field_name_279 {
   void const *matchinfo ;
   void const *targinfo ;
};
struct xt_action_param {
   union __anonunion____missing_field_name_278 __annonCompField88 ;
   union __anonunion____missing_field_name_279 __annonCompField89 ;
   struct net_device const *in ;
   struct net_device const *out ;
   int fragoff ;
   unsigned int thoff ;
   unsigned int hooknum ;
   u_int8_t family ;
   bool hotdrop ;
};
struct xt_mtchk_param {
   struct net *net ;
   char const *table ;
   void const *entryinfo ;
   struct xt_match const *match ;
   void *matchinfo ;
   unsigned int hook_mask ;
   u_int8_t family ;
};
struct xt_mtdtor_param {
   struct net *net ;
   struct xt_match const *match ;
   void *matchinfo ;
   u_int8_t family ;
};
struct xt_tgchk_param {
   struct net *net ;
   char const *table ;
   void const *entryinfo ;
   struct xt_target const *target ;
   void *targinfo ;
   unsigned int hook_mask ;
   u_int8_t family ;
};
struct xt_tgdtor_param {
   struct net *net ;
   struct xt_target const *target ;
   void *targinfo ;
   u_int8_t family ;
};
struct xt_match {
   struct list_head list ;
   char const name[29U] ;
   u_int8_t revision ;
   bool (*match)(struct sk_buff const * , struct xt_action_param * ) ;
   int (*checkentry)(struct xt_mtchk_param const * ) ;
   void (*destroy)(struct xt_mtdtor_param const * ) ;
   void (*compat_from_user)(void * , void const * ) ;
   int (*compat_to_user)(void * , void const * ) ;
   struct module *me ;
   char const *table ;
   unsigned int matchsize ;
   unsigned int compatsize ;
   unsigned int hooks ;
   unsigned short proto ;
   unsigned short family ;
};
struct xt_target {
   struct list_head list ;
   char const name[29U] ;
   u_int8_t revision ;
   unsigned int (*target)(struct sk_buff * , struct xt_action_param const * ) ;
   int (*checkentry)(struct xt_tgchk_param const * ) ;
   void (*destroy)(struct xt_tgdtor_param const * ) ;
   void (*compat_from_user)(void * , void const * ) ;
   int (*compat_to_user)(void * , void const * ) ;
   struct module *me ;
   char const *table ;
   unsigned int targetsize ;
   unsigned int compatsize ;
   unsigned int hooks ;
   unsigned short proto ;
   unsigned short family ;
};
struct xt_table_info;
struct xt_table {
   struct list_head list ;
   unsigned int valid_hooks ;
   struct xt_table_info *private ;
   struct module *me ;
   u_int8_t af ;
   int priority ;
   char const name[32U] ;
};
struct xt_table_info {
   unsigned int size ;
   unsigned int number ;
   unsigned int initial_entries ;
   unsigned int hook_entry[5U] ;
   unsigned int underflow[5U] ;
   unsigned int stacksize ;
   unsigned int *stackptr ;
   void ***jumpstack ;
   void *entries[1U] ;
};
struct nft_pktinfo {
   struct sk_buff *skb ;
   struct net_device const *in ;
   struct net_device const *out ;
   struct nf_hook_ops const *ops ;
   u8 nhoff ;
   u8 thoff ;
   u8 tprot ;
   struct xt_action_param xt ;
};
struct nft_chain;
struct __anonstruct____missing_field_name_287 {
   u32 verdict ;
   struct nft_chain *chain ;
};
union __anonunion____missing_field_name_286 {
   u32 data[4U] ;
   struct __anonstruct____missing_field_name_287 __annonCompField90 ;
};
struct nft_data {
   union __anonunion____missing_field_name_286 __annonCompField91 ;
};
struct nft_table;
struct nft_ctx {
   struct net *net ;
   struct nft_af_info *afi ;
   struct nft_table *table ;
   struct nft_chain *chain ;
   struct nlattr const * const *nla ;
   u32 portid ;
   u32 seq ;
   bool report ;
};
struct nft_expr_type {
   struct nft_expr_ops const *(*select_ops)(struct nft_ctx const * , struct nlattr const * const * ) ;
   struct nft_expr_ops const *ops ;
   struct list_head list ;
   char const *name ;
   struct module *owner ;
   struct nla_policy const *policy ;
   unsigned int maxattr ;
   u8 family ;
};
struct nft_expr;
struct nft_expr_ops {
   void (*eval)(struct nft_expr const * , struct nft_data * , struct nft_pktinfo const * ) ;
   unsigned int size ;
   int (*init)(struct nft_ctx const * , struct nft_expr const * , struct nlattr const * const * ) ;
   void (*destroy)(struct nft_ctx const * , struct nft_expr const * ) ;
   int (*dump)(struct sk_buff * , struct nft_expr const * ) ;
   int (*validate)(struct nft_ctx const * , struct nft_expr const * , struct nft_data const ** ) ;
   struct nft_expr_type const *type ;
   void *data ;
};
struct nft_expr {
   struct nft_expr_ops const *ops ;
   unsigned char data[] ;
};
struct nft_rule {
   struct list_head list ;
   unsigned long handle : 42 ;
   unsigned char genmask : 2 ;
   unsigned short dlen : 12 ;
   unsigned char ulen ;
   unsigned char data[] ;
};
struct nft_stats;
struct nft_chain {
   struct list_head rules ;
   struct list_head list ;
   struct net *net ;
   struct nft_table *table ;
   u64 handle ;
   u32 use ;
   u16 level ;
   u8 flags ;
   char name[32U] ;
};
enum nft_chain_type {
    NFT_CHAIN_T_DEFAULT = 0,
    NFT_CHAIN_T_ROUTE = 1,
    NFT_CHAIN_T_NAT = 2,
    NFT_CHAIN_T_MAX = 3
} ;
struct nft_stats {
   u64 bytes ;
   u64 pkts ;
   struct u64_stats_sync syncp ;
};
struct nf_chain_type;
struct nft_base_chain {
   struct nf_hook_ops ops[2U] ;
   struct nf_chain_type const *type ;
   u8 policy ;
   struct nft_stats *stats ;
   struct nft_chain chain ;
};
struct nft_table {
   struct list_head list ;
   struct list_head chains ;
   struct list_head sets ;
   u64 hgenerator ;
   u32 use ;
   u16 flags ;
   char name[] ;
};
struct nft_af_info {
   struct list_head list ;
   int family ;
   unsigned int nhooks ;
   struct module *owner ;
   struct list_head tables ;
   unsigned int nops ;
   void (*hook_ops_init)(struct nf_hook_ops * , unsigned int ) ;
   nf_hookfn *hooks[8U] ;
};
struct nf_chain_type {
   char const *name ;
   enum nft_chain_type type ;
   int family ;
   struct module *owner ;
   unsigned int hook_mask ;
   nf_hookfn *hooks[8U] ;
};
enum nf_log_type {
    NF_LOG_TYPE_LOG = 0,
    NF_LOG_TYPE_ULOG = 1,
    NF_LOG_TYPE_MAX = 2
} ;
struct __anonstruct_ulog_289 {
   u_int32_t copy_len ;
   u_int16_t group ;
   u_int16_t qthreshold ;
};
struct __anonstruct_log_290 {
   u_int8_t level ;
   u_int8_t logflags ;
};
union __anonunion_u_288 {
   struct __anonstruct_ulog_289 ulog ;
   struct __anonstruct_log_290 log ;
};
struct nf_loginfo {
   u_int8_t type ;
   union __anonunion_u_288 u ;
};
typedef void nf_logfn(struct net * , u_int8_t , unsigned int , struct sk_buff const * ,
                      struct net_device const * , struct net_device const * ,
                      struct nf_loginfo const * , char const * );
struct nf_logger {
   char *name ;
   enum nf_log_type type ;
   nf_logfn *logfn ;
   struct module *me ;
};
struct nft_jumpstack {
   struct nft_chain const *chain ;
   struct nft_rule const *rule ;
   int rulenum ;
};
enum nft_trace {
    NFT_TRACE_RULE = 0,
    NFT_TRACE_RETURN = 1,
    NFT_TRACE_POLICY = 2
} ;
typedef short __s16;
typedef __u64 __be64;
struct ldv_thread;
typedef int pao_T__;
typedef int pao_T_____0;
enum hrtimer_restart;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_22752 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22752 socket_state;
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
struct in6_addr;
struct rtable;
union __anonunion_in6_u_248 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_248 in6_u ;
};
struct pernet_operations {
   struct list_head list ;
   int (*init)(struct net * ) ;
   void (*exit)(struct net * ) ;
   void (*exit_batch)(struct list_head * ) ;
   int *id ;
   size_t size ;
};
struct xfrm_policy;
struct xfrm_state;
struct scm_creds {
   u32 pid ;
   kuid_t uid ;
   kgid_t gid ;
};
struct netlink_skb_parms {
   struct scm_creds creds ;
   __u32 portid ;
   __u32 dst_group ;
   __u32 flags ;
   struct sock *sk ;
};
struct netlink_dump_control {
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 min_dump_alloc ;
};
struct nfgenmsg {
   __u8 nfgen_family ;
   __u8 version ;
   __be16 res_id ;
};
struct nfnl_callback {
   int (*call)(struct sock * , struct sk_buff * , struct nlmsghdr const * , struct nlattr const * const * ) ;
   int (*call_rcu_sched)(struct sock * , struct sk_buff * , struct nlmsghdr const * ,
                         struct nlattr const * const * ) ;
   int (*call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr const * ,
                     struct nlattr const * const * ) ;
   struct nla_policy const *policy ;
   u_int16_t const attr_count ;
};
struct nfnetlink_subsystem {
   char const *name ;
   __u8 subsys_id ;
   __u8 cb_count ;
   struct nfnl_callback const *cb ;
   int (*commit)(struct sk_buff * ) ;
   int (*abort)(struct sk_buff * ) ;
};
enum nft_registers {
    NFT_REG_VERDICT = 0,
    NFT_REG_1 = 1,
    NFT_REG_2 = 2,
    NFT_REG_3 = 3,
    NFT_REG_4 = 4,
    __NFT_REG_MAX = 5
} ;
enum nft_set_policies {
    NFT_SET_POL_PERFORMANCE = 0,
    NFT_SET_POL_MEMORY = 1
} ;
enum nft_data_types {
    NFT_DATA_VALUE = 0,
    NFT_DATA_VERDICT = 4294967040U
} ;
struct nft_data_desc {
   enum nft_data_types type ;
   unsigned int len ;
};
struct nft_set_elem {
   void *cookie ;
   struct nft_data key ;
   struct nft_data data ;
   u32 flags ;
};
struct nft_set;
struct nft_set_iter {
   unsigned int count ;
   unsigned int skip ;
   int err ;
   int (*fn)(struct nft_ctx const * , struct nft_set const * , struct nft_set_iter const * ,
             struct nft_set_elem const * ) ;
};
struct nft_set_desc {
   unsigned int klen ;
   unsigned int dlen ;
   unsigned int size ;
};
enum nft_set_class {
    NFT_SET_CLASS_O_1 = 0,
    NFT_SET_CLASS_O_LOG_N = 1,
    NFT_SET_CLASS_O_N = 2
} ;
struct nft_set_estimate {
   unsigned int size ;
   enum nft_set_class class ;
};
struct nft_set_ops {
   bool (*lookup)(struct nft_set const * , struct nft_data const * , struct nft_data * ) ;
   int (*get)(struct nft_set const * , struct nft_set_elem * ) ;
   int (*insert)(struct nft_set const * , struct nft_set_elem const * ) ;
   void (*remove)(struct nft_set const * , struct nft_set_elem const * ) ;
   void (*walk)(struct nft_ctx const * , struct nft_set const * , struct nft_set_iter * ) ;
   unsigned int (*privsize)(struct nlattr const * const * ) ;
   bool (*estimate)(struct nft_set_desc const * , u32 , struct nft_set_estimate * ) ;
   int (*init)(struct nft_set const * , struct nft_set_desc const * , struct nlattr const * const * ) ;
   void (*destroy)(struct nft_set const * ) ;
   struct list_head list ;
   struct module *owner ;
   u32 features ;
};
struct nft_set {
   struct list_head list ;
   struct list_head bindings ;
   char name[16U] ;
   u32 ktype ;
   u32 dtype ;
   u32 size ;
   u32 nelems ;
   u16 policy ;
   struct nft_set_ops const *ops ;
   u16 flags ;
   u8 klen ;
   u8 dlen ;
   unsigned char data[] ;
};
struct nft_set_binding {
   struct list_head list ;
   struct nft_chain const *chain ;
};
struct nft_trans {
   struct list_head list ;
   int msg_type ;
   struct nft_ctx ctx ;
   char data[0U] ;
};
struct nft_trans_rule {
   struct nft_rule *rule ;
};
struct nft_trans_set {
   struct nft_set *set ;
   u32 set_id ;
};
struct nft_trans_chain {
   bool update ;
   char name[32U] ;
   struct nft_stats *stats ;
   u8 policy ;
};
struct nft_trans_table {
   bool update ;
   bool enable ;
};
struct nft_trans_elem {
   struct nft_set *set ;
   struct nft_set_elem elem ;
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
union __anonunion_ki_obj_288 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_288 ki_obj ;
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
union __anonunion____missing_field_name_293 {
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
   union __anonunion____missing_field_name_293 __annonCompField96 ;
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
union __anonunion____missing_field_name_298 {
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
   union __anonunion____missing_field_name_298 __annonCompField97 ;
};
struct __anonstruct_socket_lock_t_299 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_299 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_301 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_300 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_301 __annonCompField98 ;
};
union __anonunion____missing_field_name_302 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_304 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_303 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_304 __annonCompField101 ;
};
union __anonunion____missing_field_name_305 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_306 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_300 __annonCompField99 ;
   union __anonunion____missing_field_name_302 __annonCompField100 ;
   union __anonunion____missing_field_name_303 __annonCompField102 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_305 __annonCompField103 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_306 __annonCompField104 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_307 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_307 sk_backlog ;
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
union __anonunion_h_308 {
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
   union __anonunion_h_308 h ;
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
struct nft_expr_info {
   struct nft_expr_ops const *ops ;
   struct nlattr *tb[17U] ;
};
struct nft_set_dump_args {
   struct netlink_callback const *cb ;
   struct nft_set_iter iter ;
   struct sk_buff *skb ;
};
struct ldv_struct_EMGentry_22 {
   int signal_pending ;
};
enum hrtimer_restart;
struct nft_immediate_expr {
   struct nft_data data ;
   unsigned char dreg ;
   u8 dlen ;
};
enum hrtimer_restart;
enum nft_cmp_ops {
    NFT_CMP_EQ = 0,
    NFT_CMP_NEQ = 1,
    NFT_CMP_LT = 2,
    NFT_CMP_LTE = 3,
    NFT_CMP_GT = 4,
    NFT_CMP_GTE = 5
} ;
struct nft_cmp_expr {
   struct nft_data data ;
   unsigned char sreg ;
   u8 len ;
   unsigned char op ;
};
enum hrtimer_restart;
struct nft_lookup {
   struct nft_set *set ;
   unsigned char sreg ;
   unsigned char dreg ;
   struct nft_set_binding binding ;
};
enum hrtimer_restart;
struct nft_bitwise {
   unsigned char sreg ;
   unsigned char dreg ;
   u8 len ;
   struct nft_data mask ;
   struct nft_data xor ;
};
enum hrtimer_restart;
struct nft_byteorder {
   unsigned char sreg ;
   unsigned char dreg ;
   unsigned char op ;
   u8 len ;
   u8 size ;
};
union __anonunion_s_289 {
   u32 u32 ;
   u16 u16 ;
};
union __anonunion_d_290 {
   u32 u32 ;
   u16 u16 ;
};
union __anonunion_292 {
   u32 u32 ;
   u16 u16 ;
};
union __anonunion_294 {
   u32 u32 ;
   u16 u16 ;
};
enum hrtimer_restart;
enum nft_payload_bases {
    NFT_PAYLOAD_LL_HEADER = 0,
    NFT_PAYLOAD_NETWORK_HEADER = 1,
    NFT_PAYLOAD_TRANSPORT_HEADER = 2
} ;
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
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
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
void *ldv_malloc_unknown_size(void) ;
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
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void) ;
extern unsigned long this_cpu_off ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern int rcu_read_lock_held(void) ;
__inline static void rcu_read_lock_bh(void) ;
__inline static void rcu_read_unlock_bh(void) ;
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static void u64_stats_update_begin(struct u64_stats_sync *syncp )
{
  {
  return;
}
}
__inline static struct net *read_pnet(struct net * const *pnet )
{
  {
  return ((struct net *)*pnet);
}
}
__inline static struct net *dev_net(struct net_device const *dev )
{
  struct net *tmp ;
  {
  {
  tmp = read_pnet(& dev->nd_net);
  }
  return (tmp);
}
}
int nf_tables_core_module_init(void) ;
void nf_tables_core_module_exit(void) ;
int nft_immediate_module_init(void) ;
void nft_immediate_module_exit(void) ;
__inline static u32 nft_cmp_fast_mask(unsigned int len )
{
  {
  return (4294967295U >> (int )(32U - len));
}
}
struct nft_expr_ops const nft_cmp_fast_ops ;
int nft_cmp_module_init(void) ;
void nft_cmp_module_exit(void) ;
int nft_lookup_module_init(void) ;
void nft_lookup_module_exit(void) ;
int nft_bitwise_module_init(void) ;
void nft_bitwise_module_exit(void) ;
int nft_byteorder_module_init(void) ;
void nft_byteorder_module_exit(void) ;
struct nft_expr_ops const nft_payload_fast_ops ;
int nft_payload_module_init(void) ;
void nft_payload_module_exit(void) ;
__inline static void *nft_expr_priv(struct nft_expr const *expr )
{
  {
  return ((void *)(& expr->data));
}
}
__inline static struct nft_expr *nft_expr_first(struct nft_rule const *rule )
{
  {
  return ((struct nft_expr *)(& rule->data));
}
}
__inline static struct nft_expr *nft_expr_next(struct nft_expr const *expr )
{
  {
  return ((struct nft_expr *)expr + (unsigned long )(expr->ops)->size);
}
}
__inline static struct nft_expr *nft_expr_last(struct nft_rule const *rule )
{
  {
  return ((struct nft_expr *)(& rule->data) + (unsigned long )rule->dlen);
}
}
__inline static struct nft_base_chain *nft_base_chain(struct nft_chain const *chain )
{
  struct nft_chain const *__mptr ;
  {
  __mptr = chain;
  return ((struct nft_base_chain *)__mptr + 0xffffffffffffff78UL);
}
}
unsigned int nft_do_chain(struct nft_pktinfo *pkt , struct nf_hook_ops const *ops ) ;
extern void nf_log_packet(struct net * , u_int8_t , unsigned int , struct sk_buff const * ,
                          struct net_device const * , struct net_device const * ,
                          struct nf_loginfo const * , char const * , ...) ;
static void nft_cmp_fast_eval(struct nft_expr const *expr , struct nft_data *data )
{
  struct nft_cmp_fast_expr const *priv ;
  void *tmp ;
  u32 mask ;
  u32 tmp___0 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_fast_expr const *)tmp;
  tmp___0 = nft_cmp_fast_mask((unsigned int )priv->len);
  mask = tmp___0;
  }
  if (((data + (unsigned long )priv->sreg)->__annonCompField91.data[0] & mask) == (u32 )priv->data) {
    return;
  } else {
  }
  data->__annonCompField91.__annonCompField90.verdict = 4294967294U;
  return;
}
}
static bool nft_payload_fast_eval(struct nft_expr const *expr , struct nft_data *data ,
                                  struct nft_pktinfo const *pkt )
{
  struct nft_payload const *priv ;
  void *tmp ;
  struct sk_buff const *skb ;
  struct nft_data *dest ;
  unsigned char *ptr ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_payload const *)tmp;
  skb = (struct sk_buff const *)pkt->skb;
  dest = data + (unsigned long )priv->dreg;
  }
  if ((unsigned int )((unsigned char )priv->base) == 1U) {
    {
    ptr = skb_network_header(skb);
    }
  } else {
    {
    tmp___0 = skb_network_header(skb);
    ptr = tmp___0 + (unsigned long )pkt->xt.thoff;
    }
  }
  {
  ptr = ptr + (unsigned long )priv->offset;
  tmp___1 = skb_tail_pointer(skb);
  tmp___2 = ldv__builtin_expect((unsigned long )(ptr + (unsigned long )priv->len) >= (unsigned long )tmp___1,
                             0L);
  }
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  if ((unsigned int )((unsigned char )priv->len) == 2U) {
    *((u16 *)(& dest->__annonCompField91.data)) = *((u16 *)ptr);
  } else
  if ((unsigned int )((unsigned char )priv->len) == 4U) {
    *((u32 *)(& dest->__annonCompField91.data)) = *((u32 *)ptr);
  } else {
    *((u8 *)(& dest->__annonCompField91.data)) = *ptr;
  }
  return (1);
}
}
static char const * const comments[3U] = { "rule", "return", "policy"};
static struct nf_loginfo trace_loginfo = {0U, {.log = {4U, 15U}}};
static void nft_trace_packet(struct nft_pktinfo const *pkt , struct nft_chain const *chain ,
                             int rulenum , enum nft_trace type )
{
  struct net *net ;
  struct net *tmp ;
  {
  {
  tmp = dev_net((unsigned long )pkt->in != (unsigned long )((struct net_device const * )0) ? pkt->in : pkt->out);
  net = tmp;
  nf_log_packet(net, (int )pkt->xt.family, (pkt->ops)->hooknum, (struct sk_buff const *)pkt->skb,
                pkt->in, pkt->out, (struct nf_loginfo const *)(& trace_loginfo),
                "TRACE: %s:%s:%s:%u ", (char *)(& (chain->table)->name), (char const *)(& chain->name),
                comments[(unsigned int )type], rulenum);
  }
  return;
}
}
unsigned int nft_do_chain(struct nft_pktinfo *pkt , struct nf_hook_ops const *ops )
{
  struct nft_chain const *chain ;
  struct nft_chain const *basechain ;
  struct nft_rule const *rule ;
  struct nft_expr const *expr ;
  struct nft_expr const *last ;
  struct nft_data data[5U] ;
  unsigned int stackptr ;
  struct nft_jumpstack jumpstack[16U] ;
  struct nft_stats *stats ;
  int rulenum ;
  unsigned int gencursor ;
  u8 __var ;
  struct list_head const *__mptr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var___0 ;
  bool __warned ;
  int tmp ;
  long tmp___0 ;
  struct nft_expr *tmp___1 ;
  struct nft_expr *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  struct nft_expr *tmp___5 ;
  long tmp___6 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___1 ;
  bool __warned___0 ;
  int tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  int __ret_warn_on ;
  long tmp___15 ;
  long tmp___16 ;
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  struct nft_stats *________p1___1 ;
  struct nft_stats *_________p1___1 ;
  struct nft_stats *__var___2 ;
  struct nft_base_chain *tmp___17 ;
  bool __warned___1 ;
  int tmp___18 ;
  int tmp___19 ;
  struct nft_base_chain *tmp___20 ;
  {
  chain = (struct nft_chain const *)ops->priv;
  basechain = chain;
  stackptr = 0U;
  __var = 0U;
  gencursor = (unsigned int )*((u8 volatile *)(& (chain->net)->nft.gencursor));
  do_chain:
  rulenum = 0;
  __mptr = & chain->rules;
  rule = (struct nft_rule const *)((struct nft_rule *)__mptr);
  next_rule:
  {
  data[0].__annonCompField91.__annonCompField90.verdict = 4294967295U;
  __ptr = rule->list.next;
  __var___0 = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1;
  rule = (struct nft_rule const *)__mptr___0;
  goto ldv_47080;
  ldv_47079:
  {
  tmp___0 = ldv__builtin_expect((long )((int )rule->genmask >> (int )gencursor) & 1L,
                             0L);
  }
  if (tmp___0 != 0L) {
    goto ldv_47072;
  } else {
  }
  {
  rulenum = rulenum + 1;
  tmp___1 = nft_expr_first(rule);
  expr = (struct nft_expr const *)tmp___1;
  tmp___2 = nft_expr_last(rule);
  last = (struct nft_expr const *)tmp___2;
  }
  goto ldv_47075;
  ldv_47074: ;
  if ((unsigned long )((struct nft_expr_ops const *)expr->ops) == (unsigned long )(& nft_cmp_fast_ops)) {
    {
    nft_cmp_fast_eval(expr, (struct nft_data *)(& data));
    }
  } else
  if ((unsigned long )((struct nft_expr_ops const *)expr->ops) != (unsigned long )(& nft_payload_fast_ops)) {
    {
    (*((expr->ops)->eval))(expr, (struct nft_data *)(& data), (struct nft_pktinfo const *)pkt);
    }
  } else {
    {
    tmp___3 = nft_payload_fast_eval(expr, (struct nft_data *)(& data), (struct nft_pktinfo const *)pkt);
    }
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      {
      (*((expr->ops)->eval))(expr, (struct nft_data *)(& data), (struct nft_pktinfo const *)pkt);
      }
    } else {
    }
  }
  if (data[0].__annonCompField91.__annonCompField90.verdict != 4294967295U) {
    goto ldv_47073;
  } else {
  }
  {
  tmp___5 = nft_expr_next(expr);
  expr = (struct nft_expr const *)tmp___5;
  }
  ldv_47075: ;
  if ((unsigned long )expr != (unsigned long )last) {
    goto ldv_47074;
  } else {
  }
  ldv_47073: ;
  {
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967294U) {
    goto case_4294967294;
  } else {
  }
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967295U) {
    goto case_4294967295;
  } else {
  }
  goto switch_break;
  case_4294967294:
  data[0].__annonCompField91.__annonCompField90.verdict = 4294967295U;
  goto ldv_47072;
  case_4294967295:
  {
  tmp___6 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 0);
    }
  } else {
  }
  goto ldv_47072;
  switch_break: ;
  }
  goto ldv_47078;
  ldv_47072:
  {
  __ptr___0 = rule->list.next;
  __var___1 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___7 = debug_lockdep_rcu_enabled();
  }
  if (tmp___7 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___0;
  rule = (struct nft_rule const *)__mptr___1;
  ldv_47080: ;
  if ((unsigned long )rule != (unsigned long )chain) {
    goto ldv_47079;
  } else {
  }
  ldv_47078: ;
  {
  if ((data[0].__annonCompField91.__annonCompField90.verdict & 255U) == 1U) {
    goto case_1;
  } else {
  }
  if ((data[0].__annonCompField91.__annonCompField90.verdict & 255U) == 0U) {
    goto case_0;
  } else {
  }
  if ((data[0].__annonCompField91.__annonCompField90.verdict & 255U) == 3U) {
    goto case_3;
  } else {
  }
  goto switch_break___0;
  case_1: ;
  case_0: ;
  case_3:
  {
  tmp___8 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___8 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 0);
    }
  } else {
  }
  return (data[0].__annonCompField91.__annonCompField90.verdict);
  switch_break___0: ;
  }
  {
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967293U) {
    goto case_4294967293;
  } else {
  }
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967292U) {
    goto case_4294967292;
  } else {
  }
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967291U) {
    goto case_4294967291;
  } else {
  }
  if (data[0].__annonCompField91.__annonCompField90.verdict == 4294967295U) {
    goto case_4294967295___0;
  } else {
  }
  goto switch_default;
  case_4294967293:
  {
  tmp___9 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___9 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 0);
    }
  } else {
  }
  {
  tmp___10 = ldv__builtin_expect(stackptr > 15U, 0L);
  }
  if (tmp___10 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nf_tables_core.c"),
                         "i" (171), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  jumpstack[stackptr].chain = chain;
  jumpstack[stackptr].rule = rule;
  jumpstack[stackptr].rulenum = rulenum;
  stackptr = stackptr + 1U;
  chain = (struct nft_chain const *)data[0].__annonCompField91.__annonCompField90.chain;
  goto do_chain;
  case_4294967292:
  {
  tmp___11 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___11 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 0);
    }
  } else {
  }
  chain = (struct nft_chain const *)data[0].__annonCompField91.__annonCompField90.chain;
  goto do_chain;
  case_4294967291:
  {
  tmp___12 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___12 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 1);
    }
  } else {
  }
  goto ldv_47087;
  case_4294967295___0:
  {
  tmp___13 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___13 != 0L) {
    {
    tmp___14 = ldv__builtin_expect(((int )chain->flags & 1) == 0, 0L);
    }
    if (tmp___14 != 0L) {
      {
      rulenum = rulenum + 1;
      nft_trace_packet((struct nft_pktinfo const *)pkt, chain, rulenum, 1);
      }
    } else {
    }
  } else {
  }
  goto ldv_47087;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp___15 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___15 != 0L) {
    {
    warn_slowpath_null("net/netfilter/nf_tables_core.c", 193);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  switch_break___1: ;
  }
  ldv_47087: ;
  if (stackptr != 0U) {
    stackptr = stackptr - 1U;
    chain = jumpstack[stackptr].chain;
    rule = jumpstack[stackptr].rule;
    rulenum = jumpstack[stackptr].rulenum;
    goto next_rule;
  } else {
  }
  {
  tmp___16 = ldv__builtin_expect((long )*((unsigned char *)pkt->skb + 145UL) & 1L, 0L);
  }
  if (tmp___16 != 0L) {
    {
    nft_trace_packet((struct nft_pktinfo const *)pkt, basechain, -1, 2);
    }
  } else {
  }
  {
  rcu_read_lock_bh();
  __vpp_verify = (void const *)0;
  __var___2 = (struct nft_stats *)0;
  tmp___17 = nft_base_chain(basechain);
  _________p1___1 = *((struct nft_stats * volatile *)(& tmp___17->stats));
  ________p1___1 = _________p1___1;
  tmp___18 = debug_lockdep_rcu_enabled();
  }
  if (tmp___18 != 0 && ! __warned___1) {
    {
    tmp___19 = rcu_read_lock_held();
    }
    if (tmp___19 == 0) {
      {
      __warned___1 = 1;
      lockdep_rcu_suspicious("net/netfilter/nf_tables_core.c", 208, "suspicious rcu_dereference_check() usage");
      }
    } else {
    }
  } else {
  }
  {
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (________p1___1));
  stats = (struct nft_stats *)tcp_ptr__;
  u64_stats_update_begin(& stats->syncp);
  stats->pkts = stats->pkts + 1ULL;
  stats->bytes = stats->bytes + (u64 )(pkt->skb)->len;
  u64_stats_update_begin(& stats->syncp);
  rcu_read_unlock_bh();
  tmp___20 = nft_base_chain(basechain);
  }
  return ((unsigned int )tmp___20->policy);
}
}
static char const __kstrtab_nft_do_chain[13U] =
  { 'n', 'f', 't', '_',
        'd', 'o', '_', 'c',
        'h', 'a', 'i', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_nft_do_chain ;
struct kernel_symbol const __ksymtab_nft_do_chain = {(unsigned long )(& nft_do_chain), (char const *)(& __kstrtab_nft_do_chain)};
int nf_tables_core_module_init(void)
{
  int err ;
  {
  {
  err = nft_immediate_module_init();
  }
  if (err < 0) {
    goto err1;
  } else {
  }
  {
  err = nft_cmp_module_init();
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  err = nft_lookup_module_init();
  }
  if (err < 0) {
    goto err3;
  } else {
  }
  {
  err = nft_bitwise_module_init();
  }
  if (err < 0) {
    goto err4;
  } else {
  }
  {
  err = nft_byteorder_module_init();
  }
  if (err < 0) {
    goto err5;
  } else {
  }
  {
  err = nft_payload_module_init();
  }
  if (err < 0) {
    goto err6;
  } else {
  }
  return (0);
  err6:
  {
  nft_byteorder_module_exit();
  }
  err5:
  {
  nft_bitwise_module_exit();
  }
  err4:
  {
  nft_lookup_module_exit();
  }
  err3:
  {
  nft_cmp_module_exit();
  }
  err2:
  {
  nft_immediate_module_exit();
  }
  err1: ;
  return (err);
}
}
void nf_tables_core_module_exit(void)
{
  {
  {
  nft_payload_module_exit();
  nft_byteorder_module_exit();
  nft_bitwise_module_exit();
  nft_lookup_module_exit();
  nft_cmp_module_exit();
  nft_immediate_module_exit();
  }
  return;
}
}
__inline static void rcu_read_lock_bh(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh();
  }
  return;
}
}
__inline static void rcu_read_unlock_bh(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh();
  }
  return;
}
}
void ldv_stop(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset ) ;
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size ) ;
int ldv_undef_int(void) ;
void *ldv_undef_ptr(void) ;
static void ldv_ldv_initialize_147(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_144(int ldv_func_arg1 ) ;
static void ldv_ldv_check_final_state_145(void) ;
static void ldv_ldv_check_final_state_146(void) ;
void *ldv_xmalloc(size_t size ) ;
extern void ldv_after_alloc(void * ) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void) ;
int ldv_linux_kernel_module_try_module_get(struct module *module ) ;
void ldv_linux_kernel_module_module_put(struct module *module ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
static unsigned long ldv_find_next_bit_5(unsigned long const *addr , unsigned long size ,
                                         unsigned long offset ) ;
static unsigned long ldv_find_first_zero_bit_140(unsigned long const *addr , unsigned long size ) ;
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
__inline static __u64 __fswab64(__u64 val )
{
  long tmp ;
  {
  {
  tmp = __builtin_bswap64((unsigned long )val);
  }
  return ((__u64 )tmp);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
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
  {
  __list_add(new, head->prev, head);
  }
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
extern void __bad_percpu_size(void) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strchr(char const * , int ) ;
extern char *strnchr(char const * , size_t , int ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_possible_mask ;
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  __ret_warn_once = cpu >= (unsigned int )nr_cpu_ids;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/linux/cpumask.h", 116);
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    {
    cpumask_check((unsigned int )n);
    }
  } else {
  }
  {
  tmp = ldv_find_next_bit_5((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                            (unsigned long )(n + 1));
  }
  return ((unsigned int )tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  }
  return (tmp != 0L);
}
}
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_7206;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7206;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7206;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_7206;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7206: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7218;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7218;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7218;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7218;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7218: ;
  return;
}
}
static void ldv_synchronize_sched_35(void) ;
__inline static void synchronize_rcu(void)
{
  {
  {
  ldv_synchronize_sched_35();
  }
  return;
}
}
static void ldv_rcu_barrier_143(void) ;
__inline static void rcu_read_lock(void) ;
__inline static void rcu_read_unlock(void) ;
extern void *__alloc_percpu(size_t , size_t ) ;
extern void free_percpu(void * ) ;
extern unsigned long get_zeroed_page(gfp_t ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head ) ;
__inline static void list_del_rcu(struct list_head *entry ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void kfree_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  {
  tmp = skb_is_nonlinear(skb);
  }
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
__inline static unsigned int u64_stats_fetch_begin_irq(struct u64_stats_sync const *syncp )
{
  {
  return (0U);
}
}
__inline static bool u64_stats_fetch_retry_irq(struct u64_stats_sync const *syncp ,
                                               unsigned int start )
{
  {
  return (0);
}
}
extern int nf_register_hooks(struct nf_hook_ops * , unsigned int ) ;
extern void nf_unregister_hooks(struct nf_hook_ops * , unsigned int ) ;
extern int register_pernet_subsys(struct pernet_operations * ) ;
extern void unregister_pernet_subsys(struct pernet_operations * ) ;
__inline static struct nlmsghdr *nlmsg_hdr(struct sk_buff const *skb )
{
  {
  return ((struct nlmsghdr *)skb->data);
}
}
extern int netlink_unicast(struct sock * , struct sk_buff * , __u32 , int ) ;
extern struct nlmsghdr *__nlmsg_put(struct sk_buff * , u32 , u32 , int , int ,
                                    int ) ;
extern int __netlink_dump_start(struct sock * , struct sk_buff * , struct nlmsghdr const * ,
                                struct netlink_dump_control * ) ;
__inline static int netlink_dump_start(struct sock *ssk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                                       struct netlink_dump_control *control )
{
  int tmp ;
  {
  if ((unsigned long )control->module == (unsigned long )((struct module *)0)) {
    control->module = & __this_module;
  } else {
  }
  {
  tmp = __netlink_dump_start(ssk, skb, nlh, control);
  }
  return (tmp);
}
}
extern int __request_module(bool , char const * , ...) ;
static bool ldv_try_module_get_125(struct module *ldv_func_arg1 ) ;
static bool ldv_try_module_get_130(struct module *ldv_func_arg1 ) ;
static bool ldv_try_module_get_134(struct module *ldv_func_arg1 ) ;
static bool ldv_try_module_get_138(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_126(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_127(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_128(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_129(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_131(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_132(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_133(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_135(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_136(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_137(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_139(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_141(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_142(struct module *ldv_func_arg1 ) ;
extern int nla_parse(struct nlattr ** , int , struct nlattr const * , int , struct nla_policy const * ) ;
extern size_t nla_strlcpy(char * , struct nlattr const * , size_t ) ;
extern int nla_memcpy(void * , struct nlattr const * , int ) ;
extern int nla_strcmp(struct nlattr const * , char const * ) ;
extern int nla_put(struct sk_buff * , int , int , void const * ) ;
__inline static int nlmsg_msg_size(int payload )
{
  {
  return (payload + 16);
}
}
__inline static int nlmsg_total_size(int payload )
{
  int tmp ;
  {
  {
  tmp = nlmsg_msg_size(payload);
  }
  return ((int )((unsigned int )tmp + 3U) & -4);
}
}
__inline static void *nlmsg_data(struct nlmsghdr const *nlh )
{
  {
  return ((void *)nlh + 16U);
}
}
__inline static int nlmsg_len(struct nlmsghdr const *nlh )
{
  {
  return ((int )((unsigned int )nlh->nlmsg_len - 16U));
}
}
__inline static struct nlattr *nlmsg_attrdata(struct nlmsghdr const *nlh , int hdrlen )
{
  unsigned char *data ;
  void *tmp ;
  {
  {
  tmp = nlmsg_data(nlh);
  data = (unsigned char *)tmp;
  }
  return ((struct nlattr *)(data + ((unsigned long )((unsigned int )hdrlen + 3U) & 4294967292UL)));
}
}
__inline static int nlmsg_attrlen(struct nlmsghdr const *nlh , int hdrlen )
{
  int tmp ;
  {
  {
  tmp = nlmsg_len(nlh);
  }
  return ((int )((unsigned int )tmp - (((unsigned int )hdrlen + 3U) & 4294967292U)));
}
}
__inline static int nlmsg_parse(struct nlmsghdr const *nlh , int hdrlen , struct nlattr **tb ,
                                int maxtype , struct nla_policy const *policy )
{
  int tmp ;
  int tmp___0 ;
  struct nlattr *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = nlmsg_msg_size(hdrlen);
  }
  if ((unsigned int )nlh->nlmsg_len < (unsigned int )tmp) {
    return (-22);
  } else {
  }
  {
  tmp___0 = nlmsg_attrlen(nlh, hdrlen);
  tmp___1 = nlmsg_attrdata(nlh, hdrlen);
  tmp___2 = nla_parse(tb, maxtype, (struct nlattr const *)tmp___1, tmp___0, policy);
  }
  return (tmp___2);
}
}
__inline static int nlmsg_report(struct nlmsghdr const *nlh )
{
  {
  return (((int )nlh->nlmsg_flags & 8) != 0);
}
}
__inline static struct nlmsghdr *nlmsg_put(struct sk_buff *skb , u32 portid , u32 seq ,
                                           int type , int payload , int flags )
{
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct nlmsghdr *tmp___2 ;
  {
  {
  tmp = skb_tailroom((struct sk_buff const *)skb);
  tmp___0 = nlmsg_total_size(payload);
  tmp___1 = ldv__builtin_expect(tmp < tmp___0, 0L);
  }
  if (tmp___1 != 0L) {
    return ((struct nlmsghdr *)0);
  } else {
  }
  {
  tmp___2 = __nlmsg_put(skb, portid, seq, type, payload, flags);
  }
  return (tmp___2);
}
}
__inline static struct sk_buff *nlmsg_new(size_t payload , gfp_t flags )
{
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  {
  tmp = nlmsg_total_size((int )payload);
  tmp___0 = alloc_skb((unsigned int )tmp, flags);
  }
  return (tmp___0);
}
}
__inline static void nlmsg_end(struct sk_buff *skb , struct nlmsghdr *nlh )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  nlh->nlmsg_len = (__u32 )((long )tmp) - (__u32 )((long )nlh);
  }
  return;
}
}
__inline static void nlmsg_trim(struct sk_buff *skb , void const *mark )
{
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned long )mark != (unsigned long )((void const *)0)) {
    {
    __ret_warn_on = (unsigned long )((unsigned char *)mark) < (unsigned long )skb->data;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/net/netlink.h", 520);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    skb_trim(skb, (unsigned int )((long )mark) - (unsigned int )((long )skb->data));
    }
  } else {
  }
  return;
}
}
__inline static int nlmsg_unicast(struct sock *sk , struct sk_buff *skb , u32 portid )
{
  int err ;
  {
  {
  err = netlink_unicast(sk, skb, portid, 64);
  }
  if (err > 0) {
    err = 0;
  } else {
  }
  return (err);
}
}
__inline static void nl_dump_check_consistent(struct netlink_callback *cb , struct nlmsghdr *nlh )
{
  {
  if (cb->prev_seq != 0U && cb->seq != cb->prev_seq) {
    nlh->nlmsg_flags = (__u16 )((unsigned int )nlh->nlmsg_flags | 16U);
  } else {
  }
  cb->prev_seq = cb->seq;
  return;
}
}
__inline static int nla_type(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_type & -49153);
}
}
__inline static void *nla_data(struct nlattr const *nla )
{
  {
  return ((void *)nla + 4U);
}
}
__inline static int nla_len(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_len + -4);
}
}
__inline static int nla_ok(struct nlattr const *nla , int remaining )
{
  {
  return ((remaining > 3 && (unsigned int )((unsigned short )nla->nla_len) > 3U) && (int )nla->nla_len <= remaining);
}
}
__inline static struct nlattr *nla_next(struct nlattr const *nla , int *remaining )
{
  int totlen ;
  {
  totlen = ((int )nla->nla_len + 3) & -4;
  *remaining = *remaining - totlen;
  return ((struct nlattr *)nla + (unsigned long )totlen);
}
}
__inline static int nla_parse_nested(struct nlattr **tb , int maxtype , struct nlattr const *nla ,
                                     struct nla_policy const *policy )
{
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nla_len(nla);
  tmp___0 = nla_data(nla);
  tmp___1 = nla_parse(tb, maxtype, (struct nlattr const *)tmp___0, tmp, policy);
  }
  return (tmp___1);
}
}
__inline static int nla_put_be32(struct sk_buff *skb , int attrtype , __be32 value )
{
  int tmp ;
  {
  {
  tmp = nla_put(skb, attrtype, 4, (void const *)(& value));
  }
  return (tmp);
}
}
__inline static int nla_put_be64(struct sk_buff *skb , int attrtype , __be64 value )
{
  int tmp ;
  {
  {
  tmp = nla_put(skb, attrtype, 8, (void const *)(& value));
  }
  return (tmp);
}
}
__inline static int nla_put_string(struct sk_buff *skb , int attrtype , char const *str )
{
  size_t tmp ;
  int tmp___0 ;
  {
  {
  tmp = strlen(str);
  tmp___0 = nla_put(skb, attrtype, (int )((unsigned int )tmp + 1U), (void const *)str);
  }
  return (tmp___0);
}
}
__inline static __be32 nla_get_be32(struct nlattr const *nla )
{
  void *tmp ;
  {
  {
  tmp = nla_data(nla);
  }
  return (*((__be32 *)tmp));
}
}
__inline static __be64 nla_get_be64(struct nlattr const *nla )
{
  __be64 tmp ;
  {
  {
  nla_memcpy((void *)(& tmp), nla, 8);
  }
  return (tmp);
}
}
__inline static struct nlattr *nla_nest_start(struct sk_buff *skb , int attrtype )
{
  struct nlattr *start ;
  unsigned char *tmp ;
  int tmp___0 ;
  {
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  start = (struct nlattr *)tmp;
  tmp___0 = nla_put(skb, attrtype, 0, (void const *)0);
  }
  if (tmp___0 < 0) {
    return ((struct nlattr *)0);
  } else {
  }
  return (start);
}
}
__inline static int nla_nest_end(struct sk_buff *skb , struct nlattr *start )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  start->nla_len = (int )((__u16 )((long )tmp)) - (int )((__u16 )((long )start));
  }
  return ((int )skb->len);
}
}
extern int nfnetlink_subsys_register(struct nfnetlink_subsystem const * ) ;
extern int nfnetlink_subsys_unregister(struct nfnetlink_subsystem const * ) ;
extern int nfnetlink_has_listeners(struct net * , unsigned int ) ;
extern int nfnetlink_send(struct sk_buff * , struct net * , u32 , unsigned int ,
                          int , gfp_t ) ;
extern int nfnetlink_set_err(struct net * , u32 , u32 , int ) ;
extern void nfnl_lock(__u8 ) ;
extern void nfnl_unlock(__u8 ) ;
extern int lockdep_nfnl_is_held(__u8 ) ;
int nft_data_init(struct nft_ctx const *ctx , struct nft_data *data , struct nft_data_desc *desc ,
                  struct nlattr const *nla ) ;
void nft_data_uninit(struct nft_data const *data , enum nft_data_types type ) ;
int nft_data_dump(struct sk_buff *skb , int attr , struct nft_data const *data ,
                  enum nft_data_types type , unsigned int len ) ;
__inline static enum nft_registers nft_type_to_reg(enum nft_data_types type )
{
  {
  return ((unsigned int )type != 4294967040U);
}
}
int nft_validate_input_register(enum nft_registers reg ) ;
int nft_validate_output_register(enum nft_registers reg ) ;
int nft_validate_data_load(struct nft_ctx const *ctx , enum nft_registers reg ,
                           struct nft_data const *data , enum nft_data_types type ) ;
int nft_register_set(struct nft_set_ops *ops ) ;
void nft_unregister_set(struct nft_set_ops *ops ) ;
struct nft_set *nf_tables_set_lookup(struct nft_table const *table , struct nlattr const *nla ) ;
struct nft_set *nf_tables_set_lookup_byid(struct net const *net , struct nlattr const *nla ) ;
int nf_tables_bind_set(struct nft_ctx const *ctx , struct nft_set *set , struct nft_set_binding *binding ) ;
void nf_tables_unbind_set(struct nft_ctx const *ctx , struct nft_set *set , struct nft_set_binding *binding ) ;
__inline static void *nft_userdata(struct nft_rule const *rule )
{
  {
  return ((void *)(& rule->data) + (unsigned long )rule->dlen);
}
}
int nft_chain_validate_dependency(struct nft_chain const *chain , enum nft_chain_type type ) ;
int nft_chain_validate_hooks(struct nft_chain const *chain , unsigned int hook_flags ) ;
int nft_register_afinfo(struct net *net , struct nft_af_info *afi ) ;
void nft_unregister_afinfo(struct nft_af_info *afi ) ;
int nft_register_chain_type(struct nf_chain_type const *ctype ) ;
void nft_unregister_chain_type(struct nf_chain_type const *ctype ) ;
int nft_register_expr(struct nft_expr_type *type ) ;
void nft_unregister_expr(struct nft_expr_type *type ) ;
__inline static struct net *sock_net(struct sock const *sk )
{
  struct net *tmp ;
  {
  {
  tmp = read_pnet(& sk->__sk_common.skc_net);
  }
  return (tmp);
}
}
static struct list_head nf_tables_expressions = {& nf_tables_expressions, & nf_tables_expressions};
int nft_register_afinfo(struct net *net , struct nft_af_info *afi )
{
  {
  {
  INIT_LIST_HEAD(& afi->tables);
  nfnl_lock(10);
  list_add_rcu(& afi->list, & net->nft.af_info);
  nfnl_unlock(10);
  }
  return (0);
}
}
static char const __kstrtab_nft_register_afinfo[20U] =
  { 'n', 'f', 't', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'a', 'f', 'i',
        'n', 'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_nft_register_afinfo ;
struct kernel_symbol const __ksymtab_nft_register_afinfo = {(unsigned long )(& nft_register_afinfo), (char const *)(& __kstrtab_nft_register_afinfo)};
void nft_unregister_afinfo(struct nft_af_info *afi )
{
  {
  {
  nfnl_lock(10);
  list_del_rcu(& afi->list);
  nfnl_unlock(10);
  }
  return;
}
}
static char const __kstrtab_nft_unregister_afinfo[22U] =
  { 'n', 'f', 't', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'a',
        'f', 'i', 'n', 'f',
        'o', '\000'};
struct kernel_symbol const __ksymtab_nft_unregister_afinfo ;
struct kernel_symbol const __ksymtab_nft_unregister_afinfo = {(unsigned long )(& nft_unregister_afinfo), (char const *)(& __kstrtab_nft_unregister_afinfo)};
static struct nft_af_info *nft_afinfo_lookup(struct net *net , int family )
{
  struct nft_af_info *afi ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)net->nft.af_info.next;
  afi = (struct nft_af_info *)__mptr;
  goto ldv_50215;
  ldv_50214: ;
  if (afi->family == family) {
    return (afi);
  } else {
  }
  __mptr___0 = (struct list_head const *)afi->list.next;
  afi = (struct nft_af_info *)__mptr___0;
  ldv_50215: ;
  if ((unsigned long )(& afi->list) != (unsigned long )(& net->nft.af_info)) {
    goto ldv_50214;
  } else {
  }
  return ((struct nft_af_info *)0);
}
}
static struct nft_af_info *nf_tables_afinfo_lookup(struct net *net , int family ,
                                                   bool autoload )
{
  struct nft_af_info *afi ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  afi = nft_afinfo_lookup(net, family);
  }
  if ((unsigned long )afi != (unsigned long )((struct nft_af_info *)0)) {
    return (afi);
  } else {
  }
  if ((int )autoload) {
    {
    nfnl_unlock(10);
    __request_module(1, "nft-afinfo-%u", family);
    nfnl_lock(10);
    afi = nft_afinfo_lookup(net, family);
    }
    if ((unsigned long )afi != (unsigned long )((struct nft_af_info *)0)) {
      {
      tmp = ERR_PTR(-11L);
      }
      return ((struct nft_af_info *)tmp);
    } else {
    }
  } else {
  }
  {
  tmp___0 = ERR_PTR(-97L);
  }
  return ((struct nft_af_info *)tmp___0);
}
}
static void nft_ctx_init(struct nft_ctx *ctx , struct sk_buff const *skb , struct nlmsghdr const *nlh ,
                         struct nft_af_info *afi , struct nft_table *table , struct nft_chain *chain ,
                         struct nlattr const * const *nla )
{
  int tmp ;
  {
  {
  ctx->net = sock_net((struct sock const *)skb->sk);
  ctx->afi = afi;
  ctx->table = table;
  ctx->chain = chain;
  ctx->nla = nla;
  ctx->portid = ((struct netlink_skb_parms *)(& skb->cb))->portid;
  tmp = nlmsg_report(nlh);
  ctx->report = tmp != 0;
  ctx->seq = nlh->nlmsg_seq;
  }
  return;
}
}
static struct nft_trans *nft_trans_alloc(struct nft_ctx *ctx , int msg_type , u32 size )
{
  struct nft_trans *trans ;
  void *tmp ;
  {
  {
  tmp = kzalloc((unsigned long )size + 80UL, 208U);
  trans = (struct nft_trans *)tmp;
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return ((struct nft_trans *)0);
  } else {
  }
  trans->msg_type = msg_type;
  trans->ctx = *ctx;
  return (trans);
}
}
static void nft_trans_destroy(struct nft_trans *trans )
{
  {
  {
  list_del(& trans->list);
  kfree((void const *)trans);
  }
  return;
}
}
static void nf_tables_unregister_hooks(struct nft_table const *table , struct nft_chain const *chain ,
                                       unsigned int hook_nops )
{
  struct nft_base_chain *tmp ;
  {
  if (((int )table->flags & 1) == 0 && (int )chain->flags & 1) {
    {
    tmp = nft_base_chain(chain);
    nf_unregister_hooks((struct nf_hook_ops *)(& tmp->ops), hook_nops);
    }
  } else {
  }
  return;
}
}
static int nft_trans_table_add(struct nft_ctx *ctx , int msg_type )
{
  struct nft_trans *trans ;
  {
  {
  trans = nft_trans_alloc(ctx, msg_type, 2U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return (-12);
  } else {
  }
  if (msg_type == 0) {
    (ctx->table)->flags = (u16 )((unsigned int )(ctx->table)->flags | 32768U);
  } else {
  }
  {
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
}
}
static int nft_deltable(struct nft_ctx *ctx )
{
  int err ;
  {
  {
  err = nft_trans_table_add(ctx, 2);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  list_del_rcu(& (ctx->table)->list);
  }
  return (err);
}
}
static int nft_trans_chain_add(struct nft_ctx *ctx , int msg_type )
{
  struct nft_trans *trans ;
  {
  {
  trans = nft_trans_alloc(ctx, msg_type, 56U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return (-12);
  } else {
  }
  if (msg_type == 3) {
    (ctx->chain)->flags = (u8 )((unsigned int )(ctx->chain)->flags | 2U);
  } else {
  }
  {
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
}
}
static int nft_delchain(struct nft_ctx *ctx )
{
  int err ;
  {
  {
  err = nft_trans_chain_add(ctx, 5);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  (ctx->table)->use = (ctx->table)->use - 1U;
  list_del_rcu(& (ctx->chain)->list);
  }
  return (err);
}
}
__inline static bool nft_rule_is_active(struct net *net , struct nft_rule const *rule )
{
  {
  return ((((int )rule->genmask >> (int )net->nft.gencursor) & 1) == 0);
}
}
__inline static int gencursor_next(struct net *net )
{
  {
  return ((unsigned int )net->nft.gencursor == 0U);
}
}
__inline static int nft_rule_is_active_next(struct net *net , struct nft_rule const *rule )
{
  int tmp ;
  {
  {
  tmp = gencursor_next(net);
  }
  return ((((int )rule->genmask >> tmp) & 1) == 0);
}
}
__inline static void nft_rule_activate_next(struct net *net , struct nft_rule *rule )
{
  {
  rule->genmask = (unsigned char )(1 << (int )net->nft.gencursor);
  return;
}
}
__inline static void nft_rule_deactivate_next(struct net *net , struct nft_rule *rule )
{
  int tmp ;
  {
  {
  tmp = gencursor_next(net);
  rule->genmask = (unsigned char )(1 << tmp);
  }
  return;
}
}
__inline static void nft_rule_clear(struct net *net , struct nft_rule *rule )
{
  {
  rule->genmask = 0U;
  return;
}
}
static int nf_tables_delrule_deactivate(struct nft_ctx *ctx , struct nft_rule *rule )
{
  int tmp ;
  {
  {
  tmp = nft_rule_is_active_next(ctx->net, (struct nft_rule const *)rule);
  }
  if (tmp != 0) {
    {
    nft_rule_deactivate_next(ctx->net, rule);
    (ctx->chain)->use = (ctx->chain)->use - 1U;
    }
    return (0);
  } else {
  }
  return (-2);
}
}
static struct nft_trans *nft_trans_rule_add(struct nft_ctx *ctx , int msg_type , struct nft_rule *rule )
{
  struct nft_trans *trans ;
  {
  {
  trans = nft_trans_alloc(ctx, msg_type, 8U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return ((struct nft_trans *)0);
  } else {
  }
  {
  ((struct nft_trans_rule *)(& trans->data))->rule = rule;
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (trans);
}
}
static int nft_delrule(struct nft_ctx *ctx , struct nft_rule *rule )
{
  struct nft_trans *trans ;
  int err ;
  {
  {
  trans = nft_trans_rule_add(ctx, 8, rule);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_delrule_deactivate(ctx, rule);
  }
  if (err < 0) {
    {
    nft_trans_destroy(trans);
    }
    return (err);
  } else {
  }
  return (0);
}
}
static int nft_delrule_by_chain(struct nft_ctx *ctx )
{
  struct nft_rule *rule ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)(ctx->chain)->rules.next;
  rule = (struct nft_rule *)__mptr;
  goto ldv_50313;
  ldv_50312:
  {
  err = nft_delrule(ctx, rule);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  __mptr___0 = (struct list_head const *)rule->list.next;
  rule = (struct nft_rule *)__mptr___0;
  ldv_50313: ;
  if ((unsigned long )rule != (unsigned long )ctx->chain) {
    goto ldv_50312;
  } else {
  }
  return (0);
}
}
static int nft_trans_set_add(struct nft_ctx *ctx , int msg_type , struct nft_set *set )
{
  struct nft_trans *trans ;
  __be32 tmp ;
  __u32 tmp___0 ;
  {
  {
  trans = nft_trans_alloc(ctx, msg_type, 16U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return (-12);
  } else {
  }
  if (msg_type == 9 && (unsigned long )*(ctx->nla + 10UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp = nla_get_be32(*(ctx->nla + 10UL));
    tmp___0 = __fswab32(tmp);
    ((struct nft_trans_set *)(& trans->data))->set_id = tmp___0;
    set->flags = (u16 )((unsigned int )set->flags | 32768U);
    }
  } else {
  }
  {
  ((struct nft_trans_set *)(& trans->data))->set = set;
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
}
}
static int nft_delset(struct nft_ctx *ctx , struct nft_set *set )
{
  int err ;
  {
  {
  err = nft_trans_set_add(ctx, 11, set);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  list_del_rcu(& set->list);
  (ctx->table)->use = (ctx->table)->use - 1U;
  }
  return (err);
}
}
static struct nft_table *nft_table_lookup(struct nft_af_info const *afi , struct nlattr const *nla )
{
  struct nft_table *table ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)afi->tables.next;
  table = (struct nft_table *)__mptr;
  goto ldv_50336;
  ldv_50335:
  {
  tmp = nla_strcmp(nla, (char const *)(& table->name));
  }
  if (tmp == 0) {
    return (table);
  } else {
  }
  __mptr___0 = (struct list_head const *)table->list.next;
  table = (struct nft_table *)__mptr___0;
  ldv_50336: ;
  if ((unsigned long )((struct list_head const *)(& table->list)) != (unsigned long )(& afi->tables)) {
    goto ldv_50335;
  } else {
  }
  return ((struct nft_table *)0);
}
}
static struct nft_table *nf_tables_table_lookup(struct nft_af_info const *afi ,
                                                struct nlattr const *nla )
{
  struct nft_table *table ;
  void *tmp ;
  void *tmp___0 ;
  {
  if ((unsigned long )nla == (unsigned long )((struct nlattr const *)0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_table *)tmp);
  } else {
  }
  {
  table = nft_table_lookup(afi, nla);
  }
  if ((unsigned long )table != (unsigned long )((struct nft_table *)0)) {
    return (table);
  } else {
  }
  {
  tmp___0 = ERR_PTR(-2L);
  }
  return ((struct nft_table *)tmp___0);
}
}
__inline static u64 nf_tables_alloc_handle(struct nft_table *table )
{
  {
  table->hgenerator = table->hgenerator + 1ULL;
  return (table->hgenerator);
}
}
static struct nf_chain_type const *chain_type[41U][3U] ;
static struct nf_chain_type const *__nf_tables_chain_type_lookup(int family , struct nlattr const *nla )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_50353;
  ldv_50352: ;
  if ((unsigned long )chain_type[family][i] != (unsigned long )((struct nf_chain_type const *)0)) {
    {
    tmp = nla_strcmp(nla, (chain_type[family][i])->name);
    }
    if (tmp == 0) {
      return (chain_type[family][i]);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_50353: ;
  if (i <= 2) {
    goto ldv_50352;
  } else {
  }
  return ((struct nf_chain_type const *)0);
}
}
static struct nf_chain_type const *nf_tables_chain_type_lookup(struct nft_af_info const *afi ,
                                                                 struct nlattr const *nla ,
                                                                 bool autoload )
{
  struct nf_chain_type const *type ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  type = __nf_tables_chain_type_lookup(afi->family, nla);
  }
  if ((unsigned long )type != (unsigned long )((struct nf_chain_type const *)0)) {
    return (type);
  } else {
  }
  if ((int )autoload) {
    {
    nfnl_unlock(10);
    tmp = nla_data(nla);
    tmp___0 = nla_len(nla);
    __request_module(1, "nft-chain-%u-%.*s", afi->family, tmp___0, (char const *)tmp);
    nfnl_lock(10);
    type = __nf_tables_chain_type_lookup(afi->family, nla);
    }
    if ((unsigned long )type != (unsigned long )((struct nf_chain_type const *)0)) {
      {
      tmp___1 = ERR_PTR(-11L);
      }
      return ((struct nf_chain_type const *)tmp___1);
    } else {
    }
  } else {
  }
  {
  tmp___2 = ERR_PTR(-2L);
  }
  return ((struct nf_chain_type const *)tmp___2);
}
}
static struct nla_policy const nft_table_policy[4U] = { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nf_tables_fill_table_info(struct sk_buff *skb , struct net *net , u32 portid ,
                                     u32 seq , int event , u32 flags , int family ,
                                     struct nft_table const *table )
{
  struct nlmsghdr *nlh ;
  struct nfgenmsg *nfmsg ;
  void *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  {
  {
  event = event | 2560;
  nlh = nlmsg_put(skb, portid, seq, event, 4, (int )flags);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = (__u8 )family;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )net->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = nla_put_string(skb, 1, (char const *)(& table->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
    {
    tmp___2 = __fswab32((__u32 )table->flags);
    tmp___3 = nla_put_be32(skb, 2, tmp___2);
    }
    if (tmp___3 != 0) {
      goto nla_put_failure;
    } else {
      {
      tmp___4 = __fswab32(table->use);
      tmp___5 = nla_put_be32(skb, 3, tmp___4);
      }
      if (tmp___5 != 0) {
        goto nla_put_failure;
      } else {
      }
    }
  }
  {
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-1);
}
}
static int nf_tables_table_notify(struct nft_ctx const *ctx , int event )
{
  struct sk_buff *skb ;
  int err ;
  int tmp ;
  {
  if (! ((_Bool )ctx->report)) {
    {
    tmp = nfnetlink_has_listeners(ctx->net, 7U);
    }
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb = nlmsg_new(3776UL, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_table_info(skb, ctx->net, ctx->portid, ctx->seq, event, 0U,
                                  (ctx->afi)->family, (struct nft_table const *)ctx->table);
  }
  if (err < 0) {
    {
    kfree_skb(skb);
    }
    goto err;
  } else {
  }
  {
  err = nfnetlink_send(skb, ctx->net, ctx->portid, 7U, (int )ctx->report, 208U);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(ctx->net, ctx->portid, 7U, err);
    }
  } else {
  }
  return (err);
}
}
static int nf_tables_dump_tables(struct sk_buff *skb , struct netlink_callback *cb )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  unsigned int idx ;
  unsigned int s_idx ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  int tmp___3 ;
  struct nlmsghdr *tmp___4 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  struct list_head *__var___1 ;
  bool __warned___1 ;
  int tmp___5 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  struct list_head *__var___2 ;
  bool __warned___2 ;
  int tmp___6 ;
  {
  {
  tmp = nlmsg_data(cb->nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  idx = 0U;
  s_idx = (unsigned int )cb->args[0];
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  rcu_read_lock();
  cb->seq = net->nft.base_seq;
  __ptr = net->nft.af_info.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  afi = (struct nft_af_info const *)__mptr;
  goto ldv_50444;
  ldv_50443: ;
  if (family != 0 && family != (int )afi->family) {
    goto ldv_50415;
  } else {
  }
  {
  __ptr___0 = afi->tables.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  }
  if (tmp___2 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  table = (struct nft_table const *)__mptr___0;
  goto ldv_50441;
  ldv_50440: ;
  if (idx < s_idx) {
    goto cont;
  } else {
  }
  if (idx > s_idx) {
    {
    memset((void *)(& cb->args) + 1U, 0, 40UL);
    }
  } else {
  }
  {
  tmp___3 = nf_tables_fill_table_info(skb, net, ((struct netlink_skb_parms *)(& (cb->skb)->cb))->portid,
                                      (cb->nlh)->nlmsg_seq, 0, 2U, afi->family, table);
  }
  if (tmp___3 < 0) {
    goto done;
  } else {
  }
  {
  tmp___4 = nlmsg_hdr((struct sk_buff const *)skb);
  nl_dump_check_consistent(cb, tmp___4);
  }
  cont:
  {
  idx = idx + 1U;
  __ptr___1 = table->list.next;
  __var___1 = (struct list_head *)0;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  ________p1___1 = _________p1___1;
  tmp___5 = debug_lockdep_rcu_enabled();
  }
  if (tmp___5 != 0 && ! __warned___1) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___1;
  table = (struct nft_table const *)__mptr___1;
  ldv_50441: ;
  if ((unsigned long )(& table->list) != (unsigned long )(& afi->tables)) {
    goto ldv_50440;
  } else {
  }
  ldv_50415:
  {
  __ptr___2 = afi->list.next;
  __var___2 = (struct list_head *)0;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  ________p1___2 = _________p1___2;
  tmp___6 = debug_lockdep_rcu_enabled();
  }
  if (tmp___6 != 0 && ! __warned___2) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)________p1___2;
  afi = (struct nft_af_info const *)__mptr___2;
  ldv_50444: ;
  if ((unsigned long )(& afi->list) != (unsigned long )((struct list_head const *)(& net->nft.af_info))) {
    goto ldv_50443;
  } else {
  }
  done:
  {
  rcu_read_unlock();
  cb->args[0] = (long )idx;
  }
  return ((int )skb->len);
}
}
static int nf_tables_gettable(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  struct sk_buff *skb2 ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  int err ;
  struct netlink_dump_control c ;
  int tmp___1 ;
  struct nft_af_info *tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  struct nft_table *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  }
  if (((int )nlh->nlmsg_flags & 768) != 0) {
    {
    c.dump = & nf_tables_dump_tables;
    c.done = 0;
    c.data = 0;
    c.module = 0;
    c.min_dump_alloc = (unsigned short)0;
    tmp___1 = netlink_dump_start(nlsk, skb, nlh, & c);
    }
    return (tmp___1);
  } else {
  }
  {
  tmp___2 = nf_tables_afinfo_lookup(net, family, 0);
  afi = (struct nft_af_info const *)tmp___2;
  tmp___4 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___3);
  } else {
  }
  {
  tmp___5 = nf_tables_table_lookup(afi, *(nla + 1UL));
  table = (struct nft_table const *)tmp___5;
  tmp___7 = IS_ERR((void const *)table);
  }
  if ((int )tmp___7) {
    {
    tmp___6 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___6);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  skb2 = alloc_skb(3776U, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_fill_table_info(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                                  nlh->nlmsg_seq, 0, 0U, family, table);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  {
  tmp___8 = nlmsg_unicast(nlsk, skb2, ((struct netlink_skb_parms *)(& skb->cb))->portid);
  }
  return (tmp___8);
  err:
  {
  kfree_skb(skb2);
  }
  return (err);
}
}
static int nf_tables_table_enable(struct nft_af_info const *afi , struct nft_table *table )
{
  struct nft_chain *chain ;
  int err ;
  int i ;
  struct list_head const *__mptr ;
  struct nft_base_chain *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  struct nft_base_chain *tmp___1 ;
  struct list_head const *__mptr___2 ;
  {
  i = 0;
  __mptr = (struct list_head const *)table->chains.next;
  chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50475;
  ldv_50474: ;
  if (((int )chain->flags & 1) == 0) {
    goto ldv_50472;
  } else {
  }
  {
  tmp = nft_base_chain((struct nft_chain const *)chain);
  err = nf_register_hooks((struct nf_hook_ops *)(& tmp->ops), afi->nops);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_50472:
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50475: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50474;
  } else {
  }
  return (0);
  err:
  __mptr___1 = (struct list_head const *)table->chains.next;
  chain = (struct nft_chain *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_50484;
  ldv_50483: ;
  if (((int )chain->flags & 1) == 0) {
    goto ldv_50481;
  } else {
  }
  tmp___0 = i;
  i = i - 1;
  if (tmp___0 <= 0) {
    goto ldv_50482;
  } else {
  }
  {
  tmp___1 = nft_base_chain((struct nft_chain const *)chain);
  nf_unregister_hooks((struct nf_hook_ops *)(& tmp___1->ops), afi->nops);
  }
  ldv_50481:
  __mptr___2 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_50484: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50483;
  } else {
  }
  ldv_50482: ;
  return (err);
}
}
static void nf_tables_table_disable(struct nft_af_info const *afi , struct nft_table *table )
{
  struct nft_chain *chain ;
  struct list_head const *__mptr ;
  struct nft_base_chain *tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)table->chains.next;
  chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50495;
  ldv_50494: ;
  if ((int )chain->flags & 1) {
    {
    tmp = nft_base_chain((struct nft_chain const *)chain);
    nf_unregister_hooks((struct nf_hook_ops *)(& tmp->ops), afi->nops);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50495: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50494;
  } else {
  }
  return;
}
}
static int nf_tables_updtable(struct nft_ctx *ctx )
{
  struct nft_trans *trans ;
  u32 flags ;
  int ret ;
  __be32 tmp ;
  __u32 tmp___0 ;
  {
  ret = 0;
  if ((unsigned long )*(ctx->nla + 2UL) == (unsigned long )((struct nlattr const * )0)) {
    return (0);
  } else {
  }
  {
  tmp = nla_get_be32(*(ctx->nla + 2UL));
  tmp___0 = __fswab32(tmp);
  flags = tmp___0;
  }
  if ((flags & 4294967294U) != 0U) {
    return (-22);
  } else {
  }
  if (flags == (u32 )(ctx->table)->flags) {
    return (0);
  } else {
  }
  {
  trans = nft_trans_alloc(ctx, 0, 2U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return (-12);
  } else {
  }
  if ((int )flags & 1 && ((int )(ctx->table)->flags & 1) == 0) {
    ((struct nft_trans_table *)(& trans->data))->enable = 0;
  } else
  if ((flags & 1U) == 0U && (int )(ctx->table)->flags & 1) {
    {
    ret = nf_tables_table_enable((struct nft_af_info const *)ctx->afi, ctx->table);
    }
    if (ret >= 0) {
      (ctx->table)->flags = (unsigned int )(ctx->table)->flags & 65534U;
      ((struct nft_trans_table *)(& trans->data))->enable = 1;
    } else {
    }
  } else {
  }
  if (ret < 0) {
    goto err;
  } else {
  }
  {
  ((struct nft_trans_table *)(& trans->data))->update = 1;
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
  err:
  {
  nft_trans_destroy(trans);
  }
  return (ret);
}
}
static int nf_tables_newtable(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nlattr const *name ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  u32 flags ;
  struct nft_ctx ctx ;
  int err ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  __be32 tmp___7 ;
  __u32 tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  void *tmp___12 ;
  int tmp___13 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  flags = 0U;
  afi = nf_tables_afinfo_lookup(net, family, 1);
  tmp___2 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  name = *(nla + 1UL);
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, name);
  tmp___5 = IS_ERR((void const *)table);
  }
  if ((int )tmp___5) {
    {
    tmp___4 = PTR_ERR((void const *)table);
    }
    if (tmp___4 != -2L) {
      {
      tmp___3 = PTR_ERR((void const *)table);
      }
      return ((int )tmp___3);
    } else {
    }
    table = (struct nft_table *)0;
  } else {
  }
  if ((unsigned long )table != (unsigned long )((struct nft_table *)0)) {
    if ((int )((short )table->flags) < 0) {
      return (-2);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 512) != 0) {
      return (-17);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 256) != 0) {
      return (-95);
    } else {
    }
    {
    nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, (struct nft_chain *)0,
                 nla);
    tmp___6 = nf_tables_updtable(& ctx);
    }
    return (tmp___6);
  } else {
  }
  if ((unsigned long )*(nla + 2UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___7 = nla_get_be32(*(nla + 2UL));
    tmp___8 = __fswab32(tmp___7);
    flags = tmp___8;
    }
    if ((flags & 4294967294U) != 0U) {
      return (-22);
    } else {
    }
  } else {
  }
  {
  tmp___9 = ldv_try_module_get_125(afi->owner);
  }
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    return (-97);
  } else {
  }
  {
  tmp___11 = nla_len(name);
  tmp___12 = kzalloc((unsigned long )tmp___11 + 64UL, 208U);
  table = (struct nft_table *)tmp___12;
  }
  if ((unsigned long )table == (unsigned long )((struct nft_table *)0)) {
    {
    ldv_module_put_126(afi->owner);
    }
    return (-12);
  } else {
  }
  {
  tmp___13 = nla_len(name);
  nla_strlcpy((char *)(& table->name), name, (size_t )tmp___13);
  INIT_LIST_HEAD(& table->chains);
  INIT_LIST_HEAD(& table->sets);
  table->flags = (u16 )flags;
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, (struct nft_chain *)0,
               nla);
  err = nft_trans_table_add(& ctx, 0);
  }
  if (err < 0) {
    {
    kfree((void const *)table);
    ldv_module_put_127(afi->owner);
    }
    return (err);
  } else {
  }
  {
  list_add_rcu(& table->list, & afi->tables);
  }
  return (0);
}
}
static int nft_flush_table(struct nft_ctx *ctx )
{
  int err ;
  struct nft_chain *chain ;
  struct nft_chain *nc ;
  struct nft_set *set ;
  struct nft_set *ns ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  __mptr = (struct list_head const *)(ctx->table)->chains.next;
  chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50533;
  ldv_50532:
  {
  ctx->chain = chain;
  err = nft_delrule_by_chain(ctx);
  }
  if (err < 0) {
    goto out;
  } else {
  }
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50533: ;
  if ((unsigned long )chain != (unsigned long )ctx->table) {
    goto ldv_50532;
  } else {
  }
  __mptr___1 = (struct list_head const *)(ctx->table)->sets.next;
  set = (struct nft_set *)__mptr___1;
  __mptr___2 = (struct list_head const *)set->list.next;
  ns = (struct nft_set *)__mptr___2;
  goto ldv_50543;
  ldv_50542: ;
  if ((int )set->flags & 1) {
    {
    tmp = list_empty((struct list_head const *)(& set->bindings));
    }
    if (tmp == 0) {
      goto ldv_50541;
    } else {
    }
  } else {
  }
  {
  err = nft_delset(ctx, set);
  }
  if (err < 0) {
    goto out;
  } else {
  }
  ldv_50541:
  set = ns;
  __mptr___3 = (struct list_head const *)ns->list.next;
  ns = (struct nft_set *)__mptr___3;
  ldv_50543: ;
  if ((unsigned long )(& set->list) != (unsigned long )(& (ctx->table)->sets)) {
    goto ldv_50542;
  } else {
  }
  __mptr___4 = (struct list_head const *)(ctx->table)->chains.next;
  chain = (struct nft_chain *)__mptr___4 + 0xfffffffffffffff0UL;
  __mptr___5 = (struct list_head const *)chain->list.next;
  nc = (struct nft_chain *)__mptr___5 + 0xfffffffffffffff0UL;
  goto ldv_50552;
  ldv_50551:
  {
  ctx->chain = chain;
  err = nft_delchain(ctx);
  }
  if (err < 0) {
    goto out;
  } else {
  }
  chain = nc;
  __mptr___6 = (struct list_head const *)nc->list.next;
  nc = (struct nft_chain *)__mptr___6 + 0xfffffffffffffff0UL;
  ldv_50552: ;
  if ((unsigned long )chain != (unsigned long )ctx->table) {
    goto ldv_50551;
  } else {
  }
  {
  err = nft_deltable(ctx);
  }
  out: ;
  return (err);
}
}
static int nft_flush(struct nft_ctx *ctx , int family )
{
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct nft_table *nt ;
  struct nlattr const * const *nla ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  {
  nla = ctx->nla;
  err = 0;
  __mptr = (struct list_head const *)(ctx->net)->nft.af_info.next;
  afi = (struct nft_af_info *)__mptr;
  goto ldv_50580;
  ldv_50579: ;
  if (family != 0 && afi->family != family) {
    goto ldv_50567;
  } else {
  }
  ctx->afi = afi;
  __mptr___0 = (struct list_head const *)afi->tables.next;
  table = (struct nft_table *)__mptr___0;
  __mptr___1 = (struct list_head const *)table->list.next;
  nt = (struct nft_table *)__mptr___1;
  goto ldv_50577;
  ldv_50576: ;
  if ((unsigned long )*(nla + 1UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp = nla_strcmp(*(nla + 1UL), (char const *)(& table->name));
    }
    if (tmp != 0) {
      goto ldv_50574;
    } else {
    }
  } else {
  }
  {
  ctx->table = table;
  err = nft_flush_table(ctx);
  }
  if (err < 0) {
    goto out;
  } else {
  }
  ldv_50574:
  table = nt;
  __mptr___2 = (struct list_head const *)nt->list.next;
  nt = (struct nft_table *)__mptr___2;
  ldv_50577: ;
  if ((unsigned long )(& table->list) != (unsigned long )(& afi->tables)) {
    goto ldv_50576;
  } else {
  }
  ldv_50567:
  __mptr___3 = (struct list_head const *)afi->list.next;
  afi = (struct nft_af_info *)__mptr___3;
  ldv_50580: ;
  if ((unsigned long )(& afi->list) != (unsigned long )(& (ctx->net)->nft.af_info)) {
    goto ldv_50579;
  } else {
  }
  out: ;
  return (err);
}
}
static int nf_tables_deltable(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  struct nft_ctx ctx ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, (struct nft_af_info *)0,
               (struct nft_table *)0, (struct nft_chain *)0, nla);
  }
  if (family == 0 || (unsigned long )*(nla + 1UL) == (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___1 = nft_flush(& ctx, family);
    }
    return (tmp___1);
  } else {
  }
  {
  afi = nf_tables_afinfo_lookup(net, family, 0);
  tmp___3 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___2);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___5 = IS_ERR((void const *)table);
  }
  if ((int )tmp___5) {
    {
    tmp___4 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___4);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  ctx.afi = afi;
  ctx.table = table;
  tmp___6 = nft_flush_table(& ctx);
  }
  return (tmp___6);
}
}
static void nf_tables_table_destroy(struct nft_ctx *ctx )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((ctx->table)->use != 0U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nf_tables_api.c"),
                         "i" (809), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  kfree((void const *)ctx->table);
  ldv_module_put_128((ctx->afi)->owner);
  }
  return;
}
}
int nft_register_chain_type(struct nf_chain_type const *ctype )
{
  int err ;
  {
  {
  err = 0;
  nfnl_lock(10);
  }
  if ((unsigned long )chain_type[ctype->family][(unsigned int )ctype->type] != (unsigned long )((struct nf_chain_type const *)0)) {
    err = -16;
    goto out;
  } else {
  }
  chain_type[ctype->family][(unsigned int )ctype->type] = ctype;
  out:
  {
  nfnl_unlock(10);
  }
  return (err);
}
}
static char const __kstrtab_nft_register_chain_type[24U] =
  { 'n', 'f', 't', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'c', 'h', 'a',
        'i', 'n', '_', 't',
        'y', 'p', 'e', '\000'};
struct kernel_symbol const __ksymtab_nft_register_chain_type ;
struct kernel_symbol const __ksymtab_nft_register_chain_type = {(unsigned long )(& nft_register_chain_type), (char const *)(& __kstrtab_nft_register_chain_type)};
void nft_unregister_chain_type(struct nf_chain_type const *ctype )
{
  {
  {
  nfnl_lock(10);
  chain_type[ctype->family][(unsigned int )ctype->type] = (struct nf_chain_type const *)0;
  nfnl_unlock(10);
  }
  return;
}
}
static char const __kstrtab_nft_unregister_chain_type[26U] =
  { 'n', 'f', 't', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'c',
        'h', 'a', 'i', 'n',
        '_', 't', 'y', 'p',
        'e', '\000'};
struct kernel_symbol const __ksymtab_nft_unregister_chain_type ;
struct kernel_symbol const __ksymtab_nft_unregister_chain_type = {(unsigned long )(& nft_unregister_chain_type), (char const *)(& __kstrtab_nft_unregister_chain_type)};
static struct nft_chain *nf_tables_chain_lookup_byhandle(struct nft_table const *table ,
                                                         u64 handle )
{
  struct nft_chain *chain ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp ;
  {
  __mptr = (struct list_head const *)table->chains.next;
  chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50629;
  ldv_50628: ;
  if (chain->handle == handle) {
    return (chain);
  } else {
  }
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50629: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50628;
  } else {
  }
  {
  tmp = ERR_PTR(-2L);
  }
  return ((struct nft_chain *)tmp);
}
}
static struct nft_chain *nf_tables_chain_lookup(struct nft_table const *table ,
                                                struct nlattr const *nla )
{
  struct nft_chain *chain ;
  void *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  void *tmp___1 ;
  {
  if ((unsigned long )nla == (unsigned long )((struct nlattr const *)0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_chain *)tmp);
  } else {
  }
  __mptr = (struct list_head const *)table->chains.next;
  chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50641;
  ldv_50640:
  {
  tmp___0 = nla_strcmp(nla, (char const *)(& chain->name));
  }
  if (tmp___0 == 0) {
    return (chain);
  } else {
  }
  __mptr___0 = (struct list_head const *)chain->list.next;
  chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50641: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50640;
  } else {
  }
  {
  tmp___1 = ERR_PTR(-2L);
  }
  return ((struct nft_chain *)tmp___1);
}
}
static struct nla_policy const nft_chain_policy[9U] =
  { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {4U, (unsigned short)0},
        {5U, 31U},
        {8U, (unsigned short)0},
        {3U, (unsigned short)0},
        {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {8U, (unsigned short)0}};
static struct nla_policy const nft_hook_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_dump_stats(struct sk_buff *skb , struct nft_stats *stats )
{
  struct nft_stats *cpu_stats ;
  struct nft_stats total ;
  struct nlattr *nest ;
  unsigned int seq ;
  u64 pkts ;
  u64 bytes ;
  int cpu ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  bool tmp ;
  unsigned int tmp___0 ;
  __u64 tmp___1 ;
  int tmp___2 ;
  __u64 tmp___3 ;
  int tmp___4 ;
  {
  {
  memset((void *)(& total), 0, 16UL);
  cpu = -1;
  }
  goto ldv_50663;
  ldv_50662:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (stats));
  cpu_stats = (struct nft_stats *)(__ptr + __per_cpu_offset[cpu]);
  ldv_50660:
  {
  seq = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& cpu_stats->syncp));
  pkts = cpu_stats->pkts;
  bytes = cpu_stats->bytes;
  tmp = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& cpu_stats->syncp),
                                  seq);
  }
  if ((int )tmp) {
    goto ldv_50660;
  } else {
  }
  total.pkts = total.pkts + pkts;
  total.bytes = total.bytes + bytes;
  ldv_50663:
  {
  tmp___0 = cpumask_next(cpu, cpu_possible_mask);
  cpu = (int )tmp___0;
  }
  if (cpu < nr_cpu_ids) {
    goto ldv_50662;
  } else {
  }
  {
  nest = nla_nest_start(skb, 8);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___1 = __fswab64(total.pkts);
  tmp___2 = nla_put_be64(skb, 2, tmp___1);
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
    {
    tmp___3 = __fswab64(total.bytes);
    tmp___4 = nla_put_be64(skb, 1, tmp___3);
    }
    if (tmp___4 != 0) {
      goto nla_put_failure;
    } else {
    }
  }
  {
  nla_nest_end(skb, nest);
  }
  return (0);
  nla_put_failure: ;
  return (-28);
}
}
static int nf_tables_fill_chain_info(struct sk_buff *skb , struct net *net , u32 portid ,
                                     u32 seq , int event , u32 flags , int family ,
                                     struct nft_table const *table , struct nft_chain const *chain )
{
  struct nlmsghdr *nlh ;
  struct nfgenmsg *nfmsg ;
  void *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  __u64 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct nft_base_chain const *basechain ;
  struct nft_base_chain *tmp___5 ;
  struct nf_hook_ops const *ops ;
  struct nlattr *nest ;
  __u32 tmp___6 ;
  int tmp___7 ;
  __u32 tmp___8 ;
  int tmp___9 ;
  __u32 tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  struct nft_base_chain *tmp___13 ;
  int tmp___14 ;
  __u32 tmp___15 ;
  int tmp___16 ;
  {
  {
  event = event | 2560;
  nlh = nlmsg_put(skb, portid, seq, event, 4, (int )flags);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = (__u8 )family;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )net->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = nla_put_string(skb, 1, (char const *)(& table->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = __fswab64(chain->handle);
  tmp___3 = nla_put_be64(skb, 2, tmp___2);
  }
  if (tmp___3 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___4 = nla_put_string(skb, 3, (char const *)(& chain->name));
  }
  if (tmp___4 != 0) {
    goto nla_put_failure;
  } else {
  }
  if ((int )chain->flags & 1) {
    {
    tmp___5 = nft_base_chain(chain);
    basechain = (struct nft_base_chain const *)tmp___5;
    ops = (struct nf_hook_ops const *)(& basechain->ops);
    nest = nla_nest_start(skb, 4);
    }
    if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___6 = __fswab32(ops->hooknum);
    tmp___7 = nla_put_be32(skb, 1, tmp___6);
    }
    if (tmp___7 != 0) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___8 = __fswab32((__u32 )ops->priority);
    tmp___9 = nla_put_be32(skb, 2, tmp___8);
    }
    if (tmp___9 != 0) {
      goto nla_put_failure;
    } else {
    }
    {
    nla_nest_end(skb, nest);
    tmp___10 = __fswab32((__u32 )basechain->policy);
    tmp___11 = nla_put_be32(skb, 5, tmp___10);
    }
    if (tmp___11 != 0) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___12 = nla_put_string(skb, 7, (basechain->type)->name);
    }
    if (tmp___12 != 0) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___13 = nft_base_chain(chain);
    tmp___14 = nft_dump_stats(skb, tmp___13->stats);
    }
    if (tmp___14 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  tmp___15 = __fswab32(chain->use);
  tmp___16 = nla_put_be32(skb, 6, tmp___15);
  }
  if (tmp___16 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-1);
}
}
static int nf_tables_chain_notify(struct nft_ctx const *ctx , int event )
{
  struct sk_buff *skb ;
  int err ;
  int tmp ;
  {
  if (! ((_Bool )ctx->report)) {
    {
    tmp = nfnetlink_has_listeners(ctx->net, 7U);
    }
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb = nlmsg_new(3776UL, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_chain_info(skb, ctx->net, ctx->portid, ctx->seq, event, 0U,
                                  (ctx->afi)->family, (struct nft_table const *)ctx->table,
                                  (struct nft_chain const *)ctx->chain);
  }
  if (err < 0) {
    {
    kfree_skb(skb);
    }
    goto err;
  } else {
  }
  {
  err = nfnetlink_send(skb, ctx->net, ctx->portid, 7U, (int )ctx->report, 208U);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(ctx->net, ctx->portid, 7U, err);
    }
  } else {
  }
  return (err);
}
}
static int nf_tables_dump_chains(struct sk_buff *skb , struct netlink_callback *cb )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  struct nft_chain const *chain ;
  unsigned int idx ;
  unsigned int s_idx ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  struct list_head *__var___1 ;
  bool __warned___1 ;
  int tmp___3 ;
  int tmp___4 ;
  struct nlmsghdr *tmp___5 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  struct list_head *__var___2 ;
  bool __warned___2 ;
  int tmp___6 ;
  struct list_head *__ptr___3 ;
  struct list_head const *__mptr___3 ;
  struct list_head *________p1___3 ;
  struct list_head *_________p1___3 ;
  struct list_head *__var___3 ;
  bool __warned___3 ;
  int tmp___7 ;
  struct list_head *__ptr___4 ;
  struct list_head const *__mptr___4 ;
  struct list_head *________p1___4 ;
  struct list_head *_________p1___4 ;
  struct list_head *__var___4 ;
  bool __warned___4 ;
  int tmp___8 ;
  {
  {
  tmp = nlmsg_data(cb->nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  idx = 0U;
  s_idx = (unsigned int )cb->args[0];
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  rcu_read_lock();
  cb->seq = net->nft.base_seq;
  __ptr = net->nft.af_info.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  afi = (struct nft_af_info const *)__mptr;
  goto ldv_50778;
  ldv_50777: ;
  if (family != 0 && family != (int )afi->family) {
    goto ldv_50724;
  } else {
  }
  {
  __ptr___0 = afi->tables.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  }
  if (tmp___2 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  table = (struct nft_table const *)__mptr___0;
  goto ldv_50775;
  ldv_50774:
  {
  __ptr___1 = table->chains.next;
  __var___1 = (struct list_head *)0;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  ________p1___1 = _________p1___1;
  tmp___3 = debug_lockdep_rcu_enabled();
  }
  if (tmp___3 != 0 && ! __warned___1) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___1;
  chain = (struct nft_chain const *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_50772;
  ldv_50771: ;
  if (idx < s_idx) {
    goto cont;
  } else {
  }
  if (idx > s_idx) {
    {
    memset((void *)(& cb->args) + 1U, 0, 40UL);
    }
  } else {
  }
  {
  tmp___4 = nf_tables_fill_chain_info(skb, net, ((struct netlink_skb_parms *)(& (cb->skb)->cb))->portid,
                                      (cb->nlh)->nlmsg_seq, 3, 2U, afi->family, table,
                                      chain);
  }
  if (tmp___4 < 0) {
    goto done;
  } else {
  }
  {
  tmp___5 = nlmsg_hdr((struct sk_buff const *)skb);
  nl_dump_check_consistent(cb, tmp___5);
  }
  cont:
  {
  idx = idx + 1U;
  __ptr___2 = chain->list.next;
  __var___2 = (struct list_head *)0;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  ________p1___2 = _________p1___2;
  tmp___6 = debug_lockdep_rcu_enabled();
  }
  if (tmp___6 != 0 && ! __warned___2) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)________p1___2;
  chain = (struct nft_chain const *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_50772: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_50771;
  } else {
  }
  {
  __ptr___3 = table->list.next;
  __var___3 = (struct list_head *)0;
  _________p1___3 = *((struct list_head * volatile *)(& __ptr___3));
  ________p1___3 = _________p1___3;
  tmp___7 = debug_lockdep_rcu_enabled();
  }
  if (tmp___7 != 0 && ! __warned___3) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___3 = (struct list_head const *)________p1___3;
  table = (struct nft_table const *)__mptr___3;
  ldv_50775: ;
  if ((unsigned long )(& table->list) != (unsigned long )(& afi->tables)) {
    goto ldv_50774;
  } else {
  }
  ldv_50724:
  {
  __ptr___4 = afi->list.next;
  __var___4 = (struct list_head *)0;
  _________p1___4 = *((struct list_head * volatile *)(& __ptr___4));
  ________p1___4 = _________p1___4;
  tmp___8 = debug_lockdep_rcu_enabled();
  }
  if (tmp___8 != 0 && ! __warned___4) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___4 = (struct list_head const *)________p1___4;
  afi = (struct nft_af_info const *)__mptr___4;
  ldv_50778: ;
  if ((unsigned long )(& afi->list) != (unsigned long )((struct list_head const *)(& net->nft.af_info))) {
    goto ldv_50777;
  } else {
  }
  done:
  {
  rcu_read_unlock();
  cb->args[0] = (long )idx;
  }
  return ((int )skb->len);
}
}
static int nf_tables_getchain(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  struct nft_chain const *chain ;
  struct sk_buff *skb2 ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  int err ;
  struct netlink_dump_control c ;
  int tmp___1 ;
  struct nft_af_info *tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  struct nft_table *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  struct nft_chain *tmp___8 ;
  long tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  }
  if (((int )nlh->nlmsg_flags & 768) != 0) {
    {
    c.dump = & nf_tables_dump_chains;
    c.done = 0;
    c.data = 0;
    c.module = 0;
    c.min_dump_alloc = (unsigned short)0;
    tmp___1 = netlink_dump_start(nlsk, skb, nlh, & c);
    }
    return (tmp___1);
  } else {
  }
  {
  tmp___2 = nf_tables_afinfo_lookup(net, family, 0);
  afi = (struct nft_af_info const *)tmp___2;
  tmp___4 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___3);
  } else {
  }
  {
  tmp___5 = nf_tables_table_lookup(afi, *(nla + 1UL));
  table = (struct nft_table const *)tmp___5;
  tmp___7 = IS_ERR((void const *)table);
  }
  if ((int )tmp___7) {
    {
    tmp___6 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___6);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  tmp___8 = nf_tables_chain_lookup(table, *(nla + 3UL));
  chain = (struct nft_chain const *)tmp___8;
  tmp___10 = IS_ERR((void const *)chain);
  }
  if ((int )tmp___10) {
    {
    tmp___9 = PTR_ERR((void const *)chain);
    }
    return ((int )tmp___9);
  } else {
  }
  if (((int )chain->flags & 2) != 0) {
    return (-2);
  } else {
  }
  {
  skb2 = alloc_skb(3776U, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_fill_chain_info(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                                  nlh->nlmsg_seq, 3, 0U, family, table, chain);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  {
  tmp___11 = nlmsg_unicast(nlsk, skb2, ((struct netlink_skb_parms *)(& skb->cb))->portid);
  }
  return (tmp___11);
  err:
  {
  kfree_skb(skb2);
  }
  return (err);
}
}
static struct nla_policy const nft_counter_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {4U, (unsigned short)0},
        {4U, (unsigned short)0}};
static struct nft_stats *nft_stats_alloc(struct nlattr const *attr )
{
  struct nlattr *tb[3U] ;
  struct nft_stats *newstats ;
  struct nft_stats *stats ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  struct nft_stats *pcpu_stats ;
  void *tmp___1 ;
  int i ;
  struct nft_stats *stat ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  unsigned int tmp___2 ;
  void *tmp___3 ;
  void const *__vpp_verify___0 ;
  unsigned long tcp_ptr__ ;
  __be64 tmp___4 ;
  __u64 tmp___5 ;
  __be64 tmp___6 ;
  __u64 tmp___7 ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& tb), 2, attr, (struct nla_policy const *)(& nft_counter_policy));
  }
  if (err < 0) {
    {
    tmp = ERR_PTR((long )err);
    }
    return ((struct nft_stats *)tmp);
  } else {
  }
  if ((unsigned long )tb[1] == (unsigned long )((struct nlattr *)0) || (unsigned long )tb[2] == (unsigned long )((struct nlattr *)0)) {
    {
    tmp___0 = ERR_PTR(-22L);
    }
    return ((struct nft_stats *)tmp___0);
  } else {
  }
  {
  tmp___1 = __alloc_percpu(16UL, 8UL);
  pcpu_stats = (struct nft_stats *)tmp___1;
  }
  if ((unsigned long )pcpu_stats != (unsigned long )((struct nft_stats *)0)) {
    i = -1;
    goto ldv_50812;
    ldv_50811:
    __vpp_verify = (void const *)0;
    __asm__ ("": "=r" (__ptr): "0" (pcpu_stats));
    stat = (struct nft_stats *)(__ptr + __per_cpu_offset[i]);
    ldv_50812:
    {
    tmp___2 = cpumask_next(i, cpu_possible_mask);
    i = (int )tmp___2;
    }
    if (i < nr_cpu_ids) {
      goto ldv_50811;
    } else {
    }
  } else {
  }
  newstats = pcpu_stats;
  if ((unsigned long )newstats == (unsigned long )((struct nft_stats *)0)) {
    {
    tmp___3 = ERR_PTR(-12L);
    }
    return ((struct nft_stats *)tmp___3);
  } else {
  }
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  __vpp_verify___0 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (newstats));
  stats = (struct nft_stats *)tcp_ptr__;
  tmp___4 = nla_get_be64((struct nlattr const *)tb[1]);
  tmp___5 = __fswab64(tmp___4);
  stats->bytes = tmp___5;
  tmp___6 = nla_get_be64((struct nlattr const *)tb[2]);
  tmp___7 = __fswab64(tmp___6);
  stats->pkts = tmp___7;
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return (newstats);
}
}
static void nft_chain_stats_replace(struct nft_base_chain *chain , struct nft_stats *newstats )
{
  struct nft_stats *oldstats ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  if ((unsigned long )newstats == (unsigned long )((struct nft_stats *)0)) {
    return;
  } else {
  }
  if ((unsigned long )chain->stats != (unsigned long )((struct nft_stats *)0)) {
    {
    tmp = debug_lockdep_rcu_enabled();
    }
    if (tmp != 0 && ! __warned) {
      {
      tmp___0 = lockdep_nfnl_is_held(10);
      }
      if (tmp___0 == 0) {
        {
        __warned = 1;
        lockdep_rcu_suspicious("net/netfilter/nf_tables_api.c", 1156, "suspicious rcu_dereference_protected() usage");
        }
      } else {
      }
    } else {
    }
    {
    oldstats = chain->stats;
    ldv_check_for_read_section();
    tmp___1 = ldv_undef_ptr();
    chain->stats = (struct nft_stats *)tmp___1;
    synchronize_rcu();
    free_percpu((void *)oldstats);
    }
  } else {
    {
    ldv_check_for_read_section();
    tmp___2 = ldv_undef_ptr();
    chain->stats = (struct nft_stats *)tmp___2;
    }
  }
  return;
}
}
static void nf_tables_chain_destroy(struct nft_chain *chain )
{
  long tmp ;
  struct nft_base_chain *tmp___0 ;
  struct nft_base_chain *tmp___1 ;
  struct nft_base_chain *tmp___2 ;
  {
  {
  tmp = ldv__builtin_expect(chain->use != 0U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nf_tables_api.c"),
                         "i" (1167), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((int )chain->flags & 1) {
    {
    tmp___0 = nft_base_chain((struct nft_chain const *)chain);
    ldv_module_put_129((tmp___0->type)->owner);
    tmp___1 = nft_base_chain((struct nft_chain const *)chain);
    free_percpu((void *)tmp___1->stats);
    tmp___2 = nft_base_chain((struct nft_chain const *)chain);
    kfree((void const *)tmp___2);
    }
  } else {
    {
    kfree((void const *)chain);
    }
  }
  return;
}
}
static int nf_tables_newchain(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nlattr const *name ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct nft_chain *chain ;
  struct nft_base_chain *basechain ;
  struct nlattr *ha[3U] ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  u8 policy ;
  u64 handle ;
  unsigned int i ;
  struct nft_stats *stats ;
  int err ;
  bool create ;
  struct nft_ctx ctx ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  __be64 tmp___5 ;
  __u64 tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  bool tmp___11 ;
  __be32 tmp___12 ;
  __u32 tmp___13 ;
  struct nft_stats *stats___0 ;
  struct nft_trans *trans ;
  struct nft_chain *tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  bool tmp___18 ;
  struct nf_chain_type const *type ;
  struct nf_hook_ops *ops ;
  nf_hookfn *hookfn ;
  u32 hooknum ;
  u32 priority ;
  long tmp___19 ;
  bool tmp___20 ;
  __be32 tmp___21 ;
  __u32 tmp___22 ;
  __be32 tmp___23 ;
  __u32 tmp___24 ;
  bool tmp___25 ;
  int tmp___26 ;
  void *tmp___27 ;
  long tmp___28 ;
  bool tmp___29 ;
  struct nft_stats *pcpu_stats ;
  void *tmp___30 ;
  int i___0 ;
  struct nft_stats *stat ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  unsigned int tmp___31 ;
  void *tmp___32 ;
  void *tmp___33 ;
  struct nft_base_chain *tmp___34 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  name = name;
  basechain = (struct nft_base_chain *)0;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  policy = 1U;
  handle = 0ULL;
  create = ((int )nlh->nlmsg_flags & 1024) != 0;
  afi = nf_tables_afinfo_lookup(net, family, 1);
  tmp___2 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___4 = IS_ERR((void const *)table);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___3);
  } else {
  }
  chain = (struct nft_chain *)0;
  name = *(nla + 3UL);
  if ((unsigned long )*(nla + 2UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___5 = nla_get_be64(*(nla + 2UL));
    tmp___6 = __fswab64(tmp___5);
    handle = tmp___6;
    chain = nf_tables_chain_lookup_byhandle((struct nft_table const *)table, handle);
    tmp___8 = IS_ERR((void const *)chain);
    }
    if ((int )tmp___8) {
      {
      tmp___7 = PTR_ERR((void const *)chain);
      }
      return ((int )tmp___7);
    } else {
    }
  } else {
    {
    chain = nf_tables_chain_lookup((struct nft_table const *)table, name);
    tmp___11 = IS_ERR((void const *)chain);
    }
    if ((int )tmp___11) {
      {
      tmp___10 = PTR_ERR((void const *)chain);
      }
      if (tmp___10 != -2L) {
        {
        tmp___9 = PTR_ERR((void const *)chain);
        }
        return ((int )tmp___9);
      } else {
      }
      chain = (struct nft_chain *)0;
    } else {
    }
  }
  if ((unsigned long )*(nla + 5UL) != (unsigned long )((struct nlattr const * )0)) {
    if (((unsigned long )chain != (unsigned long )((struct nft_chain *)0) && ((int )chain->flags & 1) == 0) || (unsigned long )*(nla + 4UL) == (unsigned long )((struct nlattr const * )0)) {
      return (-95);
    } else {
    }
    {
    tmp___12 = nla_get_be32(*(nla + 5UL));
    tmp___13 = __fswab32(tmp___12);
    policy = (u8 )tmp___13;
    }
    {
    if ((int )policy == 0) {
      goto case_0;
    } else {
    }
    if ((int )policy == 1) {
      goto case_1;
    } else {
    }
    goto switch_default;
    case_0: ;
    case_1: ;
    goto ldv_50855;
    switch_default: ;
    return (-22);
    switch_break: ;
    }
    ldv_50855: ;
  } else {
  }
  if ((unsigned long )chain != (unsigned long )((struct nft_chain *)0)) {
    stats___0 = (struct nft_stats *)0;
    if (((int )chain->flags & 2) != 0) {
      return (-2);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 512) != 0) {
      return (-17);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 256) != 0) {
      return (-95);
    } else {
    }
    if ((unsigned long )*(nla + 2UL) != (unsigned long )((struct nlattr const * )0) && (unsigned long )name != (unsigned long )((struct nlattr const *)0)) {
      {
      tmp___14 = nf_tables_chain_lookup((struct nft_table const *)table, *(nla + 3UL));
      tmp___15 = IS_ERR((void const *)tmp___14);
      }
      if (tmp___15) {
        tmp___16 = 0;
      } else {
        tmp___16 = 1;
      }
      if (tmp___16) {
        return (-17);
      } else {
      }
    } else {
    }
    if ((unsigned long )*(nla + 8UL) != (unsigned long )((struct nlattr const * )0)) {
      if (((int )chain->flags & 1) == 0) {
        return (-95);
      } else {
      }
      {
      stats___0 = nft_stats_alloc(*(nla + 8UL));
      tmp___18 = IS_ERR((void const *)stats___0);
      }
      if ((int )tmp___18) {
        {
        tmp___17 = PTR_ERR((void const *)stats___0);
        }
        return ((int )tmp___17);
      } else {
      }
    } else {
    }
    {
    nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, chain, nla);
    trans = nft_trans_alloc(& ctx, 3, 56U);
    }
    if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
      {
      free_percpu((void *)stats___0);
      }
      return (-12);
    } else {
    }
    ((struct nft_trans_chain *)(& trans->data))->stats = stats___0;
    ((struct nft_trans_chain *)(& trans->data))->update = 1;
    if ((unsigned long )*(nla + 5UL) != (unsigned long )((struct nlattr const * )0)) {
      ((struct nft_trans_chain *)(& trans->data))->policy = policy;
    } else {
      ((struct nft_trans_chain *)(& trans->data))->policy = 255U;
    }
    if ((unsigned long )*(nla + 2UL) != (unsigned long )((struct nlattr const * )0) && (unsigned long )name != (unsigned long )((struct nlattr const *)0)) {
      {
      nla_strlcpy((char *)(& ((struct nft_trans_chain *)(& trans->data))->name), name,
                  32UL);
      }
    } else {
    }
    {
    list_add_tail(& trans->list, & net->nft.commit_list);
    }
    return (0);
  } else {
  }
  if (table->use == 4294967295U) {
    return (-75);
  } else {
  }
  if ((unsigned long )*(nla + 4UL) != (unsigned long )((struct nlattr const * )0)) {
    type = chain_type[family][0];
    if ((unsigned long )*(nla + 7UL) != (unsigned long )((struct nlattr const * )0)) {
      {
      type = nf_tables_chain_type_lookup((struct nft_af_info const *)afi, *(nla + 7UL),
                                         (int )create);
      tmp___20 = IS_ERR((void const *)type);
      }
      if ((int )tmp___20) {
        {
        tmp___19 = PTR_ERR((void const *)type);
        }
        return ((int )tmp___19);
      } else {
      }
    } else {
    }
    {
    err = nla_parse_nested((struct nlattr **)(& ha), 2, *(nla + 4UL), (struct nla_policy const *)(& nft_hook_policy));
    }
    if (err < 0) {
      return (err);
    } else {
    }
    if ((unsigned long )ha[1] == (unsigned long )((struct nlattr *)0) || (unsigned long )ha[2] == (unsigned long )((struct nlattr *)0)) {
      return (-22);
    } else {
    }
    {
    tmp___21 = nla_get_be32((struct nlattr const *)ha[1]);
    tmp___22 = __fswab32(tmp___21);
    hooknum = tmp___22;
    }
    if (hooknum >= afi->nhooks) {
      return (-22);
    } else {
    }
    {
    tmp___23 = nla_get_be32((struct nlattr const *)ha[2]);
    tmp___24 = __fswab32(tmp___23);
    priority = tmp___24;
    }
    if (((unsigned int )type->hook_mask & (unsigned int )(1 << (int )hooknum)) == 0U) {
      return (-95);
    } else {
    }
    {
    tmp___25 = ldv_try_module_get_130(type->owner);
    }
    if (tmp___25) {
      tmp___26 = 0;
    } else {
      tmp___26 = 1;
    }
    if (tmp___26) {
      return (-2);
    } else {
    }
    {
    hookfn = type->hooks[hooknum];
    tmp___27 = kzalloc(232UL, 208U);
    basechain = (struct nft_base_chain *)tmp___27;
    }
    if ((unsigned long )basechain == (unsigned long )((struct nft_base_chain *)0)) {
      {
      ldv_module_put_131(type->owner);
      }
      return (-12);
    } else {
    }
    if ((unsigned long )*(nla + 8UL) != (unsigned long )((struct nlattr const * )0)) {
      {
      stats = nft_stats_alloc(*(nla + 8UL));
      tmp___29 = IS_ERR((void const *)stats);
      }
      if ((int )tmp___29) {
        {
        ldv_module_put_132(type->owner);
        kfree((void const *)basechain);
        tmp___28 = PTR_ERR((void const *)stats);
        }
        return ((int )tmp___28);
      } else {
      }
      basechain->stats = stats;
    } else {
      {
      tmp___30 = __alloc_percpu(16UL, 8UL);
      pcpu_stats = (struct nft_stats *)tmp___30;
      }
      if ((unsigned long )pcpu_stats != (unsigned long )((struct nft_stats *)0)) {
        i___0 = -1;
        goto ldv_50872;
        ldv_50871:
        __vpp_verify = (void const *)0;
        __asm__ ("": "=r" (__ptr): "0" (pcpu_stats));
        stat = (struct nft_stats *)(__ptr + __per_cpu_offset[i___0]);
        ldv_50872:
        {
        tmp___31 = cpumask_next(i___0, cpu_possible_mask);
        i___0 = (int )tmp___31;
        }
        if (i___0 < nr_cpu_ids) {
          goto ldv_50871;
        } else {
        }
      } else {
      }
      stats = pcpu_stats;
      if ((unsigned long )stats == (unsigned long )((struct nft_stats *)0)) {
        {
        ldv_module_put_133(type->owner);
        kfree((void const *)basechain);
        }
        return (-12);
      } else {
      }
      {
      ldv_check_for_read_section();
      tmp___32 = ldv_undef_ptr();
      basechain->stats = (struct nft_stats *)tmp___32;
      }
    }
    basechain->type = type;
    chain = & basechain->chain;
    i = 0U;
    goto ldv_50877;
    ldv_50876:
    ops = (struct nf_hook_ops *)(& basechain->ops) + (unsigned long )i;
    ops->pf = (u_int8_t )family;
    ops->owner = afi->owner;
    ops->hooknum = hooknum;
    ops->priority = (int )priority;
    ops->priv = (void *)chain;
    ops->hook = afi->hooks[ops->hooknum];
    if ((unsigned long )hookfn != (unsigned long )((nf_hookfn *)0)) {
      ops->hook = hookfn;
    } else {
    }
    if ((unsigned long )afi->hook_ops_init != (unsigned long )((void (*)(struct nf_hook_ops * ,
                                                                         unsigned int ))0)) {
      {
      (*(afi->hook_ops_init))(ops, i);
      }
    } else {
    }
    i = i + 1U;
    ldv_50877: ;
    if (i < afi->nops) {
      goto ldv_50876;
    } else {
    }
    chain->flags = (u8 )((unsigned int )chain->flags | 1U);
    basechain->policy = policy;
  } else {
    {
    tmp___33 = kzalloc(96UL, 208U);
    chain = (struct nft_chain *)tmp___33;
    }
    if ((unsigned long )chain == (unsigned long )((struct nft_chain *)0)) {
      return (-12);
    } else {
    }
  }
  {
  INIT_LIST_HEAD(& chain->rules);
  chain->handle = nf_tables_alloc_handle(table);
  chain->net = net;
  chain->table = table;
  nla_strlcpy((char *)(& chain->name), name, 32UL);
  }
  if (((int )table->flags & 1) == 0 && (int )chain->flags & 1) {
    {
    tmp___34 = nft_base_chain((struct nft_chain const *)chain);
    err = nf_register_hooks((struct nf_hook_ops *)(& tmp___34->ops), afi->nops);
    }
    if (err < 0) {
      goto err1;
    } else {
    }
  } else {
  }
  {
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, chain, nla);
  err = nft_trans_chain_add(& ctx, 3);
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  table->use = table->use + 1U;
  list_add_rcu(& chain->list, & table->chains);
  }
  return (0);
  err2:
  {
  nf_tables_unregister_hooks((struct nft_table const *)table, (struct nft_chain const *)chain,
                             afi->nops);
  }
  err1:
  {
  nf_tables_chain_destroy(chain);
  }
  return (err);
}
}
static int nf_tables_delchain(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                              struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct nft_chain *chain ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  struct nft_ctx ctx ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  afi = nf_tables_afinfo_lookup(net, family, 0);
  tmp___2 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___4 = IS_ERR((void const *)table);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___3);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  chain = nf_tables_chain_lookup((struct nft_table const *)table, *(nla + 3UL));
  tmp___6 = IS_ERR((void const *)chain);
  }
  if ((int )tmp___6) {
    {
    tmp___5 = PTR_ERR((void const *)chain);
    }
    return ((int )tmp___5);
  } else {
  }
  if (((int )chain->flags & 2) != 0) {
    return (-2);
  } else {
  }
  if (chain->use != 0U) {
    return (-16);
  } else {
  }
  {
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, chain, nla);
  tmp___7 = nft_delchain(& ctx);
  }
  return (tmp___7);
}
}
int nft_register_expr(struct nft_expr_type *type )
{
  {
  {
  nfnl_lock(10);
  }
  if ((unsigned int )type->family == 0U) {
    {
    list_add_rcu(& type->list, & nf_tables_expressions);
    }
  } else {
    {
    list_add_rcu(& type->list, & nf_tables_expressions);
    }
  }
  {
  nfnl_unlock(10);
  }
  return (0);
}
}
static char const __kstrtab_nft_register_expr[18U] =
  { 'n', 'f', 't', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'e', 'x', 'p',
        'r', '\000'};
struct kernel_symbol const __ksymtab_nft_register_expr ;
struct kernel_symbol const __ksymtab_nft_register_expr = {(unsigned long )(& nft_register_expr), (char const *)(& __kstrtab_nft_register_expr)};
void nft_unregister_expr(struct nft_expr_type *type )
{
  {
  {
  nfnl_lock(10);
  list_del_rcu(& type->list);
  nfnl_unlock(10);
  }
  return;
}
}
static char const __kstrtab_nft_unregister_expr[20U] =
  { 'n', 'f', 't', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'e',
        'x', 'p', 'r', '\000'};
struct kernel_symbol const __ksymtab_nft_unregister_expr ;
struct kernel_symbol const __ksymtab_nft_unregister_expr = {(unsigned long )(& nft_unregister_expr), (char const *)(& __kstrtab_nft_unregister_expr)};
static struct nft_expr_type const *__nft_expr_type_get(u8 family , struct nlattr *nla )
{
  struct nft_expr_type const *type ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)nf_tables_expressions.next;
  type = (struct nft_expr_type const *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_50924;
  ldv_50923:
  {
  tmp = nla_strcmp((struct nlattr const *)nla, type->name);
  }
  if (tmp == 0 && ((unsigned int )((unsigned char )type->family) == 0U || (int )((unsigned char )type->family) == (int )family)) {
    return (type);
  } else {
  }
  __mptr___0 = (struct list_head const *)type->list.next;
  type = (struct nft_expr_type const *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_50924: ;
  if ((unsigned long )(& type->list) != (unsigned long )((struct list_head const *)(& nf_tables_expressions))) {
    goto ldv_50923;
  } else {
  }
  return ((struct nft_expr_type const *)0);
}
}
static struct nft_expr_type const *nft_expr_type_get(u8 family , struct nlattr *nla )
{
  struct nft_expr_type const *type ;
  void *tmp ;
  bool tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  struct nft_expr_type const *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  struct nft_expr_type const *tmp___8 ;
  void *tmp___9 ;
  {
  if ((unsigned long )nla == (unsigned long )((struct nlattr *)0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_expr_type const *)tmp);
  } else {
  }
  {
  type = __nft_expr_type_get((int )family, nla);
  }
  if ((unsigned long )type != (unsigned long )((struct nft_expr_type const *)0)) {
    {
    tmp___0 = ldv_try_module_get_134(type->owner);
    }
    if ((int )tmp___0) {
      return (type);
    } else {
    }
  } else {
  }
  if ((unsigned long )type == (unsigned long )((struct nft_expr_type const *)0)) {
    {
    nfnl_unlock(10);
    tmp___1 = nla_data((struct nlattr const *)nla);
    tmp___2 = nla_len((struct nlattr const *)nla);
    __request_module(1, "nft-expr-%u-%.*s", (int )family, tmp___2, (char *)tmp___1);
    nfnl_lock(10);
    tmp___4 = __nft_expr_type_get((int )family, nla);
    }
    if ((unsigned long )tmp___4 != (unsigned long )((struct nft_expr_type const *)0)) {
      {
      tmp___3 = ERR_PTR(-11L);
      }
      return ((struct nft_expr_type const *)tmp___3);
    } else {
    }
    {
    nfnl_unlock(10);
    tmp___5 = nla_data((struct nlattr const *)nla);
    tmp___6 = nla_len((struct nlattr const *)nla);
    __request_module(1, "nft-expr-%.*s", tmp___6, (char *)tmp___5);
    nfnl_lock(10);
    tmp___8 = __nft_expr_type_get((int )family, nla);
    }
    if ((unsigned long )tmp___8 != (unsigned long )((struct nft_expr_type const *)0)) {
      {
      tmp___7 = ERR_PTR(-11L);
      }
      return ((struct nft_expr_type const *)tmp___7);
    } else {
    }
  } else {
  }
  {
  tmp___9 = ERR_PTR(-2L);
  }
  return ((struct nft_expr_type const *)tmp___9);
}
}
static struct nla_policy const nft_expr_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {8U, (unsigned short)0}};
static int nf_tables_fill_expr_info(struct sk_buff *skb , struct nft_expr const *expr )
{
  int tmp ;
  struct nlattr *data ;
  struct nlattr *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nla_put_string(skb, 1, ((expr->ops)->type)->name);
  }
  if (tmp != 0) {
    goto nla_put_failure;
  } else {
  }
  if ((unsigned long )(expr->ops)->dump != (unsigned long )((int (* )(struct sk_buff * ,
                                                                                 struct nft_expr const * ))0)) {
    {
    tmp___0 = nla_nest_start(skb, 2);
    data = tmp___0;
    }
    if ((unsigned long )data == (unsigned long )((struct nlattr *)0)) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___1 = (*((expr->ops)->dump))(skb, expr);
    }
    if (tmp___1 < 0) {
      goto nla_put_failure;
    } else {
    }
    {
    nla_nest_end(skb, data);
    }
  } else {
  }
  return ((int )skb->len);
  nla_put_failure: ;
  return (-1);
}
}
static int nf_tables_expr_parse(struct nft_ctx const *ctx , struct nlattr const *nla ,
                                struct nft_expr_info *info___0 )
{
  struct nft_expr_type const *type ;
  struct nft_expr_ops const *ops ;
  struct nlattr *tb[3U] ;
  int err ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& tb), 2, nla, (struct nla_policy const *)(& nft_expr_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  type = nft_expr_type_get((int )((u8 )(ctx->afi)->family), tb[1]);
  tmp___0 = IS_ERR((void const *)type);
  }
  if ((int )tmp___0) {
    {
    tmp = PTR_ERR((void const *)type);
    }
    return ((int )tmp);
  } else {
  }
  if ((unsigned long )tb[2] != (unsigned long )((struct nlattr *)0)) {
    {
    err = nla_parse_nested((struct nlattr **)(& info___0->tb), (int )type->maxattr,
                           (struct nlattr const *)tb[2], type->policy);
    }
    if (err < 0) {
      goto err1;
    } else {
    }
  } else {
    {
    memset((void *)(& info___0->tb), 0, (unsigned long )((unsigned int )type->maxattr + 1U) * 8UL);
    }
  }
  if ((unsigned long )type->select_ops != (unsigned long )((struct nft_expr_ops const *(* )(struct nft_ctx const * ,
                                                                                                         struct nlattr const * const * ))0)) {
    {
    ops = (*(type->select_ops))(ctx, (struct nlattr const * const *)(& info___0->tb));
    tmp___2 = IS_ERR((void const *)ops);
    }
    if ((int )tmp___2) {
      {
      tmp___1 = PTR_ERR((void const *)ops);
      err = (int )tmp___1;
      }
      goto err1;
    } else {
    }
  } else {
    ops = type->ops;
  }
  info___0->ops = ops;
  return (0);
  err1:
  {
  ldv_module_put_135(type->owner);
  }
  return (err);
}
}
static int nf_tables_newexpr(struct nft_ctx const *ctx , struct nft_expr_info const *info___0 ,
                             struct nft_expr *expr )
{
  struct nft_expr_ops const *ops ;
  int err ;
  {
  ops = info___0->ops;
  expr->ops = ops;
  if ((unsigned long )ops->init != (unsigned long )((int (* )(struct nft_ctx const * ,
                                                                         struct nft_expr const * ,
                                                                         struct nlattr const * const * ))0)) {
    {
    err = (*(ops->init))(ctx, (struct nft_expr const *)expr, (struct nlattr const * const *)(& info___0->tb));
    }
    if (err < 0) {
      goto err1;
    } else {
    }
  } else {
  }
  return (0);
  err1:
  expr->ops = (struct nft_expr_ops const *)0;
  return (err);
}
}
static void nf_tables_expr_destroy(struct nft_ctx const *ctx , struct nft_expr *expr )
{
  {
  if ((unsigned long )(expr->ops)->destroy != (unsigned long )((void (* )(struct nft_ctx const * ,
                                                                                     struct nft_expr const * ))0)) {
    {
    (*((expr->ops)->destroy))(ctx, (struct nft_expr const *)expr);
    }
  } else {
  }
  {
  ldv_module_put_136(((expr->ops)->type)->owner);
  }
  return;
}
}
static struct nft_rule *__nf_tables_rule_lookup(struct nft_chain const *chain ,
                                                u64 handle )
{
  struct nft_rule *rule ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp ;
  {
  __mptr = (struct list_head const *)chain->rules.next;
  rule = (struct nft_rule *)__mptr;
  goto ldv_50973;
  ldv_50972: ;
  if (handle == (u64 )rule->handle) {
    return (rule);
  } else {
  }
  __mptr___0 = (struct list_head const *)rule->list.next;
  rule = (struct nft_rule *)__mptr___0;
  ldv_50973: ;
  if ((unsigned long )rule != (unsigned long )chain) {
    goto ldv_50972;
  } else {
  }
  {
  tmp = ERR_PTR(-2L);
  }
  return ((struct nft_rule *)tmp);
}
}
static struct nft_rule *nf_tables_rule_lookup(struct nft_chain const *chain , struct nlattr const *nla )
{
  void *tmp ;
  __be64 tmp___0 ;
  __u64 tmp___1 ;
  struct nft_rule *tmp___2 ;
  {
  if ((unsigned long )nla == (unsigned long )((struct nlattr const *)0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_rule *)tmp);
  } else {
  }
  {
  tmp___0 = nla_get_be64(nla);
  tmp___1 = __fswab64(tmp___0);
  tmp___2 = __nf_tables_rule_lookup(chain, tmp___1);
  }
  return (tmp___2);
}
}
static struct nla_policy const nft_rule_policy[8U] =
  { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {5U, 31U},
        {4U, (unsigned short)0},
        {8U, (unsigned short)0},
        {8U, (unsigned short)0},
        {4U, (unsigned short)0},
        {11U, 256U}};
static int nf_tables_fill_rule_info(struct sk_buff *skb , struct net *net , u32 portid ,
                                    u32 seq , int event , u32 flags , int family ,
                                    struct nft_table const *table , struct nft_chain const *chain ,
                                    struct nft_rule const *rule )
{
  struct nlmsghdr *nlh ;
  struct nfgenmsg *nfmsg ;
  struct nft_expr const *expr ;
  struct nft_expr const *next ;
  struct nlattr *list ;
  struct nft_rule const *prule ;
  int type ;
  void *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  __u64 tmp___3 ;
  int tmp___4 ;
  struct list_head const *__mptr ;
  __u64 tmp___5 ;
  int tmp___6 ;
  struct nft_expr *tmp___7 ;
  struct nft_expr *tmp___8 ;
  struct nlattr *elem ;
  struct nlattr *tmp___9 ;
  int tmp___10 ;
  struct nft_expr *tmp___11 ;
  void *tmp___12 ;
  int tmp___13 ;
  {
  {
  type = event | 2560;
  nlh = nlmsg_put(skb, portid, seq, type, 4, (int )flags);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = (__u8 )family;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )net->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = nla_put_string(skb, 1, (char const *)(& table->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nla_put_string(skb, 2, (char const *)(& chain->name));
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___3 = __fswab64((__u64 )rule->handle);
  tmp___4 = nla_put_be64(skb, 3, tmp___3);
  }
  if (tmp___4 != 0) {
    goto nla_put_failure;
  } else {
  }
  if (event != 8 && (unsigned long )((struct list_head const *)rule->list.prev) != (unsigned long )(& chain->rules)) {
    {
    __mptr = (struct list_head const *)rule->list.prev;
    prule = (struct nft_rule const *)((struct nft_rule *)__mptr);
    tmp___5 = __fswab64((__u64 )prule->handle);
    tmp___6 = nla_put_be64(skb, 6, tmp___5);
    }
    if (tmp___6 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  list = nla_nest_start(skb, 4);
  }
  if ((unsigned long )list == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___7 = nft_expr_first(rule);
  expr = (struct nft_expr const *)tmp___7;
  tmp___8 = nft_expr_last(rule);
  next = (struct nft_expr const *)tmp___8;
  }
  goto ldv_51004;
  ldv_51003:
  {
  tmp___9 = nla_nest_start(skb, 1);
  elem = tmp___9;
  }
  if ((unsigned long )elem == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___10 = nf_tables_fill_expr_info(skb, expr);
  }
  if (tmp___10 < 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nla_nest_end(skb, elem);
  tmp___11 = nft_expr_next(expr);
  expr = (struct nft_expr const *)tmp___11;
  }
  ldv_51004: ;
  if ((unsigned long )expr != (unsigned long )next) {
    goto ldv_51003;
  } else {
  }
  {
  nla_nest_end(skb, list);
  }
  if ((unsigned int )((unsigned char )rule->ulen) != 0U) {
    {
    tmp___12 = nft_userdata(rule);
    tmp___13 = nla_put(skb, 7, (int )rule->ulen, (void const *)tmp___12);
    }
    if (tmp___13 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-1);
}
}
static int nf_tables_rule_notify(struct nft_ctx const *ctx , struct nft_rule const *rule ,
                                 int event )
{
  struct sk_buff *skb ;
  int err ;
  int tmp ;
  {
  if (! ((_Bool )ctx->report)) {
    {
    tmp = nfnetlink_has_listeners(ctx->net, 7U);
    }
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb = nlmsg_new(3776UL, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_rule_info(skb, ctx->net, ctx->portid, ctx->seq, event, 0U,
                                 (ctx->afi)->family, (struct nft_table const *)ctx->table,
                                 (struct nft_chain const *)ctx->chain, rule);
  }
  if (err < 0) {
    {
    kfree_skb(skb);
    }
    goto err;
  } else {
  }
  {
  err = nfnetlink_send(skb, ctx->net, ctx->portid, 7U, (int )ctx->report, 208U);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(ctx->net, ctx->portid, 7U, err);
    }
  } else {
  }
  return (err);
}
}
static int nf_tables_dump_rules(struct sk_buff *skb , struct netlink_callback *cb )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  struct nft_chain const *chain ;
  struct nft_rule const *rule ;
  unsigned int idx ;
  unsigned int s_idx ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  struct list_head *__var___1 ;
  bool __warned___1 ;
  int tmp___3 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  struct list_head *__var___2 ;
  bool __warned___2 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct nlmsghdr *tmp___8 ;
  struct list_head *__ptr___3 ;
  struct list_head const *__mptr___3 ;
  struct list_head *________p1___3 ;
  struct list_head *_________p1___3 ;
  struct list_head *__var___3 ;
  bool __warned___3 ;
  int tmp___9 ;
  struct list_head *__ptr___4 ;
  struct list_head const *__mptr___4 ;
  struct list_head *________p1___4 ;
  struct list_head *_________p1___4 ;
  struct list_head *__var___4 ;
  bool __warned___4 ;
  int tmp___10 ;
  struct list_head *__ptr___5 ;
  struct list_head const *__mptr___5 ;
  struct list_head *________p1___5 ;
  struct list_head *_________p1___5 ;
  struct list_head *__var___5 ;
  bool __warned___5 ;
  int tmp___11 ;
  struct list_head *__ptr___6 ;
  struct list_head const *__mptr___6 ;
  struct list_head *________p1___6 ;
  struct list_head *_________p1___6 ;
  struct list_head *__var___6 ;
  bool __warned___6 ;
  int tmp___12 ;
  {
  {
  tmp = nlmsg_data(cb->nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  idx = 0U;
  s_idx = (unsigned int )cb->args[0];
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  rcu_read_lock();
  cb->seq = net->nft.base_seq;
  __ptr = net->nft.af_info.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  afi = (struct nft_af_info const *)__mptr;
  goto ldv_51128;
  ldv_51127: ;
  if (family != 0 && family != (int )afi->family) {
    goto ldv_51049;
  } else {
  }
  {
  __ptr___0 = afi->tables.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  }
  if (tmp___2 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  table = (struct nft_table const *)__mptr___0;
  goto ldv_51125;
  ldv_51124:
  {
  __ptr___1 = table->chains.next;
  __var___1 = (struct list_head *)0;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  ________p1___1 = _________p1___1;
  tmp___3 = debug_lockdep_rcu_enabled();
  }
  if (tmp___3 != 0 && ! __warned___1) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___1;
  chain = (struct nft_chain const *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_51122;
  ldv_51121:
  {
  __ptr___2 = chain->rules.next;
  __var___2 = (struct list_head *)0;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  ________p1___2 = _________p1___2;
  tmp___4 = debug_lockdep_rcu_enabled();
  }
  if (tmp___4 != 0 && ! __warned___2) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)________p1___2;
  rule = (struct nft_rule const *)__mptr___2;
  goto ldv_51119;
  ldv_51118:
  {
  tmp___5 = nft_rule_is_active(net, rule);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    goto cont;
  } else {
  }
  if (idx < s_idx) {
    goto cont;
  } else {
  }
  if (idx > s_idx) {
    {
    memset((void *)(& cb->args) + 1U, 0, 40UL);
    }
  } else {
  }
  {
  tmp___7 = nf_tables_fill_rule_info(skb, net, ((struct netlink_skb_parms *)(& (cb->skb)->cb))->portid,
                                     (cb->nlh)->nlmsg_seq, 6, 2050U, afi->family,
                                     table, chain, rule);
  }
  if (tmp___7 < 0) {
    goto done;
  } else {
  }
  {
  tmp___8 = nlmsg_hdr((struct sk_buff const *)skb);
  nl_dump_check_consistent(cb, tmp___8);
  }
  cont:
  {
  idx = idx + 1U;
  __ptr___3 = rule->list.next;
  __var___3 = (struct list_head *)0;
  _________p1___3 = *((struct list_head * volatile *)(& __ptr___3));
  ________p1___3 = _________p1___3;
  tmp___9 = debug_lockdep_rcu_enabled();
  }
  if (tmp___9 != 0 && ! __warned___3) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___3 = (struct list_head const *)________p1___3;
  rule = (struct nft_rule const *)__mptr___3;
  ldv_51119: ;
  if ((unsigned long )rule != (unsigned long )chain) {
    goto ldv_51118;
  } else {
  }
  {
  __ptr___4 = chain->list.next;
  __var___4 = (struct list_head *)0;
  _________p1___4 = *((struct list_head * volatile *)(& __ptr___4));
  ________p1___4 = _________p1___4;
  tmp___10 = debug_lockdep_rcu_enabled();
  }
  if (tmp___10 != 0 && ! __warned___4) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___4 = (struct list_head const *)________p1___4;
  chain = (struct nft_chain const *)__mptr___4 + 0xfffffffffffffff0UL;
  ldv_51122: ;
  if ((unsigned long )chain != (unsigned long )table) {
    goto ldv_51121;
  } else {
  }
  {
  __ptr___5 = table->list.next;
  __var___5 = (struct list_head *)0;
  _________p1___5 = *((struct list_head * volatile *)(& __ptr___5));
  ________p1___5 = _________p1___5;
  tmp___11 = debug_lockdep_rcu_enabled();
  }
  if (tmp___11 != 0 && ! __warned___5) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___5 = (struct list_head const *)________p1___5;
  table = (struct nft_table const *)__mptr___5;
  ldv_51125: ;
  if ((unsigned long )(& table->list) != (unsigned long )(& afi->tables)) {
    goto ldv_51124;
  } else {
  }
  ldv_51049:
  {
  __ptr___6 = afi->list.next;
  __var___6 = (struct list_head *)0;
  _________p1___6 = *((struct list_head * volatile *)(& __ptr___6));
  ________p1___6 = _________p1___6;
  tmp___12 = debug_lockdep_rcu_enabled();
  }
  if (tmp___12 != 0 && ! __warned___6) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___6 = (struct list_head const *)________p1___6;
  afi = (struct nft_af_info const *)__mptr___6;
  ldv_51128: ;
  if ((unsigned long )(& afi->list) != (unsigned long )((struct list_head const *)(& net->nft.af_info))) {
    goto ldv_51127;
  } else {
  }
  done:
  {
  rcu_read_unlock();
  cb->args[0] = (long )idx;
  }
  return ((int )skb->len);
}
}
static int nf_tables_getrule(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                             struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info const *afi ;
  struct nft_table const *table ;
  struct nft_chain const *chain ;
  struct nft_rule const *rule ;
  struct sk_buff *skb2 ;
  struct net *net ;
  struct net *tmp___0 ;
  int family ;
  int err ;
  struct netlink_dump_control c ;
  int tmp___1 ;
  struct nft_af_info *tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  struct nft_table *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  struct nft_chain *tmp___8 ;
  long tmp___9 ;
  bool tmp___10 ;
  struct nft_rule *tmp___11 ;
  long tmp___12 ;
  bool tmp___13 ;
  int tmp___14 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  family = (int )nfmsg->nfgen_family;
  }
  if (((int )nlh->nlmsg_flags & 768) != 0) {
    {
    c.dump = & nf_tables_dump_rules;
    c.done = 0;
    c.data = 0;
    c.module = 0;
    c.min_dump_alloc = (unsigned short)0;
    tmp___1 = netlink_dump_start(nlsk, skb, nlh, & c);
    }
    return (tmp___1);
  } else {
  }
  {
  tmp___2 = nf_tables_afinfo_lookup(net, family, 0);
  afi = (struct nft_af_info const *)tmp___2;
  tmp___4 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___3);
  } else {
  }
  {
  tmp___5 = nf_tables_table_lookup(afi, *(nla + 1UL));
  table = (struct nft_table const *)tmp___5;
  tmp___7 = IS_ERR((void const *)table);
  }
  if ((int )tmp___7) {
    {
    tmp___6 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___6);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  tmp___8 = nf_tables_chain_lookup(table, *(nla + 2UL));
  chain = (struct nft_chain const *)tmp___8;
  tmp___10 = IS_ERR((void const *)chain);
  }
  if ((int )tmp___10) {
    {
    tmp___9 = PTR_ERR((void const *)chain);
    }
    return ((int )tmp___9);
  } else {
  }
  if (((int )chain->flags & 2) != 0) {
    return (-2);
  } else {
  }
  {
  tmp___11 = nf_tables_rule_lookup(chain, *(nla + 3UL));
  rule = (struct nft_rule const *)tmp___11;
  tmp___13 = IS_ERR((void const *)rule);
  }
  if ((int )tmp___13) {
    {
    tmp___12 = PTR_ERR((void const *)rule);
    }
    return ((int )tmp___12);
  } else {
  }
  {
  skb2 = alloc_skb(3776U, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_fill_rule_info(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                                 nlh->nlmsg_seq, 6, 0U, family, table, chain, rule);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  {
  tmp___14 = nlmsg_unicast(nlsk, skb2, ((struct netlink_skb_parms *)(& skb->cb))->portid);
  }
  return (tmp___14);
  err:
  {
  kfree_skb(skb2);
  }
  return (err);
}
}
static void nf_tables_rule_destroy(struct nft_ctx const *ctx , struct nft_rule *rule )
{
  struct nft_expr *expr ;
  struct nft_expr *tmp ;
  {
  {
  expr = nft_expr_first((struct nft_rule const *)rule);
  }
  goto ldv_51153;
  ldv_51152:
  {
  nf_tables_expr_destroy(ctx, expr);
  expr = nft_expr_next((struct nft_expr const *)expr);
  }
  ldv_51153: ;
  if ((unsigned long )expr->ops != (unsigned long )((struct nft_expr_ops const *)0)) {
    {
    tmp = nft_expr_last((struct nft_rule const *)rule);
    }
    if ((unsigned long )expr != (unsigned long )tmp) {
      goto ldv_51152;
    } else {
      goto ldv_51154;
    }
  } else {
  }
  ldv_51154:
  {
  kfree((void const *)rule);
  }
  return;
}
}
static struct nft_expr_info *info ;
static int nf_tables_newrule(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                             struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info *afi ;
  struct net *net ;
  struct net *tmp___0 ;
  struct nft_table *table ;
  struct nft_chain *chain ;
  struct nft_rule *rule ;
  struct nft_rule *old_rule ;
  struct nft_trans *trans ;
  struct nft_expr *expr ;
  struct nft_ctx ctx ;
  struct nlattr *tmp___1 ;
  unsigned int size ;
  unsigned int i ;
  unsigned int n ;
  unsigned int ulen ;
  int err ;
  int rem ;
  bool create ;
  u64 handle ;
  u64 pos_handle ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  __be64 tmp___8 ;
  __u64 tmp___9 ;
  long tmp___10 ;
  bool tmp___11 ;
  __be64 tmp___12 ;
  __u64 tmp___13 ;
  long tmp___14 ;
  bool tmp___15 ;
  void *tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  int tmp___22 ;
  struct nft_trans *tmp___23 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  old_rule = (struct nft_rule *)0;
  trans = (struct nft_trans *)0;
  ulen = 0U;
  create = ((int )nlh->nlmsg_flags & 1024) != 0;
  afi = nf_tables_afinfo_lookup(net, (int )nfmsg->nfgen_family, (int )create);
  tmp___3 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___2);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___5 = IS_ERR((void const *)table);
  }
  if ((int )tmp___5) {
    {
    tmp___4 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___4);
  } else {
  }
  {
  chain = nf_tables_chain_lookup((struct nft_table const *)table, *(nla + 2UL));
  tmp___7 = IS_ERR((void const *)chain);
  }
  if ((int )tmp___7) {
    {
    tmp___6 = PTR_ERR((void const *)chain);
    }
    return ((int )tmp___6);
  } else {
  }
  if ((unsigned long )*(nla + 3UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___8 = nla_get_be64(*(nla + 3UL));
    tmp___9 = __fswab64(tmp___8);
    handle = tmp___9;
    rule = __nf_tables_rule_lookup((struct nft_chain const *)chain, handle);
    tmp___11 = IS_ERR((void const *)rule);
    }
    if ((int )tmp___11) {
      {
      tmp___10 = PTR_ERR((void const *)rule);
      }
      return ((int )tmp___10);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 512) != 0) {
      return (-17);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 256) != 0) {
      old_rule = rule;
    } else {
      return (-95);
    }
  } else {
    if (! create || ((int )nlh->nlmsg_flags & 256) != 0) {
      return (-22);
    } else {
    }
    {
    handle = nf_tables_alloc_handle(table);
    }
    if (chain->use == 4294967295U) {
      return (-75);
    } else {
    }
  }
  if ((unsigned long )*(nla + 6UL) != (unsigned long )((struct nlattr const * )0)) {
    if (((int )nlh->nlmsg_flags & 1024) == 0) {
      return (-95);
    } else {
    }
    {
    tmp___12 = nla_get_be64(*(nla + 6UL));
    tmp___13 = __fswab64(tmp___12);
    pos_handle = tmp___13;
    old_rule = __nf_tables_rule_lookup((struct nft_chain const *)chain, pos_handle);
    tmp___15 = IS_ERR((void const *)old_rule);
    }
    if ((int )tmp___15) {
      {
      tmp___14 = PTR_ERR((void const *)old_rule);
      }
      return ((int )tmp___14);
    } else {
    }
  } else {
  }
  {
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, chain, nla);
  n = 0U;
  size = 0U;
  }
  if ((unsigned long )*(nla + 4UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___16 = nla_data(*(nla + 4UL));
    tmp___1 = (struct nlattr *)tmp___16;
    rem = nla_len(*(nla + 4UL));
    }
    goto ldv_51184;
    ldv_51183:
    {
    err = -22;
    tmp___17 = nla_type((struct nlattr const *)tmp___1);
    }
    if (tmp___17 != 1) {
      goto err1;
    } else {
    }
    if (n == 128U) {
      goto err1;
    } else {
    }
    {
    err = nf_tables_expr_parse((struct nft_ctx const *)(& ctx), (struct nlattr const *)tmp___1,
                               info + (unsigned long )n);
    }
    if (err < 0) {
      goto err1;
    } else {
    }
    {
    size = size + (unsigned int )((info + (unsigned long )n)->ops)->size;
    n = n + 1U;
    tmp___1 = nla_next((struct nlattr const *)tmp___1, & rem);
    }
    ldv_51184:
    {
    tmp___18 = nla_ok((struct nlattr const *)tmp___1, rem);
    }
    if (tmp___18 != 0) {
      goto ldv_51183;
    } else {
    }
  } else {
  }
  if ((unsigned long )*(nla + 7UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___19 = nla_len(*(nla + 7UL));
    ulen = (unsigned int )tmp___19;
    }
  } else {
  }
  {
  err = -12;
  tmp___20 = kzalloc(((unsigned long )size + (unsigned long )ulen) + 24UL, 208U);
  rule = (struct nft_rule *)tmp___20;
  }
  if ((unsigned long )rule == (unsigned long )((struct nft_rule *)0)) {
    goto err1;
  } else {
  }
  {
  nft_rule_activate_next(net, rule);
  rule->handle = (unsigned long )handle;
  rule->dlen = (unsigned short )size;
  rule->ulen = (unsigned char )ulen;
  }
  if (ulen != 0U) {
    {
    tmp___21 = nft_userdata((struct nft_rule const *)rule);
    nla_memcpy(tmp___21, *(nla + 7UL), (int )ulen);
    }
  } else {
  }
  {
  expr = nft_expr_first((struct nft_rule const *)rule);
  i = 0U;
  }
  goto ldv_51188;
  ldv_51187:
  {
  err = nf_tables_newexpr((struct nft_ctx const *)(& ctx), (struct nft_expr_info const *)info + (unsigned long )i,
                          expr);
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  (info + (unsigned long )i)->ops = (struct nft_expr_ops const *)0;
  expr = nft_expr_next((struct nft_expr const *)expr);
  i = i + 1U;
  }
  ldv_51188: ;
  if (i < n) {
    goto ldv_51187;
  } else {
  }
  if (((int )nlh->nlmsg_flags & 256) != 0) {
    {
    tmp___22 = nft_rule_is_active_next(net, (struct nft_rule const *)old_rule);
    }
    if (tmp___22 != 0) {
      {
      trans = nft_trans_rule_add(& ctx, 8, old_rule);
      }
      if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
        err = -12;
        goto err2;
      } else {
      }
      {
      nft_rule_deactivate_next(net, old_rule);
      chain->use = chain->use - 1U;
      list_add_rcu(& rule->list, & old_rule->list);
      }
    } else {
      err = -2;
      goto err2;
    }
  } else
  if (((int )nlh->nlmsg_flags & 2048) != 0) {
    if ((unsigned long )old_rule != (unsigned long )((struct nft_rule *)0)) {
      {
      list_add_rcu(& rule->list, & old_rule->list);
      }
    } else {
      {
      list_add_rcu(& rule->list, & chain->rules);
      }
    }
  } else
  if ((unsigned long )old_rule != (unsigned long )((struct nft_rule *)0)) {
    {
    list_add_rcu(& rule->list, & old_rule->list);
    }
  } else {
    {
    list_add_rcu(& rule->list, & chain->rules);
    }
  }
  {
  tmp___23 = nft_trans_rule_add(& ctx, 6, rule);
  }
  if ((unsigned long )tmp___23 == (unsigned long )((struct nft_trans *)0)) {
    err = -12;
    goto err3;
  } else {
  }
  chain->use = chain->use + 1U;
  return (0);
  err3:
  {
  list_del_rcu(& rule->list);
  }
  if ((unsigned long )trans != (unsigned long )((struct nft_trans *)0)) {
    {
    list_del_rcu(& (((struct nft_trans_rule *)(& trans->data))->rule)->list);
    nft_rule_clear(net, ((struct nft_trans_rule *)(& trans->data))->rule);
    nft_trans_destroy(trans);
    chain->use = chain->use + 1U;
    }
  } else {
  }
  err2:
  {
  nf_tables_rule_destroy((struct nft_ctx const *)(& ctx), rule);
  }
  err1:
  i = 0U;
  goto ldv_51192;
  ldv_51191: ;
  if ((unsigned long )(info + (unsigned long )i)->ops != (unsigned long )((struct nft_expr_ops const *)0)) {
    {
    ldv_module_put_137((((info + (unsigned long )i)->ops)->type)->owner);
    }
  } else {
  }
  i = i + 1U;
  ldv_51192: ;
  if (i < n) {
    goto ldv_51191;
  } else {
  }
  return (err);
}
}
static int nf_tables_delrule(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                             struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info *afi ;
  struct net *net ;
  struct net *tmp___0 ;
  struct nft_table *table ;
  struct nft_chain *chain ;
  struct nft_rule *rule ;
  int family ;
  int err ;
  struct nft_ctx ctx ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  chain = (struct nft_chain *)0;
  family = (int )nfmsg->nfgen_family;
  err = 0;
  afi = nf_tables_afinfo_lookup(net, family, 0);
  tmp___2 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___4 = IS_ERR((void const *)table);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___3);
  } else {
  }
  if ((int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  if ((unsigned long )*(nla + 2UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    chain = nf_tables_chain_lookup((struct nft_table const *)table, *(nla + 2UL));
    tmp___6 = IS_ERR((void const *)chain);
    }
    if ((int )tmp___6) {
      {
      tmp___5 = PTR_ERR((void const *)chain);
      }
      return ((int )tmp___5);
    } else {
    }
  } else {
  }
  {
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, chain, nla);
  }
  if ((unsigned long )chain != (unsigned long )((struct nft_chain *)0)) {
    if ((unsigned long )*(nla + 3UL) != (unsigned long )((struct nlattr const * )0)) {
      {
      rule = nf_tables_rule_lookup((struct nft_chain const *)chain, *(nla + 3UL));
      tmp___8 = IS_ERR((void const *)rule);
      }
      if ((int )tmp___8) {
        {
        tmp___7 = PTR_ERR((void const *)rule);
        }
        return ((int )tmp___7);
      } else {
      }
      {
      err = nft_delrule(& ctx, rule);
      }
    } else {
      {
      err = nft_delrule_by_chain(& ctx);
      }
    }
  } else {
    __mptr = (struct list_head const *)table->chains.next;
    chain = (struct nft_chain *)__mptr + 0xfffffffffffffff0UL;
    goto ldv_51215;
    ldv_51214:
    {
    ctx.chain = chain;
    err = nft_delrule_by_chain(& ctx);
    }
    if (err < 0) {
      goto ldv_51213;
    } else {
    }
    __mptr___0 = (struct list_head const *)chain->list.next;
    chain = (struct nft_chain *)__mptr___0 + 0xfffffffffffffff0UL;
    ldv_51215: ;
    if ((unsigned long )chain != (unsigned long )table) {
      goto ldv_51214;
    } else {
    }
    ldv_51213: ;
  }
  return (err);
}
}
static struct list_head nf_tables_set_ops = {& nf_tables_set_ops, & nf_tables_set_ops};
int nft_register_set(struct nft_set_ops *ops )
{
  {
  {
  nfnl_lock(10);
  list_add_rcu(& ops->list, & nf_tables_set_ops);
  nfnl_unlock(10);
  }
  return (0);
}
}
static char const __kstrtab_nft_register_set[17U] =
  { 'n', 'f', 't', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 's', 'e', 't',
        '\000'};
struct kernel_symbol const __ksymtab_nft_register_set ;
struct kernel_symbol const __ksymtab_nft_register_set = {(unsigned long )(& nft_register_set), (char const *)(& __kstrtab_nft_register_set)};
void nft_unregister_set(struct nft_set_ops *ops )
{
  {
  {
  nfnl_lock(10);
  list_del_rcu(& ops->list);
  nfnl_unlock(10);
  }
  return;
}
}
static char const __kstrtab_nft_unregister_set[19U] =
  { 'n', 'f', 't', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 's',
        'e', 't', '\000'};
struct kernel_symbol const __ksymtab_nft_unregister_set ;
struct kernel_symbol const __ksymtab_nft_unregister_set = {(unsigned long )(& nft_unregister_set), (char const *)(& __kstrtab_nft_unregister_set)};
static struct nft_set_ops const *nft_select_set_ops(struct nlattr const * const *nla ,
                                                      struct nft_set_desc const *desc ,
                                                      enum nft_set_policies policy )
{
  struct nft_set_ops const *ops ;
  struct nft_set_ops const *bops ;
  struct nft_set_estimate est ;
  struct nft_set_estimate best ;
  u32 features ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __be32 tmp___2 ;
  __u32 tmp___3 ;
  struct list_head const *__mptr ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  struct list_head const *__mptr___0 ;
  void *tmp___8 ;
  {
  {
  tmp___1 = list_empty((struct list_head const *)(& nf_tables_set_ops));
  }
  if (tmp___1 != 0) {
    {
    nfnl_unlock(10);
    __request_module(1, "nft-set");
    nfnl_lock(10);
    tmp___0 = list_empty((struct list_head const *)(& nf_tables_set_ops));
    }
    if (tmp___0 == 0) {
      {
      tmp = ERR_PTR(-11L);
      }
      return ((struct nft_set_ops const *)tmp);
    } else {
    }
  } else {
  }
  features = 0U;
  if ((unsigned long )*(nla + 3UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___2 = nla_get_be32(*(nla + 3UL));
    tmp___3 = __fswab32(tmp___2);
    features = tmp___3;
    features = features & 12U;
    }
  } else {
  }
  bops = (struct nft_set_ops const *)0;
  best.size = 4294967295U;
  best.class = 4294967295L;
  __mptr = (struct list_head const *)nf_tables_set_ops.next;
  ops = (struct nft_set_ops const *)__mptr + 0xffffffffffffffb8UL;
  goto ldv_51257;
  ldv_51256: ;
  if (((unsigned int )ops->features & features) != features) {
    goto ldv_51251;
  } else {
  }
  {
  tmp___4 = (*(ops->estimate))(desc, features, & est);
  }
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    goto ldv_51251;
  } else {
  }
  {
  if ((unsigned int )policy == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )policy == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((unsigned int )est.class < (unsigned int )best.class) {
    goto ldv_51253;
  } else {
  }
  if ((unsigned int )est.class == (unsigned int )best.class && est.size < best.size) {
    goto ldv_51253;
  } else {
  }
  goto ldv_51251;
  case_1: ;
  if (est.size < best.size) {
    goto ldv_51253;
  } else {
  }
  if (est.size == best.size && (unsigned int )est.class < (unsigned int )best.class) {
    goto ldv_51253;
  } else {
  }
  goto ldv_51251;
  switch_default: ;
  goto ldv_51253;
  switch_break: ;
  }
  ldv_51253:
  {
  tmp___6 = ldv_try_module_get_138(ops->owner);
  }
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    goto ldv_51251;
  } else {
  }
  if ((unsigned long )bops != (unsigned long )((struct nft_set_ops const *)0)) {
    {
    ldv_module_put_139(bops->owner);
    }
  } else {
  }
  bops = ops;
  best = est;
  ldv_51251:
  __mptr___0 = (struct list_head const *)ops->list.next;
  ops = (struct nft_set_ops const *)__mptr___0 + 0xffffffffffffffb8UL;
  ldv_51257: ;
  if ((unsigned long )(& ops->list) != (unsigned long )((struct list_head const *)(& nf_tables_set_ops))) {
    goto ldv_51256;
  } else {
  }
  if ((unsigned long )bops != (unsigned long )((struct nft_set_ops const *)0)) {
    return (bops);
  } else {
  }
  {
  tmp___8 = ERR_PTR(-95L);
  }
  return ((struct nft_set_ops const *)tmp___8);
}
}
static struct nla_policy const nft_set_policy[11U] =
  { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {5U, 15U},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {8U, (unsigned short)0},
        {3U, (unsigned short)0}};
static struct nla_policy const nft_set_desc_policy[2U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_ctx_init_from_setattr(struct nft_ctx *ctx , struct sk_buff const *skb ,
                                     struct nlmsghdr const *nlh , struct nlattr const * const *nla )
{
  struct net *net ;
  struct net *tmp ;
  struct nfgenmsg const *nfmsg ;
  void *tmp___0 ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  tmp___0 = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp___0;
  afi = (struct nft_af_info *)0;
  table = (struct nft_table *)0;
  }
  if ((unsigned int )((unsigned char )nfmsg->nfgen_family) != 0U) {
    {
    afi = nf_tables_afinfo_lookup(net, (int )nfmsg->nfgen_family, 0);
    tmp___2 = IS_ERR((void const *)afi);
    }
    if ((int )tmp___2) {
      {
      tmp___1 = PTR_ERR((void const *)afi);
      }
      return ((int )tmp___1);
    } else {
    }
  } else {
  }
  if ((unsigned long )*(nla + 1UL) != (unsigned long )((struct nlattr const * )0)) {
    if ((unsigned long )afi == (unsigned long )((struct nft_af_info *)0)) {
      return (-97);
    } else {
    }
    {
    table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
    tmp___4 = IS_ERR((void const *)table);
    }
    if ((int )tmp___4) {
      {
      tmp___3 = PTR_ERR((void const *)table);
      }
      return ((int )tmp___3);
    } else {
    }
    if ((int )((short )table->flags) < 0) {
      return (-2);
    } else {
    }
  } else {
  }
  {
  nft_ctx_init(ctx, skb, nlh, afi, table, (struct nft_chain *)0, nla);
  }
  return (0);
}
}
struct nft_set *nf_tables_set_lookup(struct nft_table const *table , struct nlattr const *nla )
{
  struct nft_set *set ;
  void *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  void *tmp___1 ;
  {
  if ((unsigned long )nla == (unsigned long )((struct nlattr const *)0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_set *)tmp);
  } else {
  }
  __mptr = (struct list_head const *)table->sets.next;
  set = (struct nft_set *)__mptr;
  goto ldv_51281;
  ldv_51280:
  {
  tmp___0 = nla_strcmp(nla, (char const *)(& set->name));
  }
  if (tmp___0 == 0) {
    return (set);
  } else {
  }
  __mptr___0 = (struct list_head const *)set->list.next;
  set = (struct nft_set *)__mptr___0;
  ldv_51281: ;
  if ((unsigned long )((struct list_head const *)(& set->list)) != (unsigned long )(& table->sets)) {
    goto ldv_51280;
  } else {
  }
  {
  tmp___1 = ERR_PTR(-2L);
  }
  return ((struct nft_set *)tmp___1);
}
}
struct nft_set *nf_tables_set_lookup_byid(struct net const *net , struct nlattr const *nla )
{
  struct nft_trans *trans ;
  u32 id ;
  __be32 tmp ;
  __u32 tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___1 ;
  {
  {
  tmp = nla_get_be32(nla);
  tmp___0 = __fswab32(tmp);
  id = tmp___0;
  __mptr = (struct list_head const *)net->nft.commit_list.next;
  trans = (struct nft_trans *)__mptr;
  }
  goto ldv_51294;
  ldv_51293: ;
  if (trans->msg_type == 9 && id == ((struct nft_trans_set *)(& trans->data))->set_id) {
    return (((struct nft_trans_set *)(& trans->data))->set);
  } else {
  }
  __mptr___0 = (struct list_head const *)trans->list.next;
  trans = (struct nft_trans *)__mptr___0;
  ldv_51294: ;
  if ((unsigned long )((struct list_head const *)(& trans->list)) != (unsigned long )(& net->nft.commit_list)) {
    goto ldv_51293;
  } else {
  }
  {
  tmp___1 = ERR_PTR(-2L);
  }
  return ((struct nft_set *)tmp___1);
}
}
static int nf_tables_set_alloc_name(struct nft_ctx *ctx , struct nft_set *set , char const *name )
{
  struct nft_set const *i ;
  char const *p ;
  unsigned long *inuse ;
  unsigned int n ;
  unsigned int min ;
  char *tmp ;
  char *tmp___0 ;
  unsigned long tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  unsigned long tmp___4 ;
  struct list_head const *__mptr___1 ;
  int tmp___5 ;
  struct list_head const *__mptr___2 ;
  {
  {
  n = 0U;
  min = 0U;
  tmp = strnchr(name, 16UL, 37);
  p = (char const *)tmp;
  }
  if ((unsigned long )p != (unsigned long )((char const *)0)) {
    if ((int )((signed char )*(p + 1UL)) != 100) {
      return (-22);
    } else {
      {
      tmp___0 = strchr(p + 2UL, 37);
      }
      if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
        return (-22);
      } else {
      }
    }
    {
    tmp___1 = get_zeroed_page(208U);
    inuse = (unsigned long *)tmp___1;
    }
    if ((unsigned long )inuse == (unsigned long )((unsigned long *)0UL)) {
      return (-12);
    } else {
    }
    cont:
    __mptr = (struct list_head const *)(ctx->table)->sets.next;
    i = (struct nft_set const *)__mptr;
    goto ldv_51314;
    ldv_51313:
    {
    tmp___3 = sscanf((char const *)(& i->name), name, & tmp___2);
    }
    if (tmp___3 == 0) {
      goto ldv_51312;
    } else {
    }
    if ((unsigned int )tmp___2 < min || (unsigned long )tmp___2 >= (unsigned long )min + 32768UL) {
      goto ldv_51312;
    } else {
    }
    {
    set_bit((long )((unsigned int )tmp___2 - min), (unsigned long volatile *)inuse);
    }
    ldv_51312:
    __mptr___0 = (struct list_head const *)i->list.next;
    i = (struct nft_set const *)__mptr___0;
    ldv_51314: ;
    if ((unsigned long )(& i->list) != (unsigned long )((struct list_head const *)(& (ctx->table)->sets))) {
      goto ldv_51313;
    } else {
    }
    {
    tmp___4 = ldv_find_first_zero_bit_140((unsigned long const *)inuse, 32768UL);
    n = (unsigned int )tmp___4;
    }
    if (n > 32767U) {
      {
      min = min + 32768U;
      memset((void *)inuse, 0, 4096UL);
      }
      goto cont;
    } else {
    }
    {
    free_pages((unsigned long )inuse, 0U);
    }
  } else {
  }
  {
  snprintf((char *)(& set->name), 16UL, name, min + n);
  __mptr___1 = (struct list_head const *)(ctx->table)->sets.next;
  i = (struct nft_set const *)__mptr___1;
  }
  goto ldv_51321;
  ldv_51320:
  {
  tmp___5 = strcmp((char const *)(& set->name), (char const *)(& i->name));
  }
  if (tmp___5 == 0) {
    return (-23);
  } else {
  }
  __mptr___2 = (struct list_head const *)i->list.next;
  i = (struct nft_set const *)__mptr___2;
  ldv_51321: ;
  if ((unsigned long )(& i->list) != (unsigned long )((struct list_head const *)(& (ctx->table)->sets))) {
    goto ldv_51320;
  } else {
  }
  return (0);
}
}
static int nf_tables_fill_set(struct sk_buff *skb , struct nft_ctx const *ctx ,
                              struct nft_set const *set , u16 event , u16 flags )
{
  struct nfgenmsg *nfmsg ;
  struct nlmsghdr *nlh ;
  struct nlattr *desc ;
  u32 portid ;
  u32 seq ;
  void *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  __u32 tmp___9 ;
  int tmp___10 ;
  __u32 tmp___11 ;
  int tmp___12 ;
  __u32 tmp___13 ;
  int tmp___14 ;
  __u32 tmp___15 ;
  int tmp___16 ;
  {
  {
  portid = ctx->portid;
  seq = ctx->seq;
  event = (u16 )((unsigned int )event | 2560U);
  nlh = nlmsg_put(skb, portid, seq, (int )event, 4, (int )flags);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = (__u8 )(ctx->afi)->family;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )(ctx->net)->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = nla_put_string(skb, 1, (char const *)(& (ctx->table)->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nla_put_string(skb, 2, (char const *)(& set->name));
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  if ((unsigned int )((unsigned short )set->flags) != 0U) {
    {
    tmp___3 = __fswab32((__u32 )set->flags);
    tmp___4 = nla_put_be32(skb, 3, tmp___3);
    }
    if (tmp___4 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  tmp___5 = __fswab32(set->ktype);
  tmp___6 = nla_put_be32(skb, 4, tmp___5);
  }
  if (tmp___6 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___7 = __fswab32((__u32 )set->klen);
  tmp___8 = nla_put_be32(skb, 5, tmp___7);
  }
  if (tmp___8 != 0) {
    goto nla_put_failure;
  } else {
  }
  if (((int )set->flags & 8) != 0) {
    {
    tmp___9 = __fswab32(set->dtype);
    tmp___10 = nla_put_be32(skb, 6, tmp___9);
    }
    if (tmp___10 != 0) {
      goto nla_put_failure;
    } else {
    }
    {
    tmp___11 = __fswab32((__u32 )set->dlen);
    tmp___12 = nla_put_be32(skb, 7, tmp___11);
    }
    if (tmp___12 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  if ((unsigned int )((unsigned short )set->policy) != 0U) {
    {
    tmp___13 = __fswab32((__u32 )set->policy);
    tmp___14 = nla_put_be32(skb, 8, tmp___13);
    }
    if (tmp___14 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  desc = nla_nest_start(skb, 9);
  }
  if ((unsigned long )desc == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  if ((unsigned int )set->size != 0U) {
    {
    tmp___15 = __fswab32(set->size);
    tmp___16 = nla_put_be32(skb, 1, tmp___15);
    }
    if (tmp___16 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  nla_nest_end(skb, desc);
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-1);
}
}
static int nf_tables_set_notify(struct nft_ctx const *ctx , struct nft_set const *set ,
                                int event , gfp_t gfp_flags )
{
  struct sk_buff *skb ;
  u32 portid ;
  int err ;
  int tmp ;
  {
  portid = ctx->portid;
  if (! ((_Bool )ctx->report)) {
    {
    tmp = nfnetlink_has_listeners(ctx->net, 7U);
    }
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb = nlmsg_new(3776UL, gfp_flags);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_set(skb, ctx, set, (int )((u16 )event), 0);
  }
  if (err < 0) {
    {
    kfree_skb(skb);
    }
    goto err;
  } else {
  }
  {
  err = nfnetlink_send(skb, ctx->net, portid, 7U, (int )ctx->report, gfp_flags);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(ctx->net, portid, 7U, err);
    }
  } else {
  }
  return (err);
}
}
static int nf_tables_dump_sets(struct sk_buff *skb , struct netlink_callback *cb )
{
  struct nft_set const *set ;
  unsigned int idx ;
  unsigned int s_idx ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct nft_table *cur_table ;
  struct net *net ;
  struct net *tmp ;
  int cur_family ;
  struct nft_ctx *ctx ;
  struct nft_ctx ctx_set ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  struct list_head *__var___1 ;
  bool __warned___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct nlmsghdr *tmp___4 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  struct list_head *__var___2 ;
  bool __warned___2 ;
  int tmp___5 ;
  struct list_head *__ptr___3 ;
  struct list_head const *__mptr___3 ;
  struct list_head *________p1___3 ;
  struct list_head *_________p1___3 ;
  struct list_head *__var___3 ;
  bool __warned___3 ;
  int tmp___6 ;
  struct list_head *__ptr___4 ;
  struct list_head const *__mptr___4 ;
  struct list_head *________p1___4 ;
  struct list_head *_________p1___4 ;
  struct list_head *__var___4 ;
  bool __warned___4 ;
  int tmp___7 ;
  {
  {
  s_idx = (unsigned int )cb->args[0];
  cur_table = (struct nft_table *)cb->args[2];
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  cur_family = (int )cb->args[3];
  ctx = (struct nft_ctx *)cb->data;
  }
  if (cb->args[1] != 0L) {
    return ((int )skb->len);
  } else {
  }
  {
  rcu_read_lock();
  cb->seq = net->nft.base_seq;
  __ptr = net->nft.af_info.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  afi = (struct nft_af_info *)__mptr;
  goto ldv_51437;
  ldv_51436: ;
  if ((unsigned long )ctx->afi != (unsigned long )((struct nft_af_info *)0) && (unsigned long )ctx->afi != (unsigned long )afi) {
    goto ldv_51382;
  } else {
  }
  if (cur_family != 0) {
    if (afi->family != cur_family) {
      goto ldv_51382;
    } else {
    }
    cur_family = 0;
  } else {
  }
  {
  __ptr___0 = afi->tables.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  table = (struct nft_table *)__mptr___0;
  goto ldv_51434;
  ldv_51433: ;
  if ((unsigned long )ctx->table != (unsigned long )((struct nft_table *)0) && (unsigned long )ctx->table != (unsigned long )table) {
    goto ldv_51405;
  } else {
  }
  if ((unsigned long )cur_table != (unsigned long )((struct nft_table *)0)) {
    if ((unsigned long )cur_table != (unsigned long )table) {
      goto ldv_51405;
    } else {
    }
    cur_table = (struct nft_table *)0;
  } else {
  }
  {
  idx = 0U;
  __ptr___1 = table->sets.next;
  __var___1 = (struct list_head *)0;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  ________p1___1 = _________p1___1;
  tmp___2 = debug_lockdep_rcu_enabled();
  }
  if (tmp___2 != 0 && ! __warned___1) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___1;
  set = (struct nft_set const *)__mptr___1;
  goto ldv_51431;
  ldv_51430: ;
  if (idx < s_idx) {
    goto cont;
  } else {
  }
  {
  ctx_set = *ctx;
  ctx_set.table = table;
  ctx_set.afi = afi;
  tmp___3 = nf_tables_fill_set(skb, (struct nft_ctx const *)(& ctx_set), set, 9,
                               2);
  }
  if (tmp___3 < 0) {
    cb->args[0] = (long )idx;
    cb->args[2] = (long )table;
    cb->args[3] = (long )afi->family;
    goto done;
  } else {
  }
  {
  tmp___4 = nlmsg_hdr((struct sk_buff const *)skb);
  nl_dump_check_consistent(cb, tmp___4);
  }
  cont:
  {
  idx = idx + 1U;
  __ptr___2 = set->list.next;
  __var___2 = (struct list_head *)0;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  ________p1___2 = _________p1___2;
  tmp___5 = debug_lockdep_rcu_enabled();
  }
  if (tmp___5 != 0 && ! __warned___2) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)________p1___2;
  set = (struct nft_set const *)__mptr___2;
  ldv_51431: ;
  if ((unsigned long )(& set->list) != (unsigned long )((struct list_head const *)(& table->sets))) {
    goto ldv_51430;
  } else {
  }
  if (s_idx != 0U) {
    s_idx = 0U;
  } else {
  }
  ldv_51405:
  {
  __ptr___3 = table->list.next;
  __var___3 = (struct list_head *)0;
  _________p1___3 = *((struct list_head * volatile *)(& __ptr___3));
  ________p1___3 = _________p1___3;
  tmp___6 = debug_lockdep_rcu_enabled();
  }
  if (tmp___6 != 0 && ! __warned___3) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___3 = (struct list_head const *)________p1___3;
  table = (struct nft_table *)__mptr___3;
  ldv_51434: ;
  if ((unsigned long )(& table->list) != (unsigned long )(& afi->tables)) {
    goto ldv_51433;
  } else {
  }
  ldv_51382:
  {
  __ptr___4 = afi->list.next;
  __var___4 = (struct list_head *)0;
  _________p1___4 = *((struct list_head * volatile *)(& __ptr___4));
  ________p1___4 = _________p1___4;
  tmp___7 = debug_lockdep_rcu_enabled();
  }
  if (tmp___7 != 0 && ! __warned___4) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___4 = (struct list_head const *)________p1___4;
  afi = (struct nft_af_info *)__mptr___4;
  ldv_51437: ;
  if ((unsigned long )(& afi->list) != (unsigned long )(& net->nft.af_info)) {
    goto ldv_51436;
  } else {
  }
  cb->args[1] = 1L;
  done:
  {
  rcu_read_unlock();
  }
  return ((int )skb->len);
}
}
static int nf_tables_dump_sets_done(struct netlink_callback *cb )
{
  {
  {
  kfree((void const *)cb->data);
  }
  return (0);
}
}
static int nf_tables_getset(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                            struct nlattr const * const *nla )
{
  struct nft_set const *set ;
  struct nft_ctx ctx ;
  struct sk_buff *skb2 ;
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  int err ;
  struct netlink_dump_control c ;
  struct nft_ctx *ctx_dump ;
  void *tmp___0 ;
  int tmp___1 ;
  struct nft_set *tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  err = nft_ctx_init_from_setattr(& ctx, (struct sk_buff const *)skb, nlh, nla);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if (((int )nlh->nlmsg_flags & 768) != 0) {
    {
    c.dump = & nf_tables_dump_sets;
    c.done = & nf_tables_dump_sets_done;
    c.data = 0;
    c.module = 0;
    c.min_dump_alloc = (unsigned short)0;
    tmp___0 = kmalloc(56UL, 208U);
    ctx_dump = (struct nft_ctx *)tmp___0;
    }
    if ((unsigned long )ctx_dump == (unsigned long )((struct nft_ctx *)0)) {
      return (-12);
    } else {
    }
    {
    *ctx_dump = ctx;
    c.data = (void *)ctx_dump;
    tmp___1 = netlink_dump_start(nlsk, skb, nlh, & c);
    }
    return (tmp___1);
  } else {
  }
  if ((unsigned int )((unsigned char )nfmsg->nfgen_family) == 0U) {
    return (-97);
  } else {
  }
  {
  tmp___2 = nf_tables_set_lookup((struct nft_table const *)ctx.table, *(nla + 2UL));
  set = (struct nft_set const *)tmp___2;
  tmp___4 = IS_ERR((void const *)set);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)set);
    }
    return ((int )tmp___3);
  } else {
  }
  if ((int )((short )set->flags) < 0) {
    return (-2);
  } else {
  }
  {
  skb2 = alloc_skb(3776U, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_fill_set(skb2, (struct nft_ctx const *)(& ctx), set, 9, 0);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  {
  tmp___5 = nlmsg_unicast(nlsk, skb2, ((struct netlink_skb_parms *)(& skb->cb))->portid);
  }
  return (tmp___5);
  err:
  {
  kfree_skb(skb2);
  }
  return (err);
}
}
static int nf_tables_set_desc_parse(struct nft_ctx const *ctx , struct nft_set_desc *desc ,
                                    struct nlattr const *nla )
{
  struct nlattr *da[2U] ;
  int err ;
  __be32 tmp ;
  __u32 tmp___0 ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& da), 1, nla, (struct nla_policy const *)(& nft_set_desc_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )da[1] != (unsigned long )((struct nlattr *)0)) {
    {
    tmp = nla_get_be32((struct nlattr const *)da[1]);
    tmp___0 = __fswab32(tmp);
    desc->size = tmp___0;
    }
  } else {
  }
  return (0);
}
}
static int nf_tables_newset(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                            struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_set_ops const *ops ;
  struct nft_af_info *afi ;
  struct net *net ;
  struct net *tmp___0 ;
  struct nft_table *table ;
  struct nft_set *set ;
  struct nft_ctx ctx ;
  char name[16U] ;
  unsigned int size ;
  bool create ;
  u32 ktype ;
  u32 dtype ;
  u32 flags ;
  u32 policy ;
  struct nft_set_desc desc ;
  int err ;
  __be32 tmp___1 ;
  __u32 tmp___2 ;
  __be32 tmp___3 ;
  __u32 tmp___4 ;
  __be32 tmp___5 ;
  __u32 tmp___6 ;
  __be32 tmp___7 ;
  __u32 tmp___8 ;
  __be32 tmp___9 ;
  __u32 tmp___10 ;
  __be32 tmp___11 ;
  __u32 tmp___12 ;
  long tmp___13 ;
  bool tmp___14 ;
  long tmp___15 ;
  bool tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  bool tmp___19 ;
  long tmp___20 ;
  bool tmp___21 ;
  void *tmp___22 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  }
  if ((((unsigned long )*(nla + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(nla + 2UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(nla + 5UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(nla + 10UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  memset((void *)(& desc), 0, 12UL);
  ktype = 0U;
  }
  if ((unsigned long )*(nla + 4UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___1 = nla_get_be32(*(nla + 4UL));
    tmp___2 = __fswab32(tmp___1);
    ktype = tmp___2;
    }
    if ((ktype & 4294967040U) == 4294967040U) {
      return (-22);
    } else {
    }
  } else {
  }
  {
  tmp___3 = nla_get_be32(*(nla + 5UL));
  tmp___4 = __fswab32(tmp___3);
  desc.klen = tmp___4;
  }
  if (desc.klen - 1U > 15U) {
    return (-22);
  } else {
  }
  flags = 0U;
  if ((unsigned long )*(nla + 3UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___5 = nla_get_be32(*(nla + 3UL));
    tmp___6 = __fswab32(tmp___5);
    flags = tmp___6;
    }
    if ((flags & 4294967280U) != 0U) {
      return (-22);
    } else {
    }
  } else {
  }
  dtype = 0U;
  if ((unsigned long )*(nla + 6UL) != (unsigned long )((struct nlattr const * )0)) {
    if ((flags & 8U) == 0U) {
      return (-22);
    } else {
    }
    {
    tmp___7 = nla_get_be32(*(nla + 6UL));
    tmp___8 = __fswab32(tmp___7);
    dtype = tmp___8;
    }
    if ((dtype & 4294967040U) == 4294967040U && dtype != 4294967040U) {
      return (-22);
    } else {
    }
    if (dtype != 4294967040U) {
      if ((unsigned long )*(nla + 7UL) == (unsigned long )((struct nlattr const * )0)) {
        return (-22);
      } else {
      }
      {
      tmp___9 = nla_get_be32(*(nla + 7UL));
      tmp___10 = __fswab32(tmp___9);
      desc.dlen = tmp___10;
      }
      if (desc.dlen - 1U > 15U) {
        return (-22);
      } else {
      }
    } else {
      desc.dlen = 16U;
    }
  } else
  if ((flags & 8U) != 0U) {
    return (-22);
  } else {
  }
  policy = 0U;
  if ((unsigned long )*(nla + 8UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    tmp___11 = nla_get_be32(*(nla + 8UL));
    tmp___12 = __fswab32(tmp___11);
    policy = tmp___12;
    }
  } else {
  }
  if ((unsigned long )*(nla + 9UL) != (unsigned long )((struct nlattr const * )0)) {
    {
    err = nf_tables_set_desc_parse((struct nft_ctx const *)(& ctx), & desc, *(nla + 9UL));
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  create = ((int )nlh->nlmsg_flags & 1024) != 0;
  afi = nf_tables_afinfo_lookup(net, (int )nfmsg->nfgen_family, (int )create);
  tmp___14 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___14) {
    {
    tmp___13 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___13);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___16 = IS_ERR((void const *)table);
  }
  if ((int )tmp___16) {
    {
    tmp___15 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___15);
  } else {
  }
  {
  nft_ctx_init(& ctx, (struct sk_buff const *)skb, nlh, afi, table, (struct nft_chain *)0,
               nla);
  set = nf_tables_set_lookup((struct nft_table const *)table, *(nla + 2UL));
  tmp___19 = IS_ERR((void const *)set);
  }
  if ((int )tmp___19) {
    {
    tmp___18 = PTR_ERR((void const *)set);
    }
    if (tmp___18 != -2L) {
      {
      tmp___17 = PTR_ERR((void const *)set);
      }
      return ((int )tmp___17);
    } else {
    }
    set = (struct nft_set *)0;
  } else {
  }
  if ((unsigned long )set != (unsigned long )((struct nft_set *)0)) {
    if (((int )nlh->nlmsg_flags & 512) != 0) {
      return (-17);
    } else {
    }
    if (((int )nlh->nlmsg_flags & 256) != 0) {
      return (-95);
    } else {
    }
    return (0);
  } else {
  }
  if (((int )nlh->nlmsg_flags & 1024) == 0) {
    return (-2);
  } else {
  }
  {
  ops = nft_select_set_ops(nla, (struct nft_set_desc const *)(& desc), (enum nft_set_policies )policy);
  tmp___21 = IS_ERR((void const *)ops);
  }
  if ((int )tmp___21) {
    {
    tmp___20 = PTR_ERR((void const *)ops);
    }
    return ((int )tmp___20);
  } else {
  }
  size = 0U;
  if ((unsigned long )ops->privsize != (unsigned long )((unsigned int (* )(struct nlattr const * const * ))0)) {
    {
    size = (*(ops->privsize))(nla);
    }
  } else {
  }
  {
  err = -12;
  tmp___22 = kzalloc((unsigned long )size + 192UL, 208U);
  set = (struct nft_set *)tmp___22;
  }
  if ((unsigned long )set == (unsigned long )((struct nft_set *)0)) {
    goto err1;
  } else {
  }
  {
  nla_strlcpy((char *)(& name), *(nla + 2UL), 16UL);
  err = nf_tables_set_alloc_name(& ctx, set, (char const *)(& name));
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  INIT_LIST_HEAD(& set->bindings);
  set->ops = ops;
  set->ktype = ktype;
  set->klen = (u8 )desc.klen;
  set->dtype = dtype;
  set->dlen = (u8 )desc.dlen;
  set->flags = (u16 )flags;
  set->size = desc.size;
  set->policy = (u16 )policy;
  err = (*(ops->init))((struct nft_set const *)set, (struct nft_set_desc const *)(& desc),
                       nla);
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  err = nft_trans_set_add(& ctx, 9, set);
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  list_add_rcu(& set->list, & table->sets);
  table->use = table->use + 1U;
  }
  return (0);
  err2:
  {
  kfree((void const *)set);
  }
  err1:
  {
  ldv_module_put_141(ops->owner);
  }
  return (err);
}
}
static void nft_set_destroy(struct nft_set *set )
{
  {
  {
  (*((set->ops)->destroy))((struct nft_set const *)set);
  ldv_module_put_142((set->ops)->owner);
  kfree((void const *)set);
  }
  return;
}
}
static void nf_tables_set_destroy(struct nft_ctx const *ctx , struct nft_set *set )
{
  {
  {
  list_del_rcu(& set->list);
  nf_tables_set_notify(ctx, (struct nft_set const *)set, 11, 32U);
  nft_set_destroy(set);
  }
  return;
}
}
static int nf_tables_delset(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                            struct nlattr const * const *nla )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_set *set ;
  struct nft_ctx ctx ;
  int err ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  }
  if ((unsigned int )((unsigned char )nfmsg->nfgen_family) == 0U) {
    return (-97);
  } else {
  }
  if ((unsigned long )*(nla + 1UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  err = nft_ctx_init_from_setattr(& ctx, (struct sk_buff const *)skb, nlh, nla);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  set = nf_tables_set_lookup((struct nft_table const *)ctx.table, *(nla + 2UL));
  tmp___1 = IS_ERR((void const *)set);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)set);
    }
    return ((int )tmp___0);
  } else {
  }
  if ((int )((short )set->flags) < 0) {
    return (-2);
  } else {
  }
  {
  tmp___2 = list_empty((struct list_head const *)(& set->bindings));
  }
  if (tmp___2 == 0) {
    return (-16);
  } else {
  }
  {
  tmp___3 = nft_delset(& ctx, set);
  }
  return (tmp___3);
}
}
static int nf_tables_bind_check_setelem(struct nft_ctx const *ctx , struct nft_set const *set ,
                                        struct nft_set_iter const *iter , struct nft_set_elem const *elem )
{
  enum nft_registers dreg ;
  int tmp ;
  {
  {
  dreg = nft_type_to_reg((enum nft_data_types )set->dtype);
  tmp = nft_validate_data_load(ctx, dreg, & elem->data, (unsigned int )set->dtype == 4294967040U ? 4294967040U : 0);
  }
  return (tmp);
}
}
int nf_tables_bind_set(struct nft_ctx const *ctx , struct nft_set *set , struct nft_set_binding *binding )
{
  struct nft_set_binding *i ;
  struct nft_set_iter iter ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = list_empty((struct list_head const *)(& set->bindings));
  }
  if (tmp == 0 && (int )set->flags & 1) {
    return (-16);
  } else {
  }
  if (((int )set->flags & 8) != 0) {
    __mptr = (struct list_head const *)set->bindings.next;
    i = (struct nft_set_binding *)__mptr;
    goto ldv_51524;
    ldv_51523: ;
    if ((unsigned long )i->chain == (unsigned long )binding->chain) {
      goto bind;
    } else {
    }
    __mptr___0 = (struct list_head const *)i->list.next;
    i = (struct nft_set_binding *)__mptr___0;
    ldv_51524: ;
    if ((unsigned long )(& i->list) != (unsigned long )(& set->bindings)) {
      goto ldv_51523;
    } else {
    }
    {
    iter.skip = 0U;
    iter.count = 0U;
    iter.err = 0;
    iter.fn = & nf_tables_bind_check_setelem;
    (*((set->ops)->walk))(ctx, (struct nft_set const *)set, & iter);
    }
    if (iter.err < 0) {
      if ((int )set->flags & 1) {
        {
        nf_tables_set_destroy(ctx, set);
        }
      } else {
      }
      return (iter.err);
    } else {
    }
  } else {
  }
  bind:
  {
  binding->chain = (struct nft_chain const *)ctx->chain;
  list_add_rcu(& binding->list, & set->bindings);
  }
  return (0);
}
}
void nf_tables_unbind_set(struct nft_ctx const *ctx , struct nft_set *set , struct nft_set_binding *binding )
{
  int tmp ;
  {
  {
  list_del_rcu(& binding->list);
  tmp = list_empty((struct list_head const *)(& set->bindings));
  }
  if ((tmp != 0 && (int )set->flags & 1) && (int )((short )set->flags) >= 0) {
    {
    nf_tables_set_destroy(ctx, set);
    }
  } else {
  }
  return;
}
}
static struct nla_policy const nft_set_elem_policy[4U] = { {(unsigned short)0, (unsigned short)0},
        {8U, (unsigned short)0},
        {8U, (unsigned short)0},
        {3U, (unsigned short)0}};
static struct nla_policy const nft_set_elem_list_policy[5U] = { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {5U, (unsigned short)0},
        {8U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_ctx_init_from_elemattr(struct nft_ctx *ctx , struct sk_buff const *skb ,
                                      struct nlmsghdr const *nlh , struct nlattr const * const *nla ,
                                      bool trans )
{
  struct nfgenmsg const *nfmsg ;
  void *tmp ;
  struct nft_af_info *afi ;
  struct nft_table *table ;
  struct net *net ;
  struct net *tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = nlmsg_data(nlh);
  nfmsg = (struct nfgenmsg const *)tmp;
  tmp___0 = sock_net((struct sock const *)skb->sk);
  net = tmp___0;
  afi = nf_tables_afinfo_lookup(net, (int )nfmsg->nfgen_family, 0);
  tmp___2 = IS_ERR((void const *)afi);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)afi);
    }
    return ((int )tmp___1);
  } else {
  }
  {
  table = nf_tables_table_lookup((struct nft_af_info const *)afi, *(nla + 1UL));
  tmp___4 = IS_ERR((void const *)table);
  }
  if ((int )tmp___4) {
    {
    tmp___3 = PTR_ERR((void const *)table);
    }
    return ((int )tmp___3);
  } else {
  }
  if (! trans && (int )((short )table->flags) < 0) {
    return (-2);
  } else {
  }
  {
  nft_ctx_init(ctx, skb, nlh, afi, table, (struct nft_chain *)0, nla);
  }
  return (0);
}
}
static int nf_tables_fill_setelem(struct sk_buff *skb , struct nft_set const *set ,
                                  struct nft_set_elem const *elem )
{
  unsigned char *b ;
  unsigned char *tmp ;
  struct nlattr *nest ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  b = tmp;
  nest = nla_nest_start(skb, 1);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___0 = nft_data_dump(skb, 1, & elem->key, 0, (unsigned int )set->klen);
  }
  if (tmp___0 < 0) {
    goto nla_put_failure;
  } else {
  }
  if (((int )set->flags & 8) != 0 && ((unsigned int )elem->flags & 1U) == 0U) {
    {
    tmp___1 = nft_data_dump(skb, 2, & elem->data, (unsigned int )set->dtype == 4294967040U ? 4294967040U : 0,
                            (unsigned int )set->dlen);
    }
    if (tmp___1 < 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  if ((unsigned int )elem->flags != 0U) {
    {
    tmp___2 = __fswab32(elem->flags);
    tmp___3 = nla_put_be32(skb, 3, tmp___2);
    }
    if (tmp___3 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  {
  nla_nest_end(skb, nest);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)b);
  }
  return (-90);
}
}
static int nf_tables_dump_setelem(struct nft_ctx const *ctx , struct nft_set const *set ,
                                  struct nft_set_iter const *iter , struct nft_set_elem const *elem )
{
  struct nft_set_dump_args *args ;
  struct nft_set_iter const *__mptr ;
  int tmp ;
  {
  {
  __mptr = iter;
  args = (struct nft_set_dump_args *)__mptr + 0xfffffffffffffff8UL;
  tmp = nf_tables_fill_setelem(args->skb, set, elem);
  }
  return (tmp);
}
}
static int nf_tables_dump_set(struct sk_buff *skb , struct netlink_callback *cb )
{
  struct nft_set const *set ;
  struct nft_set_dump_args args ;
  struct nft_ctx ctx ;
  struct nlattr *nla[5U] ;
  struct nfgenmsg *nfmsg ;
  struct nlmsghdr *nlh ;
  struct nlattr *nest ;
  u32 portid ;
  u32 seq ;
  int event ;
  int err ;
  struct nft_set *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  void *tmp___2 ;
  __u16 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  err = nlmsg_parse(cb->nlh, 4, (struct nlattr **)(& nla), 4, (struct nla_policy const *)(& nft_set_elem_list_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = nft_ctx_init_from_elemattr(& ctx, (struct sk_buff const *)cb->skb, cb->nlh,
                                   (struct nlattr const * const *)(& nla), 0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp = nf_tables_set_lookup((struct nft_table const *)ctx.table, (struct nlattr const *)nla[2]);
  set = (struct nft_set const *)tmp;
  tmp___1 = IS_ERR((void const *)set);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)set);
    }
    return ((int )tmp___0);
  } else {
  }
  if ((int )((short )set->flags) < 0) {
    return (-2);
  } else {
  }
  {
  event = 12;
  event = event | 2560;
  portid = ((struct netlink_skb_parms *)(& (cb->skb)->cb))->portid;
  seq = (cb->nlh)->nlmsg_seq;
  nlh = nlmsg_put(skb, portid, seq, event, 4, 2);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp___2;
  nfmsg->nfgen_family = (__u8 )(ctx.afi)->family;
  nfmsg->version = 0U;
  tmp___3 = __fswab16((int )((__u16 )(ctx.net)->nft.base_seq));
  nfmsg->res_id = tmp___3;
  tmp___4 = nla_put_string(skb, 1, (char const *)(& (ctx.table)->name));
  }
  if (tmp___4 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___5 = nla_put_string(skb, 2, (char const *)(& set->name));
  }
  if (tmp___5 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nest = nla_nest_start(skb, 3);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  args.cb = (struct netlink_callback const *)cb;
  args.skb = skb;
  args.iter.skip = (unsigned int )cb->args[0];
  args.iter.count = 0U;
  args.iter.err = 0;
  args.iter.fn = & nf_tables_dump_setelem;
  (*((set->ops)->walk))((struct nft_ctx const *)(& ctx), set, & args.iter);
  nla_nest_end(skb, nest);
  nlmsg_end(skb, nlh);
  }
  if (args.iter.err != 0 && args.iter.err != -90) {
    return (args.iter.err);
  } else {
  }
  if ((long )args.iter.count == cb->args[0]) {
    return (0);
  } else {
  }
  cb->args[0] = (long )args.iter.count;
  return ((int )skb->len);
  nla_put_failure: ;
  return (-28);
}
}
static int nf_tables_getsetelem(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                                struct nlattr const * const *nla )
{
  struct nft_set const *set ;
  struct nft_ctx ctx ;
  int err ;
  struct nft_set *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  struct netlink_dump_control c ;
  int tmp___2 ;
  {
  {
  err = nft_ctx_init_from_elemattr(& ctx, (struct sk_buff const *)skb, nlh, nla,
                                   0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp = nf_tables_set_lookup((struct nft_table const *)ctx.table, *(nla + 2UL));
  set = (struct nft_set const *)tmp;
  tmp___1 = IS_ERR((void const *)set);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)set);
    }
    return ((int )tmp___0);
  } else {
  }
  if ((int )((short )set->flags) < 0) {
    return (-2);
  } else {
  }
  if (((int )nlh->nlmsg_flags & 768) != 0) {
    {
    c.dump = & nf_tables_dump_set;
    c.done = 0;
    c.data = 0;
    c.module = 0;
    c.min_dump_alloc = (unsigned short)0;
    tmp___2 = netlink_dump_start(nlsk, skb, nlh, & c);
    }
    return (tmp___2);
  } else {
  }
  return (-95);
}
}
static int nf_tables_fill_setelem_info(struct sk_buff *skb , struct nft_ctx const *ctx ,
                                       u32 seq , u32 portid , int event , u16 flags ,
                                       struct nft_set const *set , struct nft_set_elem const *elem )
{
  struct nfgenmsg *nfmsg ;
  struct nlmsghdr *nlh ;
  struct nlattr *nest ;
  int err ;
  void *tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  event = event | 2560;
  nlh = nlmsg_put(skb, portid, seq, event, 4, (int )flags);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = (__u8 )(ctx->afi)->family;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )(ctx->net)->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = nla_put_string(skb, 1, (char const *)(& (ctx->table)->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nla_put_string(skb, 2, (char const *)(& set->name));
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nest = nla_nest_start(skb, 3);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  err = nf_tables_fill_setelem(skb, set, elem);
  }
  if (err < 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nla_nest_end(skb, nest);
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-1);
}
}
static int nf_tables_setelem_notify(struct nft_ctx const *ctx , struct nft_set const *set ,
                                    struct nft_set_elem const *elem , int event ,
                                    u16 flags )
{
  struct net *net ;
  u32 portid ;
  struct sk_buff *skb ;
  int err ;
  int tmp ;
  {
  net = ctx->net;
  portid = ctx->portid;
  if (! ((_Bool )ctx->report)) {
    {
    tmp = nfnetlink_has_listeners(net, 7U);
    }
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb = nlmsg_new(3776UL, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_setelem_info(skb, ctx, 0U, portid, event, (int )flags, set,
                                    elem);
  }
  if (err < 0) {
    {
    kfree_skb(skb);
    }
    goto err;
  } else {
  }
  {
  err = nfnetlink_send(skb, net, portid, 7U, (int )ctx->report, 208U);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(net, portid, 7U, err);
    }
  } else {
  }
  return (err);
}
}
static struct nft_trans *nft_trans_elem_alloc(struct nft_ctx *ctx , int msg_type ,
                                              struct nft_set *set )
{
  struct nft_trans *trans ;
  {
  {
  trans = nft_trans_alloc(ctx, msg_type, 56U);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    return ((struct nft_trans *)0);
  } else {
  }
  ((struct nft_trans_elem *)(& trans->data))->set = set;
  return (trans);
}
}
static int nft_add_set_elem(struct nft_ctx *ctx , struct nft_set *set , struct nlattr const *attr )
{
  struct nlattr *nla[4U] ;
  struct nft_data_desc d1 ;
  struct nft_data_desc d2 ;
  struct nft_set_elem elem ;
  struct nft_set_binding *binding ;
  enum nft_registers dreg ;
  struct nft_trans *trans ;
  int err ;
  __be32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct nft_ctx bind_ctx ;
  struct list_head const *__mptr___0 ;
  {
  if (set->size != 0U && set->nelems == set->size) {
    return (-23);
  } else {
  }
  {
  err = nla_parse_nested((struct nlattr **)(& nla), 3, attr, (struct nla_policy const *)(& nft_set_elem_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )nla[1] == (unsigned long )((struct nlattr *)0)) {
    return (-22);
  } else {
  }
  elem.flags = 0U;
  if ((unsigned long )nla[3] != (unsigned long )((struct nlattr *)0)) {
    {
    tmp = nla_get_be32((struct nlattr const *)nla[3]);
    tmp___0 = __fswab32(tmp);
    elem.flags = tmp___0;
    }
    if ((elem.flags & 4294967294U) != 0U) {
      return (-22);
    } else {
    }
  } else {
  }
  if (((int )set->flags & 8) != 0) {
    if ((unsigned long )nla[2] == (unsigned long )((struct nlattr *)0) && (elem.flags & 1U) == 0U) {
      return (-22);
    } else {
    }
    if ((unsigned long )nla[2] != (unsigned long )((struct nlattr *)0) && (int )elem.flags & 1) {
      return (-22);
    } else {
    }
  } else
  if ((unsigned long )nla[2] != (unsigned long )((struct nlattr *)0)) {
    return (-22);
  } else {
  }
  {
  err = nft_data_init((struct nft_ctx const *)ctx, & elem.key, & d1, (struct nlattr const *)nla[1]);
  }
  if (err < 0) {
    goto err1;
  } else {
  }
  err = -22;
  if ((unsigned int )d1.type != 0U || d1.len != (unsigned int )set->klen) {
    goto err2;
  } else {
  }
  {
  err = -17;
  tmp___1 = (*((set->ops)->get))((struct nft_set const *)set, & elem);
  }
  if (tmp___1 == 0) {
    goto err2;
  } else {
  }
  if ((unsigned long )nla[2] != (unsigned long )((struct nlattr *)0)) {
    {
    err = nft_data_init((struct nft_ctx const *)ctx, & elem.data, & d2, (struct nlattr const *)nla[2]);
    }
    if (err < 0) {
      goto err2;
    } else {
    }
    err = -22;
    if (set->dtype != 4294967040U && d2.len != (unsigned int )set->dlen) {
      goto err3;
    } else {
    }
    {
    dreg = nft_type_to_reg((enum nft_data_types )set->dtype);
    __mptr = (struct list_head const *)set->bindings.next;
    binding = (struct nft_set_binding *)__mptr;
    }
    goto ldv_51646;
    ldv_51645:
    {
    bind_ctx.net = 0;
    bind_ctx.afi = ctx->afi;
    bind_ctx.table = ctx->table;
    bind_ctx.chain = (struct nft_chain *)binding->chain;
    bind_ctx.nla = 0;
    bind_ctx.portid = 0U;
    bind_ctx.seq = 0U;
    bind_ctx.report = (_Bool)0;
    err = nft_validate_data_load((struct nft_ctx const *)(& bind_ctx), dreg, (struct nft_data const *)(& elem.data),
                                 d2.type);
    }
    if (err < 0) {
      goto err3;
    } else {
    }
    __mptr___0 = (struct list_head const *)binding->list.next;
    binding = (struct nft_set_binding *)__mptr___0;
    ldv_51646: ;
    if ((unsigned long )(& binding->list) != (unsigned long )(& set->bindings)) {
      goto ldv_51645;
    } else {
    }
  } else {
  }
  {
  trans = nft_trans_elem_alloc(ctx, 12, set);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    goto err3;
  } else {
  }
  {
  err = (*((set->ops)->insert))((struct nft_set const *)set, (struct nft_set_elem const *)(& elem));
  }
  if (err < 0) {
    goto err4;
  } else {
  }
  {
  ((struct nft_trans_elem *)(& trans->data))->elem = elem;
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
  err4:
  {
  kfree((void const *)trans);
  }
  err3: ;
  if ((unsigned long )nla[2] != (unsigned long )((struct nlattr *)0)) {
    {
    nft_data_uninit((struct nft_data const *)(& elem.data), d2.type);
    }
  } else {
  }
  err2:
  {
  nft_data_uninit((struct nft_data const *)(& elem.key), d1.type);
  }
  err1: ;
  return (err);
}
}
static int nf_tables_newsetelem(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                                struct nlattr const * const *nla )
{
  struct net *net ;
  struct net *tmp ;
  struct nlattr const *attr ;
  struct nft_set *set ;
  struct nft_ctx ctx ;
  int rem ;
  int err ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  struct nlattr *tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  err = 0;
  }
  if ((unsigned long )*(nla + 3UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  err = nft_ctx_init_from_elemattr(& ctx, (struct sk_buff const *)skb, nlh, nla,
                                   1);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  set = nf_tables_set_lookup((struct nft_table const *)ctx.table, *(nla + 2UL));
  tmp___2 = IS_ERR((void const *)set);
  }
  if ((int )tmp___2) {
    if ((unsigned long )*(nla + 4UL) != (unsigned long )((struct nlattr const * )0)) {
      {
      set = nf_tables_set_lookup_byid((struct net const *)net, *(nla + 4UL));
      }
    } else {
    }
    {
    tmp___1 = IS_ERR((void const *)set);
    }
    if ((int )tmp___1) {
      {
      tmp___0 = PTR_ERR((void const *)set);
      }
      return ((int )tmp___0);
    } else {
    }
  } else {
  }
  {
  tmp___3 = list_empty((struct list_head const *)(& set->bindings));
  }
  if (tmp___3 == 0 && ((int )set->flags & 2) != 0) {
    return (-16);
  } else {
  }
  {
  tmp___4 = nla_data(*(nla + 3UL));
  attr = (struct nlattr const *)tmp___4;
  rem = nla_len(*(nla + 3UL));
  }
  goto ldv_51663;
  ldv_51662:
  {
  err = nft_add_set_elem(& ctx, set, attr);
  }
  if (err < 0) {
    goto ldv_51661;
  } else {
  }
  {
  set->nelems = set->nelems + 1U;
  tmp___5 = nla_next(attr, & rem);
  attr = (struct nlattr const *)tmp___5;
  }
  ldv_51663:
  {
  tmp___6 = nla_ok(attr, rem);
  }
  if (tmp___6 != 0) {
    goto ldv_51662;
  } else {
  }
  ldv_51661: ;
  return (err);
}
}
static int nft_del_setelem(struct nft_ctx *ctx , struct nft_set *set , struct nlattr const *attr )
{
  struct nlattr *nla[4U] ;
  struct nft_data_desc desc ;
  struct nft_set_elem elem ;
  struct nft_trans *trans ;
  int err ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& nla), 3, attr, (struct nla_policy const *)(& nft_set_elem_policy));
  }
  if (err < 0) {
    goto err1;
  } else {
  }
  err = -22;
  if ((unsigned long )nla[1] == (unsigned long )((struct nlattr *)0)) {
    goto err1;
  } else {
  }
  {
  err = nft_data_init((struct nft_ctx const *)ctx, & elem.key, & desc, (struct nlattr const *)nla[1]);
  }
  if (err < 0) {
    goto err1;
  } else {
  }
  err = -22;
  if ((unsigned int )desc.type != 0U || desc.len != (unsigned int )set->klen) {
    goto err2;
  } else {
  }
  {
  err = (*((set->ops)->get))((struct nft_set const *)set, & elem);
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  trans = nft_trans_elem_alloc(ctx, 14, set);
  }
  if ((unsigned long )trans == (unsigned long )((struct nft_trans *)0)) {
    err = -12;
    goto err2;
  } else {
  }
  {
  ((struct nft_trans_elem *)(& trans->data))->elem = elem;
  list_add_tail(& trans->list, & (ctx->net)->nft.commit_list);
  }
  return (0);
  err2:
  {
  nft_data_uninit((struct nft_data const *)(& elem.key), desc.type);
  }
  err1: ;
  return (err);
}
}
static int nf_tables_delsetelem(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                                struct nlattr const * const *nla )
{
  struct nlattr const *attr ;
  struct nft_set *set ;
  struct nft_ctx ctx ;
  int rem ;
  int err ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  struct nlattr *tmp___3 ;
  int tmp___4 ;
  {
  err = 0;
  if ((unsigned long )*(nla + 3UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  err = nft_ctx_init_from_elemattr(& ctx, (struct sk_buff const *)skb, nlh, nla,
                                   0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  set = nf_tables_set_lookup((struct nft_table const *)ctx.table, *(nla + 2UL));
  tmp___0 = IS_ERR((void const *)set);
  }
  if ((int )tmp___0) {
    {
    tmp = PTR_ERR((void const *)set);
    }
    return ((int )tmp);
  } else {
  }
  {
  tmp___1 = list_empty((struct list_head const *)(& set->bindings));
  }
  if (tmp___1 == 0 && ((int )set->flags & 2) != 0) {
    return (-16);
  } else {
  }
  {
  tmp___2 = nla_data(*(nla + 3UL));
  attr = (struct nlattr const *)tmp___2;
  rem = nla_len(*(nla + 3UL));
  }
  goto ldv_51689;
  ldv_51688:
  {
  err = nft_del_setelem(& ctx, set, attr);
  }
  if (err < 0) {
    goto ldv_51687;
  } else {
  }
  {
  set->nelems = set->nelems - 1U;
  tmp___3 = nla_next(attr, & rem);
  attr = (struct nlattr const *)tmp___3;
  }
  ldv_51689:
  {
  tmp___4 = nla_ok(attr, rem);
  }
  if (tmp___4 != 0) {
    goto ldv_51688;
  } else {
  }
  ldv_51687: ;
  return (err);
}
}
static int nf_tables_fill_gen_info(struct sk_buff *skb , struct net *net , u32 portid ,
                                   u32 seq )
{
  struct nlmsghdr *nlh ;
  struct nfgenmsg *nfmsg ;
  int event ;
  void *tmp ;
  __u16 tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  {
  {
  event = 2575;
  nlh = nlmsg_put(skb, portid, seq, event, 4, 0);
  }
  if ((unsigned long )nlh == (unsigned long )((struct nlmsghdr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = nlmsg_data((struct nlmsghdr const *)nlh);
  nfmsg = (struct nfgenmsg *)tmp;
  nfmsg->nfgen_family = 0U;
  nfmsg->version = 0U;
  tmp___0 = __fswab16((int )((__u16 )net->nft.base_seq));
  nfmsg->res_id = tmp___0;
  tmp___1 = __fswab32(net->nft.base_seq);
  tmp___2 = nla_put_be32(skb, 1, tmp___1);
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  nlmsg_end(skb, nlh);
  }
  return (0);
  nla_put_failure:
  {
  nlmsg_trim(skb, (void const *)nlh);
  }
  return (-90);
}
}
static int nf_tables_gen_notify(struct net *net , struct sk_buff *skb , int event )
{
  struct nlmsghdr *nlh ;
  struct nlmsghdr *tmp ;
  struct sk_buff *skb2 ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = nlmsg_hdr((struct sk_buff const *)skb);
  nlh = tmp;
  tmp___0 = nlmsg_report((struct nlmsghdr const *)nlh);
  }
  if (tmp___0 != 0) {
    {
    tmp___1 = nfnetlink_has_listeners(net, 7U);
    }
    if (tmp___1 == 0) {
      return (0);
    } else {
    }
  } else {
  }
  {
  err = -105;
  skb2 = nlmsg_new(3776UL, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    goto err;
  } else {
  }
  {
  err = nf_tables_fill_gen_info(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                                nlh->nlmsg_seq);
  }
  if (err < 0) {
    {
    kfree_skb(skb2);
    }
    goto err;
  } else {
  }
  {
  tmp___2 = nlmsg_report((struct nlmsghdr const *)nlh);
  err = nfnetlink_send(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                       7U, tmp___2, 208U);
  }
  err: ;
  if (err < 0) {
    {
    nfnetlink_set_err(net, ((struct netlink_skb_parms *)(& skb->cb))->portid, 7U,
                      err);
    }
  } else {
  }
  return (err);
}
}
static int nf_tables_getgen(struct sock *nlsk , struct sk_buff *skb , struct nlmsghdr const *nlh ,
                            struct nlattr const * const *nla )
{
  struct net *net ;
  struct net *tmp ;
  struct sk_buff *skb2 ;
  int err ;
  int tmp___0 ;
  {
  {
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  skb2 = alloc_skb(3776U, 208U);
  }
  if ((unsigned long )skb2 == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  err = nf_tables_fill_gen_info(skb2, net, ((struct netlink_skb_parms *)(& skb->cb))->portid,
                                nlh->nlmsg_seq);
  }
  if (err < 0) {
    goto err;
  } else {
  }
  {
  tmp___0 = nlmsg_unicast(nlsk, skb2, ((struct netlink_skb_parms *)(& skb->cb))->portid);
  }
  return (tmp___0);
  err:
  {
  kfree_skb(skb2);
  }
  return (err);
}
}
static struct nfnl_callback const nf_tables_cb[17U] =
  { {0, 0, & nf_tables_newtable, (struct nla_policy const *)(& nft_table_policy),
      3U},
        {& nf_tables_gettable, 0, 0, (struct nla_policy const *)(& nft_table_policy),
      3U},
        {0, 0, & nf_tables_deltable, (struct nla_policy const *)(& nft_table_policy),
      3U},
        {0, 0, & nf_tables_newchain, (struct nla_policy const *)(& nft_chain_policy),
      8U},
        {& nf_tables_getchain, 0, 0, (struct nla_policy const *)(& nft_chain_policy),
      8U},
        {0, 0, & nf_tables_delchain, (struct nla_policy const *)(& nft_chain_policy),
      8U},
        {0, 0, & nf_tables_newrule, (struct nla_policy const *)(& nft_rule_policy),
      7U},
        {& nf_tables_getrule, 0, 0, (struct nla_policy const *)(& nft_rule_policy),
      7U},
        {0, 0, & nf_tables_delrule, (struct nla_policy const *)(& nft_rule_policy),
      7U},
        {0, 0, & nf_tables_newset, (struct nla_policy const *)(& nft_set_policy), 10U},
        {& nf_tables_getset,
      0, 0, (struct nla_policy const *)(& nft_set_policy), 10U},
        {0, 0, & nf_tables_delset, (struct nla_policy const *)(& nft_set_policy), 10U},
        {0,
      0, & nf_tables_newsetelem, (struct nla_policy const *)(& nft_set_elem_list_policy),
      4U},
        {& nf_tables_getsetelem, 0, 0, (struct nla_policy const *)(& nft_set_elem_list_policy),
      4U},
        {0, 0, & nf_tables_delsetelem, (struct nla_policy const *)(& nft_set_elem_list_policy),
      4U},
        {0, 0, 0, 0, (unsigned short)0},
        {& nf_tables_getgen, 0, 0, 0, (unsigned short)0}};
static void nft_chain_commit_update(struct nft_trans *trans )
{
  struct nft_base_chain *basechain ;
  {
  if ((int )((signed char )((struct nft_trans_chain *)(& trans->data))->name[0]) != 0) {
    {
    strcpy((char *)(& (trans->ctx.chain)->name), (char const *)(& ((struct nft_trans_chain *)(& trans->data))->name));
    }
  } else {
  }
  if (((int )(trans->ctx.chain)->flags & 1) == 0) {
    return;
  } else {
  }
  {
  basechain = nft_base_chain((struct nft_chain const *)trans->ctx.chain);
  nft_chain_stats_replace(basechain, ((struct nft_trans_chain *)(& trans->data))->stats);
  }
  {
  if ((int )((struct nft_trans_chain *)(& trans->data))->policy == 0) {
    goto case_0;
  } else {
  }
  if ((int )((struct nft_trans_chain *)(& trans->data))->policy == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1:
  basechain->policy = ((struct nft_trans_chain *)(& trans->data))->policy;
  goto ldv_51726;
  switch_break: ;
  }
  ldv_51726: ;
  return;
}
}
static void nf_tables_commit_release(struct nft_trans *trans )
{
  {
  {
  if (trans->msg_type == 2) {
    goto case_2;
  } else {
  }
  if (trans->msg_type == 5) {
    goto case_5;
  } else {
  }
  if (trans->msg_type == 8) {
    goto case_8;
  } else {
  }
  if (trans->msg_type == 11) {
    goto case_11;
  } else {
  }
  goto switch_break;
  case_2:
  {
  nf_tables_table_destroy(& trans->ctx);
  }
  goto ldv_51731;
  case_5:
  {
  nf_tables_chain_destroy(trans->ctx.chain);
  }
  goto ldv_51731;
  case_8:
  {
  nf_tables_rule_destroy((struct nft_ctx const *)(& trans->ctx), ((struct nft_trans_rule *)(& trans->data))->rule);
  }
  goto ldv_51731;
  case_11:
  {
  nft_set_destroy(((struct nft_trans_set *)(& trans->data))->set);
  }
  goto ldv_51731;
  switch_break: ;
  }
  ldv_51731:
  {
  kfree((void const *)trans);
  }
  return;
}
}
static int nf_tables_commit(struct sk_buff *skb )
{
  struct net *net ;
  struct net *tmp ;
  struct nft_trans *trans ;
  struct nft_trans *next ;
  struct nft_trans_elem *te ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  {
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  }
  goto ldv_51743;
  ldv_51742: ;
  ldv_51743:
  net->nft.base_seq = net->nft.base_seq + 1U;
  if (net->nft.base_seq == 0U) {
    goto ldv_51742;
  } else {
  }
  {
  tmp___0 = gencursor_next(net);
  net->nft.gencursor = (u8 )tmp___0;
  synchronize_rcu();
  __mptr = (struct list_head const *)net->nft.commit_list.next;
  trans = (struct nft_trans *)__mptr;
  __mptr___0 = (struct list_head const *)trans->list.next;
  next = (struct nft_trans *)__mptr___0;
  }
  goto ldv_51763;
  ldv_51762: ;
  {
  if (trans->msg_type == 0) {
    goto case_0;
  } else {
  }
  if (trans->msg_type == 2) {
    goto case_2;
  } else {
  }
  if (trans->msg_type == 3) {
    goto case_3;
  } else {
  }
  if (trans->msg_type == 5) {
    goto case_5;
  } else {
  }
  if (trans->msg_type == 6) {
    goto case_6;
  } else {
  }
  if (trans->msg_type == 8) {
    goto case_8;
  } else {
  }
  if (trans->msg_type == 9) {
    goto case_9;
  } else {
  }
  if (trans->msg_type == 11) {
    goto case_11;
  } else {
  }
  if (trans->msg_type == 12) {
    goto case_12;
  } else {
  }
  if (trans->msg_type == 14) {
    goto case_14;
  } else {
  }
  goto switch_break;
  case_0: ;
  if ((int )((struct nft_trans_table *)(& trans->data))->update) {
    if (! ((struct nft_trans_table *)(& trans->data))->enable) {
      {
      nf_tables_table_disable((struct nft_af_info const *)trans->ctx.afi, trans->ctx.table);
      (trans->ctx.table)->flags = (u16 )((unsigned int )(trans->ctx.table)->flags | 1U);
      }
    } else {
    }
  } else {
    (trans->ctx.table)->flags = (unsigned int )(trans->ctx.table)->flags & 32767U;
  }
  {
  nf_tables_table_notify((struct nft_ctx const *)(& trans->ctx), 0);
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  case_2:
  {
  nf_tables_table_notify((struct nft_ctx const *)(& trans->ctx), 2);
  }
  goto ldv_51752;
  case_3: ;
  if ((int )((struct nft_trans_chain *)(& trans->data))->update) {
    {
    nft_chain_commit_update(trans);
    }
  } else {
    (trans->ctx.chain)->flags = (unsigned int )(trans->ctx.chain)->flags & 253U;
  }
  {
  nf_tables_chain_notify((struct nft_ctx const *)(& trans->ctx), 3);
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  case_5:
  {
  nf_tables_chain_notify((struct nft_ctx const *)(& trans->ctx), 5);
  nf_tables_unregister_hooks((struct nft_table const *)trans->ctx.table, (struct nft_chain const *)trans->ctx.chain,
                             (trans->ctx.afi)->nops);
  }
  goto ldv_51752;
  case_6:
  {
  nft_rule_clear(trans->ctx.net, ((struct nft_trans_rule *)(& trans->data))->rule);
  nf_tables_rule_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_rule const *)((struct nft_trans_rule *)(& trans->data))->rule,
                        6);
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  case_8:
  {
  list_del_rcu(& (((struct nft_trans_rule *)(& trans->data))->rule)->list);
  nf_tables_rule_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_rule const *)((struct nft_trans_rule *)(& trans->data))->rule,
                        8);
  }
  goto ldv_51752;
  case_9:
  (((struct nft_trans_set *)(& trans->data))->set)->flags = (unsigned int )(((struct nft_trans_set *)(& trans->data))->set)->flags & 32767U;
  if ((int )(((struct nft_trans_set *)(& trans->data))->set)->flags & 1) {
    {
    tmp___1 = list_empty((struct list_head const *)(& (((struct nft_trans_set *)(& trans->data))->set)->bindings));
    }
    if (tmp___1 == 0) {
      (trans->ctx.table)->use = (trans->ctx.table)->use - 1U;
    } else {
    }
  } else {
  }
  {
  nf_tables_set_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_set const *)((struct nft_trans_set *)(& trans->data))->set,
                       9, 208U);
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  case_11:
  {
  nf_tables_set_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_set const *)((struct nft_trans_set *)(& trans->data))->set,
                       11, 208U);
  }
  goto ldv_51752;
  case_12:
  {
  nf_tables_setelem_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_set const *)((struct nft_trans_elem *)(& trans->data))->set,
                           (struct nft_set_elem const *)(& ((struct nft_trans_elem *)(& trans->data))->elem),
                           12, 0);
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  case_14:
  {
  te = (struct nft_trans_elem *)(& trans->data);
  nf_tables_setelem_notify((struct nft_ctx const *)(& trans->ctx), (struct nft_set const *)te->set,
                           (struct nft_set_elem const *)(& te->elem), 14, 0);
  (*(((te->set)->ops)->get))((struct nft_set const *)te->set, & te->elem);
  (*(((te->set)->ops)->remove))((struct nft_set const *)te->set, (struct nft_set_elem const *)(& te->elem));
  nft_data_uninit((struct nft_data const *)(& te->elem.key), 0);
  }
  if ((te->elem.flags & 8U) != 0U) {
    {
    nft_data_uninit((struct nft_data const *)(& te->elem.data), (enum nft_data_types )(te->set)->dtype);
    }
  } else {
  }
  {
  nft_trans_destroy(trans);
  }
  goto ldv_51752;
  switch_break: ;
  }
  ldv_51752:
  trans = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct nft_trans *)__mptr___1;
  ldv_51763: ;
  if ((unsigned long )(& trans->list) != (unsigned long )(& net->nft.commit_list)) {
    goto ldv_51762;
  } else {
  }
  {
  synchronize_rcu();
  __mptr___2 = (struct list_head const *)net->nft.commit_list.next;
  trans = (struct nft_trans *)__mptr___2;
  __mptr___3 = (struct list_head const *)trans->list.next;
  next = (struct nft_trans *)__mptr___3;
  }
  goto ldv_51772;
  ldv_51771:
  {
  list_del(& trans->list);
  nf_tables_commit_release(trans);
  trans = next;
  __mptr___4 = (struct list_head const *)next->list.next;
  next = (struct nft_trans *)__mptr___4;
  }
  ldv_51772: ;
  if ((unsigned long )(& trans->list) != (unsigned long )(& net->nft.commit_list)) {
    goto ldv_51771;
  } else {
  }
  {
  nf_tables_gen_notify(net, skb, 15);
  }
  return (0);
}
}
static void nf_tables_abort_release(struct nft_trans *trans )
{
  {
  {
  if (trans->msg_type == 0) {
    goto case_0;
  } else {
  }
  if (trans->msg_type == 3) {
    goto case_3;
  } else {
  }
  if (trans->msg_type == 6) {
    goto case_6;
  } else {
  }
  if (trans->msg_type == 9) {
    goto case_9;
  } else {
  }
  goto switch_break;
  case_0:
  {
  nf_tables_table_destroy(& trans->ctx);
  }
  goto ldv_51778;
  case_3:
  {
  nf_tables_chain_destroy(trans->ctx.chain);
  }
  goto ldv_51778;
  case_6:
  {
  nf_tables_rule_destroy((struct nft_ctx const *)(& trans->ctx), ((struct nft_trans_rule *)(& trans->data))->rule);
  }
  goto ldv_51778;
  case_9:
  {
  nft_set_destroy(((struct nft_trans_set *)(& trans->data))->set);
  }
  goto ldv_51778;
  switch_break: ;
  }
  ldv_51778:
  {
  kfree((void const *)trans);
  }
  return;
}
}
static int nf_tables_abort(struct sk_buff *skb )
{
  struct net *net ;
  struct net *tmp ;
  struct nft_trans *trans ;
  struct nft_trans *next ;
  struct nft_set *set ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  {
  tmp = sock_net((struct sock const *)skb->sk);
  net = tmp;
  __mptr = (struct list_head const *)net->nft.commit_list.next;
  trans = (struct nft_trans *)__mptr;
  __mptr___0 = (struct list_head const *)trans->list.next;
  next = (struct nft_trans *)__mptr___0;
  }
  goto ldv_51807;
  ldv_51806: ;
  {
  if (trans->msg_type == 0) {
    goto case_0;
  } else {
  }
  if (trans->msg_type == 2) {
    goto case_2;
  } else {
  }
  if (trans->msg_type == 3) {
    goto case_3;
  } else {
  }
  if (trans->msg_type == 5) {
    goto case_5;
  } else {
  }
  if (trans->msg_type == 6) {
    goto case_6;
  } else {
  }
  if (trans->msg_type == 8) {
    goto case_8;
  } else {
  }
  if (trans->msg_type == 9) {
    goto case_9;
  } else {
  }
  if (trans->msg_type == 11) {
    goto case_11;
  } else {
  }
  if (trans->msg_type == 12) {
    goto case_12;
  } else {
  }
  if (trans->msg_type == 14) {
    goto case_14;
  } else {
  }
  goto switch_break;
  case_0: ;
  if ((int )((struct nft_trans_table *)(& trans->data))->update) {
    if ((int )((struct nft_trans_table *)(& trans->data))->enable) {
      {
      nf_tables_table_disable((struct nft_af_info const *)trans->ctx.afi, trans->ctx.table);
      (trans->ctx.table)->flags = (u16 )((unsigned int )(trans->ctx.table)->flags | 1U);
      }
    } else {
    }
    {
    nft_trans_destroy(trans);
    }
  } else {
    {
    list_del_rcu(& (trans->ctx.table)->list);
    }
  }
  goto ldv_51796;
  case_2:
  {
  list_add_rcu(& (trans->ctx.table)->list, & (trans->ctx.afi)->tables);
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  case_3: ;
  if ((int )((struct nft_trans_chain *)(& trans->data))->update) {
    {
    free_percpu((void *)((struct nft_trans_chain *)(& trans->data))->stats);
    nft_trans_destroy(trans);
    }
  } else {
    {
    (trans->ctx.table)->use = (trans->ctx.table)->use - 1U;
    list_del_rcu(& (trans->ctx.chain)->list);
    nf_tables_unregister_hooks((struct nft_table const *)trans->ctx.table, (struct nft_chain const *)trans->ctx.chain,
                               (trans->ctx.afi)->nops);
    }
  }
  goto ldv_51796;
  case_5:
  {
  (trans->ctx.table)->use = (trans->ctx.table)->use + 1U;
  list_add_rcu(& (trans->ctx.chain)->list, & (trans->ctx.table)->chains);
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  case_6:
  {
  (trans->ctx.chain)->use = (trans->ctx.chain)->use - 1U;
  list_del_rcu(& (((struct nft_trans_rule *)(& trans->data))->rule)->list);
  }
  goto ldv_51796;
  case_8:
  {
  (trans->ctx.chain)->use = (trans->ctx.chain)->use + 1U;
  nft_rule_clear(trans->ctx.net, ((struct nft_trans_rule *)(& trans->data))->rule);
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  case_9:
  {
  (trans->ctx.table)->use = (trans->ctx.table)->use - 1U;
  list_del_rcu(& (((struct nft_trans_set *)(& trans->data))->set)->list);
  }
  goto ldv_51796;
  case_11:
  {
  (trans->ctx.table)->use = (trans->ctx.table)->use + 1U;
  list_add_rcu(& (((struct nft_trans_set *)(& trans->data))->set)->list, & (trans->ctx.table)->sets);
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  case_12:
  {
  (((struct nft_trans_elem *)(& trans->data))->set)->nelems = (((struct nft_trans_elem *)(& trans->data))->set)->nelems - 1U;
  set = ((struct nft_trans_elem *)(& trans->data))->set;
  (*((set->ops)->get))((struct nft_set const *)set, & ((struct nft_trans_elem *)(& trans->data))->elem);
  (*((set->ops)->remove))((struct nft_set const *)set, (struct nft_set_elem const *)(& ((struct nft_trans_elem *)(& trans->data))->elem));
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  case_14:
  {
  (((struct nft_trans_elem *)(& trans->data))->set)->nelems = (((struct nft_trans_elem *)(& trans->data))->set)->nelems + 1U;
  nft_trans_destroy(trans);
  }
  goto ldv_51796;
  switch_break: ;
  }
  ldv_51796:
  trans = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct nft_trans *)__mptr___1;
  ldv_51807: ;
  if ((unsigned long )(& trans->list) != (unsigned long )(& net->nft.commit_list)) {
    goto ldv_51806;
  } else {
  }
  {
  synchronize_rcu();
  __mptr___2 = (struct list_head const *)net->nft.commit_list.prev;
  trans = (struct nft_trans *)__mptr___2;
  __mptr___3 = (struct list_head const *)trans->list.prev;
  next = (struct nft_trans *)__mptr___3;
  }
  goto ldv_51816;
  ldv_51815:
  {
  list_del(& trans->list);
  nf_tables_abort_release(trans);
  trans = next;
  __mptr___4 = (struct list_head const *)next->list.prev;
  next = (struct nft_trans *)__mptr___4;
  }
  ldv_51816: ;
  if ((unsigned long )(& trans->list) != (unsigned long )(& net->nft.commit_list)) {
    goto ldv_51815;
  } else {
  }
  return (0);
}
}
static struct nfnetlink_subsystem const nf_tables_subsys = {"nf_tables", 10U, 17U, (struct nfnl_callback const *)(& nf_tables_cb), & nf_tables_commit,
    & nf_tables_abort};
int nft_chain_validate_dependency(struct nft_chain const *chain , enum nft_chain_type type )
{
  struct nft_base_chain const *basechain ;
  struct nft_base_chain *tmp ;
  {
  if ((int )chain->flags & 1) {
    {
    tmp = nft_base_chain(chain);
    basechain = (struct nft_base_chain const *)tmp;
    }
    if ((unsigned int )(basechain->type)->type != (unsigned int )type) {
      return (-95);
    } else {
    }
  } else {
  }
  return (0);
}
}
static char const __kstrtab_nft_chain_validate_dependency[30U] =
  { 'n', 'f', 't', '_',
        'c', 'h', 'a', 'i',
        'n', '_', 'v', 'a',
        'l', 'i', 'd', 'a',
        't', 'e', '_', 'd',
        'e', 'p', 'e', 'n',
        'd', 'e', 'n', 'c',
        'y', '\000'};
struct kernel_symbol const __ksymtab_nft_chain_validate_dependency ;
struct kernel_symbol const __ksymtab_nft_chain_validate_dependency = {(unsigned long )(& nft_chain_validate_dependency), (char const *)(& __kstrtab_nft_chain_validate_dependency)};
int nft_chain_validate_hooks(struct nft_chain const *chain , unsigned int hook_flags )
{
  struct nft_base_chain *basechain ;
  {
  if ((int )chain->flags & 1) {
    {
    basechain = nft_base_chain(chain);
    }
    if (((unsigned int )(1 << (int )basechain->ops[0].hooknum) & hook_flags) != 0U) {
      return (0);
    } else {
    }
    return (-95);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_nft_chain_validate_hooks[25U] =
  { 'n', 'f', 't', '_',
        'c', 'h', 'a', 'i',
        'n', '_', 'v', 'a',
        'l', 'i', 'd', 'a',
        't', 'e', '_', 'h',
        'o', 'o', 'k', 's',
        '\000'};
struct kernel_symbol const __ksymtab_nft_chain_validate_hooks ;
struct kernel_symbol const __ksymtab_nft_chain_validate_hooks = {(unsigned long )(& nft_chain_validate_hooks), (char const *)(& __kstrtab_nft_chain_validate_hooks)};
static int nf_tables_check_loops(struct nft_ctx const *ctx , struct nft_chain const *chain ) ;
static int nf_tables_loop_check_setelem(struct nft_ctx const *ctx , struct nft_set const *set ,
                                        struct nft_set_iter const *iter , struct nft_set_elem const *elem )
{
  int tmp ;
  {
  if ((int )elem->flags & 1) {
    return (0);
  } else {
  }
  {
  if (elem->data.__annonCompField91.__annonCompField90.verdict == 4294967293U) {
    goto case_4294967293;
  } else {
  }
  if (elem->data.__annonCompField91.__annonCompField90.verdict == 4294967292U) {
    goto case_4294967292;
  } else {
  }
  goto switch_default;
  case_4294967293: ;
  case_4294967292:
  {
  tmp = nf_tables_check_loops(ctx, (struct nft_chain const *)elem->data.__annonCompField91.__annonCompField90.chain);
  }
  return (tmp);
  switch_default: ;
  return (0);
  switch_break: ;
  }
}
}
static int nf_tables_check_loops(struct nft_ctx const *ctx , struct nft_chain const *chain )
{
  struct nft_rule const *rule ;
  struct nft_expr const *expr ;
  struct nft_expr const *last ;
  struct nft_set const *set ;
  struct nft_set_binding *binding ;
  struct nft_set_iter iter ;
  struct list_head const *__mptr ;
  struct nft_expr *tmp ;
  struct nft_expr *tmp___0 ;
  struct nft_data const *data ;
  int err ;
  struct nft_expr *tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  if ((unsigned long )((struct nft_chain const *)ctx->chain) == (unsigned long )chain) {
    return (-40);
  } else {
  }
  __mptr = (struct list_head const *)chain->rules.next;
  rule = (struct nft_rule const *)__mptr;
  goto ldv_51882;
  ldv_51881:
  {
  tmp = nft_expr_first(rule);
  expr = (struct nft_expr const *)tmp;
  tmp___0 = nft_expr_last(rule);
  last = (struct nft_expr const *)tmp___0;
  }
  goto ldv_51879;
  ldv_51878:
  data = (struct nft_data const *)0;
  if ((unsigned long )(expr->ops)->validate == (unsigned long )((int (* )(struct nft_ctx const * ,
                                                                                     struct nft_expr const * ,
                                                                                     struct nft_data const ** ))0)) {
    goto ldv_51873;
  } else {
  }
  {
  err = (*((expr->ops)->validate))(ctx, expr, & data);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )data == (unsigned long )((struct nft_data const *)0)) {
    goto ldv_51873;
  } else {
  }
  {
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967293U) {
    goto case_4294967293;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967292U) {
    goto case_4294967292;
  } else {
  }
  goto switch_default;
  case_4294967293: ;
  case_4294967292:
  {
  err = nf_tables_check_loops(ctx, (struct nft_chain const *)data->__annonCompField91.__annonCompField90.chain);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  switch_default: ;
  goto ldv_51877;
  switch_break: ;
  }
  ldv_51877: ;
  ldv_51873:
  {
  tmp___1 = nft_expr_next(expr);
  expr = (struct nft_expr const *)tmp___1;
  }
  ldv_51879: ;
  if ((unsigned long )expr != (unsigned long )last) {
    goto ldv_51878;
  } else {
  }
  __mptr___0 = (struct list_head const *)rule->list.next;
  rule = (struct nft_rule const *)__mptr___0;
  ldv_51882: ;
  if ((unsigned long )rule != (unsigned long )chain) {
    goto ldv_51881;
  } else {
  }
  __mptr___1 = (struct list_head const *)(ctx->table)->sets.next;
  set = (struct nft_set const *)__mptr___1;
  goto ldv_51898;
  ldv_51897: ;
  if (((int )set->flags & 8) == 0 || (unsigned int )set->dtype != 4294967040U) {
    goto ldv_51888;
  } else {
  }
  __mptr___2 = (struct list_head const *)set->bindings.next;
  binding = (struct nft_set_binding *)__mptr___2;
  goto ldv_51895;
  ldv_51894: ;
  if ((unsigned long )binding->chain != (unsigned long )chain) {
    goto ldv_51893;
  } else {
  }
  {
  iter.skip = 0U;
  iter.count = 0U;
  iter.err = 0;
  iter.fn = & nf_tables_loop_check_setelem;
  (*((set->ops)->walk))(ctx, set, & iter);
  }
  if (iter.err < 0) {
    return (iter.err);
  } else {
  }
  ldv_51893:
  __mptr___3 = (struct list_head const *)binding->list.next;
  binding = (struct nft_set_binding *)__mptr___3;
  ldv_51895: ;
  if ((unsigned long )((struct list_head const *)(& binding->list)) != (unsigned long )(& set->bindings)) {
    goto ldv_51894;
  } else {
  }
  ldv_51888:
  __mptr___4 = (struct list_head const *)set->list.next;
  set = (struct nft_set const *)__mptr___4;
  ldv_51898: ;
  if ((unsigned long )(& set->list) != (unsigned long )((struct list_head const *)(& (ctx->table)->sets))) {
    goto ldv_51897;
  } else {
  }
  return (0);
}
}
int nft_validate_input_register(enum nft_registers reg )
{
  {
  if ((unsigned int )reg == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )reg > 4U) {
    return (-34);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_nft_validate_input_register[28U] =
  { 'n', 'f', 't', '_',
        'v', 'a', 'l', 'i',
        'd', 'a', 't', 'e',
        '_', 'i', 'n', 'p',
        'u', 't', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_nft_validate_input_register ;
struct kernel_symbol const __ksymtab_nft_validate_input_register = {(unsigned long )(& nft_validate_input_register), (char const *)(& __kstrtab_nft_validate_input_register)};
int nft_validate_output_register(enum nft_registers reg )
{
  {
  if ((unsigned int )reg > 4U) {
    return (-34);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_nft_validate_output_register[29U] =
  { 'n', 'f', 't', '_',
        'v', 'a', 'l', 'i',
        'd', 'a', 't', 'e',
        '_', 'o', 'u', 't',
        'p', 'u', 't', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_nft_validate_output_register ;
struct kernel_symbol const __ksymtab_nft_validate_output_register = {(unsigned long )(& nft_validate_output_register), (char const *)(& __kstrtab_nft_validate_output_register)};
int nft_validate_data_load(struct nft_ctx const *ctx , enum nft_registers reg ,
                           struct nft_data const *data , enum nft_data_types type )
{
  int err ;
  {
  {
  if ((unsigned int )reg == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((unsigned long )data == (unsigned long )((struct nft_data const *)0) || (unsigned int )type != 4294967040U) {
    return (-22);
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict - 4294967292U <= 1U) {
    {
    err = nf_tables_check_loops(ctx, (struct nft_chain const *)data->__annonCompField91.__annonCompField90.chain);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    if ((int )(ctx->chain)->level + 1 > (int )(data->__annonCompField91.__annonCompField90.chain)->level) {
      if ((unsigned int )(ctx->chain)->level == 15U) {
        return (-31);
      } else {
      }
      (data->__annonCompField91.__annonCompField90.chain)->level = (unsigned int )(ctx->chain)->level + 1U;
    } else {
    }
  } else {
  }
  return (0);
  switch_default: ;
  if ((unsigned long )data != (unsigned long )((struct nft_data const *)0) && (unsigned int )type != 0U) {
    return (-22);
  } else {
  }
  return (0);
  switch_break: ;
  }
}
}
static char const __kstrtab_nft_validate_data_load[23U] =
  { 'n', 'f', 't', '_',
        'v', 'a', 'l', 'i',
        'd', 'a', 't', 'e',
        '_', 'd', 'a', 't',
        'a', '_', 'l', 'o',
        'a', 'd', '\000'};
struct kernel_symbol const __ksymtab_nft_validate_data_load ;
struct kernel_symbol const __ksymtab_nft_validate_data_load = {(unsigned long )(& nft_validate_data_load), (char const *)(& __kstrtab_nft_validate_data_load)};
static struct nla_policy const nft_verdict_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {5U, 31U}};
static int nft_verdict_init(struct nft_ctx const *ctx , struct nft_data *data ,
                            struct nft_data_desc *desc , struct nlattr const *nla )
{
  struct nlattr *tb[3U] ;
  struct nft_chain *chain ;
  int err ;
  __be32 tmp ;
  __u32 tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& tb), 2, nla, (struct nla_policy const *)(& nft_verdict_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )tb[1] == (unsigned long )((struct nlattr *)0)) {
    return (-22);
  } else {
  }
  {
  tmp = nla_get_be32((struct nlattr const *)tb[1]);
  tmp___0 = __fswab32(tmp);
  data->__annonCompField91.__annonCompField90.verdict = tmp___0;
  }
  {
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967295U) {
    goto case_4294967295;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967294U) {
    goto case_4294967294;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967291U) {
    goto case_4294967291;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967293U) {
    goto case_4294967293;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967292U) {
    goto case_4294967292;
  } else {
  }
  goto switch_default;
  switch_default: ;
  {
  if ((data->__annonCompField91.__annonCompField90.verdict & 255U) == 1U) {
    goto case_1;
  } else {
  }
  if ((data->__annonCompField91.__annonCompField90.verdict & 255U) == 0U) {
    goto case_0;
  } else {
  }
  if ((data->__annonCompField91.__annonCompField90.verdict & 255U) == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  case_0: ;
  case_3: ;
  goto ldv_51953;
  switch_default___0: ;
  return (-22);
  switch_break___0: ;
  }
  ldv_51953: ;
  case_4294967295: ;
  case_4294967294: ;
  case_4294967291:
  desc->len = 4U;
  goto ldv_51958;
  case_4294967293: ;
  case_4294967292: ;
  if ((unsigned long )tb[2] == (unsigned long )((struct nlattr *)0)) {
    return (-22);
  } else {
  }
  {
  chain = nf_tables_chain_lookup((struct nft_table const *)ctx->table, (struct nlattr const *)tb[2]);
  tmp___2 = IS_ERR((void const *)chain);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)chain);
    }
    return ((int )tmp___1);
  } else {
  }
  if ((int )chain->flags & 1) {
    return (-95);
  } else {
  }
  chain->use = chain->use + 1U;
  data->__annonCompField91.__annonCompField90.chain = chain;
  desc->len = 8U;
  goto ldv_51958;
  switch_break: ;
  }
  ldv_51958:
  desc->type = 4294967040U;
  return (0);
}
}
static int nft_verdict_dump(struct sk_buff *skb , struct nft_data const *data )
{
  struct nlattr *nest ;
  __u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  nest = nla_nest_start(skb, 2);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp = __fswab32(data->__annonCompField91.__annonCompField90.verdict);
  tmp___0 = nla_put_be32(skb, 1, tmp);
  }
  if (tmp___0 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967293U) {
    goto case_4294967293;
  } else {
  }
  if (data->__annonCompField91.__annonCompField90.verdict == 4294967292U) {
    goto case_4294967292;
  } else {
  }
  goto switch_break;
  case_4294967293: ;
  case_4294967292:
  {
  tmp___1 = nla_put_string(skb, 2, (char const *)(& (data->__annonCompField91.__annonCompField90.chain)->name));
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  switch_break: ;
  }
  {
  nla_nest_end(skb, nest);
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static int nft_value_init(struct nft_ctx const *ctx , struct nft_data *data , struct nft_data_desc *desc ,
                          struct nlattr const *nla )
{
  unsigned int len ;
  int tmp ;
  {
  {
  tmp = nla_len(nla);
  len = (unsigned int )tmp;
  }
  if (len == 0U) {
    return (-22);
  } else {
  }
  if (len > 16U) {
    return (-75);
  } else {
  }
  {
  nla_memcpy((void *)(& data->__annonCompField91.data), nla, 16);
  desc->type = 0;
  desc->len = len;
  }
  return (0);
}
}
static int nft_value_dump(struct sk_buff *skb , struct nft_data const *data , unsigned int len )
{
  int tmp ;
  {
  {
  tmp = nla_put(skb, 1, (int )len, (void const *)(& data->__annonCompField91.data));
  }
  return (tmp);
}
}
static struct nla_policy const nft_data_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {11U, 16U},
        {8U, (unsigned short)0}};
int nft_data_init(struct nft_ctx const *ctx , struct nft_data *data , struct nft_data_desc *desc ,
                  struct nlattr const *nla )
{
  struct nlattr *tb[3U] ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  {
  err = nla_parse_nested((struct nlattr **)(& tb), 2, nla, (struct nla_policy const *)(& nft_data_policy));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )tb[1] != (unsigned long )((struct nlattr *)0)) {
    {
    tmp = nft_value_init(ctx, data, desc, (struct nlattr const *)tb[1]);
    }
    return (tmp);
  } else {
  }
  if ((unsigned long )tb[2] != (unsigned long )((struct nlattr *)0) && (unsigned long )ctx != (unsigned long )((struct nft_ctx const *)0)) {
    {
    tmp___0 = nft_verdict_init(ctx, data, desc, (struct nlattr const *)tb[2]);
    }
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static char const __kstrtab_nft_data_init[14U] =
  { 'n', 'f', 't', '_',
        'd', 'a', 't', 'a',
        '_', 'i', 'n', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab_nft_data_init ;
struct kernel_symbol const __ksymtab_nft_data_init = {(unsigned long )(& nft_data_init), (char const *)(& __kstrtab_nft_data_init)};
void nft_data_uninit(struct nft_data const *data , enum nft_data_types type )
{
  int __ret_warn_on ;
  long tmp ;
  {
  {
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )type == 4294967040U) {
    goto case_4294967040;
  } else {
  }
  goto switch_default;
  case_0: ;
  return;
  case_4294967040: ;
  return;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("net/netfilter/nf_tables_api.c", 4128);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  switch_break: ;
  }
  return;
}
}
static char const __kstrtab_nft_data_uninit[16U] =
  { 'n', 'f', 't', '_',
        'd', 'a', 't', 'a',
        '_', 'u', 'n', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_nft_data_uninit ;
struct kernel_symbol const __ksymtab_nft_data_uninit = {(unsigned long )(& nft_data_uninit), (char const *)(& __kstrtab_nft_data_uninit)};
int nft_data_dump(struct sk_buff *skb , int attr , struct nft_data const *data ,
                  enum nft_data_types type , unsigned int len )
{
  struct nlattr *nest ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  nest = nla_nest_start(skb, attr);
  }
  if ((unsigned long )nest == (unsigned long )((struct nlattr *)0)) {
    return (-1);
  } else {
  }
  {
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )type == 4294967040U) {
    goto case_4294967040;
  } else {
  }
  goto switch_default;
  case_0:
  {
  err = nft_value_dump(skb, data, len);
  }
  goto ldv_52033;
  case_4294967040:
  {
  err = nft_verdict_dump(skb, data);
  }
  goto ldv_52033;
  switch_default:
  {
  err = -22;
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("net/netfilter/nf_tables_api.c", 4152);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  switch_break: ;
  }
  ldv_52033:
  {
  nla_nest_end(skb, nest);
  }
  return (err);
}
}
static char const __kstrtab_nft_data_dump[14U] =
  { 'n', 'f', 't', '_',
        'd', 'a', 't', 'a',
        '_', 'd', 'u', 'm',
        'p', '\000'};
struct kernel_symbol const __ksymtab_nft_data_dump ;
struct kernel_symbol const __ksymtab_nft_data_dump = {(unsigned long )(& nft_data_dump), (char const *)(& __kstrtab_nft_data_dump)};
static int nf_tables_init_net(struct net *net )
{
  {
  {
  INIT_LIST_HEAD(& net->nft.af_info);
  INIT_LIST_HEAD(& net->nft.commit_list);
  net->nft.base_seq = 1U;
  }
  return (0);
}
}
static struct pernet_operations nf_tables_net_ops = {{0, 0}, & nf_tables_init_net, 0, 0, 0, 0UL};
static int nf_tables_module_init(void)
{
  int err ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = kmalloc(18432UL, 208U);
  info = (struct nft_expr_info *)tmp;
  }
  if ((unsigned long )info == (unsigned long )((struct nft_expr_info *)0)) {
    err = -12;
    goto err1;
  } else {
  }
  {
  err = nf_tables_core_module_init();
  }
  if (err < 0) {
    goto err2;
  } else {
  }
  {
  err = nfnetlink_subsys_register(& nf_tables_subsys);
  }
  if (err < 0) {
    goto err3;
  } else {
  }
  {
  printk("\016nf_tables: (c) 2007-2009 Patrick McHardy <kaber@trash.net>\n");
  tmp___0 = register_pernet_subsys(& nf_tables_net_ops);
  }
  return (tmp___0);
  err3:
  {
  nf_tables_core_module_exit();
  }
  err2:
  {
  kfree((void const *)info);
  }
  err1: ;
  return (err);
}
}
static void nf_tables_module_exit(void)
{
  {
  {
  unregister_pernet_subsys(& nf_tables_net_ops);
  nfnetlink_subsys_unregister(& nf_tables_subsys);
  ldv_rcu_barrier_143();
  nf_tables_core_module_exit();
  kfree((void const *)info);
  }
  return;
}
}
void ldv_EMGentry_exit_nf_tables_module_exit_22_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_nf_tables_module_init_22_11(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_1_22_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_2_22_5(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_1_22_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_2_22_7(void) ;
void ldv_dummy_resourceless_instance_callback_0_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_0_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_10_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_10_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_10_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_10_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_12_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_13_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_13_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_13_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_14_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_14_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_15_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_15_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_15_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_15_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_16_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_16_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_16_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_16_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_17_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_17_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_17_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_17_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_18_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_18_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_18_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_18_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_19_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_19_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_19_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_19_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_20_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_20_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_20_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_20_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_20_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_20_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct net * ) , struct net *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_2_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_2_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_3_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_8_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_8_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_8_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_8_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_9_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 ) ;
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 ) ;
void ldv_entry_EMGentry_22(void *arg0 ) ;
int main(void) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_nfnl_callback_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_pernet_operations_dummy_resourceless_instance_21(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_19 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_21 ;
struct ldv_thread ldv_thread_22 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_nf_tables_module_exit_22_2(void (*arg0)(void) )
{
  {
  {
  nf_tables_module_exit();
  }
  return;
}
}
int ldv_EMGentry_init_nf_tables_module_init_22_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = nf_tables_module_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_1_22_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_2_22_5(void)
{
  {
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_1_22_6(void)
{
  struct ldv_struct_EMGentry_22 *cf_arg_0 ;
  struct ldv_struct_EMGentry_22 *cf_arg_1 ;
  struct ldv_struct_EMGentry_22 *cf_arg_2 ;
  struct ldv_struct_EMGentry_22 *cf_arg_3 ;
  struct ldv_struct_EMGentry_22 *cf_arg_4 ;
  struct ldv_struct_EMGentry_22 *cf_arg_5 ;
  struct ldv_struct_EMGentry_22 *cf_arg_6 ;
  struct ldv_struct_EMGentry_22 *cf_arg_7 ;
  struct ldv_struct_EMGentry_22 *cf_arg_8 ;
  struct ldv_struct_EMGentry_22 *cf_arg_9 ;
  struct ldv_struct_EMGentry_22 *cf_arg_10 ;
  struct ldv_struct_EMGentry_22 *cf_arg_11 ;
  struct ldv_struct_EMGentry_22 *cf_arg_12 ;
  struct ldv_struct_EMGentry_22 *cf_arg_13 ;
  struct ldv_struct_EMGentry_22 *cf_arg_14 ;
  struct ldv_struct_EMGentry_22 *cf_arg_15 ;
  struct ldv_struct_EMGentry_22 *cf_arg_16 ;
  struct ldv_struct_EMGentry_22 *cf_arg_17 ;
  struct ldv_struct_EMGentry_22 *cf_arg_18 ;
  struct ldv_struct_EMGentry_22 *cf_arg_19 ;
  struct ldv_struct_EMGentry_22 *cf_arg_20 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_22 *)tmp;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_22 *)tmp___0;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_22 *)tmp___1;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_2((void *)cf_arg_2);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_22 *)tmp___2;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_3((void *)cf_arg_3);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_22 *)tmp___3;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_22 *)tmp___4;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_5((void *)cf_arg_5);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_22 *)tmp___5;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_22 *)tmp___6;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_7((void *)cf_arg_7);
  tmp___7 = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_22 *)tmp___7;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_8((void *)cf_arg_8);
  tmp___8 = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_22 *)tmp___8;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_9((void *)cf_arg_9);
  tmp___9 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_EMGentry_22 *)tmp___9;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___10 = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_EMGentry_22 *)tmp___10;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___11 = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_22 *)tmp___11;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_12((void *)cf_arg_12);
  tmp___12 = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_EMGentry_22 *)tmp___12;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_13((void *)cf_arg_13);
  tmp___13 = ldv_xmalloc(4UL);
  cf_arg_14 = (struct ldv_struct_EMGentry_22 *)tmp___13;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_14((void *)cf_arg_14);
  tmp___14 = ldv_xmalloc(4UL);
  cf_arg_15 = (struct ldv_struct_EMGentry_22 *)tmp___14;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_15((void *)cf_arg_15);
  tmp___15 = ldv_xmalloc(4UL);
  cf_arg_16 = (struct ldv_struct_EMGentry_22 *)tmp___15;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_16((void *)cf_arg_16);
  tmp___16 = ldv_xmalloc(4UL);
  cf_arg_17 = (struct ldv_struct_EMGentry_22 *)tmp___16;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_17((void *)cf_arg_17);
  tmp___17 = ldv_xmalloc(4UL);
  cf_arg_18 = (struct ldv_struct_EMGentry_22 *)tmp___17;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_18((void *)cf_arg_18);
  tmp___18 = ldv_xmalloc(4UL);
  cf_arg_19 = (struct ldv_struct_EMGentry_22 *)tmp___18;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_19((void *)cf_arg_19);
  tmp___19 = ldv_xmalloc(4UL);
  cf_arg_20 = (struct ldv_struct_EMGentry_22 *)tmp___19;
  ldv_struct_nfnl_callback_dummy_resourceless_instance_20((void *)cf_arg_20);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_2_22_7(void)
{
  struct ldv_struct_EMGentry_22 *cf_arg_21 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_21 = (struct ldv_struct_EMGentry_22 *)tmp;
  ldv_struct_pernet_operations_dummy_resourceless_instance_21((void *)cf_arg_21);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newrule(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newset(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newsetelem(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getgen(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                               struct nlmsghdr * ,
                                                               struct nlattr ** ) ,
                                                   struct sock *arg1 , struct sk_buff *arg2 ,
                                                   struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct net * ) , struct net *arg1 )
{
  {
  {
  nf_tables_init_net(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getrule(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getset(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getsetelem(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_gettable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_newtable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delrule(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delset(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_delsetelem(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_abort(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_getchain(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct sock * , struct sk_buff * ,
                                                              struct nlmsghdr * ,
                                                              struct nlattr ** ) ,
                                                  struct sock *arg1 , struct sk_buff *arg2 ,
                                                  struct nlmsghdr *arg3 , struct nlattr **arg4 )
{
  {
  {
  nf_tables_deltable(arg1, arg2, (struct nlmsghdr const *)arg3, (struct nlattr const * const *)arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct sk_buff * ) ,
                                                  struct sk_buff *arg1 )
{
  {
  {
  nf_tables_commit(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_22(void *arg0 )
{
  void (*ldv_22_exit_nf_tables_module_exit_default)(void) ;
  int (*ldv_22_init_nf_tables_module_init_default)(void) ;
  int ldv_22_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_22_ret_default = ldv_EMGentry_init_nf_tables_module_init_22_11(ldv_22_init_nf_tables_module_init_default);
  ldv_22_ret_default = ldv_ldv_post_init_144(ldv_22_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_22_ret_default != 0);
    ldv_ldv_check_final_state_145();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_22_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_2_22_7();
      ldv_dispatch_register_dummy_resourceless_instance_1_22_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_2_22_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_1_22_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_nf_tables_module_exit_22_2(ldv_22_exit_nf_tables_module_exit_default);
    ldv_ldv_check_final_state_146();
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
  ldv_ldv_initialize_147();
  ldv_entry_EMGentry_22((void *)0);
  }
return 0;
}
}
void ldv_struct_nfnl_callback_dummy_resourceless_instance_0(void *arg0 )
{
  int (*ldv_0_callback_abort)(struct sk_buff * ) ;
  int (*ldv_0_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_0_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_0_callback_commit)(struct sk_buff * ) ;
  void (*ldv_0_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_0_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_0_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_0_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_0_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_0_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_0_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_0_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_0_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_0_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_0_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_0_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_0_container_struct_sk_buff_ptr ;
  struct sock *ldv_0_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_0;
  return;
  ldv_call_0:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_0_15(ldv_0_callback_validate, ldv_0_container_struct_nft_ctx_ptr,
                                                ldv_0_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_0_container_struct_nft_data_ptr);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_0_14(ldv_0_callback_select_ops, ldv_0_container_struct_nft_ctx_ptr,
                                                ldv_0_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_13(ldv_0_callback_init, ldv_0_container_struct_nft_ctx_ptr,
                                                ldv_0_container_struct_nft_expr_ptr,
                                                ldv_0_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_0_12(ldv_0_callback_eval, ldv_0_container_struct_nft_expr_ptr,
                                                ldv_0_container_struct_nft_data_ptr,
                                                ldv_0_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_0_11(ldv_0_callback_dump, ldv_0_container_struct_sk_buff_ptr,
                                                ldv_0_container_struct_nft_expr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_0_10(ldv_0_callback_destroy, ldv_0_container_struct_nft_ctx_ptr,
                                                ldv_0_container_struct_nft_expr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_0_9(ldv_0_callback_commit, ldv_0_container_struct_sk_buff_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_0_8(ldv_0_callback_call_batch, ldv_0_container_struct_sock_ptr,
                                               ldv_0_container_struct_sk_buff_ptr,
                                               ldv_0_container_struct_nlmsghdr_ptr,
                                               ldv_0_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_call, ldv_0_container_struct_sock_ptr,
                                               ldv_0_container_struct_sk_buff_ptr,
                                               ldv_0_container_struct_nlmsghdr_ptr,
                                               ldv_0_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_abort, ldv_0_container_struct_sk_buff_ptr);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  goto ldv_call_0;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_abort)(struct sk_buff * ) ;
  int (*ldv_1_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_1_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_1_callback_commit)(struct sk_buff * ) ;
  void (*ldv_1_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_1_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_1_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_1_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_1_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_1_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_1_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_1_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_1_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_1_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_1_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_1_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
  struct sock *ldv_1_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_1;
  return;
  ldv_call_1:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_validate, ldv_1_container_struct_nft_ctx_ptr,
                                                ldv_1_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_1_container_struct_nft_data_ptr);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_select_ops, ldv_1_container_struct_nft_ctx_ptr,
                                                ldv_1_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_init, ldv_1_container_struct_nft_ctx_ptr,
                                                ldv_1_container_struct_nft_expr_ptr,
                                                ldv_1_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_eval, ldv_1_container_struct_nft_expr_ptr,
                                                ldv_1_container_struct_nft_data_ptr,
                                                ldv_1_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_dump, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_struct_nft_expr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_destroy, ldv_1_container_struct_nft_ctx_ptr,
                                                ldv_1_container_struct_nft_expr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_9(ldv_1_callback_commit, ldv_1_container_struct_sk_buff_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_call_batch, ldv_1_container_struct_sock_ptr,
                                               ldv_1_container_struct_sk_buff_ptr,
                                               ldv_1_container_struct_nlmsghdr_ptr,
                                               ldv_1_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_call, ldv_1_container_struct_sock_ptr,
                                               ldv_1_container_struct_sk_buff_ptr,
                                               ldv_1_container_struct_nlmsghdr_ptr,
                                               ldv_1_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_abort, ldv_1_container_struct_sk_buff_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_10(void *arg0 )
{
  int (*ldv_10_callback_abort)(struct sk_buff * ) ;
  int (*ldv_10_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_10_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_10_callback_commit)(struct sk_buff * ) ;
  void (*ldv_10_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_10_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_10_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_10_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_10_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_10_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_10_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_10_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_10_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_10_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_10_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_10_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_10_container_struct_sk_buff_ptr ;
  struct sock *ldv_10_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_10_15(ldv_10_callback_validate, ldv_10_container_struct_nft_ctx_ptr,
                                                 ldv_10_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_10_container_struct_nft_data_ptr);
  }
  goto ldv_call_10;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_10_14(ldv_10_callback_select_ops, ldv_10_container_struct_nft_ctx_ptr,
                                                 ldv_10_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_10_13(ldv_10_callback_init, ldv_10_container_struct_nft_ctx_ptr,
                                                 ldv_10_container_struct_nft_expr_ptr,
                                                 ldv_10_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_10_12(ldv_10_callback_eval, ldv_10_container_struct_nft_expr_ptr,
                                                 ldv_10_container_struct_nft_data_ptr,
                                                 ldv_10_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_10_11(ldv_10_callback_dump, ldv_10_container_struct_sk_buff_ptr,
                                                 ldv_10_container_struct_nft_expr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_10_10(ldv_10_callback_destroy, ldv_10_container_struct_nft_ctx_ptr,
                                                 ldv_10_container_struct_nft_expr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_10_9(ldv_10_callback_commit, ldv_10_container_struct_sk_buff_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_10_8(ldv_10_callback_call_batch, ldv_10_container_struct_sock_ptr,
                                                ldv_10_container_struct_sk_buff_ptr,
                                                ldv_10_container_struct_nlmsghdr_ptr,
                                                ldv_10_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_10_7(ldv_10_callback_call, ldv_10_container_struct_sock_ptr,
                                                ldv_10_container_struct_sk_buff_ptr,
                                                ldv_10_container_struct_nlmsghdr_ptr,
                                                ldv_10_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_abort, ldv_10_container_struct_sk_buff_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_11(void *arg0 )
{
  int (*ldv_11_callback_abort)(struct sk_buff * ) ;
  int (*ldv_11_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_11_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_11_callback_commit)(struct sk_buff * ) ;
  void (*ldv_11_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_11_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_11_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_11_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_11_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_11_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_11_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_11_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_11_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_11_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_11_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_11_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_11_container_struct_sk_buff_ptr ;
  struct sock *ldv_11_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_11_15(ldv_11_callback_validate, ldv_11_container_struct_nft_ctx_ptr,
                                                 ldv_11_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_11_container_struct_nft_data_ptr);
  }
  goto ldv_call_11;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_11_14(ldv_11_callback_select_ops, ldv_11_container_struct_nft_ctx_ptr,
                                                 ldv_11_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_11_13(ldv_11_callback_init, ldv_11_container_struct_nft_ctx_ptr,
                                                 ldv_11_container_struct_nft_expr_ptr,
                                                 ldv_11_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_11_12(ldv_11_callback_eval, ldv_11_container_struct_nft_expr_ptr,
                                                 ldv_11_container_struct_nft_data_ptr,
                                                 ldv_11_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_11_11(ldv_11_callback_dump, ldv_11_container_struct_sk_buff_ptr,
                                                 ldv_11_container_struct_nft_expr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_11_10(ldv_11_callback_destroy, ldv_11_container_struct_nft_ctx_ptr,
                                                 ldv_11_container_struct_nft_expr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_11_9(ldv_11_callback_commit, ldv_11_container_struct_sk_buff_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_11_8(ldv_11_callback_call_batch, ldv_11_container_struct_sock_ptr,
                                                ldv_11_container_struct_sk_buff_ptr,
                                                ldv_11_container_struct_nlmsghdr_ptr,
                                                ldv_11_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_11_7(ldv_11_callback_call, ldv_11_container_struct_sock_ptr,
                                                ldv_11_container_struct_sk_buff_ptr,
                                                ldv_11_container_struct_nlmsghdr_ptr,
                                                ldv_11_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_abort, ldv_11_container_struct_sk_buff_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_12(void *arg0 )
{
  int (*ldv_12_callback_abort)(struct sk_buff * ) ;
  int (*ldv_12_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_12_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_12_callback_commit)(struct sk_buff * ) ;
  void (*ldv_12_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_12_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_12_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_12_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_12_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_12_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_12_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_12_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_12_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_12_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_12_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_12_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_12_container_struct_sk_buff_ptr ;
  struct sock *ldv_12_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_12_15(ldv_12_callback_validate, ldv_12_container_struct_nft_ctx_ptr,
                                                 ldv_12_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_12_container_struct_nft_data_ptr);
  }
  goto ldv_call_12;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_12_14(ldv_12_callback_select_ops, ldv_12_container_struct_nft_ctx_ptr,
                                                 ldv_12_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_12_13(ldv_12_callback_init, ldv_12_container_struct_nft_ctx_ptr,
                                                 ldv_12_container_struct_nft_expr_ptr,
                                                 ldv_12_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_12_12(ldv_12_callback_eval, ldv_12_container_struct_nft_expr_ptr,
                                                 ldv_12_container_struct_nft_data_ptr,
                                                 ldv_12_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_12_11(ldv_12_callback_dump, ldv_12_container_struct_sk_buff_ptr,
                                                 ldv_12_container_struct_nft_expr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_12_10(ldv_12_callback_destroy, ldv_12_container_struct_nft_ctx_ptr,
                                                 ldv_12_container_struct_nft_expr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_12_9(ldv_12_callback_commit, ldv_12_container_struct_sk_buff_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_12_8(ldv_12_callback_call_batch, ldv_12_container_struct_sock_ptr,
                                                ldv_12_container_struct_sk_buff_ptr,
                                                ldv_12_container_struct_nlmsghdr_ptr,
                                                ldv_12_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_12_7(ldv_12_callback_call, ldv_12_container_struct_sock_ptr,
                                                ldv_12_container_struct_sk_buff_ptr,
                                                ldv_12_container_struct_nlmsghdr_ptr,
                                                ldv_12_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_abort, ldv_12_container_struct_sk_buff_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  goto ldv_call_12;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_13(void *arg0 )
{
  int (*ldv_13_callback_abort)(struct sk_buff * ) ;
  int (*ldv_13_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_13_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_13_callback_commit)(struct sk_buff * ) ;
  void (*ldv_13_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_13_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_13_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_13_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_13_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_13_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_13_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_13_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_13_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_13_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_13_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_13_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_13_container_struct_sk_buff_ptr ;
  struct sock *ldv_13_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_13_15(ldv_13_callback_validate, ldv_13_container_struct_nft_ctx_ptr,
                                                 ldv_13_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_13_container_struct_nft_data_ptr);
  }
  goto ldv_call_13;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_13_14(ldv_13_callback_select_ops, ldv_13_container_struct_nft_ctx_ptr,
                                                 ldv_13_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_13_13(ldv_13_callback_init, ldv_13_container_struct_nft_ctx_ptr,
                                                 ldv_13_container_struct_nft_expr_ptr,
                                                 ldv_13_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_13_12(ldv_13_callback_eval, ldv_13_container_struct_nft_expr_ptr,
                                                 ldv_13_container_struct_nft_data_ptr,
                                                 ldv_13_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_13_11(ldv_13_callback_dump, ldv_13_container_struct_sk_buff_ptr,
                                                 ldv_13_container_struct_nft_expr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_13_10(ldv_13_callback_destroy, ldv_13_container_struct_nft_ctx_ptr,
                                                 ldv_13_container_struct_nft_expr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_13_9(ldv_13_callback_commit, ldv_13_container_struct_sk_buff_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_13_8(ldv_13_callback_call_batch, ldv_13_container_struct_sock_ptr,
                                                ldv_13_container_struct_sk_buff_ptr,
                                                ldv_13_container_struct_nlmsghdr_ptr,
                                                ldv_13_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_13_7(ldv_13_callback_call, ldv_13_container_struct_sock_ptr,
                                                ldv_13_container_struct_sk_buff_ptr,
                                                ldv_13_container_struct_nlmsghdr_ptr,
                                                ldv_13_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_abort, ldv_13_container_struct_sk_buff_ptr);
  }
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  goto ldv_call_13;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_abort)(struct sk_buff * ) ;
  int (*ldv_14_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_14_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_14_callback_commit)(struct sk_buff * ) ;
  void (*ldv_14_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_14_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_14_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_14_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_14_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_14_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_14_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_14_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_14_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_14_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_14_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_14_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_14_container_struct_sk_buff_ptr ;
  struct sock *ldv_14_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_14_15(ldv_14_callback_validate, ldv_14_container_struct_nft_ctx_ptr,
                                                 ldv_14_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_14_container_struct_nft_data_ptr);
  }
  goto ldv_call_14;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_14_14(ldv_14_callback_select_ops, ldv_14_container_struct_nft_ctx_ptr,
                                                 ldv_14_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_14_13(ldv_14_callback_init, ldv_14_container_struct_nft_ctx_ptr,
                                                 ldv_14_container_struct_nft_expr_ptr,
                                                 ldv_14_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_14_12(ldv_14_callback_eval, ldv_14_container_struct_nft_expr_ptr,
                                                 ldv_14_container_struct_nft_data_ptr,
                                                 ldv_14_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_14_11(ldv_14_callback_dump, ldv_14_container_struct_sk_buff_ptr,
                                                 ldv_14_container_struct_nft_expr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_14_10(ldv_14_callback_destroy, ldv_14_container_struct_nft_ctx_ptr,
                                                 ldv_14_container_struct_nft_expr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_14_9(ldv_14_callback_commit, ldv_14_container_struct_sk_buff_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_14_8(ldv_14_callback_call_batch, ldv_14_container_struct_sock_ptr,
                                                ldv_14_container_struct_sk_buff_ptr,
                                                ldv_14_container_struct_nlmsghdr_ptr,
                                                ldv_14_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_14_7(ldv_14_callback_call, ldv_14_container_struct_sock_ptr,
                                                ldv_14_container_struct_sk_buff_ptr,
                                                ldv_14_container_struct_nlmsghdr_ptr,
                                                ldv_14_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_abort, ldv_14_container_struct_sk_buff_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_15(void *arg0 )
{
  int (*ldv_15_callback_abort)(struct sk_buff * ) ;
  int (*ldv_15_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_15_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_15_callback_commit)(struct sk_buff * ) ;
  void (*ldv_15_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_15_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_15_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_15_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_15_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_15_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_15_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_15_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_15_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_15_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_15_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_15_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_15_container_struct_sk_buff_ptr ;
  struct sock *ldv_15_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_15_15(ldv_15_callback_validate, ldv_15_container_struct_nft_ctx_ptr,
                                                 ldv_15_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_15_container_struct_nft_data_ptr);
  }
  goto ldv_call_15;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_15_14(ldv_15_callback_select_ops, ldv_15_container_struct_nft_ctx_ptr,
                                                 ldv_15_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_15_13(ldv_15_callback_init, ldv_15_container_struct_nft_ctx_ptr,
                                                 ldv_15_container_struct_nft_expr_ptr,
                                                 ldv_15_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_15_12(ldv_15_callback_eval, ldv_15_container_struct_nft_expr_ptr,
                                                 ldv_15_container_struct_nft_data_ptr,
                                                 ldv_15_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_15_11(ldv_15_callback_dump, ldv_15_container_struct_sk_buff_ptr,
                                                 ldv_15_container_struct_nft_expr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_15_10(ldv_15_callback_destroy, ldv_15_container_struct_nft_ctx_ptr,
                                                 ldv_15_container_struct_nft_expr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_15_9(ldv_15_callback_commit, ldv_15_container_struct_sk_buff_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_15_8(ldv_15_callback_call_batch, ldv_15_container_struct_sock_ptr,
                                                ldv_15_container_struct_sk_buff_ptr,
                                                ldv_15_container_struct_nlmsghdr_ptr,
                                                ldv_15_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_15_7(ldv_15_callback_call, ldv_15_container_struct_sock_ptr,
                                                ldv_15_container_struct_sk_buff_ptr,
                                                ldv_15_container_struct_nlmsghdr_ptr,
                                                ldv_15_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_abort, ldv_15_container_struct_sk_buff_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_16(void *arg0 )
{
  int (*ldv_16_callback_abort)(struct sk_buff * ) ;
  int (*ldv_16_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_16_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_16_callback_commit)(struct sk_buff * ) ;
  void (*ldv_16_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_16_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_16_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_16_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_16_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_16_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_16_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_16_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_16_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_16_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_16_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_16_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_16_container_struct_sk_buff_ptr ;
  struct sock *ldv_16_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_16;
  return;
  ldv_call_16:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_16_15(ldv_16_callback_validate, ldv_16_container_struct_nft_ctx_ptr,
                                                 ldv_16_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_16_container_struct_nft_data_ptr);
  }
  goto ldv_call_16;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_16_14(ldv_16_callback_select_ops, ldv_16_container_struct_nft_ctx_ptr,
                                                 ldv_16_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_16_13(ldv_16_callback_init, ldv_16_container_struct_nft_ctx_ptr,
                                                 ldv_16_container_struct_nft_expr_ptr,
                                                 ldv_16_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_16_12(ldv_16_callback_eval, ldv_16_container_struct_nft_expr_ptr,
                                                 ldv_16_container_struct_nft_data_ptr,
                                                 ldv_16_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_16_11(ldv_16_callback_dump, ldv_16_container_struct_sk_buff_ptr,
                                                 ldv_16_container_struct_nft_expr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_16_10(ldv_16_callback_destroy, ldv_16_container_struct_nft_ctx_ptr,
                                                 ldv_16_container_struct_nft_expr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_16_9(ldv_16_callback_commit, ldv_16_container_struct_sk_buff_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_16_8(ldv_16_callback_call_batch, ldv_16_container_struct_sock_ptr,
                                                ldv_16_container_struct_sk_buff_ptr,
                                                ldv_16_container_struct_nlmsghdr_ptr,
                                                ldv_16_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_16_7(ldv_16_callback_call, ldv_16_container_struct_sock_ptr,
                                                ldv_16_container_struct_sk_buff_ptr,
                                                ldv_16_container_struct_nlmsghdr_ptr,
                                                ldv_16_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_abort, ldv_16_container_struct_sk_buff_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_17(void *arg0 )
{
  int (*ldv_17_callback_abort)(struct sk_buff * ) ;
  int (*ldv_17_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_17_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_17_callback_commit)(struct sk_buff * ) ;
  void (*ldv_17_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_17_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_17_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_17_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_17_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_17_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_17_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_17_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_17_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_17_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_17_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_17_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_17_container_struct_sk_buff_ptr ;
  struct sock *ldv_17_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_17;
  return;
  ldv_call_17:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_17_15(ldv_17_callback_validate, ldv_17_container_struct_nft_ctx_ptr,
                                                 ldv_17_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_17_container_struct_nft_data_ptr);
  }
  goto ldv_call_17;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_17_14(ldv_17_callback_select_ops, ldv_17_container_struct_nft_ctx_ptr,
                                                 ldv_17_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_17_13(ldv_17_callback_init, ldv_17_container_struct_nft_ctx_ptr,
                                                 ldv_17_container_struct_nft_expr_ptr,
                                                 ldv_17_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_17_12(ldv_17_callback_eval, ldv_17_container_struct_nft_expr_ptr,
                                                 ldv_17_container_struct_nft_data_ptr,
                                                 ldv_17_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_17_11(ldv_17_callback_dump, ldv_17_container_struct_sk_buff_ptr,
                                                 ldv_17_container_struct_nft_expr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_17_10(ldv_17_callback_destroy, ldv_17_container_struct_nft_ctx_ptr,
                                                 ldv_17_container_struct_nft_expr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_17_9(ldv_17_callback_commit, ldv_17_container_struct_sk_buff_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_17_8(ldv_17_callback_call_batch, ldv_17_container_struct_sock_ptr,
                                                ldv_17_container_struct_sk_buff_ptr,
                                                ldv_17_container_struct_nlmsghdr_ptr,
                                                ldv_17_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_17_7(ldv_17_callback_call, ldv_17_container_struct_sock_ptr,
                                                ldv_17_container_struct_sk_buff_ptr,
                                                ldv_17_container_struct_nlmsghdr_ptr,
                                                ldv_17_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_abort, ldv_17_container_struct_sk_buff_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_18(void *arg0 )
{
  int (*ldv_18_callback_abort)(struct sk_buff * ) ;
  int (*ldv_18_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_18_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_18_callback_commit)(struct sk_buff * ) ;
  void (*ldv_18_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_18_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_18_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_18_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_18_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_18_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_18_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_18_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_18_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_18_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_18_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_18_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_18_container_struct_sk_buff_ptr ;
  struct sock *ldv_18_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_18;
  return;
  ldv_call_18:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_18_15(ldv_18_callback_validate, ldv_18_container_struct_nft_ctx_ptr,
                                                 ldv_18_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_18_container_struct_nft_data_ptr);
  }
  goto ldv_call_18;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_18_14(ldv_18_callback_select_ops, ldv_18_container_struct_nft_ctx_ptr,
                                                 ldv_18_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_18_13(ldv_18_callback_init, ldv_18_container_struct_nft_ctx_ptr,
                                                 ldv_18_container_struct_nft_expr_ptr,
                                                 ldv_18_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_18_12(ldv_18_callback_eval, ldv_18_container_struct_nft_expr_ptr,
                                                 ldv_18_container_struct_nft_data_ptr,
                                                 ldv_18_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_18_11(ldv_18_callback_dump, ldv_18_container_struct_sk_buff_ptr,
                                                 ldv_18_container_struct_nft_expr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_18_10(ldv_18_callback_destroy, ldv_18_container_struct_nft_ctx_ptr,
                                                 ldv_18_container_struct_nft_expr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_18_9(ldv_18_callback_commit, ldv_18_container_struct_sk_buff_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_18_8(ldv_18_callback_call_batch, ldv_18_container_struct_sock_ptr,
                                                ldv_18_container_struct_sk_buff_ptr,
                                                ldv_18_container_struct_nlmsghdr_ptr,
                                                ldv_18_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_18_7(ldv_18_callback_call, ldv_18_container_struct_sock_ptr,
                                                ldv_18_container_struct_sk_buff_ptr,
                                                ldv_18_container_struct_nlmsghdr_ptr,
                                                ldv_18_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_abort, ldv_18_container_struct_sk_buff_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_19(void *arg0 )
{
  int (*ldv_19_callback_abort)(struct sk_buff * ) ;
  int (*ldv_19_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_19_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_19_callback_commit)(struct sk_buff * ) ;
  void (*ldv_19_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_19_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_19_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_19_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_19_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_19_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_19_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_19_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_19_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_19_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_19_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_19_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_19_container_struct_sk_buff_ptr ;
  struct sock *ldv_19_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_19;
  return;
  ldv_call_19:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_19_15(ldv_19_callback_validate, ldv_19_container_struct_nft_ctx_ptr,
                                                 ldv_19_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_19_container_struct_nft_data_ptr);
  }
  goto ldv_call_19;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_19_14(ldv_19_callback_select_ops, ldv_19_container_struct_nft_ctx_ptr,
                                                 ldv_19_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_19_13(ldv_19_callback_init, ldv_19_container_struct_nft_ctx_ptr,
                                                 ldv_19_container_struct_nft_expr_ptr,
                                                 ldv_19_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_19_12(ldv_19_callback_eval, ldv_19_container_struct_nft_expr_ptr,
                                                 ldv_19_container_struct_nft_data_ptr,
                                                 ldv_19_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_19_11(ldv_19_callback_dump, ldv_19_container_struct_sk_buff_ptr,
                                                 ldv_19_container_struct_nft_expr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_19_10(ldv_19_callback_destroy, ldv_19_container_struct_nft_ctx_ptr,
                                                 ldv_19_container_struct_nft_expr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_19_9(ldv_19_callback_commit, ldv_19_container_struct_sk_buff_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_19_8(ldv_19_callback_call_batch, ldv_19_container_struct_sock_ptr,
                                                ldv_19_container_struct_sk_buff_ptr,
                                                ldv_19_container_struct_nlmsghdr_ptr,
                                                ldv_19_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_19_7(ldv_19_callback_call, ldv_19_container_struct_sock_ptr,
                                                ldv_19_container_struct_sk_buff_ptr,
                                                ldv_19_container_struct_nlmsghdr_ptr,
                                                ldv_19_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_abort, ldv_19_container_struct_sk_buff_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_abort)(struct sk_buff * ) ;
  int (*ldv_2_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_2_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_2_callback_commit)(struct sk_buff * ) ;
  void (*ldv_2_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_2_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_2_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_2_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_2_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_2_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_2_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_2_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_2_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_2_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_2_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_2_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_2_container_struct_sk_buff_ptr ;
  struct sock *ldv_2_container_struct_sock_ptr ;
  int tmp ;
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_2_15(ldv_2_callback_validate, ldv_2_container_struct_nft_ctx_ptr,
                                                ldv_2_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_2_container_struct_nft_data_ptr);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_2_14(ldv_2_callback_select_ops, ldv_2_container_struct_nft_ctx_ptr,
                                                ldv_2_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_13(ldv_2_callback_init, ldv_2_container_struct_nft_ctx_ptr,
                                                ldv_2_container_struct_nft_expr_ptr,
                                                ldv_2_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_2_12(ldv_2_callback_eval, ldv_2_container_struct_nft_expr_ptr,
                                                ldv_2_container_struct_nft_data_ptr,
                                                ldv_2_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_2_11(ldv_2_callback_dump, ldv_2_container_struct_sk_buff_ptr,
                                                ldv_2_container_struct_nft_expr_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_2_10(ldv_2_callback_destroy, ldv_2_container_struct_nft_ctx_ptr,
                                                ldv_2_container_struct_nft_expr_ptr);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_2_9(ldv_2_callback_commit, ldv_2_container_struct_sk_buff_ptr);
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
  ldv_dummy_resourceless_instance_callback_2_8(ldv_2_callback_call_batch, ldv_2_container_struct_sock_ptr,
                                               ldv_2_container_struct_sk_buff_ptr,
                                               ldv_2_container_struct_nlmsghdr_ptr,
                                               ldv_2_container_struct_nlattr_ptr_ptr);
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
  ldv_dummy_resourceless_instance_callback_2_7(ldv_2_callback_call, ldv_2_container_struct_sock_ptr,
                                               ldv_2_container_struct_sk_buff_ptr,
                                               ldv_2_container_struct_nlmsghdr_ptr,
                                               ldv_2_container_struct_nlattr_ptr_ptr);
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
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_abort, ldv_2_container_struct_sk_buff_ptr);
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
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_20(void *arg0 )
{
  int (*ldv_20_callback_abort)(struct sk_buff * ) ;
  int (*ldv_20_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                              struct nlattr ** ) ;
  int (*ldv_20_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                    struct nlattr ** ) ;
  int (*ldv_20_callback_commit)(struct sk_buff * ) ;
  void (*ldv_20_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_20_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_20_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_20_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_20_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_20_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_20_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_20_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_20_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_20_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_20_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_20_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_20_container_struct_sk_buff_ptr ;
  struct sock *ldv_20_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_20;
  return;
  ldv_call_20:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_20_15(ldv_20_callback_validate, ldv_20_container_struct_nft_ctx_ptr,
                                                 ldv_20_container_struct_nft_expr_ptr,
                                                 (struct nft_data **)ldv_20_container_struct_nft_data_ptr);
  }
  goto ldv_call_20;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_20_14(ldv_20_callback_select_ops, ldv_20_container_struct_nft_ctx_ptr,
                                                 ldv_20_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_20_13(ldv_20_callback_init, ldv_20_container_struct_nft_ctx_ptr,
                                                 ldv_20_container_struct_nft_expr_ptr,
                                                 ldv_20_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_20_12(ldv_20_callback_eval, ldv_20_container_struct_nft_expr_ptr,
                                                 ldv_20_container_struct_nft_data_ptr,
                                                 ldv_20_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_20_11(ldv_20_callback_dump, ldv_20_container_struct_sk_buff_ptr,
                                                 ldv_20_container_struct_nft_expr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_20_10(ldv_20_callback_destroy, ldv_20_container_struct_nft_ctx_ptr,
                                                 ldv_20_container_struct_nft_expr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_20_9(ldv_20_callback_commit, ldv_20_container_struct_sk_buff_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_20_8(ldv_20_callback_call_batch, ldv_20_container_struct_sock_ptr,
                                                ldv_20_container_struct_sk_buff_ptr,
                                                ldv_20_container_struct_nlmsghdr_ptr,
                                                ldv_20_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_20_7(ldv_20_callback_call, ldv_20_container_struct_sock_ptr,
                                                ldv_20_container_struct_sk_buff_ptr,
                                                ldv_20_container_struct_nlmsghdr_ptr,
                                                ldv_20_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_abort, ldv_20_container_struct_sk_buff_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_abort)(struct sk_buff * ) ;
  int (*ldv_3_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_3_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_3_callback_commit)(struct sk_buff * ) ;
  void (*ldv_3_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_3_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_3_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_3_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_3_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_3_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_3_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_3_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_3_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_3_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_3_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_3_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_3_container_struct_sk_buff_ptr ;
  struct sock *ldv_3_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_3_15(ldv_3_callback_validate, ldv_3_container_struct_nft_ctx_ptr,
                                                ldv_3_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_3_container_struct_nft_data_ptr);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_3_14(ldv_3_callback_select_ops, ldv_3_container_struct_nft_ctx_ptr,
                                                ldv_3_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_13(ldv_3_callback_init, ldv_3_container_struct_nft_ctx_ptr,
                                                ldv_3_container_struct_nft_expr_ptr,
                                                ldv_3_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_3_12(ldv_3_callback_eval, ldv_3_container_struct_nft_expr_ptr,
                                                ldv_3_container_struct_nft_data_ptr,
                                                ldv_3_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_3_11(ldv_3_callback_dump, ldv_3_container_struct_sk_buff_ptr,
                                                ldv_3_container_struct_nft_expr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_3_10(ldv_3_callback_destroy, ldv_3_container_struct_nft_ctx_ptr,
                                                ldv_3_container_struct_nft_expr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_commit, ldv_3_container_struct_sk_buff_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_3_8(ldv_3_callback_call_batch, ldv_3_container_struct_sock_ptr,
                                               ldv_3_container_struct_sk_buff_ptr,
                                               ldv_3_container_struct_nlmsghdr_ptr,
                                               ldv_3_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_call, ldv_3_container_struct_sock_ptr,
                                               ldv_3_container_struct_sk_buff_ptr,
                                               ldv_3_container_struct_nlmsghdr_ptr,
                                               ldv_3_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_abort, ldv_3_container_struct_sk_buff_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  goto ldv_call_3;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_abort)(struct sk_buff * ) ;
  int (*ldv_4_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_4_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_4_callback_commit)(struct sk_buff * ) ;
  void (*ldv_4_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_4_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_4_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_4_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_4_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_4_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_4_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_4_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_4_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_4_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_4_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_4_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_4_container_struct_sk_buff_ptr ;
  struct sock *ldv_4_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_15(ldv_4_callback_validate, ldv_4_container_struct_nft_ctx_ptr,
                                                ldv_4_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_4_container_struct_nft_data_ptr);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_14(ldv_4_callback_select_ops, ldv_4_container_struct_nft_ctx_ptr,
                                                ldv_4_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_13(ldv_4_callback_init, ldv_4_container_struct_nft_ctx_ptr,
                                                ldv_4_container_struct_nft_expr_ptr,
                                                ldv_4_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_4_12(ldv_4_callback_eval, ldv_4_container_struct_nft_expr_ptr,
                                                ldv_4_container_struct_nft_data_ptr,
                                                ldv_4_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_4_11(ldv_4_callback_dump, ldv_4_container_struct_sk_buff_ptr,
                                                ldv_4_container_struct_nft_expr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_4_10(ldv_4_callback_destroy, ldv_4_container_struct_nft_ctx_ptr,
                                                ldv_4_container_struct_nft_expr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_commit, ldv_4_container_struct_sk_buff_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_4_8(ldv_4_callback_call_batch, ldv_4_container_struct_sock_ptr,
                                               ldv_4_container_struct_sk_buff_ptr,
                                               ldv_4_container_struct_nlmsghdr_ptr,
                                               ldv_4_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_call, ldv_4_container_struct_sock_ptr,
                                               ldv_4_container_struct_sk_buff_ptr,
                                               ldv_4_container_struct_nlmsghdr_ptr,
                                               ldv_4_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_abort, ldv_4_container_struct_sk_buff_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_5(void *arg0 )
{
  int (*ldv_5_callback_abort)(struct sk_buff * ) ;
  int (*ldv_5_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_5_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_5_callback_commit)(struct sk_buff * ) ;
  void (*ldv_5_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_5_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_5_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_5_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_5_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_5_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_5_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_5_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_5_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_5_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_5_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_5_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_5_container_struct_sk_buff_ptr ;
  struct sock *ldv_5_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_5_15(ldv_5_callback_validate, ldv_5_container_struct_nft_ctx_ptr,
                                                ldv_5_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_5_container_struct_nft_data_ptr);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_5_14(ldv_5_callback_select_ops, ldv_5_container_struct_nft_ctx_ptr,
                                                ldv_5_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_13(ldv_5_callback_init, ldv_5_container_struct_nft_ctx_ptr,
                                                ldv_5_container_struct_nft_expr_ptr,
                                                ldv_5_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_5_12(ldv_5_callback_eval, ldv_5_container_struct_nft_expr_ptr,
                                                ldv_5_container_struct_nft_data_ptr,
                                                ldv_5_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_5_11(ldv_5_callback_dump, ldv_5_container_struct_sk_buff_ptr,
                                                ldv_5_container_struct_nft_expr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_5_10(ldv_5_callback_destroy, ldv_5_container_struct_nft_ctx_ptr,
                                                ldv_5_container_struct_nft_expr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_commit, ldv_5_container_struct_sk_buff_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_call_batch, ldv_5_container_struct_sock_ptr,
                                               ldv_5_container_struct_sk_buff_ptr,
                                               ldv_5_container_struct_nlmsghdr_ptr,
                                               ldv_5_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_call, ldv_5_container_struct_sock_ptr,
                                               ldv_5_container_struct_sk_buff_ptr,
                                               ldv_5_container_struct_nlmsghdr_ptr,
                                               ldv_5_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_abort, ldv_5_container_struct_sk_buff_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_6(void *arg0 )
{
  int (*ldv_6_callback_abort)(struct sk_buff * ) ;
  int (*ldv_6_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_6_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_6_callback_commit)(struct sk_buff * ) ;
  void (*ldv_6_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_6_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_6_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_6_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_6_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_6_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_6_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_6_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_6_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_6_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_6_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_6_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_6_container_struct_sk_buff_ptr ;
  struct sock *ldv_6_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_6_15(ldv_6_callback_validate, ldv_6_container_struct_nft_ctx_ptr,
                                                ldv_6_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_6_container_struct_nft_data_ptr);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_6_14(ldv_6_callback_select_ops, ldv_6_container_struct_nft_ctx_ptr,
                                                ldv_6_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_6_13(ldv_6_callback_init, ldv_6_container_struct_nft_ctx_ptr,
                                                ldv_6_container_struct_nft_expr_ptr,
                                                ldv_6_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_6_12(ldv_6_callback_eval, ldv_6_container_struct_nft_expr_ptr,
                                                ldv_6_container_struct_nft_data_ptr,
                                                ldv_6_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_6_11(ldv_6_callback_dump, ldv_6_container_struct_sk_buff_ptr,
                                                ldv_6_container_struct_nft_expr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_6_10(ldv_6_callback_destroy, ldv_6_container_struct_nft_ctx_ptr,
                                                ldv_6_container_struct_nft_expr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_commit, ldv_6_container_struct_sk_buff_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_6_8(ldv_6_callback_call_batch, ldv_6_container_struct_sock_ptr,
                                               ldv_6_container_struct_sk_buff_ptr,
                                               ldv_6_container_struct_nlmsghdr_ptr,
                                               ldv_6_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_6_7(ldv_6_callback_call, ldv_6_container_struct_sock_ptr,
                                               ldv_6_container_struct_sk_buff_ptr,
                                               ldv_6_container_struct_nlmsghdr_ptr,
                                               ldv_6_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_abort, ldv_6_container_struct_sk_buff_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_7(void *arg0 )
{
  int (*ldv_7_callback_abort)(struct sk_buff * ) ;
  int (*ldv_7_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_7_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_7_callback_commit)(struct sk_buff * ) ;
  void (*ldv_7_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_7_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_7_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_7_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_7_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_7_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_7_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_7_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_7_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_7_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_7_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_7_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_7_container_struct_sk_buff_ptr ;
  struct sock *ldv_7_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_7_15(ldv_7_callback_validate, ldv_7_container_struct_nft_ctx_ptr,
                                                ldv_7_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_7_container_struct_nft_data_ptr);
  }
  goto ldv_call_7;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_7_14(ldv_7_callback_select_ops, ldv_7_container_struct_nft_ctx_ptr,
                                                ldv_7_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_7_13(ldv_7_callback_init, ldv_7_container_struct_nft_ctx_ptr,
                                                ldv_7_container_struct_nft_expr_ptr,
                                                ldv_7_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_7_12(ldv_7_callback_eval, ldv_7_container_struct_nft_expr_ptr,
                                                ldv_7_container_struct_nft_data_ptr,
                                                ldv_7_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_7_11(ldv_7_callback_dump, ldv_7_container_struct_sk_buff_ptr,
                                                ldv_7_container_struct_nft_expr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_7_10(ldv_7_callback_destroy, ldv_7_container_struct_nft_ctx_ptr,
                                                ldv_7_container_struct_nft_expr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_7_9(ldv_7_callback_commit, ldv_7_container_struct_sk_buff_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_7_8(ldv_7_callback_call_batch, ldv_7_container_struct_sock_ptr,
                                               ldv_7_container_struct_sk_buff_ptr,
                                               ldv_7_container_struct_nlmsghdr_ptr,
                                               ldv_7_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_7_7(ldv_7_callback_call, ldv_7_container_struct_sock_ptr,
                                               ldv_7_container_struct_sk_buff_ptr,
                                               ldv_7_container_struct_nlmsghdr_ptr,
                                               ldv_7_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_abort, ldv_7_container_struct_sk_buff_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_8(void *arg0 )
{
  int (*ldv_8_callback_abort)(struct sk_buff * ) ;
  int (*ldv_8_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_8_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_8_callback_commit)(struct sk_buff * ) ;
  void (*ldv_8_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_8_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_8_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_8_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_8_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_8_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_8_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_8_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_8_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_8_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_8_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_8_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_8_container_struct_sk_buff_ptr ;
  struct sock *ldv_8_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_8_15(ldv_8_callback_validate, ldv_8_container_struct_nft_ctx_ptr,
                                                ldv_8_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_8_container_struct_nft_data_ptr);
  }
  goto ldv_call_8;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_8_14(ldv_8_callback_select_ops, ldv_8_container_struct_nft_ctx_ptr,
                                                ldv_8_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_8_13(ldv_8_callback_init, ldv_8_container_struct_nft_ctx_ptr,
                                                ldv_8_container_struct_nft_expr_ptr,
                                                ldv_8_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_8_12(ldv_8_callback_eval, ldv_8_container_struct_nft_expr_ptr,
                                                ldv_8_container_struct_nft_data_ptr,
                                                ldv_8_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_8_11(ldv_8_callback_dump, ldv_8_container_struct_sk_buff_ptr,
                                                ldv_8_container_struct_nft_expr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_8_10(ldv_8_callback_destroy, ldv_8_container_struct_nft_ctx_ptr,
                                                ldv_8_container_struct_nft_expr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_8_9(ldv_8_callback_commit, ldv_8_container_struct_sk_buff_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_8_8(ldv_8_callback_call_batch, ldv_8_container_struct_sock_ptr,
                                               ldv_8_container_struct_sk_buff_ptr,
                                               ldv_8_container_struct_nlmsghdr_ptr,
                                               ldv_8_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_8_7(ldv_8_callback_call, ldv_8_container_struct_sock_ptr,
                                               ldv_8_container_struct_sk_buff_ptr,
                                               ldv_8_container_struct_nlmsghdr_ptr,
                                               ldv_8_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_abort, ldv_8_container_struct_sk_buff_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_11: ;
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
void ldv_struct_nfnl_callback_dummy_resourceless_instance_9(void *arg0 )
{
  int (*ldv_9_callback_abort)(struct sk_buff * ) ;
  int (*ldv_9_callback_call)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                             struct nlattr ** ) ;
  int (*ldv_9_callback_call_batch)(struct sock * , struct sk_buff * , struct nlmsghdr * ,
                                   struct nlattr ** ) ;
  int (*ldv_9_callback_commit)(struct sk_buff * ) ;
  void (*ldv_9_callback_destroy)(struct nft_ctx * , struct nft_expr * ) ;
  int (*ldv_9_callback_dump)(struct sk_buff * , struct nft_expr * ) ;
  void (*ldv_9_callback_eval)(struct nft_expr * , struct nft_data * , struct nft_pktinfo * ) ;
  int (*ldv_9_callback_init)(struct nft_ctx * , struct nft_expr * , struct nlattr ** ) ;
  struct nft_expr_ops *(*ldv_9_callback_select_ops)(struct nft_ctx * , struct nlattr ** ) ;
  int (*ldv_9_callback_validate)(struct nft_ctx * , struct nft_expr * , struct nft_data ** ) ;
  struct nft_ctx *ldv_9_container_struct_nft_ctx_ptr ;
  struct nft_data *ldv_9_container_struct_nft_data_ptr ;
  struct nft_expr *ldv_9_container_struct_nft_expr_ptr ;
  struct nft_pktinfo *ldv_9_container_struct_nft_pktinfo_ptr ;
  struct nlattr **ldv_9_container_struct_nlattr_ptr_ptr ;
  struct nlmsghdr *ldv_9_container_struct_nlmsghdr_ptr ;
  struct sk_buff *ldv_9_container_struct_sk_buff_ptr ;
  struct sock *ldv_9_container_struct_sock_ptr ;
  int tmp ;
  {
  goto ldv_call_9;
  return;
  ldv_call_9:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_9_15(ldv_9_callback_validate, ldv_9_container_struct_nft_ctx_ptr,
                                                ldv_9_container_struct_nft_expr_ptr,
                                                (struct nft_data **)ldv_9_container_struct_nft_data_ptr);
  }
  goto ldv_call_9;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_9_14(ldv_9_callback_select_ops, ldv_9_container_struct_nft_ctx_ptr,
                                                ldv_9_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_9_13(ldv_9_callback_init, ldv_9_container_struct_nft_ctx_ptr,
                                                ldv_9_container_struct_nft_expr_ptr,
                                                ldv_9_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_9_12(ldv_9_callback_eval, ldv_9_container_struct_nft_expr_ptr,
                                                ldv_9_container_struct_nft_data_ptr,
                                                ldv_9_container_struct_nft_pktinfo_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_9_11(ldv_9_callback_dump, ldv_9_container_struct_sk_buff_ptr,
                                                ldv_9_container_struct_nft_expr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_9_10(ldv_9_callback_destroy, ldv_9_container_struct_nft_ctx_ptr,
                                                ldv_9_container_struct_nft_expr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_9_9(ldv_9_callback_commit, ldv_9_container_struct_sk_buff_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_9_8(ldv_9_callback_call_batch, ldv_9_container_struct_sock_ptr,
                                               ldv_9_container_struct_sk_buff_ptr,
                                               ldv_9_container_struct_nlmsghdr_ptr,
                                               ldv_9_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_9_7(ldv_9_callback_call, ldv_9_container_struct_sock_ptr,
                                               ldv_9_container_struct_sk_buff_ptr,
                                               ldv_9_container_struct_nlmsghdr_ptr,
                                               ldv_9_container_struct_nlattr_ptr_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_abort, ldv_9_container_struct_sk_buff_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_11: ;
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
void ldv_struct_pernet_operations_dummy_resourceless_instance_21(void *arg0 )
{
  int (*ldv_21_callback_init)(struct net * ) ;
  struct net *ldv_21_container_struct_net_ptr ;
  int tmp ;
  {
  goto ldv_call_21;
  return;
  ldv_call_21:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_init, ldv_21_container_struct_net_ptr);
    }
    goto ldv_call_21;
  } else {
    return;
  }
  return;
}
}
static unsigned long ldv_find_next_bit_5(unsigned long const *addr , unsigned long size ,
                                         unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
static void ldv_synchronize_sched_35(void)
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void rcu_read_lock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_lock();
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_unlock();
  }
  return;
}
}
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
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
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
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
static bool ldv_try_module_get_125(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_126(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_127(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_128(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_129(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_130(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_131(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_132(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_133(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_134(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_135(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_136(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_137(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_138(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_139(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_find_first_zero_bit_140(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static void ldv_module_put_141(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_142(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_rcu_barrier_143(void)
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
static int ldv_ldv_post_init_144(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_145(void)
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
static void ldv_ldv_check_final_state_146(void)
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
static void ldv_ldv_initialize_147(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
extern void __compiletime_assert_60(void) ;
__inline static void nft_data_copy(struct nft_data *dst , struct nft_data const *src )
{
  bool __cond ;
  {
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_60();
    }
  } else {
  }
  *((u64 *)(& dst->__annonCompField91.data)) = *((u64 *)(& src->__annonCompField91.data));
  *((u64 *)(& dst->__annonCompField91.data) + 2U) = *((u64 *)(& src->__annonCompField91.data) + 2U);
  return;
}
}
__inline static enum nft_data_types nft_dreg_to_type(enum nft_registers reg )
{
  {
  return ((unsigned int )reg == 0U ? 4294967040U : 0);
}
}
static void nft_immediate_eval(struct nft_expr const *expr , struct nft_data *data ,
                               struct nft_pktinfo const *pkt )
{
  struct nft_immediate_expr const *priv ;
  void *tmp ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_immediate_expr const *)tmp;
  nft_data_copy(data + (unsigned long )priv->dreg, & priv->data);
  }
  return;
}
}
static struct nla_policy const nft_immediate_policy[3U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {8U, (unsigned short)0}};
static int nft_immediate_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                              struct nlattr const * const *tb )
{
  struct nft_immediate_expr *priv ;
  void *tmp ;
  struct nft_data_desc desc ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_immediate_expr *)tmp;
  }
  if ((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  priv->dreg = (unsigned char )tmp___1;
  err = nft_validate_output_register((enum nft_registers )priv->dreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = nft_data_init(ctx, & priv->data, & desc, *(tb + 2UL));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  priv->dlen = (u8 )desc.len;
  err = nft_validate_data_load(ctx, (enum nft_registers )priv->dreg, (struct nft_data const *)(& priv->data),
                               desc.type);
  }
  if (err < 0) {
    goto err1;
  } else {
  }
  return (0);
  err1:
  {
  nft_data_uninit((struct nft_data const *)(& priv->data), desc.type);
  }
  return (err);
}
}
static void nft_immediate_destroy(struct nft_ctx const *ctx , struct nft_expr const *expr )
{
  struct nft_immediate_expr const *priv ;
  void *tmp ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_immediate_expr const *)tmp;
  }
  return;
}
}
static int nft_immediate_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_immediate_expr const *priv ;
  void *tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  enum nft_data_types tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_immediate_expr const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->dreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nft_dreg_to_type((enum nft_registers )priv->dreg);
  tmp___3 = nft_data_dump(skb, 2, & priv->data, tmp___2, (unsigned int )priv->dlen);
  }
  return (tmp___3);
  nla_put_failure: ;
  return (-1);
}
}
static int nft_immediate_validate(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                                  struct nft_data const **data )
{
  struct nft_immediate_expr const *priv ;
  void *tmp ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_immediate_expr const *)tmp;
  }
  if ((unsigned int )((unsigned char )priv->dreg) == 0U) {
    *data = & priv->data;
  } else {
  }
  return (0);
}
}
static struct nft_expr_type nft_imm_type ;
static struct nft_expr_ops const nft_imm_ops =
     {& nft_immediate_eval, 32U, & nft_immediate_init, & nft_immediate_destroy, & nft_immediate_dump,
    & nft_immediate_validate, (struct nft_expr_type const *)(& nft_imm_type), 0};
static struct nft_expr_type nft_imm_type =
     {0, & nft_imm_ops, {0, 0}, "immediate", & __this_module, (struct nla_policy const *)(& nft_immediate_policy),
    2U, (unsigned char)0};
int nft_immediate_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_imm_type);
  }
  return (tmp);
}
}
void nft_immediate_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_imm_type);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_immediate_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_immediate_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                     (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_immediate_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_immediate_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_immediate_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                     (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_15(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nft_data ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_15(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nft_data ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nft_data **arg3 )
{
  {
  {
  nft_immediate_validate((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                         (struct nft_data const **)arg3);
  }
  return;
}
}
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static int nft_data_cmp(struct nft_data const *d1 , struct nft_data const *d2 ,
                                 unsigned int len )
{
  int tmp ;
  {
  {
  tmp = memcmp((void const *)(& d1->__annonCompField91.data), (void const *)(& d2->__annonCompField91.data),
               (size_t )len);
  }
  return (tmp);
}
}
static void nft_cmp_eval(struct nft_expr const *expr , struct nft_data *data , struct nft_pktinfo const *pkt )
{
  struct nft_cmp_expr const *priv ;
  void *tmp ;
  int d ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_expr const *)tmp;
  d = nft_data_cmp((struct nft_data const *)data + (unsigned long )priv->sreg, & priv->data,
                   (unsigned int )priv->len);
  }
  {
  if ((int )priv->op == 0) {
    goto case_0;
  } else {
  }
  if ((int )priv->op == 1) {
    goto case_1;
  } else {
  }
  if ((int )priv->op == 2) {
    goto case_2;
  } else {
  }
  if ((int )priv->op == 3) {
    goto case_3;
  } else {
  }
  if ((int )priv->op == 4) {
    goto case_4;
  } else {
  }
  if ((int )priv->op == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (d != 0) {
    goto mismatch;
  } else {
  }
  goto ldv_46911;
  case_1: ;
  if (d == 0) {
    goto mismatch;
  } else {
  }
  goto ldv_46911;
  case_2: ;
  if (d == 0) {
    goto mismatch;
  } else {
  }
  case_3: ;
  if (d > 0) {
    goto mismatch;
  } else {
  }
  goto ldv_46911;
  case_4: ;
  if (d == 0) {
    goto mismatch;
  } else {
  }
  case_5: ;
  if (d < 0) {
    goto mismatch;
  } else {
  }
  goto ldv_46911;
  switch_break: ;
  }
  ldv_46911: ;
  return;
  mismatch:
  data->__annonCompField91.__annonCompField90.verdict = 4294967294U;
  return;
}
}
static struct nla_policy const nft_cmp_policy[4U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {8U, (unsigned short)0}};
static int nft_cmp_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                        struct nlattr const * const *tb )
{
  struct nft_cmp_expr *priv ;
  void *tmp ;
  struct nft_data_desc desc ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  __be32 tmp___2 ;
  __u32 tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_expr *)tmp;
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  priv->sreg = (unsigned char )tmp___1;
  tmp___2 = nla_get_be32(*(tb + 2UL));
  tmp___3 = __fswab32(tmp___2);
  priv->op = (unsigned char )tmp___3;
  err = nft_data_init((struct nft_ctx const *)0, & priv->data, & desc, *(tb + 3UL));
  tmp___4 = ldv__builtin_expect(err < 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nft_cmp.c"),
                         "i" (82), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  priv->len = (u8 )desc.len;
  return (0);
}
}
static int nft_cmp_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_cmp_expr const *priv ;
  void *tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_expr const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->sreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = __fswab32((__u32 )priv->op);
  tmp___3 = nla_put_be32(skb, 2, tmp___2);
  }
  if (tmp___3 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___4 = nft_data_dump(skb, 3, & priv->data, 0, (unsigned int )priv->len);
  }
  if (tmp___4 < 0) {
    goto nla_put_failure;
  } else {
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static struct nft_expr_type nft_cmp_type ;
static struct nft_expr_ops const nft_cmp_ops =
     {& nft_cmp_eval, 32U, & nft_cmp_init, 0, & nft_cmp_dump, 0, (struct nft_expr_type const *)(& nft_cmp_type),
    0};
static int nft_cmp_fast_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                             struct nlattr const * const *tb )
{
  struct nft_cmp_fast_expr *priv ;
  void *tmp ;
  struct nft_data_desc desc ;
  struct nft_data data ;
  u32 mask ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_fast_expr *)tmp;
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  priv->sreg = (unsigned char )tmp___1;
  err = nft_data_init((struct nft_ctx const *)0, & data, & desc, *(tb + 3UL));
  tmp___2 = ldv__builtin_expect(err < 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nft_cmp.c"),
                         "i" (128), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  desc.len = desc.len * 8U;
  mask = nft_cmp_fast_mask(desc.len);
  priv->data = data.__annonCompField91.data[0] & mask;
  priv->len = (u8 )desc.len;
  }
  return (0);
}
}
static int nft_cmp_fast_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_cmp_fast_expr const *priv ;
  void *tmp ;
  struct nft_data data ;
  __u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_cmp_fast_expr const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->sreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = nla_put_be32(skb, 2, 0U);
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  data.__annonCompField91.data[0] = priv->data;
  tmp___3 = nft_data_dump(skb, 3, (struct nft_data const *)(& data), 0, (unsigned int )((unsigned char )priv->len) / 8U);
  }
  if (tmp___3 < 0) {
    goto nla_put_failure;
  } else {
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
struct nft_expr_ops const nft_cmp_fast_ops =
     {(void (*)(struct nft_expr const * , struct nft_data * , struct nft_pktinfo const * ))0,
    16U, & nft_cmp_fast_init, 0, & nft_cmp_fast_dump, 0, (struct nft_expr_type const *)(& nft_cmp_type),
    0};
static struct nft_expr_ops const *nft_cmp_select_ops(struct nft_ctx const *ctx ,
                                                       struct nlattr const * const *tb )
{
  struct nft_data_desc desc ;
  struct nft_data data ;
  enum nft_registers sreg ;
  enum nft_cmp_ops op ;
  int err ;
  void *tmp ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  void *tmp___2 ;
  __be32 tmp___3 ;
  __u32 tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  if (((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 3UL) == (unsigned long )((struct nlattr const * )0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_expr_ops const *)tmp);
  } else {
  }
  {
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  sreg = (enum nft_registers )tmp___1;
  err = nft_validate_input_register(sreg);
  }
  if (err < 0) {
    {
    tmp___2 = ERR_PTR((long )err);
    }
    return ((struct nft_expr_ops const *)tmp___2);
  } else {
  }
  {
  tmp___3 = nla_get_be32(*(tb + 2UL));
  tmp___4 = __fswab32(tmp___3);
  op = (enum nft_cmp_ops )tmp___4;
  }
  {
  if ((unsigned int )op == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )op == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )op == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )op == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )op == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )op == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  goto ldv_46967;
  switch_default:
  {
  tmp___5 = ERR_PTR(-22L);
  }
  return ((struct nft_expr_ops const *)tmp___5);
  switch_break: ;
  }
  ldv_46967:
  {
  err = nft_data_init((struct nft_ctx const *)0, & data, & desc, *(tb + 3UL));
  }
  if (err < 0) {
    {
    tmp___6 = ERR_PTR((long )err);
    }
    return ((struct nft_expr_ops const *)tmp___6);
  } else {
  }
  if (desc.len <= 4U && (unsigned int )op == 0U) {
    return (& nft_cmp_fast_ops);
  } else {
    return (& nft_cmp_ops);
  }
}
}
static struct nft_expr_type nft_cmp_type =
     {& nft_cmp_select_ops, 0, {0, 0}, "cmp", & __this_module, (struct nla_policy const *)(& nft_cmp_policy),
    3U, (unsigned char)0};
int nft_cmp_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_cmp_type);
  }
  return (tmp);
}
}
void nft_cmp_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_cmp_type);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_cmp_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_cmp_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_cmp_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_cmp_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2, (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_cmp_fast_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_cmp_fast_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                    (struct nlattr const * const *)arg3);
  }
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
static void nft_lookup_eval(struct nft_expr const *expr , struct nft_data *data ,
                            struct nft_pktinfo const *pkt )
{
  struct nft_lookup const *priv ;
  void *tmp ;
  struct nft_set const *set ;
  bool tmp___0 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_lookup const *)tmp;
  set = (struct nft_set const *)priv->set;
  tmp___0 = (*((set->ops)->lookup))(set, (struct nft_data const *)data + (unsigned long )priv->sreg,
                                    data + (unsigned long )priv->dreg);
  }
  if ((int )tmp___0) {
    return;
  } else {
  }
  data->__annonCompField91.__annonCompField90.verdict = 4294967294U;
  return;
}
}
static struct nla_policy const nft_lookup_policy[5U] = { {(unsigned short)0, (unsigned short)0},
        {5U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_lookup_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                           struct nlattr const * const *tb )
{
  struct nft_lookup *priv ;
  void *tmp ;
  struct nft_set *set ;
  int err ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  __be32 tmp___3 ;
  __u32 tmp___4 ;
  __be32 tmp___5 ;
  __u32 tmp___6 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_lookup *)tmp;
  }
  if ((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  set = nf_tables_set_lookup((struct nft_table const *)ctx->table, *(tb + 1UL));
  tmp___2 = IS_ERR((void const *)set);
  }
  if ((int )tmp___2) {
    if ((unsigned long )*(tb + 4UL) != (unsigned long )((struct nlattr const * )0)) {
      {
      set = nf_tables_set_lookup_byid((struct net const *)ctx->net, *(tb + 4UL));
      }
    } else {
    }
    {
    tmp___1 = IS_ERR((void const *)set);
    }
    if ((int )tmp___1) {
      {
      tmp___0 = PTR_ERR((void const *)set);
      }
      return ((int )tmp___0);
    } else {
    }
  } else {
  }
  {
  tmp___3 = nla_get_be32(*(tb + 2UL));
  tmp___4 = __fswab32(tmp___3);
  priv->sreg = (unsigned char )tmp___4;
  err = nft_validate_input_register((enum nft_registers )priv->sreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned long )*(tb + 3UL) != (unsigned long )((struct nlattr const * )0)) {
    if (((int )set->flags & 8) == 0) {
      return (-22);
    } else {
    }
    {
    tmp___5 = nla_get_be32(*(tb + 3UL));
    tmp___6 = __fswab32(tmp___5);
    priv->dreg = (unsigned char )tmp___6;
    err = nft_validate_output_register((enum nft_registers )priv->dreg);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    if ((unsigned int )priv->dreg == 0U) {
      if (set->dtype != 4294967040U) {
        return (-22);
      } else {
      }
    } else
    if (set->dtype == 4294967040U) {
      return (-22);
    } else {
    }
  } else
  if (((int )set->flags & 8) != 0) {
    return (-22);
  } else {
  }
  {
  err = nf_tables_bind_set(ctx, set, & priv->binding);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  priv->set = set;
  return (0);
}
}
static void nft_lookup_destroy(struct nft_ctx const *ctx , struct nft_expr const *expr )
{
  struct nft_lookup *priv ;
  void *tmp ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_lookup *)tmp;
  nf_tables_unbind_set(ctx, priv->set, & priv->binding);
  }
  return;
}
}
static int nft_lookup_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_lookup const *priv ;
  void *tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_lookup const *)tmp;
  tmp___0 = nla_put_string(skb, 1, (char const *)(& (priv->set)->name));
  }
  if (tmp___0 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___1 = __fswab32((__u32 )priv->sreg);
  tmp___2 = nla_put_be32(skb, 2, tmp___1);
  }
  if (tmp___2 != 0) {
    goto nla_put_failure;
  } else {
  }
  if (((int )(priv->set)->flags & 8) != 0) {
    {
    tmp___3 = __fswab32((__u32 )priv->dreg);
    tmp___4 = nla_put_be32(skb, 3, tmp___3);
    }
    if (tmp___4 != 0) {
      goto nla_put_failure;
    } else {
    }
  } else {
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static struct nft_expr_type nft_lookup_type ;
static struct nft_expr_ops const nft_lookup_ops =
     {& nft_lookup_eval, 48U, & nft_lookup_init, & nft_lookup_destroy, & nft_lookup_dump,
    0, (struct nft_expr_type const *)(& nft_lookup_type), 0};
static struct nft_expr_type nft_lookup_type =
     {0, & nft_lookup_ops, {0, 0}, "lookup", & __this_module, (struct nla_policy const *)(& nft_lookup_policy),
    4U, (unsigned char)0};
int nft_lookup_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_lookup_type);
  }
  return (tmp);
}
}
void nft_lookup_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_lookup_type);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_10(void (*arg0)(struct nft_ctx * ,
                                                                 struct nft_expr * ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_lookup_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_lookup_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                  (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_10(void (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_lookup_destroy((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
static void nft_bitwise_eval(struct nft_expr const *expr , struct nft_data *data ,
                             struct nft_pktinfo const *pkt )
{
  struct nft_bitwise const *priv ;
  void *tmp ;
  struct nft_data const *src ;
  struct nft_data *dst ;
  unsigned int i ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_bitwise const *)tmp;
  src = (struct nft_data const *)data + (unsigned long )priv->sreg;
  dst = data + (unsigned long )priv->dreg;
  i = 0U;
  }
  goto ldv_46913;
  ldv_46912:
  dst->__annonCompField91.data[i] = (src->__annonCompField91.data[i] & priv->mask.__annonCompField91.data[i]) ^ priv->xor.__annonCompField91.data[i];
  i = i + 1U;
  ldv_46913: ;
  if (i < (unsigned int )(((int )priv->len + 3) / 4)) {
    goto ldv_46912;
  } else {
  }
  return;
}
}
static struct nla_policy const nft_bitwise_policy[6U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {8U, (unsigned short)0},
        {8U, (unsigned short)0}};
static int nft_bitwise_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                            struct nlattr const * const *tb )
{
  struct nft_bitwise *priv ;
  void *tmp ;
  struct nft_data_desc d1 ;
  struct nft_data_desc d2 ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  __be32 tmp___2 ;
  __u32 tmp___3 ;
  __be32 tmp___4 ;
  __u32 tmp___5 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_bitwise *)tmp;
  }
  if (((((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 3UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 4UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 5UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  priv->sreg = (unsigned char )tmp___1;
  err = nft_validate_input_register((enum nft_registers )priv->sreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___2 = nla_get_be32(*(tb + 2UL));
  tmp___3 = __fswab32(tmp___2);
  priv->dreg = (unsigned char )tmp___3;
  err = nft_validate_output_register((enum nft_registers )priv->dreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = nft_validate_data_load(ctx, (enum nft_registers )priv->dreg, (struct nft_data const *)0,
                               0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___4 = nla_get_be32(*(tb + 3UL));
  tmp___5 = __fswab32(tmp___4);
  priv->len = (u8 )tmp___5;
  err = nft_data_init((struct nft_ctx const *)0, & priv->mask, & d1, *(tb + 4UL));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if (d1.len != (unsigned int )priv->len) {
    return (-22);
  } else {
  }
  {
  err = nft_data_init((struct nft_ctx const *)0, & priv->xor, & d2, *(tb + 5UL));
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if (d2.len != (unsigned int )priv->len) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int nft_bitwise_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_bitwise const *priv ;
  void *tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_bitwise const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->sreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = __fswab32((__u32 )priv->dreg);
  tmp___3 = nla_put_be32(skb, 2, tmp___2);
  }
  if (tmp___3 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___4 = __fswab32((__u32 )priv->len);
  tmp___5 = nla_put_be32(skb, 3, tmp___4);
  }
  if (tmp___5 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___6 = nft_data_dump(skb, 4, & priv->mask, 0, (unsigned int )priv->len);
  }
  if (tmp___6 < 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___7 = nft_data_dump(skb, 5, & priv->xor, 0, (unsigned int )priv->len);
  }
  if (tmp___7 < 0) {
    goto nla_put_failure;
  } else {
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static struct nft_expr_type nft_bitwise_type ;
static struct nft_expr_ops const nft_bitwise_ops =
     {& nft_bitwise_eval, 48U, & nft_bitwise_init, 0, & nft_bitwise_dump, 0, (struct nft_expr_type const *)(& nft_bitwise_type),
    0};
static struct nft_expr_type nft_bitwise_type =
     {0, & nft_bitwise_ops, {0, 0}, "bitwise", & __this_module, (struct nla_policy const *)(& nft_bitwise_policy),
    5U, (unsigned char)0};
int nft_bitwise_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_bitwise_type);
  }
  return (tmp);
}
}
void nft_bitwise_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_bitwise_type);
  }
  return;
}
}
static void nft_byteorder_eval(struct nft_expr const *expr , struct nft_data *data ,
                               struct nft_pktinfo const *pkt )
{
  struct nft_byteorder const *priv ;
  void *tmp ;
  struct nft_data *src ;
  struct nft_data *dst ;
  union __anonunion_s_289 *s ;
  union __anonunion_d_290 *d ;
  unsigned int i ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_byteorder const *)tmp;
  src = data + (unsigned long )priv->sreg;
  dst = data + (unsigned long )priv->dreg;
  s = (union __anonunion_292 *)(& src->__annonCompField91.data);
  d = (union __anonunion_294 *)(& dst->__annonCompField91.data);
  }
  {
  if ((int )priv->size == 4) {
    goto case_4;
  } else {
  }
  if ((int )priv->size == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_4: ;
  {
  if ((int )priv->op == 0) {
    goto case_0;
  } else {
  }
  if ((int )priv->op == 1) {
    goto case_1;
  } else {
  }
  goto switch_break___0;
  case_0:
  i = 0U;
  goto ldv_46920;
  ldv_46919:
  {
  tmp___0 = __fswab32((s + (unsigned long )i)->u32);
  (d + (unsigned long )i)->u32 = tmp___0;
  i = i + 1U;
  }
  ldv_46920: ;
  if (i < (unsigned int )((unsigned char )priv->len) / 4U) {
    goto ldv_46919;
  } else {
  }
  goto ldv_46922;
  case_1:
  i = 0U;
  goto ldv_46925;
  ldv_46924:
  {
  tmp___1 = __fswab32((s + (unsigned long )i)->u32);
  (d + (unsigned long )i)->u32 = tmp___1;
  i = i + 1U;
  }
  ldv_46925: ;
  if (i < (unsigned int )((unsigned char )priv->len) / 4U) {
    goto ldv_46924;
  } else {
  }
  goto ldv_46922;
  switch_break___0: ;
  }
  ldv_46922: ;
  goto ldv_46927;
  case_2: ;
  {
  if ((int )priv->op == 0) {
    goto case_0___0;
  } else {
  }
  if ((int )priv->op == 1) {
    goto case_1___0;
  } else {
  }
  goto switch_break___1;
  case_0___0:
  i = 0U;
  goto ldv_46931;
  ldv_46930:
  {
  tmp___2 = __fswab16((int )(s + (unsigned long )i)->u16);
  (d + (unsigned long )i)->u16 = tmp___2;
  i = i + 1U;
  }
  ldv_46931: ;
  if (i < (unsigned int )((unsigned char )priv->len) / 2U) {
    goto ldv_46930;
  } else {
  }
  goto ldv_46933;
  case_1___0:
  i = 0U;
  goto ldv_46936;
  ldv_46935:
  {
  tmp___3 = __fswab16((int )(s + (unsigned long )i)->u16);
  (d + (unsigned long )i)->u16 = tmp___3;
  i = i + 1U;
  }
  ldv_46936: ;
  if (i < (unsigned int )((unsigned char )priv->len) / 2U) {
    goto ldv_46935;
  } else {
  }
  goto ldv_46933;
  switch_break___1: ;
  }
  ldv_46933: ;
  goto ldv_46927;
  switch_break: ;
  }
  ldv_46927: ;
  return;
}
}
static struct nla_policy const nft_byteorder_policy[6U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_byteorder_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                              struct nlattr const * const *tb )
{
  struct nft_byteorder *priv ;
  void *tmp ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  __be32 tmp___2 ;
  __u32 tmp___3 ;
  __be32 tmp___4 ;
  __u32 tmp___5 ;
  __be32 tmp___6 ;
  __u32 tmp___7 ;
  __be32 tmp___8 ;
  __u32 tmp___9 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_byteorder *)tmp;
  }
  if (((((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 4UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 5UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 3UL) == (unsigned long )((struct nlattr const * )0)) {
    return (-22);
  } else {
  }
  {
  tmp___0 = nla_get_be32(*(tb + 1UL));
  tmp___1 = __fswab32(tmp___0);
  priv->sreg = (unsigned char )tmp___1;
  err = nft_validate_input_register((enum nft_registers )priv->sreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___2 = nla_get_be32(*(tb + 2UL));
  tmp___3 = __fswab32(tmp___2);
  priv->dreg = (unsigned char )tmp___3;
  err = nft_validate_output_register((enum nft_registers )priv->dreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = nft_validate_data_load(ctx, (enum nft_registers )priv->dreg, (struct nft_data const *)0,
                               0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___4 = nla_get_be32(*(tb + 3UL));
  tmp___5 = __fswab32(tmp___4);
  priv->op = (unsigned char )tmp___5;
  }
  {
  if ((int )priv->op == 0) {
    goto case_0;
  } else {
  }
  if ((int )priv->op == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  goto ldv_46948;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_46948:
  {
  tmp___6 = nla_get_be32(*(tb + 4UL));
  tmp___7 = __fswab32(tmp___6);
  priv->len = (u8 )tmp___7;
  }
  if ((unsigned int )priv->len - 1U > 15U) {
    return (-22);
  } else {
  }
  {
  tmp___8 = nla_get_be32(*(tb + 5UL));
  tmp___9 = __fswab32(tmp___8);
  priv->size = (u8 )tmp___9;
  }
  {
  if ((int )priv->size == 2) {
    goto case_2;
  } else {
  }
  if ((int )priv->size == 4) {
    goto case_4;
  } else {
  }
  goto switch_default___0;
  case_2: ;
  case_4: ;
  goto ldv_46952;
  switch_default___0: ;
  return (-22);
  switch_break___0: ;
  }
  ldv_46952: ;
  return (0);
}
}
static int nft_byteorder_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_byteorder const *priv ;
  void *tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  int tmp___7 ;
  __u32 tmp___8 ;
  int tmp___9 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_byteorder const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->sreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___2 = __fswab32((__u32 )priv->dreg);
  tmp___3 = nla_put_be32(skb, 2, tmp___2);
  }
  if (tmp___3 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___4 = __fswab32((__u32 )priv->op);
  tmp___5 = nla_put_be32(skb, 3, tmp___4);
  }
  if (tmp___5 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___6 = __fswab32((__u32 )priv->len);
  tmp___7 = nla_put_be32(skb, 4, tmp___6);
  }
  if (tmp___7 != 0) {
    goto nla_put_failure;
  } else {
  }
  {
  tmp___8 = __fswab32((__u32 )priv->size);
  tmp___9 = nla_put_be32(skb, 5, tmp___8);
  }
  if (tmp___9 != 0) {
    goto nla_put_failure;
  } else {
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static struct nft_expr_type nft_byteorder_type ;
static struct nft_expr_ops const nft_byteorder_ops =
     {& nft_byteorder_eval, 16U, & nft_byteorder_init, 0, & nft_byteorder_dump, 0, (struct nft_expr_type const *)(& nft_byteorder_type),
    0};
static struct nft_expr_type nft_byteorder_type =
     {0, & nft_byteorder_ops, {0, 0}, "byteorder", & __this_module, (struct nla_policy const *)(& nft_byteorder_policy),
    5U, (unsigned char)0};
int nft_byteorder_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_byteorder_type);
  }
  return (tmp);
}
}
void nft_byteorder_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_byteorder_type);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_byteorder_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_byteorder_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_byteorder_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                     (struct nlattr const * const *)arg3);
  }
  return;
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && (n & (n - 1UL)) == 0UL));
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static unsigned char *skb_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->mac_header);
}
}
__inline static int skb_mac_header_was_set(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((unsigned short )skb->mac_header) != 65535U);
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern int skb_copy_bits(struct sk_buff const * , int , void * , int ) ;
static void nft_payload_eval(struct nft_expr const *expr , struct nft_data *data ,
                             struct nft_pktinfo const *pkt )
{
  struct nft_payload const *priv ;
  void *tmp ;
  struct sk_buff const *skb ;
  struct nft_data *dest ;
  int offset ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_payload const *)tmp;
  skb = (struct sk_buff const *)pkt->skb;
  dest = data + (unsigned long )priv->dreg;
  }
  {
  if ((int )priv->base == 0) {
    goto case_0;
  } else {
  }
  if ((int )priv->base == 1) {
    goto case_1;
  } else {
  }
  if ((int )priv->base == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = skb_mac_header_was_set(skb);
  }
  if (tmp___0 == 0) {
    goto err;
  } else {
  }
  {
  tmp___1 = skb_mac_header(skb);
  offset = (int )((unsigned int )((long )tmp___1) - (unsigned int )((long )skb->data));
  }
  goto ldv_46908;
  case_1:
  {
  offset = skb_network_offset(skb);
  }
  goto ldv_46908;
  case_2:
  offset = (int )pkt->xt.thoff;
  goto ldv_46908;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"net/netfilter/nft_payload.c"),
                       "i" (42), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_46908:
  {
  offset = offset + (int )priv->offset;
  tmp___2 = skb_copy_bits(skb, offset, (void *)(& dest->__annonCompField91.data),
                          (int )priv->len);
  }
  if (tmp___2 < 0) {
    goto err;
  } else {
  }
  return;
  err:
  data->__annonCompField91.__annonCompField90.verdict = 4294967294U;
  return;
}
}
static struct nla_policy const nft_payload_policy[5U] = { {(unsigned short)0, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0},
        {3U, (unsigned short)0}};
static int nft_payload_init(struct nft_ctx const *ctx , struct nft_expr const *expr ,
                            struct nlattr const * const *tb )
{
  struct nft_payload *priv ;
  void *tmp ;
  int err ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  __be32 tmp___2 ;
  __u32 tmp___3 ;
  __be32 tmp___4 ;
  __u32 tmp___5 ;
  __be32 tmp___6 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_payload *)tmp;
  tmp___0 = nla_get_be32(*(tb + 2UL));
  tmp___1 = __fswab32(tmp___0);
  priv->base = (unsigned char )tmp___1;
  tmp___2 = nla_get_be32(*(tb + 3UL));
  tmp___3 = __fswab32(tmp___2);
  priv->offset = (u8 )tmp___3;
  tmp___4 = nla_get_be32(*(tb + 4UL));
  tmp___5 = __fswab32(tmp___4);
  priv->len = (u8 )tmp___5;
  tmp___6 = nla_get_be32(*(tb + 1UL));
  tmp___7 = __fswab32(tmp___6);
  priv->dreg = (unsigned char )tmp___7;
  err = nft_validate_output_register((enum nft_registers )priv->dreg);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___8 = nft_validate_data_load(ctx, (enum nft_registers )priv->dreg, (struct nft_data const *)0,
                                   0);
  }
  return (tmp___8);
}
}
static int nft_payload_dump(struct sk_buff *skb , struct nft_expr const *expr )
{
  struct nft_payload const *priv ;
  void *tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = nft_expr_priv(expr);
  priv = (struct nft_payload const *)tmp;
  tmp___0 = __fswab32((__u32 )priv->dreg);
  tmp___1 = nla_put_be32(skb, 1, tmp___0);
  }
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
    {
    tmp___2 = __fswab32((__u32 )priv->base);
    tmp___3 = nla_put_be32(skb, 2, tmp___2);
    }
    if (tmp___3 != 0) {
      goto nla_put_failure;
    } else {
      {
      tmp___4 = __fswab32((__u32 )priv->offset);
      tmp___5 = nla_put_be32(skb, 3, tmp___4);
      }
      if (tmp___5 != 0) {
        goto nla_put_failure;
      } else {
        {
        tmp___6 = __fswab32((__u32 )priv->len);
        tmp___7 = nla_put_be32(skb, 4, tmp___6);
        }
        if (tmp___7 != 0) {
          goto nla_put_failure;
        } else {
        }
      }
    }
  }
  return (0);
  nla_put_failure: ;
  return (-1);
}
}
static struct nft_expr_type nft_payload_type ;
static struct nft_expr_ops const nft_payload_ops =
     {& nft_payload_eval, 16U, & nft_payload_init, 0, & nft_payload_dump, 0, (struct nft_expr_type const *)(& nft_payload_type),
    0};
struct nft_expr_ops const nft_payload_fast_ops =
     {& nft_payload_eval, 16U, & nft_payload_init, 0, & nft_payload_dump, 0, (struct nft_expr_type const *)(& nft_payload_type),
    0};
static struct nft_expr_ops const *nft_payload_select_ops(struct nft_ctx const *ctx ,
                                                           struct nlattr const * const *tb )
{
  enum nft_payload_bases base ;
  unsigned int offset ;
  unsigned int len ;
  void *tmp ;
  __be32 tmp___0 ;
  __u32 tmp___1 ;
  void *tmp___2 ;
  __be32 tmp___3 ;
  __u32 tmp___4 ;
  __be32 tmp___5 ;
  __u32 tmp___6 ;
  void *tmp___7 ;
  bool tmp___8 ;
  {
  if ((((unsigned long )*(tb + 1UL) == (unsigned long )((struct nlattr const * )0) || (unsigned long )*(tb + 2UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 3UL) == (unsigned long )((struct nlattr const * )0)) || (unsigned long )*(tb + 4UL) == (unsigned long )((struct nlattr const * )0)) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct nft_expr_ops const *)tmp);
  } else {
  }
  {
  tmp___0 = nla_get_be32(*(tb + 2UL));
  tmp___1 = __fswab32(tmp___0);
  base = (enum nft_payload_bases )tmp___1;
  }
  {
  if ((unsigned int )base == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )base == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )base == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  goto ldv_46939;
  switch_default:
  {
  tmp___2 = ERR_PTR(-95L);
  }
  return ((struct nft_expr_ops const *)tmp___2);
  switch_break: ;
  }
  ldv_46939:
  {
  tmp___3 = nla_get_be32(*(tb + 3UL));
  tmp___4 = __fswab32(tmp___3);
  offset = tmp___4;
  tmp___5 = nla_get_be32(*(tb + 4UL));
  tmp___6 = __fswab32(tmp___5);
  len = tmp___6;
  }
  if (len - 1U > 15U) {
    {
    tmp___7 = ERR_PTR(-22L);
    }
    return ((struct nft_expr_ops const *)tmp___7);
  } else {
  }
  if (len <= 4U) {
    {
    tmp___8 = is_power_of_2((unsigned long )len);
    }
    if ((int )tmp___8) {
      if ((offset & (len - 1U)) == 0U && (unsigned int )base != 0U) {
        return (& nft_payload_fast_ops);
      } else {
        return (& nft_payload_ops);
      }
    } else {
      return (& nft_payload_ops);
    }
  } else {
    return (& nft_payload_ops);
  }
}
}
static struct nft_expr_type nft_payload_type =
     {& nft_payload_select_ops, 0, {0, 0}, "payload", & __this_module, (struct nla_policy const *)(& nft_payload_policy),
    4U, (unsigned char)0};
int nft_payload_module_init(void)
{
  int tmp ;
  {
  {
  tmp = nft_register_expr(& nft_payload_type);
  }
  return (tmp);
}
}
void nft_payload_module_exit(void)
{
  {
  {
  nft_unregister_expr(& nft_payload_type);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_11(int (*arg0)(struct sk_buff * ,
                                                                struct nft_expr * ) ,
                                                    struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_12(void (*arg0)(struct nft_expr * ,
                                                                 struct nft_data * ,
                                                                 struct nft_pktinfo * ) ,
                                                    struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                    struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_13(int (*arg0)(struct nft_ctx * ,
                                                                struct nft_expr * ,
                                                                struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                    struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                 struct nlattr ** ) ,
                                                    struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_11(int (*arg0)(struct sk_buff * ,
                                                               struct nft_expr * ) ,
                                                   struct sk_buff *arg1 , struct nft_expr *arg2 )
{
  {
  {
  nft_payload_dump(arg1, (struct nft_expr const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_12(void (*arg0)(struct nft_expr * ,
                                                                struct nft_data * ,
                                                                struct nft_pktinfo * ) ,
                                                   struct nft_expr *arg1 , struct nft_data *arg2 ,
                                                   struct nft_pktinfo *arg3 )
{
  {
  {
  nft_payload_eval((struct nft_expr const *)arg1, arg2, (struct nft_pktinfo const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct nft_ctx * ,
                                                               struct nft_expr * ,
                                                               struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nft_expr *arg2 ,
                                                   struct nlattr **arg3 )
{
  {
  {
  nft_payload_init((struct nft_ctx const *)arg1, (struct nft_expr const *)arg2,
                   (struct nlattr const * const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_14(struct nft_expr_ops *(*arg0)(struct nft_ctx * ,
                                                                                struct nlattr ** ) ,
                                                   struct nft_ctx *arg1 , struct nlattr **arg2 )
{
  {
  {
  nft_payload_select_ops((struct nft_ctx const *)arg1, (struct nlattr const * const *)arg2);
  }
  return;
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
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
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
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
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
int ldv_pre_register_netdev(void) ;
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
void ldv_free(void *s ) ;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
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
void *external_alloc(void);
void *__alloc_percpu(size_t arg0, size_t arg1) {
  return (void *)external_alloc();
}
void __compiletime_assert_60() {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __netlink_dump_start(struct sock *arg0, struct sk_buff *arg1, const struct nlmsghdr *arg2, struct netlink_dump_control *arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct nlmsghdr *__nlmsg_put(struct sk_buff *arg0, u32 arg1, u32 arg2, int arg3, int arg4, int arg5) {
  return (struct nlmsghdr *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
void free_percpu(void *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_zeroed_page(gfp_t arg0) {
  return __VERIFIER_nondet_ulong();
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lockdep_nfnl_is_held(__u8 arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int netlink_unicast(struct sock *arg0, struct sk_buff *arg1, __u32 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void nf_log_packet(struct net *arg0, u_int8_t arg1, unsigned int arg2, const struct sk_buff *arg3, const struct net_device *arg4, const struct net_device *arg5, const struct nf_loginfo *arg6, const char *arg7, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int nf_register_hooks(struct nf_hook_ops *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void nf_unregister_hooks(struct nf_hook_ops *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int nfnetlink_has_listeners(struct net *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nfnetlink_send(struct sk_buff *arg0, struct net *arg1, u32 arg2, unsigned int arg3, int arg4, gfp_t arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nfnetlink_set_err(struct net *arg0, u32 arg1, u32 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nfnetlink_subsys_register(const struct nfnetlink_subsystem *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nfnetlink_subsys_unregister(const struct nfnetlink_subsystem *arg0) {
  return __VERIFIER_nondet_int();
}
void nfnl_lock(__u8 arg0) {
  return;
}
void nfnl_unlock(__u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int nla_memcpy(void *arg0, const struct nlattr *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_parse(struct nlattr **arg0, int arg1, const struct nlattr *arg2, int arg3, const struct nla_policy *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_put(struct sk_buff *arg0, int arg1, int arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_strcmp(const struct nlattr *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t nla_strlcpy(char *arg0, const struct nlattr *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_pernet_subsys(struct pernet_operations *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int skb_copy_bits(const struct sk_buff *arg0, int arg1, void *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
void *external_alloc(void);
char *strnchr(const char *arg0, size_t arg1, int arg2) {
  return (char *)external_alloc();
}
void unregister_pernet_subsys(struct pernet_operations *arg0) {
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
