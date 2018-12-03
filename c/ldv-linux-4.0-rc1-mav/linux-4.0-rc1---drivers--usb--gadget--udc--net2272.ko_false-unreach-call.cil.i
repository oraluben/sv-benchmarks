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
typedef __u16 __le16;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
struct __anonstruct_futex_33 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_34 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_35 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_32 {
   struct __anonstruct_futex_33 futex ;
   struct __anonstruct_nanosleep_34 nanosleep ;
   struct __anonstruct_poll_35 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_32 __annonCompField19 ;
};
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_48 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_48 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union __anonunion____missing_field_name_49 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
union __anonunion____missing_field_name_50 {
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
   union __anonunion____missing_field_name_50 __annonCompField21 ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_51 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_51 kuid_t;
struct __anonstruct_kgid_t_52 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_52 kgid_t;
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
struct __anonstruct_nodemask_t_53 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_53 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_118 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_118 mm_context_t;
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
struct pdev_archdata {
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
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
struct __anonstruct____missing_field_name_151 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_152 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField34 ;
   struct __anonstruct____missing_field_name_152 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
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
union __anonunion____missing_field_name_153 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_155 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_159 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_158 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_159 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_156 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_157 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField38 ;
   union __anonunion____missing_field_name_156 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_161 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_162 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_160 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_161 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_162 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_163 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_153 __annonCompField37 ;
   struct __anonstruct____missing_field_name_154 __annonCompField43 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   union __anonunion____missing_field_name_163 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_164 {
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
   struct __anonstruct_shared_164 shared ;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
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
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_173 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_173 _addr_bnd ;
};
struct __anonstruct__sigpoll_174 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_175 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_174 _sigpoll ;
   struct __anonstruct__sigsys_175 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
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
union __anonunion____missing_field_name_180 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_181 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_183 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_182 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_183 __annonCompField52 ;
};
union __anonunion_type_data_184 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_186 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_185 {
   union __anonunion_payload_186 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_180 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_181 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_182 __annonCompField53 ;
   union __anonunion_type_data_184 type_data ;
   union __anonunion____missing_field_name_185 __annonCompField54 ;
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
union __anonunion____missing_field_name_191 {
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
   union __anonunion____missing_field_name_191 __annonCompField58 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct rtc_time {
   int tm_sec ;
   int tm_min ;
   int tm_hour ;
   int tm_mday ;
   int tm_mon ;
   int tm_year ;
   int tm_wday ;
   int tm_yday ;
   int tm_isdst ;
};
struct rtc_wkalrm {
   unsigned char enabled ;
   unsigned char pending ;
   struct rtc_time time ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_197 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_196 {
   struct __anonstruct____missing_field_name_197 __annonCompField62 ;
};
struct lockref {
   union __anonunion____missing_field_name_196 __annonCompField63 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_199 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_198 {
   struct __anonstruct____missing_field_name_199 __annonCompField64 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_198 __annonCompField65 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_200 {
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
   union __anonunion_d_u_200 d_u ;
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
struct __anonstruct____missing_field_name_202 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_201 {
   struct __anonstruct____missing_field_name_202 __annonCompField66 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_201 __annonCompField67 ;
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
struct export_operations;
struct iovec;
struct nameidata;
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
struct __anonstruct_kprojid_t_204 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_204 kprojid_t;
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
union __anonunion____missing_field_name_205 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_205 __annonCompField69 ;
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
union __anonunion____missing_field_name_208 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_209 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_208 __annonCompField70 ;
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
   union __anonunion____missing_field_name_209 __annonCompField71 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_210 __annonCompField72 ;
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
union __anonunion_f_u_211 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_211 f_u ;
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
struct __anonstruct_afs_213 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_212 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_213 afs ;
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
   union __anonunion_fl_u_212 fl_u ;
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
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct rtc_class_ops {
   int (*open)(struct device * ) ;
   void (*release)(struct device * ) ;
   int (*ioctl)(struct device * , unsigned int , unsigned long ) ;
   int (*read_time)(struct device * , struct rtc_time * ) ;
   int (*set_time)(struct device * , struct rtc_time * ) ;
   int (*read_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*set_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*proc)(struct device * , struct seq_file * ) ;
   int (*set_mmss)(struct device * , unsigned long ) ;
   int (*read_callback)(struct device * , int ) ;
   int (*alarm_irq_enable)(struct device * , unsigned int ) ;
};
struct rtc_task {
   void (*func)(void * ) ;
   void *private_data ;
};
struct rtc_timer {
   struct rtc_task task ;
   struct timerqueue_node node ;
   ktime_t period ;
   int enabled ;
};
struct rtc_device {
   struct device dev ;
   struct module *owner ;
   int id ;
   char name[20U] ;
   struct rtc_class_ops const *ops ;
   struct mutex ops_lock ;
   struct cdev char_dev ;
   unsigned long flags ;
   unsigned long irq_data ;
   spinlock_t irq_lock ;
   wait_queue_head_t irq_queue ;
   struct fasync_struct *async_queue ;
   struct rtc_task *irq_task ;
   spinlock_t irq_task_lock ;
   int irq_freq ;
   int max_user_freq ;
   struct timerqueue_head timerqueue ;
   struct rtc_timer aie_timer ;
   struct rtc_timer uie_rtctimer ;
   struct hrtimer pie_timer ;
   int pie_enabled ;
   struct work_struct irqwork ;
   int uie_unsupported ;
   struct work_struct uie_task ;
   struct timer_list uie_timer ;
   unsigned int oldsecs ;
   unsigned char uie_irq_active : 1 ;
   unsigned char stop_uie_polling : 1 ;
   unsigned char uie_task_active : 1 ;
   unsigned char uie_timer_active : 1 ;
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
union __anonunion____missing_field_name_219 {
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
   union __anonunion____missing_field_name_219 __annonCompField73 ;
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
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
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
struct usb_ep;
struct usb_request {
   void *buf ;
   unsigned int length ;
   dma_addr_t dma ;
   struct scatterlist *sg ;
   unsigned int num_sgs ;
   unsigned int num_mapped_sgs ;
   unsigned short stream_id ;
   unsigned char no_interrupt : 1 ;
   unsigned char zero : 1 ;
   unsigned char short_not_ok : 1 ;
   void (*complete)(struct usb_ep * , struct usb_request * ) ;
   void *context ;
   struct list_head list ;
   int status ;
   unsigned int actual ;
};
struct usb_ep_ops {
   int (*enable)(struct usb_ep * , struct usb_endpoint_descriptor const * ) ;
   int (*disable)(struct usb_ep * ) ;
   struct usb_request *(*alloc_request)(struct usb_ep * , gfp_t ) ;
   void (*free_request)(struct usb_ep * , struct usb_request * ) ;
   int (*queue)(struct usb_ep * , struct usb_request * , gfp_t ) ;
   int (*dequeue)(struct usb_ep * , struct usb_request * ) ;
   int (*set_halt)(struct usb_ep * , int ) ;
   int (*set_wedge)(struct usb_ep * ) ;
   int (*fifo_status)(struct usb_ep * ) ;
   void (*fifo_flush)(struct usb_ep * ) ;
};
struct usb_ep {
   void *driver_data ;
   char const *name ;
   struct usb_ep_ops const *ops ;
   struct list_head ep_list ;
   unsigned short maxpacket ;
   unsigned short maxpacket_limit ;
   unsigned short max_streams ;
   unsigned char mult : 2 ;
   unsigned char maxburst : 5 ;
   u8 address ;
   struct usb_endpoint_descriptor const *desc ;
   struct usb_ss_ep_comp_descriptor const *comp_desc ;
};
struct usb_dcd_config_params {
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_gadget;
struct usb_gadget_driver;
struct usb_gadget_ops {
   int (*get_frame)(struct usb_gadget * ) ;
   int (*wakeup)(struct usb_gadget * ) ;
   int (*set_selfpowered)(struct usb_gadget * , int ) ;
   int (*vbus_session)(struct usb_gadget * , int ) ;
   int (*vbus_draw)(struct usb_gadget * , unsigned int ) ;
   int (*pullup)(struct usb_gadget * , int ) ;
   int (*ioctl)(struct usb_gadget * , unsigned int , unsigned long ) ;
   void (*get_config_params)(struct usb_dcd_config_params * ) ;
   int (*udc_start)(struct usb_gadget * , struct usb_gadget_driver * ) ;
   int (*udc_stop)(struct usb_gadget * ) ;
};
struct usb_gadget {
   struct work_struct work ;
   struct usb_gadget_ops const *ops ;
   struct usb_ep *ep0 ;
   struct list_head ep_list ;
   enum usb_device_speed speed ;
   enum usb_device_speed max_speed ;
   enum usb_device_state state ;
   char const *name ;
   struct device dev ;
   unsigned int out_epnum ;
   unsigned int in_epnum ;
   unsigned char sg_supported : 1 ;
   unsigned char is_otg : 1 ;
   unsigned char is_a_peripheral : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char a_hnp_support : 1 ;
   unsigned char a_alt_hnp_support : 1 ;
   unsigned char quirk_ep_out_aligned_size : 1 ;
   unsigned char is_selfpowered : 1 ;
};
struct usb_gadget_driver {
   char *function ;
   enum usb_device_speed max_speed ;
   int (*bind)(struct usb_gadget * , struct usb_gadget_driver * ) ;
   void (*unbind)(struct usb_gadget * ) ;
   int (*setup)(struct usb_gadget * , struct usb_ctrlrequest const * ) ;
   void (*disconnect)(struct usb_gadget * ) ;
   void (*suspend)(struct usb_gadget * ) ;
   void (*resume)(struct usb_gadget * ) ;
   void (*reset)(struct usb_gadget * ) ;
   struct device_driver driver ;
};
struct net2272;
struct net2272_ep {
   struct usb_ep ep ;
   struct net2272 *dev ;
   unsigned long irqs ;
   struct list_head queue ;
   struct usb_endpoint_descriptor const *desc ;
   unsigned char num ;
   unsigned short fifo_size : 12 ;
   unsigned char stopped : 1 ;
   unsigned char wedged : 1 ;
   unsigned char is_in : 1 ;
   unsigned char is_iso : 1 ;
   unsigned char dma : 1 ;
   unsigned char not_empty : 1 ;
};
struct __anonstruct_rdk1_221 {
   void *plx9054_base_addr ;
   void *epld_base_addr ;
};
struct __anonstruct_rdk2_222 {
   void *fpga_base_addr ;
};
union __anonunion____missing_field_name_220 {
   struct __anonstruct_rdk1_221 rdk1 ;
   struct __anonstruct_rdk2_222 rdk2 ;
};
struct net2272 {
   struct usb_gadget gadget ;
   struct device *dev ;
   unsigned short dev_id ;
   spinlock_t lock ;
   struct net2272_ep ep[4U] ;
   struct usb_gadget_driver *driver ;
   unsigned char protocol_stall : 1 ;
   unsigned char softconnect : 1 ;
   unsigned char wakeup : 1 ;
   unsigned char dma_eot_polarity : 1 ;
   unsigned char dma_dack_polarity : 1 ;
   unsigned char dma_dreq_polarity : 1 ;
   unsigned char dma_busy : 1 ;
   u16 chiprev ;
   u8 pagesel ;
   unsigned int irq ;
   unsigned short fifo_mode ;
   unsigned int base_shift ;
   u16 *base_addr ;
   union __anonunion____missing_field_name_220 __annonCompField74 ;
};
struct net2272_request {
   struct usb_request req ;
   struct list_head queue ;
   unsigned char mapped : 1 ;
   unsigned char valid : 1 ;
};
union __anonunion_u_224 {
   u8 raw[8U] ;
   struct usb_ctrlrequest r ;
};
struct ldv_struct_free_irq_9 {
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
struct ldv_struct_pci_instance_1 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_2 {
   struct platform_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
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
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_undef_int(void) ;
void *ldv_linux_arch_io_io_mem_remap(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_148(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_145(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_149(void) ;
static void ldv_ldv_pre_probe_151(void) ;
static void ldv_ldv_pre_probe_153(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_150(int retval ) ;
static int ldv_ldv_post_probe_152(int retval ) ;
static int ldv_ldv_post_probe_154(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_146(void) ;
static void ldv_ldv_check_final_state_147(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
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
extern struct module __this_module ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
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
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
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
__inline static void prefetchw(void const *x )
{
  {
  __asm__ volatile ("661:\n\tprefetcht0 (%1)\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 1*32+31)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tprefetchw (%1)\n6641:\n\t.popsection": : "i" (0),
                       "r" (x));
  return;
}
}
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_net2272(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern struct resource iomem_resource ;
__inline static resource_size_t resource_size(struct resource const *res )
{
  {
  return (((unsigned long long )res->end - (unsigned long long )res->start) + 1ULL);
}
}
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
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
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_102(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_102(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_102(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_102(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_102(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_101(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
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
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
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
static void *ldv_ioremap_nocache_132(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static void *ldv_ioremap_nocache_134(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static void *ldv_ioremap_nocache_141(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static void ldv_iounmap_129(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_133(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_135(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_136(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_137(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_138(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_142(void volatile *ldv_func_arg1 ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
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
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_139(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_140(struct pci_driver *ldv_func_arg1 ) ;
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
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_143(struct platform_driver *ldv_func_arg1 ,
                                              struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_144(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata(& pdev->dev);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  {
  dev_set_drvdata(& pdev->dev, data);
  }
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
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_130(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_128(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_131(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __const_udelay(unsigned long ) ;
__inline static int usb_endpoint_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 3);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern char const *usb_speed_string(enum usb_device_speed ) ;
__inline static void usb_ep_set_maxpacket_limit(struct usb_ep *ep , unsigned int maxpacket_limit )
{
  {
  ep->maxpacket_limit = (unsigned short )maxpacket_limit;
  ep->maxpacket = (unsigned short )maxpacket_limit;
  return;
}
}
extern int usb_add_gadget_udc_release(struct device * , struct usb_gadget * , void (*)(struct device * ) ) ;
extern void usb_del_gadget_udc(struct usb_gadget * ) ;
extern int usb_gadget_map_request(struct usb_gadget * , struct usb_request * , int ) ;
extern void usb_gadget_unmap_request(struct usb_gadget * , struct usb_request * ,
                                     int ) ;
extern void usb_gadget_udc_reset(struct usb_gadget * , struct usb_gadget_driver * ) ;
extern void usb_gadget_giveback_request(struct usb_ep * , struct usb_request * ) ;
static void *net2272_reg_addr(struct net2272 *dev , unsigned int reg )
{
  {
  return ((void *)dev->base_addr + (unsigned long )(reg << (int )dev->base_shift));
}
}
static void net2272_write(struct net2272 *dev , unsigned int reg , u8 value )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  if (reg > 31U) {
    {
    tmp = net2272_reg_addr(dev, 0U);
    writeb((int )((unsigned char )reg), (void volatile *)tmp);
    tmp___0 = net2272_reg_addr(dev, 1U);
    writeb((int )value, (void volatile *)tmp___0);
    }
  } else {
    {
    tmp___1 = net2272_reg_addr(dev, reg);
    writeb((int )value, (void volatile *)tmp___1);
    }
  }
  return;
}
}
static u8 net2272_read(struct net2272 *dev , unsigned int reg )
{
  u8 ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  if (reg > 31U) {
    {
    tmp = net2272_reg_addr(dev, 0U);
    writeb((int )((unsigned char )reg), (void volatile *)tmp);
    tmp___0 = net2272_reg_addr(dev, 1U);
    ret = readb((void const volatile *)tmp___0);
    }
  } else {
    {
    tmp___1 = net2272_reg_addr(dev, reg);
    ret = readb((void const volatile *)tmp___1);
    }
  }
  return (ret);
}
}
static void net2272_ep_write(struct net2272_ep *ep , unsigned int reg , u8 value )
{
  struct net2272 *dev ;
  {
  dev = ep->dev;
  if ((int )dev->pagesel != (int )ep->num) {
    {
    net2272_write(dev, 4U, (int )ep->num);
    dev->pagesel = ep->num;
    }
  } else {
  }
  {
  net2272_write(dev, reg, (int )value);
  }
  return;
}
}
static u8 net2272_ep_read(struct net2272_ep *ep , unsigned int reg )
{
  struct net2272 *dev ;
  u8 tmp ;
  {
  dev = ep->dev;
  if ((int )dev->pagesel != (int )ep->num) {
    {
    net2272_write(dev, 4U, (int )ep->num);
    dev->pagesel = ep->num;
    }
  } else {
  }
  {
  tmp = net2272_read(dev, reg);
  }
  return (tmp);
}
}
static void allow_status(struct net2272_ep *ep )
{
  {
  {
  net2272_ep_write(ep, 14U, 140);
  ep->stopped = 1U;
  }
  return;
}
}
static void set_halt(struct net2272_ep *ep )
{
  {
  {
  net2272_ep_write(ep, 14U, 8);
  net2272_ep_write(ep, 15U, 1);
  }
  return;
}
}
static void clear_halt(struct net2272_ep *ep )
{
  {
  {
  net2272_ep_write(ep, 14U, 3);
  }
  return;
}
}
static void set_fifo_bytecount(struct net2272_ep *ep , unsigned int count )
{
  {
  {
  net2272_ep_write(ep, 10U, (int )((u8 )(count >> 16)));
  net2272_ep_write(ep, 9U, (int )((u8 )(count >> 8)));
  net2272_ep_write(ep, 8U, (int )((u8 )count));
  }
  return;
}
}
static char const driver_name[8U] =
  { 'n', 'e', 't', '2',
        '2', '7', '2', '\000'};
static char const driver_vers[25U] =
  { '2', '0', '0', '6',
        ' ', 'O', 'c', 't',
        'o', 'b', 'e', 'r',
        ' ', '1', '7', '/',
        'm', 'a', 'i', 'n',
        'l', 'i', 'n', 'e',
        '\000'};
static char const driver_desc[38U] =
  { 'P', 'L', 'X', ' ',
        'N', 'E', 'T', '2',
        '2', '7', '2', ' ',
        'U', 'S', 'B', ' ',
        'P', 'e', 'r', 'i',
        'p', 'h', 'e', 'r',
        'a', 'l', ' ', 'C',
        'o', 'n', 't', 'r',
        'o', 'l', 'l', 'e',
        'r', '\000'};
static char const ep0name[4U] = { 'e', 'p', '0', '\000'};
static char const * const ep_name[4U] = { (char const *)(& ep0name), "ep-a", "ep-b", "ep-c"};
static bool use_dma = 0;
static ushort dma_ep = 1U;
static ushort dma_mode = 2U;
static ushort fifo_mode = 0U;
static ushort enable_suspend = 0U;
static void assert_out_naking(struct net2272_ep *ep , char const *where )
{
  u8 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  return;
  {
  tmp = net2272_ep_read(ep, 6U);
  }
  if (((int )tmp & 32) == 0) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "assert_out_naking";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "%s %s %02x !NAK\n";
    descriptor.lineno = 131U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "%s %s %02x !NAK\n",
                        ep->ep.name, where, (int )tmp);
      }
    } else {
    }
    {
    net2272_ep_write(ep, 15U, 128);
    }
  } else {
  }
}
}
static void stop_out_naking(struct net2272_ep *ep )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  {
  tmp___0 = net2272_ep_read(ep, 6U);
  tmp = tmp___0;
  }
  if (((int )tmp & 32) != 0) {
    {
    net2272_ep_write(ep, 14U, 128);
    }
  } else {
  }
  return;
}
}
static char *type_string(u8 bmAttributes )
{
  {
  {
  if (((int )bmAttributes & 3) == 2) {
    goto case_2;
  } else {
  }
  if (((int )bmAttributes & 3) == 1) {
    goto case_1;
  } else {
  }
  if (((int )bmAttributes & 3) == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2: ;
  return ((char *)"bulk");
  case_1: ;
  return ((char *)"iso");
  case_3: ;
  return ((char *)"intr");
  switch_default: ;
  return ((char *)"control");
  switch_break: ;
  }
}
}
static char *buf_state_string(unsigned int state )
{
  {
  {
  if (state == 0U) {
    goto case_0;
  } else {
  }
  if (state == 1U) {
    goto case_1;
  } else {
  }
  if (state == 2U) {
    goto case_2;
  } else {
  }
  if (state == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ((char *)"free");
  case_1: ;
  return ((char *)"valid");
  case_2: ;
  return ((char *)"local");
  case_3: ;
  return ((char *)"usb");
  switch_default: ;
  return ((char *)"unknown");
  switch_break: ;
  }
}
}
static char *dma_mode_string(void)
{
  {
  if (! use_dma) {
    return ((char *)"PIO");
  } else {
  }
  {
  if ((int )dma_mode == 0) {
    goto case_0;
  } else {
  }
  if ((int )dma_mode == 1) {
    goto case_1;
  } else {
  }
  if ((int )dma_mode == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ((char *)"SLOW DREQ");
  case_1: ;
  return ((char *)"FAST DREQ");
  case_2: ;
  return ((char *)"BURST");
  switch_default: ;
  return ((char *)"invalid");
  switch_break: ;
  }
}
}
static void net2272_dequeue_all(struct net2272_ep *ep ) ;
static int net2272_kick_dma(struct net2272_ep *ep , struct net2272_request *req ) ;
static int net2272_fifo_status(struct usb_ep *_ep ) ;
static struct usb_ep_ops net2272_ep_ops ;
static int net2272_enable(struct usb_ep *_ep , struct usb_endpoint_descriptor const *desc )
{
  struct net2272 *dev ;
  struct net2272_ep *ep ;
  u32 max ;
  u8 tmp ;
  unsigned long flags ;
  struct usb_ep const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u8 tmp___6 ;
  u8 tmp___7 ;
  struct _ddebug descriptor ;
  u8 tmp___8 ;
  char *tmp___9 ;
  long tmp___10 ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if (((((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) || (unsigned long )ep->desc != (unsigned long )((struct usb_endpoint_descriptor const *)0)) || (unsigned long )_ep->name == (unsigned long )((char const *)(& ep0name))) || (unsigned int )((unsigned char )desc->bDescriptorType) != 5U) {
    return (-22);
  } else {
  }
  dev = ep->dev;
  if ((unsigned long )dev->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )dev->gadget.speed == 0U) {
    return (-108);
  } else {
  }
  {
  tmp___0 = usb_endpoint_maxp(desc);
  max = (u32 )tmp___0 & 8191U;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(& dev->lock);
  _ep->maxpacket = (unsigned int )((unsigned short )max) & 32767U;
  ep->desc = desc;
  ep->stopped = 0U;
  ep->wedged = 0U;
  net2272_ep_write(ep, 40U, (int )((u8 )max));
  net2272_ep_write(ep, 41U, (int )((u8 )((max & 65280U) >> 8)));
  net2272_ep_write(ep, 7U, 128);
  tmp___1 = usb_endpoint_type(desc);
  tmp = (u8 )tmp___1;
  tmp___2 = usb_endpoint_xfer_bulk(desc);
  }
  if (tmp___2 != 0) {
    if (((unsigned int )dev->gadget.speed == 3U && max != 512U) || ((unsigned int )dev->gadget.speed == 2U && max > 64U)) {
      {
      ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
      }
      return (-34);
    } else {
    }
  } else {
  }
  {
  tmp___3 = usb_endpoint_xfer_isoc(desc);
  ep->is_iso = tmp___3 != 0;
  tmp = (int )tmp << 5U;
  tmp = (u8 )((int )((signed char )tmp) | ((int )((signed char )desc->bEndpointAddress) & 15));
  tmp___4 = usb_endpoint_dir_in(desc);
  tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )(tmp___4 << 4)));
  tmp = (u8 )((unsigned int )tmp | 128U);
  tmp___5 = usb_endpoint_dir_in(desc);
  ep->is_in = (unsigned char )tmp___5;
  }
  if ((unsigned int )*((unsigned char *)ep + 106UL) == 0U) {
    {
    net2272_ep_write(ep, 15U, 128);
    }
  } else {
  }
  {
  net2272_ep_write(ep, 42U, (int )tmp);
  tmp___6 = net2272_read(dev, 32U);
  tmp = (u8 )((int )((signed char )(1 << (int )ep->num)) | (int )((signed char )tmp___6));
  net2272_write(dev, 32U, (int )tmp);
  tmp___7 = net2272_ep_read(ep, 11U);
  tmp = (u8 )((unsigned int )tmp___7 | 12U);
  net2272_ep_write(ep, 11U, (int )tmp);
  tmp = desc->bEndpointAddress;
  descriptor.modname = "net2272";
  descriptor.function = "net2272_enable";
  descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
  descriptor.format = "enabled %s (ep%d%s-%s) max %04x cfg %02x\n";
  descriptor.lineno = 256U;
  descriptor.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___10 != 0L) {
    {
    tmp___8 = net2272_ep_read(ep, 42U);
    tmp___9 = type_string((int )desc->bmAttributes);
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "enabled %s (ep%d%s-%s) max %04x cfg %02x\n",
                      _ep->name, (int )tmp & 15, (int )((signed char )tmp) < 0 ? (char *)"in" : (char *)"out",
                      tmp___9, max, (int )tmp___8);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return (0);
}
}
static void net2272_ep_reset(struct net2272_ep *ep )
{
  u8 tmp ;
  {
  {
  ep->desc = (struct usb_endpoint_descriptor const *)0;
  INIT_LIST_HEAD(& ep->queue);
  usb_ep_set_maxpacket_limit(& ep->ep, 4294967295U);
  ep->ep.ops = (struct usb_ep_ops const *)(& net2272_ep_ops);
  net2272_ep_write(ep, 11U, 0);
  tmp = 132U;
  net2272_ep_write(ep, 15U, (int )tmp);
  tmp = 80U;
  }
  if ((unsigned int )ep->num != 0U) {
    tmp = (u8 )((unsigned int )tmp | 3U);
  } else {
  }
  {
  net2272_ep_write(ep, 14U, (int )tmp);
  net2272_ep_write(ep, 6U, 31);
  net2272_ep_write(ep, 7U, 255);
  }
  return;
}
}
static int net2272_disable(struct usb_ep *_ep )
{
  struct net2272_ep *ep ;
  unsigned long flags ;
  struct usb_ep const *__mptr ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if (((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) || (unsigned long )_ep->name == (unsigned long )((char const *)(& ep0name))) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(& (ep->dev)->lock);
  net2272_dequeue_all(ep);
  net2272_ep_reset(ep);
  ldv_spin_unlock_irqrestore_97(& (ep->dev)->lock, flags);
  }
  return (0);
}
}
static struct usb_request *net2272_alloc_request(struct usb_ep *_ep , gfp_t gfp_flags )
{
  struct net2272_ep *ep ;
  struct net2272_request *req ;
  struct usb_ep const *__mptr ;
  void *tmp ;
  {
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0)) {
    return ((struct usb_request *)0);
  } else {
  }
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  tmp = kzalloc(112UL, gfp_flags);
  req = (struct net2272_request *)tmp;
  }
  if ((unsigned long )req == (unsigned long )((struct net2272_request *)0)) {
    return ((struct usb_request *)0);
  } else {
  }
  {
  INIT_LIST_HEAD(& req->queue);
  }
  return (& req->req);
}
}
static void net2272_free_request(struct usb_ep *_ep , struct usb_request *_req )
{
  struct net2272_ep *ep ;
  struct net2272_request *req ;
  struct usb_ep const *__mptr ;
  struct usb_request const *__mptr___0 ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )_req == (unsigned long )((struct usb_request *)0)) {
    return;
  } else {
  }
  {
  __mptr___0 = (struct usb_request const *)_req;
  req = (struct net2272_request *)__mptr___0;
  tmp = list_empty((struct list_head const *)(& req->queue));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("drivers/usb/gadget/udc/net2272.c", 359);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  kfree((void const *)req);
  }
  return;
}
}
static void net2272_done(struct net2272_ep *ep , struct net2272_request *req , int status )
{
  struct net2272 *dev ;
  unsigned int stopped ;
  {
  stopped = (unsigned int )ep->stopped;
  if ((unsigned int )ep->num == 0U) {
    if ((unsigned int )*((unsigned char *)ep->dev + 2104UL) != 0U) {
      {
      ep->stopped = 1U;
      set_halt(ep);
      }
    } else {
    }
    {
    allow_status(ep);
    }
  } else {
  }
  {
  list_del_init(& req->queue);
  }
  if (req->req.status == -115) {
    req->req.status = status;
  } else {
    status = req->req.status;
  }
  dev = ep->dev;
  if ((int )use_dma && (unsigned int )*((unsigned char *)ep + 107UL) != 0U) {
    {
    usb_gadget_unmap_request(& dev->gadget, & req->req, (int )ep->is_in);
    }
  } else {
  }
  {
  ep->stopped = 1U;
  ldv_spin_unlock_101(& dev->lock);
  usb_gadget_giveback_request(& ep->ep, & req->req);
  ldv_spin_lock_102(& dev->lock);
  ep->stopped = (unsigned char )stopped;
  }
  return;
}
}
static int net2272_write_packet(struct net2272_ep *ep , u8 *buf , struct net2272_request *req ,
                                unsigned int max )
{
  u16 *ep_data ;
  void *tmp ;
  u16 *bufp ;
  unsigned int length ;
  unsigned int count ;
  u8 tmp___0 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  u16 *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  {
  tmp = net2272_reg_addr(ep->dev, 5U);
  ep_data = (u16 *)tmp;
  _min1 = req->req.length - req->req.actual;
  _min2 = max;
  length = _min1 < _min2 ? _min1 : _min2;
  req->req.actual = req->req.actual + length;
  count = length;
  bufp = (u16 *)buf;
  }
  goto ldv_36461;
  ldv_36460:
  {
  tmp___3 = bufp;
  bufp = bufp + 1;
  writew((int )*tmp___3, (void volatile *)ep_data);
  count = count - 2U;
  }
  ldv_36461:
  {
  tmp___4 = ldv__builtin_expect(count > 1U, 1L);
  }
  if (tmp___4 != 0L) {
    goto ldv_36460;
  } else {
  }
  {
  buf = (u8 *)bufp;
  tmp___5 = ldv__builtin_expect(count != 0U, 0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___0 = net2272_read(ep->dev, 34U);
    net2272_write(ep->dev, 34U, (int )tmp___0 & 254);
    writeb((int )*buf, (void volatile *)ep_data);
    net2272_write(ep->dev, 34U, (int )tmp___0);
    }
  } else {
  }
  return ((int )length);
}
}
static int net2272_write_fifo(struct net2272_ep *ep , struct net2272_request *req )
{
  u8 *buf ;
  unsigned int count ;
  unsigned int max ;
  int status ;
  u8 tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr ;
  u8 tmp___4 ;
  int tmp___5 ;
  u8 tmp___6 ;
  {
  top:
  {
  net2272_ep_write(ep, 6U, 4);
  }
  goto ldv_36475;
  ldv_36474:
  {
  buf = (u8 *)req->req.buf + (unsigned long )req->req.actual;
  __builtin_prefetch((void const *)buf);
  net2272_ep_read(ep, 6U);
  tmp = net2272_ep_read(ep, 13U);
  tmp___0 = net2272_ep_read(ep, 12U);
  max = (unsigned int )(((int )tmp << 8) | (int )tmp___0);
  }
  if (max < (unsigned int )ep->ep.maxpacket) {
    {
    tmp___1 = net2272_ep_read(ep, 13U);
    tmp___2 = net2272_ep_read(ep, 12U);
    max = (unsigned int )(((int )tmp___1 << 8) | (int )tmp___2);
    }
  } else {
  }
  {
  tmp___3 = net2272_write_packet(ep, buf, req, max);
  count = (unsigned int )tmp___3;
  }
  if (req->req.length == req->req.actual) {
    if (count < (unsigned int )ep->ep.maxpacket) {
      {
      set_fifo_bytecount(ep, 0U);
      }
    } else {
    }
    {
    net2272_done(ep, req, 0);
    tmp___5 = list_empty((struct list_head const *)(& ep->queue));
    }
    if (tmp___5 == 0) {
      {
      __mptr = (struct list_head const *)ep->queue.next;
      req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
      status = net2272_kick_dma(ep, req);
      }
      if (status < 0) {
        {
        tmp___4 = net2272_ep_read(ep, 6U);
        }
        if (((int )tmp___4 & 64) != 0) {
          goto top;
        } else {
        }
      } else {
      }
    } else {
    }
    return (1);
  } else {
  }
  {
  net2272_ep_write(ep, 6U, 4);
  }
  ldv_36475:
  {
  tmp___6 = net2272_ep_read(ep, 6U);
  }
  if ((int )((signed char )tmp___6) >= 0) {
    goto ldv_36474;
  } else {
  }
  return (0);
}
}
static void net2272_out_flush(struct net2272_ep *ep )
{
  {
  {
  assert_out_naking(ep, "net2272_out_flush");
  net2272_ep_write(ep, 6U, 10);
  net2272_ep_write(ep, 7U, 128);
  }
  return;
}
}
static int net2272_read_packet(struct net2272_ep *ep , u8 *buf , struct net2272_request *req ,
                               unsigned int avail )
{
  u16 *ep_data ;
  void *tmp ;
  unsigned int is_short ;
  u16 *bufp ;
  long tmp___2 ;
  long tmp___3 ;
  u16 *tmp___4 ;
  u8 tmp___5 ;
  {
  {
  tmp = net2272_reg_addr(ep->dev, 5U);
  ep_data = (u16 *)tmp;
  req->req.actual = req->req.actual + avail;
  is_short = avail < (unsigned int )ep->ep.maxpacket;
  tmp___2 = ldv__builtin_expect(avail == 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    readw((void const volatile *)ep_data);
    }
    return ((int )is_short);
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect((long )((int )avail) & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    avail = avail + 1U;
  } else {
  }
  bufp = (u16 *)buf;
  ldv_36490:
  {
  tmp___4 = bufp;
  bufp = bufp + 1;
  *tmp___4 = readw((void const volatile *)ep_data);
  avail = avail - 2U;
  }
  if (avail != 0U) {
    goto ldv_36490;
  } else {
  }
  {
  tmp___5 = net2272_ep_read(ep, 6U);
  }
  if (((int )tmp___5 & 16) != 0) {
    {
    net2272_ep_read(ep, 6U);
    }
  } else {
  }
  return ((int )is_short);
}
}
static int net2272_read_fifo(struct net2272_ep *ep , struct net2272_request *req )
{
  u8 *buf ;
  unsigned int is_short ;
  int count ;
  int tmp ;
  int cleanup ;
  int status ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct list_head const *__mptr ;
  u8 tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  u8 tmp___10 ;
  {
  cleanup = 0;
  status = -1;
  top: ;
  ldv_36505:
  {
  buf = (u8 *)req->req.buf + (unsigned long )req->req.actual;
  prefetchw((void const *)buf);
  tmp___0 = net2272_ep_read(ep, 13U);
  tmp___1 = net2272_ep_read(ep, 12U);
  count = ((int )tmp___0 << 8) | (int )tmp___1;
  net2272_ep_write(ep, 6U, 24);
  tmp = (int )(req->req.length - req->req.actual);
  }
  if (count > tmp) {
    if (tmp % (int )ep->ep.maxpacket != 0) {
      {
      dev_err((struct device const *)(ep->dev)->dev, "%s out fifo %d bytes, expected %d\n",
              ep->ep.name, count, tmp);
      cleanup = 1;
      }
    } else {
    }
    count = 0 > tmp ? 0 : tmp;
  } else {
  }
  {
  tmp___2 = net2272_read_packet(ep, buf, req, (unsigned int )count);
  is_short = (unsigned int )tmp___2;
  tmp___6 = ldv__builtin_expect((long )(cleanup != 0 || is_short != 0U), 0L);
  }
  if (tmp___6 != 0L) {
    goto _L;
  } else {
    {
    tmp___7 = ldv__builtin_expect(req->req.actual == req->req.length, 0L);
    }
    if (tmp___7 != 0L) {
      {
      tmp___8 = ldv__builtin_expect((unsigned int )*((unsigned char *)req + 42UL) == 0U,
                                 0L);
      }
      if (tmp___8 != 0L) {
        tmp___9 = 1;
      } else {
        tmp___9 = 0;
      }
    } else {
      tmp___9 = 0;
    }
    if (tmp___9 != 0) {
      _L:
      if (cleanup != 0) {
        {
        net2272_out_flush(ep);
        net2272_done(ep, req, -75);
        }
      } else {
        {
        net2272_done(ep, req, 0);
        }
      }
      {
      tmp___3 = ldv__builtin_expect((unsigned int )ep->num == 0U, 0L);
      }
      if (tmp___3 != 0L) {
        {
        net2272_ep_write(ep, 10U, 0);
        net2272_ep_write(ep, 9U, 0);
        net2272_ep_write(ep, 8U, 0);
        }
      } else {
      }
      {
      tmp___5 = list_empty((struct list_head const *)(& ep->queue));
      }
      if (tmp___5 == 0) {
        {
        __mptr = (struct list_head const *)ep->queue.next;
        req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
        status = net2272_kick_dma(ep, req);
        }
        if (status < 0) {
          {
          tmp___4 = net2272_ep_read(ep, 6U);
          }
          if (((int )tmp___4 & 64) == 0) {
            goto top;
          } else {
          }
        } else {
        }
      } else {
      }
      return (1);
    } else {
    }
  }
  {
  tmp___10 = net2272_ep_read(ep, 6U);
  }
  if (((int )tmp___10 & 64) == 0) {
    goto ldv_36505;
  } else {
  }
  return (0);
}
}
static void net2272_pio_advance(struct net2272_ep *ep )
{
  struct net2272_request *req ;
  int tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  {
  {
  tmp = list_empty((struct list_head const *)(& ep->queue));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  {
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
  (*((unsigned int )*((unsigned char *)ep + 106UL) != 0U ? & net2272_write_fifo : & net2272_read_fifo))(ep,
                                                                                                        req);
  }
  return;
}
}
static int net2272_request_dma(struct net2272 *dev , unsigned int ep , u32 buf , unsigned int len ,
                               unsigned int dir )
{
  unsigned int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 2104UL) != 0U) {
    return (-16);
  } else {
  }
  if (dir == 1U && len > 16777216U) {
    return (-22);
  } else {
  }
  dev->dma_busy = 1U;
  {
  if ((int )dev->dev_id == 36948) {
    goto case_36948;
  } else {
  }
  goto switch_break;
  case_36948:
  {
  writel(187457U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 128U);
  writel(1048576U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 136U);
  writel(buf, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 132U);
  writel(len, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 140U);
  writel((dir << 3) | 4U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 144U);
  tmp = readl((void const volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  writel(tmp | 262144U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  }
  goto ldv_36521;
  switch_break: ;
  }
  ldv_36521:
  {
  net2272_write(dev, 28U, (int )((u8 )((((int )((signed char )((int )dev->dma_eot_polarity << 3)) | 48) | (int )((signed char )((int )dev->dma_dack_polarity << 2))) | (int )((signed char )((int )dev->dma_dreq_polarity << 1)))) | (int )((u8 )(ep >> 1)));
  net2272_read(dev, 29U);
  }
  return (0);
}
}
static void net2272_start_dma(struct net2272 *dev )
{
  {
  {
  if ((int )dev->dev_id == 36948) {
    goto case_36948;
  } else {
  }
  goto switch_break;
  case_36948:
  {
  writeb(3, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  }
  goto ldv_36526;
  switch_break: ;
  }
  ldv_36526: ;
  return;
}
}
static int net2272_kick_dma(struct net2272_ep *ep , struct net2272_request *req )
{
  unsigned int size ;
  u8 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (((! use_dma || (unsigned int )ep->num == 0U) || (unsigned int )ep->num > 2U) || (unsigned int )*((unsigned char *)ep + 107UL) == 0U) {
    return (-22);
  } else {
  }
  if ((int )req->req.length & 1) {
    return (-22);
  } else {
  }
  {
  net2272_ep_write(ep, 15U, 128);
  }
  if ((unsigned int )*((unsigned char *)ep->dev + 2104UL) != 0U) {
    return (-16);
  } else {
  }
  size = req->req.length;
  size = size & 4294967294U;
  if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U) {
    {
    tmp___0 = net2272_request_dma(ep->dev, (unsigned int )ep->num, (u32 )req->req.dma,
                                  size, 0U);
    }
    if (tmp___0 != 0) {
      return (-16);
    } else {
    }
    req->req.actual = req->req.actual + size;
  } else {
    {
    tmp = net2272_ep_read(ep, 6U);
    tmp___1 = net2272_request_dma(ep->dev, (unsigned int )ep->num, (u32 )req->req.dma,
                                  size, 1U);
    }
    if (tmp___1 != 0) {
      return (-16);
    } else {
    }
    if (((int )tmp & 64) == 0) {
      ep->not_empty = 1U;
    } else {
      ep->not_empty = 0U;
    }
    {
    net2272_ep_write(ep, 14U, 128);
    }
    if (((int )tmp & 16) != 0) {
      {
      net2272_write(ep->dev, 28U, (int )((u8 )(((((int )((signed char )((int )(ep->dev)->dma_eot_polarity << 3)) | 16) | (int )((signed char )((int )(ep->dev)->dma_dack_polarity << 2))) | (int )((signed char )((int )(ep->dev)->dma_dreq_polarity << 1))) | (int )((signed char )((int )ep->num >> 1)))));
      }
      return (-16);
    } else {
    }
  }
  {
  net2272_ep_write(ep, 11U, 0);
  net2272_start_dma(ep->dev);
  }
  return (0);
}
}
static void net2272_cancel_dma(struct net2272 *dev )
{
  unsigned char tmp ;
  {
  {
  if ((int )dev->dev_id == 36948) {
    goto case_36948;
  } else {
  }
  goto switch_break;
  case_36948:
  {
  writeb(0, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  writeb(4, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  }
  goto ldv_36537;
  ldv_36538: ;
  goto ldv_36537;
  ldv_36537:
  {
  tmp = readb((void const volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  }
  if (((int )tmp & 16) == 0) {
    goto ldv_36538;
  } else {
  }
  {
  writeb(8, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  }
  goto ldv_36540;
  switch_break: ;
  }
  ldv_36540:
  dev->dma_busy = 0U;
  return;
}
}
static int net2272_queue(struct usb_ep *_ep , struct usb_request *_req , gfp_t gfp_flags )
{
  struct net2272_request *req ;
  struct net2272_ep *ep ;
  struct net2272 *dev ;
  unsigned long flags ;
  int status ;
  u8 s ;
  struct usb_request const *__mptr ;
  int tmp ;
  struct usb_ep const *__mptr___0 ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u8 tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  status = -1;
  __mptr = (struct usb_request const *)_req;
  req = (struct net2272_request *)__mptr;
  if (((unsigned long )_req == (unsigned long )((struct usb_request *)0) || (unsigned long )_req->complete == (unsigned long )((void (*)(struct usb_ep * ,
                                                                                                                                         struct usb_request * ))0)) || (unsigned long )_req->buf == (unsigned long )((void *)0)) {
    return (-22);
  } else {
    {
    tmp = list_empty((struct list_head const *)(& req->queue));
    }
    if (tmp == 0) {
      return (-22);
    } else {
    }
  }
  __mptr___0 = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr___0;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) {
    return (-22);
  } else {
  }
  dev = ep->dev;
  if ((unsigned long )dev->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )dev->gadget.speed == 0U) {
    return (-108);
  } else {
  }
  if ((int )use_dma && (unsigned int )*((unsigned char *)ep + 107UL) != 0U) {
    {
    status = usb_gadget_map_request(& dev->gadget, _req, (int )ep->is_in);
    }
    if (status != 0) {
      return (status);
    } else {
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(& dev->lock);
  _req->status = -115;
  _req->actual = 0U;
  tmp___3 = list_empty((struct list_head const *)(& ep->queue));
  }
  if (tmp___3 != 0 && (unsigned int )*((unsigned char *)ep + 106UL) == 0U) {
    if ((unsigned int )ep->num == 0U && _req->length == 0U) {
      {
      net2272_done(ep, req, 0);
      }
      goto done;
    } else {
    }
    {
    s = net2272_ep_read(ep, 6U);
    }
    if (((int )s & 64) != 0) {
      if (((int )s & 32) != 0) {
        {
        tmp___1 = net2272_ep_read(ep, 7U);
        }
        if (((int )tmp___1 & 64) != 0) {
          {
          descriptor.modname = "net2272";
          descriptor.function = "net2272_queue";
          descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
          descriptor.format = "WARNING: returning ZLP short packet termination!\n";
          descriptor.lineno = 878U;
          descriptor.flags = 0U;
          tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          }
          if (tmp___0 != 0L) {
            {
            __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "WARNING: returning ZLP short packet termination!\n");
            }
          } else {
          }
          {
          status = net2272_read_fifo(ep, req);
          net2272_ep_write(ep, 6U, 32);
          }
          goto done;
        } else {
        }
      } else {
      }
    } else {
    }
    {
    status = net2272_kick_dma(ep, req);
    }
    if (status < 0) {
      status = 0;
      if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U) {
        {
        status = net2272_write_fifo(ep, req);
        }
      } else {
        {
        s = net2272_ep_read(ep, 6U);
        }
        if (((int )s & 64) == 0) {
          {
          status = net2272_read_fifo(ep, req);
          }
        } else {
        }
      }
      {
      tmp___2 = ldv__builtin_expect(status != 0, 0L);
      }
      if (tmp___2 != 0L) {
        if (status > 0) {
          status = 0;
        } else {
        }
        req = (struct net2272_request *)0;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect((unsigned long )req != (unsigned long )((struct net2272_request *)0),
                             1L);
  }
  if (tmp___4 != 0L) {
    {
    list_add_tail(& req->queue, & ep->queue);
    }
  } else {
  }
  {
  tmp___5 = list_empty((struct list_head const *)(& ep->queue));
  tmp___6 = ldv__builtin_expect(tmp___5 == 0, 1L);
  }
  if (tmp___6 != 0L) {
    {
    net2272_ep_write(ep, 14U, 128);
    }
  } else {
  }
  done:
  {
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return (0);
}
}
static void net2272_dequeue_all(struct net2272_ep *ep )
{
  struct net2272_request *req ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  ep->stopped = 1U;
  goto ldv_36566;
  ldv_36565:
  {
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
  net2272_done(ep, req, -108);
  }
  ldv_36566:
  {
  tmp = list_empty((struct list_head const *)(& ep->queue));
  }
  if (tmp == 0) {
    goto ldv_36565;
  } else {
  }
  return;
}
}
static int net2272_dequeue(struct usb_ep *_ep , struct usb_request *_req )
{
  struct net2272_ep *ep ;
  struct net2272_request *req ;
  unsigned long flags ;
  int stopped ;
  struct usb_ep const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if (((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) || (unsigned long )_req == (unsigned long )((struct usb_request *)0)) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(& (ep->dev)->lock);
  stopped = (int )ep->stopped;
  ep->stopped = 1U;
  __mptr___0 = (struct list_head const *)ep->queue.next;
  req = (struct net2272_request *)__mptr___0 + 0xffffffffffffffa8UL;
  }
  goto ldv_36584;
  ldv_36583: ;
  if ((unsigned long )(& req->req) == (unsigned long )_req) {
    goto ldv_36582;
  } else {
  }
  __mptr___1 = (struct list_head const *)req->queue.next;
  req = (struct net2272_request *)__mptr___1 + 0xffffffffffffffa8UL;
  ldv_36584: ;
  if ((unsigned long )(& req->queue) != (unsigned long )(& ep->queue)) {
    goto ldv_36583;
  } else {
  }
  ldv_36582: ;
  if ((unsigned long )(& req->req) != (unsigned long )_req) {
    {
    ldv_spin_unlock_irqrestore_97(& (ep->dev)->lock, flags);
    }
    return (-22);
  } else {
  }
  if ((unsigned long )ep->queue.next == (unsigned long )(& req->queue)) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_dequeue";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "unlink (%s) pio\n";
    descriptor.lineno = 971U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "unlink (%s) pio\n",
                        _ep->name);
      }
    } else {
    }
    {
    net2272_done(ep, req, -104);
    }
  } else {
  }
  {
  req = (struct net2272_request *)0;
  ep->stopped = (unsigned char )stopped;
  ldv_spin_unlock_irqrestore_97(& (ep->dev)->lock, flags);
  }
  return (0);
}
}
static int net2272_set_halt_and_wedge(struct usb_ep *_ep , int value , int wedged )
{
  struct net2272_ep *ep ;
  unsigned long flags ;
  int ret ;
  struct usb_ep const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) {
    return (-22);
  } else {
  }
  if ((unsigned long )(ep->dev)->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )(ep->dev)->gadget.speed == 0U) {
    return (-108);
  } else {
  }
  if ((unsigned long )ep->desc != (unsigned long )((struct usb_endpoint_descriptor const *)0)) {
    {
    tmp = usb_endpoint_xfer_isoc(ep->desc);
    }
    if (tmp != 0) {
      return (-22);
    } else {
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(& (ep->dev)->lock);
  tmp___1 = list_empty((struct list_head const *)(& ep->queue));
  }
  if (tmp___1 == 0) {
    ret = -11;
  } else
  if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U && value != 0) {
    {
    tmp___0 = net2272_fifo_status(_ep);
    }
    if (tmp___0 != 0) {
      ret = -11;
    } else {
      goto _L;
    }
  } else
  _L:
  if (value != 0) {
    if ((unsigned int )ep->num == 0U) {
      (ep->dev)->protocol_stall = 1U;
    } else {
      {
      set_halt(ep);
      }
    }
    if (wedged != 0) {
      ep->wedged = 1U;
    } else {
    }
  } else {
    {
    clear_halt(ep);
    ep->wedged = 0U;
    }
  }
  {
  ldv_spin_unlock_irqrestore_97(& (ep->dev)->lock, flags);
  }
  return (ret);
}
}
static int net2272_set_halt(struct usb_ep *_ep , int value )
{
  int tmp ;
  {
  {
  tmp = net2272_set_halt_and_wedge(_ep, value, 0);
  }
  return (tmp);
}
}
static int net2272_set_wedge(struct usb_ep *_ep )
{
  int tmp ;
  {
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )_ep->name == (unsigned long )((char const *)(& ep0name))) {
    return (-22);
  } else {
  }
  {
  tmp = net2272_set_halt_and_wedge(_ep, 1, 1);
  }
  return (tmp);
}
}
static int net2272_fifo_status(struct usb_ep *_ep )
{
  struct net2272_ep *ep ;
  u16 avail ;
  struct usb_ep const *__mptr ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) {
    return (-19);
  } else {
  }
  if ((unsigned long )(ep->dev)->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )(ep->dev)->gadget.speed == 0U) {
    return (-108);
  } else {
  }
  {
  tmp = net2272_ep_read(ep, 13U);
  avail = (int )((u16 )tmp) << 8U;
  tmp___0 = net2272_ep_read(ep, 12U);
  avail = (int )avail | (int )((u16 )tmp___0);
  }
  if ((int )avail > (int )ep->fifo_size) {
    return (-75);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U) {
    avail = (int )ep->fifo_size - (int )avail;
  } else {
  }
  return ((int )avail);
}
}
static void net2272_fifo_flush(struct usb_ep *_ep )
{
  struct net2272_ep *ep ;
  struct usb_ep const *__mptr ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct net2272_ep *)__mptr;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) {
    return;
  } else {
  }
  if ((unsigned long )(ep->dev)->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )(ep->dev)->gadget.speed == 0U) {
    return;
  } else {
  }
  {
  net2272_ep_write(ep, 7U, 128);
  }
  return;
}
}
static struct usb_ep_ops net2272_ep_ops =
     {& net2272_enable, & net2272_disable, & net2272_alloc_request, & net2272_free_request,
    & net2272_queue, & net2272_dequeue, & net2272_set_halt, & net2272_set_wedge, & net2272_fifo_status,
    & net2272_fifo_flush};
static int net2272_get_frame(struct usb_gadget *_gadget )
{
  struct net2272 *dev ;
  unsigned long flags ;
  u16 ret ;
  struct usb_gadget const *__mptr ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  {
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct net2272 *)__mptr;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(& dev->lock);
  tmp = net2272_read(dev, 27U);
  ret = (int )((u16 )tmp) << 8U;
  tmp___0 = net2272_read(dev, 26U);
  ret = (int )ret | (int )((u16 )tmp___0);
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return ((int )ret);
}
}
static int net2272_wakeup(struct usb_gadget *_gadget )
{
  struct net2272 *dev ;
  u8 tmp ;
  unsigned long flags ;
  struct usb_gadget const *__mptr ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (0);
  } else {
  }
  {
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct net2272 *)__mptr;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(& dev->lock);
  tmp = net2272_read(dev, 24U);
  }
  if (((int )tmp & 2) != 0) {
    {
    net2272_write(dev, 25U, 8);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return (0);
}
}
static int net2272_set_selfpowered(struct usb_gadget *_gadget , int value )
{
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  _gadget->is_selfpowered = value != 0;
  return (0);
}
}
static int net2272_pullup(struct usb_gadget *_gadget , int is_on )
{
  struct net2272 *dev ;
  u8 tmp ;
  unsigned long flags ;
  struct usb_gadget const *__mptr ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  {
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct net2272 *)__mptr;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(& dev->lock);
  tmp = net2272_read(dev, 24U);
  dev->softconnect = is_on != 0;
  }
  if (is_on != 0) {
    tmp = (u8 )((unsigned int )tmp | 8U);
  } else {
    tmp = (unsigned int )tmp & 247U;
  }
  {
  net2272_write(dev, 24U, (int )tmp);
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return (0);
}
}
static int net2272_start(struct usb_gadget *_gadget , struct usb_gadget_driver *driver ) ;
static int net2272_stop(struct usb_gadget *_gadget ) ;
static struct usb_gadget_ops const net2272_ops =
     {& net2272_get_frame, & net2272_wakeup, & net2272_set_selfpowered, 0, 0, & net2272_pullup,
    0, 0, & net2272_start, & net2272_stop};
static ssize_t registers_show(struct device *_dev , struct device_attribute *attr ,
                              char *buf )
{
  struct net2272 *dev ;
  char *next ;
  unsigned int size ;
  unsigned int t ;
  unsigned long flags ;
  u8 t1 ;
  u8 t2 ;
  int i ;
  char const *s ;
  void *tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u8 tmp___7 ;
  u8 tmp___8 ;
  int tmp___9 ;
  struct net2272_ep *ep ;
  u8 tmp___10 ;
  int tmp___11 ;
  char *tmp___12 ;
  u8 tmp___13 ;
  u8 tmp___14 ;
  u8 tmp___15 ;
  u8 tmp___16 ;
  int tmp___17 ;
  u8 tmp___18 ;
  u8 tmp___19 ;
  u8 tmp___20 ;
  int tmp___21 ;
  u8 tmp___22 ;
  u8 tmp___23 ;
  char *tmp___24 ;
  char *tmp___25 ;
  int tmp___26 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)_dev);
  dev = (struct net2272 *)tmp;
  next = buf;
  size = 4096U;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(& dev->lock);
  }
  if ((unsigned long )dev->driver != (unsigned long )((struct usb_gadget_driver *)0)) {
    s = (dev->driver)->driver.name;
  } else {
    s = "(none)";
  }
  {
  tmp___0 = net2272_read(dev, 3U);
  tmp___1 = net2272_read(dev, 2U);
  tmp___2 = net2272_read(dev, 33U);
  tmp___3 = net2272_read(dev, 32U);
  tmp___4 = net2272_read(dev, 34U);
  tmp___5 = scnprintf(next, (size_t )size, "%s version %s,chiprev %02x, locctl %02x\nirqenb0 %02x irqenb1 %02x irqstat0 %02x irqstat1 %02x\n",
                      (char const *)(& driver_name), (char const *)(& driver_vers),
                      (int )dev->chiprev, (int )tmp___4, (int )tmp___3, (int )tmp___2,
                      (int )tmp___1, (int )tmp___0);
  t = (unsigned int )tmp___5;
  size = size - t;
  next = next + (unsigned long )t;
  t1 = net2272_read(dev, 28U);
  tmp___6 = scnprintf(next, (size_t )size, "\ndmareq %02x: %s %s%s%s%s\n", (int )t1,
                      ep_name[((int )t1 & 1) + 1], ((int )t1 & 16) != 0 ? (char *)"dack " : (char *)"",
                      ((int )t1 & 32) != 0 ? (char *)"reqenb " : (char *)"", ((int )t1 & 64) != 0 ? (char *)"req " : (char *)"",
                      (int )((signed char )t1) < 0 ? (char *)"valid " : (char *)"");
  t = (unsigned int )tmp___6;
  size = size - t;
  next = next + (unsigned long )t;
  t1 = net2272_read(dev, 25U);
  }
  if ((int )t1 & 1) {
    if (((int )t1 & 4) != 0) {
      s = "high speed";
    } else
    if ((unsigned int )dev->gadget.speed == 0U) {
      s = "powered";
    } else {
      s = "full speed";
    }
  } else {
    s = "not attached";
  }
  {
  tmp___7 = net2272_read(dev, 48U);
  tmp___8 = net2272_read(dev, 24U);
  tmp___9 = scnprintf(next, (size_t )size, "usbctl0 %02x usbctl1 %02x addr 0x%02x (%s)\n",
                      (int )tmp___8, (int )t1, (int )tmp___7, s);
  t = (unsigned int )tmp___9;
  size = size - t;
  next = next + (unsigned long )t;
  i = 0;
  }
  goto ldv_36670;
  ldv_36669:
  ep = (struct net2272_ep *)(& dev->ep) + (unsigned long )i;
  if (i != 0 && (unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) {
    goto ldv_36668;
  } else {
  }
  {
  t1 = net2272_ep_read(ep, 42U);
  t2 = net2272_ep_read(ep, 15U);
  tmp___10 = net2272_ep_read(ep, 11U);
  tmp___11 = scnprintf(next, (size_t )size, "\n%s\tcfg %02x rsp (%02x) %s%s%s%s%s%s%s%sirqenb %02x\n",
                       ep->ep.name, (int )t1, (int )t2, (int )((signed char )t2) < 0 ? (char *)"NAK " : (char *)"",
                       ((int )t2 & 64) != 0 ? (char *)"hide " : (char *)"", ((int )t2 & 32) != 0 ? (char *)"auto " : (char *)"",
                       ((int )t2 & 16) != 0 ? (char *)"interrupt " : (char *)"", ((int )t2 & 8) != 0 ? (char *)"status " : (char *)"",
                       ((int )t2 & 4) != 0 ? (char *)"NAKmode " : (char *)"", ((int )t2 & 2) != 0 ? (char *)"DATA1 " : (char *)"DATA0 ",
                       (int )t2 & 1 ? (char *)"HALT " : (char *)"", (int )tmp___10);
  t = (unsigned int )tmp___11;
  size = size - t;
  next = next + (unsigned long )t;
  tmp___12 = type_string((int )t1 >> 5);
  tmp___13 = net2272_ep_read(ep, 13U);
  tmp___14 = net2272_ep_read(ep, 12U);
  tmp___15 = net2272_ep_read(ep, 7U);
  tmp___16 = net2272_ep_read(ep, 6U);
  tmp___17 = scnprintf(next, (size_t )size, "\tstat0 %02x stat1 %02x avail %04x (ep%d%s-%s)%s\n",
                       (int )tmp___16, (int )tmp___15, ((int )tmp___13 << 8) | (int )tmp___14,
                       (int )t1 & 15, (unsigned int )*((unsigned char *)ep + 106UL) != 0U ? (char *)"in" : (char *)"out",
                       tmp___12, (unsigned int )*((unsigned char *)ep + 106UL) != 0U ? (char *)"*" : (char *)"");
  t = (unsigned int )tmp___17;
  size = size - t;
  next = next + (unsigned long )t;
  tmp___18 = net2272_ep_read(ep, 10U);
  tmp___19 = net2272_ep_read(ep, 9U);
  tmp___20 = net2272_ep_read(ep, 8U);
  tmp___21 = scnprintf(next, (size_t )size, "\tep_transfer %06x\n", (((int )tmp___18 << 16) | ((int )tmp___19 << 8)) | (int )tmp___20);
  t = (unsigned int )tmp___21;
  size = size - t;
  next = next + (unsigned long )t;
  tmp___22 = net2272_ep_read(ep, 44U);
  t1 = (unsigned int )tmp___22 & 3U;
  tmp___23 = net2272_ep_read(ep, 44U);
  t2 = (unsigned int )((u8 )((int )tmp___23 >> 2)) & 3U;
  tmp___24 = buf_state_string((unsigned int )t2);
  tmp___25 = buf_state_string((unsigned int )t1);
  tmp___26 = scnprintf(next, (size_t )size, "\tbuf-a %s buf-b %s\n", tmp___25, tmp___24);
  t = (unsigned int )tmp___26;
  size = size - t;
  next = next + (unsigned long )t;
  }
  ldv_36668:
  i = i + 1;
  ldv_36670: ;
  if (i <= 3) {
    goto ldv_36669;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  }
  return ((ssize_t )(4096UL - (unsigned long )size));
}
}
static struct device_attribute dev_attr_registers = {{"registers", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & registers_show, 0};
static void net2272_set_fifo_mode(struct net2272 *dev , int mode )
{
  u8 tmp ;
  u8 tmp___0 ;
  unsigned short tmp___1 ;
  unsigned short tmp___2 ;
  {
  {
  tmp___0 = net2272_read(dev, 34U);
  tmp = (unsigned int )tmp___0 & 63U;
  tmp = (u8 )((int )((signed char )tmp) | (int )((signed char )(mode << 6)));
  net2272_write(dev, 34U, (int )tmp);
  INIT_LIST_HEAD(& dev->gadget.ep_list);
  list_add_tail(& dev->ep[1].ep.ep_list, & dev->gadget.ep_list);
  }
  {
  if (mode == 0) {
    goto case_0;
  } else {
  }
  if (mode == 1) {
    goto case_1;
  } else {
  }
  if (mode == 2) {
    goto case_2;
  } else {
  }
  if (mode == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  {
  list_add_tail(& dev->ep[2].ep.ep_list, & dev->gadget.ep_list);
  tmp___1 = 512U;
  dev->ep[2].fifo_size = tmp___1;
  dev->ep[1].fifo_size = tmp___1;
  }
  goto ldv_36679;
  case_1:
  {
  list_add_tail(& dev->ep[2].ep.ep_list, & dev->gadget.ep_list);
  dev->ep[1].fifo_size = 1024U;
  dev->ep[2].fifo_size = 512U;
  }
  goto ldv_36679;
  case_2:
  {
  list_add_tail(& dev->ep[2].ep.ep_list, & dev->gadget.ep_list);
  tmp___2 = 1024U;
  dev->ep[2].fifo_size = tmp___2;
  dev->ep[1].fifo_size = tmp___2;
  }
  goto ldv_36679;
  case_3:
  dev->ep[1].fifo_size = 1024U;
  goto ldv_36679;
  switch_break: ;
  }
  ldv_36679:
  {
  list_add_tail(& dev->ep[3].ep.ep_list, & dev->gadget.ep_list);
  dev->ep[3].fifo_size = 512U;
  }
  return;
}
}
static void net2272_usb_reset(struct net2272 *dev )
{
  u8 tmp ;
  {
  {
  dev->gadget.speed = 0;
  net2272_cancel_dma(dev);
  net2272_write(dev, 32U, 0);
  net2272_write(dev, 33U, 0);
  net2272_write(dev, 2U, 255);
  net2272_write(dev, 3U, 247);
  net2272_write(dev, 28U, (int )((u8 )(((((int )((signed char )((int )dev->dma_eot_polarity << 3)) | 16) | (int )((signed char )((int )dev->dma_dack_polarity << 2))) | (int )((signed char )((int )dev->dma_dreq_polarity << 1))) | (int )((signed char )((int )dma_ep >> 1)))));
  net2272_cancel_dma(dev);
  net2272_set_fifo_mode(dev, (unsigned int )fifo_mode <= 3U ? (int )fifo_mode : 0);
  tmp = net2272_read(dev, 34U);
  net2272_write(dev, 34U, (int )((unsigned int )tmp | 1U));
  net2272_write(dev, 36U, (int )((u8 )dma_mode));
  }
  return;
}
}
static void net2272_usb_reinit(struct net2272 *dev )
{
  int i ;
  struct net2272_ep *ep ;
  {
  i = 0;
  goto ldv_36692;
  ldv_36691:
  ep = (struct net2272_ep *)(& dev->ep) + (unsigned long )i;
  ep->ep.name = ep_name[i];
  ep->dev = dev;
  ep->num = (unsigned char )i;
  ep->not_empty = 0U;
  if ((int )use_dma && (int )((unsigned short )ep->num) == (int )dma_ep) {
    ep->dma = 1U;
  } else {
  }
  if ((unsigned int )i - 1U <= 2U) {
    ep->fifo_size = 512U;
  } else {
    ep->fifo_size = 64U;
  }
  {
  net2272_ep_reset(ep);
  i = i + 1;
  }
  ldv_36692: ;
  if (i <= 3) {
    goto ldv_36691;
  } else {
  }
  {
  usb_ep_set_maxpacket_limit(& dev->ep[0].ep, 64U);
  dev->gadget.ep0 = & dev->ep[0].ep;
  dev->ep[0].stopped = 0U;
  INIT_LIST_HEAD(& (dev->gadget.ep0)->ep_list);
  }
  return;
}
}
static void net2272_ep0_start(struct net2272 *dev )
{
  struct net2272_ep *ep0 ;
  {
  {
  ep0 = (struct net2272_ep *)(& dev->ep);
  net2272_ep_write(ep0, 15U, 132);
  net2272_ep_write(ep0, 14U, 72);
  net2272_write(dev, 24U, (int )((u8 )((int )((signed char )((int )dev->softconnect << 3)) | 34)));
  net2272_write(dev, 32U, 97);
  net2272_write(dev, 33U, 84);
  }
  return;
}
}
static int net2272_start(struct usb_gadget *_gadget , struct usb_gadget_driver *driver )
{
  struct net2272 *dev ;
  unsigned int i ;
  struct usb_gadget const *__mptr ;
  {
  if (((unsigned long )driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned long )driver->setup == (unsigned long )((int (*)(struct usb_gadget * ,
                                                                                                                                               struct usb_ctrlrequest const * ))0)) || (unsigned int )driver->max_speed != 3U) {
    return (-22);
  } else {
  }
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct net2272 *)__mptr;
  i = 0U;
  goto ldv_36707;
  ldv_36706:
  dev->ep[i].irqs = 0UL;
  i = i + 1U;
  ldv_36707: ;
  if (i <= 3U) {
    goto ldv_36706;
  } else {
  }
  {
  dev->softconnect = 1U;
  driver->driver.bus = (struct bus_type *)0;
  dev->driver = driver;
  net2272_ep0_start(dev);
  }
  return (0);
}
}
static void stop_activity(struct net2272 *dev , struct usb_gadget_driver *driver )
{
  int i ;
  {
  if ((unsigned int )dev->gadget.speed == 0U) {
    driver = (struct usb_gadget_driver *)0;
  } else {
  }
  {
  net2272_usb_reset(dev);
  i = 0;
  }
  goto ldv_36715;
  ldv_36714:
  {
  net2272_dequeue_all((struct net2272_ep *)(& dev->ep) + (unsigned long )i);
  i = i + 1;
  }
  ldv_36715: ;
  if (i <= 3) {
    goto ldv_36714;
  } else {
  }
  if ((unsigned long )driver != (unsigned long )((struct usb_gadget_driver *)0)) {
    {
    ldv_spin_unlock_101(& dev->lock);
    (*(driver->disconnect))(& dev->gadget);
    ldv_spin_lock_102(& dev->lock);
    }
  } else {
  }
  {
  net2272_usb_reinit(dev);
  }
  return;
}
}
static int net2272_stop(struct usb_gadget *_gadget )
{
  struct net2272 *dev ;
  unsigned long flags ;
  struct usb_gadget const *__mptr ;
  {
  {
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct net2272 *)__mptr;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(& dev->lock);
  stop_activity(dev, (struct usb_gadget_driver *)0);
  ldv_spin_unlock_irqrestore_97(& dev->lock, flags);
  dev->driver = (struct usb_gadget_driver *)0;
  }
  return (0);
}
}
static void net2272_handle_dma(struct net2272_ep *ep )
{
  struct net2272_request *req ;
  unsigned int len ;
  int status ;
  struct list_head const *__mptr ;
  int tmp ;
  u8 tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  u8 tmp___5 ;
  {
  {
  tmp = list_empty((struct list_head const *)(& ep->queue));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)ep->queue.next;
    req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
  } else {
    req = (struct net2272_request *)0;
  }
  {
  net2272_write(ep->dev, 28U, (int )((u8 )(((((int )((signed char )((int )(ep->dev)->dma_eot_polarity << 3)) | 16) | (int )((signed char )((int )(ep->dev)->dma_dack_polarity << 2))) | (int )((signed char )((int )(ep->dev)->dma_dreq_polarity << 1))) | (int )((signed char )ep->dma))));
  (ep->dev)->dma_busy = 0U;
  tmp___0 = net2272_ep_read(ep, 11U);
  net2272_ep_write(ep, 11U, (int )((unsigned int )tmp___0 | 12U));
  }
  if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U) {
    if (req->req.length % (unsigned int )ep->ep.maxpacket != 0U || (unsigned int )*((unsigned char *)req + 42UL) != 0U) {
      {
      set_fifo_bytecount(ep, 0U);
      }
    } else {
    }
    {
    net2272_done(ep, req, 0);
    tmp___1 = list_empty((struct list_head const *)(& ep->queue));
    }
    if (tmp___1 == 0) {
      {
      __mptr___0 = (struct list_head const *)ep->queue.next;
      req = (struct net2272_request *)__mptr___0 + 0xffffffffffffffa8UL;
      status = net2272_kick_dma(ep, req);
      }
      if (status < 0) {
        {
        net2272_pio_advance(ep);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    tmp___2 = net2272_read(ep->dev, 2U);
    }
    if (((int )tmp___2 & 64) != 0) {
      {
      net2272_cancel_dma(ep->dev);
      }
    } else {
    }
    {
    tmp___3 = net2272_ep_read(ep, 10U);
    tmp___4 = net2272_ep_read(ep, 9U);
    tmp___5 = net2272_ep_read(ep, 8U);
    len = (unsigned int )((((int )tmp___3 << 16) | ((int )tmp___4 << 8)) | (int )tmp___5);
    }
    if ((unsigned int )*((unsigned char *)ep + 107UL) != 0U) {
      len = len + 4U;
    } else {
    }
    {
    req->req.actual = req->req.actual + len;
    net2272_pio_advance(ep);
    }
  }
  return;
}
}
static void net2272_handle_ep(struct net2272_ep *ep )
{
  struct net2272_request *req ;
  u8 stat0 ;
  u8 stat1 ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)(& ep->queue));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)ep->queue.next;
    req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
  } else {
    req = (struct net2272_request *)0;
  }
  {
  stat0 = net2272_ep_read(ep, 6U);
  stat1 = net2272_ep_read(ep, 7U);
  ep->irqs = ep->irqs + 1UL;
  net2272_ep_write(ep, 6U, (int )stat0 & 207);
  net2272_ep_write(ep, 7U, (int )stat1);
  }
  if ((unsigned int )*((unsigned char *)ep + 106UL) == 0U && ((int )stat0 & 8) != 0) {
    {
    net2272_pio_advance(ep);
    }
  } else
  if (((int )stat0 & 4) != 0) {
    {
    net2272_pio_advance(ep);
    }
  } else {
  }
  return;
}
}
static struct net2272_ep *net2272_get_ep_by_addr(struct net2272 *dev , u16 wIndex )
{
  struct net2272_ep *ep ;
  struct list_head const *__mptr ;
  u8 bEndpointAddress ;
  struct list_head const *__mptr___0 ;
  {
  if (((int )wIndex & 15) == 0) {
    return ((struct net2272_ep *)(& dev->ep));
  } else {
  }
  __mptr = (struct list_head const *)dev->gadget.ep_list.next;
  ep = (struct net2272_ep *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_36754;
  ldv_36753: ;
  if ((unsigned long )ep->desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) {
    goto ldv_36752;
  } else {
  }
  bEndpointAddress = (ep->desc)->bEndpointAddress;
  if ((((int )wIndex ^ (int )bEndpointAddress) & 128) != 0) {
    goto ldv_36752;
  } else {
  }
  if ((((int )wIndex ^ (int )bEndpointAddress) & 15) == 0) {
    return (ep);
  } else {
  }
  ldv_36752:
  __mptr___0 = (struct list_head const *)ep->ep.ep_list.next;
  ep = (struct net2272_ep *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_36754: ;
  if ((unsigned long )(& ep->ep.ep_list) != (unsigned long )(& dev->gadget.ep_list)) {
    goto ldv_36753;
  } else {
  }
  return ((struct net2272_ep *)0);
}
}
static u8 const net2272_test_packet[52U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 170U, 170U, 170U,
        170U, 170U, 170U, 170U,
        170U, 238U, 238U, 238U,
        238U, 238U, 238U, 238U,
        238U, 254U, 255U, 255U,
        255U, 255U, 255U, 255U,
        255U, 255U, 255U, 255U,
        255U, 127U, 191U, 223U,
        239U, 247U, 251U, 253U,
        252U, 126U, 191U, 223U,
        239U, 247U, 253U, 126U};
static void net2272_set_test_mode(struct net2272 *dev , int mode )
{
  int i ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  {
  net2272_write(dev, 32U, 0);
  net2272_write(dev, 33U, 0);
  net2272_write(dev, 51U, 8);
  net2272_write(dev, 4U, 0);
  net2272_write(dev, 6U, 4);
  net2272_write(dev, 14U, 72);
  net2272_write(dev, 42U, 16);
  net2272_write(dev, 7U, 128);
  }
  goto ldv_36763;
  ldv_36762: ;
  ldv_36763:
  {
  tmp = net2272_read(dev, 6U);
  }
  if (((int )tmp & 4) == 0) {
    goto ldv_36762;
  } else {
  }
  {
  net2272_write(dev, 50U, (int )((u8 )mode));
  }
  if (mode == 4) {
    {
    tmp___0 = net2272_read(dev, 34U);
    net2272_write(dev, 34U, (int )tmp___0 & 254);
    i = 0;
    }
    goto ldv_36766;
    ldv_36765:
    {
    net2272_write(dev, 5U, (int )net2272_test_packet[i]);
    i = i + 1;
    }
    ldv_36766: ;
    if ((unsigned int )i <= 51U) {
      goto ldv_36765;
    } else {
    }
    {
    net2272_write(dev, 8U, 0);
    }
  } else {
  }
  return;
}
}
static void net2272_handle_stat0_irqs(struct net2272 *dev , u8 stat )
{
  struct net2272_ep *ep ;
  u8 num ;
  u8 scratch ;
  union __anonunion_u_224 u ;
  int tmp ;
  struct net2272_request *req ;
  u8 tmp___0 ;
  struct _ddebug descriptor ;
  char const *tmp___1 ;
  long tmp___2 ;
  struct list_head const *__mptr ;
  int tmp___3 ;
  struct net2272_ep *e ;
  u16 status ;
  u8 tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  struct net2272_ep *e___0 ;
  struct net2272_ep *e___1 ;
  u8 tmp___9 ;
  long tmp___10 ;
  u8 t ;
  struct _ddebug descriptor___0 ;
  long tmp___11 ;
  {
  {
  tmp___10 = ldv__builtin_expect(((int )stat & 32) != 0, 0L);
  }
  if (tmp___10 != 0L) {
    tmp = 0;
    if ((unsigned int )dev->gadget.speed == 0U) {
      {
      tmp___0 = net2272_read(dev, 25U);
      }
      if (((int )tmp___0 & 4) != 0) {
        dev->gadget.speed = 3;
      } else {
        dev->gadget.speed = 2;
      }
      {
      descriptor.modname = "net2272";
      descriptor.function = "net2272_handle_stat0_irqs";
      descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
      descriptor.format = "%s\n";
      descriptor.lineno = 1736U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        tmp___1 = usb_speed_string(dev->gadget.speed);
        __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s\n",
                          tmp___1);
        }
      } else {
      }
    } else {
    }
    ep = (struct net2272_ep *)(& dev->ep);
    ep->irqs = ep->irqs + 1UL;
    stat = (unsigned int )stat & 254U;
    goto ldv_36786;
    ldv_36785:
    {
    __mptr = (struct list_head const *)ep->queue.next;
    req = (struct net2272_request *)__mptr + 0xffffffffffffffa8UL;
    net2272_done(ep, req, req->req.actual == req->req.length ? 0 : -71);
    }
    ldv_36786:
    {
    tmp___3 = list_empty((struct list_head const *)(& ep->queue));
    }
    if (tmp___3 == 0) {
      goto ldv_36785;
    } else {
    }
    {
    ep->stopped = 0U;
    dev->protocol_stall = 0U;
    net2272_ep_write(ep, 6U, 31);
    net2272_ep_write(ep, 7U, 127);
    net2272_write(dev, 4U, 0);
    net2272_write(dev, 10U, 255);
    net2272_write(dev, 9U, 255);
    net2272_write(dev, 8U, 255);
    u.raw[0] = net2272_read(dev, 64U);
    u.raw[1] = net2272_read(dev, 65U);
    u.raw[2] = net2272_read(dev, 66U);
    u.raw[3] = net2272_read(dev, 67U);
    u.raw[4] = net2272_read(dev, 68U);
    u.raw[5] = net2272_read(dev, 69U);
    u.raw[6] = net2272_read(dev, 70U);
    u.raw[7] = net2272_read(dev, 71U);
    net2272_write(dev, 2U, 32);
    stat = (u8 )((unsigned int )stat ^ 32U);
    ep->is_in = (int )((signed char )u.r.bRequestType) < 0;
    }
    if ((unsigned int )*((unsigned char *)ep + 106UL) != 0U) {
      {
      scratch = 7U;
      stop_out_naking(ep);
      }
    } else {
      scratch = 11U;
    }
    {
    net2272_ep_write(ep, 11U, (int )scratch);
    }
    if (((int )u.r.bRequestType & 96) != 0) {
      goto delegate;
    } else {
    }
    {
    if ((int )u.r.bRequest == 0) {
      goto case_0;
    } else {
    }
    if ((int )u.r.bRequest == 1) {
      goto case_1___0;
    } else {
    }
    if ((int )u.r.bRequest == 3) {
      goto case_3;
    } else {
    }
    if ((int )u.r.bRequest == 5) {
      goto case_5;
    } else {
    }
    goto switch_default;
    case_0:
    status = 0U;
    {
    if (((int )u.r.bRequestType & 31) == 2) {
      goto case_2;
    } else {
    }
    if (((int )u.r.bRequestType & 31) == 0) {
      goto case_0___0;
    } else {
    }
    if (((int )u.r.bRequestType & 31) == 1) {
      goto case_1;
    } else {
    }
    goto switch_break___0;
    case_2:
    {
    e = net2272_get_ep_by_addr(dev, (int )u.r.wIndex);
    }
    if ((unsigned long )e == (unsigned long )((struct net2272_ep *)0) || (unsigned int )u.r.wLength > 2U) {
      goto do_stall;
    } else {
    }
    {
    tmp___4 = net2272_ep_read(e, 15U);
    }
    if ((int )tmp___4 & 1) {
      status = 1U;
    } else {
      status = 0U;
    }
    {
    net2272_ep_write((struct net2272_ep *)(& dev->ep), 11U, 0);
    tmp___5 = net2272_reg_addr(dev, 5U);
    writew((int )status, (void volatile *)tmp___5);
    set_fifo_bytecount((struct net2272_ep *)(& dev->ep), 0U);
    allow_status(ep);
    }
    goto next_endpoints;
    case_0___0: ;
    if ((unsigned int )u.r.wLength > 2U) {
      goto do_stall;
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 1552UL) != 0U) {
      status = 1U;
    } else {
    }
    {
    net2272_ep_write((struct net2272_ep *)(& dev->ep), 11U, 0);
    tmp___6 = net2272_reg_addr(dev, 5U);
    writew((int )status, (void volatile *)tmp___6);
    set_fifo_bytecount((struct net2272_ep *)(& dev->ep), 0U);
    allow_status(ep);
    }
    goto next_endpoints;
    case_1: ;
    if ((unsigned int )u.r.wLength > 2U) {
      goto do_stall;
    } else {
    }
    {
    net2272_ep_write((struct net2272_ep *)(& dev->ep), 11U, 0);
    tmp___7 = net2272_reg_addr(dev, 5U);
    writew((int )status, (void volatile *)tmp___7);
    set_fifo_bytecount((struct net2272_ep *)(& dev->ep), 0U);
    allow_status(ep);
    }
    goto next_endpoints;
    switch_break___0: ;
    }
    goto ldv_36797;
    case_1___0: ;
    if ((unsigned int )u.r.bRequestType != 2U) {
      goto delegate;
    } else {
    }
    if ((unsigned int )u.r.wValue != 0U || (unsigned int )u.r.wLength != 0U) {
      goto do_stall;
    } else {
    }
    {
    e___0 = net2272_get_ep_by_addr(dev, (int )u.r.wIndex);
    }
    if ((unsigned long )e___0 == (unsigned long )((struct net2272_ep *)0)) {
      goto do_stall;
    } else {
    }
    if ((unsigned int )*((unsigned char *)e___0 + 106UL) != 0U) {
    } else {
      {
      clear_halt(e___0);
      }
    }
    {
    allow_status(ep);
    }
    goto next_endpoints;
    case_3: ;
    if ((unsigned int )u.r.bRequestType == 0U) {
      if ((unsigned int )u.r.wIndex != 0U) {
        {
        net2272_set_test_mode(dev, (int )u.r.wIndex >> 8);
        }
      } else {
      }
      {
      allow_status(ep);
      }
      goto next_endpoints;
    } else
    if ((unsigned int )u.r.bRequestType != 2U) {
      goto delegate;
    } else {
    }
    if ((unsigned int )u.r.wValue != 0U || (unsigned int )u.r.wLength != 0U) {
      goto do_stall;
    } else {
    }
    {
    e___1 = net2272_get_ep_by_addr(dev, (int )u.r.wIndex);
    }
    if ((unsigned long )e___1 == (unsigned long )((struct net2272_ep *)0)) {
      goto do_stall;
    } else {
    }
    {
    set_halt(e___1);
    allow_status(ep);
    }
    goto next_endpoints;
    case_5:
    {
    net2272_write(dev, 48U, (int )((u8 )u.r.wValue));
    allow_status(ep);
    }
    goto ldv_36797;
    switch_default: ;
    delegate:
    {
    ldv_spin_unlock_101(& dev->lock);
    tmp = (*((dev->driver)->setup))(& dev->gadget, (struct usb_ctrlrequest const *)(& u.r));
    ldv_spin_lock_102(& dev->lock);
    }
    switch_break: ;
    }
    ldv_36797: ;
    if (tmp < 0) {
      do_stall:
      dev->protocol_stall = 1U;
    } else {
    }
  } else
  if (((int )stat & 64) != 0) {
    {
    net2272_cancel_dma(dev);
    net2272_write(dev, 2U, 64);
    stat = (unsigned int )stat & 191U;
    tmp___9 = net2272_read(dev, 28U);
    num = (int )tmp___9 & 1 ? 2U : 1U;
    ep = (struct net2272_ep *)(& dev->ep) + (unsigned long )num;
    net2272_handle_dma(ep);
    }
  } else {
  }
  next_endpoints:
  scratch = (unsigned int )stat & 15U;
  stat = (unsigned int )stat & 240U;
  num = 0U;
  goto ldv_36807;
  ldv_36806:
  t = (u8 )(1 << (int )num);
  if ((unsigned int )((int )scratch & (int )t) == 0U) {
    goto ldv_36805;
  } else {
  }
  {
  scratch = (u8 )((int )scratch ^ (int )t);
  ep = (struct net2272_ep *)(& dev->ep) + (unsigned long )num;
  net2272_handle_ep(ep);
  }
  ldv_36805:
  num = (u8 )((int )num + 1);
  ldv_36807: ;
  if ((unsigned int )scratch != 0U) {
    goto ldv_36806;
  } else {
  }
  stat = (unsigned int )stat & 127U;
  if ((unsigned int )stat != 0U) {
    {
    descriptor___0.modname = "net2272";
    descriptor___0.function = "net2272_handle_stat0_irqs";
    descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___0.format = "unhandled irqstat0 %02x\n";
    descriptor___0.lineno = 1969U;
    descriptor___0.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "unhandled irqstat0 %02x\n",
                        (int )stat);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void net2272_handle_stat1_irqs(struct net2272 *dev , u8 stat )
{
  u8 tmp ;
  u8 mask ;
  bool reset ;
  bool disconnect ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  {
  tmp = 68U;
  mask = 6U;
  if ((unsigned int )((int )stat & (int )tmp) != 0U) {
    {
    reset = 0;
    disconnect = 0;
    net2272_write(dev, 3U, (int )tmp);
    }
    if ((unsigned int )dev->gadget.speed != 0U) {
      if (((int )stat & 4) != 0) {
        {
        tmp___3 = net2272_read(dev, 25U);
        }
        if (((int )tmp___3 & 1) == 0) {
          {
          disconnect = 1;
          descriptor.modname = "net2272";
          descriptor.function = "net2272_handle_stat1_irqs";
          descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
          descriptor.format = "disconnect %s\n";
          descriptor.lineno = 1996U;
          descriptor.flags = 0U;
          tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          }
          if (tmp___0 != 0L) {
            {
            __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "disconnect %s\n",
                              (dev->driver)->driver.name);
            }
          } else {
          }
        } else {
          goto _L;
        }
      } else
      _L:
      if (((int )stat & 64) != 0) {
        {
        tmp___2 = net2272_read(dev, 25U);
        }
        if ((unsigned int )((int )tmp___2 & (int )mask) == 0U) {
          {
          reset = 1;
          descriptor___0.modname = "net2272";
          descriptor___0.function = "net2272_handle_stat1_irqs";
          descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
          descriptor___0.format = "reset %s\n";
          descriptor___0.lineno = 2002U;
          descriptor___0.flags = 0U;
          tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
          }
          if (tmp___1 != 0L) {
            {
            __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev,
                              "reset %s\n", (dev->driver)->driver.name);
            }
          } else {
          }
        } else {
        }
      } else {
      }
      if ((int )disconnect || (int )reset) {
        {
        stop_activity(dev, dev->driver);
        net2272_ep0_start(dev);
        ldv_spin_unlock_101(& dev->lock);
        }
        if ((int )reset) {
          {
          usb_gadget_udc_reset(& dev->gadget, dev->driver);
          }
        } else {
          {
          (*((dev->driver)->disconnect))(& dev->gadget);
          }
        }
        {
        ldv_spin_lock_102(& dev->lock);
        }
        return;
      } else {
      }
    } else {
    }
    stat = (u8 )((int )((signed char )stat) & ~ ((int )((signed char )tmp)));
    if ((unsigned int )stat == 0U) {
      return;
    } else {
    }
  } else {
  }
  tmp = 16U;
  if ((unsigned int )((int )stat & (int )tmp) != 0U) {
    {
    net2272_write(dev, 3U, (int )tmp);
    }
    if (((int )stat & 8) != 0) {
      if ((unsigned long )(dev->driver)->suspend != (unsigned long )((void (*)(struct usb_gadget * ))0)) {
        {
        (*((dev->driver)->suspend))(& dev->gadget);
        }
      } else {
      }
      if ((unsigned int )enable_suspend == 0U) {
        {
        stat = (unsigned int )stat & 247U;
        descriptor___1.modname = "net2272";
        descriptor___1.function = "net2272_handle_stat1_irqs";
        descriptor___1.filename = "drivers/usb/gadget/udc/net2272.c";
        descriptor___1.format = "Suspend disabled, ignoring\n";
        descriptor___1.lineno = 2033U;
        descriptor___1.flags = 0U;
        tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___4 != 0L) {
          {
          __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "Suspend disabled, ignoring\n");
          }
        } else {
        }
      } else {
      }
    } else
    if ((unsigned long )(dev->driver)->resume != (unsigned long )((void (*)(struct usb_gadget * ))0)) {
      {
      (*((dev->driver)->resume))(& dev->gadget);
      }
    } else {
    }
    stat = (u8 )((int )((signed char )stat) & ~ ((int )((signed char )tmp)));
  } else {
  }
  if ((unsigned int )stat != 0U) {
    {
    net2272_write(dev, 3U, (int )stat);
    }
  } else {
  }
  stat = (unsigned int )stat & 213U;
  if ((unsigned int )stat == 0U) {
    return;
  } else {
    {
    descriptor___2.modname = "net2272";
    descriptor___2.function = "net2272_handle_stat1_irqs";
    descriptor___2.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___2.format = "unhandled irqstat1 %02x\n";
    descriptor___2.lineno = 2053U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "unhandled irqstat1 %02x\n",
                        (int )stat);
      }
    } else {
    }
  }
  return;
}
}
static irqreturn_t net2272_irq(int irq , void *_dev )
{
  struct net2272 *dev ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  {
  dev = (struct net2272 *)_dev;
  ldv_spin_lock_102(& dev->lock);
  tmp = net2272_read(dev, 3U);
  net2272_handle_stat1_irqs(dev, (int )tmp);
  tmp___0 = net2272_read(dev, 2U);
  net2272_handle_stat0_irqs(dev, (int )tmp___0);
  ldv_spin_unlock_101(& dev->lock);
  }
  return (1);
}
}
static int net2272_present(struct net2272 *dev )
{
  unsigned int ii ;
  u8 val ;
  u8 refval ;
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
  {
  {
  refval = net2272_read(dev, 29U);
  ii = 0U;
  }
  goto ldv_36837;
  ldv_36836:
  {
  net2272_write(dev, 29U, (int )((u8 )ii));
  val = net2272_read(dev, 29U);
  }
  if ((unsigned int )val != ii) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_present";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "%s: write/read SCRATCH register test failed: wrote:0x%2.2x, read:0x%2.2x\n";
    descriptor.lineno = 2131U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: write/read SCRATCH register test failed: wrote:0x%2.2x, read:0x%2.2x\n",
                        "net2272_present", ii, (int )val);
      }
    } else {
    }
    return (-22);
  } else {
  }
  ii = ii + 7U;
  ldv_36837: ;
  if (ii <= 255U) {
    goto ldv_36836;
  } else {
  }
  {
  net2272_write(dev, 29U, (int )refval);
  refval = net2272_read(dev, 37U);
  ii = 0U;
  }
  goto ldv_36841;
  ldv_36840:
  {
  net2272_write(dev, 37U, (int )((u8 )ii));
  val = net2272_read(dev, 37U);
  }
  if ((int )val != (int )refval) {
    {
    descriptor___0.modname = "net2272";
    descriptor___0.function = "net2272_present";
    descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___0.format = "%s: write/read CHIPREV register test failed: wrote 0x%2.2x, read:0x%2.2x expected:0x%2.2x\n";
    descriptor___0.lineno = 2147U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "%s: write/read CHIPREV register test failed: wrote 0x%2.2x, read:0x%2.2x expected:0x%2.2x\n",
                        "net2272_present", ii, (int )val, (int )refval);
      }
    } else {
    }
    return (-22);
  } else {
  }
  ii = ii + 7U;
  ldv_36841: ;
  if (ii <= 255U) {
    goto ldv_36840;
  } else {
  }
  {
  val = net2272_read(dev, 35U);
  }
  if ((unsigned int )val != 64U) {
    {
    descriptor___1.modname = "net2272";
    descriptor___1.function = "net2272_present";
    descriptor___1.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___1.format = "%s: WARNING: UNEXPECTED NET2272 LEGACY REGISTER VALUE:\n - CHIPREV_LEGACY: expected 0x%2.2x, got:0x%2.2x. (Not NET2272?)\n";
    descriptor___1.lineno = 2168U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "%s: WARNING: UNEXPECTED NET2272 LEGACY REGISTER VALUE:\n - CHIPREV_LEGACY: expected 0x%2.2x, got:0x%2.2x. (Not NET2272?)\n",
                        "net2272_present", 64, (int )val);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  val = net2272_read(dev, 37U);
  }
  {
  if ((int )val == 16) {
    goto case_16;
  } else {
  }
  if ((int )val == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_16:
  {
  descriptor___2.modname = "net2272";
  descriptor___2.function = "net2272_present";
  descriptor___2.filename = "drivers/usb/gadget/udc/net2272.c";
  descriptor___2.format = "%s: Rev 1 detected: newer silicon recommended for DMA support\n";
  descriptor___2.lineno = 2186U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "%s: Rev 1 detected: newer silicon recommended for DMA support\n",
                      "net2272_present");
    }
  } else {
  }
  goto ldv_36846;
  case_17: ;
  goto ldv_36846;
  switch_default:
  {
  descriptor___3.modname = "net2272";
  descriptor___3.function = "net2272_present";
  descriptor___3.filename = "drivers/usb/gadget/udc/net2272.c";
  descriptor___3.format = "%s: unexpected silicon revision register value:  CHIPREV_2272: 0x%2.2x\n";
  descriptor___3.lineno = 2195U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev->dev, "%s: unexpected silicon revision register value:  CHIPREV_2272: 0x%2.2x\n",
                      "net2272_present", (int )val);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_36846: ;
  return (0);
}
}
static void net2272_gadget_release(struct device *_dev )
{
  struct net2272 *dev ;
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)_dev);
  dev = (struct net2272 *)tmp;
  kfree((void const *)dev);
  }
  return;
}
}
static void net2272_remove(struct net2272 *dev )
{
  {
  {
  usb_del_gadget_udc(& dev->gadget);
  ldv_free_irq_128(dev->irq, (void *)dev);
  ldv_iounmap_129((void volatile *)dev->base_addr);
  device_remove_file(dev->dev, (struct device_attribute const *)(& dev_attr_registers));
  _dev_info((struct device const *)dev->dev, "unbind\n");
  }
  return;
}
}
static struct net2272 *net2272_probe_init(struct device *dev , unsigned int irq )
{
  struct net2272 *ret ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key ;
  {
  if (irq == 0U) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_probe_init";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "No IRQ!\n";
    descriptor.lineno = 2232U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "No IRQ!\n");
      }
    } else {
    }
    {
    tmp___0 = ERR_PTR(-19L);
    }
    return ((struct net2272 *)tmp___0);
  } else {
  }
  {
  tmp___1 = kzalloc(2152UL, 208U);
  ret = (struct net2272 *)tmp___1;
  }
  if ((unsigned long )ret == (unsigned long )((struct net2272 *)0)) {
    {
    tmp___2 = ERR_PTR(-12L);
    }
    return ((struct net2272 *)tmp___2);
  } else {
  }
  {
  spinlock_check(& ret->lock);
  __raw_spin_lock_init(& ret->lock.__annonCompField18.rlock, "&(&ret->lock)->rlock",
                       & __key);
  ret->irq = irq;
  ret->dev = dev;
  ret->gadget.ops = & net2272_ops;
  ret->gadget.max_speed = 3;
  ret->gadget.name = (char const *)(& driver_name);
  }
  return (ret);
}
}
static int net2272_probe_fin(struct net2272 *dev , unsigned int irqflags )
{
  int ret ;
  int tmp ;
  u8 tmp___0 ;
  char *tmp___1 ;
  {
  {
  tmp = net2272_present(dev);
  }
  if (tmp != 0) {
    {
    dev_warn((struct device const *)dev->dev, "2272 not found!\n");
    ret = -19;
    }
    goto err;
  } else {
  }
  {
  net2272_usb_reset(dev);
  net2272_usb_reinit(dev);
  ret = ldv_request_irq_130(dev->irq, & net2272_irq, (unsigned long )irqflags, (char const *)(& driver_name),
                            (void *)dev);
  }
  if (ret != 0) {
    {
    dev_err((struct device const *)dev->dev, "request interrupt %i failed\n", dev->irq);
    }
    goto err;
  } else {
  }
  {
  tmp___0 = net2272_read(dev, 37U);
  dev->chiprev = (u16 )tmp___0;
  _dev_info((struct device const *)dev->dev, "%s\n", (char const *)(& driver_desc));
  tmp___1 = dma_mode_string();
  _dev_info((struct device const *)dev->dev, "irq %i, mem %p, chip rev %04x, dma %s\n",
            dev->irq, dev->base_addr, (int )dev->chiprev, tmp___1);
  _dev_info((struct device const *)dev->dev, "version: %s\n", (char const *)(& driver_vers));
  ret = device_create_file(dev->dev, (struct device_attribute const *)(& dev_attr_registers));
  }
  if (ret != 0) {
    goto err_irq;
  } else {
  }
  {
  ret = usb_add_gadget_udc_release(dev->dev, & dev->gadget, & net2272_gadget_release);
  }
  if (ret != 0) {
    goto err_add_udc;
  } else {
  }
  return (0);
  err_add_udc:
  {
  device_remove_file(dev->dev, (struct device_attribute const *)(& dev_attr_registers));
  }
  err_irq:
  {
  ldv_free_irq_131(dev->irq, (void *)dev);
  }
  err: ;
  return (ret);
}
}
static int net2272_rdk1_probe(struct pci_dev *pdev , struct net2272 *dev )
{
  unsigned long resource ;
  unsigned long len ;
  unsigned long tmp ;
  void *mem_mapped_addr[4U] ;
  int ret ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct resource *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char tmp___5 ;
  {
  i = 0;
  goto ldv_36889;
  ldv_36888: ;
  if (i == 1) {
    goto ldv_36883;
  } else {
  }
  {
  resource = (unsigned long )pdev->resource[i].start;
  len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
  tmp___1 = __request_region(& iomem_resource, (resource_size_t )resource, (resource_size_t )len,
                             (char const *)(& driver_name), 0);
  }
  if ((unsigned long )tmp___1 == (unsigned long )((struct resource *)0)) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_rdk1_probe";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "controller already in use\n";
    descriptor.lineno = 2332U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "controller already in use\n");
      }
    } else {
    }
    ret = -16;
    goto err;
  } else {
  }
  {
  mem_mapped_addr[i] = ldv_ioremap_nocache_132((resource_size_t )resource, len);
  }
  if ((unsigned long )mem_mapped_addr[i] == (unsigned long )((void *)0)) {
    {
    __release_region(& iomem_resource, (resource_size_t )resource, (resource_size_t )len);
    descriptor___0.modname = "net2272";
    descriptor___0.function = "net2272_rdk1_probe";
    descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___0.format = "can\'t map memory\n";
    descriptor___0.lineno = 2340U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "can\'t map memory\n");
      }
    } else {
    }
    ret = -14;
    goto err;
  } else {
  }
  ldv_36883:
  i = i + 1;
  ldv_36889: ;
  if (i <= 3) {
    goto ldv_36888;
  } else {
  }
  {
  dev->__annonCompField74.rdk1.plx9054_base_addr = mem_mapped_addr[0];
  dev->__annonCompField74.rdk1.epld_base_addr = mem_mapped_addr[2];
  dev->base_addr = (u16 *)mem_mapped_addr[3];
  tmp___3 = readl((void const volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 248U);
  tmp = (unsigned long )tmp___3;
  writel(((unsigned int )tmp & 4294967292U) | 1U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 248U);
  tmp___4 = readl((void const volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  writel(tmp___4 | 2304U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  writeb(8, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 168U);
  writeb(243, (void volatile *)dev->base_addr + 1024U);
  __asm__ volatile ("mfence": : : "memory");
  tmp___5 = readb((void const volatile *)dev->base_addr + 1024U);
  writeb((int )tmp___5 & 254, (void volatile *)dev->base_addr + 1024U);
  __const_udelay(859000UL);
  }
  return (0);
  err: ;
  goto ldv_36892;
  ldv_36891:
  {
  ldv_iounmap_133((void volatile *)mem_mapped_addr[i]);
  __release_region(& iomem_resource, pdev->resource[i].start, pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (pdev->resource[i].end - pdev->resource[i].start) + 1ULL : 0ULL);
  }
  ldv_36892:
  i = i - 1;
  if (i >= 0) {
    goto ldv_36891;
  } else {
  }
  return (ret);
}
}
static int net2272_rdk2_probe(struct pci_dev *pdev , struct net2272 *dev )
{
  unsigned long resource ;
  unsigned long len ;
  void *mem_mapped_addr[2U] ;
  int ret ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct resource *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  {
  i = 0;
  goto ldv_36908;
  ldv_36907:
  {
  resource = (unsigned long )pdev->resource[i].start;
  len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
  tmp___0 = __request_region(& iomem_resource, (resource_size_t )resource, (resource_size_t )len,
                             (char const *)(& driver_name), 0);
  }
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_rdk2_probe";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "controller already in use\n";
    descriptor.lineno = 2410U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "controller already in use\n");
      }
    } else {
    }
    ret = -16;
    goto err;
  } else {
  }
  {
  mem_mapped_addr[i] = ldv_ioremap_nocache_134((resource_size_t )resource, len);
  }
  if ((unsigned long )mem_mapped_addr[i] == (unsigned long )((void *)0)) {
    {
    __release_region(& iomem_resource, (resource_size_t )resource, (resource_size_t )len);
    descriptor___0.modname = "net2272";
    descriptor___0.function = "net2272_rdk2_probe";
    descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___0.format = "can\'t map memory\n";
    descriptor___0.lineno = 2418U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "can\'t map memory\n");
      }
    } else {
    }
    ret = -14;
    goto err;
  } else {
  }
  i = i + 1;
  ldv_36908: ;
  if (i <= 1) {
    goto ldv_36907;
  } else {
  }
  {
  dev->__annonCompField74.rdk2.fpga_base_addr = mem_mapped_addr[0];
  dev->base_addr = (u16 *)mem_mapped_addr[1];
  __asm__ volatile ("mfence": : : "memory");
  writel(8U, (void volatile *)dev->__annonCompField74.rdk2.fpga_base_addr + 8U);
  __const_udelay(859000UL);
  writel(1U, (void volatile *)dev->__annonCompField74.rdk2.fpga_base_addr + 8U);
  tmp___2 = readl((void const volatile *)dev->__annonCompField74.rdk2.fpga_base_addr + 28U);
  _dev_info((struct device const *)dev->dev, "RDK2 FPGA version %08x\n", tmp___2);
  writel(1U, (void volatile *)dev->__annonCompField74.rdk2.fpga_base_addr);
  }
  return (0);
  err: ;
  goto ldv_36911;
  ldv_36910:
  {
  ldv_iounmap_135((void volatile *)mem_mapped_addr[i]);
  __release_region(& iomem_resource, pdev->resource[i].start, pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (pdev->resource[i].end - pdev->resource[i].start) + 1ULL : 0ULL);
  }
  ldv_36911:
  i = i - 1;
  if (i >= 0) {
    goto ldv_36910;
  } else {
  }
  return (ret);
}
}
static int net2272_pci_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct net2272 *dev ;
  int ret ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  dev = net2272_probe_init(& pdev->dev, pdev->irq);
  tmp___0 = IS_ERR((void const *)dev);
  }
  if ((int )tmp___0) {
    {
    tmp = PTR_ERR((void const *)dev);
    }
    return ((int )tmp);
  } else {
  }
  {
  dev->dev_id = pdev->device;
  tmp___1 = pci_enable_device(pdev);
  }
  if (tmp___1 < 0) {
    ret = -19;
    goto err_free;
  } else {
  }
  {
  pci_set_master(pdev);
  }
  {
  if ((int )pdev->device == 36948) {
    goto case_36948;
  } else {
  }
  if ((int )pdev->device == 12914) {
    goto case_12914;
  } else {
  }
  goto switch_default;
  case_36948:
  {
  ret = net2272_rdk1_probe(pdev, dev);
  }
  goto ldv_36921;
  case_12914:
  {
  ret = net2272_rdk2_probe(pdev, dev);
  }
  goto ldv_36921;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/usb/gadget/udc/net2272.c"),
                       "i" (2471), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_36921: ;
  if (ret != 0) {
    goto err_pci;
  } else {
  }
  {
  ret = net2272_probe_fin(dev, 0U);
  }
  if (ret != 0) {
    goto err_pci;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)dev);
  }
  return (0);
  err_pci:
  {
  pci_disable_device(pdev);
  }
  err_free:
  {
  kfree((void const *)dev);
  }
  return (ret);
}
}
static void net2272_rdk1_remove(struct pci_dev *pdev , struct net2272 *dev )
{
  int i ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  writel(tmp & 4294967039U, (void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr + 104U);
  ldv_iounmap_136((void volatile *)dev->__annonCompField74.rdk1.plx9054_base_addr);
  ldv_iounmap_137((void volatile *)dev->__annonCompField74.rdk1.epld_base_addr);
  i = 0;
  }
  goto ldv_36932;
  ldv_36931: ;
  if (i == 1) {
    goto ldv_36930;
  } else {
  }
  {
  __release_region(& iomem_resource, pdev->resource[i].start, pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (pdev->resource[i].end - pdev->resource[i].start) + 1ULL : 0ULL);
  }
  ldv_36930:
  i = i + 1;
  ldv_36932: ;
  if (i <= 3) {
    goto ldv_36931;
  } else {
  }
  return;
}
}
static void net2272_rdk2_remove(struct pci_dev *pdev , struct net2272 *dev )
{
  int i ;
  {
  {
  ldv_iounmap_138((void volatile *)dev->__annonCompField74.rdk2.fpga_base_addr);
  i = 0;
  }
  goto ldv_36940;
  ldv_36939:
  {
  __release_region(& iomem_resource, pdev->resource[i].start, pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (pdev->resource[i].end - pdev->resource[i].start) + 1ULL : 0ULL);
  i = i + 1;
  }
  ldv_36940: ;
  if (i <= 1) {
    goto ldv_36939;
  } else {
  }
  return;
}
}
static void net2272_pci_remove(struct pci_dev *pdev )
{
  struct net2272 *dev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net2272 *)tmp;
  net2272_remove(dev);
  }
  {
  if ((int )pdev->device == 36948) {
    goto case_36948;
  } else {
  }
  if ((int )pdev->device == 12914) {
    goto case_12914;
  } else {
  }
  goto switch_default;
  case_36948:
  {
  net2272_rdk1_remove(pdev, dev);
  }
  goto ldv_36947;
  case_12914:
  {
  net2272_rdk2_remove(pdev, dev);
  }
  goto ldv_36947;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/usb/gadget/udc/net2272.c"),
                       "i" (2543), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_36947:
  {
  pci_disable_device(pdev);
  kfree((void const *)dev);
  }
  return;
}
}
static struct pci_device_id pci_ids[3U] = { {4277U, 36948U, 4294967295U, 4294967295U, 426238U, 0U, 0UL},
        {4277U, 12914U, 4294967295U, 4294967295U, 426238U, 0U, 0UL}};
struct pci_device_id const __mod_pci__pci_ids_device_table[3U] ;
static struct pci_driver net2272_pci_driver =
     {{0, 0}, (char const *)(& driver_name), (struct pci_device_id const *)(& pci_ids),
    & net2272_pci_probe, & net2272_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                     0, 0, 0, 0, 0,
                                                                     0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int net2272_pci_register(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_139(& net2272_pci_driver, & __this_module, "net2272");
  }
  return (tmp);
}
}
static void net2272_pci_unregister(void)
{
  {
  {
  ldv_pci_unregister_driver_140(& net2272_pci_driver);
  }
  return;
}
}
static int net2272_plat_probe(struct platform_device *pdev )
{
  struct net2272 *dev ;
  int ret ;
  unsigned int irqflags ;
  resource_size_t base ;
  resource_size_t len ;
  struct resource *iomem ;
  struct resource *iomem_bus ;
  struct resource *irq_res ;
  long tmp ;
  bool tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct resource *tmp___2 ;
  void *tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  u8 tmp___5 ;
  {
  {
  irq_res = platform_get_resource(pdev, 1024U, 0U);
  iomem = platform_get_resource(pdev, 512U, 0U);
  iomem_bus = platform_get_resource(pdev, 4096U, 0U);
  }
  if ((unsigned long )irq_res == (unsigned long )((struct resource *)0) || (unsigned long )iomem == (unsigned long )((struct resource *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "must provide irq/base addr");
    }
    return (-22);
  } else {
  }
  {
  dev = net2272_probe_init(& pdev->dev, (unsigned int )irq_res->start);
  tmp___0 = IS_ERR((void const *)dev);
  }
  if ((int )tmp___0) {
    {
    tmp = PTR_ERR((void const *)dev);
    }
    return ((int )tmp);
  } else {
  }
  irqflags = 0U;
  if ((int )irq_res->flags & 1) {
    irqflags = irqflags | 1U;
  } else {
  }
  if ((irq_res->flags & 2UL) != 0UL) {
    irqflags = irqflags | 2U;
  } else {
  }
  if ((irq_res->flags & 4UL) != 0UL) {
    irqflags = irqflags | 4U;
  } else {
  }
  if ((irq_res->flags & 8UL) != 0UL) {
    irqflags = irqflags | 8U;
  } else {
  }
  {
  base = iomem->start;
  len = resource_size((struct resource const *)iomem);
  }
  if ((unsigned long )iomem_bus != (unsigned long )((struct resource *)0)) {
    dev->base_shift = (unsigned int )iomem_bus->start;
  } else {
  }
  {
  tmp___2 = __request_region(& iomem_resource, base, len, (char const *)(& driver_name),
                             0);
  }
  if ((unsigned long )tmp___2 == (unsigned long )((struct resource *)0)) {
    {
    descriptor.modname = "net2272";
    descriptor.function = "net2272_plat_probe";
    descriptor.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor.format = "get request memory region!\n";
    descriptor.lineno = 2635U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "get request memory region!\n");
      }
    } else {
    }
    ret = -16;
    goto err;
  } else {
  }
  {
  tmp___3 = ldv_ioremap_nocache_141(base, (unsigned long )len);
  dev->base_addr = (u16 *)tmp___3;
  }
  if ((unsigned long )dev->base_addr == (unsigned long )((u16 *)0U)) {
    {
    descriptor___0.modname = "net2272";
    descriptor___0.function = "net2272_plat_probe";
    descriptor___0.filename = "drivers/usb/gadget/udc/net2272.c";
    descriptor___0.format = "can\'t map memory\n";
    descriptor___0.lineno = 2641U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "can\'t map memory\n");
      }
    } else {
    }
    ret = -14;
    goto err_req;
  } else {
  }
  {
  ret = net2272_probe_fin(dev, 8U);
  }
  if (ret != 0) {
    goto err_io;
  } else {
  }
  {
  platform_set_drvdata(pdev, (void *)dev);
  tmp___5 = net2272_read(dev, 34U);
  _dev_info((struct device const *)(& pdev->dev), "running in 16-bit, %sbyte swap local bus mode\n",
            ((int )tmp___5 & 32) != 0 ? (char *)"" : (char *)"no ");
  }
  return (0);
  err_io:
  {
  ldv_iounmap_142((void volatile *)dev->base_addr);
  }
  err_req:
  {
  __release_region(& iomem_resource, base, len);
  }
  err: ;
  return (ret);
}
}
static int net2272_plat_remove(struct platform_device *pdev )
{
  struct net2272 *dev ;
  void *tmp ;
  resource_size_t tmp___0 ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  dev = (struct net2272 *)tmp;
  net2272_remove(dev);
  tmp___0 = resource_size((struct resource const *)pdev->resource);
  __release_region(& iomem_resource, (pdev->resource)->start, tmp___0);
  kfree((void const *)dev);
  }
  return (0);
}
}
static struct platform_driver net2272_plat_driver =
     {& net2272_plat_probe, & net2272_plat_remove, 0, 0, 0, {(char const *)(& driver_name),
                                                           0, 0, 0, (_Bool)0, 0, 0,
                                                           0, 0, 0, 0, 0, 0, 0, 0},
    0, (_Bool)0};
static int net2272_init(void)
{
  int ret ;
  {
  {
  ret = net2272_pci_register();
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = ldv___platform_driver_register_143(& net2272_plat_driver, & __this_module);
  }
  if (ret != 0) {
    goto err_pci;
  } else {
  }
  return (ret);
  err_pci:
  {
  net2272_pci_unregister();
  }
  return (ret);
}
}
static void net2272_cleanup(void)
{
  {
  {
  net2272_pci_unregister();
  ldv_platform_driver_unregister_144(& net2272_plat_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_net2272_cleanup_14_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_net2272_init_14_15(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_dispatch_deregister_10_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_14_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_14_5(void) ;
void ldv_dispatch_deregister_io_instance_13_14_6(void) ;
void ldv_dispatch_deregister_rtc_class_instance_11_14_7(void) ;
void ldv_dispatch_irq_deregister_9_1(int arg0 ) ;
void ldv_dispatch_irq_register_11_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_2_5(void) ;
void ldv_dispatch_pm_register_2_6(void) ;
void ldv_dispatch_register_13_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_8_2(struct platform_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_14_8(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_14_9(void) ;
void ldv_dispatch_register_io_instance_13_14_10(void) ;
void ldv_dispatch_register_rtc_class_instance_11_14_11(void) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_10(int (*arg0)(struct usb_gadget * ,
                                                               int ) , struct usb_gadget *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_13(int (*arg0)(struct usb_gadget * ,
                                                               struct usb_gadget_driver * ) ,
                                                   struct usb_gadget *arg1 , struct usb_gadget_driver *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_14(int (*arg0)(struct usb_gadget * ) ,
                                                   struct usb_gadget *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct usb_gadget * ) ,
                                                   struct usb_gadget *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct usb_gadget * ) ,
                                                  struct usb_gadget *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct usb_gadget * ,
                                                              int ) , struct usb_gadget *arg1 ,
                                                  int arg2 ) ;
void ldv_entry_EMGentry_14(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_io_instance_callback_6_19(int (*arg0)(struct usb_ep * , struct usb_request * ) ,
                                   struct usb_ep *arg1 , struct usb_request *arg2 ) ;
void ldv_io_instance_callback_6_20(void (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 ) ;
void ldv_io_instance_callback_6_21(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 ) ;
void ldv_io_instance_callback_6_22(void (*arg0)(struct usb_ep * , struct usb_request * ) ,
                                   struct usb_ep *arg1 , struct usb_request *arg2 ) ;
void ldv_io_instance_callback_6_23(int (*arg0)(struct usb_ep * , struct usb_request * ,
                                               unsigned int ) , struct usb_ep *arg1 ,
                                   struct usb_request *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_6_26(int (*arg0)(struct usb_ep * , int ) , struct usb_ep *arg1 ,
                                   int arg2 ) ;
void ldv_io_instance_callback_6_29(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 ) ;
void ldv_io_instance_callback_6_4(struct usb_request *(*arg0)(struct usb_ep * , unsigned int ) ,
                                  struct usb_ep *arg1 , unsigned int arg2 ) ;
int ldv_io_instance_probe_6_11(int (*arg0)(struct usb_ep * , struct usb_endpoint_descriptor * ) ,
                               struct usb_ep *arg1 , struct usb_endpoint_descriptor *arg2 ) ;
void ldv_io_instance_release_6_2(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 ) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_2(void *arg0 ) ;
void ldv_platform_pm_ops_instance_3(void *arg0 ) ;
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_rtc_class_instance_probe_4_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_release_4_2(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_rtc_class_instance_4(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_usb_ep_ops_io_instance_6(void *arg0 ) ;
void ldv_struct_usb_gadget_ops_dummy_resourceless_instance_7(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
void ldv_EMGentry_exit_net2272_cleanup_14_2(void (*arg0)(void) )
{
  {
  {
  net2272_cleanup();
  }
  return;
}
}
int ldv_EMGentry_init_net2272_init_14_15(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = net2272_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_13_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_13_2(ldv_13_pci_driver_pci_driver);
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
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_8_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_8_platform_driver_platform_driver = arg1;
    ldv_dispatch_register_8_2(ldv_8_platform_driver_platform_driver);
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
void ldv_dispatch_deregister_10_1(struct platform_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_14_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_14_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_13_14_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_rtc_class_instance_11_14_7(void)
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_9_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_11_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_0 = (struct ldv_struct_interrupt_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  cf_arg_0->arg1 = arg1;
  cf_arg_0->arg2 = arg2;
  cf_arg_0->arg3 = arg3;
  ldv_interrupt_interrupt_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_pm_deregister_2_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_2_6(void)
{
  struct ldv_struct_platform_instance_2 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_2 *)tmp;
  ldv_platform_pm_ops_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_13_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_pci_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_pci_pci_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_8_2(struct platform_driver *arg0 )
{
  struct ldv_struct_platform_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_platform_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_platform_platform_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_14_8(void)
{
  struct ldv_struct_platform_instance_2 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_platform_instance_2 *)tmp;
  ldv_struct_device_attribute_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_14_9(void)
{
  struct ldv_struct_platform_instance_2 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_platform_instance_2 *)tmp;
  ldv_struct_usb_gadget_ops_dummy_resourceless_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_13_14_10(void)
{
  struct ldv_struct_platform_instance_2 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_6 = (struct ldv_struct_platform_instance_2 *)tmp;
  ldv_struct_usb_ep_ops_io_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_rtc_class_instance_11_14_11(void)
{
  struct ldv_struct_platform_instance_2 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_2 *)tmp;
  ldv_rtc_rtc_class_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  registers_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_10(int (*arg0)(struct usb_gadget * ,
                                                               int ) , struct usb_gadget *arg1 ,
                                                   int arg2 )
{
  {
  {
  net2272_set_selfpowered(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_13(int (*arg0)(struct usb_gadget * ,
                                                               struct usb_gadget_driver * ) ,
                                                   struct usb_gadget *arg1 , struct usb_gadget_driver *arg2 )
{
  {
  {
  net2272_start(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_14(int (*arg0)(struct usb_gadget * ) ,
                                                   struct usb_gadget *arg1 )
{
  {
  {
  net2272_stop(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct usb_gadget * ) ,
                                                   struct usb_gadget *arg1 )
{
  {
  {
  net2272_wakeup(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct usb_gadget * ) ,
                                                  struct usb_gadget *arg1 )
{
  {
  {
  net2272_get_frame(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct usb_gadget * ,
                                                              int ) , struct usb_gadget *arg1 ,
                                                  int arg2 )
{
  {
  {
  net2272_pullup(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_14(void *arg0 )
{
  void (*ldv_14_exit_net2272_cleanup_default)(void) ;
  int (*ldv_14_init_net2272_init_default)(void) ;
  int ldv_14_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_14_ret_default = ldv_EMGentry_init_net2272_init_14_15(ldv_14_init_net2272_init_default);
  ldv_14_ret_default = ldv_ldv_post_init_145(ldv_14_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_14_ret_default != 0);
    ldv_ldv_check_final_state_146();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_14_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_rtc_class_instance_11_14_11();
      ldv_dispatch_register_io_instance_13_14_10();
      ldv_dispatch_register_dummy_resourceless_instance_14_14_9();
      ldv_dispatch_register_dummy_resourceless_instance_12_14_8();
      ldv_dispatch_deregister_rtc_class_instance_11_14_7();
      ldv_dispatch_deregister_io_instance_13_14_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_14_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_12_14_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_net2272_cleanup_14_2(ldv_14_exit_net2272_cleanup_default);
    ldv_ldv_check_final_state_147();
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
  ldv_ldv_initialize_148();
  ldv_entry_EMGentry_14((void *)0);
  }
return 0;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_9_line_line ;
  {
  {
  ldv_9_line_line = arg1;
  ldv_dispatch_irq_deregister_9_1(ldv_9_line_line);
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
  tmp = net2272_irq(arg1, arg2);
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
void ldv_io_instance_callback_6_19(int (*arg0)(struct usb_ep * , struct usb_request * ) ,
                                   struct usb_ep *arg1 , struct usb_request *arg2 )
{
  {
  {
  net2272_dequeue(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_20(void (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 )
{
  {
  {
  net2272_fifo_flush(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_6_21(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 )
{
  {
  {
  net2272_fifo_status(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_6_22(void (*arg0)(struct usb_ep * , struct usb_request * ) ,
                                   struct usb_ep *arg1 , struct usb_request *arg2 )
{
  {
  {
  net2272_free_request(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_23(int (*arg0)(struct usb_ep * , struct usb_request * ,
                                               unsigned int ) , struct usb_ep *arg1 ,
                                   struct usb_request *arg2 , unsigned int arg3 )
{
  {
  {
  net2272_queue(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_6_26(int (*arg0)(struct usb_ep * , int ) , struct usb_ep *arg1 ,
                                   int arg2 )
{
  {
  {
  net2272_set_halt(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_29(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 )
{
  {
  {
  net2272_set_wedge(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_6_4(struct usb_request *(*arg0)(struct usb_ep * , unsigned int ) ,
                                  struct usb_ep *arg1 , unsigned int arg2 )
{
  {
  {
  net2272_alloc_request(arg1, arg2);
  }
  return;
}
}
int ldv_io_instance_probe_6_11(int (*arg0)(struct usb_ep * , struct usb_endpoint_descriptor * ) ,
                               struct usb_ep *arg1 , struct usb_endpoint_descriptor *arg2 )
{
  int tmp ;
  {
  {
  tmp = net2272_enable(arg1, (struct usb_endpoint_descriptor const *)arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_6_2(int (*arg0)(struct usb_ep * ) , struct usb_ep *arg1 )
{
  {
  {
  net2272_disable(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = net2272_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  net2272_pci_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_1(void *arg0 )
{
  struct pci_driver *ldv_1_container_pci_driver ;
  struct pci_dev *ldv_1_resource_dev ;
  struct pm_message ldv_1_resource_pm_message ;
  struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
  int ldv_1_ret_default ;
  struct ldv_struct_pci_instance_1 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_1 *)arg0;
  ldv_1_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_1 *)0)) {
    {
    ldv_1_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_149();
    ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                    ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
    ldv_1_ret_default = ldv_ldv_post_probe_150(ldv_1_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_dev);
    ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_1:
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
  goto ldv_call_1;
  case_2: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                     ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
    }
  } else {
  }
  goto ldv_call_1;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  }
  goto ldv_main_1;
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
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  {
  {
  ldv_12_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_12_1(ldv_12_pci_driver_pci_driver);
  }
  return;
  return;
}
}
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_10_platform_driver_platform_driver ;
  {
  {
  ldv_10_platform_driver_platform_driver = arg1;
  ldv_dispatch_deregister_10_1(ldv_10_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = net2272_plat_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  net2272_plat_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_2(void *arg0 )
{
  struct platform_driver *ldv_2_container_platform_driver ;
  int ldv_2_probed_default ;
  struct platform_device *ldv_2_resource_platform_device ;
  struct ldv_struct_platform_instance_2 *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  data = (struct ldv_struct_platform_instance_2 *)arg0;
  ldv_2_probed_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_platform_instance_2 *)0)) {
    {
    ldv_2_container_platform_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1464UL);
  ldv_2_resource_platform_device = (struct platform_device *)tmp;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_ldv_pre_probe_151();
    ldv_2_probed_default = ldv_platform_instance_probe_2_14(ldv_2_container_platform_driver->probe,
                                                            ldv_2_resource_platform_device);
    ldv_2_probed_default = ldv_ldv_post_probe_152(ldv_2_probed_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_2_probed_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_probed_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_platform_device);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_2;
  case_2:
  {
  ldv_dispatch_pm_register_2_6();
  ldv_dispatch_pm_deregister_2_5();
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_platform_instance_release_2_3(ldv_2_container_platform_driver->remove, ldv_2_resource_platform_device);
  ldv_2_probed_default = 1;
  }
  goto ldv_main_2;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_platform_pm_ops_instance_3(void *arg0 )
{
  struct device *ldv_3_device_device ;
  struct dev_pm_ops *ldv_3_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_3;
  return;
  ldv_do_3:
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
  goto switch_default___0;
  case_1: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_3_27(ldv_3_pm_ops_dev_pm_ops->runtime_idle, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_do_3;
  case_2: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_3_25(ldv_3_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_3_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_3_24(ldv_3_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_3_device_device);
    }
  } else {
  }
  goto ldv_do_3;
  case_3: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_3_22(ldv_3_pm_ops_dev_pm_ops->prepare, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  {
  if (tmp___0 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___0 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___0 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_3_21(ldv_3_pm_ops_dev_pm_ops->suspend, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_3_20(ldv_3_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_3_19(ldv_3_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_3_18(ldv_3_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_3_17(ldv_3_pm_ops_dev_pm_ops->resume_early,
                                            ldv_3_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_3_16(ldv_3_pm_ops_dev_pm_ops->resume, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_37719;
  case_2___0: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_3_15(ldv_3_pm_ops_dev_pm_ops->freeze, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_3_14(ldv_3_pm_ops_dev_pm_ops->freeze_late, ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_3_13(ldv_3_pm_ops_dev_pm_ops->thaw_early, ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_3_12(ldv_3_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_3_11(ldv_3_pm_ops_dev_pm_ops->thaw_noirq, ldv_3_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_3_10(ldv_3_pm_ops_dev_pm_ops->thaw, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_37719;
  case_3___0: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_3_9(ldv_3_pm_ops_dev_pm_ops->poweroff, ldv_3_device_device);
    }
  } else {
  }
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_3_8(ldv_3_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_3_7(ldv_3_pm_ops_dev_pm_ops->restore_early,
                                            ldv_3_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_3_6(ldv_3_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_3_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_3_5(ldv_3_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_3_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_3_4(ldv_3_pm_ops_dev_pm_ops->restore, ldv_3_device_device);
    }
  } else {
  }
  goto ldv_37719;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_37719:
  {
  ldv_pm_ops_instance_complete_3_3(ldv_3_pm_ops_dev_pm_ops->complete, ldv_3_device_device);
  }
  goto ldv_do_3;
  case_4: ;
  return;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  net2272_gadget_release(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_11_callback_handler)(int , void * ) ;
  void *ldv_11_data_data ;
  int ldv_11_line_line ;
  enum irqreturn (*ldv_11_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_line_line = (int )arg1;
    ldv_11_callback_handler = arg2;
    ldv_11_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_11_data_data = arg5;
    ldv_dispatch_irq_register_11_2(ldv_11_line_line, ldv_11_callback_handler, ldv_11_thread_thread,
                                   ldv_11_data_data);
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
int ldv_rtc_class_instance_probe_4_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_rtc_class_instance_release_4_2(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  net2272_gadget_release(arg1);
  }
  return;
}
}
void ldv_rtc_rtc_class_instance_4(void *arg0 )
{
  struct device *ldv_4_device_device ;
  int ldv_4_ret_default ;
  struct rtc_class_ops *ldv_4_rtc_class_ops_rtc_class_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_4_ret_default = 1;
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_ldv_pre_probe_153();
    }
    if ((unsigned long )ldv_4_rtc_class_ops_rtc_class_ops->open != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_4_ret_default = ldv_rtc_class_instance_probe_4_10(ldv_4_rtc_class_ops_rtc_class_ops->open,
                                                            ldv_4_device_device);
      }
    } else {
    }
    {
    ldv_4_ret_default = ldv_ldv_post_probe_154(ldv_4_ret_default);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_4_ret_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      ldv_assume(ldv_4_ret_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    goto ldv_call_4;
  } else {
    {
    ldv_rtc_class_instance_release_4_2(ldv_4_rtc_class_ops_rtc_class_ops->release,
                                       ldv_4_device_device);
    }
    goto ldv_main_4;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 )
{
  long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_5_container_struct_device_attribute ;
  struct device *ldv_5_container_struct_device_ptr ;
  char *ldv_5_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_5_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_show, ldv_5_container_struct_device_ptr,
                                                 ldv_5_container_struct_device_attribute,
                                                 ldv_5_ldv_param_3_2_default);
    ldv_free((void *)ldv_5_ldv_param_3_2_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_usb_ep_ops_io_instance_6(void *arg0 )
{
  struct usb_request *(*ldv_6_callback_alloc_request)(struct usb_ep * , unsigned int ) ;
  int (*ldv_6_callback_dequeue)(struct usb_ep * , struct usb_request * ) ;
  void (*ldv_6_callback_fifo_flush)(struct usb_ep * ) ;
  int (*ldv_6_callback_fifo_status)(struct usb_ep * ) ;
  void (*ldv_6_callback_free_request)(struct usb_ep * , struct usb_request * ) ;
  int (*ldv_6_callback_queue)(struct usb_ep * , struct usb_request * , unsigned int ) ;
  int (*ldv_6_callback_set_halt)(struct usb_ep * , int ) ;
  int (*ldv_6_callback_set_wedge)(struct usb_ep * ) ;
  struct usb_ep_ops *ldv_6_container_struct_usb_ep_ops ;
  unsigned int ldv_6_ldv_param_23_2_default ;
  int ldv_6_ldv_param_26_1_default ;
  unsigned int ldv_6_ldv_param_4_1_default ;
  struct usb_endpoint_descriptor *ldv_6_resource_struct_usb_endpoint_descriptor_ptr ;
  struct usb_ep *ldv_6_resource_struct_usb_ep_ptr ;
  struct usb_request *ldv_6_resource_struct_usb_request_ptr ;
  int ldv_6_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  ldv_6_ret_default = 1;
  tmp = ldv_xmalloc(9UL);
  ldv_6_resource_struct_usb_endpoint_descriptor_ptr = (struct usb_endpoint_descriptor *)tmp;
  tmp___0 = ldv_xmalloc(64UL);
  ldv_6_resource_struct_usb_ep_ptr = (struct usb_ep *)tmp___0;
  tmp___1 = ldv_xmalloc(88UL);
  ldv_6_resource_struct_usb_request_ptr = (struct usb_request *)tmp___1;
  }
  goto ldv_main_6;
  return;
  ldv_main_6:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_6_ret_default = ldv_io_instance_probe_6_11((int (*)(struct usb_ep * , struct usb_endpoint_descriptor * ))ldv_6_container_struct_usb_ep_ops->enable,
                                                   ldv_6_resource_struct_usb_ep_ptr,
                                                   ldv_6_resource_struct_usb_endpoint_descriptor_ptr);
    ldv_6_ret_default = ldv_filter_err_code(ldv_6_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_6_ret_default == 0);
      }
      goto ldv_call_6;
    } else {
      {
      ldv_assume(ldv_6_ret_default != 0);
      }
      goto ldv_main_6;
    }
  } else {
    {
    ldv_free((void *)ldv_6_resource_struct_usb_endpoint_descriptor_ptr);
    ldv_free((void *)ldv_6_resource_struct_usb_ep_ptr);
    ldv_free((void *)ldv_6_resource_struct_usb_request_ptr);
    }
    return;
  }
  return;
  ldv_call_6:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    ldv_io_instance_release_6_2(ldv_6_container_struct_usb_ep_ops->disable, ldv_6_resource_struct_usb_ep_ptr);
    }
    goto ldv_main_6;
  } else {
    {
    tmp___4 = ldv_undef_int();
    }
    {
    if (tmp___4 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___4 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___4 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___4 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___4 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___4 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___4 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___4 == 8) {
      goto case_8;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_io_instance_callback_6_29(ldv_6_callback_set_wedge, ldv_6_resource_struct_usb_ep_ptr);
    }
    goto ldv_37924;
    case_2:
    {
    ldv_io_instance_callback_6_26(ldv_6_callback_set_halt, ldv_6_resource_struct_usb_ep_ptr,
                                  ldv_6_ldv_param_26_1_default);
    }
    goto ldv_37924;
    case_3:
    {
    ldv_io_instance_callback_6_23(ldv_6_callback_queue, ldv_6_resource_struct_usb_ep_ptr,
                                  ldv_6_resource_struct_usb_request_ptr, ldv_6_ldv_param_23_2_default);
    }
    goto ldv_37924;
    case_4:
    {
    ldv_io_instance_callback_6_22(ldv_6_callback_free_request, ldv_6_resource_struct_usb_ep_ptr,
                                  ldv_6_resource_struct_usb_request_ptr);
    }
    goto ldv_37924;
    case_5:
    {
    ldv_io_instance_callback_6_21(ldv_6_callback_fifo_status, ldv_6_resource_struct_usb_ep_ptr);
    }
    goto ldv_37924;
    case_6:
    {
    ldv_io_instance_callback_6_20(ldv_6_callback_fifo_flush, ldv_6_resource_struct_usb_ep_ptr);
    }
    goto ldv_37924;
    case_7:
    {
    ldv_io_instance_callback_6_19(ldv_6_callback_dequeue, ldv_6_resource_struct_usb_ep_ptr,
                                  ldv_6_resource_struct_usb_request_ptr);
    }
    goto ldv_37924;
    case_8:
    {
    ldv_io_instance_callback_6_4(ldv_6_callback_alloc_request, ldv_6_resource_struct_usb_ep_ptr,
                                 ldv_6_ldv_param_4_1_default);
    }
    goto ldv_37924;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_37924: ;
  }
  goto ldv_call_6;
  return;
}
}
void ldv_struct_usb_gadget_ops_dummy_resourceless_instance_7(void *arg0 )
{
  int (*ldv_7_callback_get_frame)(struct usb_gadget * ) ;
  int (*ldv_7_callback_pullup)(struct usb_gadget * , int ) ;
  int (*ldv_7_callback_set_selfpowered)(struct usb_gadget * , int ) ;
  int (*ldv_7_callback_udc_start)(struct usb_gadget * , struct usb_gadget_driver * ) ;
  int (*ldv_7_callback_udc_stop)(struct usb_gadget * ) ;
  int (*ldv_7_callback_wakeup)(struct usb_gadget * ) ;
  struct usb_gadget_driver *ldv_7_container_struct_usb_gadget_driver_ptr ;
  struct usb_gadget *ldv_7_container_struct_usb_gadget_ptr ;
  int ldv_7_ldv_param_10_1_default ;
  int ldv_7_ldv_param_7_1_default ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_7_15(ldv_7_callback_wakeup, ldv_7_container_struct_usb_gadget_ptr);
  }
  goto ldv_call_7;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_7_14(ldv_7_callback_udc_stop, ldv_7_container_struct_usb_gadget_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_7_13(ldv_7_callback_udc_start, ldv_7_container_struct_usb_gadget_ptr,
                                                ldv_7_container_struct_usb_gadget_driver_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_7_10(ldv_7_callback_set_selfpowered, ldv_7_container_struct_usb_gadget_ptr,
                                                ldv_7_ldv_param_10_1_default);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_7_7(ldv_7_callback_pullup, ldv_7_container_struct_usb_gadget_ptr,
                                               ldv_7_ldv_param_7_1_default);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_get_frame, ldv_7_container_struct_usb_gadget_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_7: ;
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_net2272();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_101(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_net2272();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_102(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  spin_lock(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_128(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_iounmap_129(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
__inline static int ldv_request_irq_130(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv_free_irq_131(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void *ldv_ioremap_nocache_132(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap();
  }
  return (tmp);
}
}
static void ldv_iounmap_133(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void *ldv_ioremap_nocache_134(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap();
  }
  return (tmp);
}
}
static void ldv_iounmap_135(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_136(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_137(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_138(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv___pci_register_driver_139(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_pci_unregister_driver_140(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void *ldv_ioremap_nocache_141(resource_size_t ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap();
  }
  return (tmp);
}
}
static void ldv_iounmap_142(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv___platform_driver_register_143(struct platform_driver *ldv_func_arg1 ,
                                              struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___platform_driver_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_platform_driver_unregister_144(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_145(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_147(void)
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
static void ldv_ldv_initialize_148(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_149(void)
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
static int ldv_ldv_post_probe_150(int retval )
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
static void ldv_ldv_pre_probe_151(void)
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
static int ldv_ldv_post_probe_152(int retval )
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
static void ldv_ldv_pre_probe_153(void)
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
static int ldv_ldv_post_probe_154(int retval )
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
extern void ldv_after_alloc(void * ) ;
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_net2272(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_net2272(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_net2272(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_net2272(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_net2272(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_net2272(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_net2272();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_net2272(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_net2272(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 = 2;
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
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_net2272 == 2) {
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
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
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
void *external_alloc(void);
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_add_gadget_udc_release(struct device *arg0, struct usb_gadget *arg1, void (*arg2)(struct device *)) {
  return __VERIFIER_nondet_int();
}
void usb_del_gadget_udc(struct usb_gadget *arg0) {
  return;
}
void usb_gadget_giveback_request(struct usb_ep *arg0, struct usb_request *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_gadget_map_request(struct usb_gadget *arg0, struct usb_request *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_gadget_udc_reset(struct usb_gadget *arg0, struct usb_gadget_driver *arg1) {
  return;
}
void usb_gadget_unmap_request(struct usb_gadget *arg0, struct usb_request *arg1, int arg2) {
  return;
}
void *external_alloc(void);
const char *usb_speed_string(enum usb_device_speed arg0) {
  return (const char *)external_alloc();
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
