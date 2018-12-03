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
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2043_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2043_8 ldv_2043 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2050_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2050_10 ldv_2050 ;
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
struct __anonstruct_ldv_2103_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2118_13 {
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
union __anonunion_ldv_2119_11 {
   struct __anonstruct_ldv_2103_12 ldv_2103 ;
   struct __anonstruct_ldv_2118_13 ldv_2118 ;
};
struct desc_struct {
   union __anonunion_ldv_2119_11 ldv_2119 ;
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
union __anonunion_ldv_2775_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2775_18 ldv_2775 ;
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
struct __anonstruct_ldv_5181_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5187_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5188_22 {
   struct __anonstruct_ldv_5181_23 ldv_5181 ;
   struct __anonstruct_ldv_5187_24 ldv_5187 ;
};
union __anonunion_ldv_5197_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5188_22 ldv_5188 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5197_25 ldv_5197 ;
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
struct __anonstruct_ldv_6013_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6014_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6013_29 ldv_6013 ;
};
struct spinlock {
   union __anonunion_ldv_6014_28 ldv_6014 ;
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
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
struct nsproxy;
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
union __anonunion_ldv_14302_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14302_134 ldv_14302 ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_14998_136 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_14999_135 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_14998_136 ldv_14998 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14999_135 ldv_14999 ;
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
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
struct address_space;
union __anonunion_ldv_16379_142 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16389_146 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16391_145 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16389_146 ldv_16389 ;
   int units ;
};
struct __anonstruct_ldv_16393_144 {
   union __anonunion_ldv_16391_145 ldv_16391 ;
   atomic_t _count ;
};
union __anonunion_ldv_16394_143 {
   unsigned long counters ;
   struct __anonstruct_ldv_16393_144 ldv_16393 ;
};
struct __anonstruct_ldv_16395_141 {
   union __anonunion_ldv_16379_142 ldv_16379 ;
   union __anonunion_ldv_16394_143 ldv_16394 ;
};
struct __anonstruct_ldv_16402_148 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16406_147 {
   struct list_head lru ;
   struct __anonstruct_ldv_16402_148 ldv_16402 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16411_149 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16395_141 ldv_16395 ;
   union __anonunion_ldv_16406_147 ldv_16406 ;
   union __anonunion_ldv_16411_149 ldv_16411 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_151 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_150 {
   struct __anonstruct_linear_151 linear ;
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
   union __anonunion_shared_150 shared ;
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
   struct hlist_head ioctx_list ;
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
struct __anonstruct_sigset_t_152 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_152 sigset_t;
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
struct __anonstruct__kill_154 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_155 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_156 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_158 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_159 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_160 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_153 {
   int _pad[28U] ;
   struct __anonstruct__kill_154 _kill ;
   struct __anonstruct__timer_155 _timer ;
   struct __anonstruct__rt_156 _rt ;
   struct __anonstruct__sigchld_157 _sigchld ;
   struct __anonstruct__sigfault_158 _sigfault ;
   struct __anonstruct__sigpoll_159 _sigpoll ;
   struct __anonstruct__sigsys_160 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_153 _sifields ;
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
union __anonunion_ldv_17685_163 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17694_164 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_165 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_166 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17685_163 ldv_17685 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17694_164 ldv_17694 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_165 type_data ;
   union __anonunion_payload_166 payload ;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct sched_class;
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
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
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
struct proc_dir_entry;
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
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
struct i2c_board_info;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   int (*suspend)(struct i2c_client * , pm_message_t ) ;
   int (*resume)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct i2c_driver *driver ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
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
struct sensor_device_attribute_2 {
   struct device_attribute dev_attr ;
   u8 index ;
   u8 nr ;
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
struct __anonstruct_ldv_19909_169 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_19911_168 {
   struct __anonstruct_ldv_19909_169 ldv_19909 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_19911_168 ldv_19911 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_170 {
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
   union __anonunion_d_u_170 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
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
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
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
union __anonunion_ldv_20662_171 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_20662_171 ldv_20662 ;
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
union __anonunion_arg_173 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_172 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_173 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_172 read_descriptor_t;
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
union __anonunion_ldv_21096_174 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_21116_175 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_21132_176 {
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
   union __anonunion_ldv_21096_174 ldv_21096 ;
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
   union __anonunion_ldv_21116_175 ldv_21116 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_21132_176 ldv_21132 ;
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
union __anonunion_f_u_177 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_177 f_u ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct watchdog_info {
   __u32 options ;
   __u32 firmware_version ;
   __u8 identity[32U] ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct w83793_data {
   struct i2c_client *lm75[2U] ;
   struct device *hwmon_dev ;
   struct mutex update_lock ;
   char valid ;
   unsigned long last_updated ;
   unsigned long last_nonvolatile ;
   u8 bank ;
   u8 vrm ;
   u8 vid[2U] ;
   u8 in[10U][3U] ;
   u8 in_low_bits[3U] ;
   u16 has_fan ;
   u16 fan[12U] ;
   u16 fan_min[12U] ;
   s8 temp[6U][5U] ;
   u8 temp_low_bits ;
   u8 temp_mode[2U] ;
   u8 temp_critical ;
   u8 temp_fan_map[6U] ;
   u8 has_pwm ;
   u8 has_temp ;
   u8 has_vid ;
   u8 pwm_enable ;
   u8 pwm_uptime ;
   u8 pwm_downtime ;
   u8 pwm_default ;
   u8 pwm[8U][3U] ;
   u8 pwm_stop_time[8U] ;
   u8 temp_cruise[6U] ;
   u8 alarms[5U] ;
   u8 beeps[5U] ;
   u8 beep_enable ;
   u8 tolerance[3U] ;
   u8 sf2_pwm[6U][7U] ;
   u8 sf2_temp[6U][7U] ;
   struct i2c_client *client ;
   struct mutex watchdog_lock ;
   struct list_head list ;
   struct kref kref ;
   struct miscdevice watchdog_miscdev ;
   unsigned long watchdog_is_open ;
   char watchdog_expect_close ;
   char watchdog_name[10U] ;
   unsigned int watchdog_caused_reboot ;
   int watchdog_timeout ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___39;
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
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
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2,%0; sete %1": "+m" (v->counter),
                       "=qm" (c): "ir" (i): "memory");
  return ((int )c);
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
  goto ldv_5527;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5527;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5527;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5527;
  default:
  __xadd_wrong_size();
  }
  ldv_5527: ;
  return (__ret + i);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_41(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_w83793_data(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_w83793_data(struct mutex *lock ) ;
void ldv_mutex_lock_watchdog_data_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_watchdog_data_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_watchdog_data_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_watchdog_lock_of_w83793_data(struct mutex *lock ) ;
void ldv_mutex_unlock_watchdog_lock_of_w83793_data(struct mutex *lock ) ;
extern unsigned long volatile jiffies ;
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
      warn_slowpath_null("include/linux/kref.h", 46);
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
    warn_slowpath_null("include/linux/kref.h", 70);
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
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_crit(struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_byte_data(struct i2c_client const * , u8 , u8 ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern struct i2c_client *i2c_new_dummy(struct i2c_adapter * , u16 ) ;
extern void i2c_unregister_device(struct i2c_client * ) ;
__inline static u32 i2c_get_functionality(struct i2c_adapter *adap )
{
  u32 tmp ;
  {
  tmp = (*((adap->algo)->functionality))(adap);
  return (tmp);
}
}
__inline static int i2c_check_functionality(struct i2c_adapter *adap , u32 func )
{
  u32 tmp ;
  {
  tmp = i2c_get_functionality(adap);
  return ((tmp & func) == func);
}
}
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
extern int vid_from_reg(int , u8 ) ;
extern u8 vid_which_vrm(void) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern int nonseekable_open(struct inode * , struct file * ) ;
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
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
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
static unsigned short force_subclients[4U] ;
static bool reset ;
static int timeout = 2;
static bool nowayout = 1;
static u16 W83793_REG_TEMP_MODE[2U] = { 94U, 95U};
static u16 W83793_REG_TEMP[6U][5U] = { { 28U, 120U, 121U, 122U,
            123U},
   { 29U, 124U, 125U, 126U,
            127U},
   { 30U, 128U, 129U, 130U,
            131U},
   { 31U, 132U, 133U, 134U,
            135U},
   { 32U, 136U, 137U, 138U,
            139U},
   { 33U, 140U, 141U, 142U,
            143U}};
static u16 const W83793_REG_IN[10U][3U] =
  { { 16U, 96U, 97U},
   { 17U, 98U, 99U},
   { 18U, 100U, 101U},
   { 20U, 106U, 107U},
   { 21U, 108U, 109U},
   { 22U, 110U, 111U},
   { 23U, 112U, 113U},
   { 24U, 114U, 115U},
   { 25U, 116U, 117U},
   { 26U, 118U, 119U}};
static u16 const W83793_REG_IN_LOW_BITS[3U] = { 27U, 104U, 105U};
static u8 scale_in[10U] =
  { 2U, 2U, 2U, 16U,
        16U, 16U, 8U, 24U,
        24U, 16U};
static u8 scale_in_add[10U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 150U,
        150U, 0U};
__inline static unsigned long FAN_FROM_REG(u16 val )
{
  {
  if ((unsigned int )val > 4094U || (unsigned int )val == 0U) {
    return (0UL);
  } else {
  }
  return (1350000UL / (unsigned long )val);
}
}
__inline static u16 FAN_TO_REG(long rpm )
{
  long __val ;
  long __min ;
  long __max ;
  {
  if (rpm <= 0L) {
    return (4095U);
  } else {
  }
  __val = ((rpm >> 1) + 1350000L) / rpm;
  __min = 1L;
  __max = 4094L;
  __val = __min > __val ? __min : __val;
  return ((u16 )(__max < __val ? __max : __val));
}
}
__inline static unsigned long TIME_FROM_REG(u8 reg )
{
  {
  return ((unsigned long )((int )reg * 100));
}
}
__inline static u8 TIME_TO_REG(unsigned long val )
{
  unsigned long __val ;
  unsigned long __min ;
  unsigned long __max ;
  {
  __val = (val + 50UL) / 100UL;
  __min = 0UL;
  __max = 255UL;
  __val = __min > __val ? __min : __val;
  return ((u8 )(__max < __val ? __max : __val));
}
}
__inline static long TEMP_FROM_REG(s8 reg )
{
  {
  return ((long )((int )reg * 1000));
}
}
__inline static s8 TEMP_TO_REG(long val , s8 min , s8 max )
{
  long __val ;
  long __min ;
  long __max ;
  {
  __val = ((val < 0L ? -500L : 500L) + val) / 1000L;
  __min = (long )min;
  __max = (long )max;
  __val = __min > __val ? __min : __val;
  return ((s8 )(__max < __val ? __max : __val));
}
}
static struct list_head watchdog_data_list = {& watchdog_data_list, & watchdog_data_list};
static struct mutex watchdog_data_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "watchdog_data_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& watchdog_data_mutex.wait_list,
                                                                                  & watchdog_data_mutex.wait_list},
    0, 0, (void *)(& watchdog_data_mutex), {0, {0, 0}, "watchdog_data_mutex", 0, 0UL}};
static void w83793_release_resources(struct kref *ref )
{
  struct w83793_data *data ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  data = (struct w83793_data *)__mptr + 0xfffffffffffffd58UL;
  kfree((void const *)data);
  return;
}
}
static u8 w83793_read_value(struct i2c_client *client , u16 reg ) ;
static int w83793_write_value(struct i2c_client *client , u16 reg , u8 value ) ;
static int w83793_probe(struct i2c_client *client , struct i2c_device_id const *id ) ;
static int w83793_detect(struct i2c_client *client , struct i2c_board_info *info ) ;
static int w83793_remove(struct i2c_client *client ) ;
static void w83793_init_client(struct i2c_client *client ) ;
static void w83793_update_nonvolatile(struct device *dev ) ;
static struct w83793_data *w83793_update_device(struct device *dev ) ;
struct i2c_device_id const __mod_i2c_device_table ;
static ssize_t show_vrm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83793_data *data ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83793_data *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->vrm);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_vid(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int index ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = w83793_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  index = (int )sensor_attr->index;
  tmp___0 = vid_from_reg((int )data->vid[index], (int )data->vrm);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_vrm(struct device *dev , struct device_attribute *attr , char const *buf ,
                         size_t count )
{
  struct w83793_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83793_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  data->vrm = (u8 )val;
  return ((ssize_t )count);
}
}
static ssize_t show_alarm_beep(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int bit ;
  u8 val ;
  int tmp___0 ;
  {
  tmp = w83793_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index >> 3;
  bit = (int )sensor_attr->index & 7;
  if (nr == 0) {
    val = (unsigned int )((u8 )((int )data->alarms[index] >> bit)) & 1U;
  } else {
    val = (unsigned int )((u8 )((int )data->beeps[index] >> bit)) & 1U;
  }
  tmp___0 = sprintf(buf, "%u\n", (int )val);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr___0 ;
  int index ;
  int shift ;
  u8 beep_bit ;
  unsigned long val ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  __mptr___0 = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr___0;
  index = (int )sensor_attr->index >> 3;
  shift = (int )sensor_attr->index & 7;
  beep_bit = (u8 )(1 << shift);
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 1UL) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_6(& data->update_lock);
  data->beeps[index] = w83793_read_value(client, (int )((unsigned int )((u16 )index) + 83U));
  data->beeps[index] = (u8 )((int )((signed char )data->beeps[index]) & ~ ((int )((signed char )beep_bit)));
  data->beeps[index] = (int )data->beeps[index] | (int )((u8 )(val << shift));
  w83793_write_value(client, (int )((unsigned int )((u16 )index) + 83U), (int )data->beeps[index]);
  ldv_mutex_unlock_7(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_beep_enable(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83793_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", ((int )data->beep_enable >> 1) & 1);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep_enable(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  u8 tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 1UL) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_8(& data->update_lock);
  tmp___0 = w83793_read_value(client, 82);
  data->beep_enable = (unsigned int )tmp___0 & 253U;
  data->beep_enable = (int )data->beep_enable | ((int )((u8 )val) << 1U);
  w83793_write_value(client, 82, (int )data->beep_enable);
  ldv_mutex_unlock_9(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_chassis_clear(struct device *dev , struct device_attribute *attr ,
                                   char const *buf , size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  unsigned long val ;
  u8 reg ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val != 0UL) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_10(& data->update_lock);
  reg = w83793_read_value(client, 74);
  w83793_write_value(client, 74, (int )((unsigned int )reg | 128U));
  data->valid = 0;
  ldv_mutex_unlock_11(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_fan(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  u16 val ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  if (nr == 0) {
    val = (unsigned int )data->fan[index] & 4095U;
  } else {
    val = (unsigned int )data->fan_min[index] & 4095U;
  }
  tmp___0 = FAN_FROM_REG((int )val);
  tmp___1 = sprintf(buf, "%lu\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_fan_min(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int index ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83793_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  u16 tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  index = (int )sensor_attr->index;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  tmp___0 = FAN_TO_REG((long )val);
  val = (unsigned long )tmp___0;
  ldv_mutex_lock_12(& data->update_lock);
  data->fan_min[index] = (u16 )val;
  w83793_write_value(client, (int )((unsigned int )((u16 )(index + 72)) * 2U), (int )((u8 )(val >> 8)));
  w83793_write_value(client, (int )((unsigned int )((u16 )(index + 72)) * 2U + 1U),
                     (int )((u8 )val));
  ldv_mutex_unlock_13(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_pwm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  u16 val ;
  int nr ;
  int index ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  tmp = w83793_update_device(dev);
  data = tmp;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  if (nr == 3) {
    tmp___0 = TIME_FROM_REG((int )data->pwm_stop_time[index]);
    val = (u16 )tmp___0;
  } else {
    val = (unsigned int )((u16 )((int )data->pwm[index][nr] << 2)) & 255U;
  }
  tmp___1 = sprintf(buf, "%d\n", (int )val);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_pwm(struct device *dev , struct device_attribute *attr , char const *buf ,
                         size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr___0 ;
  int nr ;
  int index ;
  unsigned long val ;
  int err ;
  u8 tmp___0 ;
  unsigned long __val ;
  unsigned long __min ;
  unsigned long __max ;
  u8 tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  __mptr___0 = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr___0;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_14(& data->update_lock);
  if (nr == 3) {
    tmp___0 = TIME_TO_REG(val);
    val = (unsigned long )tmp___0;
    data->pwm_stop_time[index] = (u8 )val;
    w83793_write_value(client, (int )((unsigned int )((u16 )index) + 552U), (int )((u8 )val));
  } else {
    __val = val;
    __min = 0UL;
    __max = 255UL;
    __val = __min > __val ? __min : __val;
    val = (__max < __val ? __max : __val) >> 2;
    tmp___1 = w83793_read_value(client, (int )((nr != 0 ? (nr == 1 ? 544U : 536U) : 179U) + (unsigned int )((u16 )index)));
    data->pwm[index][nr] = (unsigned int )tmp___1 & 192U;
    data->pwm[index][nr] = (int )data->pwm[index][nr] | (int )((u8 )val);
    w83793_write_value(client, (int )((nr != 0 ? (nr == 1 ? 544U : 536U) : 179U) + (unsigned int )((u16 )index)),
                       (int )data->pwm[index][nr]);
  }
  ldv_mutex_unlock_15(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_temp(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  long temp ;
  long tmp___0 ;
  int low ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  tmp___0 = TEMP_FROM_REG((int )data->temp[index][nr]);
  temp = tmp___0;
  if (nr == 0 && index <= 3) {
    low = (((int )data->temp_low_bits >> index * 2) & 3) * 250;
    temp = (long )(temp <= 0L ? - low : low) + temp;
  } else {
  }
  tmp___1 = sprintf(buf, "%ld\n", temp);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_temp(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83793_data *data ;
  void *tmp ;
  long tmp___0 ;
  int err ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtol(buf, 10U, & tmp___0);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_16(& data->update_lock);
  data->temp[index][nr] = TEMP_TO_REG(tmp___0, -128, 127);
  w83793_write_value(client, (int )W83793_REG_TEMP[index][nr], (int )((u8 )data->temp[index][nr]));
  ldv_mutex_unlock_17(& data->update_lock);
  return ((ssize_t )count);
}
}
static u8 TO_TEMP_MODE[4U] = { 0U, 0U, 0U, 6U};
static ssize_t show_temp_mode(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int index ;
  u8 mask ;
  u8 shift ;
  u8 tmp___0 ;
  int tmp___1 ;
  {
  tmp = w83793_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  index = (int )sensor_attr->index;
  mask = index <= 3 ? 3U : 1U;
  shift = index <= 3 ? (unsigned int )((u8 )index) * 2U : (unsigned int )((u8 )index) + 252U;
  index = index > 3;
  tmp___0 = (u8 )((int )((signed char )((int )data->temp_mode[index] >> (int )shift)) & (int )((signed char )mask));
  if ((unsigned int )tmp___0 == 1U) {
    tmp___0 = index == 0 ? 3U : 4U;
  } else {
    tmp___0 = TO_TEMP_MODE[(int )tmp___0];
  }
  tmp___1 = sprintf(buf, "%d\n", (int )tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_temp_mode(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr___0 ;
  int index ;
  u8 mask ;
  u8 shift ;
  unsigned long val ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  __mptr___0 = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr___0;
  index = (int )sensor_attr->index;
  mask = index <= 3 ? 3U : 1U;
  shift = index <= 3 ? (unsigned int )((u8 )index) * 2U : (unsigned int )((u8 )index) + 252U;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val == 6UL && index <= 3) {
    val = val - 3UL;
  } else
  if ((val == 3UL && index <= 3) || (val == 4UL && index > 3)) {
    val = val != 0UL;
  } else {
    return (-22L);
  }
  index = index > 3;
  ldv_mutex_lock_18(& data->update_lock);
  data->temp_mode[index] = w83793_read_value(client, (int )W83793_REG_TEMP_MODE[index]);
  data->temp_mode[index] = (u8 )((int )((signed char )data->temp_mode[index]) & ~ ((int )((signed char )((int )mask << (int )shift))));
  data->temp_mode[index] = (int )data->temp_mode[index] | (int )((u8 )(val << (int )shift));
  w83793_write_value(client, (int )W83793_REG_TEMP_MODE[index], (int )data->temp_mode[index]);
  ldv_mutex_unlock_19(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_sf_setup(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  u32 val ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  tmp = w83793_update_device(dev);
  data = tmp;
  val = 0U;
  if (nr == 0) {
    val = (u32 )((int )data->pwm_default << 2) & 255U;
  } else
  if (nr == 1) {
    tmp___0 = TIME_FROM_REG((int )data->pwm_uptime);
    val = (u32 )tmp___0;
  } else
  if (nr == 2) {
    tmp___1 = TIME_FROM_REG((int )data->pwm_downtime);
    val = (u32 )tmp___1;
  } else
  if (nr == 3) {
    tmp___2 = TEMP_FROM_REG((int )((s8 )data->temp_critical) & 127);
    val = (u32 )tmp___2;
  } else {
  }
  tmp___3 = sprintf(buf, "%d\n", val);
  return ((ssize_t )tmp___3);
}
}
static ssize_t store_sf_setup(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83793_data *data ;
  void *tmp ;
  long val ;
  int err ;
  u8 tmp___0 ;
  long __val ;
  long __min ;
  long __max ;
  u8 tmp___1 ;
  s8 tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_20(& data->update_lock);
  if (nr == 0) {
    tmp___0 = w83793_read_value(client, 178);
    data->pwm_default = (unsigned int )tmp___0 & 192U;
    __val = val;
    __min = 0L;
    __max = 255L;
    __val = __min > __val ? __min : __val;
    data->pwm_default = (u8 )((int )((signed char )data->pwm_default) | (int )((signed char )((__max < __val ? __max : __val) >> 2)));
    w83793_write_value(client, 178, (int )data->pwm_default);
  } else
  if (nr == 1) {
    data->pwm_uptime = TIME_TO_REG((unsigned long )val);
    data->pwm_uptime = (int )data->pwm_uptime + ((unsigned int )data->pwm_uptime == 0U);
    w83793_write_value(client, 195, (int )data->pwm_uptime);
  } else
  if (nr == 2) {
    data->pwm_downtime = TIME_TO_REG((unsigned long )val);
    data->pwm_downtime = (int )data->pwm_downtime + ((unsigned int )data->pwm_downtime == 0U);
    w83793_write_value(client, 196, (int )data->pwm_downtime);
  } else {
    tmp___1 = w83793_read_value(client, 197);
    data->temp_critical = (unsigned int )tmp___1 & 128U;
    tmp___2 = TEMP_TO_REG(val, 0, 127);
    data->temp_critical = (u8 )((int )((signed char )data->temp_critical) | (int )tmp___2);
    w83793_write_value(client, 197, (int )data->temp_critical);
  }
  ldv_mutex_unlock_21(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_sf_ctrl(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  u32 val ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  if (nr == 0) {
    val = (u32 )data->temp_fan_map[index];
  } else
  if (nr == 1) {
    val = (u32 )((((int )data->pwm_enable >> index) & 1) + 2);
  } else
  if (nr == 2) {
    tmp___0 = TEMP_FROM_REG((int )((s8 )data->temp_cruise[index]) & 127);
    val = (u32 )tmp___0;
  } else {
    val = (u32 )((int )data->tolerance[index >> 1] >> (index & 1 ? 4 : 0));
    tmp___1 = TEMP_FROM_REG((int )((s8 )val) & 15);
    val = (u32 )tmp___1;
  }
  tmp___2 = sprintf(buf, "%d\n", val);
  return ((ssize_t )tmp___2);
}
}
static ssize_t store_sf_ctrl(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83793_data *data ;
  void *tmp ;
  long val ;
  int err ;
  long __val ;
  long __min ;
  long __max ;
  s8 tmp___0 ;
  int i ;
  u8 shift ;
  s8 tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_22(& data->update_lock);
  if (nr == 0) {
    __val = val;
    __min = 0L;
    __max = 255L;
    __val = __min > __val ? __min : __val;
    val = __max < __val ? __max : __val;
    w83793_write_value(client, (int )((unsigned int )((u16 )index) + 513U), (int )((u8 )val));
    data->temp_fan_map[index] = (u8 )val;
  } else
  if (nr == 1) {
    if (val == 2L || val == 3L) {
      data->pwm_enable = w83793_read_value(client, 519);
      if (val != 2L) {
        data->pwm_enable = (u8 )((int )((signed char )data->pwm_enable) | (int )((signed char )(1 << index)));
      } else {
        data->pwm_enable = (u8 )((int )((signed char )data->pwm_enable) & ~ ((int )((signed char )(1 << index))));
      }
      w83793_write_value(client, 519, (int )data->pwm_enable);
    } else {
      ldv_mutex_unlock_23(& data->update_lock);
      return (-22L);
    }
  } else
  if (nr == 2) {
    data->temp_cruise[index] = w83793_read_value(client, (int )((unsigned int )((u16 )index) + 528U));
    data->temp_cruise[index] = (unsigned int )data->temp_cruise[index] & 128U;
    tmp___0 = TEMP_TO_REG(val, 0, 127);
    data->temp_cruise[index] = (u8 )((int )((signed char )data->temp_cruise[index]) | (int )tmp___0);
    w83793_write_value(client, (int )((unsigned int )((u16 )index) + 528U), (int )data->temp_cruise[index]);
  } else {
    i = index >> 1;
    shift = index & 1 ? 4U : 0U;
    data->tolerance[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 520U));
    data->tolerance[i] = (u8 )((int )((signed char )data->tolerance[i]) & ~ ((int )((signed char )(15 << (int )shift))));
    tmp___1 = TEMP_TO_REG(val, 0, 15);
    data->tolerance[i] = (u8 )((int )((signed char )data->tolerance[i]) | (int )((signed char )((int )tmp___1 << (int )shift)));
    w83793_write_value(client, (int )((unsigned int )((u16 )i) + 520U), (int )data->tolerance[i]);
  }
  ldv_mutex_unlock_24(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_sf2_pwm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", ((int )data->sf2_pwm[index][nr] << 2) & 255);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_sf2_pwm(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr___0 ;
  int nr ;
  int index ;
  unsigned long val ;
  int err ;
  unsigned long __val ;
  unsigned long __min ;
  unsigned long __max ;
  u8 tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  __mptr___0 = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr___0;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  __val = val;
  __min = 0UL;
  __max = 255UL;
  __val = __min > __val ? __min : __val;
  val = (__max < __val ? __max : __val) >> 2;
  ldv_mutex_lock_25(& data->update_lock);
  tmp___0 = w83793_read_value(client, (int )((unsigned int )(((int )((u16 )index) << 4U) + (int )((u16 )nr)) + 568U));
  data->sf2_pwm[index][nr] = (unsigned int )tmp___0 & 192U;
  data->sf2_pwm[index][nr] = (int )data->sf2_pwm[index][nr] | (int )((u8 )val);
  w83793_write_value(client, (int )((unsigned int )(((int )((u16 )index) << 4U) + (int )((u16 )nr)) + 568U),
                     (int )data->sf2_pwm[index][nr]);
  ldv_mutex_unlock_26(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_sf2_temp(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  tmp___0 = TEMP_FROM_REG((int )((s8 )data->sf2_temp[index][nr]) & 127);
  tmp___1 = sprintf(buf, "%ld\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_sf2_temp(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr___0 ;
  int nr ;
  int index ;
  long val ;
  int err ;
  s8 tmp___0 ;
  u8 tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  __mptr___0 = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr___0;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  tmp___0 = TEMP_TO_REG(val, 0, 127);
  val = (long )tmp___0;
  ldv_mutex_lock_27(& data->update_lock);
  tmp___1 = w83793_read_value(client, (int )((unsigned int )(((int )((u16 )index) << 4U) + (int )((u16 )nr)) + 560U));
  data->sf2_temp[index][nr] = (unsigned int )tmp___1 & 128U;
  data->sf2_temp[index][nr] = (u8 )((int )((signed char )data->sf2_temp[index][nr]) | (int )((signed char )val));
  w83793_write_value(client, (int )((unsigned int )(((int )((u16 )index) << 4U) + (int )((u16 )nr)) + 560U),
                     (int )data->sf2_temp[index][nr]);
  ldv_mutex_unlock_28(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_in(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct w83793_data *data ;
  struct w83793_data *tmp ;
  u16 val ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  tmp = w83793_update_device(dev);
  data = tmp;
  val = (u16 )data->in[index][nr];
  if (index <= 2) {
    val = (int )val << 2U;
    val = ((unsigned int )((u16 )((int )data->in_low_bits[nr] >> index * 2)) & 3U) + (unsigned int )val;
  } else {
  }
  val = (int )((u16 )scale_in[index]) * (int )val + (int )((u16 )scale_in_add[index]);
  tmp___0 = sprintf(buf, "%d\n", (int )val);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_in(struct device *dev , struct device_attribute *attr , char const *buf ,
                        size_t count )
{
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83793_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  unsigned long __val ;
  unsigned long __min ;
  unsigned long __max ;
  unsigned long __val___0 ;
  unsigned long __min___0 ;
  unsigned long __max___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  index = (int )sensor_attr->index;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  val = ((unsigned long )((unsigned int )scale_in[index] / 2U) + val) / (unsigned long )scale_in[index];
  ldv_mutex_lock_29(& data->update_lock);
  if (index > 2) {
    if (nr == 1 || nr == 2) {
      val = val - (unsigned long )((int )scale_in_add[index] / (int )scale_in[index]);
    } else {
    }
    __val = val;
    __min = 0UL;
    __max = 255UL;
    __val = __min > __val ? __min : __val;
    val = __max < __val ? __max : __val;
  } else {
    __val___0 = val;
    __min___0 = 0UL;
    __max___0 = 1023UL;
    __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
    val = __max___0 < __val___0 ? __max___0 : __val___0;
    data->in_low_bits[nr] = w83793_read_value(client, (int )W83793_REG_IN_LOW_BITS[nr]);
    data->in_low_bits[nr] = (u8 )((int )((signed char )data->in_low_bits[nr]) & ~ ((int )((signed char )(3 << index * 2))));
    data->in_low_bits[nr] = (int )data->in_low_bits[nr] | (int )((u8 )((val & 3UL) << index * 2));
    w83793_write_value(client, (int )W83793_REG_IN_LOW_BITS[nr], (int )data->in_low_bits[nr]);
    val = val >> 2;
  }
  data->in[index][nr] = (u8 )val;
  w83793_write_value(client, (int )W83793_REG_IN[index][nr], (int )data->in[index][nr]);
  ldv_mutex_unlock_30(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute_2 w83793_sensor_attr_2[82U] =
  { {{{"in0_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 0U, 0U},
        {{{"in0_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 0U, 1U},
        {{{"in0_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 0U, 2U},
        {{{"in0_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 0U, 0U},
        {{{"in0_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 0U, 1U},
        {{{"in1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 1U, 0U},
        {{{"in1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 1U, 1U},
        {{{"in1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 1U, 2U},
        {{{"in1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 1U, 0U},
        {{{"in1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 1U, 1U},
        {{{"in2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 2U, 0U},
        {{{"in2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 2U, 1U},
        {{{"in2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 2U, 2U},
        {{{"in2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 2U, 0U},
        {{{"in2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 2U, 1U},
        {{{"in3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 3U, 0U},
        {{{"in3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 3U, 1U},
        {{{"in3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 3U, 2U},
        {{{"in3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 4U, 0U},
        {{{"in3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 4U, 1U},
        {{{"in4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 4U, 0U},
        {{{"in4_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 4U, 1U},
        {{{"in4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 4U, 2U},
        {{{"in4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 5U, 0U},
        {{{"in4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 5U, 1U},
        {{{"in5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 5U, 0U},
        {{{"in5_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 5U, 1U},
        {{{"in5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 5U, 2U},
        {{{"in5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 6U, 0U},
        {{{"in5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 6U, 1U},
        {{{"in6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 6U, 0U},
        {{{"in6_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 6U, 1U},
        {{{"in6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 6U, 2U},
        {{{"in6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 7U, 0U},
        {{{"in6_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 7U, 1U},
        {{{"in7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 7U, 0U},
        {{{"in7_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 7U, 1U},
        {{{"in7_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 7U, 2U},
        {{{"in7_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 8U, 0U},
        {{{"in7_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 8U, 1U},
        {{{"in8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 8U, 0U},
        {{{"in8_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 8U, 1U},
        {{{"in8_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 8U, 2U},
        {{{"in8_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 9U, 0U},
        {{{"in8_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 9U, 1U},
        {{{"in9_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 9U, 0U},
        {{{"in9_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 9U, 1U},
        {{{"in9_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, & store_in}, 9U, 2U},
        {{{"in9_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 10U, 0U},
        {{{"in9_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 10U, 1U},
        {{{"fan1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 18U, 0U},
        {{{"fan1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 18U, 1U},
        {{{"fan1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 0U, 0U},
        {{{"fan1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 0U, 1U},
        {{{"fan2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 19U, 0U},
        {{{"fan2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 19U, 1U},
        {{{"fan2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 1U, 0U},
        {{{"fan2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 1U, 1U},
        {{{"fan3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 20U, 0U},
        {{{"fan3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 20U, 1U},
        {{{"fan3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 2U, 0U},
        {{{"fan3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 2U, 1U},
        {{{"fan4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 21U, 0U},
        {{{"fan4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 21U, 1U},
        {{{"fan4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 3U, 0U},
        {{{"fan4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 3U, 1U},
        {{{"fan5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 22U, 0U},
        {{{"fan5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 22U, 1U},
        {{{"fan5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 4U, 0U},
        {{{"fan5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 4U, 1U},
        {{{"pwm1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 0U, 0U},
        {{{"pwm1_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 0U, 2U},
        {{{"pwm1_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 0U, 1U},
        {{{"pwm1_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 0U, 3U},
        {{{"pwm2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 1U, 0U},
        {{{"pwm2_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 1U, 2U},
        {{{"pwm2_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 1U, 1U},
        {{{"pwm2_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 1U, 3U},
        {{{"pwm3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 2U, 0U},
        {{{"pwm3_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 2U, 2U},
        {{{"pwm3_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 2U, 1U},
        {{{"pwm3_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 2U, 3U}};
static struct sensor_device_attribute_2 w83793_temp[156U] =
  { {{{"temp1_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 0U, 255U},
        {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 0U, 0U},
        {{{"temp1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 0U, 1U},
        {{{"temp1_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 0U, 2U},
        {{{"temp1_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 0U, 3U},
        {{{"temp1_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 0U, 4U},
        {{{"temp1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 12U, 0U},
        {{{"temp1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 12U, 1U},
        {{{"temp1_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 0U, 0U},
        {{{"temp1_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 0U, 1U},
        {{{"thermal_cruise1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 0U, 2U},
        {{{"tolerance1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 0U, 3U},
        {{{"temp1_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 0U},
        {{{"temp1_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 1U},
        {{{"temp1_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 2U},
        {{{"temp1_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 3U},
        {{{"temp1_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 4U},
        {{{"temp1_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 5U},
        {{{"temp1_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 0U, 6U},
        {{{"temp1_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 0U},
        {{{"temp1_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 1U},
        {{{"temp1_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 2U},
        {{{"temp1_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 3U},
        {{{"temp1_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 4U},
        {{{"temp1_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 5U},
        {{{"temp1_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 0U, 6U},
        {{{"temp2_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 1U, 255U},
        {{{"temp2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 1U, 0U},
        {{{"temp2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 1U, 1U},
        {{{"temp2_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 1U, 2U},
        {{{"temp2_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 1U, 3U},
        {{{"temp2_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 1U, 4U},
        {{{"temp2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 13U, 0U},
        {{{"temp2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 13U, 1U},
        {{{"temp2_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 1U, 0U},
        {{{"temp2_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 1U, 1U},
        {{{"thermal_cruise2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 1U, 2U},
        {{{"tolerance2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 1U, 3U},
        {{{"temp2_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 0U},
        {{{"temp2_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 1U},
        {{{"temp2_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 2U},
        {{{"temp2_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 3U},
        {{{"temp2_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 4U},
        {{{"temp2_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 5U},
        {{{"temp2_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 1U, 6U},
        {{{"temp2_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 0U},
        {{{"temp2_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 1U},
        {{{"temp2_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 2U},
        {{{"temp2_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 3U},
        {{{"temp2_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 4U},
        {{{"temp2_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 5U},
        {{{"temp2_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 1U, 6U},
        {{{"temp3_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 2U, 255U},
        {{{"temp3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 2U, 0U},
        {{{"temp3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 2U, 1U},
        {{{"temp3_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 2U, 2U},
        {{{"temp3_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 2U, 3U},
        {{{"temp3_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 2U, 4U},
        {{{"temp3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 14U, 0U},
        {{{"temp3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 14U, 1U},
        {{{"temp3_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 2U, 0U},
        {{{"temp3_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 2U, 1U},
        {{{"thermal_cruise3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 2U, 2U},
        {{{"tolerance3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 2U, 3U},
        {{{"temp3_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 0U},
        {{{"temp3_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 1U},
        {{{"temp3_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 2U},
        {{{"temp3_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 3U},
        {{{"temp3_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 4U},
        {{{"temp3_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 5U},
        {{{"temp3_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 2U, 6U},
        {{{"temp3_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 0U},
        {{{"temp3_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 1U},
        {{{"temp3_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 2U},
        {{{"temp3_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 3U},
        {{{"temp3_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 4U},
        {{{"temp3_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 5U},
        {{{"temp3_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 2U, 6U},
        {{{"temp4_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 3U, 255U},
        {{{"temp4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 3U, 0U},
        {{{"temp4_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 3U, 1U},
        {{{"temp4_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 3U, 2U},
        {{{"temp4_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 3U, 3U},
        {{{"temp4_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 3U, 4U},
        {{{"temp4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 15U, 0U},
        {{{"temp4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 15U, 1U},
        {{{"temp4_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 3U, 0U},
        {{{"temp4_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 3U, 1U},
        {{{"thermal_cruise4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 3U, 2U},
        {{{"tolerance4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 3U, 3U},
        {{{"temp4_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 0U},
        {{{"temp4_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 1U},
        {{{"temp4_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 2U},
        {{{"temp4_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 3U},
        {{{"temp4_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 4U},
        {{{"temp4_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 5U},
        {{{"temp4_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 3U, 6U},
        {{{"temp4_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 0U},
        {{{"temp4_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 1U},
        {{{"temp4_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 2U},
        {{{"temp4_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 3U},
        {{{"temp4_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 4U},
        {{{"temp4_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 5U},
        {{{"temp4_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 3U, 6U},
        {{{"temp5_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 4U, 255U},
        {{{"temp5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 4U, 0U},
        {{{"temp5_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 4U, 1U},
        {{{"temp5_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 4U, 2U},
        {{{"temp5_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 4U, 3U},
        {{{"temp5_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 4U, 4U},
        {{{"temp5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 16U, 0U},
        {{{"temp5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 16U, 1U},
        {{{"temp5_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 4U, 0U},
        {{{"temp5_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 4U, 1U},
        {{{"thermal_cruise5", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 4U, 2U},
        {{{"tolerance5", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 4U, 3U},
        {{{"temp5_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 0U},
        {{{"temp5_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 1U},
        {{{"temp5_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 2U},
        {{{"temp5_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 3U},
        {{{"temp5_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 4U},
        {{{"temp5_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 5U},
        {{{"temp5_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 4U, 6U},
        {{{"temp5_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 0U},
        {{{"temp5_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 1U},
        {{{"temp5_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 2U},
        {{{"temp5_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 3U},
        {{{"temp5_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 4U},
        {{{"temp5_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 5U},
        {{{"temp5_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 4U, 6U},
        {{{"temp6_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_mode, & store_temp_mode}, 5U, 255U},
        {{{"temp6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, 0}, 5U, 0U},
        {{{"temp6_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 5U, 1U},
        {{{"temp6_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 5U, 2U},
        {{{"temp6_warn", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 5U, 3U},
        {{{"temp6_warn_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp, & store_temp}, 5U, 4U},
        {{{"temp6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 17U, 0U},
        {{{"temp6_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 17U, 1U},
        {{{"temp6_auto_channels_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 5U, 0U},
        {{{"temp6_pwm_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_sf_ctrl,
       & store_sf_ctrl}, 5U, 1U},
        {{{"thermal_cruise6", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 5U, 2U},
        {{{"tolerance6", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_ctrl, & store_sf_ctrl}, 5U, 3U},
        {{{"temp6_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 0U},
        {{{"temp6_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 1U},
        {{{"temp6_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 2U},
        {{{"temp6_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 3U},
        {{{"temp6_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 4U},
        {{{"temp6_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 5U},
        {{{"temp6_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & show_sf2_pwm,
       & store_sf2_pwm}, 5U, 6U},
        {{{"temp6_auto_point1_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 0U},
        {{{"temp6_auto_point2_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 1U},
        {{{"temp6_auto_point3_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 2U},
        {{{"temp6_auto_point4_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 3U},
        {{{"temp6_auto_point5_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 4U},
        {{{"temp6_auto_point6_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 5U},
        {{{"temp6_auto_point7_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & show_sf2_temp,
       & store_sf2_temp}, 5U, 6U}};
static struct sensor_device_attribute_2 w83793_left_fan[28U] =
  { {{{"fan6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 23U, 0U},
        {{{"fan6_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 23U, 1U},
        {{{"fan6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 5U, 0U},
        {{{"fan6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 5U, 1U},
        {{{"fan7_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 24U, 0U},
        {{{"fan7_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 24U, 1U},
        {{{"fan7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 6U, 0U},
        {{{"fan7_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 6U, 1U},
        {{{"fan8_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 25U, 0U},
        {{{"fan8_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 25U, 1U},
        {{{"fan8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 7U, 0U},
        {{{"fan8_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 7U, 1U},
        {{{"fan9_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 26U, 0U},
        {{{"fan9_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 26U, 1U},
        {{{"fan9_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 8U, 0U},
        {{{"fan9_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 8U, 1U},
        {{{"fan10_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 27U, 0U},
        {{{"fan10_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 27U, 1U},
        {{{"fan10_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 9U, 0U},
        {{{"fan10_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 9U, 1U},
        {{{"fan11_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 28U, 0U},
        {{{"fan11_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 28U, 1U},
        {{{"fan11_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 10U, 0U},
        {{{"fan11_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 10U, 1U},
        {{{"fan12_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, 0}, 29U, 0U},
        {{{"fan12_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm_beep, & store_beep}, 29U, 1U},
        {{{"fan12_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 11U, 0U},
        {{{"fan12_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, & store_fan_min}, 11U, 1U}};
static struct sensor_device_attribute_2 w83793_left_pwm[20U] =
  { {{{"pwm4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 3U, 0U},
        {{{"pwm4_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 3U, 2U},
        {{{"pwm4_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 3U, 1U},
        {{{"pwm4_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 3U, 3U},
        {{{"pwm5", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 4U, 0U},
        {{{"pwm5_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 4U, 2U},
        {{{"pwm5_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 4U, 1U},
        {{{"pwm5_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 4U, 3U},
        {{{"pwm6", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 5U, 0U},
        {{{"pwm6_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 5U, 2U},
        {{{"pwm6_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 5U, 1U},
        {{{"pwm6_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 5U, 3U},
        {{{"pwm7", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 6U, 0U},
        {{{"pwm7_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 6U, 2U},
        {{{"pwm7_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 6U, 1U},
        {{{"pwm7_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 6U, 3U},
        {{{"pwm8", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 7U, 0U},
        {{{"pwm8_nonstop", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 7U, 2U},
        {{{"pwm8_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 7U, 1U},
        {{{"pwm8_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwm, & store_pwm}, 7U, 3U}};
static struct sensor_device_attribute_2 w83793_vid[2U] = { {{{"cpu0_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_vid, 0}, 0U, 255U},
        {{{"cpu1_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_vid, 0}, 1U, 255U}};
static struct device_attribute dev_attr_vrm = {{"vrm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & show_vrm, & store_vrm};
static struct sensor_device_attribute_2 sda_single_files[6U] = { {{{"intrusion0_alarm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_alarm_beep,
       & store_chassis_clear}, 30U, 0U},
        {{{"beep_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep_enable, & store_beep_enable}, 255U, 255U},
        {{{"pwm_default", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_setup, & store_sf_setup}, 255U, 0U},
        {{{"pwm_uptime", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_setup, & store_sf_setup}, 255U, 1U},
        {{{"pwm_downtime", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_setup, & store_sf_setup}, 255U, 2U},
        {{{"temp_critical", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_sf_setup, & store_sf_setup}, 255U, 3U}};
static void w83793_init_client(struct i2c_client *client )
{
  u8 tmp ;
  {
  if ((int )reset) {
    w83793_write_value(client, 64, 128);
  } else {
  }
  tmp = w83793_read_value(client, 64);
  w83793_write_value(client, 64, (int )((unsigned int )tmp | 1U));
  return;
}
}
static int watchdog_set_timeout(struct w83793_data *data , int timeout___0 )
{
  int ret ;
  int mtimeout ;
  {
  mtimeout = (timeout___0 + 59) / 60;
  if (mtimeout > 255) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_31(& data->watchdog_lock);
  if ((unsigned long )data->client == (unsigned long )((struct i2c_client *)0)) {
    ret = -19;
    goto leave;
  } else {
  }
  data->watchdog_timeout = mtimeout;
  w83793_write_value(data->client, 4, (int )((u8 )data->watchdog_timeout));
  ret = mtimeout * 60;
  leave:
  ldv_mutex_unlock_32(& data->watchdog_lock);
  return (ret);
}
}
static int watchdog_get_timeout(struct w83793_data *data )
{
  int timeout___0 ;
  {
  ldv_mutex_lock_33(& data->watchdog_lock);
  timeout___0 = data->watchdog_timeout * 60;
  ldv_mutex_unlock_34(& data->watchdog_lock);
  return (timeout___0);
}
}
static int watchdog_trigger(struct w83793_data *data )
{
  int ret ;
  {
  ret = 0;
  ldv_mutex_lock_35(& data->watchdog_lock);
  if ((unsigned long )data->client == (unsigned long )((struct i2c_client *)0)) {
    ret = -19;
    goto leave;
  } else {
  }
  w83793_write_value(data->client, 4, (int )((u8 )data->watchdog_timeout));
  leave:
  ldv_mutex_unlock_36(& data->watchdog_lock);
  return (ret);
}
}
static int watchdog_enable(struct w83793_data *data )
{
  int ret ;
  {
  ret = 0;
  ldv_mutex_lock_37(& data->watchdog_lock);
  if ((unsigned long )data->client == (unsigned long )((struct i2c_client *)0)) {
    ret = -19;
    goto leave;
  } else {
  }
  w83793_write_value(data->client, 4, (int )((u8 )data->watchdog_timeout));
  w83793_write_value(data->client, 1, 85);
  leave:
  ldv_mutex_unlock_38(& data->watchdog_lock);
  return (ret);
}
}
static int watchdog_disable(struct w83793_data *data )
{
  int ret ;
  {
  ret = 0;
  ldv_mutex_lock_39(& data->watchdog_lock);
  if ((unsigned long )data->client == (unsigned long )((struct i2c_client *)0)) {
    ret = -19;
    goto leave;
  } else {
  }
  w83793_write_value(data->client, 1, 170);
  leave:
  ldv_mutex_unlock_40(& data->watchdog_lock);
  return (ret);
}
}
static int watchdog_open(struct inode *inode , struct file *filp )
{
  struct w83793_data *pos ;
  struct w83793_data *data ;
  int watchdog_is_open ;
  int tmp ;
  struct list_head const *__mptr ;
  unsigned int tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  {
  data = 0;
  tmp = ldv_mutex_trylock_41(& watchdog_data_mutex);
  if (tmp == 0) {
    return (-512);
  } else {
  }
  __mptr = (struct list_head const *)watchdog_data_list.next;
  pos = (struct w83793_data *)__mptr + 0xfffffffffffffd68UL;
  goto ldv_24043;
  ldv_24042:
  tmp___0 = iminor((struct inode const *)inode);
  if ((unsigned int )pos->watchdog_miscdev.minor == tmp___0) {
    data = pos;
    goto ldv_24041;
  } else {
  }
  __mptr___0 = (struct list_head const *)pos->list.next;
  pos = (struct w83793_data *)__mptr___0 + 0xfffffffffffffd68UL;
  ldv_24043: ;
  if ((unsigned long )(& pos->list) != (unsigned long )(& watchdog_data_list)) {
    goto ldv_24042;
  } else {
  }
  ldv_24041:
  watchdog_is_open = test_and_set_bit(0, (unsigned long volatile *)(& data->watchdog_is_open));
  if (watchdog_is_open == 0) {
    kref_get(& data->kref);
  } else {
  }
  ldv_mutex_unlock_42(& watchdog_data_mutex);
  if (watchdog_is_open != 0) {
    return (-16);
  } else {
  }
  watchdog_enable(data);
  filp->private_data = (void *)data;
  tmp___1 = nonseekable_open(inode, filp);
  return (tmp___1);
}
}
static int watchdog_close(struct inode *inode , struct file *filp )
{
  struct w83793_data *data ;
  {
  data = (struct w83793_data *)filp->private_data;
  if ((int )((signed char )data->watchdog_expect_close) != 0) {
    watchdog_disable(data);
    data->watchdog_expect_close = 0;
  } else {
    watchdog_trigger(data);
    dev_crit((struct device const *)(& (data->client)->dev), "unexpected close, not stopping watchdog!\n");
  }
  clear_bit(0, (unsigned long volatile *)(& data->watchdog_is_open));
  ldv_mutex_lock_43(& watchdog_data_mutex);
  kref_put(& data->kref, & w83793_release_resources);
  ldv_mutex_unlock_44(& watchdog_data_mutex);
  return (0);
}
}
static ssize_t watchdog_write(struct file *filp , char const *buf , size_t count ,
                              loff_t *offset )
{
  ssize_t ret ;
  struct w83793_data *data ;
  size_t i ;
  char c ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int tmp ;
  {
  data = (struct w83793_data *)filp->private_data;
  if (count != 0UL) {
    if (! nowayout) {
      data->watchdog_expect_close = 0;
      i = 0UL;
      goto ldv_24063;
      ldv_24062:
      might_fault();
      __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (buf + i),
                           "i" (1UL));
      c = (char )__val_gu;
      if (__ret_gu != 0) {
        return (-14L);
      } else {
      }
      if ((int )((signed char )c) == 86) {
        data->watchdog_expect_close = 1;
      } else {
      }
      i = i + 1UL;
      ldv_24063: ;
      if (i != count) {
        goto ldv_24062;
      } else {
      }
    } else {
    }
    tmp = watchdog_trigger(data);
    ret = (ssize_t )tmp;
    if (ret < 0L) {
      return (ret);
    } else {
    }
  } else {
  }
  return ((ssize_t )count);
}
}
static long watchdog_ioctl(struct file *filp , unsigned int cmd , unsigned long arg )
{
  struct watchdog_info ident ;
  unsigned int tmp ;
  int val ;
  int ret ;
  struct w83793_data *data ;
  int tmp___0 ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  int __ret_pu___1 ;
  int __pu_val___1 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu___2 ;
  int __pu_val___2 ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  {
  ident.options = 32928U;
  ident.firmware_version = 0U;
  ident.identity[0] = 'w';
  ident.identity[1] = '8';
  ident.identity[2] = '3';
  ident.identity[3] = '7';
  ident.identity[4] = '9';
  ident.identity[5] = '3';
  ident.identity[6] = ' ';
  ident.identity[7] = 'w';
  ident.identity[8] = 'a';
  ident.identity[9] = 't';
  ident.identity[10] = 'c';
  ident.identity[11] = 'h';
  ident.identity[12] = 'd';
  ident.identity[13] = 'o';
  ident.identity[14] = 'g';
  ident.identity[15] = '\000';
  tmp = 16U;
  while (1) {
    if (tmp >= 32U) {
      break;
    } else {
    }
    ident.identity[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  ret = 0;
  data = (struct w83793_data *)filp->private_data;
  switch (cmd) {
  case 2150127360U: ;
  if (! nowayout) {
    ident.options = ident.options | 256U;
  } else {
  }
  tmp___0 = copy_to_user((void *)arg, (void const *)(& ident), 40U);
  if (tmp___0 != 0) {
    ret = -14;
  } else {
  }
  goto ldv_24075;
  case 2147768065U:
  val = data->watchdog_caused_reboot != 0U ? 32 : 0;
  might_fault();
  __pu_val = val;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
  goto ldv_24080;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
  goto ldv_24080;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
  goto ldv_24080;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
  goto ldv_24080;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
  goto ldv_24080;
  }
  ldv_24080:
  ret = __ret_pu;
  goto ldv_24075;
  case 2147768066U:
  might_fault();
  __pu_val___0 = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)arg): "ebx");
  goto ldv_24090;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)arg): "ebx");
  goto ldv_24090;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)arg): "ebx");
  goto ldv_24090;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)arg): "ebx");
  goto ldv_24090;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)arg): "ebx");
  goto ldv_24090;
  }
  ldv_24090:
  ret = __ret_pu___0;
  goto ldv_24075;
  case 2147768069U:
  ret = watchdog_trigger(data);
  goto ldv_24075;
  case 2147768071U:
  val = watchdog_get_timeout(data);
  might_fault();
  __pu_val___1 = val;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((int *)arg): "ebx");
  goto ldv_24101;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((int *)arg): "ebx");
  goto ldv_24101;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((int *)arg): "ebx");
  goto ldv_24101;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((int *)arg): "ebx");
  goto ldv_24101;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((int *)arg): "ebx");
  goto ldv_24101;
  }
  ldv_24101:
  ret = __ret_pu___1;
  goto ldv_24075;
  case 3221509894U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int *)arg),
                       "i" (4UL));
  val = (int )__val_gu;
  if (__ret_gu != 0) {
    ret = -14;
    goto ldv_24075;
  } else {
  }
  ret = watchdog_set_timeout(data, val);
  if (ret > 0) {
    might_fault();
    __pu_val___2 = ret;
    switch (4UL) {
    case 1UL:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___2): "0" (__pu_val___2),
                         "c" ((int *)arg): "ebx");
    goto ldv_24114;
    case 2UL:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___2): "0" (__pu_val___2),
                         "c" ((int *)arg): "ebx");
    goto ldv_24114;
    case 4UL:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___2): "0" (__pu_val___2),
                         "c" ((int *)arg): "ebx");
    goto ldv_24114;
    case 8UL:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___2): "0" (__pu_val___2),
                         "c" ((int *)arg): "ebx");
    goto ldv_24114;
    default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___2): "0" (__pu_val___2),
                         "c" ((int *)arg): "ebx");
    goto ldv_24114;
    }
    ldv_24114:
    ret = __ret_pu___2;
  } else {
  }
  goto ldv_24075;
  case 2147768068U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" ((int *)arg),
                       "i" (4UL));
  val = (int )__val_gu___0;
  if (__ret_gu___0 != 0) {
    ret = -14;
    goto ldv_24075;
  } else {
  }
  if (val & 1) {
    ret = watchdog_disable(data);
  } else
  if ((val & 2) != 0) {
    ret = watchdog_enable(data);
  } else {
    ret = -22;
  }
  goto ldv_24075;
  default:
  ret = -25;
  }
  ldv_24075: ;
  return ((long )ret);
}
}
static struct file_operations const watchdog_fops =
     {& __this_module, & no_llseek, 0, & watchdog_write, 0, 0, 0, 0, & watchdog_ioctl,
    0, 0, & watchdog_open, 0, & watchdog_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static int watchdog_notify_sys(struct notifier_block *this , unsigned long code ,
                               void *unused )
{
  struct w83793_data *data ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  data = 0;
  if (code == 1UL || code == 2UL) {
    ldv_mutex_lock_45(& watchdog_data_mutex);
    __mptr = (struct list_head const *)watchdog_data_list.next;
    data = (struct w83793_data *)__mptr + 0xfffffffffffffd68UL;
    goto ldv_24137;
    ldv_24136: ;
    if (data->watchdog_miscdev.minor != 0) {
      watchdog_disable(data);
    } else {
    }
    __mptr___0 = (struct list_head const *)data->list.next;
    data = (struct w83793_data *)__mptr___0 + 0xfffffffffffffd68UL;
    ldv_24137: ;
    if ((unsigned long )(& data->list) != (unsigned long )(& watchdog_data_list)) {
      goto ldv_24136;
    } else {
    }
    ldv_mutex_unlock_46(& watchdog_data_mutex);
  } else {
  }
  return (0);
}
}
static struct notifier_block watchdog_notifier = {& watchdog_notify_sys, 0, 0};
static int w83793_remove(struct i2c_client *client )
{
  struct w83793_data *data ;
  void *tmp ;
  struct device *dev ;
  int i ;
  int tmp___0 ;
  u8 tmp___1 ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  dev = & client->dev;
  if (data->watchdog_miscdev.minor != 0) {
    misc_deregister(& data->watchdog_miscdev);
    if (data->watchdog_is_open != 0UL) {
      dev_warn((struct device const *)(& client->dev), "i2c client detached with watchdog open! Stopping watchdog.\n");
      watchdog_disable(data);
    } else {
    }
    ldv_mutex_lock_47(& watchdog_data_mutex);
    list_del(& data->list);
    ldv_mutex_unlock_48(& watchdog_data_mutex);
    ldv_mutex_lock_49(& data->watchdog_lock);
    data->client = 0;
    ldv_mutex_unlock_50(& data->watchdog_lock);
  } else {
  }
  tmp___1 = w83793_read_value(client, 64);
  tmp___0 = (int )tmp___1;
  w83793_write_value(client, 64, (int )((u8 )tmp___0) & 251);
  unregister_reboot_notifier(& watchdog_notifier);
  hwmon_device_unregister(data->hwmon_dev);
  i = 0;
  goto ldv_24150;
  ldv_24149:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_sensor_attr_2[i].dev_attr));
  i = i + 1;
  ldv_24150: ;
  if ((unsigned int )i <= 81U) {
    goto ldv_24149;
  } else {
  }
  i = 0;
  goto ldv_24155;
  ldv_24154:
  device_remove_file(dev, (struct device_attribute const *)(& sda_single_files[i].dev_attr));
  i = i + 1;
  ldv_24155: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_24154;
  } else {
  }
  i = 0;
  goto ldv_24160;
  ldv_24159:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_vid[i].dev_attr));
  i = i + 1;
  ldv_24160: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_24159;
  } else {
  }
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_vrm));
  i = 0;
  goto ldv_24165;
  ldv_24164:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_left_fan[i].dev_attr));
  i = i + 1;
  ldv_24165: ;
  if ((unsigned int )i <= 27U) {
    goto ldv_24164;
  } else {
  }
  i = 0;
  goto ldv_24170;
  ldv_24169:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_left_pwm[i].dev_attr));
  i = i + 1;
  ldv_24170: ;
  if ((unsigned int )i <= 19U) {
    goto ldv_24169;
  } else {
  }
  i = 0;
  goto ldv_24175;
  ldv_24174:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_temp[i].dev_attr));
  i = i + 1;
  ldv_24175: ;
  if ((unsigned int )i <= 155U) {
    goto ldv_24174;
  } else {
  }
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  ldv_mutex_lock_51(& watchdog_data_mutex);
  kref_put(& data->kref, & w83793_release_resources);
  ldv_mutex_unlock_52(& watchdog_data_mutex);
  return (0);
}
}
static int w83793_detect_subclients(struct i2c_client *client )
{
  int i ;
  int id ;
  int err ;
  int address ;
  u8 tmp ;
  struct i2c_adapter *adapter ;
  struct w83793_data *data ;
  void *tmp___0 ;
  {
  address = (int )client->addr;
  adapter = client->adapter;
  tmp___0 = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp___0;
  id = i2c_adapter_id(adapter);
  if ((int )force_subclients[0] == id && (int )force_subclients[1] == address) {
    i = 2;
    goto ldv_24189;
    ldv_24188: ;
    if ((unsigned int )force_subclients[i] <= 71U || (unsigned int )force_subclients[i] > 79U) {
      dev_err((struct device const *)(& client->dev), "invalid subclient address %d; must be 0x48-0x4f\n",
              (int )force_subclients[i]);
      err = -22;
      goto ERROR_SC_0;
    } else {
    }
    i = i + 1;
    ldv_24189: ;
    if (i <= 3) {
      goto ldv_24188;
    } else {
    }
    w83793_write_value(client, 12, (int )((u8 )(((int )((signed char )force_subclients[2]) & 7) | (int )((signed char )(((int )force_subclients[3] & 7) << 4)))));
  } else {
  }
  tmp = w83793_read_value(client, 12);
  if (((int )tmp & 8) == 0) {
    data->lm75[0] = i2c_new_dummy(adapter, (int )(((unsigned int )((u16 )tmp) & 7U) + 72U));
  } else {
  }
  if ((int )((signed char )tmp) >= 0) {
    if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0) && (((int )tmp ^ ((int )tmp >> 4)) & 7) == 0) {
      dev_err((struct device const *)(& client->dev), "duplicate addresses 0x%x, use force_subclients\n",
              (int )(data->lm75[0])->addr);
      err = -19;
      goto ERROR_SC_1;
    } else {
    }
    data->lm75[1] = i2c_new_dummy(adapter, (int )(((unsigned int )((u16 )((int )tmp >> 4)) & 7U) + 72U));
  } else {
  }
  return (0);
  ERROR_SC_1: ;
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  ERROR_SC_0: ;
  return (err);
}
}
static int w83793_detect(struct i2c_client *client , struct i2c_board_info *info )
{
  u8 tmp ;
  u8 bank ;
  u8 chip_id ;
  struct i2c_adapter *adapter ;
  unsigned short address ;
  int tmp___0 ;
  s32 tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  s32 tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  s32 tmp___5 ;
  s32 tmp___6 ;
  {
  adapter = client->adapter;
  address = client->addr;
  tmp___0 = i2c_check_functionality(adapter, 1572864U);
  if (tmp___0 == 0) {
    return (-19);
  } else {
  }
  tmp___1 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 0);
  bank = (u8 )tmp___1;
  tmp = (int )((signed char )bank) < 0 ? 92U : 163U;
  tmp___3 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 13);
  if ((s32 )tmp != tmp___3) {
    descriptor.modname = "w83793";
    descriptor.function = "w83793_detect";
    descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/6420/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83793.c.prepared";
    descriptor.format = "w83793: Detection failed at check vendor id\n";
    descriptor.lineno = 1694U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor, "w83793: Detection failed at check vendor id\n");
    } else {
    }
    return (-19);
  } else {
  }
  if (((int )bank & 7) == 0) {
    tmp___5 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 11);
    if (tmp___5 != (int )address << 1) {
      descriptor___0.modname = "w83793";
      descriptor___0.function = "w83793_detect";
      descriptor___0.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/6420/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83793.c.prepared";
      descriptor___0.format = "w83793: Detection failed at check i2c addr\n";
      descriptor___0.lineno = 1705U;
      descriptor___0.flags = 1U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "w83793: Detection failed at check i2c addr\n");
      } else {
      }
      return (-19);
    } else {
    }
  } else {
  }
  tmp___6 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 14);
  chip_id = (u8 )tmp___6;
  if ((unsigned int )chip_id != 123U) {
    return (-19);
  } else {
  }
  strlcpy((char *)(& info->type), "w83793", 20UL);
  return (0);
}
}
static int w83793_probe(struct i2c_client *client , struct i2c_device_id const *id )
{
  struct device *dev ;
  int watchdog_minors[5U] ;
  struct w83793_data *data ;
  int i ;
  int tmp ;
  int val ;
  int err ;
  int files_fan ;
  int files_pwm ;
  int files_temp ;
  void *tmp___0 ;
  s32 tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  u8 tmp___5 ;
  u8 tmp___6 ;
  int j ;
  int j___0 ;
  int j___1 ;
  long tmp___7 ;
  long tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  {
  dev = & client->dev;
  watchdog_minors[0] = 130;
  watchdog_minors[1] = 212;
  watchdog_minors[2] = 213;
  watchdog_minors[3] = 214;
  watchdog_minors[4] = 215;
  files_fan = 4;
  files_pwm = 4;
  files_temp = 26;
  tmp___0 = kzalloc(792UL, 208U);
  data = (struct w83793_data *)tmp___0;
  if ((unsigned long )data == (unsigned long )((struct w83793_data *)0)) {
    err = -12;
    goto exit;
  } else {
  }
  i2c_set_clientdata(client, (void *)data);
  tmp___1 = i2c_smbus_read_byte_data((struct i2c_client const *)client, 0);
  data->bank = (u8 )tmp___1;
  __mutex_init(& data->update_lock, "&data->update_lock", & __key);
  __mutex_init(& data->watchdog_lock, "&data->watchdog_lock", & __key___0);
  INIT_LIST_HEAD(& data->list);
  kref_init(& data->kref);
  data->client = client;
  err = w83793_detect_subclients(client);
  if (err != 0) {
    goto free_mem;
  } else {
  }
  w83793_init_client(client);
  data->has_fan = 31U;
  data->has_pwm = 7U;
  tmp___2 = w83793_read_value(client, 88);
  tmp = (int )tmp___2;
  tmp___3 = w83793_read_value(client, 92);
  val = (int )tmp___3;
  if ((tmp & 128) != 0) {
    data->has_vid = (u8 )((unsigned int )data->has_vid | 2U);
  } else {
    data->has_pwm = (u8 )((unsigned int )data->has_pwm | 24U);
    if (val & 1) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 32U);
      data->has_pwm = (u8 )((unsigned int )data->has_pwm | 32U);
    } else {
    }
    if ((val & 2) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 64U);
      data->has_pwm = (u8 )((unsigned int )data->has_pwm | 64U);
    } else {
    }
    if ((tmp & 64) == 0 && (val & 4) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 128U);
      data->has_pwm = (u8 )((unsigned int )data->has_pwm | 128U);
    } else {
    }
  }
  if ((tmp & 41) == 0) {
    data->has_vid = (u8 )((unsigned int )data->has_vid | 1U);
  } else {
  }
  if ((tmp & 12) == 8) {
    if ((val & 8) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 256U);
    } else {
    }
    if ((val & 16) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 512U);
    } else {
    }
  } else {
  }
  if ((tmp & 48) == 32) {
    if ((val & 32) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 1024U);
    } else {
    }
    if ((val & 64) != 0) {
      data->has_fan = (u16 )((unsigned int )data->has_fan | 2048U);
    } else {
    }
  } else {
  }
  if (tmp & 1 && (val & 4) != 0) {
    data->has_fan = (u16 )((unsigned int )data->has_fan | 128U);
    data->has_pwm = (u8 )((unsigned int )data->has_pwm | 128U);
  } else {
  }
  tmp___4 = w83793_read_value(client, 93);
  tmp = (int )tmp___4;
  if (tmp & 1 && (val & 8) != 0) {
    data->has_fan = (u16 )((unsigned int )data->has_fan | 256U);
  } else {
  }
  if ((tmp & 2) != 0 && (val & 16) != 0) {
    data->has_fan = (u16 )((unsigned int )data->has_fan | 512U);
  } else {
  }
  if ((tmp & 4) != 0 && (val & 32) != 0) {
    data->has_fan = (u16 )((unsigned int )data->has_fan | 1024U);
  } else {
  }
  if ((tmp & 8) != 0 && (val & 64) != 0) {
    data->has_fan = (u16 )((unsigned int )data->has_fan | 2048U);
  } else {
  }
  tmp___5 = w83793_read_value(client, (int )W83793_REG_TEMP_MODE[0]);
  tmp = (int )tmp___5;
  if (tmp & 1) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 1U);
  } else {
  }
  if ((tmp & 4) != 0) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 2U);
  } else {
  }
  if ((tmp & 16) != 0) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 4U);
  } else {
  }
  if ((tmp & 64) != 0) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 8U);
  } else {
  }
  tmp___6 = w83793_read_value(client, (int )W83793_REG_TEMP_MODE[1]);
  tmp = (int )tmp___6;
  if (tmp & 1) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 16U);
  } else {
  }
  if ((tmp & 2) != 0) {
    data->has_temp = (u8 )((unsigned int )data->has_temp | 32U);
  } else {
  }
  i = 0;
  goto ldv_24232;
  ldv_24231:
  err = device_create_file(dev, (struct device_attribute const *)(& w83793_sensor_attr_2[i].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  i = i + 1;
  ldv_24232: ;
  if ((unsigned int )i <= 81U) {
    goto ldv_24231;
  } else {
  }
  i = 0;
  goto ldv_24238;
  ldv_24237: ;
  if ((((int )data->has_vid >> i) & 1) == 0) {
    goto ldv_24236;
  } else {
  }
  err = device_create_file(dev, (struct device_attribute const *)(& w83793_vid[i].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  ldv_24236:
  i = i + 1;
  ldv_24238: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_24237;
  } else {
  }
  if ((unsigned int )data->has_vid != 0U) {
    data->vrm = vid_which_vrm();
    err = device_create_file(dev, (struct device_attribute const *)(& dev_attr_vrm));
    if (err != 0) {
      goto exit_remove;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_24243;
  ldv_24242:
  err = device_create_file(dev, (struct device_attribute const *)(& sda_single_files[i].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  i = i + 1;
  ldv_24243: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_24242;
  } else {
  }
  i = 0;
  goto ldv_24251;
  ldv_24250: ;
  if ((((int )data->has_temp >> i) & 1) == 0) {
    goto ldv_24246;
  } else {
  }
  j = 0;
  goto ldv_24248;
  ldv_24247:
  err = device_create_file(dev, (struct device_attribute const *)(& w83793_temp[i * files_temp + j].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  j = j + 1;
  ldv_24248: ;
  if (j < files_temp) {
    goto ldv_24247;
  } else {
  }
  ldv_24246:
  i = i + 1;
  ldv_24251: ;
  if (i <= 5) {
    goto ldv_24250;
  } else {
  }
  i = 5;
  goto ldv_24259;
  ldv_24258: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_24254;
  } else {
  }
  j___0 = 0;
  goto ldv_24256;
  ldv_24255:
  err = device_create_file(dev, (struct device_attribute const *)(& w83793_left_fan[(i + -5) * files_fan + j___0].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  j___0 = j___0 + 1;
  ldv_24256: ;
  if (j___0 < files_fan) {
    goto ldv_24255;
  } else {
  }
  ldv_24254:
  i = i + 1;
  ldv_24259: ;
  if (i <= 11) {
    goto ldv_24258;
  } else {
  }
  i = 3;
  goto ldv_24267;
  ldv_24266: ;
  if ((((int )data->has_pwm >> i) & 1) == 0) {
    goto ldv_24262;
  } else {
  }
  j___1 = 0;
  goto ldv_24264;
  ldv_24263:
  err = device_create_file(dev, (struct device_attribute const *)(& w83793_left_pwm[(i + -3) * files_pwm + j___1].dev_attr));
  if (err != 0) {
    goto exit_remove;
  } else {
  }
  j___1 = j___1 + 1;
  ldv_24264: ;
  if (j___1 < files_pwm) {
    goto ldv_24263;
  } else {
  }
  ldv_24262:
  i = i + 1;
  ldv_24267: ;
  if (i <= 7) {
    goto ldv_24266;
  } else {
  }
  data->hwmon_dev = hwmon_device_register(dev);
  tmp___8 = IS_ERR((void const *)data->hwmon_dev);
  if (tmp___8 != 0L) {
    tmp___7 = PTR_ERR((void const *)data->hwmon_dev);
    err = (int )tmp___7;
    goto exit_remove;
  } else {
  }
  err = register_reboot_notifier(& watchdog_notifier);
  if (err != 0) {
    dev_err((struct device const *)(& client->dev), "cannot register reboot notifier (err=%d)\n",
            err);
    goto exit_devunreg;
  } else {
  }
  tmp___9 = w83793_read_value(client, 64);
  tmp = (int )tmp___9;
  w83793_write_value(client, 64, (int )((u8 )((int )((signed char )tmp) | 4)));
  data->watchdog_timeout = timeout;
  tmp___10 = w83793_read_value(data->client, 3);
  data->watchdog_caused_reboot = (unsigned int )tmp___10 & 1U;
  watchdog_disable(data);
  ldv_mutex_lock_53(& watchdog_data_mutex);
  i = 0;
  goto ldv_24275;
  ldv_24274:
  snprintf((char *)(& data->watchdog_name), 10UL, "watchdog%c", i != 0 ? i + 48 : 0);
  data->watchdog_miscdev.name = (char const *)(& data->watchdog_name);
  data->watchdog_miscdev.fops = & watchdog_fops;
  data->watchdog_miscdev.minor = watchdog_minors[i];
  err = misc_register(& data->watchdog_miscdev);
  if (err == -16) {
    goto ldv_24272;
  } else {
  }
  if (err != 0) {
    data->watchdog_miscdev.minor = 0;
    dev_err((struct device const *)(& client->dev), "Registering watchdog chardev: %d\n",
            err);
    goto ldv_24273;
  } else {
  }
  list_add(& data->list, & watchdog_data_list);
  _dev_info((struct device const *)(& client->dev), "Registered watchdog chardev major 10, minor: %d\n",
            watchdog_minors[i]);
  goto ldv_24273;
  ldv_24272:
  i = i + 1;
  ldv_24275: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_24274;
  } else {
  }
  ldv_24273: ;
  if (i == 5) {
    data->watchdog_miscdev.minor = 0;
    dev_warn((struct device const *)(& client->dev), "Couldn\'t register watchdog chardev (due to no free minor)\n");
  } else {
  }
  ldv_mutex_unlock_54(& watchdog_data_mutex);
  return (0);
  exit_devunreg:
  hwmon_device_unregister(data->hwmon_dev);
  exit_remove:
  i = 0;
  goto ldv_24281;
  ldv_24280:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_sensor_attr_2[i].dev_attr));
  i = i + 1;
  ldv_24281: ;
  if ((unsigned int )i <= 81U) {
    goto ldv_24280;
  } else {
  }
  i = 0;
  goto ldv_24286;
  ldv_24285:
  device_remove_file(dev, (struct device_attribute const *)(& sda_single_files[i].dev_attr));
  i = i + 1;
  ldv_24286: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_24285;
  } else {
  }
  i = 0;
  goto ldv_24291;
  ldv_24290:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_vid[i].dev_attr));
  i = i + 1;
  ldv_24291: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_24290;
  } else {
  }
  i = 0;
  goto ldv_24296;
  ldv_24295:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_left_fan[i].dev_attr));
  i = i + 1;
  ldv_24296: ;
  if ((unsigned int )i <= 27U) {
    goto ldv_24295;
  } else {
  }
  i = 0;
  goto ldv_24301;
  ldv_24300:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_left_pwm[i].dev_attr));
  i = i + 1;
  ldv_24301: ;
  if ((unsigned int )i <= 19U) {
    goto ldv_24300;
  } else {
  }
  i = 0;
  goto ldv_24306;
  ldv_24305:
  device_remove_file(dev, (struct device_attribute const *)(& w83793_temp[i].dev_attr));
  i = i + 1;
  ldv_24306: ;
  if ((unsigned int )i <= 155U) {
    goto ldv_24305;
  } else {
  }
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  free_mem:
  kfree((void const *)data);
  exit: ;
  return (err);
}
}
static void w83793_update_nonvolatile(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  int i ;
  int j ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  if ((long )(data->last_nonvolatile + 75000UL) - (long )jiffies >= 0L && (int )((signed char )data->valid) != 0) {
    return;
  } else {
  }
  i = 1;
  goto ldv_24329;
  ldv_24328:
  j = 0;
  goto ldv_24326;
  ldv_24325:
  data->in[j][i] = w83793_read_value(client, (int )W83793_REG_IN[j][i]);
  j = j + 1;
  ldv_24326: ;
  if ((unsigned int )j <= 9U) {
    goto ldv_24325;
  } else {
  }
  data->in_low_bits[i] = w83793_read_value(client, (int )W83793_REG_IN_LOW_BITS[i]);
  i = i + 1;
  ldv_24329: ;
  if (i <= 2) {
    goto ldv_24328;
  } else {
  }
  i = 0;
  goto ldv_24335;
  ldv_24334: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_24333;
  } else {
  }
  tmp___0 = w83793_read_value(client, (int )((unsigned int )((u16 )(i + 72)) * 2U));
  data->fan_min[i] = (int )((u16 )tmp___0) << 8U;
  tmp___1 = w83793_read_value(client, (int )((unsigned int )((u16 )(i + 72)) * 2U + 1U));
  data->fan_min[i] = (int )data->fan_min[i] | (int )((u16 )tmp___1);
  ldv_24333:
  i = i + 1;
  ldv_24335: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_24334;
  } else {
  }
  i = 0;
  goto ldv_24347;
  ldv_24346: ;
  if ((((int )data->has_temp >> i) & 1) == 0) {
    goto ldv_24339;
  } else {
  }
  data->temp_fan_map[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 513U));
  j = 1;
  goto ldv_24341;
  ldv_24340:
  tmp___2 = w83793_read_value(client, (int )W83793_REG_TEMP[i][j]);
  data->temp[i][j] = (s8 )tmp___2;
  j = j + 1;
  ldv_24341: ;
  if (j <= 4) {
    goto ldv_24340;
  } else {
  }
  data->temp_cruise[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 528U));
  j = 0;
  goto ldv_24344;
  ldv_24343:
  data->sf2_pwm[i][j] = w83793_read_value(client, (int )((unsigned int )(((int )((u16 )i) << 4U) + (int )((u16 )j)) + 568U));
  data->sf2_temp[i][j] = w83793_read_value(client, (int )((unsigned int )(((int )((u16 )i) << 4U) + (int )((u16 )j)) + 560U));
  j = j + 1;
  ldv_24344: ;
  if (j <= 6) {
    goto ldv_24343;
  } else {
  }
  ldv_24339:
  i = i + 1;
  ldv_24347: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_24346;
  } else {
  }
  i = 0;
  goto ldv_24352;
  ldv_24351:
  data->temp_mode[i] = w83793_read_value(client, (int )W83793_REG_TEMP_MODE[i]);
  i = i + 1;
  ldv_24352: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_24351;
  } else {
  }
  i = 0;
  goto ldv_24357;
  ldv_24356:
  data->tolerance[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 520U));
  i = i + 1;
  ldv_24357: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_24356;
  } else {
  }
  i = 0;
  goto ldv_24363;
  ldv_24362: ;
  if ((((int )data->has_pwm >> i) & 1) == 0) {
    goto ldv_24361;
  } else {
  }
  data->pwm[i][2] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 536U));
  data->pwm[i][1] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 544U));
  data->pwm_stop_time[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 552U));
  ldv_24361:
  i = i + 1;
  ldv_24363: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_24362;
  } else {
  }
  data->pwm_default = w83793_read_value(client, 178);
  data->pwm_enable = w83793_read_value(client, 519);
  data->pwm_uptime = w83793_read_value(client, 195);
  data->pwm_downtime = w83793_read_value(client, 196);
  data->temp_critical = w83793_read_value(client, 197);
  data->beep_enable = w83793_read_value(client, 82);
  i = 0;
  goto ldv_24368;
  ldv_24367:
  data->beeps[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 83U));
  i = i + 1;
  ldv_24368: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_24367;
  } else {
  }
  data->last_nonvolatile = jiffies;
  return;
}
}
static struct w83793_data *w83793_update_device(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83793_data *data ;
  void *tmp ;
  int i ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  ldv_mutex_lock_55(& data->update_lock);
  if ((long )(data->last_updated + 500UL) - (long )jiffies >= 0L && (int )((signed char )data->valid) != 0) {
    goto END;
  } else {
  }
  i = 0;
  goto ldv_24388;
  ldv_24387:
  data->in[i][0] = w83793_read_value(client, (int )W83793_REG_IN[i][0]);
  i = i + 1;
  ldv_24388: ;
  if ((unsigned int )i <= 9U) {
    goto ldv_24387;
  } else {
  }
  data->in_low_bits[0] = w83793_read_value(client, (int )W83793_REG_IN_LOW_BITS[0]);
  i = 0;
  goto ldv_24394;
  ldv_24393: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_24392;
  } else {
  }
  tmp___0 = w83793_read_value(client, (int )((unsigned int )((u16 )i) * 2U + 35U));
  data->fan[i] = (int )((u16 )tmp___0) << 8U;
  tmp___1 = w83793_read_value(client, (int )((unsigned int )((u16 )(i + 18)) * 2U));
  data->fan[i] = (int )data->fan[i] | (int )((u16 )tmp___1);
  ldv_24392:
  i = i + 1;
  ldv_24394: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_24393;
  } else {
  }
  i = 0;
  goto ldv_24400;
  ldv_24399: ;
  if ((((int )data->has_temp >> i) & 1) == 0) {
    goto ldv_24398;
  } else {
  }
  tmp___2 = w83793_read_value(client, (int )W83793_REG_TEMP[i][0]);
  data->temp[i][0] = (s8 )tmp___2;
  ldv_24398:
  i = i + 1;
  ldv_24400: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_24399;
  } else {
  }
  data->temp_low_bits = w83793_read_value(client, 34);
  i = 0;
  goto ldv_24405;
  ldv_24404: ;
  if (((int )data->has_pwm >> i) & 1) {
    data->pwm[i][0] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 179U));
  } else {
  }
  i = i + 1;
  ldv_24405: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_24404;
  } else {
  }
  i = 0;
  goto ldv_24410;
  ldv_24409:
  data->alarms[i] = w83793_read_value(client, (int )((unsigned int )((u16 )i) + 75U));
  i = i + 1;
  ldv_24410: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_24409;
  } else {
  }
  if ((int )data->has_vid & 1) {
    data->vid[0] = w83793_read_value(client, 5);
  } else {
  }
  if (((int )data->has_vid & 2) != 0) {
    data->vid[1] = w83793_read_value(client, 6);
  } else {
  }
  w83793_update_nonvolatile(dev);
  data->last_updated = jiffies;
  data->valid = 1;
  END:
  ldv_mutex_unlock_56(& data->update_lock);
  return (data);
}
}
static u8 w83793_read_value(struct i2c_client *client , u16 reg )
{
  struct w83793_data *data ;
  void *tmp ;
  u8 res ;
  u8 new_bank ;
  s32 tmp___0 ;
  s32 tmp___1 ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  res = 255U;
  new_bank = (u8 )((int )reg >> 8);
  new_bank = (u8 )(((int )((signed char )data->bank) & -4) | (int )((signed char )new_bank));
  if ((int )data->bank != (int )new_bank) {
    tmp___0 = i2c_smbus_write_byte_data((struct i2c_client const *)client, 0, (int )new_bank);
    if (tmp___0 >= 0) {
      data->bank = new_bank;
    } else {
      dev_err((struct device const *)(& client->dev), "set bank to %d failed, fall back to bank %d, read reg 0x%x error\n",
              (int )new_bank, (int )data->bank, (int )reg);
      res = 0U;
      goto END;
    }
  } else {
  }
  tmp___1 = i2c_smbus_read_byte_data((struct i2c_client const *)client, (int )((u8 )reg));
  res = (u8 )tmp___1;
  END: ;
  return (res);
}
}
static int w83793_write_value(struct i2c_client *client , u16 reg , u8 value )
{
  struct w83793_data *data ;
  void *tmp ;
  int res ;
  u8 new_bank ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83793_data *)tmp;
  new_bank = (u8 )((int )reg >> 8);
  new_bank = (u8 )(((int )((signed char )data->bank) & -4) | (int )((signed char )new_bank));
  if ((int )data->bank != (int )new_bank) {
    res = i2c_smbus_write_byte_data((struct i2c_client const *)client, 0, (int )new_bank);
    if (res < 0) {
      dev_err((struct device const *)(& client->dev), "set bank to %d failed, fall back to bank %d, write reg 0x%x error\n",
              (int )new_bank, (int )data->bank, (int )reg);
      goto END;
    } else {
    }
    data->bank = new_bank;
  } else {
  }
  res = i2c_smbus_write_byte_data((struct i2c_client const *)client, (int )((u8 )reg),
                                  (int )value);
  END: ;
  return (res);
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct i2c_client *var_group1 ;
  struct i2c_device_id const *var_w83793_probe_47_p1 ;
  int res_w83793_probe_47 ;
  int res_w83793_remove_44 ;
  struct i2c_board_info *var_group2 ;
  struct inode *var_group3 ;
  struct file *var_group4 ;
  int res_watchdog_open_39 ;
  char const *var_watchdog_write_41_p1 ;
  size_t var_watchdog_write_41_p2 ;
  loff_t *var_watchdog_write_41_p3 ;
  ssize_t res_watchdog_write_41 ;
  unsigned int var_watchdog_ioctl_42_p1 ;
  unsigned long var_watchdog_ioctl_42_p2 ;
  struct notifier_block *var_group5 ;
  unsigned long var_watchdog_notify_sys_43_p1 ;
  void *var_watchdog_notify_sys_43_p2 ;
  int ldv_s_w83793_driver_i2c_driver ;
  int ldv_s_watchdog_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_w83793_driver_i2c_driver = 0;
  ldv_s_watchdog_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_24495;
  ldv_24494:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_w83793_driver_i2c_driver == 0) {
    res_w83793_probe_47 = w83793_probe(var_group1, var_w83793_probe_47_p1);
    ldv_check_return_value(res_w83793_probe_47);
    ldv_check_return_value_probe(res_w83793_probe_47);
    if (res_w83793_probe_47 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_w83793_driver_i2c_driver = ldv_s_w83793_driver_i2c_driver + 1;
  } else {
  }
  goto ldv_24485;
  case 1: ;
  if (ldv_s_w83793_driver_i2c_driver == 1) {
    ldv_handler_precall();
    res_w83793_remove_44 = w83793_remove(var_group1);
    ldv_check_return_value(res_w83793_remove_44);
    if (res_w83793_remove_44 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_w83793_driver_i2c_driver = 0;
  } else {
  }
  goto ldv_24485;
  case 2:
  ldv_handler_precall();
  w83793_detect(var_group1, var_group2);
  goto ldv_24485;
  case 3: ;
  if (ldv_s_watchdog_fops_file_operations == 0) {
    ldv_handler_precall();
    res_watchdog_open_39 = watchdog_open(var_group3, var_group4);
    ldv_check_return_value(res_watchdog_open_39);
    if (res_watchdog_open_39 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_watchdog_fops_file_operations = ldv_s_watchdog_fops_file_operations + 1;
  } else {
  }
  goto ldv_24485;
  case 4: ;
  if (ldv_s_watchdog_fops_file_operations == 1) {
    ldv_handler_precall();
    res_watchdog_write_41 = watchdog_write(var_group4, var_watchdog_write_41_p1, var_watchdog_write_41_p2,
                                           var_watchdog_write_41_p3);
    ldv_check_return_value((int )res_watchdog_write_41);
    if (res_watchdog_write_41 < 0L) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_watchdog_fops_file_operations = ldv_s_watchdog_fops_file_operations + 1;
  } else {
  }
  goto ldv_24485;
  case 5: ;
  if (ldv_s_watchdog_fops_file_operations == 2) {
    ldv_handler_precall();
    watchdog_close(var_group3, var_group4);
    ldv_s_watchdog_fops_file_operations = 0;
  } else {
  }
  goto ldv_24485;
  case 6:
  ldv_handler_precall();
  watchdog_ioctl(var_group4, var_watchdog_ioctl_42_p1, var_watchdog_ioctl_42_p2);
  goto ldv_24485;
  case 7:
  ldv_handler_precall();
  watchdog_notify_sys(var_group5, var_watchdog_notify_sys_43_p1, var_watchdog_notify_sys_43_p2);
  goto ldv_24485;
  default: ;
  goto ldv_24485;
  }
  ldv_24485: ;
  ldv_24495:
  tmp___0 = __VERIFIER_nondet_int();
  if ((tmp___0 != 0 || ldv_s_w83793_driver_i2c_driver != 0) || ldv_s_watchdog_fops_file_operations != 0) {
    goto ldv_24494;
  } else {
  }
  ldv_module_exit: ;
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_41(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___39 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_watchdog_data_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_lock_of_w83793_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_watchdog_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_watchdog_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83793_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83793_data(ldv_func_arg1);
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
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
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
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
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
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
static int ldv_mutex_update_lock_of_w83793_data ;
int ldv_mutex_lock_interruptible_update_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_update_lock_of_w83793_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_update_lock_of_w83793_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_w83793_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_update_lock_of_w83793_data = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_w83793_data(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_w83793_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_w83793_data(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_w83793_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
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
void ldv_mutex_unlock_update_lock_of_w83793_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83793_data == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_update_lock_of_w83793_data = 1;
  return;
}
}
static int ldv_mutex_watchdog_data_mutex ;
int ldv_mutex_lock_interruptible_watchdog_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_watchdog_data_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_watchdog_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_watchdog_data_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_watchdog_data_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_watchdog_data_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_watchdog_data_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_watchdog_data_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_watchdog_data_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_watchdog_data_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_watchdog_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_data_mutex == 1) {
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
void ldv_mutex_unlock_watchdog_data_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_watchdog_data_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_watchdog_data_mutex = 1;
  return;
}
}
static int ldv_mutex_watchdog_lock_of_w83793_data ;
int ldv_mutex_lock_interruptible_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_watchdog_lock_of_w83793_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_watchdog_lock_of_w83793_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_watchdog_lock_of_w83793_data = 2;
  return;
}
}
int ldv_mutex_trylock_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_watchdog_lock_of_w83793_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_watchdog_lock_of_w83793_data(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_watchdog_lock_of_w83793_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
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
void ldv_mutex_unlock_watchdog_lock_of_w83793_data(struct mutex *lock )
{
  {
  if (ldv_mutex_watchdog_lock_of_w83793_data == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_watchdog_lock_of_w83793_data = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_update_lock_of_w83793_data = 1;
  ldv_mutex_watchdog_data_mutex = 1;
  ldv_mutex_watchdog_lock_of_w83793_data = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_update_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_watchdog_data_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_watchdog_lock_of_w83793_data == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_crit(const struct device *arg0, const char *arg1, ...) {
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
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void *external_alloc(void);
struct device *hwmon_device_register(struct device *arg0) {
  return (struct device *)external_alloc();
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
void *external_alloc(void);
struct i2c_client *i2c_new_dummy(struct i2c_adapter *arg0, u16 arg1) {
  return (struct i2c_client *)external_alloc();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_byte_data(const struct i2c_client *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
void i2c_unregister_device(struct i2c_client *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
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
int nonseekable_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vid_from_reg(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 vid_which_vrm() {
  return __VERIFIER_nondet_uchar();
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
