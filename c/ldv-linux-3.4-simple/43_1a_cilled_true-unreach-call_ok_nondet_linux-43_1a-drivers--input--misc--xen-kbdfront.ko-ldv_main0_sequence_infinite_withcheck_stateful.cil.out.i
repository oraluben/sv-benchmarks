extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s8 int8_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
struct lockdep_map;
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
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct rw_semaphore;
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
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
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
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
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
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
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
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
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
struct vm_area_struct;
enum xen_domain_type {
    XEN_NATIVE = 0,
    XEN_PV_DOMAIN = 1,
    XEN_HVM_DOMAIN = 2
} ;
typedef uint16_t domid_t;
struct __anonstruct_domU_116 {
   unsigned long mfn ;
   uint32_t evtchn ;
};
struct __anonstruct_dom0_117 {
   uint32_t info_off ;
   uint32_t info_size ;
};
union __anonunion_console_115 {
   struct __anonstruct_domU_116 domU ;
   struct __anonstruct_dom0_117 dom0 ;
};
struct start_info {
   char magic[32U] ;
   unsigned long nr_pages ;
   unsigned long shared_info ;
   uint32_t flags ;
   unsigned long store_mfn ;
   uint32_t store_evtchn ;
   union __anonunion_console_115 console ;
   unsigned long pt_base ;
   unsigned long nr_pt_frames ;
   unsigned long mfn_list ;
   unsigned long mod_start ;
   unsigned long mod_len ;
   int8_t cmd_line[1024U] ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct cred;
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
struct sock;
struct kobject;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
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
   int objsize ;
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
union __anonunion_u_135 {
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
   union __anonunion_u_135 u ;
};
struct klist_node;
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
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_136 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
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
   union __anonunion_d_u_136 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
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
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
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
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
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
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
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
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
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
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
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
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
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
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_139 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_138 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_139 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_138 read_descriptor_t;
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
};
struct backing_dev_info;
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
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
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_16579_140 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_16598_141 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_16616_142 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_16579_140 ldv_16579 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_16598_141 ldv_16598 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_16616_142 ldv_16616 ;
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
   uid_t uid ;
   uid_t euid ;
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
union __anonunion_f_u_143 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_143 f_u ;
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
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_145 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_144 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_145 afs ;
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
   union __anonunion_fl_u_144 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
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
   struct mutex s_lock ;
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
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
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
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
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
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
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
struct ff_device;
struct input_mt_slot;
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
   struct input_mt_slot *mt ;
   int mtsize ;
   int slot ;
   int trkid ;
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
   bool sync ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   struct file_operations const *fops ;
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
   struct file *effect_owners[0U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
union __anonunion_ldv_22743_153 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_22753_157 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_22754_156 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_22753_157 ldv_22753 ;
};
struct __anonstruct_ldv_22756_155 {
   union __anonunion_ldv_22754_156 ldv_22754 ;
   atomic_t _count ;
};
union __anonunion_ldv_22757_154 {
   unsigned long counters ;
   struct __anonstruct_ldv_22756_155 ldv_22756 ;
};
struct __anonstruct_ldv_22758_152 {
   union __anonunion_ldv_22743_153 ldv_22743 ;
   union __anonunion_ldv_22757_154 ldv_22757 ;
};
struct __anonstruct_ldv_22765_159 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_22766_158 {
   struct list_head lru ;
   struct __anonstruct_ldv_22765_159 ldv_22765 ;
};
union __anonunion_ldv_22771_160 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_22758_152 ldv_22758 ;
   union __anonunion_ldv_22766_158 ldv_22766 ;
   union __anonunion_ldv_22771_160 ldv_22771 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_162 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_161 {
   struct __anonstruct_vm_set_162 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
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
   union __anonunion_shared_161 shared ;
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
   unsigned long reserved_vm ;
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
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
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
};
typedef uint32_t grant_ref_t;
struct xenkbd_motion {
   uint8_t type ;
   int32_t rel_x ;
   int32_t rel_y ;
   int32_t rel_z ;
};
struct xenkbd_key {
   uint8_t type ;
   uint8_t pressed ;
   uint32_t keycode ;
};
struct xenkbd_position {
   uint8_t type ;
   int32_t abs_x ;
   int32_t abs_y ;
   int32_t rel_z ;
};
union xenkbd_in_event {
   uint8_t type ;
   struct xenkbd_motion motion ;
   struct xenkbd_key key ;
   struct xenkbd_position pos ;
   char pad[40U] ;
};
struct xenkbd_page {
   uint32_t in_cons ;
   uint32_t in_prod ;
   uint32_t out_cons ;
   uint32_t out_prod ;
};
enum xenbus_state {
    XenbusStateUnknown = 0,
    XenbusStateInitialising = 1,
    XenbusStateInitWait = 2,
    XenbusStateInitialised = 3,
    XenbusStateConnected = 4,
    XenbusStateClosing = 5,
    XenbusStateClosed = 6,
    XenbusStateReconfiguring = 7,
    XenbusStateReconfigured = 8
} ;
struct xenbus_watch {
   struct list_head list ;
   char const *node ;
   void (*callback)(struct xenbus_watch * , char const ** , unsigned int ) ;
};
struct xenbus_device {
   char const *devicetype ;
   char const *nodename ;
   char const *otherend ;
   int otherend_id ;
   struct xenbus_watch otherend_watch ;
   struct device dev ;
   enum xenbus_state state ;
   struct completion down ;
};
struct xenbus_device_id {
   char devicetype[32U] ;
};
struct xenbus_driver {
   struct xenbus_device_id const *ids ;
   int (*probe)(struct xenbus_device * , struct xenbus_device_id const * ) ;
   void (*otherend_changed)(struct xenbus_device * , enum xenbus_state ) ;
   int (*remove)(struct xenbus_device * ) ;
   int (*suspend)(struct xenbus_device * ) ;
   int (*resume)(struct xenbus_device * ) ;
   int (*uevent)(struct xenbus_device * , struct kobj_uevent_env * ) ;
   struct device_driver driver ;
   int (*read_otherend_details)(struct xenbus_device * ) ;
   int (*is_ready)(struct xenbus_device * ) ;
};
struct xenbus_transaction {
   u32 id ;
};
struct xenkbd_info {
   struct input_dev *kbd ;
   struct input_dev *ptr ;
   struct xenkbd_page *page ;
   int gref ;
   int irq ;
   struct xenbus_device *xbdev ;
   char phys[32U] ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
__inline static void __set_bit(int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile ("bts %1,%0": "+m" (*__cil_tmp3): "Ir" (nr): "memory");
  return;
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  unsigned long *__cil_tmp4 ;
  {
  __cil_tmp4 = (unsigned long *)addr;
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*__cil_tmp4),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memset(void * , int , size_t ) ;
extern enum xen_domain_type xen_domain_type ;
extern struct start_info *xen_start_info ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern struct module __this_module ;
extern void kfree(void * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void *__VERIFIER_nondet_pointer(void) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
struct input_dev *input_allocate_device(void) {
       return kzalloc(sizeof(struct input_dev), 0x10u | 0x40u | 0x80u);
}
extern void input_free_device(struct input_dev * ) ;
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{ int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = value != 0;
  input_event(dev, 1U, code, __cil_tmp4);
  }
  return;
}
}
__inline static void input_report_rel(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 2U, code, value);
  }
  return;
}
}
__inline static void input_report_abs(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 3U, code, value);
  }
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  {
  input_event(dev, 0U, 0U, 0);
  }
  return;
}
}
extern void input_set_capability(struct input_dev * , unsigned int , unsigned int ) ;
extern void input_set_abs_params(struct input_dev * , unsigned int , int , int ,
                                 int , int ) ;
extern int bind_evtchn_to_irqhandler(unsigned int , irqreturn_t (*)(int , void * ) ,
                                     unsigned long , char const * , void * ) ;
extern void unbind_from_irqhandler(unsigned int , void * ) ;
extern void notify_remote_via_irq(int ) ;
extern u8 xen_features[32U] ;
__inline static int xen_feature(int flag )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  u8 __cil_tmp4 ;
  {
  {
  __cil_tmp2 = flag * 1UL;
  __cil_tmp3 = (unsigned long )(xen_features) + __cil_tmp2;
  __cil_tmp4 = *((u8 *)__cil_tmp3);
  return ((int )__cil_tmp4);
  }
}
}
extern int gnttab_grant_foreign_access(domid_t , unsigned long , int ) ;
extern int gnttab_end_foreign_access_ref(grant_ref_t , int ) ;
extern unsigned long get_phys_to_machine(unsigned long ) ;
__inline static unsigned long pfn_to_mfn(unsigned long pfn )
{ unsigned long mfn ;
  int tmp ;
  {
  {
  tmp = xen_feature(2);
  }
  if (tmp != 0) {
    return (pfn);
  } else {
  }
  {
  mfn = get_phys_to_machine(pfn);
  }
  if (mfn != 0xffffffffffffffffUL) {
    mfn = mfn & 4611686018427387903UL;
  } else {
  }
  return (mfn);
}
}
extern int xenbus_register_frontend(struct xenbus_driver * ) ;
extern void xenbus_unregister_driver(struct xenbus_driver * ) ;
extern int xenbus_transaction_start(struct xenbus_transaction * ) ;
extern int xenbus_transaction_end(u32 , int ) ;
extern int xenbus_scanf(u32 , char const * , char const * , char const * , ...) ;
extern int xenbus_printf(u32 , char const * , char const * , char const *
                         , ...) ;
extern int xenbus_switch_state(struct xenbus_device * , enum xenbus_state ) ;
extern int xenbus_alloc_evtchn(struct xenbus_device * , int * ) ;
extern int xenbus_free_evtchn(struct xenbus_device * , int ) ;
extern void xenbus_dev_fatal(struct xenbus_device * , int , char const * , ...) ;
extern int xenbus_frontend_closed(struct xenbus_device * ) ;
static int xenkbd_remove(struct xenbus_device *dev ) ;
static int xenkbd_connect_backend(struct xenbus_device *dev , struct xenkbd_info *info ) ;
static void xenkbd_disconnect_backend(struct xenkbd_info *info ) ;
static irqreturn_t input_handler(int rq , void *dev_id )
{ struct xenkbd_info *info ;
  struct xenkbd_page *page ;
  __u32 cons ;
  __u32 prod ;
  union xenkbd_in_event *event ;
  struct input_dev *dev ;
  int tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  uint32_t __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  union xenkbd_in_event *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  uint8_t __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int32_t __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  int32_t __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  int32_t __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  int32_t __cil_tmp38 ;
  int32_t __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  uint32_t __cil_tmp43 ;
  int __cil_tmp44 ;
  struct input_dev *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long (*__cil_tmp48)[12U] ;
  unsigned long const volatile *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  uint32_t __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct input_dev *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long (*__cil_tmp60)[12U] ;
  unsigned long const volatile *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  struct input_dev *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  uint32_t __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  uint8_t __cil_tmp74 ;
  int __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  uint32_t __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int32_t __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int32_t __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  int32_t __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  int32_t __cil_tmp95 ;
  int32_t __cil_tmp96 ;
  struct input_dev *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  {
  info = (struct xenkbd_info *)dev_id;
  __cil_tmp11 = (unsigned long )info;
  __cil_tmp12 = __cil_tmp11 + 16;
  page = *((struct xenkbd_page **)__cil_tmp12);
  __cil_tmp13 = (unsigned long )page;
  __cil_tmp14 = __cil_tmp13 + 4;
  prod = *((uint32_t *)__cil_tmp14);
  {
  __cil_tmp15 = *((uint32_t *)page);
  if (__cil_tmp15 == prod) {
    return ((irqreturn_t )1);
  } else {
  }
  }
  __asm__ volatile ("lfence": : : "memory");
  cons = *((uint32_t *)page);
  goto ldv_26534;
  ldv_26533:
  __cil_tmp16 = cons % 51U;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 1024UL;
  __cil_tmp19 = (union xenkbd_in_event *)page;
  event = __cil_tmp19 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )info;
  __cil_tmp21 = __cil_tmp20 + 8;
  dev = *((struct input_dev **)__cil_tmp21);
  {
  __cil_tmp22 = *((uint8_t *)event);
  if ((int )__cil_tmp22 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp22 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp22 == 4) {
    goto case_4;
  } else
  if (0) {
    case_1:
    {
    __cil_tmp23 = 0 + 4;
    __cil_tmp24 = (unsigned long )event;
    __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
    __cil_tmp26 = *((int32_t *)__cil_tmp25);
    input_report_rel(dev, 0U, __cil_tmp26);
    __cil_tmp27 = 0 + 8;
    __cil_tmp28 = (unsigned long )event;
    __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
    __cil_tmp30 = *((int32_t *)__cil_tmp29);
    input_report_rel(dev, 1U, __cil_tmp30);
    }
    {
    __cil_tmp31 = 0 + 12;
    __cil_tmp32 = (unsigned long )event;
    __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
    __cil_tmp34 = *((int32_t *)__cil_tmp33);
    if (__cil_tmp34 != 0) {
      {
      __cil_tmp35 = 0 + 12;
      __cil_tmp36 = (unsigned long )event;
      __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
      __cil_tmp38 = *((int32_t *)__cil_tmp37);
      __cil_tmp39 = - __cil_tmp38;
      input_report_rel(dev, 8U, __cil_tmp39);
      }
    } else {
    }
    }
    goto ldv_26530;
    case_3:
    {
    dev = (struct input_dev *)0;
    __cil_tmp40 = 0 + 4;
    __cil_tmp41 = (unsigned long )event;
    __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
    __cil_tmp43 = *((uint32_t *)__cil_tmp42);
    __cil_tmp44 = (int )__cil_tmp43;
    __cil_tmp45 = *((struct input_dev **)info);
    __cil_tmp46 = (unsigned long )__cil_tmp45;
    __cil_tmp47 = __cil_tmp46 + 48;
    __cil_tmp48 = (unsigned long (*)[12U])__cil_tmp47;
    __cil_tmp49 = (unsigned long const volatile *)__cil_tmp48;
    tmp = variable_test_bit(__cil_tmp44, __cil_tmp49);
    }
    if (tmp != 0) {
      dev = *((struct input_dev **)info);
    } else {
    }
    {
    __cil_tmp50 = 0 + 4;
    __cil_tmp51 = (unsigned long )event;
    __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
    __cil_tmp53 = *((uint32_t *)__cil_tmp52);
    __cil_tmp54 = (int )__cil_tmp53;
    __cil_tmp55 = (unsigned long )info;
    __cil_tmp56 = __cil_tmp55 + 8;
    __cil_tmp57 = *((struct input_dev **)__cil_tmp56);
    __cil_tmp58 = (unsigned long )__cil_tmp57;
    __cil_tmp59 = __cil_tmp58 + 48;
    __cil_tmp60 = (unsigned long (*)[12U])__cil_tmp59;
    __cil_tmp61 = (unsigned long const volatile *)__cil_tmp60;
    tmp___0 = variable_test_bit(__cil_tmp54, __cil_tmp61);
    }
    if (tmp___0 != 0) {
      __cil_tmp62 = (unsigned long )info;
      __cil_tmp63 = __cil_tmp62 + 8;
      dev = *((struct input_dev **)__cil_tmp63);
    } else {
    }
    {
    __cil_tmp64 = (struct input_dev *)0;
    __cil_tmp65 = (unsigned long )__cil_tmp64;
    __cil_tmp66 = (unsigned long )dev;
    if (__cil_tmp66 != __cil_tmp65) {
      {
      __cil_tmp67 = 0 + 4;
      __cil_tmp68 = (unsigned long )event;
      __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
      __cil_tmp70 = *((uint32_t *)__cil_tmp69);
      __cil_tmp71 = 0 + 1;
      __cil_tmp72 = (unsigned long )event;
      __cil_tmp73 = __cil_tmp72 + __cil_tmp71;
      __cil_tmp74 = *((uint8_t *)__cil_tmp73);
      __cil_tmp75 = (int )__cil_tmp74;
      input_report_key(dev, __cil_tmp70, __cil_tmp75);
      }
    } else {
      {
      __cil_tmp76 = 0 + 4;
      __cil_tmp77 = (unsigned long )event;
      __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
      __cil_tmp79 = *((uint32_t *)__cil_tmp78);
      printk("<4>xen_kbdfront: unhandled keycode 0x%x\n", __cil_tmp79);
      }
    }
    }
    goto ldv_26530;
    case_4:
    {
    __cil_tmp80 = 0 + 4;
    __cil_tmp81 = (unsigned long )event;
    __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
    __cil_tmp83 = *((int32_t *)__cil_tmp82);
    input_report_abs(dev, 0U, __cil_tmp83);
    __cil_tmp84 = 0 + 8;
    __cil_tmp85 = (unsigned long )event;
    __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
    __cil_tmp87 = *((int32_t *)__cil_tmp86);
    input_report_abs(dev, 1U, __cil_tmp87);
    }
    {
    __cil_tmp88 = 0 + 12;
    __cil_tmp89 = (unsigned long )event;
    __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
    __cil_tmp91 = *((int32_t *)__cil_tmp90);
    if (__cil_tmp91 != 0) {
      {
      __cil_tmp92 = 0 + 12;
      __cil_tmp93 = (unsigned long )event;
      __cil_tmp94 = __cil_tmp93 + __cil_tmp92;
      __cil_tmp95 = *((int32_t *)__cil_tmp94);
      __cil_tmp96 = - __cil_tmp95;
      input_report_rel(dev, 8U, __cil_tmp96);
      }
    } else {
    }
    }
    goto ldv_26530;
  } else {
    switch_break: ;
  }
  }
  ldv_26530: ;
  {
  __cil_tmp97 = (struct input_dev *)0;
  __cil_tmp98 = (unsigned long )__cil_tmp97;
  __cil_tmp99 = (unsigned long )dev;
  if (__cil_tmp99 != __cil_tmp98) {
    {
    input_sync(dev);
    }
  } else {
  }
  }
  cons = cons + 1U;
  ldv_26534: ;
  if (cons != prod) {
    goto ldv_26533;
  } else {
    goto ldv_26535;
  }
  ldv_26535:
  {
  __asm__ volatile ("mfence": : : "memory");
  *((uint32_t *)page) = cons;
  __cil_tmp100 = (unsigned long )info;
  __cil_tmp101 = __cil_tmp100 + 28;
  __cil_tmp102 = *((int *)__cil_tmp101);
  notify_remote_via_irq(__cil_tmp102);
  }
  return ((irqreturn_t )1);
}
}
static int xenkbd_probe(struct xenbus_device *dev , struct xenbus_device_id const *id )
{ int ret ;
  int i ;
  int abs ;
  struct xenkbd_info *info ;
  struct input_dev *kbd ;
  struct input_dev *ptr ;
  void *tmp ;
  unsigned long tmp___0 ;
  struct xenbus_transaction __constr_expr_0 ;
  int tmp___1 ;
  struct xenbus_transaction __constr_expr_1 ;
  struct xenkbd_info *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  char (*__cil_tmp29)[32U] ;
  char *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  char const *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct xenkbd_page *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct xenkbd_page *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  char const *__cil_tmp44 ;
  int *__cil_tmp45 ;
  int *__cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  char const *__cil_tmp50 ;
  struct input_dev *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  char (*__cil_tmp58)[32U] ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long (*__cil_tmp69)[1U] ;
  unsigned long volatile *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long (*__cil_tmp73)[12U] ;
  unsigned long volatile *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long (*__cil_tmp77)[12U] ;
  unsigned long volatile *__cil_tmp78 ;
  struct input_dev *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  char (*__cil_tmp86)[32U] ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  int *__cil_tmp95 ;
  int __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long (*__cil_tmp99)[1U] ;
  unsigned long volatile *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long (*__cil_tmp103)[1U] ;
  unsigned long volatile *__cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long (*__cil_tmp107)[12U] ;
  unsigned long volatile *__cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  u32 __constr_expr_0_id111 ;
  u32 __constr_expr_1_id112 ;
  {
  {
  tmp = kzalloc(72UL, 208U);
  info = (struct xenkbd_info *)tmp;
  }
  {
  __cil_tmp14 = (struct xenkbd_info *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = (unsigned long )info;
  if (__cil_tmp16 == __cil_tmp15) {
    {
    xenbus_dev_fatal(dev, -12, "allocating info structure");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )dev;
  __cil_tmp18 = __cil_tmp17 + 64;
  __cil_tmp19 = (struct device *)__cil_tmp18;
  __cil_tmp20 = (void *)info;
  dev_set_drvdata(__cil_tmp19, __cil_tmp20);
  __cil_tmp21 = (unsigned long )info;
  __cil_tmp22 = __cil_tmp21 + 32;
  *((struct xenbus_device **)__cil_tmp22) = dev;
  __cil_tmp23 = (unsigned long )info;
  __cil_tmp24 = __cil_tmp23 + 28;
  *((int *)__cil_tmp24) = -1;
  __cil_tmp25 = (unsigned long )info;
  __cil_tmp26 = __cil_tmp25 + 24;
  *((int *)__cil_tmp26) = -1;
  __cil_tmp27 = (unsigned long )info;
  __cil_tmp28 = __cil_tmp27 + 40;
  __cil_tmp29 = (char (*)[32U])__cil_tmp28;
  __cil_tmp30 = (char *)__cil_tmp29;
  __cil_tmp31 = (unsigned long )dev;
  __cil_tmp32 = __cil_tmp31 + 8;
  __cil_tmp33 = *((char const **)__cil_tmp32);
  snprintf(__cil_tmp30, 32UL, "xenbus/%s", __cil_tmp33);
  tmp___0 = __get_free_pages(32976U, 0U);
  __cil_tmp34 = (unsigned long )info;
  __cil_tmp35 = __cil_tmp34 + 16;
  *((struct xenkbd_page **)__cil_tmp35) = (struct xenkbd_page *)tmp___0;
  }
  {
  __cil_tmp36 = (struct xenkbd_page *)0;
  __cil_tmp37 = (unsigned long )__cil_tmp36;
  __cil_tmp38 = (unsigned long )info;
  __cil_tmp39 = __cil_tmp38 + 16;
  __cil_tmp40 = *((struct xenkbd_page **)__cil_tmp39);
  __cil_tmp41 = (unsigned long )__cil_tmp40;
  if (__cil_tmp41 == __cil_tmp37) {
    goto error_nomem;
  } else {
  }
  }
  {
  __constr_expr_0_id111 = 0U;
  __cil_tmp42 = (unsigned long )dev;
  __cil_tmp43 = __cil_tmp42 + 16;
  __cil_tmp44 = *((char const **)__cil_tmp43);
  tmp___1 = xenbus_scanf(__constr_expr_0_id111, __cil_tmp44, "feature-abs-pointer",
                         "%d", & abs);
  }
  if (tmp___1 < 0) {
    __cil_tmp45 = & abs;
    *__cil_tmp45 = 0;
  } else {
  }
  {
  __cil_tmp46 = & abs;
  __cil_tmp47 = *__cil_tmp46;
  if (__cil_tmp47 != 0) {
    {
    __constr_expr_1_id112 = 0U;
    __cil_tmp48 = (unsigned long )dev;
    __cil_tmp49 = __cil_tmp48 + 8;
    __cil_tmp50 = *((char const **)__cil_tmp49);
    xenbus_printf(__constr_expr_1_id112, __cil_tmp50, "request-abs-pointer", "1");
    }
  } else {
  }
  }
  {
  kbd = input_allocate_device();
  }
  {
  __cil_tmp51 = (struct input_dev *)0;
  __cil_tmp52 = (unsigned long )__cil_tmp51;
  __cil_tmp53 = (unsigned long )kbd;
  if (__cil_tmp53 == __cil_tmp52) {
    goto error_nomem;
  } else {
  }
  }
  {
  *((char const **)kbd) = "Xen Virtual Keyboard";
  __cil_tmp54 = (unsigned long )kbd;
  __cil_tmp55 = __cil_tmp54 + 8;
  __cil_tmp56 = (unsigned long )info;
  __cil_tmp57 = __cil_tmp56 + 40;
  __cil_tmp58 = (char (*)[32U])__cil_tmp57;
  *((char const **)__cil_tmp55) = (char const *)__cil_tmp58;
  __cil_tmp59 = (unsigned long )kbd;
  __cil_tmp60 = __cil_tmp59 + 24;
  *((__u16 *)__cil_tmp60) = (__u16 )1U;
  __cil_tmp61 = 24 + 2;
  __cil_tmp62 = (unsigned long )kbd;
  __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
  *((__u16 *)__cil_tmp63) = (__u16 )22611U;
  __cil_tmp64 = 24 + 4;
  __cil_tmp65 = (unsigned long )kbd;
  __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
  *((__u16 *)__cil_tmp66) = (__u16 )65535U;
  __cil_tmp67 = (unsigned long )kbd;
  __cil_tmp68 = __cil_tmp67 + 40;
  __cil_tmp69 = (unsigned long (*)[1U])__cil_tmp68;
  __cil_tmp70 = (unsigned long volatile *)__cil_tmp69;
  __set_bit(1, __cil_tmp70);
  i = 1;
  }
  goto ldv_26550;
  ldv_26549:
  {
  __cil_tmp71 = (unsigned long )kbd;
  __cil_tmp72 = __cil_tmp71 + 48;
  __cil_tmp73 = (unsigned long (*)[12U])__cil_tmp72;
  __cil_tmp74 = (unsigned long volatile *)__cil_tmp73;
  __set_bit(i, __cil_tmp74);
  i = i + 1;
  }
  ldv_26550: ;
  if (i <= 239) {
    goto ldv_26549;
  } else {
    goto ldv_26551;
  }
  ldv_26551:
  i = 352;
  goto ldv_26553;
  ldv_26552:
  {
  __cil_tmp75 = (unsigned long )kbd;
  __cil_tmp76 = __cil_tmp75 + 48;
  __cil_tmp77 = (unsigned long (*)[12U])__cil_tmp76;
  __cil_tmp78 = (unsigned long volatile *)__cil_tmp77;
  __set_bit(i, __cil_tmp78);
  i = i + 1;
  }
  ldv_26553: ;
  if (i <= 766) {
    goto ldv_26552;
  } else {
    goto ldv_26554;
  }
  ldv_26554:
  {
  ret = input_register_device(kbd);
  }
  if (ret != 0) {
    {
    input_free_device(kbd);
    xenbus_dev_fatal(dev, ret, "input_register_device(kbd)");
    }
    goto error;
  } else {
  }
  {
  *((struct input_dev **)info) = kbd;
  ptr = input_allocate_device();
  }
  {
  __cil_tmp79 = (struct input_dev *)0;
  __cil_tmp80 = (unsigned long )__cil_tmp79;
  __cil_tmp81 = (unsigned long )ptr;
  if (__cil_tmp81 == __cil_tmp80) {
    goto error_nomem;
  } else {
  }
  }
  *((char const **)ptr) = "Xen Virtual Pointer";
  __cil_tmp82 = (unsigned long )ptr;
  __cil_tmp83 = __cil_tmp82 + 8;
  __cil_tmp84 = (unsigned long )info;
  __cil_tmp85 = __cil_tmp84 + 40;
  __cil_tmp86 = (char (*)[32U])__cil_tmp85;
  *((char const **)__cil_tmp83) = (char const *)__cil_tmp86;
  __cil_tmp87 = (unsigned long )ptr;
  __cil_tmp88 = __cil_tmp87 + 24;
  *((__u16 *)__cil_tmp88) = (__u16 )1U;
  __cil_tmp89 = 24 + 2;
  __cil_tmp90 = (unsigned long )ptr;
  __cil_tmp91 = __cil_tmp90 + __cil_tmp89;
  *((__u16 *)__cil_tmp91) = (__u16 )22611U;
  __cil_tmp92 = 24 + 4;
  __cil_tmp93 = (unsigned long )ptr;
  __cil_tmp94 = __cil_tmp93 + __cil_tmp92;
  *((__u16 *)__cil_tmp94) = (__u16 )65534U;
  {
  __cil_tmp95 = & abs;
  __cil_tmp96 = *__cil_tmp95;
  if (__cil_tmp96 != 0) {
    {
    __cil_tmp97 = (unsigned long )ptr;
    __cil_tmp98 = __cil_tmp97 + 40;
    __cil_tmp99 = (unsigned long (*)[1U])__cil_tmp98;
    __cil_tmp100 = (unsigned long volatile *)__cil_tmp99;
    __set_bit(3, __cil_tmp100);
    input_set_abs_params(ptr, 0U, 0, 800, 0, 0);
    input_set_abs_params(ptr, 1U, 0, 600, 0, 0);
    }
  } else {
    {
    input_set_capability(ptr, 2U, 0U);
    input_set_capability(ptr, 2U, 1U);
    }
  }
  }
  {
  input_set_capability(ptr, 2U, 8U);
  __cil_tmp101 = (unsigned long )ptr;
  __cil_tmp102 = __cil_tmp101 + 40;
  __cil_tmp103 = (unsigned long (*)[1U])__cil_tmp102;
  __cil_tmp104 = (unsigned long volatile *)__cil_tmp103;
  __set_bit(1, __cil_tmp104);
  i = 272;
  }
  goto ldv_26557;
  ldv_26556:
  {
  __cil_tmp105 = (unsigned long )ptr;
  __cil_tmp106 = __cil_tmp105 + 48;
  __cil_tmp107 = (unsigned long (*)[12U])__cil_tmp106;
  __cil_tmp108 = (unsigned long volatile *)__cil_tmp107;
  __set_bit(i, __cil_tmp108);
  i = i + 1;
  }
  ldv_26557: ;
  if (i <= 279) {
    goto ldv_26556;
  } else {
    goto ldv_26558;
  }
  ldv_26558:
  {
  ret = input_register_device(ptr);
  }
  if (ret != 0) {
    {
    input_free_device(ptr);
    xenbus_dev_fatal(dev, ret, "input_register_device(ptr)");
    }
    goto error;
  } else {
  }
  {
  __cil_tmp109 = (unsigned long )info;
  __cil_tmp110 = __cil_tmp109 + 8;
  *((struct input_dev **)__cil_tmp110) = ptr;
  ret = xenkbd_connect_backend(dev, info);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  return (0);
  error_nomem:
  {
  ret = -12;
  xenbus_dev_fatal(dev, ret, "allocating device memory");
  }
  error:
  {
  xenkbd_remove(dev);
  }
  return (ret);
}
}
static int xenkbd_resume(struct xenbus_device *dev )
{ struct xenkbd_info *info ;
  void *tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct xenkbd_page *__cil_tmp11 ;
  void *__cil_tmp12 ;
  {
  {
  __cil_tmp5 = (unsigned long )dev;
  __cil_tmp6 = __cil_tmp5 + 64;
  __cil_tmp7 = (struct device *)__cil_tmp6;
  __cil_tmp8 = (struct device const *)__cil_tmp7;
  tmp = dev_get_drvdata(__cil_tmp8);
  info = (struct xenkbd_info *)tmp;
  xenkbd_disconnect_backend(info);
  __cil_tmp9 = (unsigned long )info;
  __cil_tmp10 = __cil_tmp9 + 16;
  __cil_tmp11 = *((struct xenkbd_page **)__cil_tmp10);
  __cil_tmp12 = (void *)__cil_tmp11;
  memset(__cil_tmp12, 0, 4096UL);
  tmp___0 = xenkbd_connect_backend(dev, info);
  }
  return (tmp___0);
}
}
static int xenkbd_remove(struct xenbus_device *dev )
{ struct xenkbd_info *info ;
  void *tmp ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct device *__cil_tmp6 ;
  struct device const *__cil_tmp7 ;
  struct input_dev *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct input_dev *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct input_dev *__cil_tmp12 ;
  struct input_dev *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct input_dev *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct input_dev *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct xenkbd_page *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  void const *__cil_tmp26 ;
  {
  {
  __cil_tmp4 = (unsigned long )dev;
  __cil_tmp5 = __cil_tmp4 + 64;
  __cil_tmp6 = (struct device *)__cil_tmp5;
  __cil_tmp7 = (struct device const *)__cil_tmp6;
  tmp = dev_get_drvdata(__cil_tmp7);
  info = (struct xenkbd_info *)tmp;
  xenkbd_disconnect_backend(info);
  }
  {
  __cil_tmp8 = (struct input_dev *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = *((struct input_dev **)info);
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  if (__cil_tmp11 != __cil_tmp9) {
    {
    __cil_tmp12 = *((struct input_dev **)info);
    input_unregister_device(__cil_tmp12);
    }
  } else {
  }
  }
  {
  __cil_tmp13 = (struct input_dev *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )info;
  __cil_tmp16 = __cil_tmp15 + 8;
  __cil_tmp17 = *((struct input_dev **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 != __cil_tmp14) {
    {
    __cil_tmp19 = (unsigned long )info;
    __cil_tmp20 = __cil_tmp19 + 8;
    __cil_tmp21 = *((struct input_dev **)__cil_tmp20);
    input_unregister_device(__cil_tmp21);
    }
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )info;
  __cil_tmp23 = __cil_tmp22 + 16;
  __cil_tmp24 = *((struct xenkbd_page **)__cil_tmp23);
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  free_pages(__cil_tmp25, 0U);
  __cil_tmp26 = (void const *)info;
  kfree(__cil_tmp26);
  }
  return (0);
}
}
static int xenkbd_connect_backend(struct xenbus_device *dev , struct xenkbd_info *info )
{ int ret ;
  int evtchn ;
  struct xenbus_transaction xbt ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct xenkbd_page *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int __cil_tmp17 ;
  domid_t __cil_tmp18 ;
  int __cil_tmp19 ;
  domid_t __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int *__cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  char const *__cil_tmp26 ;
  void *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct xenkbd_page *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct xenbus_transaction *__cil_tmp35 ;
  struct xenbus_transaction __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  char const *__cil_tmp39 ;
  struct xenbus_transaction *__cil_tmp40 ;
  struct xenbus_transaction __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  char const *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  int __cil_tmp47 ;
  struct xenbus_transaction *__cil_tmp48 ;
  struct xenbus_transaction __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  char const *__cil_tmp52 ;
  int *__cil_tmp53 ;
  int __cil_tmp54 ;
  struct xenbus_transaction *__cil_tmp55 ;
  struct xenbus_transaction __cil_tmp56 ;
  enum xenbus_state __cil_tmp57 ;
  struct xenbus_transaction *__cil_tmp58 ;
  struct xenbus_transaction __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  void *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  int *__cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  int __cil_tmp71 ;
  grant_ref_t __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  u32 __cil_tmp36_id75 ;
  u32 __cil_tmp41_id76 ;
  u32 __cil_tmp49_id77 ;
  u32 __cil_tmp56_id78 ;
  u32 __cil_tmp59_id79 ;
  u32 __cil_tmp80 ;
  u32 __cil_tmp81 ;
  u32 __cil_tmp82 ;
  u32 __cil_tmp83 ;
  u32 __cil_tmp84 ;
  {
  {
  __cil_tmp10 = (unsigned long )info;
  __cil_tmp11 = __cil_tmp10 + 16;
  __cil_tmp12 = *((struct xenkbd_page **)__cil_tmp11);
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  tmp = __phys_addr(__cil_tmp13);
  __cil_tmp14 = tmp >> 12;
  tmp___0 = pfn_to_mfn(__cil_tmp14);
  __cil_tmp15 = (unsigned long )dev;
  __cil_tmp16 = __cil_tmp15 + 24;
  __cil_tmp17 = *((int *)__cil_tmp16);
  __cil_tmp18 = (domid_t )__cil_tmp17;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (domid_t )__cil_tmp19;
  ret = gnttab_grant_foreign_access(__cil_tmp20, tmp___0, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp21 = (unsigned long )info;
  __cil_tmp22 = __cil_tmp21 + 24;
  *((int *)__cil_tmp22) = ret;
  ret = xenbus_alloc_evtchn(dev, & evtchn);
  }
  if (ret != 0) {
    goto error_grant;
  } else {
  }
  {
  __cil_tmp23 = & evtchn;
  __cil_tmp24 = *__cil_tmp23;
  __cil_tmp25 = (unsigned int )__cil_tmp24;
  __cil_tmp26 = *((char const **)dev);
  __cil_tmp27 = (void *)info;
  ret = bind_evtchn_to_irqhandler(__cil_tmp25, & input_handler, 0UL, __cil_tmp26,
                                  __cil_tmp27);
  }
  if (ret < 0) {
    {
    xenbus_dev_fatal(dev, ret, "bind_evtchn_to_irqhandler");
    }
    goto error_evtchan;
  } else {
  }
  __cil_tmp28 = (unsigned long )info;
  __cil_tmp29 = __cil_tmp28 + 28;
  *((int *)__cil_tmp29) = ret;
  again:
  {
  ret = xenbus_transaction_start(& xbt);
  }
  if (ret != 0) {
    {
    xenbus_dev_fatal(dev, ret, "starting transaction");
    }
    goto error_irqh;
  } else {
  }
  {
  __cil_tmp30 = (unsigned long )info;
  __cil_tmp31 = __cil_tmp30 + 16;
  __cil_tmp32 = *((struct xenkbd_page **)__cil_tmp31);
  __cil_tmp33 = (unsigned long )__cil_tmp32;
  tmp___1 = __phys_addr(__cil_tmp33);
  __cil_tmp34 = tmp___1 >> 12;
  tmp___2 = pfn_to_mfn(__cil_tmp34);
  __cil_tmp35 = & xbt;
  __cil_tmp80 = __cil_tmp35->id;
  __cil_tmp36_id75 = __cil_tmp80;
  __cil_tmp37 = (unsigned long )dev;
  __cil_tmp38 = __cil_tmp37 + 8;
  __cil_tmp39 = *((char const **)__cil_tmp38);
  ret = xenbus_printf(__cil_tmp36_id75, __cil_tmp39, "page-ref", "%lu", tmp___2);
  }
  if (ret != 0) {
    goto error_xenbus;
  } else {
  }
  {
  __cil_tmp40 = & xbt;
  __cil_tmp81 = __cil_tmp40->id;
  __cil_tmp41_id76 = __cil_tmp81;
  __cil_tmp42 = (unsigned long )dev;
  __cil_tmp43 = __cil_tmp42 + 8;
  __cil_tmp44 = *((char const **)__cil_tmp43);
  __cil_tmp45 = (unsigned long )info;
  __cil_tmp46 = __cil_tmp45 + 24;
  __cil_tmp47 = *((int *)__cil_tmp46);
  ret = xenbus_printf(__cil_tmp41_id76, __cil_tmp44, "page-gref", "%u", __cil_tmp47);
  }
  if (ret != 0) {
    goto error_xenbus;
  } else {
  }
  {
  __cil_tmp48 = & xbt;
  __cil_tmp82 = __cil_tmp48->id;
  __cil_tmp49_id77 = __cil_tmp82;
  __cil_tmp50 = (unsigned long )dev;
  __cil_tmp51 = __cil_tmp50 + 8;
  __cil_tmp52 = *((char const **)__cil_tmp51);
  __cil_tmp53 = & evtchn;
  __cil_tmp54 = *__cil_tmp53;
  ret = xenbus_printf(__cil_tmp49_id77, __cil_tmp52, "event-channel", "%u", __cil_tmp54);
  }
  if (ret != 0) {
    goto error_xenbus;
  } else {
  }
  {
  __cil_tmp55 = & xbt;
  __cil_tmp83 = __cil_tmp55->id;
  __cil_tmp56_id78 = __cil_tmp83;
  ret = xenbus_transaction_end(__cil_tmp56_id78, 0);
  }
  if (ret != 0) {
    if (ret == -11) {
      goto again;
    } else {
    }
    {
    xenbus_dev_fatal(dev, ret, "completing transaction");
    }
    goto error_irqh;
  } else {
  }
  {
  __cil_tmp57 = (enum xenbus_state )3;
  xenbus_switch_state(dev, __cil_tmp57);
  }
  return (0);
  error_xenbus:
  {
  __cil_tmp58 = & xbt;
  __cil_tmp84 = __cil_tmp58->id;
  __cil_tmp59_id79 = __cil_tmp84;
  xenbus_transaction_end(__cil_tmp59_id79, 1);
  xenbus_dev_fatal(dev, ret, "writing xenstore");
  }
  error_irqh:
  {
  __cil_tmp60 = (unsigned long )info;
  __cil_tmp61 = __cil_tmp60 + 28;
  __cil_tmp62 = *((int *)__cil_tmp61);
  __cil_tmp63 = (unsigned int )__cil_tmp62;
  __cil_tmp64 = (void *)info;
  unbind_from_irqhandler(__cil_tmp63, __cil_tmp64);
  __cil_tmp65 = (unsigned long )info;
  __cil_tmp66 = __cil_tmp65 + 28;
  *((int *)__cil_tmp66) = -1;
  }
  error_evtchan:
  {
  __cil_tmp67 = & evtchn;
  __cil_tmp68 = *__cil_tmp67;
  xenbus_free_evtchn(dev, __cil_tmp68);
  }
  error_grant:
  {
  __cil_tmp69 = (unsigned long )info;
  __cil_tmp70 = __cil_tmp69 + 24;
  __cil_tmp71 = *((int *)__cil_tmp70);
  __cil_tmp72 = (grant_ref_t )__cil_tmp71;
  gnttab_end_foreign_access_ref(__cil_tmp72, 0);
  __cil_tmp73 = (unsigned long )info;
  __cil_tmp74 = __cil_tmp73 + 24;
  *((int *)__cil_tmp74) = -1;
  }
  return (ret);
}
}
static void xenkbd_disconnect_backend(struct xenkbd_info *info )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int __cil_tmp17 ;
  grant_ref_t __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  {
  {
  __cil_tmp2 = (unsigned long )info;
  __cil_tmp3 = __cil_tmp2 + 28;
  __cil_tmp4 = *((int *)__cil_tmp3);
  if (__cil_tmp4 >= 0) {
    {
    __cil_tmp5 = (unsigned long )info;
    __cil_tmp6 = __cil_tmp5 + 28;
    __cil_tmp7 = *((int *)__cil_tmp6);
    __cil_tmp8 = (unsigned int )__cil_tmp7;
    __cil_tmp9 = (void *)info;
    unbind_from_irqhandler(__cil_tmp8, __cil_tmp9);
    }
  } else {
  }
  }
  __cil_tmp10 = (unsigned long )info;
  __cil_tmp11 = __cil_tmp10 + 28;
  *((int *)__cil_tmp11) = -1;
  {
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + 24;
  __cil_tmp14 = *((int *)__cil_tmp13);
  if (__cil_tmp14 >= 0) {
    {
    __cil_tmp15 = (unsigned long )info;
    __cil_tmp16 = __cil_tmp15 + 24;
    __cil_tmp17 = *((int *)__cil_tmp16);
    __cil_tmp18 = (grant_ref_t )__cil_tmp17;
    gnttab_end_foreign_access_ref(__cil_tmp18, 0);
    }
  } else {
  }
  }
  __cil_tmp19 = (unsigned long )info;
  __cil_tmp20 = __cil_tmp19 + 24;
  *((int *)__cil_tmp20) = -1;
  return;
}
}
static void xenkbd_backend_changed(struct xenbus_device *dev , enum xenbus_state backend_state )
{ struct xenkbd_info *info ;
  void *tmp ;
  int ret ;
  int val ;
  struct xenbus_transaction __constr_expr_0 ;
  struct xenbus_transaction __constr_expr_1 ;
  struct xenbus_transaction __constr_expr_2 ;
  int tmp___0 ;
  struct xenbus_transaction __constr_expr_3 ;
  int tmp___1 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct device *__cil_tmp15 ;
  struct device const *__cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct xenbus_device *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  char const *__cil_tmp23 ;
  int *__cil_tmp24 ;
  int *__cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct xenbus_device *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char const *__cil_tmp32 ;
  enum xenbus_state __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  enum xenbus_state __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct xenbus_device *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  char const *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  struct input_dev *__cil_tmp46 ;
  int *__cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct xenbus_device *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  char const *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct input_dev *__cil_tmp57 ;
  int *__cil_tmp58 ;
  int __cil_tmp59 ;
  u32 __constr_expr_0_id60 ;
  u32 __constr_expr_1_id61 ;
  u32 __constr_expr_2_id62 ;
  u32 __constr_expr_3_id63 ;
  {
  {
  __cil_tmp13 = (unsigned long )dev;
  __cil_tmp14 = __cil_tmp13 + 64;
  __cil_tmp15 = (struct device *)__cil_tmp14;
  __cil_tmp16 = (struct device const *)__cil_tmp15;
  tmp = dev_get_drvdata(__cil_tmp16);
  info = (struct xenkbd_info *)tmp;
  }
  {
  __cil_tmp17 = (unsigned int )backend_state;
  if ((int )__cil_tmp17 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp17 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp17 == 7) {
    goto case_7;
  } else
  if ((int )__cil_tmp17 == 8) {
    goto case_8;
  } else
  if ((int )__cil_tmp17 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp17 == 6) {
    goto case_6;
  } else
  if ((int )__cil_tmp17 == 2) {
    goto case_2;
  } else
  if ((int )__cil_tmp17 == 4) {
    goto case_4;
  } else
  if ((int )__cil_tmp17 == 5) {
    goto case_5;
  } else
  if (0) {
    case_1: ;
    case_3: ;
    case_7: ;
    case_8: ;
    case_0: ;
    case_6: ;
    goto ldv_26595;
    case_2: ;
    InitWait:
    {
    __constr_expr_0_id60 = 0U;
    __cil_tmp18 = (unsigned long )info;
    __cil_tmp19 = __cil_tmp18 + 32;
    __cil_tmp20 = *((struct xenbus_device **)__cil_tmp19);
    __cil_tmp21 = (unsigned long )__cil_tmp20;
    __cil_tmp22 = __cil_tmp21 + 16;
    __cil_tmp23 = *((char const **)__cil_tmp22);
    ret = xenbus_scanf(__constr_expr_0_id60, __cil_tmp23, "feature-abs-pointer", "%d",
                       & val);
    }
    if (ret < 0) {
      __cil_tmp24 = & val;
      *__cil_tmp24 = 0;
    } else {
    }
    {
    __cil_tmp25 = & val;
    __cil_tmp26 = *__cil_tmp25;
    if (__cil_tmp26 != 0) {
      {
      __constr_expr_1_id61 = 0U;
      __cil_tmp27 = (unsigned long )info;
      __cil_tmp28 = __cil_tmp27 + 32;
      __cil_tmp29 = *((struct xenbus_device **)__cil_tmp28);
      __cil_tmp30 = (unsigned long )__cil_tmp29;
      __cil_tmp31 = __cil_tmp30 + 8;
      __cil_tmp32 = *((char const **)__cil_tmp31);
      ret = xenbus_printf(__constr_expr_1_id61, __cil_tmp32, "request-abs-pointer",
                          "1");
      }
      if (ret != 0) {
        {
        printk("<4>xen_kbdfront: xenkbd: can\'t request abs-pointer");
        }
      } else {
      }
    } else {
    }
    }
    {
    __cil_tmp33 = (enum xenbus_state )4;
    xenbus_switch_state(dev, __cil_tmp33);
    }
    goto ldv_26595;
    case_4: ;
    {
    __cil_tmp34 = (unsigned long )dev;
    __cil_tmp35 = __cil_tmp34 + 1216;
    __cil_tmp36 = *((enum xenbus_state *)__cil_tmp35);
    __cil_tmp37 = (unsigned int )__cil_tmp36;
    if (__cil_tmp37 != 4U) {
      goto InitWait;
    } else {
    }
    }
    {
    __constr_expr_2_id62 = 0U;
    __cil_tmp38 = (unsigned long )info;
    __cil_tmp39 = __cil_tmp38 + 32;
    __cil_tmp40 = *((struct xenbus_device **)__cil_tmp39);
    __cil_tmp41 = (unsigned long )__cil_tmp40;
    __cil_tmp42 = __cil_tmp41 + 16;
    __cil_tmp43 = *((char const **)__cil_tmp42);
    tmp___0 = xenbus_scanf(__constr_expr_2_id62, __cil_tmp43, "width", "%d", & val);
    }
    if (tmp___0 > 0) {
      {
      __cil_tmp44 = (unsigned long )info;
      __cil_tmp45 = __cil_tmp44 + 8;
      __cil_tmp46 = *((struct input_dev **)__cil_tmp45);
      __cil_tmp47 = & val;
      __cil_tmp48 = *__cil_tmp47;
      input_set_abs_params(__cil_tmp46, 0U, 0, __cil_tmp48, 0, 0);
      }
    } else {
    }
    {
    __constr_expr_3_id63 = 0U;
    __cil_tmp49 = (unsigned long )info;
    __cil_tmp50 = __cil_tmp49 + 32;
    __cil_tmp51 = *((struct xenbus_device **)__cil_tmp50);
    __cil_tmp52 = (unsigned long )__cil_tmp51;
    __cil_tmp53 = __cil_tmp52 + 16;
    __cil_tmp54 = *((char const **)__cil_tmp53);
    tmp___1 = xenbus_scanf(__constr_expr_3_id63, __cil_tmp54, "height", "%d", & val);
    }
    if (tmp___1 > 0) {
      {
      __cil_tmp55 = (unsigned long )info;
      __cil_tmp56 = __cil_tmp55 + 8;
      __cil_tmp57 = *((struct input_dev **)__cil_tmp56);
      __cil_tmp58 = & val;
      __cil_tmp59 = *__cil_tmp58;
      input_set_abs_params(__cil_tmp57, 1U, 0, __cil_tmp59, 0, 0);
      }
    } else {
    }
    goto ldv_26595;
    case_5:
    {
    xenbus_frontend_closed(dev);
    }
    goto ldv_26595;
  } else {
    switch_break: ;
  }
  }
  ldv_26595: ;
  return;
}
}
static struct xenbus_device_id const xenkbd_ids[2U] = { {{(char )'v', (char )'k', (char )'b', (char )'d', (char )'\000'}},
        {{(char )'\000'}}};
static struct xenbus_driver xenkbd_driver =
     {(struct xenbus_device_id const *)(& xenkbd_ids), & xenkbd_probe, & xenkbd_backend_changed,
    & xenkbd_remove, (int (*)(struct xenbus_device * ))0, & xenkbd_resume, (int (*)(struct xenbus_device * ,
                                                                                    struct kobj_uevent_env * ))0,
    {(char const *)(& xenkbd_ids), (struct bus_type *)0, & __this_module, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device * ))0, (int (*)(struct device * ))0,
     (void (*)(struct device * ))0, (int (*)(struct device * , pm_message_t ))0,
     (int (*)(struct device * ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (int (*)(struct xenbus_device * ))0, (int (*)(struct xenbus_device * ))0};
static int xenkbd_init(void)
{ int tmp ;
  unsigned int __cil_tmp2 ;
  unsigned int __cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  uint32_t __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  {
  {
  __cil_tmp2 = (unsigned int )xen_domain_type;
  if (__cil_tmp2 == 0U) {
    return (-19);
  } else {
  }
  }
  {
  __cil_tmp3 = (unsigned int )xen_domain_type;
  if (__cil_tmp3 != 0U) {
    {
    __cil_tmp4 = (unsigned int )xen_domain_type;
    if (__cil_tmp4 == 1U) {
      {
      __cil_tmp5 = (unsigned long )xen_start_info;
      __cil_tmp6 = __cil_tmp5 + 48;
      __cil_tmp7 = *((uint32_t *)__cil_tmp6);
      __cil_tmp8 = __cil_tmp7 & 2U;
      if (__cil_tmp8 != 0U) {
        return (-19);
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  tmp = xenbus_register_frontend(& xenkbd_driver);
  }
  return (tmp);
}
}
static void xenkbd_cleanup(void)
{
  {
  {
  xenbus_unregister_driver(& xenkbd_driver);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int var_input_handler_0_p0 ;
  void *var_input_handler_0_p1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = xenkbd_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_26644;
  ldv_26643:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      LDV_IN_INTERRUPT = 2;
      input_handler(var_input_handler_0_p0, var_input_handler_0_p1);
      LDV_IN_INTERRUPT = 1;
      }
      goto ldv_26641;
      switch_default: ;
      goto ldv_26641;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_26641: ;
  ldv_26644:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_26643;
  } else {
    goto ldv_26645;
  }
  ldv_26645: ;
  {
  xenkbd_cleanup();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
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
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int bind_evtchn_to_irqhandler(unsigned int arg0, irqreturn_t (*arg1)(int, void *), unsigned long arg2, const char *arg3, void *arg4) {
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
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_phys_to_machine(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int gnttab_end_foreign_access_ref(grant_ref_t arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gnttab_grant_foreign_access(domid_t arg0, unsigned long arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_free_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_set_abs_params(struct input_dev *arg0, unsigned int arg1, int arg2, int arg3, int arg4, int arg5) {
  return;
}
void input_set_capability(struct input_dev *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void input_unregister_device(struct input_dev *arg0) {
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
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
void notify_remote_via_irq(int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void unbind_from_irqhandler(unsigned int arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int xenbus_alloc_evtchn(struct xenbus_device *arg0, int *arg1) {
  return __VERIFIER_nondet_int();
}
void xenbus_dev_fatal(struct xenbus_device *arg0, int arg1, const char *arg2, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int xenbus_free_evtchn(struct xenbus_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_frontend_closed(struct xenbus_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_printf(u32 arg0, const char *arg1, const char *arg2, const char *arg3, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_register_frontend(struct xenbus_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_scanf(u32 arg0, const char *arg1, const char *arg2, const char *arg3, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_switch_state(struct xenbus_device *arg0, enum xenbus_state arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_transaction_end(u32 arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int xenbus_transaction_start(struct xenbus_transaction *arg0) {
  return __VERIFIER_nondet_int();
}
void xenbus_unregister_driver(struct xenbus_driver *arg0) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void *p) {
  free((void *)p);
}
