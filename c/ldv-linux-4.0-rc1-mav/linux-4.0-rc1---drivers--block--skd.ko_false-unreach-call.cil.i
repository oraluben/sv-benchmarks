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
typedef __u64 __be64;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef unsigned long uintptr_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned int uint;
typedef unsigned long ulong;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
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
struct request;
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
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
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
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
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
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
enum iio_chan_type {
    IIO_VOLTAGE = 0,
    IIO_CURRENT = 1,
    IIO_POWER = 2,
    IIO_ACCEL = 3,
    IIO_ANGL_VEL = 4,
    IIO_MAGN = 5,
    IIO_LIGHT = 6,
    IIO_INTENSITY = 7,
    IIO_PROXIMITY = 8,
    IIO_TEMP = 9,
    IIO_INCLI = 10,
    IIO_ROT = 11,
    IIO_ANGL = 12,
    IIO_TIMESTAMP = 13,
    IIO_CAPACITANCE = 14,
    IIO_ALTVOLTAGE = 15,
    IIO_CCT = 16,
    IIO_PRESSURE = 17,
    IIO_HUMIDITYRELATIVE = 18,
    IIO_ACTIVITY = 19,
    IIO_STEPS = 20,
    IIO_ENERGY = 21,
    IIO_DISTANCE = 22,
    IIO_VELOCITY = 23
} ;
enum iio_event_type {
    IIO_EV_TYPE_THRESH = 0,
    IIO_EV_TYPE_MAG = 1,
    IIO_EV_TYPE_ROC = 2,
    IIO_EV_TYPE_THRESH_ADAPTIVE = 3,
    IIO_EV_TYPE_MAG_ADAPTIVE = 4,
    IIO_EV_TYPE_CHANGE = 5
} ;
enum iio_event_info {
    IIO_EV_INFO_ENABLE = 0,
    IIO_EV_INFO_VALUE = 1,
    IIO_EV_INFO_HYSTERESIS = 2,
    IIO_EV_INFO_PERIOD = 3
} ;
enum iio_event_direction {
    IIO_EV_DIR_EITHER = 0,
    IIO_EV_DIR_RISING = 1,
    IIO_EV_DIR_FALLING = 2,
    IIO_EV_DIR_NONE = 3
} ;
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
struct of_phandle_args {
   struct device_node *np ;
   int args_count ;
   uint32_t args[16U] ;
};
enum iio_shared_by {
    IIO_SEPARATE = 0,
    IIO_SHARED_BY_TYPE = 1,
    IIO_SHARED_BY_DIR = 2,
    IIO_SHARED_BY_ALL = 3
} ;
enum iio_endian {
    IIO_CPU = 0,
    IIO_BE = 1,
    IIO_LE = 2
} ;
struct iio_chan_spec;
struct iio_dev;
struct iio_chan_spec_ext_info {
   char const *name ;
   enum iio_shared_by shared ;
   ssize_t (*read)(struct iio_dev * , uintptr_t , struct iio_chan_spec const * ,
                   char * ) ;
   ssize_t (*write)(struct iio_dev * , uintptr_t , struct iio_chan_spec const * ,
                    char const * , size_t ) ;
   uintptr_t private ;
};
struct iio_event_spec {
   enum iio_event_type type ;
   enum iio_event_direction dir ;
   unsigned long mask_separate ;
   unsigned long mask_shared_by_type ;
   unsigned long mask_shared_by_dir ;
   unsigned long mask_shared_by_all ;
};
struct __anonstruct_scan_type_145 {
   char sign ;
   u8 realbits ;
   u8 storagebits ;
   u8 shift ;
   u8 repeat ;
   enum iio_endian endianness ;
};
struct iio_chan_spec {
   enum iio_chan_type type ;
   int channel ;
   int channel2 ;
   unsigned long address ;
   int scan_index ;
   struct __anonstruct_scan_type_145 scan_type ;
   long info_mask_separate ;
   long info_mask_shared_by_type ;
   long info_mask_shared_by_dir ;
   long info_mask_shared_by_all ;
   struct iio_event_spec const *event_spec ;
   unsigned int num_event_specs ;
   struct iio_chan_spec_ext_info const *ext_info ;
   char const *extend_name ;
   char const *datasheet_name ;
   unsigned char modified : 1 ;
   unsigned char indexed : 1 ;
   unsigned char output : 1 ;
   unsigned char differential : 1 ;
};
struct iio_trigger;
struct iio_info {
   struct module *driver_module ;
   struct attribute_group *event_attrs ;
   struct attribute_group const *attrs ;
   int (*read_raw)(struct iio_dev * , struct iio_chan_spec const * , int * , int * ,
                   long ) ;
   int (*read_raw_multi)(struct iio_dev * , struct iio_chan_spec const * , int ,
                         int * , int * , long ) ;
   int (*write_raw)(struct iio_dev * , struct iio_chan_spec const * , int , int ,
                    long ) ;
   int (*write_raw_get_fmt)(struct iio_dev * , struct iio_chan_spec const * , long ) ;
   int (*read_event_config)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                            enum iio_event_direction ) ;
   int (*write_event_config)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                             enum iio_event_direction , int ) ;
   int (*read_event_value)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                           enum iio_event_direction , enum iio_event_info , int * ,
                           int * ) ;
   int (*write_event_value)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                            enum iio_event_direction , enum iio_event_info , int ,
                            int ) ;
   int (*validate_trigger)(struct iio_dev * , struct iio_trigger * ) ;
   int (*update_scan_mode)(struct iio_dev * , unsigned long const * ) ;
   int (*debugfs_reg_access)(struct iio_dev * , unsigned int , unsigned int , unsigned int * ) ;
   int (*of_xlate)(struct iio_dev * , struct of_phandle_args const * ) ;
};
struct iio_buffer_setup_ops {
   int (*preenable)(struct iio_dev * ) ;
   int (*postenable)(struct iio_dev * ) ;
   int (*predisable)(struct iio_dev * ) ;
   int (*postdisable)(struct iio_dev * ) ;
   bool (*validate_scan_mask)(struct iio_dev * , unsigned long const * ) ;
};
struct iio_event_interface;
struct iio_buffer;
struct iio_poll_func;
struct iio_dev {
   int id ;
   int modes ;
   int currentmode ;
   struct device dev ;
   struct iio_event_interface *event_interface ;
   struct iio_buffer *buffer ;
   struct list_head buffer_list ;
   int scan_bytes ;
   struct mutex mlock ;
   unsigned long const *available_scan_masks ;
   unsigned int masklength ;
   unsigned long const *active_scan_mask ;
   bool scan_timestamp ;
   unsigned int scan_index_timestamp ;
   struct iio_trigger *trig ;
   struct iio_poll_func *pollfunc ;
   struct iio_chan_spec const *channels ;
   int num_channels ;
   struct list_head channel_attr_list ;
   struct attribute_group chan_attr_group ;
   char const *name ;
   struct iio_info const *info ;
   struct mutex info_exist_lock ;
   struct iio_buffer_setup_ops const *setup_ops ;
   struct cdev chrdev ;
   struct attribute_group const *groups[7U] ;
   int groupcounter ;
   unsigned long flags ;
   struct dentry *debugfs_dentry ;
   unsigned int cached_reg_addr ;
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
struct __anonstruct____missing_field_name_152 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_153 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_151 {
   struct __anonstruct____missing_field_name_152 __annonCompField34 ;
   struct __anonstruct____missing_field_name_153 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_151 __annonCompField36 ;
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
union __anonunion____missing_field_name_154 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_156 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_160 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_159 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_160 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_158 {
   union __anonunion____missing_field_name_159 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_157 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_158 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_155 {
   union __anonunion____missing_field_name_156 __annonCompField38 ;
   union __anonunion____missing_field_name_157 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_162 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_163 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_161 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_162 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_163 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_164 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_154 __annonCompField37 ;
   struct __anonstruct____missing_field_name_155 __annonCompField43 ;
   union __anonunion____missing_field_name_161 __annonCompField46 ;
   union __anonunion____missing_field_name_164 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_165 {
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
   struct __anonstruct_shared_165 shared ;
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
struct __anonstruct_sigset_t_167 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_167 sigset_t;
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
struct __anonstruct__kill_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_170 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_174 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_173 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_174 _addr_bnd ;
};
struct __anonstruct__sigpoll_175 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_176 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_168 {
   int _pad[28U] ;
   struct __anonstruct__kill_169 _kill ;
   struct __anonstruct__timer_170 _timer ;
   struct __anonstruct__rt_171 _rt ;
   struct __anonstruct__sigchld_172 _sigchld ;
   struct __anonstruct__sigfault_173 _sigfault ;
   struct __anonstruct__sigpoll_175 _sigpoll ;
   struct __anonstruct__sigsys_176 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_168 _sifields ;
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
union __anonunion____missing_field_name_181 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_182 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_184 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_183 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_184 __annonCompField52 ;
};
union __anonunion_type_data_185 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_187 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_186 {
   union __anonunion_payload_187 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_182 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_183 __annonCompField53 ;
   union __anonunion_type_data_185 type_data ;
   union __anonunion____missing_field_name_186 __annonCompField54 ;
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
union __anonunion____missing_field_name_192 {
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
   union __anonunion____missing_field_name_192 __annonCompField58 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
struct kvec;
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
union __anonunion____missing_field_name_197 {
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
   union __anonunion____missing_field_name_197 __annonCompField59 ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_199 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_198 {
   struct __anonstruct____missing_field_name_199 __annonCompField60 ;
};
struct lockref {
   union __anonunion____missing_field_name_198 __annonCompField61 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_201 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_200 {
   struct __anonstruct____missing_field_name_201 __annonCompField62 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_200 __annonCompField63 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_202 {
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
   union __anonunion_d_u_202 d_u ;
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
struct __anonstruct____missing_field_name_204 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_203 {
   struct __anonstruct____missing_field_name_204 __annonCompField64 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_203 __annonCompField65 ;
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
struct cgroup_subsys_state;
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
union __anonunion____missing_field_name_205 {
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
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_205 __annonCompField66 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct __anonstruct_kprojid_t_206 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_206 kprojid_t;
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
union __anonunion____missing_field_name_207 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_207 __annonCompField67 ;
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
union __anonunion____missing_field_name_210 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_211 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_212 {
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
   union __anonunion____missing_field_name_210 __annonCompField68 ;
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
   union __anonunion____missing_field_name_211 __annonCompField69 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_212 __annonCompField70 ;
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
union __anonunion_f_u_213 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_213 f_u ;
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
struct __anonstruct_afs_215 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_214 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_215 afs ;
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
   union __anonunion_fl_u_214 fl_u ;
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
struct block_device_operations;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct __large_struct {
   unsigned long buf[100U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
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
union __anonunion____missing_field_name_220 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_221 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_220 __annonCompField74 ;
   union __anonunion____missing_field_name_221 __annonCompField75 ;
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
struct elevator_queue;
struct blk_trace;
struct sg_io_hdr;
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
union __anonunion____missing_field_name_222 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_223 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_224 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_226 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_227 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct_elv_226 elv ;
   struct __anonstruct_flush_227 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_222 __annonCompField76 ;
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
   union __anonunion____missing_field_name_223 __annonCompField77 ;
   union __anonunion____missing_field_name_224 __annonCompField78 ;
   union __anonunion____missing_field_name_225 __annonCompField79 ;
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
   int mq_freeze_depth ;
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
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_230 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_230 __annonCompField80 ;
   unsigned long nr_segs ;
};
struct sg_iovec {
   void *iov_base ;
   size_t iov_len ;
};
struct sg_io_hdr {
   int interface_id ;
   int dxfer_direction ;
   unsigned char cmd_len ;
   unsigned char mx_sb_len ;
   unsigned short iovec_count ;
   unsigned int dxfer_len ;
   void *dxferp ;
   unsigned char *cmdp ;
   void *sbp ;
   unsigned int timeout ;
   unsigned int flags ;
   int pack_id ;
   void *usr_ptr ;
   unsigned char status ;
   unsigned char masked_status ;
   unsigned char msg_status ;
   unsigned char sb_len_wr ;
   unsigned short host_status ;
   unsigned short driver_status ;
   int resid ;
   unsigned int duration ;
   unsigned int info ;
};
struct fit_sg_descriptor {
   uint32_t control ;
   uint32_t byte_count ;
   uint64_t host_side_addr ;
   uint64_t dev_side_addr ;
   uint64_t next_desc_ptr ;
};
struct fit_msg_hdr {
   uint8_t protocol_id ;
   uint8_t num_protocol_cmds_coalesced ;
   uint8_t _reserved[62U] ;
};
struct fit_completion_entry_v1 {
   uint32_t num_returned_bytes ;
   uint16_t tag ;
   uint8_t status ;
   uint8_t cycle ;
};
struct fit_comp_error_info {
   unsigned char type : 7 ;
   unsigned char valid : 1 ;
   uint8_t reserved0 ;
   unsigned char key : 4 ;
   unsigned char reserved2 : 1 ;
   unsigned char bad_length : 1 ;
   unsigned char end_medium : 1 ;
   unsigned char file_mark : 1 ;
   uint8_t info[4U] ;
   uint8_t reserved1 ;
   uint8_t cmd_spec[4U] ;
   uint8_t code ;
   uint8_t qual ;
   uint8_t fruc ;
   unsigned char sks_high : 7 ;
   unsigned char sks_valid : 1 ;
   uint16_t sks_low ;
   uint16_t reserved3 ;
   uint16_t uec ;
   uint64_t per ;
   uint8_t reserved4[2U] ;
};
struct skd_command_header {
   uint64_t sg_list_dma_address ;
   uint16_t tag ;
   uint8_t attribute ;
   uint8_t add_cdb_len ;
   uint32_t sg_list_len_bytes ;
};
struct skd_scsi_request {
   struct skd_command_header hdr ;
   unsigned char cdb[16U] ;
};
struct driver_inquiry_data {
   unsigned char peripheral_device_type : 5 ;
   unsigned char qualifier : 3 ;
   uint8_t page_code ;
   uint16_t page_length ;
   uint16_t pcie_bus_number ;
   uint8_t pcie_device_number ;
   uint8_t pcie_function_number ;
   uint8_t pcie_link_speed ;
   uint8_t pcie_link_lanes ;
   uint16_t pcie_vendor_id ;
   uint16_t pcie_device_id ;
   uint16_t pcie_subsystem_vendor_id ;
   uint16_t pcie_subsystem_device_id ;
   uint8_t reserved1[2U] ;
   uint8_t reserved2[3U] ;
   uint8_t driver_version_length ;
   uint8_t driver_version[20U] ;
};
enum skd_drvr_state {
    SKD_DRVR_STATE_LOAD = 0,
    SKD_DRVR_STATE_IDLE = 1,
    SKD_DRVR_STATE_BUSY = 2,
    SKD_DRVR_STATE_STARTING = 3,
    SKD_DRVR_STATE_ONLINE = 4,
    SKD_DRVR_STATE_PAUSING = 5,
    SKD_DRVR_STATE_PAUSED = 6,
    SKD_DRVR_STATE_DRAINING_TIMEOUT = 7,
    SKD_DRVR_STATE_RESTARTING = 8,
    SKD_DRVR_STATE_RESUMING = 9,
    SKD_DRVR_STATE_STOPPING = 10,
    SKD_DRVR_STATE_FAULT = 11,
    SKD_DRVR_STATE_DISAPPEARED = 12,
    SKD_DRVR_STATE_PROTOCOL_MISMATCH = 13,
    SKD_DRVR_STATE_BUSY_ERASE = 14,
    SKD_DRVR_STATE_BUSY_SANITIZE = 15,
    SKD_DRVR_STATE_BUSY_IMMINENT = 16,
    SKD_DRVR_STATE_WAIT_BOOT = 17,
    SKD_DRVR_STATE_SYNCING = 18
} ;
enum skd_req_state {
    SKD_REQ_STATE_IDLE = 0,
    SKD_REQ_STATE_SETUP = 1,
    SKD_REQ_STATE_BUSY = 2,
    SKD_REQ_STATE_COMPLETED = 3,
    SKD_REQ_STATE_TIMEOUT = 4,
    SKD_REQ_STATE_ABORTED = 5
} ;
enum skd_fit_msg_state {
    SKD_MSG_STATE_IDLE = 0,
    SKD_MSG_STATE_BUSY = 1
} ;
enum skd_check_status_action {
    SKD_CHECK_STATUS_REPORT_GOOD = 0,
    SKD_CHECK_STATUS_REPORT_SMART_ALERT = 1,
    SKD_CHECK_STATUS_REQUEUE_REQUEST = 2,
    SKD_CHECK_STATUS_REPORT_ERROR = 3,
    SKD_CHECK_STATUS_BUSY_IMMINENT = 4
} ;
struct skd_fitmsg_context {
   enum skd_fit_msg_state state ;
   struct skd_fitmsg_context *next ;
   u32 id ;
   u16 outstanding ;
   u32 length ;
   u32 offset ;
   u8 *msg_buf ;
   dma_addr_t mb_dma_address ;
};
struct skd_request_context {
   enum skd_req_state state ;
   struct skd_request_context *next ;
   u16 id ;
   u32 fitmsg_id ;
   struct request *req ;
   u8 flush_cmd ;
   u8 discard_page ;
   u32 timeout_stamp ;
   u8 sg_data_dir ;
   struct scatterlist *sg ;
   u32 n_sg ;
   u32 sg_byte_count ;
   struct fit_sg_descriptor *sksg_list ;
   dma_addr_t sksg_dma_address ;
   struct fit_completion_entry_v1 completion ;
   struct fit_comp_error_info err_info ;
};
struct skd_special_context {
   struct skd_request_context req ;
   u8 orphaned ;
   void *data_buf ;
   dma_addr_t db_dma_address ;
   u8 *msg_buf ;
   dma_addr_t mb_dma_address ;
};
struct skd_sg_io {
   fmode_t mode ;
   void *argp ;
   struct sg_io_hdr sg ;
   u8 cdb[16U] ;
   u32 dxfer_len ;
   u32 iovcnt ;
   struct sg_iovec *iov ;
   struct sg_iovec no_iov_iov ;
   struct skd_special_context *skspcl ;
};
enum skd_irq_type {
    SKD_IRQ_LEGACY = 0,
    SKD_IRQ_MSI = 1,
    SKD_IRQ_MSIX = 2
} ;
typedef enum skd_irq_type skd_irq_type_t;
struct skd_msix_entry;
struct skd_device {
   void volatile *mem_map[2U] ;
   resource_size_t mem_phys[2U] ;
   u32 mem_size[2U] ;
   skd_irq_type_t irq_type ;
   u32 msix_count ;
   struct skd_msix_entry *msix_entries ;
   struct pci_dev *pdev ;
   int pcie_error_reporting_is_enabled ;
   spinlock_t lock ;
   struct gendisk *disk ;
   struct request_queue *queue ;
   struct device *class_dev ;
   int gendisk_on ;
   int sync_done ;
   atomic_t device_count ;
   u32 devno ;
   u32 major ;
   char name[32U] ;
   char isr_name[30U] ;
   enum skd_drvr_state state ;
   u32 drive_state ;
   u32 in_flight ;
   u32 cur_max_queue_depth ;
   u32 queue_low_water_mark ;
   u32 dev_max_queue_depth ;
   u32 num_fitmsg_context ;
   u32 num_req_context ;
   u32 timeout_slot[4U] ;
   u32 timeout_stamp ;
   struct skd_fitmsg_context *skmsg_free_list ;
   struct skd_fitmsg_context *skmsg_table ;
   struct skd_request_context *skreq_free_list ;
   struct skd_request_context *skreq_table ;
   struct skd_special_context *skspcl_free_list ;
   struct skd_special_context *skspcl_table ;
   struct skd_special_context internal_skspcl ;
   u32 read_cap_blocksize ;
   u32 read_cap_last_lba ;
   int read_cap_is_valid ;
   int inquiry_is_valid ;
   u8 inq_serial_num[13U] ;
   u8 id_str[80U] ;
   u8 skcomp_cycle ;
   u32 skcomp_ix ;
   struct fit_completion_entry_v1 *skcomp_table ;
   struct fit_comp_error_info *skerr_table ;
   dma_addr_t cq_dma_address ;
   wait_queue_head_t waitq ;
   struct timer_list timer ;
   u32 timer_countdown ;
   u32 timer_substate ;
   int n_special ;
   int sgs_per_request ;
   u32 last_mtd ;
   u32 proto_ver ;
   int dbg_level ;
   u32 connect_time_stamp ;
   int connect_retries ;
   u32 drive_jiffies ;
   u32 timo_slot ;
   struct work_struct completion_worker ;
};
struct sns_info {
   u8 type ;
   u8 stat ;
   u8 key ;
   u8 asc ;
   u8 ascq ;
   u8 mask ;
   enum skd_check_status_action action ;
};
struct skd_msix_entry {
   int have_irq ;
   u32 vector ;
   u32 entry ;
   struct skd_device *rsp ;
   char isr_name[30U] ;
};
struct skd_init_msix_entry {
   char const *name ;
   irqreturn_t (*handler)(int , void * ) ;
};
struct ldv_struct_EMGentry_16 {
   int signal_pending ;
};
struct ldv_struct_devm_free_irq_12 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_2 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_10 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef struct gendisk *ldv_func_ret_type___3;
typedef struct request_queue *ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
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
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void) ;
void ldv_linux_block_genhd_add_disk(void) ;
void ldv_linux_block_genhd_del_gendisk(void) ;
void ldv_linux_block_genhd_put_disk(struct gendisk *disk ) ;
int ldv_undef_int(void) ;
void *ldv_linux_arch_io_io_mem_remap(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_150(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_147(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_151(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_152(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_148(void) ;
static void ldv_ldv_check_final_state_149(void) ;
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
struct request_queue *ldv_linux_block_queue_request_queue(void) ;
void ldv_linux_block_queue_blk_cleanup_queue(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
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
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
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
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3538;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3538;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3538;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3538;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3538: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
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
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
extern int debug_locks ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_skd_device(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7201;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7201;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7201;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7201;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7201:
  ti = (struct thread_info *)(pfo_ret__ - 32728UL);
  return (ti);
}
}
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
__inline static void ldv_spin_lock_109(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_110(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_110(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern unsigned long get_seconds(void) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_99(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_100(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
__inline static void *ioremap(resource_size_t offset , unsigned long size ) ;
static void ldv_iounmap_141(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_142(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_143(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_144(void volatile *ldv_func_arg1 ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
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
extern bool capable(int ) ;
extern long schedule_timeout(long ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
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
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  }
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_145(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_146(struct pci_driver *ldv_func_arg1 ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static int pci_enable_msix_exact(struct pci_dev *dev , struct msix_entry *entries ,
                                          int nvec )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = pci_enable_msix_range(dev, entries, nvec, nvec);
  rc = tmp;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  }
  return;
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static dma_addr_t sg_phys(struct scatterlist *sg )
{
  struct page *tmp ;
  {
  {
  tmp = sg_page(sg);
  }
  return (((unsigned long long )(((long )tmp + 24189255811072L) / 64L) << 12) + (unsigned long long )sg->offset);
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  }
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
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
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_sg_for_cpu(struct device * , struct scatterlist * , int ,
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
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  }
  goto ldv_27139;
  ldv_27138:
  {
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  }
  ldv_27139: ;
  if (i < nents) {
    goto ldv_27138;
  } else {
  }
  {
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  }
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (65), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  }
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
    }
  } else {
  }
  return;
}
}
__inline static void dma_sync_sg_for_cpu(struct device *dev , struct scatterlist *sg ,
                                         int nelems , enum dma_data_direction dir )
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
                         "i" (155), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_sg_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                         struct scatterlist * ,
                                                                         int , enum dma_data_direction ))0)) {
    {
    (*(ops->sync_sg_for_cpu))(dev, sg, nelems, dir);
    }
  } else {
  }
  {
  debug_dma_sync_sg_for_cpu(dev, sg, nelems, (int )dir);
  }
  return;
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
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{
  int tmp ;
  {
  {
  tmp = dma_map_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{
  {
  {
  dma_unmap_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
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
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern void add_disk(struct gendisk * ) ;
static void ldv_add_disk_140(struct gendisk *disk ) ;
extern void del_gendisk(struct gendisk * ) ;
static void ldv_del_gendisk_137(struct gendisk *gp ) ;
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
static struct gendisk *ldv_alloc_disk_133(int minors ) ;
extern void put_disk(struct gendisk * ) ;
static void ldv_put_disk_139(struct gendisk *disk ) ;
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
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word ( 9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
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
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
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
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_from_user_nocheck(dst, src, size);
  }
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
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
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
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_to_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static void queue_lockdep_assert_held(struct request_queue *q )
{
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )q->queue_lock != (unsigned long )((spinlock_t *)0)) {
    if (debug_locks != 0) {
      {
      tmp = lock_is_held(& (q->queue_lock)->__annonCompField18.__annonCompField17.dep_map);
      }
      if (tmp == 0) {
        tmp___0 = 1;
      } else {
        tmp___0 = 0;
      }
    } else {
      tmp___0 = 0;
    }
    {
    __ret_warn_on = tmp___0;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      {
      warn_slowpath_null("include/linux/blkdev.h", 529);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  } else {
  }
  return;
}
}
__inline static void queue_flag_set_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __set_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
__inline static void queue_flag_clear_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  {
  __clear_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
__inline static void queue_flag_clear(unsigned int flag , struct request_queue *q )
{
  {
  {
  queue_lockdep_assert_held(q);
  __clear_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  }
  return;
}
}
extern void blk_requeue_request(struct request_queue * , struct request * ) ;
extern void blk_add_request_payload(struct request * , struct page * , unsigned int ) ;
extern int scsi_cmd_ioctl(struct request_queue * , struct gendisk * , fmode_t , unsigned int ,
                          void * ) ;
extern void blk_start_queue(struct request_queue * ) ;
extern void blk_stop_queue(struct request_queue * ) ;
__inline static sector_t blk_rq_pos(struct request const *rq )
{
  {
  return ((sector_t )rq->__sector);
}
}
__inline static unsigned int blk_rq_bytes(struct request const *rq )
{
  {
  return ((unsigned int )rq->__data_len);
}
}
__inline static unsigned int blk_rq_sectors(struct request const *rq )
{
  unsigned int tmp ;
  {
  {
  tmp = blk_rq_bytes(rq);
  }
  return (tmp >> 9);
}
}
extern struct request *blk_peek_request(struct request_queue * ) ;
extern void blk_start_request(struct request * ) ;
extern void __blk_end_request_all(struct request * , int ) ;
extern struct request_queue *blk_init_queue(void (*)(struct request_queue * ) , spinlock_t * ) ;
static struct request_queue *ldv_blk_init_queue_134(void (*ldv_func_arg1)(struct request_queue * ) ,
                                                    spinlock_t *ldv_func_arg2 ) ;
extern void blk_cleanup_queue(struct request_queue * ) ;
static void ldv_blk_cleanup_queue_138(struct request_queue *ldv_func_arg1 ) ;
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_max_segments(struct request_queue * , unsigned short ) ;
extern void blk_queue_io_opt(struct request_queue * , unsigned int ) ;
extern void blk_queue_flush(struct request_queue * , unsigned int ) ;
extern int blk_rq_map_sg(struct request_queue * , struct request * , struct scatterlist * ) ;
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
__inline static int devm_request_irq(struct device *dev , unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                                    void * ) ,
                                     unsigned long irqflags , char const *devname ,
                                     void *dev_id )
{
  int tmp ;
  {
  {
  tmp = devm_request_threaded_irq(dev, irq, handler, (irqreturn_t (*)(int , void * ))0,
                                  irqflags, devname, dev_id);
  }
  return (tmp);
}
}
extern void devm_free_irq(struct device * , unsigned int , void * ) ;
static void ldv_devm_free_irq_130(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 ) ;
static void ldv_devm_free_irq_131(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 ) ;
static void ldv_devm_free_irq_132(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern unsigned long iov_shorten(struct iovec * , unsigned long , size_t ) ;
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  }
  return;
}
}
__inline static void put_unaligned_be32(u32 val , void *p )
{
  __u32 tmp ;
  {
  {
  tmp = __fswab32(val);
  *((__be32 *)p) = tmp;
  }
  return;
}
}
__inline static void put_unaligned_be64(u64 val , void *p )
{
  __u64 tmp ;
  {
  {
  tmp = __fswab64(val);
  *((__be64 *)p) = tmp;
  }
  return;
}
}
static int skd_dbg_level ;
static int skd_isr_comp_limit = 4;
__inline static u32 skd_reg_read32(struct skd_device *skdev , u32 offset )
{
  u32 val ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp___1 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  }
  if (tmp___1 != 0L) {
    {
    tmp = readl((void const volatile *)skdev->mem_map[1] + (unsigned long )offset);
    }
    return (tmp);
  } else {
    {
    __asm__ volatile ("": : : "memory");
    val = readl((void const volatile *)skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_read32";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d offset %x = %x\n";
    descriptor.lineno = 371U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %x\n", (char *)(& skdev->name),
                         "skd_reg_read32", 371, offset, val);
      }
    } else {
    }
    return (val);
  }
}
}
__inline static void skd_reg_write32(struct skd_device *skdev , u32 val , u32 offset )
{
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp___0 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  }
  if (tmp___0 != 0L) {
    {
    writel(val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    }
  } else {
    {
    __asm__ volatile ("": : : "memory");
    writel(val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_write32";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d offset %x = %x\n";
    descriptor.lineno = 388U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %x\n", (char *)(& skdev->name),
                         "skd_reg_write32", 388, offset, val);
      }
    } else {
    }
  }
  return;
}
}
__inline static void skd_reg_write64(struct skd_device *skdev , u64 val , u32 offset )
{
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp___0 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  }
  if (tmp___0 != 0L) {
    {
    writeq((unsigned long )val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    }
  } else {
    {
    __asm__ volatile ("": : : "memory");
    writeq((unsigned long )val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_write64";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d offset %x = %016llx\n";
    descriptor.lineno = 403U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %016llx\n", (char *)(& skdev->name),
                         "skd_reg_write64", 403, offset, val);
      }
    } else {
    }
  }
  return;
}
}
static int skd_isr_type = 1;
static int skd_max_req_per_msg = 1;
static int skd_max_queue_depth = 64;
static int skd_sgs_per_request = 256;
static int skd_max_pass_thru = 32;
static u32 skd_major ;
static void skd_destruct(struct skd_device *skdev ) ;
static struct block_device_operations const skd_blockdev_ops ;
static void skd_send_fitmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ) ;
static void skd_send_special_fitmsg(struct skd_device *skdev , struct skd_special_context *skspcl ) ;
static void skd_request_fn(struct request_queue *q ) ;
static void skd_end_request(struct skd_device *skdev , struct skd_request_context *skreq ,
                            int error ) ;
static int skd_preop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq ) ;
static void skd_postop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq ) ;
static void skd_restart_device(struct skd_device *skdev ) ;
static int skd_quiesce_dev(struct skd_device *skdev ) ;
static int skd_unquiesce_dev(struct skd_device *skdev ) ;
static void skd_release_special(struct skd_device *skdev , struct skd_special_context *skspcl ) ;
static void skd_disable_interrupts(struct skd_device *skdev ) ;
static void skd_isr_fwstate(struct skd_device *skdev ) ;
static void skd_recover_requests(struct skd_device *skdev , int requeue ) ;
static void skd_soft_reset(struct skd_device *skdev ) ;
static char const *skd_name(struct skd_device *skdev ) ;
char const *skd_drive_state_to_str(int state ) ;
char const *skd_skdev_state_to_str(enum skd_drvr_state state ) ;
static void skd_log_skdev(struct skd_device *skdev , char const *event ) ;
static void skd_log_skmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ,
                          char const *event ) ;
static void skd_log_skreq(struct skd_device *skdev , struct skd_request_context *skreq ,
                          char const *event ) ;
static void skd_fail_all_pending(struct skd_device *skdev )
{
  struct request_queue *q ;
  struct request *req ;
  {
  q = skdev->queue;
  ldv_38490:
  {
  req = blk_peek_request(q);
  }
  if ((unsigned long )req == (unsigned long )((struct request *)0)) {
    goto ldv_38489;
  } else {
  }
  {
  blk_start_request(req);
  __blk_end_request_all(req, -5);
  }
  goto ldv_38490;
  ldv_38489: ;
  return;
}
}
static void skd_prep_rw_cdb(struct skd_scsi_request *scsi_req , int data_dir , unsigned int lba ,
                            unsigned int count )
{
  {
  if (data_dir == 0) {
    scsi_req->cdb[0] = 40U;
  } else {
    scsi_req->cdb[0] = 42U;
  }
  scsi_req->cdb[1] = 0U;
  scsi_req->cdb[2] = (unsigned char )(lba >> 24);
  scsi_req->cdb[3] = (unsigned char )((lba & 16711680U) >> 16);
  scsi_req->cdb[4] = (unsigned char )((lba & 65280U) >> 8);
  scsi_req->cdb[5] = (unsigned char )lba;
  scsi_req->cdb[6] = 0U;
  scsi_req->cdb[7] = (unsigned char )((count & 65280U) >> 8);
  scsi_req->cdb[8] = (unsigned char )count;
  scsi_req->cdb[9] = 0U;
  return;
}
}
static void skd_prep_zerosize_flush_cdb(struct skd_scsi_request *scsi_req , struct skd_request_context *skreq )
{
  {
  skreq->flush_cmd = 1U;
  scsi_req->cdb[0] = 53U;
  scsi_req->cdb[1] = 0U;
  scsi_req->cdb[2] = 0U;
  scsi_req->cdb[3] = 0U;
  scsi_req->cdb[4] = 0U;
  scsi_req->cdb[5] = 0U;
  scsi_req->cdb[6] = 0U;
  scsi_req->cdb[7] = 0U;
  scsi_req->cdb[8] = 0U;
  scsi_req->cdb[9] = 0U;
  return;
}
}
static void skd_prep_discard_cdb(struct skd_scsi_request *scsi_req , struct skd_request_context *skreq ,
                                 struct page *page , u32 lba , u32 count )
{
  char *buf ;
  unsigned long len ;
  struct request *req ;
  void *tmp ;
  {
  {
  tmp = lowmem_page_address((struct page const *)page);
  buf = (char *)tmp;
  len = 24UL;
  scsi_req->cdb[0] = 66U;
  scsi_req->cdb[8] = (unsigned char )len;
  put_unaligned_be16(22, (void *)buf);
  put_unaligned_be16(16, (void *)buf + 2U);
  put_unaligned_be64((u64 )lba, (void *)buf + 8U);
  put_unaligned_be32(count, (void *)buf + 16U);
  req = skreq->req;
  blk_add_request_payload(req, page, (unsigned int )len);
  }
  return;
}
}
static void skd_request_fn_not_online(struct request_queue *q ) ;
static void skd_request_fn(struct request_queue *q )
{
  struct skd_device *skdev ;
  struct skd_fitmsg_context *skmsg ;
  struct fit_msg_hdr *fmh ;
  struct skd_request_context *skreq ;
  struct request *req ;
  struct skd_scsi_request *scsi_req ;
  struct page *page ;
  unsigned long io_flags ;
  int error ;
  u32 lba ;
  u32 count ;
  int data_dir ;
  u32 be_lba ;
  u32 be_count ;
  u64 be_dmaa ;
  u64 cmdctxt ;
  u32 timo_slot ;
  void *cmd_ptr ;
  int flush ;
  int fua ;
  int tmp ;
  sector_t tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u64 tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___4 ;
  long tmp___14 ;
  __u32 tmp___15 ;
  struct _ddebug descriptor___5 ;
  long tmp___16 ;
  struct _ddebug descriptor___6 ;
  long tmp___17 ;
  {
  skdev = (struct skd_device *)q->queuedata;
  skmsg = (struct skd_fitmsg_context *)0;
  fmh = (struct fit_msg_hdr *)0;
  req = (struct request *)0;
  if ((unsigned int )skdev->state != 4U) {
    {
    skd_request_fn_not_online(q);
    }
    return;
  } else {
  }
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& (skdev->queue)->queue_flags));
  }
  if (tmp != 0) {
    if (((unsigned long )skdev->skmsg_free_list == (unsigned long )((struct skd_fitmsg_context *)0) || (unsigned long )skdev->skreq_free_list == (unsigned long )((struct skd_request_context *)0)) || skdev->in_flight >= skdev->queue_low_water_mark) {
      return;
    } else {
    }
    {
    queue_flag_clear(2U, skdev->queue);
    }
  } else {
  }
  ldv_38547:
  {
  fua = 0;
  flush = fua;
  req = blk_peek_request(q);
  }
  if ((unsigned long )req == (unsigned long )((struct request *)0)) {
    goto ldv_38536;
  } else {
  }
  {
  tmp___0 = blk_rq_pos((struct request const *)req);
  lba = (unsigned int )tmp___0;
  count = blk_rq_sectors((struct request const *)req);
  data_dir = (int )req->cmd_flags & 1;
  io_flags = (unsigned long )req->cmd_flags;
  }
  if (((unsigned long long )io_flags & 8192ULL) != 0ULL) {
    flush = flush + 1;
  } else {
  }
  if (((unsigned long long )io_flags & 4096ULL) != 0ULL) {
    fua = fua + 1;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_request_fn";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d new req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n";
  descriptor.lineno = 638U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d new req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n",
                       (char *)(& skdev->name), "skd_request_fn", 638, req, lba, lba,
                       count, count, data_dir);
    }
  } else {
  }
  if (skdev->in_flight >= skdev->cur_max_queue_depth) {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_request_fn";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d qdepth %d, limit %d\n";
    descriptor___0.lineno = 646U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d qdepth %d, limit %d\n", (char *)(& skdev->name),
                         "skd_request_fn", 646, skdev->in_flight, skdev->cur_max_queue_depth);
      }
    } else {
    }
    goto ldv_38536;
  } else {
  }
  skreq = skdev->skreq_free_list;
  if ((unsigned long )skreq == (unsigned long )((struct skd_request_context *)0)) {
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_request_fn";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d Out of req=%p\n";
    descriptor___1.lineno = 654U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d Out of req=%p\n", (char *)(& skdev->name),
                         "skd_request_fn", 654, q);
      }
    } else {
    }
    goto ldv_38536;
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect((unsigned int )skreq->state != 0U, 0L);
  }
  if (tmp___4 != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->state == SKD_REQ_STATE_IDLE",
           (char *)"drivers/block/skd_main.c", "skd_request_fn", 657);
    }
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect(((int )skreq->id & 1024) != 0, 0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skreq->id & SKD_ID_INCR) == 0",
           (char *)"drivers/block/skd_main.c", "skd_request_fn", 658);
    }
  } else {
  }
  if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
    if ((unsigned long )skdev->skmsg_free_list == (unsigned long )((struct skd_fitmsg_context *)0)) {
      {
      descriptor___2.modname = "skd";
      descriptor___2.function = "skd_request_fn";
      descriptor___2.filename = "drivers/block/skd_main.c";
      descriptor___2.format = "%s:%s:%d Out of msg\n";
      descriptor___2.lineno = 664U;
      descriptor___2.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d Out of msg\n", (char *)(& skdev->name),
                           "skd_request_fn", 664);
        }
      } else {
      }
      goto ldv_38536;
    } else {
    }
  } else {
  }
  {
  skreq->flush_cmd = 0U;
  skreq->n_sg = 0U;
  skreq->sg_byte_count = 0U;
  skreq->discard_page = 0U;
  blk_start_request(req);
  skreq->req = req;
  skreq->fitmsg_id = 0U;
  }
  if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
    skmsg = skdev->skmsg_free_list;
    if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
      {
      descriptor___3.modname = "skd";
      descriptor___3.function = "skd_request_fn";
      descriptor___3.filename = "drivers/block/skd_main.c";
      descriptor___3.format = "%s:%s:%d Out of msg skdev=%p\n";
      descriptor___3.lineno = 692U;
      descriptor___3.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___3, "%s:%s:%d Out of msg skdev=%p\n", (char *)(& skdev->name),
                           "skd_request_fn", 692, skdev);
        }
      } else {
      }
      goto ldv_38536;
    } else {
    }
    {
    tmp___8 = ldv__builtin_expect((unsigned int )skmsg->state != 0U, 0L);
    }
    if (tmp___8 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->state == SKD_MSG_STATE_IDLE",
             (char *)"drivers/block/skd_main.c", "skd_request_fn", 695);
      }
    } else {
    }
    {
    tmp___9 = ldv__builtin_expect((skmsg->id & 1024U) != 0U, 0L);
    }
    if (tmp___9 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skmsg->id & SKD_ID_INCR) == 0",
             (char *)"drivers/block/skd_main.c", "skd_request_fn", 696);
      }
    } else {
    }
    {
    skdev->skmsg_free_list = skmsg->next;
    skmsg->state = 1;
    skmsg->id = skmsg->id + 1024U;
    fmh = (struct fit_msg_hdr *)skmsg->msg_buf;
    memset((void *)fmh, 0, 64UL);
    fmh->protocol_id = 3U;
    skmsg->length = 64U;
    }
  } else {
  }
  {
  skreq->fitmsg_id = skmsg->id;
  cmd_ptr = (void *)skmsg->msg_buf + (unsigned long )skmsg->length;
  memset(cmd_ptr, 0, 32UL);
  tmp___10 = __fswab32(lba);
  be_lba = tmp___10;
  tmp___11 = __fswab32(count);
  be_count = tmp___11;
  tmp___12 = __fswab64(skreq->sksg_dma_address);
  be_dmaa = tmp___12;
  cmdctxt = (u64 )((int )skreq->id + 1024);
  scsi_req = (struct skd_scsi_request *)cmd_ptr;
  scsi_req->hdr.tag = (uint16_t )cmdctxt;
  scsi_req->hdr.sg_list_dma_address = be_dmaa;
  }
  if (data_dir == 0) {
    skreq->sg_data_dir = 2U;
  } else {
    skreq->sg_data_dir = 1U;
  }
  if (((unsigned long long )io_flags & 128ULL) != 0ULL) {
    {
    page = alloc_pages(32800U, 0U);
    }
    if ((unsigned long )page == (unsigned long )((struct page *)0)) {
      {
      printk("\vrequest_fn:Page allocation failed.\n");
      skd_end_request(skdev, skreq, -12);
      }
      goto ldv_38536;
    } else {
    }
    {
    skreq->discard_page = 1U;
    req->__annonCompField78.completion_data = (void *)page;
    skd_prep_discard_cdb(scsi_req, skreq, page, lba, count);
    }
  } else
  if (flush == 1) {
    {
    skd_prep_zerosize_flush_cdb(scsi_req, skreq);
    tmp___13 = ldv__builtin_expect((unsigned int )skreq->flush_cmd != 1U, 0L);
    }
    if (tmp___13 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->flush_cmd == 1",
             (char *)"drivers/block/skd_main.c", "skd_request_fn", 751);
      }
    } else {
    }
  } else {
    {
    skd_prep_rw_cdb(scsi_req, data_dir, lba, count);
    }
  }
  if (fua != 0) {
    scsi_req->cdb[1] = (unsigned int )scsi_req->cdb[1] | 2U;
  } else {
  }
  if ((unsigned long )req->bio == (unsigned long )((struct bio *)0)) {
    goto skip_sg;
  } else {
  }
  {
  error = skd_preop_sg_list(skdev, skreq);
  }
  if (error != 0) {
    {
    descriptor___4.modname = "skd";
    descriptor___4.function = "skd_request_fn";
    descriptor___4.filename = "drivers/block/skd_main.c";
    descriptor___4.format = "%s:%s:%d error Out\n";
    descriptor___4.lineno = 776U;
    descriptor___4.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___14 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "%s:%s:%d error Out\n", (char *)(& skdev->name),
                         "skd_request_fn", 776);
      }
    } else {
    }
    {
    skd_end_request(skdev, skreq, error);
    }
    goto ldv_38545;
  } else {
  }
  skip_sg:
  {
  tmp___15 = __fswab32(skreq->sg_byte_count);
  scsi_req->hdr.sg_list_len_bytes = tmp___15;
  skdev->skreq_free_list = skreq->next;
  skreq->state = 2;
  skreq->id = (unsigned int )skreq->id + 1024U;
  skmsg->length = skmsg->length + 32U;
  fmh->num_protocol_cmds_coalesced = (uint8_t )((int )fmh->num_protocol_cmds_coalesced + 1);
  skreq->timeout_stamp = skdev->timeout_stamp;
  timo_slot = skreq->timeout_stamp & 3U;
  skdev->timeout_slot[timo_slot] = skdev->timeout_slot[timo_slot] + 1U;
  skdev->in_flight = skdev->in_flight + 1U;
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_request_fn";
  descriptor___5.filename = "drivers/block/skd_main.c";
  descriptor___5.format = "%s:%s:%d req=0x%x busy=%d\n";
  descriptor___5.lineno = 803U;
  descriptor___5.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___16 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d req=0x%x busy=%d\n", (char *)(& skdev->name),
                       "skd_request_fn", 803, (int )skreq->id, skdev->in_flight);
    }
  } else {
  }
  if (skmsg->length > 511U || (int )fmh->num_protocol_cmds_coalesced >= skd_max_req_per_msg) {
    {
    skd_send_fitmsg(skdev, skmsg);
    skmsg = (struct skd_fitmsg_context *)0;
    fmh = (struct fit_msg_hdr *)0;
    }
  } else {
  }
  ldv_38545: ;
  goto ldv_38547;
  ldv_38536: ;
  if ((unsigned long )skmsg != (unsigned long )((struct skd_fitmsg_context *)0)) {
    if (skmsg->length > 64U) {
      {
      descriptor___6.modname = "skd";
      descriptor___6.function = "skd_request_fn";
      descriptor___6.filename = "drivers/block/skd_main.c";
      descriptor___6.format = "%s:%s:%d sending msg=%p, len %d\n";
      descriptor___6.lineno = 827U;
      descriptor___6.flags = 0U;
      tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      }
      if (tmp___17 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___6, "%s:%s:%d sending msg=%p, len %d\n",
                           (char *)(& skdev->name), "skd_request_fn", 827, skmsg,
                           skmsg->length);
        }
      } else {
      }
      {
      skd_send_fitmsg(skdev, skmsg);
      }
    } else {
      skmsg->state = 0;
      skmsg->id = skmsg->id + 1024U;
      skmsg->next = skdev->skmsg_free_list;
      skdev->skmsg_free_list = skmsg;
    }
    skmsg = (struct skd_fitmsg_context *)0;
    fmh = (struct fit_msg_hdr *)0;
  } else {
  }
  if ((unsigned long )req != (unsigned long )((struct request *)0)) {
    {
    blk_stop_queue(skdev->queue);
    }
  } else {
  }
  return;
}
}
static void skd_end_request(struct skd_device *skdev , struct skd_request_context *skreq ,
                            int error )
{
  struct request *req ;
  unsigned int io_flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct request *req___0 ;
  char *cmd ;
  u32 lba ;
  sector_t tmp___0 ;
  u32 count ;
  unsigned int tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  req = skreq->req;
  io_flags = (unsigned int )req->cmd_flags;
  if (((unsigned long long )io_flags & 128ULL) != 0ULL && (unsigned int )skreq->discard_page == 1U) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_end_request";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d, free the page!";
    descriptor.lineno = 860U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d, free the page!", (char *)(& skdev->name),
                         "skd_end_request", 860);
      }
    } else {
    }
    {
    __free_pages((struct page *)req->__annonCompField78.completion_data, 0U);
    }
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(error != 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    req___0 = skreq->req;
    cmd = ((int )req___0->cmd_flags & 1) == 0 ? (char *)"read" : (char *)"write";
    tmp___0 = blk_rq_pos((struct request const *)req___0);
    lba = (unsigned int )tmp___0;
    tmp___1 = blk_rq_sectors((struct request const *)req___0);
    count = tmp___1;
    tmp___2 = skd_name(skdev);
    printk("\v(%s): Error cmd=%s sect=%u count=%u id=0x%x\n", tmp___2, cmd, lba, count,
           (int )skreq->id);
    }
  } else {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_end_request";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d id=0x%x error=%d\n";
    descriptor___0.lineno = 874U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d id=0x%x error=%d\n", (char *)(& skdev->name),
                         "skd_end_request", 874, (int )skreq->id, error);
      }
    } else {
    }
  }
  {
  __blk_end_request_all(skreq->req, error);
  }
  return;
}
}
static int skd_preop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq )
{
  struct request *req ;
  int writing ;
  int pci_dir ;
  struct scatterlist *sg ;
  int n_sg ;
  int i ;
  long tmp ;
  struct fit_sg_descriptor *sgd ;
  u32 cnt ;
  uint64_t dma_addr ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct fit_sg_descriptor *sgd___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  req = skreq->req;
  writing = (unsigned int )skreq->sg_data_dir == 1U;
  pci_dir = writing != 0 ? 1 : 2;
  sg = skreq->sg;
  skreq->sg_byte_count = 0U;
  n_sg = blk_rq_map_sg(skdev->queue, req, sg);
  }
  if (n_sg <= 0) {
    return (-22);
  } else {
  }
  {
  n_sg = pci_map_sg(skdev->pdev, sg, n_sg, pci_dir);
  }
  if (n_sg <= 0) {
    return (-22);
  } else {
  }
  {
  tmp = ldv__builtin_expect(n_sg > skdev->sgs_per_request, 0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"n_sg <= skdev->sgs_per_request",
           (char *)"drivers/block/skd_main.c", "skd_preop_sg_list", 906);
    }
  } else {
  }
  skreq->n_sg = (u32 )n_sg;
  i = 0;
  goto ldv_38578;
  ldv_38577:
  sgd = skreq->sksg_list + (unsigned long )i;
  cnt = (sg + (unsigned long )i)->dma_length;
  dma_addr = (sg + (unsigned long )i)->dma_address;
  sgd->control = 0U;
  sgd->byte_count = cnt;
  skreq->sg_byte_count = skreq->sg_byte_count + cnt;
  sgd->host_side_addr = dma_addr;
  sgd->dev_side_addr = 0ULL;
  i = i + 1;
  ldv_38578: ;
  if (i < n_sg) {
    goto ldv_38577;
  } else {
  }
  {
  (skreq->sksg_list + ((unsigned long )n_sg + 0xffffffffffffffffUL))->next_desc_ptr = 0ULL;
  (skreq->sksg_list + ((unsigned long )n_sg + 0xffffffffffffffffUL))->control = 1038U;
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  }
  if (tmp___2 != 0L) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_preop_sg_list";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n";
    descriptor.lineno = 928U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_preop_sg_list", 928, (int )skreq->id,
                         skreq->sksg_list, skreq->sksg_dma_address);
      }
    } else {
    }
    i = 0;
    goto ldv_38584;
    ldv_38583:
    {
    sgd___0 = skreq->sksg_list + (unsigned long )i;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_preop_sg_list";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___0.lineno = 935U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_preop_sg_list", 935, i, sgd___0->byte_count,
                         sgd___0->control, sgd___0->host_side_addr, sgd___0->next_desc_ptr);
      }
    } else {
    }
    i = i + 1;
    ldv_38584: ;
    if (i < n_sg) {
      goto ldv_38583;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void skd_postop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq )
{
  int writing ;
  int pci_dir ;
  {
  {
  writing = (unsigned int )skreq->sg_data_dir == 1U;
  pci_dir = writing != 0 ? 1 : 2;
  (skreq->sksg_list + (unsigned long )(skreq->n_sg - 1U))->next_desc_ptr = skreq->sksg_dma_address + (unsigned long long )((unsigned long )skreq->n_sg * 32UL);
  pci_unmap_sg(skdev->pdev, skreq->sg, (int )skreq->n_sg, pci_dir);
  }
  return;
}
}
static void skd_request_fn_not_online(struct request_queue *q )
{
  struct skd_device *skdev ;
  int error ;
  long tmp ;
  {
  {
  skdev = (struct skd_device *)q->queuedata;
  tmp = ldv__builtin_expect((unsigned int )skdev->state == 4U, 0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->state != SKD_DRVR_STATE_ONLINE",
           (char *)"drivers/block/skd_main.c", "skd_request_fn_not_online", 963);
    }
  } else {
  }
  {
  skd_log_skdev(skdev, "req_not_online");
  }
  {
  if ((unsigned int )skdev->state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )skdev->state == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )skdev->state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )skdev->state == 17U) {
    goto case_17;
  } else {
  }
  if ((unsigned int )skdev->state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->state == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )skdev->state == 14U) {
    goto case_14;
  } else {
  }
  if ((unsigned int )skdev->state == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )skdev->state == 15U) {
    goto case_15;
  } else {
  }
  if ((unsigned int )skdev->state == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )skdev->state == 18U) {
    goto case_18;
  } else {
  }
  if ((unsigned int )skdev->state == 11U) {
    goto case_11;
  } else {
  }
  if ((unsigned int )skdev->state == 12U) {
    goto case_12;
  } else {
  }
  goto switch_default;
  case_5: ;
  case_6: ;
  case_3: ;
  case_8: ;
  case_17: ;
  case_2: ;
  case_16: ;
  case_14: ;
  case_7: ;
  return;
  case_15: ;
  case_10: ;
  case_18: ;
  case_11: ;
  case_12: ;
  switch_default:
  error = -5;
  goto ldv_38613;
  switch_break: ;
  }
  ldv_38613:
  {
  skd_fail_all_pending(skdev);
  }
  return;
}
}
static void skd_timer_tick_not_online(struct skd_device *skdev ) ;
static void skd_timer_tick(ulong arg )
{
  struct skd_device *skdev ;
  u32 timo_slot ;
  u32 overdue_timestamp ;
  unsigned long reqflags ;
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  char const *tmp___0 ;
  {
  skdev = (struct skd_device *)arg;
  if ((unsigned int )skdev->state == 11U) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(& skdev->lock);
  state = skd_reg_read32(skdev, 1296U);
  state = state & 255U;
  }
  if (state != skdev->drive_state) {
    {
    skd_isr_fwstate(skdev);
    }
  } else {
  }
  if ((unsigned int )skdev->state != 4U) {
    {
    skd_timer_tick_not_online(skdev);
    }
    goto timer_func_out;
  } else {
  }
  skdev->timeout_stamp = skdev->timeout_stamp + 1U;
  timo_slot = skdev->timeout_stamp & 3U;
  if (skdev->timeout_slot[timo_slot] == 0U) {
    goto timer_func_out;
  } else {
  }
  {
  overdue_timestamp = skdev->timeout_stamp - 4U;
  descriptor.modname = "skd";
  descriptor.function = "skd_timer_tick";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d found %d timeouts, draining busy=%d\n";
  descriptor.lineno = 1052U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d found %d timeouts, draining busy=%d\n",
                       (char *)(& skdev->name), "skd_timer_tick", 1052, skdev->timeout_slot[timo_slot],
                       skdev->in_flight);
    }
  } else {
  }
  {
  tmp___0 = skd_name(skdev);
  printk("\v(%s): Overdue IOs (%d), busy %d\n", tmp___0, skdev->timeout_slot[timo_slot],
         skdev->in_flight);
  skdev->timer_countdown = 6U;
  skdev->state = 7;
  skdev->timo_slot = timo_slot;
  blk_stop_queue(skdev->queue);
  }
  timer_func_out:
  {
  ldv_mod_timer_97(& skdev->timer, (unsigned long )jiffies + 250UL);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, reqflags);
  }
  return;
}
}
static void skd_timer_tick_not_online(struct skd_device *skdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  {
  {
  if ((unsigned int )skdev->state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )skdev->state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )skdev->state == 15U) {
    goto case_15;
  } else {
  }
  if ((unsigned int )skdev->state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->state == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )skdev->state == 14U) {
    goto case_14;
  } else {
  }
  if ((unsigned int )skdev->state == 17U) {
    goto case_17;
  } else {
  }
  if ((unsigned int )skdev->state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )skdev->state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )skdev->state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )skdev->state == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )skdev->state == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )skdev->state == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )skdev->state == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )skdev->state == 18U) {
    goto case_18;
  } else {
  }
  if ((unsigned int )skdev->state == 11U) {
    goto case_11;
  } else {
  }
  if ((unsigned int )skdev->state == 12U) {
    goto case_12;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_0: ;
  goto ldv_38632;
  case_15:
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_timer_tick_not_online";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d drive busy sanitize[%x], driver[%x]\n";
  descriptor.lineno = 1077U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive busy sanitize[%x], driver[%x]\n",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1077,
                       skdev->drive_state, (unsigned int )skdev->state);
    }
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  {
  skd_recover_requests(skdev, 0);
  }
  goto ldv_38632;
  case_2: ;
  case_16: ;
  case_14:
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_timer_tick_not_online";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d busy[%x], countdown=%d\n";
  descriptor___0.lineno = 1093U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d busy[%x], countdown=%d\n", (char *)(& skdev->name),
                       "skd_timer_tick_not_online", 1093, (unsigned int )skdev->state,
                       skdev->timer_countdown);
    }
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  {
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_timer_tick_not_online";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d busy[%x], timedout=%d, restarting device.";
  descriptor___1.lineno = 1100U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d busy[%x], timedout=%d, restarting device.",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1100,
                       (unsigned int )skdev->state, skdev->timer_countdown);
    }
  } else {
  }
  {
  skd_restart_device(skdev);
  }
  goto ldv_38632;
  case_17: ;
  case_3: ;
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  {
  skdev->state = 11;
  tmp___2 = skd_name(skdev);
  printk("\v(%s): DriveFault Connect Timeout (%x)\n", tmp___2, skdev->drive_state);
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_38632;
  case_4: ;
  goto ldv_38632;
  case_5: ;
  case_6: ;
  goto ldv_38632;
  case_7:
  {
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_timer_tick_not_online";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d draining busy [%d] tick[%d] qdb[%d] tmls[%d]\n";
  descriptor___2.lineno = 1139U;
  descriptor___2.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d draining busy [%d] tick[%d] qdb[%d] tmls[%d]\n",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1139,
                       skdev->timo_slot, skdev->timer_countdown, skdev->in_flight,
                       skdev->timeout_slot[skdev->timo_slot]);
    }
  } else {
  }
  if (skdev->timeout_slot[skdev->timo_slot] == 0U) {
    {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_timer_tick_not_online";
    descriptor___3.filename = "drivers/block/skd_main.c";
    descriptor___3.format = "%s:%s:%d Slot drained, starting queue.\n";
    descriptor___3.lineno = 1143U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d Slot drained, starting queue.\n",
                         (char *)(& skdev->name), "skd_timer_tick_not_online", 1143);
      }
    } else {
    }
    {
    skdev->state = 4;
    blk_start_queue(skdev->queue);
    }
    return;
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  {
  skd_restart_device(skdev);
  }
  goto ldv_38632;
  case_8: ;
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  {
  skdev->state = 11;
  tmp___5 = skd_name(skdev);
  printk("\v(%s): DriveFault Reconnect Timeout (%x)\n", tmp___5, skdev->drive_state);
  }
  if ((skdev->drive_state == 8U || skdev->drive_state == 5U) || skdev->drive_state == 255U) {
    {
    skd_recover_requests(skdev, 0);
    }
  } else {
    {
    tmp___6 = skd_name(skdev);
    printk("\v(%s): Disable BusMaster (%x)\n", tmp___6, skdev->drive_state);
    pci_disable_device(skdev->pdev);
    skd_disable_interrupts(skdev);
    skd_recover_requests(skdev, 0);
    }
  }
  {
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_38632;
  case_9: ;
  case_10: ;
  case_18: ;
  case_11: ;
  case_12: ;
  switch_default: ;
  goto ldv_38632;
  switch_break: ;
  }
  ldv_38632: ;
  return;
}
}
static int skd_start_timer(struct skd_device *skdev )
{
  int rc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  init_timer_key(& skdev->timer, 0U, "(&skdev->timer)", & __key);
  init_timer_key(& skdev->timer, 0U, "((&skdev->timer))", & __key___0);
  skdev->timer.function = & skd_timer_tick;
  skdev->timer.data = (unsigned long )skdev;
  rc = ldv_mod_timer_99(& skdev->timer, (unsigned long )jiffies + 250UL);
  }
  if (rc != 0) {
    {
    printk("\v%s: failed to start timer %d\n", "skd_start_timer", rc);
    }
  } else {
  }
  return (rc);
}
}
static void skd_kill_timer(struct skd_device *skdev )
{
  {
  {
  ldv_del_timer_sync_100(& skdev->timer);
  }
  return;
}
}
static int skd_ioctl_sg_io(struct skd_device *skdev , fmode_t mode , void *argp ) ;
static int skd_sg_io_get_and_check_args(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_obtain_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_prep_buffering(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_copy_buffer(struct skd_device *skdev , struct skd_sg_io *sksgio ,
                                 int dxfer_dir ) ;
static int skd_sg_io_send_fitmsg(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_await(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_release_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_put_status(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static void skd_complete_special(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl ) ;
static int skd_bdev_ioctl(struct block_device *bdev , fmode_t mode , uint cmd_in ,
                          ulong arg )
{
  int rc ;
  struct gendisk *disk ;
  struct skd_device *skdev ;
  void *p ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  {
  rc = 0;
  disk = bdev->bd_disk;
  skdev = (struct skd_device *)disk->private_data;
  p = (void *)arg;
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_ioctl";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d %s: CMD[%s] ioctl  mode 0x%x, cmd 0x%x arg %0lx\n";
  descriptor.lineno = 1268U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: CMD[%s] ioctl  mode 0x%x, cmd 0x%x arg %0lx\n",
                       (char *)(& skdev->name), "skd_bdev_ioctl", 1268, (char *)(& disk->disk_name),
                       (char *)(& tmp->comm), mode, cmd_in, arg);
    }
  } else {
  }
  {
  tmp___1 = capable(21);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-1);
  } else {
  }
  {
  if (cmd_in == 8705U) {
    goto case_8705;
  } else {
  }
  if (cmd_in == 8706U) {
    goto case_8706;
  } else {
  }
  if (cmd_in == 8834U) {
    goto case_8834;
  } else {
  }
  if (cmd_in == 8837U) {
    goto case_8837;
  } else {
  }
  goto switch_default;
  case_8705: ;
  case_8706: ;
  case_8834:
  {
  rc = scsi_cmd_ioctl(disk->queue, disk, mode, cmd_in, p);
  }
  goto ldv_38715;
  case_8837:
  {
  rc = skd_ioctl_sg_io(skdev, mode, p);
  }
  goto ldv_38715;
  switch_default:
  rc = -25;
  goto ldv_38715;
  switch_break: ;
  }
  ldv_38715:
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_bdev_ioctl";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d %s:  completion rc %d\n";
  descriptor___0.lineno = 1289U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d %s:  completion rc %d\n", (char *)(& skdev->name),
                       "skd_bdev_ioctl", 1289, (char *)(& disk->disk_name), rc);
    }
  } else {
  }
  return (rc);
}
}
static int skd_ioctl_sg_io(struct skd_device *skdev , fmode_t mode , void *argp )
{
  int rc ;
  struct skd_sg_io sksgio ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  memset((void *)(& sksgio), 0, 160UL);
  sksgio.mode = mode;
  sksgio.argp = argp;
  sksgio.iov = & sksgio.no_iov_iov;
  }
  {
  if ((unsigned int )skdev->state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )skdev->state == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_4: ;
  case_16: ;
  goto ldv_38728;
  switch_default:
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_ioctl_sg_io";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d drive not online\n";
  descriptor.lineno = 1311U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive not online\n", (char *)(& skdev->name),
                       "skd_ioctl_sg_io", 1311);
    }
  } else {
  }
  rc = -6;
  goto out;
  switch_break: ;
  }
  ldv_38728:
  {
  rc = skd_sg_io_get_and_check_args(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_obtain_skspcl(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_prep_buffering(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_copy_buffer(skdev, & sksgio, -2);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_send_fitmsg(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_await(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_copy_buffer(skdev, & sksgio, -3);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rc = skd_sg_io_put_status(skdev, & sksgio);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = 0;
  out:
  {
  skd_sg_io_release_skspcl(skdev, & sksgio);
  }
  if ((unsigned long )sksgio.iov != (unsigned long )((struct sg_iovec *)0) && (unsigned long )sksgio.iov != (unsigned long )(& sksgio.no_iov_iov)) {
    {
    kfree((void const *)sksgio.iov);
    }
  } else {
  }
  return (rc);
}
}
static int skd_sg_io_get_and_check_args(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct sg_io_hdr *sgp ;
  int i ;
  int acc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  long tmp___9 ;
  struct _ddebug descriptor___5 ;
  long tmp___10 ;
  struct _ddebug descriptor___6 ;
  long tmp___11 ;
  unsigned long tmp___12 ;
  struct _ddebug descriptor___7 ;
  long tmp___13 ;
  struct thread_info *tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  struct sg_iovec *iov ;
  uint nbytes ;
  size_t iov_data_len ;
  void *tmp___18 ;
  struct _ddebug descriptor___8 ;
  long tmp___19 ;
  struct _ddebug descriptor___9 ;
  long tmp___20 ;
  unsigned long tmp___21 ;
  unsigned long tmp___22 ;
  struct sg_iovec *iov___0 ;
  struct _ddebug descriptor___10 ;
  long tmp___23 ;
  struct thread_info *tmp___24 ;
  bool tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  {
  {
  sgp = & sksgio->sg;
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )sksgio->argp, 88UL, tmp___0->addr_limit.seg);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  {
  tmp___3 = ldv__builtin_expect((long )tmp___2, 1L);
  }
  if (tmp___3 == 0L) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_sg_io_get_and_check_args";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d access sg failed %p\n";
    descriptor.lineno = 1366U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d access sg failed %p\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1366, sksgio->argp);
      }
    } else {
    }
    return (-14);
  } else {
  }
  {
  tmp___5 = __copy_from_user((void *)sgp, (void const *)sksgio->argp, 88U);
  }
  if (tmp___5 != 0) {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_sg_io_get_and_check_args";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d copy_from_user sg failed %p\n";
    descriptor___0.lineno = 1372U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d copy_from_user sg failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1372, sksgio->argp);
      }
    } else {
    }
    return (-14);
  } else {
  }
  if (sgp->interface_id != 83) {
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_sg_io_get_and_check_args";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d interface_id invalid 0x%x\n";
    descriptor___1.lineno = 1378U;
    descriptor___1.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d interface_id invalid 0x%x\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1378, sgp->interface_id);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )sgp->cmd_len > 16U) {
    {
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_sg_io_get_and_check_args";
    descriptor___2.filename = "drivers/block/skd_main.c";
    descriptor___2.format = "%s:%s:%d cmd_len invalid %d\n";
    descriptor___2.lineno = 1384U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___7 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d cmd_len invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1384, (int )sgp->cmd_len);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )sgp->iovec_count > 256U) {
    {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_sg_io_get_and_check_args";
    descriptor___3.filename = "drivers/block/skd_main.c";
    descriptor___3.format = "%s:%s:%d iovec_count invalid %d\n";
    descriptor___3.lineno = 1390U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___8 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d iovec_count invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1390, (int )sgp->iovec_count);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if (sgp->dxfer_len > 1048576U) {
    {
    descriptor___4.modname = "skd";
    descriptor___4.function = "skd_sg_io_get_and_check_args";
    descriptor___4.filename = "drivers/block/skd_main.c";
    descriptor___4.format = "%s:%s:%d dxfer_len invalid %d\n";
    descriptor___4.lineno = 1396U;
    descriptor___4.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "%s:%s:%d dxfer_len invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1396, sgp->dxfer_len);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  if (sgp->dxfer_direction == -1) {
    goto case_neg_1;
  } else {
  }
  if (sgp->dxfer_direction == -2) {
    goto case_neg_2;
  } else {
  }
  if (sgp->dxfer_direction == -3) {
    goto case_neg_3;
  } else {
  }
  if (sgp->dxfer_direction == -4) {
    goto case_neg_4;
  } else {
  }
  goto switch_default;
  case_neg_1:
  acc = -1;
  goto ldv_38749;
  case_neg_2:
  acc = 0;
  goto ldv_38749;
  case_neg_3: ;
  case_neg_4:
  acc = 1;
  goto ldv_38749;
  switch_default:
  {
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_sg_io_get_and_check_args";
  descriptor___5.filename = "drivers/block/skd_main.c";
  descriptor___5.format = "%s:%s:%d dxfer_dir invalid %d\n";
  descriptor___5.lineno = 1416U;
  descriptor___5.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___10 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d dxfer_dir invalid %d\n", (char *)(& skdev->name),
                       "skd_sg_io_get_and_check_args", 1416, sgp->dxfer_direction);
    }
  } else {
  }
  return (-22);
  switch_break: ;
  }
  ldv_38749:
  {
  tmp___12 = copy_from_user((void *)(& sksgio->cdb), (void const *)sgp->cmdp, (unsigned long )sgp->cmd_len);
  }
  if (tmp___12 != 0UL) {
    {
    descriptor___6.modname = "skd";
    descriptor___6.function = "skd_sg_io_get_and_check_args";
    descriptor___6.filename = "drivers/block/skd_main.c";
    descriptor___6.format = "%s:%s:%d copy_from_user cmdp failed %p\n";
    descriptor___6.lineno = 1422U;
    descriptor___6.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d copy_from_user cmdp failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1422, sgp->cmdp);
      }
    } else {
    }
    return (-14);
  } else {
  }
  if ((unsigned int )sgp->mx_sb_len != 0U) {
    {
    tmp___14 = current_thread_info();
    tmp___15 = __chk_range_not_ok((unsigned long )sgp->sbp, (unsigned long )sgp->mx_sb_len,
                                  tmp___14->addr_limit.seg);
    }
    if (tmp___15) {
      tmp___16 = 0;
    } else {
      tmp___16 = 1;
    }
    {
    tmp___17 = ldv__builtin_expect((long )tmp___16, 1L);
    }
    if (tmp___17 == 0L) {
      {
      descriptor___7.modname = "skd";
      descriptor___7.function = "skd_sg_io_get_and_check_args";
      descriptor___7.filename = "drivers/block/skd_main.c";
      descriptor___7.format = "%s:%s:%d access sbp failed %p\n";
      descriptor___7.lineno = 1429U;
      descriptor___7.flags = 0U;
      tmp___13 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
      }
      if (tmp___13 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___7, "%s:%s:%d access sbp failed %p\n", (char *)(& skdev->name),
                           "skd_sg_io_get_and_check_args", 1429, sgp->sbp);
        }
      } else {
      }
      return (-14);
    } else {
    }
  } else {
  }
  if ((unsigned int )sgp->iovec_count == 0U) {
    (sksgio->iov)->iov_base = sgp->dxferp;
    (sksgio->iov)->iov_len = (size_t )sgp->dxfer_len;
    sksgio->iovcnt = 1U;
    sksgio->dxfer_len = sgp->dxfer_len;
  } else {
    {
    nbytes = (uint )sgp->iovec_count * 16U;
    tmp___18 = kmalloc((size_t )nbytes, 208U);
    iov = (struct sg_iovec *)tmp___18;
    }
    if ((unsigned long )iov == (unsigned long )((struct sg_iovec *)0)) {
      {
      descriptor___8.modname = "skd";
      descriptor___8.function = "skd_sg_io_get_and_check_args";
      descriptor___8.filename = "drivers/block/skd_main.c";
      descriptor___8.format = "%s:%s:%d alloc iovec failed %d\n";
      descriptor___8.lineno = 1448U;
      descriptor___8.flags = 0U;
      tmp___19 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
      }
      if (tmp___19 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___8, "%s:%s:%d alloc iovec failed %d\n", (char *)(& skdev->name),
                           "skd_sg_io_get_and_check_args", 1448, (int )sgp->iovec_count);
        }
      } else {
      }
      return (-12);
    } else {
    }
    {
    sksgio->iov = iov;
    sksgio->iovcnt = (u32 )sgp->iovec_count;
    tmp___21 = copy_from_user((void *)iov, (void const *)sgp->dxferp, (unsigned long )nbytes);
    }
    if (tmp___21 != 0UL) {
      {
      descriptor___9.modname = "skd";
      descriptor___9.function = "skd_sg_io_get_and_check_args";
      descriptor___9.filename = "drivers/block/skd_main.c";
      descriptor___9.format = "%s:%s:%d copy_from_user iovec failed %p\n";
      descriptor___9.lineno = 1456U;
      descriptor___9.flags = 0U;
      tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
      }
      if (tmp___20 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___9, "%s:%s:%d copy_from_user iovec failed %p\n",
                           (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                           1456, sgp->dxferp);
        }
      } else {
      }
      return (-14);
    } else {
    }
    iov_data_len = 0UL;
    i = 0;
    goto ldv_38764;
    ldv_38763: ;
    if (iov_data_len + (iov + (unsigned long )i)->iov_len < iov_data_len) {
      return (-22);
    } else {
    }
    iov_data_len = iov_data_len + (iov + (unsigned long )i)->iov_len;
    i = i + 1;
    ldv_38764: ;
    if (i < (int )sgp->iovec_count) {
      goto ldv_38763;
    } else {
    }
    if ((size_t )sgp->dxfer_len < iov_data_len) {
      {
      tmp___22 = iov_shorten((struct iovec *)iov, (unsigned long )sgp->iovec_count,
                             (size_t )sgp->dxfer_len);
      sksgio->iovcnt = (u32 )tmp___22;
      sksgio->dxfer_len = sgp->dxfer_len;
      }
    } else {
      sksgio->dxfer_len = (u32 )iov_data_len;
    }
  }
  if (sgp->dxfer_direction != -1) {
    iov___0 = sksgio->iov;
    i = 0;
    goto ldv_38770;
    ldv_38769:
    {
    tmp___24 = current_thread_info();
    tmp___25 = __chk_range_not_ok((unsigned long )iov___0->iov_base, iov___0->iov_len,
                                  tmp___24->addr_limit.seg);
    }
    if (tmp___25) {
      tmp___26 = 0;
    } else {
      tmp___26 = 1;
    }
    {
    tmp___27 = ldv__builtin_expect((long )tmp___26, 1L);
    }
    if (tmp___27 == 0L) {
      {
      descriptor___10.modname = "skd";
      descriptor___10.function = "skd_sg_io_get_and_check_args";
      descriptor___10.filename = "drivers/block/skd_main.c";
      descriptor___10.format = "%s:%s:%d access data failed %p/%d\n";
      descriptor___10.lineno = 1486U;
      descriptor___10.flags = 0U;
      tmp___23 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
      }
      if (tmp___23 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___10, "%s:%s:%d access data failed %p/%d\n",
                           (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                           1486, iov___0->iov_base, (int )iov___0->iov_len);
        }
      } else {
      }
      return (-14);
    } else {
    }
    i = i + 1;
    iov___0 = iov___0 + 1;
    ldv_38770: ;
    if ((u32 )i < sksgio->iovcnt) {
      goto ldv_38769;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int skd_sg_io_obtain_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  int rc ;
  ulong flags ;
  struct _ddebug descriptor ;
  long tmp ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___1 ;
  long __int ;
  long tmp___2 ;
  bool __cond ;
  bool __cond___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  skspcl = (struct skd_special_context *)0;
  ldv_38796:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(& skdev->lock);
  skspcl = skdev->skspcl_free_list;
  }
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    skdev->skspcl_free_list = (struct skd_special_context *)skspcl->req.next;
    skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
    skspcl->req.state = 1;
    skspcl->orphaned = 0U;
    skspcl->req.n_sg = 0U;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    rc = 0;
    goto ldv_38779;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_sg_io_obtain_skspcl";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d blocking\n";
  descriptor.lineno = 1522U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d blocking\n", (char *)(& skdev->name),
                       "skd_sg_io_obtain_skspcl", 1522);
    }
  } else {
  }
  {
  tmp___0 = msecs_to_jiffies(sksgio->sg.timeout);
  __ret = (long )tmp___0;
  __might_sleep("drivers/block/skd_main.c", 1527, 0);
  __cond___0 = (unsigned long )skdev->skspcl_free_list != (unsigned long )((struct skd_special_context *)0);
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___1 = msecs_to_jiffies(sksgio->sg.timeout);
    __ret___0 = (long )tmp___1;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_38792:
    {
    tmp___2 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___2;
    __cond = (unsigned long )skdev->skspcl_free_list != (unsigned long )((struct skd_special_context *)0);
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_38791;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_38791;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_38792;
    ldv_38791:
    {
    finish_wait(& skdev->waitq, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  {
  rc = (int )__ret;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_sg_io_obtain_skspcl";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d unblocking, rc=%d\n";
  descriptor___0.lineno = 1530U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d unblocking, rc=%d\n", (char *)(& skdev->name),
                       "skd_sg_io_obtain_skspcl", 1530, rc);
    }
  } else {
  }
  if (rc <= 0) {
    if (rc == 0) {
      rc = -110;
    } else {
      rc = -4;
    }
    goto ldv_38779;
  } else {
  }
  goto ldv_38796;
  ldv_38779:
  sksgio->skspcl = skspcl;
  return (rc);
}
}
static int skd_skreq_prep_buffering(struct skd_device *skdev , struct skd_request_context *skreq ,
                                    u32 dxfer_len )
{
  u32 resid ;
  u32 nbytes ;
  u32 ix ;
  struct scatterlist *sg ;
  struct fit_sg_descriptor *sksg ;
  struct page *page ;
  u32 ix___0 ;
  struct fit_sg_descriptor *sksg___0 ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct fit_sg_descriptor *sgd ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  resid = dxfer_len;
  resid = resid + (- resid & 3U);
  skreq->sg_byte_count = resid;
  skreq->n_sg = 0U;
  goto ldv_38809;
  ldv_38808:
  nbytes = 4096U;
  ix = skreq->n_sg;
  sg = skreq->sg + (unsigned long )ix;
  sksg = skreq->sksg_list + (unsigned long )ix;
  if (nbytes > resid) {
    nbytes = resid;
  } else {
  }
  {
  page = alloc_pages(208U, 0U);
  }
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  {
  sg_set_page(sg, page, nbytes, 0U);
  sksg->control = 0U;
  sksg->byte_count = nbytes;
  sksg->host_side_addr = sg_phys(sg);
  sksg->dev_side_addr = 0ULL;
  sksg->next_desc_ptr = skreq->sksg_dma_address + (unsigned long long )((unsigned long )(ix + 1U) * 32UL);
  skreq->n_sg = skreq->n_sg + 1U;
  resid = resid - nbytes;
  }
  ldv_38809: ;
  if (resid != 0U) {
    goto ldv_38808;
  } else {
  }
  if (skreq->n_sg != 0U) {
    ix___0 = skreq->n_sg - 1U;
    sksg___0 = skreq->sksg_list + (unsigned long )ix___0;
    sksg___0->control = 1038U;
    sksg___0->next_desc_ptr = 0ULL;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  }
  if (tmp___1 != 0L) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_skreq_prep_buffering";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n";
    descriptor.lineno = 1609U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_skreq_prep_buffering", 1609,
                         (int )skreq->id, skreq->sksg_list, skreq->sksg_dma_address);
      }
    } else {
    }
    i = 0U;
    goto ldv_38819;
    ldv_38818:
    {
    sgd = skreq->sksg_list + (unsigned long )i;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_skreq_prep_buffering";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___0.lineno = 1617U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_skreq_prep_buffering", 1617,
                         i, sgd->byte_count, sgd->control, sgd->host_side_addr, sgd->next_desc_ptr);
      }
    } else {
    }
    i = i + 1U;
    ldv_38819: ;
    if (i < skreq->n_sg) {
      goto ldv_38818;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int skd_sg_io_prep_buffering(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  struct skd_request_context *skreq ;
  u32 dxfer_len ;
  int rc ;
  {
  {
  skspcl = sksgio->skspcl;
  skreq = & skspcl->req;
  dxfer_len = sksgio->dxfer_len;
  rc = skd_skreq_prep_buffering(skdev, skreq, dxfer_len);
  }
  return (rc);
}
}
static int skd_sg_io_copy_buffer(struct skd_device *skdev , struct skd_sg_io *sksgio ,
                                 int dxfer_dir )
{
  struct skd_special_context *skspcl ;
  u32 iov_ix ;
  struct sg_iovec curiov ;
  u32 sksg_ix ;
  u8 *bufp ;
  u32 buf_len ;
  u32 resid ;
  int rc ;
  u32 nbytes ;
  u32 tmp ;
  struct page *page ;
  u32 tmp___0 ;
  void *tmp___1 ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 __min1___1 ;
  u32 __min2___1 ;
  {
  skspcl = sksgio->skspcl;
  iov_ix = 0U;
  sksg_ix = 0U;
  bufp = (u8 *)0U;
  buf_len = 0U;
  resid = sksgio->dxfer_len;
  curiov.iov_len = 0UL;
  curiov.iov_base = (void *)0;
  if (dxfer_dir != sksgio->sg.dxfer_direction) {
    if (dxfer_dir != -2 || sksgio->sg.dxfer_direction != -4) {
      return (0);
    } else {
    }
  } else {
  }
  goto ldv_38843;
  ldv_38854:
  nbytes = 4096U;
  if (curiov.iov_len == 0UL) {
    tmp = iov_ix;
    iov_ix = iov_ix + 1U;
    curiov = *(sksgio->iov + (unsigned long )tmp);
    goto ldv_38843;
  } else {
  }
  if (buf_len == 0U) {
    {
    tmp___0 = sksg_ix;
    sksg_ix = sksg_ix + 1U;
    page = sg_page(skspcl->req.sg + (unsigned long )tmp___0);
    tmp___1 = lowmem_page_address((struct page const *)page);
    bufp = (u8 *)tmp___1;
    buf_len = 4096U;
    }
  } else {
  }
  __min1 = nbytes;
  __min2 = resid;
  nbytes = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = nbytes;
  __min2___0 = (u32 )curiov.iov_len;
  nbytes = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  __min1___1 = nbytes;
  __min2___1 = buf_len;
  nbytes = __min1___1 < __min2___1 ? __min1___1 : __min2___1;
  if (dxfer_dir == -2) {
    {
    rc = __copy_from_user((void *)bufp, (void const *)curiov.iov_base, nbytes);
    }
  } else {
    {
    rc = __copy_to_user(curiov.iov_base, (void const *)bufp, nbytes);
    }
  }
  if (rc != 0) {
    return (-14);
  } else {
  }
  resid = resid - nbytes;
  curiov.iov_len = curiov.iov_len - (size_t )nbytes;
  curiov.iov_base = curiov.iov_base + (unsigned long )nbytes;
  buf_len = buf_len - nbytes;
  ldv_38843: ;
  if (resid != 0U) {
    goto ldv_38854;
  } else {
  }
  return (0);
}
}
static int skd_sg_io_send_fitmsg(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  struct fit_msg_hdr *fmh ;
  struct skd_scsi_request *scsi_req ;
  __u64 tmp ;
  __u32 tmp___0 ;
  {
  {
  skspcl = sksgio->skspcl;
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  scsi_req = (struct skd_scsi_request *)fmh + 1U;
  memset((void *)skspcl->msg_buf, 0, 128UL);
  fmh->protocol_id = 3U;
  fmh->num_protocol_cmds_coalesced = 1U;
  }
  if (sksgio->sg.dxfer_direction != -1) {
    {
    tmp = __fswab64(skspcl->req.sksg_dma_address);
    scsi_req->hdr.sg_list_dma_address = tmp;
    }
  } else {
  }
  {
  scsi_req->hdr.tag = skspcl->req.id;
  tmp___0 = __fswab32(skspcl->req.sg_byte_count);
  scsi_req->hdr.sg_list_len_bytes = tmp___0;
  memcpy((void *)(& scsi_req->cdb), (void const *)(& sksgio->cdb), 16UL);
  skspcl->req.state = 2;
  skd_send_special_fitmsg(skdev, skspcl);
  }
  return (0);
}
}
static int skd_sg_io_await(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  unsigned long flags ;
  int rc ;
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  {
  tmp = msecs_to_jiffies(sksgio->sg.timeout);
  __ret = (long )tmp;
  __might_sleep("drivers/block/skd_main.c", 1734, 0);
  __cond___0 = (unsigned int )(sksgio->skspcl)->req.state != 2U;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___0 = msecs_to_jiffies(sksgio->sg.timeout);
    __ret___0 = (long )tmp___0;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_38879:
    {
    tmp___1 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___1;
    __cond = (unsigned int )(sksgio->skspcl)->req.state != 2U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_38878;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_38878;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_38879;
    ldv_38878:
    {
    finish_wait(& skdev->waitq, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  {
  rc = (int )__ret;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(& skdev->lock);
  }
  if ((unsigned int )(sksgio->skspcl)->req.state == 5U) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_sg_io_await";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d skspcl %p aborted\n";
    descriptor.lineno = 1740U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl %p aborted\n", (char *)(& skdev->name),
                         "skd_sg_io_await", 1740, sksgio->skspcl);
      }
    } else {
    }
    {
    (sksgio->skspcl)->req.completion.status = 2U;
    memset((void *)(& (sksgio->skspcl)->req.err_info), 0, 32UL);
    (sksgio->skspcl)->req.err_info.type = 112U;
    (sksgio->skspcl)->req.err_info.key = 11U;
    (sksgio->skspcl)->req.err_info.code = 68U;
    (sksgio->skspcl)->req.err_info.qual = 0U;
    rc = 0;
    }
  } else
  if ((unsigned int )(sksgio->skspcl)->req.state != 2U) {
    rc = 0;
  } else {
    (sksgio->skspcl)->orphaned = 1U;
    sksgio->skspcl = (struct skd_special_context *)0;
    if (rc == 0) {
      {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_sg_io_await";
      descriptor___0.filename = "drivers/block/skd_main.c";
      descriptor___0.format = "%s:%s:%d timed out %p (%u ms)\n";
      descriptor___0.lineno = 1767U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d timed out %p (%u ms)\n", (char *)(& skdev->name),
                           "skd_sg_io_await", 1767, sksgio, sksgio->sg.timeout);
        }
      } else {
      }
      rc = -110;
    } else {
      {
      descriptor___1.modname = "skd";
      descriptor___1.function = "skd_sg_io_await";
      descriptor___1.filename = "drivers/block/skd_main.c";
      descriptor___1.format = "%s:%s:%d cntlc %p\n";
      descriptor___1.lineno = 1771U;
      descriptor___1.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "%s:%s:%d cntlc %p\n", (char *)(& skdev->name),
                           "skd_sg_io_await", 1771, sksgio);
        }
      } else {
      }
      rc = -4;
    }
  }
  {
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (rc);
}
}
static int skd_sg_io_put_status(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct sg_io_hdr *sgp ;
  struct skd_special_context *skspcl ;
  int resid ;
  u32 nb ;
  __u32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct fit_comp_error_info *ei ;
  u32 nbytes ;
  u32 __min1 ;
  u32 __min2 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  {
  sgp = & sksgio->sg;
  skspcl = sksgio->skspcl;
  resid = 0;
  tmp = __fswab32(skspcl->req.completion.num_returned_bytes);
  nb = tmp;
  sgp->status = skspcl->req.completion.status;
  resid = (int )(sksgio->dxfer_len - nb);
  sgp->masked_status = (unsigned int )sgp->status & 254U;
  sgp->msg_status = 0U;
  sgp->host_status = 0U;
  sgp->driver_status = 0U;
  sgp->resid = resid;
  }
  if (*((unsigned long *)sgp + 8UL) != 0UL) {
    sgp->info = sgp->info | 1U;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_sg_io_put_status";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d status %x masked %x resid 0x%x\n";
  descriptor.lineno = 1803U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d status %x masked %x resid 0x%x\n",
                       (char *)(& skdev->name), "skd_sg_io_put_status", 1803, (int )sgp->status,
                       (int )sgp->masked_status, sgp->resid);
    }
  } else {
  }
  if ((unsigned int )sgp->masked_status == 2U) {
    if ((unsigned int )sgp->mx_sb_len != 0U) {
      {
      ei = & skspcl->req.err_info;
      nbytes = 32U;
      __min1 = nbytes;
      __min2 = (u32 )sgp->mx_sb_len;
      nbytes = __min1 < __min2 ? __min1 : __min2;
      sgp->sb_len_wr = (unsigned char )nbytes;
      tmp___2 = __copy_to_user(sgp->sbp, (void const *)ei, nbytes);
      }
      if (tmp___2 != 0) {
        {
        descriptor___0.modname = "skd";
        descriptor___0.function = "skd_sg_io_put_status";
        descriptor___0.filename = "drivers/block/skd_main.c";
        descriptor___0.format = "%s:%s:%d copy_to_user sense failed %p\n";
        descriptor___0.lineno = 1817U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        }
        if (tmp___1 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___0, "%s:%s:%d copy_to_user sense failed %p\n",
                             (char *)(& skdev->name), "skd_sg_io_put_status", 1817,
                             sgp->sbp);
          }
        } else {
        }
        return (-14);
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___4 = __copy_to_user(sksgio->argp, (void const *)sgp, 88U);
  }
  if (tmp___4 != 0) {
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_sg_io_put_status";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d copy_to_user sg failed %p\n";
    descriptor___1.lineno = 1825U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d copy_to_user sg failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_put_status", 1825, sksgio->argp);
      }
    } else {
    }
    return (-14);
  } else {
  }
  return (0);
}
}
static int skd_sg_io_release_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  ulong flags ;
  {
  skspcl = sksgio->skspcl;
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    {
    sksgio->skspcl = (struct skd_special_context *)0;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(& skdev->lock);
    skd_release_special(skdev, skspcl);
    ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
    }
  } else {
  }
  return (0);
}
}
static int skd_format_internal_skspcl(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  struct fit_sg_descriptor *sgd ;
  struct fit_msg_hdr *fmh ;
  uint64_t dma_address ;
  struct skd_scsi_request *scsi ;
  __u64 tmp ;
  {
  {
  skspcl = & skdev->internal_skspcl;
  sgd = skspcl->req.sksg_list;
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  fmh->protocol_id = 3U;
  fmh->num_protocol_cmds_coalesced = 1U;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  memset((void *)scsi, 0, 32UL);
  dma_address = skspcl->req.sksg_dma_address;
  tmp = __fswab64(dma_address);
  scsi->hdr.sg_list_dma_address = tmp;
  sgd->control = 1038U;
  sgd->byte_count = 0U;
  sgd->host_side_addr = skspcl->db_dma_address;
  sgd->dev_side_addr = 0ULL;
  sgd->next_desc_ptr = 0ULL;
  }
  return (1);
}
}
static void skd_send_internal_skspcl(struct skd_device *skdev , struct skd_special_context *skspcl ,
                                     u8 opcode )
{
  struct fit_sg_descriptor *sgd ;
  struct skd_scsi_request *scsi ;
  unsigned char *buf ;
  int i ;
  long tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  sgd = skspcl->req.sksg_list;
  buf = (unsigned char *)skspcl->data_buf;
  if ((unsigned int )skspcl->req.state != 0U) {
    return;
  } else {
  }
  {
  tmp = ldv__builtin_expect(((int )skspcl->req.id & 1024) != 0, 0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skspcl->req.id & SKD_ID_INCR) == 0",
           (char *)"drivers/block/skd_main.c", "skd_send_internal_skspcl", 1899);
    }
  } else {
  }
  {
  skspcl->req.state = 2;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  scsi->hdr.tag = skspcl->req.id;
  memset((void *)(& scsi->cdb), 0, 16UL);
  }
  {
  if ((int )opcode == 0) {
    goto case_0;
  } else {
  }
  if ((int )opcode == 37) {
    goto case_37;
  } else {
  }
  if ((int )opcode == 18) {
    goto case_18;
  } else {
  }
  if ((int )opcode == 53) {
    goto case_53;
  } else {
  }
  if ((int )opcode == 59) {
    goto case_59;
  } else {
  }
  if ((int )opcode == 60) {
    goto case_60;
  } else {
  }
  goto switch_default;
  case_0:
  scsi->cdb[0] = 0U;
  sgd->byte_count = 0U;
  scsi->hdr.sg_list_len_bytes = 0U;
  goto ldv_38928;
  case_37:
  {
  scsi->cdb[0] = 37U;
  sgd->byte_count = 8U;
  tmp___0 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___0;
  }
  goto ldv_38928;
  case_18:
  {
  scsi->cdb[0] = 18U;
  scsi->cdb[1] = 1U;
  scsi->cdb[2] = 128U;
  scsi->cdb[4] = 16U;
  sgd->byte_count = 16U;
  tmp___1 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___1;
  }
  goto ldv_38928;
  case_53:
  scsi->cdb[0] = 53U;
  sgd->byte_count = 0U;
  scsi->hdr.sg_list_len_bytes = 0U;
  goto ldv_38928;
  case_59:
  {
  scsi->cdb[0] = 59U;
  scsi->cdb[1] = 2U;
  scsi->cdb[7] = 2U;
  scsi->cdb[8] = 0U;
  sgd->byte_count = 512U;
  tmp___2 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___2;
  i = 0;
  }
  goto ldv_38934;
  ldv_38933:
  *(buf + (unsigned long )i) = (unsigned char )i;
  i = i + 1;
  ldv_38934: ;
  if ((uint32_t )i < sgd->byte_count) {
    goto ldv_38933;
  } else {
  }
  goto ldv_38928;
  case_60:
  {
  scsi->cdb[0] = 60U;
  scsi->cdb[1] = 2U;
  scsi->cdb[7] = 2U;
  scsi->cdb[8] = 0U;
  sgd->byte_count = 512U;
  tmp___3 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___3;
  memset(skspcl->data_buf, 0, (size_t )sgd->byte_count);
  }
  goto ldv_38928;
  switch_default: ;
  return;
  switch_break: ;
  }
  ldv_38928:
  {
  skd_send_special_fitmsg(skdev, skspcl);
  }
  return;
}
}
static void skd_refresh_device_data(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  {
  {
  skspcl = & skdev->internal_skspcl;
  skd_send_internal_skspcl(skdev, skspcl, 0);
  }
  return;
}
}
static int skd_chk_read_buf(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  unsigned char *buf ;
  int i ;
  {
  buf = (unsigned char *)skspcl->data_buf;
  i = 0;
  goto ldv_38949;
  ldv_38948: ;
  if ((int )*(buf + (unsigned long )i) != (i & 255)) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_38949: ;
  if ((unsigned int )i <= 511U) {
    goto ldv_38948;
  } else {
  }
  return (0);
}
}
static void skd_log_check_status(struct skd_device *skdev , u8 status , u8 key , u8 code ,
                                 u8 qual , u8 fruc )
{
  char const *tmp ;
  {
  if (((unsigned int )status == 2U && (unsigned int )key == 2U) && ((unsigned int )code == 4U && (unsigned int )qual == 6U)) {
    {
    tmp = skd_name(skdev);
    printk("\v(%s): *** LOST_WRITE_DATA ERROR *** key/asc/ascq/fruc %02x/%02x/%02x/%02x\n",
           tmp, (int )key, (int )code, (int )qual, (int )fruc);
    }
  } else {
  }
  return;
}
}
static void skd_complete_internal(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                  struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  u8 *buf ;
  u8 status ;
  int i ;
  struct skd_scsi_request *scsi ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  struct _ddebug descriptor___5 ;
  long tmp___9 ;
  struct _ddebug descriptor___6 ;
  long tmp___10 ;
  struct _ddebug descriptor___7 ;
  long tmp___11 ;
  struct _ddebug descriptor___8 ;
  long tmp___12 ;
  struct _ddebug descriptor___9 ;
  long tmp___13 ;
  int tmp___14 ;
  {
  {
  buf = (u8 *)skspcl->data_buf;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  tmp = ldv__builtin_expect((unsigned long )skspcl != (unsigned long )(& skdev->internal_skspcl),
                         0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skspcl == &skdev->internal_skspcl",
           (char *)"drivers/block/skd_main.c", "skd_complete_internal", 2011);
    }
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_internal";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d complete internal %x\n";
  descriptor.lineno = 2014U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d complete internal %x\n", (char *)(& skdev->name),
                       "skd_complete_internal", 2014, (int )scsi->cdb[0]);
    }
  } else {
  }
  {
  skspcl->req.completion = *skcomp;
  skspcl->req.state = 0;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  status = skspcl->req.completion.status;
  skd_log_check_status(skdev, (int )status, (int )skerr->key, (int )skerr->code, (int )skerr->qual,
                       (int )skerr->fruc);
  }
  {
  if ((int )scsi->cdb[0] == 0) {
    goto case_0;
  } else {
  }
  if ((int )scsi->cdb[0] == 59) {
    goto case_59;
  } else {
  }
  if ((int )scsi->cdb[0] == 60) {
    goto case_60;
  } else {
  }
  if ((int )scsi->cdb[0] == 37) {
    goto case_37;
  } else {
  }
  if ((int )scsi->cdb[0] == 18) {
    goto case_18;
  } else {
  }
  if ((int )scsi->cdb[0] == 53) {
    goto case_53;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((unsigned int )status == 0U) {
    {
    skd_send_internal_skspcl(skdev, skspcl, 59);
    }
  } else
  if ((unsigned int )status == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 3U) {
    {
    skd_send_internal_skspcl(skdev, skspcl, 59);
    }
  } else {
    if ((unsigned int )skdev->state == 10U) {
      {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_complete_internal";
      descriptor___0.filename = "drivers/block/skd_main.c";
      descriptor___0.format = "%s:%s:%d TUR failed, don\'t send anymore state 0x%x\n";
      descriptor___0.lineno = 2036U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d TUR failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2036,
                           (unsigned int )skdev->state);
        }
      } else {
      }
      return;
    } else {
    }
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_complete_internal";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d **** TUR failed, retry skerr\n";
    descriptor___1.lineno = 2040U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d **** TUR failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2040);
      }
    } else {
    }
    {
    skd_send_internal_skspcl(skdev, skspcl, 0);
    }
  }
  goto ldv_38974;
  case_59: ;
  if ((unsigned int )status == 0U) {
    {
    skd_send_internal_skspcl(skdev, skspcl, 60);
    }
  } else {
    if ((unsigned int )skdev->state == 10U) {
      {
      descriptor___2.modname = "skd";
      descriptor___2.function = "skd_complete_internal";
      descriptor___2.filename = "drivers/block/skd_main.c";
      descriptor___2.format = "%s:%s:%d write buffer failed, don\'t send anymore state 0x%x\n";
      descriptor___2.lineno = 2052U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d write buffer failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2052,
                           (unsigned int )skdev->state);
        }
      } else {
      }
      return;
    } else {
    }
    {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_complete_internal";
    descriptor___3.filename = "drivers/block/skd_main.c";
    descriptor___3.format = "%s:%s:%d **** write buffer failed, retry skerr\n";
    descriptor___3.lineno = 2056U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d **** write buffer failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2056);
      }
    } else {
    }
    {
    skd_send_internal_skspcl(skdev, skspcl, 0);
    }
  }
  goto ldv_38974;
  case_60: ;
  if ((unsigned int )status == 0U) {
    {
    tmp___7 = skd_chk_read_buf(skdev, skspcl);
    }
    if (tmp___7 == 0) {
      {
      skd_send_internal_skspcl(skdev, skspcl, 37);
      }
    } else {
      {
      tmp___5 = skd_name(skdev);
      printk("\v(%s):*** W/R Buffer mismatch %d ***\n", tmp___5, skdev->connect_retries);
      }
      if (skdev->connect_retries <= 15) {
        {
        skdev->connect_retries = skdev->connect_retries + 1;
        skd_soft_reset(skdev);
        }
      } else {
        {
        tmp___6 = skd_name(skdev);
        printk("\v(%s): W/R Buffer Connect Error\n", tmp___6);
        }
        return;
      }
    }
  } else {
    if ((unsigned int )skdev->state == 10U) {
      {
      descriptor___4.modname = "skd";
      descriptor___4.function = "skd_complete_internal";
      descriptor___4.filename = "drivers/block/skd_main.c";
      descriptor___4.format = "%s:%s:%d read buffer failed, don\'t send anymore state 0x%x\n";
      descriptor___4.lineno = 2087U;
      descriptor___4.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      }
      if (tmp___8 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___4, "%s:%s:%d read buffer failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2087,
                           (unsigned int )skdev->state);
        }
      } else {
      }
      return;
    } else {
    }
    {
    descriptor___5.modname = "skd";
    descriptor___5.function = "skd_complete_internal";
    descriptor___5.filename = "drivers/block/skd_main.c";
    descriptor___5.format = "%s:%s:%d **** read buffer failed, retry skerr\n";
    descriptor___5.lineno = 2092U;
    descriptor___5.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "%s:%s:%d **** read buffer failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2092);
      }
    } else {
    }
    {
    skd_send_internal_skspcl(skdev, skspcl, 0);
    }
  }
  goto ldv_38974;
  case_37:
  skdev->read_cap_is_valid = 0;
  if ((unsigned int )status == 0U) {
    {
    skdev->read_cap_last_lba = (u32 )(((((int )*buf << 24) | ((int )*(buf + 1UL) << 16)) | ((int )*(buf + 2UL) << 8)) | (int )*(buf + 3UL));
    skdev->read_cap_blocksize = (u32 )(((((int )*(buf + 4UL) << 24) | ((int )*(buf + 5UL) << 16)) | ((int )*(buf + 6UL) << 8)) | (int )*(buf + 7UL));
    descriptor___6.modname = "skd";
    descriptor___6.function = "skd_complete_internal";
    descriptor___6.filename = "drivers/block/skd_main.c";
    descriptor___6.format = "%s:%s:%d last lba %d, bs %d\n";
    descriptor___6.lineno = 2110U;
    descriptor___6.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___10 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d last lba %d, bs %d\n", (char *)(& skdev->name),
                         "skd_complete_internal", 2110, skdev->read_cap_last_lba,
                         skdev->read_cap_blocksize);
      }
    } else {
    }
    {
    set_capacity(skdev->disk, (sector_t )(skdev->read_cap_last_lba + 1U));
    skdev->read_cap_is_valid = 1;
    skd_send_internal_skspcl(skdev, skspcl, 18);
    }
  } else
  if ((unsigned int )status == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 3U) {
    {
    skdev->read_cap_last_lba = 4294967295U;
    set_capacity(skdev->disk, (sector_t )(skdev->read_cap_last_lba + 1U));
    descriptor___7.modname = "skd";
    descriptor___7.function = "skd_complete_internal";
    descriptor___7.filename = "drivers/block/skd_main.c";
    descriptor___7.format = "%s:%s:%d **** MEDIUM ERROR caused READCAP to fail, ignore failure and continue to inquiry\n";
    descriptor___7.lineno = 2123U;
    descriptor___7.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___7, "%s:%s:%d **** MEDIUM ERROR caused READCAP to fail, ignore failure and continue to inquiry\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2123);
      }
    } else {
    }
    {
    skd_send_internal_skspcl(skdev, skspcl, 18);
    }
  } else {
    {
    descriptor___8.modname = "skd";
    descriptor___8.function = "skd_complete_internal";
    descriptor___8.filename = "drivers/block/skd_main.c";
    descriptor___8.format = "%s:%s:%d **** READCAP failed, retry TUR\n";
    descriptor___8.lineno = 2127U;
    descriptor___8.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    }
    if (tmp___12 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___8, "%s:%s:%d **** READCAP failed, retry TUR\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2127);
      }
    } else {
    }
    {
    skd_send_internal_skspcl(skdev, skspcl, 0);
    }
  }
  goto ldv_38974;
  case_18:
  skdev->inquiry_is_valid = 0;
  if ((unsigned int )status == 0U) {
    skdev->inquiry_is_valid = 1;
    i = 0;
    goto ldv_38987;
    ldv_38986:
    skdev->inq_serial_num[i] = *(buf + ((unsigned long )i + 4UL));
    i = i + 1;
    ldv_38987: ;
    if (i <= 11) {
      goto ldv_38986;
    } else {
    }
    skdev->inq_serial_num[12] = 0U;
  } else {
  }
  {
  tmp___14 = skd_unquiesce_dev(skdev);
  }
  if (tmp___14 < 0) {
    {
    descriptor___9.modname = "skd";
    descriptor___9.function = "skd_complete_internal";
    descriptor___9.filename = "drivers/block/skd_main.c";
    descriptor___9.format = "%s:%s:%d **** failed, to ONLINE device\n";
    descriptor___9.lineno = 2145U;
    descriptor___9.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    }
    if (tmp___13 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___9, "%s:%s:%d **** failed, to ONLINE device\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2145);
      }
    } else {
    }
  } else {
  }
  skdev->connect_retries = 0;
  goto ldv_38974;
  case_53: ;
  if ((unsigned int )status == 0U) {
    skdev->sync_done = 1;
  } else {
    skdev->sync_done = -1;
  }
  {
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_38974;
  switch_default: ;
  switch_break: ;
  }
  ldv_38974: ;
  return;
}
}
static void skd_send_fitmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg )
{
  u64 qcmd ;
  struct fit_msg_hdr *fmh ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u8 *bp ;
  int i ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_send_fitmsg";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d dma address 0x%llx, busy=%d\n";
  descriptor.lineno = 2177U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d dma address 0x%llx, busy=%d\n", (char *)(& skdev->name),
                       "skd_send_fitmsg", 2177, skmsg->mb_dma_address, skdev->in_flight);
    }
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_send_fitmsg";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d msg_buf 0x%p, offset %x\n";
  descriptor___0.lineno = 2180U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d msg_buf 0x%p, offset %x\n", (char *)(& skdev->name),
                       "skd_send_fitmsg", 2180, skmsg->msg_buf, skmsg->offset);
    }
  } else {
  }
  {
  qcmd = skmsg->mb_dma_address;
  qcmd = qcmd;
  fmh = (struct fit_msg_hdr *)skmsg->msg_buf;
  skmsg->outstanding = (u16 )fmh->num_protocol_cmds_coalesced;
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  }
  if (tmp___2 != 0L) {
    bp = skmsg->msg_buf;
    i = 0;
    goto ldv_39005;
    ldv_39004:
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_send_fitmsg";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d msg[%2d] %02x %02x %02x %02x %02x %02x %02x %02x\n";
    descriptor___1.lineno = 2197U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d msg[%2d] %02x %02x %02x %02x %02x %02x %02x %02x\n",
                         (char *)(& skdev->name), "skd_send_fitmsg", 2197, i, (int )*(bp + (unsigned long )i),
                         (int )*(bp + ((unsigned long )i + 1UL)), (int )*(bp + ((unsigned long )i + 2UL)),
                         (int )*(bp + ((unsigned long )i + 3UL)), (int )*(bp + ((unsigned long )i + 4UL)),
                         (int )*(bp + ((unsigned long )i + 5UL)), (int )*(bp + ((unsigned long )i + 6UL)),
                         (int )*(bp + ((unsigned long )i + 7UL)));
      }
    } else {
    }
    if (i == 0) {
      i = 56;
    } else {
    }
    i = i + 8;
    ldv_39005: ;
    if ((u32 )i < skmsg->length) {
      goto ldv_39004;
    } else {
    }
  } else {
  }
  if (skmsg->length > 256U) {
    qcmd = qcmd | 48ULL;
  } else
  if (skmsg->length > 128U) {
    qcmd = qcmd | 32ULL;
  } else
  if (skmsg->length > 64U) {
    qcmd = qcmd | 16ULL;
  } else {
    qcmd = qcmd;
  }
  {
  skd_reg_write64(skdev, qcmd, 1024U);
  }
  return;
}
}
static void skd_send_special_fitmsg(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  u64 qcmd ;
  u8 *bp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct fit_sg_descriptor *sgd ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  }
  if (tmp___2 != 0L) {
    bp = skspcl->msg_buf;
    i = 0;
    goto ldv_39017;
    ldv_39016:
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_send_special_fitmsg";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d  spcl[%2d] %02x %02x %02x %02x  %02x %02x %02x %02x\n";
    descriptor.lineno = 2235U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d  spcl[%2d] %02x %02x %02x %02x  %02x %02x %02x %02x\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2235,
                         i, (int )*(bp + (unsigned long )i), (int )*(bp + ((unsigned long )i + 1UL)),
                         (int )*(bp + ((unsigned long )i + 2UL)), (int )*(bp + ((unsigned long )i + 3UL)),
                         (int )*(bp + ((unsigned long )i + 4UL)), (int )*(bp + ((unsigned long )i + 5UL)),
                         (int )*(bp + ((unsigned long )i + 6UL)), (int )*(bp + ((unsigned long )i + 7UL)));
      }
    } else {
    }
    if (i == 0) {
      i = 56;
    } else {
    }
    i = i + 8;
    ldv_39017: ;
    if ((unsigned int )i <= 127U) {
      goto ldv_39016;
    } else {
    }
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_send_special_fitmsg";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d skspcl=%p id=%04x sksg_list=%p sksg_dma=%llx\n";
    descriptor___0.lineno = 2243U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d skspcl=%p id=%04x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2243,
                         skspcl, (int )skspcl->req.id, skspcl->req.sksg_list, skspcl->req.sksg_dma_address);
      }
    } else {
    }
    i = 0;
    goto ldv_39023;
    ldv_39022:
    {
    sgd = skspcl->req.sksg_list + (unsigned long )i;
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_send_special_fitmsg";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___1.lineno = 2252U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2252,
                         i, sgd->byte_count, sgd->control, sgd->host_side_addr, sgd->next_desc_ptr);
      }
    } else {
    }
    i = i + 1;
    ldv_39023: ;
    if ((u32 )i < skspcl->req.n_sg) {
      goto ldv_39022;
    } else {
    }
  } else {
  }
  {
  qcmd = skspcl->mb_dma_address;
  qcmd = qcmd | 16ULL;
  skd_reg_write64(skdev, qcmd, 1024U);
  }
  return;
}
}
static void skd_complete_other(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr ) ;
static struct sns_info skd_chkstat_table[9U] =
  { {112U, 2U, 1U, 0U, 0U, 28U, 0},
        {112U, 2U, 0U, 11U, 0U, 30U, 1},
        {112U, 2U, 0U, 93U, 0U, 30U, 1},
        {112U, 2U, 1U, 11U, 1U, 31U, 1},
        {112U, 2U, 11U, 0U, 0U, 28U, 2},
        {112U, 2U, 6U, 11U, 0U, 30U, 2},
        {112U, 2U, 6U, 93U, 0U, 30U, 2},
        {112U, 2U, 6U, 128U, 48U, 31U, 2},
        {112U, 2U, 6U, 63U, 1U, 31U, 4}};
static enum skd_check_status_action skd_check_status(struct skd_device *skdev , u8 cmp_status ,
                                                     struct fit_comp_error_info volatile *skerr )
{
  int i ;
  int n ;
  char const *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct sns_info *sns ;
  char const *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  {
  tmp = skd_name(skdev);
  printk("\v(%s): key/asc/ascq/fruc %02x/%02x/%02x/%02x\n", tmp, (int )skerr->key,
         (int )skerr->code, (int )skerr->qual, (int )skerr->fruc);
  descriptor.modname = "skd";
  descriptor.function = "skd_check_status";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\n";
  descriptor.lineno = 2333U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\n",
                       (char *)(& skdev->name), "skd_check_status", 2333, (int )skerr->type,
                       (int )cmp_status, (int )skerr->key, (int )skerr->code, (int )skerr->qual,
                       (int )skerr->fruc);
    }
  } else {
  }
  n = 9;
  i = 0;
  goto ldv_39050;
  ldv_39049:
  sns = (struct sns_info *)(& skd_chkstat_table) + (unsigned long )i;
  if (((int )sns->mask & 16) != 0) {
    if ((int )skerr->type != (int )sns->type) {
      goto ldv_39048;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 8) != 0) {
    if ((int )cmp_status != (int )sns->stat) {
      goto ldv_39048;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 4) != 0) {
    if ((int )skerr->key != (int )sns->key) {
      goto ldv_39048;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 2) != 0) {
    if ((int )((unsigned char )skerr->code) != (int )sns->asc) {
      goto ldv_39048;
    } else {
    }
  } else {
  }
  if ((int )sns->mask & 1) {
    if ((int )((unsigned char )skerr->qual) != (int )sns->ascq) {
      goto ldv_39048;
    } else {
    }
  } else {
  }
  if ((unsigned int )sns->action == 1U) {
    {
    tmp___1 = skd_name(skdev);
    printk("\v(%s): SMART Alert: sense key/asc/ascq %02x/%02x/%02x\n", tmp___1, (int )skerr->key,
           (int )skerr->code, (int )skerr->qual);
    }
  } else {
  }
  return (sns->action);
  ldv_39048:
  i = i + 1;
  ldv_39050: ;
  if (i < n) {
    goto ldv_39049;
  } else {
  }
  if ((unsigned int )cmp_status != 0U) {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_check_status";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d status check: error\n";
    descriptor___0.lineno = 2374U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d status check: error\n", (char *)(& skdev->name),
                         "skd_check_status", 2374);
      }
    } else {
    }
    return (3);
  } else {
  }
  {
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_check_status";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d status check good default\n";
  descriptor___1.lineno = 2379U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d status check good default\n", (char *)(& skdev->name),
                       "skd_check_status", 2379);
    }
  } else {
  }
  return (0);
}
}
static void skd_resolve_req_exception(struct skd_device *skdev , struct skd_request_context *skreq )
{
  u8 cmp_status ;
  enum skd_check_status_action tmp ;
  char const *tmp___0 ;
  {
  {
  cmp_status = skreq->completion.status;
  tmp = skd_check_status(skdev, (int )cmp_status, (struct fit_comp_error_info volatile *)(& skreq->err_info));
  }
  {
  if ((unsigned int )tmp == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )tmp == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )tmp == 4U) {
    goto case_4;
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
  case_0: ;
  case_1:
  {
  skd_end_request(skdev, skreq, 0);
  }
  goto ldv_39061;
  case_4:
  {
  skd_log_skreq(skdev, skreq, "retry(busy)");
  blk_requeue_request(skdev->queue, skreq->req);
  tmp___0 = skd_name(skdev);
  printk("\016(%s) drive BUSY imminent\n", tmp___0);
  skdev->state = 16;
  skdev->timer_countdown = 1200U;
  skd_quiesce_dev(skdev);
  }
  goto ldv_39061;
  case_2:
  (skreq->req)->special = (skreq->req)->special + 1;
  if ((unsigned long )(skreq->req)->special <= 1UL) {
    {
    skd_log_skreq(skdev, skreq, "retry");
    blk_requeue_request(skdev->queue, skreq->req);
    }
    goto ldv_39061;
  } else {
  }
  case_3: ;
  switch_default:
  {
  skd_end_request(skdev, skreq, -5);
  }
  goto ldv_39061;
  switch_break: ;
  }
  ldv_39061: ;
  return;
}
}
static void skd_release_skreq(struct skd_device *skdev , struct skd_request_context *skreq )
{
  u32 msg_slot ;
  struct skd_fitmsg_context *skmsg ;
  u32 timo_slot ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  msg_slot = skreq->fitmsg_id & 255U;
  tmp = ldv__builtin_expect(msg_slot >= skdev->num_fitmsg_context, 0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"msg_slot < skdev->num_fitmsg_context",
           (char *)"drivers/block/skd_main.c", "skd_release_skreq", 2445);
    }
  } else {
  }
  skmsg = skdev->skmsg_table + (unsigned long )msg_slot;
  if (skmsg->id == skreq->fitmsg_id) {
    {
    tmp___0 = ldv__builtin_expect((unsigned int )skmsg->state != 1U, 0L);
    }
    if (tmp___0 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->state == SKD_MSG_STATE_BUSY",
             (char *)"drivers/block/skd_main.c", "skd_release_skreq", 2449);
      }
    } else {
    }
    {
    tmp___1 = ldv__builtin_expect((unsigned int )skmsg->outstanding == 0U, 0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->outstanding > 0",
             (char *)"drivers/block/skd_main.c", "skd_release_skreq", 2450);
      }
    } else {
    }
    skmsg->outstanding = (u16 )((int )skmsg->outstanding - 1);
    if ((unsigned int )skmsg->outstanding == 0U) {
      skmsg->state = 0;
      skmsg->id = skmsg->id + 1024U;
      skmsg->next = skdev->skmsg_free_list;
      skdev->skmsg_free_list = skmsg;
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(skdev->in_flight == 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->in_flight > 0",
           (char *)"drivers/block/skd_main.c", "skd_release_skreq", 2464);
    }
  } else {
  }
  {
  skdev->in_flight = skdev->in_flight - 1U;
  timo_slot = skreq->timeout_stamp & 3U;
  tmp___3 = ldv__builtin_expect(skdev->timeout_slot[timo_slot] == 0U, 0L);
  }
  if (tmp___3 != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->timeout_slot[timo_slot] > 0",
           (char *)"drivers/block/skd_main.c", "skd_release_skreq", 2468);
    }
  } else {
  }
  skdev->timeout_slot[timo_slot] = skdev->timeout_slot[timo_slot] - 1U;
  skreq->req = (struct request *)0;
  skreq->state = 0;
  skreq->id = (unsigned int )skreq->id + 1024U;
  skreq->next = skdev->skreq_free_list;
  skdev->skreq_free_list = skreq;
  return;
}
}
static void skd_do_inq_page_00(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                               uint8_t *buf )
{
  uint16_t insert_pt ;
  uint16_t max_bytes ;
  uint16_t drive_pages ;
  uint16_t drive_bytes ;
  uint16_t new_size ;
  struct _ddebug descriptor ;
  long tmp ;
  uint16_t u ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_do_inq_page_00";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skd_do_driver_inquiry: modify supported pages.\n";
  descriptor.lineno = 2498U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skd_do_driver_inquiry: modify supported pages.\n",
                       (char *)(& skdev->name), "skd_do_inq_page_00", 2498);
    }
  } else {
  }
  if (((unsigned int )((unsigned char )skcomp->status) == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 5U) && (unsigned int )((unsigned char )skerr->code) == 36U) {
    return;
  } else {
  }
  max_bytes = (uint16_t )((int )((short )((int )*(cdb + 3UL) << 8)) | (int )((short )*(cdb + 4UL)));
  drive_pages = (uint16_t )((int )((short )((int )*(buf + 2UL) << 8)) | (int )((short )*(buf + 3UL)));
  drive_bytes = (unsigned int )drive_pages + 4U;
  new_size = (unsigned int )drive_pages + 1U;
  insert_pt = 4U;
  goto ldv_39090;
  ldv_39089: ;
  if ((unsigned int )*(buf + (unsigned long )insert_pt) == 218U) {
    return;
  } else
  if ((unsigned int )*(buf + (unsigned long )insert_pt) > 218U) {
    goto ldv_39088;
  } else {
  }
  insert_pt = (uint16_t )((int )insert_pt + 1);
  ldv_39090: ;
  if ((int )insert_pt < (int )drive_bytes) {
    goto ldv_39089;
  } else {
  }
  ldv_39088: ;
  if ((int )insert_pt < (int )max_bytes) {
    u = (unsigned int )new_size + 3U;
    goto ldv_39093;
    ldv_39092:
    *(buf + (unsigned long )u) = *(buf + ((unsigned long )u + 0xffffffffffffffffUL));
    u = (uint16_t )((int )u - 1);
    ldv_39093: ;
    if ((int )u > (int )insert_pt) {
      goto ldv_39092;
    } else {
    }
    {
    *(buf + (unsigned long )insert_pt) = 218U;
    tmp___0 = __fswab32(skcomp->num_returned_bytes);
    skcomp->num_returned_bytes = tmp___0 + 1U;
    tmp___1 = __fswab32(skcomp->num_returned_bytes);
    skcomp->num_returned_bytes = tmp___1;
    }
  } else {
  }
  *(buf + 2UL) = (unsigned char )((int )new_size >> 8);
  *(buf + 3UL) = (unsigned char )new_size;
  return;
}
}
static void skd_get_link_info(struct pci_dev *pdev , u8 *speed , u8 *width )
{
  int pcie_reg ;
  u16 pci_bus_speed ;
  u8 pci_lanes ;
  u16 linksta ;
  {
  {
  pcie_reg = pci_find_capability(pdev, 16);
  }
  if (pcie_reg != 0) {
    {
    pci_read_config_word((struct pci_dev const *)pdev, pcie_reg + 18, & linksta);
    pci_bus_speed = (unsigned int )linksta & 15U;
    pci_lanes = (u8 )(((int )linksta & 1008) >> 4);
    }
  } else {
    *speed = 255U;
    *width = 255U;
    return;
  }
  {
  if ((int )pci_bus_speed == 1) {
    goto case_1;
  } else {
  }
  if ((int )pci_bus_speed == 2) {
    goto case_2;
  } else {
  }
  if ((int )pci_bus_speed == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  *speed = 0U;
  goto ldv_39105;
  case_2:
  *speed = 1U;
  goto ldv_39105;
  case_3:
  *speed = 2U;
  goto ldv_39105;
  switch_default:
  *speed = 255U;
  goto ldv_39105;
  switch_break: ;
  }
  ldv_39105: ;
  if ((unsigned int )pci_lanes <= 32U) {
    *width = pci_lanes;
  } else {
    *width = 255U;
  }
  return;
}
}
static void skd_do_inq_page_da(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                               uint8_t *buf )
{
  struct pci_dev *pdev ;
  unsigned int max_bytes ;
  struct driver_inquiry_data inq ;
  u16 val ;
  struct _ddebug descriptor ;
  long tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  unsigned long _min1 ;
  size_t _min2 ;
  size_t tmp___5 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  uint16_t __min1___0 ;
  uint16_t __min2___0 ;
  __u32 tmp___6 ;
  {
  {
  pdev = skdev->pdev;
  descriptor.modname = "skd";
  descriptor.function = "skd_do_inq_page_da";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skd_do_driver_inquiry: return driver page\n";
  descriptor.lineno = 2597U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skd_do_driver_inquiry: return driver page\n",
                       (char *)(& skdev->name), "skd_do_inq_page_da", 2597);
    }
  } else {
  }
  {
  memset((void *)(& inq), 0, 44UL);
  inq.page_code = 218U;
  skd_get_link_info(pdev, & inq.pcie_link_speed, & inq.pcie_link_lanes);
  tmp___0 = __fswab16((int )(pdev->bus)->number);
  inq.pcie_bus_number = tmp___0;
  inq.pcie_device_number = (unsigned int )((uint8_t )(pdev->devfn >> 3)) & 31U;
  inq.pcie_function_number = (unsigned int )((uint8_t )pdev->devfn) & 7U;
  pci_read_config_word((struct pci_dev const *)pdev, 0, & val);
  tmp___1 = __fswab16((int )val);
  inq.pcie_vendor_id = tmp___1;
  pci_read_config_word((struct pci_dev const *)pdev, 2, & val);
  tmp___2 = __fswab16((int )val);
  inq.pcie_device_id = tmp___2;
  pci_read_config_word((struct pci_dev const *)pdev, 44, & val);
  tmp___3 = __fswab16((int )val);
  inq.pcie_subsystem_vendor_id = tmp___3;
  pci_read_config_word((struct pci_dev const *)pdev, 46, & val);
  tmp___4 = __fswab16((int )val);
  inq.pcie_subsystem_device_id = tmp___4;
  inq.driver_version_length = 20U;
  memset((void *)(& inq.driver_version), 32, 20UL);
  _min1 = 20UL;
  tmp___5 = strlen("2.2.1.0260");
  _min2 = tmp___5;
  memcpy((void *)(& inq.driver_version), (void const *)"2.2.1.0260", _min1 < _min2 ? _min1 : _min2);
  inq.page_length = 10240U;
  skcomp->status = 0U;
  memset((void *)skerr, 0, 32UL);
  max_bytes = (unsigned int )(((int )*(cdb + 3UL) << 8) | (int )*(cdb + 4UL));
  __min1 = max_bytes;
  __min2 = 44U;
  memcpy((void *)buf, (void const *)(& inq), (size_t )(__min1 < __min2 ? __min1 : __min2));
  __min1___0 = (uint16_t )max_bytes;
  __min2___0 = 44U;
  tmp___6 = __fswab32((unsigned int )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0));
  skcomp->num_returned_bytes = tmp___6;
  }
  return;
}
}
static void skd_do_driver_inq(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                              struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                              uint8_t *buf )
{
  {
  if ((unsigned long )buf == (unsigned long )((uint8_t *)0U)) {
    return;
  } else
  if ((unsigned int )*cdb != 18U) {
    return;
  } else
  if (((int )*(cdb + 1UL) & 1) == 0) {
    return;
  } else
  if ((unsigned int )*(cdb + 2UL) == 0U) {
    {
    skd_do_inq_page_00(skdev, skcomp, skerr, cdb, buf);
    }
  } else
  if ((unsigned int )*(cdb + 2UL) == 218U) {
    {
    skd_do_inq_page_da(skdev, skcomp, skerr, cdb, buf);
    }
  } else {
  }
  return;
}
}
static unsigned char *skd_sg_1st_page_ptr(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  if ((unsigned long )sg == (unsigned long )((struct scatterlist *)0)) {
    return ((unsigned char *)0U);
  } else {
  }
  {
  tmp = sg_page(sg);
  }
  if ((unsigned long )tmp == (unsigned long )((struct page *)0)) {
    return ((unsigned char *)0U);
  } else {
  }
  {
  tmp___0 = sg_virt(sg);
  }
  return ((unsigned char *)tmp___0);
}
}
static void skd_process_scsi_inq(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  uint8_t *buf ;
  struct fit_msg_hdr *fmh ;
  struct skd_scsi_request *scsi_req ;
  unsigned char *tmp ;
  {
  {
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  scsi_req = (struct skd_scsi_request *)fmh + 1U;
  dma_sync_sg_for_cpu(skdev->class_dev, skspcl->req.sg, (int )skspcl->req.n_sg, (enum dma_data_direction )skspcl->req.sg_data_dir);
  tmp = skd_sg_1st_page_ptr(skspcl->req.sg);
  buf = tmp;
  }
  if ((unsigned long )buf != (unsigned long )((uint8_t *)0U)) {
    {
    skd_do_driver_inq(skdev, skcomp, skerr, (uint8_t *)(& scsi_req->cdb), buf);
    }
  } else {
  }
  return;
}
}
static int skd_isr_completion_posted(struct skd_device *skdev , int limit , int *enqueued )
{
  struct fit_completion_entry_v1 volatile *skcmp ;
  struct fit_comp_error_info volatile *skerr ;
  u16 req_id ;
  u32 req_slot ;
  struct skd_request_context *skreq ;
  u16 cmp_cntxt ;
  u8 cmp_status ;
  u8 cmp_cycle ;
  u32 cmp_bytes ;
  int rc ;
  int processed ;
  long tmp ;
  __u32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  u16 new_id ;
  char const *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  skcmp = (struct fit_completion_entry_v1 volatile *)0;
  cmp_cntxt = 0U;
  cmp_status = 0U;
  cmp_cycle = 0U;
  cmp_bytes = 0U;
  rc = 0;
  processed = 0;
  ldv_39190:
  {
  tmp = ldv__builtin_expect(skdev->skcomp_ix > 255U, 0L);
  }
  if (tmp != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->skcomp_ix < SKD_N_COMPLETION_ENTRY",
           (char *)"drivers/block/skd_main.c", "skd_isr_completion_posted", 2703);
    }
  } else {
  }
  {
  skcmp = (struct fit_completion_entry_v1 volatile *)skdev->skcomp_table + (unsigned long )skdev->skcomp_ix;
  cmp_cycle = skcmp->cycle;
  cmp_cntxt = skcmp->tag;
  cmp_status = skcmp->status;
  tmp___0 = __fswab32(skcmp->num_returned_bytes);
  cmp_bytes = tmp___0;
  skerr = (struct fit_comp_error_info volatile *)skdev->skerr_table + (unsigned long )skdev->skcomp_ix;
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_completion_posted";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n";
  descriptor.lineno = 2718U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n",
                       (char *)(& skdev->name), "skd_isr_completion_posted", 2718,
                       (int )skdev->skcomp_cycle, skdev->skcomp_ix, (int )cmp_cycle,
                       (int )cmp_cntxt, (int )cmp_status, skdev->in_flight, cmp_bytes,
                       skdev->proto_ver);
    }
  } else {
  }
  if ((int )cmp_cycle != (int )skdev->skcomp_cycle) {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_isr_completion_posted";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d end of completions\n";
    descriptor___0.lineno = 2722U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d end of completions\n", (char *)(& skdev->name),
                         "skd_isr_completion_posted", 2722);
      }
    } else {
    }
    goto ldv_39184;
  } else {
  }
  skdev->skcomp_ix = skdev->skcomp_ix + 1U;
  if (skdev->skcomp_ix > 255U) {
    skdev->skcomp_ix = 0U;
    skdev->skcomp_cycle = (u8 )((int )skdev->skcomp_cycle + 1);
  } else {
  }
  req_id = cmp_cntxt;
  req_slot = (unsigned int )req_id & 1023U;
  if (req_slot >= skdev->num_req_context) {
    {
    skd_complete_other(skdev, skcmp, skerr);
    }
    goto ldv_39185;
  } else {
  }
  skreq = skdev->skreq_table + (unsigned long )req_slot;
  if ((int )skreq->id != (int )req_id) {
    {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_isr_completion_posted";
    descriptor___1.filename = "drivers/block/skd_main.c";
    descriptor___1.format = "%s:%s:%d mismatch comp_id=0x%x req_id=0x%x\n";
    descriptor___1.lineno = 2760U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d mismatch comp_id=0x%x req_id=0x%x\n",
                         (char *)(& skdev->name), "skd_isr_completion_posted", 2760,
                         (int )req_id, (int )skreq->id);
      }
    } else {
    }
    {
    new_id = cmp_cntxt;
    tmp___4 = skd_name(skdev);
    printk("\v(%s): Completion mismatch comp_id=0x%04x skreq=0x%04x new=0x%04x\n",
           tmp___4, (int )req_id, (int )skreq->id, (int )new_id);
    }
    goto ldv_39185;
  } else {
  }
  {
  tmp___5 = ldv__builtin_expect((unsigned int )skreq->state != 2U, 0L);
  }
  if (tmp___5 != 0L) {
    {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->state == SKD_REQ_STATE_BUSY",
           (char *)"drivers/block/skd_main.c", "skd_isr_completion_posted", 2772);
    }
  } else {
  }
  if ((unsigned int )skreq->state == 5U) {
    {
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_isr_completion_posted";
    descriptor___2.filename = "drivers/block/skd_main.c";
    descriptor___2.format = "%s:%s:%d reclaim req %p id=%04x\n";
    descriptor___2.lineno = 2777U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d reclaim req %p id=%04x\n", (char *)(& skdev->name),
                         "skd_isr_completion_posted", 2777, skreq, (int )skreq->id);
      }
    } else {
    }
    {
    skd_release_skreq(skdev, skreq);
    }
    goto ldv_39185;
  } else {
  }
  {
  skreq->completion = *skcmp;
  tmp___7 = ldv__builtin_expect((unsigned int )cmp_status == 2U, 0L);
  }
  if (tmp___7 != 0L) {
    {
    skreq->err_info = *skerr;
    skd_log_check_status(skdev, (int )cmp_status, (int )skerr->key, (int )skerr->code,
                         (int )skerr->qual, (int )skerr->fruc);
    }
  } else {
  }
  if (skreq->n_sg != 0U) {
    {
    skd_postop_sg_list(skdev, skreq);
    }
  } else {
  }
  if ((unsigned long )skreq->req == (unsigned long )((struct request *)0)) {
    {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_isr_completion_posted";
    descriptor___3.filename = "drivers/block/skd_main.c";
    descriptor___3.format = "%s:%s:%d NULL backptr skdreq %p, req=0x%x req_id=0x%x\n";
    descriptor___3.lineno = 2799U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___8 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d NULL backptr skdreq %p, req=0x%x req_id=0x%x\n",
                         (char *)(& skdev->name), "skd_isr_completion_posted", 2799,
                         skreq, (int )skreq->id, (int )req_id);
      }
    } else {
    }
  } else {
    {
    tmp___9 = ldv__builtin_expect((unsigned int )cmp_status == 0U, 1L);
    }
    if (tmp___9 != 0L) {
      {
      skd_end_request(skdev, skreq, 0);
      }
    } else {
      {
      skd_resolve_req_exception(skdev, skreq);
      }
    }
  }
  {
  skd_release_skreq(skdev, skreq);
  }
  if (limit != 0) {
    processed = processed + 1;
    if (processed >= limit) {
      rc = 1;
      goto ldv_39184;
    } else {
    }
  } else {
  }
  ldv_39185: ;
  goto ldv_39190;
  ldv_39184: ;
  if ((unsigned int )skdev->state == 5U && skdev->in_flight == 0U) {
    {
    skdev->state = 6;
    __wake_up(& skdev->waitq, 1U, 1, (void *)0);
    }
  } else {
  }
  return (rc);
}
}
static void skd_complete_other(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr )
{
  u32 req_id ;
  u32 req_table ;
  u32 req_slot ;
  struct skd_special_context *skspcl ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  req_id = 0U;
  req_id = (u32 )skcomp->tag;
  req_table = req_id & 768U;
  req_slot = req_id & 255U;
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_other";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d table=0x%x id=0x%x slot=%d\n";
  descriptor.lineno = 2850U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d table=0x%x id=0x%x slot=%d\n", (char *)(& skdev->name),
                       "skd_complete_other", 2850, req_table, req_id, req_slot);
    }
  } else {
  }
  {
  if (req_table == 0U) {
    goto case_0;
  } else {
  }
  if (req_table == 512U) {
    goto case_512;
  } else {
  }
  if (req_table == 256U) {
    goto case_256;
  } else {
  }
  if (req_table == 768U) {
    goto case_768;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_39203;
  case_512: ;
  if (req_slot < (u32 )skdev->n_special) {
    skspcl = skdev->skspcl_table + (unsigned long )req_slot;
    if ((u32 )skspcl->req.id == req_id && (unsigned int )skspcl->req.state == 2U) {
      {
      skd_complete_special(skdev, skcomp, skerr, skspcl);
      }
      return;
    } else {
    }
  } else {
  }
  goto ldv_39203;
  case_256: ;
  if (req_slot == 0U) {
    skspcl = & skdev->internal_skspcl;
    if ((u32 )skspcl->req.id == req_id && (unsigned int )skspcl->req.state == 2U) {
      {
      skd_complete_internal(skdev, skcomp, skerr, skspcl);
      }
      return;
    } else {
    }
  } else {
  }
  goto ldv_39203;
  case_768: ;
  goto ldv_39203;
  switch_default: ;
  goto ldv_39203;
  switch_break: ;
  }
  ldv_39203: ;
  return;
}
}
static void skd_complete_special(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_special";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d  completing special request %p\n";
  descriptor.lineno = 2919U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d  completing special request %p\n",
                       (char *)(& skdev->name), "skd_complete_special", 2919, skspcl);
    }
  } else {
  }
  if ((unsigned int )skspcl->orphaned != 0U) {
    {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_complete_special";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d release orphaned %p\n";
    descriptor___0.lineno = 2925U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d release orphaned %p\n", (char *)(& skdev->name),
                         "skd_complete_special", 2925, skspcl);
      }
    } else {
    }
    {
    skd_release_special(skdev, skspcl);
    }
    return;
  } else {
  }
  {
  skd_process_scsi_inq(skdev, skcomp, skerr, skspcl);
  skspcl->req.state = 3;
  skspcl->req.completion = *skcomp;
  skspcl->req.err_info = *skerr;
  skd_log_check_status(skdev, (int )skspcl->req.completion.status, (int )skerr->key,
                       (int )skerr->code, (int )skerr->qual, (int )skerr->fruc);
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  return;
}
}
static void skd_release_special(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  int i ;
  int was_depleted ;
  struct page *page ;
  struct page *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_39225;
  ldv_39224:
  {
  tmp = sg_page(skspcl->req.sg + (unsigned long )i);
  page = tmp;
  __free_pages(page, 0U);
  i = i + 1;
  }
  ldv_39225: ;
  if ((u32 )i < skspcl->req.n_sg) {
    goto ldv_39224;
  } else {
  }
  was_depleted = (unsigned long )skdev->skspcl_free_list == (unsigned long )((struct skd_special_context *)0);
  skspcl->req.state = 0;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  skspcl->req.next = (struct skd_request_context *)skdev->skspcl_free_list;
  skdev->skspcl_free_list = skspcl;
  if (was_depleted != 0) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_release_special";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d skspcl was depleted\n";
    descriptor.lineno = 2963U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl was depleted\n", (char *)(& skdev->name),
                         "skd_release_special", 2963);
      }
    } else {
    }
    {
    __wake_up(& skdev->waitq, 1U, 1, (void *)0);
    }
  } else {
  }
  return;
}
}
static void skd_reset_skcomp(struct skd_device *skdev )
{
  u32 nbytes ;
  {
  {
  nbytes = 2048U;
  nbytes = nbytes + 8192U;
  memset((void *)skdev->skcomp_table, 0, (size_t )nbytes);
  skdev->skcomp_ix = 0U;
  skdev->skcomp_cycle = 1U;
  }
  return;
}
}
static void skd_completion_worker(struct work_struct *work )
{
  struct skd_device *skdev ;
  struct work_struct const *__mptr ;
  unsigned long flags ;
  int flush_enqueued ;
  {
  {
  __mptr = (struct work_struct const *)work;
  skdev = (struct skd_device *)__mptr + 0xfffffffffffffc68UL;
  flush_enqueued = 0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(& skdev->lock);
  skd_isr_completion_posted(skdev, 0, & flush_enqueued);
  skd_request_fn(skdev->queue);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return;
}
}
static void skd_isr_msg_from_dev(struct skd_device *skdev ) ;
static irqreturn_t skd_isr(int irq , void *ptr )
{
  struct skd_device *skdev ;
  u32 intstat ;
  u32 ack ;
  int rc ;
  int deferred ;
  int flush_enqueued ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  rc = 0;
  deferred = 0;
  flush_enqueued = 0;
  skdev = (struct skd_device *)ptr;
  ldv_spin_lock_109(& skdev->lock);
  }
  ldv_39257:
  {
  intstat = skd_reg_read32(skdev, 1312U);
  ack = 2023U;
  ack = ack & intstat;
  descriptor.modname = "skd";
  descriptor.function = "skd_isr";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d intstat=0x%x ack=0x%x\n";
  descriptor.lineno = 3029U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d intstat=0x%x ack=0x%x\n", (char *)(& skdev->name),
                       "skd_isr", 3029, intstat, ack);
    }
  } else {
  }
  if (ack == 0U) {
    if (rc == 0) {
      {
      tmp___0 = ldv__builtin_expect((unsigned int )skdev->state == 4U, 1L);
      }
      if (tmp___0 != 0L) {
        deferred = 1;
      } else {
      }
    } else {
    }
    goto ldv_39256;
  } else {
  }
  {
  rc = 1;
  skd_reg_write32(skdev, ack, 1312U);
  tmp___1 = ldv__builtin_expect((long )((unsigned int )skdev->state != 0U && (unsigned int )skdev->state != 10U),
                             1L);
  }
  if (tmp___1 != 0L) {
    if ((intstat & 2U) != 0U) {
      if (deferred == 0) {
        {
        deferred = skd_isr_completion_posted(skdev, skd_isr_comp_limit, & flush_enqueued);
        }
      } else {
      }
    } else {
    }
    if ((int )intstat & 1) {
      {
      skd_isr_fwstate(skdev);
      }
      if ((unsigned int )skdev->state - 11U <= 1U) {
        {
        ldv_spin_unlock_110(& skdev->lock);
        }
        return ((irqreturn_t )rc);
      } else {
      }
    } else {
    }
    if ((intstat & 4U) != 0U) {
      {
      skd_isr_msg_from_dev(skdev);
      }
    } else {
    }
  } else {
  }
  goto ldv_39257;
  ldv_39256:
  {
  tmp___2 = ldv__builtin_expect(flush_enqueued != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    skd_request_fn(skdev->queue);
    }
  } else {
  }
  if (deferred != 0) {
    {
    schedule_work(& skdev->completion_worker);
    }
  } else
  if (flush_enqueued == 0) {
    {
    skd_request_fn(skdev->queue);
    }
  } else {
  }
  {
  ldv_spin_unlock_110(& skdev->lock);
  }
  return ((irqreturn_t )rc);
}
}
static void skd_drive_fault(struct skd_device *skdev )
{
  char const *tmp ;
  {
  {
  skdev->state = 11;
  tmp = skd_name(skdev);
  printk("\v(%s): Drive FAULT\n", tmp);
  }
  return;
}
}
static void skd_drive_disappeared(struct skd_device *skdev )
{
  char const *tmp ;
  {
  {
  skdev->state = 12;
  tmp = skd_name(skdev);
  printk("\v(%s): Drive DISAPPEARED\n", tmp);
  }
  return;
}
}
static void skd_isr_fwstate(struct skd_device *skdev )
{
  u32 sense ;
  u32 state ;
  u32 mtd ;
  int prev_driver_state ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  {
  {
  prev_driver_state = (int )skdev->state;
  sense = skd_reg_read32(skdev, 1296U);
  state = sense & 255U;
  tmp = skd_drive_state_to_str((int )state);
  tmp___0 = skd_drive_state_to_str((int )skdev->drive_state);
  tmp___1 = skd_name(skdev);
  printk("\v(%s): s1120 state %s(%d)=>%s(%d)\n", tmp___1, tmp___0, skdev->drive_state,
         tmp, state);
  skdev->drive_state = state;
  }
  {
  if (skdev->drive_state == 1U) {
    goto case_1;
  } else {
  }
  if (skdev->drive_state == 3U) {
    goto case_3;
  } else {
  }
  if (skdev->drive_state == 4U) {
    goto case_4;
  } else {
  }
  if (skdev->drive_state == 10U) {
    goto case_10;
  } else {
  }
  if (skdev->drive_state == 11U) {
    goto case_11;
  } else {
  }
  if (skdev->drive_state == 0U) {
    goto case_0;
  } else {
  }
  if (skdev->drive_state == 8U) {
    goto case_8;
  } else {
  }
  if (skdev->drive_state == 12U) {
    goto case_12;
  } else {
  }
  if (skdev->drive_state == 6U) {
    goto case_6;
  } else {
  }
  if (skdev->drive_state == 7U) {
    goto case_7;
  } else {
  }
  if (skdev->drive_state == 254U) {
    goto case_254;
  } else {
  }
  if (skdev->drive_state == 5U) {
    goto case_5;
  } else {
  }
  if (skdev->drive_state == 255U) {
    goto case_255;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  if ((unsigned int )skdev->state == 13U) {
    {
    skd_disable_interrupts(skdev);
    }
    goto ldv_39272;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    {
    skd_recover_requests(skdev, 0);
    }
  } else {
  }
  if ((unsigned int )skdev->state == 17U) {
    {
    skdev->timer_countdown = 8U;
    skdev->state = 3;
    skd_soft_reset(skdev);
    }
    goto ldv_39272;
  } else {
  }
  {
  mtd = 16777216U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39272;
  case_3:
  skdev->cur_max_queue_depth = (u32 )skd_max_queue_depth;
  if (skdev->cur_max_queue_depth > skdev->dev_max_queue_depth) {
    skdev->cur_max_queue_depth = skdev->dev_max_queue_depth;
  } else {
  }
  skdev->queue_low_water_mark = (skdev->cur_max_queue_depth * 2U) / 3U + 1U;
  if (skdev->queue_low_water_mark == 0U) {
    skdev->queue_low_water_mark = 1U;
  } else {
  }
  {
  tmp___2 = skd_name(skdev);
  printk("\016(%s): Queue depth limit=%d dev=%d lowat=%d\n", tmp___2, skdev->cur_max_queue_depth,
         skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
  skd_refresh_device_data(skdev);
  }
  goto ldv_39272;
  case_4:
  {
  skdev->state = 2;
  skdev->timer_countdown = 1200U;
  skd_quiesce_dev(skdev);
  }
  goto ldv_39272;
  case_10:
  {
  skdev->state = 15;
  skdev->timer_countdown = 3U;
  blk_start_queue(skdev->queue);
  }
  goto ldv_39272;
  case_11:
  skdev->state = 14;
  skdev->timer_countdown = 1200U;
  goto ldv_39272;
  case_0:
  skdev->state = 1;
  goto ldv_39272;
  case_8: ;
  {
  if ((unsigned int )skdev->state == 3U) {
    goto case_3___0;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    goto case_8___0;
  } else {
  }
  goto switch_default;
  case_3___0: ;
  case_8___0: ;
  goto ldv_39281;
  switch_default:
  skdev->state = 8;
  goto ldv_39281;
  switch_break___0: ;
  }
  ldv_39281: ;
  goto ldv_39272;
  case_12:
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_fwstate";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d ISR FIT_SR_DRIVE_FW_BOOTING %s\n";
  descriptor.lineno = 3190U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d ISR FIT_SR_DRIVE_FW_BOOTING %s\n",
                       (char *)(& skdev->name), "skd_isr_fwstate", 3190, (char *)(& skdev->name));
    }
  } else {
  }
  skdev->state = 17;
  skdev->timer_countdown = 90U;
  goto ldv_39272;
  case_6: ;
  case_7: ;
  case_254: ;
  goto ldv_39272;
  case_5:
  {
  skd_drive_fault(skdev);
  skd_recover_requests(skdev, 0);
  blk_start_queue(skdev->queue);
  }
  goto ldv_39272;
  case_255:
  {
  tmp___4 = skd_name(skdev);
  printk("\016(%s): state=0x%x sense=0x%x\n", tmp___4, state, sense);
  skd_drive_disappeared(skdev);
  skd_recover_requests(skdev, 0);
  blk_start_queue(skdev->queue);
  }
  goto ldv_39272;
  switch_default___0: ;
  goto ldv_39272;
  switch_break: ;
  }
  ldv_39272:
  {
  tmp___5 = skd_skdev_state_to_str(skdev->state);
  tmp___6 = skd_skdev_state_to_str((enum skd_drvr_state )prev_driver_state);
  tmp___7 = skd_name(skdev);
  printk("\v(%s): Driver state %s(%d)=>%s(%d)\n", tmp___7, tmp___6, prev_driver_state,
         tmp___5, (unsigned int )skdev->state);
  }
  return;
}
}
static void skd_recover_requests(struct skd_device *skdev , int requeue )
{
  int i ;
  struct skd_request_context *skreq ;
  long tmp ;
  long tmp___0 ;
  struct skd_fitmsg_context *skmsg ;
  long tmp___1 ;
  struct skd_special_context *skspcl ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  i = 0;
  goto ldv_39300;
  ldv_39299:
  skreq = skdev->skreq_table + (unsigned long )i;
  if ((unsigned int )skreq->state == 2U) {
    {
    skd_log_skreq(skdev, skreq, "recover");
    tmp = ldv__builtin_expect(((int )skreq->id & 1024) == 0, 0L);
    }
    if (tmp != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skreq->id & SKD_ID_INCR) != 0",
             (char *)"drivers/block/skd_main.c", "skd_recover_requests", 3236);
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect((unsigned long )skreq->req == (unsigned long )((struct request *)0),
                               0L);
    }
    if (tmp___0 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->req != NULL",
             (char *)"drivers/block/skd_main.c", "skd_recover_requests", 3237);
      }
    } else {
    }
    if (skreq->n_sg != 0U) {
      {
      skd_postop_sg_list(skdev, skreq);
      }
    } else {
    }
    if (requeue != 0) {
      (skreq->req)->special = (skreq->req)->special + 1;
      if ((unsigned long )(skreq->req)->special <= 1UL) {
        {
        blk_requeue_request(skdev->queue, skreq->req);
        }
      } else {
        {
        skd_end_request(skdev, skreq, -5);
        }
      }
    } else {
      {
      skd_end_request(skdev, skreq, -5);
      }
    }
    skreq->req = (struct request *)0;
    skreq->state = 0;
    skreq->id = (unsigned int )skreq->id + 1024U;
  } else {
  }
  if (i > 0) {
    (skreq + 0xffffffffffffffffUL)->next = skreq;
  } else {
  }
  skreq->next = (struct skd_request_context *)0;
  i = i + 1;
  ldv_39300: ;
  if ((u32 )i < skdev->num_req_context) {
    goto ldv_39299;
  } else {
  }
  skdev->skreq_free_list = skdev->skreq_table;
  i = 0;
  goto ldv_39304;
  ldv_39303:
  skmsg = skdev->skmsg_table + (unsigned long )i;
  if ((unsigned int )skmsg->state == 1U) {
    {
    skd_log_skmsg(skdev, skmsg, "salvaged");
    tmp___1 = ldv__builtin_expect((skmsg->id & 1024U) == 0U, 0L);
    }
    if (tmp___1 != 0L) {
      {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skmsg->id & SKD_ID_INCR) != 0",
             (char *)"drivers/block/skd_main.c", "skd_recover_requests", 3266);
      }
    } else {
    }
    skmsg->state = 0;
    skmsg->id = skmsg->id + 1024U;
  } else {
  }
  if (i > 0) {
    (skmsg + 0xffffffffffffffffUL)->next = skmsg;
  } else {
  }
  skmsg->next = (struct skd_fitmsg_context *)0;
  i = i + 1;
  ldv_39304: ;
  if ((u32 )i < skdev->num_fitmsg_context) {
    goto ldv_39303;
  } else {
  }
  skdev->skmsg_free_list = skdev->skmsg_table;
  i = 0;
  goto ldv_39310;
  ldv_39309:
  skspcl = skdev->skspcl_table + (unsigned long )i;
  if ((unsigned int )skspcl->req.state == 2U) {
    if ((unsigned int )skspcl->orphaned != 0U) {
      {
      descriptor.modname = "skd";
      descriptor.function = "skd_recover_requests";
      descriptor.filename = "drivers/block/skd_main.c";
      descriptor.format = "%s:%s:%d orphaned %p\n";
      descriptor.lineno = 3290U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "%s:%s:%d orphaned %p\n", (char *)(& skdev->name),
                           "skd_recover_requests", 3290, skspcl);
        }
      } else {
      }
      {
      skd_release_special(skdev, skspcl);
      }
    } else {
      {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_recover_requests";
      descriptor___0.filename = "drivers/block/skd_main.c";
      descriptor___0.format = "%s:%s:%d not orphaned %p\n";
      descriptor___0.lineno = 3295U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d not orphaned %p\n", (char *)(& skdev->name),
                           "skd_recover_requests", 3295, skspcl);
        }
      } else {
      }
      skspcl->req.state = 5;
    }
  } else {
  }
  i = i + 1;
  ldv_39310: ;
  if (i < skdev->n_special) {
    goto ldv_39309;
  } else {
  }
  skdev->skspcl_free_list = skdev->skspcl_table;
  i = 0;
  goto ldv_39313;
  ldv_39312:
  skdev->timeout_slot[i] = 0U;
  i = i + 1;
  ldv_39313: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_39312;
  } else {
  }
  skdev->in_flight = 0U;
  return;
}
}
static void skd_isr_msg_from_dev(struct skd_device *skdev )
{
  u32 mfd ;
  u32 mtd ;
  u32 data ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  char const *tmp___1 ;
  {
  {
  mfd = skd_reg_read32(skdev, 1352U);
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_msg_from_dev";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d mfd=0x%x last_mtd=0x%x\n";
  descriptor.lineno = 3317U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mfd=0x%x last_mtd=0x%x\n", (char *)(& skdev->name),
                       "skd_isr_msg_from_dev", 3317, mfd, skdev->last_mtd);
    }
  } else {
  }
  if (mfd >> 24 != skdev->last_mtd >> 24) {
    return;
  } else {
  }
  {
  if (mfd >> 24 == 1U) {
    goto case_1;
  } else {
  }
  if (mfd >> 24 == 2U) {
    goto case_2;
  } else {
  }
  if (mfd >> 24 == 3U) {
    goto case_3;
  } else {
  }
  if (mfd >> 24 == 4U) {
    goto case_4;
  } else {
  }
  if (mfd >> 24 == 7U) {
    goto case_7;
  } else {
  }
  if (mfd >> 24 == 8U) {
    goto case_8;
  } else {
  }
  if (mfd >> 24 == 9U) {
    goto case_9;
  } else {
  }
  if (mfd >> 24 == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  skdev->proto_ver = (mfd >> 20) & 15U;
  if (skdev->proto_ver != 1U) {
    {
    printk("\v(%s): protocol mismatch\n", (char *)(& skdev->name));
    printk("\v(%s):   got=%d support=%d\n", (char *)(& skdev->name), skdev->proto_ver,
           1);
    printk("\v(%s):   please upgrade driver\n", (char *)(& skdev->name));
    skdev->state = 13;
    skd_soft_reset(skdev);
    }
    goto ldv_39324;
  } else {
  }
  {
  mtd = 33554432U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_2:
  {
  skdev->dev_max_queue_depth = mfd & 65535U;
  mtd = 50331904U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_3:
  {
  skd_reg_write64(skdev, skdev->cq_dma_address, 1408U);
  mtd = 67108864U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_4:
  {
  skd_reset_skcomp(skdev);
  mtd = (skdev->devno & 65535U) | 117440512U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_7:
  {
  tmp___0 = get_seconds();
  skdev->connect_time_stamp = (u32 )tmp___0;
  data = skdev->connect_time_stamp & 65535U;
  mtd = (data & 65535U) | 134217728U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_8:
  {
  skdev->drive_jiffies = mfd & 65535U;
  data = skdev->connect_time_stamp >> 16;
  mtd = (data & 65535U) | 150994944U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  }
  goto ldv_39324;
  case_9:
  {
  skdev->drive_jiffies = skdev->drive_jiffies | (mfd << 16);
  mtd = 83886080U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  tmp___1 = skd_name(skdev);
  printk("\v(%s): Time sync driver=0x%x device=0x%x\n", tmp___1, skdev->connect_time_stamp,
         skdev->drive_jiffies);
  }
  goto ldv_39324;
  case_5:
  skdev->last_mtd = 0U;
  goto ldv_39324;
  switch_default: ;
  goto ldv_39324;
  switch_break: ;
  }
  ldv_39324: ;
  return;
}
}
static void skd_disable_interrupts(struct skd_device *skdev )
{
  u32 sense ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  sense = skd_reg_read32(skdev, 1280U);
  sense = sense & 4294967167U;
  skd_reg_write32(skdev, sense, 1280U);
  descriptor.modname = "skd";
  descriptor.function = "skd_disable_interrupts";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d sense 0x%x\n";
  descriptor.lineno = 3413U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d sense 0x%x\n", (char *)(& skdev->name),
                       "skd_disable_interrupts", 3413, sense);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, 4294967295U, 1320U);
  }
  return;
}
}
static void skd_enable_interrupts(struct skd_device *skdev )
{
  u32 val ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  val = 7U;
  skd_reg_write32(skdev, ~ val, 1320U);
  descriptor.modname = "skd";
  descriptor.function = "skd_enable_interrupts";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d interrupt mask=0x%x\n";
  descriptor.lineno = 3433U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d interrupt mask=0x%x\n", (char *)(& skdev->name),
                       "skd_enable_interrupts", 3433, ~ val);
    }
  } else {
  }
  {
  val = skd_reg_read32(skdev, 1280U);
  val = val | 128U;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_enable_interrupts";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d control=0x%x\n";
  descriptor___0.lineno = 3438U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d control=0x%x\n", (char *)(& skdev->name),
                       "skd_enable_interrupts", 3438, val);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, val, 1280U);
  }
  return;
}
}
static void skd_soft_reset(struct skd_device *skdev )
{
  u32 val ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  val = skd_reg_read32(skdev, 1280U);
  val = val | 2U;
  descriptor.modname = "skd";
  descriptor.function = "skd_soft_reset";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d control=0x%x\n";
  descriptor.lineno = 3455U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d control=0x%x\n", (char *)(& skdev->name),
                       "skd_soft_reset", 3455, val);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, val, 1280U);
  }
  return;
}
}
static void skd_start_device(struct skd_device *skdev )
{
  unsigned long flags ;
  u32 sense ;
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  char const *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  char const *tmp___8 ;
  struct _ddebug descriptor___3 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  struct _ddebug descriptor___6 ;
  long tmp___12 ;
  struct _ddebug descriptor___7 ;
  long tmp___13 ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(& skdev->lock);
  skd_reg_write32(skdev, 2023U, 1312U);
  sense = skd_reg_read32(skdev, 1296U);
  descriptor.modname = "skd";
  descriptor.function = "skd_start_device";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d initial status=0x%x\n";
  descriptor.lineno = 3473U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d initial status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3473, sense);
    }
  } else {
  }
  {
  state = sense & 255U;
  skdev->drive_state = state;
  skdev->last_mtd = 0U;
  skdev->state = 3;
  skdev->timer_countdown = 8U;
  skd_enable_interrupts(skdev);
  }
  {
  if (skdev->drive_state == 0U) {
    goto case_0;
  } else {
  }
  if (skdev->drive_state == 12U) {
    goto case_12;
  } else {
  }
  if (skdev->drive_state == 10U) {
    goto case_10;
  } else {
  }
  if (skdev->drive_state == 11U) {
    goto case_11;
  } else {
  }
  if (skdev->drive_state == 1U) {
    goto case_1;
  } else {
  }
  if (skdev->drive_state == 3U) {
    goto case_3;
  } else {
  }
  if (skdev->drive_state == 4U) {
    goto case_4;
  } else {
  }
  if (skdev->drive_state == 8U) {
    goto case_8;
  } else {
  }
  if (skdev->drive_state == 5U) {
    goto case_5;
  } else {
  }
  if (skdev->drive_state == 255U) {
    goto case_255;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = skd_name(skdev);
  printk("\v(%s): Drive offline...\n", tmp___0);
  }
  goto ldv_39361;
  case_12:
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_start_device";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d FIT_SR_DRIVE_FW_BOOTING %s\n";
  descriptor___0.lineno = 3491U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d FIT_SR_DRIVE_FW_BOOTING %s\n",
                       (char *)(& skdev->name), "skd_start_device", 3491, (char *)(& skdev->name));
    }
  } else {
  }
  skdev->state = 17;
  skdev->timer_countdown = 90U;
  goto ldv_39361;
  case_10:
  {
  tmp___2 = skd_name(skdev);
  printk("\016(%s): Start: BUSY_SANITIZE\n", tmp___2);
  skdev->state = 15;
  skdev->timer_countdown = 60U;
  }
  goto ldv_39361;
  case_11:
  {
  tmp___3 = skd_name(skdev);
  printk("\016(%s): Start: BUSY_ERASE\n", tmp___3);
  skdev->state = 14;
  skdev->timer_countdown = 60U;
  }
  goto ldv_39361;
  case_1: ;
  case_3:
  {
  skd_soft_reset(skdev);
  }
  goto ldv_39361;
  case_4:
  {
  tmp___4 = skd_name(skdev);
  printk("\v(%s): Drive Busy...\n", tmp___4);
  skdev->state = 2;
  skdev->timer_countdown = 60U;
  }
  goto ldv_39361;
  case_8:
  {
  tmp___5 = skd_name(skdev);
  printk("\v(%s) drive soft reset in prog\n", tmp___5);
  }
  goto ldv_39361;
  case_5:
  {
  skd_drive_fault(skdev);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_start_device";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d starting %s queue\n";
  descriptor___1.lineno = 3533U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d starting %s queue\n", (char *)(& skdev->name),
                       "skd_start_device", 3533, (char *)(& skdev->name));
    }
  } else {
  }
  {
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_39361;
  case_255:
  {
  skd_drive_disappeared(skdev);
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_start_device";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d starting %s queue to error-out reqs\n";
  descriptor___2.lineno = 3545U;
  descriptor___2.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d starting %s queue to error-out reqs\n",
                       (char *)(& skdev->name), "skd_start_device", 3545, (char *)(& skdev->name));
    }
  } else {
  }
  {
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_39361;
  switch_default:
  {
  tmp___8 = skd_name(skdev);
  printk("\v(%s) Start: unknown state %x\n", tmp___8, skdev->drive_state);
  }
  goto ldv_39361;
  switch_break: ;
  }
  ldv_39361:
  {
  state = skd_reg_read32(skdev, 1280U);
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_start_device";
  descriptor___3.filename = "drivers/block/skd_main.c";
  descriptor___3.format = "%s:%s:%d FIT Control Status=0x%x\n";
  descriptor___3.lineno = 3559U;
  descriptor___3.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___9 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d FIT Control Status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3559, state);
    }
  } else {
  }
  {
  state = skd_reg_read32(skdev, 1312U);
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_start_device";
  descriptor___4.filename = "drivers/block/skd_main.c";
  descriptor___4.format = "%s:%s:%d Intr Status=0x%x\n";
  descriptor___4.lineno = 3563U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___10 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d Intr Status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3563, state);
    }
  } else {
  }
  {
  state = skd_reg_read32(skdev, 1320U);
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_start_device";
  descriptor___5.filename = "drivers/block/skd_main.c";
  descriptor___5.format = "%s:%s:%d Intr Mask=0x%x\n";
  descriptor___5.lineno = 3567U;
  descriptor___5.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___11 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d Intr Mask=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3567, state);
    }
  } else {
  }
  {
  state = skd_reg_read32(skdev, 1352U);
  descriptor___6.modname = "skd";
  descriptor___6.function = "skd_start_device";
  descriptor___6.filename = "drivers/block/skd_main.c";
  descriptor___6.format = "%s:%s:%d Msg from Dev=0x%x\n";
  descriptor___6.lineno = 3571U;
  descriptor___6.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  }
  if (tmp___12 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___6, "%s:%s:%d Msg from Dev=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3571, state);
    }
  } else {
  }
  {
  state = skd_reg_read32(skdev, 1416U);
  descriptor___7.modname = "skd";
  descriptor___7.function = "skd_start_device";
  descriptor___7.filename = "drivers/block/skd_main.c";
  descriptor___7.format = "%s:%s:%d HW version=0x%x\n";
  descriptor___7.lineno = 3575U;
  descriptor___7.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  }
  if (tmp___13 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___7, "%s:%s:%d HW version=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3575, state);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return;
}
}
static void skd_stop_device(struct skd_device *skdev )
{
  unsigned long flags ;
  struct skd_special_context *skspcl ;
  u32 dev_state ;
  int i ;
  char const *tmp ;
  char const *tmp___0 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  u32 tmp___5 ;
  struct task_struct *tmp___6 ;
  long volatile __ret___1 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  struct task_struct *tmp___10 ;
  unsigned long tmp___11 ;
  char const *tmp___12 ;
  {
  {
  skspcl = & skdev->internal_skspcl;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(& skdev->lock);
  }
  if ((unsigned int )skdev->state != 4U) {
    {
    tmp = skd_name(skdev);
    printk("\v(%s): skd_stop_device not online no sync\n", tmp);
    }
    goto stop_out;
  } else {
  }
  if ((unsigned int )skspcl->req.state != 0U) {
    {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): skd_stop_device no special\n", tmp___0);
    }
    goto stop_out;
  } else {
  }
  {
  skdev->state = 18;
  skdev->sync_done = 0;
  skd_send_internal_skspcl(skdev, skspcl, 53);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  __ret = 2500L;
  __might_sleep("drivers/block/skd_main.c", 3609, 0);
  __cond___0 = skdev->sync_done != 0;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = 2500L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_39398:
    {
    tmp___1 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___1;
    __cond = skdev->sync_done != 0;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_39397;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_39397;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_39398;
    ldv_39397:
    {
    finish_wait(& skdev->waitq, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(& skdev->lock);
  }
  {
  if (skdev->sync_done == 0) {
    goto case_0;
  } else {
  }
  if (skdev->sync_done == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___2 = skd_name(skdev);
  printk("\v(%s): skd_stop_device no sync\n", tmp___2);
  }
  goto ldv_39402;
  case_1:
  {
  tmp___3 = skd_name(skdev);
  printk("\v(%s): skd_stop_device sync done\n", tmp___3);
  }
  goto ldv_39402;
  switch_default:
  {
  tmp___4 = skd_name(skdev);
  printk("\v(%s): skd_stop_device sync error\n", tmp___4);
  }
  switch_break: ;
  }
  ldv_39402: ;
  stop_out:
  {
  skdev->state = 10;
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  skd_kill_timer(skdev);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(& skdev->lock);
  skd_disable_interrupts(skdev);
  skd_reg_write32(skdev, 2023U, 1312U);
  skd_reg_write32(skdev, 2U, 1280U);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  i = 0;
  }
  goto ldv_39417;
  ldv_39416:
  {
  tmp___5 = skd_reg_read32(skdev, 1296U);
  dev_state = tmp___5 & 255U;
  }
  if (dev_state == 1U) {
    goto ldv_39405;
  } else {
  }
  {
  tmp___6 = get_current();
  }
  tmp___6->task_state_change = (unsigned long )((void *)0);
  __ret___1 = 1L;
  {
  if (8UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  tmp___7 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___1), "+m" (tmp___7->state): : "memory",
                       "cc");
  }
  goto ldv_39410;
  case_2:
  {
  tmp___8 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___1), "+m" (tmp___8->state): : "memory",
                       "cc");
  }
  goto ldv_39410;
  case_4:
  {
  tmp___9 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___1), "+m" (tmp___9->state): : "memory",
                       "cc");
  }
  goto ldv_39410;
  case_8:
  {
  tmp___10 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___1), "+m" (tmp___10->state): : "memory",
                       "cc");
  }
  goto ldv_39410;
  switch_default___0:
  {
  __xchg_wrong_size();
  }
  switch_break___0: ;
  }
  ldv_39410:
  {
  tmp___11 = msecs_to_jiffies(100U);
  schedule_timeout((long )tmp___11);
  i = i + 1;
  }
  ldv_39417: ;
  if (i <= 9) {
    goto ldv_39416;
  } else {
  }
  ldv_39405: ;
  if (dev_state != 1U) {
    {
    tmp___12 = skd_name(skdev);
    printk("\v(%s): skd_stop_device state error 0x%02x\n", tmp___12, dev_state);
    }
  } else {
  }
  return;
}
}
static void skd_restart_device(struct skd_device *skdev )
{
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  skd_reg_write32(skdev, 2023U, 1312U);
  state = skd_reg_read32(skdev, 1296U);
  descriptor.modname = "skd";
  descriptor.function = "skd_restart_device";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d drive status=0x%x\n";
  descriptor.lineno = 3669U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive status=0x%x\n", (char *)(& skdev->name),
                       "skd_restart_device", 3669, state);
    }
  } else {
  }
  {
  state = state & 255U;
  skdev->drive_state = state;
  skdev->last_mtd = 0U;
  skdev->state = 8;
  skdev->timer_countdown = 240U;
  skd_soft_reset(skdev);
  }
  return;
}
}
static int skd_quiesce_dev(struct skd_device *skdev )
{
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  rc = 0;
  {
  if ((unsigned int )skdev->state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->state == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )skdev->state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )skdev->state == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )skdev->state == 18U) {
    goto case_18;
  } else {
  }
  if ((unsigned int )skdev->state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )skdev->state == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )skdev->state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )skdev->state == 9U) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_2: ;
  case_16:
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_quiesce_dev";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d stopping %s queue\n";
  descriptor.lineno = 3690U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stopping %s queue\n", (char *)(& skdev->name),
                       "skd_quiesce_dev", 3690, (char *)(& skdev->name));
    }
  } else {
  }
  {
  blk_stop_queue(skdev->queue);
  }
  goto ldv_39432;
  case_4: ;
  case_10: ;
  case_18: ;
  case_5: ;
  case_6: ;
  case_3: ;
  case_8: ;
  case_9: ;
  switch_default:
  {
  rc = -22;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_quiesce_dev";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d state [%d] not implemented\n";
  descriptor___0.lineno = 3704U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d state [%d] not implemented\n",
                       (char *)(& skdev->name), "skd_quiesce_dev", 3704, (unsigned int )skdev->state);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_39432: ;
  return (rc);
}
}
static int skd_unquiesce_dev(struct skd_device *skdev )
{
  int prev_driver_state ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  char const *tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  {
  {
  prev_driver_state = (int )skdev->state;
  skd_log_skdev(skdev, "unquiesce");
  }
  if ((unsigned int )skdev->state == 4U) {
    {
    descriptor.modname = "skd";
    descriptor.function = "skd_unquiesce_dev";
    descriptor.filename = "drivers/block/skd_main.c";
    descriptor.format = "%s:%s:%d **** device already ONLINE\n";
    descriptor.lineno = 3717U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d **** device already ONLINE\n", (char *)(& skdev->name),
                         "skd_unquiesce_dev", 3717);
      }
    } else {
    }
    return (0);
  } else {
  }
  if (skdev->drive_state != 3U) {
    {
    skdev->state = 2;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_unquiesce_dev";
    descriptor___0.filename = "drivers/block/skd_main.c";
    descriptor___0.format = "%s:%s:%d drive BUSY state\n";
    descriptor___0.lineno = 3731U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d drive BUSY state\n", (char *)(& skdev->name),
                         "skd_unquiesce_dev", 3731);
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  if ((unsigned int )skdev->state == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )skdev->state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->state == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )skdev->state == 14U) {
    goto case_14;
  } else {
  }
  if ((unsigned int )skdev->state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )skdev->state == 11U) {
    goto case_11;
  } else {
  }
  if ((unsigned int )skdev->state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )skdev->state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )skdev->state == 12U) {
    goto case_12;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_2: ;
  case_16: ;
  case_14: ;
  case_3: ;
  case_8: ;
  case_11: ;
  case_1: ;
  case_0:
  {
  skdev->state = 4;
  tmp___1 = skd_skdev_state_to_str(skdev->state);
  tmp___2 = skd_skdev_state_to_str((enum skd_drvr_state )prev_driver_state);
  tmp___3 = skd_name(skdev);
  printk("\v(%s): Driver state %s(%d)=>%s(%d)\n", tmp___3, tmp___2, prev_driver_state,
         tmp___1, (unsigned int )skdev->state);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_unquiesce_dev";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d **** device ONLINE...starting block queue\n";
  descriptor___1.lineno = 3756U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d **** device ONLINE...starting block queue\n",
                       (char *)(& skdev->name), "skd_unquiesce_dev", 3756);
    }
  } else {
  }
  {
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_unquiesce_dev";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d starting %s queue\n";
  descriptor___2.lineno = 3758U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d starting %s queue\n", (char *)(& skdev->name),
                       "skd_unquiesce_dev", 3758, (char *)(& skdev->name));
    }
  } else {
  }
  {
  tmp___6 = skd_name(skdev);
  printk("\016(%s): STEC s1120 ONLINE\n", tmp___6);
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = 1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  }
  goto ldv_39461;
  case_12: ;
  switch_default:
  {
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_unquiesce_dev";
  descriptor___3.filename = "drivers/block/skd_main.c";
  descriptor___3.format = "%s:%s:%d **** driver state %d, not implemented \n";
  descriptor___3.lineno = 3769U;
  descriptor___3.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d **** driver state %d, not implemented \n",
                       (char *)(& skdev->name), "skd_unquiesce_dev", 3769, (unsigned int )skdev->state);
    }
  } else {
  }
  return (-16);
  switch_break: ;
  }
  ldv_39461: ;
  return (0);
}
}
static irqreturn_t skd_reserved_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  u32 tmp___1 ;
  char const *tmp___2 ;
  {
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_reserved_isr";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3789U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_reserved_isr", 3789, tmp);
    }
  } else {
  }
  {
  tmp___1 = skd_reg_read32(skdev, 1312U);
  tmp___2 = skd_name(skdev);
  printk("\v(%s): MSIX reserved irq %d = 0x%x\n", tmp___2, irq, tmp___1);
  skd_reg_write32(skdev, 24U, 1312U);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (1);
}
}
static irqreturn_t skd_statec_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_statec_isr";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3805U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_statec_isr", 3805, tmp);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, 1U, 1312U);
  skd_isr_fwstate(skdev);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (1);
}
}
static irqreturn_t skd_comp_q(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  int flush_enqueued ;
  int deferred ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  {
  skdev = (struct skd_device *)skd_host_data;
  flush_enqueued = 0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_comp_q";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3822U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_comp_q", 3822, tmp);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, 2U, 1312U);
  deferred = skd_isr_completion_posted(skdev, skd_isr_comp_limit, & flush_enqueued);
  }
  if (flush_enqueued != 0) {
    {
    skd_request_fn(skdev->queue);
    }
  } else {
  }
  if (deferred != 0) {
    {
    schedule_work(& skdev->completion_worker);
    }
  } else
  if (flush_enqueued == 0) {
    {
    skd_request_fn(skdev->queue);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (1);
}
}
static irqreturn_t skd_msg_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_msg_isr";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3847U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_msg_isr", 3847, tmp);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, 4U, 1312U);
  skd_isr_msg_from_dev(skdev);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (1);
}
}
static irqreturn_t skd_qfull_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_qfull_isr";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3862U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_qfull_isr", 3862, tmp);
    }
  } else {
  }
  {
  skd_reg_write32(skdev, 480U, 1312U);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  return (1);
}
}
static struct skd_init_msix_entry msix_entries[13U] =
  { {"(DMA 0)", & skd_reserved_isr},
        {"(DMA 1)", & skd_reserved_isr},
        {"(DMA 2)", & skd_reserved_isr},
        {"(DMA 3)", & skd_reserved_isr},
        {"(State Change)", & skd_statec_isr},
        {"(COMPL_Q)", & skd_comp_q},
        {"(MSG)", & skd_msg_isr},
        {"(Reserved)", & skd_reserved_isr},
        {"(Reserved)", & skd_reserved_isr},
        {"(Queue Full 0)", & skd_qfull_isr},
        {"(Queue Full 1)", & skd_qfull_isr},
        {"(Queue Full 2)", & skd_qfull_isr},
        {"(Queue Full 3)", & skd_qfull_isr}};
static void skd_release_msix(struct skd_device *skdev )
{
  struct skd_msix_entry *qentry ;
  int i ;
  {
  if ((unsigned long )skdev->msix_entries != (unsigned long )((struct skd_msix_entry *)0)) {
    i = 0;
    goto ldv_39522;
    ldv_39521:
    qentry = skdev->msix_entries + (unsigned long )i;
    skdev = qentry->rsp;
    if (qentry->have_irq != 0) {
      {
      ldv_devm_free_irq_130(& (skdev->pdev)->dev, qentry->vector, (void *)qentry->rsp);
      }
    } else {
    }
    i = i + 1;
    ldv_39522: ;
    if ((u32 )i < skdev->msix_count) {
      goto ldv_39521;
    } else {
    }
    {
    kfree((void const *)skdev->msix_entries);
    }
  } else {
  }
  if (skdev->msix_count != 0U) {
    {
    pci_disable_msix(skdev->pdev);
    }
  } else {
  }
  skdev->msix_count = 0U;
  skdev->msix_entries = (struct skd_msix_entry *)0;
  return;
}
}
static int skd_acquire_msix(struct skd_device *skdev )
{
  int i ;
  int rc ;
  struct pci_dev *pdev ;
  struct msix_entry *entries ;
  struct skd_msix_entry *qentry ;
  void *tmp ;
  char const *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor ;
  char const *tmp___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___6 ;
  long tmp___7 ;
  {
  {
  pdev = skdev->pdev;
  tmp = kzalloc(104UL, 208U);
  entries = (struct msix_entry *)tmp;
  }
  if ((unsigned long )entries == (unsigned long )((struct msix_entry *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_39533;
  ldv_39532:
  (entries + (unsigned long )i)->entry = (u16 )i;
  i = i + 1;
  ldv_39533: ;
  if (i <= 12) {
    goto ldv_39532;
  } else {
  }
  {
  rc = pci_enable_msix_exact(pdev, entries, 13);
  }
  if (rc != 0) {
    {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI-X %d\n", tmp___0, rc);
    }
    goto msix_out;
  } else {
  }
  {
  skdev->msix_count = 13U;
  tmp___1 = kzalloc((unsigned long )skdev->msix_count * 56UL, 208U);
  skdev->msix_entries = (struct skd_msix_entry *)tmp___1;
  }
  if ((unsigned long )skdev->msix_entries == (unsigned long )((struct skd_msix_entry *)0)) {
    {
    rc = -12;
    tmp___2 = skd_name(skdev);
    printk("\v(%s): msix table allocation error\n", tmp___2);
    }
    goto msix_out;
  } else {
  }
  i = 0;
  goto ldv_39539;
  ldv_39538:
  {
  qentry = skdev->msix_entries + (unsigned long )i;
  qentry->vector = (entries + (unsigned long )i)->vector;
  qentry->entry = (u32 )(entries + (unsigned long )i)->entry;
  qentry->rsp = (struct skd_device *)0;
  qentry->have_irq = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_acquire_msix";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d %s: <%s> msix (%d) vec %d, entry %x\n";
  descriptor.lineno = 3973U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = pci_name((struct pci_dev const *)pdev);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: <%s> msix (%d) vec %d, entry %x\n",
                       (char *)(& skdev->name), "skd_acquire_msix", 3973, tmp___3,
                       (char *)(& skdev->name), i, qentry->vector, qentry->entry);
    }
  } else {
  }
  i = i + 1;
  ldv_39539: ;
  if ((u32 )i < skdev->msix_count) {
    goto ldv_39538;
  } else {
  }
  i = 0;
  goto ldv_39542;
  ldv_39541:
  {
  qentry = skdev->msix_entries + (unsigned long )i;
  snprintf((char *)(& qentry->isr_name), 30UL, "%s%d-msix %s", (char *)"skd", skdev->devno,
           msix_entries[i].name);
  rc = devm_request_irq(& (skdev->pdev)->dev, qentry->vector, msix_entries[i].handler,
                        0UL, (char const *)(& qentry->isr_name), (void *)skdev);
  }
  if (rc != 0) {
    {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): Unable to register(%d) MSI-X handler %d: %s\n", tmp___5, rc, i,
           (char *)(& qentry->isr_name));
    }
    goto msix_out;
  } else {
    qentry->have_irq = 1;
    qentry->rsp = skdev;
  }
  i = i + 1;
  ldv_39542: ;
  if ((u32 )i < skdev->msix_count) {
    goto ldv_39541;
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_acquire_msix";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d %s: <%s> msix %d irq(s) enabled\n";
  descriptor___0.lineno = 3997U;
  descriptor___0.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = pci_name((struct pci_dev const *)pdev);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d %s: <%s> msix %d irq(s) enabled\n",
                       (char *)(& skdev->name), "skd_acquire_msix", 3997, tmp___6,
                       (char *)(& skdev->name), skdev->msix_count);
    }
  } else {
  }
  return (0);
  msix_out: ;
  if ((unsigned long )entries != (unsigned long )((struct msix_entry *)0)) {
    {
    kfree((void const *)entries);
    }
  } else {
  }
  {
  skd_release_msix(skdev);
  }
  return (rc);
}
}
static int skd_acquire_irq(struct skd_device *skdev )
{
  int rc ;
  struct pci_dev *pdev ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  {
  pdev = skdev->pdev;
  skdev->msix_count = 0U;
  RETRY_IRQ_TYPE: ;
  {
  if ((unsigned int )skdev->irq_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->irq_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )skdev->irq_type == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_2:
  {
  rc = skd_acquire_msix(skdev);
  }
  if (rc == 0) {
    {
    tmp = skd_name(skdev);
    printk("\016(%s): MSI-X %d irqs enabled\n", tmp, skdev->msix_count);
    }
  } else {
    {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI-X, re-trying with MSI %d\n", tmp___0, rc);
    skdev->irq_type = 1;
    }
    goto RETRY_IRQ_TYPE;
  }
  goto ldv_39552;
  case_1:
  {
  snprintf((char *)(& skdev->isr_name), 30UL, "%s%d-msi", (char *)"skd", skdev->devno);
  rc = pci_enable_msi_range(pdev, 1, 1);
  }
  if (rc > 0) {
    {
    rc = devm_request_irq(& pdev->dev, pdev->irq, & skd_isr, 0UL, (char const *)(& skdev->isr_name),
                          (void *)skdev);
    }
    if (rc != 0) {
      {
      pci_disable_msi(pdev);
      tmp___1 = skd_name(skdev);
      printk("\v(%s): failed to allocate the MSI interrupt %d\n", tmp___1, rc);
      }
      goto RETRY_IRQ_LEGACY;
    } else {
    }
    {
    tmp___2 = skd_name(skdev);
    printk("\016(%s): MSI irq %d enabled\n", tmp___2, pdev->irq);
    }
  } else {
    RETRY_IRQ_LEGACY:
    {
    tmp___3 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI, re-trying with LEGACY %d\n", tmp___3, rc);
    skdev->irq_type = 0;
    }
    goto RETRY_IRQ_TYPE;
  }
  goto ldv_39552;
  case_0:
  {
  snprintf((char *)(& skdev->isr_name), 30UL, "%s%d-legacy", (char *)"skd", skdev->devno);
  rc = devm_request_irq(& pdev->dev, pdev->irq, & skd_isr, 128UL, (char const *)(& skdev->isr_name),
                        (void *)skdev);
  }
  if (rc == 0) {
    {
    tmp___4 = skd_name(skdev);
    printk("\016(%s): LEGACY irq %d enabled\n", tmp___4, pdev->irq);
    }
  } else {
    {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): request LEGACY irq error %d\n", tmp___5, rc);
    }
  }
  goto ldv_39552;
  switch_default:
  {
  tmp___6 = skd_name(skdev);
  printk("\016(%s): irq_type %d invalid, re-set to %d\n", tmp___6, (unsigned int )skdev->irq_type,
         1);
  skdev->irq_type = 0;
  }
  goto RETRY_IRQ_TYPE;
  switch_break: ;
  }
  ldv_39552: ;
  return (rc);
}
}
static void skd_release_irq(struct skd_device *skdev )
{
  char const *tmp ;
  {
  {
  if ((unsigned int )skdev->irq_type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )skdev->irq_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )skdev->irq_type == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_2:
  {
  skd_release_msix(skdev);
  }
  goto ldv_39561;
  case_1:
  {
  ldv_devm_free_irq_131(& (skdev->pdev)->dev, (skdev->pdev)->irq, (void *)skdev);
  pci_disable_msi(skdev->pdev);
  }
  goto ldv_39561;
  case_0:
  {
  ldv_devm_free_irq_132(& (skdev->pdev)->dev, (skdev->pdev)->irq, (void *)skdev);
  }
  goto ldv_39561;
  switch_default:
  {
  tmp = skd_name(skdev);
  printk("\v(%s): wrong irq type %d!", tmp, (unsigned int )skdev->irq_type);
  }
  goto ldv_39561;
  switch_break: ;
  }
  ldv_39561: ;
  return;
}
}
static int skd_cons_skcomp(struct skd_device *skdev )
{
  int rc ;
  struct fit_completion_entry_v1 *skcomp ;
  u32 nbytes ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  {
  rc = 0;
  nbytes = 2048U;
  nbytes = nbytes + 8192U;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skcomp";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d comp pci_alloc, total bytes %d entries %d\n";
  descriptor.lineno = 4113U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d comp pci_alloc, total bytes %d entries %d\n",
                       (char *)(& skdev->name), "skd_cons_skcomp", 4113, nbytes, 256U);
    }
  } else {
  }
  {
  tmp___0 = pci_zalloc_consistent(skdev->pdev, (size_t )nbytes, & skdev->cq_dma_address);
  skcomp = (struct fit_completion_entry_v1 *)tmp___0;
  }
  if ((unsigned long )skcomp == (unsigned long )((struct fit_completion_entry_v1 *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skdev->skcomp_table = skcomp;
  skdev->skerr_table = (struct fit_comp_error_info *)skcomp + 2048U;
  err_out: ;
  return (rc);
}
}
static int skd_cons_skmsg(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct skd_fitmsg_context *skmsg ;
  void *tmp___1 ;
  {
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skmsg";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skmsg_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4141U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skmsg_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skmsg", 4141, 48UL, skdev->num_fitmsg_context,
                       (unsigned long )skdev->num_fitmsg_context * 48UL);
    }
  } else {
  }
  {
  tmp___0 = kzalloc((unsigned long )skdev->num_fitmsg_context * 48UL, 208U);
  skdev->skmsg_table = (struct skd_fitmsg_context *)tmp___0;
  }
  if ((unsigned long )skdev->skmsg_table == (unsigned long )((struct skd_fitmsg_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = 0U;
  goto ldv_39584;
  ldv_39583:
  {
  skmsg = skdev->skmsg_table + (unsigned long )i;
  skmsg->id = i + 768U;
  skmsg->state = 0;
  tmp___1 = pci_alloc_consistent(skdev->pdev, 576UL, & skmsg->mb_dma_address);
  skmsg->msg_buf = (u8 *)tmp___1;
  }
  if ((unsigned long )skmsg->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  skmsg->offset = (unsigned int )((long )skmsg->msg_buf) & 63U;
  skmsg->msg_buf = skmsg->msg_buf + 63ULL;
  skmsg->msg_buf = (u8 *)((unsigned long long )skmsg->msg_buf & 0xffffffffffffffc0ULL);
  skmsg->mb_dma_address = skmsg->mb_dma_address + 63ULL;
  skmsg->mb_dma_address = skmsg->mb_dma_address & 0xffffffffffffffc0ULL;
  memset((void *)skmsg->msg_buf, 0, 512UL);
  skmsg->next = skmsg + 1UL;
  i = i + 1U;
  }
  ldv_39584: ;
  if (i < skdev->num_fitmsg_context) {
    goto ldv_39583;
  } else {
  }
  (skdev->skmsg_table + (unsigned long )(i - 1U))->next = (struct skd_fitmsg_context *)0;
  skdev->skmsg_free_list = skdev->skmsg_table;
  err_out: ;
  return (rc);
}
}
static struct fit_sg_descriptor *skd_cons_sg_list(struct skd_device *skdev , u32 n_sg ,
                                                  dma_addr_t *ret_dma_addr )
{
  struct fit_sg_descriptor *sg_list ;
  u32 nbytes ;
  void *tmp ;
  uint64_t dma_address ;
  u32 i ;
  uint64_t ndp_off ;
  {
  {
  nbytes = n_sg * 32U;
  tmp = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, ret_dma_addr);
  sg_list = (struct fit_sg_descriptor *)tmp;
  }
  if ((unsigned long )sg_list != (unsigned long )((struct fit_sg_descriptor *)0)) {
    {
    dma_address = *ret_dma_addr;
    memset((void *)sg_list, 0, (size_t )nbytes);
    i = 0U;
    }
    goto ldv_39597;
    ldv_39596:
    ndp_off = (uint64_t )((unsigned long )(i + 1U) * 32UL);
    (sg_list + (unsigned long )i)->next_desc_ptr = dma_address + ndp_off;
    i = i + 1U;
    ldv_39597: ;
    if (i < n_sg - 1U) {
      goto ldv_39596;
    } else {
    }
    (sg_list + (unsigned long )i)->next_desc_ptr = 0ULL;
  } else {
  }
  return (sg_list);
}
}
static int skd_cons_skreq(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct skd_request_context *skreq ;
  void *tmp___2 ;
  {
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skreq";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skreq_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4225U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skreq", 4225, 120UL, skdev->num_req_context,
                       (unsigned long )skdev->num_req_context * 120UL);
    }
  } else {
  }
  {
  tmp___0 = kzalloc((unsigned long )skdev->num_req_context * 120UL, 208U);
  skdev->skreq_table = (struct skd_request_context *)tmp___0;
  }
  if ((unsigned long )skdev->skreq_table == (unsigned long )((struct skd_request_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_cons_skreq";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d alloc sg_table sg_per_req %u scatlist %lu total %lu\n";
  descriptor___0.lineno = 4237U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d alloc sg_table sg_per_req %u scatlist %lu total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skreq", 4237, skdev->sgs_per_request,
                       40UL, (unsigned long )skdev->sgs_per_request * 40UL);
    }
  } else {
  }
  i = 0U;
  goto ldv_39610;
  ldv_39609:
  {
  skreq = skdev->skreq_table + (unsigned long )i;
  skreq->id = (u16 )i;
  skreq->state = 0;
  tmp___2 = kzalloc((unsigned long )skdev->sgs_per_request * 40UL, 208U);
  skreq->sg = (struct scatterlist *)tmp___2;
  }
  if ((unsigned long )skreq->sg == (unsigned long )((struct scatterlist *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  sg_init_table(skreq->sg, (unsigned int )skdev->sgs_per_request);
  skreq->sksg_list = skd_cons_sg_list(skdev, (u32 )skdev->sgs_per_request, & skreq->sksg_dma_address);
  }
  if ((unsigned long )skreq->sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skreq->next = skreq + 1UL;
  i = i + 1U;
  ldv_39610: ;
  if (i < skdev->num_req_context) {
    goto ldv_39609;
  } else {
  }
  (skdev->skreq_table + (unsigned long )(i - 1U))->next = (struct skd_request_context *)0;
  skdev->skreq_free_list = skdev->skreq_table;
  err_out: ;
  return (rc);
}
}
static int skd_cons_skspcl(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  u32 nbytes ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct skd_special_context *skspcl ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skspcl";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skspcl_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4284U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skspcl", 4284, 160UL, skdev->n_special,
                       (unsigned long )skdev->n_special * 160UL);
    }
  } else {
  }
  {
  tmp___0 = kzalloc((unsigned long )skdev->n_special * 160UL, 208U);
  skdev->skspcl_table = (struct skd_special_context *)tmp___0;
  }
  if ((unsigned long )skdev->skspcl_table == (unsigned long )((struct skd_special_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = 0U;
  goto ldv_39623;
  ldv_39622:
  {
  skspcl = skdev->skspcl_table + (unsigned long )i;
  skspcl->req.id = (unsigned int )((u16 )i) + 512U;
  skspcl->req.state = 0;
  skspcl->req.next = & (skspcl + 1UL)->req;
  nbytes = 128U;
  tmp___1 = pci_zalloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->mb_dma_address);
  skspcl->msg_buf = (u8 *)tmp___1;
  }
  if ((unsigned long )skspcl->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  tmp___2 = kzalloc(10240UL, 208U);
  skspcl->req.sg = (struct scatterlist *)tmp___2;
  }
  if ((unsigned long )skspcl->req.sg == (unsigned long )((struct scatterlist *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  skspcl->req.sksg_list = skd_cons_sg_list(skdev, 256U, & skspcl->req.sksg_dma_address);
  }
  if ((unsigned long )skspcl->req.sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = i + 1U;
  ldv_39623: ;
  if (i < (u32 )skdev->n_special) {
    goto ldv_39622;
  } else {
  }
  (skdev->skspcl_table + (unsigned long )(i - 1U))->req.next = (struct skd_request_context *)0;
  skdev->skspcl_free_list = skdev->skspcl_table;
  return (rc);
  err_out: ;
  return (rc);
}
}
static int skd_cons_sksb(struct skd_device *skdev )
{
  int rc ;
  struct skd_special_context *skspcl ;
  u32 nbytes ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  rc = 0;
  skspcl = & skdev->internal_skspcl;
  skspcl->req.id = 256U;
  skspcl->req.state = 0;
  nbytes = 512U;
  skspcl->data_buf = pci_zalloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->db_dma_address);
  }
  if ((unsigned long )skspcl->data_buf == (unsigned long )((void *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  nbytes = 128U;
  tmp = pci_zalloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->mb_dma_address);
  skspcl->msg_buf = (u8 *)tmp;
  }
  if ((unsigned long )skspcl->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  skspcl->req.sksg_list = skd_cons_sg_list(skdev, 1U, & skspcl->req.sksg_dma_address);
  }
  if ((unsigned long )skspcl->req.sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  tmp___0 = skd_format_internal_skspcl(skdev);
  }
  if (tmp___0 == 0) {
    rc = -22;
    goto err_out;
  } else {
  }
  err_out: ;
  return (rc);
}
}
static int skd_cons_disk(struct skd_device *skdev )
{
  int rc ;
  struct gendisk *disk ;
  struct request_queue *q ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  rc = 0;
  disk = ldv_alloc_disk_133(16);
  }
  if ((unsigned long )disk == (unsigned long )((struct gendisk *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  skdev->disk = disk;
  sprintf((char *)(& disk->disk_name), "skd%u", skdev->devno);
  disk->major = (int )skdev->major;
  disk->first_minor = (int )(skdev->devno * 16U);
  disk->fops = & skd_blockdev_ops;
  disk->private_data = (void *)skdev;
  q = ldv_blk_init_queue_134(& skd_request_fn, & skdev->lock);
  }
  if ((unsigned long )q == (unsigned long )((struct request_queue *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  {
  skdev->queue = q;
  disk->queue = q;
  q->queuedata = (void *)skdev;
  blk_queue_flush(q, 12288U);
  blk_queue_max_segments(q, (int )((unsigned short )skdev->sgs_per_request));
  blk_queue_max_hw_sectors(q, 2048U);
  blk_queue_io_opt(q, 8192U);
  q->limits.discard_granularity = 8192U;
  q->limits.discard_alignment = 0U;
  q->limits.max_discard_sectors = 8388607U;
  q->limits.discard_zeroes_data = 1U;
  queue_flag_set_unlocked(14U, q);
  queue_flag_set_unlocked(12U, q);
  queue_flag_clear_unlocked(16U, q);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(& skdev->lock);
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_disk";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d stopping %s queue\n";
  descriptor.lineno = 4433U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stopping %s queue\n", (char *)(& skdev->name),
                       "skd_cons_disk", 4433, (char *)(& skdev->name));
    }
  } else {
  }
  {
  blk_stop_queue(skdev->queue);
  ldv_spin_unlock_irqrestore_98(& skdev->lock, flags);
  }
  err_out: ;
  return (rc);
}
}
static u32 skd_next_devno ;
static struct skd_device *skd_construct(struct pci_dev *pdev )
{
  struct skd_device *skdev ;
  int blk_major ;
  int rc ;
  void *tmp ;
  char const *tmp___0 ;
  u32 tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  struct _ddebug descriptor___4 ;
  long tmp___7 ;
  struct _ddebug descriptor___5 ;
  long tmp___8 ;
  struct _ddebug descriptor___6 ;
  long tmp___9 ;
  {
  {
  blk_major = (int )skd_major;
  tmp = kzalloc(1000UL, 208U);
  skdev = (struct skd_device *)tmp;
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\vskd: (%s): memory alloc failure\n", tmp___0);
    }
    return ((struct skd_device *)0);
  } else {
  }
  {
  skdev->state = 0;
  skdev->pdev = pdev;
  tmp___1 = skd_next_devno;
  skd_next_devno = skd_next_devno + 1U;
  skdev->devno = tmp___1;
  skdev->major = (u32 )blk_major;
  skdev->irq_type = (skd_irq_type_t )skd_isr_type;
  sprintf((char *)(& skdev->name), "skd%d", skdev->devno);
  skdev->dev_max_queue_depth = 0U;
  skdev->num_req_context = (u32 )skd_max_queue_depth;
  skdev->num_fitmsg_context = (u32 )skd_max_queue_depth;
  skdev->n_special = skd_max_pass_thru;
  skdev->cur_max_queue_depth = 1U;
  skdev->queue_low_water_mark = 1U;
  skdev->proto_ver = 99U;
  skdev->sgs_per_request = skd_sgs_per_request;
  skdev->dbg_level = skd_dbg_level;
  atomic_set(& skdev->device_count, 0);
  spinlock_check(& skdev->lock);
  __raw_spin_lock_init(& skdev->lock.__annonCompField18.rlock, "&(&skdev->lock)->rlock",
                       & __key);
  __init_work(& skdev->completion_worker, 0);
  __constr_expr_0.counter = 137438953408L;
  skdev->completion_worker.data = __constr_expr_0;
  lockdep_init_map(& skdev->completion_worker.lockdep_map, "(&skdev->completion_worker)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& skdev->completion_worker.entry);
  skdev->completion_worker.func = & skd_completion_worker;
  descriptor.modname = "skd";
  descriptor.function = "skd_construct";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d skcomp\n";
  descriptor.lineno = 4481U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skcomp\n", (char *)(& skdev->name),
                       "skd_construct", 4481);
    }
  } else {
  }
  {
  rc = skd_cons_skcomp(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_construct";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d skmsg\n";
  descriptor___0.lineno = 4486U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d skmsg\n", (char *)(& skdev->name),
                       "skd_construct", 4486);
    }
  } else {
  }
  {
  rc = skd_cons_skmsg(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_construct";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d skreq\n";
  descriptor___1.lineno = 4491U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d skreq\n", (char *)(& skdev->name),
                       "skd_construct", 4491);
    }
  } else {
  }
  {
  rc = skd_cons_skreq(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_construct";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d skspcl\n";
  descriptor___2.lineno = 4496U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d skspcl\n", (char *)(& skdev->name),
                       "skd_construct", 4496);
    }
  } else {
  }
  {
  rc = skd_cons_skspcl(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_construct";
  descriptor___3.filename = "drivers/block/skd_main.c";
  descriptor___3.format = "%s:%s:%d sksb\n";
  descriptor___3.lineno = 4501U;
  descriptor___3.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d sksb\n", (char *)(& skdev->name),
                       "skd_construct", 4501);
    }
  } else {
  }
  {
  rc = skd_cons_sksb(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_construct";
  descriptor___4.filename = "drivers/block/skd_main.c";
  descriptor___4.format = "%s:%s:%d disk\n";
  descriptor___4.lineno = 4506U;
  descriptor___4.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d disk\n", (char *)(& skdev->name),
                       "skd_construct", 4506);
    }
  } else {
  }
  {
  rc = skd_cons_disk(skdev);
  }
  if (rc < 0) {
    goto err_out;
  } else {
  }
  {
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_construct";
  descriptor___5.filename = "drivers/block/skd_main.c";
  descriptor___5.format = "%s:%s:%d VICTORY\n";
  descriptor___5.lineno = 4511U;
  descriptor___5.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___8 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d VICTORY\n", (char *)(& skdev->name),
                       "skd_construct", 4511);
    }
  } else {
  }
  return (skdev);
  err_out:
  {
  descriptor___6.modname = "skd";
  descriptor___6.function = "skd_construct";
  descriptor___6.filename = "drivers/block/skd_main.c";
  descriptor___6.format = "%s:%s:%d construct failed\n";
  descriptor___6.lineno = 4516U;
  descriptor___6.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  }
  if (tmp___9 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___6, "%s:%s:%d construct failed\n", (char *)(& skdev->name),
                       "skd_construct", 4516);
    }
  } else {
  }
  {
  skd_destruct(skdev);
  }
  return ((struct skd_device *)0);
}
}
static void skd_free_skcomp(struct skd_device *skdev )
{
  u32 nbytes ;
  {
  if ((unsigned long )skdev->skcomp_table != (unsigned long )((struct fit_completion_entry_v1 *)0)) {
    {
    nbytes = 2048U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skdev->skcomp_table,
                        skdev->cq_dma_address);
    }
  } else {
  }
  skdev->skcomp_table = (struct fit_completion_entry_v1 *)0;
  skdev->cq_dma_address = 0ULL;
  return;
}
}
static void skd_free_skmsg(struct skd_device *skdev )
{
  u32 i ;
  struct skd_fitmsg_context *skmsg ;
  {
  if ((unsigned long )skdev->skmsg_table == (unsigned long )((struct skd_fitmsg_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_39672;
  ldv_39671:
  skmsg = skdev->skmsg_table + (unsigned long )i;
  if ((unsigned long )skmsg->msg_buf != (unsigned long )((u8 *)0U)) {
    {
    skmsg->msg_buf = skmsg->msg_buf + (unsigned long )skmsg->offset;
    skmsg->mb_dma_address = skmsg->mb_dma_address + (dma_addr_t )skmsg->offset;
    pci_free_consistent(skdev->pdev, 512UL, (void *)skmsg->msg_buf, skmsg->mb_dma_address);
    }
  } else {
  }
  skmsg->msg_buf = (u8 *)0U;
  skmsg->mb_dma_address = 0ULL;
  i = i + 1U;
  ldv_39672: ;
  if (i < skdev->num_fitmsg_context) {
    goto ldv_39671;
  } else {
  }
  {
  kfree((void const *)skdev->skmsg_table);
  skdev->skmsg_table = (struct skd_fitmsg_context *)0;
  }
  return;
}
}
static void skd_free_sg_list(struct skd_device *skdev , struct fit_sg_descriptor *sg_list ,
                             u32 n_sg , dma_addr_t dma_addr )
{
  u32 nbytes ;
  {
  if ((unsigned long )sg_list != (unsigned long )((struct fit_sg_descriptor *)0)) {
    {
    nbytes = n_sg * 32U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)sg_list, dma_addr);
    }
  } else {
  }
  return;
}
}
static void skd_free_skreq(struct skd_device *skdev )
{
  u32 i ;
  struct skd_request_context *skreq ;
  {
  if ((unsigned long )skdev->skreq_table == (unsigned long )((struct skd_request_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_39687;
  ldv_39686:
  {
  skreq = skdev->skreq_table + (unsigned long )i;
  skd_free_sg_list(skdev, skreq->sksg_list, (u32 )skdev->sgs_per_request, skreq->sksg_dma_address);
  skreq->sksg_list = (struct fit_sg_descriptor *)0;
  skreq->sksg_dma_address = 0ULL;
  kfree((void const *)skreq->sg);
  i = i + 1U;
  }
  ldv_39687: ;
  if (i < skdev->num_req_context) {
    goto ldv_39686;
  } else {
  }
  {
  kfree((void const *)skdev->skreq_table);
  skdev->skreq_table = (struct skd_request_context *)0;
  }
  return;
}
}
static void skd_free_skspcl(struct skd_device *skdev )
{
  u32 i ;
  u32 nbytes ;
  struct skd_special_context *skspcl ;
  {
  if ((unsigned long )skdev->skspcl_table == (unsigned long )((struct skd_special_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_39696;
  ldv_39695:
  skspcl = skdev->skspcl_table + (unsigned long )i;
  if ((unsigned long )skspcl->msg_buf != (unsigned long )((u8 *)0U)) {
    {
    nbytes = 128U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skspcl->msg_buf, skspcl->mb_dma_address);
    }
  } else {
  }
  {
  skspcl->msg_buf = (u8 *)0U;
  skspcl->mb_dma_address = 0ULL;
  skd_free_sg_list(skdev, skspcl->req.sksg_list, 256U, skspcl->req.sksg_dma_address);
  skspcl->req.sksg_list = (struct fit_sg_descriptor *)0;
  skspcl->req.sksg_dma_address = 0ULL;
  kfree((void const *)skspcl->req.sg);
  i = i + 1U;
  }
  ldv_39696: ;
  if (i < (u32 )skdev->n_special) {
    goto ldv_39695;
  } else {
  }
  {
  kfree((void const *)skdev->skspcl_table);
  skdev->skspcl_table = (struct skd_special_context *)0;
  }
  return;
}
}
static void skd_free_sksb(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  u32 nbytes ;
  {
  skspcl = & skdev->internal_skspcl;
  if ((unsigned long )skspcl->data_buf != (unsigned long )((void *)0)) {
    {
    nbytes = 512U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, skspcl->data_buf, skspcl->db_dma_address);
    }
  } else {
  }
  skspcl->data_buf = (void *)0;
  skspcl->db_dma_address = 0ULL;
  if ((unsigned long )skspcl->msg_buf != (unsigned long )((u8 *)0U)) {
    {
    nbytes = 128U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skspcl->msg_buf, skspcl->mb_dma_address);
    }
  } else {
  }
  {
  skspcl->msg_buf = (u8 *)0U;
  skspcl->mb_dma_address = 0ULL;
  skd_free_sg_list(skdev, skspcl->req.sksg_list, 1U, skspcl->req.sksg_dma_address);
  skspcl->req.sksg_list = (struct fit_sg_descriptor *)0;
  skspcl->req.sksg_dma_address = 0ULL;
  }
  return;
}
}
static void skd_free_disk(struct skd_device *skdev )
{
  struct gendisk *disk ;
  struct request_queue *q ;
  {
  disk = skdev->disk;
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    q = disk->queue;
    if ((disk->flags & 16) != 0) {
      {
      ldv_del_gendisk_137(disk);
      }
    } else {
    }
    if ((unsigned long )q != (unsigned long )((struct request_queue *)0)) {
      {
      ldv_blk_cleanup_queue_138(q);
      }
    } else {
    }
    {
    ldv_put_disk_139(disk);
    }
  } else {
  }
  skdev->disk = (struct gendisk *)0;
  return;
}
}
static void skd_destruct(struct skd_device *skdev )
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
  {
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    return;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_destruct";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d disk\n";
  descriptor.lineno = 4700U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d disk\n", (char *)(& skdev->name), "skd_destruct",
                       4700);
    }
  } else {
  }
  {
  skd_free_disk(skdev);
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_destruct";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d sksb\n";
  descriptor___0.lineno = 4703U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d sksb\n", (char *)(& skdev->name),
                       "skd_destruct", 4703);
    }
  } else {
  }
  {
  skd_free_sksb(skdev);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_destruct";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d skspcl\n";
  descriptor___1.lineno = 4706U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d skspcl\n", (char *)(& skdev->name),
                       "skd_destruct", 4706);
    }
  } else {
  }
  {
  skd_free_skspcl(skdev);
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_destruct";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d skreq\n";
  descriptor___2.lineno = 4709U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d skreq\n", (char *)(& skdev->name),
                       "skd_destruct", 4709);
    }
  } else {
  }
  {
  skd_free_skreq(skdev);
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_destruct";
  descriptor___3.filename = "drivers/block/skd_main.c";
  descriptor___3.format = "%s:%s:%d skmsg\n";
  descriptor___3.lineno = 4712U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d skmsg\n", (char *)(& skdev->name),
                       "skd_destruct", 4712);
    }
  } else {
  }
  {
  skd_free_skmsg(skdev);
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_destruct";
  descriptor___4.filename = "drivers/block/skd_main.c";
  descriptor___4.format = "%s:%s:%d skcomp\n";
  descriptor___4.lineno = 4715U;
  descriptor___4.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d skcomp\n", (char *)(& skdev->name),
                       "skd_destruct", 4715);
    }
  } else {
  }
  {
  skd_free_skcomp(skdev);
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_destruct";
  descriptor___5.filename = "drivers/block/skd_main.c";
  descriptor___5.format = "%s:%s:%d skdev\n";
  descriptor___5.lineno = 4718U;
  descriptor___5.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d skdev\n", (char *)(& skdev->name),
                       "skd_destruct", 4718);
    }
  } else {
  }
  {
  kfree((void const *)skdev);
  }
  return;
}
}
static int skd_bdev_getgeo(struct block_device *bdev , struct hd_geometry *geo )
{
  struct skd_device *skdev ;
  u64 capacity ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  sector_t tmp___1 ;
  {
  {
  skdev = (struct skd_device *)(bdev->bd_disk)->private_data;
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_getgeo";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d %s: CMD[%s] getgeo device\n";
  descriptor.lineno = 4737U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: CMD[%s] getgeo device\n", (char *)(& skdev->name),
                       "skd_bdev_getgeo", 4737, (char *)(& (bdev->bd_disk)->disk_name),
                       (char *)(& tmp->comm));
    }
  } else {
  }
  if (skdev->read_cap_is_valid != 0) {
    {
    tmp___1 = get_capacity(skdev->disk);
    capacity = (u64 )tmp___1;
    geo->heads = 64U;
    geo->sectors = 255U;
    geo->cylinders = (unsigned short )(capacity / 16320ULL);
    }
    return (0);
  } else {
  }
  return (-5);
}
}
static int skd_bdev_attach(struct skd_device *skdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_attach";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d add_disk\n";
  descriptor.lineno = 4752U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d add_disk\n", (char *)(& skdev->name),
                       "skd_bdev_attach", 4752);
    }
  } else {
  }
  {
  ldv_add_disk_140(skdev->disk);
  }
  return (0);
}
}
static struct block_device_operations const skd_blockdev_ops =
     {0, 0, 0, & skd_bdev_ioctl, 0, 0, 0, 0, 0, 0, & skd_bdev_getgeo, 0, & __this_module};
static struct pci_device_id const skd_pci_tbl[2U] = { {6969U, 1U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__skd_pci_tbl_device_table[2U] ;
static char *skd_pci_info(struct skd_device *skdev , char *str )
{
  int pcie_reg ;
  char lwstr[6U] ;
  uint16_t pcie_lstat ;
  uint16_t lspeed ;
  uint16_t lwidth ;
  {
  {
  strcpy(str, "PCIe (");
  pcie_reg = pci_find_capability(skdev->pdev, 16);
  }
  if (pcie_reg != 0) {
    {
    pcie_reg = pcie_reg + 18;
    pci_read_config_word((struct pci_dev const *)skdev->pdev, pcie_reg, & pcie_lstat);
    lspeed = (unsigned int )pcie_lstat & 15U;
    lwidth = (uint16_t )(((int )pcie_lstat & 1008) >> 4);
    }
    if ((unsigned int )lspeed == 1U) {
      {
      strcat(str, "2.5GT/s ");
      }
    } else
    if ((unsigned int )lspeed == 2U) {
      {
      strcat(str, "5.0GT/s ");
      }
    } else {
      {
      strcat(str, "<unknown> ");
      }
    }
    {
    snprintf((char *)(& lwstr), 6UL, "%dX)", (int )lwidth);
    strcat(str, (char const *)(& lwstr));
    }
  } else {
  }
  return (str);
}
}
static int skd_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int i ;
  int rc ;
  char pci_str[32U] ;
  struct skd_device *skdev ;
  char const *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  void *tmp___6 ;
  char const *tmp___7 ;
  struct _ddebug descriptor ;
  long tmp___8 ;
  char const *tmp___9 ;
  struct lock_class_key __key ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___10 ;
  bool __cond ;
  bool __cond___0 ;
  char const *tmp___11 ;
  {
  {
  rc = 0;
  printk("\016STEC s1120 Driver(%s) version %s-b%s\n", (char *)"skd", (char *)"2.2.1",
         (char *)"0260");
  tmp = pci_name((struct pci_dev const *)pdev);
  printk("\016(skd?:??:[%s]): vendor=%04X device=%04x\n", tmp, (int )pdev->vendor,
         (int )pdev->device);
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = pci_request_regions(pdev, "skd");
  }
  if (rc != 0) {
    goto err_out;
  } else {
  }
  {
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (rc == 0) {
    {
    tmp___1 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): consistent DMA mask error %d\n", tmp___0, rc);
      }
    } else {
    }
  } else {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (rc != 0) {
      {
      tmp___2 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): DMA mask error %d\n", tmp___2, rc);
      }
      goto err_out_regions;
    } else {
    }
  }
  if (skd_major == 0U) {
    {
    rc = register_blkdev(0U, "skd");
    }
    if (rc < 0) {
      goto err_out_regions;
    } else {
    }
    {
    tmp___3 = ldv__builtin_expect(rc == 0, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/block/skd_main.c"),
                           "i" (4846), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
    skd_major = (u32 )rc;
  } else {
  }
  {
  skdev = skd_construct(pdev);
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    rc = -12;
    goto err_out_regions;
  } else {
  }
  {
  skd_pci_info(skdev, (char *)(& pci_str));
  tmp___4 = skd_name(skdev);
  printk("\016(%s): %s 64bit\n", tmp___4, (char *)(& pci_str));
  pci_set_master(pdev);
  rc = pci_enable_pcie_error_reporting(pdev);
  }
  if (rc != 0) {
    {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): bad enable of PCIe error reporting rc=%d\n", tmp___5, rc);
    skdev->pcie_error_reporting_is_enabled = 0;
    }
  } else {
    skdev->pcie_error_reporting_is_enabled = 1;
  }
  {
  pci_set_drvdata(pdev, (void *)skdev);
  (skdev->disk)->driverfs_dev = & pdev->dev;
  i = 0;
  }
  goto ldv_39758;
  ldv_39757:
  {
  skdev->mem_phys[i] = pdev->resource[i].start;
  skdev->mem_size[i] = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned int )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0U;
  tmp___6 = ioremap(skdev->mem_phys[i], (unsigned long )skdev->mem_size[i]);
  skdev->mem_map[i] = (void volatile *)tmp___6;
  }
  if ((unsigned long )skdev->mem_map[i] == (unsigned long )((void volatile *)0)) {
    {
    tmp___7 = skd_name(skdev);
    printk("\v(%s): Unable to map adapter memory!\n", tmp___7);
    rc = -19;
    }
    goto err_out_iounmap;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_pci_probe";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n";
  descriptor.lineno = 4888U;
  descriptor.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___8 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n",
                       (char *)(& skdev->name), "skd_pci_probe", 4888, skdev->mem_map[i],
                       skdev->mem_phys[i], skdev->mem_size[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39758: ;
  if (i <= 1) {
    goto ldv_39757;
  } else {
  }
  {
  rc = skd_acquire_irq(skdev);
  }
  if (rc != 0) {
    {
    tmp___9 = skd_name(skdev);
    printk("\v(%s): interrupt resource error %d\n", tmp___9, rc);
    }
    goto err_out_iounmap;
  } else {
  }
  {
  rc = skd_start_timer(skdev);
  }
  if (rc != 0) {
    goto err_out_timer;
  } else {
  }
  {
  __init_waitqueue_head(& skdev->waitq, "&skdev->waitq", & __key);
  skd_start_device(skdev);
  __ret = 22500L;
  __might_sleep("drivers/block/skd_main.c", 4908, 0);
  __cond___0 = skdev->gendisk_on != 0;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = 22500L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_39772:
    {
    tmp___10 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___10;
    __cond = skdev->gendisk_on != 0;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_39771;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_39771;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_39772;
    ldv_39771:
    {
    finish_wait(& skdev->waitq, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  rc = (int )__ret;
  if (skdev->gendisk_on > 0) {
    {
    skd_bdev_attach(skdev);
    rc = 0;
    }
  } else {
    {
    tmp___11 = skd_name(skdev);
    printk("\v(%s): error: waiting for s1120 timed out %d!\n", tmp___11, rc);
    }
    if (rc == 0) {
      rc = -6;
    } else {
    }
    goto err_out_timer;
  }
  return (rc);
  err_out_timer:
  {
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  }
  err_out_iounmap:
  i = 0;
  goto ldv_39776;
  ldv_39775: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    {
    ldv_iounmap_141(skdev->mem_map[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39776: ;
  if (i <= 1) {
    goto ldv_39775;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    {
    pci_disable_pcie_error_reporting(pdev);
    }
  } else {
  }
  {
  skd_destruct(skdev);
  }
  err_out_regions:
  {
  pci_release_regions(pdev);
  }
  err_out:
  {
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, (void *)0);
  }
  return (rc);
}
}
static void skd_pci_remove(struct pci_dev *pdev )
{
  int i ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    }
    return;
  } else {
  }
  {
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  i = 0;
  }
  goto ldv_39784;
  ldv_39783: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    {
    ldv_iounmap_142(skdev->mem_map[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39784: ;
  if (i <= 1) {
    goto ldv_39783;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    {
    pci_disable_pcie_error_reporting(pdev);
    }
  } else {
  }
  {
  skd_destruct(skdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, (void *)0);
  }
  return;
}
}
static int skd_pci_suspend(struct pci_dev *pdev , pm_message_t state )
{
  int i ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  pci_power_t tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    }
    return (-5);
  } else {
  }
  {
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  i = 0;
  }
  goto ldv_39793;
  ldv_39792: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    {
    ldv_iounmap_143(skdev->mem_map[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39793: ;
  if (i <= 1) {
    goto ldv_39792;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    {
    pci_disable_pcie_error_reporting(pdev);
    }
  } else {
  }
  {
  pci_release_regions(pdev);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___1 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___1);
  }
  return (0);
}
}
static int skd_pci_resume(struct pci_dev *pdev )
{
  int i ;
  int rc ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  void *tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  char const *tmp___7 ;
  struct lock_class_key __key ;
  {
  {
  rc = 0;
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    }
    return (-1);
  } else {
  }
  {
  pci_set_power_state(pdev, 0);
  pci_enable_wake(pdev, 0, 0);
  pci_restore_state(pdev);
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = pci_request_regions(pdev, "skd");
  }
  if (rc != 0) {
    goto err_out;
  } else {
  }
  {
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (rc == 0) {
    {
    tmp___2 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): consistent DMA mask error %d\n", tmp___1, rc);
      }
    } else {
    }
  } else {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (rc != 0) {
      {
      tmp___3 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): DMA mask error %d\n", tmp___3, rc);
      }
      goto err_out_regions;
    } else {
    }
  }
  {
  pci_set_master(pdev);
  rc = pci_enable_pcie_error_reporting(pdev);
  }
  if (rc != 0) {
    {
    printk("\v(%s): bad enable of PCIe error reporting rc=%d\n", (char *)(& skdev->name),
           rc);
    skdev->pcie_error_reporting_is_enabled = 0;
    }
  } else {
    skdev->pcie_error_reporting_is_enabled = 1;
  }
  i = 0;
  goto ldv_39807;
  ldv_39806:
  {
  skdev->mem_phys[i] = pdev->resource[i].start;
  skdev->mem_size[i] = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned int )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0U;
  tmp___4 = ioremap(skdev->mem_phys[i], (unsigned long )skdev->mem_size[i]);
  skdev->mem_map[i] = (void volatile *)tmp___4;
  }
  if ((unsigned long )skdev->mem_map[i] == (unsigned long )((void volatile *)0)) {
    {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): Unable to map adapter memory!\n", tmp___5);
    rc = -19;
    }
    goto err_out_iounmap;
  } else {
  }
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_pci_resume";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n";
  descriptor.lineno = 5085U;
  descriptor.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n",
                       (char *)(& skdev->name), "skd_pci_resume", 5085, skdev->mem_map[i],
                       skdev->mem_phys[i], skdev->mem_size[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39807: ;
  if (i <= 1) {
    goto ldv_39806;
  } else {
  }
  {
  rc = skd_acquire_irq(skdev);
  }
  if (rc != 0) {
    {
    tmp___7 = pci_name((struct pci_dev const *)pdev);
    printk("\v(%s): interrupt resource error %d\n", tmp___7, rc);
    }
    goto err_out_iounmap;
  } else {
  }
  {
  rc = skd_start_timer(skdev);
  }
  if (rc != 0) {
    goto err_out_timer;
  } else {
  }
  {
  __init_waitqueue_head(& skdev->waitq, "&skdev->waitq", & __key);
  skd_start_device(skdev);
  }
  return (rc);
  err_out_timer:
  {
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  }
  err_out_iounmap:
  i = 0;
  goto ldv_39812;
  ldv_39811: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    {
    ldv_iounmap_144(skdev->mem_map[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_39812: ;
  if (i <= 1) {
    goto ldv_39811;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    {
    pci_disable_pcie_error_reporting(pdev);
    }
  } else {
  }
  err_out_regions:
  {
  pci_release_regions(pdev);
  }
  err_out:
  {
  pci_disable_device(pdev);
  }
  return (rc);
}
}
static void skd_pci_shutdown(struct pci_dev *pdev )
{
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  {
  printk("\vskd_pci_shutdown called\n");
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  }
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    }
    return;
  } else {
  }
  {
  tmp___1 = skd_name(skdev);
  printk("\v%s: calling stop\n", tmp___1);
  skd_stop_device(skdev);
  }
  return;
}
}
static struct pci_driver skd_driver =
     {{0, 0}, "skd", (struct pci_device_id const *)(& skd_pci_tbl), & skd_pci_probe,
    & skd_pci_remove, & skd_pci_suspend, 0, 0, & skd_pci_resume, & skd_pci_shutdown,
    0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}};
static char const *skd_name(struct skd_device *skdev )
{
  char const *tmp ;
  char const *tmp___0 ;
  {
  {
  memset((void *)(& skdev->id_str), 0, 80UL);
  }
  if (skdev->inquiry_is_valid != 0) {
    {
    tmp = pci_name((struct pci_dev const *)skdev->pdev);
    snprintf((char *)(& skdev->id_str), 80UL, "%s:%s:[%s]", (char *)(& skdev->name),
             (u8 *)(& skdev->inq_serial_num), tmp);
    }
  } else {
    {
    tmp___0 = pci_name((struct pci_dev const *)skdev->pdev);
    snprintf((char *)(& skdev->id_str), 80UL, "%s:??:[%s]", (char *)(& skdev->name),
             tmp___0);
    }
  }
  return ((char const *)(& skdev->id_str));
}
}
char const *skd_drive_state_to_str(int state )
{
  {
  {
  if (state == 0) {
    goto case_0;
  } else {
  }
  if (state == 1) {
    goto case_1;
  } else {
  }
  if (state == 3) {
    goto case_3;
  } else {
  }
  if (state == 4) {
    goto case_4;
  } else {
  }
  if (state == 5) {
    goto case_5;
  } else {
  }
  if (state == 6) {
    goto case_6;
  } else {
  }
  if (state == 7) {
    goto case_7;
  } else {
  }
  if (state == 8) {
    goto case_8;
  } else {
  }
  if (state == 254) {
    goto case_254;
  } else {
  }
  if (state == 9) {
    goto case_9;
  } else {
  }
  if (state == 10) {
    goto case_10;
  } else {
  }
  if (state == 11) {
    goto case_11;
  } else {
  }
  if (state == 12) {
    goto case_12;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ("OFFLINE");
  case_1: ;
  return ("INIT");
  case_3: ;
  return ("ONLINE");
  case_4: ;
  return ("BUSY");
  case_5: ;
  return ("FAULT");
  case_6: ;
  return ("DEGRADED");
  case_7: ;
  return ("INK_DOWN");
  case_8: ;
  return ("SOFT_RESET");
  case_254: ;
  return ("NEED_FW");
  case_9: ;
  return ("INIT_FAULT");
  case_10: ;
  return ("BUSY_SANITIZE");
  case_11: ;
  return ("BUSY_ERASE");
  case_12: ;
  return ("FW_BOOTING");
  switch_default: ;
  return ("???");
  switch_break: ;
  }
}
}
char const *skd_skdev_state_to_str(enum skd_drvr_state state )
{
  {
  {
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )state == 5U) {
    goto case_5;
  } else {
  }
  if ((unsigned int )state == 6U) {
    goto case_6;
  } else {
  }
  if ((unsigned int )state == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )state == 8U) {
    goto case_8;
  } else {
  }
  if ((unsigned int )state == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )state == 10U) {
    goto case_10;
  } else {
  }
  if ((unsigned int )state == 18U) {
    goto case_18;
  } else {
  }
  if ((unsigned int )state == 11U) {
    goto case_11;
  } else {
  }
  if ((unsigned int )state == 12U) {
    goto case_12;
  } else {
  }
  if ((unsigned int )state == 14U) {
    goto case_14;
  } else {
  }
  if ((unsigned int )state == 15U) {
    goto case_15;
  } else {
  }
  if ((unsigned int )state == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )state == 17U) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ("LOAD");
  case_1: ;
  return ("IDLE");
  case_2: ;
  return ("BUSY");
  case_3: ;
  return ("STARTING");
  case_4: ;
  return ("ONLINE");
  case_5: ;
  return ("PAUSING");
  case_6: ;
  return ("PAUSED");
  case_7: ;
  return ("DRAINING_TIMEOUT");
  case_8: ;
  return ("RESTARTING");
  case_9: ;
  return ("RESUMING");
  case_10: ;
  return ("STOPPING");
  case_18: ;
  return ("SYNCING");
  case_11: ;
  return ("FAULT");
  case_12: ;
  return ("DISAPPEARED");
  case_14: ;
  return ("BUSY_ERASE");
  case_15: ;
  return ("BUSY_SANITIZE");
  case_16: ;
  return ("BUSY_IMMINENT");
  case_17: ;
  return ("WAIT_BOOT");
  switch_default: ;
  return ("???");
  switch_break: ;
  }
}
}
static char const *skd_skmsg_state_to_str(enum skd_fit_msg_state state )
{
  {
  {
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ("IDLE");
  case_1: ;
  return ("BUSY");
  switch_default: ;
  return ("???");
  switch_break: ;
  }
}
}
static char const *skd_skreq_state_to_str(enum skd_req_state state )
{
  {
  {
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )state == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )state == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )state == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0: ;
  return ("IDLE");
  case_1: ;
  return ("SETUP");
  case_2: ;
  return ("BUSY");
  case_3: ;
  return ("COMPLETED");
  case_4: ;
  return ("TIMEOUT");
  case_5: ;
  return ("ABORTED");
  switch_default: ;
  return ("???");
  switch_break: ;
  }
}
}
static void skd_log_skdev(struct skd_device *skdev , char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skdev";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d (%s) skdev=%p event=\'%s\'\n";
  descriptor.lineno = 5286U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skdev=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skdev", 5286, (char *)(& skdev->name), skdev, event);
    }
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skdev";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d   drive_state=%s(%d) driver_state=%s(%d)\n";
  descriptor___0.lineno = 5290U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___0 = skd_skdev_state_to_str(skdev->state);
    tmp___1 = skd_drive_state_to_str((int )skdev->drive_state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   drive_state=%s(%d) driver_state=%s(%d)\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5290, tmp___1, skdev->drive_state,
                       tmp___0, (unsigned int )skdev->state);
    }
  } else {
  }
  {
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_log_skdev";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d   busy=%d limit=%d dev=%d lowat=%d\n";
  descriptor___1.lineno = 5294U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   busy=%d limit=%d dev=%d lowat=%d\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5294, skdev->in_flight,
                       skdev->cur_max_queue_depth, skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
    }
  } else {
  }
  {
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_log_skdev";
  descriptor___2.filename = "drivers/block/skd_main.c";
  descriptor___2.format = "%s:%s:%d   timestamp=0x%x cycle=%d cycle_ix=%d\n";
  descriptor___2.lineno = 5297U;
  descriptor___2.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d   timestamp=0x%x cycle=%d cycle_ix=%d\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5297, skdev->timeout_stamp,
                       (int )skdev->skcomp_cycle, skdev->skcomp_ix);
    }
  } else {
  }
  return;
}
}
static void skd_log_skmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ,
                          char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skmsg";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d (%s) skmsg=%p event=\'%s\'\n";
  descriptor.lineno = 5304U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skmsg=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skmsg", 5304, (char *)(& skdev->name), skmsg, event);
    }
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skmsg";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d   state=%s(%d) id=0x%04x length=%d\n";
  descriptor___0.lineno = 5308U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = skd_skmsg_state_to_str(skmsg->state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   state=%s(%d) id=0x%04x length=%d\n",
                       (char *)(& skdev->name), "skd_log_skmsg", 5308, tmp___0, (unsigned int )skmsg->state,
                       skmsg->id, skmsg->length);
    }
  } else {
  }
  return;
}
}
static void skd_log_skreq(struct skd_device *skdev , struct skd_request_context *skreq ,
                          char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct request *req ;
  u32 lba ;
  sector_t tmp___3 ;
  u32 count ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  {
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skreq";
  descriptor.filename = "drivers/block/skd_main.c";
  descriptor.format = "%s:%s:%d (%s) skreq=%p event=\'%s\'\n";
  descriptor.lineno = 5315U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skreq=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skreq", 5315, (char *)(& skdev->name), skreq, event);
    }
  } else {
  }
  {
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skreq";
  descriptor___0.filename = "drivers/block/skd_main.c";
  descriptor___0.format = "%s:%s:%d   state=%s(%d) id=0x%04x fitmsg=0x%04x\n";
  descriptor___0.lineno = 5319U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = skd_skreq_state_to_str(skreq->state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   state=%s(%d) id=0x%04x fitmsg=0x%04x\n",
                       (char *)(& skdev->name), "skd_log_skreq", 5319, tmp___0, (unsigned int )skreq->state,
                       (int )skreq->id, skreq->fitmsg_id);
    }
  } else {
  }
  {
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_log_skreq";
  descriptor___1.filename = "drivers/block/skd_main.c";
  descriptor___1.format = "%s:%s:%d   timo=0x%x sg_dir=%d n_sg=%d\n";
  descriptor___1.lineno = 5322U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   timo=0x%x sg_dir=%d n_sg=%d\n",
                       (char *)(& skdev->name), "skd_log_skreq", 5322, skreq->timeout_stamp,
                       (int )skreq->sg_data_dir, skreq->n_sg);
    }
  } else {
  }
  if ((unsigned long )skreq->req != (unsigned long )((struct request *)0)) {
    {
    req = skreq->req;
    tmp___3 = blk_rq_pos((struct request const *)req);
    lba = (unsigned int )tmp___3;
    tmp___4 = blk_rq_sectors((struct request const *)req);
    count = tmp___4;
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_log_skreq";
    descriptor___2.filename = "drivers/block/skd_main.c";
    descriptor___2.format = "%s:%s:%d req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n";
    descriptor___2.lineno = 5333U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n",
                         (char *)(& skdev->name), "skd_log_skreq", 5333, req, lba,
                         lba, count, count, (int )req->cmd_flags & 1);
      }
    } else {
    }
  } else {
    {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_log_skreq";
    descriptor___3.filename = "drivers/block/skd_main.c";
    descriptor___3.format = "%s:%s:%d req=NULL\n";
    descriptor___3.lineno = 5336U;
    descriptor___3.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d req=NULL\n", (char *)(& skdev->name),
                         "skd_log_skreq", 5336);
      }
    } else {
    }
  }
  return;
}
}
static int skd_init(void)
{
  int tmp ;
  {
  {
  printk("\016skd:  v%s-b%s loaded\n", (char *)"2.2.1", (char *)"0260");
  }
  {
  if (skd_isr_type == 0) {
    goto case_0;
  } else {
  }
  if (skd_isr_type == 1) {
    goto case_1;
  } else {
  }
  if (skd_isr_type == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  goto ldv_39914;
  switch_default:
  {
  printk("\vskd: skd_isr_type %d invalid, re-set to %d\n", skd_isr_type, 1);
  skd_isr_type = 1;
  }
  switch_break: ;
  }
  ldv_39914: ;
  if ((unsigned int )skd_max_queue_depth - 1U > 199U) {
    {
    printk("\vskd: skd_max_queue_depth %d invalid, re-set to %d\n", skd_max_queue_depth,
           64);
    skd_max_queue_depth = 64;
    }
  } else {
  }
  if ((unsigned int )skd_max_req_per_msg - 1U > 13U) {
    {
    printk("\vskd: skd_max_req_per_msg %d invalid, re-set to %d\n", skd_max_req_per_msg,
           1);
    skd_max_req_per_msg = 1;
    }
  } else {
  }
  if ((unsigned int )skd_sgs_per_request - 1U > 4095U) {
    {
    printk("\vskd: skd_sg_per_request %d invalid, re-set to %d\n", skd_sgs_per_request,
           256U);
    skd_sgs_per_request = 256;
    }
  } else {
  }
  if ((unsigned int )skd_dbg_level > 2U) {
    {
    printk("\vskd: skd_dbg_level %d invalid, re-set to %d\n", skd_dbg_level, 0);
    skd_dbg_level = 0;
    }
  } else {
  }
  if (skd_isr_comp_limit < 0) {
    {
    printk("\vskd: skd_isr_comp_limit %d invalid, set to %d\n", skd_isr_comp_limit,
           0);
    skd_isr_comp_limit = 0;
    }
  } else {
  }
  if ((unsigned int )skd_max_pass_thru - 1U > 49U) {
    {
    printk("\vskd: skd_max_pass_thru %d invalid, re-set to %d\n", skd_max_pass_thru,
           32U);
    skd_max_pass_thru = 32;
    }
  } else {
  }
  {
  tmp = ldv___pci_register_driver_145(& skd_driver, & __this_module, "skd");
  }
  return (tmp);
}
}
static void skd_exit(void)
{
  {
  {
  printk("\016skd:  v%s-b%s unloading\n", (char *)"2.2.1", (char *)"0260");
  ldv_pci_unregister_driver_146(& skd_driver);
  }
  if (skd_major != 0U) {
    {
    unregister_blkdev(skd_major, "skd");
    }
  } else {
  }
  return;
}
}
void ldv_EMGentry_exit_skd_exit_16_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_skd_init_16_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_base_instance_callback_4_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_base_instance_callback_5_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_base_instance_callback_6_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_base_instance_callback_7_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_base_instance_callback_8_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_base_instance_callback_9_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_devm_free_irq(void *arg0 , struct device *arg1 , unsigned int arg2 , void *arg3 ) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_base_instance_10_16_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_16_5(void) ;
void ldv_dispatch_instance_deregister_11_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_13_2(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_12_1(int arg0 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_base_instance_10_16_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_16_7(void) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct block_device * ,
                                                              struct hd_geometry * ) ,
                                                  struct block_device *arg1 , struct hd_geometry *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct block_device * ,
                                                              unsigned int , unsigned int ,
                                                              unsigned long ) , struct block_device *arg1 ,
                                                  unsigned int arg2 , unsigned int arg3 ,
                                                  unsigned long arg4 ) ;
void ldv_entry_EMGentry_16(void *arg0 ) ;
int main(void) ;
void ldv_iio_triggered_buffer_iio_triggered_buffer_instance_0(void *arg0 ) ;
enum irqreturn ldv_iio_triggered_buffer_instance_handler_0_5(enum irqreturn (*arg0)(int ,
                                                                                    void * ) ,
                                                             int arg1 , void *arg2 ) ;
void ldv_iio_triggered_buffer_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
void ldv_struct_block_device_operations_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_4(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_5(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_6(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_7(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_8(void *arg0 ) ;
void ldv_struct_skd_init_msix_entry_base_instance_9(void *arg0 ) ;
void ldv_timer_instance_callback_10_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_10(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_skd_exit_16_2(void (*arg0)(void) )
{
  {
  {
  skd_exit();
  }
  return;
}
}
int ldv_EMGentry_init_skd_init_16_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = skd_init();
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
void ldv_base_instance_callback_4_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_comp_q(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_5_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_msg_isr(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_6_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_qfull_isr(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_7_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_reserved_isr(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_8_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_statec_isr(arg1, arg2);
  }
  return;
}
}
void ldv_base_instance_callback_9_9(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  skd_isr(arg1, arg2);
  }
  return;
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_11_timer_list_timer_list ;
  {
  {
  ldv_11_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_11_1(ldv_11_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_devm_free_irq(void *arg0 , struct device *arg1 , unsigned int arg2 , void *arg3 )
{
  int ldv_12_line_line ;
  {
  {
  ldv_12_line_line = (int )((long )arg1);
  ldv_dispatch_irq_deregister_12_1(ldv_12_line_line);
  }
  return;
  return;
}
}
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_base_instance_10_16_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_16_5(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_11_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_13_2(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_10 *cf_arg_10 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_10 = (struct ldv_struct_timer_instance_10 *)tmp;
  cf_arg_10->arg0 = arg0;
  ldv_timer_timer_instance_10((void *)cf_arg_10);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_12_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_register_15_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_pci_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_pci_pci_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_base_instance_10_16_6(void)
{
  struct ldv_struct_EMGentry_16 *cf_arg_4 ;
  struct ldv_struct_EMGentry_16 *cf_arg_5 ;
  struct ldv_struct_EMGentry_16 *cf_arg_6 ;
  struct ldv_struct_EMGentry_16 *cf_arg_7 ;
  struct ldv_struct_EMGentry_16 *cf_arg_8 ;
  struct ldv_struct_EMGentry_16 *cf_arg_9 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_16 *)tmp;
  ldv_struct_skd_init_msix_entry_base_instance_4((void *)cf_arg_4);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_16 *)tmp___0;
  ldv_struct_skd_init_msix_entry_base_instance_5((void *)cf_arg_5);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_16 *)tmp___1;
  ldv_struct_skd_init_msix_entry_base_instance_6((void *)cf_arg_6);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_16 *)tmp___2;
  ldv_struct_skd_init_msix_entry_base_instance_7((void *)cf_arg_7);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_16 *)tmp___3;
  ldv_struct_skd_init_msix_entry_base_instance_8((void *)cf_arg_8);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_16 *)tmp___4;
  ldv_struct_skd_init_msix_entry_base_instance_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_16_7(void)
{
  struct ldv_struct_EMGentry_16 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_16 *)tmp;
  ldv_struct_block_device_operations_dummy_resourceless_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct block_device * ,
                                                              struct hd_geometry * ) ,
                                                  struct block_device *arg1 , struct hd_geometry *arg2 )
{
  {
  {
  skd_bdev_getgeo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct block_device * ,
                                                              unsigned int , unsigned int ,
                                                              unsigned long ) , struct block_device *arg1 ,
                                                  unsigned int arg2 , unsigned int arg3 ,
                                                  unsigned long arg4 )
{
  {
  {
  skd_bdev_ioctl(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_entry_EMGentry_16(void *arg0 )
{
  void (*ldv_16_exit_skd_exit_default)(void) ;
  int (*ldv_16_init_skd_init_default)(void) ;
  int ldv_16_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_16_ret_default = ldv_EMGentry_init_skd_init_16_11(ldv_16_init_skd_init_default);
  ldv_16_ret_default = ldv_ldv_post_init_147(ldv_16_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_16_ret_default != 0);
    ldv_ldv_check_final_state_148();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_16_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_9_16_7();
      ldv_dispatch_register_base_instance_10_16_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_9_16_5();
      ldv_dispatch_deregister_base_instance_10_16_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_skd_exit_16_2(ldv_16_exit_skd_exit_default);
    ldv_ldv_check_final_state_149();
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
  ldv_ldv_initialize_150();
  ldv_entry_EMGentry_16((void *)0);
  }
return 0;
}
}
void ldv_iio_triggered_buffer_iio_triggered_buffer_instance_0(void *arg0 )
{
  enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
  void *ldv_0_data_data ;
  int ldv_0_line_line ;
  enum irqreturn ldv_0_ret_val_default ;
  enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_iio_triggered_buffer_instance_handler_0_5(ldv_0_callback_handler,
                                                                        ldv_0_line_line,
                                                                        ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
    ldv_iio_triggered_buffer_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line,
                                                 ldv_0_data_data);
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
enum irqreturn ldv_iio_triggered_buffer_instance_handler_0_5(enum irqreturn (*arg0)(int ,
                                                                                    void * ) ,
                                                             int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = skd_isr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_iio_triggered_buffer_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  {
  {
  skd_isr(arg1, arg2);
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = skd_isr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  skd_isr(arg1, arg2);
  }
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
  int tmp ;
  {
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
    ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
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
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_13_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_timer_list_timer_list = arg1;
    ldv_dispatch_instance_register_13_2(ldv_13_timer_list_timer_list);
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
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = skd_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  skd_pci_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  skd_pci_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  skd_pci_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = skd_pci_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_2(void *arg0 )
{
  struct pci_driver *ldv_2_container_pci_driver ;
  struct pci_dev *ldv_2_resource_dev ;
  struct pm_message ldv_2_resource_pm_message ;
  struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
  int ldv_2_ret_default ;
  struct ldv_struct_pci_instance_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_2 *)arg0;
  ldv_2_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_2 *)0)) {
    {
    ldv_2_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_151();
    ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                    ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
    ldv_2_ret_default = ldv_ldv_post_probe_152(ldv_2_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_dev);
    ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_2:
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
  goto ldv_call_2;
  case_2:
  {
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  case_3:
  {
  ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
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
void ldv_struct_block_device_operations_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_getgeo)(struct block_device * , struct hd_geometry * ) ;
  int (*ldv_3_callback_ioctl)(struct block_device * , unsigned int , unsigned int ,
                              unsigned long ) ;
  struct block_device *ldv_3_container_struct_block_device_ptr ;
  struct hd_geometry *ldv_3_container_struct_hd_geometry_ptr ;
  unsigned int ldv_3_ldv_param_7_1_default ;
  unsigned int ldv_3_ldv_param_7_2_default ;
  unsigned long ldv_3_ldv_param_7_3_default ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_ioctl, ldv_3_container_struct_block_device_ptr,
                                               ldv_3_ldv_param_7_1_default, ldv_3_ldv_param_7_2_default,
                                               ldv_3_ldv_param_7_3_default);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_getgeo, ldv_3_container_struct_block_device_ptr,
                                               ldv_3_container_struct_hd_geometry_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3: ;
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
void ldv_struct_skd_init_msix_entry_base_instance_4(void *arg0 )
{
  enum irqreturn (*ldv_4_callback_handler)(int , void * ) ;
  int ldv_4_ldv_param_9_0_default ;
  void *ldv_4_ldv_param_9_1_default ;
  int ldv_4_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
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
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_4_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_4_9(ldv_4_callback_handler, ldv_4_ldv_param_9_0_default,
                                 ldv_4_ldv_param_9_1_default);
  ldv_free(ldv_4_ldv_param_9_1_default);
  }
  goto ldv_call_4;
  case_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_assume(ldv_4_ret_default == 0);
    }
    goto ldv_call_4;
  } else {
    {
    ldv_assume(ldv_4_ret_default != 0);
    }
    goto ldv_call_4;
    goto ldv_call_4;
  }
  case_3: ;
  goto ldv_main_4;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_skd_init_msix_entry_base_instance_5(void *arg0 )
{
  enum irqreturn (*ldv_5_callback_handler)(int , void * ) ;
  int ldv_5_ldv_param_9_0_default ;
  void *ldv_5_ldv_param_9_1_default ;
  int ldv_5_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_5_ret_default = 1;
  goto ldv_main_5;
  return;
  ldv_main_5:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      ldv_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    return;
  }
  return;
  ldv_call_5:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_5_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_5_9(ldv_5_callback_handler, ldv_5_ldv_param_9_0_default,
                                 ldv_5_ldv_param_9_1_default);
  ldv_free(ldv_5_ldv_param_9_1_default);
  }
  goto ldv_call_5;
  case_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_assume(ldv_5_ret_default == 0);
    }
    goto ldv_call_5;
  } else {
    {
    ldv_assume(ldv_5_ret_default != 0);
    }
    goto ldv_call_5;
    goto ldv_call_5;
  }
  case_3: ;
  goto ldv_main_5;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_skd_init_msix_entry_base_instance_6(void *arg0 )
{
  enum irqreturn (*ldv_6_callback_handler)(int , void * ) ;
  int ldv_6_ldv_param_9_0_default ;
  void *ldv_6_ldv_param_9_1_default ;
  int ldv_6_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_6_ret_default = 1;
  goto ldv_main_6;
  return;
  ldv_main_6:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
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
    return;
  }
  return;
  ldv_call_6:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_6_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_6_9(ldv_6_callback_handler, ldv_6_ldv_param_9_0_default,
                                 ldv_6_ldv_param_9_1_default);
  ldv_free(ldv_6_ldv_param_9_1_default);
  }
  goto ldv_call_6;
  case_2:
  {
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
    goto ldv_call_6;
    goto ldv_call_6;
  }
  case_3: ;
  goto ldv_main_6;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_skd_init_msix_entry_base_instance_7(void *arg0 )
{
  enum irqreturn (*ldv_7_callback_handler)(int , void * ) ;
  int ldv_7_ldv_param_9_0_default ;
  void *ldv_7_ldv_param_9_1_default ;
  int ldv_7_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_7_ret_default = 1;
  goto ldv_main_7;
  return;
  ldv_main_7:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_7_ret_default == 0);
      }
      goto ldv_call_7;
    } else {
      {
      ldv_assume(ldv_7_ret_default != 0);
      }
      goto ldv_main_7;
    }
  } else {
    return;
  }
  return;
  ldv_call_7:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_7_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_7_9(ldv_7_callback_handler, ldv_7_ldv_param_9_0_default,
                                 ldv_7_ldv_param_9_1_default);
  ldv_free(ldv_7_ldv_param_9_1_default);
  }
  goto ldv_call_7;
  case_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_assume(ldv_7_ret_default == 0);
    }
    goto ldv_call_7;
  } else {
    {
    ldv_assume(ldv_7_ret_default != 0);
    }
    goto ldv_call_7;
    goto ldv_call_7;
  }
  case_3: ;
  goto ldv_main_7;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_skd_init_msix_entry_base_instance_8(void *arg0 )
{
  enum irqreturn (*ldv_8_callback_handler)(int , void * ) ;
  int ldv_8_ldv_param_9_0_default ;
  void *ldv_8_ldv_param_9_1_default ;
  int ldv_8_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_8_ret_default = 1;
  goto ldv_main_8;
  return;
  ldv_main_8:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_8_ret_default == 0);
      }
      goto ldv_call_8;
    } else {
      {
      ldv_assume(ldv_8_ret_default != 0);
      }
      goto ldv_main_8;
    }
  } else {
    return;
  }
  return;
  ldv_call_8:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_8_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_8_9(ldv_8_callback_handler, ldv_8_ldv_param_9_0_default,
                                 ldv_8_ldv_param_9_1_default);
  ldv_free(ldv_8_ldv_param_9_1_default);
  }
  goto ldv_call_8;
  case_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_assume(ldv_8_ret_default == 0);
    }
    goto ldv_call_8;
  } else {
    {
    ldv_assume(ldv_8_ret_default != 0);
    }
    goto ldv_call_8;
    goto ldv_call_8;
  }
  case_3: ;
  goto ldv_main_8;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_skd_init_msix_entry_base_instance_9(void *arg0 )
{
  enum irqreturn (*ldv_9_callback_handler)(int , void * ) ;
  int ldv_9_ldv_param_9_0_default ;
  void *ldv_9_ldv_param_9_1_default ;
  int ldv_9_ret_default ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_9_ret_default = 1;
  goto ldv_main_9;
  return;
  ldv_main_9:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      }
      goto ldv_call_9;
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
      goto ldv_main_9;
    }
  } else {
    return;
  }
  return;
  ldv_call_9:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_9_ldv_param_9_1_default = ldv_xmalloc(1UL);
  ldv_base_instance_callback_9_9(ldv_9_callback_handler, ldv_9_ldv_param_9_0_default,
                                 ldv_9_ldv_param_9_1_default);
  ldv_free(ldv_9_ldv_param_9_1_default);
  }
  goto ldv_call_9;
  case_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_assume(ldv_9_ret_default == 0);
    }
    goto ldv_call_9;
  } else {
    {
    ldv_assume(ldv_9_ret_default != 0);
    }
    goto ldv_call_9;
    goto ldv_call_9;
  }
  case_3: ;
  goto ldv_main_9;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_timer_instance_callback_10_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_10(void *arg0 )
{
  struct timer_list *ldv_10_container_timer_list ;
  struct ldv_struct_timer_instance_10 *data ;
  {
  data = (struct ldv_struct_timer_instance_10 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_10 *)0)) {
    {
    ldv_10_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_10_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_10_2(ldv_10_container_timer_list->function, ldv_10_container_timer_list->data);
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
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap();
  }
  return (tmp);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return ((struct page *)tmp);
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_skd_device();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static int ldv_mod_timer_99(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_del_timer_sync_100(struct timer_list *ldv_func_arg1 )
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_109(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_110(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_skd_device();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_devm_free_irq_130(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 )
{
  {
  {
  devm_free_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_devm_free_irq((void *)0, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return;
}
}
static void ldv_devm_free_irq_131(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 )
{
  {
  {
  devm_free_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_devm_free_irq((void *)0, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return;
}
}
static void ldv_devm_free_irq_132(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                  void *ldv_func_arg3 )
{
  {
  {
  devm_free_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_devm_free_irq((void *)0, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return;
}
}
static struct gendisk *ldv_alloc_disk_133(int minors )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct gendisk *tmp ;
  struct gendisk *tmp___0 ;
  {
  {
  tmp = alloc_disk(minors);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_block_genhd_alloc_disk();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static struct request_queue *ldv_blk_init_queue_134(void (*ldv_func_arg1)(struct request_queue * ) ,
                                                    spinlock_t *ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  struct request_queue *tmp ;
  struct request_queue *tmp___0 ;
  {
  {
  tmp = blk_init_queue(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_block_queue_request_queue();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_del_gendisk_137(struct gendisk *gp )
{
  {
  {
  ldv_linux_block_genhd_del_gendisk();
  del_gendisk(gp);
  }
  return;
}
}
static void ldv_blk_cleanup_queue_138(struct request_queue *ldv_func_arg1 )
{
  {
  {
  ldv_linux_block_queue_blk_cleanup_queue();
  blk_cleanup_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_put_disk_139(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_put_disk(disk);
  put_disk(disk);
  }
  return;
}
}
static void ldv_add_disk_140(struct gendisk *disk )
{
  {
  {
  ldv_linux_block_genhd_add_disk();
  add_disk(disk);
  }
  return;
}
}
static void ldv_iounmap_141(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
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
static void ldv_iounmap_143(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_144(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv___pci_register_driver_145(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static void ldv_pci_unregister_driver_146(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_147(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_148(void)
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
static void ldv_ldv_check_final_state_149(void)
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
static void ldv_ldv_initialize_150(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_skd_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_skd_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_skd_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_skd_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_skd_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_skd_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_skd_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_skd_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_skd_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_skd_device == 2) {
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
void __blk_end_request_all(struct request *arg0, int arg1) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
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
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
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
void add_disk(struct gendisk *arg0) {
  return;
}
void *external_alloc(void);
struct gendisk *alloc_disk(int arg0) {
  return (struct gendisk *)external_alloc();
}
void blk_add_request_payload(struct request *arg0, struct page *arg1, unsigned int arg2) {
  return;
}
void blk_cleanup_queue(struct request_queue *arg0) {
  return;
}
void *external_alloc(void);
struct request_queue *blk_init_queue(void (*arg0)(struct request_queue *), spinlock_t *arg1) {
  return (struct request_queue *)external_alloc();
}
void *external_alloc(void);
struct request *blk_peek_request(struct request_queue *arg0) {
  return (struct request *)external_alloc();
}
void blk_queue_flush(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_io_opt(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_max_segments(struct request_queue *arg0, unsigned short arg1) {
  return;
}
void blk_requeue_request(struct request_queue *arg0, struct request *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_rq_map_sg(struct request_queue *arg0, struct request *arg1, struct scatterlist *arg2) {
  return __VERIFIER_nondet_int();
}
void blk_start_queue(struct request_queue *arg0) {
  return;
}
void blk_start_request(struct request *arg0) {
  return;
}
void blk_stop_queue(struct request_queue *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_sync_sg_for_cpu(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void del_gendisk(struct gendisk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void devm_free_irq(struct device *arg0, unsigned int arg1, void *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int iov_shorten(struct iovec *arg0, unsigned long arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
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
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
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
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
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
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_disk(struct gendisk *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_blkdev(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_cmd_ioctl(struct request_queue *arg0, struct gendisk *arg1, fmode_t arg2, unsigned int arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
void unregister_blkdev(unsigned int arg0, const char *arg1) {
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
