extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef __kernel_long_t __kernel_off_t;
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
typedef __u32 nlink_t;
typedef __kernel_off_t off_t;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct net_device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2023_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2023_8 ldv_2023 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2030_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2030_10 ldv_2030 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
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
struct __anonstruct_ldv_2147_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2162_13 {
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
union __anonunion_ldv_2163_11 {
   struct __anonstruct_ldv_2147_12 ldv_2147 ;
   struct __anonstruct_ldv_2162_13 ldv_2162 ;
};
struct desc_struct {
   union __anonunion_ldv_2163_11 ldv_2163 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
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
union __anonunion_ldv_2766_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2766_18 ldv_2766 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct_ldv_5121_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5127_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5128_22 {
   struct __anonstruct_ldv_5121_23 ldv_5121 ;
   struct __anonstruct_ldv_5127_24 ldv_5127 ;
};
union __anonunion_ldv_5137_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5128_22 ldv_5128 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5137_25 ldv_5137 ;
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
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
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
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5956_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5957_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5956_29 ldv_5956 ;
};
struct spinlock {
   union __anonunion_ldv_5957_28 ldv_5957 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6451_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6451_31 ldv_6451 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
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
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
struct ctl_table;
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
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
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
struct vm_area_struct;
struct bio_vec;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
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
struct __anonstruct_ldv_13123_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13125_128 {
   struct __anonstruct_ldv_13123_129 ldv_13123 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13125_128 ldv_13125 ;
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
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
};
struct cred;
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
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct sysfs_dirent *sd ;
   struct kref kref ;
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
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13905_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13905_134 ldv_13905 ;
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
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
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
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
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
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14633_137 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14643_141 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14645_140 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14643_141 ldv_14643 ;
   int units ;
};
struct __anonstruct_ldv_14647_139 {
   union __anonunion_ldv_14645_140 ldv_14645 ;
   atomic_t _count ;
};
union __anonunion_ldv_14648_138 {
   unsigned long counters ;
   struct __anonstruct_ldv_14647_139 ldv_14647 ;
};
struct __anonstruct_ldv_14649_136 {
   union __anonunion_ldv_14633_137 ldv_14633 ;
   union __anonunion_ldv_14648_138 ldv_14648 ;
};
struct __anonstruct_ldv_14656_143 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct_ldv_14662_144 {
   struct kmem_cache *slab_cache ;
   struct slab *slab_page ;
};
union __anonunion_ldv_14663_142 {
   struct list_head lru ;
   struct __anonstruct_ldv_14656_143 ldv_14656 ;
   struct list_head list ;
   struct __anonstruct_ldv_14662_144 ldv_14662 ;
};
union __anonunion_ldv_14668_145 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_14649_136 ldv_14649 ;
   union __anonunion_ldv_14663_142 ldv_14663 ;
   union __anonunion_ldv_14668_145 ldv_14668 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_147 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_146 {
   struct __anonstruct_linear_147 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_146 shared ;
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
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
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
   unsigned long nr_ptes ;
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
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_148 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_148 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_150 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_151 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_152 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_154 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_155 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_156 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_149 {
   int _pad[28U] ;
   struct __anonstruct__kill_150 _kill ;
   struct __anonstruct__timer_151 _timer ;
   struct __anonstruct__rt_152 _rt ;
   struct __anonstruct__sigchld_153 _sigchld ;
   struct __anonstruct__sigfault_154 _sigfault ;
   struct __anonstruct__sigpoll_155 _sigpoll ;
   struct __anonstruct__sigsys_156 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_149 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
   struct hrtimer_clock_base clock_base[3U] ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_15920_159 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_15929_160 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_161 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_162 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_15920_159 ldv_15920 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_15929_160 ldv_15929 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_161 type_data ;
   union __anonunion_payload_162 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct callback_head rcu ;
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
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_163 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_163 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
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
struct uts_namespace;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct plist_head pi_waiters ;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
struct mnt_namespace;
struct ipc_namespace;
struct net;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct new_utsname {
   char sysname[65U] ;
   char nodename[65U] ;
   char release[65U] ;
   char version[65U] ;
   char machine[65U] ;
   char domainname[65U] ;
};
struct uts_namespace {
   struct kref kref ;
   struct new_utsname name ;
   struct user_namespace *user_ns ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct configfs_item_operations;
struct configfs_group_operations;
struct configfs_attribute;
struct configfs_subsystem;
struct config_group;
struct config_item_type;
struct config_item {
   char *ci_name ;
   char ci_namebuf[20U] ;
   struct kref ci_kref ;
   struct list_head ci_entry ;
   struct config_item *ci_parent ;
   struct config_group *ci_group ;
   struct config_item_type *ci_type ;
   struct dentry *ci_dentry ;
};
struct config_item_type {
   struct module *ct_owner ;
   struct configfs_item_operations *ct_item_ops ;
   struct configfs_group_operations *ct_group_ops ;
   struct configfs_attribute **ct_attrs ;
};
struct config_group {
   struct config_item cg_item ;
   struct list_head cg_children ;
   struct configfs_subsystem *cg_subsys ;
   struct config_group **default_groups ;
};
struct configfs_attribute {
   char const *ca_name ;
   struct module *ca_owner ;
   umode_t ca_mode ;
};
struct configfs_item_operations {
   void (*release)(struct config_item * ) ;
   ssize_t (*show_attribute)(struct config_item * , struct configfs_attribute * ,
                             char * ) ;
   ssize_t (*store_attribute)(struct config_item * , struct configfs_attribute * ,
                              char const * , size_t ) ;
   int (*allow_link)(struct config_item * , struct config_item * ) ;
   int (*drop_link)(struct config_item * , struct config_item * ) ;
};
struct configfs_group_operations {
   struct config_item *(*make_item)(struct config_group * , char const * ) ;
   struct config_group *(*make_group)(struct config_group * , char const * ) ;
   int (*commit_item)(struct config_item * ) ;
   void (*disconnect_notify)(struct config_group * , struct config_item * ) ;
   void (*drop_item)(struct config_group * , struct config_item * ) ;
};
struct configfs_subsystem {
   struct config_group su_group ;
   struct mutex su_mutex ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
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
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_18639_177 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_18641_176 {
   struct __anonstruct_ldv_18639_177 ldv_18639 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_18641_176 ldv_18641 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_178 {
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
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_178 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
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
struct radix_tree_node;
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
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
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
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
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
union __anonunion_ldv_19574_179 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_19574_179 ldv_19574 ;
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
union __anonunion_arg_181 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_180 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_181 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_180 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
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
union __anonunion_ldv_20008_182 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_20028_183 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_20044_184 {
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
   union __anonunion_ldv_20008_182 ldv_20008 ;
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
   union __anonunion_ldv_20028_183 ldv_20028 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_20044_184 ldv_20044 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_185 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_185 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
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
   unsigned long f_mnt_write_state ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
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
struct __anonstruct_afs_187 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_186 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_187 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
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
   union __anonunion_fl_u_186 fl_u ;
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
struct file_system_type;
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
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
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
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
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
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
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
   void (*truncate)(struct inode * ) ;
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
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
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
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
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
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
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
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
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
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
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
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct vring_desc {
   __u64 addr ;
   __u32 len ;
   __u16 flags ;
   __u16 next ;
};
struct vring_avail {
   __u16 flags ;
   __u16 idx ;
   __u16 ring[] ;
};
struct vring_used_elem {
   __u32 id ;
   __u32 len ;
};
struct vring_used {
   __u16 flags ;
   __u16 idx ;
   struct vring_used_elem ring[] ;
};
struct vhost_vring_state {
   unsigned int index ;
   unsigned int num ;
};
struct vhost_vring_file {
   unsigned int index ;
   int fd ;
};
struct vhost_vring_addr {
   unsigned int index ;
   unsigned int flags ;
   __u64 desc_user_addr ;
   __u64 used_user_addr ;
   __u64 avail_user_addr ;
   __u64 log_guest_addr ;
};
struct vhost_memory_region {
   __u64 guest_phys_addr ;
   __u64 memory_size ;
   __u64 userspace_addr ;
   __u64 flags_padding ;
};
struct vhost_memory {
   __u32 nregions ;
   __u32 padding ;
   struct vhost_memory_region regions[0U] ;
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
struct scsi_varlen_cdb_hdr {
   __u8 opcode ;
   __u8 control ;
   __u8 misc[5U] ;
   __u8 additional_cdb_length ;
   __be16 service_action ;
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
   u8 uuid[16U] ;
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
struct proc_dir_entry;
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
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
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
union __anonunion_ldv_29627_204 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_29631_205 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_29627_204 ldv_29627 ;
   union __anonunion_ldv_29631_205 ldv_29631 ;
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
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0U] ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_pool ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
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
union __anonunion_ldv_30078_206 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_208 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_209 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_30089_207 {
   struct __anonstruct_elv_208 elv ;
   struct __anonstruct_flush_209 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_30078_206 ldv_30078 ;
   union __anonunion_ldv_30089_207 ldv_30089 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
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
typedef int elevator_init_fn(struct request_queue * );
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
   struct hlist_head *hash ;
   unsigned char registered : 1 ;
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
};
struct throtl_data;
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
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
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
   int (*release)(struct gendisk * , fmode_t ) ;
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
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct dev_pm_qos_request {
   struct plist_node node ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
typedef s32 dma_cookie_t;
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
enum ldv_25791 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_25791 socket_state;
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
   void (*set_peek_off)(struct sock * , int ) ;
};
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
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
struct ubuf_info {
   void (*callback)(struct ubuf_info * ) ;
   void *ctx ;
   unsigned long desc ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_34237_214 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_34238_213 {
   __wsum csum ;
   struct __anonstruct_ldv_34237_214 ldv_34237 ;
};
union __anonunion_ldv_34276_215 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_34238_213 ldv_34238 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_34276_215 ldv_34276 ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
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
   char reserved1[32U] ;
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
   __u8 hdata[60U] ;
};
struct ethtool_flow_ext {
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
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
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
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6_mib_device {
   atomic_long_t mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
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
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
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
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
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
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
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
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
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
union __anonunion_in6_u_218 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_218 in6_u ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
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
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
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
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
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
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
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
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct idr_layer {
   unsigned long bitmap ;
   struct idr_layer *ary[64U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   spinlock_t lock ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cgroup_map_cb {
   int (*fill)(struct cgroup_map_cb * , char const * , u64 ) ;
   void *state ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct simple_xattrs xattrs ;
   int (*open)(struct inode * , struct file * ) ;
   ssize_t (*read)(struct cgroup * , struct cftype * , struct file * , char * , size_t ,
                   loff_t * ) ;
   u64 (*read_u64)(struct cgroup * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup * , struct cftype * ) ;
   int (*read_map)(struct cgroup * , struct cftype * , struct cgroup_map_cb * ) ;
   int (*read_seq_string)(struct cgroup * , struct cftype * , struct seq_file * ) ;
   ssize_t (*write)(struct cgroup * , struct cftype * , struct file * , char const * ,
                    size_t , loff_t * ) ;
   int (*write_u64)(struct cgroup * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup * , unsigned int ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*register_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ,
                         char const * ) ;
   void (*unregister_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*create)(struct cgroup * ) ;
   int (*pre_destroy)(struct cgroup * ) ;
   void (*destroy)(struct cgroup * ) ;
   int (*can_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup * , struct cgroup * , struct task_struct * ) ;
   void (*post_clone)(struct cgroup * ) ;
   void (*bind)(struct cgroup * ) ;
   int subsys_id ;
   int active ;
   int disabled ;
   int early_init ;
   bool use_id ;
   bool __DEPRECATED_clear_css_refs ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head sibling ;
   struct idr idr ;
   spinlock_t id_lock ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
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
   struct work_struct free_work ;
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
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
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
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_41330_227 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
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
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
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
   union __anonunion_ldv_41330_227 ldv_41330 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
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
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   struct callback_head rcu ;
   struct sock_filter insns[0U] ;
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
typedef struct poll_table_struct poll_table;
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
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int base_reachable_time ;
   int retrans_time ;
   int gc_staletime ;
   int reachable_time ;
   int delay_probe_time ;
   int queue_len_bytes ;
   int ucast_probes ;
   int app_probes ;
   int mcast_probes ;
   int anycast_delay ;
   int proxy_delay ;
   int proxy_qlen ;
   int locktime ;
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
   struct neigh_table *next ;
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
union __anonunion_ldv_44154_232 {
   unsigned long expires ;
   struct dst_entry *from ;
};
struct dn_route;
union __anonunion_ldv_44179_233 {
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
   union __anonunion_ldv_44154_232 ldv_44154 ;
   struct dst_entry *path ;
   void *__pad0 ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
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
   union __anonunion_ldv_44179_233 ldv_44179 ;
};
struct __anonstruct_socket_lock_t_234 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_234 socket_lock_t;
struct proto;
union __anonunion_ldv_44394_235 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
union __anonunion_ldv_44402_236 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_44409_237 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
   union __anonunion_ldv_44394_235 ldv_44394 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_44402_236 ldv_44402 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_44409_237 ldv_44409 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_238 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_238 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct sk_buff_head sk_async_wait_queue ;
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
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
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
   void (*sk_data_ready)(struct sock * , int ) ;
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
union __anonunion_h_239 {
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
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
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
   union __anonunion_h_239 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   void (*enter_memory_pressure)(struct sock * ) ;
   struct res_counter *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_values {
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * , struct request_values * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct request_sock *dl_next ;
   u16 mss ;
   u8 retrans ;
   u8 cookie_ts ;
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
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   void *sysctl ;
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
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
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
   unsigned long mc_v1_seen ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct neigh_parms *nd_parms ;
   struct inet6_dev *next ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion_ldv_48937_253 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion_ldv_48937_253 ldv_48937 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion_ldv_48952_254 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct_ldv_48957_256 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion_ldv_48960_255 {
   struct __anonstruct_ldv_48957_256 ldv_48957 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[14U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion_ldv_48952_254 ldv_48952 ;
   union __anonunion_ldv_48960_255 ldv_48960 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
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
};
struct inet_ehash_bucket {
   struct hlist_nulls_head chain ;
   struct hlist_nulls_head twchain ;
};
struct inet_bind_hashbucket {
   spinlock_t lock ;
   struct hlist_head chain ;
};
struct inet_listen_hashbucket {
   spinlock_t lock ;
   struct hlist_nulls_head head ;
};
struct inet_hashinfo {
   struct inet_ehash_bucket *ehash ;
   spinlock_t *ehash_locks ;
   unsigned int ehash_mask ;
   unsigned int ehash_locks_mask ;
   struct inet_bind_hashbucket *bhash ;
   unsigned int bhash_size ;
   struct kmem_cache *bind_bucket_cachep ;
   struct inet_listen_hashbucket listening_hash[32U] ;
   atomic_t bsockets ;
};
enum transport_lun_status_table {
    TRANSPORT_LUN_STATUS_FREE = 0,
    TRANSPORT_LUN_STATUS_ACTIVE = 1
} ;
enum transport_tpg_type_table {
    TRANSPORT_TPG_TYPE_NORMAL = 0,
    TRANSPORT_TPG_TYPE_DISCOVERY = 1
} ;
enum transport_state_table {
    TRANSPORT_NO_STATE = 0,
    TRANSPORT_NEW_CMD = 1,
    TRANSPORT_WRITE_PENDING = 3,
    TRANSPORT_PROCESSING = 5,
    TRANSPORT_COMPLETE = 6,
    TRANSPORT_ISTATE_PROCESSING = 11,
    TRANSPORT_COMPLETE_QF_WP = 18,
    TRANSPORT_COMPLETE_QF_OK = 19
} ;
struct se_obj {
   atomic_t obj_access_count ;
};
enum ldv_35517 {
    SPC_ALUA_PASSTHROUGH = 0,
    SPC2_ALUA_DISABLED = 1,
    SPC3_ALUA_EMULATED = 2
} ;
typedef enum ldv_35517 t10_alua_index_t;
enum ldv_35519 {
    SAM_TASK_ATTR_PASSTHROUGH = 0,
    SAM_TASK_ATTR_UNTAGGED = 1,
    SAM_TASK_ATTR_EMULATED = 2
} ;
typedef enum ldv_35519 t10_task_attr_index_t;
struct se_cmd;
struct se_subsystem_dev;
struct t10_alua_tg_pt_gp;
struct t10_alua {
   t10_alua_index_t alua_type ;
   u16 alua_tg_pt_gps_counter ;
   u32 alua_tg_pt_gps_count ;
   spinlock_t tg_pt_gps_lock ;
   struct se_subsystem_dev *t10_sub_dev ;
   struct t10_alua_tg_pt_gp *default_tg_pt_gp ;
   struct config_group alua_tg_pt_gps_group ;
   int (*alua_state_check)(struct se_cmd * , unsigned char * , u8 * ) ;
   struct list_head tg_pt_gps_list ;
};
struct t10_alua_lu_gp {
   u16 lu_gp_id ;
   int lu_gp_valid_id ;
   u32 lu_gp_members ;
   atomic_t lu_gp_ref_cnt ;
   spinlock_t lu_gp_lock ;
   struct config_group lu_gp_group ;
   struct list_head lu_gp_node ;
   struct list_head lu_gp_mem_list ;
};
struct se_device;
struct t10_alua_lu_gp_member {
   bool lu_gp_assoc ;
   atomic_t lu_gp_mem_ref_cnt ;
   spinlock_t lu_gp_mem_lock ;
   struct t10_alua_lu_gp *lu_gp ;
   struct se_device *lu_gp_mem_dev ;
   struct list_head lu_gp_mem_list ;
};
struct t10_alua_tg_pt_gp {
   u16 tg_pt_gp_id ;
   int tg_pt_gp_valid_id ;
   int tg_pt_gp_alua_access_status ;
   int tg_pt_gp_alua_access_type ;
   int tg_pt_gp_nonop_delay_msecs ;
   int tg_pt_gp_trans_delay_msecs ;
   int tg_pt_gp_implict_trans_secs ;
   int tg_pt_gp_pref ;
   int tg_pt_gp_write_metadata ;
   u32 tg_pt_gp_md_buf_len ;
   u32 tg_pt_gp_members ;
   atomic_t tg_pt_gp_alua_access_state ;
   atomic_t tg_pt_gp_ref_cnt ;
   spinlock_t tg_pt_gp_lock ;
   struct mutex tg_pt_gp_md_mutex ;
   struct se_subsystem_dev *tg_pt_gp_su_dev ;
   struct config_group tg_pt_gp_group ;
   struct list_head tg_pt_gp_list ;
   struct list_head tg_pt_gp_mem_list ;
};
struct se_port;
struct t10_alua_tg_pt_gp_member {
   bool tg_pt_gp_assoc ;
   atomic_t tg_pt_gp_mem_ref_cnt ;
   spinlock_t tg_pt_gp_mem_lock ;
   struct t10_alua_tg_pt_gp *tg_pt_gp ;
   struct se_port *tg_pt ;
   struct list_head tg_pt_gp_mem_list ;
};
struct t10_wwn {
   char vendor[8U] ;
   char model[16U] ;
   char revision[4U] ;
   char unit_serial[254U] ;
   spinlock_t t10_vpd_lock ;
   struct se_subsystem_dev *t10_sub_dev ;
   struct config_group t10_wwn_group ;
   struct list_head t10_vpd_list ;
};
enum ldv_35554 {
    SPC_PASSTHROUGH = 0,
    SPC2_RESERVATIONS = 1,
    SPC3_PERSISTENT_RESERVATIONS = 2
} ;
typedef enum ldv_35554 t10_reservations_index_t;
struct se_node_acl;
struct se_dev_entry;
struct se_lun;
struct t10_pr_registration {
   char pr_reg_isid[16U] ;
   unsigned char pr_iport[256U] ;
   unsigned char pr_tport[256U] ;
   unsigned char *pr_aptpl_buf ;
   u16 pr_aptpl_rpti ;
   u16 pr_reg_tpgt ;
   int pr_reg_all_tg_pt ;
   int pr_reg_aptpl ;
   int pr_res_holder ;
   int pr_res_type ;
   int pr_res_scope ;
   bool isid_present_at_reg ;
   u32 pr_res_mapped_lun ;
   u32 pr_aptpl_target_lun ;
   u32 pr_res_generation ;
   u64 pr_reg_bin_isid ;
   u64 pr_res_key ;
   atomic_t pr_res_holders ;
   struct se_node_acl *pr_reg_nacl ;
   struct se_dev_entry *pr_reg_deve ;
   struct se_lun *pr_reg_tg_pt_lun ;
   struct list_head pr_reg_list ;
   struct list_head pr_reg_abort_list ;
   struct list_head pr_reg_aptpl_list ;
   struct list_head pr_reg_atp_list ;
   struct list_head pr_reg_atp_mem_list ;
};
struct t10_reservation_ops {
   int (*t10_reservation_check)(struct se_cmd * , u32 * ) ;
   int (*t10_seq_non_holder)(struct se_cmd * , unsigned char * , u32 ) ;
   int (*t10_pr_register)(struct se_cmd * ) ;
   int (*t10_pr_clear)(struct se_cmd * ) ;
};
struct t10_reservation {
   int pr_all_tg_pt ;
   int pr_aptpl_active ;
   u32 pr_aptpl_buf_len ;
   u32 pr_generation ;
   t10_reservations_index_t res_type ;
   spinlock_t registration_lock ;
   spinlock_t aptpl_reg_lock ;
   struct se_node_acl *pr_res_holder ;
   struct list_head registration_list ;
   struct list_head aptpl_reg_list ;
   struct t10_reservation_ops pr_ops ;
};
struct se_tmr_req {
   u8 function ;
   u8 response ;
   int call_transport ;
   u32 ref_task_tag ;
   void *fabric_tmr_ptr ;
   struct se_cmd *task_cmd ;
   struct se_device *tmr_dev ;
   struct se_lun *tmr_lun ;
   struct list_head tmr_list ;
};
struct se_session;
struct target_core_fabric_ops;
struct se_cmd {
   u8 scsi_status ;
   u8 scsi_asc ;
   u8 scsi_ascq ;
   u8 scsi_sense_reason ;
   u16 scsi_sense_length ;
   int alua_nonop_delay ;
   enum dma_data_direction data_direction ;
   int sam_task_attr ;
   enum transport_state_table t_state ;
   unsigned char check_release : 1 ;
   unsigned char cmd_wait_set : 1 ;
   unsigned char unknown_data_length : 1 ;
   u32 se_cmd_flags ;
   u32 se_ordered_id ;
   u32 data_length ;
   u32 residual_count ;
   u32 orig_fe_lun ;
   u64 pr_res_key ;
   void *sense_buffer ;
   struct list_head se_delayed_node ;
   struct list_head se_lun_node ;
   struct list_head se_qf_node ;
   struct se_device *se_dev ;
   struct se_dev_entry *se_deve ;
   struct se_lun *se_lun ;
   struct se_session *se_sess ;
   struct se_tmr_req *se_tmr_req ;
   struct list_head se_cmd_list ;
   struct completion cmd_wait_comp ;
   struct kref cmd_kref ;
   struct target_core_fabric_ops *se_tfo ;
   int (*execute_cmd)(struct se_cmd * ) ;
   void (*transport_complete_callback)(struct se_cmd * ) ;
   unsigned char *t_task_cdb ;
   unsigned char __t_task_cdb[32U] ;
   unsigned long long t_task_lba ;
   atomic_t t_fe_count ;
   unsigned int transport_state ;
   spinlock_t t_state_lock ;
   struct completion t_transport_stop_comp ;
   struct completion transport_lun_fe_stop_comp ;
   struct completion transport_lun_stop_comp ;
   struct work_struct work ;
   struct scatterlist *t_data_sg ;
   unsigned int t_data_nents ;
   void *t_data_vmap ;
   struct scatterlist *t_bidi_data_sg ;
   unsigned int t_bidi_data_nents ;
   struct list_head state_list ;
   bool state_active ;
   struct completion task_stop_comp ;
   void *priv ;
};
struct se_portal_group;
struct se_node_acl {
   char initiatorname[224U] ;
   bool dynamic_node_acl ;
   bool acl_stop ;
   u32 queue_depth ;
   u32 acl_index ;
   u64 num_cmds ;
   u64 read_bytes ;
   u64 write_bytes ;
   spinlock_t stats_lock ;
   atomic_t acl_pr_ref_count ;
   struct se_dev_entry **device_list ;
   struct se_session *nacl_sess ;
   struct se_portal_group *se_tpg ;
   spinlock_t device_list_lock ;
   spinlock_t nacl_sess_lock ;
   struct config_group acl_group ;
   struct config_group acl_attrib_group ;
   struct config_group acl_auth_group ;
   struct config_group acl_param_group ;
   struct config_group acl_fabric_stat_group ;
   struct config_group *acl_default_groups[5U] ;
   struct list_head acl_list ;
   struct list_head acl_sess_list ;
   struct completion acl_free_comp ;
   struct kref acl_kref ;
};
struct se_session {
   unsigned char sess_tearing_down : 1 ;
   u64 sess_bin_isid ;
   struct se_node_acl *se_node_acl ;
   struct se_portal_group *se_tpg ;
   void *fabric_sess_ptr ;
   struct list_head sess_list ;
   struct list_head sess_acl_list ;
   struct list_head sess_cmd_list ;
   spinlock_t sess_cmd_lock ;
   struct kref sess_kref ;
};
struct se_ml_stat_grps {
   struct config_group stat_group ;
   struct config_group scsi_auth_intr_group ;
   struct config_group scsi_att_intr_port_group ;
};
struct se_lun_acl {
   char initiatorname[224U] ;
   u32 mapped_lun ;
   struct se_node_acl *se_lun_nacl ;
   struct se_lun *se_lun ;
   struct list_head lacl_list ;
   struct config_group se_lun_group ;
   struct se_ml_stat_grps ml_stat_grps ;
};
struct se_dev_entry {
   bool def_pr_registered ;
   u32 lun_flags ;
   u32 deve_cmds ;
   u32 mapped_lun ;
   u32 average_bytes ;
   u32 last_byte_count ;
   u32 total_cmds ;
   u32 total_bytes ;
   u64 pr_res_key ;
   u64 creation_time ;
   u32 attach_count ;
   u64 read_bytes ;
   u64 write_bytes ;
   atomic_t ua_count ;
   atomic_t pr_ref_count ;
   struct se_lun_acl *se_lun_acl ;
   spinlock_t ua_lock ;
   struct se_lun *se_lun ;
   struct list_head alua_port_list ;
   struct list_head ua_list ;
};
struct se_dev_attrib {
   int emulate_dpo ;
   int emulate_fua_write ;
   int emulate_fua_read ;
   int emulate_write_cache ;
   int emulate_ua_intlck_ctrl ;
   int emulate_tas ;
   int emulate_tpu ;
   int emulate_tpws ;
   int emulate_reservations ;
   int emulate_alua ;
   int enforce_pr_isids ;
   int is_nonrot ;
   int emulate_rest_reord ;
   u32 hw_block_size ;
   u32 block_size ;
   u32 hw_max_sectors ;
   u32 fabric_max_sectors ;
   u32 optimal_sectors ;
   u32 hw_queue_depth ;
   u32 queue_depth ;
   u32 max_unmap_lba_count ;
   u32 max_unmap_block_desc_count ;
   u32 unmap_granularity ;
   u32 unmap_granularity_alignment ;
   struct se_subsystem_dev *da_sub_dev ;
   struct config_group da_group ;
};
struct se_dev_stat_grps {
   struct config_group stat_group ;
   struct config_group scsi_dev_group ;
   struct config_group scsi_tgt_dev_group ;
   struct config_group scsi_lu_group ;
};
struct se_hba;
struct se_subsystem_dev {
   unsigned char se_dev_alias[512U] ;
   unsigned char se_dev_udev_path[512U] ;
   u32 su_dev_flags ;
   struct se_hba *se_dev_hba ;
   struct se_device *se_dev_ptr ;
   struct se_dev_attrib se_dev_attrib ;
   struct t10_alua t10_alua ;
   struct t10_wwn t10_wwn ;
   struct t10_reservation t10_pr ;
   spinlock_t se_dev_lock ;
   void *se_dev_su_ptr ;
   struct config_group se_dev_group ;
   struct config_group se_dev_pr_group ;
   struct se_dev_stat_grps dev_stat_grps ;
};
struct se_subsystem_api;
struct se_device {
   u16 dev_rpti_counter ;
   u32 dev_cur_ordered_id ;
   u32 dev_flags ;
   u32 dev_port_count ;
   u32 dev_status ;
   u32 queue_depth ;
   u64 dev_res_bin_isid ;
   t10_task_attr_index_t dev_task_attr_type ;
   void *dev_ptr ;
   u32 dev_index ;
   u64 creation_time ;
   u32 num_resets ;
   u64 num_cmds ;
   u64 read_bytes ;
   u64 write_bytes ;
   spinlock_t stats_lock ;
   atomic_t simple_cmds ;
   atomic_t dev_ordered_id ;
   atomic_t dev_ordered_sync ;
   atomic_t dev_qf_count ;
   struct se_obj dev_obj ;
   struct se_obj dev_access_obj ;
   struct se_obj dev_export_obj ;
   spinlock_t delayed_cmd_lock ;
   spinlock_t execute_task_lock ;
   spinlock_t dev_reservation_lock ;
   spinlock_t dev_status_lock ;
   spinlock_t se_port_lock ;
   spinlock_t se_tmr_lock ;
   spinlock_t qf_cmd_lock ;
   struct se_node_acl *dev_reserved_node_acl ;
   struct t10_alua_lu_gp_member *dev_alua_lu_gp_mem ;
   struct t10_pr_registration *dev_pr_res_holder ;
   struct list_head dev_sep_list ;
   struct list_head dev_tmr_list ;
   struct workqueue_struct *tmr_wq ;
   struct work_struct qf_work_queue ;
   struct list_head delayed_cmd_list ;
   struct list_head state_list ;
   struct list_head qf_cmd_list ;
   struct se_hba *se_hba ;
   struct se_subsystem_dev *se_sub_dev ;
   struct se_subsystem_api *transport ;
   struct list_head dev_list ;
};
struct se_hba {
   u16 hba_tpgt ;
   u32 hba_id ;
   u32 hba_flags ;
   u32 dev_count ;
   u32 hba_index ;
   void *hba_ptr ;
   struct list_head hba_dev_list ;
   struct list_head hba_node ;
   spinlock_t device_lock ;
   struct config_group hba_group ;
   struct mutex hba_access_mutex ;
   struct se_subsystem_api *transport ;
};
struct se_port_stat_grps {
   struct config_group stat_group ;
   struct config_group scsi_port_group ;
   struct config_group scsi_tgt_port_group ;
   struct config_group scsi_transport_group ;
};
struct se_lun {
   enum transport_lun_status_table lun_status ;
   u32 lun_access ;
   u32 lun_flags ;
   u32 unpacked_lun ;
   atomic_t lun_acl_count ;
   spinlock_t lun_acl_lock ;
   spinlock_t lun_cmd_lock ;
   spinlock_t lun_sep_lock ;
   struct completion lun_shutdown_comp ;
   struct list_head lun_cmd_list ;
   struct list_head lun_acl_list ;
   struct se_device *lun_se_dev ;
   struct se_port *lun_sep ;
   struct config_group lun_group ;
   struct se_port_stat_grps port_stat_grps ;
};
struct scsi_port_stats {
   u64 cmd_pdus ;
   u64 tx_data_octets ;
   u64 rx_data_octets ;
};
struct se_port {
   u16 sep_rtpi ;
   int sep_tg_pt_secondary_stat ;
   int sep_tg_pt_secondary_write_md ;
   u32 sep_index ;
   struct scsi_port_stats sep_stats ;
   atomic_t sep_tg_pt_secondary_offline ;
   atomic_t sep_tg_pt_ref_cnt ;
   spinlock_t sep_alua_lock ;
   struct mutex sep_tg_pt_md_mutex ;
   struct t10_alua_tg_pt_gp_member *sep_alua_tg_pt_gp_mem ;
   struct se_lun *sep_lun ;
   struct se_portal_group *sep_tpg ;
   struct list_head sep_alua_list ;
   struct list_head sep_list ;
};
struct se_tpg_np {
   struct se_portal_group *tpg_np_parent ;
   struct config_group tpg_np_group ;
};
struct se_wwn;
struct se_portal_group {
   enum transport_tpg_type_table se_tpg_type ;
   u32 num_node_acls ;
   atomic_t tpg_pr_ref_count ;
   spinlock_t acl_node_lock ;
   spinlock_t session_lock ;
   spinlock_t tpg_lun_lock ;
   void *se_tpg_fabric_ptr ;
   struct list_head se_tpg_node ;
   struct list_head acl_node_list ;
   struct se_lun **tpg_lun_list ;
   struct se_lun tpg_virt_lun0 ;
   struct list_head tpg_sess_list ;
   struct target_core_fabric_ops *se_tpg_tfo ;
   struct se_wwn *se_tpg_wwn ;
   struct config_group tpg_group ;
   struct config_group *tpg_default_groups[6U] ;
   struct config_group tpg_lun_group ;
   struct config_group tpg_np_group ;
   struct config_group tpg_acl_group ;
   struct config_group tpg_attrib_group ;
   struct config_group tpg_param_group ;
};
struct target_fabric_configfs;
struct se_wwn {
   struct target_fabric_configfs *wwn_tf ;
   struct config_group wwn_group ;
   struct config_group *wwn_default_groups[2U] ;
   struct config_group fabric_stat_group ;
};
struct target_core_fabric_ops {
   struct configfs_subsystem *tf_subsys ;
   char *(*get_fabric_name)(void) ;
   u8 (*get_fabric_proto_ident)(struct se_portal_group * ) ;
   char *(*tpg_get_wwn)(struct se_portal_group * ) ;
   u16 (*tpg_get_tag)(struct se_portal_group * ) ;
   u32 (*tpg_get_default_depth)(struct se_portal_group * ) ;
   u32 (*tpg_get_pr_transport_id)(struct se_portal_group * , struct se_node_acl * ,
                                  struct t10_pr_registration * , int * , unsigned char * ) ;
   u32 (*tpg_get_pr_transport_id_len)(struct se_portal_group * , struct se_node_acl * ,
                                      struct t10_pr_registration * , int * ) ;
   char *(*tpg_parse_pr_out_transport_id)(struct se_portal_group * , char const * ,
                                          u32 * , char ** ) ;
   int (*tpg_check_demo_mode)(struct se_portal_group * ) ;
   int (*tpg_check_demo_mode_cache)(struct se_portal_group * ) ;
   int (*tpg_check_demo_mode_write_protect)(struct se_portal_group * ) ;
   int (*tpg_check_prod_mode_write_protect)(struct se_portal_group * ) ;
   int (*tpg_check_demo_mode_login_only)(struct se_portal_group * ) ;
   struct se_node_acl *(*tpg_alloc_fabric_acl)(struct se_portal_group * ) ;
   void (*tpg_release_fabric_acl)(struct se_portal_group * , struct se_node_acl * ) ;
   u32 (*tpg_get_inst_index)(struct se_portal_group * ) ;
   int (*check_stop_free)(struct se_cmd * ) ;
   void (*release_cmd)(struct se_cmd * ) ;
   void (*put_session)(struct se_session * ) ;
   int (*shutdown_session)(struct se_session * ) ;
   void (*close_session)(struct se_session * ) ;
   u32 (*sess_get_index)(struct se_session * ) ;
   u32 (*sess_get_initiator_sid)(struct se_session * , unsigned char * , u32 ) ;
   int (*write_pending)(struct se_cmd * ) ;
   int (*write_pending_status)(struct se_cmd * ) ;
   void (*set_default_node_attributes)(struct se_node_acl * ) ;
   u32 (*get_task_tag)(struct se_cmd * ) ;
   int (*get_cmd_state)(struct se_cmd * ) ;
   int (*queue_data_in)(struct se_cmd * ) ;
   int (*queue_status)(struct se_cmd * ) ;
   int (*queue_tm_rsp)(struct se_cmd * ) ;
   struct se_wwn *(*fabric_make_wwn)(struct target_fabric_configfs * , struct config_group * ,
                                     char const * ) ;
   void (*fabric_drop_wwn)(struct se_wwn * ) ;
   struct se_portal_group *(*fabric_make_tpg)(struct se_wwn * , struct config_group * ,
                                              char const * ) ;
   void (*fabric_drop_tpg)(struct se_portal_group * ) ;
   int (*fabric_post_link)(struct se_portal_group * , struct se_lun * ) ;
   void (*fabric_pre_unlink)(struct se_portal_group * , struct se_lun * ) ;
   struct se_tpg_np *(*fabric_make_np)(struct se_portal_group * , struct config_group * ,
                                       char const * ) ;
   void (*fabric_drop_np)(struct se_tpg_np * ) ;
   struct se_node_acl *(*fabric_make_nodeacl)(struct se_portal_group * , struct config_group * ,
                                              char const * ) ;
   void (*fabric_drop_nodeacl)(struct se_node_acl * ) ;
};
struct target_fabric_tpg_attribute {
   struct configfs_attribute attr ;
   ssize_t (*show)(struct se_portal_group * , char * ) ;
   ssize_t (*store)(struct se_portal_group * , char const * , size_t ) ;
};
struct target_fabric_wwn_attribute {
   struct configfs_attribute attr ;
   ssize_t (*show)(struct target_fabric_configfs * , char * ) ;
   ssize_t (*store)(struct target_fabric_configfs * , char const * , size_t ) ;
};
struct target_fabric_configfs_template {
   struct config_item_type tfc_discovery_cit ;
   struct config_item_type tfc_wwn_cit ;
   struct config_item_type tfc_wwn_fabric_stats_cit ;
   struct config_item_type tfc_tpg_cit ;
   struct config_item_type tfc_tpg_base_cit ;
   struct config_item_type tfc_tpg_lun_cit ;
   struct config_item_type tfc_tpg_port_cit ;
   struct config_item_type tfc_tpg_port_stat_cit ;
   struct config_item_type tfc_tpg_np_cit ;
   struct config_item_type tfc_tpg_np_base_cit ;
   struct config_item_type tfc_tpg_attrib_cit ;
   struct config_item_type tfc_tpg_param_cit ;
   struct config_item_type tfc_tpg_nacl_cit ;
   struct config_item_type tfc_tpg_nacl_base_cit ;
   struct config_item_type tfc_tpg_nacl_attrib_cit ;
   struct config_item_type tfc_tpg_nacl_auth_cit ;
   struct config_item_type tfc_tpg_nacl_param_cit ;
   struct config_item_type tfc_tpg_nacl_stat_cit ;
   struct config_item_type tfc_tpg_mappedlun_cit ;
   struct config_item_type tfc_tpg_mappedlun_stat_cit ;
};
struct target_fabric_configfs {
   char tf_name[32U] ;
   atomic_t tf_access_cnt ;
   struct list_head tf_list ;
   struct config_group tf_group ;
   struct config_group tf_disc_group ;
   struct config_group *tf_default_groups[2U] ;
   struct config_item *tf_fabric ;
   struct config_item_type *tf_fabric_cit ;
   struct configfs_subsystem *tf_subsys ;
   struct module *tf_module ;
   struct target_core_fabric_ops tf_ops ;
   struct target_fabric_configfs_template tf_cit_tmpl ;
};
struct virtio_scsi_cmd_req {
   u8 lun[8U] ;
   u64 tag ;
   u8 task_attr ;
   u8 prio ;
   u8 crn ;
   u8 cdb[32U] ;
};
struct virtio_scsi_cmd_resp {
   u32 sense_len ;
   u32 resid ;
   u16 status_qualifier ;
   u8 status ;
   u8 response ;
   u8 sense[96U] ;
};
struct vhost_work;
struct vhost_work {
   struct list_head node ;
   void (*fn)(struct vhost_work * ) ;
   wait_queue_head_t done ;
   int flushing ;
   unsigned int queue_seq ;
   unsigned int done_seq ;
};
struct vhost_dev;
struct vhost_poll {
   poll_table table ;
   wait_queue_head_t *wqh ;
   wait_queue_t wait ;
   struct vhost_work work ;
   unsigned long mask ;
   struct vhost_dev *dev ;
};
struct vhost_log {
   u64 addr ;
   u64 len ;
};
struct vhost_virtqueue;
struct vhost_ubuf_ref {
   struct kref kref ;
   wait_queue_head_t wait ;
   struct vhost_virtqueue *vq ;
};
struct vhost_virtqueue {
   struct vhost_dev *dev ;
   struct mutex mutex ;
   unsigned int num ;
   struct vring_desc *desc ;
   struct vring_avail *avail ;
   struct vring_used *used ;
   struct file *kick ;
   struct file *call ;
   struct file *error ;
   struct eventfd_ctx *call_ctx ;
   struct eventfd_ctx *error_ctx ;
   struct eventfd_ctx *log_ctx ;
   struct vhost_poll poll ;
   void (*handle_kick)(struct vhost_work * ) ;
   u16 last_avail_idx ;
   u16 avail_idx ;
   u16 last_used_idx ;
   u16 used_flags ;
   u16 signalled_used ;
   bool signalled_used_valid ;
   bool log_used ;
   u64 log_addr ;
   struct iovec iov[1024U] ;
   struct iovec hdr[12U] ;
   struct iovec *indirect ;
   size_t vhost_hlen ;
   size_t sock_hlen ;
   struct vring_used_elem *heads ;
   void *private_data ;
   void *log_base ;
   struct vhost_log *log ;
   int upend_idx ;
   int done_idx ;
   struct ubuf_info *ubuf_info ;
   struct vhost_ubuf_ref *ubufs ;
};
struct vhost_dev {
   struct vhost_memory *memory ;
   struct mm_struct *mm ;
   struct mutex mutex ;
   unsigned int acked_features ;
   struct vhost_virtqueue *vqs ;
   int nvqs ;
   struct file *log_file ;
   struct eventfd_ctx *log_ctx ;
   spinlock_t work_lock ;
   struct list_head work_list ;
   struct task_struct *worker ;
};
struct vhost_attach_cgroups_struct {
   struct vhost_work work ;
   struct task_struct *owner ;
   int ret ;
};
struct vhost_scsi;
struct tcm_vhost_nexus;
struct tcm_vhost_cmd {
   int tvc_vq_desc ;
   int tvc_task_attr ;
   enum dma_data_direction tvc_data_direction ;
   u32 tvc_exp_data_len ;
   u64 tvc_tag ;
   u32 tvc_sgl_count ;
   u32 tvc_lun ;
   struct scatterlist *tvc_sgl ;
   struct virtio_scsi_cmd_resp *tvc_resp ;
   struct vhost_scsi *tvc_vhost ;
   struct tcm_vhost_nexus *tvc_nexus ;
   struct se_cmd tvc_se_cmd ;
   struct work_struct work ;
   unsigned char tvc_cdb[32U] ;
   unsigned char tvc_sense_buf[96U] ;
   struct list_head tvc_completion_list ;
};
struct tcm_vhost_nexus {
   struct se_session *tvn_se_sess ;
};
struct tcm_vhost_nacl {
   u64 iport_wwpn ;
   char iport_name[256U] ;
   struct se_node_acl se_node_acl ;
};
struct tcm_vhost_tport;
struct tcm_vhost_tpg {
   u16 tport_tpgt ;
   int tv_tpg_port_count ;
   int tv_tpg_vhost_count ;
   struct list_head tv_tpg_list ;
   struct mutex tv_tpg_mutex ;
   struct tcm_vhost_nexus *tpg_nexus ;
   struct tcm_vhost_tport *tport ;
   struct se_portal_group se_tpg ;
};
struct tcm_vhost_tport {
   u8 tport_proto_id ;
   u64 tport_wwpn ;
   char tport_name[256U] ;
   struct se_wwn tport_wwn ;
};
struct vhost_scsi_target {
   int abi_version ;
   char vhost_wwpn[224U] ;
   unsigned short vhost_tpgt ;
   unsigned short reserved ;
};
struct vhost_scsi {
   struct tcm_vhost_tpg *vs_tpg ;
   struct vhost_dev dev ;
   struct vhost_virtqueue vqs[3U] ;
   struct vhost_work vs_completion_work ;
   struct list_head vs_completion_list ;
   spinlock_t vs_completion_lock ;
};
typedef int ldv_func_ret_type___8;
long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
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
extern void list_del(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
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
  goto ldv_2860;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  default:
  __bad_percpu_size();
  }
  ldv_2860: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern char *strstr(char const * , char const * ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2,%0; sete %1": "+m" (v->counter),
                       "=qm" (c): "ir" (i): "memory");
  return ((int )c);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_10(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mtx(struct mutex *lock ) ;
void ldv_mutex_unlock_mtx(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_tcm_vhost_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_tcm_vhost_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_tv_tpg_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_tv_tpg_mutex(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6474;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6474;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6474;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6474;
  default:
  __bad_percpu_size();
  }
  ldv_6474:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5957.rlock);
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5957.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_waitqueue_func_entry(wait_queue_t *q , int (*func)(wait_queue_t * ,
                                                                             unsigned int ,
                                                                             int ,
                                                                             void * ) )
{
  {
  q->flags = 0U;
  q->private = 0;
  q->func = func;
  return;
}
}
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern int rcu_is_cpu_idle(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 1, 0, (unsigned long )((void *)0));
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_cpu_idle();
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = rcu_lockdep_current_cpu_online();
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tmp___3 = lock_is_held(& rcu_lock_map);
  return (tmp___3);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 738, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 759, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  return;
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
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
    warn_slowpath_null("include/linux/kref.h", 67);
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
extern struct module __this_module ;
extern void schedule(void) ;
extern int wake_up_process(struct task_struct * ) ;
extern void mmput(struct mm_struct * ) ;
extern struct mm_struct *get_task_mm(struct task_struct * ) ;
__inline static int need_resched(void)
{
  struct thread_info *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = current_thread_info();
  tmp___0 = test_ti_thread_flag(tmp, 3);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  return ((int )tmp___1);
}
}
__inline static struct new_utsname *utsname(void)
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  return (& ((tmp->nsproxy)->uts_ns)->name);
}
}
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
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
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern int memcpy_fromiovec(unsigned char * , struct iovec * , int ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern void fput(struct file * ) ;
extern void eventfd_ctx_put(struct eventfd_ctx * ) ;
extern struct file *eventfd_fget(int ) ;
extern struct eventfd_ctx *eventfd_ctx_fileget(struct file * ) ;
extern __u64 eventfd_signal(struct eventfd_ctx * , __u64 ) ;
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern int get_user_pages_fast(unsigned long , int , int , struct page ** ) ;
extern int set_page_dirty_lock(struct page * ) ;
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    ldv_25559: ;
    goto ldv_25559;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    ldv_25560: ;
    goto ldv_25560;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    ldv_25561: ;
    goto ldv_25561;
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
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  return;
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_25571: ;
    goto ldv_25571;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_25572: ;
    goto ldv_25572;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
__inline static int vring_need_event(__u16 event_idx , __u16 new_idx , __u16 old )
{
  {
  return ((unsigned int )((int )new_idx - (int )event_idx) - 1U < (unsigned int )((int )new_idx - (int )old));
}
}
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
__inline static unsigned int scsi_varlen_cdb_length(void const *hdr )
{
  {
  return ((unsigned int )((int )((struct scsi_varlen_cdb_hdr *)hdr)->additional_cdb_length + 8));
}
}
extern unsigned char const scsi_command_size_tbl[8U] ;
__inline static unsigned int scsi_command_size(unsigned char const *cmnd )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned int )((unsigned char )*cmnd) == 127U) {
    tmp = scsi_varlen_cdb_length((void const *)cmnd);
    tmp___0 = tmp;
  } else {
    tmp___0 = (unsigned int )scsi_command_size_tbl[((int )((unsigned char )*cmnd) >> 5) & 7];
  }
  return (tmp___0);
}
}
extern int __get_user_bad(void) ;
extern void __put_user_bad(void) ;
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word (9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  might_fault();
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  might_fault();
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  __rcu_read_lock();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  __rcu_read_unlock();
  return;
}
}
extern int cgroup_attach_task_all(struct task_struct * , struct task_struct * ) ;
__inline static void init_poll_funcptr(poll_table *pt , void (*qproc)(struct file * ,
                                                                      wait_queue_head_t * ,
                                                                      struct poll_table_struct * ) )
{
  {
  pt->_qproc = qproc;
  pt->_key = 0xffffffffffffffffUL;
  return;
}
}
extern struct se_session *transport_init_session(void) ;
extern void __transport_register_session(struct se_portal_group * , struct se_node_acl * ,
                                         struct se_session * , void * ) ;
extern void transport_free_session(struct se_session * ) ;
extern void transport_deregister_session(struct se_session * ) ;
extern int target_submit_cmd_map_sgls(struct se_cmd * , struct se_session * , unsigned char * ,
                                      unsigned char * , u32 , u32 , int , int ,
                                      int , struct scatterlist * , u32 , struct scatterlist * ,
                                      u32 ) ;
extern void target_execute_cmd(struct se_cmd * ) ;
extern void transport_generic_free_cmd(struct se_cmd * , int ) ;
extern int transport_send_check_condition_and_sense(struct se_cmd * , u8 , int ) ;
extern struct se_node_acl *core_tpg_check_initiator_node_acl(struct se_portal_group * ,
                                                             unsigned char * ) ;
extern struct se_node_acl *core_tpg_add_initiator_node_acl(struct se_portal_group * ,
                                                           struct se_node_acl * ,
                                                           char const * , u32 ) ;
extern int core_tpg_del_initiator_node_acl(struct se_portal_group * , struct se_node_acl * ,
                                           int ) ;
extern int core_tpg_register(struct target_core_fabric_ops * , struct se_wwn * , struct se_portal_group * ,
                             void * , int ) ;
extern int core_tpg_deregister(struct se_portal_group * ) ;
extern u8 sas_get_fabric_proto_ident(struct se_portal_group * ) ;
extern u32 sas_get_pr_transport_id(struct se_portal_group * , struct se_node_acl * ,
                                   struct t10_pr_registration * , int * , unsigned char * ) ;
extern u32 sas_get_pr_transport_id_len(struct se_portal_group * , struct se_node_acl * ,
                                       struct t10_pr_registration * , int * ) ;
extern char *sas_parse_pr_out_transport_id(struct se_portal_group * , char const * ,
                                           u32 * , char ** ) ;
extern u8 fc_get_fabric_proto_ident(struct se_portal_group * ) ;
extern u32 fc_get_pr_transport_id(struct se_portal_group * , struct se_node_acl * ,
                                  struct t10_pr_registration * , int * , unsigned char * ) ;
extern u32 fc_get_pr_transport_id_len(struct se_portal_group * , struct se_node_acl * ,
                                      struct t10_pr_registration * , int * ) ;
extern char *fc_parse_pr_out_transport_id(struct se_portal_group * , char const * ,
                                          u32 * , char ** ) ;
extern u8 iscsi_get_fabric_proto_ident(struct se_portal_group * ) ;
extern u32 iscsi_get_pr_transport_id(struct se_portal_group * , struct se_node_acl * ,
                                     struct t10_pr_registration * , int * , unsigned char * ) ;
extern u32 iscsi_get_pr_transport_id_len(struct se_portal_group * , struct se_node_acl * ,
                                         struct t10_pr_registration * , int * ) ;
extern char *iscsi_parse_pr_out_transport_id(struct se_portal_group * , char const * ,
                                             u32 * , char ** ) ;
extern struct target_fabric_configfs *target_fabric_configfs_init(struct module * ,
                                                                  char const * ) ;
extern int target_fabric_configfs_register(struct target_fabric_configfs * ) ;
extern void target_fabric_configfs_deregister(struct target_fabric_configfs * ) ;
extern void use_mm(struct mm_struct * ) ;
extern void unuse_mm(struct mm_struct * ) ;
void vhost_work_init(struct vhost_work *work , void (*fn)(struct vhost_work * ) ) ;
void vhost_work_queue(struct vhost_dev *dev , struct vhost_work *work ) ;
void vhost_poll_init(struct vhost_poll *poll , void (*fn)(struct vhost_work * ) ,
                     unsigned long mask , struct vhost_dev *dev ) ;
void vhost_poll_start(struct vhost_poll *poll , struct file *file ) ;
void vhost_poll_stop(struct vhost_poll *poll ) ;
void vhost_poll_flush(struct vhost_poll *poll ) ;
void vhost_poll_queue(struct vhost_poll *poll ) ;
struct vhost_ubuf_ref *vhost_ubuf_alloc(struct vhost_virtqueue *vq , bool zcopy ) ;
void vhost_ubuf_put(struct vhost_ubuf_ref *ubufs ) ;
void vhost_ubuf_put_and_wait(struct vhost_ubuf_ref *ubufs ) ;
long vhost_dev_init(struct vhost_dev *dev , struct vhost_virtqueue *vqs , int nvqs ) ;
long vhost_dev_check_owner(struct vhost_dev *dev ) ;
long vhost_dev_reset_owner(struct vhost_dev *dev ) ;
void vhost_dev_cleanup(struct vhost_dev *dev , bool locked ) ;
long vhost_dev_ioctl(struct vhost_dev *d , unsigned int ioctl , unsigned long arg ) ;
int vhost_vq_access_ok(struct vhost_virtqueue *vq ) ;
int vhost_log_access_ok(struct vhost_dev *dev ) ;
int vhost_get_vq_desc(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                      unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                      struct vhost_log *log , unsigned int *log_num ) ;
void vhost_discard_vq_desc(struct vhost_virtqueue *vq , int n ) ;
int vhost_init_used(struct vhost_virtqueue *vq ) ;
int vhost_add_used(struct vhost_virtqueue *vq , unsigned int head , int len ) ;
int vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                     unsigned int count ) ;
void vhost_add_used_and_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                               unsigned int head , int len ) ;
void vhost_add_used_and_signal_n(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                                 struct vring_used_elem *heads , unsigned int count ) ;
void vhost_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
void vhost_disable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
bool vhost_enable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
int vhost_log_write(struct vhost_virtqueue *vq , struct vhost_log *log , unsigned int log_num ,
                    u64 len ) ;
void vhost_zerocopy_callback(struct ubuf_info *ubuf ) ;
int vhost_zerocopy_signal_used(struct vhost_virtqueue *vq ) ;
__inline static int vhost_has_feature(struct vhost_dev *dev , int bit )
{
  unsigned int acked_features ;
  unsigned int _________p1 ;
  int tmp ;
  {
  _________p1 = *((unsigned int volatile *)(& dev->acked_features));
  tmp = debug_lockdep_rcu_enabled();
  acked_features = _________p1;
  return ((int )((unsigned int )(1 << bit) & acked_features));
}
}
void vhost_enable_zcopy(int vq ) ;
static unsigned int vhost_zcopy_mask ;
static void vhost_poll_func(struct file *file , wait_queue_head_t *wqh , poll_table *pt )
{
  struct vhost_poll *poll ;
  poll_table const *__mptr ;
  {
  __mptr = (poll_table const *)pt;
  poll = (struct vhost_poll *)__mptr;
  poll->wqh = wqh;
  add_wait_queue(wqh, & poll->wait);
  return;
}
}
static int vhost_poll_wakeup(wait_queue_t *wait , unsigned int mode , int sync , void *key )
{
  struct vhost_poll *poll ;
  wait_queue_t const *__mptr ;
  {
  __mptr = (wait_queue_t const *)wait;
  poll = (struct vhost_poll *)__mptr + 0xffffffffffffffe8UL;
  if ((poll->mask & (unsigned long )key) == 0UL) {
    return (0);
  } else {
  }
  vhost_poll_queue(poll);
  return (0);
}
}
void vhost_work_init(struct vhost_work *work , void (*fn)(struct vhost_work * ) )
{
  struct lock_class_key __key ;
  unsigned int tmp ;
  {
  INIT_LIST_HEAD(& work->node);
  work->fn = fn;
  __init_waitqueue_head(& work->done, "&work->done", & __key);
  work->flushing = 0;
  tmp = 0U;
  work->done_seq = tmp;
  work->queue_seq = tmp;
  return;
}
}
void vhost_poll_init(struct vhost_poll *poll , void (*fn)(struct vhost_work * ) ,
                     unsigned long mask , struct vhost_dev *dev )
{
  {
  init_waitqueue_func_entry(& poll->wait, & vhost_poll_wakeup);
  init_poll_funcptr(& poll->table, & vhost_poll_func);
  poll->mask = mask;
  poll->dev = dev;
  vhost_work_init(& poll->work, fn);
  return;
}
}
void vhost_poll_start(struct vhost_poll *poll , struct file *file )
{
  unsigned long mask ;
  unsigned int tmp ;
  {
  tmp = (*((file->f_op)->poll))(file, & poll->table);
  mask = (unsigned long )tmp;
  if (mask != 0UL) {
    vhost_poll_wakeup(& poll->wait, 0U, 0, (void *)mask);
  } else {
  }
  return;
}
}
void vhost_poll_stop(struct vhost_poll *poll )
{
  {
  remove_wait_queue(poll->wqh, & poll->wait);
  return;
}
}
static bool vhost_work_seq_done(struct vhost_dev *dev , struct vhost_work *work ,
                                unsigned int seq )
{
  int left ;
  {
  spin_lock_irq(& dev->work_lock);
  left = (int )(seq - work->done_seq);
  spin_unlock_irq(& dev->work_lock);
  return (left <= 0);
}
}
static void vhost_work_flush(struct vhost_dev *dev , struct vhost_work *work )
{
  unsigned int seq ;
  int flushing ;
  bool tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  spin_lock_irq(& dev->work_lock);
  seq = work->queue_seq;
  work->flushing = work->flushing + 1;
  spin_unlock_irq(& dev->work_lock);
  tmp = vhost_work_seq_done(dev, work, seq);
  if ((int )tmp) {
    goto ldv_52461;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_52464:
  prepare_to_wait(& work->done, & __wait, 2);
  tmp___1 = vhost_work_seq_done(dev, work, seq);
  if ((int )tmp___1) {
    goto ldv_52463;
  } else {
  }
  schedule();
  goto ldv_52464;
  ldv_52463:
  finish_wait(& work->done, & __wait);
  ldv_52461:
  spin_lock_irq(& dev->work_lock);
  work->flushing = work->flushing - 1;
  flushing = work->flushing;
  spin_unlock_irq(& dev->work_lock);
  tmp___2 = ldv__builtin_expect(flushing < 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c"),
                         "i" (130), "i" (12UL));
    ldv_52465: ;
    goto ldv_52465;
  } else {
  }
  return;
}
}
void vhost_poll_flush(struct vhost_poll *poll )
{
  {
  vhost_work_flush(poll->dev, & poll->work);
  return;
}
}
void vhost_work_queue(struct vhost_dev *dev , struct vhost_work *work )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  tmp = spinlock_check(& dev->work_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = list_empty((struct list_head const *)(& work->node));
  if (tmp___0 != 0) {
    list_add_tail(& work->node, & dev->work_list);
    work->queue_seq = work->queue_seq + 1U;
    wake_up_process(dev->worker);
  } else {
  }
  spin_unlock_irqrestore(& dev->work_lock, flags);
  return;
}
}
void vhost_poll_queue(struct vhost_poll *poll )
{
  {
  vhost_work_queue(poll->dev, & poll->work);
  return;
}
}
static void vhost_vq_reset(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  {
  vq->num = 1U;
  vq->desc = 0;
  vq->avail = 0;
  vq->used = 0;
  vq->last_avail_idx = 0U;
  vq->avail_idx = 0U;
  vq->last_used_idx = 0U;
  vq->signalled_used = 0U;
  vq->signalled_used_valid = 0;
  vq->used_flags = 0U;
  vq->log_used = 0;
  vq->log_addr = 0xffffffffffffffffULL;
  vq->vhost_hlen = 0UL;
  vq->sock_hlen = 0UL;
  vq->private_data = 0;
  vq->log_base = 0;
  vq->error_ctx = 0;
  vq->error = 0;
  vq->kick = 0;
  vq->call_ctx = 0;
  vq->call = 0;
  vq->log_ctx = 0;
  vq->upend_idx = 0;
  vq->done_idx = 0;
  vq->ubufs = 0;
  return;
}
}
static int vhost_worker(void *data )
{
  struct vhost_dev *dev ;
  struct vhost_work *work ;
  unsigned int seq ;
  mm_segment_t oldfs ;
  struct thread_info *tmp ;
  struct thread_info *tmp___0 ;
  mm_segment_t __constr_expr_0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  bool tmp___6 ;
  struct list_head const *__mptr ;
  int tmp___7 ;
  struct task_struct *tmp___8 ;
  int tmp___9 ;
  struct thread_info *tmp___10 ;
  {
  dev = (struct vhost_dev *)data;
  work = 0;
  seq = seq;
  tmp = current_thread_info();
  oldfs = tmp->addr_limit;
  tmp___0 = current_thread_info();
  __constr_expr_0.seg = 140737488351232UL;
  tmp___0->addr_limit = __constr_expr_0;
  use_mm(dev->mm);
  ldv_52503:
  __ret = 1L;
  switch (8UL) {
  case 1UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_52494;
  case 2UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_52494;
  case 4UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_52494;
  case 8UL:
  tmp___4 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                       "cc");
  goto ldv_52494;
  default:
  __xchg_wrong_size();
  }
  ldv_52494:
  spin_lock_irq(& dev->work_lock);
  if ((unsigned long )work != (unsigned long )((struct vhost_work *)0)) {
    work->done_seq = seq;
    if (work->flushing != 0) {
      __wake_up(& work->done, 3U, 0, 0);
    } else {
    }
  } else {
  }
  tmp___6 = kthread_should_stop();
  if ((int )tmp___6) {
    spin_unlock_irq(& dev->work_lock);
    tmp___5 = get_current();
    tmp___5->state = 0L;
    goto ldv_52500;
  } else {
  }
  tmp___7 = list_empty((struct list_head const *)(& dev->work_list));
  if (tmp___7 == 0) {
    __mptr = (struct list_head const *)dev->work_list.next;
    work = (struct vhost_work *)__mptr;
    list_del_init(& work->node);
    seq = work->queue_seq;
  } else {
    work = 0;
  }
  spin_unlock_irq(& dev->work_lock);
  if ((unsigned long )work != (unsigned long )((struct vhost_work *)0)) {
    tmp___8 = get_current();
    tmp___8->state = 0L;
    (*(work->fn))(work);
    tmp___9 = need_resched();
    if (tmp___9 != 0) {
      schedule();
    } else {
    }
  } else {
    schedule();
  }
  goto ldv_52503;
  ldv_52500:
  unuse_mm(dev->mm);
  tmp___10 = current_thread_info();
  tmp___10->addr_limit = oldfs;
  return (0);
}
}
static void vhost_vq_free_iovecs(struct vhost_virtqueue *vq )
{
  {
  kfree((void const *)vq->indirect);
  vq->indirect = 0;
  kfree((void const *)vq->log);
  vq->log = 0;
  kfree((void const *)vq->heads);
  vq->heads = 0;
  kfree((void const *)vq->ubuf_info);
  vq->ubuf_info = 0;
  return;
}
}
void vhost_enable_zcopy(int vq )
{
  {
  vhost_zcopy_mask = (unsigned int )(1 << vq) | vhost_zcopy_mask;
  return;
}
}
static long vhost_dev_alloc_iovecs(struct vhost_dev *dev )
{
  int i ;
  bool zcopy ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  i = 0;
  goto ldv_52517;
  ldv_52516:
  tmp = kmalloc(16384UL, 208U);
  (dev->vqs + (unsigned long )i)->indirect = (struct iovec *)tmp;
  tmp___0 = kmalloc(16384UL, 208U);
  (dev->vqs + (unsigned long )i)->log = (struct vhost_log *)tmp___0;
  tmp___1 = kmalloc(8192UL, 208U);
  (dev->vqs + (unsigned long )i)->heads = (struct vring_used_elem *)tmp___1;
  zcopy = ((unsigned int )(1 << i) & vhost_zcopy_mask) != 0U;
  if ((int )zcopy) {
    tmp___2 = kmalloc(24576UL, 208U);
    (dev->vqs + (unsigned long )i)->ubuf_info = (struct ubuf_info *)tmp___2;
  } else {
  }
  if ((((unsigned long )(dev->vqs + (unsigned long )i)->indirect == (unsigned long )((struct iovec *)0) || (unsigned long )(dev->vqs + (unsigned long )i)->log == (unsigned long )((struct vhost_log *)0)) || (unsigned long )(dev->vqs + (unsigned long )i)->heads == (unsigned long )((struct vring_used_elem *)0)) || ((int )zcopy && (unsigned long )(dev->vqs + (unsigned long )i)->ubuf_info == (unsigned long )((struct ubuf_info *)0))) {
    goto err_nomem;
  } else {
  }
  i = i + 1;
  ldv_52517: ;
  if (dev->nvqs > i) {
    goto ldv_52516;
  } else {
  }
  return (0L);
  err_nomem: ;
  goto ldv_52520;
  ldv_52519:
  vhost_vq_free_iovecs(dev->vqs + (unsigned long )i);
  i = i - 1;
  ldv_52520: ;
  if (i >= 0) {
    goto ldv_52519;
  } else {
  }
  return (-12L);
}
}
static void vhost_dev_free_iovecs(struct vhost_dev *dev )
{
  int i ;
  {
  i = 0;
  goto ldv_52527;
  ldv_52526:
  vhost_vq_free_iovecs(dev->vqs + (unsigned long )i);
  i = i + 1;
  ldv_52527: ;
  if (dev->nvqs > i) {
    goto ldv_52526;
  } else {
  }
  return;
}
}
long vhost_dev_init(struct vhost_dev *dev , struct vhost_virtqueue *vqs , int nvqs )
{
  int i ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  dev->vqs = vqs;
  dev->nvqs = nvqs;
  __mutex_init(& dev->mutex, "&dev->mutex", & __key);
  dev->log_ctx = 0;
  dev->log_file = 0;
  dev->memory = 0;
  dev->mm = 0;
  spinlock_check(& dev->work_lock);
  __raw_spin_lock_init(& dev->work_lock.ldv_5957.rlock, "&(&dev->work_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& dev->work_list);
  dev->worker = 0;
  i = 0;
  goto ldv_52539;
  ldv_52538:
  (dev->vqs + (unsigned long )i)->log = 0;
  (dev->vqs + (unsigned long )i)->indirect = 0;
  (dev->vqs + (unsigned long )i)->heads = 0;
  (dev->vqs + (unsigned long )i)->ubuf_info = 0;
  (dev->vqs + (unsigned long )i)->dev = dev;
  __mutex_init(& (dev->vqs + (unsigned long )i)->mutex, "&dev->vqs[i].mutex", & __key___1);
  vhost_vq_reset(dev, dev->vqs + (unsigned long )i);
  if ((unsigned long )(dev->vqs + (unsigned long )i)->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_init(& (dev->vqs + (unsigned long )i)->poll, (dev->vqs + (unsigned long )i)->handle_kick,
                    1UL, dev);
  } else {
  }
  i = i + 1;
  ldv_52539: ;
  if (dev->nvqs > i) {
    goto ldv_52538;
  } else {
  }
  return (0L);
}
}
long vhost_dev_check_owner(struct vhost_dev *dev )
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  return ((unsigned long )dev->mm == (unsigned long )tmp->mm ? 0L : -1L);
}
}
static void vhost_attach_cgroups_work(struct vhost_work *work )
{
  struct vhost_attach_cgroups_struct *s ;
  struct vhost_work const *__mptr ;
  struct task_struct *tmp ;
  {
  __mptr = (struct vhost_work const *)work;
  s = (struct vhost_attach_cgroups_struct *)__mptr;
  tmp = get_current();
  s->ret = cgroup_attach_task_all(s->owner, tmp);
  return;
}
}
static int vhost_attach_cgroups(struct vhost_dev *dev )
{
  struct vhost_attach_cgroups_struct attach ;
  {
  attach.owner = get_current();
  vhost_work_init(& attach.work, & vhost_attach_cgroups_work);
  vhost_work_queue(dev, & attach.work);
  vhost_work_flush(dev, & attach.work);
  return (attach.ret);
}
}
static long vhost_dev_set_owner(struct vhost_dev *dev )
{
  struct task_struct *worker ;
  int err ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    err = -16;
    goto err_mm;
  } else {
  }
  tmp = get_current();
  dev->mm = get_task_mm(tmp);
  tmp___0 = get_current();
  worker = kthread_create_on_node(& vhost_worker, (void *)dev, -1, "vhost-%d", tmp___0->pid);
  tmp___2 = IS_ERR((void const *)worker);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)worker);
    err = (int )tmp___1;
    goto err_worker;
  } else {
  }
  dev->worker = worker;
  wake_up_process(worker);
  err = vhost_attach_cgroups(dev);
  if (err != 0) {
    goto err_cgroup;
  } else {
  }
  tmp___3 = vhost_dev_alloc_iovecs(dev);
  err = (int )tmp___3;
  if (err != 0) {
    goto err_cgroup;
  } else {
  }
  return (0L);
  err_cgroup:
  kthread_stop(worker);
  dev->worker = 0;
  err_worker: ;
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    mmput(dev->mm);
  } else {
  }
  dev->mm = 0;
  err_mm: ;
  return ((long )err);
}
}
long vhost_dev_reset_owner(struct vhost_dev *dev )
{
  struct vhost_memory *memory ;
  void *tmp ;
  {
  tmp = kmalloc(8UL, 208U);
  memory = (struct vhost_memory *)tmp;
  if ((unsigned long )memory == (unsigned long )((struct vhost_memory *)0)) {
    return (-12L);
  } else {
  }
  vhost_dev_cleanup(dev, 1);
  memory->nregions = 0U;
  dev->memory = memory;
  return (0L);
}
}
int vhost_zerocopy_signal_used(struct vhost_virtqueue *vq )
{
  int i ;
  int j ;
  {
  j = 0;
  i = vq->done_idx;
  goto ldv_52577;
  ldv_52576: ;
  if ((vq->heads + (unsigned long )i)->len == 1U) {
    (vq->heads + (unsigned long )i)->len = 0U;
    vhost_add_used_and_signal(vq->dev, vq, (vq->heads + (unsigned long )i)->id, 0);
    j = j + 1;
  } else {
    goto ldv_52575;
  }
  i = (i + 1) % 1024;
  ldv_52577: ;
  if (vq->upend_idx != i) {
    goto ldv_52576;
  } else {
  }
  ldv_52575: ;
  if (j != 0) {
    vq->done_idx = i;
  } else {
  }
  return (j);
}
}
void vhost_dev_cleanup(struct vhost_dev *dev , bool locked )
{
  int i ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int __ret_warn_on ;
  int tmp___1 ;
  long tmp___2 ;
  {
  i = 0;
  goto ldv_52584;
  ldv_52583: ;
  if ((unsigned long )(dev->vqs + (unsigned long )i)->kick != (unsigned long )((struct file *)0) && (unsigned long )(dev->vqs + (unsigned long )i)->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_stop(& (dev->vqs + (unsigned long )i)->poll);
    vhost_poll_flush(& (dev->vqs + (unsigned long )i)->poll);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->ubufs != (unsigned long )((struct vhost_ubuf_ref *)0)) {
    vhost_ubuf_put_and_wait((dev->vqs + (unsigned long )i)->ubufs);
  } else {
  }
  vhost_zerocopy_signal_used(dev->vqs + (unsigned long )i);
  if ((unsigned long )(dev->vqs + (unsigned long )i)->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put((dev->vqs + (unsigned long )i)->error_ctx);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->error != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->error);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->kick != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->kick);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->call_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put((dev->vqs + (unsigned long )i)->call_ctx);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->call != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->call);
  } else {
  }
  vhost_vq_reset(dev, dev->vqs + (unsigned long )i);
  i = i + 1;
  ldv_52584: ;
  if (dev->nvqs > i) {
    goto ldv_52583;
  } else {
  }
  vhost_dev_free_iovecs(dev);
  if ((unsigned long )dev->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(dev->log_ctx);
  } else {
  }
  dev->log_ctx = 0;
  if ((unsigned long )dev->log_file != (unsigned long )((struct file *)0)) {
    fput(dev->log_file);
  } else {
  }
  dev->log_file = 0;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& dev->mutex.dep_map);
    if ((int )locked != tmp___0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                             480, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  kfree((void const *)dev->memory);
  dev->memory = 0;
  tmp___1 = list_empty((struct list_head const *)(& dev->work_list));
  __ret_warn_on = tmp___1 == 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                       482);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )dev->worker != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(dev->worker);
    dev->worker = 0;
  } else {
  }
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    mmput(dev->mm);
  } else {
  }
  dev->mm = 0;
  return;
}
}
static int log_access_ok(void *log_base , u64 addr , unsigned long sz )
{
  u64 a ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp ;
  long tmp___0 ;
  {
  a = addr / 32768ULL;
  if ((unsigned long long )(~ ((unsigned long )log_base)) < a) {
    return (0);
  } else {
  }
  tmp = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" (log_base + a),
            "g" ((long )((sz + 32767UL) / 32768UL)), "rm" (tmp->addr_limit.seg));
  tmp___0 = ldv__builtin_expect(flag == 0UL, 1L);
  return ((int )tmp___0);
}
}
static int vq_memory_access_ok(void *log_base , struct vhost_memory *mem , int log_all )
{
  int i ;
  struct vhost_memory_region *m ;
  unsigned long a ;
  int tmp ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )mem == (unsigned long )((struct vhost_memory *)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_52611;
  ldv_52610:
  m = (struct vhost_memory_region *)(& mem->regions) + (unsigned long )i;
  a = (unsigned long )m->userspace_addr;
  tmp___0 = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" ((void *)a),
            "g" ((long )m->memory_size), "rm" (tmp___0->addr_limit.seg));
  tmp___1 = ldv__builtin_expect(flag == 0UL, 1L);
  if (tmp___1 == 0L) {
    return (0);
  } else
  if (log_all != 0) {
    tmp = log_access_ok(log_base, m->guest_phys_addr, (unsigned long )m->memory_size);
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_52611: ;
  if ((__u32 )i < mem->nregions) {
    goto ldv_52610;
  } else {
  }
  return (1);
}
}
static int memory_access_ok(struct vhost_dev *d , struct vhost_memory *mem , int log_all )
{
  int i ;
  int ok ;
  {
  i = 0;
  goto ldv_52621;
  ldv_52620:
  ldv_mutex_lock_12(& (d->vqs + (unsigned long )i)->mutex);
  if ((unsigned long )(d->vqs + (unsigned long )i)->private_data != (unsigned long )((void *)0)) {
    ok = vq_memory_access_ok((d->vqs + (unsigned long )i)->log_base, mem, log_all);
  } else {
    ok = 1;
  }
  ldv_mutex_unlock_13(& (d->vqs + (unsigned long )i)->mutex);
  if (ok == 0) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_52621: ;
  if (d->nvqs > i) {
    goto ldv_52620;
  } else {
  }
  return (1);
}
}
static int vq_access_ok(struct vhost_dev *d , unsigned int num , struct vring_desc *desc ,
                        struct vring_avail *avail , struct vring_used *used )
{
  size_t s ;
  int tmp ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp___0 ;
  long tmp___1 ;
  unsigned long flag___0 ;
  unsigned long roksum___0 ;
  struct thread_info *tmp___2 ;
  long tmp___3 ;
  unsigned long flag___1 ;
  unsigned long roksum___1 ;
  struct thread_info *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  tmp = vhost_has_feature(d, 29);
  s = tmp != 0 ? 2UL : 0UL;
  tmp___0 = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" (desc),
            "g" ((long )((unsigned long )num * 16UL)), "rm" (tmp___0->addr_limit.seg));
  tmp___1 = ldv__builtin_expect(flag == 0UL, 1L);
  if (tmp___1 != 0L) {
    tmp___2 = current_thread_info();
    __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag___0), "=r" (roksum___0): "1" (avail),
              "g" ((long )(((unsigned long )num + 2UL) * 2UL + s)), "rm" (tmp___2->addr_limit.seg));
    tmp___3 = ldv__builtin_expect(flag___0 == 0UL, 1L);
    if (tmp___3 != 0L) {
      tmp___4 = current_thread_info();
      __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag___1),
                "=r" (roksum___1): "1" (used), "g" ((long )(((unsigned long )num * 8UL + s) + 4UL)),
                "rm" (tmp___4->addr_limit.seg));
      tmp___5 = ldv__builtin_expect(flag___1 == 0UL, 1L);
      if (tmp___5 != 0L) {
        tmp___6 = 1;
      } else {
        tmp___6 = 0;
      }
    } else {
      tmp___6 = 0;
    }
  } else {
    tmp___6 = 0;
  }
  return (tmp___6);
}
}
int vhost_log_access_ok(struct vhost_dev *dev )
{
  struct vhost_memory *mp ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& dev->mutex.dep_map);
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                             573, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  mp = dev->memory;
  tmp___1 = memory_access_ok(dev, mp, 1);
  return (tmp___1);
}
}
static int vq_log_access_ok(struct vhost_dev *d , struct vhost_virtqueue *vq , void *log_base )
{
  struct vhost_memory *mp ;
  size_t s ;
  int tmp ;
  bool __warned ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = vhost_has_feature(d, 29);
  s = tmp != 0 ? 2UL : 0UL;
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    tmp___1 = lock_is_held(& vq->mutex.dep_map);
    if (tmp___1 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                             586, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  mp = (vq->dev)->memory;
  tmp___2 = vhost_has_feature(vq->dev, 26);
  tmp___3 = vq_memory_access_ok(log_base, mp, tmp___2);
  if (tmp___3 != 0) {
    if (! vq->log_used) {
      tmp___5 = 1;
    } else {
      tmp___4 = log_access_ok(log_base, vq->log_addr, ((unsigned long )vq->num * 8UL + s) + 4UL);
      if (tmp___4 != 0) {
        tmp___5 = 1;
      } else {
        tmp___5 = 0;
      }
    }
  } else {
    tmp___5 = 0;
  }
  return (tmp___5);
}
}
int vhost_vq_access_ok(struct vhost_virtqueue *vq )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = vq_access_ok(vq->dev, vq->num, vq->desc, vq->avail, vq->used);
  if (tmp != 0) {
    tmp___0 = vq_log_access_ok(vq->dev, vq, vq->log_base);
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
static long vhost_set_memory(struct vhost_dev *d , struct vhost_memory *m )
{
  struct vhost_memory mem ;
  struct vhost_memory *newmem ;
  struct vhost_memory *oldmem ;
  unsigned long size ;
  unsigned long tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool __warned ;
  int tmp___4 ;
  int tmp___5 ;
  {
  size = 8UL;
  tmp = copy_from_user((void *)(& mem), (void const *)m, size);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  if (mem.padding != 0U) {
    return (-95L);
  } else {
  }
  if (mem.nregions > 64U) {
    return (-7L);
  } else {
  }
  tmp___0 = kmalloc((unsigned long )mem.nregions * 32UL + size, 208U);
  newmem = (struct vhost_memory *)tmp___0;
  if ((unsigned long )newmem == (unsigned long )((struct vhost_memory *)0)) {
    return (-12L);
  } else {
  }
  __len = size;
  __ret = memcpy((void *)newmem, (void const *)(& mem), __len);
  tmp___1 = copy_from_user((void *)(& newmem->regions), (void const *)(& m->regions),
                           (unsigned long )mem.nregions * 32UL);
  if (tmp___1 != 0UL) {
    kfree((void const *)newmem);
    return (-14L);
  } else {
  }
  tmp___2 = vhost_has_feature(d, 26);
  tmp___3 = memory_access_ok(d, newmem, tmp___2);
  if (tmp___3 == 0) {
    kfree((void const *)newmem);
    return (-14L);
  } else {
  }
  tmp___4 = debug_lockdep_rcu_enabled();
  if (tmp___4 != 0 && ! __warned) {
    tmp___5 = lock_is_held(& d->mutex.dep_map);
    if (tmp___5 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                             630, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  oldmem = d->memory;
  __asm__ volatile ("": : : "memory");
  d->memory = newmem;
  synchronize_rcu();
  kfree((void const *)oldmem);
  return (0L);
}
}
static long vhost_set_vring(struct vhost_dev *d , int ioctl , void *argp )
{
  struct file *eventfp ;
  struct file *filep ;
  bool pollstart ;
  bool pollstop ;
  struct eventfd_ctx *ctx ;
  u32 *idxp ;
  struct vhost_virtqueue *vq ;
  struct vhost_vring_state s ;
  struct vhost_vring_file f ;
  struct vhost_vring_addr a ;
  u32 idx ;
  long r ;
  int __ret_gu ;
  unsigned long __val_gu ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long tmp___5 ;
  struct file *tmp___6 ;
  long tmp___7 ;
  struct file *tmp___8 ;
  unsigned long tmp___9 ;
  struct file *tmp___10 ;
  long tmp___11 ;
  struct eventfd_ctx *tmp___12 ;
  unsigned long tmp___13 ;
  struct file *tmp___14 ;
  long tmp___15 ;
  struct eventfd_ctx *tmp___16 ;
  {
  filep = 0;
  pollstart = 0;
  pollstop = 0;
  ctx = 0;
  idxp = (u32 *)argp;
  might_fault();
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_52691;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_52691;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_52691;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_52691;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_52691;
  }
  ldv_52691:
  idx = (unsigned int )__val_gu;
  r = (long )__ret_gu;
  if (r < 0L) {
    return (r);
  } else {
  }
  if ((u32 )d->nvqs <= idx) {
    return (-105L);
  } else {
  }
  vq = d->vqs + (unsigned long )idx;
  ldv_mutex_lock_14(& vq->mutex);
  switch (ioctl) {
  case 1074310928: ;
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    r = -16L;
    goto ldv_52698;
  } else {
  }
  tmp = copy_from_user((void *)(& s), (void const *)argp, 8UL);
  if (tmp != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if ((s.num == 0U || s.num > 65535U) || (s.num & (s.num - 1U)) != 0U) {
    r = -22L;
    goto ldv_52698;
  } else {
  }
  vq->num = s.num;
  goto ldv_52698;
  case 1074310930: ;
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    r = -16L;
    goto ldv_52698;
  } else {
  }
  tmp___0 = copy_from_user((void *)(& s), (void const *)argp, 8UL);
  if (tmp___0 != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if (s.num > 65535U) {
    r = -22L;
    goto ldv_52698;
  } else {
  }
  vq->last_avail_idx = (u16 )s.num;
  vq->avail_idx = vq->last_avail_idx;
  goto ldv_52698;
  case -1073172718:
  s.index = idx;
  s.num = (unsigned int )vq->last_avail_idx;
  tmp___1 = copy_to_user(argp, (void const *)(& s), 8U);
  if (tmp___1 != 0) {
    r = -14L;
  } else {
  }
  goto ldv_52698;
  case 1076408081:
  tmp___2 = copy_from_user((void *)(& a), (void const *)argp, 40UL);
  if (tmp___2 != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if ((a.flags & 4294967294U) != 0U) {
    r = -95L;
    goto ldv_52698;
  } else {
  }
  if (((int )a.avail_user_addr & 1 || (a.used_user_addr & 7ULL) != 0ULL) || (a.log_guest_addr & 7ULL) != 0ULL) {
    r = -22L;
    goto ldv_52698;
  } else {
  }
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    tmp___3 = vq_access_ok(d, vq->num, (struct vring_desc *)a.desc_user_addr, (struct vring_avail *)a.avail_user_addr,
                           (struct vring_used *)a.used_user_addr);
    if (tmp___3 == 0) {
      r = -22L;
      goto ldv_52698;
    } else {
    }
    if ((int )a.flags & 1) {
      tmp___4 = log_access_ok(vq->log_base, a.log_guest_addr, (unsigned long )vq->num * 8UL + 4UL);
      if (tmp___4 == 0) {
        r = -22L;
        goto ldv_52698;
      } else {
      }
    } else {
    }
  } else {
  }
  vq->log_used = ((int )a.flags & 1) != 0;
  vq->desc = (struct vring_desc *)a.desc_user_addr;
  vq->avail = (struct vring_avail *)a.avail_user_addr;
  vq->log_addr = a.log_guest_addr;
  vq->used = (struct vring_used *)a.used_user_addr;
  goto ldv_52698;
  case 1074310944:
  tmp___5 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___5 != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if (f.fd != -1) {
    tmp___6 = eventfd_fget(f.fd);
    eventfp = tmp___6;
  } else {
    eventfp = 0;
  }
  tmp___7 = IS_ERR((void const *)eventfp);
  if (tmp___7 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_52698;
  } else {
  }
  if ((unsigned long )vq->kick != (unsigned long )eventfp) {
    filep = vq->kick;
    pollstop = (unsigned long )filep != (unsigned long )((struct file *)0);
    tmp___8 = eventfp;
    vq->kick = tmp___8;
    pollstart = (unsigned long )tmp___8 != (unsigned long )((struct file *)0);
  } else {
    filep = eventfp;
  }
  goto ldv_52698;
  case 1074310945:
  tmp___9 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___9 != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if (f.fd != -1) {
    tmp___10 = eventfd_fget(f.fd);
    eventfp = tmp___10;
  } else {
    eventfp = 0;
  }
  tmp___11 = IS_ERR((void const *)eventfp);
  if (tmp___11 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_52698;
  } else {
  }
  if ((unsigned long )vq->call != (unsigned long )eventfp) {
    filep = vq->call;
    ctx = vq->call_ctx;
    vq->call = eventfp;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___12 = eventfd_ctx_fileget(eventfp);
      vq->call_ctx = tmp___12;
    } else {
      vq->call_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  goto ldv_52698;
  case 1074310946:
  tmp___13 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___13 != 0UL) {
    r = -14L;
    goto ldv_52698;
  } else {
  }
  if (f.fd != -1) {
    tmp___14 = eventfd_fget(f.fd);
    eventfp = tmp___14;
  } else {
    eventfp = 0;
  }
  tmp___15 = IS_ERR((void const *)eventfp);
  if (tmp___15 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_52698;
  } else {
  }
  if ((unsigned long )vq->error != (unsigned long )eventfp) {
    filep = vq->error;
    vq->error = eventfp;
    ctx = vq->error_ctx;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___16 = eventfd_ctx_fileget(eventfp);
      vq->error_ctx = tmp___16;
    } else {
      vq->error_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  goto ldv_52698;
  default:
  r = -515L;
  }
  ldv_52698: ;
  if ((int )pollstop && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_stop(& vq->poll);
  } else {
  }
  if ((unsigned long )ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(ctx);
  } else {
  }
  if ((unsigned long )filep != (unsigned long )((struct file *)0)) {
    fput(filep);
  } else {
  }
  if ((int )pollstart && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_start(& vq->poll, vq->kick);
  } else {
  }
  ldv_mutex_unlock_15(& vq->mutex);
  if ((int )pollstop && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_flush(& vq->poll);
  } else {
  }
  return (r);
}
}
long vhost_dev_ioctl(struct vhost_dev *d , unsigned int ioctl , unsigned long arg )
{
  void *argp ;
  struct file *eventfp ;
  struct file *filep ;
  struct eventfd_ctx *ctx ;
  u64 p ;
  long r ;
  int i ;
  int fd ;
  unsigned long tmp ;
  struct vhost_virtqueue *vq ;
  void *base ;
  int tmp___0 ;
  int __ret_gu ;
  unsigned long __val_gu ;
  struct file *tmp___1 ;
  long tmp___2 ;
  struct eventfd_ctx *tmp___3 ;
  {
  argp = (void *)arg;
  filep = 0;
  ctx = 0;
  if (ioctl == 44801U) {
    r = vhost_dev_set_owner(d);
    goto done;
  } else {
  }
  r = vhost_dev_check_owner(d);
  if (r != 0L) {
    goto done;
  } else {
  }
  switch (ioctl) {
  case 1074310915U:
  r = vhost_set_memory(d, (struct vhost_memory *)argp);
  goto ldv_52721;
  case 1074310916U:
  tmp = copy_from_user((void *)(& p), (void const *)argp, 8UL);
  if (tmp != 0UL) {
    r = -14L;
    goto ldv_52721;
  } else {
  }
  i = 0;
  goto ldv_52726;
  ldv_52725:
  base = (void *)p;
  vq = d->vqs + (unsigned long )i;
  ldv_mutex_lock_16(& vq->mutex);
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    tmp___0 = vq_log_access_ok(d, vq, base);
    if (tmp___0 == 0) {
      r = -14L;
    } else {
      vq->log_base = base;
    }
  } else {
    vq->log_base = base;
  }
  ldv_mutex_unlock_17(& vq->mutex);
  i = i + 1;
  ldv_52726: ;
  if (d->nvqs > i) {
    goto ldv_52725;
  } else {
  }
  goto ldv_52721;
  case 1074048775U:
  might_fault();
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_52732;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_52732;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_52732;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_52732;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_52732;
  }
  ldv_52732:
  fd = (int )__val_gu;
  r = (long )__ret_gu;
  if (r < 0L) {
    goto ldv_52721;
  } else {
  }
  if (fd != -1) {
    tmp___1 = eventfd_fget(fd);
    eventfp = tmp___1;
  } else {
    eventfp = 0;
  }
  tmp___2 = IS_ERR((void const *)eventfp);
  if (tmp___2 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_52721;
  } else {
  }
  if ((unsigned long )d->log_file != (unsigned long )eventfp) {
    filep = d->log_file;
    ctx = d->log_ctx;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___3 = eventfd_ctx_fileget(eventfp);
      d->log_ctx = tmp___3;
    } else {
      d->log_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  i = 0;
  goto ldv_52739;
  ldv_52738:
  ldv_mutex_lock_18(& (d->vqs + (unsigned long )i)->mutex);
  (d->vqs + (unsigned long )i)->log_ctx = d->log_ctx;
  ldv_mutex_unlock_19(& (d->vqs + (unsigned long )i)->mutex);
  i = i + 1;
  ldv_52739: ;
  if (d->nvqs > i) {
    goto ldv_52738;
  } else {
  }
  if ((unsigned long )ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(ctx);
  } else {
  }
  if ((unsigned long )filep != (unsigned long )((struct file *)0)) {
    fput(filep);
  } else {
  }
  goto ldv_52721;
  default:
  r = vhost_set_vring(d, (int )ioctl, argp);
  goto ldv_52721;
  }
  ldv_52721: ;
  done: ;
  return (r);
}
}
static struct vhost_memory_region const *find_region(struct vhost_memory *mem ,
                                                       __u64 addr , __u32 len )
{
  struct vhost_memory_region *reg ;
  int i ;
  {
  i = 0;
  goto ldv_52750;
  ldv_52749:
  reg = (struct vhost_memory_region *)(& mem->regions) + (unsigned long )i;
  if (reg->guest_phys_addr <= addr && (reg->guest_phys_addr + reg->memory_size) - 1ULL >= addr) {
    return ((struct vhost_memory_region const *)reg);
  } else {
  }
  i = i + 1;
  ldv_52750: ;
  if ((__u32 )i < mem->nregions) {
    goto ldv_52749;
  } else {
  }
  return (0);
}
}
static int set_bit_to_user(int nr , void *addr )
{
  unsigned long log ;
  struct page *page ;
  void *base ;
  int bit ;
  int r ;
  long tmp ;
  {
  log = (unsigned long )addr;
  bit = (int )(((unsigned int )log & 4095U) * 8U + (unsigned int )nr);
  r = get_user_pages_fast(log, 1, 1, & page);
  if (r < 0) {
    return (r);
  } else {
  }
  tmp = ldv__builtin_expect(r != 1, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c"),
                         "i" (944), "i" (12UL));
    ldv_52761: ;
    goto ldv_52761;
  } else {
  }
  base = kmap_atomic(page);
  set_bit((unsigned int )bit, (unsigned long volatile *)base);
  __kunmap_atomic(base);
  set_page_dirty_lock(page);
  put_page(page);
  return (0);
}
}
static int log_write(void *log_base , u64 write_address , u64 write_length )
{
  u64 write_page ;
  int r ;
  u64 base ;
  u64 log ;
  int bit ;
  {
  write_page = write_address / 4096ULL;
  if (write_length == 0ULL) {
    return (0);
  } else {
  }
  write_length = (write_address & 4095ULL) + write_length;
  ldv_52773:
  base = (unsigned long long )log_base;
  log = write_page / 8ULL + base;
  bit = (int )write_page & 7;
  r = set_bit_to_user(bit, (void *)log);
  if (r < 0) {
    return (r);
  } else {
  }
  if (write_length <= 4096ULL) {
    goto ldv_52772;
  } else {
  }
  write_length = write_length - 4096ULL;
  write_page = write_page + 1ULL;
  goto ldv_52773;
  ldv_52772: ;
  return (r);
}
}
int vhost_log_write(struct vhost_virtqueue *vq , struct vhost_log *log , unsigned int log_num ,
                    u64 len )
{
  int i ;
  int r ;
  u64 l ;
  u64 _min1 ;
  u64 _min2 ;
  {
  __asm__ volatile ("": : : "memory");
  i = 0;
  goto ldv_52787;
  ldv_52786:
  _min1 = (log + (unsigned long )i)->len;
  _min2 = len;
  l = _min1 < _min2 ? _min1 : _min2;
  r = log_write(vq->log_base, (log + (unsigned long )i)->addr, l);
  if (r < 0) {
    return (r);
  } else {
  }
  len = len - l;
  if (len == 0ULL) {
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_52787: ;
  if ((unsigned int )i < log_num) {
    goto ldv_52786;
  } else {
  }
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c"),
                       "i" (999), "i" (12UL));
  ldv_52789: ;
  goto ldv_52789;
  return (0);
}
}
static int vhost_update_used_flags(struct vhost_virtqueue *vq )
{
  void *used ;
  int __pu_err ;
  long tmp ;
  {
  __pu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52796;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52796;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52796;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52796;
  default:
  __put_user_bad();
  }
  ldv_52796: ;
  if (__pu_err < 0) {
    return (-14);
  } else {
  }
  tmp = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("": : : "memory");
    used = (void *)(& (vq->used)->flags);
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vhost_update_avail_event(struct vhost_virtqueue *vq , u16 avail_event )
{
  int __pu_err ;
  void *used ;
  long tmp ;
  {
  __pu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_52808;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_52808;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_52808;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_52808;
  default:
  __put_user_bad();
  }
  ldv_52808: ;
  if (__pu_err != 0) {
    return (-14);
  } else {
  }
  tmp = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("": : : "memory");
    used = (void *)(& (vq->used)->ring) + (unsigned long )vq->num;
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (0);
}
}
int vhost_init_used(struct vhost_virtqueue *vq )
{
  int r ;
  int __ret_gu ;
  unsigned long __val_gu ;
  {
  if ((unsigned long )vq->private_data == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  r = vhost_update_used_flags(vq);
  if (r != 0) {
    return (r);
  } else {
  }
  vq->signalled_used_valid = 0;
  might_fault();
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_52822;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_52822;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_52822;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_52822;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_52822;
  }
  ldv_52822:
  vq->last_used_idx = (unsigned short )__val_gu;
  return (__ret_gu);
}
}
static int translate_desc(struct vhost_dev *dev , u64 addr , u32 len , struct iovec *iov ,
                          int iov_size )
{
  struct vhost_memory_region const *reg ;
  struct vhost_memory *mem ;
  struct iovec *_iov ;
  u64 s ;
  int ret ;
  struct vhost_memory *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  u64 size ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned long long _min1 ;
  u64 _min2 ;
  {
  s = 0ULL;
  ret = 0;
  rcu_read_lock();
  _________p1 = *((struct vhost_memory * volatile *)(& dev->memory));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_read_lock_held();
    if (tmp___0 == 0 && 1) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c",
                             1065, "suspicious rcu_dereference_check() usage");
    } else {
    }
  } else {
  }
  mem = _________p1;
  goto ldv_52849;
  ldv_52848:
  tmp___1 = ldv__builtin_expect(ret >= iov_size, 0L);
  if (tmp___1 != 0L) {
    ret = -105;
    goto ldv_52844;
  } else {
  }
  reg = find_region(mem, addr, len);
  tmp___2 = ldv__builtin_expect((unsigned long )reg == (unsigned long )((struct vhost_memory_region const *)0),
                             0L);
  if (tmp___2 != 0L) {
    ret = -14;
    goto ldv_52844;
  } else {
  }
  _iov = iov + (unsigned long )ret;
  size = ((unsigned long long )reg->memory_size - addr) + (unsigned long long )reg->guest_phys_addr;
  _min1 = (unsigned long long )len - s;
  _min2 = size;
  _iov->iov_len = (__kernel_size_t )(_min1 < _min2 ? _min1 : _min2);
  _iov->iov_base = (void *)(((unsigned long long )reg->userspace_addr + addr) - (unsigned long long )reg->guest_phys_addr);
  s = s + size;
  addr = addr + size;
  ret = ret + 1;
  ldv_52849: ;
  if ((unsigned long long )len > s) {
    goto ldv_52848;
  } else {
  }
  ldv_52844:
  rcu_read_unlock();
  return (ret);
}
}
static unsigned int next_desc(struct vring_desc *desc )
{
  unsigned int next ;
  {
  if (((int )desc->flags & 1) == 0) {
    return (4294967295U);
  } else {
  }
  next = (unsigned int )desc->next;
  return (next);
}
}
static int get_indirect(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                        unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                        struct vhost_log *log , unsigned int *log_num , struct vring_desc *indirect )
{
  struct vring_desc desc ;
  unsigned int i ;
  unsigned int count ;
  unsigned int found ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  unsigned int iov_count ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___6 ;
  long tmp___15 ;
  long tmp___16 ;
  {
  i = 0U;
  found = 0U;
  tmp___0 = ldv__builtin_expect((indirect->len & 15U) != 0U, 0L);
  if (tmp___0 != 0L) {
    descriptor.modname = "tcm_vhost";
    descriptor.function = "get_indirect";
    descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor.format = "Invalid length in indirect descriptor: len 0x%llx not multiple of 0x%zx\n";
    descriptor.lineno = 1127U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Invalid length in indirect descriptor: len 0x%llx not multiple of 0x%zx\n",
                         (unsigned long long )indirect->len, 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = translate_desc(dev, indirect->addr, indirect->len, vq->indirect, 1024);
  tmp___2 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___2 != 0L) {
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "get_indirect";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___0.format = "Translation failure %d in indirect.\n";
    descriptor___0.lineno = 1134U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Translation failure %d in indirect.\n",
                         ret);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  count = indirect->len / 16U;
  tmp___4 = ldv__builtin_expect(count > 65536U, 0L);
  if (tmp___4 != 0L) {
    descriptor___1.modname = "tcm_vhost";
    descriptor___1.function = "get_indirect";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___1.format = "Indirect buffer length too big: %d\n";
    descriptor___1.lineno = 1147U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Indirect buffer length too big: %d\n",
                         indirect->len);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-7);
  } else {
  }
  ldv_52880:
  iov_count = *in_num + *out_num;
  found = found + 1U;
  tmp___6 = ldv__builtin_expect(found > count, 0L);
  if (tmp___6 != 0L) {
    descriptor___2.modname = "tcm_vhost";
    descriptor___2.function = "get_indirect";
    descriptor___2.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___2.format = "Loop detected: last one at %u indirect size %u\n";
    descriptor___2.lineno = 1156U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Loop detected: last one at %u indirect size %u\n",
                         i, count);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___8 = memcpy_fromiovec((unsigned char *)(& desc), vq->indirect, 16);
  tmp___9 = ldv__builtin_expect(tmp___8 != 0, 0L);
  if (tmp___9 != 0L) {
    descriptor___3.modname = "tcm_vhost";
    descriptor___3.function = "get_indirect";
    descriptor___3.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___3.format = "Failed indirect descriptor: idx %d, %zx\n";
    descriptor___3.lineno = 1162U;
    descriptor___3.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "Failed indirect descriptor: idx %d, %zx\n",
                         i, (unsigned long )indirect->addr + (unsigned long )i * 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___11 = ldv__builtin_expect(((int )desc.flags & 4) != 0, 0L);
  if (tmp___11 != 0L) {
    descriptor___4.modname = "tcm_vhost";
    descriptor___4.function = "get_indirect";
    descriptor___4.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___4.format = "Nested indirect descriptor: idx %d, %zx\n";
    descriptor___4.lineno = 1167U;
    descriptor___4.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Nested indirect descriptor: idx %d, %zx\n",
                         i, (unsigned long )indirect->addr + (unsigned long )i * 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = translate_desc(dev, desc.addr, desc.len, iov + (unsigned long )iov_count,
                       (int )(iov_size - iov_count));
  tmp___13 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___13 != 0L) {
    descriptor___5.modname = "tcm_vhost";
    descriptor___5.function = "get_indirect";
    descriptor___5.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___5.format = "Translation failure %d indirect idx %d\n";
    descriptor___5.lineno = 1175U;
    descriptor___5.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "Translation failure %d indirect idx %d\n",
                         ret, i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  if (((int )desc.flags & 2) != 0) {
    *in_num = *in_num + (unsigned int )ret;
    tmp___14 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                                0L);
    if (tmp___14 != 0L) {
      (log + (unsigned long )*log_num)->addr = desc.addr;
      (log + (unsigned long )*log_num)->len = (u64 )desc.len;
      *log_num = *log_num + 1U;
    } else {
    }
  } else {
    tmp___16 = ldv__builtin_expect(*in_num != 0U, 0L);
    if (tmp___16 != 0L) {
      descriptor___6.modname = "tcm_vhost";
      descriptor___6.function = "get_indirect";
      descriptor___6.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor___6.format = "Indirect descriptor has out after in: idx %d\n";
      descriptor___6.lineno = 1191U;
      descriptor___6.flags = 0U;
      tmp___15 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___15 != 0L) {
        __dynamic_pr_debug(& descriptor___6, "Indirect descriptor has out after in: idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (-22);
    } else {
    }
    *out_num = *out_num + (unsigned int )ret;
  }
  i = next_desc(& desc);
  if (i != 4294967295U) {
    goto ldv_52880;
  } else {
  }
  return (0);
}
}
int vhost_get_vq_desc(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                      unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                      struct vhost_log *log , unsigned int *log_num )
{
  struct vring_desc desc ;
  unsigned int i ;
  unsigned int head ;
  unsigned int found ;
  u16 last_avail_idx ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  int __gu_err___0 ;
  unsigned long __gu_val___0 ;
  int tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  long tmp___10 ;
  unsigned int iov_count ;
  struct _ddebug descriptor___3 ;
  long tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  long tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___5 ;
  long tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___6 ;
  long tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___7 ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___8 ;
  long tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  {
  found = 0U;
  last_avail_idx = vq->last_avail_idx;
  __gu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_52901;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_52901;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_52901;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_52901;
  default:
  tmp___0 = __get_user_bad();
  __gu_val = (unsigned long )tmp___0;
  }
  ldv_52901:
  vq->avail_idx = (unsigned short )__gu_val;
  tmp___1 = ldv__builtin_expect(__gu_err != 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "tcm_vhost";
    descriptor.function = "vhost_get_vq_desc";
    descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor.format = "Failed to access avail idx at %p\n";
    descriptor.lineno = 1222U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to access avail idx at %p\n", & (vq->avail)->idx);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___3 = ldv__builtin_expect((unsigned int )((int )vq->avail_idx - (int )last_avail_idx) > vq->num,
                             0L);
  if (tmp___3 != 0L) {
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "vhost_get_vq_desc";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___0.format = "Guest moved used index from %u to %u";
    descriptor___0.lineno = 1228U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Guest moved used index from %u to %u",
                         (int )last_avail_idx, (int )vq->avail_idx);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  if ((int )vq->avail_idx == (int )last_avail_idx) {
    return ((int )vq->num);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __gu_err___0 = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=q" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_52913;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_52913;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_52913;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_52913;
  default:
  tmp___5 = __get_user_bad();
  __gu_val___0 = (unsigned long )tmp___5;
  }
  ldv_52913:
  head = (unsigned int )((unsigned short )__gu_val___0);
  tmp___6 = ldv__builtin_expect(__gu_err___0 != 0, 0L);
  if (tmp___6 != 0L) {
    descriptor___1.modname = "tcm_vhost";
    descriptor___1.function = "vhost_get_vq_desc";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___1.format = "Failed to read head: idx %d address %p\n";
    descriptor___1.lineno = 1245U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to read head: idx %d address %p\n",
                         (int )last_avail_idx, (__u16 *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num));
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___8 = ldv__builtin_expect(vq->num <= head, 0L);
  if (tmp___8 != 0L) {
    descriptor___2.modname = "tcm_vhost";
    descriptor___2.function = "vhost_get_vq_desc";
    descriptor___2.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___2.format = "Guest says index %u > %u is available";
    descriptor___2.lineno = 1252U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Guest says index %u > %u is available",
                         head, vq->num);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___9 = 0U;
  *in_num = tmp___9;
  *out_num = tmp___9;
  tmp___10 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                              0L);
  if (tmp___10 != 0L) {
    *log_num = 0U;
  } else {
  }
  i = head;
  ldv_52929:
  iov_count = *in_num + *out_num;
  tmp___12 = ldv__builtin_expect(vq->num <= i, 0L);
  if (tmp___12 != 0L) {
    descriptor___3.modname = "tcm_vhost";
    descriptor___3.function = "vhost_get_vq_desc";
    descriptor___3.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___3.format = "Desc index is %u > %u, head = %u";
    descriptor___3.lineno = 1266U;
    descriptor___3.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "Desc index is %u > %u, head = %u", i,
                         vq->num, head);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  found = found + 1U;
  tmp___14 = ldv__builtin_expect(found > vq->num, 0L);
  if (tmp___14 != 0L) {
    descriptor___4.modname = "tcm_vhost";
    descriptor___4.function = "vhost_get_vq_desc";
    descriptor___4.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___4.format = "Loop detected: last one at %u vq size %u head %u\n";
    descriptor___4.lineno = 1272U;
    descriptor___4.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Loop detected: last one at %u vq size %u head %u\n",
                         i, vq->num, head);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = __copy_from_user((void *)(& desc), (void const *)vq->desc + (unsigned long )i,
                         16U);
  tmp___16 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___16 != 0L) {
    descriptor___5.modname = "tcm_vhost";
    descriptor___5.function = "vhost_get_vq_desc";
    descriptor___5.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___5.format = "Failed to get descriptor: idx %d addr %p\n";
    descriptor___5.lineno = 1278U;
    descriptor___5.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "Failed to get descriptor: idx %d addr %p\n",
                         i, vq->desc + (unsigned long )i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  if (((int )desc.flags & 4) != 0) {
    ret = get_indirect(dev, vq, iov, iov_size, out_num, in_num, log, log_num, & desc);
    tmp___18 = ldv__builtin_expect(ret < 0, 0L);
    if (tmp___18 != 0L) {
      descriptor___6.modname = "tcm_vhost";
      descriptor___6.function = "vhost_get_vq_desc";
      descriptor___6.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor___6.format = "Failure detected in indirect descriptor at idx %d\n";
      descriptor___6.lineno = 1287U;
      descriptor___6.flags = 0U;
      tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___17 != 0L) {
        __dynamic_pr_debug(& descriptor___6, "Failure detected in indirect descriptor at idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (ret);
    } else {
    }
    goto ldv_52926;
  } else {
  }
  ret = translate_desc(dev, desc.addr, desc.len, iov + (unsigned long )iov_count,
                       (int )(iov_size - iov_count));
  tmp___20 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___20 != 0L) {
    descriptor___7.modname = "tcm_vhost";
    descriptor___7.function = "vhost_get_vq_desc";
    descriptor___7.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___7.format = "Translation failure %d descriptor idx %d\n";
    descriptor___7.lineno = 1297U;
    descriptor___7.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "Translation failure %d descriptor idx %d\n",
                         ret, i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  if (((int )desc.flags & 2) != 0) {
    *in_num = *in_num + (unsigned int )ret;
    tmp___21 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                                0L);
    if (tmp___21 != 0L) {
      (log + (unsigned long )*log_num)->addr = desc.addr;
      (log + (unsigned long )*log_num)->len = (u64 )desc.len;
      *log_num = *log_num + 1U;
    } else {
    }
  } else {
    tmp___23 = ldv__builtin_expect(*in_num != 0U, 0L);
    if (tmp___23 != 0L) {
      descriptor___8.modname = "tcm_vhost";
      descriptor___8.function = "vhost_get_vq_desc";
      descriptor___8.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor___8.format = "Descriptor has out after in: idx %d\n";
      descriptor___8.lineno = 1314U;
      descriptor___8.flags = 0U;
      tmp___22 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
      if (tmp___22 != 0L) {
        __dynamic_pr_debug(& descriptor___8, "Descriptor has out after in: idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (-22);
    } else {
    }
    *out_num = *out_num + (unsigned int )ret;
  }
  ldv_52926:
  i = next_desc(& desc);
  if (i != 4294967295U) {
    goto ldv_52929;
  } else {
  }
  vq->last_avail_idx = (u16 )((int )vq->last_avail_idx + 1);
  tmp___24 = ldv__builtin_expect(((int )vq->used_flags & 1) == 0, 0L);
  if (tmp___24 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c"),
                         "i" (1326), "i" (12UL));
    ldv_52931: ;
    goto ldv_52931;
  } else {
  }
  return ((int )head);
}
}
void vhost_discard_vq_desc(struct vhost_virtqueue *vq , int n )
{
  {
  vq->last_avail_idx = (int )vq->last_avail_idx - (int )((u16 )n);
  return;
}
}
int vhost_add_used(struct vhost_virtqueue *vq , unsigned int head , int len )
{
  struct vring_used_elem *used ;
  struct _ddebug descriptor ;
  long tmp ;
  int __pu_err ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int __pu_err___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  int __pu_err___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  used = (struct vring_used_elem *)(& (vq->used)->ring) + (unsigned long )((unsigned int )vq->last_used_idx % vq->num);
  __pu_err = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52944;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52944;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52944;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_52944;
  default:
  __put_user_bad();
  }
  ldv_52944: ;
  if (__pu_err != 0) {
    descriptor.modname = "tcm_vhost";
    descriptor.function = "vhost_add_used";
    descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor.format = "Failed to write used id";
    descriptor.lineno = 1346U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to write used id");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  __pu_err___0 = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "iq" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_52954;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_52954;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_52954;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "er" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_52954;
  default:
  __put_user_bad();
  }
  ldv_52954: ;
  if (__pu_err___0 != 0) {
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "vhost_add_used";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___0.format = "Failed to write used len";
    descriptor___0.lineno = 1350U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Failed to write used len");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __pu_err___1 = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "iq" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_52963;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_52963;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_52963;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "er" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_52963;
  default:
  __put_user_bad();
  }
  ldv_52963: ;
  if (__pu_err___1 != 0) {
    descriptor___1.modname = "tcm_vhost";
    descriptor___1.function = "vhost_add_used";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___1.format = "Failed to increment used idx";
    descriptor___1.lineno = 1356U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to increment used idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("": : : "memory");
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              8ULL);
    log_write(vq->log_base, vq->log_addr + 2ULL, 2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  vq->last_used_idx = (u16 )((int )vq->last_used_idx + 1);
  tmp___3 = ldv__builtin_expect((int )vq->last_used_idx == (int )vq->signalled_used,
                             0L);
  if (tmp___3 != 0L) {
    vq->signalled_used_valid = 0;
  } else {
  }
  return (0);
}
}
static int __vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                              unsigned int count )
{
  struct vring_used_elem *used ;
  u16 old ;
  u16 new ;
  int start ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  u16 tmp___2 ;
  long tmp___3 ;
  {
  start = (int )((unsigned int )vq->last_used_idx % vq->num);
  used = (struct vring_used_elem *)(& (vq->used)->ring) + (unsigned long )start;
  tmp___0 = __copy_to_user((void *)used, (void const *)heads, count * 8U);
  if (tmp___0 != 0) {
    descriptor.modname = "tcm_vhost";
    descriptor.function = "__vhost_add_used_n";
    descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor.format = "Failed to write used";
    descriptor.lineno = 1395U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to write used");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("": : : "memory");
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              (u64 )((unsigned long )count * 8UL));
  } else {
  }
  old = vq->last_used_idx;
  tmp___2 = (int )vq->last_used_idx + (int )((u16 )count);
  vq->last_used_idx = tmp___2;
  new = tmp___2;
  tmp___3 = ldv__builtin_expect((int )new - (int )vq->signalled_used < (int )new - (int )old,
                             0L);
  if (tmp___3 != 0L) {
    vq->signalled_used_valid = 0;
  } else {
  }
  return (0);
}
}
int vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                     unsigned int count )
{
  int start ;
  int n ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret_pu ;
  __u16 __pu_val ;
  long tmp___0 ;
  {
  start = (int )((unsigned int )vq->last_used_idx % vq->num);
  n = (int )(vq->num - (unsigned int )start);
  if ((unsigned int )n < count) {
    r = __vhost_add_used_n(vq, heads, (unsigned int )n);
    if (r < 0) {
      return (r);
    } else {
    }
    heads = heads + (unsigned long )n;
    count = count - (unsigned int )n;
  } else {
  }
  r = __vhost_add_used_n(vq, heads, count);
  __asm__ volatile ("": : : "memory");
  might_fault();
  __pu_val = vq->last_used_idx;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_52992;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_52992;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_52992;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_52992;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_52992;
  }
  ldv_52992: ;
  if (__ret_pu != 0) {
    descriptor.modname = "tcm_vhost";
    descriptor.function = "vhost_add_used_n";
    descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor.format = "Failed to increment used idx";
    descriptor.lineno = 1439U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to increment used idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___0 != 0L) {
    log_write(vq->log_base, vq->log_addr + 2ULL, 2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (r);
}
}
static bool vhost_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  __u16 old ;
  __u16 new ;
  __u16 event ;
  bool v ;
  int tmp ;
  long tmp___0 ;
  __u16 flags ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___2 ;
  int tmp___3 ;
  u16 tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int tmp___7 ;
  {
  __asm__ volatile ("mfence": : : "memory");
  tmp = vhost_has_feature(dev, 24);
  if (tmp != 0) {
    tmp___0 = ldv__builtin_expect((int )vq->avail_idx == (int )vq->last_avail_idx, 0L);
    if (tmp___0 != 0L) {
      return (1);
    } else {
    }
  } else {
  }
  tmp___3 = vhost_has_feature(dev, 29);
  if (tmp___3 == 0) {
    __gu_err = 0;
    switch (2UL) {
    case 1UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_53012;
    case 2UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_53012;
    case 4UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_53012;
    case 8UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_53012;
    default:
    tmp___2 = __get_user_bad();
    __gu_val = (unsigned long )tmp___2;
    }
    ldv_53012:
    flags = (unsigned short )__gu_val;
    if (__gu_err != 0) {
      descriptor.modname = "tcm_vhost";
      descriptor.function = "vhost_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor.format = "Failed to get flags";
      descriptor.lineno = 1469U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to get flags");
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (1);
    } else {
    }
    return (((int )flags & 1) == 0);
  } else {
  }
  old = vq->signalled_used;
  v = vq->signalled_used_valid;
  tmp___4 = vq->last_used_idx;
  vq->signalled_used = tmp___4;
  new = tmp___4;
  vq->signalled_used_valid = 1;
  tmp___5 = ldv__builtin_expect((long )(! v), 0L);
  if (tmp___5 != 0L) {
    return (1);
  } else {
  }
  might_fault();
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_53023;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_53023;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_53023;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_53023;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_53023;
  }
  ldv_53023:
  event = (unsigned short )__val_gu;
  if (__ret_gu != 0) {
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "vhost_notify";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___0.format = "Failed to get used event idx";
    descriptor___0.lineno = 1483U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Failed to get used event idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (1);
  } else {
  }
  tmp___7 = vring_need_event((int )event, (int )new, (int )old);
  return (tmp___7 != 0);
}
}
void vhost_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  bool tmp ;
  {
  if ((unsigned long )vq->call_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    tmp = vhost_notify(dev, vq);
    if ((int )tmp) {
      eventfd_signal(vq->call_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return;
}
}
void vhost_add_used_and_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                               unsigned int head , int len )
{
  {
  vhost_add_used(vq, head, len);
  vhost_signal(dev, vq);
  return;
}
}
void vhost_add_used_and_signal_n(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                                 struct vring_used_elem *heads , unsigned int count )
{
  {
  vhost_add_used_n(vq, heads, count);
  vhost_signal(dev, vq);
  return;
}
}
bool vhost_enable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  u16 avail_idx ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int tmp___1 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  if (((int )vq->used_flags & 1) == 0) {
    return (0);
  } else {
  }
  vq->used_flags = (unsigned int )vq->used_flags & 65534U;
  tmp___1 = vhost_has_feature(dev, 29);
  if (tmp___1 == 0) {
    r = vhost_update_used_flags(vq);
    if (r != 0) {
      descriptor.modname = "tcm_vhost";
      descriptor.function = "vhost_enable_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor.format = "Failed to enable notification at %p: %d\n";
      descriptor.lineno = 1528U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to enable notification at %p: %d\n",
                           & (vq->used)->flags, r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (0);
    } else {
    }
  } else {
    r = vhost_update_avail_event(vq, (int )vq->avail_idx);
    if (r != 0) {
      descriptor___0.modname = "tcm_vhost";
      descriptor___0.function = "vhost_enable_notify";
      descriptor___0.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor___0.format = "Failed to update avail event index at %p: %d\n";
      descriptor___0.lineno = 1535U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "Failed to update avail event index at %p: %d\n",
                           (u16 *)(& (vq->used)->ring) + (unsigned long )vq->num,
                           r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (0);
    } else {
    }
  }
  __asm__ volatile ("mfence": : : "memory");
  __gu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_53058;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_53058;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_53058;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_53058;
  default:
  tmp___2 = __get_user_bad();
  __gu_val = (unsigned long )tmp___2;
  }
  ldv_53058:
  avail_idx = (unsigned short )__gu_val;
  r = __gu_err;
  if (r != 0) {
    descriptor___1.modname = "tcm_vhost";
    descriptor___1.function = "vhost_enable_notify";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
    descriptor___1.format = "Failed to check avail idx at %p: %d\n";
    descriptor___1.lineno = 1545U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to check avail idx at %p: %d\n",
                         & (vq->avail)->idx, r);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (0);
  } else {
  }
  return ((int )vq->avail_idx != (int )avail_idx);
}
}
void vhost_disable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  if ((int )vq->used_flags & 1) {
    return;
  } else {
  }
  vq->used_flags = (u16 )((unsigned int )vq->used_flags | 1U);
  tmp___0 = vhost_has_feature(dev, 29);
  if (tmp___0 == 0) {
    r = vhost_update_used_flags(vq);
    if (r != 0) {
      descriptor.modname = "tcm_vhost";
      descriptor.function = "vhost_disable_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/drivers/vhost/vhost.c";
      descriptor.format = "Failed to enable notification at %p: %d\n";
      descriptor.lineno = 1564U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to enable notification at %p: %d\n",
                           & (vq->used)->flags, r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void vhost_zerocopy_done_signal(struct kref *kref )
{
  struct vhost_ubuf_ref *ubufs ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)kref;
  ubufs = (struct vhost_ubuf_ref *)__mptr;
  __wake_up(& ubufs->wait, 3U, 1, 0);
  return;
}
}
struct vhost_ubuf_ref *vhost_ubuf_alloc(struct vhost_virtqueue *vq , bool zcopy )
{
  struct vhost_ubuf_ref *ubufs ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  if (! zcopy) {
    return (0);
  } else {
  }
  tmp = kmalloc(104UL, 208U);
  ubufs = (struct vhost_ubuf_ref *)tmp;
  if ((unsigned long )ubufs == (unsigned long )((struct vhost_ubuf_ref *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct vhost_ubuf_ref *)tmp___0);
  } else {
  }
  kref_init(& ubufs->kref);
  __init_waitqueue_head(& ubufs->wait, "&ubufs->wait", & __key);
  ubufs->vq = vq;
  return (ubufs);
}
}
void vhost_ubuf_put(struct vhost_ubuf_ref *ubufs )
{
  {
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  return;
}
}
void vhost_ubuf_put_and_wait(struct vhost_ubuf_ref *ubufs )
{
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  tmp = atomic_read((atomic_t const *)(& ubufs->kref.refcount));
  if (tmp == 0) {
    goto ldv_53090;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_53093:
  prepare_to_wait(& ubufs->wait, & __wait, 2);
  tmp___1 = atomic_read((atomic_t const *)(& ubufs->kref.refcount));
  if (tmp___1 == 0) {
    goto ldv_53092;
  } else {
  }
  schedule();
  goto ldv_53093;
  ldv_53092:
  finish_wait(& ubufs->wait, & __wait);
  ldv_53090:
  kfree((void const *)ubufs);
  return;
}
}
void vhost_zerocopy_callback(struct ubuf_info *ubuf )
{
  struct vhost_ubuf_ref *ubufs ;
  struct vhost_virtqueue *vq ;
  {
  ubufs = (struct vhost_ubuf_ref *)ubuf->ctx;
  vq = ubufs->vq;
  vhost_poll_queue(& vq->poll);
  (vq->heads + ubuf->desc)->len = 1U;
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  return;
}
}
static struct target_fabric_configfs *tcm_vhost_fabric_configfs ;
static struct workqueue_struct *tcm_vhost_workqueue ;
static struct mutex tcm_vhost_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "tcm_vhost_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& tcm_vhost_mutex.wait_list,
                                                                                  & tcm_vhost_mutex.wait_list},
    0, 0, (void *)(& tcm_vhost_mutex), {0, {0, 0}, "tcm_vhost_mutex", 0, 0UL}};
static struct list_head tcm_vhost_list = {& tcm_vhost_list, & tcm_vhost_list};
static int tcm_vhost_check_true(struct se_portal_group *se_tpg )
{
  {
  return (1);
}
}
static int tcm_vhost_check_false(struct se_portal_group *se_tpg )
{
  {
  return (0);
}
}
static char *tcm_vhost_get_fabric_name(void)
{
  {
  return ((char *)"vhost");
}
}
static u8 tcm_vhost_get_fabric_proto_ident(struct se_portal_group *se_tpg )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport ;
  u8 tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport = tpg->tport;
  switch ((int )tport->tport_proto_id) {
  case 6:
  tmp = sas_get_fabric_proto_ident(se_tpg);
  return (tmp);
  case 0:
  tmp___0 = fc_get_fabric_proto_ident(se_tpg);
  return (tmp___0);
  case 5:
  tmp___1 = iscsi_get_fabric_proto_ident(se_tpg);
  return (tmp___1);
  default:
  printk("\vUnknown tport_proto_id: 0x%02x, using SAS emulation\n", (int )tport->tport_proto_id);
  goto ldv_53177;
  }
  ldv_53177:
  tmp___2 = sas_get_fabric_proto_ident(se_tpg);
  return (tmp___2);
}
}
static char *tcm_vhost_get_fabric_wwn(struct se_portal_group *se_tpg )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport = tpg->tport;
  return ((char *)(& tport->tport_name));
}
}
static u16 tcm_vhost_get_tag(struct se_portal_group *se_tpg )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  return (tpg->tport_tpgt);
}
}
static u32 tcm_vhost_get_default_depth(struct se_portal_group *se_tpg )
{
  {
  return (1U);
}
}
static u32 tcm_vhost_get_pr_transport_id(struct se_portal_group *se_tpg , struct se_node_acl *se_nacl ,
                                         struct t10_pr_registration *pr_reg , int *format_code ,
                                         unsigned char *buf )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport = tpg->tport;
  switch ((int )tport->tport_proto_id) {
  case 6:
  tmp = sas_get_pr_transport_id(se_tpg, se_nacl, pr_reg, format_code, buf);
  return (tmp);
  case 0:
  tmp___0 = fc_get_pr_transport_id(se_tpg, se_nacl, pr_reg, format_code, buf);
  return (tmp___0);
  case 5:
  tmp___1 = iscsi_get_pr_transport_id(se_tpg, se_nacl, pr_reg, format_code, buf);
  return (tmp___1);
  default:
  printk("\vUnknown tport_proto_id: 0x%02x, using SAS emulation\n", (int )tport->tport_proto_id);
  goto ldv_53209;
  }
  ldv_53209:
  tmp___2 = sas_get_pr_transport_id(se_tpg, se_nacl, pr_reg, format_code, buf);
  return (tmp___2);
}
}
static u32 tcm_vhost_get_pr_transport_id_len(struct se_portal_group *se_tpg , struct se_node_acl *se_nacl ,
                                             struct t10_pr_registration *pr_reg ,
                                             int *format_code )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport = tpg->tport;
  switch ((int )tport->tport_proto_id) {
  case 6:
  tmp = sas_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg, format_code);
  return (tmp);
  case 0:
  tmp___0 = fc_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg, format_code);
  return (tmp___0);
  case 5:
  tmp___1 = iscsi_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg, format_code);
  return (tmp___1);
  default:
  printk("\vUnknown tport_proto_id: 0x%02x, using SAS emulation\n", (int )tport->tport_proto_id);
  goto ldv_53224;
  }
  ldv_53224:
  tmp___2 = sas_get_pr_transport_id_len(se_tpg, se_nacl, pr_reg, format_code);
  return (tmp___2);
}
}
static char *tcm_vhost_parse_pr_out_transport_id(struct se_portal_group *se_tpg ,
                                                 char const *buf , u32 *out_tid_len ,
                                                 char **port_nexus_ptr )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport = tpg->tport;
  switch ((int )tport->tport_proto_id) {
  case 6:
  tmp = sas_parse_pr_out_transport_id(se_tpg, buf, out_tid_len, port_nexus_ptr);
  return (tmp);
  case 0:
  tmp___0 = fc_parse_pr_out_transport_id(se_tpg, buf, out_tid_len, port_nexus_ptr);
  return (tmp___0);
  case 5:
  tmp___1 = iscsi_parse_pr_out_transport_id(se_tpg, buf, out_tid_len, port_nexus_ptr);
  return (tmp___1);
  default:
  printk("\vUnknown tport_proto_id: 0x%02x, using SAS emulation\n", (int )tport->tport_proto_id);
  goto ldv_53239;
  }
  ldv_53239:
  tmp___2 = sas_parse_pr_out_transport_id(se_tpg, buf, out_tid_len, port_nexus_ptr);
  return (tmp___2);
}
}
static struct se_node_acl *tcm_vhost_alloc_fabric_acl(struct se_portal_group *se_tpg )
{
  struct tcm_vhost_nacl *nacl ;
  void *tmp ;
  {
  tmp = kzalloc(1512UL, 208U);
  nacl = (struct tcm_vhost_nacl *)tmp;
  if ((unsigned long )nacl == (unsigned long )((struct tcm_vhost_nacl *)0)) {
    printk("\vUnable to alocate struct tcm_vhost_nacl\n");
    return (0);
  } else {
  }
  return (& nacl->se_node_acl);
}
}
static void tcm_vhost_release_fabric_acl(struct se_portal_group *se_tpg , struct se_node_acl *se_nacl )
{
  struct tcm_vhost_nacl *nacl ;
  struct se_node_acl const *__mptr ;
  {
  __mptr = (struct se_node_acl const *)se_nacl;
  nacl = (struct tcm_vhost_nacl *)__mptr + 0xfffffffffffffef8UL;
  kfree((void const *)nacl);
  return;
}
}
static u32 tcm_vhost_tpg_get_inst_index(struct se_portal_group *se_tpg )
{
  {
  return (1U);
}
}
static void tcm_vhost_release_cmd(struct se_cmd *se_cmd )
{
  {
  return;
}
}
static int tcm_vhost_shutdown_session(struct se_session *se_sess )
{
  {
  return (0);
}
}
static void tcm_vhost_close_session(struct se_session *se_sess )
{
  {
  return;
}
}
static u32 tcm_vhost_sess_get_index(struct se_session *se_sess )
{
  {
  return (0U);
}
}
static int tcm_vhost_write_pending(struct se_cmd *se_cmd )
{
  {
  target_execute_cmd(se_cmd);
  return (0);
}
}
static int tcm_vhost_write_pending_status(struct se_cmd *se_cmd )
{
  {
  return (0);
}
}
static void tcm_vhost_set_default_node_attrs(struct se_node_acl *nacl )
{
  {
  return;
}
}
static u32 tcm_vhost_get_task_tag(struct se_cmd *se_cmd )
{
  {
  return (0U);
}
}
static int tcm_vhost_get_cmd_state(struct se_cmd *se_cmd )
{
  {
  return (0);
}
}
static void vhost_scsi_complete_cmd(struct tcm_vhost_cmd *tv_cmd )
{
  struct vhost_scsi *vs ;
  {
  vs = tv_cmd->tvc_vhost;
  spin_lock_bh(& vs->vs_completion_lock);
  list_add_tail(& tv_cmd->tvc_completion_list, & vs->vs_completion_list);
  spin_unlock_bh(& vs->vs_completion_lock);
  vhost_work_queue(& vs->dev, & vs->vs_completion_work);
  return;
}
}
static int tcm_vhost_queue_data_in(struct se_cmd *se_cmd )
{
  struct tcm_vhost_cmd *tv_cmd ;
  struct se_cmd const *__mptr ;
  {
  __mptr = (struct se_cmd const *)se_cmd;
  tv_cmd = (struct tcm_vhost_cmd *)__mptr + 0xffffffffffffffc0UL;
  vhost_scsi_complete_cmd(tv_cmd);
  return (0);
}
}
static int tcm_vhost_queue_status(struct se_cmd *se_cmd )
{
  struct tcm_vhost_cmd *tv_cmd ;
  struct se_cmd const *__mptr ;
  {
  __mptr = (struct se_cmd const *)se_cmd;
  tv_cmd = (struct tcm_vhost_cmd *)__mptr + 0xffffffffffffffc0UL;
  vhost_scsi_complete_cmd(tv_cmd);
  return (0);
}
}
static int tcm_vhost_queue_tm_rsp(struct se_cmd *se_cmd )
{
  {
  return (0);
}
}
static void vhost_scsi_free_cmd(struct tcm_vhost_cmd *tv_cmd )
{
  struct se_cmd *se_cmd ;
  u32 i ;
  struct page *tmp ;
  {
  se_cmd = & tv_cmd->tvc_se_cmd;
  transport_generic_free_cmd(se_cmd, 1);
  if (tv_cmd->tvc_sgl_count != 0U) {
    i = 0U;
    goto ldv_53306;
    ldv_53305:
    tmp = sg_page(tv_cmd->tvc_sgl + (unsigned long )i);
    put_page(tmp);
    i = i + (u32 )1;
    ldv_53306: ;
    if (tv_cmd->tvc_sgl_count > i) {
      goto ldv_53305;
    } else {
    }
    kfree((void const *)tv_cmd->tvc_sgl);
  } else {
  }
  kfree((void const *)tv_cmd);
  return;
}
}
static struct tcm_vhost_cmd *vhost_scsi_get_cmd_from_completion(struct vhost_scsi *vs )
{
  struct tcm_vhost_cmd *tv_cmd ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tv_cmd = 0;
  spin_lock_bh(& vs->vs_completion_lock);
  tmp = list_empty((struct list_head const *)(& vs->vs_completion_list));
  if (tmp != 0) {
    spin_unlock_bh(& vs->vs_completion_lock);
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)vs->vs_completion_list.next;
  tv_cmd = (struct tcm_vhost_cmd *)__mptr + 0xfffffffffffffb30UL;
  goto ldv_53318;
  ldv_53317:
  list_del(& tv_cmd->tvc_completion_list);
  goto ldv_53316;
  __mptr___0 = (struct list_head const *)tv_cmd->tvc_completion_list.next;
  tv_cmd = (struct tcm_vhost_cmd *)__mptr___0 + 0xfffffffffffffb30UL;
  ldv_53318: ;
  if ((unsigned long )(& tv_cmd->tvc_completion_list) != (unsigned long )(& vs->vs_completion_list)) {
    goto ldv_53317;
  } else {
  }
  ldv_53316:
  spin_unlock_bh(& vs->vs_completion_lock);
  return (tv_cmd);
}
}
static void vhost_scsi_complete_cmd_work(struct vhost_work *work )
{
  struct vhost_scsi *vs ;
  struct vhost_work const *__mptr ;
  struct tcm_vhost_cmd *tv_cmd ;
  struct virtio_scsi_cmd_resp v_rsp ;
  struct se_cmd *se_cmd ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  long tmp___0 ;
  {
  __mptr = (struct vhost_work const *)work;
  vs = (struct vhost_scsi *)__mptr + 0xffffffffffff35b8UL;
  goto ldv_53335;
  ldv_53334:
  se_cmd = & tv_cmd->tvc_se_cmd;
  descriptor.modname = "tcm_vhost";
  descriptor.function = "vhost_scsi_complete_cmd_work";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "%s tv_cmd %p resid %u status %#02x\n";
  descriptor.lineno = 445U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s tv_cmd %p resid %u status %#02x\n", "vhost_scsi_complete_cmd_work",
                       tv_cmd, se_cmd->residual_count, (int )se_cmd->scsi_status);
  } else {
  }
  memset((void *)(& v_rsp), 0, 108UL);
  v_rsp.resid = se_cmd->residual_count;
  v_rsp.status = se_cmd->scsi_status;
  v_rsp.sense_len = (u32 )se_cmd->scsi_sense_length;
  __len = (size_t )v_rsp.sense_len;
  __ret = memcpy((void *)(& v_rsp.sense), (void const *)(& tv_cmd->tvc_sense_buf),
                           __len);
  ret = copy_to_user((void *)tv_cmd->tvc_resp, (void const *)(& v_rsp), 108U);
  tmp___0 = ldv__builtin_expect(ret == 0, 1L);
  if (tmp___0 != 0L) {
    vhost_add_used((struct vhost_virtqueue *)(& vs->vqs) + 2UL, (unsigned int )tv_cmd->tvc_vq_desc,
                   0);
  } else {
    printk("\vFaulted on virtio_scsi_cmd_resp\n");
  }
  vhost_scsi_free_cmd(tv_cmd);
  ldv_53335:
  tv_cmd = vhost_scsi_get_cmd_from_completion(vs);
  if ((unsigned long )tv_cmd != (unsigned long )((struct tcm_vhost_cmd *)0)) {
    goto ldv_53334;
  } else {
  }
  vhost_signal(& vs->dev, (struct vhost_virtqueue *)(& vs->vqs) + 2UL);
  return;
}
}
static struct tcm_vhost_cmd *vhost_scsi_allocate_cmd(struct tcm_vhost_tpg *tv_tpg ,
                                                     struct virtio_scsi_cmd_req *v_req ,
                                                     u32 exp_data_len , int data_direction )
{
  struct tcm_vhost_cmd *tv_cmd ;
  struct tcm_vhost_nexus *tv_nexus ;
  struct se_session *se_sess ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tv_nexus = tv_tpg->tpg_nexus;
  if ((unsigned long )tv_nexus == (unsigned long )((struct tcm_vhost_nexus *)0)) {
    printk("\vUnable to locate active struct tcm_vhost_nexus\n");
    tmp = ERR_PTR(-5L);
    return ((struct tcm_vhost_cmd *)tmp);
  } else {
  }
  se_sess = tv_nexus->tvn_se_sess;
  tmp___0 = kzalloc(1248UL, 32U);
  tv_cmd = (struct tcm_vhost_cmd *)tmp___0;
  if ((unsigned long )tv_cmd == (unsigned long )((struct tcm_vhost_cmd *)0)) {
    printk("\vUnable to allocate struct tcm_vhost_cmd\n");
    tmp___1 = ERR_PTR(-12L);
    return ((struct tcm_vhost_cmd *)tmp___1);
  } else {
  }
  INIT_LIST_HEAD(& tv_cmd->tvc_completion_list);
  tv_cmd->tvc_tag = v_req->tag;
  tv_cmd->tvc_task_attr = (int )v_req->task_attr;
  tv_cmd->tvc_exp_data_len = exp_data_len;
  tv_cmd->tvc_data_direction = (enum dma_data_direction )data_direction;
  tv_cmd->tvc_nexus = tv_nexus;
  return (tv_cmd);
}
}
static int vhost_scsi_map_to_sgl(struct scatterlist *sgl , unsigned int sgl_count ,
                                 void *ptr , size_t len , int write )
{
  struct scatterlist *sg ;
  unsigned int npages ;
  int ret ;
  struct page *page ;
  unsigned int offset ;
  unsigned int nbytes ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  long tmp ;
  struct page *tmp___0 ;
  {
  sg = sgl;
  npages = 0U;
  goto ldv_53365;
  ldv_53364:
  offset = (unsigned int )((long )ptr) & 4095U;
  __min1 = 4096U - offset;
  __min2 = (unsigned int )len;
  nbytes = __min1 < __min2 ? __min1 : __min2;
  if (npages == sgl_count) {
    ret = -105;
    goto err;
  } else {
  }
  ret = get_user_pages_fast((unsigned long )ptr, 1, write, & page);
  tmp = ldv__builtin_expect(ret == 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared"),
                         "i" (522), "i" (12UL));
    ldv_53363: ;
    goto ldv_53363;
  } else {
  }
  if (ret < 0) {
    goto err;
  } else {
  }
  sg_set_page(sg, page, nbytes, offset);
  ptr = ptr + (unsigned long )nbytes;
  len = len - (size_t )nbytes;
  sg = sg + 1;
  npages = npages + 1U;
  ldv_53365: ;
  if (len != 0UL) {
    goto ldv_53364;
  } else {
  }
  return ((int )npages);
  err:
  sg = sgl;
  goto ldv_53368;
  ldv_53367:
  tmp___0 = sg_page(sg);
  put_page(tmp___0);
  sg = sg + 1;
  ldv_53368: ;
  if ((unsigned long )(sgl + (unsigned long )npages) != (unsigned long )sg) {
    goto ldv_53367;
  } else {
  }
  return (ret);
}
}
static int vhost_scsi_map_iov_to_sgl(struct tcm_vhost_cmd *tv_cmd , struct iovec *iov ,
                                     unsigned int niov , int write )
{
  int ret ;
  unsigned int i ;
  u32 sgl_count ;
  struct scatterlist *sg ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct page *tmp___2 ;
  {
  sgl_count = 0U;
  i = 0U;
  goto ldv_53381;
  ldv_53380:
  sgl_count = ((u32 )((((unsigned long )(iov + (unsigned long )i)->iov_base + (iov + (unsigned long )i)->iov_len) + 4095UL) >> 12) - (u32 )((unsigned long )(iov + (unsigned long )i)->iov_base >> 12)) + sgl_count;
  i = i + 1U;
  ldv_53381: ;
  if (i < niov) {
    goto ldv_53380;
  } else {
  }
  tmp = kmalloc((unsigned long )sgl_count * 40UL, 32U);
  sg = (struct scatterlist *)tmp;
  if ((unsigned long )sg == (unsigned long )((struct scatterlist *)0)) {
    return (-12);
  } else {
  }
  descriptor.modname = "tcm_vhost";
  descriptor.function = "vhost_scsi_map_iov_to_sgl";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "%s sg %p sgl_count %u is_err %d\n";
  descriptor.lineno = 564U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s sg %p sgl_count %u is_err %d\n", "vhost_scsi_map_iov_to_sgl",
                       sg, sgl_count, (unsigned long )sg == (unsigned long )((struct scatterlist *)0));
  } else {
  }
  sg_init_table(sg, sgl_count);
  tv_cmd->tvc_sgl = sg;
  tv_cmd->tvc_sgl_count = sgl_count;
  descriptor___0.modname = "tcm_vhost";
  descriptor___0.function = "vhost_scsi_map_iov_to_sgl";
  descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor___0.format = "Mapping %u iovecs for %u pages\n";
  descriptor___0.lineno = 570U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "Mapping %u iovecs for %u pages\n", niov,
                       sgl_count);
  } else {
  }
  i = 0U;
  goto ldv_53390;
  ldv_53389:
  ret = vhost_scsi_map_to_sgl(sg, sgl_count, (iov + (unsigned long )i)->iov_base,
                              (iov + (unsigned long )i)->iov_len, write);
  if (ret < 0) {
    i = 0U;
    goto ldv_53387;
    ldv_53386:
    tmp___2 = sg_page(tv_cmd->tvc_sgl + (unsigned long )i);
    put_page(tmp___2);
    i = i + 1U;
    ldv_53387: ;
    if (tv_cmd->tvc_sgl_count > i) {
      goto ldv_53386;
    } else {
    }
    kfree((void const *)tv_cmd->tvc_sgl);
    tv_cmd->tvc_sgl = 0;
    tv_cmd->tvc_sgl_count = 0U;
    return (ret);
  } else {
  }
  sg = sg + (unsigned long )ret;
  sgl_count = sgl_count - (u32 )ret;
  i = i + 1U;
  ldv_53390: ;
  if (i < niov) {
    goto ldv_53389;
  } else {
  }
  return (0);
}
}
static void tcm_vhost_submission_work(struct work_struct *work )
{
  struct tcm_vhost_cmd *tv_cmd ;
  struct work_struct const *__mptr ;
  struct tcm_vhost_nexus *tv_nexus ;
  struct se_cmd *se_cmd ;
  struct scatterlist *sg_ptr ;
  struct scatterlist *sg_bidi_ptr ;
  int rc ;
  int sg_no_bidi ;
  {
  __mptr = (struct work_struct const *)work;
  tv_cmd = (struct tcm_vhost_cmd *)__mptr + 0xfffffffffffffc00UL;
  se_cmd = & tv_cmd->tvc_se_cmd;
  sg_bidi_ptr = 0;
  sg_no_bidi = 0;
  if (tv_cmd->tvc_sgl_count != 0U) {
    sg_ptr = tv_cmd->tvc_sgl;
  } else {
    sg_ptr = 0;
  }
  tv_nexus = tv_cmd->tvc_nexus;
  rc = target_submit_cmd_map_sgls(se_cmd, tv_nexus->tvn_se_sess, (unsigned char *)(& tv_cmd->tvc_cdb),
                                  (unsigned char *)(& tv_cmd->tvc_sense_buf), tv_cmd->tvc_lun,
                                  tv_cmd->tvc_exp_data_len, tv_cmd->tvc_task_attr,
                                  (int )tv_cmd->tvc_data_direction, 0, sg_ptr, tv_cmd->tvc_sgl_count,
                                  sg_bidi_ptr, (u32 )sg_no_bidi);
  if (rc < 0) {
    transport_send_check_condition_and_sense(se_cmd, 10, 0);
    transport_generic_free_cmd(se_cmd, 0);
  } else {
  }
  return;
}
}
static void vhost_scsi_handle_vq(struct vhost_scsi *vs )
{
  struct vhost_virtqueue *vq ;
  struct virtio_scsi_cmd_req v_req ;
  struct tcm_vhost_tpg *tv_tpg ;
  struct tcm_vhost_cmd *tv_cmd ;
  u32 exp_data_len ;
  u32 data_first ;
  u32 data_num ;
  u32 data_direction ;
  unsigned int out ;
  unsigned int in ;
  unsigned int i ;
  int head ;
  int ret ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___3 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___6 ;
  long tmp___15 ;
  struct _ddebug descriptor___7 ;
  long tmp___16 ;
  long tmp___17 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___8 ;
  unsigned int tmp___18 ;
  long tmp___19 ;
  unsigned int tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___9 ;
  long tmp___22 ;
  struct _ddebug descriptor___10 ;
  long tmp___23 ;
  long tmp___24 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  vq = (struct vhost_virtqueue *)(& vs->vqs) + 2UL;
  tv_tpg = vs->vs_tpg;
  tmp = ldv__builtin_expect((unsigned long )tv_tpg == (unsigned long )((struct tcm_vhost_tpg *)0),
                         0L);
  if (tmp != 0L) {
    printk("\v%s endpoint not set\n", "vhost_scsi_handle_vq");
    return;
  } else {
  }
  ldv_mutex_lock_20(& vq->mutex);
  vhost_disable_notify(& vs->dev, vq);
  ldv_53445:
  head = vhost_get_vq_desc(& vs->dev, vq, (struct iovec *)(& vq->iov), 1024U, & out,
                           & in, 0, 0);
  descriptor.modname = "tcm_vhost";
  descriptor.function = "vhost_scsi_handle_vq";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "vhost_get_vq_desc: head: %d, out: %u in: %u\n";
  descriptor.lineno = 654U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "vhost_get_vq_desc: head: %d, out: %u in: %u\n",
                       head, out, in);
  } else {
  }
  tmp___1 = ldv__builtin_expect(head < 0, 0L);
  if (tmp___1 != 0L) {
    goto ldv_53424;
  } else {
  }
  if ((unsigned int )head == vq->num) {
    tmp___2 = vhost_enable_notify(& vs->dev, vq);
    tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
    if (tmp___3 != 0L) {
      vhost_disable_notify(& vs->dev, vq);
      goto ldv_53425;
    } else {
    }
    goto ldv_53424;
  } else {
  }
  if (out == 1U && in == 1U) {
    data_direction = 3U;
    data_first = 0U;
    data_num = 0U;
  } else
  if (out == 1U && in > 1U) {
    data_direction = 2U;
    data_first = out + 1U;
    data_num = in - 1U;
  } else
  if (out > 1U && in == 1U) {
    data_direction = 1U;
    data_first = 1U;
    data_num = out - 1U;
  } else {
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "vhost_scsi_handle_vq";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___0.format = "Invalid buffer layout out: %u in: %u\n";
    descriptor___0.lineno = 682U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Invalid buffer layout out: %u in: %u\n",
                         out, in);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  }
  tmp___6 = ldv__builtin_expect(vq->iov[out].iov_len != 108UL, 0L);
  if (tmp___6 != 0L) {
    descriptor___1.modname = "tcm_vhost";
    descriptor___1.function = "vhost_scsi_handle_vq";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___1.format = "Expecting virtio_scsi_cmd_resp, got %zu bytes\n";
    descriptor___1.lineno = 693U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Expecting virtio_scsi_cmd_resp, got %zu bytes\n",
                         vq->iov[out].iov_len);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  tmp___8 = ldv__builtin_expect(vq->iov[0].iov_len != 51UL, 0L);
  if (tmp___8 != 0L) {
    descriptor___2.modname = "tcm_vhost";
    descriptor___2.function = "vhost_scsi_handle_vq";
    descriptor___2.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___2.format = "Expecting virtio_scsi_cmd_req, got %zu bytes\n";
    descriptor___2.lineno = 699U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Expecting virtio_scsi_cmd_req, got %zu bytes\n",
                         vq->iov[0].iov_len);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  descriptor___3.modname = "tcm_vhost";
  descriptor___3.function = "vhost_scsi_handle_vq";
  descriptor___3.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor___3.format = "Calling __copy_from_user: vq->iov[0].iov_base: %p, len: %zu\n";
  descriptor___3.lineno = 703U;
  descriptor___3.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "Calling __copy_from_user: vq->iov[0].iov_base: %p, len: %zu\n",
                       vq->iov[0].iov_base, 51UL);
  } else {
  }
  ret = __copy_from_user((void *)(& v_req), (void const *)vq->iov[0].iov_base, 51U);
  tmp___11 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___11 != 0L) {
    descriptor___4.modname = "tcm_vhost";
    descriptor___4.function = "vhost_scsi_handle_vq";
    descriptor___4.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___4.format = "Faulted on virtio_scsi_cmd_req\n";
    descriptor___4.lineno = 707U;
    descriptor___4.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Faulted on virtio_scsi_cmd_req\n");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  exp_data_len = 0U;
  i = 0U;
  goto ldv_53432;
  ldv_53431:
  exp_data_len = (u32 )vq->iov[data_first + i].iov_len + exp_data_len;
  i = i + 1U;
  ldv_53432: ;
  if (i < data_num) {
    goto ldv_53431;
  } else {
  }
  tv_cmd = vhost_scsi_allocate_cmd(tv_tpg, & v_req, exp_data_len, (int )data_direction);
  tmp___14 = IS_ERR((void const *)tv_cmd);
  if (tmp___14 != 0L) {
    descriptor___5.modname = "tcm_vhost";
    descriptor___5.function = "vhost_scsi_handle_vq";
    descriptor___5.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___5.format = "vhost_scsi_allocate_cmd failed %ld\n";
    descriptor___5.lineno = 719U;
    descriptor___5.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      tmp___12 = PTR_ERR((void const *)tv_cmd);
      __dynamic_pr_debug(& descriptor___5, "vhost_scsi_allocate_cmd failed %ld\n",
                         tmp___12);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  descriptor___6.modname = "tcm_vhost";
  descriptor___6.function = "vhost_scsi_handle_vq";
  descriptor___6.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor___6.format = "Allocated tv_cmd: %p exp_data_len: %d, data_direction: %d\n";
  descriptor___6.lineno = 723U;
  descriptor___6.flags = 0U;
  tmp___15 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    __dynamic_pr_debug(& descriptor___6, "Allocated tv_cmd: %p exp_data_len: %d, data_direction: %d\n",
                       tv_cmd, exp_data_len, data_direction);
  } else {
  }
  tv_cmd->tvc_vhost = vs;
  tmp___17 = ldv__builtin_expect(vq->iov[out].iov_len != 108UL, 0L);
  if (tmp___17 != 0L) {
    descriptor___7.modname = "tcm_vhost";
    descriptor___7.function = "vhost_scsi_handle_vq";
    descriptor___7.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___7.format = "Expecting virtio_scsi_cmd_resp, got %zu bytes, out: %d, in: %d\n";
    descriptor___7.lineno = 731U;
    descriptor___7.flags = 0U;
    tmp___16 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___16 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "Expecting virtio_scsi_cmd_resp, got %zu bytes, out: %d, in: %d\n",
                         vq->iov[out].iov_len, out, in);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  tv_cmd->tvc_resp = (struct virtio_scsi_cmd_resp *)vq->iov[out].iov_base;
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& tv_cmd->tvc_cdb), (void const *)(& v_req.cdb), __len);
  } else {
    __ret = memcpy((void *)(& tv_cmd->tvc_cdb), (void const *)(& v_req.cdb),
                             __len);
  }
  tmp___20 = scsi_command_size((unsigned char const *)(& tv_cmd->tvc_cdb));
  tmp___21 = ldv__builtin_expect(tmp___20 > 32U, 0L);
  if (tmp___21 != 0L) {
    descriptor___8.modname = "tcm_vhost";
    descriptor___8.function = "vhost_scsi_handle_vq";
    descriptor___8.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___8.format = "Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\n";
    descriptor___8.lineno = 753U;
    descriptor___8.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      tmp___18 = scsi_command_size((unsigned char const *)(& tv_cmd->tvc_cdb));
      __dynamic_pr_debug(& descriptor___8, "Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\n",
                         tmp___18, 32);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_53424;
  } else {
  }
  tv_cmd->tvc_lun = (u32 )(((int )v_req.lun[2] << 8) | (int )v_req.lun[3]) & 16383U;
  descriptor___9.modname = "tcm_vhost";
  descriptor___9.function = "vhost_scsi_handle_vq";
  descriptor___9.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor___9.format = "vhost_scsi got command opcode: %#02x, lun: %d\n";
  descriptor___9.lineno = 759U;
  descriptor___9.flags = 0U;
  tmp___22 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    __dynamic_pr_debug(& descriptor___9, "vhost_scsi got command opcode: %#02x, lun: %d\n",
                       (int )tv_cmd->tvc_cdb[0], tv_cmd->tvc_lun);
  } else {
  }
  if (data_direction != 3U) {
    ret = vhost_scsi_map_iov_to_sgl(tv_cmd, (struct iovec *)(& vq->iov) + (unsigned long )data_first,
                                    data_num, data_direction == 1U);
    tmp___24 = ldv__builtin_expect(ret != 0, 0L);
    if (tmp___24 != 0L) {
      descriptor___10.modname = "tcm_vhost";
      descriptor___10.function = "vhost_scsi_handle_vq";
      descriptor___10.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
      descriptor___10.format = "Failed to map iov to sgl\n";
      descriptor___10.lineno = 766U;
      descriptor___10.flags = 0U;
      tmp___23 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
      if (tmp___23 != 0L) {
        __dynamic_pr_debug(& descriptor___10, "Failed to map iov to sgl\n");
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      goto ldv_53424;
    } else {
    }
  } else {
  }
  tv_cmd->tvc_vq_desc = head;
  __init_work(& tv_cmd->work, 0);
  __constr_expr_0.counter = 4195328L;
  tv_cmd->work.data = __constr_expr_0;
  lockdep_init_map(& tv_cmd->work.lockdep_map, "(&tv_cmd->work)", & __key, 0);
  INIT_LIST_HEAD(& tv_cmd->work.entry);
  tv_cmd->work.func = & tcm_vhost_submission_work;
  queue_work(tcm_vhost_workqueue, & tv_cmd->work);
  ldv_53425: ;
  goto ldv_53445;
  ldv_53424:
  ldv_mutex_unlock_21(& vq->mutex);
  return;
}
}
static void vhost_scsi_ctl_handle_kick(struct vhost_work *work )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "tcm_vhost";
  descriptor.function = "vhost_scsi_ctl_handle_kick";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "%s: The handling func for control queue.\n";
  descriptor.lineno = 792U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: The handling func for control queue.\n",
                       "vhost_scsi_ctl_handle_kick");
  } else {
  }
  return;
}
}
static void vhost_scsi_evt_handle_kick(struct vhost_work *work )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "tcm_vhost";
  descriptor.function = "vhost_scsi_evt_handle_kick";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "%s: The handling func for event queue.\n";
  descriptor.lineno = 797U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: The handling func for event queue.\n", "vhost_scsi_evt_handle_kick");
  } else {
  }
  return;
}
}
static void vhost_scsi_handle_kick(struct vhost_work *work )
{
  struct vhost_virtqueue *vq ;
  struct vhost_work const *__mptr ;
  struct vhost_scsi *vs ;
  struct vhost_dev const *__mptr___0 ;
  {
  __mptr = (struct vhost_work const *)work;
  vq = (struct vhost_virtqueue *)__mptr + 0xfffffffffffffec0UL;
  __mptr___0 = (struct vhost_dev const *)vq->dev;
  vs = (struct vhost_scsi *)__mptr___0 + 0xfffffffffffffff8UL;
  vhost_scsi_handle_vq(vs);
  return;
}
}
static int vhost_scsi_set_endpoint(struct vhost_scsi *vs , struct vhost_scsi_target *t )
{
  struct tcm_vhost_tport *tv_tport ;
  struct tcm_vhost_tpg *tv_tpg ;
  int index ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  ldv_mutex_lock_22(& vs->dev.mutex);
  index = 0;
  goto ldv_53473;
  ldv_53472:
  tmp = vhost_vq_access_ok((struct vhost_virtqueue *)(& vs->vqs) + (unsigned long )index);
  if (tmp == 0) {
    ldv_mutex_unlock_23(& vs->dev.mutex);
    return (-14);
  } else {
  }
  index = index + 1;
  ldv_53473: ;
  if (vs->dev.nvqs > index) {
    goto ldv_53472;
  } else {
  }
  ldv_mutex_unlock_24(& vs->dev.mutex);
  ldv_mutex_lock_25(& tcm_vhost_mutex);
  __mptr = (struct list_head const *)tcm_vhost_list.next;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_53481;
  ldv_53480:
  ldv_mutex_lock_26(& tv_tpg->tv_tpg_mutex);
  if ((unsigned long )tv_tpg->tpg_nexus == (unsigned long )((struct tcm_vhost_nexus *)0)) {
    ldv_mutex_unlock_27(& tv_tpg->tv_tpg_mutex);
    goto ldv_53479;
  } else {
  }
  if (tv_tpg->tv_tpg_vhost_count != 0) {
    ldv_mutex_unlock_28(& tv_tpg->tv_tpg_mutex);
    goto ldv_53479;
  } else {
  }
  tv_tport = tv_tpg->tport;
  tmp___0 = strcmp((char const *)(& tv_tport->tport_name), (char const *)(& t->vhost_wwpn));
  if (tmp___0 == 0 && (int )tv_tpg->tport_tpgt == (int )t->vhost_tpgt) {
    tv_tpg->tv_tpg_vhost_count = tv_tpg->tv_tpg_vhost_count + 1;
    ldv_mutex_unlock_29(& tv_tpg->tv_tpg_mutex);
    ldv_mutex_unlock_30(& tcm_vhost_mutex);
    ldv_mutex_lock_31(& vs->dev.mutex);
    if ((unsigned long )vs->vs_tpg != (unsigned long )((struct tcm_vhost_tpg *)0)) {
      ldv_mutex_unlock_32(& vs->dev.mutex);
      ldv_mutex_lock_33(& tv_tpg->tv_tpg_mutex);
      tv_tpg->tv_tpg_vhost_count = tv_tpg->tv_tpg_vhost_count - 1;
      ldv_mutex_unlock_34(& tv_tpg->tv_tpg_mutex);
      return (-17);
    } else {
    }
    vs->vs_tpg = tv_tpg;
    __asm__ volatile ("": : : "memory");
    ldv_mutex_unlock_35(& vs->dev.mutex);
    return (0);
  } else {
  }
  ldv_mutex_unlock_36(& tv_tpg->tv_tpg_mutex);
  ldv_53479:
  __mptr___0 = (struct list_head const *)tv_tpg->tv_tpg_list.next;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_53481: ;
  if ((unsigned long )(& tv_tpg->tv_tpg_list) != (unsigned long )(& tcm_vhost_list)) {
    goto ldv_53480;
  } else {
  }
  ldv_mutex_unlock_37(& tcm_vhost_mutex);
  return (-22);
}
}
static int vhost_scsi_clear_endpoint(struct vhost_scsi *vs , struct vhost_scsi_target *t )
{
  struct tcm_vhost_tport *tv_tport ;
  struct tcm_vhost_tpg *tv_tpg ;
  int index ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_mutex_lock_38(& vs->dev.mutex);
  index = 0;
  goto ldv_53493;
  ldv_53492:
  tmp = vhost_vq_access_ok((struct vhost_virtqueue *)(& vs->vqs) + (unsigned long )index);
  if (tmp == 0) {
    ret = -14;
    goto err;
  } else {
  }
  index = index + 1;
  ldv_53493: ;
  if (vs->dev.nvqs > index) {
    goto ldv_53492;
  } else {
  }
  if ((unsigned long )vs->vs_tpg == (unsigned long )((struct tcm_vhost_tpg *)0)) {
    ret = -19;
    goto err;
  } else {
  }
  tv_tpg = vs->vs_tpg;
  tv_tport = tv_tpg->tport;
  tmp___0 = strcmp((char const *)(& tv_tport->tport_name), (char const *)(& t->vhost_wwpn));
  if (tmp___0 != 0 || (int )tv_tpg->tport_tpgt != (int )t->vhost_tpgt) {
    printk("\ftv_tport->tport_name: %s, tv_tpg->tport_tpgt: %hu does not match t->vhost_wwpn: %s, t->vhost_tpgt: %hu\n",
           (char *)(& tv_tport->tport_name), (int )tv_tpg->tport_tpgt, (char *)(& t->vhost_wwpn),
           (int )t->vhost_tpgt);
    ret = -22;
    goto err;
  } else {
  }
  tv_tpg->tv_tpg_vhost_count = tv_tpg->tv_tpg_vhost_count - 1;
  vs->vs_tpg = 0;
  ldv_mutex_unlock_39(& vs->dev.mutex);
  return (0);
  err:
  ldv_mutex_unlock_40(& vs->dev.mutex);
  return (ret);
}
}
static int vhost_scsi_open(struct inode *inode , struct file *f )
{
  struct vhost_scsi *s ;
  int r ;
  void *tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  {
  tmp = kzalloc(52000UL, 208U);
  s = (struct vhost_scsi *)tmp;
  if ((unsigned long )s == (unsigned long )((struct vhost_scsi *)0)) {
    return (-12);
  } else {
  }
  vhost_work_init(& s->vs_completion_work, & vhost_scsi_complete_cmd_work);
  INIT_LIST_HEAD(& s->vs_completion_list);
  spinlock_check(& s->vs_completion_lock);
  __raw_spin_lock_init(& s->vs_completion_lock.ldv_5957.rlock, "&(&s->vs_completion_lock)->rlock",
                       & __key);
  s->vqs[0].handle_kick = & vhost_scsi_ctl_handle_kick;
  s->vqs[1].handle_kick = & vhost_scsi_evt_handle_kick;
  s->vqs[2].handle_kick = & vhost_scsi_handle_kick;
  tmp___0 = vhost_dev_init(& s->dev, (struct vhost_virtqueue *)(& s->vqs), 3);
  r = (int )tmp___0;
  if (r < 0) {
    kfree((void const *)s);
    return (r);
  } else {
  }
  f->private_data = (void *)s;
  return (0);
}
}
static int vhost_scsi_release(struct inode *inode , struct file *f )
{
  struct vhost_scsi *s ;
  struct vhost_scsi_target backend ;
  size_t __len ;
  void *__ret ;
  {
  s = (struct vhost_scsi *)f->private_data;
  if ((unsigned long )s->vs_tpg != (unsigned long )((struct tcm_vhost_tpg *)0) && (unsigned long )(s->vs_tpg)->tport != (unsigned long )((struct tcm_vhost_tport *)0)) {
    __len = 224UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& backend.vhost_wwpn), (void const *)(& ((s->vs_tpg)->tport)->tport_name),
                       __len);
    } else {
      __ret = memcpy((void *)(& backend.vhost_wwpn), (void const *)(& ((s->vs_tpg)->tport)->tport_name),
                               __len);
    }
    backend.vhost_tpgt = (s->vs_tpg)->tport_tpgt;
    vhost_scsi_clear_endpoint(s, & backend);
  } else {
  }
  vhost_dev_cleanup(& s->dev, 0);
  kfree((void const *)s);
  return (0);
}
}
static void vhost_scsi_flush_vq(struct vhost_scsi *vs , int index )
{
  {
  vhost_poll_flush(& (vs->dev.vqs + (unsigned long )index)->poll);
  return;
}
}
static void vhost_scsi_flush(struct vhost_scsi *vs )
{
  {
  vhost_scsi_flush_vq(vs, 0);
  vhost_scsi_flush_vq(vs, 1);
  vhost_scsi_flush_vq(vs, 2);
  return;
}
}
static int vhost_scsi_set_features(struct vhost_scsi *vs , u64 features )
{
  int tmp ;
  {
  if ((features & 0xffffffffcaffffffULL) != 0ULL) {
    return (-95);
  } else {
  }
  ldv_mutex_lock_41(& vs->dev.mutex);
  if ((features & 67108864ULL) != 0ULL) {
    tmp = vhost_log_access_ok(& vs->dev);
    if (tmp == 0) {
      ldv_mutex_unlock_42(& vs->dev.mutex);
      return (-14);
    } else {
    }
  } else {
  }
  vs->dev.acked_features = (unsigned int )features;
  __asm__ volatile ("": : : "memory");
  vhost_scsi_flush(vs);
  ldv_mutex_unlock_43(& vs->dev.mutex);
  return (0);
}
}
static long vhost_scsi_ioctl(struct file *f , unsigned int ioctl , unsigned long arg )
{
  struct vhost_scsi *vs ;
  struct vhost_scsi_target backend ;
  void *argp ;
  u64 *featurep ;
  u64 features ;
  int r ;
  int abi_version ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  {
  vs = (struct vhost_scsi *)f->private_data;
  argp = (void *)arg;
  featurep = (u64 *)argp;
  abi_version = 0;
  switch (ioctl) {
  case 1088991040U:
  tmp = copy_from_user((void *)(& backend), (void const *)argp, 232UL);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  if ((unsigned int )backend.reserved != 0U) {
    return (-95L);
  } else {
  }
  tmp___0 = vhost_scsi_set_endpoint(vs, & backend);
  return ((long )tmp___0);
  case 1088991041U:
  tmp___1 = copy_from_user((void *)(& backend), (void const *)argp, 232UL);
  if (tmp___1 != 0UL) {
    return (-14L);
  } else {
  }
  if ((unsigned int )backend.reserved != 0U) {
    return (-95L);
  } else {
  }
  tmp___2 = vhost_scsi_clear_endpoint(vs, & backend);
  return ((long )tmp___2);
  case 1074048834U:
  tmp___3 = copy_to_user(argp, (void const *)(& abi_version), 4U);
  if (tmp___3 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case 2148052736U:
  features = 889192448ULL;
  tmp___4 = copy_to_user((void *)featurep, (void const *)(& features), 8U);
  if (tmp___4 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case 1074310912U:
  tmp___5 = copy_from_user((void *)(& features), (void const *)featurep, 8UL);
  if (tmp___5 != 0UL) {
    return (-14L);
  } else {
  }
  tmp___6 = vhost_scsi_set_features(vs, features);
  return ((long )tmp___6);
  default:
  ldv_mutex_lock_44(& vs->dev.mutex);
  tmp___7 = vhost_dev_ioctl(& vs->dev, ioctl, arg);
  r = (int )tmp___7;
  ldv_mutex_unlock_45(& vs->dev.mutex);
  return ((long )r);
  }
}
}
static long vhost_scsi_compat_ioctl(struct file *f , unsigned int ioctl , unsigned long arg )
{
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  tmp___0 = vhost_scsi_ioctl(f, ioctl, (unsigned long )tmp);
  return (tmp___0);
}
}
static struct file_operations const vhost_scsi_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & vhost_scsi_ioctl, & vhost_scsi_compat_ioctl,
    0, & vhost_scsi_open, 0, & vhost_scsi_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct miscdevice vhost_scsi_misc =
     {255, "vhost-scsi", & vhost_scsi_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
static int vhost_scsi_register(void)
{
  int tmp ;
  {
  tmp = misc_register(& vhost_scsi_misc);
  return (tmp);
}
}
static int vhost_scsi_deregister(void)
{
  int tmp ;
  {
  tmp = misc_deregister(& vhost_scsi_misc);
  return (tmp);
}
}
static char *tcm_vhost_dump_proto_id(struct tcm_vhost_tport *tport )
{
  {
  switch ((int )tport->tport_proto_id) {
  case 6: ;
  return ((char *)"SAS");
  case 0: ;
  return ((char *)"FCP");
  case 5: ;
  return ((char *)"iSCSI");
  default: ;
  goto ldv_53560;
  }
  ldv_53560: ;
  return ((char *)"Unknown");
}
}
static int tcm_vhost_port_link(struct se_portal_group *se_tpg , struct se_lun *lun )
{
  struct tcm_vhost_tpg *tv_tpg ;
  struct se_portal_group const *__mptr ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  ldv_mutex_lock_46(& tv_tpg->tv_tpg_mutex);
  tv_tpg->tv_tpg_port_count = tv_tpg->tv_tpg_port_count + 1;
  ldv_mutex_unlock_47(& tv_tpg->tv_tpg_mutex);
  return (0);
}
}
static void tcm_vhost_port_unlink(struct se_portal_group *se_tpg , struct se_lun *se_lun )
{
  struct tcm_vhost_tpg *tv_tpg ;
  struct se_portal_group const *__mptr ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  ldv_mutex_lock_48(& tv_tpg->tv_tpg_mutex);
  tv_tpg->tv_tpg_port_count = tv_tpg->tv_tpg_port_count - 1;
  ldv_mutex_unlock_49(& tv_tpg->tv_tpg_mutex);
  return;
}
}
static struct se_node_acl *tcm_vhost_make_nodeacl(struct se_portal_group *se_tpg ,
                                                  struct config_group *group , char const *name )
{
  struct se_node_acl *se_nacl ;
  struct se_node_acl *se_nacl_new ;
  struct tcm_vhost_nacl *nacl ;
  u64 wwpn ;
  u32 nexus_depth ;
  void *tmp ;
  long tmp___0 ;
  struct se_node_acl const *__mptr ;
  {
  wwpn = 0ULL;
  se_nacl_new = tcm_vhost_alloc_fabric_acl(se_tpg);
  if ((unsigned long )se_nacl_new == (unsigned long )((struct se_node_acl *)0)) {
    tmp = ERR_PTR(-12L);
    return ((struct se_node_acl *)tmp);
  } else {
  }
  nexus_depth = 1U;
  se_nacl = core_tpg_add_initiator_node_acl(se_tpg, se_nacl_new, name, nexus_depth);
  tmp___0 = IS_ERR((void const *)se_nacl);
  if (tmp___0 != 0L) {
    tcm_vhost_release_fabric_acl(se_tpg, se_nacl_new);
    return (se_nacl);
  } else {
  }
  __mptr = (struct se_node_acl const *)se_nacl;
  nacl = (struct tcm_vhost_nacl *)__mptr + 0xfffffffffffffef8UL;
  nacl->iport_wwpn = wwpn;
  return (se_nacl);
}
}
static void tcm_vhost_drop_nodeacl(struct se_node_acl *se_acl )
{
  struct tcm_vhost_nacl *nacl ;
  struct se_node_acl const *__mptr ;
  {
  __mptr = (struct se_node_acl const *)se_acl;
  nacl = (struct tcm_vhost_nacl *)__mptr + 0xfffffffffffffef8UL;
  core_tpg_del_initiator_node_acl(se_acl->se_tpg, se_acl, 1);
  kfree((void const *)nacl);
  return;
}
}
static int tcm_vhost_make_nexus(struct tcm_vhost_tpg *tv_tpg , char const *name )
{
  struct se_portal_group *se_tpg ;
  struct tcm_vhost_nexus *tv_nexus ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  ldv_mutex_lock_50(& tv_tpg->tv_tpg_mutex);
  if ((unsigned long )tv_tpg->tpg_nexus != (unsigned long )((struct tcm_vhost_nexus *)0)) {
    ldv_mutex_unlock_51(& tv_tpg->tv_tpg_mutex);
    descriptor.modname = "tcm_vhost";
    descriptor.function = "tcm_vhost_make_nexus";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor.format = "tv_tpg->tpg_nexus already exists\n";
    descriptor.lineno = 1163U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "tv_tpg->tpg_nexus already exists\n");
    } else {
    }
    return (-17);
  } else {
  }
  se_tpg = & tv_tpg->se_tpg;
  tmp___0 = kzalloc(8UL, 208U);
  tv_nexus = (struct tcm_vhost_nexus *)tmp___0;
  if ((unsigned long )tv_nexus == (unsigned long )((struct tcm_vhost_nexus *)0)) {
    ldv_mutex_unlock_52(& tv_tpg->tv_tpg_mutex);
    printk("\vUnable to allocate struct tcm_vhost_nexus\n");
    return (-12);
  } else {
  }
  tv_nexus->tvn_se_sess = transport_init_session();
  tmp___1 = IS_ERR((void const *)tv_nexus->tvn_se_sess);
  if (tmp___1 != 0L) {
    ldv_mutex_unlock_53(& tv_tpg->tv_tpg_mutex);
    kfree((void const *)tv_nexus);
    return (-12);
  } else {
  }
  (tv_nexus->tvn_se_sess)->se_node_acl = core_tpg_check_initiator_node_acl(se_tpg,
                                                                           (unsigned char *)name);
  if ((unsigned long )(tv_nexus->tvn_se_sess)->se_node_acl == (unsigned long )((struct se_node_acl *)0)) {
    ldv_mutex_unlock_54(& tv_tpg->tv_tpg_mutex);
    descriptor___0.modname = "tcm_vhost";
    descriptor___0.function = "tcm_vhost_make_nexus";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
    descriptor___0.format = "core_tpg_check_initiator_node_acl() failed for %s\n";
    descriptor___0.lineno = 1193U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "core_tpg_check_initiator_node_acl() failed for %s\n",
                         name);
    } else {
    }
    transport_free_session(tv_nexus->tvn_se_sess);
    kfree((void const *)tv_nexus);
    return (-12);
  } else {
  }
  __transport_register_session(se_tpg, (tv_nexus->tvn_se_sess)->se_node_acl, tv_nexus->tvn_se_sess,
                               (void *)tv_nexus);
  tv_tpg->tpg_nexus = tv_nexus;
  ldv_mutex_unlock_55(& tv_tpg->tv_tpg_mutex);
  return (0);
}
}
static int tcm_vhost_drop_nexus(struct tcm_vhost_tpg *tpg )
{
  struct se_session *se_sess ;
  struct tcm_vhost_nexus *tv_nexus ;
  struct _ddebug descriptor ;
  char *tmp ;
  long tmp___0 ;
  {
  ldv_mutex_lock_56(& tpg->tv_tpg_mutex);
  tv_nexus = tpg->tpg_nexus;
  if ((unsigned long )tv_nexus == (unsigned long )((struct tcm_vhost_nexus *)0)) {
    ldv_mutex_unlock_57(& tpg->tv_tpg_mutex);
    return (-19);
  } else {
  }
  se_sess = tv_nexus->tvn_se_sess;
  if ((unsigned long )se_sess == (unsigned long )((struct se_session *)0)) {
    ldv_mutex_unlock_58(& tpg->tv_tpg_mutex);
    return (-19);
  } else {
  }
  if (tpg->tv_tpg_port_count != 0) {
    ldv_mutex_unlock_59(& tpg->tv_tpg_mutex);
    printk("\vUnable to remove TCM_vhost I_T Nexus with active TPG port count: %d\n",
           tpg->tv_tpg_port_count);
    return (-16);
  } else {
  }
  if (tpg->tv_tpg_vhost_count != 0) {
    ldv_mutex_unlock_60(& tpg->tv_tpg_mutex);
    printk("\vUnable to remove TCM_vhost I_T Nexus with active TPG vhost count: %d\n",
           tpg->tv_tpg_vhost_count);
    return (-16);
  } else {
  }
  descriptor.modname = "tcm_vhost";
  descriptor.function = "tcm_vhost_drop_nexus";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "TCM_vhost_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\n";
  descriptor.lineno = 1246U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = tcm_vhost_dump_proto_id(tpg->tport);
    __dynamic_pr_debug(& descriptor, "TCM_vhost_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\n",
                       tmp, (char *)(& ((tv_nexus->tvn_se_sess)->se_node_acl)->initiatorname));
  } else {
  }
  transport_deregister_session(tv_nexus->tvn_se_sess);
  tpg->tpg_nexus = 0;
  ldv_mutex_unlock_61(& tpg->tv_tpg_mutex);
  kfree((void const *)tv_nexus);
  return (0);
}
}
static ssize_t tcm_vhost_tpg_show_nexus(struct se_portal_group *se_tpg , char *page )
{
  struct tcm_vhost_tpg *tv_tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_nexus *tv_nexus ;
  ssize_t ret ;
  int tmp ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  ldv_mutex_lock_62(& tv_tpg->tv_tpg_mutex);
  tv_nexus = tv_tpg->tpg_nexus;
  if ((unsigned long )tv_nexus == (unsigned long )((struct tcm_vhost_nexus *)0)) {
    ldv_mutex_unlock_63(& tv_tpg->tv_tpg_mutex);
    return (-19L);
  } else {
  }
  tmp = snprintf(page, 4096UL, "%s\n", (char *)(& ((tv_nexus->tvn_se_sess)->se_node_acl)->initiatorname));
  ret = (ssize_t )tmp;
  ldv_mutex_unlock_64(& tv_tpg->tv_tpg_mutex);
  return (ret);
}
}
static ssize_t tcm_vhost_tpg_store_nexus(struct se_portal_group *se_tpg , char const *page ,
                                         size_t count )
{
  struct tcm_vhost_tpg *tv_tpg ;
  struct se_portal_group const *__mptr ;
  struct tcm_vhost_tport *tport_wwn ;
  unsigned char i_port[256U] ;
  unsigned char *ptr ;
  unsigned char *port_ptr ;
  int ret ;
  int tmp ;
  size_t tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  char *tmp___5 ;
  char *tmp___6 ;
  size_t tmp___7 ;
  size_t tmp___8 ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tv_tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  tport_wwn = tv_tpg->tport;
  tmp = strncmp(page, "NULL", 4UL);
  if (tmp == 0) {
    ret = tcm_vhost_drop_nexus(tv_tpg);
    return ((ssize_t )(ret != 0 ? (size_t )ret : count));
  } else {
  }
  tmp___0 = strlen(page);
  if (tmp___0 > 255UL) {
    printk("\vEmulated NAA Sas Address: %s, exceeds max: %d\n", page, 256);
    return (-22L);
  } else {
  }
  snprintf((char *)(& i_port), 256UL, "%s", page);
  tmp___1 = strstr((char const *)(& i_port), "naa.");
  ptr = (unsigned char *)tmp___1;
  if ((unsigned long )ptr != (unsigned long )((unsigned char *)0)) {
    if ((unsigned int )tport_wwn->tport_proto_id != 6U) {
      tmp___2 = tcm_vhost_dump_proto_id(tport_wwn);
      printk("\vPassed SAS Initiator Port %s does not match target port protoid: %s\n",
             (unsigned char *)(& i_port), tmp___2);
      return (-22L);
    } else {
    }
    port_ptr = (unsigned char *)(& i_port);
    goto check_newline;
  } else {
  }
  tmp___3 = strstr((char const *)(& i_port), "fc.");
  ptr = (unsigned char *)tmp___3;
  if ((unsigned long )ptr != (unsigned long )((unsigned char *)0)) {
    if ((unsigned int )tport_wwn->tport_proto_id != 0U) {
      tmp___4 = tcm_vhost_dump_proto_id(tport_wwn);
      printk("\vPassed FCP Initiator Port %s does not match target port protoid: %s\n",
             (unsigned char *)(& i_port), tmp___4);
      return (-22L);
    } else {
    }
    port_ptr = (unsigned char *)(& i_port) + 3UL;
    goto check_newline;
  } else {
  }
  tmp___5 = strstr((char const *)(& i_port), "iqn.");
  ptr = (unsigned char *)tmp___5;
  if ((unsigned long )ptr != (unsigned long )((unsigned char *)0)) {
    if ((unsigned int )tport_wwn->tport_proto_id != 5U) {
      tmp___6 = tcm_vhost_dump_proto_id(tport_wwn);
      printk("\vPassed iSCSI Initiator Port %s does not match target port protoid: %s\n",
             (unsigned char *)(& i_port), tmp___6);
      return (-22L);
    } else {
    }
    port_ptr = (unsigned char *)(& i_port);
    goto check_newline;
  } else {
  }
  printk("\vUnable to locate prefix for emulated Initiator Port: %s\n", (unsigned char *)(& i_port));
  return (-22L);
  check_newline:
  tmp___8 = strlen((char const *)(& i_port));
  if ((unsigned int )i_port[tmp___8 - 1UL] == 10U) {
    tmp___7 = strlen((char const *)(& i_port));
    i_port[tmp___7 - 1UL] = 0U;
  } else {
  }
  ret = tcm_vhost_make_nexus(tv_tpg, (char const *)port_ptr);
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct target_fabric_tpg_attribute tcm_vhost_tpg_nexus = {{"nexus", & __this_module, 420U}, & tcm_vhost_tpg_show_nexus, & tcm_vhost_tpg_store_nexus};
static struct configfs_attribute *tcm_vhost_tpg_attrs[2U] = { & tcm_vhost_tpg_nexus.attr, 0};
static struct se_portal_group *tcm_vhost_make_tpg(struct se_wwn *wwn , struct config_group *group ,
                                                  char const *name )
{
  struct tcm_vhost_tport *tport ;
  struct se_wwn const *__mptr ;
  struct tcm_vhost_tpg *tpg ;
  unsigned long tpgt ;
  int ret ;
  void *tmp ;
  char *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  struct lock_class_key __key ;
  {
  __mptr = (struct se_wwn const *)wwn;
  tport = (struct tcm_vhost_tport *)__mptr + 0xfffffffffffffef0UL;
  tmp___0 = strstr(name, "tpgt_");
  if ((unsigned long )((char const *)tmp___0) != (unsigned long )name) {
    tmp = ERR_PTR(-22L);
    return ((struct se_portal_group *)tmp);
  } else {
  }
  tmp___2 = kstrtoul(name + 5UL, 10U, & tpgt);
  if (tmp___2 != 0 || tpgt > 4294967295UL) {
    tmp___1 = ERR_PTR(-22L);
    return ((struct se_portal_group *)tmp___1);
  } else {
  }
  tmp___3 = kzalloc(2192UL, 208U);
  tpg = (struct tcm_vhost_tpg *)tmp___3;
  if ((unsigned long )tpg == (unsigned long )((struct tcm_vhost_tpg *)0)) {
    printk("\vUnable to allocate struct tcm_vhost_tpg");
    tmp___4 = ERR_PTR(-12L);
    return ((struct se_portal_group *)tmp___4);
  } else {
  }
  __mutex_init(& tpg->tv_tpg_mutex, "&tpg->tv_tpg_mutex", & __key);
  INIT_LIST_HEAD(& tpg->tv_tpg_list);
  tpg->tport = tport;
  tpg->tport_tpgt = (u16 )tpgt;
  ret = core_tpg_register(& tcm_vhost_fabric_configfs->tf_ops, wwn, & tpg->se_tpg,
                          (void *)tpg, 0);
  if (ret < 0) {
    kfree((void const *)tpg);
    return (0);
  } else {
  }
  ldv_mutex_lock_65(& tcm_vhost_mutex);
  list_add_tail(& tpg->tv_tpg_list, & tcm_vhost_list);
  ldv_mutex_unlock_66(& tcm_vhost_mutex);
  return (& tpg->se_tpg);
}
}
static void tcm_vhost_drop_tpg(struct se_portal_group *se_tpg )
{
  struct tcm_vhost_tpg *tpg ;
  struct se_portal_group const *__mptr ;
  {
  __mptr = (struct se_portal_group const *)se_tpg;
  tpg = (struct tcm_vhost_tpg *)__mptr + 0xffffffffffffff28UL;
  ldv_mutex_lock_67(& tcm_vhost_mutex);
  list_del(& tpg->tv_tpg_list);
  ldv_mutex_unlock_68(& tcm_vhost_mutex);
  tcm_vhost_drop_nexus(tpg);
  core_tpg_deregister(se_tpg);
  kfree((void const *)tpg);
  return;
}
}
static struct se_wwn *tcm_vhost_make_tport(struct target_fabric_configfs *tf , struct config_group *group ,
                                           char const *name )
{
  struct tcm_vhost_tport *tport ;
  char *ptr ;
  u64 wwpn ;
  int off ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char *tmp___2 ;
  void *tmp___3 ;
  size_t tmp___4 ;
  struct _ddebug descriptor ;
  char *tmp___5 ;
  long tmp___6 ;
  {
  wwpn = 0ULL;
  off = 0;
  tmp = kzalloc(520UL, 208U);
  tport = (struct tcm_vhost_tport *)tmp;
  if ((unsigned long )tport == (unsigned long )((struct tcm_vhost_tport *)0)) {
    printk("\vUnable to allocate struct tcm_vhost_tport");
    tmp___0 = ERR_PTR(-12L);
    return ((struct se_wwn *)tmp___0);
  } else {
  }
  tport->tport_wwpn = wwpn;
  ptr = strstr(name, "naa.");
  if ((unsigned long )ptr != (unsigned long )((char *)0)) {
    tport->tport_proto_id = 6U;
    goto check_len;
  } else {
  }
  ptr = strstr(name, "fc.");
  if ((unsigned long )ptr != (unsigned long )((char *)0)) {
    tport->tport_proto_id = 0U;
    off = 3;
    goto check_len;
  } else {
  }
  ptr = strstr(name, "iqn.");
  if ((unsigned long )ptr != (unsigned long )((char *)0)) {
    tport->tport_proto_id = 5U;
    goto check_len;
  } else {
  }
  printk("\vUnable to locate prefix for emulated Target Port: %s\n", name);
  kfree((void const *)tport);
  tmp___1 = ERR_PTR(-22L);
  return ((struct se_wwn *)tmp___1);
  check_len:
  tmp___4 = strlen(name);
  if (tmp___4 > 255UL) {
    tmp___2 = tcm_vhost_dump_proto_id(tport);
    printk("\vEmulated %s Address: %s, exceeds max: %d\n", name, tmp___2, 256);
    kfree((void const *)tport);
    tmp___3 = ERR_PTR(-22L);
    return ((struct se_wwn *)tmp___3);
  } else {
  }
  snprintf((char *)(& tport->tport_name), 256UL, "%s", name + (unsigned long )off);
  descriptor.modname = "tcm_vhost";
  descriptor.function = "tcm_vhost_make_tport";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "TCM_VHost_ConfigFS: Allocated emulated Target %s Address: %s\n";
  descriptor.lineno = 1477U;
  descriptor.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = tcm_vhost_dump_proto_id(tport);
    __dynamic_pr_debug(& descriptor, "TCM_VHost_ConfigFS: Allocated emulated Target %s Address: %s\n",
                       tmp___5, name);
  } else {
  }
  return (& tport->tport_wwn);
}
}
static void tcm_vhost_drop_tport(struct se_wwn *wwn )
{
  struct tcm_vhost_tport *tport ;
  struct se_wwn const *__mptr ;
  struct _ddebug descriptor ;
  char *tmp ;
  long tmp___0 ;
  {
  __mptr = (struct se_wwn const *)wwn;
  tport = (struct tcm_vhost_tport *)__mptr + 0xfffffffffffffef0UL;
  descriptor.modname = "tcm_vhost";
  descriptor.function = "tcm_vhost_drop_tport";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "TCM_VHost_ConfigFS: Deallocating emulated Target %s Address: %s\n";
  descriptor.lineno = 1489U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = tcm_vhost_dump_proto_id(tport);
    __dynamic_pr_debug(& descriptor, "TCM_VHost_ConfigFS: Deallocating emulated Target %s Address: %s\n",
                       tmp, (char *)(& tport->tport_name));
  } else {
  }
  kfree((void const *)tport);
  return;
}
}
static ssize_t tcm_vhost_wwn_show_attr_version(struct target_fabric_configfs *tf ,
                                               char *page )
{
  struct new_utsname *tmp ;
  struct new_utsname *tmp___0 ;
  int tmp___1 ;
  {
  tmp = utsname();
  tmp___0 = utsname();
  tmp___1 = sprintf(page, "TCM_VHOST fabric module %s on %s/%son 3.7.3\n", (char *)"v0.1",
                    (char *)(& tmp___0->sysname), (char *)(& tmp->machine));
  return ((ssize_t )tmp___1);
}
}
static struct target_fabric_wwn_attribute tcm_vhost_wwn_version = {{"version", & __this_module, 292U}, & tcm_vhost_wwn_show_attr_version, 0};
static struct configfs_attribute *tcm_vhost_wwn_attrs[2U] = { & tcm_vhost_wwn_version.attr, 0};
static struct target_core_fabric_ops tcm_vhost_ops =
     {0, & tcm_vhost_get_fabric_name, & tcm_vhost_get_fabric_proto_ident, & tcm_vhost_get_fabric_wwn,
    & tcm_vhost_get_tag, & tcm_vhost_get_default_depth, & tcm_vhost_get_pr_transport_id,
    & tcm_vhost_get_pr_transport_id_len, & tcm_vhost_parse_pr_out_transport_id, & tcm_vhost_check_true,
    & tcm_vhost_check_true, & tcm_vhost_check_false, & tcm_vhost_check_false, 0, & tcm_vhost_alloc_fabric_acl,
    & tcm_vhost_release_fabric_acl, & tcm_vhost_tpg_get_inst_index, 0, & tcm_vhost_release_cmd,
    0, & tcm_vhost_shutdown_session, & tcm_vhost_close_session, & tcm_vhost_sess_get_index,
    0, & tcm_vhost_write_pending, & tcm_vhost_write_pending_status, & tcm_vhost_set_default_node_attrs,
    & tcm_vhost_get_task_tag, & tcm_vhost_get_cmd_state, & tcm_vhost_queue_data_in,
    & tcm_vhost_queue_status, & tcm_vhost_queue_tm_rsp, & tcm_vhost_make_tport, & tcm_vhost_drop_tport,
    & tcm_vhost_make_tpg, & tcm_vhost_drop_tpg, & tcm_vhost_port_link, & tcm_vhost_port_unlink,
    0, 0, & tcm_vhost_make_nodeacl, & tcm_vhost_drop_nodeacl};
static int tcm_vhost_register_configfs(void)
{
  struct target_fabric_configfs *fabric ;
  int ret ;
  struct _ddebug descriptor ;
  struct new_utsname *tmp ;
  struct new_utsname *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  {
  descriptor.modname = "tcm_vhost";
  descriptor.function = "tcm_vhost_register_configfs";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "TCM_VHOST fabric module %s on %s/%s on 3.7.3\n";
  descriptor.lineno = 1561U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = utsname();
    tmp___0 = utsname();
    __dynamic_pr_debug(& descriptor, "TCM_VHOST fabric module %s on %s/%s on 3.7.3\n",
                       (char *)"v0.1", (char *)(& tmp___0->sysname), (char *)(& tmp->machine));
  } else {
  }
  fabric = target_fabric_configfs_init(& __this_module, "vhost");
  tmp___3 = IS_ERR((void const *)fabric);
  if (tmp___3 != 0L) {
    printk("\vtarget_fabric_configfs_init() failed\n");
    tmp___2 = PTR_ERR((void const *)fabric);
    return ((int )tmp___2);
  } else {
  }
  fabric->tf_ops = tcm_vhost_ops;
  fabric->tf_cit_tmpl.tfc_wwn_cit.ct_attrs = (struct configfs_attribute **)(& tcm_vhost_wwn_attrs);
  fabric->tf_cit_tmpl.tfc_tpg_base_cit.ct_attrs = (struct configfs_attribute **)(& tcm_vhost_tpg_attrs);
  fabric->tf_cit_tmpl.tfc_tpg_attrib_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_param_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_np_base_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_nacl_base_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_nacl_attrib_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_nacl_auth_cit.ct_attrs = 0;
  fabric->tf_cit_tmpl.tfc_tpg_nacl_param_cit.ct_attrs = 0;
  ret = target_fabric_configfs_register(fabric);
  if (ret < 0) {
    printk("\vtarget_fabric_configfs_register() failed for TCM_VHOST\n");
    return (ret);
  } else {
  }
  tcm_vhost_fabric_configfs = fabric;
  descriptor___0.modname = "tcm_vhost";
  descriptor___0.function = "tcm_vhost_register_configfs";
  descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor___0.format = "TCM_VHOST[0] - Set fabric -> tcm_vhost_fabric_configfs\n";
  descriptor___0.lineno = 1599U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "TCM_VHOST[0] - Set fabric -> tcm_vhost_fabric_configfs\n");
  } else {
  }
  return (0);
}
}
static void tcm_vhost_deregister_configfs(void)
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned long )tcm_vhost_fabric_configfs == (unsigned long )((struct target_fabric_configfs *)0)) {
    return;
  } else {
  }
  target_fabric_configfs_deregister(tcm_vhost_fabric_configfs);
  tcm_vhost_fabric_configfs = 0;
  descriptor.modname = "tcm_vhost";
  descriptor.function = "tcm_vhost_deregister_configfs";
  descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/tcm_vhost.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/tcm_vhost.c.prepared";
  descriptor.format = "TCM_VHOST[0] - Cleared tcm_vhost_fabric_configfs\n";
  descriptor.lineno = 1610U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "TCM_VHOST[0] - Cleared tcm_vhost_fabric_configfs\n");
  } else {
  }
  return;
}
}
static int tcm_vhost_init(void)
{
  int ret ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  ret = -12;
  __lock_name = "tcm_vhost";
  tmp = __alloc_workqueue_key("tcm_vhost", 0U, 0, & __key, __lock_name);
  tcm_vhost_workqueue = tmp;
  if ((unsigned long )tcm_vhost_workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    goto out;
  } else {
  }
  ret = vhost_scsi_register();
  if (ret < 0) {
    goto out_destroy_workqueue;
  } else {
  }
  ret = tcm_vhost_register_configfs();
  if (ret < 0) {
    goto out_vhost_scsi_deregister;
  } else {
  }
  return (0);
  out_vhost_scsi_deregister:
  vhost_scsi_deregister();
  out_destroy_workqueue:
  destroy_workqueue(tcm_vhost_workqueue);
  out: ;
  return (ret);
}
}
static void tcm_vhost_exit(void)
{
  {
  tcm_vhost_deregister_configfs();
  vhost_scsi_deregister();
  destroy_workqueue(tcm_vhost_workqueue);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct inode *var_group1 ;
  struct file *var_group2 ;
  unsigned int var_vhost_scsi_ioctl_44_p1 ;
  unsigned long var_vhost_scsi_ioctl_44_p2 ;
  unsigned int var_vhost_scsi_compat_ioctl_45_p1 ;
  unsigned long var_vhost_scsi_compat_ioctl_45_p2 ;
  int res_vhost_scsi_open_39 ;
  struct se_portal_group *var_group3 ;
  struct se_node_acl *var_group4 ;
  struct t10_pr_registration *var_tcm_vhost_get_pr_transport_id_7_p2 ;
  int *var_tcm_vhost_get_pr_transport_id_7_p3 ;
  unsigned char *var_tcm_vhost_get_pr_transport_id_7_p4 ;
  struct t10_pr_registration *var_tcm_vhost_get_pr_transport_id_len_8_p2 ;
  int *var_tcm_vhost_get_pr_transport_id_len_8_p3 ;
  char const *var_tcm_vhost_parse_pr_out_transport_id_9_p1 ;
  u32 *var_tcm_vhost_parse_pr_out_transport_id_9_p2 ;
  char **var_tcm_vhost_parse_pr_out_transport_id_9_p3 ;
  struct se_cmd *var_group5 ;
  struct se_session *var_group6 ;
  struct target_fabric_configfs *var_group7 ;
  struct config_group *var_group8 ;
  char const *var_tcm_vhost_make_tport_59_p2 ;
  struct se_wwn *var_group9 ;
  char const *var_tcm_vhost_make_tpg_57_p2 ;
  struct se_lun *var_group10 ;
  char const *var_tcm_vhost_make_nodeacl_51_p2 ;
  int ldv_s_vhost_scsi_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_vhost_scsi_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = tcm_vhost_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_53802;
  ldv_53801:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_s_vhost_scsi_fops_file_operations == 0) {
    ldv_handler_precall();
    res_vhost_scsi_open_39 = vhost_scsi_open(var_group1, var_group2);
    ldv_check_return_value(res_vhost_scsi_open_39);
    if (res_vhost_scsi_open_39 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_vhost_scsi_fops_file_operations = ldv_s_vhost_scsi_fops_file_operations + 1;
  } else {
  }
  goto ldv_53763;
  case 1: ;
  if (ldv_s_vhost_scsi_fops_file_operations == 1) {
    ldv_handler_precall();
    vhost_scsi_release(var_group1, var_group2);
    ldv_s_vhost_scsi_fops_file_operations = 0;
  } else {
  }
  goto ldv_53763;
  case 2:
  ldv_handler_precall();
  vhost_scsi_ioctl(var_group2, var_vhost_scsi_ioctl_44_p1, var_vhost_scsi_ioctl_44_p2);
  goto ldv_53763;
  case 3:
  ldv_handler_precall();
  vhost_scsi_compat_ioctl(var_group2, var_vhost_scsi_compat_ioctl_45_p1, var_vhost_scsi_compat_ioctl_45_p2);
  goto ldv_53763;
  case 4:
  ldv_handler_precall();
  tcm_vhost_get_fabric_name();
  goto ldv_53763;
  case 5:
  ldv_handler_precall();
  tcm_vhost_get_fabric_proto_ident(var_group3);
  goto ldv_53763;
  case 6:
  ldv_handler_precall();
  tcm_vhost_get_fabric_wwn(var_group3);
  goto ldv_53763;
  case 7:
  ldv_handler_precall();
  tcm_vhost_get_tag(var_group3);
  goto ldv_53763;
  case 8:
  ldv_handler_precall();
  tcm_vhost_get_default_depth(var_group3);
  goto ldv_53763;
  case 9:
  ldv_handler_precall();
  tcm_vhost_get_pr_transport_id(var_group3, var_group4, var_tcm_vhost_get_pr_transport_id_7_p2,
                                var_tcm_vhost_get_pr_transport_id_7_p3, var_tcm_vhost_get_pr_transport_id_7_p4);
  goto ldv_53763;
  case 10:
  ldv_handler_precall();
  tcm_vhost_get_pr_transport_id_len(var_group3, var_group4, var_tcm_vhost_get_pr_transport_id_len_8_p2,
                                    var_tcm_vhost_get_pr_transport_id_len_8_p3);
  goto ldv_53763;
  case 11:
  ldv_handler_precall();
  tcm_vhost_parse_pr_out_transport_id(var_group3, var_tcm_vhost_parse_pr_out_transport_id_9_p1,
                                      var_tcm_vhost_parse_pr_out_transport_id_9_p2,
                                      var_tcm_vhost_parse_pr_out_transport_id_9_p3);
  goto ldv_53763;
  case 12:
  ldv_handler_precall();
  tcm_vhost_check_true(var_group3);
  goto ldv_53763;
  case 13:
  ldv_handler_precall();
  tcm_vhost_check_false(var_group3);
  goto ldv_53763;
  case 14:
  ldv_handler_precall();
  tcm_vhost_alloc_fabric_acl(var_group3);
  goto ldv_53763;
  case 15:
  ldv_handler_precall();
  tcm_vhost_release_fabric_acl(var_group3, var_group4);
  goto ldv_53763;
  case 16:
  ldv_handler_precall();
  tcm_vhost_tpg_get_inst_index(var_group3);
  goto ldv_53763;
  case 17:
  ldv_handler_precall();
  tcm_vhost_release_cmd(var_group5);
  goto ldv_53763;
  case 18:
  ldv_handler_precall();
  tcm_vhost_shutdown_session(var_group6);
  goto ldv_53763;
  case 19:
  ldv_handler_precall();
  tcm_vhost_close_session(var_group6);
  goto ldv_53763;
  case 20:
  ldv_handler_precall();
  tcm_vhost_sess_get_index(var_group6);
  goto ldv_53763;
  case 21:
  ldv_handler_precall();
  tcm_vhost_write_pending(var_group5);
  goto ldv_53763;
  case 22:
  ldv_handler_precall();
  tcm_vhost_write_pending_status(var_group5);
  goto ldv_53763;
  case 23:
  ldv_handler_precall();
  tcm_vhost_set_default_node_attrs(var_group4);
  goto ldv_53763;
  case 24:
  ldv_handler_precall();
  tcm_vhost_get_task_tag(var_group5);
  goto ldv_53763;
  case 25:
  ldv_handler_precall();
  tcm_vhost_get_cmd_state(var_group5);
  goto ldv_53763;
  case 26:
  ldv_handler_precall();
  tcm_vhost_queue_data_in(var_group5);
  goto ldv_53763;
  case 27:
  ldv_handler_precall();
  tcm_vhost_queue_status(var_group5);
  goto ldv_53763;
  case 28:
  ldv_handler_precall();
  tcm_vhost_queue_tm_rsp(var_group5);
  goto ldv_53763;
  case 29:
  ldv_handler_precall();
  tcm_vhost_make_tport(var_group7, var_group8, var_tcm_vhost_make_tport_59_p2);
  goto ldv_53763;
  case 30:
  ldv_handler_precall();
  tcm_vhost_drop_tport(var_group9);
  goto ldv_53763;
  case 31:
  ldv_handler_precall();
  tcm_vhost_make_tpg(var_group9, var_group8, var_tcm_vhost_make_tpg_57_p2);
  goto ldv_53763;
  case 32:
  ldv_handler_precall();
  tcm_vhost_drop_tpg(var_group3);
  goto ldv_53763;
  case 33:
  ldv_handler_precall();
  tcm_vhost_port_link(var_group3, var_group10);
  goto ldv_53763;
  case 34:
  ldv_handler_precall();
  tcm_vhost_port_unlink(var_group3, var_group10);
  goto ldv_53763;
  case 35:
  ldv_handler_precall();
  tcm_vhost_make_nodeacl(var_group3, var_group8, var_tcm_vhost_make_nodeacl_51_p2);
  goto ldv_53763;
  case 36:
  ldv_handler_precall();
  tcm_vhost_drop_nodeacl(var_group4);
  goto ldv_53763;
  default: ;
  goto ldv_53763;
  }
  ldv_53763: ;
  ldv_53802:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_vhost_scsi_fops_file_operations != 0) {
    goto ldv_53801;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  tcm_vhost_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_10(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tv_tpg_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tv_tpg_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tcm_vhost_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
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
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
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
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mtx ;
int ldv_mutex_lock_interruptible_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mtx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mtx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mtx(struct mutex *lock )
{
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mtx = 2;
  return;
}
}
int ldv_mutex_trylock_mtx(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mtx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mtx(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mtx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mtx(struct mutex *lock )
{
  {
  if (ldv_mutex_mtx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mtx = 1;
  return;
}
}
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
static int ldv_mutex_tcm_vhost_mutex ;
int ldv_mutex_lock_interruptible_tcm_vhost_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tcm_vhost_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tcm_vhost_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tcm_vhost_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tcm_vhost_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_tcm_vhost_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_tcm_vhost_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_tcm_vhost_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tcm_vhost_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tcm_vhost_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tcm_vhost_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tcm_vhost_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_tcm_vhost_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tcm_vhost_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_tcm_vhost_mutex = 1;
  return;
}
}
static int ldv_mutex_tv_tpg_mutex ;
int ldv_mutex_lock_interruptible_tv_tpg_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tv_tpg_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tv_tpg_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tv_tpg_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tv_tpg_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_tv_tpg_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_tv_tpg_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_tv_tpg_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tv_tpg_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tv_tpg_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tv_tpg_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tv_tpg_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_tv_tpg_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tv_tpg_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_tv_tpg_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mtx = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_tcm_vhost_mutex = 1;
  ldv_mutex_tv_tpg_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_tcm_vhost_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_tv_tpg_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __transport_register_session(struct se_portal_group *arg0, struct se_node_acl *arg1, struct se_session *arg2, void *arg3) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cgroup_attach_task_all(struct task_struct *arg0, struct task_struct *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct se_node_acl *core_tpg_add_initiator_node_acl(struct se_portal_group *arg0, struct se_node_acl *arg1, const char *arg2, u32 arg3) {
  return (struct se_node_acl *)external_alloc();
}
void *external_alloc(void);
struct se_node_acl *core_tpg_check_initiator_node_acl(struct se_portal_group *arg0, unsigned char *arg1) {
  return (struct se_node_acl *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int core_tpg_del_initiator_node_acl(struct se_portal_group *arg0, struct se_node_acl *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int core_tpg_deregister(struct se_portal_group *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int core_tpg_register(struct target_core_fabric_ops *arg0, struct se_wwn *arg1, struct se_portal_group *arg2, void *arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *external_alloc(void);
struct eventfd_ctx *eventfd_ctx_fileget(struct file *arg0) {
  return (struct eventfd_ctx *)external_alloc();
}
void eventfd_ctx_put(struct eventfd_ctx *arg0) {
  return;
}
void *external_alloc(void);
struct file *eventfd_fget(int arg0) {
  return (struct file *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
__u64 eventfd_signal(struct eventfd_ctx *arg0, __u64 arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 fc_get_fabric_proto_ident(struct se_portal_group *arg0) {
  return __VERIFIER_nondet_uchar();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 fc_get_pr_transport_id(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3, unsigned char *arg4) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 fc_get_pr_transport_id_len(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
char *fc_parse_pr_out_transport_id(struct se_portal_group *arg0, const char *arg1, u32 *arg2, char **arg3) {
  return (char *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void fput(struct file *arg0) {
  return;
}
void *external_alloc(void);
struct mm_struct *get_task_mm(struct task_struct *arg0) {
  return (struct mm_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int get_user_pages_fast(unsigned long arg0, int arg1, int arg2, struct page **arg3) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 iscsi_get_fabric_proto_ident(struct se_portal_group *arg0) {
  return __VERIFIER_nondet_uchar();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 iscsi_get_pr_transport_id(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3, unsigned char *arg4) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 iscsi_get_pr_transport_id_len(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
char *iscsi_parse_pr_out_transport_id(struct se_portal_group *arg0, const char *arg1, u32 *arg2, char **arg3) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
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
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int memcpy_fromiovec(unsigned char *arg0, struct iovec *arg1, int arg2) {
  return __VERIFIER_nondet_int();
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
void mmput(struct mm_struct *arg0) {
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
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rcu_is_cpu_idle() {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 sas_get_fabric_proto_ident(struct se_portal_group *arg0) {
  return __VERIFIER_nondet_uchar();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 sas_get_pr_transport_id(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3, unsigned char *arg4) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 sas_get_pr_transport_id_len(struct se_portal_group *arg0, struct se_node_acl *arg1, struct t10_pr_registration *arg2, int *arg3) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
char *sas_parse_pr_out_transport_id(struct se_portal_group *arg0, const char *arg1, u32 *arg2, char **arg3) {
  return (char *)external_alloc();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int set_page_dirty_lock(struct page *arg0) {
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void synchronize_sched() {
  return;
}
void target_execute_cmd(struct se_cmd *arg0) {
  return;
}
void target_fabric_configfs_deregister(struct target_fabric_configfs *arg0) {
  return;
}
void *external_alloc(void);
struct target_fabric_configfs *target_fabric_configfs_init(struct module *arg0, const char *arg1) {
  return (struct target_fabric_configfs *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int target_fabric_configfs_register(struct target_fabric_configfs *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int target_submit_cmd_map_sgls(struct se_cmd *arg0, struct se_session *arg1, unsigned char *arg2, unsigned char *arg3, u32 arg4, u32 arg5, int arg6, int arg7, int arg8, struct scatterlist *arg9, u32 arg10, struct scatterlist *arg11, u32 arg12) {
  return __VERIFIER_nondet_int();
}
void transport_deregister_session(struct se_session *arg0) {
  return;
}
void transport_free_session(struct se_session *arg0) {
  return;
}
void transport_generic_free_cmd(struct se_cmd *arg0, int arg1) {
  return;
}
void *external_alloc(void);
struct se_session *transport_init_session() {
  return (struct se_session *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int transport_send_check_condition_and_sense(struct se_cmd *arg0, u8 arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void unuse_mm(struct mm_struct *arg0) {
  return;
}
void use_mm(struct mm_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
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
