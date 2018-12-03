extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __kernel_long_t __kernel_suseconds_t;
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
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
typedef void (*ctor_fn_t)(void);
struct __anonstruct_ldv_1821_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1836_13 {
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
union __anonunion_ldv_1837_11 {
   struct __anonstruct_ldv_1821_12 ldv_1821 ;
   struct __anonstruct_ldv_1836_13 ldv_1836 ;
};
struct desc_struct {
   union __anonunion_ldv_1837_11 ldv_1837 ;
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
union __anonunion_ldv_2243_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2243_18 ldv_2243 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2250_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct_ldv_2250_20 ldv_2250 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
struct file_operations;
struct device;
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
union __anonunion_ldv_3460_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_3460_25 ldv_3460 ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct_ldv_5545_30 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5551_31 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5552_29 {
   struct __anonstruct_ldv_5545_30 ldv_5545 ;
   struct __anonstruct_ldv_5551_31 ldv_5551 ;
};
union __anonunion_ldv_5561_32 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5552_29 ldv_5552 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5561_32 ldv_5561 ;
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
struct __anonstruct_ldv_7685_100 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_7686_99 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_7685_100 ldv_7685 ;
};
struct spinlock {
   union __anonunion_ldv_7686_99 ldv_7686 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_101 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_101 rwlock_t;
struct static_key {
   atomic_t enabled ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_103 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_103 nodemask_t;
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
struct __anonstruct_mm_context_t_104 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_104 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kref {
   atomic_t refcount ;
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
struct __anonstruct_kuid_t_133 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_133 kuid_t;
struct __anonstruct_kgid_t_134 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_134 kgid_t;
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct attribute_group const **dev_groups ;
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
struct acpi_dev_node {
   void *handle ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_16410_136 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_16411_135 {
   struct __anonstruct_ldv_16410_136 ldv_16410 ;
};
struct lockref {
   union __anonunion_ldv_16411_135 ldv_16411 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_16432_138 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_16434_137 {
   struct __anonstruct_ldv_16432_138 ldv_16432 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_16434_137 ldv_16434 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_139 {
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
   union __anonunion_d_u_139 d_u ;
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
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
};
struct radix_tree_node;
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
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
struct __anonstruct_kprojid_t_141 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_141 kprojid_t;
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
union __anonunion_ldv_17577_142 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_17577_142 ldv_17577 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_144 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_143 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_144 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_143 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
union __anonunion_ldv_18024_145 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18044_146 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_18060_147 {
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
   union __anonunion_ldv_18024_145 ldv_18024 ;
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
   union __anonunion_ldv_18044_146 ldv_18044 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_18060_147 ldv_18060 ;
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
union __anonunion_f_u_148 {
   struct list_head fu_list ;
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_148 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
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
struct __anonstruct_afs_150 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_149 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_150 afs ;
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
   union __anonunion_fl_u_149 fl_u ;
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
struct return_instance;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct return_instance *return_instances ;
   unsigned int depth ;
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
union __anonunion_ldv_20205_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_20215_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_20217_155 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_20215_156 ldv_20215 ;
   int units ;
};
struct __anonstruct_ldv_20219_154 {
   union __anonunion_ldv_20217_155 ldv_20217 ;
   atomic_t _count ;
};
union __anonunion_ldv_20220_153 {
   unsigned long counters ;
   struct __anonstruct_ldv_20219_154 ldv_20219 ;
};
struct __anonstruct_ldv_20221_151 {
   union __anonunion_ldv_20205_152 ldv_20205 ;
   union __anonunion_ldv_20220_153 ldv_20220 ;
};
struct __anonstruct_ldv_20228_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_20232_157 {
   struct list_head lru ;
   struct __anonstruct_ldv_20228_158 ldv_20228 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_20237_159 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_20221_151 ldv_20221 ;
   union __anonunion_ldv_20232_157 ldv_20232 ;
   union __anonunion_ldv_20237_159 ldv_20237 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_160 {
   struct __anonstruct_linear_161 linear ;
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
   union __anonunion_shared_160 shared ;
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
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
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
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_162 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_162 sigset_t;
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
struct __anonstruct__kill_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_165 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_168 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_169 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_170 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_163 {
   int _pad[28U] ;
   struct __anonstruct__kill_164 _kill ;
   struct __anonstruct__timer_165 _timer ;
   struct __anonstruct__rt_166 _rt ;
   struct __anonstruct__sigchld_167 _sigchld ;
   struct __anonstruct__sigfault_168 _sigfault ;
   struct __anonstruct__sigpoll_169 _sigpoll ;
   struct __anonstruct__sigsys_170 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_163 _sifields ;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_21902_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_21911_176 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_178 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_21902_175 ldv_21902 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_21911_176 ldv_21911 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_payload_178 payload ;
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
   unsigned long inv_weight ;
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
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   unsigned char may_oom : 1 ;
   unsigned char in_memcg_oom : 1 ;
   unsigned char oom_locked : 1 ;
   int wakeups ;
   struct mem_cgroup *wait_on_memcg ;
};
struct sched_class;
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
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
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
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
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
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct usb_device;
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
   unsigned char reset_running : 1 ;
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
struct tty_driver;
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
union __anonunion_ldv_24651_180 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_24651_180 ldv_24651 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t memory_used ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   void (*drop)(struct tty_port * ) ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_25393_182 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_25394_181 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_25393_182 ldv_25393 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_25394_181 ldv_25394 ;
};
struct v4l2_control;
struct i2c_adapter;
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
union __anonunion_ldv_28790_187 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_28790_187 ldv_28790 ;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __s32 width ;
   __s32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_29722_188 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_29722_188 ldv_29722 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_29741_189 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_29741_189 ldv_29741 ;
   __u32 reserved[2U] ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion_ldv_29874_192 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_29874_192 ldv_29874 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_29895_193 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion_ldv_29895_193 ldv_29895 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_29925_194 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_29925_194 ldv_29925 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion_ldv_29958_195 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion_ldv_29958_195 ldv_29958 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
union __anonunion_parm_204 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_204 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion_ldv_30160_207 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_30160_207 ldv_30160 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_214 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_215 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_216 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_213 {
   struct __anonstruct_v4l_214 v4l ;
   struct __anonstruct_fb_215 fb ;
   struct __anonstruct_alsa_216 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_213 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_219 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_220 {
   char const *name ;
};
struct __anonstruct_i2c_221 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_222 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_218 {
   struct __anonstruct_of_219 of ;
   struct __anonstruct_device_name_220 device_name ;
   struct __anonstruct_i2c_221 i2c ;
   struct __anonstruct_custom_222 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_218 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
};
struct __anonstruct_pad_223 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_223 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
enum parse_state {
    parse_state_continue = 0,
    parse_state_next_frame = 1,
    parse_state_out = 2,
    parse_state_end_parse = 3
} ;
enum stream_state {
    stream_off = 0,
    stream_idle = 1,
    stream_interrupt = 2,
    stream_on = 3
} ;
enum isoc_state {
    isoc_state_in_frame = 0,
    isoc_state_no_frame = 1
} ;
struct usbvision_sbuf {
   char *data ;
   struct urb *urb ;
};
struct usbvision_v4l2_format_st {
   int supported ;
   int bytes_per_pixel ;
   int depth ;
   int format ;
   char *desc ;
};
struct usbvision_frame_header {
   unsigned char magic_1 ;
   unsigned char magic_2 ;
   unsigned char header_length ;
   unsigned char frame_num ;
   unsigned char frame_phase ;
   unsigned char frame_latency ;
   unsigned char data_format ;
   unsigned char format_param ;
   unsigned char frame_width_lo ;
   unsigned char frame_width_hi ;
   unsigned char frame_height_lo ;
   unsigned char frame_height_hi ;
   __u16 frame_width ;
   __u16 frame_height ;
};
struct usbvision_frame {
   char *data ;
   struct usbvision_frame_header isoc_header ;
   int width ;
   int height ;
   int index ;
   int frmwidth ;
   int frmheight ;
   int volatile grabstate ;
   int scanstate ;
   struct list_head frame ;
   int curline ;
   long scanlength ;
   long bytes_read ;
   struct usbvision_v4l2_format_st v4l2_format ;
   int v4l2_linesize ;
   struct timeval timestamp ;
   int sequence ;
};
struct usbvision_device_data_st {
   __u64 video_norm ;
   char const *model_string ;
   int interface ;
   __u16 codec ;
   unsigned char video_channels : 3 ;
   unsigned char audio_channels : 2 ;
   unsigned char radio : 1 ;
   unsigned char vbi : 1 ;
   unsigned char tuner : 1 ;
   unsigned char vin_reg1_override : 1 ;
   unsigned char vin_reg2_override : 1 ;
   unsigned char dvi_yuv_override : 1 ;
   __u8 vin_reg1 ;
   __u8 vin_reg2 ;
   __u8 dvi_yuv ;
   __u8 tuner_type ;
   __s16 x_offset ;
   __s16 y_offset ;
};
struct usb_usbvision {
   struct v4l2_device v4l2_dev ;
   struct video_device *vdev ;
   struct video_device *rdev ;
   struct i2c_adapter i2c_adap ;
   int registered_i2c ;
   struct urb *ctrl_urb ;
   unsigned char ctrl_urb_buffer[8U] ;
   int ctrl_urb_busy ;
   struct usb_ctrlrequest ctrl_urb_setup ;
   wait_queue_head_t ctrl_urb_wq ;
   int have_tuner ;
   int tuner_type ;
   int bridge_type ;
   int radio ;
   int video_inputs ;
   unsigned long freq ;
   int audio_mute ;
   int audio_channel ;
   int isoc_mode ;
   unsigned int nr ;
   struct usb_device *dev ;
   int num_alt ;
   unsigned int *alt_max_pkt_size ;
   unsigned char iface ;
   unsigned char iface_alt ;
   unsigned char vin_reg2_preset ;
   struct mutex v4l2_lock ;
   struct timer_list power_off_timer ;
   struct work_struct power_off_work ;
   int power ;
   int user ;
   int initialized ;
   int dev_model ;
   enum stream_state streaming ;
   int last_error ;
   int curwidth ;
   int curheight ;
   int stretch_width ;
   int stretch_height ;
   char *fbuf ;
   int max_frame_size ;
   int fbuf_size ;
   spinlock_t queue_lock ;
   struct list_head inqueue ;
   struct list_head outqueue ;
   wait_queue_head_t wait_frame ;
   wait_queue_head_t wait_stream ;
   struct usbvision_frame *cur_frame ;
   struct usbvision_frame frame[3U] ;
   int num_frames ;
   struct usbvision_sbuf sbuf[2U] ;
   int volatile remove_pending ;
   unsigned char *scratch ;
   int scratch_read_ptr ;
   int scratch_write_ptr ;
   int scratch_headermarker[20U] ;
   int scratch_headermarker_read_ptr ;
   int scratch_headermarker_write_ptr ;
   enum isoc_state isocstate ;
   struct usbvision_v4l2_format_st palette ;
   struct v4l2_capability vcap ;
   unsigned int ctl_input ;
   v4l2_std_id tvnorm_id ;
   unsigned char video_endp ;
   unsigned char *intra_frame_buffer ;
   int block_pos ;
   int request_intra ;
   int last_isoc_frame_num ;
   int isoc_packet_size ;
   int used_bandwidth ;
   int compr_level ;
   int last_compr_level ;
   int usb_bandwidth ;
   unsigned long isoc_urb_count ;
   unsigned long urb_length ;
   unsigned long isoc_data_count ;
   unsigned long header_count ;
   unsigned long scratch_ovf_count ;
   unsigned long isoc_skip_count ;
   unsigned long isoc_err_count ;
   unsigned long isoc_packet_count ;
   unsigned long time_in_irq ;
   int isoc_measure_bandwidth_count ;
   int frame_num ;
   int max_strip_len ;
   int comprblock_pos ;
   int strip_len_errors ;
   int strip_magic_errors ;
   int strip_line_number_errors ;
   int compr_block_types[4U] ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
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
struct compat_timespec;
struct __anonstruct_futex_22 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_23 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_24 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_3312_21 {
   struct __anonstruct_futex_22 futex ;
   struct __anonstruct_nanosleep_23 nanosleep ;
   struct __anonstruct_poll_24 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_3312_21 ldv_3312 ;
};
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
struct __anonstruct_mm_segment_t_34 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_34 mm_segment_t;
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
enum hrtimer_restart;
struct usb_driver;
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
struct v4l2_buffer;
struct v4l2_format;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_190 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_190 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_191 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_191 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_197 {
   __u32 data[8U] ;
};
union __anonunion_ldv_30027_196 {
   struct __anonstruct_raw_197 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_30027_196 ldv_30027 ;
};
struct __anonstruct_stop_199 {
   __u64 pts ;
};
struct __anonstruct_start_200 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_201 {
   __u32 data[16U] ;
};
union __anonunion_ldv_30042_198 {
   struct __anonstruct_stop_199 stop ;
   struct __anonstruct_start_200 start ;
   struct __anonstruct_raw_201 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_30042_198 ldv_30042 ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_203 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_203 fmt ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
enum hrtimer_restart;
enum v4l2_i2c_tuner_type {
    ADDRS_RADIO = 0,
    ADDRS_DEMOD = 1,
    ADDRS_TV = 2,
    ADDRS_TV_WITH_DEMOD = 3
} ;
long ldv__builtin_expect(long exp , long c ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
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
extern int printk(char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3554;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3554;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3554;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3554;
  default:
  __bad_percpu_size();
  }
  ldv_3554: ;
  return (pfo_ret__);
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
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
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_7686.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_7686.rlock, flags);
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_1(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_5(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_7(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_6(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(4096, wq, work);
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
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static int waitqueue_active(wait_queue_head_t *q )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& q->task_list));
  return (tmp == 0);
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void *vmalloc_32(unsigned long ) ;
extern void vfree(void const * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern long schedule_timeout(long ) ;
__inline static void usb_fill_control_urb(struct urb *urb , struct usb_device *dev ,
                                          unsigned int pipe , unsigned char *setup_packet ,
                                          void *transfer_buffer , int buffer_length ,
                                          void (*complete_fn)(struct urb * ) , void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->setup_packet = setup_packet;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
struct urb *ldv_usb_alloc_urb_8(int iso_packets , gfp_t mem_flags ) ;
void ldv_usb_free_urb_10(struct urb *urb ) ;
int ldv_usb_submit_urb_3(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_4(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_9(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
struct urb *ldv_alloc_urb(void) ;
void ldv_free_urb(struct urb *urb ) ;
int ldv_submit_urb(struct urb *urb ) ;
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
int ldv_timer_state_1 = 0;
struct timer_list *ldv_timer_list_1 ;
int reg_timer_1(struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(struct timer_list *timer ) ;
__inline static void SetPageReserved(struct page *page )
{
  {
  set_bit(10L, (unsigned long volatile *)(& page->flags));
  return;
}
}
__inline static void ClearPageReserved(struct page *page )
{
  {
  clear_bit(10L, (unsigned long volatile *)(& page->flags));
  return;
}
}
extern struct page *vmalloc_to_page(void const * ) ;
extern void v4l2_get_timestamp(struct timeval * ) ;
struct usbvision_device_data_st usbvision_device_data[67U] ;
int usbvision_i2c_unregister(struct usb_usbvision *usbvision ) ;
int usbvision_read_reg(struct usb_usbvision *usbvision , unsigned char reg ) ;
int usbvision_write_reg(struct usb_usbvision *usbvision , unsigned char reg , unsigned char value ) ;
int usbvision_frames_alloc(struct usb_usbvision *usbvision , int number_of_frames ) ;
void usbvision_frames_free(struct usb_usbvision *usbvision ) ;
int usbvision_scratch_alloc(struct usb_usbvision *usbvision ) ;
void usbvision_scratch_free(struct usb_usbvision *usbvision ) ;
int usbvision_decompress_alloc(struct usb_usbvision *usbvision ) ;
void usbvision_decompress_free(struct usb_usbvision *usbvision ) ;
int usbvision_setup(struct usb_usbvision *usbvision , int format ) ;
int usbvision_init_isoc(struct usb_usbvision *usbvision ) ;
int usbvision_restart_isoc(struct usb_usbvision *usbvision ) ;
void usbvision_stop_isoc(struct usb_usbvision *usbvision ) ;
int usbvision_set_alternate(struct usb_usbvision *dev ) ;
int usbvision_set_audio(struct usb_usbvision *usbvision , int audio_channel ) ;
int usbvision_audio_off(struct usb_usbvision *usbvision ) ;
int usbvision_begin_streaming(struct usb_usbvision *usbvision ) ;
void usbvision_empty_framequeues(struct usb_usbvision *usbvision ) ;
int usbvision_stream_interrupt(struct usb_usbvision *usbvision ) ;
int usbvision_muxsel(struct usb_usbvision *usbvision , int channel ) ;
int usbvision_set_input(struct usb_usbvision *usbvision ) ;
int usbvision_set_output(struct usb_usbvision *usbvision , int width , int height ) ;
void usbvision_init_power_off_timer(struct usb_usbvision *usbvision ) ;
void usbvision_set_power_off_timer(struct usb_usbvision *usbvision ) ;
void usbvision_reset_power_off_timer(struct usb_usbvision *usbvision ) ;
int usbvision_power_off(struct usb_usbvision *usbvision ) ;
int usbvision_power_on(struct usb_usbvision *usbvision ) ;
static unsigned int core_debug ;
static int adjust_compression = 1;
static int switch_svideo_input ;
static unsigned int adjust_x_offset = 4294967295U;
static unsigned int adjust_y_offset = 4294967295U;
static int const scratch_buf_size = 131072;
static int usbvision_request_intra(struct usb_usbvision *usbvision ) ;
static int usbvision_unrequest_intra(struct usb_usbvision *usbvision ) ;
static int usbvision_adjust_compression(struct usb_usbvision *usbvision ) ;
static int usbvision_measure_bandwidth(struct usb_usbvision *usbvision ) ;
static void *usbvision_rvmalloc(unsigned long size )
{
  void *mem ;
  unsigned long adr ;
  struct page *tmp ;
  {
  size = (size + 4095UL) & 0xfffffffffffff000UL;
  mem = vmalloc_32(size);
  if ((unsigned long )mem == (unsigned long )((void *)0)) {
    return ((void *)0);
  } else {
  }
  memset(mem, 0, size);
  adr = (unsigned long )mem;
  goto ldv_32612;
  ldv_32611:
  tmp = vmalloc_to_page((void const *)adr);
  SetPageReserved(tmp);
  adr = adr + 4096UL;
  size = size - 4096UL;
  ldv_32612: ;
  if (size != 0UL) {
    goto ldv_32611;
  } else {
  }
  return (mem);
}
}
static void usbvision_rvfree(void *mem , unsigned long size )
{
  unsigned long adr ;
  struct page *tmp ;
  {
  if ((unsigned long )mem == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  size = (size + 4095UL) & 0xfffffffffffff000UL;
  adr = (unsigned long )mem;
  goto ldv_32620;
  ldv_32619:
  tmp = vmalloc_to_page((void const *)adr);
  ClearPageReserved(tmp);
  adr = adr + 4096UL;
  size = size - 4096UL;
  ldv_32620: ;
  if ((long )size > 0L) {
    goto ldv_32619;
  } else {
  }
  vfree((void const *)mem);
  return;
}
}
static int scratch_len(struct usb_usbvision *usbvision )
{
  int len ;
  {
  len = usbvision->scratch_write_ptr - usbvision->scratch_read_ptr;
  if (len < 0) {
    len = len + (int )scratch_buf_size;
  } else {
  }
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] scratch_len() = %d\n", "scratch_len", 263, len);
  } else {
  }
  return (len);
}
}
static int scratch_free(struct usb_usbvision *usbvision )
{
  int free ;
  {
  free = usbvision->scratch_read_ptr - usbvision->scratch_write_ptr;
  if (free <= 0) {
    free = free + (int )scratch_buf_size;
  } else {
  }
  if (free != 0) {
    free = free + -1;
  } else {
  }
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] return %d\n", "scratch_free", 279, free);
  } else {
  }
  return (free);
}
}
static int scratch_put(struct usb_usbvision *usbvision , unsigned char *data , int len )
{
  int len_part ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  if (usbvision->scratch_write_ptr + len < (int )scratch_buf_size) {
    __len = (size_t )len;
    __ret = memcpy((void *)usbvision->scratch + (unsigned long )usbvision->scratch_write_ptr,
                             (void const *)data, __len);
    usbvision->scratch_write_ptr = usbvision->scratch_write_ptr + len;
  } else {
    len_part = (int )scratch_buf_size - usbvision->scratch_write_ptr;
    __len___0 = (size_t )len_part;
    __ret___0 = memcpy((void *)usbvision->scratch + (unsigned long )usbvision->scratch_write_ptr,
                                 (void const *)data, __len___0);
    if (len == len_part) {
      usbvision->scratch_write_ptr = 0;
    } else {
      __len___1 = (size_t )(len - len_part);
      __ret___1 = memcpy((void *)usbvision->scratch, (void const *)data + (unsigned long )len_part,
                                   __len___1);
      usbvision->scratch_write_ptr = len - len_part;
    }
  }
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] len=%d, new write_ptr=%d\n", "scratch_put", 305,
           len, usbvision->scratch_write_ptr);
  } else {
  }
  return (len);
}
}
static void scratch_mark_header(struct usb_usbvision *usbvision )
{
  {
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] header at write_ptr=%d\n", "scratch_mark_header",
           313, usbvision->scratch_headermarker_write_ptr);
  } else {
  }
  usbvision->scratch_headermarker[usbvision->scratch_headermarker_write_ptr] = usbvision->scratch_write_ptr;
  usbvision->scratch_headermarker_write_ptr = usbvision->scratch_headermarker_write_ptr + 1;
  usbvision->scratch_headermarker_write_ptr = usbvision->scratch_headermarker_write_ptr % 20;
  return;
}
}
static int scratch_get_extra(struct usb_usbvision *usbvision , unsigned char *data ,
                             int *ptr , int len )
{
  int len_part ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  if (*ptr + len < (int )scratch_buf_size) {
    __len = (size_t )len;
    __ret = memcpy((void *)data, (void const *)usbvision->scratch + (unsigned long )*ptr,
                             __len);
    *ptr = *ptr + len;
  } else {
    len_part = (int )scratch_buf_size - *ptr;
    __len___0 = (size_t )len_part;
    __ret___0 = memcpy((void *)data, (void const *)usbvision->scratch + (unsigned long )*ptr,
                                 __len___0);
    if (len == len_part) {
      *ptr = 0;
    } else {
      __len___1 = (size_t )(len - len_part);
      __ret___1 = memcpy((void *)data + (unsigned long )len_part, (void const *)usbvision->scratch,
                                   __len___1);
      *ptr = len - len_part;
    }
  }
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] len=%d, new ptr=%d\n", "scratch_get_extra", 341,
           len, *ptr);
  } else {
  }
  return (len);
}
}
static void scratch_set_extra_ptr(struct usb_usbvision *usbvision , int *ptr , int len )
{
  {
  *ptr = (usbvision->scratch_read_ptr + len) % (int )scratch_buf_size;
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] ptr=%d\n", "scratch_set_extra_ptr", 353, *ptr);
  } else {
  }
  return;
}
}
static void scratch_inc_extra_ptr(int *ptr , int len )
{
  {
  *ptr = (*ptr + len) % (int )scratch_buf_size;
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] ptr=%d\n", "scratch_inc_extra_ptr", 362, *ptr);
  } else {
  }
  return;
}
}
static int scratch_get(struct usb_usbvision *usbvision , unsigned char *data , int len )
{
  int len_part ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  if (usbvision->scratch_read_ptr + len < (int )scratch_buf_size) {
    __len = (size_t )len;
    __ret = memcpy((void *)data, (void const *)usbvision->scratch + (unsigned long )usbvision->scratch_read_ptr,
                             __len);
    usbvision->scratch_read_ptr = usbvision->scratch_read_ptr + len;
  } else {
    len_part = (int )scratch_buf_size - usbvision->scratch_read_ptr;
    __len___0 = (size_t )len_part;
    __ret___0 = memcpy((void *)data, (void const *)usbvision->scratch + (unsigned long )usbvision->scratch_read_ptr,
                                 __len___0);
    if (len == len_part) {
      usbvision->scratch_read_ptr = 0;
    } else {
      __len___1 = (size_t )(len - len_part);
      __ret___1 = memcpy((void *)data + (unsigned long )len_part, (void const *)usbvision->scratch,
                                   __len___1);
      usbvision->scratch_read_ptr = len - len_part;
    }
  }
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] len=%d, new read_ptr=%d\n", "scratch_get", 386,
           len, usbvision->scratch_read_ptr);
  } else {
  }
  return (len);
}
}
static int scratch_get_header(struct usb_usbvision *usbvision , struct usbvision_frame_header *header )
{
  int err_code ;
  {
  err_code = 0;
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] from read_ptr=%d", "scratch_get_header", 398, usbvision->scratch_headermarker_read_ptr);
  } else {
  }
  goto ldv_32704;
  ldv_32703:
  usbvision->scratch_read_ptr = usbvision->scratch_headermarker[usbvision->scratch_headermarker_read_ptr];
  usbvision->scratch_headermarker_read_ptr = usbvision->scratch_headermarker_read_ptr + 1;
  usbvision->scratch_headermarker_read_ptr = usbvision->scratch_headermarker_read_ptr % 20;
  scratch_get(usbvision, (unsigned char *)header, 12);
  if (((unsigned int )header->magic_1 == 85U && (unsigned int )header->magic_2 == 170U) && (unsigned int )header->header_length == 12U) {
    err_code = 12;
    header->frame_width = (int )((__u16 )header->frame_width_lo) + ((int )((__u16 )header->frame_width_hi) << 8U);
    header->frame_height = (int )((__u16 )header->frame_height_lo) + ((int )((__u16 )header->frame_height_hi) << 8U);
    goto ldv_32702;
  } else {
  }
  ldv_32704: ;
  if (usbvision->scratch_headermarker_write_ptr != usbvision->scratch_headermarker_read_ptr) {
    goto ldv_32703;
  } else {
  }
  ldv_32702: ;
  return (err_code);
}
}
static void scratch_rm_old(struct usb_usbvision *usbvision , int len )
{
  {
  usbvision->scratch_read_ptr = usbvision->scratch_read_ptr + len;
  usbvision->scratch_read_ptr = usbvision->scratch_read_ptr % (int )scratch_buf_size;
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] read_ptr is now %d\n", "scratch_rm_old", 426, usbvision->scratch_read_ptr);
  } else {
  }
  return;
}
}
static void scratch_reset(struct usb_usbvision *usbvision )
{
  {
  if ((core_debug & 16U) != 0U) {
    printk("\016usbvision:[%s:%d] \n", "scratch_reset", 433);
  } else {
  }
  usbvision->scratch_read_ptr = 0;
  usbvision->scratch_write_ptr = 0;
  usbvision->scratch_headermarker_read_ptr = 0;
  usbvision->scratch_headermarker_write_ptr = 0;
  usbvision->isocstate = 1;
  return;
}
}
int usbvision_scratch_alloc(struct usb_usbvision *usbvision )
{
  void *tmp ;
  {
  tmp = vmalloc_32((unsigned long )scratch_buf_size);
  usbvision->scratch = (unsigned char *)tmp;
  scratch_reset(usbvision);
  if ((unsigned long )usbvision->scratch == (unsigned long )((unsigned char *)0U)) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: unable to allocate %d bytes for scratch\n",
            "usbvision_scratch_alloc", scratch_buf_size);
    return (-12);
  } else {
  }
  return (0);
}
}
void usbvision_scratch_free(struct usb_usbvision *usbvision )
{
  {
  vfree((void const *)usbvision->scratch);
  usbvision->scratch = (unsigned char *)0U;
  return;
}
}
int usbvision_decompress_alloc(struct usb_usbvision *usbvision )
{
  int IFB_size ;
  void *tmp ;
  {
  IFB_size = 115200;
  tmp = vmalloc_32((unsigned long )IFB_size);
  usbvision->intra_frame_buffer = (unsigned char *)tmp;
  if ((unsigned long )usbvision->intra_frame_buffer == (unsigned long )((unsigned char *)0U)) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: unable to allocate %d for compr. frame buffer\n",
            "usbvision_decompress_alloc", IFB_size);
    return (-12);
  } else {
  }
  return (0);
}
}
void usbvision_decompress_free(struct usb_usbvision *usbvision )
{
  {
  vfree((void const *)usbvision->intra_frame_buffer);
  usbvision->intra_frame_buffer = (unsigned char *)0U;
  return;
}
}
static enum parse_state usbvision_find_header(struct usb_usbvision *usbvision )
{
  struct usbvision_frame *frame ;
  int found_header ;
  int tmp ;
  {
  found_header = 0;
  frame = usbvision->cur_frame;
  goto ldv_32737;
  ldv_32736: ;
  if ((int )core_debug & 1) {
    printk("\016usbvision:[%s:%d] found header: 0x%02x%02x %d %d %d %d %#x 0x%02x %u %u",
           "usbvision_find_header", 519, (int )frame->isoc_header.magic_2, (int )frame->isoc_header.magic_1,
           (int )frame->isoc_header.header_length, (int )frame->isoc_header.frame_num,
           (int )frame->isoc_header.frame_phase, (int )frame->isoc_header.frame_latency,
           (int )frame->isoc_header.data_format, (int )frame->isoc_header.format_param,
           (int )frame->isoc_header.frame_width, (int )frame->isoc_header.frame_height);
  } else {
  }
  if (usbvision->request_intra != 0) {
    if ((int )((signed char )frame->isoc_header.format_param) < 0) {
      found_header = 1;
      usbvision->last_isoc_frame_num = -1;
      usbvision_unrequest_intra(usbvision);
      goto ldv_32735;
    } else {
    }
  } else {
    found_header = 1;
    goto ldv_32735;
  }
  ldv_32737:
  tmp = scratch_get_header(usbvision, & frame->isoc_header);
  if (tmp == 12) {
    goto ldv_32736;
  } else {
  }
  ldv_32735: ;
  if (found_header != 0) {
    frame->frmwidth = (int )frame->isoc_header.frame_width * usbvision->stretch_width;
    frame->frmheight = (int )frame->isoc_header.frame_height * usbvision->stretch_height;
    frame->v4l2_linesize = frame->frmwidth * frame->v4l2_format.depth >> 3;
  } else {
    if ((int )core_debug & 1) {
      printk("\016usbvision:[%s:%d] skipping scratch data, no header", "usbvision_find_header",
             539);
    } else {
    }
    scratch_reset(usbvision);
    return (3);
  }
  if ((unsigned int )frame->isoc_header.data_format == 96U) {
    if (usbvision->last_isoc_frame_num >= 0) {
      if ((usbvision->last_isoc_frame_num + 1) % 32 != (int )frame->isoc_header.frame_num) {
        if ((int )core_debug & 1) {
          printk("\016usbvision:[%s:%d] Lost frame before %d on USB", "usbvision_find_header",
                 550, (int )frame->isoc_header.frame_num);
        } else {
        }
        usbvision_request_intra(usbvision);
        return (1);
      } else {
      }
    } else {
    }
    usbvision->last_isoc_frame_num = (int )frame->isoc_header.frame_num;
  } else {
  }
  usbvision->header_count = usbvision->header_count + 1UL;
  frame->scanstate = 1;
  frame->curline = 0;
  return (0);
}
}
static enum parse_state usbvision_parse_lines_422(struct usb_usbvision *usbvision ,
                                                  long *pcopylen )
{
  struct usbvision_frame volatile *frame ;
  unsigned char *f ;
  int len ;
  int i ;
  unsigned char yuyv[4U] ;
  unsigned char rv ;
  unsigned char gv ;
  unsigned char bv ;
  int clipmask_index ;
  int bytes_per_pixel ;
  int stretch_bytes ;
  int clipmask_add ;
  int tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  int mm_y ;
  int mm_yc ;
  int mm_u ;
  int mm_v ;
  int mm_r ;
  int mm_g ;
  int mm_b ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  int mm_y___0 ;
  int mm_yc___0 ;
  int mm_u___0 ;
  int mm_v___0 ;
  int mm_r___0 ;
  int mm_g___0 ;
  int mm_b___0 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  unsigned char *tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  unsigned char *tmp___21 ;
  unsigned char *tmp___22 ;
  unsigned char *tmp___23 ;
  {
  yuyv[0] = 180U;
  yuyv[1] = 128U;
  yuyv[2] = 10U;
  yuyv[3] = 128U;
  frame = (struct usbvision_frame volatile *)usbvision->cur_frame;
  f = (unsigned char *)frame->data + (unsigned long )((int )frame->v4l2_linesize * (int )frame->curline);
  len = (int )frame->isoc_header.frame_width * 2 + 5;
  tmp = scratch_len(usbvision);
  if (tmp < len) {
    if ((core_debug & 8U) != 0U) {
      printk("\016usbvision:[%s:%d] out of data in line %d, need %u.\n", "usbvision_parse_lines_422",
             582, frame->curline, len);
    } else {
    }
    return (2);
  } else {
  }
  if ((int )frame->curline + 1 >= (int )frame->frmheight) {
    return (1);
  } else {
  }
  bytes_per_pixel = frame->v4l2_format.bytes_per_pixel;
  stretch_bytes = (usbvision->stretch_width + -1) * bytes_per_pixel;
  clipmask_index = (int )frame->curline * 320;
  clipmask_add = usbvision->stretch_width;
  i = 0;
  goto ldv_32780;
  ldv_32779:
  scratch_get(usbvision, (unsigned char *)(& yuyv), 4);
  if (frame->v4l2_format.format == (int volatile )1448695129) {
    tmp___0 = f;
    f = f + 1;
    *tmp___0 = yuyv[0];
    tmp___1 = f;
    f = f + 1;
    *tmp___1 = yuyv[3];
  } else {
    mm_y = (int )yuyv[0] + -16;
    mm_u = (int )yuyv[1] + -128;
    mm_v = (int )yuyv[3] + -128;
    mm_yc = mm_y * 76284;
    mm_b = (mm_v * 132252 + mm_yc) >> 16;
    mm_g = ((mm_u * -53281 + mm_v * -25625) + mm_yc) >> 16;
    mm_r = (mm_u * 104595 + mm_yc) >> 16;
    bv = mm_b >= 0 ? (unsigned char )(255 < mm_b ? 255 : mm_b) : 0U;
    gv = mm_g >= 0 ? (unsigned char )(255 < mm_g ? 255 : mm_g) : 0U;
    rv = mm_r >= 0 ? (unsigned char )(255 < mm_r ? 255 : mm_r) : 0U;
    switch (frame->v4l2_format.format) {
    case (int volatile )1346520914:
    tmp___2 = f;
    f = f + 1;
    *tmp___2 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___3 = f;
    f = f + 1;
    *tmp___3 = ((unsigned int )((int )gv >> 3) & 7U) | ((unsigned int )bv & 248U);
    goto ldv_32763;
    case (int volatile )859981650:
    tmp___4 = f;
    f = f + 1;
    *tmp___4 = rv;
    tmp___5 = f;
    f = f + 1;
    *tmp___5 = gv;
    tmp___6 = f;
    f = f + 1;
    *tmp___6 = bv;
    goto ldv_32763;
    case (int volatile )876758866:
    tmp___7 = f;
    f = f + 1;
    *tmp___7 = rv;
    tmp___8 = f;
    f = f + 1;
    *tmp___8 = gv;
    tmp___9 = f;
    f = f + 1;
    *tmp___9 = bv;
    f = f + 1;
    goto ldv_32763;
    case (int volatile )1329743698:
    tmp___10 = f;
    f = f + 1;
    *tmp___10 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___11 = f;
    f = f + 1;
    *tmp___11 = (unsigned char )(((int )((signed char )((int )gv >> 3)) & 3) | ((int )((signed char )((int )bv << 2)) & 124));
    goto ldv_32763;
    }
    ldv_32763: ;
  }
  clipmask_index = clipmask_index + clipmask_add;
  f = f + (unsigned long )stretch_bytes;
  if (frame->v4l2_format.format == (int volatile )1448695129) {
    tmp___12 = f;
    f = f + 1;
    *tmp___12 = yuyv[2];
    tmp___13 = f;
    f = f + 1;
    *tmp___13 = yuyv[1];
  } else {
    mm_y___0 = (int )yuyv[2] + -16;
    mm_u___0 = (int )yuyv[1] + -128;
    mm_v___0 = (int )yuyv[3] + -128;
    mm_yc___0 = mm_y___0 * 76284;
    mm_b___0 = (mm_v___0 * 132252 + mm_yc___0) >> 16;
    mm_g___0 = ((mm_u___0 * -53281 + mm_v___0 * -25625) + mm_yc___0) >> 16;
    mm_r___0 = (mm_u___0 * 104595 + mm_yc___0) >> 16;
    bv = mm_b___0 >= 0 ? (unsigned char )(255 < mm_b___0 ? 255 : mm_b___0) : 0U;
    gv = mm_g___0 >= 0 ? (unsigned char )(255 < mm_g___0 ? 255 : mm_g___0) : 0U;
    rv = mm_r___0 >= 0 ? (unsigned char )(255 < mm_r___0 ? 255 : mm_r___0) : 0U;
    switch (frame->v4l2_format.format) {
    case (int volatile )1346520914:
    tmp___14 = f;
    f = f + 1;
    *tmp___14 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___15 = f;
    f = f + 1;
    *tmp___15 = ((unsigned int )((int )gv >> 3) & 7U) | ((unsigned int )bv & 248U);
    goto ldv_32775;
    case (int volatile )859981650:
    tmp___16 = f;
    f = f + 1;
    *tmp___16 = rv;
    tmp___17 = f;
    f = f + 1;
    *tmp___17 = gv;
    tmp___18 = f;
    f = f + 1;
    *tmp___18 = bv;
    goto ldv_32775;
    case (int volatile )876758866:
    tmp___19 = f;
    f = f + 1;
    *tmp___19 = rv;
    tmp___20 = f;
    f = f + 1;
    *tmp___20 = gv;
    tmp___21 = f;
    f = f + 1;
    *tmp___21 = bv;
    f = f + 1;
    goto ldv_32775;
    case (int volatile )1329743698:
    tmp___22 = f;
    f = f + 1;
    *tmp___22 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___23 = f;
    f = f + 1;
    *tmp___23 = (unsigned char )(((int )((signed char )((int )gv >> 3)) & 3) | ((int )((signed char )((int )bv << 2)) & 124));
    goto ldv_32775;
    }
    ldv_32775: ;
  }
  clipmask_index = clipmask_index + clipmask_add;
  f = f + (unsigned long )stretch_bytes;
  i = usbvision->stretch_width * 2 + i;
  ldv_32780: ;
  if ((int )frame->frmwidth > i) {
    goto ldv_32779;
  } else {
  }
  frame->curline = (int )frame->curline + usbvision->stretch_height;
  *pcopylen = *pcopylen + (long )((int )frame->v4l2_linesize * usbvision->stretch_height);
  if ((int )frame->curline >= (int )frame->frmheight) {
    return (1);
  } else {
  }
  return (0);
}
}
static int usbvision_decompress(struct usb_usbvision *usbvision , unsigned char *compressed ,
                                unsigned char *decompressed , int *start_pos , int *block_typestart_pos ,
                                int len )
{
  int rest_pixel ;
  int idx ;
  int pos ;
  int extra_pos ;
  int block_len ;
  int block_type_pos ;
  int block_type_len ;
  unsigned char block_byte ;
  unsigned char block_code ;
  unsigned char block_type ;
  unsigned char block_type_byte ;
  unsigned char integrator ;
  {
  integrator = 0U;
  pos = *start_pos;
  block_type_pos = *block_typestart_pos;
  extra_pos = pos;
  block_len = 0;
  block_byte = 0U;
  block_code = 0U;
  block_type = 0U;
  block_type_byte = 0U;
  block_type_len = 0;
  rest_pixel = len;
  idx = 0;
  goto ldv_32807;
  ldv_32806: ;
  if (block_len == 0) {
    if (block_type_len == 0) {
      block_type_byte = *(compressed + (unsigned long )block_type_pos);
      block_type_pos = block_type_pos + 1;
      block_type_len = 4;
    } else {
    }
    block_type = (int )block_type_byte >> 6;
    usbvision->compr_block_types[(int )block_type] = usbvision->compr_block_types[(int )block_type] + 1;
    pos = extra_pos;
    if ((unsigned int )block_type == 0U) {
      if (rest_pixel > 23) {
        idx = idx + 23;
        rest_pixel = rest_pixel + -24;
        integrator = *(decompressed + (unsigned long )idx);
      } else {
        idx = (rest_pixel + -1) + idx;
        rest_pixel = 0;
      }
    } else {
      block_code = *(compressed + (unsigned long )pos);
      pos = pos + 1;
      if (rest_pixel > 23) {
        block_len = 24;
      } else {
        block_len = rest_pixel;
      }
      rest_pixel = rest_pixel - block_len;
      extra_pos = block_len / 4 + pos;
    }
    block_type_byte = (int )block_type_byte << 2U;
    block_type_len = block_type_len + -1;
  } else {
  }
  if (block_len > 0) {
    if (((unsigned int )block_len & 3U) == 0U) {
      block_byte = *(compressed + (unsigned long )pos);
      pos = pos + 1;
    } else {
    }
    if ((unsigned int )block_type == 1U) {
      integrator = *(decompressed + (unsigned long )idx);
    } else {
    }
    switch ((int )block_byte & 192) {
    case 192:
    integrator = (int )*(compressed + (unsigned long )extra_pos) + (int )integrator;
    extra_pos = extra_pos + 1;
    goto ldv_32803;
    case 128:
    integrator = (int )integrator + (int )block_code;
    goto ldv_32803;
    case 0:
    integrator = (int )integrator - (int )block_code;
    goto ldv_32803;
    }
    ldv_32803:
    *(decompressed + (unsigned long )idx) = integrator;
    block_byte = (int )block_byte << 2U;
    block_len = block_len + -1;
  } else {
  }
  idx = idx + 1;
  ldv_32807: ;
  if (idx < len) {
    goto ldv_32806;
  } else {
  }
  *start_pos = extra_pos;
  *block_typestart_pos = block_type_pos;
  return (idx);
}
}
static enum parse_state usbvision_parse_compress(struct usb_usbvision *usbvision ,
                                                 long *pcopylen )
{
  struct usbvision_frame *frame ;
  unsigned char *f ;
  unsigned char *u ;
  unsigned char *v ;
  unsigned char strip_data[400U] ;
  unsigned char strip_header[3U] ;
  int idx ;
  int idx_end ;
  int strip_len ;
  int strip_ptr ;
  int startblock_pos ;
  int block_pos ;
  int block_type_pos ;
  int clipmask_index ;
  int image_size ;
  unsigned char rv ;
  unsigned char gv ;
  unsigned char bv ;
  unsigned char *Y ;
  unsigned char *U ;
  unsigned char *V ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  int mm_y ;
  int mm_yc ;
  int mm_u ;
  int mm_v ;
  int mm_r ;
  int mm_g ;
  int mm_b ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  unsigned char *tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  {
  u = (unsigned char *)0U;
  v = (unsigned char *)0U;
  frame = usbvision->cur_frame;
  image_size = frame->frmwidth * frame->frmheight;
  if (frame->v4l2_format.format == 1345466932 || frame->v4l2_format.format == 842094169) {
    f = (unsigned char *)frame->data + (unsigned long )(frame->width * frame->curline);
  } else {
    f = (unsigned char *)frame->data + (unsigned long )(frame->v4l2_linesize * frame->curline);
  }
  if (frame->v4l2_format.format == 1448695129) {
    u = (unsigned char *)(frame->data + ((unsigned long )image_size + (unsigned long )((frame->frmwidth >> 1) * frame->curline)));
    v = u + (unsigned long )(image_size >> 1);
  } else
  if (frame->v4l2_format.format == 842094169) {
    v = (unsigned char *)(frame->data + ((unsigned long )image_size + (unsigned long )(frame->curline * frame->width >> 2)));
    u = v + (unsigned long )(image_size >> 2);
  } else {
  }
  if (frame->curline == 0) {
    usbvision_adjust_compression(usbvision);
  } else {
  }
  tmp = scratch_len(usbvision);
  if (tmp <= 2) {
    return (2);
  } else {
  }
  scratch_set_extra_ptr(usbvision, & strip_ptr, 0);
  scratch_get_extra(usbvision, (unsigned char *)(& strip_header), & strip_ptr, 3);
  if ((unsigned int )strip_header[0] != 90U) {
    usbvision->strip_magic_errors = usbvision->strip_magic_errors + 1;
    return (1);
  } else {
  }
  if (frame->curline != (int )strip_header[2]) {
    usbvision->strip_line_number_errors = usbvision->strip_line_number_errors + 1;
  } else {
  }
  strip_len = (int )((unsigned int )strip_header[1] * 2U);
  if (strip_len > 400) {
    usbvision_request_intra(usbvision);
  } else {
  }
  tmp___0 = scratch_len(usbvision);
  if (tmp___0 < strip_len) {
    return (2);
  } else {
  }
  if ((unsigned long )usbvision->intra_frame_buffer != (unsigned long )((unsigned char *)0U)) {
    Y = usbvision->intra_frame_buffer + (unsigned long )(frame->frmwidth * frame->curline);
    U = usbvision->intra_frame_buffer + ((unsigned long )image_size + (unsigned long )((frame->frmwidth / 2) * (frame->curline / 2)));
    V = usbvision->intra_frame_buffer + ((unsigned long )((image_size / 4) * 5) + (unsigned long )((frame->frmwidth / 2) * (frame->curline / 2)));
  } else {
    return (1);
  }
  clipmask_index = frame->curline * 320;
  scratch_get(usbvision, (unsigned char *)(& strip_data), strip_len);
  idx_end = frame->frmwidth;
  block_type_pos = 3;
  startblock_pos = (((idx_end + -1) / 96 + block_type_pos) + (idx_end / 2 + -1) / 96) + 2;
  block_pos = startblock_pos;
  usbvision->block_pos = block_pos;
  usbvision_decompress(usbvision, (unsigned char *)(& strip_data), Y, & block_pos,
                       & block_type_pos, idx_end);
  if (usbvision->max_strip_len < strip_len) {
    usbvision->max_strip_len = strip_len;
  } else {
  }
  if (frame->curline & 1) {
    usbvision_decompress(usbvision, (unsigned char *)(& strip_data), V, & block_pos,
                         & block_type_pos, idx_end / 2);
  } else {
    usbvision_decompress(usbvision, (unsigned char *)(& strip_data), U, & block_pos,
                         & block_type_pos, idx_end / 2);
  }
  if (usbvision->comprblock_pos < block_pos) {
    usbvision->comprblock_pos = block_pos;
  } else {
  }
  if (block_pos > strip_len) {
    usbvision->strip_len_errors = usbvision->strip_len_errors + 1;
  } else {
  }
  idx = 0;
  goto ldv_32848;
  ldv_32847: ;
  if (frame->v4l2_format.format == 1448695129) {
    tmp___1 = f;
    f = f + 1;
    *tmp___1 = *(Y + (unsigned long )idx);
    tmp___2 = f;
    f = f + 1;
    *tmp___2 = idx & 1 ? *(U + (unsigned long )(idx / 2)) : *(V + (unsigned long )(idx / 2));
  } else
  if (frame->v4l2_format.format == 1345466932) {
    tmp___3 = f;
    f = f + 1;
    *tmp___3 = *(Y + (unsigned long )idx);
    if (idx & 1) {
      tmp___4 = u;
      u = u + 1;
      *tmp___4 = *(U + (unsigned long )(idx >> 1));
    } else {
      tmp___5 = v;
      v = v + 1;
      *tmp___5 = *(V + (unsigned long )(idx >> 1));
    }
  } else
  if (frame->v4l2_format.format == 842094169) {
    tmp___6 = f;
    f = f + 1;
    *tmp___6 = *(Y + (unsigned long )idx);
    if (((frame->curline | idx) & 1) == 0) {
      tmp___7 = u;
      u = u + 1;
      *tmp___7 = *(U + (unsigned long )(idx >> 1));
      tmp___8 = v;
      v = v + 1;
      *tmp___8 = *(V + (unsigned long )(idx >> 1));
    } else {
    }
  } else {
    mm_y = (int )*(Y + (unsigned long )idx) + -16;
    mm_u = (int )*(U + (unsigned long )(idx / 2)) + -128;
    mm_v = (int )*(V + (unsigned long )(idx / 2)) + -128;
    mm_yc = mm_y * 76284;
    mm_b = (mm_v * 132252 + mm_yc) >> 16;
    mm_g = ((mm_u * -53281 + mm_v * -25625) + mm_yc) >> 16;
    mm_r = (mm_u * 104595 + mm_yc) >> 16;
    bv = mm_b >= 0 ? (unsigned char )(255 < mm_b ? 255 : mm_b) : 0U;
    gv = mm_g >= 0 ? (unsigned char )(255 < mm_g ? 255 : mm_g) : 0U;
    rv = mm_r >= 0 ? (unsigned char )(255 < mm_r ? 255 : mm_r) : 0U;
    switch (frame->v4l2_format.format) {
    case 1497715271:
    tmp___9 = f;
    f = f + 1;
    *tmp___9 = *(Y + (unsigned long )idx);
    goto ldv_32842;
    case 1329743698:
    tmp___10 = f;
    f = f + 1;
    *tmp___10 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___11 = f;
    f = f + 1;
    *tmp___11 = (unsigned char )(((int )((signed char )((int )gv >> 3)) & 3) | ((int )((signed char )((int )bv << 2)) & 124));
    goto ldv_32842;
    case 1346520914:
    tmp___12 = f;
    f = f + 1;
    *tmp___12 = (unsigned char )(((int )((signed char )rv) & 31) | (int )((signed char )((int )gv << 5)));
    tmp___13 = f;
    f = f + 1;
    *tmp___13 = ((unsigned int )((int )gv >> 3) & 7U) | ((unsigned int )bv & 248U);
    goto ldv_32842;
    case 859981650:
    tmp___14 = f;
    f = f + 1;
    *tmp___14 = rv;
    tmp___15 = f;
    f = f + 1;
    *tmp___15 = gv;
    tmp___16 = f;
    f = f + 1;
    *tmp___16 = bv;
    goto ldv_32842;
    case 876758866:
    tmp___17 = f;
    f = f + 1;
    *tmp___17 = rv;
    tmp___18 = f;
    f = f + 1;
    *tmp___18 = gv;
    tmp___19 = f;
    f = f + 1;
    *tmp___19 = bv;
    f = f + 1;
    goto ldv_32842;
    }
    ldv_32842: ;
  }
  clipmask_index = clipmask_index + 1;
  idx = idx + 1;
  ldv_32848: ;
  if (idx < idx_end) {
    goto ldv_32847;
  } else {
  }
  if (frame->v4l2_format.format != 842094169) {
    *pcopylen = *pcopylen + (long )frame->v4l2_linesize;
  } else {
    *pcopylen = *pcopylen + (long )(frame->curline & 1 ? frame->v4l2_linesize : frame->v4l2_linesize << 1);
  }
  frame->curline = frame->curline + 1;
  if (frame->curline >= frame->frmheight) {
    return (1);
  } else {
  }
  return (0);
}
}
static enum parse_state usbvision_parse_lines_420(struct usb_usbvision *usbvision ,
                                                  long *pcopylen )
{
  struct usbvision_frame *frame ;
  unsigned char *f_even ;
  unsigned char *f_odd ;
  unsigned int pixel_per_line ;
  unsigned int block ;
  int pixel ;
  int block_split ;
  int y_ptr ;
  int u_ptr ;
  int v_ptr ;
  int y_odd_offset ;
  int y_block_size ;
  int uv_block_size ;
  int sub_block_size ;
  int y_step[4U] ;
  int y_step_size ;
  int uv_step[4U] ;
  int uv_step_size ;
  unsigned char y[2U] ;
  unsigned char u ;
  unsigned char v ;
  int y_ ;
  int u_ ;
  int v_ ;
  int vb ;
  int uvg ;
  int ur ;
  int r_ ;
  int g_ ;
  int b_ ;
  unsigned char g ;
  int clipmask_even_index ;
  int clipmask_odd_index ;
  int bytes_per_pixel ;
  int clipmask_add ;
  int stretch_bytes ;
  int tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  unsigned char *tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  unsigned char *tmp___21 ;
  unsigned char *tmp___22 ;
  unsigned char *tmp___23 ;
  unsigned char *tmp___24 ;
  unsigned char *tmp___25 ;
  unsigned char *tmp___26 ;
  unsigned char *tmp___27 ;
  unsigned char *tmp___28 ;
  unsigned char *tmp___29 ;
  unsigned char *tmp___30 ;
  unsigned char *tmp___31 ;
  unsigned char *tmp___32 ;
  unsigned char *tmp___33 ;
  unsigned char *tmp___34 ;
  unsigned char *tmp___35 ;
  unsigned char *tmp___36 ;
  unsigned char *tmp___37 ;
  unsigned char *tmp___38 ;
  unsigned char *tmp___39 ;
  unsigned char *tmp___40 ;
  unsigned char *tmp___41 ;
  unsigned char *tmp___42 ;
  unsigned char *tmp___43 ;
  unsigned char *tmp___44 ;
  unsigned char *tmp___45 ;
  unsigned char *tmp___46 ;
  unsigned char *tmp___47 ;
  {
  f_even = (unsigned char *)0U;
  f_odd = (unsigned char *)0U;
  y_block_size = 128;
  uv_block_size = 64;
  sub_block_size = 32;
  y_step[0] = 0;
  y_step[1] = 0;
  y_step[2] = 0;
  y_step[3] = 2;
  y_step_size = 4;
  uv_step[0] = 0;
  uv_step[1] = 0;
  uv_step[2] = 0;
  uv_step[3] = 4;
  uv_step_size = 4;
  frame = usbvision->cur_frame;
  f_even = (unsigned char *)frame->data + (unsigned long )(frame->v4l2_linesize * frame->curline);
  f_odd = f_even + (unsigned long )(frame->v4l2_linesize * usbvision->stretch_height);
  bytes_per_pixel = frame->v4l2_format.bytes_per_pixel;
  stretch_bytes = (usbvision->stretch_width + -1) * bytes_per_pixel;
  clipmask_even_index = frame->curline * 320;
  clipmask_odd_index = clipmask_even_index + 320;
  clipmask_add = usbvision->stretch_width;
  pixel_per_line = (unsigned int )frame->isoc_header.frame_width;
  tmp = scratch_len(usbvision);
  if (tmp < (int )pixel_per_line * 3) {
    return (2);
  } else {
  }
  if (frame->curline + 1 >= frame->frmheight) {
    return (1);
  } else {
  }
  block_split = pixel_per_line % (unsigned int )y_block_size != 0U;
  y_odd_offset = (int )((pixel_per_line / (unsigned int )y_block_size) * (unsigned int )(y_block_size + uv_block_size) + (unsigned int )(block_split * uv_block_size));
  scratch_set_extra_ptr(usbvision, & y_ptr, y_odd_offset);
  scratch_set_extra_ptr(usbvision, & u_ptr, y_block_size);
  scratch_set_extra_ptr(usbvision, & v_ptr, (4 - block_split) * sub_block_size + y_odd_offset);
  block = 0U;
  goto ldv_32914;
  ldv_32913:
  pixel = 0;
  goto ldv_32911;
  ldv_32910:
  scratch_get(usbvision, (unsigned char *)(& y), 2);
  scratch_get_extra(usbvision, & u, & u_ptr, 1);
  scratch_get_extra(usbvision, & v, & v_ptr, 1);
  v_ = (int )v + -128;
  u_ = (int )u + -128;
  vb = v_ * 132252;
  uvg = u_ * -53281 + v_ * -25625;
  ur = u_ * 104595;
  if (frame->v4l2_format.format == 1448695129) {
    tmp___0 = f_even;
    f_even = f_even + 1;
    *tmp___0 = y[0];
    tmp___1 = f_even;
    f_even = f_even + 1;
    *tmp___1 = v;
  } else {
    y_ = (int )y[0] * 76284 + -1220544;
    b_ = (y_ + vb) >> 16;
    g_ = (y_ + uvg) >> 16;
    r_ = (y_ + ur) >> 16;
    switch (frame->v4l2_format.format) {
    case 1346520914:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___2 = f_even;
    f_even = f_even + 1;
    *tmp___2 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___3 = f_even;
    f_even = f_even + 1;
    *tmp___3 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 7) | (b_ >= 0 ? (int )((signed char )(255 < b_ ? 255 : b_)) & -8 : 0));
    goto ldv_32891;
    case 859981650:
    tmp___4 = f_even;
    f_even = f_even + 1;
    *tmp___4 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___5 = f_even;
    f_even = f_even + 1;
    *tmp___5 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___6 = f_even;
    f_even = f_even + 1;
    *tmp___6 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    goto ldv_32891;
    case 876758866:
    tmp___7 = f_even;
    f_even = f_even + 1;
    *tmp___7 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___8 = f_even;
    f_even = f_even + 1;
    *tmp___8 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___9 = f_even;
    f_even = f_even + 1;
    *tmp___9 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    f_even = f_even + 1;
    goto ldv_32891;
    case 1329743698:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___10 = f_even;
    f_even = f_even + 1;
    *tmp___10 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___11 = f_even;
    f_even = f_even + 1;
    *tmp___11 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 3) | (b_ >= 0 ? (int )((signed char )((255 < b_ ? 255 : b_) << 2)) & 124 : 0));
    goto ldv_32891;
    }
    ldv_32891: ;
  }
  clipmask_even_index = clipmask_even_index + clipmask_add;
  f_even = f_even + (unsigned long )stretch_bytes;
  if (frame->v4l2_format.format == 1448695129) {
    tmp___12 = f_even;
    f_even = f_even + 1;
    *tmp___12 = y[1];
    tmp___13 = f_even;
    f_even = f_even + 1;
    *tmp___13 = u;
  } else {
    y_ = (int )y[1] * 76284 + -1220544;
    b_ = (y_ + vb) >> 16;
    g_ = (y_ + uvg) >> 16;
    r_ = (y_ + ur) >> 16;
    switch (frame->v4l2_format.format) {
    case 1346520914:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___14 = f_even;
    f_even = f_even + 1;
    *tmp___14 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___15 = f_even;
    f_even = f_even + 1;
    *tmp___15 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 7) | (b_ >= 0 ? (int )((signed char )(255 < b_ ? 255 : b_)) & -8 : 0));
    goto ldv_32896;
    case 859981650:
    tmp___16 = f_even;
    f_even = f_even + 1;
    *tmp___16 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___17 = f_even;
    f_even = f_even + 1;
    *tmp___17 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___18 = f_even;
    f_even = f_even + 1;
    *tmp___18 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    goto ldv_32896;
    case 876758866:
    tmp___19 = f_even;
    f_even = f_even + 1;
    *tmp___19 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___20 = f_even;
    f_even = f_even + 1;
    *tmp___20 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___21 = f_even;
    f_even = f_even + 1;
    *tmp___21 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    f_even = f_even + 1;
    goto ldv_32896;
    case 1329743698:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___22 = f_even;
    f_even = f_even + 1;
    *tmp___22 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___23 = f_even;
    f_even = f_even + 1;
    *tmp___23 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 3) | (b_ >= 0 ? (int )((signed char )((255 < b_ ? 255 : b_) << 2)) & 124 : 0));
    goto ldv_32896;
    }
    ldv_32896: ;
  }
  clipmask_even_index = clipmask_even_index + clipmask_add;
  f_even = f_even + (unsigned long )stretch_bytes;
  scratch_get_extra(usbvision, (unsigned char *)(& y), & y_ptr, 2);
  if (frame->v4l2_format.format == 1448695129) {
    tmp___24 = f_odd;
    f_odd = f_odd + 1;
    *tmp___24 = y[0];
    tmp___25 = f_odd;
    f_odd = f_odd + 1;
    *tmp___25 = v;
  } else {
    y_ = (int )y[0] * 76284 + -1220544;
    b_ = (y_ + vb) >> 16;
    g_ = (y_ + uvg) >> 16;
    r_ = (y_ + ur) >> 16;
    switch (frame->v4l2_format.format) {
    case 1346520914:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___26 = f_odd;
    f_odd = f_odd + 1;
    *tmp___26 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___27 = f_odd;
    f_odd = f_odd + 1;
    *tmp___27 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 7) | (b_ >= 0 ? (int )((signed char )(255 < b_ ? 255 : b_)) & -8 : 0));
    goto ldv_32901;
    case 859981650:
    tmp___28 = f_odd;
    f_odd = f_odd + 1;
    *tmp___28 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___29 = f_odd;
    f_odd = f_odd + 1;
    *tmp___29 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___30 = f_odd;
    f_odd = f_odd + 1;
    *tmp___30 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    goto ldv_32901;
    case 876758866:
    tmp___31 = f_odd;
    f_odd = f_odd + 1;
    *tmp___31 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___32 = f_odd;
    f_odd = f_odd + 1;
    *tmp___32 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___33 = f_odd;
    f_odd = f_odd + 1;
    *tmp___33 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    f_odd = f_odd + 1;
    goto ldv_32901;
    case 1329743698:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___34 = f_odd;
    f_odd = f_odd + 1;
    *tmp___34 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___35 = f_odd;
    f_odd = f_odd + 1;
    *tmp___35 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 3) | (b_ >= 0 ? (int )((signed char )((255 < b_ ? 255 : b_) << 2)) & 124 : 0));
    goto ldv_32901;
    }
    ldv_32901: ;
  }
  clipmask_odd_index = clipmask_odd_index + clipmask_add;
  f_odd = f_odd + (unsigned long )stretch_bytes;
  if (frame->v4l2_format.format == 1448695129) {
    tmp___36 = f_odd;
    f_odd = f_odd + 1;
    *tmp___36 = y[1];
    tmp___37 = f_odd;
    f_odd = f_odd + 1;
    *tmp___37 = u;
  } else {
    y_ = (int )y[1] * 76284 + -1220544;
    b_ = (y_ + vb) >> 16;
    g_ = (y_ + uvg) >> 16;
    r_ = (y_ + ur) >> 16;
    switch (frame->v4l2_format.format) {
    case 1346520914:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___38 = f_odd;
    f_odd = f_odd + 1;
    *tmp___38 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___39 = f_odd;
    f_odd = f_odd + 1;
    *tmp___39 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 7) | (b_ >= 0 ? (int )((signed char )(255 < b_ ? 255 : b_)) & -8 : 0));
    goto ldv_32906;
    case 859981650:
    tmp___40 = f_odd;
    f_odd = f_odd + 1;
    *tmp___40 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___41 = f_odd;
    f_odd = f_odd + 1;
    *tmp___41 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___42 = f_odd;
    f_odd = f_odd + 1;
    *tmp___42 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    goto ldv_32906;
    case 876758866:
    tmp___43 = f_odd;
    f_odd = f_odd + 1;
    *tmp___43 = r_ >= 0 ? (unsigned char )(255 < r_ ? 255 : r_) : 0U;
    tmp___44 = f_odd;
    f_odd = f_odd + 1;
    *tmp___44 = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___45 = f_odd;
    f_odd = f_odd + 1;
    *tmp___45 = b_ >= 0 ? (unsigned char )(255 < b_ ? 255 : b_) : 0U;
    f_odd = f_odd + 1;
    goto ldv_32906;
    case 1329743698:
    g = g_ >= 0 ? (unsigned char )(255 < g_ ? 255 : g_) : 0U;
    tmp___46 = f_odd;
    f_odd = f_odd + 1;
    *tmp___46 = (unsigned char )((r_ >= 0 ? (int )((signed char )(255 < r_ ? 255 : r_)) & 31 : 0) | (int )((signed char )((int )g << 5)));
    tmp___47 = f_odd;
    f_odd = f_odd + 1;
    *tmp___47 = (unsigned char )(((int )((signed char )((int )g >> 3)) & 3) | (b_ >= 0 ? (int )((signed char )((255 < b_ ? 255 : b_) << 2)) & 124 : 0));
    goto ldv_32906;
    }
    ldv_32906: ;
  }
  clipmask_odd_index = clipmask_odd_index + clipmask_add;
  f_odd = f_odd + (unsigned long )stretch_bytes;
  pixel = pixel + 2;
  ldv_32911: ;
  if (pixel < sub_block_size) {
    goto ldv_32910;
  } else {
  }
  scratch_rm_old(usbvision, y_step[block % (unsigned int )y_step_size] * sub_block_size);
  scratch_inc_extra_ptr(& y_ptr, y_step[((unsigned int )(block_split * 2) + block) % (unsigned int )y_step_size] * sub_block_size);
  scratch_inc_extra_ptr(& u_ptr, uv_step[block % (unsigned int )uv_step_size] * sub_block_size);
  scratch_inc_extra_ptr(& v_ptr, uv_step[((unsigned int )(block_split * 2) + block) % (unsigned int )uv_step_size] * sub_block_size);
  block = block + 1U;
  ldv_32914: ;
  if (pixel_per_line / (unsigned int )sub_block_size > block) {
    goto ldv_32913;
  } else {
  }
  scratch_rm_old(usbvision, (int )((pixel_per_line * 3U) / 2U + (unsigned int )(block_split * sub_block_size)));
  frame->curline = frame->curline + usbvision->stretch_height * 2;
  *pcopylen = *pcopylen + (long )((frame->v4l2_linesize * 2) * usbvision->stretch_height);
  if (frame->curline >= frame->frmheight) {
    return (1);
  } else {
  }
  return (0);
}
}
static void usbvision_parse_data(struct usb_usbvision *usbvision )
{
  struct usbvision_frame *frame ;
  enum parse_state newstate ;
  long copylen ;
  unsigned long lock_flags ;
  int tmp ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  {
  copylen = 0L;
  frame = usbvision->cur_frame;
  if ((core_debug & 8U) != 0U) {
    tmp = scratch_len(usbvision);
    printk("\016usbvision:[%s:%d] parsing len=%d\n", "usbvision_parse_data", 1222,
           tmp);
  } else {
  }
  ldv_32926:
  newstate = 2;
  tmp___0 = scratch_len(usbvision);
  if (tmp___0 != 0) {
    if (frame->scanstate == 0) {
      newstate = usbvision_find_header(usbvision);
    } else
    if (frame->scanstate == 1) {
      if (usbvision->isoc_mode == 20) {
        newstate = usbvision_parse_lines_420(usbvision, & copylen);
      } else
      if (usbvision->isoc_mode == 3) {
        newstate = usbvision_parse_lines_422(usbvision, & copylen);
      } else
      if (usbvision->isoc_mode == 96) {
        newstate = usbvision_parse_compress(usbvision, & copylen);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )newstate == 0U) {
    goto ldv_32924;
  } else {
  }
  if ((unsigned int )newstate == 1U || (unsigned int )newstate == 2U) {
    goto ldv_32925;
  } else {
  }
  return;
  ldv_32924: ;
  goto ldv_32926;
  ldv_32925: ;
  if ((unsigned int )newstate == 1U) {
    frame->grabstate = 3;
    v4l2_get_timestamp(& frame->timestamp);
    frame->sequence = usbvision->frame_num;
    tmp___1 = spinlock_check(& usbvision->queue_lock);
    lock_flags = _raw_spin_lock_irqsave(tmp___1);
    list_move_tail(& frame->frame, & usbvision->outqueue);
    usbvision->cur_frame = (struct usbvision_frame *)0;
    spin_unlock_irqrestore(& usbvision->queue_lock, lock_flags);
    usbvision->frame_num = usbvision->frame_num + 1;
    tmp___2 = waitqueue_active(& usbvision->wait_frame);
    if (tmp___2 != 0) {
      if ((core_debug & 8U) != 0U) {
        printk("\016usbvision:[%s:%d] Wake up !", "usbvision_parse_data", 1259);
      } else {
      }
      __wake_up(& usbvision->wait_frame, 1U, 1, (void *)0);
    } else {
    }
  } else {
    frame->grabstate = 2;
  }
  frame->scanlength = frame->scanlength + copylen;
  return;
}
}
static int usbvision_compress_isochronous(struct usb_usbvision *usbvision , struct urb *urb )
{
  unsigned char *packet_data ;
  int i ;
  int totlen ;
  int packet_len ;
  int packet_stat ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  totlen = 0;
  i = 0;
  goto ldv_32942;
  ldv_32941:
  packet_len = (int )urb->iso_frame_desc[i].actual_length;
  packet_stat = urb->iso_frame_desc[i].status;
  packet_data = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  if (packet_stat != 0) {
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] data error: [%d] len=%d, status=%X", "usbvision_compress_isochronous",
             1288, i, packet_len, packet_stat);
    } else {
    }
    usbvision->isoc_err_count = usbvision->isoc_err_count + 1UL;
    goto ldv_32940;
  } else {
  }
  if (packet_len < 0) {
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] error packet [%d]", "usbvision_compress_isochronous",
             1295, i);
    } else {
    }
    usbvision->isoc_skip_count = usbvision->isoc_skip_count + 1UL;
    goto ldv_32940;
  } else
  if (packet_len == 0) {
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] null packet [%d]", "usbvision_compress_isochronous",
             1299, i);
    } else {
    }
    usbvision->isocstate = 1;
    usbvision->isoc_skip_count = usbvision->isoc_skip_count + 1UL;
    goto ldv_32940;
  } else
  if (usbvision->isoc_packet_size < packet_len) {
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] packet[%d] > isoc_packet_size", "usbvision_compress_isochronous",
             1304, i);
    } else {
    }
    usbvision->isoc_skip_count = usbvision->isoc_skip_count + 1UL;
    goto ldv_32940;
  } else {
  }
  if ((core_debug & 4U) != 0U) {
    printk("\016usbvision:[%s:%d] packet ok [%d] len=%d", "usbvision_compress_isochronous",
           1309, i, packet_len);
  } else {
  }
  if ((unsigned int )usbvision->isocstate == 1U) {
    usbvision->isocstate = 0;
    scratch_mark_header(usbvision);
    usbvision_measure_bandwidth(usbvision);
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] packet with header", "usbvision_compress_isochronous",
             1315);
    } else {
    }
  } else {
  }
  tmp___1 = scratch_free(usbvision);
  if (tmp___1 < packet_len) {
    usbvision->scratch_ovf_count = usbvision->scratch_ovf_count + 1UL;
    if ((core_debug & 4U) != 0U) {
      tmp = scratch_len(usbvision);
      printk("\016usbvision:[%s:%d] scratch buf overflow! scr_len: %d, n: %d", "usbvision_compress_isochronous",
             1329, tmp, packet_len);
    } else {
    }
    tmp___0 = scratch_free(usbvision);
    scratch_rm_old(usbvision, packet_len - tmp___0);
  } else {
  }
  scratch_put(usbvision, packet_data, packet_len);
  totlen = totlen + packet_len;
  usbvision->isoc_data_count = usbvision->isoc_data_count + (unsigned long )packet_len;
  usbvision->isoc_packet_count = usbvision->isoc_packet_count + 1UL;
  ldv_32940:
  i = i + 1;
  ldv_32942: ;
  if (urb->number_of_packets > i) {
    goto ldv_32941;
  } else {
  }
  return (totlen);
}
}
static void usbvision_isoc_irq(struct urb *urb )
{
  int err_code ;
  int len ;
  struct usb_usbvision *usbvision ;
  int i ;
  unsigned long start_time ;
  struct usbvision_frame **f ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  err_code = 0;
  usbvision = (struct usb_usbvision *)urb->context;
  start_time = jiffies;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return;
  } else {
  }
  if (urb->status == -2) {
    return;
  } else {
  }
  f = & usbvision->cur_frame;
  if ((unsigned int )usbvision->streaming == 2U) {
    usbvision->streaming = 1;
    if ((unsigned long )*f != (unsigned long )((struct usbvision_frame *)0)) {
      (*f)->grabstate = 1;
      (*f)->scanstate = 0;
    } else {
    }
    if ((core_debug & 2U) != 0U) {
      printk("\016usbvision:[%s:%d] stream interrupted", "usbvision_isoc_irq", 1379);
    } else {
    }
    __wake_up(& usbvision->wait_stream, 1U, 1, (void *)0);
  } else {
  }
  len = usbvision_compress_isochronous(usbvision, urb);
  usbvision->isoc_urb_count = usbvision->isoc_urb_count + 1UL;
  usbvision->urb_length = (unsigned long )len;
  if ((unsigned int )usbvision->streaming == 3U) {
    tmp = scratch_len(usbvision);
    if (tmp > 12) {
      tmp___0 = list_empty((struct list_head const *)(& usbvision->inqueue));
      if (tmp___0 == 0) {
        if ((unsigned long )*f == (unsigned long )((struct usbvision_frame *)0)) {
          __mptr = (struct list_head const *)usbvision->inqueue.next;
          *f = (struct usbvision_frame *)__mptr + 0xffffffffffffffc8UL;
        } else {
        }
        usbvision_parse_data(usbvision);
      } else {
        goto _L;
      }
    } else {
      _L:
      if ((core_debug & 2U) != 0U) {
        printk("\016usbvision:[%s:%d] received data, but no one needs it", "usbvision_isoc_irq",
               1403);
      } else {
      }
      scratch_reset(usbvision);
    }
  } else {
    if ((core_debug & 2U) != 0U) {
      printk("\016usbvision:[%s:%d] received data, but no one needs it", "usbvision_isoc_irq",
             1407);
    } else {
    }
    scratch_reset(usbvision);
  }
  usbvision->time_in_irq = usbvision->time_in_irq + ((unsigned long )jiffies - start_time);
  i = 0;
  goto ldv_32957;
  ldv_32956:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_32957: ;
  if (i <= 31) {
    goto ldv_32956;
  } else {
  }
  urb->status = 0;
  urb->dev = usbvision->dev;
  err_code = ldv_usb_submit_urb_3(urb, 32U);
  if (err_code != 0) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: usb_submit_urb failed: error %d\n",
            "usbvision_isoc_irq", err_code);
  } else {
  }
  return;
}
}
int usbvision_read_reg(struct usb_usbvision *usbvision , unsigned char reg )
{
  int err_code ;
  unsigned char buffer[1U] ;
  unsigned int tmp ;
  {
  err_code = 0;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (-1);
  } else {
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  err_code = usb_control_msg(usbvision->dev, tmp | 2147483776U, 51, 194, 0, (int )reg,
                             (void *)(& buffer), 1, 250);
  if (err_code < 0) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: failed: error %d\n",
            "usbvision_read_reg", err_code);
    return (err_code);
  } else {
  }
  return ((int )buffer[0]);
}
}
int usbvision_write_reg(struct usb_usbvision *usbvision , unsigned char reg , unsigned char value )
{
  int err_code ;
  unsigned int tmp ;
  {
  err_code = 0;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  err_code = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, (int )reg,
                             (void *)(& value), 1, 250);
  if (err_code < 0) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: failed: error %d\n",
            "usbvision_write_reg", err_code);
  } else {
  }
  return (err_code);
}
}
static void usbvision_ctrl_urb_complete(struct urb *urb )
{
  struct usb_usbvision *usbvision ;
  int tmp ;
  {
  usbvision = (struct usb_usbvision *)urb->context;
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_ctrl_urb_complete", 1496);
  } else {
  }
  usbvision->ctrl_urb_busy = 0;
  tmp = waitqueue_active(& usbvision->ctrl_urb_wq);
  if (tmp != 0) {
    __wake_up(& usbvision->ctrl_urb_wq, 1U, 1, (void *)0);
  } else {
  }
  return;
}
}
static int usbvision_write_reg_irq(struct usb_usbvision *usbvision , int address ,
                                   unsigned char *data , int len )
{
  int err_code ;
  unsigned int tmp ;
  size_t __len ;
  void *__ret ;
  {
  err_code = 0;
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_write_reg_irq", 1508);
  } else {
  }
  if (len > 8) {
    return (-14);
  } else {
  }
  if (usbvision->ctrl_urb_busy != 0) {
    return (-16);
  } else {
  }
  usbvision->ctrl_urb_busy = 1;
  usbvision->ctrl_urb_setup.bRequestType = 66U;
  usbvision->ctrl_urb_setup.bRequest = 51U;
  usbvision->ctrl_urb_setup.wValue = 0U;
  usbvision->ctrl_urb_setup.wIndex = (unsigned short )address;
  usbvision->ctrl_urb_setup.wLength = (unsigned short )len;
  tmp = __create_pipe(usbvision->dev, 1U);
  usb_fill_control_urb(usbvision->ctrl_urb, usbvision->dev, tmp | 2147483648U, (unsigned char *)(& usbvision->ctrl_urb_setup),
                       (void *)(& usbvision->ctrl_urb_buffer), len, & usbvision_ctrl_urb_complete,
                       (void *)usbvision);
  __len = (size_t )len;
  __ret = memcpy((void *)(& usbvision->ctrl_urb_buffer), (void const *)data,
                           __len);
  err_code = ldv_usb_submit_urb_4(usbvision->ctrl_urb, 32U);
  if (err_code < 0) {
    usbvision->ctrl_urb_busy = 0;
  } else {
  }
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] submit %d byte: error %d", "usbvision_write_reg_irq",
           1534, len, err_code);
  } else {
  }
  return (err_code);
}
}
static int usbvision_init_compression(struct usb_usbvision *usbvision )
{
  int err_code ;
  {
  err_code = 0;
  usbvision->last_isoc_frame_num = -1;
  usbvision->isoc_data_count = 0UL;
  usbvision->isoc_packet_count = 0UL;
  usbvision->isoc_skip_count = 0UL;
  usbvision->compr_level = 50;
  usbvision->last_compr_level = -1;
  usbvision->isoc_urb_count = 0UL;
  usbvision->request_intra = 1;
  usbvision->isoc_measure_bandwidth_count = 0;
  return (err_code);
}
}
static int usbvision_measure_bandwidth(struct usb_usbvision *usbvision )
{
  int err_code ;
  {
  err_code = 0;
  if (usbvision->isoc_measure_bandwidth_count <= 1) {
    usbvision->isoc_measure_bandwidth_count = usbvision->isoc_measure_bandwidth_count + 1;
    return (err_code);
  } else {
  }
  if (usbvision->isoc_packet_size > 0 && usbvision->isoc_packet_count != 0UL) {
    usbvision->used_bandwidth = (int )(((usbvision->isoc_data_count / (usbvision->isoc_packet_count + usbvision->isoc_skip_count)) * 100UL) / (unsigned long )usbvision->isoc_packet_size);
  } else {
  }
  usbvision->isoc_measure_bandwidth_count = 0;
  usbvision->isoc_data_count = 0UL;
  usbvision->isoc_packet_count = 0UL;
  usbvision->isoc_skip_count = 0UL;
  return (err_code);
}
}
static int usbvision_adjust_compression(struct usb_usbvision *usbvision )
{
  int err_code ;
  unsigned char buffer[6U] ;
  int distortion ;
  {
  err_code = 0;
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_adjust_compression", 1585);
  } else {
  }
  if (adjust_compression != 0 && usbvision->used_bandwidth > 0) {
    usbvision->compr_level = usbvision->compr_level + (usbvision->used_bandwidth + -90) / 2;
    if (usbvision->compr_level < 0) {
      usbvision->compr_level = 0;
    } else
    if (usbvision->compr_level > 100) {
      usbvision->compr_level = 100;
    } else {
    }
    if (usbvision->compr_level != usbvision->last_compr_level) {
      if (usbvision->bridge_type == 1004 || usbvision->bridge_type == 1005) {
        buffer[0] = (unsigned int )((unsigned char )((usbvision->compr_level * 16) / 100)) + 4U;
        buffer[1] = (unsigned int )((unsigned char )((usbvision->compr_level * 8) / 100)) + 4U;
        distortion = (usbvision->compr_level * 248) / 100 + 7;
        buffer[2] = (unsigned char )distortion;
        buffer[3] = (unsigned char )distortion;
        distortion = (usbvision->compr_level * 42) / 100 + 1;
        buffer[4] = (unsigned char )distortion;
        buffer[5] = (unsigned char )distortion;
      } else {
        buffer[0] = (unsigned int )((unsigned char )((usbvision->compr_level * 16) / 100)) + 4U;
        buffer[1] = (unsigned int )((unsigned char )((usbvision->compr_level * 8) / 100)) + 4U;
        distortion = (usbvision->compr_level * 253) / 100 + 2;
        buffer[2] = (unsigned char )distortion;
        buffer[3] = 0U;
        distortion = (usbvision->compr_level * 43) / 100;
        buffer[4] = (unsigned char )distortion;
        buffer[5] = 0U;
      }
      err_code = usbvision_write_reg_irq(usbvision, 56, (unsigned char *)(& buffer),
                                         6);
      if (err_code == 0) {
        if ((core_debug & 2U) != 0U) {
          printk("\016usbvision:[%s:%d] new compr params %#02x %#02x %#02x %#02x %#02x %#02x",
                 "usbvision_adjust_compression", 1614, (int )buffer[0], (int )buffer[1],
                 (int )buffer[2], (int )buffer[3], (int )buffer[4], (int )buffer[5]);
        } else {
        }
        usbvision->last_compr_level = usbvision->compr_level;
      } else {
      }
    } else {
    }
  } else {
  }
  return (err_code);
}
}
static int usbvision_request_intra(struct usb_usbvision *usbvision )
{
  int err_code ;
  unsigned char buffer[1U] ;
  {
  err_code = 0;
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_request_intra", 1627);
  } else {
  }
  usbvision->request_intra = 1;
  buffer[0] = 1U;
  usbvision_write_reg_irq(usbvision, 46, (unsigned char *)(& buffer), 1);
  return (err_code);
}
}
static int usbvision_unrequest_intra(struct usb_usbvision *usbvision )
{
  int err_code ;
  unsigned char buffer[1U] ;
  {
  err_code = 0;
  if ((core_debug & 2U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_unrequest_intra", 1639);
  } else {
  }
  usbvision->request_intra = 0;
  buffer[0] = 0U;
  usbvision_write_reg_irq(usbvision, 46, (unsigned char *)(& buffer), 1);
  return (err_code);
}
}
int usbvision_power_off(struct usb_usbvision *usbvision )
{
  int err_code ;
  {
  err_code = 0;
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_power_off", 1654);
  } else {
  }
  err_code = usbvision_write_reg(usbvision, 0, 2);
  if (err_code == 1) {
    usbvision->power = 0;
  } else {
  }
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] %s: err_code %d", "usbvision_power_off", 1659, err_code != 1 ? (char *)"OLD_ERROR" : (char *)"power is off",
           err_code);
  } else {
  }
  return (err_code);
}
}
static int usbvision_init_webcam(struct usb_usbvision *usbvision )
{
  int rc ;
  int i ;
  char init_values[38U][3U] ;
  char value[3U] ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp ;
  {
  init_values[0][0] = 4;
  init_values[0][1] = 18;
  init_values[0][2] = 8;
  init_values[1][0] = 5;
  init_values[1][1] = -1;
  init_values[1][2] = -56;
  init_values[2][0] = 6;
  init_values[2][1] = 24;
  init_values[2][2] = 7;
  init_values[3][0] = 7;
  init_values[3][1] = -112;
  init_values[3][2] = 0;
  init_values[4][0] = 9;
  init_values[4][1] = 0;
  init_values[4][2] = 0;
  init_values[5][0] = 10;
  init_values[5][1] = 0;
  init_values[5][2] = 0;
  init_values[6][0] = 11;
  init_values[6][1] = 8;
  init_values[6][2] = 0;
  init_values[7][0] = 13;
  init_values[7][1] = -52;
  init_values[7][2] = -52;
  init_values[8][0] = 14;
  init_values[8][1] = 19;
  init_values[8][2] = 20;
  init_values[9][0] = 16;
  init_values[9][1] = -101;
  init_values[9][2] = -125;
  init_values[10][0] = 17;
  init_values[10][1] = 90;
  init_values[10][2] = 63;
  init_values[11][0] = 18;
  init_values[11][1] = -28;
  init_values[11][2] = 115;
  init_values[12][0] = 19;
  init_values[12][1] = -120;
  init_values[12][2] = -124;
  init_values[13][0] = 20;
  init_values[13][1] = -119;
  init_values[13][2] = -128;
  init_values[14][0] = 21;
  init_values[14][1] = 0;
  init_values[14][2] = 32;
  init_values[15][0] = 22;
  init_values[15][1] = 0;
  init_values[15][2] = 0;
  init_values[16][0] = 23;
  init_values[16][1] = -1;
  init_values[16][2] = -96;
  init_values[17][0] = 24;
  init_values[17][1] = 107;
  init_values[17][2] = 32;
  init_values[18][0] = 25;
  init_values[18][1] = 34;
  init_values[18][2] = 64;
  init_values[19][0] = 26;
  init_values[19][1] = 16;
  init_values[19][2] = 7;
  init_values[20][0] = 27;
  init_values[20][1] = 0;
  init_values[20][2] = 71;
  init_values[21][0] = 28;
  init_values[21][1] = 3;
  init_values[21][2] = -32;
  init_values[22][0] = 29;
  init_values[22][1] = 0;
  init_values[22][2] = 0;
  init_values[23][0] = 30;
  init_values[23][1] = 0;
  init_values[23][2] = 0;
  init_values[24][0] = 31;
  init_values[24][1] = 0;
  init_values[24][2] = 0;
  init_values[25][0] = 32;
  init_values[25][1] = 0;
  init_values[25][2] = 0;
  init_values[26][0] = 33;
  init_values[26][1] = 0;
  init_values[26][2] = 0;
  init_values[27][0] = 34;
  init_values[27][1] = 0;
  init_values[27][2] = 0;
  init_values[28][0] = 35;
  init_values[28][1] = 0;
  init_values[28][2] = 0;
  init_values[29][0] = 36;
  init_values[29][1] = 0;
  init_values[29][2] = 0;
  init_values[30][0] = 37;
  init_values[30][1] = 0;
  init_values[30][2] = 0;
  init_values[31][0] = 38;
  init_values[31][1] = 0;
  init_values[31][2] = 0;
  init_values[32][0] = 39;
  init_values[32][1] = 0;
  init_values[32][2] = 0;
  init_values[33][0] = 40;
  init_values[33][1] = 0;
  init_values[33][2] = 0;
  init_values[34][0] = 41;
  init_values[34][1] = 0;
  init_values[34][2] = 0;
  init_values[35][0] = 8;
  init_values[35][1] = -128;
  init_values[35][2] = 96;
  init_values[36][0] = 15;
  init_values[36][1] = 45;
  init_values[36][2] = 36;
  init_values[37][0] = 12;
  init_values[37][1] = -128;
  init_values[37][2] = -128;
  if (usbvision_device_data[usbvision->dev_model].video_norm == 45056ULL) {
    init_values[4][1] = 52;
  } else {
  }
  i = 0;
  goto ldv_33032;
  ldv_33031:
  usbvision_write_reg(usbvision, 7, 0);
  __len = 3UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& value), (void const *)(& init_values) + (unsigned long )i,
                     __len);
  } else {
    __ret = memcpy((void *)(& value), (void const *)(& init_values) + (unsigned long )i,
                             __len);
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 10, (void *)(& value),
                       3, 250);
  if (rc < 0) {
    return (rc);
  } else {
  }
  usbvision_write_reg(usbvision, 7, 16);
  usbvision_write_reg(usbvision, 9, 19);
  usbvision_write_reg(usbvision, 6, 0);
  usbvision_write_reg(usbvision, 7, 0);
  usbvision_write_reg(usbvision, 6, 2);
  usbvision_write_reg(usbvision, 7, 1);
  usbvision_write_reg(usbvision, 7, 2);
  usbvision_write_reg(usbvision, 7, 3);
  i = i + 1;
  ldv_33032: ;
  if ((unsigned int )i <= 37U) {
    goto ldv_33031;
  } else {
  }
  return (0);
}
}
static int usbvision_set_video_format(struct usb_usbvision *usbvision , int format )
{
  char proc[27U] ;
  int rc ;
  unsigned char value[2U] ;
  unsigned int tmp ;
  {
  proc[0] = 'u';
  proc[1] = 's';
  proc[2] = 'b';
  proc[3] = 'v';
  proc[4] = 'i';
  proc[5] = 's';
  proc[6] = 'i';
  proc[7] = 'o';
  proc[8] = 'n';
  proc[9] = '_';
  proc[10] = 's';
  proc[11] = 'e';
  proc[12] = 't';
  proc[13] = '_';
  proc[14] = 'v';
  proc[15] = 'i';
  proc[16] = 'd';
  proc[17] = 'e';
  proc[18] = 'o';
  proc[19] = '_';
  proc[20] = 'f';
  proc[21] = 'o';
  proc[22] = 'r';
  proc[23] = 'm';
  proc[24] = 'a';
  proc[25] = 't';
  proc[26] = '\000';
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] isoc_mode %#02x", "usbvision_set_video_format",
           1725, format);
  } else {
  }
  if ((format != 3 && format != 20) && format != 96) {
    printk("\vusbvision: unknown video format %02x, using default YUV420", format);
    format = 20;
  } else {
  }
  value[0] = 10U;
  value[1] = (unsigned char )format;
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 42, (void *)(& value),
                       2, 250);
  if (rc < 0) {
    printk("\v%s: OLD_ERROR=%d. USBVISION stopped - reconnect or reload driver.\n", (char const *)(& proc),
           rc);
  } else {
  }
  usbvision->isoc_mode = format;
  return (rc);
}
}
int usbvision_set_output(struct usb_usbvision *usbvision , int width , int height )
{
  int err_code ;
  int usb_width ;
  int usb_height ;
  unsigned int frame_rate ;
  unsigned int frame_drop ;
  unsigned char value[4U] ;
  unsigned int tmp ;
  {
  err_code = 0;
  frame_rate = 0U;
  frame_drop = 0U;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  if (width > 320) {
    usb_width = width / 2;
    usbvision->stretch_width = 2;
  } else {
    usb_width = width;
    usbvision->stretch_width = 1;
  }
  if (height > 240) {
    usb_height = height / 2;
    usbvision->stretch_height = 2;
  } else {
    usb_height = height;
    usbvision->stretch_height = 1;
  }
  if (usb_width <= 63) {
    usb_width = 64;
  } else
  if (usb_width > 320) {
    usb_width = 320;
  } else {
  }
  usb_width = usb_width & -64;
  if (usb_height <= 47) {
    usb_height = 48;
  } else
  if (usb_height > 240) {
    usb_height = 240;
  } else {
  }
  usb_height = usb_height & -2;
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] usb %dx%d; screen %dx%d; stretch %dx%d", "usbvision_set_output",
           1789, usb_width, usb_height, width, height, usbvision->stretch_width, usbvision->stretch_height);
  } else {
  }
  if (usbvision->curwidth != usb_width || usbvision->curheight != usb_height) {
    value[0] = (unsigned char )usb_width;
    value[1] = (unsigned int )((unsigned char )(usb_width >> 8)) & 3U;
    value[2] = (unsigned char )usb_height;
    value[3] = (unsigned int )((unsigned char )(usb_height >> 8)) & 3U;
    tmp = __create_pipe(usbvision->dev, 1U);
    err_code = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 38, (void *)(& value),
                               4, 250);
    if (err_code < 0) {
      dev_err((struct device const *)(& (usbvision->dev)->dev), "%s failed: error %d\n",
              "usbvision_set_output", err_code);
      return (err_code);
    } else {
    }
    usbvision->curwidth = usbvision->stretch_width * usb_width;
    usbvision->curheight = usbvision->stretch_height * usb_height;
  } else {
  }
  if (usbvision->isoc_mode == 3) {
    frame_rate = (unsigned int )((usbvision->isoc_packet_size * 1000) / ((usb_width * usb_height) * 2));
  } else
  if (usbvision->isoc_mode == 20) {
    frame_rate = (unsigned int )((usbvision->isoc_packet_size * 1000) / (((usb_width * usb_height) * 12) / 8));
  } else {
    frame_rate = 31U;
  }
  if ((usbvision->tvnorm_id & 16713471ULL) != 0ULL) {
    frame_drop = (frame_rate * 32U) / 25U - 1U;
  } else
  if ((usbvision->tvnorm_id & 63744ULL) != 0ULL) {
    frame_drop = (frame_rate * 32U) / 30U - 1U;
  } else {
  }
  if ((int )frame_drop < 0) {
    frame_drop = 0U;
  } else
  if (frame_drop > 31U) {
    frame_drop = 31U;
  } else {
  }
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] frame_rate %d fps, frame_drop %d", "usbvision_set_output",
           1826, frame_rate, frame_drop);
  } else {
  }
  frame_drop = 31U;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 3000U) {
    if (usbvision_device_data[usbvision->dev_model].video_norm == 255ULL) {
      frame_drop = 25U;
    } else {
      frame_drop = 30U;
    }
  } else {
  }
  err_code = usbvision_write_reg(usbvision, 37, (int )((unsigned char )frame_drop));
  return (err_code);
}
}
int usbvision_frames_alloc(struct usb_usbvision *usbvision , int number_of_frames )
{
  int i ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  usbvision->max_frame_size = ((usbvision->curwidth * usbvision->curheight) * usbvision->palette.bytes_per_pixel + 4095) & -4096;
  usbvision->num_frames = number_of_frames;
  goto ldv_33061;
  ldv_33060:
  usbvision->fbuf_size = usbvision->num_frames * usbvision->max_frame_size;
  tmp = usbvision_rvmalloc((unsigned long )usbvision->fbuf_size);
  usbvision->fbuf = (char *)tmp;
  if ((unsigned long )usbvision->fbuf != (unsigned long )((char *)0)) {
    goto ldv_33059;
  } else {
  }
  usbvision->num_frames = usbvision->num_frames - 1;
  ldv_33061: ;
  if (usbvision->num_frames > 0) {
    goto ldv_33060;
  } else {
  }
  ldv_33059:
  spinlock_check(& usbvision->queue_lock);
  __raw_spin_lock_init(& usbvision->queue_lock.ldv_7686.rlock, "&(&usbvision->queue_lock)->rlock",
                       & __key);
  __init_waitqueue_head(& usbvision->wait_frame, "&usbvision->wait_frame", & __key___0);
  __init_waitqueue_head(& usbvision->wait_stream, "&usbvision->wait_stream", & __key___1);
  i = 0;
  goto ldv_33066;
  ldv_33065:
  usbvision->frame[i].index = i;
  usbvision->frame[i].grabstate = 0;
  usbvision->frame[i].data = usbvision->fbuf + (unsigned long )(usbvision->max_frame_size * i);
  usbvision->stretch_width = 1;
  usbvision->stretch_height = 1;
  usbvision->frame[i].width = usbvision->curwidth;
  usbvision->frame[i].height = usbvision->curheight;
  usbvision->frame[i].bytes_read = 0L;
  i = i + 1;
  ldv_33066: ;
  if (usbvision->num_frames > i) {
    goto ldv_33065;
  } else {
  }
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] allocated %d frames (%d bytes per frame)", "usbvision_frames_alloc",
           1893, usbvision->num_frames, usbvision->max_frame_size);
  } else {
  }
  return (usbvision->num_frames);
}
}
void usbvision_frames_free(struct usb_usbvision *usbvision )
{
  {
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] free %d frames", "usbvision_frames_free", 1904,
           usbvision->num_frames);
  } else {
  }
  if ((unsigned long )usbvision->fbuf != (unsigned long )((char *)0)) {
    usbvision_rvfree((void *)usbvision->fbuf, (unsigned long )usbvision->fbuf_size);
    usbvision->fbuf = (char *)0;
    usbvision->num_frames = 0;
  } else {
  }
  return;
}
}
void usbvision_empty_framequeues(struct usb_usbvision *usbvision )
{
  u32 i ;
  {
  INIT_LIST_HEAD(& usbvision->inqueue);
  INIT_LIST_HEAD(& usbvision->outqueue);
  i = 0U;
  goto ldv_33078;
  ldv_33077:
  usbvision->frame[i].grabstate = 0;
  usbvision->frame[i].bytes_read = 0L;
  i = i + 1U;
  ldv_33078: ;
  if (i <= 2U) {
    goto ldv_33077;
  } else {
  }
  return;
}
}
int usbvision_stream_interrupt(struct usb_usbvision *usbvision )
{
  int ret ;
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  {
  ret = 0;
  usbvision->streaming = 2;
  tmp = msecs_to_jiffies(64U);
  __ret = (long )tmp;
  if ((unsigned int )usbvision->streaming != 1U) {
    tmp___0 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___0;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_33087:
    prepare_to_wait(& usbvision->wait_stream, & __wait, 2);
    if ((unsigned int )usbvision->streaming == 1U) {
      goto ldv_33086;
    } else {
    }
    __ret = schedule_timeout(__ret);
    if (__ret == 0L) {
      goto ldv_33086;
    } else {
    }
    goto ldv_33087;
    ldv_33086: ;
    if (__ret == 0L && (unsigned int )usbvision->streaming == 1U) {
      __ret = 1L;
    } else {
    }
    finish_wait(& usbvision->wait_stream, & __wait);
  } else {
  }
  ret = (int )__ret;
  return (ret);
}
}
static int usbvision_set_compress_params(struct usb_usbvision *usbvision )
{
  char proc[34U] ;
  int rc ;
  unsigned char value[6U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  proc[0] = 'u';
  proc[1] = 's';
  proc[2] = 'b';
  proc[3] = 'v';
  proc[4] = 'i';
  proc[5] = 's';
  proc[6] = 'i';
  proc[7] = 'o';
  proc[8] = 'n';
  proc[9] = '_';
  proc[10] = 's';
  proc[11] = 'e';
  proc[12] = 't';
  proc[13] = '_';
  proc[14] = 'c';
  proc[15] = 'o';
  proc[16] = 'm';
  proc[17] = 'p';
  proc[18] = 'r';
  proc[19] = 'e';
  proc[20] = 's';
  proc[21] = 'i';
  proc[22] = 'o';
  proc[23] = 'n';
  proc[24] = '_';
  proc[25] = 'p';
  proc[26] = 'a';
  proc[27] = 'r';
  proc[28] = 'a';
  proc[29] = 'm';
  proc[30] = 's';
  proc[31] = ':';
  proc[32] = ' ';
  proc[33] = '\000';
  value[0] = 15U;
  value[1] = 1U;
  value[2] = 0U;
  value[3] = 0U;
  value[4] = 162U;
  value[5] = 0U;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 44, (void *)(& value),
                       5, 250);
  if (rc < 0) {
    printk("\v%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n", (char const *)(& proc),
           rc);
    return (rc);
  } else {
  }
  if (usbvision->bridge_type == 1004) {
    value[0] = 20U;
    value[1] = 12U;
    value[2] = 255U;
    value[3] = 255U;
    value[4] = 43U;
    value[5] = 43U;
  } else {
    value[0] = 20U;
    value[1] = 12U;
    value[2] = 255U;
    value[3] = 0U;
    value[4] = 43U;
    value[5] = 0U;
  }
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  tmp___0 = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp___0 | 2147483648U, 51, 66, 0, 56, (void *)(& value),
                       6, 250);
  if (rc < 0) {
    printk("\v%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n", (char const *)(& proc),
           rc);
  } else {
  }
  return (rc);
}
}
int usbvision_set_input(struct usb_usbvision *usbvision )
{
  char proc[22U] ;
  int rc ;
  unsigned char value[8U] ;
  unsigned char dvi_yuv_value ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  proc[0] = 'u';
  proc[1] = 's';
  proc[2] = 'b';
  proc[3] = 'v';
  proc[4] = 'i';
  proc[5] = 's';
  proc[6] = 'i';
  proc[7] = 'o';
  proc[8] = 'n';
  proc[9] = '_';
  proc[10] = 's';
  proc[11] = 'e';
  proc[12] = 't';
  proc[13] = '_';
  proc[14] = 'i';
  proc[15] = 'n';
  proc[16] = 'p';
  proc[17] = 'u';
  proc[18] = 't';
  proc[19] = ':';
  proc[20] = ' ';
  proc[21] = '\000';
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].vin_reg1_override != 0U) {
    value[0] = usbvision_device_data[usbvision->dev_model].vin_reg1;
  } else
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 7113U) {
    value[0] = 1U;
  } else {
    value[0] = 2U;
  }
  rc = usbvision_write_reg(usbvision, 27, (int )value[0]);
  if (rc < 0) {
    printk("\v%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n", (char const *)(& proc),
           rc);
    return (rc);
  } else {
  }
  if ((usbvision->tvnorm_id & 255ULL) != 0ULL) {
    value[0] = 192U;
    value[1] = 2U;
    value[2] = 32U;
    value[3] = 1U;
    value[4] = 96U;
    value[5] = 0U;
    value[6] = 22U;
    value[7] = 0U;
  } else
  if ((usbvision->tvnorm_id & 16711680ULL) != 0ULL) {
    value[0] = 192U;
    value[1] = 2U;
    value[2] = 32U;
    value[3] = 1U;
    value[4] = 1U;
    value[5] = 0U;
    value[6] = 1U;
    value[7] = 0U;
  } else {
    value[0] = 208U;
    value[1] = 2U;
    value[2] = 240U;
    value[3] = 0U;
    value[4] = 80U;
    value[5] = 0U;
    value[6] = 16U;
    value[7] = 0U;
  }
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 3000U) {
    value[0] = 224U;
    value[1] = 1U;
  } else {
  }
  if ((int )usbvision_device_data[usbvision->dev_model].x_offset >= 0) {
    value[4] = (unsigned char )usbvision_device_data[usbvision->dev_model].x_offset;
    value[5] = (unsigned char )(((int )usbvision_device_data[usbvision->dev_model].x_offset & 768) >> 8);
  } else {
  }
  if (adjust_x_offset != 4294967295U) {
    value[4] = (unsigned char )adjust_x_offset;
    value[5] = (unsigned char )((adjust_x_offset & 768U) >> 8);
  } else {
  }
  if ((int )usbvision_device_data[usbvision->dev_model].y_offset >= 0) {
    value[6] = (unsigned char )usbvision_device_data[usbvision->dev_model].y_offset;
    value[7] = (unsigned char )(((int )usbvision_device_data[usbvision->dev_model].y_offset & 768) >> 8);
  } else {
  }
  if (adjust_y_offset != 4294967295U) {
    value[6] = (unsigned char )adjust_y_offset;
    value[7] = (unsigned char )((adjust_y_offset & 768U) >> 8);
  } else {
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 29, (void *)(& value),
                       8, 250);
  if (rc < 0) {
    printk("\v%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n", (char const *)(& proc),
           rc);
    return (rc);
  } else {
  }
  dvi_yuv_value = 0U;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].dvi_yuv_override != 0U) {
    dvi_yuv_value = usbvision_device_data[usbvision->dev_model].dvi_yuv;
  } else
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 7113U) {
    dvi_yuv_value = 6U;
  } else {
  }
  tmp___0 = usbvision_write_reg(usbvision, 49, (int )dvi_yuv_value);
  return (tmp___0);
}
}
static int usbvision_set_dram_settings(struct usb_usbvision *usbvision )
{
  int rc ;
  unsigned char value[8U] ;
  unsigned int tmp ;
  {
  if (usbvision->isoc_mode == 96) {
    value[0] = 66U;
    value[1] = 113U;
    value[2] = 255U;
    value[3] = 0U;
    value[4] = 152U;
    value[5] = 224U;
    value[6] = 113U;
    value[7] = 255U;
  } else {
    value[0] = 66U;
    value[1] = 0U;
    value[2] = 255U;
    value[3] = 0U;
    value[4] = 0U;
    value[5] = 0U;
    value[6] = 0U;
    value[7] = 255U;
  }
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (0);
  } else {
  }
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 19, (void *)(& value),
                       8, 250);
  if (rc < 0) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: OLD_ERROR=%d\n",
            "usbvision_set_dram_settings", rc);
    return (rc);
  } else {
  }
  rc = usbvision_write_reg(usbvision, 18, 28);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = usbvision_write_reg(usbvision, 18, 0);
  return (rc);
}
}
int usbvision_power_on(struct usb_usbvision *usbvision )
{
  int err_code ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  err_code = 0;
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_power_on", 2220);
  } else {
  }
  usbvision_write_reg(usbvision, 0, 2);
  usbvision_write_reg(usbvision, 0, 6);
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 3000U) {
    usbvision_write_reg(usbvision, 27, 66);
    usbvision_write_reg(usbvision, 28, 132);
  } else {
  }
  usbvision_write_reg(usbvision, 0, 34);
  __ms = 10UL;
  goto ldv_33115;
  ldv_33114:
  __const_udelay(4295000UL);
  ldv_33115:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_33114;
  } else {
  }
  err_code = usbvision_write_reg(usbvision, 0, 38);
  if (err_code == 1) {
    usbvision->power = 1;
  } else {
  }
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] %s: err_code %d", "usbvision_power_on", 2239, err_code < 0 ? (char *)"OLD_ERROR" : (char *)"power is on",
           err_code);
  } else {
  }
  return (err_code);
}
}
static void call_usbvision_power_off(struct work_struct *work )
{
  struct usb_usbvision *usbvision ;
  struct work_struct const *__mptr ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  usbvision = (struct usb_usbvision *)__mptr + 0xfffffffffffff528UL;
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "call_usbvision_power_off", 2253);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& usbvision->v4l2_lock, 0U);
  if (tmp != 0) {
    return;
  } else {
  }
  if (usbvision->user == 0) {
    usbvision_i2c_unregister(usbvision);
    usbvision_power_off(usbvision);
    usbvision->initialized = 0;
  } else {
  }
  mutex_unlock(& usbvision->v4l2_lock);
  return;
}
}
static void usbvision_power_off_timer(unsigned long data )
{
  struct usb_usbvision *usbvision ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  usbvision = (struct usb_usbvision *)data;
  if ((core_debug & 32U) != 0U) {
    printk("\016usbvision:[%s:%d] ", "usbvision_power_off_timer", 2270);
  } else {
  }
  ldv_del_timer_5(& usbvision->power_off_timer);
  __init_work(& usbvision->power_off_work, 0);
  __constr_expr_0.counter = 137438953408L;
  usbvision->power_off_work.data = __constr_expr_0;
  lockdep_init_map(& usbvision->power_off_work.lockdep_map, "(&usbvision->power_off_work)",
                   & __key, 0);
  INIT_LIST_HEAD(& usbvision->power_off_work.entry);
  usbvision->power_off_work.func = & call_usbvision_power_off;
  schedule_work(& usbvision->power_off_work);
  return;
}
}
void usbvision_init_power_off_timer(struct usb_usbvision *usbvision )
{
  {
  reg_timer_1(& usbvision->power_off_timer);
  usbvision->power_off_timer.data = (unsigned long )usbvision;
  usbvision->power_off_timer.function = & usbvision_power_off_timer;
  return;
}
}
void usbvision_set_power_off_timer(struct usb_usbvision *usbvision )
{
  {
  ldv_mod_timer_6(& usbvision->power_off_timer, (unsigned long )jiffies + 750UL);
  return;
}
}
void usbvision_reset_power_off_timer(struct usb_usbvision *usbvision )
{
  int tmp ;
  {
  tmp = timer_pending((struct timer_list const *)(& usbvision->power_off_timer));
  if (tmp != 0) {
    ldv_del_timer_7(& usbvision->power_off_timer);
  } else {
  }
  return;
}
}
int usbvision_begin_streaming(struct usb_usbvision *usbvision )
{
  int tmp ;
  {
  if (usbvision->isoc_mode == 96) {
    usbvision_init_compression(usbvision);
  } else {
  }
  tmp = usbvision_write_reg(usbvision, 28, (int )((unsigned int )usbvision->vin_reg2_preset | 4U));
  return (tmp);
}
}
int usbvision_restart_isoc(struct usb_usbvision *usbvision )
{
  int ret ;
  int tmp ;
  {
  ret = usbvision_write_reg(usbvision, 0, 34);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = usbvision_write_reg(usbvision, 0, 38);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = usbvision_write_reg(usbvision, 28, (int )((unsigned int )usbvision->vin_reg2_preset | 132U));
  if (ret < 0) {
    return (ret);
  } else {
  }
  goto ldv_33148;
  ldv_33147: ;
  ldv_33148:
  tmp = usbvision_read_reg(usbvision, 5);
  if ((tmp & 1) == 0) {
    goto ldv_33147;
  } else {
  }
  return (0);
}
}
int usbvision_audio_off(struct usb_usbvision *usbvision )
{
  int tmp ;
  {
  tmp = usbvision_write_reg(usbvision, 6, 3);
  if (tmp < 0) {
    printk("\vusbvision_audio_off: can\'t write reg\n");
    return (-1);
  } else {
  }
  usbvision->audio_mute = 0;
  usbvision->audio_channel = 3;
  return (0);
}
}
int usbvision_set_audio(struct usb_usbvision *usbvision , int audio_channel )
{
  int tmp ;
  {
  if (usbvision->audio_mute == 0) {
    tmp = usbvision_write_reg(usbvision, 6, (int )((unsigned char )audio_channel));
    if (tmp < 0) {
      printk("\vusbvision_set_audio: can\'t write iopin register for audio switching\n");
      return (-1);
    } else {
    }
  } else {
  }
  usbvision->audio_channel = audio_channel;
  return (0);
}
}
int usbvision_setup(struct usb_usbvision *usbvision , int format )
{
  {
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].codec == 3000U) {
    usbvision_init_webcam(usbvision);
  } else {
  }
  usbvision_set_video_format(usbvision, format);
  usbvision_set_dram_settings(usbvision);
  usbvision_set_compress_params(usbvision);
  usbvision_set_input(usbvision);
  usbvision_set_output(usbvision, 320, 240);
  usbvision_restart_isoc(usbvision);
  return ((((unsigned long )usbvision != (unsigned long )((struct usb_usbvision *)0) && (unsigned long )usbvision->dev != (unsigned long )((struct usb_device *)0)) && usbvision->last_error == 0) && (int )usbvision->remove_pending == 0);
}
}
int usbvision_set_alternate(struct usb_usbvision *dev )
{
  int err_code ;
  int prev_alt ;
  int i ;
  {
  prev_alt = (int )dev->iface_alt;
  dev->iface_alt = 0U;
  i = 0;
  goto ldv_33168;
  ldv_33167: ;
  if (*(dev->alt_max_pkt_size + (unsigned long )i) > *(dev->alt_max_pkt_size + (unsigned long )dev->iface_alt)) {
    dev->iface_alt = (unsigned char )i;
  } else {
  }
  i = i + 1;
  ldv_33168: ;
  if (dev->num_alt > i) {
    goto ldv_33167;
  } else {
  }
  if ((int )dev->iface_alt != prev_alt) {
    dev->isoc_packet_size = (int )*(dev->alt_max_pkt_size + (unsigned long )dev->iface_alt);
    if ((core_debug & 32U) != 0U) {
      printk("\016usbvision:[%s:%d] setting alternate %d with max_packet_size=%u",
             "usbvision_set_alternate", 2389, (int )dev->iface_alt, dev->isoc_packet_size);
    } else {
    }
    err_code = usb_set_interface(dev->dev, (int )dev->iface, (int )dev->iface_alt);
    if (err_code < 0) {
      dev_err((struct device const *)(& (dev->dev)->dev), "cannot change alternate number to %d (error=%i)\n",
              (int )dev->iface_alt, err_code);
      return (err_code);
    } else {
    }
  } else {
  }
  if ((core_debug & 4U) != 0U) {
    printk("\016usbvision:[%s:%d] ISO Packet Length:%d", "usbvision_set_alternate",
           2399, dev->isoc_packet_size);
  } else {
  }
  return (0);
}
}
int usbvision_init_isoc(struct usb_usbvision *usbvision )
{
  struct usb_device *dev ;
  int buf_idx ;
  int err_code ;
  int reg_value ;
  int sb_size ;
  int tmp ;
  int j ;
  int k ;
  struct urb *urb ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  {
  dev = usbvision->dev;
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (-14);
  } else {
  }
  usbvision->cur_frame = (struct usbvision_frame *)0;
  scratch_reset(usbvision);
  err_code = usbvision_set_alternate(usbvision);
  if (err_code < 0) {
    usbvision->last_error = err_code;
    return (-16);
  } else {
  }
  sb_size = usbvision->isoc_packet_size * 32;
  tmp = usbvision_read_reg(usbvision, 3);
  reg_value = (int )(- ((unsigned int )tmp)) & 15;
  usbvision->usb_bandwidth = reg_value >> 1;
  if ((core_debug & 4U) != 0U) {
    printk("\016usbvision:[%s:%d] USB Bandwidth Usage: %dMbit/Sec", "usbvision_init_isoc",
           2433, usbvision->usb_bandwidth);
  } else {
  }
  buf_idx = 0;
  goto ldv_33187;
  ldv_33186:
  urb = ldv_usb_alloc_urb_8(32, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: usb_alloc_urb() failed\n",
            "usbvision_init_isoc");
    return (-12);
  } else {
  }
  usbvision->sbuf[buf_idx].urb = urb;
  tmp___0 = usb_alloc_coherent(usbvision->dev, (size_t )sb_size, 208U, & urb->transfer_dma);
  usbvision->sbuf[buf_idx].data = (char *)tmp___0;
  urb->dev = dev;
  urb->context = (void *)usbvision;
  tmp___1 = __create_pipe(dev, (unsigned int )usbvision->video_endp);
  urb->pipe = tmp___1 | 128U;
  urb->transfer_flags = 6U;
  urb->interval = 1;
  urb->transfer_buffer = (void *)usbvision->sbuf[buf_idx].data;
  urb->complete = & usbvision_isoc_irq;
  urb->number_of_packets = 32;
  urb->transfer_buffer_length = (u32 )(usbvision->isoc_packet_size * 32);
  k = 0;
  j = k;
  goto ldv_33184;
  ldv_33183:
  urb->iso_frame_desc[j].offset = (unsigned int )k;
  urb->iso_frame_desc[j].length = (unsigned int )usbvision->isoc_packet_size;
  j = j + 1;
  k = usbvision->isoc_packet_size + k;
  ldv_33184: ;
  if (j <= 31) {
    goto ldv_33183;
  } else {
  }
  buf_idx = buf_idx + 1;
  ldv_33187: ;
  if (buf_idx <= 1) {
    goto ldv_33186;
  } else {
  }
  buf_idx = 0;
  goto ldv_33190;
  ldv_33189:
  err_code = ldv_usb_submit_urb_9(usbvision->sbuf[buf_idx].urb, 208U);
  if (err_code != 0) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: usb_submit_urb(%d) failed: error %d\n",
            "usbvision_init_isoc", buf_idx, err_code);
  } else {
  }
  buf_idx = buf_idx + 1;
  ldv_33190: ;
  if (buf_idx <= 1) {
    goto ldv_33189;
  } else {
  }
  usbvision->streaming = 1;
  if ((core_debug & 4U) != 0U) {
    printk("\016usbvision:[%s:%d] %s: streaming=1 usbvision->video_endp=$%02x", "usbvision_init_isoc",
           2487, "usbvision_init_isoc", (int )usbvision->video_endp);
  } else {
  }
  return (0);
}
}
void usbvision_stop_isoc(struct usb_usbvision *usbvision )
{
  int buf_idx ;
  int err_code ;
  int reg_value ;
  int sb_size ;
  int tmp ;
  {
  sb_size = usbvision->isoc_packet_size * 32;
  if ((unsigned int )usbvision->streaming == 0U || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) {
    return;
  } else {
  }
  buf_idx = 0;
  goto ldv_33200;
  ldv_33199:
  usb_kill_urb(usbvision->sbuf[buf_idx].urb);
  if ((unsigned long )usbvision->sbuf[buf_idx].data != (unsigned long )((char *)0)) {
    usb_free_coherent(usbvision->dev, (size_t )sb_size, (void *)usbvision->sbuf[buf_idx].data,
                      (usbvision->sbuf[buf_idx].urb)->transfer_dma);
  } else {
  }
  ldv_usb_free_urb_10(usbvision->sbuf[buf_idx].urb);
  usbvision->sbuf[buf_idx].urb = (struct urb *)0;
  buf_idx = buf_idx + 1;
  ldv_33200: ;
  if (buf_idx <= 1) {
    goto ldv_33199;
  } else {
  }
  if ((core_debug & 4U) != 0U) {
    printk("\016usbvision:[%s:%d] %s: streaming=stream_off\n", "usbvision_stop_isoc",
           2519, "usbvision_stop_isoc");
  } else {
  }
  usbvision->streaming = 0;
  if ((int )usbvision->remove_pending == 0) {
    usbvision->iface_alt = 0U;
    err_code = usb_set_interface(usbvision->dev, (int )usbvision->iface, (int )usbvision->iface_alt);
    if (err_code < 0) {
      dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: usb_set_interface() failed: error %d\n",
              "usbvision_stop_isoc", err_code);
      usbvision->last_error = err_code;
    } else {
    }
    tmp = usbvision_read_reg(usbvision, 3);
    reg_value = (int )(- ((unsigned int )tmp)) & 15;
    usbvision->isoc_packet_size = reg_value != 0 ? reg_value * 64 + -1 : 0;
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] ISO Packet Length:%d", "usbvision_stop_isoc",
             2537, usbvision->isoc_packet_size);
    } else {
    }
    usbvision->usb_bandwidth = reg_value >> 1;
    if ((core_debug & 4U) != 0U) {
      printk("\016usbvision:[%s:%d] USB Bandwidth Usage: %dMbit/Sec", "usbvision_stop_isoc",
             2541, usbvision->usb_bandwidth);
    } else {
    }
  } else {
  }
  return;
}
}
int usbvision_muxsel(struct usb_usbvision *usbvision , int channel )
{
  int mode[4U] ;
  int audio[4U] ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mode[0] = 0;
  mode[1] = 0;
  mode[2] = 0;
  mode[3] = 3;
  audio[0] = 1;
  audio[1] = 0;
  audio[2] = 0;
  audio[3] = 0;
  if (channel < 0) {
    channel = 0;
  } else
  if (usbvision->video_inputs < channel) {
    channel = usbvision->video_inputs;
  } else {
  }
  usbvision->ctl_input = (unsigned int )channel;
  switch ((int )usbvision_device_data[usbvision->dev_model].codec) {
  case 7113:
  mode[1] = 2;
  if (switch_svideo_input != 0) {
    mode[2] = 1;
  } else {
    mode[2] = 7;
  }
  goto ldv_33210;
  case 7111: ;
  default:
  mode[1] = 1;
  mode[2] = 7;
  goto ldv_33210;
  }
  ldv_33210:
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33219;
  ldv_33218: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ))0)) {
    (*(((__sd->ops)->video)->s_routing))(__sd, (u32 )mode[channel], 0U, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33219: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33218;
  } else {
  }
  usbvision_set_audio(usbvision, audio[channel]);
  return (0);
}
}
int reg_timer_1(struct timer_list *timer )
{
  {
  ldv_timer_list_1 = timer;
  ldv_timer_state_1 = 1;
  return (0);
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_1) {
    ldv_timer_state_1 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1 == (unsigned long )timer) {
    if (ldv_timer_state_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1 = timer;
      ldv_timer_list_1->data = data;
      ldv_timer_state_1 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_1(timer);
  ldv_timer_list_1->data = data;
  return;
}
}
void choose_timer_1(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_1 = 2;
  return;
}
}
int ldv_del_timer_1(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_usb_submit_urb_3(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_4(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_del_timer_5(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_6(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_7(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
struct urb *ldv_usb_alloc_urb_8(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
int ldv_usb_submit_urb_9(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
void ldv_usb_free_urb_10(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void list_del(struct list_head * ) ;
int ldv_del_timer_15(struct timer_list *ldv_func_arg1 ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
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
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf ) ;
struct usb_device *ldv_usb_get_dev_19(struct usb_device *ldv_func_arg1 ) ;
void ldv_usb_put_dev_20(struct usb_device *dev ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_22(struct usb_driver *arg ) ;
struct urb *ldv_usb_alloc_urb_17(int iso_packets , gfp_t mem_flags ) ;
void ldv_usb_free_urb_18(struct urb *urb ) ;
struct usb_device *ldv_interface_to_usbdev(void) ;
struct usb_device *ldv_get_dev(struct usb_device *data ) ;
void ldv_put_dev(struct usb_device *data ) ;
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
extern size_t __VERIFIER_nondet_size_t(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_8 ;
struct file *usbvision_radio_ioctl_ops_group0 ;
int ldv_state_variable_15 ;
struct file *usbvision_radio_fops_group0 ;
struct file *usbvision_ioctl_ops_group1 ;
int ldv_state_variable_10 ;
struct v4l2_control *usbvision_radio_ioctl_ops_group1 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
int ldv_state_variable_12 ;
int usb_counter ;
struct v4l2_buffer *usbvision_ioctl_ops_group2 ;
struct v4l2_control *usbvision_ioctl_ops_group3 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int ldv_state_variable_17 ;
int ldv_state_variable_18 ;
struct i2c_adapter *usbvision_algo_group0 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
struct file *usbvision_fops_group0 ;
int ref_cnt ;
struct v4l2_format *usbvision_ioctl_ops_group0 ;
struct usb_interface *usbvision_driver_group1 ;
int ldv_state_variable_1 ;
struct timer_list *ldv_timer_list_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void ldv_usb_driver_3(void) ;
void ldv_initialize_i2c_algorithm_2(void) ;
void ldv_initialize_v4l2_file_operations_6(void) ;
void ldv_initialize_v4l2_file_operations_9(void) ;
void ldv_initialize_v4l2_ioctl_ops_8(void) ;
void ldv_initialize_v4l2_ioctl_ops_5(void) ;
extern int vm_insert_page(struct vm_area_struct * , unsigned long , struct page * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  return (tmp);
}
}
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
struct usb_device_id usbvision_table[68U] ;
__inline static struct usb_usbvision *to_usbvision(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct usb_usbvision *)__mptr);
}
}
int usbvision_i2c_register(struct usb_usbvision *usbvision ) ;
int const usbvision_device_data_size ;
static int usbvision_nr ;
static struct usbvision_v4l2_format_st usbvision_v4l2_format[8U] =
  { {1, 1, 8, 1497715271, (char *)"GREY"},
        {1, 2, 16, 1346520914, (char *)"RGB565"},
        {1, 3, 24, 859981650, (char *)"RGB24"},
        {1, 4, 32, 876758866, (char *)"RGB32"},
        {1, 2, 16, 1329743698, (char *)"RGB555"},
        {1, 2, 16, 1448695129, (char *)"YUV422"},
        {1, 2, 12, 842094169, (char *)"YUV420P"},
        {1, 2, 16, 1345466932, (char *)"YUV422P"}};
static void usbvision_release(struct usb_usbvision *usbvision ) ;
static int isoc_mode = 96;
static int video_debug ;
static int power_on_at_open = 1;
static int video_nr = -1;
static int radio_nr = -1;
static ssize_t show_version(struct device *cd , struct device_attribute *attr , char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "%s\n", (char *)"0.9.11");
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_version = {{"version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_version,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t show_model(struct device *cd , struct device_attribute *attr , char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = sprintf(buf, "%s\n", usbvision_device_data[usbvision->dev_model].model_string);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_model = {{"model", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_model,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t show_hue(struct device *cd , struct device_attribute *attr , char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_control ctrl ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  ctrl.id = 9963779U;
  ctrl.value = 0;
  if (usbvision->user != 0) {
    __mptr___0 = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    goto ldv_33100;
    ldv_33099: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            struct v4l2_control * ))0)) {
      (*(((__sd->ops)->core)->g_ctrl))(__sd, & ctrl);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    ldv_33100: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33099;
    } else {
    }
  } else {
  }
  tmp___0 = sprintf(buf, "%d\n", ctrl.value);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_hue = {{"hue", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & show_hue, (ssize_t (*)(struct device * ,
                                                                                              struct device_attribute * ,
                                                                                              char const * ,
                                                                                              size_t ))0};
static ssize_t show_contrast(struct device *cd , struct device_attribute *attr , char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_control ctrl ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  ctrl.id = 9963777U;
  ctrl.value = 0;
  if (usbvision->user != 0) {
    __mptr___0 = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    goto ldv_33119;
    ldv_33118: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            struct v4l2_control * ))0)) {
      (*(((__sd->ops)->core)->g_ctrl))(__sd, & ctrl);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    ldv_33119: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33118;
    } else {
    }
  } else {
  }
  tmp___0 = sprintf(buf, "%d\n", ctrl.value);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_contrast = {{"contrast", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_contrast, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static ssize_t show_brightness(struct device *cd , struct device_attribute *attr ,
                               char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_control ctrl ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  ctrl.id = 9963776U;
  ctrl.value = 0;
  if (usbvision->user != 0) {
    __mptr___0 = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    goto ldv_33138;
    ldv_33137: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            struct v4l2_control * ))0)) {
      (*(((__sd->ops)->core)->g_ctrl))(__sd, & ctrl);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    ldv_33138: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33137;
    } else {
    }
  } else {
  }
  tmp___0 = sprintf(buf, "%d\n", ctrl.value);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_brightness = {{"brightness", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_brightness, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0};
static ssize_t show_saturation(struct device *cd , struct device_attribute *attr ,
                               char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_control ctrl ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  ctrl.id = 9963778U;
  ctrl.value = 0;
  if (usbvision->user != 0) {
    __mptr___0 = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    goto ldv_33157;
    ldv_33156: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            struct v4l2_control * ))0)) {
      (*(((__sd->ops)->core)->g_ctrl))(__sd, & ctrl);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    ldv_33157: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33156;
    } else {
    }
  } else {
  }
  tmp___0 = sprintf(buf, "%d\n", ctrl.value);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_saturation = {{"saturation", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_saturation, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0};
static ssize_t show_streaming(struct device *cd , struct device_attribute *attr ,
                              char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = sprintf(buf, "%s\n", (unsigned int )usbvision->streaming == 3U ? (char *)"Yes" : (char *)"No");
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_streaming = {{"streaming", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_streaming, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0};
static ssize_t show_compression(struct device *cd , struct device_attribute *attr ,
                                char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = sprintf(buf, "%s\n", usbvision->isoc_mode == 96 ? (char *)"Yes" : (char *)"No");
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_compression = {{"compression", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_compression, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0};
static ssize_t show_device_bridge(struct device *cd , struct device_attribute *attr ,
                                  char *buf )
{
  struct video_device *vdev ;
  struct device const *__mptr ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)cd;
  vdev = (struct video_device *)__mptr + 0xffffffffffffff78UL;
  tmp = video_get_drvdata(vdev);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = sprintf(buf, "%d\n", usbvision->bridge_type);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_bridge = {{"bridge", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_device_bridge,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static void usbvision_create_sysfs(struct video_device *vdev )
{
  int res ;
  {
  if ((unsigned long )vdev == (unsigned long )((struct video_device *)0)) {
    return;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_version));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_model));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_hue));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_contrast));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_brightness));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_saturation));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_streaming));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_compression));
  if (res < 0) {
    goto ldv_33194;
  } else {
  }
  res = device_create_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_bridge));
  if (res >= 0) {
    return;
  } else {
  }
  ldv_33194:
  dev_err((struct device const *)(& vdev->dev), "%s error: %d\n", "usbvision_create_sysfs",
          res);
  return;
}
}
static void usbvision_remove_sysfs(struct video_device *vdev )
{
  {
  if ((unsigned long )vdev != (unsigned long )((struct video_device *)0)) {
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_version));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_model));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_hue));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_contrast));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_brightness));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_saturation));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_streaming));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_compression));
    device_remove_file(& vdev->dev, (struct device_attribute const *)(& dev_attr_bridge));
  } else {
  }
  return;
}
}
static int usbvision_v4l2_open(struct file *file )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int err_code ;
  int tmp___0 ;
  int setup_ok ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  err_code = 0;
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] open", "usbvision_v4l2_open", 426);
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& usbvision->v4l2_lock, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  usbvision_reset_power_off_timer(usbvision);
  if (usbvision->user != 0) {
    err_code = -16;
  } else {
    err_code = usbvision_scratch_alloc(usbvision);
    if (isoc_mode == 96) {
      err_code = usbvision_decompress_alloc(usbvision);
    } else {
    }
    if (err_code != 0) {
      usbvision_scratch_free(usbvision);
      usbvision_decompress_free(usbvision);
    } else {
    }
  }
  if (err_code == 0) {
    if (usbvision->power == 0) {
      usbvision_power_on(usbvision);
      usbvision_i2c_register(usbvision);
    } else {
    }
    if (usbvision->initialized == 0) {
      setup_ok = 0;
      setup_ok = usbvision_setup(usbvision, isoc_mode);
      if (setup_ok != 0) {
        usbvision->initialized = 1;
      } else {
        err_code = -16;
      }
    } else {
    }
    if (err_code == 0) {
      usbvision_begin_streaming(usbvision);
      err_code = usbvision_init_isoc(usbvision);
      usbvision_muxsel(usbvision, 0);
      usbvision->user = usbvision->user + 1;
    } else
    if (power_on_at_open != 0) {
      usbvision_i2c_unregister(usbvision);
      usbvision_power_off(usbvision);
      usbvision->initialized = 0;
    } else {
    }
  } else {
  }
  usbvision_empty_framequeues(usbvision);
  mutex_unlock(& usbvision->v4l2_lock);
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_v4l2_open", 485);
  } else {
  }
  return (err_code);
}
}
static int usbvision_v4l2_close(struct file *file )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] close", "usbvision_v4l2_close", 501);
  } else {
  }
  mutex_lock_nested(& usbvision->v4l2_lock, 0U);
  usbvision_audio_off(usbvision);
  usbvision_restart_isoc(usbvision);
  usbvision_stop_isoc(usbvision);
  usbvision_decompress_free(usbvision);
  usbvision_frames_free(usbvision);
  usbvision_empty_framequeues(usbvision);
  usbvision_scratch_free(usbvision);
  usbvision->user = usbvision->user - 1;
  if (power_on_at_open != 0) {
    usbvision_set_power_off_timer(usbvision);
    usbvision->initialized = 0;
  } else {
  }
  if ((int )usbvision->remove_pending != 0) {
    printk("\016%s: Final disconnect\n", "usbvision_v4l2_close");
    usbvision_release(usbvision);
  } else {
  }
  mutex_unlock(& usbvision->v4l2_lock);
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_v4l2_close", 528);
  } else {
  }
  return (0);
}
}
static int vidioc_g_register(struct file *file , void *priv , struct v4l2_dbg_register *reg )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int err_code ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  err_code = usbvision_read_reg(usbvision, (int )((unsigned char )reg->reg));
  if (err_code < 0) {
    dev_err((struct device const *)(& (usbvision->vdev)->dev), "%s: VIDIOC_DBG_G_REGISTER failed: error %d\n",
            "vidioc_g_register", err_code);
    return (err_code);
  } else {
  }
  reg->val = (__u64 )err_code;
  reg->size = 1U;
  return (0);
}
}
static int vidioc_s_register(struct file *file , void *priv , struct v4l2_dbg_register const *reg )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int err_code ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  err_code = usbvision_write_reg(usbvision, (int )((unsigned char )reg->reg), (int )((unsigned char )reg->val));
  if (err_code < 0) {
    dev_err((struct device const *)(& (usbvision->vdev)->dev), "%s: VIDIOC_DBG_S_REGISTER failed: error %d\n",
            "vidioc_s_register", err_code);
    return (err_code);
  } else {
  }
  return (0);
}
}
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *vc )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  strlcpy((char *)(& vc->driver), "USBVision", 16UL);
  strlcpy((char *)(& vc->card), usbvision_device_data[usbvision->dev_model].model_string,
          32UL);
  usb_make_path(usbvision->dev, (char *)(& vc->bus_info), 32UL);
  vc->capabilities = usbvision->have_tuner != 0 ? 84082689U : 84017153U;
  return (0);
}
}
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *vi )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int chan ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (vi->index >= (__u32 )usbvision->video_inputs) {
    return (-22);
  } else {
  }
  if (usbvision->have_tuner != 0) {
    chan = (int )vi->index;
  } else {
    chan = (int )(vi->index + 1U);
  }
  switch (chan) {
  case 0: ;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].video_channels == 4U) {
    strcpy((char *)(& vi->name), "White Video Input");
  } else {
    strcpy((char *)(& vi->name), "Television");
    vi->type = 1U;
    vi->audioset = 1U;
    vi->tuner = (__u32 )chan;
    vi->std = 16757247ULL;
  }
  goto ldv_33241;
  case 1:
  vi->type = 2U;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].video_channels == 4U) {
    strcpy((char *)(& vi->name), "Green Video Input");
  } else {
    strcpy((char *)(& vi->name), "Composite Video Input");
  }
  vi->std = 255ULL;
  goto ldv_33241;
  case 2:
  vi->type = 2U;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].video_channels == 4U) {
    strcpy((char *)(& vi->name), "Yellow Video Input");
  } else {
    strcpy((char *)(& vi->name), "S-Video Input");
  }
  vi->std = 255ULL;
  goto ldv_33241;
  case 3:
  vi->type = 2U;
  strcpy((char *)(& vi->name), "Red Video Input");
  vi->std = 255ULL;
  goto ldv_33241;
  }
  ldv_33241: ;
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *input )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  *input = usbvision->ctl_input;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int input )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if ((unsigned int )usbvision->video_inputs <= input) {
    return (-22);
  } else {
  }
  usbvision_muxsel(usbvision, (int )input);
  usbvision_set_input(usbvision);
  usbvision_set_output(usbvision, usbvision->curwidth, usbvision->curheight);
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id id )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  usbvision->tvnorm_id = id;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33269;
  ldv_33268: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    (*(((__sd->ops)->core)->s_std))(__sd, usbvision->tvnorm_id);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33269: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33268;
  } else {
  }
  usbvision_muxsel(usbvision, (int )usbvision->ctl_input);
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *id )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  *id = usbvision->tvnorm_id;
  return (0);
}
}
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *vt )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (usbvision->have_tuner == 0 || vt->index != 0U) {
    return (-22);
  } else {
  }
  if (usbvision->radio != 0) {
    strcpy((char *)(& vt->name), "Radio");
    vt->type = 1U;
  } else {
    strcpy((char *)(& vt->name), "Television");
  }
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33289;
  ldv_33288: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33289: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33288;
  } else {
  }
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *vt )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (usbvision->have_tuner == 0 || (unsigned int )vt->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33303;
  ldv_33302: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33303: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33302;
  } else {
  }
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *freq )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  freq->tuner = 0U;
  if (usbvision->radio != 0) {
    freq->type = 1U;
  } else {
    freq->type = 2U;
  }
  freq->frequency = (__u32 )usbvision->freq;
  return (0);
}
}
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *freq )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (usbvision->have_tuner == 0 || (unsigned int )freq->tuner != 0U) {
    return (-22);
  } else {
  }
  usbvision->freq = (unsigned long )freq->frequency;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33323;
  ldv_33322: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, freq);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33323: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33322;
  } else {
  }
  return (0);
}
}
static int vidioc_g_audio(struct file *file , void *priv , struct v4l2_audio *a )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (usbvision->radio != 0) {
    strcpy((char *)(& a->name), "Radio");
  } else {
    strcpy((char *)(& a->name), "TV");
  }
  return (0);
}
}
static int vidioc_s_audio(struct file *file , void *fh , struct v4l2_audio const *a )
{
  {
  if ((unsigned int )a->index != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int vidioc_queryctrl(struct file *file , void *priv , struct v4l2_queryctrl *ctrl )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33348;
  ldv_33347: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->queryctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_queryctrl * ))0)) {
    (*(((__sd->ops)->core)->queryctrl))(__sd, ctrl);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33348: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33347;
  } else {
  }
  if (ctrl->type == 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int vidioc_g_ctrl(struct file *file , void *priv , struct v4l2_control *ctrl )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33362;
  ldv_33361: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                          struct v4l2_control * ))0)) {
    (*(((__sd->ops)->core)->g_ctrl))(__sd, ctrl);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33362: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33361;
  } else {
  }
  return (0);
}
}
static int vidioc_s_ctrl(struct file *file , void *priv , struct v4l2_control *ctrl )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33376;
  ldv_33375: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                          struct v4l2_control * ))0)) {
    (*(((__sd->ops)->core)->s_ctrl))(__sd, ctrl);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33376: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33375;
  } else {
  }
  return (0);
}
}
static int vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *vr )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if ((int )vr->count <= 0) {
    vr->count = 1U;
  } else
  if (vr->count > 3U) {
    vr->count = 3U;
  } else {
  }
  if (vr->memory != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )usbvision->streaming == 3U) {
    ret = usbvision_stream_interrupt(usbvision);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  usbvision_frames_free(usbvision);
  usbvision_empty_framequeues(usbvision);
  tmp___0 = usbvision_frames_alloc(usbvision, (int )vr->count);
  vr->count = (__u32 )tmp___0;
  usbvision->cur_frame = (struct usbvision_frame *)0;
  return (0);
}
}
static int vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *vb )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct usbvision_frame *frame ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (vb->index >= (__u32 )usbvision->num_frames) {
    return (-22);
  } else {
  }
  vb->flags = 8192U;
  frame = (struct usbvision_frame *)(& usbvision->frame) + (unsigned long )vb->index;
  if ((int )frame->grabstate > 0) {
    vb->flags = vb->flags | 2U;
  } else {
  }
  if ((int )frame->grabstate > 2) {
    vb->flags = vb->flags | 4U;
  } else {
  }
  if ((int )frame->grabstate == 0) {
    vb->flags = vb->flags | 1U;
  } else {
  }
  vb->memory = 1U;
  vb->m.offset = vb->index * ((__u32 )(usbvision->max_frame_size + 4095) & 4294963200U);
  vb->memory = 1U;
  vb->field = 1U;
  vb->length = (__u32 )((usbvision->curwidth * usbvision->curheight) * usbvision->palette.bytes_per_pixel);
  vb->timestamp = usbvision->frame[vb->index].timestamp;
  vb->sequence = (__u32 )usbvision->frame[vb->index].sequence;
  return (0);
}
}
static int vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *vb )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct usbvision_frame *frame ;
  unsigned long lock_flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if (vb->index >= (__u32 )usbvision->num_frames) {
    return (-22);
  } else {
  }
  frame = (struct usbvision_frame *)(& usbvision->frame) + (unsigned long )vb->index;
  if ((int )frame->grabstate != 0) {
    return (-11);
  } else {
  }
  frame->grabstate = 1;
  frame->scanstate = 0;
  frame->scanlength = 0L;
  vb->flags = vb->flags & 4294967291U;
  frame->v4l2_format = usbvision->palette;
  tmp___0 = spinlock_check(& usbvision->queue_lock);
  lock_flags = _raw_spin_lock_irqsave(tmp___0);
  list_add_tail(& usbvision->frame[vb->index].frame, & usbvision->inqueue);
  spin_unlock_irqrestore(& usbvision->queue_lock, lock_flags);
  return (0);
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *vb )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int ret ;
  struct usbvision_frame *f ;
  unsigned long lock_flags ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  struct list_head const *__mptr ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___5 = list_empty((struct list_head const *)(& usbvision->outqueue));
  if (tmp___5 != 0) {
    if ((unsigned int )usbvision->streaming == 1U) {
      return (-22);
    } else {
    }
    __ret = 0;
    tmp___4 = list_empty((struct list_head const *)(& usbvision->outqueue));
    if (tmp___4 != 0) {
      tmp___0 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___0;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_33416:
      prepare_to_wait(& usbvision->wait_frame, & __wait, 1);
      tmp___1 = list_empty((struct list_head const *)(& usbvision->outqueue));
      if (tmp___1 == 0) {
        goto ldv_33414;
      } else {
      }
      tmp___2 = get_current();
      tmp___3 = signal_pending(tmp___2);
      if (tmp___3 == 0) {
        schedule();
        goto ldv_33415;
      } else {
      }
      __ret = -512;
      goto ldv_33414;
      ldv_33415: ;
      goto ldv_33416;
      ldv_33414:
      finish_wait(& usbvision->wait_frame, & __wait);
    } else {
    }
    ret = __ret;
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  tmp___6 = spinlock_check(& usbvision->queue_lock);
  lock_flags = _raw_spin_lock_irqsave(tmp___6);
  __mptr = (struct list_head const *)usbvision->outqueue.next;
  f = (struct usbvision_frame *)__mptr + 0xffffffffffffffc8UL;
  list_del(usbvision->outqueue.next);
  spin_unlock_irqrestore(& usbvision->queue_lock, lock_flags);
  f->grabstate = 0;
  vb->memory = 1U;
  vb->flags = 8199U;
  vb->index = (__u32 )f->index;
  vb->sequence = (__u32 )f->sequence;
  vb->timestamp = f->timestamp;
  vb->field = 1U;
  vb->bytesused = (__u32 )f->scanlength;
  return (0);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  usbvision->streaming = 3;
  __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_33435;
  ldv_33434: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               int ))0)) {
    (*(((__sd->ops)->video)->s_stream))(__sd, 1);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_33435: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
    goto ldv_33434;
  } else {
  }
  return (0);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type type )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if ((unsigned int )type != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )usbvision->streaming == 3U) {
    usbvision_stream_interrupt(usbvision);
    __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_33449;
    ldv_33448: ;
    if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                 int ))0)) {
      (*(((__sd->ops)->video)->s_stream))(__sd, 0);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_33449: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33448;
    } else {
    }
  } else {
  }
  usbvision_empty_framequeues(usbvision);
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *vfd )
{
  {
  if (vfd->index > 6U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& vfd->description), (char const *)usbvision_v4l2_format[vfd->index].desc);
  vfd->pixelformat = (__u32 )usbvision_v4l2_format[vfd->index].format;
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *vf )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  vf->fmt.pix.width = (__u32 )usbvision->curwidth;
  vf->fmt.pix.height = (__u32 )usbvision->curheight;
  vf->fmt.pix.pixelformat = (__u32 )usbvision->palette.format;
  vf->fmt.pix.bytesperline = (__u32 )(usbvision->curwidth * usbvision->palette.bytes_per_pixel);
  vf->fmt.pix.sizeimage = vf->fmt.pix.bytesperline * (__u32 )usbvision->curheight;
  vf->fmt.pix.colorspace = 1U;
  vf->fmt.pix.field = 1U;
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *vf )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int format_idx ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  format_idx = 0;
  goto ldv_33475;
  ldv_33474: ;
  if (vf->fmt.pix.pixelformat == (__u32 )usbvision_v4l2_format[format_idx].format) {
    usbvision->palette = usbvision_v4l2_format[format_idx];
    goto ldv_33473;
  } else {
  }
  format_idx = format_idx + 1;
  ldv_33475: ;
  if ((unsigned int )format_idx <= 7U) {
    goto ldv_33474;
  } else {
  }
  ldv_33473: ;
  if (format_idx == 8) {
    return (-22);
  } else {
  }
  if ((int )vf->fmt.pix.width <= 63) {
    vf->fmt.pix.width = 64U;
  } else
  if (vf->fmt.pix.width > 320U) {
    vf->fmt.pix.width = 320U;
  } else {
  }
  if ((int )vf->fmt.pix.height <= 47) {
    vf->fmt.pix.height = 48U;
  } else
  if (vf->fmt.pix.height > 240U) {
    vf->fmt.pix.height = 240U;
  } else {
  }
  vf->fmt.pix.bytesperline = vf->fmt.pix.width * (__u32 )usbvision->palette.bytes_per_pixel;
  vf->fmt.pix.sizeimage = vf->fmt.pix.bytesperline * vf->fmt.pix.height;
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *vf )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int ret ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  ret = vidioc_try_fmt_vid_cap(file, priv, vf);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )usbvision->streaming == 3U) {
    ret = usbvision_stream_interrupt(usbvision);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  usbvision_frames_free(usbvision);
  usbvision_empty_framequeues(usbvision);
  usbvision->cur_frame = (struct usbvision_frame *)0;
  usbvision_set_output(usbvision, (int )vf->fmt.pix.width, (int )vf->fmt.pix.height);
  return (0);
}
}
static ssize_t usbvision_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int noblock ;
  unsigned long lock_flags ;
  int ret ;
  int i ;
  struct usbvision_frame *frame ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  raw_spinlock_t *tmp___0 ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  struct list_head const *__mptr___1 ;
  int tmp___8 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  noblock = (int )file->f_flags & 2048;
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] %s: %ld bytes, noblock=%d", "usbvision_read", 1055,
           "usbvision_read", count, noblock);
  } else {
  }
  if (((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) || (unsigned long )buf == (unsigned long )((char *)0)) {
    return (-14L);
  } else {
  }
  if (usbvision->num_frames == 0) {
    usbvision_frames_free(usbvision);
    usbvision_empty_framequeues(usbvision);
    usbvision_frames_alloc(usbvision, 3);
  } else {
  }
  if ((unsigned int )usbvision->streaming != 3U) {
    usbvision->streaming = 3;
    __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_33504;
    ldv_33503: ;
    if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                 int ))0)) {
      (*(((__sd->ops)->video)->s_stream))(__sd, 1);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_33504: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33503;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_33510;
  ldv_33509:
  frame = (struct usbvision_frame *)(& usbvision->frame) + (unsigned long )i;
  if ((int )frame->grabstate == 0) {
    frame->grabstate = 1;
    frame->scanstate = 0;
    frame->scanlength = 0L;
    frame->v4l2_format = usbvision->palette;
    tmp___0 = spinlock_check(& usbvision->queue_lock);
    lock_flags = _raw_spin_lock_irqsave(tmp___0);
    list_add_tail(& frame->frame, & usbvision->inqueue);
    spin_unlock_irqrestore(& usbvision->queue_lock, lock_flags);
  } else {
  }
  i = i + 1;
  ldv_33510: ;
  if (usbvision->num_frames > i) {
    goto ldv_33509;
  } else {
  }
  tmp___6 = list_empty((struct list_head const *)(& usbvision->outqueue));
  if (tmp___6 != 0) {
    if (noblock != 0) {
      return (-11L);
    } else {
    }
    __ret = 0;
    tmp___5 = list_empty((struct list_head const *)(& usbvision->outqueue));
    if (tmp___5 != 0) {
      tmp___1 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___1;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_33516:
      prepare_to_wait(& usbvision->wait_frame, & __wait, 1);
      tmp___2 = list_empty((struct list_head const *)(& usbvision->outqueue));
      if (tmp___2 == 0) {
        goto ldv_33514;
      } else {
      }
      tmp___3 = get_current();
      tmp___4 = signal_pending(tmp___3);
      if (tmp___4 == 0) {
        schedule();
        goto ldv_33515;
      } else {
      }
      __ret = -512;
      goto ldv_33514;
      ldv_33515: ;
      goto ldv_33516;
      ldv_33514:
      finish_wait(& usbvision->wait_frame, & __wait);
    } else {
    }
    ret = __ret;
    if (ret != 0) {
      return ((ssize_t )ret);
    } else {
    }
  } else {
  }
  tmp___7 = spinlock_check(& usbvision->queue_lock);
  lock_flags = _raw_spin_lock_irqsave(tmp___7);
  __mptr___1 = (struct list_head const *)usbvision->outqueue.next;
  frame = (struct usbvision_frame *)__mptr___1 + 0xffffffffffffffc8UL;
  list_del(usbvision->outqueue.next);
  spin_unlock_irqrestore(& usbvision->queue_lock, lock_flags);
  if ((int )frame->grabstate == 5) {
    frame->bytes_read = 0L;
    return (0L);
  } else {
  }
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] %s: frmx=%d, bytes_read=%ld, scanlength=%ld", "usbvision_read",
           1124, "usbvision_read", frame->index, frame->bytes_read, frame->scanlength);
  } else {
  }
  if ((unsigned long )frame->bytes_read + count > (unsigned long )frame->scanlength) {
    count = (size_t )(frame->scanlength - frame->bytes_read);
  } else {
  }
  tmp___8 = copy_to_user((void *)buf, (void const *)frame->data + (unsigned long )frame->bytes_read,
                         (unsigned int )count);
  if (tmp___8 != 0) {
    return (-14L);
  } else {
  }
  frame->bytes_read = (long )((unsigned long )frame->bytes_read + count);
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] %s: {copy} count used=%ld, new bytes_read=%ld",
           "usbvision_read", 1136, "usbvision_read", count, frame->bytes_read);
  } else {
  }
  frame->bytes_read = 0L;
  frame->grabstate = 0;
  return ((ssize_t )count);
}
}
static ssize_t usbvision_v4l2_read(struct file *file , char *buf , size_t count ,
                                   loff_t *ppos )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int res ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = mutex_lock_interruptible_nested(& usbvision->v4l2_lock, 0U);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  tmp___1 = usbvision_read(file, buf, count, ppos);
  res = (int )tmp___1;
  mutex_unlock(& usbvision->v4l2_lock);
  return ((ssize_t )res);
}
}
static int usbvision_mmap(struct file *file , struct vm_area_struct *vma )
{
  unsigned long size ;
  unsigned long start ;
  void *pos ;
  u32 i ;
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct page *tmp___0 ;
  int tmp___1 ;
  {
  size = vma->vm_end - vma->vm_start;
  start = vma->vm_start;
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  if ((video_debug & 8) != 0) {
    printk("\016usbvision:[%s:%d] mmap", "usbvision_mmap", 1170);
  } else {
  }
  if ((((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0) || (unsigned long )usbvision->dev == (unsigned long )((struct usb_device *)0)) || usbvision->last_error != 0) || (int )usbvision->remove_pending != 0) {
    return (-14);
  } else {
  }
  if ((vma->vm_flags & 2UL) == 0UL || (unsigned long )((usbvision->max_frame_size + 4095) & -4096) != size) {
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_33543;
  ldv_33542: ;
  if ((unsigned long )(((u32 )(usbvision->max_frame_size + 4095) & 4294963200U) * i >> 12) == vma->vm_pgoff) {
    goto ldv_33541;
  } else {
  }
  i = i + 1U;
  ldv_33543: ;
  if ((u32 )usbvision->num_frames > i) {
    goto ldv_33542;
  } else {
  }
  ldv_33541: ;
  if ((u32 )usbvision->num_frames == i) {
    if ((video_debug & 8) != 0) {
      printk("\016usbvision:[%s:%d] mmap: user supplied mapping address is out of range",
             "usbvision_mmap", 1187);
    } else {
    }
    return (-22);
  } else {
  }
  vma->vm_flags = vma->vm_flags | 67387392UL;
  pos = (void *)usbvision->frame[i].data;
  goto ldv_33545;
  ldv_33544:
  tmp___0 = vmalloc_to_page((void const *)pos);
  tmp___1 = vm_insert_page(vma, start, tmp___0);
  if (tmp___1 != 0) {
    if ((video_debug & 8) != 0) {
      printk("\016usbvision:[%s:%d] mmap: vm_insert_page failed", "usbvision_mmap",
             1197);
    } else {
    }
    return (-11);
  } else {
  }
  start = start + 4096UL;
  pos = pos + 4096UL;
  size = size - 4096UL;
  ldv_33545: ;
  if (size != 0UL) {
    goto ldv_33544;
  } else {
  }
  return (0);
}
}
static int usbvision_v4l2_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int res ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  tmp___0 = mutex_lock_interruptible_nested(& usbvision->v4l2_lock, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  res = usbvision_mmap(file, vma);
  mutex_unlock(& usbvision->v4l2_lock);
  return (res);
}
}
static int usbvision_radio_open(struct file *file )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int err_code ;
  int tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  err_code = 0;
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] %s:", "usbvision_radio_open", 1229, "usbvision_radio_open");
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& usbvision->v4l2_lock, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (usbvision->user != 0) {
    dev_err((struct device const *)(& (usbvision->rdev)->dev), "%s: Someone tried to open an already opened USBVision Radio!\n",
            "usbvision_radio_open");
    err_code = -16;
  } else {
    if (power_on_at_open != 0) {
      usbvision_reset_power_off_timer(usbvision);
      if (usbvision->power == 0) {
        usbvision_power_on(usbvision);
        usbvision_i2c_register(usbvision);
      } else {
      }
    } else {
    }
    err_code = usbvision_set_alternate(usbvision);
    if (err_code < 0) {
      usbvision->last_error = err_code;
      err_code = -16;
      goto out;
    } else {
    }
    usbvision->radio = 1;
    __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_33566;
    ldv_33565: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      (*(((__sd->ops)->tuner)->s_radio))(__sd);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_33566: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
      goto ldv_33565;
    } else {
    }
    usbvision_set_audio(usbvision, 2);
    usbvision->user = usbvision->user + 1;
  }
  if (err_code != 0) {
    if (power_on_at_open != 0) {
      usbvision_i2c_unregister(usbvision);
      usbvision_power_off(usbvision);
      usbvision->initialized = 0;
    } else {
    }
  } else {
  }
  out:
  mutex_unlock(& usbvision->v4l2_lock);
  return (err_code);
}
}
static int usbvision_radio_close(struct file *file )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int err_code ;
  {
  tmp = video_drvdata(file);
  usbvision = (struct usb_usbvision *)tmp;
  err_code = 0;
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] ", "usbvision_radio_close", 1280);
  } else {
  }
  mutex_lock_nested(& usbvision->v4l2_lock, 0U);
  usbvision->iface_alt = 0U;
  err_code = usb_set_interface(usbvision->dev, (int )usbvision->iface, (int )usbvision->iface_alt);
  usbvision_audio_off(usbvision);
  usbvision->radio = 0;
  usbvision->user = usbvision->user - 1;
  if (power_on_at_open != 0) {
    usbvision_set_power_off_timer(usbvision);
    usbvision->initialized = 0;
  } else {
  }
  if ((int )usbvision->remove_pending != 0) {
    printk("\016%s: Final disconnect\n", "usbvision_radio_close");
    usbvision_release(usbvision);
  } else {
  }
  mutex_unlock(& usbvision->v4l2_lock);
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_radio_close", 1303);
  } else {
  }
  return (err_code);
}
}
static struct v4l2_file_operations const usbvision_fops =
     {& __this_module, & usbvision_v4l2_read, 0, 0, 0, & video_ioctl2, 0, 0, & usbvision_v4l2_mmap,
    & usbvision_v4l2_open, & usbvision_v4l2_close};
static struct v4l2_ioctl_ops const usbvision_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf,
    & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff,
    & vidioc_g_std, & vidioc_s_std, 0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input,
    0, 0, 0, & vidioc_queryctrl, & vidioc_g_ctrl, & vidioc_s_ctrl, 0, 0, 0, 0, 0,
    & vidioc_g_audio, & vidioc_s_audio, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & vidioc_g_tuner, & vidioc_s_tuner, & vidioc_g_frequency, & vidioc_s_frequency,
    0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct video_device usbvision_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & usbvision_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0,
                                               (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
                                               {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0,
                                                                      0, 0UL}}}},
                                               {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0}}},
                                               0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                       0, 0, 0UL,
                                                                       0, 0, 0, {(char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0},
                                                                       {0, {0, 0},
                                                                        0, 0, 0UL}},
                                               0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                       0, 0, 0UL}},
                                               {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                {0, 0}}, {0}, {0}, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0,
                                               0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                 0},
     0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
     0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0, {'u', 's', 'b', 'v', 'i',
                                                         's', 'i', 'o', 'n', '-',
                                                         'v', 'i', 'd', 'e', 'o',
                                                         '\000'}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16757247ULL,
    & video_device_release, & usbvision_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct v4l2_file_operations const usbvision_radio_fops =
     {& __this_module, 0, 0, 0, 0, & video_ioctl2, 0, 0, 0, & usbvision_radio_open,
    & usbvision_radio_close};
static struct v4l2_ioctl_ops const usbvision_radio_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input, 0,
    0, 0, & vidioc_queryctrl, & vidioc_g_ctrl, & vidioc_s_ctrl, 0, 0, 0, 0, 0, & vidioc_g_audio,
    & vidioc_s_audio, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_tuner,
    & vidioc_s_tuner, & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct video_device usbvision_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & usbvision_radio_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0,
                                               (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
                                               {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0,
                                                                      0, 0UL}}}},
                                               {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0}}},
                                               0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                       0, 0, 0UL,
                                                                       0, 0, 0, {(char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0},
                                                                       {0, {0, 0},
                                                                        0, 0, 0UL}},
                                               0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                       0, 0, 0UL}},
                                               {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                {0, 0}}, {0}, {0}, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               (unsigned char)0, (unsigned char)0,
                                               0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0,
                                               0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                 0},
     0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
     0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0, {'u', 's', 'b', 'v', 'i',
                                                         's', 'i', 'o', 'n', '-',
                                                         'r', 'a', 'd', 'i', 'o',
                                                         '\000'}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0ULL, & video_device_release,
    & usbvision_radio_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct video_device *usbvision_vdev_init(struct usb_usbvision *usbvision ,
                                                struct video_device *vdev_template ,
                                                char *name )
{
  struct usb_device *usb_dev___0 ;
  struct video_device *vdev ;
  {
  usb_dev___0 = usbvision->dev;
  if ((unsigned long )usb_dev___0 == (unsigned long )((struct usb_device *)0)) {
    dev_err((struct device const *)(& (usbvision->dev)->dev), "%s: usbvision->dev is not set\n",
            "usbvision_vdev_init");
    return ((struct video_device *)0);
  } else {
  }
  vdev = video_device_alloc();
  if ((unsigned long )vdev == (unsigned long )((struct video_device *)0)) {
    return ((struct video_device *)0);
  } else {
  }
  *vdev = *vdev_template;
  vdev->lock = & usbvision->v4l2_lock;
  vdev->v4l2_dev = & usbvision->v4l2_dev;
  snprintf((char *)(& vdev->name), 32UL, "%s", name);
  video_set_drvdata(vdev, (void *)usbvision);
  return (vdev);
}
}
static void usbvision_unregister_video(struct usb_usbvision *usbvision )
{
  char const *tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )usbvision->rdev != (unsigned long )((struct video_device *)0)) {
    if ((video_debug & 4) != 0) {
      tmp = video_device_node_name(usbvision->rdev);
      printk("\016usbvision:[%s:%d] unregister %s [v4l2]", "usbvision_unregister_video",
             1423, tmp);
    } else {
    }
    tmp___0 = video_is_registered(usbvision->rdev);
    if (tmp___0 != 0) {
      video_unregister_device(usbvision->rdev);
    } else {
      video_device_release(usbvision->rdev);
    }
    usbvision->rdev = (struct video_device *)0;
  } else {
  }
  if ((unsigned long )usbvision->vdev != (unsigned long )((struct video_device *)0)) {
    if ((video_debug & 4) != 0) {
      tmp___1 = video_device_node_name(usbvision->vdev);
      printk("\016usbvision:[%s:%d] unregister %s [v4l2]", "usbvision_unregister_video",
             1434, tmp___1);
    } else {
    }
    tmp___2 = video_is_registered(usbvision->vdev);
    if (tmp___2 != 0) {
      video_unregister_device(usbvision->vdev);
    } else {
      video_device_release(usbvision->vdev);
    }
    usbvision->vdev = (struct video_device *)0;
  } else {
  }
  return;
}
}
static int usbvision_register_video(struct usb_usbvision *usbvision )
{
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  {
  usbvision->vdev = usbvision_vdev_init(usbvision, & usbvision_video_template, (char *)"USBVision Video");
  if ((unsigned long )usbvision->vdev == (unsigned long )((struct video_device *)0)) {
    goto err_exit;
  } else {
  }
  tmp = video_register_device(usbvision->vdev, 0, video_nr);
  if (tmp < 0) {
    goto err_exit;
  } else {
  }
  tmp___0 = video_device_node_name(usbvision->vdev);
  printk("\016USBVision[%d]: registered USBVision Video device %s [v4l2]\n", usbvision->nr,
         tmp___0);
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].radio != 0U) {
    usbvision->rdev = usbvision_vdev_init(usbvision, & usbvision_radio_template, (char *)"USBVision Radio");
    if ((unsigned long )usbvision->rdev == (unsigned long )((struct video_device *)0)) {
      goto err_exit;
    } else {
    }
    tmp___1 = video_register_device(usbvision->rdev, 2, radio_nr);
    if (tmp___1 < 0) {
      goto err_exit;
    } else {
    }
    tmp___2 = video_device_node_name(usbvision->rdev);
    printk("\016USBVision[%d]: registered USBVision Radio device %s [v4l2]\n", usbvision->nr,
           tmp___2);
  } else {
  }
  return (0);
  err_exit:
  dev_err((struct device const *)(& (usbvision->dev)->dev), "USBVision[%d]: video_register_device() failed\n",
          usbvision->nr);
  usbvision_unregister_video(usbvision);
  return (-1);
}
}
static struct usb_usbvision *usbvision_alloc(struct usb_device *dev , struct usb_interface *intf )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  tmp = kzalloc(4128UL, 208U);
  usbvision = (struct usb_usbvision *)tmp;
  if ((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0)) {
    return ((struct usb_usbvision *)0);
  } else {
  }
  usbvision->dev = dev;
  tmp___0 = v4l2_device_register(& intf->dev, & usbvision->v4l2_dev);
  if (tmp___0 != 0) {
    goto err_free;
  } else {
  }
  __mutex_init(& usbvision->v4l2_lock, "&usbvision->v4l2_lock", & __key);
  usbvision->ctrl_urb = ldv_usb_alloc_urb_17(32, 208U);
  if ((unsigned long )usbvision->ctrl_urb == (unsigned long )((struct urb *)0)) {
    goto err_unreg;
  } else {
  }
  __init_waitqueue_head(& usbvision->ctrl_urb_wq, "&usbvision->ctrl_urb_wq", & __key___0);
  usbvision_init_power_off_timer(usbvision);
  return (usbvision);
  err_unreg:
  v4l2_device_unregister(& usbvision->v4l2_dev);
  err_free:
  kfree((void const *)usbvision);
  return ((struct usb_usbvision *)0);
}
}
static void usbvision_release(struct usb_usbvision *usbvision )
{
  {
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] ", "usbvision_release", 1531);
  } else {
  }
  usbvision_reset_power_off_timer(usbvision);
  usbvision->initialized = 0;
  usbvision_remove_sysfs(usbvision->vdev);
  usbvision_unregister_video(usbvision);
  kfree((void const *)usbvision->alt_max_pkt_size);
  ldv_usb_free_urb_18(usbvision->ctrl_urb);
  v4l2_device_unregister(& usbvision->v4l2_dev);
  kfree((void const *)usbvision);
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_release", 1546);
  } else {
  }
  return;
}
}
static void usbvision_configure_video(struct usb_usbvision *usbvision )
{
  int model ;
  {
  if ((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0)) {
    return;
  } else {
  }
  model = usbvision->dev_model;
  usbvision->palette = usbvision_v4l2_format[2];
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].vin_reg2_override != 0U) {
    usbvision->vin_reg2_preset = usbvision_device_data[usbvision->dev_model].vin_reg2;
  } else {
    usbvision->vin_reg2_preset = 0U;
  }
  usbvision->tvnorm_id = usbvision_device_data[model].video_norm;
  usbvision->video_inputs = (int )usbvision_device_data[model].video_channels;
  usbvision->ctl_input = 0U;
  if ((int )usbvision_device_data[model].audio_channels > 0) {
    usbvision_audio_off(usbvision);
  } else {
  }
  if (power_on_at_open == 0) {
    usbvision_power_on(usbvision);
    usbvision_i2c_register(usbvision);
  } else {
  }
  return;
}
}
static int usbvision_probe(struct usb_interface *intf , struct usb_device_id const *devid )
{
  struct usb_device *dev ;
  struct usb_device *tmp ;
  struct usb_device *tmp___0 ;
  struct usb_interface *uif ;
  __u8 ifnum ;
  struct usb_host_interface const *interface ;
  struct usb_usbvision *usbvision ;
  struct usb_endpoint_descriptor const *endpoint ;
  int model ;
  int i ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  u16 tmp___4 ;
  int tmp___5 ;
  {
  tmp = interface_to_usbdev(intf);
  tmp___0 = ldv_usb_get_dev_19(tmp);
  dev = tmp___0;
  ifnum = (intf->altsetting)->desc.bInterfaceNumber;
  usbvision = (struct usb_usbvision *)0;
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] VID=%#04x, PID=%#04x, ifnum=%u", "usbvision_probe",
           1605, (int )dev->descriptor.idVendor, (int )dev->descriptor.idProduct,
           (int )ifnum);
  } else {
  }
  model = (int )devid->driver_info;
  if (model < 0 || model >= (int )usbvision_device_data_size) {
    if ((video_debug & 4) != 0) {
      printk("\016usbvision:[%s:%d] model out of bounds %d", "usbvision_probe", 1609,
             model);
    } else {
    }
    return (-19);
  } else {
  }
  printk("\016%s: %s found\n", "usbvision_probe", usbvision_device_data[model].model_string);
  if (usbvision_device_data[model].interface >= 0) {
    interface = (struct usb_host_interface const *)((dev->actconfig)->interface[usbvision_device_data[model].interface])->altsetting;
  } else {
    interface = (struct usb_host_interface const *)((dev->actconfig)->interface[(int )ifnum])->altsetting;
  }
  endpoint = (struct usb_endpoint_descriptor const *)(& (interface->endpoint + 1UL)->desc);
  tmp___1 = usb_endpoint_xfer_isoc(endpoint);
  if (tmp___1 == 0) {
    dev_err((struct device const *)(& intf->dev), "%s: interface %d. has non-ISO endpoint!\n",
            "usbvision_probe", (int )ifnum);
    dev_err((struct device const *)(& intf->dev), "%s: Endpoint attributes %d",
            "usbvision_probe", (int )endpoint->bmAttributes);
    return (-19);
  } else {
  }
  tmp___2 = usb_endpoint_dir_out(endpoint);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& intf->dev), "%s: interface %d. has ISO OUT endpoint!\n",
            "usbvision_probe", (int )ifnum);
    return (-19);
  } else {
  }
  usbvision = usbvision_alloc(dev, intf);
  if ((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0)) {
    dev_err((struct device const *)(& intf->dev), "%s: couldn\'t allocate USBVision struct\n",
            "usbvision_probe");
    return (-12);
  } else {
  }
  if ((unsigned int )dev->descriptor.bNumConfigurations > 1U) {
    usbvision->bridge_type = 1004;
  } else
  if (model == 50) {
    usbvision->bridge_type = 1005;
  } else {
    usbvision->bridge_type = 1003;
  }
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] bridge_type %d", "usbvision_probe", 1645, usbvision->bridge_type);
  } else {
  }
  uif = (dev->actconfig)->interface[0];
  usbvision->num_alt = (int )uif->num_altsetting;
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] Alternate settings: %i", "usbvision_probe", 1651,
           usbvision->num_alt);
  } else {
  }
  tmp___3 = kmalloc((size_t )(usbvision->num_alt * 32), 208U);
  usbvision->alt_max_pkt_size = (unsigned int *)tmp___3;
  if ((unsigned long )usbvision->alt_max_pkt_size == (unsigned long )((unsigned int *)0U)) {
    dev_err((struct device const *)(& intf->dev), "usbvision: out of memory!\n");
    usbvision_release(usbvision);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_33628;
  ldv_33627:
  tmp___4 = ((uif->altsetting + (unsigned long )i)->endpoint + 1UL)->desc.wMaxPacketSize;
  *(usbvision->alt_max_pkt_size + (unsigned long )i) = (unsigned int )(((int )tmp___4 & 2047) * ((((int )tmp___4 & 6144) >> 11) + 1));
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] Alternate setting %i, max size= %i", "usbvision_probe",
           1665, i, *(usbvision->alt_max_pkt_size + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_33628: ;
  if (usbvision->num_alt > i) {
    goto ldv_33627;
  } else {
  }
  tmp___5 = usbvision_nr;
  usbvision_nr = usbvision_nr + 1;
  usbvision->nr = (unsigned int )tmp___5;
  usbvision->have_tuner = (int )usbvision_device_data[model].tuner;
  if (usbvision->have_tuner != 0) {
    usbvision->tuner_type = (int )usbvision_device_data[model].tuner_type;
  } else {
  }
  usbvision->dev_model = model;
  usbvision->remove_pending = 0;
  usbvision->iface = ifnum;
  usbvision->iface_alt = 0U;
  usbvision->video_endp = endpoint->bEndpointAddress;
  usbvision->isoc_packet_size = 0;
  usbvision->usb_bandwidth = 0;
  usbvision->user = 0;
  usbvision->streaming = 0;
  usbvision_configure_video(usbvision);
  usbvision_register_video(usbvision);
  usbvision_create_sysfs(usbvision->vdev);
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_probe", 1689);
  } else {
  }
  return (0);
}
}
static void usbvision_disconnect(struct usb_interface *intf )
{
  struct usb_usbvision *usbvision ;
  void *tmp ;
  struct usb_usbvision *tmp___0 ;
  {
  tmp = usb_get_intfdata(intf);
  tmp___0 = to_usbvision((struct v4l2_device *)tmp);
  usbvision = tmp___0;
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] ", "usbvision_disconnect", 1706);
  } else {
  }
  if ((unsigned long )usbvision == (unsigned long )((struct usb_usbvision *)0)) {
    printk("\v%s: usb_get_intfdata() failed\n", "usbvision_disconnect");
    return;
  } else {
  }
  mutex_lock_nested(& usbvision->v4l2_lock, 0U);
  usbvision_stop_isoc(usbvision);
  v4l2_device_disconnect(& usbvision->v4l2_dev);
  if (usbvision->power != 0) {
    usbvision_i2c_unregister(usbvision);
    usbvision_power_off(usbvision);
  } else {
  }
  usbvision->remove_pending = 1;
  ldv_usb_put_dev_20(usbvision->dev);
  usbvision->dev = (struct usb_device *)0;
  mutex_unlock(& usbvision->v4l2_lock);
  if (usbvision->user != 0) {
    printk("\016%s: In use, disconnect pending\n", "usbvision_disconnect");
    __wake_up(& usbvision->wait_frame, 1U, 1, (void *)0);
    __wake_up(& usbvision->wait_stream, 1U, 1, (void *)0);
  } else {
    usbvision_release(usbvision);
  }
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_disconnect", 1740);
  } else {
  }
  return;
}
}
static struct usb_driver usbvision_driver =
     {"usbvision", & usbvision_probe, & usbvision_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& usbvision_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int usbvision_init(void)
{
  int err_code ;
  {
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] ", "usbvision_init", 1760);
  } else {
  }
  if ((video_debug & 2) != 0) {
    printk("\016usbvision:[%s:%d] IO      debugging is enabled [video]", "usbvision_init",
           1762);
  } else {
  }
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] PROBE   debugging is enabled [video]", "usbvision_init",
           1763);
  } else {
  }
  if ((video_debug & 8) != 0) {
    printk("\016usbvision:[%s:%d] MMAP    debugging is enabled [video]", "usbvision_init",
           1764);
  } else {
  }
  if (isoc_mode != 96) {
    usbvision_v4l2_format[6].supported = 0;
    usbvision_v4l2_format[7].supported = 0;
  } else {
  }
  err_code = ldv_usb_register_driver_21(& usbvision_driver, & __this_module, "usbvision");
  if (err_code == 0) {
    printk("\016USBVision USB Video Device Driver for Linux : 0.9.11\n");
    if ((video_debug & 4) != 0) {
      printk("\016usbvision:[%s:%d] success", "usbvision_init", 1777);
    } else {
    }
  } else {
  }
  return (err_code);
}
}
static void usbvision_exit(void)
{
  {
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] ", "usbvision_exit", 1784);
  } else {
  }
  ldv_usb_deregister_22(& usbvision_driver);
  if ((video_debug & 4) != 0) {
    printk("\016usbvision:[%s:%d] success", "usbvision_exit", 1787);
  } else {
  }
  return;
}
}
extern int ldv_probe_4(void) ;
int ldv_retval_2 ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern int ldv_probe_7(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void ldv_usb_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1520UL);
  usbvision_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_initialize_v4l2_file_operations_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(360UL);
  usbvision_radio_fops_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_v4l2_file_operations_9(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(360UL);
  usbvision_fops_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_zalloc(360UL);
  usbvision_ioctl_ops_group1 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(208UL);
  usbvision_ioctl_ops_group0 = (struct v4l2_format *)tmp___0;
  tmp___1 = ldv_zalloc(88UL);
  usbvision_ioctl_ops_group2 = (struct v4l2_buffer *)tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  usbvision_ioctl_ops_group3 = (struct v4l2_control *)tmp___2;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(360UL);
  usbvision_radio_ioctl_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(8UL);
  usbvision_radio_ioctl_ops_group1 = (struct v4l2_control *)tmp___0;
  return;
}
}
void ldv_main_exported_2(void) ;
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  struct video_device *ldvarg3 ;
  void *tmp___2 ;
  struct device *ldvarg4 ;
  void *tmp___3 ;
  char *ldvarg5 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg6 ;
  void *tmp___5 ;
  struct device_attribute *ldvarg11 ;
  void *tmp___6 ;
  char *ldvarg10 ;
  void *tmp___7 ;
  struct device *ldvarg9 ;
  void *tmp___8 ;
  struct device_attribute *ldvarg14 ;
  void *tmp___9 ;
  char *ldvarg13 ;
  void *tmp___10 ;
  struct device *ldvarg12 ;
  void *tmp___11 ;
  struct device_attribute *ldvarg17 ;
  void *tmp___12 ;
  char *ldvarg16 ;
  void *tmp___13 ;
  struct device *ldvarg15 ;
  void *tmp___14 ;
  unsigned long ldvarg18 ;
  unsigned long tmp___15 ;
  unsigned int ldvarg19 ;
  unsigned int tmp___16 ;
  struct usb_device_id *ldvarg20 ;
  void *tmp___17 ;
  size_t ldvarg24 ;
  size_t tmp___18 ;
  unsigned long ldvarg21 ;
  unsigned long tmp___19 ;
  struct vm_area_struct *ldvarg26 ;
  void *tmp___20 ;
  char *ldvarg25 ;
  void *tmp___21 ;
  loff_t *ldvarg23 ;
  void *tmp___22 ;
  unsigned int ldvarg22 ;
  unsigned int tmp___23 ;
  struct device *ldvarg27 ;
  void *tmp___24 ;
  struct device_attribute *ldvarg29 ;
  void *tmp___25 ;
  char *ldvarg28 ;
  void *tmp___26 ;
  struct device_attribute *ldvarg32 ;
  void *tmp___27 ;
  char *ldvarg31 ;
  void *tmp___28 ;
  struct device *ldvarg30 ;
  void *tmp___29 ;
  struct device_attribute *ldvarg35 ;
  void *tmp___30 ;
  char *ldvarg34 ;
  void *tmp___31 ;
  struct device *ldvarg33 ;
  void *tmp___32 ;
  struct v4l2_tuner *ldvarg77 ;
  void *tmp___33 ;
  void *ldvarg51 ;
  void *tmp___34 ;
  enum v4l2_buf_type ldvarg67 ;
  void *ldvarg43 ;
  void *tmp___35 ;
  unsigned int ldvarg42 ;
  unsigned int tmp___36 ;
  struct v4l2_tuner *ldvarg71 ;
  void *tmp___37 ;
  void *ldvarg72 ;
  void *tmp___38 ;
  void *ldvarg56 ;
  void *tmp___39 ;
  struct v4l2_frequency *ldvarg50 ;
  void *tmp___40 ;
  struct v4l2_dbg_register *ldvarg46 ;
  void *tmp___41 ;
  void *ldvarg58 ;
  void *tmp___42 ;
  void *ldvarg37 ;
  void *tmp___43 ;
  void *ldvarg53 ;
  void *tmp___44 ;
  void *ldvarg64 ;
  void *tmp___45 ;
  struct v4l2_input *ldvarg44 ;
  void *tmp___46 ;
  struct v4l2_audio *ldvarg38 ;
  void *tmp___47 ;
  void *ldvarg69 ;
  void *tmp___48 ;
  v4l2_std_id *ldvarg48 ;
  void *tmp___49 ;
  void *ldvarg47 ;
  void *tmp___50 ;
  void *ldvarg39 ;
  void *tmp___51 ;
  void *ldvarg41 ;
  void *tmp___52 ;
  void *ldvarg60 ;
  void *tmp___53 ;
  struct v4l2_requestbuffers *ldvarg80 ;
  void *tmp___54 ;
  struct v4l2_frequency *ldvarg59 ;
  void *tmp___55 ;
  void *ldvarg49 ;
  void *tmp___56 ;
  void *ldvarg62 ;
  void *tmp___57 ;
  unsigned int *ldvarg57 ;
  void *tmp___58 ;
  struct v4l2_queryctrl *ldvarg65 ;
  void *tmp___59 ;
  void *ldvarg79 ;
  void *tmp___60 ;
  enum v4l2_buf_type ldvarg36 ;
  struct v4l2_audio *ldvarg55 ;
  void *tmp___61 ;
  void *ldvarg66 ;
  void *tmp___62 ;
  struct v4l2_dbg_register *ldvarg40 ;
  void *tmp___63 ;
  void *ldvarg81 ;
  void *tmp___64 ;
  void *ldvarg45 ;
  void *tmp___65 ;
  struct v4l2_fmtdesc *ldvarg63 ;
  void *tmp___66 ;
  v4l2_std_id ldvarg73 ;
  void *ldvarg70 ;
  void *tmp___67 ;
  void *ldvarg78 ;
  void *tmp___68 ;
  void *ldvarg68 ;
  void *tmp___69 ;
  void *ldvarg54 ;
  void *tmp___70 ;
  void *ldvarg61 ;
  void *tmp___71 ;
  void *ldvarg76 ;
  void *tmp___72 ;
  void *ldvarg74 ;
  void *tmp___73 ;
  struct v4l2_capability *ldvarg52 ;
  void *tmp___74 ;
  void *ldvarg75 ;
  void *tmp___75 ;
  struct video_device *ldvarg82 ;
  void *tmp___76 ;
  struct device_attribute *ldvarg85 ;
  void *tmp___77 ;
  char *ldvarg84 ;
  void *tmp___78 ;
  struct device *ldvarg83 ;
  void *tmp___79 ;
  struct v4l2_tuner *ldvarg104 ;
  void *tmp___80 ;
  void *ldvarg106 ;
  void *tmp___81 ;
  void *ldvarg101 ;
  void *tmp___82 ;
  struct v4l2_capability *ldvarg94 ;
  void *tmp___83 ;
  void *ldvarg91 ;
  void *tmp___84 ;
  void *ldvarg87 ;
  void *tmp___85 ;
  struct v4l2_frequency *ldvarg100 ;
  void *tmp___86 ;
  struct v4l2_audio *ldvarg86 ;
  void *tmp___87 ;
  void *ldvarg109 ;
  void *tmp___88 ;
  unsigned int *ldvarg98 ;
  void *tmp___89 ;
  struct v4l2_queryctrl *ldvarg102 ;
  void *tmp___90 ;
  void *ldvarg97 ;
  void *tmp___91 ;
  struct v4l2_audio *ldvarg96 ;
  void *tmp___92 ;
  void *ldvarg103 ;
  void *tmp___93 ;
  void *ldvarg99 ;
  void *tmp___94 ;
  void *ldvarg95 ;
  void *tmp___95 ;
  unsigned int ldvarg88 ;
  unsigned int tmp___96 ;
  void *ldvarg105 ;
  void *tmp___97 ;
  struct v4l2_input *ldvarg90 ;
  void *tmp___98 ;
  void *ldvarg93 ;
  void *tmp___99 ;
  void *ldvarg108 ;
  void *tmp___100 ;
  struct v4l2_frequency *ldvarg92 ;
  void *tmp___101 ;
  void *ldvarg89 ;
  void *tmp___102 ;
  struct v4l2_tuner *ldvarg107 ;
  void *tmp___103 ;
  int tmp___104 ;
  int tmp___105 ;
  int tmp___106 ;
  int tmp___107 ;
  int tmp___108 ;
  int tmp___109 ;
  int tmp___110 ;
  int tmp___111 ;
  int tmp___112 ;
  int tmp___113 ;
  int tmp___114 ;
  int tmp___115 ;
  int tmp___116 ;
  int tmp___117 ;
  int tmp___118 ;
  int tmp___119 ;
  int tmp___120 ;
  int tmp___121 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_zalloc(1376UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_zalloc(1800UL);
  ldvarg3 = (struct video_device *)tmp___2;
  tmp___3 = ldv_zalloc(1376UL);
  ldvarg4 = (struct device *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg5 = (char *)tmp___4;
  tmp___5 = ldv_zalloc(48UL);
  ldvarg6 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_zalloc(48UL);
  ldvarg11 = (struct device_attribute *)tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg10 = (char *)tmp___7;
  tmp___8 = ldv_zalloc(1376UL);
  ldvarg9 = (struct device *)tmp___8;
  tmp___9 = ldv_zalloc(48UL);
  ldvarg14 = (struct device_attribute *)tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg13 = (char *)tmp___10;
  tmp___11 = ldv_zalloc(1376UL);
  ldvarg12 = (struct device *)tmp___11;
  tmp___12 = ldv_zalloc(48UL);
  ldvarg17 = (struct device_attribute *)tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg16 = (char *)tmp___13;
  tmp___14 = ldv_zalloc(1376UL);
  ldvarg15 = (struct device *)tmp___14;
  tmp___15 = __VERIFIER_nondet_ulong();
  ldvarg18 = tmp___15;
  tmp___16 = __VERIFIER_nondet_uint();
  ldvarg19 = tmp___16;
  tmp___17 = ldv_zalloc(32UL);
  ldvarg20 = (struct usb_device_id *)tmp___17;
  tmp___18 = __VERIFIER_nondet_size_t();
  ldvarg24 = tmp___18;
  tmp___19 = __VERIFIER_nondet_ulong();
  ldvarg21 = tmp___19;
  tmp___20 = ldv_zalloc(184UL);
  ldvarg26 = (struct vm_area_struct *)tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg25 = (char *)tmp___21;
  tmp___22 = ldv_zalloc(8UL);
  ldvarg23 = (loff_t *)tmp___22;
  tmp___23 = __VERIFIER_nondet_uint();
  ldvarg22 = tmp___23;
  tmp___24 = ldv_zalloc(1376UL);
  ldvarg27 = (struct device *)tmp___24;
  tmp___25 = ldv_zalloc(48UL);
  ldvarg29 = (struct device_attribute *)tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg28 = (char *)tmp___26;
  tmp___27 = ldv_zalloc(48UL);
  ldvarg32 = (struct device_attribute *)tmp___27;
  tmp___28 = ldv_zalloc(1UL);
  ldvarg31 = (char *)tmp___28;
  tmp___29 = ldv_zalloc(1376UL);
  ldvarg30 = (struct device *)tmp___29;
  tmp___30 = ldv_zalloc(48UL);
  ldvarg35 = (struct device_attribute *)tmp___30;
  tmp___31 = ldv_zalloc(1UL);
  ldvarg34 = (char *)tmp___31;
  tmp___32 = ldv_zalloc(1376UL);
  ldvarg33 = (struct device *)tmp___32;
  tmp___33 = ldv_zalloc(84UL);
  ldvarg77 = (struct v4l2_tuner *)tmp___33;
  tmp___34 = ldv_zalloc(1UL);
  ldvarg51 = tmp___34;
  tmp___35 = ldv_zalloc(1UL);
  ldvarg43 = tmp___35;
  tmp___36 = __VERIFIER_nondet_uint();
  ldvarg42 = tmp___36;
  tmp___37 = ldv_zalloc(84UL);
  ldvarg71 = (struct v4l2_tuner *)tmp___37;
  tmp___38 = ldv_zalloc(1UL);
  ldvarg72 = tmp___38;
  tmp___39 = ldv_zalloc(1UL);
  ldvarg56 = tmp___39;
  tmp___40 = ldv_zalloc(44UL);
  ldvarg50 = (struct v4l2_frequency *)tmp___40;
  tmp___41 = ldv_zalloc(56UL);
  ldvarg46 = (struct v4l2_dbg_register *)tmp___41;
  tmp___42 = ldv_zalloc(1UL);
  ldvarg58 = tmp___42;
  tmp___43 = ldv_zalloc(1UL);
  ldvarg37 = tmp___43;
  tmp___44 = ldv_zalloc(1UL);
  ldvarg53 = tmp___44;
  tmp___45 = ldv_zalloc(1UL);
  ldvarg64 = tmp___45;
  tmp___46 = ldv_zalloc(80UL);
  ldvarg44 = (struct v4l2_input *)tmp___46;
  tmp___47 = ldv_zalloc(52UL);
  ldvarg38 = (struct v4l2_audio *)tmp___47;
  tmp___48 = ldv_zalloc(1UL);
  ldvarg69 = tmp___48;
  tmp___49 = ldv_zalloc(8UL);
  ldvarg48 = (v4l2_std_id *)tmp___49;
  tmp___50 = ldv_zalloc(1UL);
  ldvarg47 = tmp___50;
  tmp___51 = ldv_zalloc(1UL);
  ldvarg39 = tmp___51;
  tmp___52 = ldv_zalloc(1UL);
  ldvarg41 = tmp___52;
  tmp___53 = ldv_zalloc(1UL);
  ldvarg60 = tmp___53;
  tmp___54 = ldv_zalloc(20UL);
  ldvarg80 = (struct v4l2_requestbuffers *)tmp___54;
  tmp___55 = ldv_zalloc(44UL);
  ldvarg59 = (struct v4l2_frequency *)tmp___55;
  tmp___56 = ldv_zalloc(1UL);
  ldvarg49 = tmp___56;
  tmp___57 = ldv_zalloc(1UL);
  ldvarg62 = tmp___57;
  tmp___58 = ldv_zalloc(4UL);
  ldvarg57 = (unsigned int *)tmp___58;
  tmp___59 = ldv_zalloc(68UL);
  ldvarg65 = (struct v4l2_queryctrl *)tmp___59;
  tmp___60 = ldv_zalloc(1UL);
  ldvarg79 = tmp___60;
  tmp___61 = ldv_zalloc(52UL);
  ldvarg55 = (struct v4l2_audio *)tmp___61;
  tmp___62 = ldv_zalloc(1UL);
  ldvarg66 = tmp___62;
  tmp___63 = ldv_zalloc(56UL);
  ldvarg40 = (struct v4l2_dbg_register *)tmp___63;
  tmp___64 = ldv_zalloc(1UL);
  ldvarg81 = tmp___64;
  tmp___65 = ldv_zalloc(1UL);
  ldvarg45 = tmp___65;
  tmp___66 = ldv_zalloc(64UL);
  ldvarg63 = (struct v4l2_fmtdesc *)tmp___66;
  tmp___67 = ldv_zalloc(1UL);
  ldvarg70 = tmp___67;
  tmp___68 = ldv_zalloc(1UL);
  ldvarg78 = tmp___68;
  tmp___69 = ldv_zalloc(1UL);
  ldvarg68 = tmp___69;
  tmp___70 = ldv_zalloc(1UL);
  ldvarg54 = tmp___70;
  tmp___71 = ldv_zalloc(1UL);
  ldvarg61 = tmp___71;
  tmp___72 = ldv_zalloc(1UL);
  ldvarg76 = tmp___72;
  tmp___73 = ldv_zalloc(1UL);
  ldvarg74 = tmp___73;
  tmp___74 = ldv_zalloc(104UL);
  ldvarg52 = (struct v4l2_capability *)tmp___74;
  tmp___75 = ldv_zalloc(1UL);
  ldvarg75 = tmp___75;
  tmp___76 = ldv_zalloc(1800UL);
  ldvarg82 = (struct video_device *)tmp___76;
  tmp___77 = ldv_zalloc(48UL);
  ldvarg85 = (struct device_attribute *)tmp___77;
  tmp___78 = ldv_zalloc(1UL);
  ldvarg84 = (char *)tmp___78;
  tmp___79 = ldv_zalloc(1376UL);
  ldvarg83 = (struct device *)tmp___79;
  tmp___80 = ldv_zalloc(84UL);
  ldvarg104 = (struct v4l2_tuner *)tmp___80;
  tmp___81 = ldv_zalloc(1UL);
  ldvarg106 = tmp___81;
  tmp___82 = ldv_zalloc(1UL);
  ldvarg101 = tmp___82;
  tmp___83 = ldv_zalloc(104UL);
  ldvarg94 = (struct v4l2_capability *)tmp___83;
  tmp___84 = ldv_zalloc(1UL);
  ldvarg91 = tmp___84;
  tmp___85 = ldv_zalloc(1UL);
  ldvarg87 = tmp___85;
  tmp___86 = ldv_zalloc(44UL);
  ldvarg100 = (struct v4l2_frequency *)tmp___86;
  tmp___87 = ldv_zalloc(52UL);
  ldvarg86 = (struct v4l2_audio *)tmp___87;
  tmp___88 = ldv_zalloc(1UL);
  ldvarg109 = tmp___88;
  tmp___89 = ldv_zalloc(4UL);
  ldvarg98 = (unsigned int *)tmp___89;
  tmp___90 = ldv_zalloc(68UL);
  ldvarg102 = (struct v4l2_queryctrl *)tmp___90;
  tmp___91 = ldv_zalloc(1UL);
  ldvarg97 = tmp___91;
  tmp___92 = ldv_zalloc(52UL);
  ldvarg96 = (struct v4l2_audio *)tmp___92;
  tmp___93 = ldv_zalloc(1UL);
  ldvarg103 = tmp___93;
  tmp___94 = ldv_zalloc(1UL);
  ldvarg99 = tmp___94;
  tmp___95 = ldv_zalloc(1UL);
  ldvarg95 = tmp___95;
  tmp___96 = __VERIFIER_nondet_uint();
  ldvarg88 = tmp___96;
  tmp___97 = ldv_zalloc(1UL);
  ldvarg105 = tmp___97;
  tmp___98 = ldv_zalloc(80UL);
  ldvarg90 = (struct v4l2_input *)tmp___98;
  tmp___99 = ldv_zalloc(1UL);
  ldvarg93 = tmp___99;
  tmp___100 = ldv_zalloc(1UL);
  ldvarg108 = tmp___100;
  tmp___101 = ldv_zalloc(44UL);
  ldvarg92 = (struct v4l2_frequency *)tmp___101;
  tmp___102 = ldv_zalloc(1UL);
  ldvarg89 = tmp___102;
  tmp___103 = ldv_zalloc(84UL);
  ldvarg107 = (struct v4l2_tuner *)tmp___103;
  ldv_initialize();
  memset((void *)(& ldvarg67), 0, 4UL);
  memset((void *)(& ldvarg36), 0, 4UL);
  memset((void *)(& ldvarg73), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
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
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_33952:
  tmp___104 = __VERIFIER_nondet_int();
  switch (tmp___104) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___105 = __VERIFIER_nondet_int();
    switch (tmp___105) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      show_compression(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_33833;
    default:
    ldv_stop();
    }
    ldv_33833: ;
  } else {
  }
  goto ldv_33835;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    tmp___106 = __VERIFIER_nondet_int();
    switch (tmp___106) {
    case 0: ;
    if (ldv_state_variable_7 == 2) {
      video_device_release(ldvarg3);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33838;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      ldv_probe_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_33838;
    default:
    ldv_stop();
    }
    ldv_33838: ;
  } else {
  }
  goto ldv_33835;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    tmp___107 = __VERIFIER_nondet_int();
    switch (tmp___107) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      show_model(ldvarg4, ldvarg6, ldvarg5);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_33843;
    default:
    ldv_stop();
    }
    ldv_33843: ;
  } else {
  }
  goto ldv_33835;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_33835;
  case 4: ;
  goto ldv_33835;
  case 5: ;
  if (ldv_state_variable_18 != 0) {
    tmp___108 = __VERIFIER_nondet_int();
    switch (tmp___108) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      show_version(ldvarg9, ldvarg11, ldvarg10);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_33849;
    default:
    ldv_stop();
    }
    ldv_33849: ;
  } else {
  }
  goto ldv_33835;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___109 = __VERIFIER_nondet_int();
    switch (tmp___109) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      usbvision_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33854;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = usbvision_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_v4l2_ioctl_ops_5();
        ldv_state_variable_10 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_v4l2_ioctl_ops_8();
        ldv_state_variable_14 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_2 = 1;
        ldv_initialize_i2c_algorithm_2();
        ldv_state_variable_12 = 1;
        ldv_state_variable_17 = 1;
        ldv_state_variable_9 = 1;
        ldv_initialize_v4l2_file_operations_9();
        ldv_state_variable_7 = 1;
        ldv_state_variable_11 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_v4l2_file_operations_6();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33854;
    default:
    ldv_stop();
    }
    ldv_33854: ;
  } else {
  }
  goto ldv_33835;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    tmp___110 = __VERIFIER_nondet_int();
    switch (tmp___110) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      show_hue(ldvarg12, ldvarg14, ldvarg13);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_33859;
    default:
    ldv_stop();
    }
    ldv_33859: ;
  } else {
  }
  goto ldv_33835;
  case 8: ;
  if (ldv_state_variable_13 != 0) {
    tmp___111 = __VERIFIER_nondet_int();
    switch (tmp___111) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      show_saturation(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_33863;
    default:
    ldv_stop();
    }
    ldv_33863: ;
  } else {
  }
  goto ldv_33835;
  case 9: ;
  if (ldv_state_variable_6 != 0) {
    tmp___112 = __VERIFIER_nondet_int();
    switch (tmp___112) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_1 = usbvision_radio_open(usbvision_radio_fops_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33867;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      usbvision_radio_close(usbvision_radio_fops_group0);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33867;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      video_ioctl2(usbvision_radio_fops_group0, ldvarg19, ldvarg18);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      video_ioctl2(usbvision_radio_fops_group0, ldvarg19, ldvarg18);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33867;
    default:
    ldv_stop();
    }
    ldv_33867: ;
  } else {
  }
  goto ldv_33835;
  case 10: ;
  if (ldv_state_variable_3 != 0) {
    tmp___113 = __VERIFIER_nondet_int();
    switch (tmp___113) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = usbvision_probe(usbvision_driver_group1, (struct usb_device_id const *)ldvarg20);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33873;
    case 1: ;
    if (ldv_state_variable_3 == 2 && usb_counter == 0) {
      usbvision_disconnect(usbvision_driver_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33873;
    default:
    ldv_stop();
    }
    ldv_33873: ;
  } else {
  }
  goto ldv_33835;
  case 11: ;
  if (ldv_state_variable_9 != 0) {
    tmp___114 = __VERIFIER_nondet_int();
    switch (tmp___114) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      usbvision_v4l2_mmap(usbvision_fops_group0, ldvarg26);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      usbvision_v4l2_mmap(usbvision_fops_group0, ldvarg26);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_33878;
    case 1: ;
    if (ldv_state_variable_9 == 2) {
      usbvision_v4l2_close(usbvision_fops_group0);
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33878;
    case 2: ;
    if (ldv_state_variable_9 == 2) {
      usbvision_v4l2_read(usbvision_fops_group0, ldvarg25, ldvarg24, ldvarg23);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_33878;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_3 = usbvision_v4l2_open(usbvision_fops_group0);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33878;
    case 4: ;
    if (ldv_state_variable_9 == 1) {
      video_ioctl2(usbvision_fops_group0, ldvarg22, ldvarg21);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      video_ioctl2(usbvision_fops_group0, ldvarg22, ldvarg21);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_33878;
    default:
    ldv_stop();
    }
    ldv_33878: ;
  } else {
  }
  goto ldv_33835;
  case 12: ;
  if (ldv_state_variable_12 != 0) {
    tmp___115 = __VERIFIER_nondet_int();
    switch (tmp___115) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      show_streaming(ldvarg27, ldvarg29, ldvarg28);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_33886;
    default:
    ldv_stop();
    }
    ldv_33886: ;
  } else {
  }
  goto ldv_33835;
  case 13: ;
  if (ldv_state_variable_14 != 0) {
    tmp___116 = __VERIFIER_nondet_int();
    switch (tmp___116) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      show_brightness(ldvarg30, ldvarg32, ldvarg31);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_33890;
    default:
    ldv_stop();
    }
    ldv_33890: ;
  } else {
  }
  goto ldv_33835;
  case 14: ;
  if (ldv_state_variable_15 != 0) {
    tmp___117 = __VERIFIER_nondet_int();
    switch (tmp___117) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      show_contrast(ldvarg33, ldvarg35, ldvarg34);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_33894;
    default:
    ldv_stop();
    }
    ldv_33894: ;
  } else {
  }
  goto ldv_33835;
  case 15: ;
  if (ldv_state_variable_8 != 0) {
    tmp___118 = __VERIFIER_nondet_int();
    switch (tmp___118) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_reqbufs(usbvision_ioctl_ops_group1, ldvarg81, ldvarg80);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_ctrl(usbvision_ioctl_ops_group1, ldvarg79, usbvision_ioctl_ops_group3);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_tuner(usbvision_ioctl_ops_group1, ldvarg78, ldvarg77);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_ctrl(usbvision_ioctl_ops_group1, ldvarg76, usbvision_ioctl_ops_group3);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 4: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_try_fmt_vid_cap(usbvision_ioctl_ops_group1, ldvarg75, usbvision_ioctl_ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 5: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_std(usbvision_ioctl_ops_group1, ldvarg74, ldvarg73);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 6: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_tuner(usbvision_ioctl_ops_group1, ldvarg72, (struct v4l2_tuner const *)ldvarg71);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 7: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_dqbuf(usbvision_ioctl_ops_group1, ldvarg70, usbvision_ioctl_ops_group2);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 8: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_querybuf(usbvision_ioctl_ops_group1, ldvarg69, usbvision_ioctl_ops_group2);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 9: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_streamoff(usbvision_ioctl_ops_group1, ldvarg68, ldvarg67);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 10: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_queryctrl(usbvision_ioctl_ops_group1, ldvarg66, ldvarg65);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 11: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_enum_fmt_vid_cap(usbvision_ioctl_ops_group1, ldvarg64, ldvarg63);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 12: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_fmt_vid_cap(usbvision_ioctl_ops_group1, ldvarg62, usbvision_ioctl_ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 13: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_fmt_vid_cap(usbvision_ioctl_ops_group1, ldvarg61, usbvision_ioctl_ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 14: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_frequency(usbvision_ioctl_ops_group1, ldvarg60, ldvarg59);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 15: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_input(usbvision_ioctl_ops_group1, ldvarg58, ldvarg57);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 16: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_audio(usbvision_ioctl_ops_group1, ldvarg56, ldvarg55);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 17: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_qbuf(usbvision_ioctl_ops_group1, ldvarg54, usbvision_ioctl_ops_group2);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 18: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_querycap(usbvision_ioctl_ops_group1, ldvarg53, ldvarg52);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 19: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_frequency(usbvision_ioctl_ops_group1, ldvarg51, (struct v4l2_frequency const *)ldvarg50);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 20: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_std(usbvision_ioctl_ops_group1, ldvarg49, ldvarg48);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 21: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_g_register(usbvision_ioctl_ops_group1, ldvarg47, ldvarg46);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 22: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_enum_input(usbvision_ioctl_ops_group1, ldvarg45, ldvarg44);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 23: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_input(usbvision_ioctl_ops_group1, ldvarg43, ldvarg42);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 24: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_register(usbvision_ioctl_ops_group1, ldvarg41, (struct v4l2_dbg_register const *)ldvarg40);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 25: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_s_audio(usbvision_ioctl_ops_group1, ldvarg39, (struct v4l2_audio const *)ldvarg38);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    case 26: ;
    if (ldv_state_variable_8 == 1) {
      vidioc_streamon(usbvision_ioctl_ops_group1, ldvarg37, ldvarg36);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33898;
    default:
    ldv_stop();
    }
    ldv_33898: ;
  } else {
  }
  goto ldv_33835;
  case 16: ;
  if (ldv_state_variable_4 != 0) {
    tmp___119 = __VERIFIER_nondet_int();
    switch (tmp___119) {
    case 0: ;
    if (ldv_state_variable_4 == 2) {
      video_device_release(ldvarg82);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33928;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      ldv_probe_4();
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_33928;
    default:
    ldv_stop();
    }
    ldv_33928: ;
  } else {
  }
  goto ldv_33835;
  case 17: ;
  if (ldv_state_variable_10 != 0) {
    tmp___120 = __VERIFIER_nondet_int();
    switch (tmp___120) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      show_device_bridge(ldvarg83, ldvarg85, ldvarg84);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_33933;
    default:
    ldv_stop();
    }
    ldv_33933: ;
  } else {
  }
  goto ldv_33835;
  case 18: ;
  if (ldv_state_variable_5 != 0) {
    tmp___121 = __VERIFIER_nondet_int();
    switch (tmp___121) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_ctrl(usbvision_radio_ioctl_ops_group0, ldvarg109, usbvision_radio_ioctl_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_tuner(usbvision_radio_ioctl_ops_group0, ldvarg108, ldvarg107);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_ctrl(usbvision_radio_ioctl_ops_group0, ldvarg106, usbvision_radio_ioctl_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_tuner(usbvision_radio_ioctl_ops_group0, ldvarg105, (struct v4l2_tuner const *)ldvarg104);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_queryctrl(usbvision_radio_ioctl_ops_group0, ldvarg103, ldvarg102);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_frequency(usbvision_radio_ioctl_ops_group0, ldvarg101, ldvarg100);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_input(usbvision_radio_ioctl_ops_group0, ldvarg99, ldvarg98);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_audio(usbvision_radio_ioctl_ops_group0, ldvarg97, ldvarg96);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_querycap(usbvision_radio_ioctl_ops_group0, ldvarg95, ldvarg94);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_frequency(usbvision_radio_ioctl_ops_group0, ldvarg93, (struct v4l2_frequency const *)ldvarg92);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_enum_input(usbvision_radio_ioctl_ops_group0, ldvarg91, ldvarg90);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_input(usbvision_radio_ioctl_ops_group0, ldvarg89, ldvarg88);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    case 12: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_audio(usbvision_radio_ioctl_ops_group0, ldvarg87, (struct v4l2_audio const *)ldvarg86);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33937;
    default:
    ldv_stop();
    }
    ldv_33937: ;
  } else {
  }
  goto ldv_33835;
  default:
  ldv_stop();
  }
  ldv_33835: ;
  goto ldv_33952;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
int ldv_del_timer_15(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct usb_device *tmp ;
  {
  tmp = ldv_interface_to_usbdev();
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_17(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
void ldv_usb_free_urb_18(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
struct usb_device *ldv_usb_get_dev_19(struct usb_device *ldv_func_arg1 )
{
  struct usb_device *tmp ;
  {
  tmp = ldv_get_dev(ldv_func_arg1);
  return (tmp);
}
}
void ldv_usb_put_dev_20(struct usb_device *dev )
{
  {
  ldv_put_dev(dev);
  return;
}
}
int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  usb_counter = 0;
  ldv_usb_driver_3();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_22(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_3 = 0;
  return;
}
}
int ldv_del_timer_26(struct timer_list *ldv_func_arg1 ) ;
__inline static void *i2c_get_adapdata(struct i2c_adapter const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern unsigned short v4l2_i2c_subdev_addr(struct v4l2_subdev * ) ;
extern unsigned short const *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type ) ;
static int i2c_debug ;
static int usbvision_i2c_write(struct usb_usbvision *usbvision , unsigned char addr ,
                               char *buf , short len ) ;
static int usbvision_i2c_read(struct usb_usbvision *usbvision , unsigned char addr ,
                              char *buf , short len ) ;
__inline static int try_write_address(struct i2c_adapter *i2c_adap , unsigned char addr ,
                                      int retries )
{
  struct usb_usbvision *usbvision ;
  int i ;
  int ret ;
  char buf[4U] ;
  void *tmp ;
  {
  ret = -1;
  tmp = i2c_get_adapdata((struct i2c_adapter const *)i2c_adap);
  usbvision = (struct usb_usbvision *)tmp;
  buf[0] = 0;
  i = 0;
  goto ldv_29636;
  ldv_29635:
  ret = usbvision_i2c_write(usbvision, (int )addr, (char *)(& buf), 1);
  if (ret == 1) {
    goto ldv_29634;
  } else {
  }
  __const_udelay(21475UL);
  if (i == retries) {
    goto ldv_29634;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_29636: ;
  if (i <= retries) {
    goto ldv_29635;
  } else {
  }
  ldv_29634: ;
  if (i != 0) {
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] Needed %d retries for address %#2x", "try_write_address",
             150, i, (int )addr);
    } else {
    }
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] Maybe there\'s no device at this address", "try_write_address",
             151);
    } else {
    }
  } else {
  }
  return (ret);
}
}
__inline static int try_read_address(struct i2c_adapter *i2c_adap , unsigned char addr ,
                                     int retries )
{
  struct usb_usbvision *usbvision ;
  int i ;
  int ret ;
  char buf[4U] ;
  void *tmp ;
  {
  ret = -1;
  tmp = i2c_get_adapdata((struct i2c_adapter const *)i2c_adap);
  usbvision = (struct usb_usbvision *)tmp;
  i = 0;
  goto ldv_29649;
  ldv_29648:
  ret = usbvision_i2c_read(usbvision, (int )addr, (char *)(& buf), 1);
  if (ret == 1) {
    goto ldv_29647;
  } else {
  }
  __const_udelay(21475UL);
  if (i == retries) {
    goto ldv_29647;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_29649: ;
  if (i <= retries) {
    goto ldv_29648;
  } else {
  }
  ldv_29647: ;
  if (i != 0) {
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] Needed %d retries for address %#2x", "try_read_address",
             174, i, (int )addr);
    } else {
    }
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] Maybe there\'s no device at this address", "try_read_address",
             175);
    } else {
    }
  } else {
  }
  return (ret);
}
}
__inline static int usb_find_address(struct i2c_adapter *i2c_adap , struct i2c_msg *msg ,
                                     int retries , unsigned char *add )
{
  unsigned short flags ;
  unsigned char addr ;
  int ret ;
  {
  flags = msg->flags;
  addr = (int )((unsigned char )msg->addr) << 1U;
  if ((int )flags & 1) {
    addr = (unsigned int )addr | 1U;
  } else {
  }
  *add = addr;
  if ((int )flags & 1) {
    ret = try_read_address(i2c_adap, (int )addr, retries);
  } else {
    ret = try_write_address(i2c_adap, (int )addr, retries);
  }
  if (ret != 1) {
    return (-121);
  } else {
  }
  return (0);
}
}
static int usbvision_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs ,
                              int num )
{
  struct i2c_msg *pmsg ;
  struct usb_usbvision *usbvision ;
  int i ;
  int ret ;
  unsigned char addr ;
  void *tmp ;
  {
  addr = 0U;
  tmp = i2c_get_adapdata((struct i2c_adapter const *)i2c_adap);
  usbvision = (struct usb_usbvision *)tmp;
  i = 0;
  goto ldv_29672;
  ldv_29671:
  pmsg = msgs + (unsigned long )i;
  ret = usb_find_address(i2c_adap, pmsg, i2c_adap->retries, & addr);
  if (ret != 0) {
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] got NAK from device, message #%d", "usbvision_i2c_xfer",
             219, i);
    } else {
    }
    return (ret < 0 ? ret : -121);
  } else {
  }
  if ((int )pmsg->flags & 1) {
    ret = usbvision_i2c_read(usbvision, (int )addr, (char *)pmsg->buf, (int )((short )pmsg->len));
    if ((int )pmsg->len > ret) {
      return (ret < 0 ? ret : -121);
    } else {
    }
  } else {
    ret = usbvision_i2c_write(usbvision, (int )addr, (char *)pmsg->buf, (int )((short )pmsg->len));
    if ((int )pmsg->len > ret) {
      return (ret < 0 ? ret : -121);
    } else {
    }
  }
  i = i + 1;
  ldv_29672: ;
  if (i < num) {
    goto ldv_29671;
  } else {
  }
  return (num);
}
}
static u32 functionality(struct i2c_adapter *adap )
{
  {
  return (251592713U);
}
}
static struct i2c_algorithm usbvision_algo = {& usbvision_i2c_xfer, (int (*)(struct i2c_adapter * , u16 , unsigned short ,
                                   char , u8 , int , union i2c_smbus_data * ))0,
    & functionality};
static struct i2c_adapter i2c_adap_template ;
int usbvision_i2c_register(struct usb_usbvision *usbvision )
{
  unsigned short saa711x_addrs[5U] ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  struct v4l2_subdev *sd ;
  enum v4l2_i2c_tuner_type type ;
  struct tuner_setup tun_setup ;
  unsigned short const *tmp___1 ;
  unsigned short const *tmp___2 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  saa711x_addrs[0] = 37U;
  saa711x_addrs[1] = 36U;
  saa711x_addrs[2] = 33U;
  saa711x_addrs[3] = 32U;
  saa711x_addrs[4] = 65534U;
  if (usbvision->registered_i2c != 0) {
    return (0);
  } else {
  }
  usbvision->i2c_adap = i2c_adap_template;
  sprintf((char *)(& usbvision->i2c_adap.name), "%s-%d-%s", (char *)(& i2c_adap_template.name),
          ((usbvision->dev)->bus)->busnum, (char *)(& (usbvision->dev)->devpath));
  if (i2c_debug & 1) {
    printk("\016usbvision:[%s:%d] Adaptername: %s", "usbvision_i2c_register", 271,
           (char *)(& usbvision->i2c_adap.name));
  } else {
  }
  usbvision->i2c_adap.dev.parent = & (usbvision->dev)->dev;
  i2c_set_adapdata(& usbvision->i2c_adap, (void *)(& usbvision->v4l2_dev));
  tmp = usbvision_write_reg(usbvision, 7, 48);
  if (tmp < 0) {
    printk("\vusbvision_i2c_register: can\'t write reg\n");
    return (-16);
  } else {
  }
  if (i2c_debug & 1) {
    printk("\016usbvision:[%s:%d] I2C   debugging is enabled [i2c]", "usbvision_i2c_register",
           281);
  } else {
  }
  if (i2c_debug & 1) {
    printk("\016usbvision:[%s:%d] ALGO   debugging is enabled [i2c]", "usbvision_i2c_register",
           282);
  } else {
  }
  usbvision->i2c_adap.algo = (struct i2c_algorithm const *)(& usbvision_algo);
  usbvision->i2c_adap.timeout = 100;
  usbvision->i2c_adap.retries = 3;
  i2c_add_adapter(& usbvision->i2c_adap);
  if (i2c_debug & 1) {
    printk("\016usbvision:[%s:%d] i2c bus for %s registered", "usbvision_i2c_register",
           293, (char *)(& usbvision->i2c_adap.name));
  } else {
  }
  switch ((int )usbvision_device_data[usbvision->dev_model].codec) {
  case 7113: ;
  case 7111:
  __ms = 10UL;
  goto ldv_29688;
  ldv_29687:
  __const_udelay(4295000UL);
  ldv_29688:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_29687;
  } else {
  }
  v4l2_i2c_new_subdev(& usbvision->v4l2_dev, & usbvision->i2c_adap, "saa7115_auto",
                      0, (unsigned short const *)(& saa711x_addrs));
  goto ldv_29690;
  }
  ldv_29690: ;
  if ((unsigned int )usbvision_device_data[usbvision->dev_model].tuner == 1U) {
    tmp___1 = v4l2_i2c_tuner_addrs(1);
    sd = v4l2_i2c_new_subdev(& usbvision->v4l2_dev, & usbvision->i2c_adap, "tuner",
                             0, tmp___1);
    type = (unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0) ? 3 : 2;
    tmp___2 = v4l2_i2c_tuner_addrs(type);
    sd = v4l2_i2c_new_subdev(& usbvision->v4l2_dev, & usbvision->i2c_adap, "tuner",
                             0, tmp___2);
    if ((unsigned long )sd == (unsigned long )((struct v4l2_subdev *)0)) {
      return (-19);
    } else {
    }
    if (usbvision->tuner_type != -1) {
      tun_setup.mode_mask = 6U;
      tun_setup.type = (unsigned int )usbvision->tuner_type;
      tun_setup.addr = v4l2_i2c_subdev_addr(sd);
      __mptr = (struct list_head const *)usbvision->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_29700;
      ldv_29699: ;
      if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      struct tuner_setup * ))0)) {
        (*(((__sd->ops)->tuner)->s_type_addr))(__sd, & tun_setup);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_29700: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& usbvision->v4l2_dev.subdevs)) {
        goto ldv_29699;
      } else {
      }
    } else {
    }
  } else {
  }
  usbvision->registered_i2c = 1;
  return (0);
}
}
int usbvision_i2c_unregister(struct usb_usbvision *usbvision )
{
  {
  if (usbvision->registered_i2c == 0) {
    return (0);
  } else {
  }
  i2c_del_adapter(& usbvision->i2c_adap);
  usbvision->registered_i2c = 0;
  if (i2c_debug & 1) {
    printk("\016usbvision:[%s:%d] i2c bus for %s unregistered", "usbvision_i2c_unregister",
           345, (char *)(& usbvision->i2c_adap.name));
  } else {
  }
  return (0);
}
}
static int usbvision_i2c_read_max4(struct usb_usbvision *usbvision , unsigned char addr ,
                                   char *buf , short len )
{
  int rc ;
  int retries ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int idx ;
  {
  retries = 5;
  ldv_29717:
  rc = usbvision_write_reg(usbvision, 8, (int )addr);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = usbvision_write_reg(usbvision, 9, (int )((unsigned char )(((int )((signed char )len) & 7) | 24)));
  if (rc < 0) {
    return (rc);
  } else {
  }
  ldv_29714:
  rc = usbvision_read_reg(usbvision, 9);
  if (rc > 0 && (rc & 16) != 0) {
    goto ldv_29714;
  } else {
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((rc & 32) == 0) {
    goto ldv_29716;
  } else {
  }
  rc = usbvision_write_reg(usbvision, 9, 0);
  if (rc < 0) {
    return (rc);
  } else {
  }
  retries = retries - 1;
  if (retries < 0) {
    return (-1);
  } else {
  }
  goto ldv_29717;
  ldv_29716: ;
  switch ((int )len) {
  case 4:
  tmp = usbvision_read_reg(usbvision, 13);
  *(buf + 3UL) = (char )tmp;
  case 3:
  tmp___0 = usbvision_read_reg(usbvision, 12);
  *(buf + 2UL) = (char )tmp___0;
  case 2:
  tmp___1 = usbvision_read_reg(usbvision, 11);
  *(buf + 1UL) = (char )tmp___1;
  case 1:
  tmp___2 = usbvision_read_reg(usbvision, 10);
  *buf = (char )tmp___2;
  goto ldv_29722;
  default:
  printk("\vusbvision_i2c_read_max4: buffer length > 4\n");
  }
  ldv_29722: ;
  if (i2c_debug & 1) {
    idx = 0;
    goto ldv_29727;
    ldv_29726: ;
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] read %x from address %x", "usbvision_i2c_read_max4",
             409, (int )((unsigned char )*(buf + (unsigned long )idx)), (int )addr);
    } else {
    }
    idx = idx + 1;
    ldv_29727: ;
    if ((int )len > idx) {
      goto ldv_29726;
    } else {
    }
  } else {
  }
  return ((int )len);
}
}
static int usbvision_i2c_write_max4(struct usb_usbvision *usbvision , unsigned char addr ,
                                    char const *buf , short len )
{
  int rc ;
  int retries ;
  int i ;
  unsigned char value[6U] ;
  unsigned char ser_cont ;
  unsigned int tmp ;
  int idx ;
  {
  ser_cont = (unsigned char )(((int )((signed char )len) & 7) | 16);
  value[0] = addr;
  value[1] = ser_cont;
  i = 0;
  goto ldv_29741;
  ldv_29740:
  value[i + 2] = (unsigned char )*(buf + (unsigned long )i);
  i = i + 1;
  ldv_29741: ;
  if ((int )len > i) {
    goto ldv_29740;
  } else {
  }
  retries = 5;
  ldv_29746:
  tmp = __create_pipe(usbvision->dev, 1U);
  rc = usb_control_msg(usbvision->dev, tmp | 2147483648U, 51, 66, 0, 8, (void *)(& value),
                       (int )((unsigned int )((__u16 )len) + 2U), 250);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = usbvision_write_reg(usbvision, 9, (int )((unsigned char )(((int )((signed char )len) & 7) | 16)));
  if (rc < 0) {
    return (rc);
  } else {
  }
  ldv_29743:
  rc = usbvision_read_reg(usbvision, 9);
  if (rc > 0 && (rc & 16) != 0) {
    goto ldv_29743;
  } else {
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((rc & 32) == 0) {
    goto ldv_29745;
  } else {
  }
  usbvision_write_reg(usbvision, 9, 0);
  retries = retries - 1;
  if (retries < 0) {
    return (-1);
  } else {
  }
  goto ldv_29746;
  ldv_29745: ;
  if (i2c_debug & 1) {
    idx = 0;
    goto ldv_29750;
    ldv_29749: ;
    if (i2c_debug & 1) {
      printk("\016usbvision:[%s:%d] wrote %x at address %x", "usbvision_i2c_write_max4",
             470, (int )((unsigned char )*(buf + (unsigned long )idx)), (int )addr);
    } else {
    }
    idx = idx + 1;
    ldv_29750: ;
    if ((int )len > idx) {
      goto ldv_29749;
    } else {
    }
  } else {
  }
  return ((int )len);
}
}
static int usbvision_i2c_write(struct usb_usbvision *usbvision , unsigned char addr ,
                               char *buf , short len )
{
  char *buf_ptr ;
  int retval ;
  int wrcount ;
  int count ;
  int max_len ;
  {
  buf_ptr = buf;
  wrcount = 0;
  max_len = 4;
  goto ldv_29764;
  ldv_29763:
  count = max_len < (int )len ? max_len : (int )len;
  retval = usbvision_i2c_write_max4(usbvision, (int )addr, (char const *)buf_ptr,
                                    (int )((short )count));
  if (retval > 0) {
    len = (short )((int )((unsigned short )len) - (int )((unsigned short )count));
    buf_ptr = buf_ptr + (unsigned long )count;
    wrcount = wrcount + count;
  } else {
    return (retval < 0 ? retval : -14);
  }
  ldv_29764: ;
  if ((int )len > 0) {
    goto ldv_29763;
  } else {
  }
  return (wrcount);
}
}
static int usbvision_i2c_read(struct usb_usbvision *usbvision , unsigned char addr ,
                              char *buf , short len )
{
  char temp[4U] ;
  int retval ;
  int i ;
  int rdcount ;
  int count ;
  {
  rdcount = 0;
  goto ldv_29781;
  ldv_29780:
  count = 4 < (int )len ? 4 : len;
  retval = usbvision_i2c_read_max4(usbvision, (int )addr, (char *)(& temp), (int )((short )count));
  if (retval > 0) {
    i = 0;
    goto ldv_29778;
    ldv_29777:
    *(buf + (unsigned long )(rdcount + i)) = temp[i];
    i = i + 1;
    ldv_29778: ;
    if ((int )len > i) {
      goto ldv_29777;
    } else {
    }
    len = (short )((int )((unsigned short )len) - (int )((unsigned short )count));
    rdcount = rdcount + count;
  } else {
    return (retval < 0 ? retval : -14);
  }
  ldv_29781: ;
  if ((int )len > 0) {
    goto ldv_29780;
  } else {
  }
  return (rdcount);
}
}
static struct i2c_adapter i2c_adap_template =
     {& __this_module, 0U, 0, 0, {{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {{0,
                                                                               0}},
                                0, 0, 0, 0, 0, 0}, 0, 0, {0, 0, {0, {0, 0}, 0, 0,
                                                                 0, 0, {{0}}, {{{0L},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                               {{0,
                                                                                 0},
                                                                                0UL,
                                                                                0,
                                                                                0,
                                                                                0UL,
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {(char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0,
                                                                                 (char)0},
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                               0,
                                                                               0},
                                                                 (unsigned char)0,
                                                                 (unsigned char)0,
                                                                 (unsigned char)0,
                                                                 (unsigned char)0,
                                                                 (unsigned char)0},
                                                          0, 0, {{0}, {{{{{0U}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                 {0, 0}, 0, 0, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}, 0, 0, 0,
                                                          {{0}, (unsigned char)0,
                                                           (unsigned char)0, (_Bool)0,
                                                           (_Bool)0, (_Bool)0, (_Bool)0,
                                                           {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                           {0, 0}, {0U, {{{{{{0U}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                         {0, 0}}},
                                                           0, (_Bool)0, (_Bool)0,
                                                           {{0, 0}, 0UL, 0, 0, 0UL,
                                                            0, 0, 0, {(char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0},
                                                            {0, {0, 0}, 0, 0, 0UL}},
                                                           0UL, {{0L}, {0, 0}, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}, {{{{{{0U}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                          {0, 0}},
                                                           {0}, {0}, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           0, 0, 0, 0, 0UL, 0UL, 0UL,
                                                           0UL, 0, 0}, 0, 0, 0, 0ULL,
                                                          0, {0, 0}, 0, {0, 0}, 0,
                                                          {0}, 0U, 0U, {{{{{0U}},
                                                                          0U, 0U,
                                                                          0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                          {0, 0}, {0, {0, 0}, {{0}}},
                                                          0, 0, 0, 0, (_Bool)0, (_Bool)0},
    0, {'u', 's', 'b', 'v', 'i', 's', 'i', 'o', 'n', '\000'}, {0U, {{{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                    {0, 0}}}, {{0},
                                                                               {{{{{0U}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
    {0, 0}, 0};
void ldv_initialize_i2c_algorithm_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1896UL);
  usbvision_algo_group0 = (struct i2c_adapter *)tmp;
  return;
}
}
void ldv_main_exported_2(void)
{
  int ldvarg7 ;
  int tmp ;
  struct i2c_msg *ldvarg8 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg7 = tmp;
  tmp___0 = ldv_zalloc(16UL);
  ldvarg8 = (struct i2c_msg *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    usbvision_i2c_xfer(usbvision_algo_group0, ldvarg8, ldvarg7);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_29793;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    functionality(usbvision_algo_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_29793;
  default:
  ldv_stop();
  }
  ldv_29793: ;
  return;
}
}
int ldv_del_timer_26(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_29(struct timer_list *ldv_func_arg1 ) ;
struct usbvision_device_data_st usbvision_device_data[67U] =
  { {45056ULL, "Xanboo", -1, 7113U, 4U, 1U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 0U,
      -1, -1},
        {255ULL, "Belkin USB VideoBus II Adapter", -1, 7113U, 2U, 1U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 0U, 0, 3},
        {45056ULL, "Belkin Components USB VideoBus", -1, 7111U, 2U, 1U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0U, -1, -1},
        {45056ULL, "Belkin USB VideoBus II", -1, 7113U, 2U, 1U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 0U, 0, 3},
        {255ULL, "echoFX InterView Lite", 0, 7111U, 2U, 0U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 0U, -1, -1},
        {45056ULL, "USBGear USBG-V1 resp. HAMA USB", -1, 7111U, 2U, 1U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0U, -1, -1},
        {45056ULL, "D-Link V100", -1, 7113U, 4U, 0U, 0U, 1U, 0U, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, 7U, 0U, 0, 3},
        {45056ULL, "X10 USB Camera", -1, 7111U, 2U, 1U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0U, -1, -1},
        {255ULL, "Hauppauge WinTV USB Live (PAL B/G)", -1, 7111U, 2U, 1U, 0U, 1U, 0U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, -1, 3},
        {45056ULL, "Hauppauge WinTV USB Live Pro (NTSC M/N)", -1, 7113U, 2U, 0U, 0U,
      1U, 0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {255ULL, "Zoran Co. PMD (Nogatech) AV-grabber Manhattan", -1, 7113U, 2U, 2U,
      0U, 1U, 0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {45056ULL, "Nogatech USB-TV (NTSC) FM", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17U, -1, 20},
        {45056ULL, "PNY USB-TV (NTSC) FM", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17U, -1, 20},
        {255ULL, "PixelView PlayTv-USB PRO (PAL) FM", 0, 7113U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 5U, 0, 3},
        {255ULL, "ZTV ZT-721 2.4GHz USB A/V Receiver", 0, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 5U, 0, 3},
        {45056ULL, "Hauppauge WinTV USB (NTSC M/N)", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17U, -1, 20},
        {255ULL, "Hauppauge WinTV USB (PAL B/G)", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {255ULL, "Hauppauge WinTV USB (PAL I)", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {16711680ULL, "Hauppauge WinTV USB (PAL/SECAM L)", -1, 7111U, 3U, 1U, 0U, 1U,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 3U, 128, 22},
        {255ULL, "Hauppauge WinTV USB (PAL D/K)", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {45056ULL, "Hauppauge WinTV USB (NTSC FM)", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17U, -1, -1},
        {255ULL, "Hauppauge WinTV USB (PAL B/G FM)", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {255ULL, "Hauppauge WinTV USB (PAL I FM)", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {255ULL, "Hauppauge WinTV USB (PAL D/K FM)", -1, 7111U, 3U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5U, -1, -1},
        {45056ULL, "Hauppauge WinTV USB Pro (NTSC M/N)", 0, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 45U, 0, 3},
        {45056ULL, "Hauppauge WinTV USB Pro (NTSC M/N) V2", 0, 7113U, 3U, 1U, 1U, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 45U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL/SECAM B/G/I/D/K/L)", 0, 7113U, 3U, 1U,
      0U, 1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 38U, 0, 3},
        {45056ULL, "Hauppauge WinTV USB Pro (NTSC M/N) V3", 0, 7113U, 3U, 1U, 1U, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 17U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL B/G)", 0, 7113U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 5U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL I)", 0, 7113U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 5U, 0, 3},
        {16711680ULL, "Hauppauge WinTV USB Pro (PAL/SECAM L)", -1, 7113U, 3U, 1U, 0U,
      1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 3U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL D/K)", -1, 7113U, 3U, 1U, 0U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 5U, 0, 3},
        {16711680ULL, "Hauppauge WinTV USB Pro (PAL/SECAM BGDK/I/L)", -1, 7113U, 3U,
      1U, 0U, 1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 3U, 0, 3},
        {16711680ULL, "Hauppauge WinTV USB Pro (PAL/SECAM BGDK/I/L) V2", -1, 7113U, 3U,
      1U, 0U, 1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 3U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL B/G) V2", -1, 7113U, 3U, 1U, 0U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 10U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL B/G,D/K)", -1, 7113U, 3U, 1U, 0U, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 10U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL I,D/K)", -1, 7113U, 3U, 1U, 0U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 37U, 0, 3},
        {45056ULL, "Hauppauge WinTV USB Pro (NTSC M/N FM)", -1, 7113U, 3U, 1U, 1U, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 17U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL B/G FM)", 0, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 5U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL I FM)", 0, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 5U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL D/K FM)", 0, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 5U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (Temic PAL/SECAM B/G/I/D/K/L FM)", 0, 7113U,
      3U, 1U, 1U, 1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, 7U, 45U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (Temic PAL B/G FM)", 0, 7113U, 3U, 1U, 1U,
      1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 45U, 0, 3},
        {255ULL, "Hauppauge WinTV USB Pro (PAL/SECAM B/G/I/D/K/L FM)", 0, 7113U, 3U,
      1U, 1U, 1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 38U, 0, 3},
        {45056ULL, "Hauppauge WinTV USB Pro (NTSC M/N FM) V2", 0, 7113U, 3U, 1U, 1U,
      1U, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 17U, 0, 3},
        {45056ULL, "Camtel Technology USB TV Genie Pro FM Model TVB330", -1, 7113U, 3U,
      1U, 1U, 1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 17U, 5, 5},
        {255ULL, "Digital Video Creator I", -1, 7113U, 2U, 0U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 0U, 0, 3},
        {45056ULL, "Global Village GV-007 (NTSC)", -1, 7111U, 2U, 0U, 0U, 1U, 0U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 0U, 82, 20},
        {45056ULL, "Dazzle Fusion Model DVC-50 Rev 1 (NTSC)", 0, 7113U, 2U, 0U, 0U, 1U,
      0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {255ULL, "Dazzle Fusion Model DVC-80 Rev 1 (PAL)", 0, 7113U, 2U, 0U, 0U, 1U,
      0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {16711680ULL, "Dazzle Fusion Model DVC-90 Rev 1 (SECAM)", 0, 7113U, 2U, 0U, 0U,
      1U, 0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {255ULL, "Eskape Labs MyTV2Go", 0, 7113U, 2U, 1U, 1U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 7U, 38U, 0, 3},
        {255ULL, "Pinnacle Studio PCTV USB (PAL)", -1, 7111U, 3U, 1U, 0U, 0U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18U, -1, -1},
        {16711680ULL, "Pinnacle Studio PCTV USB (SECAM)", -1, 7111U, 3U, 1U, 0U, 1U,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 3U, -1, -1},
        {255ULL, "Pinnacle Studio PCTV USB (PAL) FM", -1, 7111U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 5U, 128, 23},
        {255ULL, "Miro PCTV USB", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 5U,
      -1, -1},
        {45056ULL, "Pinnacle Studio PCTV USB (NTSC) FM", -1, 7111U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 17U, -1, -1},
        {255ULL, "Pinnacle Studio PCTV USB (PAL) FM V2", -1, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 20U, 0, 3},
        {45056ULL, "Pinnacle Studio PCTV USB (NTSC) FM V2", -1, 7111U, 3U, 1U, 1U, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 21U, 0, 3},
        {255ULL, "Pinnacle Studio PCTV USB (PAL) FM V3", -1, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 20U, 0, 3},
        {45056ULL, "Pinnacle Studio Linx Video input cable (NTSC)", -1, 7113U, 2U, 1U,
      0U, 1U, 0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {255ULL, "Pinnacle Studio Linx Video input cable (PAL)", -1, 7113U, 2U, 1U, 0U,
      1U, 0U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 0U, 0, 3},
        {255ULL, "Pinnacle PCTV Bungee USB (PAL) FM", -1, 7113U, 3U, 1U, 1U, 1U, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      7U, 20U, 0, 3},
        {45056ULL, "Hauppauge WinTv-USB", -1, 7111U, 3U, 1U, 0U, 1U, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17U, -1, -1},
        {45056ULL, "Pinnacle Studio PCTV USB (NTSC) FM V3", -1, 7111U, 3U, 1U, 1U, 1U,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 17U, -1, -1},
        {45056ULL, "Nogatech USB MicroCam NTSC (NV3000N)", -1, 3000U, 1U, 0U, 0U, 0U,
      0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0U, 71, 15},
        {255ULL, "Nogatech USB MicroCam PAL (NV3001P)", -1, 3000U, 1U, 0U, 0U, 0U, 0U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0U, 71, 18}};
int const usbvision_device_data_size = 67;
struct usb_device_id usbvision_table[68U] =
  { {3U, 2671U, 1024U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1293U, 262U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1293U, 519U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 1293U, 520U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1393U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 1395U, 3U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5UL},
        {3U, 1395U, 1024U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 1395U, 8192U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 1395U, 11520U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL},
        {3U, 1395U, 11521U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 1395U, 8449U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      10UL},
        {3U, 1395U, 12288U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65UL},
        {3U, 1395U, 12289U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      66UL},
        {3U, 1395U, 16640U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      11UL},
        {3U, 1395U, 16656U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      12UL},
        {3U, 1395U, 17488U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 1395U, 17744U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      14UL},
        {3U, 1395U, 19712U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      15UL},
        {3U, 1395U, 19713U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 1395U, 19714U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17UL},
        {3U, 1395U, 19715U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18UL},
        {3U, 1395U, 19716U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      19UL},
        {3U, 1395U, 19728U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 1395U, 19729U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      21UL},
        {3U, 1395U, 19730U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      22UL},
        {3U, 1395U, 19732U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      23UL},
        {3U, 1395U, 19754U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      24UL},
        {3U, 1395U, 19755U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      25UL},
        {3U, 1395U, 19756U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      26UL},
        {3U, 1395U, 19744U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      27UL},
        {3U, 1395U, 19745U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      28UL},
        {3U, 1395U, 19746U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      29UL},
        {3U, 1395U, 19747U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      30UL},
        {3U, 1395U, 19748U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      31UL},
        {3U, 1395U, 19749U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      32UL},
        {3U, 1395U, 19750U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      33UL},
        {3U, 1395U, 19751U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      34UL},
        {3U, 1395U, 19752U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      35UL},
        {3U, 1395U, 19753U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      36UL},
        {3U, 1395U, 19760U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      37UL},
        {3U, 1395U, 19761U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      38UL},
        {3U, 1395U, 19762U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      39UL},
        {3U, 1395U, 19764U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      40UL},
        {3U, 1395U, 19765U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      41UL},
        {3U, 1395U, 19766U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      42UL},
        {3U, 1395U, 19767U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      43UL},
        {3U, 1395U, 19768U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      44UL},
        {3U, 1896U, 6U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      45UL},
        {3U, 2000U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      46UL},
        {3U, 2000U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      47UL},
        {3U, 2000U, 3U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      48UL},
        {3U, 2000U, 4U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      49UL},
        {3U, 2000U, 5U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      50UL},
        {3U, 2040U, 37124U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      51UL},
        {3U, 8964U, 269U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      52UL},
        {3U, 8964U, 265U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      53UL},
        {3U, 8964U, 272U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      54UL},
        {3U, 8964U, 273U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 8964U, 274U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      56UL},
        {3U, 8964U, 275U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      64UL},
        {3U, 8964U, 528U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      57UL},
        {3U, 8964U, 530U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      58UL},
        {3U, 8964U, 532U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      59UL},
        {3U, 8964U, 768U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      60UL},
        {3U, 8964U, 769U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      61UL},
        {3U, 8964U, 1049U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      62UL},
        {3U, 9216U, 16896U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      63UL}};
struct usb_device_id const __mod_usb_device_table ;
int ldv_del_timer_29(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void);
__inline static void ldv_stop___1(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_stop___1(void)
{
  {
  LDV_STOP:
  goto LDV_STOP;
}
}
int INTERF_STATE = 0;
int SERIAL_STATE = 0;
void *usb_intfdata = 0;
struct urb *usb_urb = 0;
struct usb_device *usb_dev = 0;
int dev_counter = 0;
int completeFnIntCounter = 0;
int completeFnBulkCounter = 0;
void (*completeFnInt)(struct urb * ) ;
void (*completeFnBulk)(struct urb * ) ;
void *ldv_usb_get_intfdata(void)
{
  {
  return (usb_intfdata);
}
}
void ldv_usb_set_intfdata(void *data )
{
  {
  usb_intfdata = data;
  return;
}
}
void ldv_usb_put_intf(void)
{
  {
  usb_intfdata = 0;
  return;
}
}
struct urb *ldv_alloc_urb(void)
{
  struct urb *value ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_undef_ptr();
  value = tmp;
  tmp___0 = ldv_undef_int();
  if (tmp___0) {
    if ((unsigned long )value != (unsigned long )((struct urb *)0)) {
      usb_urb = value;
    } else {
    }
  } else {
  }
  return (usb_urb);
}
}
void ldv_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb && (unsigned long )usb_urb != (unsigned long )((struct urb *)0)) {
    usb_urb = 0;
  } else {
  }
  return;
}
}
void ldv_fill_int_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnInt = complete_fn;
    completeFnIntCounter = completeFnIntCounter + 1;
  } else {
  }
  return;
}
}
void ldv_fill_bulk_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnBulk = complete_fn;
    completeFnBulkCounter = completeFnBulkCounter + 1;
  } else {
  }
  return;
}
}
int ldv_submit_urb(struct urb *urb )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___1();
  }
  if (res == 0) {
    if ((unsigned long )usb_urb == (unsigned long )urb) {
      if (completeFnIntCounter != 0) {
        (*completeFnInt)(usb_urb);
        completeFnIntCounter = 0;
      } else {
      }
      if (completeFnBulkCounter != 0) {
        (*completeFnBulk)(usb_urb);
        completeFnBulkCounter = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  return (res);
}
}
struct usb_device *ldv_interface_to_usbdev(void)
{
  void *result ;
  void *tmp ;
  {
  tmp = ldv_undef_ptr();
  result = tmp;
  if ((unsigned long )result != (unsigned long )((void *)0)) {
  } else {
    ldv_stop___1();
  }
  return (result);
}
}
struct usb_device *ldv_get_dev(struct usb_device *data )
{
  int tmp ;
  {
  if ((unsigned long )usb_dev == (unsigned long )((struct usb_device *)0)) {
    tmp = ldv_undef_int();
    if (tmp) {
      dev_counter = dev_counter + 1;
      usb_dev = data;
    } else {
    }
  } else
  if ((unsigned long )usb_dev == (unsigned long )data) {
    dev_counter = dev_counter + 1;
  } else {
  }
  return (usb_dev);
}
}
void ldv_put_dev(struct usb_device *data )
{
  {
  if ((unsigned long )usb_dev == (unsigned long )data && (unsigned long )data != (unsigned long )((struct usb_device *)0)) {
    dev_counter = dev_counter - 1;
    if (dev_counter == 0) {
      usb_dev = 0;
    } else {
    }
  } else {
  }
  return;
}
}
int ldv_get_interface(struct usb_interface *intf )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___1();
  }
  if (res == 0) {
    INTERF_STATE = INTERF_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_put_interface(void)
{
  {
  if (INTERF_STATE > 0) {
  } else {
    ldv_error();
  }
  INTERF_STATE = INTERF_STATE - 1;
  return;
}
}
int ldv_serial_register(void)
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res <= 0) {
  } else {
    ldv_stop___1();
  }
  if (res == 0) {
    SERIAL_STATE = SERIAL_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_serial_deregister(void)
{
  {
  if (SERIAL_STATE > 0) {
  } else {
    ldv_error();
  }
  SERIAL_STATE = SERIAL_STATE - 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if ((unsigned long )usb_urb == (unsigned long )((struct urb *)0)) {
  } else {
    ldv_error();
  }
  if ((unsigned long )usb_dev == (unsigned long )((struct usb_device *)0)) {
  } else {
    ldv_error();
  }
  if (dev_counter == 0) {
  } else {
    ldv_error();
  }
  if (INTERF_STATE == 0) {
  } else {
    ldv_error();
  }
  if (SERIAL_STATE == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_7() {
  return __VERIFIER_nondet_int();
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
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void *external_alloc(void);
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return (struct v4l2_subdev *)external_alloc();
}
unsigned short __VERIFIER_nondet_ushort(void);
unsigned short int v4l2_i2c_subdev_addr(struct v4l2_subdev *arg0) {
  return __VERIFIER_nondet_ushort();
}
void *external_alloc(void);
const unsigned short *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type arg0) {
  return (const unsigned short *)external_alloc();
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
void *external_alloc(void);
struct video_device *video_device_alloc() {
  return (struct video_device *)external_alloc();
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vm_insert_page(struct vm_area_struct *arg0, unsigned long arg1, struct page *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *vmalloc_32(unsigned long arg0) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct page *vmalloc_to_page(const void *arg0) {
  return (struct page *)external_alloc();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
